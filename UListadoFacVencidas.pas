unit UListadoFacVencidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, ImgList,DateUtils,
  DB,   ActnList, ComCtrls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, Provider,
  DBClient,   Grids, DBGrids, JvExDBGrids, JvDBGrid, frxClass, frxDBSet,
  frxExportPDF,
  JvDBLookup,Librerias, Mask,   JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, JvExMask, JvToolEdit, SqlExpr,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  cxCustomPivotGrid, cxDBPivotGrid ,cxExportPivotGridLink,
  dxSkinsDefaultPainters, System.Actions, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  JvAppStorage, JvAppIniStorage, cxGraphics, cxControls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxBarBuiltInMenu, frxExportBaseDialog, System.ImageList,
  frCoreClasses;

type
  TFormListadoFacVencidas = class(TFormABMBase)
    DSFacturas: TDataSource;
    CDSFacturas: TClientDataSet;
    DSPFacturas: TDataSetProvider;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    frxPDFExport1: TfrxPDFExport;
    frFacturas: TfrxDBDataset;
    frxReport: TfrxReport;
    CDSFacturasTIPOCPBTE: TStringField;
    CDSFacturasCLASECPBTE: TStringField;
    CDSFacturasLETRAFAC: TStringField;
    CDSFacturasNROCPBTE: TStringField;
    CDSFacturasCODIGO: TStringField;
    CDSFacturasRAZONSOCIAL: TStringField;
    CDSFacturasVENDEDOR: TStringField;
    CDSFacturasZONA: TIntegerField;
    CDSFacturasSUCURSAL: TIntegerField;
    CDSFacturasCONDICIONVTA: TIntegerField;
    CDSFacturasMUESTRACONDVENTA: TStringField;
    cbEstado: TComboBox;
    Label4: TLabel;
    dbcZona: TJvDBLookupCombo;
    dbcVendedor: TJvDBLookupCombo;
    dbcSucursal: TJvDBLookupCombo;
    Label5: TLabel;
    Label6: TLabel;
    UpDown1: TUpDown;
    Label7: TLabel;
    BitBtn2: TBitBtn;
    ImpTabla: TAction;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    CDSFacturasACTIVO: TStringField;
    DSSucursales: TDataSource;
    DSPersonal: TDataSource;
    DSZona: TDataSource;
    CDSFacturasMES: TStringField;
    CDSFacturasANIO: TIntegerField;
    CDSFacturasSEMANA: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgFacturas: TJvDBGrid;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    BitBtn3: TBitBtn;
    SaveDialog1: TSaveDialog;
    QSucursal: TFDQuery;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QSucursalDIRECCION: TStringField;
    QSucursalLOCALIDAD: TStringField;
    QSucursalTELEFONO1: TStringField;
    QSucursalTELEFONO2: TStringField;
    QSucursalRECARGO: TFloatField;
    QSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    QSucursalGENERA_XML_COMUN: TStringField;
    QSucursalHOST: TStringField;
    QSucursalCERTIFICADO_ELEC: TStringField;
    QSucursalCUIT: TStringField;
    QSucursalRAZONSOCIAL: TStringField;
    QPersonal: TFDQuery;
    QPersonalNOMBRE: TStringField;
    QPersonalCODIGO: TStringField;
    QPersonalACTIVO: TStringField;
    QZonas: TFDQuery;
    QFacturas: TFDQuery;
    CDSFacturasTOTAL: TFloatField;
    CDSFacturasDEBE: TFloatField;
    CDSFacturasHABER: TFloatField;
    CDSFacturasSALDO: TFloatField;
    pnCabecera: TPanel;
    QZonasID_ZONA: TIntegerField;
    QZonasDETALLE: TStringField;
    QZonasCOMISION: TFloatField;
    CDSFacturasFECHAVTA: TSQLTimeStampField;
    CDSFacturasFECHAVTO: TSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure ImpTablaExecute(Sender: TObject);
    procedure CDSFacturasCalcFields(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoFacVencidas: TFormListadoFacVencidas;

implementation

uses DMBuscadoresForm, UDMain_FD;

{$R *.dfm}

procedure TFormListadoFacVencidas.BitBtn3Click(Sender: TObject);
begin
  inherited;
  SaveDialog1.FileName:='Ventas';
  SaveDialog1.DefaultExt:='XLS';
  if SaveDialog1.Execute Then
    cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid1)
