unit UConfiguraIni;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList, StdCtrls, Buttons, ToolWin,
  ComCtrls, ExtCtrls, IniFiles,Librerias,Printers,
  DBClient, Provider, Mask,
  IdBaseComponent,ImgList, JvExControls, JvGradient, JvComponentBase, 
  JvDBLookup, JvExMask, JvToolEdit, JvDBLookupComboEdit, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, SqlExpr, JvBaseEdits, JvAppStorage,
  JvAppIniStorage, System.Actions, JvExStdCtrls, JvCombobox, CompBuscador,
  Vcl.Samples.Spin, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.DBCtrls, JvDBCombobox, JvDialogs, System.ImageList, AdvCombo, ColCombo,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxTrackBar, cxDBTrackBar, dxBarCode,
  dxRangeTrackBar, AdvSearchList, AdvSearchEdit, DBAdvSearchEdit, dxSkinWXI;

type
  TFormConfiguraIni = class(TFormABMBase)
    DSSucursales: TDataSource;
    DSCaja: TDataSource;
    DSDepositos: TDataSource;
    DSEmpleado: TDataSource;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    BuscarClientes: TAction;
    DSTipoInscripcion: TDataSource;
    DSTasaIva: TDataSource;
    DSSobreTasaIva: TDataSource;
    DSUnidades: TDataSource;
    pcConfiguracion: TPageControl;
    tbGeneral: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    Label17: TLabel;
    cbAgenda: TCheckBox;
    cbPrinterCpbte: TComboBox;
    cbPrinterListados: TComboBox;
    cbImpresoraDefectoCpbte: TCheckBox;
    cbImpresoraDefectoListado: TCheckBox;
    gbIntervalos: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    upRangoVta: TUpDown;
    edRangoVta: TEdit;
    edRangoComp: TEdit;
    upRangoComp: TUpDown;
    edRangoEmpleado: TEdit;
    UpRangoEmpleado: TUpDown;
    cbScannerSerie: TCheckBox;
    cbPuertoCom: TComboBox;
    cbVerFacturasVtaConIva: TCheckBox;
    edNombreCliente: TEdit;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label30: TLabel;
    Label16: TLabel;
    edHost: TEdit;
    tbCorreo: TTabSheet;
    edDireccionCorreo: TEdit;
    edAsunto: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    edNombreCuenta: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    edClave: TEdit;
    chbAutenticacion: TCheckBox;
    Label22: TLabel;
    edNombreServidor: TEdit;
    edPuerto: TEdit;
    Label23: TLabel;
    edNombreRte: TEdit;
    Label24: TLabel;
    chbFiltraCpbteCondIva: TCheckBox;
    chbIngresoAutoamtico: TCheckBox;
    chEfectoVentana: TCheckBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    dbcMoneda: TJvDBLookupCombo;
    Label29: TLabel;
    DSMoneda: TDataSource;
    tsAdicional: TTabSheet;
    Label31: TLabel;
    chbVerificaPrecioRt: TCheckBox;
    chbVerificaPrecioCompra: TCheckBox;
    ceSucursal: TJvDBLookupCombo;
    ceCaja: TJvDBLookupCombo;
    ceDeposito: TJvDBLookupCombo;
    ceEmpleado: TJvDBLookupCombo;
    ceInscripcionCliente: TJvDBLookupCombo;
    ceTasaIva: TJvDBLookupCombo;
    ceUnidades: TJvDBLookupCombo;
    ceSobreTasaIva: TJvDBLookupCombo;
    ceCliente: TJvComboEdit;
    Minimo: TJvCalcEdit;
    Maximo: TJvCalcEdit;
    MinimoComp: TJvCalcEdit;
    MaximoComp: TJvCalcEdit;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSSucursal: TClientDataSet;
    DSPSucursal: TDataSetProvider;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSEmpleado: TClientDataSet;
    DSPEmpleado: TDataSetProvider;
    CDSEmpleadoNOMBRE: TStringField;
    CDSEmpleadoCODIGO: TStringField;
    CDSCaja: TClientDataSet;
    DSPCaja: TDataSetProvider;
    CDSCajaID_CUENTA: TIntegerField;
    CDSCajaID_TIPO_CTA: TIntegerField;
    CDSCajaNOMBRE: TStringField;
    CDSCajaNRO_CUENTA: TStringField;
    CDSCajaID_BANCO: TIntegerField;
    CDSCajaCUIT: TStringField;
    CDSCajaRAZONSOCIAL: TStringField;
    CDSDepositos: TClientDataSet;
    DSPDepositos: TDataSetProvider;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    CDSDepositosSUCURSAL: TIntegerField;
    CDSDepositosCENTRALIZA_STOCK: TStringField;
    CDSInscripcion: TClientDataSet;
    DSPInscripcion: TDataSetProvider;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSUnidades: TClientDataSet;
    DSPUnidades: TDataSetProvider;
    CDSUnidadesID: TIntegerField;
    CDSUnidadesSIGLAS: TStringField;
    CDSUnidadesDESCRIPCION: TStringField;
    CDSTasaIva: TClientDataSet;
    DSPTasaIva: TDataSetProvider;
    CDSTasaIvaCODIGO: TIntegerField;
    CDSTasaIvaDESCRIPCION: TStringField;
    CDSTasaIvaCOLUMNA: TSmallintField;
    CDSSobreTasaIva: TClientDataSet;
    DSPSobreTasaIva: TDataSetProvider;
    CDSSobreTasaIvaCODIGO: TIntegerField;
    CDSSobreTasaIvaDESCRIPCION: TStringField;
    CDSSobreTasaIvaCOLUMNA: TSmallintField;
    CDSMoneda: TClientDataSet;
    DSPMoneda: TDataSetProvider;
    CDSMonedaID: TIntegerField;
    CDSMonedaMONEDA: TStringField;
    CDSMonedaCOTIZACION: TFloatField;
    CDSMonedaSIGNO: TStringField;
    CDSMonedaORDEN: TSmallintField;
    CDSMonedaCOTIZACION_COMPRA: TFloatField;
    rgRedondeoUnitarioVentas: TRadioGroup;
    Label4: TLabel;
    spFCC: TSpeedButton;
    DirectorioCC: TAction;
    edDirectorioFreazadoCC: TEdit;
    Label12: TLabel;
    Label32: TLabel;
    edDirectorioFreezadoCtdo: TEdit;
    spFCtdo: TSpeedButton;
    DirectorioCtdo: TAction;
    chbNegativoPresupuesto: TCheckBox;
    tsTransferecias: TTabSheet;
    Label33: TLabel;
    edIcono: TEdit;
    spIcono: TSpeedButton;
    DirIcono: TAction;
    chIvaComprobantes: TCheckBox;
    Label34: TLabel;
    edClaveElectronica: TEdit;
    Label35: TLabel;
    edCertificadoElectronico: TEdit;
    sbClaveElect: TSpeedButton;
    spCertificadoElect: TSpeedButton;
    edURLWSAA: TEdit;
    edURLWSW: TEdit;
    Label36: TLabel;
    Label37: TLabel;
    rgModoFcElectronica: TRadioGroup;
    Label38: TLabel;
    edDirectorioTxStock: TEdit;
    spTxStock: TSpeedButton;
    chbVerificaNumercionCpbte: TCheckBox;
    Label39: TLabel;
    edDirectorioTxStock_a_Ctral: TEdit;
    sptxStockCtral: TSpeedButton;
    chbArchivoTxAutomatico: TCheckBox;
    chbArchivoAjAutomatico: TCheckBox;
    Label40: TLabel;
    edDirectorioAjStock: TEdit;
    spAjustesStock: TSpeedButton;
    Label41: TLabel;
    ceSucursalAdmin: TJvDBLookupCombo;
    CDSSucursalAdmin: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DSSucursalAdmin: TDataSource;
    chbGenerarOProducionVta: TCheckBox;
    chbPrecioArticulo: TCheckBox;
    chbDetalleArticulo: TCheckBox;
    Label42: TLabel;
    Label43: TLabel;
    edURLWSW_EX: TEdit;
    chbSeguimientoCosto: TCheckBox;
    chbPedirConfirmacion: TCheckBox;
    chbNotaVtaContado: TCheckBox;
    Label44: TLabel;
    chbControlaImpresion: TCheckBox;
    chbPadronIIBBWeb: TCheckBox;
    rgBaseDatos: TRadioGroup;
    Label45: TLabel;
    Label46: TLabel;
    edPathCpbte: TEdit;
    spPathCpbtes: TSpeedButton;
    Label47: TLabel;
    edPathListados: TEdit;
    spPathListados: TSpeedButton;
    chbUsarDirCpbtes: TCheckBox;
    chbUsarDirListados: TCheckBox;
    Label48: TLabel;
    edAbonosDias: TJvCalcEdit;
    edAbonosCargoFijo: TJvCalcEdit;
    Label49: TLabel;
    pnPLU: TPanel;
    spCod_posInicial: TSpinEdit;
    spCod_Long: TSpinEdit;
    spPeso_Inic: TSpinEdit;
    spPeso_Long: TSpinEdit;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    chSASL: TCheckBox;
    Label54: TLabel;
    Label55: TLabel;
    cbUsoTLS: TComboBox;
    cbMetodoSSL: TComboBox;
    cbModoSSL: TComboBox;
    Label56: TLabel;
    BuscarConcepto: TAction;
    chConceptoTC: TCheckBox;
    rgModoPLU: TRadioGroup;
    chbAvisoFacSinCae: TCheckBox;
    chbEnterCB: TCheckBox;
    Label57: TLabel;
    edURLBcra: TEdit;
    chbVerificaCheRc: TCheckBox;
    CDSTasaIvaTASA: TFloatField;
    CDSSobreTasaIvaTASA: TFloatField;
    chbVerificaCuitRC: TCheckBox;
    chbConfirmaAutoEnvioCorreo: TCheckBox;
    chbReproWeb: TCheckBox;
    chbReprobeAuto: TCheckBox;
    chbAplicaIvaDiferenciado: TCheckBox;
    chbControlaNumFiscal: TCheckBox;
    edBalanza: TEdit;
    upDBalanza: TUpDown;
    Label58: TLabel;
    Label59: TLabel;
    ceModoGravamen_old2: TJvComboBox;
    rgReondeoVta: TRadioGroup;
    edCodHonorarios: TEdit;
    Label60: TLabel;
    QUsuarios: TFDQuery;
    QUsuariosUSER_NAME: TStringField;
    btPasaConfFC: TButton;
    BuscaArchivo: TFileOpenDialog;
    Label62: TLabel;
    edLimiteFacturaB: TJvCalcEdit;
    chPresupStock: TCheckBox;
    Label63: TLabel;
    edCodAnticipos: TEdit;
    colbAlias: TColumnComboBox;
    colbAliasContable: TColumnComboBox;
    edMonitoreo: TEdit;
    SpeedButton1: TSpeedButton;
    Label65: TLabel;
    chbActivaMonitoreo: TCheckBox;
    chOrdenar: TCheckBox;
    Label66: TLabel;
    edClaveCOT: TEdit;
    rgModoCOT: TRadioGroup;
    edCotCuit: TEdit;
    Label67: TLabel;
    txAPIs: TTabSheet;
    Label61: TLabel;
    edTokenWisPro: TEdit;
    Label64: TLabel;
    edApiKeyGoogle: TEdit;
    Label98: TLabel;
    edDominioWP: TEdit;
    Label96: TLabel;
    edUsuarioWP: TEdit;
    Label97: TLabel;
    edPassWP: TEdit;
    GroupBox2: TGroupBox;
    dbcListaPreciosWeb: TDBLookupComboBox;
    QListaPrecios: TFDQuery;
    DSListaPrecios: TDataSource;
    CDSListaPrecios: TClientDataSet;
    DSPListaPrecios: TDataSetProvider;
    CDSListaPreciosID: TIntegerField;
    CDSListaPreciosNOMBRE: TStringField;
    CDSListaPreciosRECARGOBASE: TFloatField;
    CDSListaPreciosFECHA: TSQLTimeStampField;
    CDSListaPreciosPORDEFECTO: TStringField;
    CDSListaPreciosF_PAGO: TIntegerField;
    CDSListaPreciosUSO_ADMINISTRADOR: TStringField;
    CDSListaPreciosCLONADA: TStringField;
    CDSListaPreciosID_LISTA_CLONADA: TIntegerField;
    CDSListaPreciosCOEFICIENTE: TFloatField;
    CDSListaPreciosEXCLUSIVO_EFECTIVO: TStringField;
    CDSListaPreciosACTUALIZA_EXCEPCION: TStringField;
    Label68: TLabel;
    Edit1: TEdit;
    edBonificacionPrecioWeb: TJvCalcEdit;
    Label69: TLabel;
    chMostrarListadoPedidos: TCheckBox;
    spPluDecimales: TSpinEdit;
    Label70: TLabel;
    edBarCode: TdxBarCode;
    trackPLU: TdxRangeTrackBar;
    trackPrecio: TdxRangeTrackBar;
    Panel2: TPanel;
    edPlu: TEdit;
    edPesoPrecio: TEdit;
    edCodigoBarra: TEdit;
    Label71: TLabel;
    edConceptoCOT: TEdit;
    Label72: TLabel;
    edDetalleConceptoCOT: TEdit;
    Label73: TLabel;
    edToleranciaDeuda: TJvCalcEdit;
    chAdministraPresupuestosAlCobro: TCheckBox;
    Label74: TLabel;
    edOpenAIKey: TEdit;
    QSubRub: TFDQuery;
    DSSubRubro: TDataSource;
    sBuscar: TDBAdvSearchEdit;
    QSubRubCODIGO_SUBRUBRO: TStringField;
    QSubRubDETALLE_SUBRUBRO: TStringField;
    QSubRubCODIGO_RUBRO: TStringField;
    QSubRubMUESTRARUBRO: TStringField;
    Label75: TLabel;
    chStockMinimo: TCheckBox;
    chImprimePedidosAppAutomatico: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure ceCajaKeyPress(Sender: TObject; var Key: Char);
    procedure cbPrinterCpbteChange(Sender: TObject);
    procedure cbScannerSerieClick(Sender: TObject);
    procedure BuscarClientesExecute(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure ceClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DirectorioCCExecute(Sender: TObject);
    procedure DirectorioCtdoExecute(Sender: TObject);
    procedure DirIconoExecute(Sender: TObject);
    procedure sbClaveElectClick(Sender: TObject);
    procedure spCertificadoElectClick(Sender: TObject);
    procedure rgModoFcElectronicaClick(Sender: TObject);
    procedure spTxStockClick(Sender: TObject);
    procedure sptxStockCtralClick(Sender: TObject);
    procedure spAjustesStockClick(Sender: TObject);
    procedure ceSucursalAdminKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spPathCpbtesClick(Sender: TObject);
    procedure spPathListadosClick(Sender: TObject);
    procedure chbAvisoFacSinCaeClick(Sender: TObject);
    procedure btPasaConfFCClick(Sender: TObject);
    procedure PathSearch(ed:  TEdit);
    procedure FormResize(Sender: TObject);
    procedure colbAliasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure colbAliasContableKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure chbActivaMonitoreoClick(Sender: TObject);
    procedure chOrdenarClick(Sender: TObject);
    procedure trackPLUPropertiesChange(Sender: TObject);
    procedure trackPrecioPropertiesChange(Sender: TObject);
    procedure spCod_posInicialChange(Sender: TObject);
    procedure edCodigoBarraChange(Sender: TObject);
    procedure sBuscarSelect(Sender: TObject);
  private
    { Private declarations }
  public
    CambioBase:Boolean;
    ListaAlias:TStringList;
    Archivo   :TextFile;
    procedure PasaConfFactUsuarios;
    { Public declarations }
  end;

var
  FormConfiguraIni: TFormConfiguraIni;

implementation

uses UDMain_FD, DMBuscadoresForm, UBuscadorClientes, UBuscaDirectorio,
  UBuscadorArticulos;
{$R *.DFM}

procedure TFormConfiguraIni.PasaConfFactUsuarios;
var
  ArchivoIni: TIniFile;
begin
  QUsuarios.Close;
  QUsuarios.Open;
  if not QUsuarios.IsEmpty then QUsuarios.First;

  while not QUsuarios.EoF do
    begin
      try
        ArchivoIni  :=  TIniFile.Create(ExtractFilePath(ParamStr(0)) + QUsuariosUSER_NAME.AsString + '.ini');
        ArchivoIni.WriteString('FacturaEelectronica', 'Clave',      edClaveElectronica.Text);
        ArchivoIni.WriteString('FacturaEelectronica', 'Certificado',edCertificadoElectronico.Text);
        ArchivoIni.WriteString('FacturaEelectronica', 'URLWSAA',    edURLWSAA.Text );
        ArchivoIni.WriteString('FacturaEelectronica', 'URLWSW',     edURLWSW.Text);
        ArchivoIni.WriteString('FacturaEelectronica', 'URLWSW_EX',  edURLWSW_EX.Text);
        //ArchivoIni.WriteBool  ('FacturaEelectronica', 'ControlNro', chbControlaNumFiscal.Checked);
        ArchivoIni.WriteInteger('FacturaEelectronica', 'Modo',      rgModoFcElectronica.ItemIndex);


       // Opciones de Correo ***********
        ArchivoIni.WriteString('Correo', 'DirCorreo', edDireccionCorreo.Text);
        ArchivoIni.WriteString('Correo', 'NombreCuenat', edNombreCuenta.Text);
        ArchivoIni.WriteString('Correo', 'AsuntoCorreo', edAsunto.Text);
        ArchivoIni.WriteString('Correo', 'NombreServido',edNombreServidor.Text);
        if chbAutenticacion.Checked Then
          ArchivoIni.WriteString('Correo', 'Autenticacion', 'S')
        else
          ArchivoIni.WriteString('Correo', 'Autenticacion', 'N');

        if chSASL.Checked Then
          ArchivoIni.WriteString('Correo', 'AutenticacionSASL', 'S')
        else
          ArchivoIni.WriteString('Correo', 'AutenticacionSASL', 'N');

        ArchivoIni.WriteInteger('Correo', 'MetodoSSL', cbMetodoSSL.ItemIndex);
        ArchivoIni.WriteInteger('Correo', 'UsaTLS', cbUsoTLS.ItemIndex);
        ArchivoIni.WriteInteger('Correo', 'Modo', cbModoSSL.ItemIndex);
        ArchivoIni.WriteString('Correo', 'Remitente', edNombreRte.Text);
        ArchivoIni.WriteInteger('Correo', 'puerto', StrToInt(edPuerto.Text));
        //claveAux:=Trim(edClave.Text);
        ArchivoIni.WriteString('Correo', 'Clave', Trim(edClave.Text));

      finally
        ArchivoIni.Free;
        QUsuarios.Next;
      end;
    end;

    QUsuarios.Close;
end;

//function verificaCaracteres(const Str: string): bool;
// var
//  I: Integer;
// begin
//  result := false;
//  for I := 1 to length(Str) do
//    begin
//      if Str[i] in ['0'..'9',':','¿','?','$','%'] then  //Agregas tantos caracteres como desees filtrar
//      begin
//         result := true;
//         exit;
//      end;
//    end;
//  end;

procedure TFormConfiguraIni.FormCreate(Sender: TObject);
var enter:char;
s,dato1,dato2:String;
AItemGestion,AItemContable: TComboItem;
begin
  inherited;
  Enter    := #13;
  AutoSize := False;
  //Cargo Los Combo
  // Session.GetAliasNames(AliasCombo.Items);
  cbPrinterCpbte.Items   :=Printer.Printers;
  cbPrinterListados.Items:=Printer.Printers;
  CDSSucursal.Open;
  CDSSucursalAdmin.Open;
  CDSListaPrecios.Open;

  CDSCaja.Close;

  if ((DMMain_FD.FiltraCajaUser) and (DMMain_FD.ModificaCaja)) then
    begin
      CDSCaja.CommandText:='select cc.* from cuenta_caja cc where cc.id_tipo_cta=1 and '+
                           '(cc.id_cuenta in (select u.caja from cajausuario u where u.usuario = :usuario)) '+
                           'order by nombre ';

//      CDSCaja.CommandText:='select ca.*, cta.Nombre as MuestraCaja from Caja_Cab ca '+
//                                'join cuenta_caja cta on cta.id_cuenta=ca.id_cuenta_caja '+
//                                'where  (ca.id_cuenta_caja in (select u.caja from cajausuario u where u.usuario = :usuario)) and (ca.Estado = 0)';
      CDSCaja.Params.ParamByName('usuario').Value:=DMMain_FD.UsuarioActivo;
    end;

  CDSCaja.Open;
  CDSDepositos.Open;
  CDSEmpleado.Open;
  CDSInscripcion.Open;
  CDSTasaIva.Open;
  CDSSobreTasaIva.OPen;
  CDSUnidades.Open;
  CDSMoneda.Open;
  QSubRub.Open;

  if QSubRub.Locate('codigo_subrubro',DMMain_FD.StockSubRubExp,[]) Then
   sBuscar.Text:=QSubRubDETALLE_SUBRUBRO.AsString;


  cbPrinterCpbte.ItemIndex      := PrCpbte;
  cbPrinterListados.ItemIndex   := PrListados;
  ceSucursal.KeyValue           := SucursalPorDefecto;
  ceSucursalAdmin.KeyValue      := SucursalAdmin;

  rgBaseDatos.ItemIndex         := TipoBaseDatos;
  ceCaja.KeyValue               := CajaPorDefecto;
  ceDeposito.KeyValue           := DepositoPorDefecto;
  upRangoVta.Position           := RangoFechasCCVta;
  upRangoComp.Position          := RangoFechasCCCompra;
  UpRangoEmpleado.Position      := RangoFechasEmpleado;
  ceEmpleado.KeyValue           := DMMain_FD.EmpleadoPorDefecto;
  ceCliente.Text                := ClientePorDefecto;
  edCodHonorarios.Text          := CodHonorarios;
  chConceptoTC.Checked          := UsaConceptoRecargoTC;
  ceInscripcionCliente.KeyValue := InscripcionPorDefecto;
  case GravamenPorDefecto[1] of
    'G':ceModoGravamen_old2.ItemIndex:=0;
    'E':ceModoGravamen_old2.ItemIndex:=1;
    'M':ceModoGravamen_old2.ItemIndex:=2;
    'I':ceModoGravamen_old2.ItemIndex:=3;
    'Y':ceModoGravamen_old2.ItemIndex:=4;
  end;
//  ceModoGravamen.Text           := GravamenPorDefecto;
  ceTasaIva.KeyValue            := TIvaPorDefecto;
  ceSobreTasaIva.KeyValue       := STIvaPorDefecto;
  ceUnidades.KeyValue           := UnidadesPorDefecto;
  edHost.Text                   := Host;
  chEfectoVentana.Checked       := VentanaEfecto;
  dbcMoneda.KeyValue            := MonedaStock;
  chbNegativoPresupuesto.Checked:= CantidadNegativaPresupuesto;
  chbNotaVtaContado.Checked     := NotaVtaCtdo;
  // Correo
  edDireccionCorreo.Text        := DirCorreo;
  edNombreCuenta.Text           := NombreCuenta;
  edAsunto.Text                 := AsuntoCorreo;
  edNombreServidor.Text         := NombreServidor;
  edClave.Text                  := Clave;
  chbAutenticacion.Checked      := Autotenticacion='S';
  edNombreRte.Text              := Remitente;
  edPuerto.Text                 := IntToStr(Puerto);
  chSASL.Checked                := SASL='S';
  cbMetodoSSL.ItemIndex         := MetodoSSL;
  cbUsoTLS.ItemIndex            := UsaTLS;
  cbModoSSL.ItemIndex           := ModoSSL;
  //*************************
  chbFiltraCpbteCondIva.Checked := FiltraCpbteCondIva='S';
  // *****  para Facturacion Electonica....
  edClaveElectronica.Text       := ClaveElectronica;
  edCertificadoElectronico.Text := CertificadoElectronico;
  chbControlaNumFiscal.Checked  := ControlaNroFiscal;
  // ***********************************
  // ***** control de cpbtes segun iva
  chIvaComprobantes.Checked     := VerificaIvaCpbte;
  // ***********************************
  //*****************
  chbIngresoAutoamtico.Checked  := IngresoAutomatico='S';
  Minimo.Value                  := MinCCVta;
  Maximo.Value                  := MaxCCVta;
  MinimoComp.Value              := MinCCComp;
  MaximoComp.Value              := MaxCCComp;
  if ceCliente.Text<>'' Then
     ceClienteKeyPress(Sender,enter);
  enter:=#13;

  //***** Balanza **********
  if ScannerSerie='S' Then cbScannerSerie.Checked:=True else
    cbScannerSerie.Checked :=False;
  cbPuertoCom.Text                    := IntToStr(PuertoCom);
  edBalanza.Text                      := IntToStr(IdBalanza);
  upDBalanza.Position                 := IdBalanza;
  //*************************

  edDirectorioFreazadoCC.Text         := PathFreezerCtaCte;
  edDirectorioFreezadoCtdo.Text       := PathFreezerCtdo;
  // ***** Drectorios comunes de Stock *************
  edDirectorioTxStock.Text            := PathTxStock;
  edDirectorioTxStock_a_Ctral.Text    := PathTxStockCtral;
  edDirectorioAjStock.Text            := PathAjStock;

  chbArchivoTxAutomatico.Checked      := GenerarArchivoTXStk;
  chbArchivoAjAutomatico.Checked      := GenerarArchivoAjStk;
  chbPadronIIBBWeb.Checked            := PadronIIBBWeb;
  // **********************************************
  chbUsarDirCpbtes.Checked            := DMMain_FD.UsarPathCpbte;
  chbUsarDirListados.Checked          := DMMain_FD.UsarPathLst;
  edPathCpbte.Text                    := DMMain_FD.PathReportesCpbte;
  edPathListados.Text                 := DMMain_FD.PathReportesLst;

  edAbonosDias.Value                  := DiasAbono;
  edAbonosCargoFijo.Value             := CargoAbono;

  chbVerificaPrecioRt.Checked         := DMMain_FD.VerificaCambioPrecio;
  chbVerificaPrecioCompra.Checked     := DMMain_FD.VerificaCambioPrecioCompra;
  chImprimePedidosAppAutomatico.Checked :=DMMain_fd.ImprimePedidosApp;
  cbAgenda.Checked                    := DMMain_FD.Agenda;
  chMostrarListadoPedidos.Checked     := DMMain_FD.MostrarPedidos;
  //  cbVerFacturasVtaConIva.Checked      := DMMain_FD.DiscriminaIva;
  cbImpresoraDefectoCpbte.Checked     := DMMain_FD.PrCpbteDefecto;
  cbImpresoraDefectoListado.Checked   := DMMain_FD.PrListadoDefecto;
  if DiscriminaIva='S' Then cbVerFacturasVtaConIva.Checked:=True else
    cbVerFacturasVtaConIva.Checked:=False;

  dbcListaPreciosWeb.KeyValue         := DMMain_Fd.ListaPreciosWoordPress;
  chbActivaMonitoreo.Checked          := MonitoreoActivo;
  edMonitoreo.Text                    := MonitoreoPath;

  // esta la uso para saber si se cambio el alias
  CambioBase                          := False;
  pcConfiguracion.ActivePageIndex     := 0;
  ceDeposito.Enabled                  := DMMain_FD.ModificaDeposito;
  ceSucursal.Enabled                  := DMMain_FD.ModificaSucursal;
  ceEmpleado.Enabled                  := DMMain_FD.ModificaVendedor;
  rgModoFcElectronica.ItemIndex       := ModoFcElectronica;
  rgModoFcElectronicaClick(Sender);


  if FileExists(ExtractFilePath(ParamStr(0))+'ALIAS.CSV')=False then
    FileCreate(ExtractFilePath(ParamStr(0))+'ALIAS.CSV');

  AssignFile(Archivo,ExtractFilePath(ParamStr(0))+'ALIAS.CSV');
  Reset(Archivo);

  // alias de Gestion************************************
  //****************************************************
  colbAlias.Columns.Clear;
  colbAlias.ComboItems.Clear;

  colbAliasContable.Columns.Clear;
  colbAliasContable.ComboItems.Clear;


  with colbAlias.Columns.Add do
    begin
      Width:=190;
      Font.Style:=[fsBold];
    end;
  with colbAlias.Columns.Add do
    begin
      Width := 350;
      Color := clAqua;
     end;

  // alias de Contable************************************
  //****************************************************

  with colbAliasContable.Columns.Add do
    begin
      Width:=190;
      Font.Style:=[fsBold];
    end;
  with colbAliasContable.Columns.Add do
    begin
      Width := 350;
      Color := clAqua;
     end;

  while not(Eof(Archivo)) do
    begin
      ReadLn(Archivo, S);
      s:=QuitarCaracteres(s);

      dato1  := Copy(s, 1,Pos(',',s)-1);
      dato2  := Copy(s, Pos(',',s)+1, length(s));

      AItemGestion  := colbAlias.ComboItems.Add;//TComboItem.Create(colbAlias.ComboItems);
      AItemGestion.Strings.Add(dato1);
      AItemGestion.Strings.Add(dato2);
      AItemGestion   :=  nil;

      AItemContable  := colbAliasContable.ComboItems.Add;//TComboItem.Create(colbAlias.ComboItems);
      AItemContable.Strings.Add(dato1);
      AItemContable.Strings.Add(dato2);
      AItemContable   :=  nil;
    end;

  CloseFile(Archivo);
//******************************************************************

  colbAlias.ItemIndex                := DatosSinBDEKey;
  colbAliasContable.ItemIndex        := DatosContableKey;

  chbVerificaNumercionCpbte.Checked  := VerificaNroCpbte;
  chbGenerarOProducionVta.Checked    := GenerarOProducion;
  chbPedirConfirmacion.Checked       := PedirConfirmacionOP;
  // esto aplica solo en la planilla de ABM de stock
  chbDetalleArticulo.Checked         := DetalleArticulo;
  chbPrecioArticulo.Checked          := PrecioArticulo;
  //**************************************************
  chbSeguimientoCosto.Checked        := SeguimientoCtroCosto;
  chbControlaImpresion.Checked       := ControlaImpresion;
  chbConfirmaAutoEnvioCorreo.Checked := ConfirmaAutoEnvioCorreoFc;
  chbReproWeb.Checked                := ReproWeb;
  chbReprobeAuto.Checked             := ReproWebAuto;
  chbAplicaIvaDiferenciado.Checked   := AplicaIvaDif;
  edIcono.Text                       := Icono;
  rgRedondeoUnitarioVentas.ItemIndex := Abs(DMMain_FD.DecRedondeo)-2;
  // opciones de PLU
  spCod_posInicial.Value             := DMMain_FD.CodInicioPLU;
  spCod_Long.Value                   := DMMain_FD.CodLongPLU;
  spPeso_Inic.Value                  := DMMain_FD.PesoInioPLU;
  spPeso_Long.Value                  := DMMain_FD.PesoLongPLU;
  rgModoPLU.ItemIndex                := DMMain_FD.ModoPLU;
  spPluDecimales.Value               := DMMain_FD.PluDecimales;
  edCodigoBarra.Text                 := DMMain_FD.PluCodigoBarra;
  trackPLU.Range.Min                 := spCod_posInicial.Value;
  trackPLU.Range.Max                 := spCod_posInicial.Value + spCod_Long.Value -1;

  trackPrecio.Range.Min              := spPeso_Inic.Value;
  trackPrecio.Range.Max              := spPeso_Inic.Value + spPeso_Long.Value - 1;


  // ***************************************************************
  chbAvisoFacSinCae.Checked          := DMMain_FD.AvisoSinCae;
  chbVerificaCuitRC.Checked          := VerificaCuitRc;
  edLimiteFacturaB.Value             := DMMain_FD.LimiteFactB;// LimiteFacB;
  edToleranciaDeuda.Value            := DMMain_FD.ToleranciaDeuda; // linte de tolerancia a deuda
  edTokenWisPro.Text                 := TokenWispro;
  btPasaConfFC.Visible               := DMMain_FD.UsuarioActivo = 'master';
  edCodAnticipos.Text                := CodAnticipos;
  chPresupStock.Checked              := DMMain_FD.PresupuestarSinStock;
  chbVerificaCheRc.Checked           := VerificaCheRcBCRA;
  edURLBcra.Text                     := URLBcra;
  // API Key
  edApiKeyGoogle.Text                := ApiKeyGoogle;
  edOpenAIKey.Text                   := DMMain_FD.GetApiKeyOpenAI;
  // Variables de COT
  edCotCuit.Text                     := DMMain_FD.CuitCOT;
  edClaveCOT.Text                    := DMMain_FD.ClaveCOT;
  rgModoCOT.ItemIndex                := DMMain_FD.ModoCOT;
  edConceptoCOT.Text                 := DMMain_FD.CodigoConceptoCOT;
  edDetalleConceptoCOT.Text          := DMMain_FD.DetalleConceptoCOT;;
  // WoordPress
  edUsuarioWP.Text                   := DMMain_FD.UsuarioWoordPress;
  edPassWP.Text                      := DMMain_FD.ClaveUsuarioWoordPress;
  edDominioWP.Text                   := DMMain_FD.URlWoordPress;
  edBonificacionPrecioWeb.Value      := DMMain_FD.BonificacionWoordPress;
  chAdministraPresupuestosAlCobro.Checked := DMMain_FD.GetAdministraPresupuestos;
  chStockMinimo.Checked              := DMMain_FD.GetStockMinimo;

end;

procedure TFormConfiguraIni.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSSucursal.Close;
  CDSClientes.Close;
  CDSSucursalAdmin.Close;
  CDSCaja.Close;

  Action:=caFree;
end;

procedure TFormConfiguraIni.FormDestroy(Sender: TObject);
begin
  inherited;
  FormConfiguraIni:=nil;
end;

procedure TFormConfiguraIni.FormResize(Sender: TObject);
begin
  inherited;
  if FormConfiguraIni<>nil then
    if FormConfiguraIni.Width<>841 then
      FormConfiguraIni.Width:=841;
end;

procedure TFormConfiguraIni.rgModoFcElectronicaClick(Sender: TObject);
begin
  inherited;
  if rgModoFcElectronica.ItemIndex=0 then  //test
    begin
      edURLWSAA.Text   := 'https://wsaahomo.afip.gov.ar/ws/services/LoginCms';
      edURLWSW.Text    := 'https://wswhomo.afip.gov.ar/wsfev1/service.asmx';
      edURLWSW_EX.Text := 'https://wswhomo.afip.gov.ar/wsfexv1/service.asmx';
    end
  else
    if rgModoFcElectronica.ItemIndex=1 then // produccion
      begin
        edURLWSAA.Text   := 'https://wsaa.afip.gov.ar/ws/services/LoginCms';
        edURLWSW.Text    := 'https://servicios1.afip.gov.ar/wsfev1/service.asmx';
        edURLWSW_EX.Text := 'https://servicios1.afip.gov.ar/wsfexv1/service.asmx';
      end;

end;

procedure TFormConfiguraIni.sbClaveElectClick(Sender: TObject);
begin
  inherited;
  PathSearch(edClaveElectronica);
end;

procedure TFormConfiguraIni.sBuscarSelect(Sender: TObject);
begin
  inherited;
  sBuscar.SetFocus;
//  CDSSubRub.Locate('CODIGO_SUBRUBRO',sBuscar.Columns[0],[]);
  QSubRub.Locate('codigo_SubRubro',sBuscar.SearchList.SelectedItem.Captions[0],[]);
end;

procedure TFormConfiguraIni.PathSearch( ed: TEdit);
begin
  BuscaArchivo.FileName :=  '';
  if Trim(ed.Text) <> '' then
    BuscaArchivo.DefaultFolder  :=  ed.Text
  else
    BuscaArchivo.DefaultFolder  :=  ExtractFilePath(ParamStr(0));

  BuscaArchivo.Execute;
  if BuscaArchivo.FileName <> '' then
    ed.Text :=  BuscaArchivo.FileName;
end;

procedure TFormConfiguraIni.spCertificadoElectClick(Sender: TObject);
begin
  inherited;
 //  if VirtualUI.Active then

  PathSearch(edCertificadoElectronico);

 // if Not(Assigned(FormBuscaDirectorio)) Then
//    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
//  FormBuscaDirectorio.ShowModal;
//  if FormBuscaDirectorio.ModalResult=mrOk Then
//    edCertificadoElectronico.Text :=FormBuscaDirectorio.Directorio
//  else
//    edCertificadoElectronico.Text :='';

  end;

procedure TFormConfiguraIni.spCod_posInicialChange(Sender: TObject);
begin
  inherited;
  trackPLU.Range.Min    := spCod_posInicial.Value;
  trackPLU.Range.Max    := spCod_posInicial.Value + spCod_Long.Value -1;

  trackPrecio.Range.Min := spPeso_Inic.Value;
  trackPrecio.Range.Max := spPeso_Long.Value +spPeso_Inic.Value - 1 ;

end;

procedure TFormConfiguraIni.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    edMonitoreo.Text :=FormBuscaDirectorio.Directorio
  else
    edMonitoreo.Text :='';
end;

procedure TFormConfiguraIni.spPathCpbtesClick(Sender: TObject);
begin
  inherited;
 if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    edPathCpbte.Text :=FormBuscaDirectorio.Directorio
  else
    edPathCpbte.Text :='';
end;

procedure TFormConfiguraIni.spPathListadosClick(Sender: TObject);
begin
  inherited;
if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    edPathListados.Text :=FormBuscaDirectorio.Directorio
  else
    edPathListados.Text :='';
end;

procedure TFormConfiguraIni.spAjustesStockClick(Sender: TObject);
begin
  inherited;
  FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    edDirectorioAjStock.Text :=FormBuscaDirectorio.Directorio
  else
    edDirectorioAjStock.Text :='';
end;

procedure TFormConfiguraIni.sptxStockCtralClick(Sender: TObject);
begin
  inherited;
  FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    edDirectorioTxStock_a_Ctral.Text :=FormBuscaDirectorio.Directorio
  else
    edDirectorioTxStock_a_Ctral.Text :='';
end;

procedure TFormConfiguraIni.trackPLUPropertiesChange(Sender: TObject);
begin
  inherited;
  edPlu.Text             := copy(edCodigoBarra.Text,trackPLU.Range.Min,(trackPLU.Range.Max-trackPLU.Range.Min)+1);
  edPesoPrecio.Text      := copy(edCodigoBarra.Text,trackPrecio.Range.Min,(trackPrecio.Range.Max-trackPrecio.Range.Min)+1);

  spCod_posInicial.Value := trackPLU.Range.Min;
  spCod_Long.Value       := trackPLU.Range.Max-trackPLU.Range.Min+1;

  spPeso_Inic.Value      := trackPrecio.Range.Min;
  spPeso_Long.Value      := trackPRECIO.Range.Max-trackPRECIO.Range.Min+1;

end;

procedure TFormConfiguraIni.trackPrecioPropertiesChange(Sender: TObject);
begin
  inherited;
  edPlu.Text              :=copy(edCodigoBarra.Text,trackPLU.Range.Min,(trackPLU.Range.Max-trackPLU.Range.Min)+1);
  edPesoPrecio.Text       :=copy(edCodigoBarra.Text,trackPrecio.Range.Min,(trackPrecio.Range.Max-trackPrecio.Range.Min)+1);

  spCod_posInicial.Value := trackPLU.Range.Min;
  spCod_Long.Value       := trackPLU.Range.Max-trackPLU.Range.Min+1;

  spPeso_Inic.Value      := trackPrecio.Range.Min;
  spPeso_Long.Value      := trackPrecio.Range.Max-trackPrecio.Range.Min+1;

end;

procedure TFormConfiguraIni.spTxStockClick(Sender: TObject);
begin
  inherited;
  FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    edDirectorioTxStock.Text :=FormBuscaDirectorio.Directorio
  else
    edDirectorioTxStock.Text :='';
end;

procedure TFormConfiguraIni.ConfirmaExecute(Sender: TObject);
VAR ArchivoIni,GeneralIni:TIniFile;
ClaveAux:String;
I:Integer;
begin
//  inherited;
  ArchivoIni := TIniFile.Create(DMMain_FD.MainPath + DMMain_FD.NombreIni);
  GeneralIni := TIniFile.Create(DMMain_FD.MainPath +'General.Ini');

  ArchivoIni.WriteString('Sucursal', 'Sucursal', ceSucursal.Value);
  ArchivoIni.WriteString('Caja', 'Caja', ceCaja.Value);
  ArchivoIni.WriteString('Deposito', 'Deposito', ceDeposito.Value);
  IF cbAgenda.Checked Then Agenda:='S'
    else  Agenda:='N';
  ArchivoIni.WriteString('Agenda', 'Agenda', Agenda);
  ArchivoIni.WriteString('Empleado', 'Empleado', ceEmpleado.Value);
  ArchivoIni.WriteString('cliente', 'cliente', ceCliente.Text);

  ArchivoIni.WriteInteger('RangoFechas', 'CtaCteVta', StrToInt(edRangoVta.text));
  ArchivoIni.WriteInteger('RangoFechas', 'CtaCteComp',StrToInt(edRangoComp.text));
  ArchivoIni.WriteInteger('RangoFechas', 'CtaCteEmpleado',StrToInt(edRangoEmpleado.text));

  if chbIngresoAutoamtico.Checked Then
    ArchivoIni.WriteString('IngresoAutomatico', 'Ingreso', 'S')
  else
    ArchivoIni.WriteString('IngresoAutomatico', 'Ingreso', 'N');

  if chEfectoVentana.Checked Then
    ArchivoIni.WriteString('EfectoVentana', 'Efecto', 'S')
  else
    ArchivoIni.WriteString('EfectoVentana', 'Efecto', 'N');

  if chbVerificaPrecioRt.Checked Then
    ArchivoIni.WriteString('Control', 'VerificaCambioPrecio', 'S')
  else
    ArchivoIni.WriteString('Control', 'VerificaCambioPrecio', 'N');

  if chbVerificaPrecioCompra.Checked Then
    ArchivoIni.WriteString('Control', 'VerificaCambioPrecioCompra', 'S')
  else
    ArchivoIni.WriteString('Control', 'VerificaCambioPrecioCompra', 'N');

  ArchivoIni.WriteBool('Iva', 'Cpbte',chIvaComprobantes.Checked);
  // Opciones de Correo ***********
  ArchivoIni.WriteString('Correo', 'DirCorreo', edDireccionCorreo.Text);
  ArchivoIni.WriteString('Correo', 'NombreCuenat', edNombreCuenta.Text);
  ArchivoIni.WriteString('Correo', 'AsuntoCorreo', edAsunto.Text);
  ArchivoIni.WriteString('Correo', 'NombreServido',edNombreServidor.Text);
  if chbAutenticacion.Checked Then
    ArchivoIni.WriteString('Correo', 'Autenticacion', 'S')
  else
    ArchivoIni.WriteString('Correo', 'Autenticacion', 'N');

  if chSASL.Checked Then
    ArchivoIni.WriteString('Correo', 'AutenticacionSASL', 'S')
  else
    ArchivoIni.WriteString('Correo', 'AutenticacionSASL', 'N');

  ArchivoIni.WriteInteger('Correo', 'MetodoSSL', cbMetodoSSL.ItemIndex);
  ArchivoIni.WriteInteger('Correo', 'UsaTLS', cbUsoTLS.ItemIndex);
  ArchivoIni.WriteInteger('Correo', 'Modo', cbModoSSL.ItemIndex);

  //***************************************************
  if chbFiltraCpbteCondIva.Checked Then
    ArchivoIni.WriteString('FiltraCpbteCondIva', 'Filtra', 'S')
  else
    ArchivoIni.WriteString('FiltraCpbteCondIva', 'Filtra', 'N');

  ArchivoIni.WriteString('Correo', 'Remitente', edNombreRte.Text);
  ArchivoIni.WriteInteger('Correo', 'puerto', StrToInt(edPuerto.Text));

  ArchivoIni.WriteFloat('SaldoCC', 'Minimo', Minimo.Value);
  ArchivoIni.WriteFloat('SaldoCC', 'Maximo', Maximo.Value);
  ArchivoIni.WriteFloat('SaldoCCComp', 'Minimo', MinimoComp.Value);
  ArchivoIni.WriteFloat('SaldoCCComp', 'Maximo', MaximoComp.Value);
  ArchivoIni.WriteBool('Presupuesto', 'cantidadnegativa', chbNegativoPresupuesto.Checked);
  ArchivoIni.WriteBool('Presupuesto', 'PresupuestarSinStock', chPresupStock.Checked);
  ArchivoIni.WriteBool('Presupuesto', 'AlCobro', chAdministraPresupuestosAlCobro.Checked);

  ArchivoIni.WriteBool('stock', 'SeguimientoCosto',chbSeguimientoCosto.Checked);
  claveAux:='';
  if edClave.Text<>'' Then
    for I :=1 to length(edClave.Text) do
      begin
        ClaveAux:=ClaveAux+Chr(255-Ord(edClave.text[i]));
      end;

  claveAux:=Trim(edClave.Text);

  ArchivoIni.WriteString('Correo', 'Clave', ClaveAux);


  if cbVerFacturasVtaConIva.Checked Then  DiscriminaIva:='S'
    else  DiscriminaIva:='N';
  ArchivoIni.WriteString('DiscriminaIva', 'Discrimina', DiscriminaIva);

  ArchivoIni.WriteInteger('redondeo','decimales',(rgRedondeoUnitarioVentas.ItemIndex+2)*-1);
  ArchivoIni.WriteString('Freezer','pathCtaCte',edDirectorioFreazadoCC.Text);
  ArchivoIni.WriteString('Freezer','pathCtdo',edDirectorioFreezadoCtdo.Text);

  if cbImpresoraDefectoCpbte.Checked Then
    PrCpbteDefecto:='S'
  else
    PrCpbteDefecto:='N';
  if cbImpresoraDefectoListado.Checked Then
    PrListadoDefecto:='S'
  else
    PrListadoDefecto:='N';

  ArchivoIni.WriteString('Impresoras', 'Comprobantes', cbPrinterCpbte.Text);
  ArchivoIni.WriteString('Impresoras', 'Listados', cbPrinterListados.Text);
  ArchivoIni.WriteString('Impresoras', 'ComprobanteDefecto',PrCpbteDefecto);
  ArchivoIni.WriteString('Impresoras', 'ListadoDefecto',PrListadoDefecto);
  ArchivoIni.WriteString('Host','Host',edHost.Text);


  if cbScannerSerie.Checked Then
    ArchivoIni.WriteString('Scanner', 'Activo', 'S')
  else
    ArchivoIni.WriteString('Scanner', 'Activo', 'N');
  ArchivoIni.WriteString('Scanner', 'Puerto', cbPuertoCom.Text);
  ArchivoIni.WriteString('Scanner', 'id', edBalanza.Text);

  // **** Opciones de Facturacion Electronica**********************
  ArchivoIni.WriteString('FacturaEelectronica', 'Clave', edClaveElectronica.Text);
  ArchivoIni.WriteString('FacturaEelectronica', 'Certificado', edCertificadoElectronico.Text);
  ArchivoIni.WriteString('FacturaEelectronica', 'URLWSAA',edURLWSAA.Text );
  ArchivoIni.WriteString('FacturaEelectronica', 'URLWSW',edURLWSW.Text);
  ArchivoIni.WriteString('FacturaEelectronica', 'URLWSW_EX',edURLWSW_EX.Text);
  ArchivoIni.WriteBool('FacturaEelectronica', 'ControlNro', chbControlaNumFiscal.Checked);

  ArchivoIni.WriteInteger('FacturaEelectronica', 'Modo',rgModoFcElectronica.ItemIndex);
  // Tx de Stock *****************
  ArchivoIni.WriteString('stock', 'SucursalAdmin',ceSucursalAdmin.KeyValue);
  ArchivoIni.WriteString('stock', 'Transferencia',edDirectorioTxStock.Text);
  ArchivoIni.WriteString('stock', 'TransferenciaCtral',edDirectorioTxStock_a_Ctral.Text);
  ArchivoIni.WriteString('stock', 'AjustesStock',edDirectorioAjStock.Text);

  ArchivoIni.WriteBool('stock', 'GenerarArchivoTX',chbArchivoTxAutomatico.Checked);
  ArchivoIni.WriteBool('stock', 'GenerarArchivoAJ',chbArchivoAjAutomatico.Checked);

  // ******************************
  ArchivoIni.WriteBool('control', 'NumeracionCpbte',chbVerificaNumercionCpbte.Checked);
  // **************************************************************
  ArchivoIni.WriteBool('Pedidos', 'MostrarPedidos',chMostrarListadoPedidos.Checked);

  ArchivoIni.WriteBool('PedidosApp', 'ImprimePedidosApp',chImprimePedidosAppAutomatico.Checked);

  //por ahora sin uso
  if chbEnterCB.Checked Then
    ArchivoIni.WriteString('CodigoBarra', 'Enter', 'S')
  else
    ArchivoIni.WriteString('CodigoBarra', 'Enter', 'N');

  {if chbUsarDirCpbtes.Checked Then
    ArchivoIni.WriteString('Reportes', 'DirCpbte',edPathCpbte.Text)
  else
    ArchivoIni.WriteString('Reportes', 'DirCpbte','');

  if chbUsarDirListados.Checked Then
    ArchivoIni.WriteString('Reportes', 'DirListados',edPathListados.Text)
  else
    ArchivoIni.WriteString('Reportes', 'DirListados','');    }

  DMMain_FD.UsarPathCpbte :=  chbUsarDirCpbtes.Checked;
  DMMain_FD.UsarPathLst   :=  chbUsarDirListados.Checked;

  if chbUsarDirCpbtes.Checked Then
    DMMain_FD.PathReportesCpbte :=  edPathCpbte.Text;
  if chbUsarDirListados.Checked Then
    DMMain_FD.PathReportesLst   :=  edPathListados.Text;

 // **************************************************************
 // **************************************************************


  // Opciones del Ini General *************************************
  // **************************************************************
 // GeneralIni.WriteInteger ('Datos','DatosSinBDEKey', cbAlias.ItemIndex);

//  GeneralIni.WriteString  ('Datos', 'DatosSinBDEPath',cbAlias.Text);
  colbAlias.EditColumn:=1;
  GeneralIni.WriteInteger ('Datos', 'DatosSinBDEKey', colbAlias.ItemIndex);
  GeneralIni.WriteString  ('Datos', 'DatosSinBDEPath',colbAlias.EditText);

  colbAliasContable.EditColumn:=1;
  GeneralIni.WriteInteger ('Datos', 'DatosContableKey', colbAliasContable.ItemIndex);
  GeneralIni.WriteString  ('Datos', 'DatosContable', colbAliasContable.EditText);

  GeneralIni.WriteString  ('Icono', 'Path', edIcono.Text);
  GeneralIni.WriteInteger ('Datos', 'BaseDatos', rgBaseDatos.ItemIndex);

  GeneralIni.WriteBool    ('articulo', 'usarConceptoTC', chConceptoTC.Checked);

  GeneralIni.WriteBool    ('AvisoSinCae', 'Estado', chbPadronIIBBWeb.Checked);     //DMMain_FD.ActPadronIIBWeb
  // Opciones PLU ********************************
  GeneralIni.WriteInteger ('PLU', 'CodInicio', spCod_posInicial.Value);
  GeneralIni.WriteInteger ('PLU', 'CodLong',  spCod_Long.Value);
  GeneralIni.WriteInteger ('PLU', 'PesoInicio',spPeso_Inic.Value);
  GeneralIni.WriteInteger ('PLU', 'PesoLong',spPeso_Long.Value);
  GeneralIni.WriteInteger ('PLU', 'Modo',rgModoPLU.ItemIndex);
  GeneralIni.WriteInteger ('PLU', 'Decimales',spPluDecimales.Value);
  GeneralIni.WriteString  ('PLU', 'Numero', edCodigoBarra.Text);

  GeneralIni.WriteInteger('PLU', 'CodInicio',  spCod_posInicial.Value);   // DMMain_FD.CodInicioPlu
  GeneralIni.WriteInteger('PLU', 'CodLong',    spCod_Long.Value);         // DMMain_FD.CodLongPlu
  GeneralIni.WriteInteger('PLU', 'PesoInicio', spPeso_Inic.Value);        // DMMain_FD.PesoInioPLU
  GeneralIni.WriteInteger('PLU', 'PesoLong',   spPeso_Long.Value);        // DMMain_FD.PesoLongPLU


  // *********************************************
  if cbScannerSerie.Checked Then
    GeneralIni.WriteString('Scanner', 'Activo', 'S')
  else
    GeneralIni.WriteString('Scanner', 'Activo', 'N');
  GeneralIni.WriteString('Scanner', 'Puerto', cbPuertoCom.Text);

  GeneralIni.WriteInteger('Iva','Tasa',ceTasaIva.KeyValue);
  GeneralIni.WriteInteger('Iva','SobreTasa',ceSobreTasaIva.KeyValue);
  //GeneralIni.WriteString('Gravamen','gravamen',ceModoGravamen.Text);
  case ceModoGravamen_Old2.ItemIndex of
    0:GeneralIni.WriteString('Gravamen','gravamen','G');
    1:GeneralIni.WriteString('Gravamen','gravamen','E');
    2:GeneralIni.WriteString('Gravamen','gravamen','M');
    3:GeneralIni.WriteString('Gravamen','gravamen','I');
    4:GeneralIni.WriteString('Gravamen','gravamen','Y');
  end;

  GeneralIni.WriteInteger('RedondeoVTA','opcion',rgRedondeoUnitarioVentas.ItemIndex);

  GeneralIni.WriteInteger('Unidad','Unidad',ceUnidades.KeyValue);
  GeneralIni.WriteInteger('Inscripcion','Inscripcion',ceInscripcionCliente.KeyValue);
  GeneralIni.WriteInteger('MonedaStock','Moneda',dbcMoneda.KeyValue);
  GeneralIni.WriteBool('produccion','produccion',chbGenerarOProducionVta.Checked);
  GeneralIni.WriteBool('produccion','confirmacion',chbPedirConfirmacion.Checked);

  GeneralIni.WriteBool('stock','modificaprecio',chbPrecioArticulo.Checked);
  GeneralIni.WriteBool('stock','modificadetalle',chbDetalleArticulo.Checked);
  GeneralIni.WriteBool('FcElectronica','NotaVtaCtdo',chbNotaVtaContado.Checked);
  if chbNotaVtaContado.Checked then
    GeneralIni.WriteBool('FcElectronica','NotaVtaCtdo',False); // Para corregir eso son borrar lo anteriror

  GeneralIni.WriteBool('ControlaImpresion','Impresion',chbControlaImpresion.Checked);
  GeneralIni.WriteBool('Padron','PadronIIBBWeb',chbPadronIIBBWeb.Checked);
  GeneralIni.WriteBool('AvisoSinCae','Estado',chbAvisoFacSinCae.Checked);

  if FloatToStr(edAbonosDias.Value)='' then
    GeneralIni.WriteInteger('Abonos','Dias', 0)
  else
    GeneralIni.WriteInteger('Abonos','Dias', (edAbonosDias.AsInteger));

  if FloatToStr(edAbonosCargoFijo.Value)='' then
    GeneralIni.WriteInteger('Abonos','Cargo',0)
  else
    GeneralIni.WriteInteger('Abonos','Cargo',(edAbonosCargoFijo.AsInteger));

  GeneralIni.WriteString('BCRA', 'URL', edURLBcra.text);
  GeneralIni.WriteBool('BCRA','VerificaRc',chbVerificaCheRc.Checked);
  GeneralIni.WriteBool('CUIT','VerificaCuit',chbVerificaCuitRC.Checked);
  GeneralIni.WriteBool('CorreoFC','ConfirmaEnvioCorreo',chbConfirmaAutoEnvioCorreo.Checked);
  GeneralIni.WriteBool('REPROWEB','Consultar',chbReproWeb.Checked);
  GeneralIni.WriteBool('REPROWEB','Automatica',chbReprobeAuto.Checked);
  GeneralIni.WriteBool('IvaDif','Aplicar',chbAplicaIvaDiferenciado.Checked);

  GeneralIni.WriteString('Despachante', 'Honorario', edCodHonorarios.text);
  GeneralIni.WriteString('Anticipo', 'cod', edCodAnticipos.text);

  GeneralIni.WriteString('wispro', 'token', edTokenWisPro.Text);
  GeneralIni.WriteFloat('Facturacion', 'LimiteB', edLimiteFacturaB.Value);
  GeneralIni.WriteFloat('Facturacion', 'ToleranciaDeuda', edToleranciaDeuda.Value);

  // Ini General ***************************************************
  // **************************************************************

  GeneralIni.WriteString('GOOGLE', 'APIKEY', edApiKeyGoogle.text);
  GeneralIni.WriteString('OPENAI', 'APIKEY', edOpenAIKey.text);

  GeneralIni.WriteString('Monitoreo', 'path', edMonitoreo.text);
  GeneralIni.WriteBool('Monitoreo','Activo',chbActivaMonitoreo.Checked);

  GeneralIni.WriteString('COT', 'Clave', edClaveCOT.Text);
  GeneralIni.WriteInteger('COT', 'Modo', rgModoCOT.ItemIndex);
  GeneralIni.WriteString('COT', 'Cuit', edCotCuit.Text);
  GeneralIni.WriteString('COT', 'Codigo', edConceptoCOT.Text);
  GeneralIni.WriteString('COT', 'Detalle', edDetalleConceptoCOT.Text);

  GeneralIni.WriteString('wpress', 'Usuario', edUsuarioWP.Text );
  GeneralIni.WriteString('wpress', 'pass', edPassWP.Text );
  GeneralIni.WriteString('wpress', 'Dominio', edDominioWP.Text );
  GeneralIni.WriteInteger('wpress', 'ListaPrecios', dbcListaPreciosWeb.KeyValue );
  GeneralIni.WriteFloat('wpress', 'Bonificacion', edBonificacionPrecioWeb.Value);

   if sBuscar.Text<>'' then
    GeneralIni.WriteString('StockExp', 'SubRubro', sBuscar.ListSource.DataSet.FieldByName('CODIGO_SUBRUBRO').AsString)
  else
    GeneralIni.WriteString('StockExp', 'SubRubro', '');

  GeneralIni.WriteBool('AvisoStockMinimo','Estado',chStockMinimo.Checked);


  ArchivoIni.Free;
  GeneralIni.Free;

  SucursalPorDefecto    := ceSucursal.KeyValue;
  DepositoPorDefecto    := ceDeposito.KeyValue;
  //EmpleadoPorDefecto    := RxDEmpleado.KeyValue;
  ClientePorDefecto     := ceCliente.Text;
  if chbVerificaPrecioRt.Checked then
    VerificaCambioPrecio := 'S'
  else
    VerificaCambioPrecio := 'N';

  Close;
  if CambioBase Then
     Application.Terminate;
end;

procedure TFormConfiguraIni.DirectorioCCExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    edDirectorioFreazadoCC.Text :=FormBuscaDirectorio.Directorio
  else
    edDirectorioFreazadoCC.Text :='';
end;

procedure TFormConfiguraIni.DirectorioCtdoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    edDirectorioFreezadoCtdo.Text :=FormBuscaDirectorio.Directorio
  else
    edDirectorioFreezadoCtdo.Text :='';
end;

procedure TFormConfiguraIni.DirIconoExecute(Sender: TObject);
begin
  inherited;
 if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    edIcono.Text :=FormBuscaDirectorio.Directorio
  else
    edIcono.Text :='';
end;

procedure TFormConfiguraIni.edCodigoBarraChange(Sender: TObject);
begin
  inherited;
  edBarCode.Text:=edCodigoBarra.Text;
  edPlu.Text             := copy(edCodigoBarra.Text,trackPLU.Range.Min,(trackPLU.Range.Max-trackPLU.Range.Min)+1);
  edPesoPrecio.Text      := copy(edCodigoBarra.Text,trackPrecio.Range.Min,(trackPrecio.Range.Max-trackPrecio.Range.Min)+1);

  spCod_posInicial.Value := trackPLU.Range.Min;
  spCod_Long.Value       := trackPLU.Range.Max-trackPLU.Range.Min+1;

  spPeso_Inic.Value      := trackPrecio.Range.Min;
  spPeso_Long.Value      := trackPRECIO.Range.Max-trackPRECIO.Range.Min+1;


end;

procedure TFormConfiguraIni.ceCajaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
//  if key= vk_backspace Then
//    ceCaja.ClearValue;
end;


procedure TFormConfiguraIni.btPasaConfFCClick(Sender: TObject);
begin
  inherited;
  PasaConfFactUsuarios;
  Showmessage(' Todos los usuarios fueron configurados.');
end;

procedure TFormConfiguraIni.cbPrinterCpbteChange(Sender: TObject);
begin
  inherited;
 // Printer.PrinterIndex:=PrinterCombo.ItemIndex;
 // Edit1.Text:=IntToStr(Printer.PrinterIndex);
 // printer.PrinterIndex :=StrToInt(Edit1.Text);
end;

procedure TFormConfiguraIni.cbScannerSerieClick(Sender: TObject);
begin
  inherited;
  cbPuertoCom.Enabled:=cbScannerSerie.Checked;
end;

procedure TFormConfiguraIni.BuscarClientesExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     BEGIN
       ceCliente.Text  := FormBuscadorClientes.Codigo;
       CDSClientes.Close;
       CDSClientes.Params.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
       CDSClientes.Open;
       IF NOT (CDSClientes.eof) THEN
         BEGIN
           edNombreCliente.Text := CDSClientesNOMBRE.Value;
           ceCliente.SetFocus;
           ceCliente.SelectAll;
         END;
    END;
end;

procedure TFormConfiguraIni.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := Dato;
      CDSClientes.Open;
      IF NOT(CDSClientes.eof) THEN
        begin
          edNombreCliente.Text := CDSClientesNOMBRE.Value;
        end;
      if FormConfiguraIni<>Nil Then
        begin
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        end;
    END;
end;


procedure TFormConfiguraIni.ceSucursalAdminKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ((key=VK_BACK) or (key=VK_DELETE)) Then
    ceSucursalAdmin.KeyValue:=-1;

end;

procedure TFormConfiguraIni.chbActivaMonitoreoClick(Sender: TObject);
begin
  inherited;
  DMMain_FD.FDMoniFlatFileClientLink.Tracing := chbActivaMonitoreo.Checked;
end;

procedure TFormConfiguraIni.chbAvisoFacSinCaeClick(Sender: TObject);
begin
  inherited;
  DMMain_FD.AvisoSinCae   :=  chbAvisoFacSinCae.Checked;
end;

procedure TFormConfiguraIni.chOrdenarClick(Sender: TObject);
begin
  inherited;
  colbAlias.SortColumn:=1;
  colbAlias.Sorted    :=chOrdenar.Checked;

end;

procedure TFormConfiguraIni.colbAliasContableKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key=VK_BACK) or (key=VK_DELETE) then
    colbAliasContable.ItemIndex:=-1;

end;

procedure TFormConfiguraIni.colbAliasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_BACK) or (key=VK_DELETE) then
    colbAlias.ItemIndex:=-1;

end;

procedure TFormConfiguraIni.ceClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var Dato: STRING;
begin
  inherited;
  if key=vk_delete Then
    begin
      ceCliente.Text:='';
      edNombreCliente.Text:='';
    end
  else
  IF Key = vk_return THEN
    BEGIN
      //key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := Dato;
      CDSClientes.Open;
      IF NOT(CDSClientes.eof) THEN
        begin
          edNombreCliente.Text := CDSClientesNOMBRE.Value;
        end;
      if FormConfiguraIni<>Nil Then
        begin
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        end;
    END;

end;

end.
