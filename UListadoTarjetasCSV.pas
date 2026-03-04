unit UListadoTarjetasCSV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, System.Rtti,

  VCL.TMSFNCDataGrid, Vcl.ExtCtrls, AdvOfficeButtons, AdvGlowButton, AdvUtil,
  Vcl.Grids, AdvObj, BaseGrid, AdvGrid, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls,System.StrUtils, System.Generics.Collections, Data.DB,
  Vcl.DBGrids,DBClient, Vcl.Buttons;

 type
  TLoteResumen = record
    FechaPres      :string;
    MontoBruto     : Double;
    BrutoSinPropina: Double;
    Propina        : Double;
    ArancelesCostos: Double;
    IVAComercios   : Double;
    RetIIBB        : Double;
    RetAFAM        : Double;
    ImporteNetoOriginal: Double;
    DescFinanc     : Double;
    IVA_Financ     : Double;
    NetoFinal      : Double;
  end;

  type
  TOnAplicarMovimiento =
  procedure(
    const IDMov: Integer;
    const Importe: Double;
    const Fecha: TDateTime;
    const Cupon: Variant;
    const Cuotas: Integer
  ) of object;

  type
  TFormLoteLiquidacion = class(TForm)
    pnCab: TPanel;
    pnPie: TPanel;
    pnBase: TPanel;
    AdvGlowButton1: TAdvGlowButton;
    OpenDialog1: TOpenDialog;
    pnAgrupado: TPanel;
    Splitter1: TSplitter;
    pnMovimientos: TPanel;
    ActionList1: TActionList;
    CargarExcel: TAction;
    Agrupar: TAction;
    AdvGlowButton2: TAdvGlowButton;
    lbDestinoRecord: TLabel;
    lbOrigenRecord: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    chFiltros: TAdvOfficeCheckBox;
    btAgruparDos: TAdvGlowButton;
    Agrupar2: TAction;
    pnInform: TPanel;
    Splitter2: TSplitter;
    advgMovimientosLotes: TAdvStringGrid;
    advgLotesTC: TAdvStringGrid;
    DBGrid1: TDBGrid;
    DSTarjetas: TDataSource;
    pnCentro: TPanel;
    SpeedButton1: TSpeedButton;
    Conciliar: TAction;
    procedure CargarExcelExecute(Sender: TObject);
    procedure AgruparExecute(Sender: TObject);
    procedure advgLotesTCGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TAsgVAlignment);
    procedure FormDestroy(Sender: TObject);
    procedure chFiltrosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btAgruparDosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ConciliarExecute(Sender: TObject);
  private
    FCDSDatosTarjetas   : TClientDataSet;
    procedure CargarExcelEnGrid(Grid: TAdvStringGrid; const FileName: string);
    procedure AgruparMovimientosPorLoteYMarca(GridOrigen,
      GridDestino: TAdvStringGrid);
    function GetColIndex(Grid: TAdvStringGrid; const ColName: string): Integer;
    { Private declarations }
  public
     { Public declarations }
    OnAplicarMovimiento: TOnAplicarMovimiento;
    procedure ProcesarFilaDeExcel(IDMov: Integer; Importe: Double; Fecha: TDateTime; Cupon: Variant; Cuotas: Integer);
  published
    property CDSDatosTarjetas: TClientDataSet read FCDSDatosTarjetas write FCDSDatosTarjetas;
  end;


var
  FormLoteLiquidacion: TFormLoteLiquidacion;

implementation

uses ULiquidacionTC;

procedure AgruparMovimientosPorComercioTarjetaYLote(advgMovimientosLotes, advgLotesTC: TAdvStringGrid);
var
  i, j: Integer;
  CodigoComercio, Tarjeta, Lote, Key,FechaPres: string;
  LoteResumen: TLoteResumen;
  Dict: TDictionary<string, TLoteResumen>;
  pair: TPair<string, TLoteResumen>;

  function SafeFloat(S: string): Double;
  begin
    Result := StrToFloatDef(StringReplace(S, ',', '.', [rfReplaceAll]), 0);
  end;

