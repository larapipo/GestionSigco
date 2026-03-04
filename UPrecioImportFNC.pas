unit UPrecioImportFNC_VCL;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections, System.RegularExpressions,
  System.Types, System.UITypes, System.IniFiles, System.Math, System.IOUtils,
  Data.DB, Datasnap.DBClient,
  // TMS FNC (VCL)
  VCL.TMSFNCTypes, VCL.TMSFNCGrid,  // <-- versión VCL del FNC Grid
  // VCL UI
  Vcl.Forms, Vcl.Controls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TColumnRole = (crUnknown, crCode, crDescription, crPrice, crCategory, crSubcategory, crBarcode);
  TColumnMap  = TDictionary<TColumnRole, Integer>;

  TImportOptions = record
    HasHeader    : Boolean; // True si la primera fila es cabecera
    StartRow     : Integer; // fila de inicio de datos (0-based). Si HasHeader=True, normalmente 1
    MaxProbeRows : Integer; // cuántas filas chequear para heurística
    ProfileName  : string;  // nombre de proveedor/formato para guardar INI
    INIPath      : string;  // ruta INI (opcional)
  end;

procedure DetectColumnsFNC(AGrid: TTMSFNCGrid; const Opt: TImportOptions; out Map: TColumnMap);
procedure ImportGridToCDS_FNC(AGrid: TTMSFNCGrid; const Opt: TImportOptions; const Map: TColumnMap; CDS: TClientDataSet);
function  ShowMappingDialogFNC(AGrid: TTMSFNCGrid; var Map: TColumnMap): Boolean;

procedure SaveMappingToINI(const Opt: TImportOptions; const Map: TColumnMap);
function  LoadMappingFromINI(const Opt: TImportOptions; out Map: TColumnMap): Boolean;

// Utilidades
function RoleName(R: TColumnRole): string;
function ToFloatDotDecimal(const S: string): Double; // usa PUNTO como decimal
function GuessIsEANLike(const S: string): Boolean;

implementation

{ === Helpers === }

function RoleName(R: TColumnRole): string;
begin
  case R of
    crUnknown     : Result := 'Sin asignar';
    crCode        : Result := 'Código';
    crDescription : Result := 'Descripción';
    crPrice       : Result := 'Precio';
    crCategory    : Result := 'Rubro';
    crSubcategory : Result := 'Subrubro';
    crBarcode     : Result := 'Cód. Barras';
  else
    Result := '???';
  end;
end;

function ToFloatDotDecimal(const S: string): Double;
var
  T: string;
