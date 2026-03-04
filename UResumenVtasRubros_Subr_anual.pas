
unit UResumenVtasRubros_Subr_anual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, JvExControls, JvDBLookup, StdCtrls, DB, DBClient,
  Provider, ExtCtrls, Spin, JvGradient, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  Buttons, JvLabel,  ComCtrls,ComObj,
  frxCross, frxClass, frxExportPDF, AdvObj, BaseGrid, AdvGrid, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2007Black, cxStyles, cxEdit, cxVGrid, cxDBVGrid,
  cxInplaceContainer, cxClasses, cxCustomData, cxCustomPivotGrid, cxDBPivotGrid,
  cxPropertiesStore, cxCalc, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxSkinscxPCPainter,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxPivotGridLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxPSCore, dxPScxCommon ,cxExportPivotGridLink, cxTextEdit,
  dxSkinsDefaultPainters, dxSkinsdxRibbonPainter, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxPScxGridLnk, dxPScxGridLayoutViewLnk,VirtualUI_SDK,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxPScxVGridLnk, JvAppStorage, JvAppIniStorage,
  JvComponentBase, JvFormPlacement, dxPSStdGrLnk, cxCurrencyEdit, frxExportBaseDialog, VclTee.TeeGDIPlus,
  VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, VCLTee.TeeData, VCLTee.TeeDBCrossTab,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxBarBuiltInMenu, frCoreClasses;

type
  TFormResumenVtaRubro_Sub_Anual = class(TForm)
    pnBase: TPanel;
    CDSVtaRubro: TClientDataSet;
    DSPVtaRubro: TDataSetProvider;
    pnTop: TPanel;
    Label2: TLabel;
    spAnio: TSpinEdit;
    DSVtaRubro: TDataSource;
    CDSVtaRubroSUCURSAL: TIntegerField;
    CDSVtaRubroMES: TSmallintField;
    CDSVtaRubroCODIGO_RUBRO: TStringField;
    CDSVtaRubroDETALLE_RUBRO: TStringField;
    CDSVtaRubroTOTAL: TFloatField;
    DSPSucursales: TDataSetProvider;
    CDSSucursales: TClientDataSet;
    CDSSucursalesCODIGO: TIntegerField;
    CDSSucursalesDETALLE: TStringField;
    DSSucursal: TDataSource;
    RxLabel3: TJvLabel;
    cbSucursal: TJvDBLookupCombo;
    PageControl1: TPageControl;
    Pag1: TTabSheet;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    Panel1: TPanel;
    cxPropertiesStore1: TcxPropertiesStore;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    SaveDialog: TSaveDialog;
    QVtaRubro: TFDQuery;
    JvFormStorage: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    CDSVtaRubroNOMBRESUCURSAL: TStringField;
    Panel2: TPanel;
    btExcelAnual: TBitBtn;
    BitBtn1: TBitBtn;
    btBuscarVtas: TBitBtn;
    TabSheet1: TTabSheet;
    DBCrossTabSource2: TDBCrossTabSource;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    procedure btBuscarVtasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure btExcelAnualClick(Sender: TObject);
    procedure CDSVtaRubroMESGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure spAnioKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure spAnioChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormResumenVtaRubro_Sub_Anual: TFormResumenVtaRubro_Sub_Anual;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormResumenVtaRubro_Sub_Anual.BitBtn1Click(Sender: TObject);
begin
 dxComponentPrinter1Link1.Preview(True);
end;

procedure TFormResumenVtaRubro_Sub_Anual.btBuscarVtasClick(Sender: TObject);
var col:integer;
r:Integer;
c,i: Integer;
begin
  Screen.Cursor:=crHourGlass;
  CDSVtaRubro.Close;
  CDSVtaRubro.Params.ParamByName('anio').Value:=spAnio.Value;
  CDSVtaRubro.Params.ParamByName('suc').Value :=cbSucursal.KeyValue;
  CDSVtaRubro.Open;
  CDSVtaRubro.First;

  CDSVtaRubro.First;

  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
  Screen.Cursor:=crDefault;

