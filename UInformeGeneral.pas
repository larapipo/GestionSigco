unit UInformeGeneral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, DB, Provider, DBClient, JvExControls, JvDBLookup,
  StdCtrls, Spin, Grids, AdvObj, BaseGrid, AdvGrid, ExtCtrls, Buttons,DateUtils,
  DBGrids, ComCtrls, tmsAdvGridExcel,Math, JvGradient,VirtualUI_SDK, AdvUtil,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,StrUtils,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  JvFormPlacement, JvComponentBase, JvAppStorage, JvAppIniStorage,
  VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCChart, VCL.TMSFNCChartEditor;

type
  TFormInformeGeneral = class(TForm)
    Panel1: TPanel;
    CDSSucursales: TClientDataSet;
    CDSSucursalesCODIGO: TIntegerField;
    CDSSucursalesDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSSucursales: TDataSource;
    CDSVentas: TClientDataSet;
    CDSVentasNOMBRESUCURSAL: TStringField;
    CDSVentasMES: TIntegerField;
    DSPVentas: TDataSetProvider;
    DSPSucursales: TDataSetProvider;
    Panel2: TPanel;
    Label1: TLabel;
    Desde: TSpinEdit;
    PageControl1: TPageControl;
    tsAnio1: TTabSheet;
    sgVentas: TAdvStringGrid;
    tsAnio2: TTabSheet;
    DSPGastosDetE: TDataSetProvider;
    CDSGastosDetE: TClientDataSet;
    TabSheet3: TTabSheet;
    sgTotal: TAdvStringGrid;
    DSPVentasGral: TDataSetProvider;
    CDSVentaGral: TClientDataSet;
    DSPGastosGrlaE: TDataSetProvider;
    CDSGastoGralE: TClientDataSet;
    DSPGastosDetI: TDataSetProvider;
    CDSGastosDetI: TClientDataSet;
    DSPGastosGralI: TDataSetProvider;
    CDSGastoGralI: TClientDataSet;
    sbEstado: TStatusBar;
    CDSGastosDetESUCURSAL: TIntegerField;
    CDSGastosDetENOMBRESUCURSAL: TStringField;
    CDSGastosDetEMES: TIntegerField;
    CDSGastosDetISUCURSAL: TIntegerField;
    CDSGastosDetIMES: TIntegerField;
    CDSVentasSUCURSAL: TIntegerField;
    CDSGastosDetIDETALLERUBRO: TStringField;
    CDSGastosDetINOMBRESUCURSAL: TStringField;
    AdvGridExcelIO1: TAdvGridExcelIO;
    sgVentasOld: TAdvStringGrid;
    Label3: TLabel;
    Hasta: TSpinEdit;
    Button2: TButton;
    Button1: TButton;
    Label2: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    Panel3: TPanel;
    btGeneral: TButton;
    Label4: TLabel;
    btBuscarGeneral: TBitBtn;
    Panel4: TPanel;
    btAnio: TButton;
    btBuscarVtas: TBitBtn;
    Panel5: TPanel;
    btAnio2: TButton;
    QVentasGral: TFDQuery;
    QGastosGrlaE: TFDQuery;
    QGastosGraI: TFDQuery;
    QSucursales: TFDQuery;
    QVentas: TFDQuery;
    CDSVentasTOTAL_VTAS_CTDO: TFloatField;
    CDSVentasTOTAL_VTAS_CC: TFloatField;
    CDSVentasTOTAL_VTAS_NCREDITO: TFloatField;
    CDSVentasTOTAL_VTAS_CTDO_NCREDITO: TFloatField;
    CDSVentasTOTAL_ANULACIONES: TFloatField;
    CDSVentasTOTAL_VTAS_NDEBITO: TFloatField;
    CDSVentasTOTAL_VTAS: TFloatField;
    CDSVentasTOTAL_COMPRAS: TFloatField;
    CDSVentasTOTAL_NC_COMPRAS: TFloatField;
    CDSVentasTOTAL_COMPRAS_CTDO: TFloatField;
    CDSVentasTOTAL_GRAL_COMPRAS: TFloatField;
    CDSVentasTOTAL_PAGOS: TFloatField;
    CDSVentasTOTAL_COBRANZAS: TFloatField;
    CDSVentasSALDO_CC_VTA: TFloatField;
    CDSVentasSALDO_CC_COMPRA: TFloatField;
    CDSVentasTOTAL_PERSONAL: TFloatField;
    QGastosDetE: TFDQuery;
    CDSGastosDetETOTAL_EGRESOS: TFloatField;
    QGastosDetI: TFDQuery;
    CDSGastosDetITOTAL_EGRESOS: TFloatField;
    QRubros: TFDQuery;
    FDQuery1: TFDQuery;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    JvFormStorage: TJvFormStorage;
    ProgressBar1: TProgressBar;
    QRubrosCOUNT: TIntegerField;
    CDSVentaGralSUCURSAL: TIntegerField;
    CDSVentaGralNOMBRESUCURSAL: TStringField;
    CDSVentaGralMES: TIntegerField;
    CDSVentaGralTOTAL_VTAS_CTDO: TFloatField;
    CDSVentaGralTOTAL_VTAS_CC: TFloatField;
    CDSVentaGralTOTAL_VTAS_NCREDITO: TFloatField;
    CDSVentaGralTOTAL_VTAS_CTDO_NCREDITO: TFloatField;
    CDSVentaGralTOTAL_ANULACIONES: TFloatField;
    CDSVentaGralTOTAL_VTAS_NDEBITO: TFloatField;
    CDSVentaGralTOTAL_VTAS: TFloatField;
    CDSVentaGralTOTAL_COMPRAS: TFloatField;
    CDSVentaGralTOTAL_COMPRAS_CTDO: TFloatField;
    CDSVentaGralTOTAL_NC_COMPRAS: TFloatField;
    CDSVentaGralTOTAL_GRAL_COMPRAS: TFloatField;
    CDSVentaGralTOTAL_PAGOS: TFloatField;
    CDSVentaGralTOTAL_COBRANZAS: TFloatField;
    CDSVentaGralTOTAL_PERSONAL: TFloatField;
    CDSVentaGralSALDO_CC_VTA: TFloatField;
    CDSVentaGralSALDO_CC_COMPRA: TFloatField;
    CDSGastoGralESUCURSAL: TIntegerField;
    CDSGastoGralENOMBRESUCURSAL: TStringField;
    CDSGastoGralEMES: TIntegerField;
    CDSGastoGralERUBRO: TStringField;
    CDSGastoGralEDETALLERUBRO: TStringField;
    CDSGastoGralETOTAL_EGRESOS: TFloatField;
    CDSGastoGralISUCURSAL: TIntegerField;
    CDSGastoGralINOMBRESUCURSAL: TStringField;
    CDSGastoGralIMES: TIntegerField;
    CDSGastoGralIRUBRO: TStringField;
    CDSGastoGralIDETALLERUBRO: TStringField;
    CDSGastoGralITOTAL_EGRESOS: TFloatField;
    tsGraficoVtas: TTabSheet;
    chaVentas: TTMSFNCChart;
    tsGastos: TTabSheet;
    chaGastos: TTMSFNCChart;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btBuscarVtasClick(Sender: TObject);
    procedure btBuscarGeneralClick(Sender: TObject);
    procedure DesdeChange(Sender: TObject);
    procedure sgTotalGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure Button1Click(Sender: TObject);
    procedure btGeneralClick(Sender: TObject);
    procedure btAnioClick(Sender: TObject);
    procedure btAnio2Click(Sender: TObject);
    procedure HastaChange(Sender: TObject);
    procedure HastaClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure chaGastosSerieSliceClick(Sender: TObject;
      APoint: TTMSFNCChartPoint);
  private
    { Private declarations }
  public
    { Public declarations }
    RowNro:Integer;
    Serie:TTMSFNCChartSerie;
    Point:TTMSFNCChartPoint;
    procedure ArmarGraficoVta(Periodo:String;Color:TTMSFNCGraphicsColor;VerValores:Boolean);
    procedure ArmarGraficoGastos(Periodo:String;Color:TTMSFNCGraphicsColor);

    procedure FormatearGrillaGeneral;
    procedure CargarVentasCompras(h:byte);
    procedure CargasGastosExcluidos(h:byte);
    procedure CargarGastosIncluidos(H:Byte);

  end;

