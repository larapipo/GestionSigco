unit UFirebirdSQLFromIA;

interface

uses
  System.SysUtils, System.Classes, System.JSON,
  FireDAC.Comp.Client, System.Net.HttpClient, System.Net.HttpClientComponent, System.StrUtils,
  Dialogs,Generics.Collections;

type
  TIA_SQL_Firebird = class
  private
    FConnection: TFDConnection;
    FHttpClient: TNetHTTPClient;
    FOpenAIKey: string;
    FModel: string;
    FContexto: string;
  public
    constructor Create(AConnection: TFDConnection; const AAPIKey, ContextoTablas: string);
    destructor Destroy; override;
    function EjecutarPrompt(const Prompt: string; out Resultado: TFDQuery): Boolean;
    function ObtenerRespuestaTexto(const Prompt: string): string;
    function ConsultarOpenAI(const Prompt: string): string;
  end;

implementation

uses
  System.Net.URLClient, FireDAC.DApt, FireDAC.Stan.Param, FireDAC.Stan.Async, Math;

const
  OPENAI_URL = 'https://api.openai.com/v1/chat/completions';
  DEFAULT_TIMEOUT = 30000; // 30 segundos

{==========================
  Llamada simple a OpenAI
==========================}
function TIA_SQL_Firebird.ConsultarOpenAI(const Prompt: string): string;
var
  Http: TNetHTTPClient;
  ReqJSON, Msg1, Msg2, Root: TJSONObject;
  Msgs: TJSONArray;
  Body: TStringStream;
  Resp: IHTTPResponse;
  Content: string;
  JSONResp, Msg, Choice: TJSONObject;
  Choices: TJSONArray;
begin
  Result := '';
  Http := TNetHTTPClient.Create(nil);
  try
    Http.ContentType := 'application/json';
    Http.CustomHeaders['Authorization'] := 'Bearer ' + FOpenAIKey;

    Msgs := TJSONArray.Create;

    Msg1 := TJSONObject.Create;
    Msg1.AddPair('role', 'system');
    Msg1.AddPair('content', FContexto);
    Msgs.AddElement(Msg1);

    Msg2 := TJSONObject.Create;
    Msg2.AddPair('role', 'user');
    Msg2.AddPair('content', Prompt);
    Msgs.AddElement(Msg2);

    Root := TJSONObject.Create;
    Root.AddPair('model', FModel);
    Root.AddPair('messages', Msgs);

    ReqJSON := Root;

    Body := TStringStream.Create(ReqJSON.ToJSON, TEncoding.UTF8);
    try
      Resp := Http.Post(OPENAI_URL, Body);
      Content := Resp.ContentAsString(TEncoding.UTF8);

      JSONResp := TJSONObject.ParseJSONValue(Content) as TJSONObject;
      try
        Choices := JSONResp.GetValue<TJSONArray>('choices');
        if (Choices <> nil) and (Choices.Count > 0) then
        begin
          Choice := Choices.Items[0] as TJSONObject;
          Msg := Choice.GetValue<TJSONObject>('message');
          if Msg <> nil then
            Result := Msg.GetValue<string>('content')
          else
            raise Exception.Create('No se encontró el contenido de respuesta.');
        end
        else
          raise Exception.Create('Respuesta sin opciones.');
      finally
        JSONResp.Free;
      end;
    finally
      Body.Free;
      ReqJSON.Free;
    end;
  finally
    Http.Free;
  end;
end;

constructor TIA_SQL_Firebird.Create(AConnection: TFDConnection; const AAPIKey, ContextoTablas: string);
begin
  FConnection := AConnection;
  FOpenAIKey  := AAPIKey;
  FContexto   := ContextoTablas;
  FHttpClient := TNetHTTPClient.Create(nil);
  FModel      := 'gpt-4-turbo';// 'gpt-4o-mini';
end;

destructor TIA_SQL_Firebird.Destroy;
begin
  FHttpClient.Free;
  inherited;
end;


