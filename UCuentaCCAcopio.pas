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
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, AdvSmoothButton,
  dxSkinWXI, Vcl.DBCtrls, JvDBLookup, AdvOfficeButtons, AdvGroupBox;

type
  TFormCTaCteAcopio = class(TFormABMBase)
    QDeduaAcopio: TFDQuery;
    CDSDeudaAcopio: TClientDataSet;
    DSDeudaAcopio: TDataSource;
    DSPDeudaAcopio: TDataSetProvider;
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
    QMercDet: TFDQuery;
    DSPMercDet: TDataSetProvider;
    CDSMercDet: TClientDataSet;
    DSMercDet: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Exportar: TAction;
    SaveDialog1: TSaveDialog;
    BExportar: TButton;
    dxComponentPrinter1Link2: TdxGridReportLink;
    Imprimir: TAction;
    BImprimir: TButton;
    QListasPrecios: TFDQuery;
    DSPListasPrecios: TDataSetProvider;
    CDSListasPrecios: TClientDataSet;
    DSListasPrecios: TDataSource;
    Panel2: TPanel;
    dbcListasPrecios: TJvDBLookupCombo;
    DSPCCC: TDataSetProvider;
    CDSCCC: TClientDataSet;
    DSCCC: TDataSource;
    SPTraerCCC: TFDStoredProc;
    dxComponentPrinter1Link3: TdxGridReportLink;
    CDSCCCTotal: TFloatField;
    CDSCCCSALDO_DEUDOR: TFloatField;
    CDSCCCNOMBRECLIENTE: TStringField;
    CDSCCCSALDO_ACREEDOR: TFloatField;
    CDSCCCCODIGOCLIENTE: TStringField;
    SPTraerCCCSALDO_DEUDOR: TFloatField;
    SPTraerCCCNOMBRECLIENTE: TStringField;
    SPTraerCCCSALDO_ACREEDOR: TFloatField;
    SPTraerCCCCODIGOCLIENTE: TStringField;
    SPTraerCCCSALDO_DEVOLUCIONES: TFloatField;
    CDSCCCSALDO_DEVOLUCIONES: TFloatField;
    QClientes: TFDQuery;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    CDSClientesCODIGO: TStringField;
    CDSClientesACTIVO: TStringField;
    SPTraerCCCCLIENTE_ACTIVO: TStringField;
    CDSCCCCLIENTE_ACTIVO: TStringField;
    QMercDetCODIGO_STK: TStringField;
    QMercDetDETALLE_STK: TStringField;
    QMercDetSALDO_ACREEDOR: TFloatField;
    QMercDetSALDO_DEUDOR: TFloatField;
    QMercDetDEVOLUCION: TFloatField;
    QMercDetSALDO_TOTAL: TFloatField;
    QMercDetSALDOVALORIZADO: TFloatField;
    CDSMercDetCODIGO_STK: TStringField;
    CDSMercDetDETALLE_STK: TStringField;
    CDSMercDetSALDO_ACREEDOR: TFloatField;
    CDSMercDetSALDO_DEUDOR: TFloatField;
    CDSMercDetDEVOLUCION: TFloatField;
    CDSMercDetSALDO_TOTAL: TFloatField;
    CDSMercDetSALDOVALORIZADO: TFloatField;
    DSPSuperCCC: TDataSetProvider;
    CDSSuperCCC: TClientDataSet;
    DSSuperCCC: TDataSource;
    CDSSuperCCCCODIGOCLIENTE: TStringField;
    CDSSuperCCCCODIGOARTICULO: TStringField;
    CDSSuperCCCSALDO_ACREEDOR: TFloatField;
    CDSSuperCCCSALDO_DEUDOR: TFloatField;
    CDSSuperCCCSALDO_DEVOLUCIONES: TFloatField;
    CDSSuperCCCNOMBRE: TStringField;
    CDSSuperCCCDETALLE_STK: TStringField;
    QSuperCCC: TFDQuery;
    QSuperCCCCODIGOCLIENTE: TStringField;
    QSuperCCCNOMBRE: TStringField;
    QSuperCCCCODIGOARTICULO: TStringField;
    QSuperCCCDETALLE_STK: TStringField;
    QSuperCCCSALDO_ACREEDOR: TFloatField;
    QSuperCCCSALDO_DEUDOR: TFloatField;
    QSuperCCCSALDO_DEVOLUCIONES: TFloatField;
    QSuperCCCSALDOVALORIZADO: TFloatField;
    CDSSuperCCCSALDOVALORIZADO: TFloatField;
    CDSSuperCCCTotalCliente: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CLIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1ACOPIO: TcxGridDBColumn;
    cxGrid1DBTableView1ENTREGAS: TcxGridDBColumn;
    cxGrid1DBTableView1DEVOLUCION: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    TabSheet2: TTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1CODIGO_STK: TcxGridDBColumn;
    cxGrid2DBTableView1DETALLE_STK: TcxGridDBColumn;
    cxGrid2DBTableView1SALDO_ACREEDOR: TcxGridDBColumn;
    cxGrid2DBTableView1SALDO_DEUDOR: TcxGridDBColumn;
    cxGrid2DBTableView1DEVOLUCION: TcxGridDBColumn;
    cxGrid2DBTableView1SALDO_TOTAL: TcxGridDBColumn;
    cxGrid2DBTableView1SALDOVALORIZADO: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    CtaCCConsolidada: TTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1CODIGOCLIENTE: TcxGridDBColumn;
    cxGridDBTableView1NOMBRECLIENTE: TcxGridDBColumn;
    cxGridDBTableView1SALDO_ACREEDOR: TcxGridDBColumn;
    cxGridDBTableView1SALDO_DEUDOR: TcxGridDBColumn;
    cxGridDBTableView1SALDO_DEVOLUCIONES: TcxGridDBColumn;
    cxGridDBTableView1Total: TcxGridDBColumn;
    cxGridDBTableView1CLIENTE_ACTIVO: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxStyle2: TcxStyle;
    Panel3: TPanel;
    Panel4: TPanel;
    chbInactivos: TAdvOfficeCheckBox;
    chgFiltroMercaderia: TAdvOfficeRadioGroup;
    chgConsolidado: TAdvOfficeRadioGroup;
    Splitter1: TSplitter;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure VerAcopioExecute(Sender: TObject);
    procedure VerCtaCteExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExportarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure CDSCCCCalcFields(DataSet: TDataSet);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure chbInactivosClick(Sender: TObject);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure AdvOfficeCheckBox1Click(Sender: TObject);
    procedure chgFiltroMercaderiaClick(Sender: TObject);
    procedure chgConsolidadoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCTaCteAcopio: TFormCTaCteAcopio;

