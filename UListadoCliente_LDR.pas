unit UListadoCliente_LDR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,System.StrUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ComCtrls,
  JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Datasnap.DBClient, Datasnap.Provider,VirtualUI_SDK,cxGridExportLink,
  dxPrnDev, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxCommon,
  dxPrnDlg, frxClass, frxDBSet, dxPScxPivotGridLnk, frCoreClasses, Vcl.Menus;

type
  TFormListadoClientes_LDR = class(TFormABMBase)
    Panel2: TPanel;
    QClientes: TFDQuery;
    QLdr: TFDQuery;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    DSClientes: TDataSource;
    DSPLdr: TDataSetProvider;
    CDSLdr: TClientDataSet;
    DSLdr: TDataSource;
    CDSLdrCODIGO_LDR: TIntegerField;
    CDSLdrNOMBRE: TStringField;
    CDSLdrDIRECCION: TStringField;
    CDSLdrCPOSTAL: TStringField;
    CDSLdrLOCALIDAD: TStringField;
    CDSLdrPROVINCIA: TIntegerField;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesTELEFONO_COMERCIAL_1: TStringField;
    CDSClientesTELEFONO_COMERCIAL_2: TStringField;
    CDSClientesTELEFONO_CELULAR: TStringField;
    CDSClientesCPOSTAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesCONDICION_IVA: TIntegerField;
    CDSClientesNRO_DE_CUIT: TStringField;
    CDSClientesOBSERVACIONES: TMemoField;
    CDSClientesFECHAALTA: TSQLTimeStampField;
    CDSClientesZONA: TIntegerField;
    CDSClientesVENDEDOR: TStringField;
    CDSClientesULTIMOPAGO: TSQLTimeStampField;
    CDSClientesLISTAPRECIOS: TIntegerField;
    CDSClientesCORREOELECTRONICO: TStringField;
    CDSClientesCORREOELECTRONICO_2: TStringField;
    CDSLdrCODIGO_CLIENTE: TStringField;
    ExportarExcel: TAction;
    dlgSave1: TSaveDialog;
    btExcel: TBitBtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1RAZON_SOCIAL: TcxGridDBColumn;
    cxGrid1DBTableView1DIRECCION_COMERCIAL: TcxGridDBColumn;
    cxGrid1DBTableView1LOCALIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1NRO_DE_CUIT: TcxGridDBColumn;
    cxGrid1DBTableView1ZONA: TcxGridDBColumn;
    cxGrid1DBTableView1VENDEDOR: TcxGridDBColumn;
    cxGrid1DBTableView1LISTAPRECIOS: TcxGridDBColumn;
    cxGrid1DBTableView1CORREOELECTRONICO: TcxGridDBColumn;
    cxGrid1DBTableView1CORREOELECTRONICO_2: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2CODIGO_CLIENTE: TcxGridDBColumn;
    cxGrid1DBTableView2CODIGO_LDR: TcxGridDBColumn;
    cxGrid1DBTableView2NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView2DIRECCION: TcxGridDBColumn;
    cxGrid1DBTableView2CPOSTAL: TcxGridDBColumn;
    cxGrid1DBTableView2LOCALIDAD: TcxGridDBColumn;
    cxGrid1DBTableView2PROVINCIA: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dxPrintDialog1: TdxPrintDialog;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    Imprimir: TAction;
    btImprimir: TBitBtn;
    Panel3: TPanel;
    JvDBStatusLabel1: TJvDBStatusLabel;
    frxReporte: TfrxReport;
    frxDBClientes: TfrxDBDataset;
    frxDBLdr: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Expandir: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ExportarExcelExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure frxReporteAfterPrintReport(Sender: TObject);
    procedure ExpandirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoClientes_LDR: TFormListadoClientes_LDR;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormListadoClientes_LDR.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSLdr.MasterFields    := '';
  CDSLdr.MasterSource    := nil;
  CDSLdr.IndexFieldNames := '';

  CDSClientes.Close;
  CDSClientes.Open;

  CDSLdr.Close;
  CDSLdr.Open;

  cxGrid1DBTableView1.ViewData.Expand(false)
end;

procedure TFormListadoClientes_LDR.ExpandirClick(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.ViewData.Expand(false)
end;

procedure TFormListadoClientes_LDR.ExportarExcelExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  dlgSave1.FileName:='Clientes_LDR';
  dlgSave1.DefaultExt:='xls';

  if VirtualUI.Active then
    dlgSave1.FileName:=dlgSave1.FileName+'.'+dlgSave1.DefaultExt;

  if dlgSave1.Execute Then
   if dlgSave1.FileName<>'' Then
     begin
       if VirtualUI.Active then
         if Not(AnsiEndsText( '.xls', dlgSave1.FileName )) Then
           DlgSave1.FileName:=dlgSave1.FileName+'.'+dlgSave1.DefaultExt;

       if VirtualUI.Active then
         cxGridExportLink.ExportGridToExcel(DlgSave1.FileName , cxGrid1,true,true,false,'xls')
       else
         cxGridExportLink.ExportGridToExcel(DlgSave1.FileName , cxGrid1,true,true,false,'xls');

       if VirtualUI.Active then
         begin
           VirtualUI.StdDialogs:=False;
           VirtualUI.DownloadFile(dlgSave1.FileName);
         end;
     end;
end;

procedure TFormListadoClientes_LDR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=TCloseAction.caFree;

end;

procedure TFormListadoClientes_LDR.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  
end;

procedure TFormListadoClientes_LDR.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoClientes_LDR:=nil;
end;

procedure TFormListadoClientes_LDR.frxReporteAfterPrintReport(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.ViewData.Expand(false)
end;

procedure TFormListadoClientes_LDR.ImprimirExecute(Sender: TObject);
begin
  inherited;
 // dxComponentPrinter1Link1.Preview(True)
  CDSLdr.MasterSource   := DSClientes;
  CDSLdr.IndexFieldNames:= 'CODIGO_CLIENTE';
  CDSLdr.MasterFields   := 'CODIGO';

  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\LstClientesLdr.fr3');

  frxReporte.ShowReport;
  CDSLdr.MasterSource   := nil;
  CDSLdr.MasterFields   := '';
  CDSLdr.IndexFieldNames:= '';

end;

procedure TFormListadoClientes_LDR.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;

end.
