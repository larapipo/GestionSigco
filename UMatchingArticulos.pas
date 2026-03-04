unit UMatchingArticulos;

interface

uses
  System.SysUtils, System.Classes, System.StrUtils, System.Character, System.Generics.Collections,
  FireDAC.Comp.Client, FireDAC.Stan.Param, Math;

type
  TMatchMetodo = (mmDescProveedorExacta, mmStockExacta, mmStockFuzzy, mmAltaNueva, mmNoMatch);

  TMatchResult = record
    CodigoSTK  : string;          // clave en STOCK
    Metodo     : TMatchMetodo;
    Score      : Double;              // 0..1 (para fuzzy)
    DescripcionElegida: string;
    function Ok: Boolean;
  end;

function NormalizarTexto(const S: string): string;
function JaroWinkler(const S1, S2: string): Double;
function LevenshteinSim(const S1, S2: string): Double;

//function NextCodigoSTK(AConn: TFDConnection): string;

function BuscarOMatchearPorDescripcion(
  AConn: TFDConnection;
  const CodProveedor : string;        // PROVEESTOCK.CODIGO_PROVEEDOR de la factura
  const DescItem     : string;            // descripción del renglón importado
        CodSubRubro  : string;
        cod_stk_prov : string;
  AutoAltaSiNo       : Boolean;
  UmbralFuzzy        : Double = 0.90): TMatchResult;

implementation

{==== Normalización ====}

function QuitarAcentos(const S: string): string;
const
  Src = 'ÁÀÂÄáàâäÉÈÊËéèêëÍÌÎÏíìîïÓÒÔÖóòôöÚÙÛÜúùûüÑñÇç';
  Rep = 'AAAAaaaaEEEEeeeeIIIIiiiiOOOOooooUUUUuuuuNnCc';
var
  i, p: Integer;
  ch: Char;
begin
  Result := S;
  for i := 1 to Length(Result) do
  begin
    ch := Result[i];
    p := Pos(ch, Src);
    if p > 0 then
      Result[i] := Rep[p];
  end;
end;

function NormalizarTexto(const S: string): string;
var
  R: string;
  i: Integer;
begin
  R := Trim(S.ToUpperInvariant);
  R := QuitarAcentos(R);
  for i := 1 to Length(R) do
    if not (R[i].IsLetterOrDigit or (R[i] = ' ')) then
      R[i] := ' ';
  while Pos('  ', R) > 0 do
    R := StringReplace(R, '  ', ' ', [rfReplaceAll]);
  Result := Trim(R);
end;

{==== Similitud ====}

function JaroWinkler(const S1, S2: string): Double;
  function Min(a,b: Integer): Integer; inline; begin if a<b then Result:=a else Result:=b; end;
var
  s, t: string;
  m, i, j, k, range, transpositions: Integer;
  sMatches, tMatches: TArray<Boolean>;
  prefix: Integer;
  jaro: Double;
begin
  s := S1; t := S2;
  if (s = '') and (t = '') then Exit(1.0);
  range := Max(0, (Max(Length(s), Length(t)) div 2) - 1);

  SetLength(sMatches, Length(s)+1);
  SetLength(tMatches, Length(t)+1);

  m := 0;
  for i := 1 to Length(s) do
  begin
    for j := Max(1, i - range) to Min(Length(t), i + range) do
    begin
      if (not tMatches[j]) and (s[i] = t[j]) then
      begin
        sMatches[i] := True;
        tMatches[j] := True;
        Inc(m);
        Break;
      end;
    end;
  end;

  if m = 0 then Exit(0.0);

  k := 1; transpositions := 0;
  for i := 1 to Length(s) do
    if sMatches[i] then
    begin
      while (k <= Length(t)) and (not tMatches[k]) do Inc(k);
      if (k <= Length(t)) and (s[i] <> t[k]) then Inc(transpositions);
      Inc(k);
    end;

  jaro := (m/Length(s) + m/Length(t) + (m - transpositions div 2)/m) / 3;

  prefix := 0;
  for i := 1 to Min(4, Min(Length(s), Length(t))) do
    if s[i] = t[i] then Inc(prefix) else Break;

  Result := jaro + prefix * 0.1 * (1 - jaro);