implementation

{$R *.dfm}
uses  UCtaCteVta, UConsolidacionAcopioRtos, UDMain_FD;
procedure TFormCTaCteAcopio.AdvOfficeCheckBox1Click(Sender: TObject);
begin
  inherited;
  CDSCCC.filtered:=chbInactivos.Checked;
end;

procedure TFormCTaCteAcopio.chgFiltroMercaderiaClick(Sender: TObject);
begin
  inherited;
  CDSMercDet.Filtered:=false;

  case chgFiltroMercaderia.ItemIndex of
    1: begin
      CDSMercDet.filter:='SALDOVALORIZADO>0';
      CDSMercDet.Filtered:=true;
    end;
    2:begin
      CDSMercDet.filter:='SALDOVALORIZADO<0';
      CDSMercDet.Filtered:=true;
    end;
  end;
end;

procedure TFormCTaCteAcopio.chgConsolidadoClick(Sender: TObject);
begin
  inherited;
  CDSCCC.Filtered:=false;
  case chgConsolidado.ItemIndex of
    1: begin
      CDSCCC.filter:='Total>0';
      CDSCCC.Filtered:=true;
    end;
    2:begin
      CDSCCC.filter:='Total<0';
      CDSCCC.Filtered:=true;
    end;
  end;
end;

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

  If DBCListasPrecios.KeyValue > 0 then
  begin

    CDSDeudaAcopio.Close;

    CDSDeudaAcopio.Open;

    CDSMercDet.close;
    CDSMercDet.Params.ParamByName('IDLISTAPRECIO').asInteger := DBCListasPrecios.KeyValue;

    CDSMercDet.open;

    CDSCCC.Close;
    CDSCCC.FetchParams;
    CDSCCC.Params.ParamByName('IDLISTAPRECIO').asInteger := DBCListasPrecios.KeyValue;
    CDSCCC.Open;


    CDSSuperCCC.Close;
    CDSSuperCCC.Params.ParamByName('IDLISTAPRECIO').AsInteger:=DBCListasPrecios.KeyValue;
    CDSSuperCCC.Open;


  end else
    ShowMessage('Seleccione Lista de precios e intente de nuevo.');