begin
  Dict := TDictionary<string, TLoteResumen>.Create;
  try
    i := 1;
    while i < advgMovimientosLotes.RowCount - 1 do
    begin
      // Detecta encabezado de subtabla por "Terminal" en columna 1
      if SameText(advgMovimientosLotes.Cells[1, i], 'Terminal') then
      begin
        CodigoComercio := advgMovimientosLotes.Cells[0, i - 1];  // Código de comercio
        Tarjeta        := advgMovimientosLotes.Cells[1, i - 1];  // Tipo/Tarjeta
        fechaPres      := advgMovimientosLotes.Cells[3, i - 1];  // Tipo/Tarjeta
        Inc(i); // Salta encabezado de subtabla

        // Mientras haya datos (terminal tiene algo, pero cod. comercio está vacío)
        while (i < advgMovimientosLotes.RowCount) and
              (Trim(advgMovimientosLotes.Cells[0, i]) = '') and
              (Trim(advgMovimientosLotes.Cells[1, i]) <> '') do
        begin
          Lote := advgMovimientosLotes.Cells[3, i]; // Lote está en columna 3
          Key  := CodigoComercio + '|' + Tarjeta + '|' + Lote;

          if not Dict.TryGetValue(Key, LoteResumen) then
            begin
              FillChar(LoteResumen, SizeOf(LoteResumen), 0);
              LoteResumen.FechaPres:=FechaPres;
            end
          else
            if (LoteResumen.FechaPres = '') and (FechaPres <> '') then
              LoteResumen.FechaPres := FechaPres;


          LoteResumen.MontoBruto         := LoteResumen.MontoBruto         + SafeFloat(advgMovimientosLotes.Cells[8, i]);
          LoteResumen.BrutoSinPropina    := LoteResumen.BrutoSinPropina    + SafeFloat(advgMovimientosLotes.Cells[9, i]);
          LoteResumen.Propina            := LoteResumen.Propina            + SafeFloat(advgMovimientosLotes.Cells[10, i]);
          LoteResumen.ArancelesCostos    := LoteResumen.ArancelesCostos    + SafeFloat(advgMovimientosLotes.Cells[11, i]);
          LoteResumen.IVAComercios       := LoteResumen.IVAComercios       + SafeFloat(advgMovimientosLotes.Cells[12, i]);
          LoteResumen.RetIIBB            := LoteResumen.RetIIBB            + SafeFloat(advgMovimientosLotes.Cells[13, i]);
          LoteResumen.RetAFAM            := LoteResumen.RetAFAM            + SafeFloat(advgMovimientosLotes.Cells[14, i]);
          LoteResumen.ImporteNetoOriginal:= LoteResumen.ImporteNetoOriginal+ SafeFloat(advgMovimientosLotes.Cells[15, i]);
          LoteResumen.DescFinanc         := LoteResumen.DescFinanc         + SafeFloat(advgMovimientosLotes.Cells[16, i]);
          LoteResumen.IVA_Financ         := LoteResumen.IVA_Financ         + SafeFloat(advgMovimientosLotes.Cells[17, i]);
          LoteResumen.NetoFinal          := LoteResumen.NetoFinal          + SafeFloat(advgMovimientosLotes.Cells[18, i]);

          Dict.AddOrSetValue(Key, LoteResumen);
          Inc(i);
        end;
      end
      else
        Inc(i);
    end;

    // Mostrar resultados
    advgLotesTC.Clear;
    advgLotesTC.ColCount := 15;
    advgLotesTC.RowCount := 1;
    advgLotesTC.Cells[0,0]  := 'Cod. Comercio';
    advgLotesTC.Cells[1,0]  := 'Tarjeta';
    advgLotesTC.Cells[2,0]  := 'Lote';
    advgLotesTC.Cells[3,0]  := 'Fecha';
    advgLotesTC.Cells[4,0]  := 'Monto Bruto';
    advgLotesTC.Cells[5,0]  := 'Bruto s/Propina';
    advgLotesTC.Cells[6,0]  := 'Propina';
    advgLotesTC.Cells[7,0]  := 'Aranceles';
    advgLotesTC.Cells[8,0]  := 'IVA Comercios';
    advgLotesTC.Cells[9,0]  := 'Ret IIBB';
    advgLotesTC.Cells[10,0] := 'Ret AFAM';
    advgLotesTC.Cells[11,0] := 'Importe Original';
    advgLotesTC.Cells[12,0] := 'Desc. Financ.';
    advgLotesTC.Cells[13,0] := 'IVA Financ.';
    advgLotesTC.Cells[14,0] := 'Neto Final';

    j := 1;
    for pair in Dict do
    begin
      var partes := pair.Key.Split(['|']);
      advgLotesTC.RowCount := j + 1;
      advgLotesTC.Cells[0, j]  := partes[0]; // Cod Comercio
      advgLotesTC.Cells[1, j]  := partes[1]; // Tarjeta
      advgLotesTC.Cells[2, j]  := partes[2]; // Lote
      advgLotesTC.Cells[3, j]  := pair.Value.FechaPres; // Fecha

      advgLotesTC.Cells[4, j]  := FormatFloat(',0.00', pair.Value.MontoBruto);
      advgLotesTC.Cells[5, j]  := FormatFloat(',0.00', pair.Value.BrutoSinPropina);
      advgLotesTC.Cells[6, j]  := FormatFloat(',0.00', pair.Value.Propina);
      advgLotesTC.Cells[7, j]  := FormatFloat(',0.00', pair.Value.ArancelesCostos);
      advgLotesTC.Cells[8, j]  := FormatFloat(',0.00', pair.Value.IVAComercios);
      advgLotesTC.Cells[9, j]  := FormatFloat(',0.00', pair.Value.RetIIBB);
      advgLotesTC.Cells[10, j] := FormatFloat(',0.00', pair.Value.RetAFAM);
      advgLotesTC.Cells[11, j] := FormatFloat(',0.00', pair.Value.ImporteNetoOriginal);
      advgLotesTC.Cells[12, j] := FormatFloat(',0.00', pair.Value.DescFinanc);
      advgLotesTC.Cells[13, j] := FormatFloat(',0.00', pair.Value.IVA_Financ);
      advgLotesTC.Cells[14, j] := FormatFloat(',0.00', pair.Value.NetoFinal);
      Inc(j);
    end;
  finally
    Dict.Free;
  end;
