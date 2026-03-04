unit UFlujoFondos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, ImgList,
  DB,   ActnList, ComCtrls, librerias,
  frxExportText, frxExportRTF, frxExportPDF, frxClass,
  frxExportXLS, frxDBSet, StdCtrls, Mask,   Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvExControls, JvGradient, Buttons,
  ToolWin, ExtCtrls, JvDBLookup,IniFiles, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr,
  cxGraphics, cxCustomData,  
  DBClient, cxCustomPivotGrid, cxDBPivotGrid, cxControls, cxStyles,
  dxSkinsCore, dxSkinsDefaultPainters, cxLookAndFeels, cxLookAndFeelPainters,
  cxEdit, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, System.Actions, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  JvAppStorage, JvAppIniStorage, cxClasses, Datasnap.Provider, JvExMask,
  JvToolEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxBarBuiltInMenu, frxExportBaseDialog, System.ImageList, AdvOfficeButtons,
  frCoreClasses;

type
  TFormFlujoFondos = class(TFormABMBase)
    DSIngresos: TDataSource;
    btImprimir: TBitBtn;
    frxReport: TfrxReport;
    frIngresos: TfrxDBDataset;
    DSEgresos: TDataSource;
    frEgresos: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    pcMovimientos: TPageControl;
    pg1: TTabSheet;
    dbgEgresos: TJvDBGrid;
    pnPie: TPanel;
    pnCabezera: TPanel;
    UpDown1: TUpDown;
    Label2: TLabel;
    Label3: TLabel;
    frIngresosDet: TfrxDBDataset;
    DSIngresosDet: TDataSource;
    DSEgresosDet: TDataSource;
    frEgresoset: TfrxDBDataset;
    DSGastosEgresos: TDataSource;
    TabSheet1: TTabSheet;
    dbgGastosFactura: TJvDBGrid;
    DSGastosFcCompra: TDataSource;
    frGastosEgresos: TfrxDBDataset;
    frGastosFcCompra: TfrxDBDataset;
    DSRubros: TDataSource;
    dbcRubros: TJvDBLookupCombo;
    DSValeAdelantos: TDataSource;
    TabSheet2: TTabSheet;
    JvDBGrid3: TJvDBGrid;
    frVales: TfrxDBDataset;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    QIngresos: TFDQuery;
    CDSIngresos: TClientDataSet;
    DSPIngresos: TDataSetProvider;
    QEgresos: TFDQuery;
    DSPEgresos: TDataSetProvider;
    CDSEgresos: TClientDataSet;
    QIngresosDet: TFDQuery;
    CDSIngresosDet: TClientDataSet;
    DSPIngresosDet: TDataSetProvider;
    CDSIngresosDetANIO: TIntegerField;
    CDSIngresosDetMES: TIntegerField;
    CDSIngresosDetTIPO_PAGO: TIntegerField;
    CDSIngresosDetMUESTRATIPOPAGO: TStringField;
    CDSIngresosDetTIPO_COMPROB: TStringField;
    CDSIngresosDetDEBE: TFloatField;
    CDSIngresosDetHABER: TFloatField;
    CDSEgresosANIO: TIntegerField;
    CDSEgresosMES: TIntegerField;
    CDSEgresosTIPO_PAGO: TIntegerField;
    CDSEgresosMUESTRATIPOPAGO: TStringField;
    CDSEgresosDEBE: TFloatField;
    CDSEgresosHABER: TFloatField;
    CDSIngresosANIO: TIntegerField;
    CDSIngresosMES: TIntegerField;
    CDSIngresosTIPO_PAGO: TIntegerField;
    CDSIngresosMUESTRATIPOPAGO: TStringField;
    CDSIngresosDEBE: TFloatField;
    CDSIngresosHABER: TFloatField;
    QValesAdelantos: TFDQuery;
    CDSValesAdelantos: TClientDataSet;
    DSPValesAdelantos: TDataSetProvider;
    CDSValesAdelantosANIO: TSmallintField;
    CDSValesAdelantosMES: TSmallintField;
    CDSValesAdelantosCODIGO: TStringField;
    CDSValesAdelantosMUESTRAEMPLEADO: TStringField;
    CDSValesAdelantosSUM: TFloatField;
    QEgresosDet: TFDQuery;
    DSPEgresosDet: TDataSetProvider;
    CDSEgresosDet: TClientDataSet;
    CDSEgresosDetANIO: TIntegerField;
    CDSEgresosDetMES: TIntegerField;
    CDSEgresosDetTIPO_PAGO: TIntegerField;
    CDSEgresosDetMUESTRATIPOPAGO: TStringField;
    CDSEgresosDetTIPO_COMPROB: TStringField;
    CDSEgresosDetDEBE: TFloatField;
    CDSEgresosDetHABER: TFloatField;
    spGeneraTabla: TFDStoredProc;
    CDSRubros: TClientDataSet;
    DSPRubros: TDataSetProvider;
    QRubros: TFDQuery;
    QGastosEgresos: TFDQuery;
    DSPGastosEgresos: TDataSetProvider;
    CDSGastosEgresos: TClientDataSet;
    CDSGastosEgresosANIO: TSmallintField;
    CDSGastosEgresosMES: TSmallintField;
    CDSGastosEgresosCODIGOGASTO: TStringField;
    CDSGastosEgresosMUESTRACTAGASTO: TStringField;
    CDSGastosEgresosSUM: TFloatField;
    QGastosFcCompra: TFDQuery;
    CDSGastosFCCompra: TClientDataSet;
    DSPGastosFcCompra: TDataSetProvider;
    CDSGastosFCCompraANIO: TSmallintField;
    CDSGastosFCCompraMES: TSmallintField;
    CDSGastosFCCompraCODIGOARTICULO: TStringField;
    CDSGastosFCCompraDETALLE_STK: TStringField;
    CDSGastosFCCompraSUM: TFloatField;
    Label1: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    DSSucursales: TDataSource;
    CDSEgresosDetSUCURSAL: TIntegerField;
    CDSIngresosSUCURSAL: TIntegerField;
    CDSEgresosSUCURSAL: TIntegerField;
    CDSIngresosDetSUCURSAL: TIntegerField;
    CDSGastosEgresosSUCURSALVENTA: TIntegerField;
    CDSGastosFCCompraSUCURSALCOMPRA: TIntegerField;
    Label4: TLabel;
    edMeses: TEdit;
    spMeses: TUpDown;
    lbEstado: TLabel;
    TabSheet3: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    Button1: TButton;
    QCompras: TFDQuery;
    DSPCompras: TDataSetProvider;
    CDSCompras: TClientDataSet;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    FMTBCDField1: TFloatField;
    IntegerField1: TIntegerField;
    DSCompras: TDataSource;
    frCompras: TfrxDBDataset;
    TabSheet4: TTabSheet;
    dbgCompras: TJvDBGrid;
    CDSComprasCODIGO: TStringField;
    CDSComprasNOMBRE: TStringField;
    CDSGastosEgresosRUBROGASTO: TStringField;
    CDSGastosEgresosMUESTRARUBRO: TStringField;
    CDSRubrosCODIGO_RUBRO: TStringField;
    CDSRubrosDETALLE_RUBRO: TStringField;
    chbSincro: TAdvOfficeCheckBox;
    procedure BuscarExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spMesesClick(Sender: TObject; Button: TUDBtnType);
    procedure Button1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    ArchivoIni:TIniFile;
    { Public declarations }
  end;

