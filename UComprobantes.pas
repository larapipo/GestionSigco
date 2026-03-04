UNIT UComprobantes;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList,
  ImgList, StdCtrls, Buttons, ToolWin,DBXCommon,
  ComCtrls, ExtCtrls, Provider, DBClient, DBCtrls, Mask,  Variants,
  JvExControls, JvGradient, ActnMan, ActnColorMaps, JvComponentBase,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit,
  JvDBLookup, Grids, DBGrids, JvExComCtrls, JvComCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxSkinsCore, dxSkinOffice2007Blue, dxSkinscxPCPainter,
  dxSkinOffice2007Black, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxNavigator, JvAppStorage,
  JvAppIniStorage, System.Actions, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, dxSkinWXI;
TYPE
  TFormComprobantes = CLASS(TFormABMBase)
    DSSucursal: TDataSource;
    OpenDialog: TOpenDialog;
    BuscaReporte: TAction;
    CDSSucursal: TClientDataSet;
    DSPSucursal: TDataSetProvider;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    Liberar: TAction;
    pcComprobantes: TJvPageControl;
    pagComprobantes: TTabSheet;
    pnComprobante: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    sbReporte: TSpeedButton;
    Label13: TLabel;
    Label14: TLabel;
    dbeCodigo: TDBEdit;
    dbeSiglas: TDBEdit;
    dbeDenominacion: TDBEdit;
    dbcTipoComprob: TDBLookupComboBox;
    dbcSucursal: TDBLookupComboBox;
    dbchAfectaLibroIva: TDBCheckBox;
    dbchAfectaCtaCte: TDBCheckBox;
    pnNumeracion: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    dbePrefijo: TDBEdit;
    dbeNumero: TDBEdit;
    pnEnumeraDesde: TPanel;
    Label9: TLabel;
    dbeMuestraComprob: TDBEdit;
    rxdbComprobante: TJvDBComboEdit;
    dbeletra: TDBEdit;
    dbchDesglozaIva: TDBCheckBox;
    dbrTipoComprobante: TDBRadioGroup;
    dbeCopias: TDBEdit;
    dbrNumeracion: TDBRadioGroup;
    dbeReporte: TDBEdit;
    dbchImprime: TDBCheckBox;
    grFiscal: TGroupBox;
    Label12: TLabel;
    dbchFiscal: TDBCheckBox;
    dbeImpresoraFiscal: TDBComboBox;
    dbeLineas: TDBEdit;
    dbcCalculaIva: TDBCheckBox;
    dbchPorDefecto: TDBCheckBox;
    dbcCaja: TDBLookupComboBox;
    dbchDivide: TDBCheckBox;
    pagFiscales: TTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    dbgFiscales: TDBGrid;
    dbcSucursales: TJvDBLookupCombo;
    Label15: TLabel;
    btCompFiscales: TBitBtn;
    CompFiscales: TAction;
    dbchEnUso: TDBCheckBox;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel5: TPanel;
    Label16: TLabel;
    dbcSucursal2: TJvDBLookupCombo;
    dbgElectronicos: TDBGrid;
    BitBtn1: TBitBtn;
    CompElect: TAction;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    btRepetidos: TBitBtn;
    TabSheet3: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btCompras: TBitBtn;
    TabSheet4: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    btVentas: TBitBtn;
    Label17: TLabel;
    dbcAjustes: TDBLookupComboBox;
    Label18: TLabel;
    Label19: TLabel;
    dbcCtroCosto: TDBLookupComboBox;
    AplicarCtroCosto: TAction;
    ToolButton1: TToolButton;
    spAsiganrCtroCostoGral: TSpeedButton;
    Memo1: TMemo;
    Label20: TLabel;
    dbcDeposito: TDBLookupComboBox;
    dbchEditaNro: TDBCheckBox;
    dbcCodAfip: TJvDBLookupCombo;
    DBEdit1: TDBEdit;
    Label21: TLabel;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1SUCURSALCOMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1LETRAFAC: TcxGridDBColumn;
    cxGrid1DBTableView1DENOMINACION: TcxGridDBColumn;
    cxGridDBTableView1DETALLE: TcxGridDBColumn;
    cxGridDBTableView1SUCURSAL: TcxGridDBColumn;
    cxGridDBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGridDBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGridDBTableView1LETRAFAC: TcxGridDBColumn;
    cxGridDBTableView1DENOMINACION: TcxGridDBColumn;
    DSPComprobantes: TDataSetProvider;
    CDSComprobantes: TClientDataSet;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesSUCURSAL: TIntegerField;
    CDSComprobantesLETRA: TStringField;
    CDSComprobantesPREFIJO: TStringField;
    CDSComprobantesNUMERARCION_PROPIA: TStringField;
    CDSComprobantesNUMERO: TStringField;
    CDSComprobantesTOMA_NRO_DE: TIntegerField;
    CDSComprobantesAFECTA_IVA: TStringField;
    CDSComprobantesAFECTA_CC: TStringField;
    CDSComprobantesDESGLOZA_IVA: TStringField;
    CDSComprobantesCOMPRA_VENTA: TStringField;
    CDSComprobantesCOPIAS: TIntegerField;
    CDSComprobantesREPORTE: TStringField;
    CDSComprobantesIMPRIME: TStringField;
    CDSComprobantesFISCAL: TStringField;
    CDSComprobantesNOMBREIMPRESORA: TStringField;
    CDSComprobantesPENDIENTEIMPRESION: TStringField;
    CDSComprobantesLINEAS_DETALLE: TSmallintField;
    CDSComprobantesCALCULA_IVA_ARTICULOS: TStringField;
    CDSComprobantesDEFECTO: TStringField;
    CDSComprobantesCAJA_DEFECTO: TIntegerField;
    CDSComprobantesDIVIDE_IVA: TStringField;
    CDSComprobantesEN_USO: TStringField;
    CDSComprobantesCODIGO_AFIP: TStringField;
    CDSComprobantesID_AJUSTECC: TIntegerField;
    CDSComprobantesCENTRO_COSTO: TIntegerField;
    CDSComprobantesFILTRO_COMPROBANTES: TStringField;
    CDSComprobantesDEPOSITO: TIntegerField;
    CDSComprobantesULTIMONRO: TIntegerField;
    CDSComprobantesEDITAR_NRO: TStringField;
    CDSComprobantesCONTROLADOR_NROREG: TStringField;
    CDSComprobantesUSAR_CAEA: TStringField;
    CDSComprobantesCAEA: TStringField;
    CDSComprobantesVENCIMIENTO_CAEA_DESDE: TSQLTimeStampField;
    CDSComprobantesVENCIMIENTO_CAEA_HASTA: TSQLTimeStampField;
    CDSComprobantesMUESTRADENOMINACION: TStringField;
    cbUsaCAEA: TDBCheckBox;
    chFacturaElectronica: TDBCheckBox;
    CDSComprobantesFACTURAELECTRONICA: TStringField;
    spAplicaCentroCostoVta: TFDStoredProc;
    AplicarCtroCostoVenta: TAction;
    spAplicaCtrCostoVta: TSpeedButton;
    pagTipos: TTabSheet;
    dbgTipoCpbte: TDBGrid;
    QTiposCpbtes: TFDQuery;
    DSTipoCpbte: TDataSource;
    QTiposCpbtesID_TIPO: TIntegerField;
    QTiposCpbtesDETALLE: TStringField;
    QTiposCpbtesSIGLA: TStringField;
    QTiposCpbtesDESGLOZA_IVA: TStringField;
    QTiposCpbtesAFECTA_CC: TStringField;
    QTiposCpbtesAFECTA_LIBRO_IVA: TStringField;
    QTiposCpbtesTIPO_DE_OPERACION: TStringField;
    GroupBox1: TGroupBox;
    CDSComprobantesREMITO_IMPRENTA: TStringField;
    CDSComprobantesREMITO_FECHA_RANGO: TStringField;
    CDSComprobantesREMITO_DIRECCION: TStringField;
    CDSComprobantesREMITO_CAI: TStringField;
    CDSComprobantesREMITO_VENCIMIENTO_CAI: TStringField;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    edImprenta: TDBEdit;
    cxDBTextEdit2: TDBEdit;
    cxDBTextEdit3: TDBEdit;
    cxDBTextEdit4: TDBEdit;
    cxDBTextEdit5: TDBEdit;
    QUltimoCodigo2CODIGO: TIntegerField;
    CDSComprobantesID_MONEDA_CPBTE: TIntegerField;
    Label27: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE FormDestroy(Sender: TObject);
    PROCEDURE rxdbComprobanteButtonClick(Sender: TObject);
    PROCEDURE CDSComprobantesTOMA_NRO_DESetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE AgregarExecute(Sender: TObject);
    PROCEDURE BuscarExecute(Sender: TObject);
    PROCEDURE ConfirmaExecute(Sender: TObject);
    PROCEDURE dbrNumeracionClick(Sender: TObject);
    procedure dbcTipoComprobClick(Sender: TObject);
    procedure BuscaReporteExecute(Sender: TObject);
    procedure dbchImprimeClick(Sender: TObject);
    procedure dbcTipoComprobEnter(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure dbrTipoComprobanteClick(Sender: TObject);
    procedure dbchFiscalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure LiberarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbcCajaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BorrarExecute(Sender: TObject);
    procedure CompFiscalesExecute(Sender: TObject);
    procedure dbgFiscalesEditButtonClick(Sender: TObject);
    procedure CompElectExecute(Sender: TObject);
    procedure dbgFiscalesDblClick(Sender: TObject);
    procedure dbgElectronicosDblClick(Sender: TObject);
    procedure btRepetidosClick(Sender: TObject);
    procedure btComprasClick(Sender: TObject);
    procedure btVentasClick(Sender: TObject);
    procedure dbcAjustesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AplicarCtroCostoExecute(Sender: TObject);
    procedure dbcDepositoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcSucursalEnter(Sender: TObject);
    procedure dbcAjustesEnter(Sender: TObject);
    procedure CDSComprobantesNewRecord(DataSet: TDataSet);
    procedure CDSComprobantesBeforePost(DataSet: TDataSet);
    procedure CDSComprobantesCOMPRA_VENTAChange(Sender: TField);
    procedure CDSComprobantesPREFIJOSetText(Sender: TField; const Text: string);
    procedure CDSComprobantesNUMEROSetText(Sender: TField; const Text: string);
    procedure CDSComprobantesReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CDSComprobantesFACTURAELECTRONICAGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure AplicarCtroCostoVentaExecute(Sender: TObject);
    procedure QTiposCpbtesAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    FUNCTION AsignarComprob(Dato: Integer): Boolean;
    function AbreComprob(Dato:string): Boolean;

    { Public declarations }
  END;

VAR
  FormComprobantes: TFormComprobantes;

IMPLEMENTATION

{$R *.DFM}
USES UBuscadorTipoComprobante, UDMain_FD, DMBuscadoresForm,
    DMStoreProcedureForm, UBuscadorCpbteNro, DMComprobantes;



function TFormComprobantes.AbreComprob(Dato: string) :Boolean;
begin
   DatoNew  :=  Dato;
   Recuperar.Execute;
   if not (CDSComprobantes.IsEmpty) then
     begin
       Modificar.Execute;
       //dbcCodAfip.SetFocus;
       Result  :=  True;
     end
   else
      Result  :=  False;

end;

procedure TFormComprobantes.AplicarCtroCostoExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;  // aplica a los comprobantes del punto de vta
  try
    DMStoreProcedure.spAplicaCtrCosto.Close;
    DMStoreProcedure.spAplicaCtrCosto.ParamByName('sucursal').Value    := CDSComprobantesSUCURSAL.Value;
    DMStoreProcedure.spAplicaCtrCosto.ParamByName('ctrocosto').Value   := CDSComprobantesCENTRO_COSTO.Value;
    DMStoreProcedure.spAplicaCtrCosto.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    DMStoreProcedure.spAplicaCtrCosto.Close;
    SHowMessage('Centro de Costo Ingresado');
  except
    DMMain_FD.fdcGestion.Rollback;
    SHowMessage('Centro de Costo No Ingresado ');

  end;
 // recuperar.Execute;
end;

procedure TFormComprobantes.AplicarCtroCostoVentaExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  if (CDSComprobantesCENTRO_COSTO.Value>-1) then
    begin
      try
        spAplicaCentroCostoVta.Close;
        spAplicaCentroCostoVta.ParamByName('id_comprobante').Value  := CDSComprobantesID_COMPROBANTE.Value;
        spAplicaCentroCostoVta.ParamByName('centrocosto').Value       := CDSComprobantesCENTRO_COSTO.Value;
        spAplicaCentroCostoVta.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        spAplicaCentroCostoVta.Close;
        SHowMessage('Centro de Costo Ingresado');
      except
        DMMain_FD.fdcGestion.Rollback;
        SHowMessage('Centro de Costo No Ingresado ');

      end;
    end;
end;

FUNCTION TFormComprobantes.AsignarComprob(dato: Integer): Boolean;
BEGIN
  DatosComprobantes.QComp.Close;
  DatosComprobantes.QComp.ParamByName('id').Value := dato;
  DatosComprobantes.QComp.Open;
  IF NOT (DatosComprobantes.QComp.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSComprobantesMUESTRADENOMINACION.Value := DatosComprobantes.QCompDENOMINACION.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSComprobantesMUESTRADENOMINACION.Value := '';
    END;
  DatosComprobantes.QComp.Close;
END;

PROCEDURE TFormComprobantes.FormCreate(Sender: TObject);
BEGIN
  INHERITED;
  SinBde:=2;
  if not(Assigned(DatosComprobantes)) then
    DatosComprobantes:=TDatosComprobantes.Create(self);
  DSBase.DataSet:=CDSComprobantes;

//  IF NOT (Assigned(DatosVentas)) THEN
//    DatosVentas := TDatosVentas.Create(Self);
//  DSBase.DataSet:=DatosVentas.CDSVentaCab;

  OpenDialog.InitialDir := DMMain_fd.PathReportesCpbte;

  AddClientDataSet(CDSComprobantes, DSPComprobantes);

  CDSSucursal.Open;
  DatosComprobantes.CDSDepositos.Open;
  DatosComprobantes.CDSTipoComprob.Open;
  DatosComprobantes.CDSCtaCaja.Close;
  DatosComprobantes.CDSCtaCaja.Open;
  DatosComprobantes.CDSBuscaSucu.Open;
  DatosComprobantes.CDSBuscaCompAfip.Open;
  DatosComprobantes.CDSBuscaAjustes.Open;
  DatosComprobantes.CDSBuscaCtro.Open;
  DatosComprobantes.QMonedas.Open;

  pagTipos.TabVisible := DMMain_FD.UsuarioActivo='master';
  CDSComprobantes.Open;
  QTiposCpbtes.Open;
  Tabla:='comprobantes';
  Campo:='id_comprobante';
  pcComprobantes.ActivePageIndex:=0;
END;

PROCEDURE TFormComprobantes.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  CDSComprobantes.Close;
  CDSSucursal.Close;
  DatosComprobantes.CDSTipoComprob.Close;
  DatosComprobantes.CDSCtaCaja.Close;
  DatosComprobantes.CDSBuscaSucu.Close;
  DatosComprobantes.CDSBuscaAjustes.Close;
  DatosComprobantes.CDSBuscaCtro.Close;
  QTiposCpbtes.Close;
  DatosComprobantes.QMonedas.Close;

  FreeAndNil(DatosComprobantes);
  INHERITED;

  Action := cafree;
END;

PROCEDURE TFormComprobantes.FormDestroy(Sender: TObject);
BEGIN
  INHERITED;
  FormComprobantes := NIL;
END;

PROCEDURE TFormComprobantes.rxdbComprobanteButtonClick(Sender: TObject);
BEGIN
  INHERITED;
  if Not(Assigned(FormBuscadorComprobNro)) then
    FormBuscadorComprobNro:=TFormBuscadorComprobNro.Create(self);
  FormBuscadorComprobNro.id:= CDSComprobantesID_COMPROBANTE.Value;
  if dbrTipoComprobante.ItemIndex=0 then
    FormBuscadorComprobNro.Tipo:= 'C'
  else
    if dbrTipoComprobante.ItemIndex=1 then
      FormBuscadorComprobNro.Tipo:= 'V';
  if (CDSComprobantesTIPO_COMPROB.Value='FC') or (CDSComprobantesTIPO_COMPROB.Value='FO')  or (CDSComprobantesTIPO_COMPROB.Value='TK') then
    begin
      FormBuscadorComprobNro.TipoCpbte1:= 'FC';
      FormBuscadorComprobNro.TipoCpbte2:= 'FO';
    end
  else
    begin
      FormBuscadorComprobNro.TipoCpbte1:= CDSComprobantesTIPO_COMPROB.Value;
      FormBuscadorComprobNro.TipoCpbte2:= CDSComprobantesTIPO_COMPROB.Value;
    end;
  FormBuscadorComprobNro.ShowModal;
  IF FormBuscadorComprobNro.ModalResult=mrOk THEN
    CDSComprobantesTOMA_NRO_DESetText(CDSComprobantesTOMA_NRO_DE,IntToStr(FormBuscadorComprobNro.id_out));
END;

procedure TFormComprobantes.CDSComprobantesBeforePost(DataSet: TDataSet);
begin
  inherited;
  IF CDSComprobantesNUMERARCION_PROPIA.AsString = 'S' THEN
    CDSComprobantesTOMA_NRO_DE.Clear
  ELSE IF CDSComprobantesNUMERARCION_PROPIA.AsString = 'N' THEN
    BEGIN
      CDSComprobantesPREFIJO.Clear;
      CDSComprobantesNUMERO.Clear;
    END
  ELSE IF CDSComprobantesNUMERARCION_PROPIA.AsString = 'X' THEN
    BEGIN
      CDSComprobantesTOMA_NRO_DE.Clear;
      CDSComprobantesPREFIJO.Clear;
      CDSComprobantesNUMERO.Clear;
    END;

end;

procedure TFormComprobantes.CDSComprobantesCOMPRA_VENTAChange(Sender: TField);
begin
  inherited;
  FormComprobantes.dbchDivide.Enabled:=(CDSComprobantesCOMPRA_VENTA.Value='V') and
                                       (CDSComprobantesTIPO_COMPROB.Value='FC');

end;

procedure TFormComprobantes.CDSComprobantesFACTURAELECTRONICAGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  cbUsaCAEA.Enabled:=CDSComprobantesFACTURAELECTRONICA.Value='S';
end;

procedure TFormComprobantes.CDSComprobantesNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSComprobantesAFECTA_IVA.Value            := 'N';
  CDSComprobantesAFECTA_CC.Value             := 'N';
  CDSComprobantesDESGLOZA_IVA.Value          := 'N';
  CDSComprobantesIMPRIME.Value               := 'S';
  CDSComprobantesNUMERARCION_PROPIA.Value    := 'S';
  CDSComprobantesCOMPRA_VENTA.Value          := 'V';
  CDSComprobantesPREFIJO.Value               := '';
  CDSComprobantesNUMERO.Value                := '';
  CDSComprobantesLETRA.Value                 := '';
  CDSComprobantesTOMA_NRO_DE.Clear;
  CDSComprobantesSUCURSAL.Clear;
  CDSComprobantesFISCAL.Value                := 'N';
  CDSComprobantesDEFECTO.Value               := 'S';
  CDSComprobantesPENDIENTEIMPRESION.Value    := 'N';
  CDSComprobantesNOMBREIMPRESORA.Value       := '';
  CDSComprobantesCALCULA_IVA_ARTICULOS.Value := 'S';
  CDSComprobantesCAJA_DEFECTO.Value          := -1;
  CDSComprobantesDIVIDE_IVA.Value            := 'N';
  CDSComprobantesFACTURAELECTRONICA.Value    := 'N';
  CDSComprobantesEN_USO.Value                := 'S';
  CDSComprobantesID_AJUSTECC.Value           := -1;
  CDSComprobantesLINEAS_DETALLE.Value        := 10;
  CDSComprobantesDEPOSITO.Value              := -1;
  CDSComprobantesEDITAR_NRO.Value            := 'N';
  CDSComprobantesCONTROLADOR_NROREG.Value    := '';
  CDSComprobantesCAEA.Value                  := '';
  CDSComprobantesUSAR_CAEA.Value             := 'N';
  CDSComprobantesCENTRO_COSTO.Value          := -1;

  CDSComprobantesVENCIMIENTO_CAEA_DESDE.Clear;
  CDSComprobantesVENCIMIENTO_CAEA_HASTA.Clear;

  CDSComprobantesREMITO_IMPRENTA.Value       := '';
  CDSComprobantesREMITO_FECHA_RANGO.Value    := '';
  CDSComprobantesREMITO_DIRECCION.Value      := '';
  CDSComprobantesREMITO_CAI.Value            := '';
  CDSComprobantesREMITO_VENCIMIENTO_CAI.Value:= '';

  CDSComprobantesID_MONEDA_CPBTE.Value       :=1;
end;

procedure TFormComprobantes.CDSComprobantesNUMEROSetText(Sender: TField; const Text: string);
begin
  inherited;
  Sender.AsString := Copy('00000000', 1, 8 - Length(Text)) + Text;
end;

procedure TFormComprobantes.CDSComprobantesPREFIJOSetText(Sender: TField; const Text: string);
begin
  inherited;
  Sender.AsString := Copy('0000', 1, 4 - Length(Text)) + Text;
end;

procedure TFormComprobantes.CDSComprobantesReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(e.Message);
end;

PROCEDURE TFormComprobantes.CDSComprobantesTOMA_NRO_DESetText(
  Sender: TField; CONST Text: STRING);
BEGIN
  INHERITED;
  IF (Text <> '') AND (Copy(Text, 1, 6) <> #$D#$A) THEN
    BEGIN
      Sender.AsString := Text;
      IF NOT (AsignarComprob(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Dato no Válido');
        END;
    END;
  IF Text = '' THEN
    Sender.AsString := '';
END;

PROCEDURE TFormComprobantes.AgregarExecute(Sender: TObject);
BEGIN
  dbeSiglas.Enabled  := True;
  dbeletra.Enabled   := True;
  dbcSucursal.Enabled:= True;
  INHERITED;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  IF NOT (QUltimoCodigo2.IsEmpty) THEN
    CDSComprobantesID_COMPROBANTE.Value := QUltimoCodigo2CODIGO.Value + 1
  ELSE
    CDSComprobantesID_COMPROBANTE.Value := 1;
  QUltimoCodigo2.Close;
  pnNumeracion.Enabled    := True;
  pnEnumeraDesde.Enabled  := False;
  dbePrefijo.Color        := clWhite;
  dbeNumero.Color         := clWhite;
  rxdbComprobante.Color   := clBtnFace;

  dbcTipoComprob.SetFocus;
//  dbeCodigo.SelectAll;

END;

PROCEDURE TFormComprobantes.BuscarExecute(Sender: TObject);
BEGIN
  INHERITED;
  if Not(Assigned(FormBuscadorComprobantes)) Then
    FormBuscadorComprobantes:=TFormBuscadorComprobantes.Create(Application);
  FormBuscadorComprobantes.ShowModal;
  if FormBuscadorComprobantes.id<>-1 Then
    begin
      DatoNew:=IntToStr(FormBuscadorComprobantes.id);
      Recuperar.Execute;
    end;
END;

procedure TFormComprobantes.CompElectExecute(Sender: TObject);
begin
  inherited;
  DatosComprobantes.CDSCompElec.Close;
  DatosComprobantes.CDSCompElec.Params.ParamByName('sucursal').Value:=dbcSucursal2.KeyValue;
  DatosComprobantes.CDSCompElec.Open;
end;

procedure TFormComprobantes.CompFiscalesExecute(Sender: TObject);
begin
  inherited;
  DatosComprobantes.CDSCompFiscales.Close;
  DatosComprobantes.CDSCompFiscales.Params.ParamByName('sucursal').Value:=dbcSucursales.KeyValue;
  DatosComprobantes.CDSCompFiscales.Open;
end;

PROCEDURE TFormComprobantes.ConfirmaExecute(Sender: TObject);
var cadena:string;
NewValue,OldValue:string;
BEGIN
  Cadena:='';
  IF (CDSComprobantesNUMERARCION_PROPIA.Value = 'S') AND ((CDSComprobantesPREFIJO.Value = '') OR (CDSComprobantesNUMERO.Value = '')) THEN
    ShowMessage('Esta marcada la opcion de numeración propia y no se ingreso la numeración')
  ELSE
    IF (CDSComprobantesNUMERARCION_PROPIA.Value <> 'X') AND (CDSComprobantesNUMERO.AsString = '') AND (CDSComprobantesTOMA_NRO_DE.AsString='') THEN
      ShowMessage('Si el comprbante se enumera, se debe indicar de donde o el numero inical')
    ELSE
      IF CDSComprobantesLETRA.AsString = '' THEN
        ShowMessage('Falta asignar la letra del comprobante')
      ELSE
        IF (VarIsNull(CDSComprobantesSUCURSAL.Value)) OR (CDSComprobantesSUCURSAL.AsString = '') THEN
          showMessage('Falta la sucursal')
        ELSE
          IF (VarIsNull(CDSComprobantesLINEAS_DETALLE.Value)) OR (CDSComprobantesLINEAS_DETALLE.AsString = '') THEN
            showMessage('No se Ingresaron Lineas por Detalle')
          ELSE
            IF ((CDSComprobantesAFECTA_IVA.Value='S') and ((CDSComprobantesCODIGO_AFIP.IsNull) or (CDSComprobantesCODIGO_AFIP.Value=''))) THEN
              ShowMessage('Si el comprobante afecta el Libro de IVA debe tener un código en AFIP')
            ELSE
              if DSBase.State=dsInsert Then
                begin
                  DatosComprobantes.QControlComprobantes.Close;
                  DatosComprobantes.QControlComprobantes.ParamByName('tipo').Value        := CDSComprobantesTIPO_COMPROB.Value;
                  DatosComprobantes.QControlComprobantes.ParamByName('clase').Value       := CDSComprobantesCLASE_COMPROB.Value;
                  DatosComprobantes.QControlComprobantes.ParamByName('sucursal').Value    := CDSComprobantesSUCURSAL.Value;
                  DatosComprobantes.QControlComprobantes.ParamByName('compraventa').Value := CDSComprobantesCOMPRA_VENTA.Value;
                  DatosComprobantes.QControlComprobantes.ParamByName('Letra').Value       := CDSComprobantesLETRA.Value;
                  DatosComprobantes.QControlComprobantes.Open;
                  if DatosComprobantes.QControlComprobantes.IsEmpty Then
                    begin
                      DatoNew:=IntToStr(CDSComprobantesID_COMPROBANTE.Value);
                      INHERITED;
                      Recuperar.Execute;
                      btNuevo.SetFocus;
                    END
                  else
                    showMessage('Comprobante ingresado.... Verifique....');
                end
              else
                if DSBase.State<>dsInsert Then
                  begin
                    if VarIsNull(CDSComprobantesNUMERO.NewValue) then
                      NewValue:=''
                    else
                     NewValue:=CDSComprobantesNUMERO.NewValue;

                    if VarIsNull(CDSComprobantesNUMERO.OldValue) then
                      OldValue:=''
                    else
                     OldValue:=CDSComprobantesNUMERO.OldValue;

                    DatoNew:=IntToStr(CDSComprobantesID_COMPROBANTE.Value);
                    DMMain_FD.LogFileFD(0,1,'Modificacion del Modelo Comprobante:'+ CDSComprobantesDENOMINACION.AsString+'('+
                                        CDSComprobantesID_COMPROBANTE.AsString+')'+
                                        ' Nro Old:'+ OldValue+' Nro New:'+NewValue+
                                        ' Old Cta.C :'+CDSComprobantesAFECTA_CC.OldValue +' New Cta.C :'+CDSComprobantesAFECTA_CC.NewValue +
                                        ' Old Iva :'+CDSComprobantesAFECTA_IVA.OldValue +' New Iva :'+CDSComprobantesAFECTA_IVA.NewValue,
                                        'COMPROB');
                    INHERITED;
                    Recuperar.Execute;
                    btNuevo.SetFocus;
                  end;

  if (TForm(Self.Owner).Name<>'')  then
    Salir.Execute;

END;

PROCEDURE TFormComprobantes.dbrNumeracionClick(Sender: TObject);
BEGIN
  INHERITED;
  IF dbrNumeracion.ItemIndex = 0 THEN
    BEGIN
      pnNumeracion.Enabled   := True;
      pnEnumeraDesde.Enabled := False;
      dbePrefijo.Color       := clWhite;
      dbeNumero.Color        := clWhite;
      rxdbComprobante.Color  := clBtnFace;
    END
  ELSE IF dbrNumeracion.ItemIndex = 1 THEN
    BEGIN
      pnNumeracion.Enabled   := False;
      pnEnumeraDesde.Enabled := True;
      dbePrefijo.Color       := clBtnFace;
      dbeNumero.Color        := clBtnFace;
      rxdbComprobante.Color  := clWhite;
    END
  ELSE IF dbrNumeracion.ItemIndex = 2 THEN
    BEGIN
      pnNumeracion.Enabled   := False;
      pnEnumeraDesde.Enabled := False;
      dbePrefijo.Color       := clBtnFace;
      dbeNumero.Color        := clBtnFace;
      rxdbComprobante.Color  := clBtnFace;
    END;
   dbchEditaNro.Visible:=dbrNumeracion.ItemIndex<>2;
END;

procedure TFormComprobantes.CancelarExecute(Sender: TObject);
begin
 if MessageDlg('Cancelar los cambios..?',mtConfirmation,mbYesNo,0)=mrNo then
    Exit;
  inherited;
  ModalResult :=  mrCancel;

end;

//procedure TFormComprobantes.CDSCompFiscalesAfterPost(DataSet: TDataSet);
//begin
//  inherited;
//  DatosComprobantes.CDSCompFiscales.ApplyUpdates(0);
//end;

procedure TFormComprobantes.dbcTipoComprobClick(Sender: TObject);
begin
  inherited;
  dbchAfectaLibroIva.Enabled:=dbcTipoComprob.ListSource.DataSet.FieldByName('afecta_libro_iva').Value='S';
  dbchAfectaCtaCte.Enabled  :=dbcTipoComprob.ListSource.DataSet.FieldByName('afecta_cc').Value='S';
 // dbchDesglozaIva.Enabled   :=dbcTipoComprob.ListSource.DataSet.FieldByName('desgloza_iva').Value='S';
  if dbcTipoComprob.ListSource.DataSet.FieldByName('tipo_de_Operacion').Value='X' Then
    dbrTipoComprobante.Enabled:=True
  else
    begin
      dbrTipoComprobante.Enabled:=False;
      CDSComprobantesCOMPRA_VENTA.Value:=dbcTipoComprob.ListSource.DataSet.FieldByName('Tipo_de_Operacion').Value;
    end;

  grFiscal.Enabled:=((dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FC') or
                     (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='NC') or
                     (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='AJ') or  //*** Nuevo por las retenciones de ganancia
                     (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='ND') or
                     (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FO') or
                     (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='RE') or
                     (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='TK')) and (dbrTipoComprobante.ItemIndex=1);

  if grFiscal.Enabled=False Then
    begin
      dbeImpresoraFiscal.Color            := clBtnFace;
      dbchFiscal.Enabled                  := False;
      CDSComprobantesFISCAL.Value         := 'N';
      CDSComprobantesNOMBREIMPRESORA.Value:= '';
    end
  else
    begin
      dbeImpresoraFiscal.Color:= clWhite;
      dbchFiscal.Enabled:=True;
    end;
//  dbchPorDefecto.Enabled:=(dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString <>'FC') and
//                          (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString <>'NC') and
//                          (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString <>'ND') and
//                          (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString <>'TK') and
//                          (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString <>'RE') and
//                          (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString <>'FO');

  dbcCaja.Enabled:=  (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FO') or
                     (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='RC') or
                     (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='OP') or
                     (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='TK') or
                     (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='VA') or
                     (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='EC') or
                     (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='IC');

  dbcDeposito.Enabled:=(dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FO') or
                       (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='TK') or
                       (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='NC') or
                       (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FC');


  if (dbcCaja.Enabled=False) and (DSBase.State in [dsInsert,dsEdit]) then
    CDSComprobantesCAJA_DEFECTO.Value:=-1;

  if (dbrTipoComprobante.ItemIndex=1) then
    begin
      chFacturaElectronica.Enabled:=((dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FC') or
                                     (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='NC') or
                                     (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='ND') or
                                     (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FO') or
                                     (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='RE') or
                                     (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='TK')) and
                                     (dbchFiscal.Checked=False);          //<<< que no sea Fiscal
    end
  else
  if (dbrTipoComprobante.ItemIndex=0) then
    begin
      chFacturaElectronica.Enabled:= (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FC') and
                                     (dbrTipoComprobante.ItemIndex=0); //<<< de venta ...
    end;

  dbcAjustes.Enabled:=  (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FC') and
                        (dbrTipoComprobante.ItemIndex=1);


  dbcCtroCosto.Enabled:=  ((dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FC') or
                          (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FO') or
                          (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='NC') or
                          (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='ND') or
                          (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='TK')) and
                          (dbrTipoComprobante.ItemIndex=1);
  spAsiganrCtroCostoGral.Enabled:=dbcCtroCosto.Enabled;
  ModalResult :=  mrOk;

end;

procedure TFormComprobantes.btRepetidosClick(Sender: TObject);
begin
  inherited;
  DatosComprobantes.CDSControlRepetido.Close;
  DatosComprobantes.CDSControlRepetido.OpeN;
end;

procedure TFormComprobantes.btComprasClick(Sender: TObject);
begin
  inherited;
  DatosComprobantes.CDSControlCompra.Close;
  DatosComprobantes.CDSControlCompra.Open;
end;

procedure TFormComprobantes.btVentasClick(Sender: TObject);
begin
  inherited;
  DatosComprobantes.CDSControlVta.Close;
  DatosComprobantes.CDSControlVta.Open;
end;

procedure TFormComprobantes.BorrarExecute(Sender: TObject);
begin
  DatosComprobantes.QComprobanteUsado.Close;
  DatosComprobantes.QComprobanteUsado.ParamByName('Tipo').Value         := CDSComprobantesTIPO_COMPROB.Value;
  DatosComprobantes.QComprobanteUsado.ParamByName('Clase').Value        := CDSComprobantesCLASE_COMPROB.Value;
  DatosComprobantes.QComprobanteUsado.ParamByName('Letra').Value        := CDSComprobantesLETRA.Value;
  DatosComprobantes.QComprobanteUsado.ParamByName('Compra_venta').Value := CDSComprobantesCOMPRA_VENTA.Value;
  DatosComprobantes.QComprobanteUsado.ParamByName('Sucursal').Value     := CDSComprobantesSUCURSAL.Value;
  DatosComprobantes.QComprobanteUsado.Open;
  if (DatosComprobantes.QComprobanteUsadoEN_USO.AsString='N') Then
    begin
      DMMain_FD.LogFileFD(1,1,'Borrado del Modelo Comprobante:'+ CDSComprobantesDENOMINACION.AsString+'('+
                      CDSComprobantesID_COMPROBANTE.AsString+')'+
                      'Letra:'+CDSComprobantesLETRA.AsString+
                      ' Sucursal: '+CDSComprobantesSUCURSAL.AsString +
                      ' Denominacion'+CDSComprobantesDENOMINACION.AsString +
                      ' Nro :'+ CDSComprobantesPREFIJO.AsString+'-'+CDSComprobantesNUMERO.AsString,
                      'COMPROB');
      inherited
    end
  else
    ShowMessage(' Este comprobante esta en uso no se puede borrar...');
  DatosComprobantes.QComprobanteUsado.Close;
end;

procedure TFormComprobantes.BuscaReporteExecute(Sender: TObject);
VAR Lon1,Lon2:integer;
begin
  inherited;
  OpenDialog.InitialDir:=DMMain_FD.PathReportesCpbte;
  if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        CDSComprobantesREPORTE.value:= OpenDialog.FileName;
        Lon1:=Length(OpenDialog.InitialDir);
        Lon2:=Length(OpenDialog.FileName);
        CDSComprobantesREPORTE.AsString:=Copy(OpenDialog.FileName,Lon1+2,Lon2-Lon1-1);
      end
    else
      CDSComprobantesREPORTE.Value:='';
end;

procedure TFormComprobantes.dbchImprimeClick(Sender: TObject);
begin
  inherited;
  if dbchImprime.Checked Then
    begin
      dbeCopias.Color   :=clWhite;
      dbeReporte.Color  :=clWhite;
    END
  else
    if dbchImprime.Checked=False Then
      begin
        dbeCopias.Color   :=clBtnFace;
        dbeReporte.Color  :=clBtnFace;
      END;
   sbReporte.Enabled:=dbchImprime.Checked;
   dbeCopias.Enabled :=dbchImprime.Checked;
   dbeReporte.Enabled:=dbchImprime.Checked;

end;

procedure TFormComprobantes.dbcSucursalEnter(Sender: TObject);
begin
  inherited;
  DatosComprobantes.CDSBuscaAjustes.Close;
  DatosComprobantes.CDSBuscaAjustes.Params.ParamByName('suc').Value:=dbcSucursal.KeyValue;
  DatosComprobantes.CDSBuscaAjustes.Open;
end;

procedure TFormComprobantes.dbcTipoComprobEnter(Sender: TObject);
begin
  inherited;
  CDSSucursal.Close;
  CDSSucursal.Open;
end;

procedure TFormComprobantes.dbgFiscalesDblClick(Sender: TObject);
begin
  inherited;
  DatoNew  := DatosComprobantes.CDSCompFiscalesID_COMPROBANTE.AsString;
  Recuperar.Execute;
  pcComprobantes.ActivePageIndex:=0;
end;

procedure TFormComprobantes.dbgFiscalesEditButtonClick(Sender: TObject);
begin
  inherited;
  if DatosComprobantes.CDSCompFiscales.State=dsBrowse then
    DatosComprobantes.CDSCompFiscales.Edit;
end;

procedure TFormComprobantes.DBLookupComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=VK_DELETE) or (key=VK_BACK) then
    CDSComprobantesCODIGO_AFIP.Clear;
end;

procedure TFormComprobantes.dbgElectronicosDblClick(Sender: TObject);
begin
  inherited;
  DatoNew  := DatosComprobantes.CDSCompElecID_COMPROBANTE.AsString;
  Recuperar.Execute;
  pcComprobantes.ActivePageIndex:=0;
end;

procedure TFormComprobantes.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('id').Value :=StrToInt(DatoNew);
  CDSComprobantes.Open;
  IF CDSComprobantesNUMERARCION_PROPIA.AsString = 'S' THEN
    BEGIN
      pnNumeracion.Enabled   := True;
      pnEnumeraDesde.Enabled := False;
      dbePrefijo.Color       := clWhite;
      dbeNumero.Color        := clWhite;
      rxdbComprobante.Color  := clBtnFace;
    END
  ELSE
    IF CDSComprobantesNUMERARCION_PROPIA.AsString = 'N' THEN
      BEGIN
        pnNumeracion.Enabled   := False;
        pnEnumeraDesde.Enabled := True;
        dbePrefijo.Color       := clBtnFace;
        dbeNumero.Color        := clBtnFace;
        rxdbComprobante.Color  := clWhite;
      END
    ELSE
      IF CDSComprobantesNUMERARCION_PROPIA.AsString = 'X' THEN
        BEGIN
          pnNumeracion.Enabled   := False;
          pnEnumeraDesde.Enabled := False;
          dbePrefijo.Color       := clBtnFace;
          dbeNumero.Color        := clBtnFace;
          rxdbComprobante.Color  := clBtnFace;
        END;
    IF CDSComprobantesIMPRIME.AsString='S' Then
      begin
        dbeCopias.Color   :=clWhite;
        dbeReporte.Color  :=clWhite;
      END
    else
      if CDSComprobantesIMPRIME.AsString='N' Then
        begin
          dbeCopias.Color   :=clBtnFace;
          dbeReporte.Color  :=clBtnFace;
        END;
  sbReporte.Enabled  := CDSComprobantesIMPRIME.AsString='S';
  dbeCopias.Enabled  := CDSComprobantesIMPRIME.AsString='S';
  dbeReporte.Enabled := CDSComprobantesIMPRIME.AsString='S';
  DatosComprobantes.QTipoComprob_Uno.Close;
  DatosComprobantes.QTipoComprob_Uno.ParamByName('sigla').Value:= CDSComprobantesTIPO_COMPROB.Value;
  DatosComprobantes.QTipoComprob_Uno.Open;
  if Not(DatosComprobantes.QTipoComprob_Uno.IsEmpty) Then
    begin
      dbchAfectaLibroIva.Enabled  := DatosComprobantes.QTipoComprob_UnoAFECTA_LIBRO_IVA.Value='S';
      dbchAfectaCtaCte.Enabled    := DatosComprobantes.QTipoComprob_UnoAFECTA_CC.Value='S';
      dbchDesglozaIva.Enabled     := DatosComprobantes.QTipoComprob_UnoDESGLOZA_IVA.Value='S';
      dbrTipoComprobante.Enabled  := DatosComprobantes.QTipoComprob_UnoTIPO_DE_OPERACION.Value='X';
    end;
  DatosComprobantes.QTipoComprob_Uno.Close;
  DatoNew:=''+DatoNew+'';


  if ((CDSComprobantesTIPO_COMPROB.Value='FC') or
      (CDSComprobantesTIPO_COMPROB.Value='NC') or
      (CDSComprobantesTIPO_COMPROB.Value='ND') or
      (CDSComprobantesTIPO_COMPROB.Value='AJ') or
      (CDSComprobantesTIPO_COMPROB.Value='RE') or
      (CDSComprobantesTIPO_COMPROB.Value='FO') or
      (CDSComprobantesTIPO_COMPROB.Value='TK')) and (CDSComprobantesCOMPRA_VENTA.AsString='V')
   then
    begin
      grFiscal.Enabled        := True;
      dbeImpresoraFiscal.Color:= clWhite;
      dbchFiscal.Enabled      := True;
    end
  else
    begin
      grFiscal.Enabled        := False;
      dbeImpresoraFiscal.Color:= clBtnFace;
      dbchFiscal.Enabled      := False;
    end;
  dbchPorDefecto.Enabled:=//(CDSComprobantesTIPO_COMPROB.Value<>'FC') and
                           (CDSComprobantesTIPO_COMPROB.Value<>'NC') and
                           (CDSComprobantesTIPO_COMPROB.Value<>'ND');// and
                           //(CDSComprobantesTIPO_COMPROB.Value<>'TK') and
                           //(CDSComprobantesTIPO_COMPROB.Value<>'FO');

  dbcAjustes.Enabled:=  ((dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FC') or
                        (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='RC'))
                          and
                        (dbrTipoComprobante.ItemIndex=1);

  dbcCtroCosto.Enabled:=  ((dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FC') or
                          (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FO') or
                          (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='NC') or
                          (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='ND') or
                          (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='TK')) and
                          (dbrTipoComprobante.ItemIndex=1);
  spAsiganrCtroCostoGral.Enabled:=dbcCtroCosto.Enabled;
  AplicarCtroCostoVenta.Enabled :=dbcCtroCosto.Enabled;
  DatosComprobantes.CDSBuscaAjustes.Close;
  DatosComprobantes.CDSBuscaAjustes.Params.ParamByName('suc').Value:=dbcSucursal.KeyValue;
  DatosComprobantes.CDSBuscaAjustes.Open;

  //*******************************************************
  DatosComprobantes.QComprobanteUsado.Close;
  DatosComprobantes.QComprobanteUsado.ParamByName('Tipo').Value         := CDSComprobantesTIPO_COMPROB.Value;
  DatosComprobantes.QComprobanteUsado.ParamByName('Clase').Value        := CDSComprobantesCLASE_COMPROB.Value;
  DatosComprobantes.QComprobanteUsado.ParamByName('Letra').Value        := CDSComprobantesLETRA.Value;
  DatosComprobantes.QComprobanteUsado.ParamByName('Compra_venta').Value := CDSComprobantesCOMPRA_VENTA.Value;
  DatosComprobantes.QComprobanteUsado.ParamByName('Sucursal').Value     := CDSComprobantesSUCURSAL.Value;
  DatosComprobantes.QComprobanteUsado.Open;

  dbeSiglas.Enabled  := DatosComprobantes.QComprobanteUsadoEN_USO.AsString='N';
  dbeletra.Enabled   := DatosComprobantes.QComprobanteUsadoEN_USO.AsString='N';
  dbcSucursal.Enabled:= DatosComprobantes.QComprobanteUsadoEN_USO.AsString='N';
  DatosComprobantes.QComprobanteUsado.Close;

  cbUsaCAEA.Enabled   := CDSComprobantesFACTURAELECTRONICA.Value='S';
  dbchEditaNro.Visible:= dbrNumeracion.ItemIndex<>2;
end;

procedure TFormComprobantes.dbrTipoComprobanteClick(Sender: TObject);
begin
  inherited;
  if dbrTipoComprobante.ItemIndex=0 Then
    begin
      dbeImpresoraFiscal.Color            := clBtnFace;
      dbchFiscal.Enabled                  := False;
      CDSComprobantesFISCAL.Value         := 'N';
      CDSComprobantesNOMBREIMPRESORA.Value:= '';
      chFacturaElectronica.Enabled:=True;
    end
  else
    begin
      dbeImpresoraFiscal.Color:=clWhite;
      dbchFiscal.Enabled      :=True;
      grFiscal.Enabled        :=True;
      chFacturaElectronica.Enabled:= (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FC') and
                                     (dbrTipoComprobante.ItemIndex=0);

    end;

  dbcAjustes.Enabled:=  (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FC') and
                        (dbrTipoComprobante.ItemIndex=1);


  dbcCtroCosto.Enabled:=  ((dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FC') or
                          (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FO') or
                          (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='NC') or
                          (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='ND') or
                          (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='TK')) and
                          (dbrTipoComprobante.ItemIndex=1);
  spAsiganrCtroCostoGral.Enabled:=dbcCtroCosto.Enabled;
end;

procedure TFormComprobantes.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  if not(DSBase.DataSet.IsEmpty) then
    begin
      dbcCaja.Enabled:=  (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FO') or
                         (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='RC') or
                         (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='OP') or
                         (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='TK') or
                         (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='EC') or
                         (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='VA') or
                         (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='IC');
      dbchDivide.Enabled := (CDSComprobantesCOMPRA_VENTA.Value='V') and ((CDSComprobantesTIPO_COMPROB.Value='FC') or (CDSComprobantesTIPO_COMPROB.Value='FO') );
      dbcDeposito.Enabled:= (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FO') or
                            (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='FC') or
                            (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='NC') or
                            (dbcTipoComprob.ListSource.DataSet.FieldByName('sigla').AsString ='TK');
    end;
  dbchPorDefecto.Enabled := True;
  pnPrincipal.Enabled    := True;
  pcComprobantes.Enabled := True;
  pagFiscales.Enabled    := True;
  pagComprobantes.Enabled:= True;
  pnComprobante.Enabled  := Not(DSBase.State=dsBrowse);

 // chFacturaElectronica.Enabled:=True;

end;

procedure TFormComprobantes.dbcAjustesEnter(Sender: TObject);
begin
  inherited;
  DatosComprobantes.CDSBuscaAjustes.Close;
  DatosComprobantes.CDSBuscaAjustes.Params.ParamByName('suc').Value:=dbcSucursal.KeyValue;
  DatosComprobantes.CDSBuscaAjustes.Open;
end;

procedure TFormComprobantes.dbcAjustesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=VK_DELETE) or (key=VK_BACK) Then
    CDSComprobantesID_AJUSTECC.Value:=-1;
end;

procedure TFormComprobantes.dbcCajaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=VK_DELETE) or (key=VK_BACK) Then
    CDSComprobantesCAJA_DEFECTO.Value:=-1;

end;

procedure TFormComprobantes.dbcDepositoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_DELETE) or (key=VK_BACK) then
    CDSComprobantesDEPOSITO.Value:=-1;

end;

procedure TFormComprobantes.dbchFiscalClick(Sender: TObject);
begin
  inherited;
//  dbchImprime.Enabled :=Not(dbchFiscal.Checked);
//  dbeReporte.Enabled  :=Not(dbchFiscal.Checked);
//  sbReporte.Enabled   :=Not(dbchFiscal.Checked);
//  if dbchFiscal.Checked=True Then
//     dbeReporte.Color    :=clBtnFace
//  else
//     dbeReporte.Color    :=clWhite;

end;

procedure TFormComprobantes.FormShow(Sender: TObject);
begin
  inherited;

  //btNuevo.SetFocus;
end;

procedure TFormComprobantes.LiberarExecute(Sender: TObject);
begin
  inherited;
  dbeSiglas.Enabled  := True;
  dbeletra.Enabled   := True;
  dbcSucursal.Enabled:= True;
end;

procedure TFormComprobantes.QTiposCpbtesAfterPost(DataSet: TDataSet);
begin
  inherited;
  QTiposCpbtes.ApplyUpdates(-1);
end;

END.
