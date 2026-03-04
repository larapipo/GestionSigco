UNIT UInformeVta;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, FMTBcd, Provider, DBClient, SqlExpr, frxClass, frxDBSet,
  JvExMask, JvToolEdit, JvExControls, JvDBLookup, ComCtrls, StdCtrls, Mask,
  DBCtrls, ExtCtrls, Buttons, JvLabel, JvGradient,IniFiles, Librerias, Grids,
  DBGrids, JvBaseEdits, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  dxSkinsCore, dxSkinOffice2007Black, dxSkinscxPCPainter, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxNavigator, dxSkinBlack,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, frCoreClasses;

TYPE
  TFormInformeVta = CLASS(TForm)
    Panel1: TPanel;
    DSInfVta: TDataSource;
    btIniciar: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    BitBtn2: TBitBtn;
    GroupBox3: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    UpDown1: TUpDown;
    Bevel1: TBevel;
    Bevel2: TBevel;
    frxReporte: TfrxReport;
    frDBInf: TfrxDBDataset;
    btImprimir: TBitBtn;
    lbTotalVenta: TLabel;
    lbTotalCompra: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    DSBuscaSucu: TDataSource;
    GroupBox4: TGroupBox;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    GroupBox5: TGroupBox;
    Label23: TLabel;
    DBEdit23: TDBEdit;
    Label24: TLabel;
    DBEdit24: TDBEdit;
    Label25: TLabel;
    DBEdit25: TDBEdit;
    Panel2: TPanel;
    GroupBox6: TGroupBox;
    Label26: TLabel;
    DBEdit26: TDBEdit;
    Label27: TLabel;
    DBEdit27: TDBEdit;
    Label28: TLabel;
    DBEdit28: TDBEdit;
    Label29: TLabel;
    DBEdit29: TDBEdit;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    DSIvaCompra: TDataSource;
    DSIvaVta: TDataSource;
    CDSIvaCompra: TClientDataSet;
    DSPIvaCompra: TDataSetProvider;
    CDSIvaVta: TClientDataSet;
    DSPIvaVta: TDataSetProvider;
    dbgIvaCompra: TDBGrid;
    dbgIvaVta: TDBGrid;
    CDSIvaCompraDETALLE: TStringField;
    CDSIvaVtaDETALLE: TStringField;
    edIvaCompra: TJvCalcEdit;
    edIvaVta: TJvCalcEdit;
    edTotalIva: TJvCalcEdit;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    CDSIvaVtaTIPOCPBTE: TStringField;
    CDSIvaCompraTIPOCPBTE: TStringField;
    Button3: TButton;
    rgIVA: TRadioGroup;
    edTotalNetosVta: TJvCalcEdit;
    Bevel3: TBevel;
    Bevel4: TBevel;
    edTotalNetoCompra: TJvCalcEdit;
    DSRetenciones: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRASUC: TcxGridDBColumn;
    cxGrid1DBTableView1IMPUESTO: TcxGridDBColumn;
    Label33: TLabel;
    DBEdit30: TDBEdit;
    chRetenciones: TCheckBox;
    CDSIvaVtaDETALLE_OPERACION: TStringField;
    CDSIvaCompraDETALLE_OPERACION: TStringField;
    chPercepciones: TCheckBox;
    CDSIvaCompraIMPUESTO: TStringField;
    JvLabel1: TJvLabel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    QBuscaSuc: TFDQuery;
    QBuscaSucCODIGO: TIntegerField;
    QBuscaSucDETALLE: TStringField;
    QBuscaSucDIRECCION: TStringField;
    QBuscaSucLOCALIDAD: TStringField;
    QBuscaSucTELEFONO1: TStringField;
    QBuscaSucTELEFONO2: TStringField;
    QBuscaSucRECARGO: TFloatField;
    QBuscaSucAPLICA_PERCEPCION_IIBB: TStringField;
    QBuscaSucGENERA_XML_COMUN: TStringField;
    QBuscaSucHOST: TStringField;
    QBuscaSucCERTIFICADO_ELEC: TStringField;
    QBuscaSucCUIT: TStringField;
    QBuscaSucRAZONSOCIAL: TStringField;
    QInfVta: TFDQuery;
    QInfVtaTOTAL_COMP_FC: TFloatField;
    QInfVtaTOTAL_COMP_NC: TFloatField;
    QInfVtaTOTAL_COMP_ND: TFloatField;
    QInfVtaTOTAL_COMP_FO: TFloatField;
    QInfVtaTOTAL_VTA_FC: TFloatField;
    QInfVtaTOTAL_VTA_NC: TFloatField;
    QInfVtaTOTAL_VTA_ND: TFloatField;
    QInfVtaTOTAL_VTA_FO: TFloatField;
    QInfVtaTOTAL_VTA_RC: TFloatField;
    QInfVtaTOTAL_VTA_OP: TFloatField;
    QInfVtaTOTAL_IVA_CREDITOFISCAL: TFloatField;
    QInfVtaTOTAL_IVA_DEBITOFISCAL: TFloatField;
    QInfVtaTOTAL_VTA_NETO_GRAVADO: TFloatField;
    QInfVtaTOTAL_VTA_NETO_EXENTO: TFloatField;
    QInfVtaTOTAL_IB_CREDITO: TFloatField;
    QInfVtaTOTAL_IB_DEBITO: TFloatField;
    QInfVtaTOTAL_COMP_NETO_GRAVADO: TFloatField;
    QInfVtaTOTAL_PERCP_IVA: TFloatField;
    QInfVtaTOTAL_COMP_NETO_EXENTO: TFloatField;
    QInfVtaTOTAL_GASTO_BCO: TFloatField;
    QInfVtaTOTAL_GASTO_BCO_IVA: TFloatField;
    QInfVtaTOTAL_GASTO_BCO_IIBB: TFloatField;
    QInfVtaTOTAL_GASTO_BCO_PERIVA: TFloatField;
    QInfVtaTOTAL_LIQ_TC: TFloatField;
    QInfVtaTOTAL_LIQ_TC_IVA: TFloatField;
    QInfVtaTOTAL_LIQ_TC_IIBB: TFloatField;
    QInfVtaTOTAL_LIQ_TC_PERIVA: TFloatField;
    QInfVtaTOTAL_RESUMEN_TC: TFloatField;
    QInfVtaTOTAL_RESUMEN_IVA_TC: TFloatField;
    QInfVtaTOTAL_RESUMEN_IIBB_TC: TFloatField;
    QInfVtaTOTAL_RETENCIONES_IVA: TFloatField;
    QRet: TFDQuery;
    QRetID_RETENCION: TIntegerField;
    QRetDETALLE: TStringField;
    QRetMUESTRASUC: TStringField;
    QRetIMPUESTO: TFloatField;
    QIvaCompra: TFDQuery;
    CDSIvaCompraTASA: TFloatField;
    CDSIvaCompraSUM: TFloatField;
    QIvaVta: TFDQuery;
    CDSIvaVtaTASA: TFloatField;
    CDSIvaVtaSUM: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btIniciarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure btImprimirClick(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure chRetencionesClick(Sender: TObject);
    procedure chPercepcionesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PrListados,PrDefault:Integer;
    SucursalPorDefecto:Integer;
    PrNomListados:String;
    procedure Sumar;

  END;

VAR
  FormInformeVta: TFormInformeVta;

IMPLEMENTATION

USES UDMain_FD,UFiltroComprobantesVenta;

{$R *.DFM}

procedure TFormInformeVta.Sumar;
begin
  edIvaVta.Value :=0;
  CDSIvaVta.First;
  CDSIvaVta.DisableControls;
  while Not(CDSIvaVta.Eof) do
    begin
      edIvaVta.Value:= edIvaVta.Value+ CDSIvaVtaSUM.AsFloat;
      CDSIvaVta.Next;
    end;
  CDSIvaVta.First;
  CDSIvaVta.EnableControls;

  edIvaCompra.Value :=0;
  CDSIvaCompra.First;
  CDSIvaCompra.DisableControls;
  while Not(CDSIvaCompra.Eof) do
    begin
      edIvaCompra.Value:= edIvaCompra.Value+ CDSIvaCompraSUM.AsFloat;
      CDSIvaCompra.Next;
    end;
  CDSIvaCompra.First;
  CDSIvaCompra.EnableControls;
  if chRetenciones.Checked then
    edTotalIva.Value := edIvaVta.Value - edIvaCompra.Value - QInfVtaTOTAL_RETENCIONES_IVA.AsFloat
  else
    edTotalIva.Value := edIvaVta.Value - edIvaCompra.Value;

end;



procedure TFormInformeVta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFormInformeVta.FormDestroy(Sender: TObject);
begin
  FormInformeVta:=nil;
end;

procedure TFormInformeVta.FormCreate(Sender: TObject);
VAR ArchivoIni:TIniFile;
begin
  AutoSize:=True;
  ArchivoIni        := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  SucursalPorDefecto:= ArchivoIni.ReadInteger('Sucursal', 'Sucursal',1);
  PrNomListados     := ArchivoIni.ReadString('Impresoras', 'Listados', '');
  ArchivoIni.Free;

end;

procedure TFormInformeVta.btIniciarClick(Sender: TObject);
var suc:integer;
begin
  suc:= dbcSucursal.KeyValue;
  QInfVta.Close;
  QInfVta.ParamByName('Sucursal').Value  := Suc;
  QInfVta.ParamByName('Desde').Value     := Desde.Date;
  QInfVta.Params.ParamByName('Hasta').Value     := Hasta.Date;
  case rgIVA.ItemIndex of
    0: QInfVta.ParamByName('iva').Value       := '*';
    1: QInfVta.ParamByName('iva').Value       := 'S';
    2: QInfVta.ParamByName('iva').Value       := 'N';
  end;

  QInfVta.Open;
  lbTotalVenta.Caption :=FormatFloat(',0.00',QInfVtaTOTAL_VTA_FC.AsFloat +
                                             QInfVtaTOTAL_VTA_ND.AsFloat +
                                             QInfVtaTOTAL_VTA_FO.AsFloat -
                                             QInfVtaTOTAL_VTA_NC.AsFloat);
  lbTotalCompra.Caption:=FormatFloat(',0.00',QInfVtaTOTAL_COMP_FC.AsFloat +
                                             QInfVtaTOTAL_COMP_ND.AsFloat +
                                             QInfVtaTOTAL_COMP_FO.AsFloat -
                                             QInfVtaTOTAL_COMP_NC.AsFloat);

  CDSIvaVta.Close;
  CDSIvaVta.Params.ParamByName('Sucursal').Value := Suc;
  CDSIvaVta.Params.ParamByName('Desde').Value    := Desde.Date;
  CDSIvaVta.Params.ParamByName('Hasta').Value    := Hasta.Date;
  CDSIvaVta.Open;

  CDSIvaCompra.Close;
  CDSIvaCompra.Params.ParamByName('Sucursal').Value   := Suc;
  CDSIvaCompra.Params.ParamByName('Desde').Value      := Desde.Date;
  CDSIvaCompra.Params.ParamByName('Hasta').Value      := Hasta.Date;
  CDSIvaCompra.Open;

  Sumar;

  edTotalNetosVta.Value   := QInfVtaTOTAL_VTA_NETO_GRAVADO.AsFloat+
                             QInfVtaTOTAL_VTA_NETO_EXENTO.AsFloat;

  edTotalNetoCompra.Value := QInfVtaTOTAL_COMP_NETO_GRAVADO.AsFloat+
                             QInfVtaTOTAL_COMP_NETO_EXENTO.AsFloat;

  QRet.Close;
  QRet.ParamByName('Codigo').Value:='******';
  QRet.ParamByName('FechaInicial').AsDate:=Desde.Date;
  QRet.ParamByName('FechaFinal').AsDate  :=Hasta.Date;
  QRet.ParamByName('Sucursal').Value     :=dbcSucursal.KeyValue;
  QRet.Open;
  dbgIvaCompra.Width := dbgIvaCompra.Width+1;
  dbgIvaCompra.Width := dbgIvaCompra.Width-1;

  dbgIvaVta.Width    := dbgIvaVta.Width+1;
  dbgIvaVta.Width    := dbgIvaVta.Width-1;

  //  cxGrid1DBTableView1DETALLE.Options.

 // if (rxceSucursal.Text<>'') and (Copy(Desde.Text, 1, 2)<>'  ') and (Copy(hasta.Text, 1, 2)<>'  ') Then
end;

procedure TFormInformeVta.Button3Click(Sender: TObject);
begin
if Not(Assigned(FormFiltroCpbtes)) then
    FormFiltroCpbtes:=TFormFiltroCpbtes.Create(Self);
  FormFiltroCpbtes.ShowModal;
end;



procedure TFormInformeVta.chPercepcionesClick(Sender: TObject);
begin
  CDSIvaCompra.Filter:='IMPUESTO <> ''PER'' ';
  CDSIvaCompra.Filtered:=Not(chPercepciones.Checked);
  sumar;
end;

procedure TFormInformeVta.chRetencionesClick(Sender: TObject);
begin
  Sumar;
end;

procedure TFormInformeVta.FormShow(Sender: TObject);
var d,m,y:word;
begin
//  rxceSucursal.Text:=IntToStr(SucursalPorDefecto);
//  QSucursal.Close;
//  QSucursal.ParamByName('id').value:=StrToInt(rxceSucursal.Text);
//  QSucursal.Open;
//  if Not(QSucursal.IsEmpty) Then
//    edSucursal.Text:=QSucursalDETALLE.Value;
//  QSucursal.Close;

  QBuscaSuc.Open;
  dbcSucursal.KeyValue := SucursalPorDefecto;
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  btIniciar.OnClick(Sender);
  Desde.SetFocus;
//  rxceSucursal.SetFocus;
end;

procedure TFormInformeVta.FormKeyPress(Sender: TObject; var Key: Char);
begin
 IF (Key = #13) and
    (NOT (ActiveControl IS Tbutton)) and
    (NOT (ActiveControl IS TJvComboEdit))
    THEN
    BEGIN
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    END;

end;

procedure TFormInformeVta.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormInformeVta.UpDown1Click(Sender: TObject;
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
  btIniciar.Click;
  //  Desde.SetFocus;

end;

procedure TFormInformeVta.btImprimirClick(Sender: TObject);
begin
 
  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;

  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoOperacionesRealizadas.fr3');
  frxReporte.Variables['Sucursal']:=''''+dbcSucursal.Text+'''';
  frxReporte.Variables['Desde']:=''''+Desde.Text+'''';
  frxReporte.Variables['Hasta']:=''''+Hasta.Text+'''';

  // frCtaCte.PrepareReport;
  frxReporte.ShowReport;
end;

procedure TFormInformeVta.Panel1DblClick(Sender: TObject);
begin
  frxReporte.DesignReport;
end;

END.