begin
  T := S.Trim;
  T := T.Replace(#160, ' ').Replace(' ', '');
  if (T.Contains(',')) and (T.Contains('.')) then
    T := T.Replace('.', '').Replace(',', '.')
  else if (T.Contains(',')) and not (T.Contains('.')) then
    T := T.Replace(',', '.');

  if not TryStrToFloat(T, Result) then
    Result := 0;
end;

function GuessIsEANLike(const S: string): Boolean;
var
  T: string; i: Integer;
begin
  T := S.Trim.Replace(' ', '').Replace('-', '').Replace('.', '');
  if (T.Length in [8, 12, 13, 14]) then
  begin
    Result := True;
    for i := 1 to T.Length do
      if not CharInSet(T[i], ['0'..'9']) then Exit(False);
  end
  else
    Result := False;
end;

function MatchAny(const S: string; const Candidates: array of string): Boolean;
var
  i: Integer; N: string;
begin
  N := S.ToLower;
  for i := Low(Candidates) to High(Candidates) do
    if N.Contains(Candidates[i]) then Exit(True);
  Result := False;
end;

{ === Detección heurística en FNC Grid === }

procedure DetectColumnsFNC(AGrid: TTMSFNCGrid; const Opt: TImportOptions; out Map: TColumnMap);
const
  HEAD_CODE       : array[0..7] of string = ('código','codigo','cod','sku','artículo','articulo','item','id');
  HEAD_DESC       : array[0..5] of string = ('descripción','descripcion','detalle','nombre','producto','item');
  HEAD_PRICE      : array[0..7] of string = ('precio','p.unit','unitario','importe','price','neto','valor','monto');
  HEAD_CATEGORY   : array[0..4] of string = ('rubro','categoría','categoria','familia','grupo');
  HEAD_SUBCATEGORY: array[0..4] of string = ('subrubro','sub-rubro','subcategoría','subcategoria','subfamilia');
  HEAD_BARCODE    : array[0..6] of string = ('barras','c.barras','codigo barras','ean','gtin','upc','barcode');
var
  Scores: array of array of Integer; // [Col][Role]
  Col, Row, ProbeRows, RolesCount: Integer;
  HeaderText, Cell: string;

  function RoleIndex(R: TColumnRole): Integer; inline;
  begin
    Result := Ord(R);
  end;

  procedure Bump(ColIdx: Integer; R: TColumnRole; V: Integer = 1);
  begin
    Inc(Scores[ColIdx][RoleIndex(R)], V);
  end;

  function BestRoleForCol(ColIdx: Integer): TColumnRole;
  var
    r, bestScore: Integer;
  begin
    bestScore := -MaxInt;
    Result := crUnknown;
    for r := 0 to RolesCount-1 do
      if Scores[ColIdx][r] > bestScore then
      begin
        bestScore := Scores[ColIdx][r];
        Result := TColumnRole(r);
      end;
  end;

var
  Used: TDictionary<TColumnRole, Boolean>;
  R: TColumnRole;
  RowEnd: Integer;
begin
  Map := TColumnMap.Create;
  RolesCount := Ord(High(TColumnRole)) + 1;
  SetLength(Scores, AGrid.ColumnCount, RolesCount);
  ProbeRows := Opt.MaxProbeRows;
  if ProbeRows <= 0 then ProbeRows := 200;

  RowEnd := Min(AGrid.RowCount - 1, Opt.StartRow + ProbeRows);

  // 1) Heurística por cabecera
  if Opt.HasHeader and (AGrid.RowCount > 0) then
  begin
    for Col := 0 to AGrid.ColumnCount - 1 do
    begin
      HeaderText := AGrid.Cells[Col, 0];
      if MatchAny(HeaderText, HEAD_CODE)        then Bump(Col, crCode, 5);
      if MatchAny(HeaderText, HEAD_DESC)        then Bump(Col, crDescription, 5);
      if MatchAny(HeaderText, HEAD_PRICE)       then Bump(Col, crPrice, 6);
      if MatchAny(HeaderText, HEAD_CATEGORY)    then Bump(Col, crCategory, 4);
      if MatchAny(HeaderText, HEAD_SUBCATEGORY) then Bump(Col, crSubcategory, 4);
      if MatchAny(HeaderText, HEAD_BARCODE)     then Bump(Col, crBarcode, 7);
    end;
  end;

  // 2) Heurística por contenido
  for Col := 0 to AGrid.ColumnCount - 1 do
  begin
    var priceHits, eanHits, textLongHits, shortCodeHits: Integer;
    var distinct := TDictionary<string, Byte>.Create;
    try
      priceHits := 0; eanHits := 0; textLongHits := 0; shortCodeHits := 0;

      for Row := Opt.StartRow to RowEnd do
      begin
        if (Row < 0) or (Row >= AGrid.RowCount) then Continue;

        Cell := AGrid.Cells[Col, Row].Trim;
        if Cell = '' then Continue;

        // Precio
        var v := ToFloatDotDecimal(Cell);
        if (v > 0) then Inc(priceHits);

        // Barras
        if GuessIsEANLike(Cell) then Inc(eanHits);

        // Descripción vs Código
        if Cell.Contains(' ') or (Cell.Length >= 15) then Inc(textLongHits);
        if (Cell.Length in [3..12]) and TRegEx.IsMatch(Cell, '^[A-Za-z0-9\-\_/]+$') then Inc(shortCodeHits);

        // Cardinalidad
        if not distinct.ContainsKey(Cell.ToLower) then distinct.Add(Cell.ToLower, 1);
      end;

      if priceHits > 0 then Bump(Col, crPrice, priceHits);
      if eanHits   > 0 then Bump(Col, crBarcode, eanHits * 2);
      if textLongHits > shortCodeHits then
        Bump(Col, crDescription, textLongHits div 3)
      else
        Bump(Col, crCode, shortCodeHits div 2);

      if distinct.Count > 1 then
      begin
        if distinct.Count < 30 then Bump(Col, crCategory, 2);
        if distinct.Count < 15 then Bump(Col, crSubcategory, 2);
      end;
    finally
      distinct.Free;
    end;
  end;

  // 3) Elegir mejor rol por columna, evitando duplicados
  Used := TDictionary<TColumnRole, Boolean>.Create;
  try
    for Col := 0 to AGrid.ColumnCount - 1 do
    begin
      R := BestRoleForCol(Col);
      if (R <> crUnknown) and (not Used.ContainsKey(R)) then
      begin
        Map.Add(R, Col);
        Used.Add(R, True);
      end;
    end;
  finally
    Used.Free;
  end;
end;

{ === Importar a CDS === }

procedure EnsureField(CDS: TClientDataSet; const FieldName, FieldTypeDef: string);
begin
  if CDS.FieldDefs.IndexOf(FieldName) < 0 then
  begin
    if SameText(FieldTypeDef, 'string') then
      CDS.FieldDefs.Add(FieldName, ftString, 250)
    else if SameText(FieldTypeDef, 'float') then
      CDS.FieldDefs.Add(FieldName, ftFloat)
    else
      CDS.FieldDefs.Add(FieldName, ftString, 200);
  end;
end;

procedure ImportGridToCDS_FNC(AGrid: TTMSFNCGrid; const Opt: TImportOptions; const Map: TColumnMap; CDS: TClientDataSet);

  function ColOf(R: TColumnRole): Integer;
  var v: Integer;
  begin
    if Assigned(Map) and Map.TryGetValue(R, v) then Result := v else Result := -1;
  end;

  function GetCell(Col, Row: Integer): string;
  begin
    if (Col >= 0) and (Col < AGrid.ColumnCount) and (Row >= 0) and (Row < AGrid.RowCount) then
      Result := AGrid.Cells[Col, Row].Trim
    else
      Result := '';
  end;

var
  r: Integer;
  cCode, cDesc, cPrice, cCat, cSub, cEAN: Integer;
begin
  cCode  := ColOf(crCode);
  cDesc  := ColOf(crDescription);
  cPrice := ColOf(crPrice);
  cCat   := ColOf(crCategory);
  cSub   := ColOf(crSubcategory);
  cEAN   := ColOf(crBarcode);

  CDS.DisableControls;
  try
    CDS.Close;
    CDS.FieldDefs.Clear;
    EnsureField(CDS, 'CODIGO',      'string');
    EnsureField(CDS, 'DESCRIPCION', 'string');
    EnsureField(CDS, 'PRECIO',      'float');
    EnsureField(CDS, 'RUBRO',       'string');
    EnsureField(CDS, 'SUBRUBRO',    'string');
    EnsureField(CDS, 'COD_BARRAS',  'string');
    CDS.CreateDataSet;

    for r := Opt.StartRow to AGrid.RowCount - 1 do
    begin
      if (GetCell(cCode, r) = '') and (GetCell(cDesc, r) = '') then
        Continue;

      CDS.Append;
      CDS.FieldByName('CODIGO').AsString      := GetCell(cCode, r);
      CDS.FieldByName('DESCRIPCION').AsString := GetCell(cDesc, r);
      CDS.FieldByName('PRECIO').AsFloat       := ToFloatDotDecimal(GetCell(cPrice, r));
      CDS.FieldByName('RUBRO').AsString       := GetCell(cCat, r);
      CDS.FieldByName('SUBRUBRO').AsString    := GetCell(cSub, r);
      CDS.FieldByName('COD_BARRAS').AsString  := GetCell(cEAN, r);
      CDS.Post;
    end;
  finally
    CDS.EnableControls;
  end;
end;

{ === Diálogo de mapeo (dinámico) === }

type
  TMapDlg = class(TForm)
  private
    FGridPreview: TTMSFNCGrid;
    PnlCombos: TPanel;
    PnlBtns: TPanel;
    BtnOK: TButton;
    BtnCancel: TButton;
    FCombos: TObjectList<TComboBox>;
    FRoles: TArray<TColumnRole>;
    FMapIn: TColumnMap;
    FMapOut: TColumnMap;
    procedure OKClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
  public
    constructor CreateFor(AGrid: TTMSFNCGrid; const MapIn: TColumnMap); reintroduce;
    destructor Destroy; override;
    function Execute(var MapOut: TColumnMap): Boolean;
  end;

constructor TMapDlg.CreateFor(AGrid: TTMSFNCGrid; const MapIn: TColumnMap);
var
  i: Integer;
  Lbl: TLabel;
  Cb: TComboBox;
  Role: TColumnRole;
  y: Integer;
begin
  inherited Create(nil);
  Caption := 'Mapeo de columnas';
  Width := 1000;
  Height := 600;
  Position := poScreenCenter;

  FMapIn := MapIn;
  FCombos := TObjectList<TComboBox>.Create(True);
  FRoles := [crCode, crDescription, crPrice, crCategory, crSubcategory, crBarcode];

  // Preview grid
  FGridPreview := TTMSFNCGrid.Create(Self);
  FGridPreview.Parent := Self;
  FGridPreview.Align := alClient;
  // Deshabilitar resize de columnas/filas en preview
  FGridPreview.Options.Mouse.ColumnSizing := False;
  FGridPreview.Options.Mouse.RowSizing := False;

  // Copiar primeras filas/columnas
  FGridPreview.ColumnCount := AGrid.ColumnCount;
  FGridPreview.RowCount := Min(AGrid.RowCount, 10);
  for i := 0 to AGrid.ColumnCount-1 do
    FGridPreview.Cells[i,0] := AGrid.Cells[i,0];
  for var r := 1 to FGridPreview.RowCount-1 do
    for var c := 0 to FGridPreview.ColumnCount-1 do
      FGridPreview.Cells[c,r] := AGrid.Cells[c,r];

  // Panel de combos
  PnlCombos := TPanel.Create(Self);
  PnlCombos.Parent := Self;
  PnlCombos.Align := alBottom;
  PnlCombos.Height := 220;
  PnlCombos.BevelOuter := bvNone;

  y := 8;
  for Role in FRoles do
  begin
    Lbl := TLabel.Create(Self);
    Lbl.Parent := PnlCombos;
    Lbl.Left := 12;
    Lbl.Top := y+6;
    Lbl.Caption := RoleName(Role);

    Cb := TComboBox.Create(Self);
    Cb.Parent := PnlCombos;
    Cb.Left := 140;
    Cb.Top := y;
    Cb.Width := 820;
    Cb.Style := csDropDownList;
    Cb.Items.Add('[Sin columna]');
    for i := 0 to AGrid.ColumnCount-1 do
      Cb.Items.Add(Format('%d - %s', [i, AGrid.Cells[i,0]]));

    var colIdx: Integer;
    if (Assigned(FMapIn)) and FMapIn.TryGetValue(Role, colIdx) then
      Cb.ItemIndex := colIdx + 1
    else
      Cb.ItemIndex := 0;

    FCombos.Add(Cb);
    Inc(y, 36);
  end;

  // Panel botones
  PnlBtns := TPanel.Create(Self);
  PnlBtns.Parent := Self;
  PnlBtns.Align := alBottom;
  PnlBtns.Height := 48;
  PnlBtns.BevelOuter := bvNone;

  BtnOK := TButton.Create(Self);
  BtnOK.Parent := PnlBtns;
  BtnOK.Caption := 'Aceptar';
  BtnOK.Left := Width - 220;
  BtnOK.Top := 8;
  BtnOK.Anchors := [akRight, akTop];
  BtnOK.OnClick := OKClick;

  BtnCancel := TButton.Create(Self);
  BtnCancel.Parent := PnlBtns;
  BtnCancel.Caption := 'Cancelar';
  BtnCancel.Left := Width - 330;
  BtnCancel.Top := 8;
  BtnCancel.Anchors := [akRight, akTop];
  BtnCancel.OnClick := CancelClick;
end;

destructor TMapDlg.Destroy;
begin
  FCombos.Free;
  inherited;
end;

procedure TMapDlg.OKClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TMapDlg.CancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

function TMapDlg.Execute(var MapOut: TColumnMap): Boolean;
var
  i: Integer;
  Role: TColumnRole;
  ColSel: Integer;
  UsedCols: TDictionary<Integer, Boolean>;
begin
  Result := (ShowModal = mrOk);
  if not Result then Exit;

  UsedCols := TDictionary<Integer, Boolean>.Create;
  try
    MapOut := TColumnMap.Create;
    for i := 0 to High(FRoles) do
    begin
      Role := FRoles[i];
      ColSel := FCombos[i].ItemIndex - 1; // -1: [Sin columna]
      if ColSel >= 0 then
      begin
        if UsedCols.ContainsKey(ColSel) then
          raise Exception.CreateFmt('La columna %d está asignada a más de un rol.', [ColSel]);
        MapOut.Add(Role, ColSel);
        UsedCols.Add(ColSel, True);
      end;
    end;
    FMapOut := MapOut;
  finally
    UsedCols.Free;
  end;
end;

function ShowMappingDialogFNC(AGrid: TTMSFNCGrid; var Map: TColumnMap): Boolean;
var
  D: TMapDlg;
  NewMap: TColumnMap;
begin
  D := TMapDlg.CreateFor(AGrid, Map);
  try
    Result := D.Execute(NewMap);
    if Result then
    begin
      if Assigned(Map) then Map.Free;
      Map := NewMap;
    end;
  finally
    D.Free;
  end;
end;

{ === Persistencia INI === }

const
  CRoleKey: array[TColumnRole] of string = (
    'Unknown','Code','Description','Price','Category','Subcategory','Barcode'
  );

procedure SaveMappingToINI(const Opt: TImportOptions; const Map: TColumnMap);
var
  INI: TIniFile;
  R: TColumnRole;
  v: Integer;
  path: string;
begin
  if Opt.ProfileName = '' then Exit;
  path := Opt.INIPath;
  if path = '' then
    path := IncludeTrailingPathDelimiter(TPath.GetHomePath) + 'PriceImportMap.ini';

  INI := TIniFile.Create(path);
  try
    for R := Low(TColumnRole) to High(TColumnRole) do
      if (R <> crUnknown) and Map.TryGetValue(R, v) then
        INI.WriteInteger(Opt.ProfileName, CRoleKey[R], v);
  finally
    INI.Free;
  end;
end;

function LoadMappingFromINI(const Opt: TImportOptions; out Map: TColumnMap): Boolean;
var
  INI: TIniFile;
  R: TColumnRole;
  v: Integer;
  path: string;
  any: Boolean;
begin
  Result := False;
  Map := TColumnMap.Create;

  if Opt.ProfileName = '' then Exit;

  path := Opt.INIPath;
  if path = '' then
    path := IncludeTrailingPathDelimiter(TPath.GetHomePath) + 'PriceImportMap.ini';

  if not FileExists(path) then Exit;

  INI := TIniFile.Create(path);
  try
    any := False;
    for R := Low(TColumnRole) to High(TColumnRole) do
    begin
      if R = crUnknown then Continue;
      v := INI.ReadInteger(Opt.ProfileName, CRoleKey[R], -1);
      if v >= 0 then
      begin
        Map.Add(R, v);
        any := True;
      end;
    end;
    Result := any;
  finally
    INI.Free;
  end;
end;

end.