var
  FormInformeGeneral: TFormInformeGeneral;

implementation

{$R *.dfm}
uses UDMain_FD, DMBuscadoresForm, UFiltroRubGastos, UFiltroComprobantesVenta;

procedure TFormInformeGeneral.ArmarGraficoVta(Periodo:String;Color:TTMSFNCGraphicsColor;VerValores:Boolean);
begin
  chaVentas.BeginUpdate;
  Serie                   := chaVentas.Series.Add;
  Serie.LegendText        := Periodo;
  Serie.Labels.Visible    := True;
  Serie.Mode              := smMathematical;
  Serie.ChartType         := ctBar;
  Serie.Stroke.Color      := Color;
  Serie.MinY              := 0;
  Serie.AutoYRange        := arCommonZeroBased;
  Serie.YValues.AutoUnits := True;
  serie.YValues.Positions :=[];    //(ypLeft, ypCenter, ypRight);
  serie.XValues.Positions :=[];    //(xpTop, xpCenter, xpBottom);


  if VerValores then
    begin
      serie.YValues.Positions :=[ypLeft];    //(ypLeft, ypCenter, ypRight);
      serie.XValues.Positions :=[xpBottom];    //(xpTop, xpCenter, xpBottom);
  end;


  Serie.MinX:=0;
  Serie.MaxX:=11;
  CDSVentaGral.First;
  while Not(CDSVentaGral.Eof) do
    begin
      point            := Serie.Points.Add;
      point.Color      := Color;
      point.YValue     := CDSVentaGralTOTAL_VTAS.AsFloat;
      Point.XValueText := FormatSettings.LongMonthNames[CDSVentaGralMES.Value];
      CDSVentaGral.Next;
    end;

  chaVentas.EndUpdate;
end;

procedure TFormInformeGeneral.ArmarGraficoGastos(Periodo:String;Color:TTMSFNCGraphicsColor);
var sucursal:integer;
mes,i:byte;
begin
  chaGastos.BeginUpdate;
  Serie                  := chaGastos.Series.Add;
  Serie.LegendText       := Periodo;
  Serie.Legend.Font.Size := 8;
  Serie.Legend.Visible   := true;

  Serie.Labels.Visible   := True;
  serie.Labels.Font.Size := 8;
  Serie.Mode             := smMathematical;
  Serie.ChartType        := ctPie;
  Serie.Stroke.Color     := Color;
  Serie.MinY             := 0;
  Serie.AutoYRange       := arCommonZeroBased;
  Serie.MinX             := 0;
  Serie.MaxX             := 11;
  CDSGastoGralI.First;
  while Not(CDSGastoGralI.Eof) do
    begin
      if CDSGastoGralIMES.Value=1 then
        begin
          point             := Serie.Points.Add;
          point.Color       := Random(3000000);
          point.YValue      := CDSGastoGralITOTAL_EGRESOS.AsFloat;
          Point.LegendText  := CDSGastoGralIDETALLERUBRO.Value;
          Point.DisplayName := CDSGastoGralIDETALLERUBRO.Value;
          Point.XValueText  := CDSGastoGralIDETALLERUBRO.Value;

        end;
      CDSGastoGralI.Next;
    end;

  chaGastos.EndUpdate;
end;