var
  FormFlujoFondos: TFormFlujoFondos;

implementation

uses UDMain_FD,DMBuscadoresForm, UGraficoEgresos;

{$R *.dfm}

procedure TFormFlujoFondos.btImprimirClick(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.CopyToClipboard(True);

  frxReport.PrintOptions.Printer:=PrNomListados;
  frxReport.SelectPrinter;

  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\flujofondos.fr3');
  // frCtaCte.PrepareReport;
  frxReport.ShowReport;
end;

procedure TFormFlujoFondos.BuscarExecute(Sender: TObject);
var col,anio1,anio2,d,mes1,mes2:word;
  I: Word;
  i2: word;
  x,y:integer;
  const meses: array [1..12] of string =('enero','febrero','marzo','abril','mayo','junio','julio','agosto','sept','oct','nov','dic');
begin
  inherited;
  lbEstado.Caption:='Generando Tablas...';
  Application.ProcessMessages;
  spGeneraTabla.Close;
  spGeneraTabla.ParamByName('desde').AsDate:=desde.Date;
  spGeneraTabla.ParamByName('hasta').AsDate:=hasta.Date;
  spGeneraTabla.ExecProc;
  spGeneraTabla.Close;

  lbEstado.Caption:='Generando Consulta de Inresos...';
  Application.ProcessMessages;

  CDSIngresos.close;
  CDSIngresos.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSIngresos.Open;

  lbEstado.Caption:='Generando Consulta de Egresos...';
  Application.ProcessMessages;

  CDSEgresos.close;
  CDSEgresos.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSEgresos.Open;

  lbEstado.Caption:='Generando Consulta de Ingresos Detalles...';
  Application.ProcessMessages;

  CDSIngresosDet.Close;
  CDSIngresosDet.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSIngresosDet.Open;

  lbEstado.Caption:='Generando Consulta de Egresos Detalles...';
  Application.ProcessMessages;

  CDSEgresosDet.Close;
  CDSEgresosDet.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSEgresosDet.Open;

  lbEstado.Caption:='Generando Consulta de Gastos por Egresos...';
  Application.ProcessMessages;

  CDSGastosEgresos.Close;
  CDSGastosEgresos.Params.ParamByName('desde').Value:=Desde.Date;
  CDSGastosEgresos.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSGastosEgresos.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSGastosEgresos.Open;

  lbEstado.Caption:='Generando Consulta de Gastos por Facturas...';
  Application.ProcessMessages;

  CDSGastosFcCompra.Close;
  CDSGastosFcCompra.Params.ParamByName('desde').Value:=Desde.Date;
  CDSGastosFcCompra.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSGastosFcCompra.Params.ParamByName('rubro').Value:=dbcRubros.LookupSource.DataSet.FieldByName('codigo_rubro').AsString;
  CDSGastosFCCompra.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSGastosFcCompra.Open;

  CDSCompras.Close;
  CDSCompras.Params.ParamByName('desde').Value:=Desde.Date;
  CDSCompras.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSCompras.Params.ParamByName('rubro').Value:=dbcRubros.LookupSource.DataSet.FieldByName('codigo_rubro').AsString;
  CDSCompras.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSCompras.Open;


  lbEstado.Caption:='Generando Consulta de Vales/Adelantos...';
  Application.ProcessMessages;

  CDSValesAdelantos.Close;
  CDSValesAdelantos.Params.ParamByName('desde').Value:=Desde.Date;
  CDSValesAdelantos.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSValesAdelantos.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSValesAdelantos.Open;

  lbEstado.Caption:='...';
  Application.ProcessMessages;

end;

procedure TFormFlujoFondos.Button1Click(Sender: TObject);
begin
  inherited;
  FormGraficoEgresos.Show;
end;

procedure TFormFlujoFondos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'FFondos.ini');
  if (dbcRubros.KeyValue<>Null) then
    ArchivoIni.WriteString('rubro','rubro',dbcRubros.KeyValue)
  else
    ArchivoIni.WriteString('rubro','rubro','');

  ArchivoIni.WriteBool('sincro','sincro',chbSincro.Checked);
  ArchivoIni.WriteInteger('intervalo','intervalo',StrToInt(edMeses.Text));
  ArchivoIni.WriteInteger('sucursal','sucursal',dbcSucursal.KeyValue);
  ArchivoIni.Free;
  CDSRubros.Close;
  CDSSucursal.Close;
  Action:=caFree;