function TIA_SQL_Firebird.EjecutarPrompt(const Prompt: string; out Resultado: TFDQuery): Boolean;

  {================ Limpieza de SQL devuelto por el modelo ================}
  function ExtractCoreSQL(const S: string): string;
  var
    R, U: string;
    pSel, pWith, pUpd, pIns, pDel, pStart, pFence: Integer;
  begin
    R := Trim(S);
    R := StringReplace(R, '`', '', [rfReplaceAll]);     // quitar backticks
    if Copy(R,1,3) = '```' then
    begin
      pFence := Pos(#10, R); if pFence = 0 then pFence := Pos(#13, R);
      if pFence > 0 then R := Trim(Copy(R, pFence+1, MaxInt));
      R := StringReplace(R, '```', '', [rfReplaceAll]);
    end;

    U := UpperCase(R);
    pSel  := Pos('SELECT', U);
    pWith := Pos('WITH',   U);
    pUpd  := Pos('UPDATE', U);
    pIns  := Pos('INSERT', U);
    pDel  := Pos('DELETE', U);

    pStart := MaxInt;
    if (pSel  > 0) and (pSel  < pStart) then pStart := pSel;
    if (pWith > 0) and (pWith < pStart) then pStart := pWith;
    if (pUpd  > 0) and (pUpd  < pStart) then pStart := pUpd;
    if (pIns  > 0) and (pIns  < pStart) then pStart := pIns;
    if (pDel  > 0) and (pDel  < pStart) then pStart := pDel;

    if pStart <> MaxInt then
      R := Trim(Copy(R, pStart, MaxInt));

    if (R <> '') and (R[Length(R)] = ';') then
      Delete(R, Length(R), 1);

    Result := Trim(R);
  end;

  {================ Buscadores a nivel 0 (fuera de () y '...') ================}
  function FindTopLevelToken(const SQLUpper, Token: string; StartPos: Integer = 1): Integer;
  var
    i, LTok, L, ParenLvl: Integer;
    InStr: Boolean;
  begin
    Result := 0;
    L := Length(SQLUpper);
    LTok := Length(Token);
    ParenLvl := 0;
    InStr := False;

    i := StartPos;
    while i <= L - LTok + 1 do
    begin
      // comillas simples
      if SQLUpper[i] = '''' then
      begin
        InStr := not InStr;
        Inc(i);
        Continue;
      end;

      if not InStr then
      begin
        if SQLUpper[i] = '(' then
          Inc(ParenLvl)
        else if SQLUpper[i] = ')' then
          if ParenLvl > 0 then Dec(ParenLvl);

        if (ParenLvl = 0) and (Copy(SQLUpper, i, LTok) = Token) then
        begin
          Result := i;
          Exit;
        end;
      end;

      Inc(i);
    end;
  end;

  function FindTopLevelAny(const SQLUpper: string; const Tokens: array of string; StartPos: Integer): Integer;
  var
    i, p, best: Integer;
  begin
    best := 0;
    for i := Low(Tokens) to High(Tokens) do
    begin
      p := FindTopLevelToken(SQLUpper, Tokens[i], StartPos);
      if (p > 0) and ((best = 0) or (p < best)) then
        best := p;
    end;
    Result := best;
  end;

  {================ Helpers de parsing de SELECT / GROUP BY ================}
  function TomarSelectList(const SQLUpper, SQLOriginal: string): string;
  var
    pSel, pFrom: Integer;
  begin
    Result := '';
    pSel := Pos('SELECT', SQLUpper);
    if pSel = 0 then Exit;

    pFrom := FindTopLevelToken(SQLUpper, 'FROM', pSel + Length('SELECT'));
    if (pFrom = 0) or (pFrom <= pSel) then Exit;

    Result := Trim(Copy(SQLOriginal, pSel + Length('SELECT'), pFrom - (pSel + Length('SELECT'))));
  end;

  function GetGroupListTextTop(const SQLUpper, SQLOriginal: string; out StartAfterGB, SegLen: Integer): string;
  var
    pGB, pEnd: Integer;
  begin
    Result := '';
    StartAfterGB := 0; SegLen := 0;

    pGB := FindTopLevelToken(SQLUpper, 'GROUP BY', 1);
    if pGB = 0 then Exit;

    StartAfterGB := pGB + Length('GROUP BY');

    // fin de la lista GROUP BY en el siguiente token top-level
    pEnd := FindTopLevelAny(SQLUpper, [' ORDER BY',' HAVING',' ROWS',' FETCH',' LIMIT'], StartAfterGB);
    if pEnd = 0 then
      SegLen := Length(SQLUpper) - StartAfterGB + 1
    else
      SegLen := pEnd - StartAfterGB;

    Result := Trim(Copy(SQLOriginal, StartAfterGB, SegLen));
  end;

  function TomarGroupListUpper(const SQLUpper: string): string;
  var
    s, dummyLen: Integer;
  begin
    Result := GetGroupListTextTop(SQLUpper, SQLUpper, s, dummyLen); // upper
  end;

  {================ Normalización y limpieza de expresiones ================}
  function CleanAliasKeepDots(const S: string): string;
  var
    R: string;
    pAS, pOpen, pClose, i, lvl: Integer;
    U: string;

    function StartsWithFunc(const UU: string): Boolean;
    begin
      Result :=
        (Copy(UU,1,7) = 'EXTRACT') or
        (Copy(UU,1,4) = 'CAST') or
        (Copy(UU,1,8) = 'COALESCE') or
        (Copy(UU,1,7) = 'DATEADD') or
        (Copy(UU,1,9) = 'SUBSTRING');
    end;

  begin
    R := Trim(S);

    // quitar alias AS ...
    pAS := Pos(' AS ', UpperCase(R));
    if pAS > 0 then
      R := Trim(Copy(R, 1, pAS-1));

    // quitar comillas dobles
    R := StringReplace(R, '"', '', [rfReplaceAll]);

    // si es función, cortar EXACTO hasta cierre balanceado (plan B si hiciera falta)
    U := UpperCase(R);
    if StartsWithFunc(U) then
    begin
      pOpen := Pos('(', R);
      if pOpen > 0 then
      begin
        lvl := 0; pClose := 0;
        for i := pOpen to Length(R) do
        begin
          if R[i] = '(' then Inc(lvl)
          else if R[i] = ')' then
          begin
            Dec(lvl);
            if lvl = 0 then
            begin
              pClose := i;
              Break;
            end;
          end;
        end;

        if pClose = 0 then
        begin
          // plan B: cortar usando el texto original si no se encontró cierre
          pClose := LastDelimiter(')', S);
          if (pClose > 0) and (pClose >= pOpen) then
            R := Trim(Copy(S, 1, pClose));
        end
        else
          R := Trim(Copy(R, 1, pClose));
      end;
    end;

    while Pos('  ', R) > 0 do
      R := StringReplace(R, '  ', ' ', [rfReplaceAll]);

    if (R <> '') and (R[Length(R)] = ',') then
      Delete(R, Length(R), 1);

    Result := Trim(R);
  end;

  function NormalizarExpr(const S: string): string;
  var
    R: string; p: Integer;
  begin
    R := UpperCase(Trim(S));
    p := Pos(' AS ', R); if p > 0 then R := Trim(Copy(R, 1, p-1));
    R := StringReplace(R, '"', '', [rfReplaceAll]);
    R := StringReplace(R, '.', '', [rfReplaceAll]); // para comparar
    while Pos('  ', R) > 0 do R := StringReplace(R, '  ', ' ', [rfReplaceAll]);
    if (Length(R) >= 4) and (Copy(R, Length(R)-3, 4) = ' ASC') then
      Delete(R, Length(R)-3, 4)
    else if (Length(R) >= 5) and (Copy(R, Length(R)-4, 5) = ' DESC') then
      Delete(R, Length(R)-4, 5);
    Result := Trim(R);
  end;

  function EsAgregado(const Expr: string): Boolean;
  var U: string;
  begin
    U := UpperCase(Expr);
    Result := (Pos('SUM(',U)>0) or (Pos('AVG(',U)>0) or (Pos('MIN(',U)>0) or
              (Pos('MAX(',U)>0) or (Pos('COUNT(',U)>0);
  end;

  {================ Validación y AutoFix de GROUP BY ================}
  function ValidarGroupBy(const SQL: string; out CamposInvalidos: string; out MissingOrig: TStringList): Boolean;
  var
    SQLU, SelectPart, GroupPartU: string;
    SelItemsOrig, GroupItemsU: TStringList;
    i, j: Integer;
    ExprSelOrig, ExprSelNorm, ExprGrpNorm: string;
    EnGroup: Boolean;
    // Anti falsos-positivos
    GBTextOrig, CleanSel, CleanGB: string;
    StartAfterGB, SegLen: Integer;
  begin
    Result := True;
    CamposInvalidos := '';
    MissingOrig := TStringList.Create;

    SQLU := UpperCase(SQL);
    if FindTopLevelToken(SQLU, 'GROUP BY') = 0 then Exit;

    SelectPart := TomarSelectList(SQLU, SQL);
    GroupPartU := TomarGroupListUpper(SQLU);

    // Forzar reparación si hay GROUP BY pero lista vacía
    if (FindTopLevelToken(SQLU, 'GROUP BY') > 0) and (Trim(GroupPartU) = '') then
    begin
      CamposInvalidos := '(lista vacía)';
      Result := False;
      Exit;
    end;

    if (SelectPart = '') or (GroupPartU = '') then Exit;

    SelItemsOrig := TStringList.Create;
    GroupItemsU  := TStringList.Create;
    try
      SelItemsOrig.StrictDelimiter := True;
      SelItemsOrig.Delimiter := ',';
      SelItemsOrig.DelimitedText := SelectPart;

      GroupItemsU.StrictDelimiter := True;
      GroupItemsU.Delimiter := ',';
      GroupItemsU.DelimitedText := GroupPartU;

      for i := 0 to SelItemsOrig.Count-1 do
      begin
        ExprSelOrig := CleanAliasKeepDots(SelItemsOrig[i]); // para mostrar/agregar
        ExprSelNorm := NormalizarExpr(SelItemsOrig[i]);     // para comparar

        if EsAgregado(ExprSelNorm) then
          Continue;

        EnGroup := False;
        for j := 0 to GroupItemsU.Count-1 do
        begin
          ExprGrpNorm := NormalizarExpr(GroupItemsU[j]);
          if ExprSelNorm = ExprGrpNorm then
          begin
            EnGroup := True;
            Break;
          end;
        end;

        // --- Parche anti falsos positivos (EXTRACT, CAST, ...) ---
        if not EnGroup then
        begin
          GBTextOrig := GetGroupListTextTop(UpperCase(SQL), SQL, StartAfterGB, SegLen); // tramo ORIGINAL
          CleanSel := StringReplace(ExprSelOrig, '"', '', [rfReplaceAll]);
          while Pos('  ', CleanSel) > 0 do
            CleanSel := StringReplace(CleanSel, '  ', ' ', [rfReplaceAll]);
          CleanSel := Trim(CleanSel);

          CleanGB := StringReplace(GBTextOrig, '"', '', [rfReplaceAll]);
          while Pos('  ', CleanGB) > 0 do
            CleanGB := StringReplace(CleanGB, '  ', ' ', [rfReplaceAll]);
          CleanGB := Trim(CleanGB);

          if ContainsText(CleanGB, CleanSel) then
            EnGroup := True;
        end;

        if not EnGroup then
        begin
          if CamposInvalidos <> '' then CamposInvalidos := CamposInvalidos + ', ';
          CamposInvalidos := CamposInvalidos + ExprSelOrig;
          MissingOrig.Add(ExprSelOrig);
          Result := False;
        end;
      end;
    finally
      SelItemsOrig.Free;
      GroupItemsU.Free;
    end;
  end;

  function AutoFixGroupBy(const SQL: string; const MissingOrig: TStringList; out FixedSQL: string): Boolean;
  var
    SQLU, GroupOrigText, SelectPart: string;
    StartAfterGB, SegLen: Integer;
    GroupOrigClean, AliasMap: TStringList;
    i: Integer;
    Head, Tail, NewGroup: string;

    // Construye mapa alias -> expresión (según lista del SELECT)
    function BuildAliasMap(const SelectList: string): TStringList;
    var
      parts: TStringList;
      itm, alias, expr: string;
      pAS, k: Integer;
    begin
      Result := TStringList.Create;
      Result.CaseSensitive := False;
      Result.Sorted := False;
      Result.Duplicates := dupIgnore;

      parts := TStringList.Create;
      try
        parts.StrictDelimiter := True;
        parts.Delimiter := ',';
        parts.DelimitedText := SelectList;

        for k := 0 to parts.Count - 1 do
        begin
          itm := Trim(parts[k]);
          if itm = '' then Continue;

          pAS := Pos(' AS ', UpperCase(itm));
          if pAS > 0 then
          begin
            alias := Trim(Copy(itm, pAS + 4, MaxInt));  // texto después de AS
            expr  := CleanAliasKeepDots(itm);           // expresión sin alias
            if (alias <> '') and (expr <> '') then
              Result.Values[UpperCase(alias)] := expr;
          end;
        end;
      finally
        parts.Free;
      end;
    end;

    // Une con comas, ignorando vacíos
    function JoinComma(const L: TStringList): string;
    var k: Integer;
    begin
      Result := '';
      for k := 0 to L.Count - 1 do
        if L[k] <> '' then
        begin
          if Result <> '' then Result := Result + ', ';
          Result := Result + L[k];
        end;
    end;

    // Quita duplicados case-insensitive in-place
    procedure DedupCaseInsensitive(L: TStringList);
    var i, j: Integer;
    begin
      for i := L.Count - 1 downto 0 do
        for j := 0 to i - 1 do
          if SameText(Trim(L[i]), Trim(L[j])) then
          begin
            L.Delete(i);
            Break;
          end;
    end;

  begin
    Result := False;
    FixedSQL := SQL;
    if (MissingOrig = nil) or (MissingOrig.Count = 0) then Exit;

    SQLU := UpperCase(SQL);
    if FindTopLevelToken(SQLU, 'GROUP BY') = 0 then Exit;

    // 1) Tomo SELECT (para conocer alias) y GROUP BY original (tramo a reemplazar)
    SelectPart    := TomarSelectList(SQLU, SQL);                 // original, no-upper
    GroupOrigText := GetGroupListTextTop(SQLU, SQL, StartAfterGB, SegLen);

    // 2) Armo mapa de aliases del SELECT
    AliasMap := BuildAliasMap(SelectPart);

    GroupOrigClean := TStringList.Create;
    try
      // 3) Cargo la lista original del GROUP BY y la "limpio"
      if GroupOrigText <> '' then
      begin
        GroupOrigClean.StrictDelimiter := True;
        GroupOrigClean.Delimiter := ',';
        GroupOrigClean.DelimitedText := GroupOrigText;
        for i := 0 to GroupOrigClean.Count - 1 do
          GroupOrigClean[i] := CleanAliasKeepDots(GroupOrigClean[i]);
      end;

      // 4) Reemplazo cualquier alias del GROUP BY por su expresión del SELECT
      for i := 0 to GroupOrigClean.Count - 1 do
      begin
        var key := UpperCase(Trim(GroupOrigClean[i]));
        if AliasMap.IndexOfName(key) >= 0 then
          GroupOrigClean[i] := AliasMap.Values[key];
      end;

      // 5) Agrego faltantes (ya vienen en forma de expresión limpia)
      for i := 0 to MissingOrig.Count - 1 do
        if (MissingOrig[i] <> '') and (GroupOrigClean.IndexOf(MissingOrig[i]) = -1) then
          GroupOrigClean.Add(MissingOrig[i]);

      // 6) Limpio vacíos y duplicados
      for i := GroupOrigClean.Count - 1 downto 0 do
        if Trim(GroupOrigClean[i]) = '' then
          GroupOrigClean.Delete(i);
      DedupCaseInsensitive(GroupOrigClean);

      // 7) Reensamblo la consulta sin comas/espacios colgantes
      NewGroup := JoinComma(GroupOrigClean);

      Head := Copy(SQL, 1, StartAfterGB);
      Tail := Copy(SQL, StartAfterGB + SegLen, MaxInt);

      while (Length(Head) > 0) and (Head[Length(Head)] in [' ', ',']) do
        Delete(Head, Length(Head), 1);
      while (Length(NewGroup) > 0) and (NewGroup[1] in [',', ' ']) do
        Delete(NewGroup, 1, 1);

      NewGroup := Trim(NewGroup);
      if NewGroup = '' then Exit;

      FixedSQL := Head + ' ' + NewGroup + ' ' + Trim(Tail);
      FixedSQL := ExtractCoreSQL(FixedSQL);

      Result := True;
    finally
      GroupOrigClean.Free;
      AliasMap.Free;
    end;
  end;

  {==================== Metadatos: tablas/columnas reales ====================}
  type
    TTablaCols = TDictionary<string, Boolean>;
    TSchema    = TDictionary<string, TTablaCols>;
    TAliasMap  = TDictionary<string, string>; // alias(minus) -> tabla(minus)

  function BuildSchema: TSchema;
  var
    Q: TFDQuery;
    TName, CName: string;
    Tbl: TTablaCols;
  begin
    Result := TSchema.Create;
    Q := TFDQuery.Create(nil);
    try
      Q.Connection := FConnection;
      Q.SQL.Text :=
        'SELECT TRIM(rf.RDB$RELATION_NAME) AS TBL,' +
        '       TRIM(rf.RDB$FIELD_NAME)    AS COL ' +
        'FROM RDB$RELATION_FIELDS rf ' +
        'JOIN RDB$RELATIONS r ON r.RDB$RELATION_NAME = rf.RDB$RELATION_NAME ' +
        'WHERE r.RDB$SYSTEM_FLAG = 0 ' +
        'ORDER BY 1,2';
      Q.Open;
      while not Q.Eof do
      begin
        TName := LowerCase(Q.FieldByName('TBL').AsString);
        CName := LowerCase(Q.FieldByName('COL').AsString);
        if not Result.TryGetValue(TName, Tbl) then
        begin
          Tbl := TTablaCols.Create;
          Result.Add(TName, Tbl);
        end;
        Tbl.AddOrSetValue(CName, True);
        Q.Next;
      end;
    finally
      Q.Free;
    end;
  end;

  function ColumnExists(const Schema: TSchema; const TableName, ColName: string): Boolean;
  var
    Tbl: TTablaCols;
  begin
    Result := False;
    if Schema.TryGetValue(LowerCase(TableName), Tbl) then
      Result := Tbl.ContainsKey(LowerCase(ColName));
  end;

  function ExtractAliasMap(const SQL: string): TAliasMap;
  var
    Words: TArray<string>;
    i, L: Integer;
    tokU, tbl, alias: string;

    function IsKeyword(const W: string): Boolean;
    var U: string;
    begin
      U := UpperCase(W);
      Result := (U = 'ON') or (U = 'USING') or (U = 'WHERE') or (U = 'GROUP') or
                (U = 'ORDER') or (U = 'LEFT') or (U = 'RIGHT') or (U = 'INNER') or
                (U = 'FULL') or (U = 'CROSS') or (U = 'JOIN') or (U = 'HAVING') or
                (U = 'ROWS') or (U = 'FETCH') or (U = 'LIMIT');
    end;

  begin
    Result := TAliasMap.Create;
    Words := SQL.Replace(#13,' ').Replace(#10,' ').Split([' '], TStringSplitOptions.ExcludeEmpty);
    i := 0; L := Length(Words);
    while i < L do
    begin
      tokU := UpperCase(Words[i]);
      if (tokU = 'FROM') or (tokU = 'JOIN') then
      begin
        if i+1 < L then
        begin
          tbl := Words[i+1].Replace(',', '').Replace('"','');
          alias := '';
          if (i+2 < L) and (UpperCase(Words[i+2]) = 'AS') and (i+3 < L) then
            alias := Words[i+3]
          else if (i+2 < L) and not IsKeyword(Words[i+2]) then
            alias := Words[i+2];

          tbl   := Trim(tbl);
          alias := Trim(alias.Replace(',', '').Replace('"',''));

          if tbl <> '' then
          begin
            if alias = '' then alias := tbl;
            Result.AddOrSetValue(LowerCase(alias), LowerCase(tbl));
          end;
        end;
      end;
      Inc(i);
    end;
  end;

  function ExtractAliasDotCols(const SQL: string): TArray<string>;
  var
    S: string; i: Integer; ch: Char; token: string;
    list: TList<string>;
  begin
    list := TList<string>.Create;
    try
      S := SQL;
      token := '';
      for i := 1 to Length(S) do
      begin
        ch := S[i];
        if ch in ['A'..'Z','a'..'z','0'..'9','_','.','$'] then
          token := token + ch
        else
        begin
          if (Pos('.', token) > 0) and (Length(token) > 2) then
            list.Add(token);
          token := '';
        end;
      end;
      if (Pos('.', token) > 0) and (Length(token) > 2) then
        list.Add(token);

      Result := list.ToArray;
    finally
      list.Free;
    end;
  end;

var
  JsonRequest, JsonResponse: TJSONObject;
  MsgsArray: TJSONArray;
  Resp: IHTTPResponse;
  Content, SQLQuery, CamposMal, SQLFixed, Aviso: string;
  Choices: TJSONArray;
  MissingList: TStringList;

  Schema: TSchema;
  Aliases: TAliasMap;
  Refs: TArray<string>;
  ref, a, c, tbl: string;
  p: Integer;
  Errores: TStringList;
begin
  Result := False;

  // 1) Llamada a OpenAI con reglas estrictas y alias canónicos
  MsgsArray := TJSONArray.Create;
  MsgsArray.AddElement(
    TJSONObject.Create
      .AddPair('role', 'system')
      .AddPair('content',
        'Tarea: Convertir el pedido del usuario a SQL de Firebird.' + sLineBreak +
        'Reglas ESTRICTAS:' + sLineBreak +
        '- Usá SOLO estas tablas y columnas; no inventes ninguna: ' + FContexto + sLineBreak +
        '- Alias canónicos: f=FCVTACAB, fd=FCVTADET, s=STOCK, ps=PROVEESTOCK (usá solo los que existan en el listado).' + sLineBreak +
        '- Calificá SIEMPRE las columnas con alias de tabla (ej: s.RUBRO_STK).' + sLineBreak +
        '- Si el usuario dice "por rubro", usá SOLO s.RUBRO_STK; NO uses tablas RUBROS/descripcion si no están listadas.' + sLineBreak +
        '- Si necesitás un texto de rubro y no existe columna, OMITILO.' + sLineBreak +
        '- No uses comillas invertidas (`); usá comillas simples para valores.' + sLineBreak +
        '- Para fechas, usá EXTRACT(YEAR FROM campo) / EXTRACT(MONTH FROM campo).' + sLineBreak +
        '- Si hay GROUP BY, todo campo del SELECT no agregado debe estar en GROUP BY.' + sLineBreak +
        'Devolvé SOLO el SQL.'));

  MsgsArray.AddElement(
    TJSONObject.Create
      .AddPair('role', 'user')
      .AddPair('content', Prompt));

  JsonRequest := TJSONObject.Create;
  try
    JsonRequest.AddPair('model', FModel);
    JsonRequest.AddPair('messages', MsgsArray);
    JsonRequest.AddPair('temperature', TJSONNumber.Create(0));

    Resp := FHttpClient.Post(OPENAI_URL, TStringStream.Create(JsonRequest.ToJSON, TEncoding.UTF8),
      nil,
      [TNameValuePair.Create('Authorization', 'Bearer ' + FOpenAIKey),
       TNameValuePair.Create('Content-Type', 'application/json')]);

    if Resp.StatusCode = 200 then
    begin
      Content := Resp.ContentAsString(TEncoding.UTF8);
      JsonResponse := TJSONObject.ParseJSONValue(Content) as TJSONObject;
      try
        Choices  := JsonResponse.GetValue<TJSONArray>('choices');
        SQLQuery := Choices.Items[0].GetValue<TJSONObject>('message').GetValue<string>('content');
        SQLQuery := ExtractCoreSQL(SQLQuery);

        { 2) Validación de tablas/columnas contra metadatos }
        Schema  := BuildSchema;
        Aliases := ExtractAliasMap(SQLQuery);
        Errores := TStringList.Create;
        try
          Refs := ExtractAliasDotCols(SQLQuery);
          for ref in Refs do
          begin
            p := Pos('.', ref);
            a := LowerCase(Copy(ref, 1, p-1));
            c := LowerCase(Copy(ref, p+1, MaxInt));
            if not Aliases.TryGetValue(a, tbl) then
            begin
              Errores.Add(Format('Alias desconocido: %s (referencia %s)', [a, ref]));
              Continue;
            end;
            if not ColumnExists(Schema, tbl, c) then
              Errores.Add(Format('Columna desconocida: %s.%s (referencia %s)', [tbl, c, ref]));
          end;

          if Errores.Count > 0 then
          begin
            ShowMessage('❌ La consulta usa tablas/campos inexistentes:' + sLineBreak + Errores.Text +
                        sLineBreak + 'Sugerencia: si pedís "por rubro", usá s.RUBRO_STK.');
            Exit(False);
          end;
        finally
          Errores.Free;
          Aliases.Free;
          // liberar Schema
          for var kv in Schema do kv.Value.Free;
          Schema.Free;
        end;

        { 3) Validar GROUP BY y, si hace falta, autofix }
        MissingList := nil;
        try
          if not ValidarGroupBy(SQLQuery, CamposMal, MissingList) then
          begin
            if (MissingList <> nil) and (MissingList.Count > 0) then
            begin
              if AutoFixGroupBy(SQLQuery, MissingList, SQLFixed) then
              begin
                SQLQuery := SQLFixed;
                Aviso := '';
                for var k := 0 to MissingList.Count-1 do
                begin
                  if Aviso <> '' then Aviso := Aviso + ', ';
                  Aviso := Aviso + MissingList[k];
                end;
                ShowMessage('ℹ️ Se ajustó automáticamente el GROUP BY agregando: ' + Aviso);
              end
              else
              begin
                ShowMessage('⚠️ La consulta es inválida. Faltan en GROUP BY: ' + CamposMal);
                Exit(False);
              end;
            end
            else
            begin
              ShowMessage('⚠️ La consulta es inválida. Faltan en GROUP BY: ' + CamposMal);
              Exit(False);
            end;
          end;
        finally
          MissingList.Free;
        end;

        { 4) Ejecutar }
        Resultado            := TFDQuery.Create(nil);
        Resultado.Connection := FConnection;
        Resultado.SQL.Text   := SQLQuery;

        if SQLQuery.ToUpper.StartsWith('SELECT') then
          Resultado.Open
        else
        begin
          Resultado.ExecSQL;
          if not FConnection.TxOptions.AutoCommit then
            FConnection.Commit;
        end;

        Result := True;
      finally
        JsonResponse.Free;
      end;
    end
    else
      raise Exception.Create('Error al consultar OpenAI: ' + Resp.ContentAsString);
  finally
    JsonRequest.Free;
  end;
end;

function TIA_SQL_Firebird.ObtenerRespuestaTexto(const Prompt: string): string;
var
  Rsp: string;
begin
  Result := '';
  try
    Rsp := ConsultarOpenAI(Prompt);
    Result := Rsp;
  except
    on E: Exception do
      raise Exception.Create('Error al consultar OpenAI: ' + E.Message);
  end;
end;

end.

