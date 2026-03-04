unit UPagosPersonalAnual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, frxCross, frxClass, frxExportPDF, DBClient, Provider,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses,
  cxCustomData, cxStyles, cxEdit, dxSkinsCore, dxSkinOffice2007Black, cxCalc,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxSkinscxPCPainter, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxPivotGridLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxPSCore, dxPScxCommon, SqlExpr, cxCustomPivotGrid, cxDBPivotGrid,DateUtils,
  JvExControls, JvDBLookup, StdCtrls, Buttons, Spin, ExtCtrls, ComCtrls, cxExportPivotGridLink,
  Grids, DBGrids, cxLabel, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxPScxVGridLnk, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxSkinsdxRibbonPainter,VirtualUI_SDK,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxBarBuiltInMenu, System.Actions, Vcl.ActnList, CalcEdit,
  Vcl.Mask, AdvSpin;

type
  TFormPagosPersonalAnual = class(TForm)
    pcVentas: TPageControl;
    pag1: TTabSheet;
    pnCabecera: TPanel;
    Label1: TLabel;
    DSPPagos: TDataSetProvider;
    CDSPagos: TClientDataSet;
    CDSPagosCODIGO: TStringField;
    CDSPagosNOMBREEMPLEAD: TStringField;
    CDSPagosNOMBRECATEGORIA: TStringField;
    CDSPagosMES: TIntegerField;
    chbActivos: TCheckBox;
    DSSucursal: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    dbcSucursal: TJvDBLookupCombo;
    Label5: TLabel;
    DSPagos: TDataSource;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    CDSPagosNOMBRECPBTE: TStringField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    SaveDialog: TSaveDialog;
    QPagos: TFDQuery;
    CDSPagosTOTAL_PERSONAL: TFloatField;
    Panel1: TPanel;
    btSalirVentas: TBitBtn;
    btBuscarVtas: TBitBtn;
    btExcelAnual: TBitBtn;
    BitBtn1: TBitBtn;
    ActionList1: TActionList;
    Buscar: TAction;
    AdvSpinEdit1: TAdvSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btSalirVentasClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CDSPagosMESGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btExcelAnualClick(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure AdvSpinEdit1Click(Sender: TObject);
    procedure AdvSpinEdit1DownClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPagosPersonalAnual: TFormPagosPersonalAnual;

const Meses: array [1..12] of string = ('Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre');


implementation

uses UGrafico, UDMain_FD;

{$R *.dfm}


procedure TFormPagosPersonalAnual.AdvSpinEdit1Click(Sender: TObject);
begin
  Buscar.Execute;
end;

procedure TFormPagosPersonalAnual.AdvSpinEdit1DownClick(Sender: TObject);
begin
  Buscar.Execute;
end;

procedure TFormPagosPersonalAnual.BitBtn1Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.Preview(True);
end;



procedure TFormPagosPersonalAnual.btExcelAnualClick(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSPagos.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='Pagos';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.FileName<>'' then
        begin
          if VirtualUI.Active then
            cxExportPivotGridToExcel(SaveDialog.FileName+'.'+SaveDialog.DefaultExt, cxDBPivotGrid1)
          else
            cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);

          if VirtualUI.Active then
            begin
              VirtualUI.StdDialogs:=False;
              VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
            end;
        end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormPagosPersonalAnual.btSalirVentasClick(Sender: TObject);
begin
  Close;
end;


procedure TFormPagosPersonalAnual.BuscarExecute(Sender: TObject);
var i:Integer;
begin
  Screen.Cursor:=crHourGlass;
  CDSPagos.Close;
  CDSPagos.Params.ParamByName('Anio').Value:=AdvSpinEdit1.Value;// SpinEdit1.Value;
  if chbActivos.Checked then
    CDSPagos.Params.ParamByName('activo').Value:=1
  else
    CDSPagos.Params.ParamByName('activo').Value:=-1;

  CDSPagos.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSPagos.Open;
  CDSPagos.First;
  Screen.Cursor:=crDefault;
  for i:= 0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
end;

procedure TFormPagosPersonalAnual.CDSPagosMESGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  case Sender.AsInteger of
    1:Text:='Enero';
    2:Text:='Febrero';
    3:Text:='Marzo';
    4:Text:='Abril';
    5:Text:='Mayo';
    6:Text:='Junio';
    7:Text:='Julio';
    8:Text:='Agosto';
    9:Text:='Septiembre';
    10:Text:='Octubre';
    11:Text:='Noviembre';
    12:Text:='Diciembre';
  end;
end;



procedure TFormPagosPersonalAnual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSSucursal.Close;
  Action:=caFree;
end;

procedure TFormPagosPersonalAnual.FormCreate(Sender: TObject);
begin
  CDSSucursal.Open;
  pcVentas.Align      := alClient;
end;

procedure TFormPagosPersonalAnual.FormDestroy(Sender: TObject);
begin
  FormpagosPersonalAnual:=nil;
end;

procedure TFormPagosPersonalAnual.FormShow(Sender: TObject);
var y,d,m:Word;
begin
  AdvSpinEdit1.Value:=YearOf(Date);
end;



end.