procedure TFormInformeGeneral.FormatearGrillaGeneral;
var i:Integer;
begin
  sbEstado.Panels[0].Text:='Armando Grilla...';
  ProgressBar1.Position:=0;
  Application.ProcessMessages;

  // sgTotal.FixedCols:=2;
  sgTotal.Clear;
  sgTotal.MergeCells(0,0,1,1);
  sgTotal.Colors[0,0]  :=clWhite;
  sgTotal.ColorsTo[0,0]:=clActiveCaption;

  for I := 2 to 24 do
    begin
      if (I mod 2) = 0 then
        begin
          sgTotal.MergeCells(I,0,2,1);

          sgTotal.Colors[I,0]  :=clWhite;
          sgTotal.ColorsTo[I,0]:=clInactiveCaption;

          sgTotal.Colors[I,1]  :=clInactiveCaption;
          sgTotal.ColorsTo[I,1]:=clWhite;

        end;
    end;

  for I := 2 to 25 do
    begin
      if ((I mod 2) = 0 ) then
        sgTotal.Cells[I,1]:= tsAnio1.Caption
      else
        sgTotal.Cells[I,1]:= tsAnio2.Caption
    end;


  sgTotal.Cells[ 2,0] :='Enero';
  sgTotal.Cells[ 4,0] :='Febrero';
  sgTotal.Cells[ 6,0] :='Marzo';
  sgTotal.Cells[ 8,0] :='Abril';
  sgTotal.Cells[10,0] :='Mayo';
  sgTotal.Cells[12,0] :='Junio';
  sgTotal.Cells[14,0] :='Julio';
  sgTotal.Cells[16,0] :='Agosto';
  sgTotal.Cells[18,0] :='Septiembre';
  sgTotal.Cells[20,0] :='Octubre';
  sgTotal.Cells[22,0] :='Noviembre';
  sgTotal.Cells[24,0] :='Diciembre';

  for I := 0 to sgTotal.ColCount - 1 do
    begin
      sgTotal.Alignments[I,0]:=taCenter;
      sgTotal.Alignments[I,1]:=taCenter;
      sgTotal.FontStyles[I,0]:=[fsBold];
      sgTotal.FontStyles[I,1]:=[fsBold];
    end;
  for I := 0 to sgTotal.rowCount - 1 do
    begin
      sgTotal.FontStyles[0,I]:=[fsBold];
      sgTotal.FontStyles[1,I]:=[fsBold];
    end;

  for I := 0 to sgTotal.RowCount - 1 do
    begin
      sgVentasOld.Alignments[0,I]:=taLeftJustify;
      sgVentasOld.Alignments[1,I]:=taLeftJustify;
    end;

end;

procedure TFormInformeGeneral.CargarVentasCompras(h:byte);
var i:Integer;
Mes:INteger;
Sucursal:Integer;
begin
  sgTotal.RowCount := (CDSVentaGral.FieldCount) + 2;

  CDSVentaGral.First;
  Sucursal:=CDSVentaGralSUCURSAL.Value;
  while Not(CDSVentaGral.Eof) do
    begin
      while (Sucursal=CDSVentaGralSUCURSAL.Value) and (not CDSVentaGral.Eof) do
        begin
          for Mes := 1 to 12 do
            begin
              for I := 2 to CDSVentaGral.FieldCount-1 do
                begin
                  if (I=2) then // es el titulo de la Sucursal....
                    sgTotal.Cells[0,RowNro]:=CDSVentaGral.Fields[I].Value
                  else
                    begin
                      sgTotal.Cells[1,RowNro]                          := CDSVentaGral.Fields[I].DisplayLabel;
                      sgTotal.Cells[(2*CDSVentaGralMES.Value)+H,RowNro]:= FormatFloat(',0.00;-,0.00;-',CDSVentaGral.Fields[I].Value);
                      RowNro:=RowNro+1;
                    end;
                  Application.ProcessMessages;
                end;
              RowNro:=RowNro+1;
              CDSVentaGral.Next;
              Application.ProcessMessages;
              RowNro:=RowNro-17;
            end;
        end;
      Sucursal := CDSVentaGralSUCURSAL.Value;
      RowNro   := RowNro+17;
    end;
end;


procedure TFormInformeGeneral.CargasGastosExcluidos(h:byte);
var I:Integer;
Mes:Integer;
Flag,RowAux:integer;
Celda :Extended;
CeldaStr,Cadena:String;
begin
  if CDSGastoGralE.RecordCount>0 then
    begin
      sgTotal.RowCount:= sgTotal.RowCount+Trunc(CDSGastoGralE.RecordCount/12) + 1;
      CDSGastoGralE.First;
      RowNro          := RowNro+1;
      RowAux          := 1;
      sgTotal.Cells[0,RowNro]:='Gastos Excluidos';
      Flag:=CDSGastoGralE.Fields[2].Value;

      while Not(CDSGastoGralE.Eof) do
        begin
          for Mes := 1 to 12 do
            begin
              for I := 4 to CDSGastoGralE.FieldCount-1 do
                begin
                  if i=4 Then
                    begin
                      Cadena:=LowerCase(CDSGastoGralE.Fields[I].Value);
                      Cadena:=ReplaceStr(Cadena,Cadena[1],AnsiUpperCase(Cadena[1]));
                      sgTotal.Cells[1,RowNro]  := Cadena;
                    end
                  else
                    begin
                      // sgTotal.Cells[1,RowNro]                      := CDSGastoGralE.Fields[I].DisplayLabel;
                      CeldaStr := sgTotal.Cells[(2*CDSGastoGralE.FieldByName('mes').Value)+h,RowNro];

                      if (CeldaStr='') or (CeldaStr='-') then CeldaStr:='0';

                      Celda:=StrToFloat(AnsiReplaceStr(CeldaStr,',',''));

                      sgTotal.Cells[2*CDSGastoGralE.FieldByName('mes').Value,RowNro]:= FormatFloat(',0.00;-,0.00;-',Celda+ CDSGastoGralE.Fields[I].Value);
                      RowNro:=RowNro+1;
                      Application.ProcessMessages;
                    end;
                end;
              CDSGastoGralE.Next;
              RowAux:=RowAux+1;
              if Flag<>CDSGastoGralE.Fields[2].Value then
                begin
                  Flag:=CDSGastoGralE.Fields[2].Value;
                  RowNro:=RowNro-RowAux+1;
                  RowAux:=1;
                end;
            end;
        end;
    end;
