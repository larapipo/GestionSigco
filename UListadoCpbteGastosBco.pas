unit UListadoCpbteGastosBco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, DB, Grids, DBGrids, StdCtrls,   ComCtrls, Mask,
  DBClient, Provider, JvComponentBase,
  ImgList,   ActnList, JvExControls,
  JvGradient, Buttons, ToolWin, ExtCtrls,Librerias, JvExDBGrids, JvDBGrid,
  frxClass, frxDBSet, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  System.Actions, JvBaseEdits, JvToolEdit, JvExMask, JvAppStorage,
  JvAppIniStorage, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxClasses,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, AdvOfficeButtons, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  System.ImageList, frCoreClasses;

type
  TFormListadoCpbteGastoBco = class(TFormABMBase)
    DSPEmpresa: TDataSetProvider;
    CDSEmpresa: TClientDataSet;
    UpDown1: TUpDown;
    edNombreCta: TEdit;
    edNroCta: TEdit;
    edBanco: TEdit;
    DSDebitosBcoDet: TDataSource;
    DSDebitosBcoCab: TDataSource;
    BuscarCuenta: TAction;
    DSMov_Iva: TDataSource;
    DSMov_IIBB: TDataSource;
    DSMov_PerIVA: TDataSource;
    dbgIva: TDBGrid;
    dbgPerIva: TDBGrid;
    dbgIIBB: TDBGrid;
    dbgRetenciones: TDBGrid;
    DSRetenciones: TDataSource;
    frDBPerIva: TfrxDBDataset;
    frDBRetenciones: TfrxDBDataset;
    frDBIIBB: TfrxDBDataset;
    frDBIva: TfrxDBDataset;
    frDBDetalle: TfrxDBDataset;
    frxReporte: TfrxReport;
    btImprimir: TBitBtn;
    frDBCabecera: TfrxDBDataset;
    ceCtaBco: TJvComboEdit;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    VerComprobante: TAction;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel8: TJvLabel;
    RxLabel9: TJvLabel;
    QDebitosBcoCab: TFDQuery;
    QDebitosBcoCabID: TIntegerField;
    QDebitosBcoCabTIPOCPBTE: TStringField;
    QDebitosBcoCabCLASECPBTE: TStringField;
    QDebitosBcoCabID_CTA_CAJA: TIntegerField;
    QDebitosBcoCabCTA_CAJA: TStringField;
    QDebitosBcoCabID_BANCO: TIntegerField;
    QDebitosBcoCabBANCO: TStringField;
    QDebitosBcoCabNUMERO_CTA: TStringField;
    QDebitosBcoCabNROCPBTE: TStringField;
    QDebitosBcoCabTOTAL: TFloatField;
    QDebitosBcoCabTIPO: TStringField;
    QDebitosBcoCabCUIT: TStringField;
    QDebitosBcoCabSUCURSAL: TIntegerField;
    QDebitosBcoCabRAZONSOCIAL: TStringField;
    QDebitosBcoCabING_LIBROIVA: TStringField;
    QDebitosBcoCabCONTABILIZA: TStringField;
    QDebitosBcoCabMUESTRACTA: TStringField;
    QDebitosBcoCabMUESTRANROCTA: TStringField;
    QDebitosBcoCabMUESTRABANCO: TStringField;
    QBuscaCta: TFDQuery;
    ComBuscadorCta: TComBuscador;
    QBuscaCtaID_CUENTA: TIntegerField;
    QBuscaCtaID_TIPO_CTA: TIntegerField;
    QBuscaCtaNOMBRE: TStringField;
    QBuscaCtaNRO_CUENTA: TStringField;
    QBuscaCtaID_BANCO: TIntegerField;
    QBuscaCtaCUIT: TStringField;
    QBuscaCtaRAZONSOCIAL: TStringField;
    QCtaBco: TFDQuery;
    QCtaBcoID_CUENTA: TIntegerField;
    QCtaBcoID_TIPO_CTA: TIntegerField;
    QCtaBcoNOMBRE: TStringField;
    QCtaBcoNRO_CUENTA: TStringField;
    QCtaBcoID_BANCO: TIntegerField;
    QCtaBcoCUIT: TStringField;
    QCtaBcoRAZONSOCIAL: TStringField;
    QCtaBcoMUESTRABANCO: TStringField;
    pnCabecera: TPanel;
    QDebitosBcoDet: TFDQuery;
    QDebitosBcoDetCODIGO_CONCEPTO: TStringField;
    QDebitosBcoDetDETALLECONCEPTO: TStringField;
    QDebitosBcoDetDETALLE: TStringField;
    QDebitosBcoDetDEBE: TFloatField;
    QDebitosBcoDetHABER: TFloatField;
    QMov_Iva: TFDQuery;
    QMov_IvaID: TIntegerField;
    QMov_IvaID_GASTO_CAB: TIntegerField;
    QMov_IvaCODIGO_GRAVAMEN: TIntegerField;
    QMov_IvaDETALLE: TStringField;
    QMov_IvaNETO: TFloatField;
    QMov_IvaTASA: TFloatField;
    QMov_IvaIMPORTE: TFloatField;
    QMov_IIBB: TFDQuery;
    QMov_IIBBID: TIntegerField;
    QMov_IIBBCODIGO_PERCEPCION: TIntegerField;
    QMov_IIBBDETALLE: TStringField;
    QMov_IIBBID_GASTO_CAB: TIntegerField;
    QMov_IIBBNETO: TFloatField;
    QMov_IIBBTASA: TFloatField;
    QMov_IIBBIMPORTE: TFloatField;
    QMov_IIBBJURIDICION: TIntegerField;
    QMov_PerIVA: TFDQuery;
    QMov_PerIVAID: TIntegerField;
    QMov_PerIVACODIGO_PERCEPCION: TIntegerField;
    QMov_PerIVADETALLE: TStringField;
    QMov_PerIVAID_GASTOS_CAB: TIntegerField;
    QMov_PerIVANETO: TFloatField;
    QMov_PerIVATASA: TFloatField;
    QMov_PerIVAIMPORTE: TFloatField;
    QMov_PerIVACODIGOREGIMEN: TIntegerField;
    QRetenciones: TFDQuery;
    QRetencionesID_MOV_RETENCIONES: TIntegerField;
    QRetencionesID_RETENCION: TIntegerField;
    QRetencionesDETALLE: TStringField;
    QRetencionesTIPOCPBTE: TStringField;
    QRetencionesCLASECPBTE: TStringField;
    QRetencionesNROCPBTE: TStringField;
    QRetencionesID_CPBTE: TIntegerField;
    QRetencionesNRO_RETENCION: TStringField;
    QRetencionesIMPORTE: TFloatField;
    QRetencionesCODIGO_CLIENTE: TStringField;
    QRetencionesCUIT_CLIENTE: TStringField;
    QRetencionesJURIDICCION: TIntegerField;
    QRetencionesNOMBRE_CLIENTE: TStringField;
    cxGCabeceraDBTableView1: TcxGridDBTableView;
    cxGCabeceraLevel1: TcxGridLevel;
    cxGCabecera: TcxGrid;
    cxGCabeceraDBTableView1FECHA: TcxGridDBColumn;
    cxGCabeceraDBTableView1NUMERO_CTA: TcxGridDBColumn;
    cxGCabeceraDBTableView1NROCPBTE: TcxGridDBColumn;
    cxGCabeceraDBTableView1TOTAL: TcxGridDBColumn;
    cxGCabeceraDBTableView1MUESTRACTA: TcxGridDBColumn;
    cxGCabeceraDBTableView1MUESTRABANCO: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGDetalleDBTableView1: TcxGridDBTableView;
    cxGDetalleLevel1: TcxGridLevel;
    cxGDetalle: TcxGrid;
    cxGDetalleDBTableView1FECHA_INGRESO: TcxGridDBColumn;
    cxGDetalleDBTableView1CODIGO_CONCEPTO: TcxGridDBColumn;
    cxGDetalleDBTableView1DETALLE: TcxGridDBColumn;
    cxGDetalleDBTableView1DEBE: TcxGridDBColumn;
    cxGDetalleDBTableView1HABER: TcxGridDBColumn;
    QDebitosBcoCabFECHA: TSQLTimeStampField;
    QDebitosBcoCabFECHAFISCAL: TSQLTimeStampField;
    QDebitosBcoDetFECHA_INGRESO: TSQLTimeStampField;
    frxDBEmpresa: TfrxDBDataset;
    chTodas: TAdvOfficeCheckBox;
    QRetencionesFECHA: TSQLTimeStampField;
    QRetencionesFECHA_RETENCION: TSQLTimeStampField;
    procedure ceCtaBcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceCtaBcoKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarCuentaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chTodasClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure VerComprobanteExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QDebitosBcoCabAfterScroll(DataSet: TDataSet);
    procedure cxGCabeceraDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function AsignarCtaBco(dato:Integer):Boolean;
  end;