end;

function LevenshteinSim(const S1, S2: string): Double;
var
  d: array of array of Integer;
  i, j, cost: Integer;
begin
  if S1 = S2 then Exit(1.0);
  if (S1 = '') or (S2 = '') then Exit(0.0);

  SetLength(d, Length(S1)+1, Length(S2)+1);
  for i := 0 to Length(S1) do d[i,0] := i;
  for j := 0 to Length(S2) do d[0,j] := j;

  for i := 1 to Length(S1) do
    for j := 1 to Length(S2) do
    begin
      if S1[i] = S2[j] then cost := 0 else cost := 1;
      d[i,j] := Min(Min(d[i-1,j] + 1, d[i,j-1] + 1), d[i-1,j-1] + cost);
    end;

  Result := 1.0 - (d[Length(S1), Length(S2)] / Max(Length(S1), Length(S2)));
end;

function TMatchResult.Ok: Boolean;
begin
  Result := (CodigoSTK <> '') and (Metodo <> mmNoMatch);
end;

{==== Código STK “siguiente” (numérico con padding) ====}
{
function NextCodigoSTK(AConn: TFDConnection): string;
var
  Q: TFDQuery;
  MaxNum: Integer;
  S: string;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := AConn;
    Q.SQL.Text :=
      'select max(cast(codigo_stk as integer)) as M '+
      'from STOCK where codigo_stk similar to ''[0-9]+'' ';
    Q.Open;
    MaxNum := Q.FieldByName('M').AsInteger;
    Inc(MaxNum);
    S := MaxNum.ToString;
    Result := S.PadLeft(8,'0');
  finally
    Q.Free;
  end;
end;
}
{==== Matching principal (solo descripción) ====}

function BuscarOMatchearPorDescripcion(
  AConn              : TFDConnection;
  const CodProveedor : string;
  const DescItem     : string;
        CodSubRubro  : string;
        cod_stk_prov : string;
  AutoAltaSiNo       : Boolean;
  UmbralFuzzy        : Double ): TMatchResult;
var
  Q: TFDQuery;
  DescNorm: string;
  BestCod, CNorm, CDesc: string;
  BestScore, Score: Double;
