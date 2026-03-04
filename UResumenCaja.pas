unit UResumenCaja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  FMTBcd, Provider, DBClient, SqlExpr, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ExtCtrls,
  cxCalc, StdCtrls, ComCtrls, frxClass, frxDBSet, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, dxSkinsCore, dxSkinOffice2007Blue, dxSkinscxPCPainter, Buttons,
  dxSkinOffice2007Black, dxSkinsDefaultPainters, cxNavigator, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,IniFiles,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvComponentBase, JvFormPlacement, JvAppStorage,
  JvAppIniStorage, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations;

type
  TFormResumenCaja = class(TForm)
    pnBase: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    CDSIngresosTotal: TClientDataSet;
    DSIngresosTotales: TDataSource;
    DSPIngresosTotales: TDataSetProvider;
    cxGrid1DBTableView1FORMADEPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_OPERACION: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    Label1: TLabel;
    DSPDetIngresos: TDataSetProvider;
    CDSDetIngresos: TClientDataSet;
    DSDetIngresos: TDataSource;
    CDSIngresosTotalOPERACION: TStringField;
    CDSIngresosTotalFORMADEPAGO: TStringField;
    CDSIngresosTotalID_TPAGO: TIntegerField;
    CDSIngresosTotalID_FPAGO: TIntegerField;
    CDSIngresosTotalDESCRIPCIOTC: TStringField;
    cxGrid1DBTableView1ID_TPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1ID_FPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPCIOTC: TcxGridDBColumn;
    Label3: TLabel;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    DSPEgresosTotales: TDataSetProvider;
    CDSEgresosTotales: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    DSEgresosTotales: TDataSource;
    cxGridDBTableView2OPERACION: TcxGridDBColumn;
    cxGridDBTableView2FORMADEPAGO: TcxGridDBColumn;
    cxGridDBTableView2ID_TPAGO: TcxGridDBColumn;
    cxGridDBTableView2ID_FPAGO: TcxGridDBColumn;
    cxGridDBTableView2DESCRIPCIOTC: TcxGridDBColumn;
    cxGridDBTableView2DEBE: TcxGridDBColumn;
    cxGridDBTableView2HABER: TcxGridDBColumn;
    CDSDetIngresosOPERACION: TStringField;
    CDSDetIngresosFORMADEPAGO: TStringField;
    CDSDetIngresosCPBTE_TIPO: TStringField;
    CDSDetIngresosCPBTE_CLASE: TStringField;
    CDSDetIngresosCPBTE_NRO: TStringField;
    CDSDetIngresosID_TPAGO: TIntegerField;
    CDSDetIngresosID_FPAGO: TIntegerField;
    CDSDetIngresosDESCRIPCIOTC: TStringField;
    CDSDetIngresosCHE3_NRO: TStringField;
    CDSDetIngresosCHE3_BANCO: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    DSPDetEgresos: TDataSetProvider;
    CDSDetEgresos: TClientDataSet;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    DSDetEgresos: TDataSource;
    cxGridDBTableView1OPERACION: TcxGridDBColumn;
    cxGridDBTableView1FORMADEPAGO: TcxGridDBColumn;
    cxGridDBTableView1CPBTE_TIPO: TcxGridDBColumn;
    cxGridDBTableView1CPBTE_CLASE: TcxGridDBColumn;
    cxGridDBTableView1CPBTE_NRO: TcxGridDBColumn;
    cxGridDBTableView1ID_TPAGO: TcxGridDBColumn;
    cxGridDBTableView1ID_FPAGO: TcxGridDBColumn;
    cxGridDBTableView1DESCRIPCIOTC: TcxGridDBColumn;
    cxGridDBTableView1DEBE: TcxGridDBColumn;
    cxGridDBTableView1HABER: TcxGridDBColumn;
    cxGridDBTableView1CHE3_NRO: TcxGridDBColumn;
    cxGridDBTableView1CHE3_BANCO: TcxGridDBColumn;
    cxGridDBTableView3OPERACION: TcxGridDBColumn;
    cxGridDBTableView3FORMADEPAGO: TcxGridDBColumn;
    cxGridDBTableView3CPBTE_TIPO: TcxGridDBColumn;
    cxGridDBTableView3CPBTE_CLASE: TcxGridDBColumn;
    cxGridDBTableView3CPBTE_NRO: TcxGridDBColumn;
    cxGridDBTableView3ID_TPAGO: TcxGridDBColumn;
    cxGridDBTableView3ID_FPAGO: TcxGridDBColumn;
    cxGridDBTableView3DESCRIPCIOTC: TcxGridDBColumn;
    cxGridDBTableView3DEBE: TcxGridDBColumn;
    cxGridDBTableView3HABER: TcxGridDBColumn;
    cxGridDBTableView3CHE3_NRO: TcxGridDBColumn;
    cxGridDBTableView3CHE3_BANCO: TcxGridDBColumn;
    TabSheet3: TTabSheet;
    DSPDetalleVta: TDataSetProvider;
    CDSDetalleVta: TClientDataSet;
    DSDetalleVta: TDataSource;
    CDSDetalleVtaRUBRO_STK: TStringField;
    CDSDetalleVtaSUBRUBRO_STK: TStringField;
    CDSDetalleVtaDETALLE_RUBRO: TStringField;
    CDSDetalleVtaDETALLE_SUBRUBRO: TStringField;
    cxGrid5DBTableView1: TcxGridDBTableView;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGrid5DBTableView1RUBRO_STK: TcxGridDBColumn;
    cxGrid5DBTableView1SUBRUBRO_STK: TcxGridDBColumn;
    cxGrid5DBTableView1DETALLE_RUBRO: TcxGridDBColumn;
    cxGrid5DBTableView1DETALLE_SUBRUBRO: TcxGridDBColumn;
    cxGrid5DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid5DBTableView1NETO: TcxGridDBColumn;
    frxReport: TfrxReport;
    frIngTotales: TfrxDBDataset;
    frEgrTotales: TfrxDBDataset;
    frDetEgresos: TfrxDBDataset;
    frDetVta: TfrxDBDataset;
    frDetIngresos: TfrxDBDataset;
    CDSSaldos: TClientDataSet;
    DSPSAldos: TDataSetProvider;
    DSSAldos: TDataSource;
    frSaldos: TfrxDBDataset;
    CDSSaldosFORMADEPAGO: TStringField;
    CDSSaldosID_TPAGO: TIntegerField;
    CDSSaldosID_FPAGO: TIntegerField;
    DSSaldosIni: TDataSource;
    DSSaldosFin: TDataSource;
    frSaldoFinal: TfrxDBDataset;
    frSaldoInicial: TfrxDBDataset;
    DSPSaldoInicial: TDataSetProvider;
    CDSSaldoInicial: TClientDataSet;
    CDSSaldoInicialID_CAJA_SALDO: TIntegerField;
    CDSSaldoInicialID_CAJA_CAB: TIntegerField;
    CDSSaldoInicialID_TPAGO: TIntegerField;
    CDSSaldoInicialID_FPAGO: TIntegerField;
    CDSSaldoInicialESTADO_CAJA: TSmallintField;
    CDSSaldoInicialOBSERVACIONES: TStringField;
    CDSSaldoInicialMUESTRAFORMAPAGO: TStringField;
    DSPSaldoFinal: TDataSetProvider;
    CDSSaldoFinal: TClientDataSet;
    CDSSaldoFinalMONEDA: TIntegerField;
    CDSSaldoFinalFPAGO: TSmallintField;
    CDSSaldoFinalTPAGO: TSmallintField;
    CDSSaldoFinalDETALLE: TStringField;
    CDSDetalleVtaTIPO_CPBTE: TStringField;
    cxGrid5DBTableView1TIPO_CPBTE: TcxGridDBColumn;
    CDSDetalleVtaCODIGOARTICULO: TStringField;
    CDSDetalleVtaDETALLE: TStringField;
    cxGrid5DBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGrid5DBTableView1DETALLE: TcxGridDBColumn;
    QIngresosTotales: TFDQuery;
    CDSIngresosTotalDEBE: TFloatField;
    CDSIngresosTotalHABER: TFloatField;
    QEgresosTotales: TFDQuery;
    CDSEgresosTotalesDEBE: TFloatField;
    CDSEgresosTotalesHABER: TFloatField;
    QSAldos: TFDQuery;
    CDSSaldosDEBE: TFloatField;
    CDSSaldosHABER: TFloatField;
    CDSSaldosSALDO: TFloatField;
    QDetIngresos: TFDQuery;
    CDSDetIngresosDEBE: TFloatField;
    CDSDetIngresosHABER: TFloatField;
    QDetEgresos: TFDQuery;
    CDSDetEgresosDEBE: TFloatField;
    CDSDetEgresosHABER: TFloatField;
    QSaldoInic: TFDQuery;
    CDSSaldoInicialIMPORTE: TFloatField;
    QSaldoFinal: TFDQuery;
    CDSSaldoFinalSALDO: TFloatField;
    CDSSaldoFinalDEBE: TFloatField;
    CDSSaldoFinalHABER: TFloatField;
    CDSSaldoFinalCOTIZACION: TFloatField;
    CDSSaldoFinalDISPONIBILIDAD: TFloatField;
    QDetalleVta: TFDQuery;
    CDSDetalleVtaTOTAL: TFloatField;
    CDSDetalleVtaNETO: TCurrencyField;
    pnCabecera: TPanel;
    JvFormStorage1: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Button1: TBitBtn;
    btImprimir: TBitBtn;
    edReporte: TEdit;
    sbReporte: TSpeedButton;
    OpenDialog: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure pnBaseDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure sbReporteClick(Sender: TObject);
  private
    { Private declarations }
    FIDCaja:Integer;
  public
    { Public declarations }
    ArchivoIni:TIniFile;
  published
    property IDCaja:Integer write FIDCaja;


  end;