end;

procedure TFormListadoFacVencidas.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSFacturas.Close;
  CDSFacturas.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSFacturas.Params.ParamByName('zona').Value:=dbcZona.KeyValue;
  CDSFacturas.Params.ParamByName('Vendedor').Value:=dbcVendedor.KeyValue;
  CDSFacturas.Params.ParamByName('desde').Value:=desde.Date;
  CDSFacturas.Params.ParamByName('hasta').Value:=hasta.Date;

  case cbEstado.ItemIndex of
   -1: CDSFacturas.Params.ParamByName('activo').Value:='*';
    0: CDSFacturas.Params.ParamByName('activo').Value:='*';
    1: CDSFacturas.Params.ParamByName('activo').Value:='S';
    2: CDSFacturas.Params.ParamByName('activo').Value:='N';
    3: CDSFacturas.Params.ParamByName('activo').Value:='G';

  end;
  CDSFacturas.Open;

end;

procedure TFormListadoFacVencidas.CDSFacturasCalcFields(DataSet: TDataSet);
var d,m,a,S:Word;
begin
  inherited;
  //DecodeDate(a,m,d,CDSFacturasFECHAVTO.Value);

  CDSFacturasANIO.Value:=a;
 // CDSFacturasMES.Value :=m;
  DecodeDateMonthWeek(CDSFacturasFECHAVTO.AsDateTime,a,m,s,d);
  CDSFacturasSEMANA.Value:=s;
  CDSFacturasANIO.Value:=a;
  case m of
    1:CDSFacturasMES.Value:='Enero';
    2:CDSFacturasMES.Value:='Febrero';
    3:CDSFacturasMES.Value:='Marzo';
    4:CDSFacturasMES.Value:='Abril';
    5:CDSFacturasMES.Value:='Mayo';
    6:CDSFacturasMES.Value:='Junio';
    7:CDSFacturasMES.Value:='Julio';
    8:CDSFacturasMES.Value:='Agosto';
    9:CDSFacturasMES.Value:='Septiembre';
    10:CDSFacturasMES.Value:='Octubre';
    11:CDSFacturasMES.Value:='Noviembre';
    12:CDSFacturasMES.Value:='Diciembre';

  end;

end;

procedure TFormListadoFacVencidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoFacVencidas.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;

  QPersonal.OPen;
  QZonas.Open;
  QSucursal.Open;
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormListadoFacVencidas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoFacVencidas:=nil;
end;

procedure TFormListadoFacVencidas.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSFacturas.IsEmpty) Then
    begin
      frxReport.PrintOptions.Printer:=PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoFacturasVencidas.fr3');
      frxReport.Variables['Vendedor']   :=''''+dbcVendedor.Text+'''';
      frxReport.Variables['Zona']       :=''''+dbcZona.Text+'''';
      frxReport.Variables['Sucursal']   :=''''+dbcSucursal.Text+'''';
      frxReport.Variables['desde']   :=''''+DateToStr(desde.Date)+'''';
      frxReport.Variables['hasta']   :=''''+DateToStr(hasta.Date)+'''';
      frxReport.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');
end;

procedure TFormListadoFacVencidas.ImpTablaExecute(Sender: TObject);
begin
  inherited;
 if Not(CDSFacturas.IsEmpty) Then
    begin
      frxReport.PrintOptions.Printer:=PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoFacturasVencidas_Tabla.fr3');
      frxReport.Variables['Vendedor']  :=''''+dbcVendedor.Text+'''';
      frxReport.Variables['Zona']      :=''''+dbcZona.Text+'''';
      frxReport.Variables['Sucursal']  :=''''+dbcSucursal.Text+'''';
      frxReport.Variables['desde']     :=''''+DateToStr(desde.Date)+'''';
      frxReport.Variables['hasta']     :=''''+DateToStr(hasta.Date)+'''';
      frxReport.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');
end;

procedure TFormListadoFacVencidas.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormListadoFacVencidas.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
begin
  inherited;
  DecodeDate(Desde.Date,y,m,d);
  if Button=btnext Then
    if m=12 Then
      begin
        m:=1;y:=y+1;
      end
    else
      m:=m+1
  else
    if Button=btPrev Then
      if m=1 Then
        begin
          m:=12;y:=y-1;
        end
      else
        m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;

end;

end.