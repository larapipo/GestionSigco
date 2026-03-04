unit ULstPlantillas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, DBClient, Provider, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles, cxEdit,
  cxCustomPivotGrid, cxDBPivotGrid, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCalc, cxCheckBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxGridCustomView,cxGridExportLink, cxGrid, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, dxPScxCommon, dxSkinsCore, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  JvAppStorage, JvAppIniStorage, System.Actions, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, CompBuscador,VirtualUI_SDK, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxPSStdGrLnk, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, cxCurrencyEdit,
  AdvGroupBox, AdvOfficeButtons, AdvDateTimePicker, Vcl.Mask, JvExMask,
  JvToolEdit;

type
  TFormLstPlantillas = class(TFormABMBase)
    DSPlantillas: TDataSource;
    DSPPlantillas: TDataSetProvider;
    CDSPlantillas: TClientDataSet;
    CDSPlantillasID: TIntegerField;
    CDSPlantillasDETALLE: TStringField;
    CDSPlantillasPRECIOS_CONIVA: TStringField;
    CDSPlantillasID_1: TIntegerField;
    CDSPlantillasID_CAB: TIntegerField;
    CDSPlantillasCODIGO: TStringField;
    CDSPlantillasDETALLE_1: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_1: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid1DBTableView1P_TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    SaveDialog1: TSaveDialog;
    BitBtn2: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    QPlantillas: TFDQuery;
    CDSPlantillasTOTAL: TFloatField;
    CDSPlantillasCANTIDAD: TFloatField;
    CDSPlantillasPRECIO: TFloatField;
    CDSPlantillasP_TOTAL: TFloatField;
    QPlantillaCliente: TFDQuery;
    QPlantillaClienteCODIGO: TStringField;
    QPlantillaClienteNOMBRE: TStringField;
    QPlantillaClienteRAZON_SOCIAL: TStringField;
    QPlantillaClienteVENDEDOR: TStringField;
    QPlantillaClienteNOMBREVENDEDOR: TStringField;
    QPlantillaClienteCOBRADOR: TStringField;
    QPlantillaClienteNOMBRECOBRADOR: TStringField;
    QPlantillaClienteZONA: TIntegerField;
    QPlantillaClienteMUESTRAZON: TStringField;
    QPlantillaClienteNRO_DE_CUIT: TStringField;
    QPlantillaClienteDETALLE: TStringField;
    QPlantillaClienteTOTAL: TFloatField;
    QPlantillaClienteMES_ABONOANUAL: TIntegerField;
    QPlantillaClienteMES_SEMESTRAL: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    DSPPlantillaCliente: TDataSetProvider;
    CDSPlantillaCliente: TClientDataSet;
    DSPlantillaCliente: TDataSource;
    CDSPlantillaClienteCODIGO: TStringField;
    CDSPlantillaClienteNOMBRE: TStringField;
    CDSPlantillaClienteRAZON_SOCIAL: TStringField;
    CDSPlantillaClienteVENDEDOR: TStringField;
    CDSPlantillaClienteNOMBREVENDEDOR: TStringField;
    CDSPlantillaClienteCOBRADOR: TStringField;
    CDSPlantillaClienteNOMBRECOBRADOR: TStringField;
    CDSPlantillaClienteZONA: TIntegerField;
    CDSPlantillaClienteMUESTRAZON: TStringField;
    CDSPlantillaClienteNRO_DE_CUIT: TStringField;
    CDSPlantillaClienteDETALLE: TStringField;
    CDSPlantillaClienteTOTAL: TFloatField;
    CDSPlantillaClienteMES_ABONOANUAL: TIntegerField;
    CDSPlantillaClienteMES_SEMESTRAL: TIntegerField;
    cxGrid2DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid2DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid2DBTableView1NOMBREVENDEDOR: TcxGridDBColumn;
    cxGrid2DBTableView1NOMBRECOBRADOR: TcxGridDBColumn;
    cxGrid2DBTableView1MUESTRAZON: TcxGridDBColumn;
    cxGrid2DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid2DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid2DBTableView1MES_ABONOANUAL: TcxGridDBColumn;
    cxGrid2DBTableView1MES_SEMESTRAL: TcxGridDBColumn;
    dxComponentPrinter1Link1: TdxGridReportLink;
    dxComponentPrinter1Link2: TdxGridReportLink;
    QPlantillaClienteCUENTA_OPERATIVA: TStringField;
    CDSPlantillaClienteCUENTA_OPERATIVA: TStringField;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    QPlantillaClienteFECHAALTA: TSQLTimeStampField;
    QPlantillaClienteFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    CDSPlantillaClienteFECHAALTA: TSQLTimeStampField;
    CDSPlantillaClienteFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    cxGrid2DBTableView1Column2: TcxGridDBColumn;
    cxGrid2DBTableView1Column3: TcxGridDBColumn;
    pnCabeceraControl: TPanel;
    rgModo: TAdvOfficeRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    edDesde: TJvDateEdit;
    edHasta: TJvDateEdit;
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CDSPlantillasPRECIOS_CONIVASetText(Sender: TField;
      const Text: string);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLstPlantillas: TFormLstPlantillas;