end;


procedure TFormInformeGeneral.chaGastosSerieSliceClick(Sender: TObject;
  APoint: TTMSFNCChartPoint);
begin
  ShowMessage(APoint.LegendText);
end;

procedure TFormInformeGeneral.CargarGastosIncluidos(H:Byte);
var I:Integer;
Mes:Integer;
Flag,RowAux:integer;
Celda:Extended;
CeldaStr,Cadena:String;
begin
  sgTotal.RowCount:= sgTotal.RowCount + Trunc(CDSGastoGralI.RecordCount/12) + 1;
  CDSGastoGralI.First;
  RowNro          := RowNro+1;
  RowAux          := 1;
  sgTotal.Cells[0,RowNro]:='Gastos Incluidos';
  Flag:=CDSGastoGralI.Fields[2].Value;

  while Not(CDSGastoGralI.Eof) do
    begin
      for Mes := 1 to 12 do
        begin
          for I := 4 to CDSGastoGralI.FieldCount-1 do
            begin
              if i=4 Then
                begin
                  Cadena:=LowerCase(CDSGastoGralI.Fields[I].Value);
                  Cadena:=ReplaceStr(Cadena,Cadena[1],AnsiUpperCase(Cadena[1]));
                  sgTotal.Cells[1,RowNro]  := Cadena;
                end
              else
                begin
                  // sgTotal.Cells[1,RowNro]                      := CDSGastoGralE.Fields[I].DisplayLabel;
                  CeldaStr := sgTotal.Cells[2*CDSGastoGralI.FieldByName('mes').Value,RowNro];

                  if (CeldaStr='') or (CeldaStr='-') then CeldaStr:='0';

                  Celda:=StrToFloat(AnsiReplaceStr(CeldaStr,',',''));

                  sgTotal.Cells[(2*CDSGastoGralI.FieldByName('mes').Value)+h,RowNro]:= FormatFloat(',0.00;-,0.00;-',Celda+ CDSGastoGralI.Fields[I].Value);
                  RowNro:=RowNro+1;
                  Application.ProcessMessages;
                end;
            end;
          CDSGastoGralI.Next;
          RowAux:=RowAux+1;
          if Flag<>CDSGastoGralI.Fields[2].Value then
            begin
              Flag:=CDSGastoGralI.Fields[2].Value;
              RowNro:=RowNro-RowAux+1;
              RowAux:=1;
            end;
        end;
    end;
end;


procedure TFormInformeGeneral.btBuscarGeneralClick(Sender: TObject);
var i,Puntero,H:Integer;
Hs:String;
begin
  Screen.Cursor           := crHourGlass;
  chaVentas.BeginUpdate;
  chaVentas.Clear;
  chaVentas.EndUpdate;

  chaGastos.BeginUpdate;
  chaGastos.Clear;
  chaGastos.EndUpdate;

  ProgressBar1.Max        := 6;
  ProgressBar1.Position   := 0;

  sbEstado.Panels[0].Text := 'Consultando Vtas generales...';
  ProgressBar1.Position   := ProgressBar1.Position+1;
  Application.ProcessMessages;

  CDSVentaGral.Close;
  CDSVentaGral.Params.ParamByName('Anio').Value:= Desde.Value;
  CDSVentaGral.Params.ParamByName('Suc').Value := dbcSucursal.KeyValue;//-1;
  CDSVentaGral.Open;

  sbEstado.Panels[0].Text := 'Consultando Egresos Excluidos...';
  ProgressBar1.Position   := ProgressBar1.Position+1;
  Application.ProcessMessages;

  CDSGastoGralE.Close;
  CDSGastoGralE.Params.ParamByName('Anio').Value:= Desde.Value;
  CDSGastoGralE.Params.ParamByName('Suc').Value := dbcSucursal.KeyValue;
  CDSGastoGralE.Open;

  sbEstado.Panels[0].Text := 'Consultando Egresos Incluidos...';
  ProgressBar1.Position   := ProgressBar1.Position+1;
  Application.ProcessMessages;

  CDSGastoGralI.Close;
  CDSGastoGralI.Params.ParamByName('Anio').Value:= Desde.Value;
  CDSGastoGralI.Params.ParamByName('Suc').Value := dbcSucursal.KeyValue;
  CDSGastoGralI.Open;

  FormatearGrillaGeneral;

  CDSVentaGral.First;
  CDSGastoGralE.First;
  CDSGastoGralI.First;

  h        := 1;
  RowNro   := 2;
  Puntero  := 1;

  CargarVentasCompras(0);
  CargarGastosIncluidos(0);
  CargasGastosExcluidos(0);

  ArmarGraficoVta('Ventas '+IntToStr(Desde.Value),gcBlue,True);
  ArmarGraficoGastos('Gastos'+IntToStr(Desde.Value),gcBlue);