begin
  Result.CodigoSTK := '';
  Result.Metodo    := mmNoMatch;
  Result.Score     := 0;
  Result.DescripcionElegida := '';

  DescNorm := NormalizarTexto(DescItem);

  Q := TFDQuery.Create(nil);
  try
    Q.Connection := AConn;

    // 1) PROVEESTOCK: exacta por proveedor + descripcion normalizada
    if CodProveedor <> '' then
    begin
      Q.SQL.Text :=
        'select first 1 p.CODIGO_STK, coalesce(p.DETALLE_STK, s.DETALLE_STK) DET '+
        'from PROVEESTOCK p '+
        'left join STOCK s on s.CODIGO_STK = p.CODIGO_STK '+
        'where p.CODIGO_PROVEEDOR = :prov and p.DETALLE_NORM = :dn '+
        '  and p.CODIGO_STK is not null';
      Q.ParamByName('prov').AsString := CodProveedor;
      Q.ParamByName('dn').AsString   := DescNorm;
      Q.Open;
      if not Q.Eof then
      begin
        Result.CodigoSTK          := Q.FieldByName('CODIGO_STK').AsString;
        Result.Metodo             := mmDescProveedorExacta;
        Result.Score              := 1.0;
        Result.DescripcionElegida := Q.FieldByName('DET').AsString;
        Exit;
      end;
      Q.Close;
    end;

    // 2) STOCK: exacta por descripcion normalizada
    Q.SQL.Text :=
      'select first 1 CODIGO_STK, DETALLE_STK '+
      'from STOCK where DETALLE_NORM = :dn';
    Q.ParamByName('dn').AsString := DescNorm;
    Q.Open;
    if not Q.Eof then
    begin
      Result.CodigoSTK := Q.FieldByName('CODIGO_STK').AsString;
      Result.Metodo    := mmStockExacta;
      Result.Score     := 1.0;
      Result.DescripcionElegida := Q.FieldByName('DETALLE_STK').AsString;
      Exit;
    end;
    Q.Close;

    // 3) STOCK: FUZZY – candidatos por CONTAINING y luego similitud
    Q.SQL.Text :=
      'select first 200 CODIGO_STK, DETALLE_STK, DETALLE_NORM '+
      'from STOCK where DETALLE_NORM containing :tk';
    Q.ParamByName('tk').AsString := Copy(DescNorm, 1, 4);
    Q.Open;

    BestCod := ''; BestScore := 0; Result.DescripcionElegida := '';
    while not Q.Eof do
    begin
      CDesc := Q.FieldByName('DETALLE_STK').AsString;
      CNorm := Q.FieldByName('DETALLE_NORM').AsString;
      Score := (JaroWinkler(DescNorm, CNorm) * 0.7) +
               (LevenshteinSim(DescNorm, CNorm) * 0.3);
      if Score > BestScore then
      begin
        BestScore := Score;
        BestCod   := Q.FieldByName('CODIGO_STK').AsString;
        Result.DescripcionElegida := CDesc;
      end;
      Q.Next;
    end;
    Q.Close;

    if (BestCod <> '') and (BestScore >= UmbralFuzzy) then
    begin
      Result.CodigoSTK := BestCod;
      Result.Metodo    := mmStockFuzzy;
      Result.Score     := BestScore;
      Exit;
    end;

    // 4) Alta automática (si se permite)
    if AutoAltaSiNo then
    begin
      AConn.StartTransaction;
      try
        // Result.CodigoSTK := NextCodigoSTK(AConn);
        if (cod_stk_prov='********') then
          cod_stk_prov:='';
        // Insert mínimo en STOCK (ajustá defaults a tu negocio)
        Q.SQL.Text :='execute procedure alta_stock_con_existencia (:Detalle,:detalleADicional,:costo,:preciovta,:cantidad,:subrubro,'''',:costoconiva,:deposito)';
        Q.ParamByName('detalle').AsString          := DescItem;
        Q.ParamByName('detalleAdicional').AsString := DescItem;
        Q.ParamByName('costo').Value               := 0;
        Q.ParamByName('preciovta').Value           := 0;
        Q.ParamByName('cantidad').Value            := 0;
        if (CodSubRubro='') then
          CodSubRubro:='*****';
        Q.ParamByName('subrubro').AsString         := CodSubRubro;
        Q.ParamByName('costoconiva').Value         := 0;
        Q.ParamByName('deposito').AsInteger        := 1;
        Q.Open;
        Result.CodigoSTK := Q.Fields[0].AsString;
        Q.Close;

        // Vínculo en PROVEESTOCK (sin código del proveedor)
        if CodProveedor <> '' then
        begin
          Q.SQL.Text :=
            'update or insert into PROVEESTOCK ('+
            ' ID_PROVEESTOCK, CODIGO_STK, DETALLE_STK, CODIGO_PROVEEDOR,codigo_facturacion'+
            ') values (:id, :stk, :det, :prov,:codigo_stk_prov) matching (CODIGO_STK, CODIGO_PROVEEDOR)';
          Q.ParamByName('id').Clear; // lo setea el trigger
          Q.ParamByName('stk').AsString              := Result.CodigoSTK;
          Q.ParamByName('det').AsString              := DescItem;
          Q.ParamByName('prov').AsString             := CodProveedor;
          Q.ParamByName('codigo_stk_prov').AsString  := cod_stk_prov;
          Q.ExecSQL;
          Q.Close;
        end;

        AConn.Commit;

        Result.Metodo := mmAltaNueva;
        Result.Score  := 1.0;
        Result.DescripcionElegida := DescItem;
      except
        AConn.Rollback;
        raise;
      end;
    end;
  finally
    Q.Free;
  end;
end;

end.