var
  FormListadoCpbteGastoBco: TFormListadoCpbteGastoBco;

implementation

uses  UGastosBancarios,UDMain_FD;

{$R *.dfm}


function TFormListadoCpbteGastoBco.AsignarCtaBco(dato:Integer):Boolean;
begin
  QCtaBco.Close;
  QCtaBco.ParamByName('id').AsInteger:=Dato;
  QCtaBco.Open;
  if not(QCtaBco.IsEmpty) Then
    begin
      Result:=True;
      ceCtaBco.Text      := inttostr(Dato);
      edNombreCta.Text   := QCtaBcoNOMBRE.Value;
      edBanco.Text       := QCtaBcoMUESTRABANCO.Value;
      edNroCta.Text      := QCtaBcoNRO_CUENTA.Value;
    end
  else
    begin
      Result:=False;
      ceCtaBco.Text      :='';
      edNombreCta.Text   := '';
      edBanco.Text       := '';
      edNroCta.Text      := '';
    end
end;


procedure TFormListadoCpbteGastoBco.btImprimirClick(Sender: TObject);
begin
  inherited;
  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;
  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoCpbteGastosBanco.fr3');
  frxReporte.Variables['Banco']:= ''''+edNombreCta.Text+'''';
  frxReporte.Variables['NroCta']:= ''''+edNroCta.Text+'''';
  frxReporte.Variables['Desde']:= ''''+DateToStr(Desde.Date)+'''';
  frxReporte.Variables['Hasta']:= ''''+DateToStr(Hasta.Date)+'''';
  frxReporte.PrintOptions.Copies := 1;
  frxReporte.ShowReport;
