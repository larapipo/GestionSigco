unit UCuentaCCAcopio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, Datasnap.Provider, Datasnap.DBClient,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, JvAppStorage, JvAppIniStorage,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList,
   System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  dxPScxPivotGridLnk,cxGridExportLink, CompBuscador, Vcl.Menus,VirtualUi_SDK,
  dxPScxVGridLnk, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList;

type
  TFormCTaCteAcopio = class(TFormABMBase)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QDeduaAcopio: TFDQuery;
    CDSDeudaAcopio: TClientDataSet;
    DSDeudaAcopio: TDataSource;
    DSPDeudaAcopio: TDataSetProvider;
    cxGrid1DBTableView1CLIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1ACOPIO: TcxGridDBColumn;
    cxGrid1DBTableView1ENTREGAS: TcxGridDBColumn;
    cxGrid1DBTableView1DEVOLUCION: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SaveDialog: TSaveDialog;
    PopupMenu1: TPopupMenu;
    VerAcopio: TAction;
    VerAcopio1: TMenuItem;
    VerCtaCte: TAction;
    VerCtaCte1: TMenuItem;
    CDSDeudaAcopioCLIENTE: TStringField;
    CDSDeudaAcopioNOMBRE: TStringField;
    CDSDeudaAcopioACOPIO: TFloatField;
    CDSDeudaAcopioENTREGAS: TFloatField;
    CDSDeudaAcopioDEVOLUCION: TFloatField;
    CDSDeudaAcopioSALDO: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure VerAcopioExecute(Sender: TObject);
    procedure VerCtaCteExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCTaCteAcopio: TFormCTaCteAcopio;

implementation

{$R *.dfm}
uses  UCtaCteVta, UConsolidacionAcopioRtos;
procedure TFormCTaCteAcopio.BitBtn1Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.Preview(True);
end;

procedure TFormCTaCteAcopio.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSDeudaAcopio.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='DetallesAcopiosCC';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              cxGridExportLink.ExportGridToExcel(SaveDialog.FileName+'.'+SaveDialog.DefaultExt, cxGrid1)
            else
              cxGridExportLink.ExportGridToExcel(SaveDialog.FileName, cxGrid1);
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

procedure TFormCTaCteAcopio.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSDeudaAcopio.Close;

  CDSDeudaAcopio.Open;
end;


procedure TFormCTaCteAcopio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormCTaCteAcopio.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormCTaCteAcopio.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCTaCteAcopio:=nil;
end;

procedure TFormCTaCteAcopio.FormResize(Sender: TObject);
begin
  inherited;
  if FormCTaCteAcopio<>nil then
    if FormCTaCteAcopio.Width<>789 then
      FormCTaCteAcopio.Width:=789;

end;

procedure TFormCTaCteAcopio.VerAcopioExecute(Sender: TObject);
var Enter:Char;
begin
  inherited;
  if CDSDeudaAcopioCLIENTE.AsString<>'' then
    begin
      Enter:=#13;
      if Not(Assigned(FormConsolidacionAcopioRemitos)) then
        FormConsolidacionAcopioRemitos:=TFormConsolidacionAcopioRemitos.Create(Self);
      FormConsolidacionAcopioRemitos.ceCliente.Text:=CDSDeudaAcopioCLIENTE.AsString;
      FormConsolidacionAcopioRemitos.ceClienteKeyPress(sender,Enter);
      FormConsolidacionAcopioRemitos.Show;
      FormConsolidacionAcopioRemitos.BringToFront;
    end;
end;

procedure TFormCTaCteAcopio.VerCtaCteExecute(Sender: TObject);
var Enter:Char;
begin
  inherited;
  if CDSDeudaAcopioCLIENTE.AsString<>'' then
    begin
      Enter:=#13;
      if not(Assigned(FormCtaCteVta)) then
        FormCtaCteVta:=TFormCtaCteVta.Create(Self);
      FormCtaCteVta.ceCliente.Text:=CDSDeudaAcopioCLIENTE.AsString;
      formCtaCteVta.ceClienteKeyPress(sender,Enter);
      FormCtaCteVta.Show;
      FormCtaCteVta.BringToFront;
    end;
end;

end.