end;

{$R *.dfm}

function TFormLoteLiquidacion.GetColIndex(Grid: TAdvStringGrid; const ColName: string): Integer;
var
  i: Integer;
begin
  for i := 0 to Grid.ColCount - 1 do
    if Trim(Grid.Cells[i, 0]) = Trim(ColName) then
      Exit(i);
  ShowMessage('No se encontró la columna: ' + ColName);
  Result := -1;
end;


procedure TFormLoteLiquidacion.ProcesarFilaDeExcel(IDMov: Integer;
  Importe: Double; Fecha: TDateTime; Cupon: Variant; Cuotas: Integer);
begin
  if Assigned(OnAplicarMovimiento) then
    OnAplicarMovimiento(IDMov, Importe, Fecha, Cupon, Cuotas)
  else
    ShowMessage('No se asignó el manejador de movimiento.');
end;

procedure TFormLoteLiquidacion.CargarExcelEnGrid(Grid: TAdvStringGrid; const FileName: string);
begin
  if LowerCase(ExtractFileExt(FileName)) = '.xlsx' then
    Grid.LoadFromXLS(FileName)
  else
    Grid.LoadFromXLS(FileName);

  lbOrigenRecord.Caption:= IntToStr(Grid.RowCount-1);

end;

procedure TFormLoteLiquidacion.CargarExcelExecute(Sender: TObject);
begin
   if OpenDialog1.Execute then
    CargarExcelEnGrid( advgMovimientosLotes, OpenDialog1.FileName);
end;


procedure TFormLoteLiquidacion.chFiltrosClick(Sender: TObject);
begin
  advgLotesTC.FilterDropDownAuto:=chFiltros.Checked;
  if chFiltros.Checked=false then
    advgLotesTC.RemoveAllFilters;
end;



procedure TFormLoteLiquidacion.ConciliarExecute(Sender: TObject);
var row:Integer;
  Lote    : string;
  Fecha:string;
  Importe : Extended;
begin
  for Row := 1 to advgLotesTC.RowCount-1 do
    begin
      Lote := AnsiRightStr('00000'+advgLotesTC.Cells[2,row],5);
      Fecha:= advgLotesTC.Cells[3,row];

      if CDSDatosTarjetas.Locate('NRO_LOTE;FECHA',VarArrayOf([Lote,Fecha]),[]) Then
        begin
          importe := StrToFloat(ReplaceStr(advgLotesTC.Cells[4,row],',',''));
          if (Importe> CDSDatosTarjetas.FieldByName('IMPORTE').AsFloat) then
            OnAplicarMovimiento(CDSDatosTarjetas.FieldByName('ID_MOV_TC').AsInteger,
                                CDSDatosTarjetas.FieldByName('IMPORTE').AsFloat,
                                CDSDatosTarjetas.FieldByName('FECHA').AsDateTime,
                                CDSDatosTarjetas.FieldByName('NRO_CUPON').Value,
                                CDSDatosTarjetas.FieldByName('CAN_CUOTAS').Value);
        end;
    end;
end;

procedure TFormLoteLiquidacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormLoteLiquidacion.FormCreate(Sender: TObject);
begin
  DSTarjetas.DataSet:=FCDSDatosTarjetas;
end;

procedure TFormLoteLiquidacion.FormDestroy(Sender: TObject);
begin
  FormLoteLiquidacion:=nil;