//****************************************************************************//
//****************************************************************************//
//****************************************************************************//

  sbEstado.Panels[0].Text:='Consultando Datos Año Anterior...Generando Consulta';
  ProgressBar1.Position:=ProgressBar1.Position+1;
  Application.ProcessMessages;

  CDSVentaGral.Close;
  CDSVentaGral.Params.ParamByName('Anio').Value:= Hasta.Value;
  CDSVentaGral.Params.ParamByName('Suc').Value := dbcSucursal.KeyValue;
  CDSVentaGral.Open;

  sbEstado.Panels[0].Text:='Consultado Datos Año Anterior...Consultando Egresos';
  ProgressBar1.Position:=ProgressBar1.Position+1;
  Application.ProcessMessages;

  CDSGastoGralE.Close;
  CDSGastoGralE.Params.ParamByName('Anio').Value:= Hasta.Value;
  CDSGastoGralE.Params.ParamByName('Suc').Value := dbcSucursal.KeyValue;
  CDSGastoGralE.Open;

  sbEstado.Panels[0].Text:='Consultado Datos Año Anterior...Consultando Ingresos';
  ProgressBar1.Position:=ProgressBar1.Position+1;
  Application.ProcessMessages;

  CDSGastoGralI.Close;
  CDSGastoGralI.Params.ParamByName('Anio').Value:= Hasta.Value;
  CDSGastoGralI.Params.ParamByName('Suc').Value := dbcSucursal.KeyValue;
  CDSGastoGralI.Open;

  sbEstado.Panels[0].Text:='...';
  ProgressBar1.Position:=0;
  Application.ProcessMessages;

  h        := 1;
  RowNro   := 2;
  Puntero  := 1;

  CargarVentasCompras(1);
  CargarGastosIncluidos(1);
  CargasGastosExcluidos(1);

  ArmarGraficoVta('Ventas '+IntToStr(Hasta.Value),gcGreen,False);
  ArmarGraficoGastos('Gastos '+IntToStr(Hasta.Value),gcAqua);
  //  h:=2;
//  RowNro:=2;Puntero:=1;
//  CDSVentaGral.First;
//  while Not(CDSVentaGral.Eof) do
//    begin
//      for I := 2 to CDSVentaGral.FieldCount-1 do
//        begin
//          if (i=2) then
//            sgTotal.Cells[0,RowNro]:=CDSVentaGral.Fields[I].Value
//          else
//            begin
//              sgTotal.Cells[1,RowNro]  :=CDSVentaGral.Fields[I].DisplayLabel;
//              sgTotal.Cells[h+CDSVentaGralMES.Value,RowNro]:= FormatFloat(',0.00;-0.00;-',RoundTo(CDSVentaGral.Fields[I].Value,-2));
//              RowNro:=RowNro+1;
//              Application.ProcessMessages;
//            end;
//        end;
//      //--------------------------------------
//      // Listado de gastos Excluidos los de la tabla
//      //--------------------------------------
//      sgTotal.Cells[0,RowNro]:='Gastos Excluidos';
//      RowNro:=RowNro+1;
//
//      CDSGastoGralE.First;
//      for I := 1 to CDSGastoGralE.FieldCount-1 do
//        begin
//          if i=1 Then sgTotal.Cells[1,RowNro]  :=CDSGastoGralE.Fields[I].DisplayLabel
//          else
//            if i=2 then
//              begin
//                if Not(CDSGastoGralE.Fields[I].IsNull) then
//                  sgTotal.Cells[h+CDSGastoGralEMES.Value,RowNro]:=FormatFloat(',0.00;-,0.00;-',RoundTo(CDSGastoGralE.Fields[I].Value,-2))
//                else
//                  sgTotal.Cells[h+CDSGastoGralEMES.Value,RowNro]:='-';
//                RowNro:=RowNro+1;
//              end;
//        end;
//
//      H:=h+1;
//      if H>13 then
//        begin
//         // puntero:=Puntero+1;
//          H:=2;
//        end;
//      CDSVentaGral.Next;
//      CDSGastoGralE.Next;
//      RowNro:=Puntero+1;
//    end;
//
//    //--------------------------------------
//    //Gastos Includidos de los generales //
//    //--------------------------------------
////    RowNro    := CDSVentaGral.RecordCount-2;
////    Puntero := RowNro-1;
//    sgTotal.Cells[0,RowNro]:='Gastos Incluidos';
//    RowNro:=RowNro+1;
//
//
//    CDSGastoGralI.First;
//    h:= 2;
//    while Not(CDSGastoGralI.Eof) do
//      begin
//        for I := 1 to CDSGastoGralI.FieldCount-1 do
//          begin
//            if (i=1) then
//              sgTotal.Cells[1,RowNro]:=CDSGastoGralI.Fields[I].AsString
//            else
//              begin
//                if Not(CDSGastoGralI.Fields[I].IsNull) then
//                  sgTotal.Cells[h+CDSGastoGralIMES.Value,RowNro]:=FormatFloat(',0.00;-,0.00;-',CDSGastoGralI.Fields[I].Value)
//                else
//                  sgTotal.Cells[h+CDSGastoGralIMES.Value,RowNro]:='-';
//                RowNro:=RowNro+1;
//              end;
//          end;
//        Application.ProcessMessages;
//        CDSGastoGralI.Next;
//        H:=h+1;
//        if H>13 then
//          begin
//            puntero:=Puntero+1;
//            H:=2;
//          end;
//        RowNro:=Puntero+1;
//      end;
//////////////////////////////////////

  Screen.Cursor:=crDefault;
end;


procedure TFormInformeGeneral.btAnio2Click(Sender: TObject);
begin
  AdvGridExcelIO1.AdvStringGrid:=sgVentasOld;
  AdvGridExcelIO1.XLSExport('c:\ventas'+tsAnio2.Caption+'.xls')
end;