end;

procedure TFormListadoCpbteGastoBco.BuscarCuentaExecute(Sender: TObject);
begin
  inherited;
  QBuscaCta.Close;
  QBuscaCta.Open;
  comBuscadorCta.Execute;
  if comBuscadorCta.rOk Then
      begin
        AsignarCtaBco(comBuscadorCta.Id);
        Buscar.Execute;
      end;
  QBuscaCta.Close;
end;

procedure TFormListadoCpbteGastoBco.BuscarExecute(Sender: TObject);
begin
  inherited;
  QDebitosBcoCab.Close;
  QDebitosBcoCab.ParamByName('desde').AsDate := Desde.Date;
  QDebitosBcoCab.ParamByName('hasta').AsDate := Hasta.Date;
  if chTodas.Checked=False then
    QDebitosBcoCab.ParamByName('id').AsInteger := StrToInt(ceCtaBco.Text)
  else
    QDebitosBcoCab.ParamByName('id').AsInteger := -1;
  QDebitosBcoCab.Open;

  QDebitosBcoDet.Close;
  QDebitosBcoDet.ParamByName('id').AsInteger := QDebitosBcoCabID.Value;
  QDebitosBcoDet.Open;

  QMov_Iva.Close;
  QMov_Iva.ParamByName('id').AsInteger       := QDebitosBcoCabID.Value;
  QMov_Iva.Open;

  QMov_IIBB.Close;
  QMov_IIBB.ParamByName('id').AsInteger      := QDebitosBcoCabID.Value;
  QMov_IIBB.Open;

  QMov_PerIVA.Close;
  QMov_PerIVA.ParamByName('id').AsInteger    := QDebitosBcoCabID.Value;
  QMov_PerIVA.Open;

  QRetenciones.Close;
  QRetenciones.ParamByName('id').AsInteger   := QDebitosBcoCabID.Value;
  QRetenciones.Open;

 // Sumar;