var
  FormResumenCaja: TFormResumenCaja;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormResumenCaja.btImprimirClick(Sender: TObject);
begin
  If Not(CDSIngresosTotal.IsEmpty) Then
    begin
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\'+edReporte.Text);
      frxReport.ShowReport;
    end
  else
    ShowMessage('No Hay datos para imprimir....');
end;

procedure TFormResumenCaja.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormResumenCaja.FormClose(Sender: TObject; var Action: TCloseAction);
begin                             
  Action:=cafree;
  ArchivoIni  := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ResumenCaja.ini');
  ArchivoIni.WriteString('Reporte', 'File', edReporte.Text);
  ArchivoIni.Free;

end;

procedure TFormResumenCaja.FormCreate(Sender: TObject);
begin
  AutoSize:=False;

  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  ArchivoIni     := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ResumenCaja.ini');
  edReporte.Text :=  ArchivoIni.ReadString('Reporte', 'File', edReporte.Text);
  ArchivoIni.Free;

  OpenDialog.InitialDir:=DMMain_FD.PathReportesLst;

end;

procedure TFormResumenCaja.FormDestroy(Sender: TObject);
begin
  FormResumenCaja:=Nil;
end;

procedure TFormResumenCaja.FormResize(Sender: TObject);
begin
 if (Width>1070)
    then width:=1070;
  if (Width<1070)
    then width:=1070;