procedure TFormInformeGeneral.btAnioClick(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  AdvGridExcelIO1.AdvStringGrid:=sgVentas;
  AdvGridExcelIO1.XLSExport(ExtractFilePath(ParamStr(0))+'ventas'+tsAnio1.Caption+'.xls');
  if VirtualUI.Active then
    begin
      if VirtualUI.Active then
        begin
          VirtualUI.StdDialogs:=False;
          VirtualUI.DownloadFile(ExtractFilePath(ParamStr(0))+'ventas'+tsAnio1.Caption+'.xls');
       end;
    end;
end;

procedure TFormInformeGeneral.btBuscarVtasClick(Sender: TObject);
var i,Paso,Puntero,Aux,Sucursal_V:Integer;
Gastos:boolean;
Rubro:String;
begin
  Screen.Cursor:=crHourGlass;

  sgVentas.Clear;

  QRubros.Close;
  QRubros.Open;
  Aux := QRubros.Fields[0].AsInteger + 7;// Trae la Cantidad de Registros
  QRubros.Close;
  sbEstado.SimpleText:= 'Consultando Ventas...';
  Application.ProcessMessages;

  CDSVentas.Close;
  CDSVentas.Params.ParamByName('Anio').Value:=Desde.Value;
  CDSVentas.Params.ParamByName('Suc').Value :=dbcSucursal.KeyValue;
  CDSVentas.Open;

  sbEstado.SimpleText:= 'Consultando Gastos Generales...';
  Application.ProcessMessages;

  CDSGastosDetE.Close;
  CDSGastosDetE.Params.ParamByName('Anio').Value:=Desde.Value;
  CDSGastosDetE.Params.ParamByName('Suc').Value :=dbcSucursal.KeyValue;
  CDSGastosDetE.Open;

  sgVentas.FixedRows:=0;
  sgVentas.RowCount :=CDSVentas.RecordCount +  Aux;
  sgVentas.Clear;
  sgVentas.Cells[0,0] :='';
  sgVentas.Cells[1,0] :='';

  sgVentas.Cells [2,0] :=' 1-Enero';
  sgVentas.Cells [3,0] :=' 2-Febrero';
  sgVentas.Cells [4,0] :=' 3-Marzo';
  sgVentas.Cells [5,0] :=' 4-Abril';
  sgVentas.Cells [6,0] :=' 5-Mayo';
  sgVentas.Cells [7,0] :=' 6-Junio';
  sgVentas.Cells [8,0] :=' 7-Julio';
  sgVentas.Cells [9,0] :=' 8-Agosto';
  sgVentas.Cells[10,0] :=' 9-Septiembre';
  sgVentas.Cells[11,0] :='10-Octubre';
  sgVentas.Cells[12,0] :='11-Noviembre';
  sgVentas.Cells[13,0] :='12-Diciembre';

  Application.ProcessMessages;

  for I := 0 to sgVentas.ColCount - 1 do
    begin
      sgVentas.Colors[I,0]  :=clWhite;
      sgVentas.ColorsTo[I,0]:=clActiveCaption;
    end;

  for I := 0 to sgVentas.ColCount - 1 do
    sgVentas.Alignments[I,0]:=taCenter;

  Application.ProcessMessages;

  for I := 0 to sgVentas.ColCount - 1 do
    sgVentas.FontStyles[I,0]:=[fsBold];

  Application.ProcessMessages;

  for I := 0 to sgVentas.rowCount - 1 do
    begin
      sgVentas.FontStyles[0,I]:=[fsBold];
      sgVentas.FontStyles[1,I]:=[fsBold];
    end;

  Application.ProcessMessages;

  for I := 0 to sgVentas.RowCount - 1 do
    begin
      sgVentas.Alignments[0,I]:=taLeftJustify;
      sgVentas.Alignments[1,I]:=taLeftJustify;
    end;

  Application.ProcessMessages;

  sbEstado.SimpleText:= 'Armando Cuadro de Datos...';
  Application.ProcessMessages;

  CDSVentas.First;
  CDSGastosDetE.First;
  Sucursal_V   :=CDSVentasSUCURSAL.Value;
  Paso:=1;Puntero:=0;Gastos:=True;
  while Not(CDSVentas.Eof) do
    begin

      for I := 2 to CDSVentas.FieldCount-1 do
        begin
          sgVentas.Cells[0,Paso]:=CDSVentas.Fields[2].Value;
          if (i>2) then
            begin
              sgVentas.Cells[1,Paso]  :=CDSVentas.Fields[I].DisplayLabel;
              if Not(CDSVentas.Fields[I].IsNull) Then
                sgVentas.Cells[1+CDSVentasMES.Value,Paso]:=FormatFloat(',0.00;-,0.00;-',CDSVentas.Fields[I].AsFloat)
              else
                sgVentas.Cells[1+CDSVentasMES.Value,Paso]:='-';
              Application.ProcessMessages;
              Paso:=Paso+1;
            end;
        end;

      for I := 2 to CDSGastosDetE.FieldCount-1 do
        begin
          sgVentas.Cells[0,Paso]  :=CDSGastosDetE.Fields[2].AsString;
          if (i>2) then
            begin
              sgVentas.Cells[1,Paso]  :=CDSGastosDetE.Fields[I].DisplayLabel;
              if Not(CDSGastosDetE.Fields[I].IsNUll) then
                sgVentas.Cells[1+CDSGastosDetEMES.Value,Paso]:=FormatFloat(',0.00;-,0.00;-',CDSGastosDetE.Fields[I].AsFloat)
              else
                sgVentas.Cells[1+CDSGastosDetEMES.Value,Paso]:='-';
              Application.ProcessMessages;
              Paso:=Paso+1;
            end;
        end;

      CDSVentas.Next;
      CDSGastosDetE.Next;

      if Gastos then
        begin
          CDSGastosDetI.Close;
          CDSGastosDetI.Params.ParamByName('Anio').Value:=Desde.Value;
          CDSGastosDetI.Params.ParamByName('Suc').Value :=Sucursal_V;
          CDSGastosDetI.Open;

          CDSGastosDetI.First;
          Rubro:=CDSGastosDetIDETALLERUBRO.AsString;
          while Not(CDSGastosDetI.Eof) do
            begin
              for I := 3 to CDSGastosDetI.FieldCount-1 do
                begin

                  sgVentas.Cells[0,Paso]:=CDSGastosDetI.Fields[2].AsString;
                  if (i=3) then
                    begin
                      sgVentas.Cells[1,Paso]:=CDSGastosDetI.Fields[I].AsString;
                     end
                  else
                    if (i>3) then
                      begin
                        if NOt(CDSGastosDetI.Fields[I].IsNull) then
                          sgVentas.Cells[1+CDSGastosDetIMES.Value,Paso]:=FormatFloat(',0.00;-,0.00;-',CDSGastosDetI.Fields[I].AsFloat)
                        else
                          sgVentas.Cells[1+CDSGastosDetIMES.Value,Paso]:='-';
                      end;
                  Application.ProcessMessages;
                end;
              CDSGastosDetI.Next;
              if Rubro<>CDSGastosDetIDETALLERUBRO.AsString then
                begin
                  Rubro:=CDSGastosDetIDETALLERUBRO.AsString;
                  Paso:=Paso+1;
                end;
            end;
          Gastos:=False;
        end;
      Paso:=Puntero+1;

      if Sucursal_V<>CDSVentasSUCURSAL.Value then
        begin
          Puntero := Puntero+Aux+1;
          Gastos  := True;
          Sucursal_V       := CDSVentasSUCURSAL.Value;
          Paso    := Puntero+1;
        end;
    end;

  sbEstado.SimpleText:= '..';
  Application.ProcessMessages;

  sgVentas.MergeColumnCells(0,True);

////////////////////////////////////////////////////////////////////////////////
  sgVentasOld.Clear;

  sbEstado.SimpleText:= 'Consultando Ventas Año Anterior...';
  Application.ProcessMessages;

  CDSVentas.Close;
  CDSVentas.Params.ParamByName('Anio').Value:=Hasta.Value-1;
  CDSVentas.Params.ParamByName('Suc').Value :=dbcSucursal.KeyValue;
  CDSVentas.Open;

  sbEstado.SimpleText:= 'Consultando Gastos Generales Año Anterior...';
  Application.ProcessMessages;

  CDSGastosDetE.Close;
  CDSGastosDetE.Params.ParamByName('Anio').Value:=Hasta.Value-1;
  CDSGastosDetE.Params.ParamByName('Suc').Value :=dbcSucursal.KeyValue;
  CDSGastosDetE.Open;

  sgVentasOld.FixedRows:=0;
  sgVentasOld.RowCount :=CDSVentas.RecordCount + Aux;


  sgVentasOld.Clear;
  sgVentasOld.Cells[0,0] :='';
  sgVentasOld.Cells[1,0] :='';

  sgVentasOld.Cells [2,0] :='Enero';
  sgVentasOld.Cells [3,0] :='Febrero';
  sgVentasOld.Cells [4,0] :='Marzo';
  sgVentasOld.Cells [5,0] :='Abril';
  sgVentasOld.Cells [6,0] :='Mayo';
  sgVentasOld.Cells [7,0] :='Junio';
  sgVentasOld.Cells [8,0] :='Julio';
  sgVentasOld.Cells [9,0] :='Agosto';
  sgVentasOld.Cells[10,0] :='Septiembre';
  sgVentasOld.Cells[11,0] :='Octubre';
  sgVentasOld.Cells[12,0] :='Noviembre';
  sgVentasOld.Cells[13,0] :='Diciembre';

  Application.ProcessMessages;

  for I := 0 to sgVentasOld.ColCount - 1 do
    begin
      sgVentasOld.Colors[I,0]  :=clWhite;
      sgVentasOld.ColorsTo[I,0]:=clActiveCaption;
    end;

  for I := 0 to sgVentasOld.ColCount - 1 do
    sgVentasOld.Alignments[I,0]:=taCenter;

  Application.ProcessMessages;

  for I := 0 to sgVentasOld.ColCount - 1 do
    sgVentasOld.FontStyles[I,0]:=[fsBold];

  Application.ProcessMessages;

  for I := 0 to sgVentasOld.rowCount - 1 do
    begin
      sgVentasOld.FontStyles[0,I]:=[fsBold];
      sgVentasOld.FontStyles[1,I]:=[fsBold];
    end;

  Application.ProcessMessages;

  for I := 0 to sgVentasOld.RowCount - 1 do
    begin
      sgVentasOld.Alignments[0,I]:=taLeftJustify;
      sgVentasOld.Alignments[1,I]:=taLeftJustify;
    end;

  Application.ProcessMessages;

  sbEstado.SimpleText:= 'Armando Cuadro de Datos...';
  Application.ProcessMessages;

  CDSVentas.First;
  CDSGastosDetE.First;
  Sucursal_V:=CDSVentasSUCURSAL.Value;
  Paso:=1;Puntero:=0;Gastos:=True;
  while Not(CDSVentas.Eof) do
    begin

      for I := 2 to CDSVentas.FieldCount-1 do
        begin
          sgVentasOld.Cells[0,Paso]:=CDSVentas.Fields[2].Value;
          if (i>2) then
            begin
              sgVentasOld.Cells[1,Paso]  :=CDSVentas.Fields[I].DisplayLabel;
              if NOt(CDSVentas.Fields[I].IsNull)  then
                sgVentasOld.Cells[1+CDSVentasMES.Value,Paso]:=FormatFloat(',0.00;-,0.00;-',CDSVentas.Fields[I].Value)
              else
                sgVentasOld.Cells[1+CDSVentasMES.Value,Paso]:='-';
              Paso:=Paso+1;
            end;
          Application.ProcessMessages;
        end;

      for I := 2 to CDSGastosDetE.FieldCount-1 do
        begin
          sgVentasOld.Cells[0,Paso]  :=CDSGastosDetE.Fields[2].AsString;
          if (i>2) then
            begin
              sgVentasOld.Cells[1,Paso]  :=CDSGastosDetE.Fields[I].DisplayLabel;
              if Not(CDSGastosDetE.Fields[I].IsNull) then
                sgVentasOld.Cells[1+CDSGastosDetEMES.Value,Paso]:=FormatFloat(',0.00;-,0.00;-',CDSGastosDetE.Fields[I].Value)
              else
                sgVentasOld.Cells[1+CDSGastosDetEMES.Value,Paso]:='-';
              Application.ProcessMessages;
              Paso:=Paso+1;
            end;
        end;

      CDSVentas.Next;
      CDSGastosDetE.Next;

      if Gastos then
      begin
      CDSGastosDetI.Close;
      CDSGastosDetI.Params.ParamByName('Anio').Value:=Hasta.Value;
      CDSGastosDetI.Params.ParamByName('Suc').Value :=Sucursal_V;
      CDSGastosDetI.Open;

      CDSGastosDetI.First;
      Rubro:=CDSGastosDetIDETALLERUBRO.AsString;
      while Not(CDSGastosDetI.Eof) do
        begin
          for I := 3 to CDSGastosDetI.FieldCount-1 do
            begin

              sgVentasOld.Cells[0,Paso]:=CDSGastosDetI.Fields[2].AsString;
              if (i=3) then
                begin
                  sgVentasOld.Cells[1,Paso]:=CDSGastosDetI.Fields[I].AsString;
                  Application.ProcessMessages;
                end
              else
                if (i>3) then
                  begin
                    if Not(CDSGastosDetI.Fields[I].IsNull) then
                      sgVentasOld.Cells[1+CDSGastosDetIMES.Value,Paso]:=FormatFloat(',0.00;-,0.00;-',CDSGastosDetI.Fields[I].Value)
                    else
                      sgVentasOld.Cells[1+CDSGastosDetIMES.Value,Paso]:='-';
                  end;
              Application.ProcessMessages;
            end;
          CDSGastosDetI.Next;
          if Rubro<>CDSGastosDetIDETALLERUBRO.AsString then
            begin
              Rubro:=CDSGastosDetIDETALLERUBRO.AsString;
              Paso:=Paso+1;
            end;
        end;
        Gastos:=False;
      end;
      Paso:=Puntero+1;

      if Sucursal_V<>CDSVentasSUCURSAL.Value then
        begin
          Puntero:=Puntero+Aux+1;
          Gastos:=True;
          Sucursal_V:=CDSVentasSUCURSAL.Value;
          Paso:=Puntero+1;
        end;
    end;

  sbEstado.SimpleText:= '..';
  Application.ProcessMessages;

  sgVentasOld.MergeColumnCells(0,True);
  Screen.Cursor:=crDefault;

end;


procedure TFormInformeGeneral.Button1Click(Sender: TObject);
begin
if Not(Assigned(FormFiltroRubGastos)) then
    FormFiltroRubGastos:=TFormFiltroRubGastos.Create(Self);
  FormFiltroRubGastos.ShowModal;
end;

procedure TFormInformeGeneral.Button2Click(Sender: TObject);
begin
  if Not(Assigned(FormFiltroCpbtes)) then
    FormFiltroCpbtes:=TFormFiltroCpbtes.Create(Self);
   FormFiltroCpbtes.ShowModal;
end;







procedure TFormInformeGeneral.btGeneralClick(Sender: TObject);
begin
  AdvGridExcelIO1.AdvStringGrid:=sgTotal;
  AdvGridExcelIO1.XLSExport('c:\ventas.xls')
end;

procedure TFormInformeGeneral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSVentaGral.Close;
  CDSGastoGralE.Close;
  CDSGastoGralI.Close;
  CDSVentas.Close;
  CDSGastosDetE.Close;
  CDSGastosDetI.Close;
  Action:=caFree;
end;

procedure TFormInformeGeneral.FormCreate(Sender: TObject);
var i:integer;
begin
  AutoSize  :=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  CDSSucursal.Close;

  CDSSucursal.Open;
  sgVentas.FixedRows:=0;
  for I := 0 to sgVentas.ColCount - 1 do
  sgVentas.Alignments[I,0]:=taCenter;
end;

procedure TFormInformeGeneral.FormDestroy(Sender: TObject);
begin
  FormInformeGeneral:=nil;
end;

procedure TFormInformeGeneral.FormShow(Sender: TObject);
begin
  Desde.Value                  := YearOf(Date);
  Hasta.Value                  := YearOf(Date)-1;
  tsAnio1.Caption              := IntToStr(Desde.Value);
  tsAnio2.Caption              := IntToStr(Hasta.Value);
  PageControl1.ActivePageIndex := 0;

 
end;

procedure TFormInformeGeneral.HastaChange(Sender: TObject);
begin
  tsAnio2.Caption:=IntToStr(Hasta.Value);
end;

procedure TFormInformeGeneral.HastaClick(Sender: TObject);
begin
  if Hasta.Value>=Desde.Value then
    Hasta.Value:=Desde.Value-1;
end;

procedure TFormInformeGeneral.sgTotalGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  if ARow=0 then
    HAlign:=taCenter
  else
    if ARow>0 then
      begin
        if ((ACol=0) or (ACol=1)) then
          HAlign:=taLeftJustify
        else
          HAlign:=taRightJustify;
      end;
end;

procedure TFormInformeGeneral.DesdeChange(Sender: TObject);
begin
  tsAnio1.Caption:=IntToStr(Desde.Value);
  if Desde.Value<=Hasta.Value then
    Hasta.Value:=Desde.Value-1;
  tsAnio1.Caption:=IntToStr(Desde.Value);
end;




//select  'Todas las Sucursales' as Sucursal,'--' as campo,mes,sum(total_egresos) as TOTAL_Egresos fromVTA_GRAL_ANUAL_GASTOS  (:anio,:suc)
// group by mes
//order by mes

end.