implementation

uses UPlantillas,UDMain_FD, UClientes_2;

{$R *.dfm}

procedure TFormLstPlantillas.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if PageControl1.ActivePageIndex=0 then
    begin
      if Not(CDSPlantillas.IsEmpty) Then
        if SaveDialog1.Execute then
          if SaveDialog1.FileName<>'' Then
            begin
              if VirtualUI.Active then
                cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt, cxGrid1)
              else
                cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName, cxGrid1);
             if VirtualUI.Active then
               begin
                 VirtualUI.StdDialogs:=False;
                 VirtualUI.DownloadFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt);
               end;
            end;
    end
  else
    if PageControl1.ActivePageIndex=1 then
      begin
        if Not(CDSPlantillas.IsEmpty) Then
          if SaveDialog1.Execute then
            if SaveDialog1.FileName<>'' Then
              begin
                if VirtualUI.Active then
                  cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt, cxGrid2)
                else
                  cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName, cxGrid2);
               if VirtualUI.Active then
                 begin
                   VirtualUI.StdDialogs:=False;
                   VirtualUI.DownloadFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt);
                 end;
              end;
      end;


end;

procedure TFormLstPlantillas.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePageIndex=0 then
    dxComponentPrinter1.CurrentLink:=dxComponentPrinter1Link1
  else
    if PageControl1.ActivePageIndex=1 then
      dxComponentPrinter1.CurrentLink:=dxComponentPrinter1Link2;

  dxComponentPrinter1.Preview(True);
end;

procedure TFormLstPlantillas.BuscarExecute(Sender: TObject);
var SQLText:String;
begin
//  inherited;
  SQLText:= 'select c.codigo,c.nombre,c.razon_social,c.vendedor,v.nombre as Nombrevendedor, c.cobrador,cb.nombre as NombreCobrador,'+
                   'c.zona,z.detalle as muestrazon, c.nro_de_cuit,p.detalle,p.total,c.mes_abonoanual,c.mes_semestral,c.CUENTA_OPERATIVA,'+
                   'c.fechaalta,c.fecha_incio_fc_abono from clientes c '+
             ' left join plantillas_cab p on p.id=c.id_plantilla '+
             ' left join personal v on v.codigo=c.vendedor '+
             ' left join personal cb on cb.codigo=c.cobrador '+
             ' left join zona z on z.id_zona=c.zona '+
               'where Not(c.id_plantilla is null) and ( c.id_plantilla>0 ) ';

  CDSPlantillas.Close;
  CDSPlantillas.Open;

  CDSPlantillaCliente.Close;
  case rgModo.ItemIndex of
    0:begin
        CDSPlantillaCliente.CommandText:=SQLText;
      end;
    1:begin
        CDSPlantillaCliente.CommandText:=SQLText+'and ( c.fecha_incio_fc_abono between '+QuotedStr ( FormatDateTime('mm/dd/yyyy',edDesde.Date)) + ' and ' +  QuotedStr( FormatDateTime('mm/dd/yyyy',edHasta.Date))+' )';
      end;
    2:begin
        CDSPlantillaCliente.CommandText:=SQLText+'and ( c.fechaalta between '+ QuotedStr ( FormatDateTime('mm/dd/yyyy',edDesde.Date)) + ' and ' + QuotedStr ( FormatDateTime('mm/dd/yyyy',edHasta.Date))+' )';
      end;
  end;
  CDSPlantillaCliente.Open;

  cxGrid2DBTableView1.ViewData.Expand(True);
  cxGrid1DBTableView1.ViewData.Expand(True);

end;

procedure TFormLstPlantillas.CDSPlantillasPRECIOS_CONIVASetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString := Text;
  CDSPlantillas.ApplyUpdates(0);
  Buscar.Execute;
end;

procedure TFormLstPlantillas.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormPlantillas)) then
    FormPlantillas:=TFormPlantillas.Create(Self);
  FormPlantillas.DatoNew:=CDSPlantillasID.AsString;
  FormPlantillas.Recuperar.Execute;
  FormPlantillas.Show;
  Buscar.Execute;
  
end;

procedure TFormLstPlantillas.cxGrid2DBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormClientes_2)) then
    FormClientes_2:=TFormClientes_2.Create(Self);
  FormClientes_2.DatoNew:=CDSPlantillaClienteCODIGO.Value;
  Formclientes_2.Recuperar.Execute;
  FormClientes_2.Show;
end;

procedure TFormLstPlantillas.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormLstPlantillas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFormLstPlantillas.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize := False;
  PageControl1.ActivePageIndex:=0;
  Buscar.Execute;
end;

procedure TFormLstPlantillas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLstPlantillas:=nil;
end;

end.