end;

procedure TFormFlujoFondos.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSRubros.Open;
  CDSSucursal.Open;
  ArchivoIni:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'FFondos.ini');
  dbcRubros.KeyValue  := ArchivoIni.ReadString('rubro','rubro','');
  chbSincro.Checked   := ArchivoIni.ReadBool('sincro','sincro',True);
  edMeses.Text        := IntToStr(ArchivoIni.ReadInteger('intervalo','intervalo',1));
  dbcSucursal.KeyValue:= ArchivoIni.ReadInteger('sucursal','sucursal',-1);
  ArchivoIni.Free;
  if Not(Assigned(FormGraficoEgresos)) then
    FormGraficoEgresos:=TFormGraficoEgresos.Create(Self);

end;

procedure TFormFlujoFondos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormFlujoFondos:=nil;
end;

procedure TFormFlujoFondos.FormResize(Sender: TObject);
begin
  inherited;
  if FormFlujoFondos<>nil then
    if FormFlujoFondos.Width<840 then
      FormFlujoFondos.Width:=840;
end;

procedure TFormFlujoFondos.FormShow(Sender: TObject);
VAR M,y,d:Word;
begin
  inherited;
 // DecodeDate(Date,A,M,D);
////  Desde.Date:=EncodeDate(A,M,1);
//  Hasta.Date:=EncodeDate(A,M,DaysInMonth(A,M)):
//  desde.Date:=IncMonth(desde.Date,-1*spMeses.Value)
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1*StrToInt(edMeses.Text)));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;
end;

procedure TFormFlujoFondos.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormFlujoFondos.spMesesClick(Sender: TObject; Button: TUDBtnType);
begin
  inherited;
  if (Button=btnext) then
    desde.Date:=IncMonth(desde.Date,-1)
  else
  if (Button=btprev) then
    desde.Date:=IncMonth(desde.Date,1);

end;

procedure TFormFlujoFondos.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var d,m,y:word;
begin
 // DecodeDate(Desde.Date,y,m,d);
//  if Button=btnext Then
//    if m=12 Then
//      begin
//        m:=1;y:=y+1;
//      end
//    else
//      m:=m+1
//  else
//    if Button=btPrev Then
//      if m=1 Then
//        begin
//          m:=12;y:=y-1;
//        end
//      else
//        m:=m-1;

//  Desde.Date:=EncodeDate(y,m,1);
//  Hasta.Date:=IncMonth(Desde.Date,spMeses.Value * -1 );
 // Buscar.Execute;
 //  Desde.SetFocus;
 if Button=btnext Then
    begin
      if chbSincro.Checked then
        begin
          Desde.Date := IncMonth(Desde.Date,1);
          Hasta.Date := IncMonth(Hasta.Date,1);
        end
      else
        Desde.Date := IncMonth(Desde.Date,1);
    end
  else
    if Button=btPrev Then
     begin
       if chbSincro.Checked then
         begin
           Desde.Date := IncMonth(Desde.Date,-1);
           Hasta.Date := IncMonth(Hasta.Date,-1);
         end
       else
         Desde.Date := IncMonth(Desde.Date,-1);
     end;
end;

end.