end;


procedure TFormResumenVtaRubro_Sub_Anual.btExcelAnualClick(Sender: TObject);
begin
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  SaveDialog.FileName:='DetallesVtasAnual';
  SaveDialog.DefaultExt:='XLS';
  if SaveDialog.Execute Then
    if SaveDialog.FileName<>''Then
      begin
        cxExportPivotGridToExcel(SaveDialog.FileName+'.'+SaveDialog.DefaultExt, cxDBPivotGrid1);
        if VirtualUI.Active then
          begin
            VirtualUI.StdDialogs:=False;
            VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
          end;
      end;
end;

procedure TFormResumenVtaRubro_Sub_Anual.CDSVtaRubroMESGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 case Sender.Value of
    1:Text :='Enero';
    2:Text :='Febrero';
    3:Text :='Marzo';
    4:Text :='Abril';
    5:Text :='Mayo';
    6:Text :='Junio';
    7:Text :='Julio';
    8:Text :='Agosto';
    9:Text :='Septiembre';
    10:Text:='Octubre';
    11:Text:='Noviembre';
    12:Text:='Diciembre';

  end;
end;

procedure TFormResumenVtaRubro_Sub_Anual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormResumenVtaRubro_Sub_Anual.FormCreate(Sender: TObject);
begin
  CDSSucursales.Close;
  CDSSucursales.Open;
  AutoSize           := False;
  cbSucursal.KeyValue:= CDSSucursalesCODIGO.Value;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
end;

procedure TFormResumenVtaRubro_Sub_Anual.FormDestroy(Sender: TObject);
begin
  FormResumenVtaRubro_Sub_Anual:=nil;
end;

procedure TFormResumenVtaRubro_Sub_Anual.FormShow(Sender: TObject);
var y,m,d:word;
col:integer;
begin
  DecodeDate(date,y,m,d);
  spAnio.Value:=y;

  DecodeDate(date,y,m,d);
  spAnio.Value:=y;
end;




procedure TFormResumenVtaRubro_Sub_Anual.Panel1DblClick(Sender: TObject);
begin
  frxReport1.DesignReport();
end;


procedure TFormResumenVtaRubro_Sub_Anual.spAnioChange(Sender: TObject);
var col:integer;
r:Integer;
c,i: Integer;
begin
  if FormResumenVtaRubro_Sub_Anual<>nil then
    begin
      Screen.Cursor:=crHourGlass;
      CDSVtaRubro.Close;
      CDSVtaRubro.Params.ParamByName('anio').Value:=spAnio.Value;
      CDSVtaRubro.Params.ParamByName('suc').Value :=cbSucursal.KeyValue;
      CDSVtaRubro.Open;
      CDSVtaRubro.First;

      CDSVtaRubro.First;

      for i:=0 to cxDBPivotGrid1.FieldCount-1 do
        cxDBPivotGrid1.Fields[i].ExpandAll;
      Screen.Cursor:=crDefault;

    end;
end;

procedure TFormResumenVtaRubro_Sub_Anual.spAnioKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var col:integer;
r:Integer;
c,i: Integer;
begin
  if FormResumenVtaRubro_Sub_Anual<>nil then
    begin
      Screen.Cursor:=crHourGlass;
      CDSVtaRubro.Close;
      CDSVtaRubro.Params.ParamByName('anio').Value:=spAnio.Value;
      CDSVtaRubro.Params.ParamByName('suc').Value :=cbSucursal.KeyValue;
      CDSVtaRubro.Open;
      CDSVtaRubro.First;

      CDSVtaRubro.First;

      for i:=0 to cxDBPivotGrid1.FieldCount-1 do
        cxDBPivotGrid1.Fields[i].ExpandAll;
      Screen.Cursor:=crDefault;


    end;
end;

end.