end;


procedure TFormListadoCpbteGastoBco.ceCtaBcoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if (key=vk_delete) or (Key=VK_back) Then
    begin
      ceCtaBco.Text:='';
      edNombreCta.Text:='';
    end;
end;

procedure TFormListadoCpbteGastoBco.ceCtaBcoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if Key=#13 Then
    begin
     key:=#0;
      if Not(AsignarCtaBco(StrToInt(ceCtaBco.Text))) Then
        begin
          //QDebitosBco.Close;
          ceCtaBco.Text:='';
          ceCtaBco.SetFocus;
        end
      else
          Buscar.Execute;
     end;
end;

procedure TFormListadoCpbteGastoBco.chTodasClick(Sender: TObject);
begin
  inherited;
  if chTodas.Checked=False then
    begin
      ceCtaBco.Enabled    := True;
      ceCtaBco.Color      := clWindow;
    end
  else
    begin
      ceCtaBco.Enabled    := False;
      ceCtaBco.Color      := clBtnFace;
    end;
end;

procedure TFormListadoCpbteGastoBco.cxGCabeceraDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  VerComprobante.Execute;
end;

procedure TFormListadoCpbteGastoBco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
end;

procedure TFormListadoCpbteGastoBco.FormCreate(Sender: TObject);
begin
  inherited;
  CDSEmpresa.Open;
end;

procedure TFormListadoCpbteGastoBco.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoCpbteGastoBco:=nil;
end;

procedure TFormListadoCpbteGastoBco.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(A,M));
  Buscar.Execute;
end;

procedure TFormListadoCpbteGastoBco.QDebitosBcoCabAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  QDebitosBcoDet.Close;
  QDebitosBcoDet.ParamByName('id').AsInteger := QDebitosBcoCabID.Value;
  QDebitosBcoDet.Open;

  QMov_Iva.Close;
  QMov_Iva.ParamByName('id').AsInteger       := QDebitosBcoCabID.Value;
  QMov_Iva.Open;

  QMov_IIBB.Close;
  QMov_IIBB.ParamByName('id').AsInteger      := QDebitosBcoCabID.Value;
  QMov_IIBB.Open;

  QMov_PerIVA.Close;
  QMov_PerIVA.ParamByName('id').AsInteger    := QDebitosBcoCabID.Value;
  QMov_PerIVA.Open;

  QRetenciones.Close;
  QRetenciones.ParamByName('id').AsInteger   := QDebitosBcoCabID.Value;
  QRetenciones.Open;

end;

procedure TFormListadoCpbteGastoBco.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;

procedure TFormListadoCpbteGastoBco.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
begin
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

procedure TFormListadoCpbteGastoBco.VerComprobanteExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormMovEgr_IngBancos)) then
    FormMovEgr_IngBancos:=TFormMovEgr_IngBancos.Create(Self);
 FormMovEgr_IngBancos.DatoNew:=QDebitosBcoCabID.AsString;
 FormMovEgr_IngBancos.Recuperar.Execute;
  
end;

end.