end;

procedure TFormResumenCaja.FormShow(Sender: TObject);
begin
 // AutoSize:=True;
  PageControl1.ActivePageIndex:=0;

  CDSIngresosTotal.Close;
  CDSIngresosTotal.Params.ParamByName('id').Value :=FIDCaja;
  CDSIngresosTotal.Open;

  CDSEgresosTotales.Close;
  CDSEgresosTotales.Params.ParamByName('id').Value:=FIDCaja;
  CDSEgresosTotales.Open;

  CDSDetIngresos.Close;
  CDSDetIngresos.Params.ParamByName('id').Value   :=FIDCaja;
  CDSDetIngresos.Open;

  CDSDetEgresos.Close;
  CDSDetEgresos.Params.ParamByName('id').Value    :=FIDCaja;
  CDSDetEgresos.Open;

  CDSDetalleVta.Close;
  CDSDetalleVta.Params.ParamByName('id').Value    :=FIDCaja;
  CDSDetalleVta.Open;

  CDSSaldos.Close;
  CDSSaldos.Params.ParamByName('id').Value        :=FIDCaja;
  CDSSaldos.Open;

  CDSSaldoInicial.Close;
  CDSSaldoInicial.Params.ParamByName('id').Value  :=FIDCaja;
  CDSSaldoInicial.Open;

  CDSSaldoFinal.Close;
  CDSSaldoFinal.Params.ParamByName('id').Value    :=FIDCaja;
  CDSSaldoFinal.Open;

  cxGrid1DBTableView1.DataController.Groups.FullExpand;
  cxGridDBTableView2.DataController.Groups.FullExpand;
  cxGridDBTableView1.DataController.Groups.FullExpand;
  cxGridDBTableView3.DataController.Groups.FullExpand;
  cxGrid5DBTableView1.DataController.Groups.FullExpand;
  BringToFront;
end;

procedure TFormResumenCaja.Panel1DblClick(Sender: TObject);
begin
  frxReport.DesignReport;
end;

procedure TFormResumenCaja.pnBaseDblClick(Sender: TObject);
begin
  frxReport.DesignReport;
end;

procedure TFormResumenCaja.sbReporteClick(Sender: TObject);
VAR Lon1,Lon2:integer;
begin
  inherited;
  if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        edReporte.Text:= OpenDialog.FileName;
        Lon1:=Length(OpenDialog.InitialDir);
        Lon2:=Length(OpenDialog.FileName);
        edReporte.Text:=Copy(OpenDialog.FileName,Lon1+2,Lon2-Lon1-1);
      end
    else
      edReporte.Text:='';
 end;

end.