end;


procedure TFormCTaCteAcopio.chbInactivosClick(Sender: TObject);
begin
  inherited;
  CDSCCC.filtered:=chbInactivos.Checked;
end;



procedure TFormCTaCteAcopio.CDSCCCCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSCCCTotal.Value:= CDSCCCSALDO_DEVOLUCIONES.Value +  CDSCCCSaldo_Acreedor.Value - CDSCCCsaldo_deudor.value;
end;

procedure TFormCTaCteAcopio.cxGridDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  CDSSuperCCC.Filter := 'codigocliente=' + QuotedStr(CDSCCCCODIGOCLIENTE.AsString);
  CDSSuperCCC.Filtered := True;  // Apply the filter
end;

procedure TFormCTaCteAcopio.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;



  if AviewInfo.GridRecord.Values[cxGridDBTableView1CLIENTE_ACTIVO.Index] <>'S'  then
  Acanvas.Brush.Color:=clRed;


end;

procedure TFormCTaCteAcopio.cxGridDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  IF(FormConsolidacionAcopioRemitos=nil)then
  FormConsolidacionAcopioRemitos:=TFormConsolidacionAcopioRemitos.create(self);
  FormConsolidacionAcopioRemitos.show;
  FormConsolidacionAcopioRemitos.ceCliente.Text:=CDSCCCCODIGOCLIENTE.Value;
  FormConsolidacionAcopioRemitos.edNombreCliente.Text:=CDSCCCNOMBRECLIENTE.Value;
  FormConsolidacionAcopioRemitos.Buscar.Execute;
end;

procedure TFormCTaCteAcopio.ExportarExecute(Sender: TObject);
var CxGridE :tCxgrid;
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  if(pageControl1.ActivePage=TabSheet1) then
    begin
      SaveDialog1.FileName:='CCAcopios';
      CxGridE:=cxGrid1
    end
  else
    if(pageControl1.ActivePage=TabSheet2)  then
      begin
        SaveDialog1.FileName:='MercaderiasAcopiadas';
        CxGridE:=cxGrid2
      end
    else
      if(pageControl1.ActivePage=CtaCCConsolidada) then
        begin
          SaveDialog1.FileName:='CtaCteConsolidada';
          CxGridE:=cxGrid3
        end;
  SaveDialog1.DefaultExt:='xls';
  if VirtualUI.Active then
    SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  if SaveDialog1.Execute Then
   if SaveDialog1.FileName<>'' Then
     begin
       //if VirtualUI.Active then
         {if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
           SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt; }

       if VirtualUI.Active then
         cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName , CxGridE, True, true, False, 'xls')
       else
         cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName , CxGridE, True, true, False, 'xls');


       if VirtualUI.Active then
         VirtualUI.DownloadFile(SaveDialog1.FileName);
     end;
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
  DBCListasPrecios.KeyValue    :=0;
  AutoSize                     :=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  PageControl1.ActivePageIndex :=0;
  CDSListasPrecios.close;
  CDSListasPrecios.open;
  dbcListasPrecios.KeyValue:=DMMain_FD.ListaPorDefecto();
  CDSClientes.close;
  CDSClientes.open;
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
    if FormCTaCteAcopio.Width<>1000 then
      FormCTaCteAcopio.Width:=1000;

end;



procedure TFormCTaCteAcopio.ImprimirExecute(Sender: TObject);
begin
  inherited;
  //dxComponentPrinter1.preview
  if(pageControl1.ActivePage=TabSheet1) then
  dxComponentPrinter1.preview(true,dxComponentPrinter1Link1)
  else if (pageControl1.ActivePage=TabSheet2) then
   dxComponentPrinter1.preview(true,dxComponentPrinter1Link2)
   else if (pageControl1.ActivePage=CtaCCConsolidada) then
   dxComponentPrinter1.preview(true,dxComponentPrinter1Link3)

  //dxComponentPrinter1.Print(true,nil,nil);


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