end;

procedure TFormLoteLiquidacion.FormShow(Sender: TObject);
begin
  DSTarjetas.DataSet:=FCDSDatosTarjetas;
end;

procedure TFormLoteLiquidacion.advgLotesTCGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TAsgVAlignment);
begin
  if ACol>=3 then
    HAlign:=taRightJustify
  else
    if ((ACol=1) or (ACol=2)) then
      HAlign:=taCenter;
end;

procedure TFormLoteLiquidacion.AgruparExecute(Sender: TObject);
begin
  AgruparMovimientosPorLoteYMarca(advgMovimientosLotes,advgLotesTC);
  lbDestinoRecord.Caption:= IntToStr(advgLotesTC.RowCount-1);
end;

procedure TFormLoteLiquidacion.AgruparMovimientosPorLoteYMarca(GridOrigen, GridDestino: TAdvStringGrid);
var
  i, idx: Integer;
  Marca, Lote, LoteOrig, TipoMov: string;
  Importe: Double;
  Key: string;
  Tabla: TStringList;
  idxMarca, idxLote, idxLoteOrig, idxTipo, idxImporte: Integer;
begin
  idxMarca     := GetColIndex(GridOrigen, 'Marca');
  idxLote      := GetColIndex(GridOrigen, 'Nro.Liquidación');
  idxLoteOrig  := GetColIndex(GridOrigen, 'Lote Orig.');
  idxTipo      := GetColIndex(GridOrigen, 'Tipo de mov.');
  idxImporte   := GetColIndex(GridOrigen, 'Monto Bruto');

  if (idxMarca = -1) or (idxLote = -1) or (idxLoteOrig = -1) or (idxTipo = -1) or (idxImporte = -1) then
  begin
    ShowMessage('Faltan columnas requeridas para agrupar.');
    Exit;
  end;

  Tabla := TStringList.Create;
  try
    Tabla.Sorted := False;
    Tabla.Duplicates := dupIgnore;

    for i := 1 to GridOrigen.RowCount - 1 do
    begin
      TipoMov := Trim(GridOrigen.Cells[idxTipo, i]);
      if not SameText(TipoMov, 'Cupón') then
        Continue;

      Marca     := Trim(GridOrigen.Cells[idxMarca, i]);
      Lote      := Trim(GridOrigen.Cells[idxLote, i]);
      LoteOrig  := Trim(GridOrigen.Cells[idxLoteOrig, i]);
      Importe   := StrToFloatDef(StringReplace(GridOrigen.Cells[idxImporte, i], ',', '.', [rfReplaceAll]), 0);

      Key := Marca + '|' + Lote + '|' + LoteOrig;
      idx := Tabla.IndexOfName(Key);
      if idx = -1 then
        Tabla.Add(Key + '=' + FloatToStr(Importe))
      else
      begin
        Importe := Importe + StrToFloatDef(Tabla.ValueFromIndex[idx], 0);
        Tabla.Strings[idx] := Key + '=' + FloatToStr(Importe);
      end;
    end;

    // Cargar en la grilla destino
    GridDestino.RowCount := 2;
    GridDestino.Cells[0, 0] := 'Marca';
    GridDestino.Cells[1, 0] := 'Nro.Liquidación';
    GridDestino.Cells[2, 0] := 'Lote Orig.';
    GridDestino.Cells[3, 0] := 'Total';

    for i := 0 to Tabla.Count - 1 do
    begin
      Marca    := Copy(Tabla.Names[i], 1, Pos('|', Tabla.Names[i]) - 1);
      Lote     := Copy(Tabla.Names[i], Pos('|', Tabla.Names[i]) + 1, PosEx('|', Tabla.Names[i], Pos('|', Tabla.Names[i]) + 1) - Pos('|', Tabla.Names[i]) - 1);
      LoteOrig := Copy(Tabla.Names[i], LastDelimiter('|', Tabla.Names[i]) + 1, MaxInt);

      GridDestino.Cells[0, i + 1] := Marca;
      GridDestino.Cells[1, i + 1] := Lote;
      GridDestino.Cells[2, i + 1] := LoteOrig;
      GridDestino.Cells[3, i + 1] := Tabla.ValueFromIndex[i];
      GridDestino.RowCount := GridDestino.RowCount + 1;
    end;
  finally
    Tabla.Free;
  end;
end;

procedure TFormLoteLiquidacion.btAgruparDosClick(Sender: TObject);
begin
  AgruparMovimientosPorComercioTarjetaYLote(advgMovimientosLotes,advgLotesTC);
end;

end.
