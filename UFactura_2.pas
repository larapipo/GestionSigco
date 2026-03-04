unit UFactura_2;

interface

uses
  Windows, UABMBase, Db,  frxDBSet, frxClass, Dialogs,System.SysUtils,
  Buttons, Grids, DBGrids, StdCtrls, ExtCtrls,Forms, Graphics,DBClient,
  frxDMPExport, frxExportText, frxExportPDF,Librerias,
  JvLabel, JvFormPlacement, JvDBControls, JvExMask, JvToolEdit,
  FMTBcd, SqlExpr, DBXCommon, Menus, ActnPopup,
  frxBarcode, Variants,ComCtrls, DBCtrls, Mask,VirtualUI_SDK,
  JvComponentBase, ImgList, Controls,   Classes,
  ActnList, JvExControls, JvGradient, ToolWin, JvDBLookup,
  Math,GridClickPatch, JvDesktopAlert, JvBaseDlg, JvExDBGrids, JvDBGrid,
  IniFiles, Clipbrd, DateUtils, JvExExtCtrls, JvExtComponent, JvPanel,StrUtils,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, JvAppStorage,
  JvAppIniStorage, CompBuscador, FireDAC.Stan.Param, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvDBUltimGrid, JvExComCtrls, JvComCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, JvMaskEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt,SystelConn,dxGDIPlusClasses, frxExportBaseDialog, JvBaseEdits,
  JvArrowButton,UCambiaClaseComprobante, System.ImageList,
  Data.Win.ADODB, AdvUtil, AdvObj, BaseGrid, AdvGrid, Vcl.ActnMan,
  frCoreClasses, FireDAC.Phys.Intf, FireDAC.DApt.Intf,system.IOUtils;

type
    TFormCpbte_2 = class(TFormABMBase)
    pnCabecera: TPanel;
    DBText66: TDBText;
    dbtMuestraComprob: TDBText;
    DBText73: TDBText;
    DBText4: TDBText;
    DBCheckManual: TDBCheckBox;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeRemitos: TDBEdit;
    dbeSucursal: TDBEdit;
    pcDetalleFactura: TPageControl;
    PagDetalles: TTabSheet;
    DBGrillaDetalle: TDBGrid;
    PagPieCpbte: TTabSheet;
    Label6: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Bevel1: TBevel;
    Bevel6: TBevel;
    Bevel22: TBevel;
    Bevel28: TBevel;
    DBText1: TDBText;
    DBText5: TDBText;
    DBText7: TDBText;
    DBText6: TDBText;
    Label21: TLabel;
    Bevel32: TBevel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    DBGrillaIva: TDBGrid;
    dbeDscto: TDBEdit;
    frFactura: TfrxReport;
    frxDbCabecera: TfrxDBDataset;
    frxDBDetalle: TfrxDBDataset;
    frxDBImpuestos: TfrxDBDataset;
    btBuscarPresupuestos: TBitBtn;
    BtAnular: TSpeedButton;
    BuscarCliente: TAction;
    BuscarLdr: TAction;
    BuscarSucursal: TAction;
    BuscarDeposito: TAction;
    BuscarCondVta: TAction;
    BuscarTipoCpbte: TAction;
    BuscarPresupuesto: TAction;
    Imprimir: TAction;
    Anular: TAction;
    BuscarArticulo: TAction;
    VerAplicaciones: TAction;
    dbeMuestraVendedor: TDBEdit;
    BuscarVendedor: TAction;
    SpeedButton1: TSpeedButton;
    DatosCliente: TAction;
    dbcheckNc_Contado: TDBCheckBox;
    DesmarcarImpresa: TAction;
    gbLista: TGroupBox;
    dbcLista: TDBLookupComboBox;
    Recalcular: TAction;
    SpeedButton2: TSpeedButton;
    AgregarCliente: TAction;
    pagSeries: TTabSheet;
    dbgDetalleVta: TDBGrid;
    dbgSeries: TDBGrid;
    Label24: TLabel;
    dbtCantidad: TDBText;
    Label25: TLabel;
    BuscarSerie: TAction;
    dbgExitencias: TDBGrid;
    frDBSubDetalle: TfrxDBDataset;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    frBarCode: TfrxBarCodeObject;
    lbEstado: TLabel;
    gbValores: TGroupBox;
    DBEdit2: TDBEdit;
    dbtZ: TDBText;
    spCorreo: TSpeedButton;
    EnviarCorreo: TAction;
    ReCalcularTodo: TAction;
    lbPercep: TLabel;
    dbtTasa_IB: TDBText;
    dbtImporte_IB: TDBText;
    bvPercepcion: TBevel;
    DBText12: TDBText;
    Label13: TLabel;
    dbcPercibeIIBB: TDBCheckBox;
    pnAvisoFUAP: TPanel;
    PasaNC_a_Contado: TAction;
    dbcCaja: TDBLookupComboBox;
    ExportarXML: TAction;
    CopiarDetalle: TAction;
    PegarDetalle: TAction;
    frxDotMatrixExportFcCC: TfrxDotMatrixExport;
    frxPDFExport1: TfrxPDFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    VerCtaCte: TAction;
    NroCpbte: TDBText;
    TransformarFC: TAction;
    BorrarAplicaciones: TAction;
    CambiarNro: TAction;
    CambiarCliente: TAction;
    DBText10: TDBText;
    GrupoDetalle: TAction;
    PagPorCtaOrden: TTabSheet;
    RxCCodigo: TJvDBComboEdit;
    RxCSucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    rxcVendedor: TJvDBComboEdit;
    dbeFechaVta: TJvDBDateEdit;
    dbgConsignaciones: TDBGrid;
    ceProveedor: TJvDBComboEdit;
    dbeProveedor: TDBEdit;
    BuscarProveedor: TAction;
    BuscarRecepcion: TAction;
    spControlCpbteImp_vs_comp: TFDStoredProc;
    spBorraAplicaciones: TFDStoredProc;
    DBCheckBox2: TDBCheckBox;
    dbchCtayOrden: TDBCheckBox;
    dbcJuri: TDBLookupComboBox;
    dbtJuridicion: TDBText;
    dbtLocalidadJuri: TDBText;
    CacularIVADet: TAction;
    frGtia: TfrxReport;
    frxDBGtias: TfrxDBDataset;
    CambioDeposito: TAction;
    DuplicarComprobante: TAction;
    RecalculoSuma00: TAction;
    spRto: TSpeedButton;
    GenerarRto: TAction;
    Acopiar: TAction;
    spAcopiar: TSpeedButton;
    Freezar: TAction;
    LeerFacturasFrezadas: TAction;
    DBStatusLabel2: TJvDBStatusLabel;
    jvAlerta: TJvDesktopAlert;
    pnPrecios: TPanel;
    dbgPrecios: TJvDBGrid;
    DBText15: TDBText;
    DBText17: TDBText;
    chPreview: TCheckBox;
    pmMenu: TPopupMenu;
    CopiarDetalle1: TMenuItem;
    PegarDetalle2: TMenuItem;
    GravarNumeroOperacion: TAction;
    Label12: TLabel;
    edNumeroOP: TDBText;
    VerOperaciones: TAction;
    RevisionFactRto: TAction;
    GenerarTx: TAction;
    frxCupon: TfrxDBDataset;
    frxDBCarnes: TfrxDBDataset;
    BusquedaPorReferencia: TAction;
    frDBRtos: TfrxDBDataset;
    btImprimirRtos: TBitBtn;
    CambiarTipoVta: TAction;
    DBText8: TDBText;
    N10: TMenuItem;
    CopiaralPortaPaplesdeWindows1: TMenuItem;
    CambiaModoDiscrIVA: TAction;
    Fiscalizar: TAction;
    ConsultaFiscalizacion: TAction;
    frEmpresa: TfrxDBDataset;
    CleanBuffer: TAction;
    spFiscalizar: TSpeedButton;
    BuscarArticuloProd: TAction;
    N15: TMenuItem;
    VerCodigoAlternativo1: TMenuItem;
    spProduccion: TSpeedButton;
    EditarProduccion: TAction;
    CambiarCuit: TAction;
    BuscarPorObs: TAction;
    GenerarOrdenProduccion: TAction;
    VerOrdenProduccion: TAction;
    N17: TMenuItem;
    VerOrdendeProduccionAsociada1: TMenuItem;
    pnDetalleAdicional: TJvPanel;
    dbeNro: TDBEdit;
    Desanulacion: TAction;
    dbtCoorp: TDBText;
    spConsolidarCoorporativa: TFDStoredProc;
    VerHojaCarga: TAction;
    BorrarCAE: TAction;
    N4: TMenuItem;
    SaltearColumnadesctoenDetalle1: TMenuItem;
    Garante: TAction;
    pnGarante: TPanel;
    lbGarante: TDBText;
    AplicarLibroIVA: TAction;
    DBText21: TDBText;
    spIngresarAjuste: TFDStoredProc;
    pagLotes: TTabSheet;
    dbgDetalleLotes: TDBGrid;
    BuscaLote: TAction;
    pnLote: TPanel;
    cbLote: TJvDBComboEdit;
    Panel3: TPanel;
    dbeDespacho: TDBEdit;
    dbeCantidadLote: TDBEdit;
    dbeCant: TDBEdit;
    frxDBLotes: TfrxDBDataset;
    pnAcopio: TPanel;
    dbtMuestraAcopio: TDBText;
    pnCtroCosto: TPanel;
    DBText24: TDBText;
    spMovReempNC: TFDStoredProc;
    dskAviso: TJvDesktopAlert;
    HacerNotaCredito: TAction;
    spNCredito: TSpeedButton;
    QInsertarRegistro: TFDQuery;
    QBorrarConsolidacion: TFDQuery;
    BorrarConsolidacion: TAction;
    MainMenu1: TMainMenu;
    MenuImp: TMenuItem;
    MostrarDlg: TMenuItem;
    tbMenu: TToolBar;
    NoLiquidar: TAction;
    VerColumnaUnidades: TMenuItem;
    N5: TMenuItem;
    ComBuscadorLdr: TComBuscador;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorDepositos: TComBuscador;
    ComBuscadorVendedores: TComBuscador;
    ComBuscadorRecepciones: TComBuscador;
    ComBuscadorSeries: TComBuscador;
    ComBuscadorLote: TComBuscador;
    ComBuscadorConVta: TComBuscador;
    Bevel2: TBevel;
    DBText20: TDBText;
    Bevel3: TBevel;
    DBText28: TDBText;
    Label22: TLabel;
    Label23: TLabel;
    Panel4: TPanel;
    DBText29: TDBText;
    DBText30: TDBText;
    dbeDetAdicional: TDBMemo;
    DBText31: TDBText;
    DBText32: TDBText;
    PasaCCVta: TAction;
    frxSucursal: TfrxDBDataset;
    DBText33: TDBText;
    UsarDetalleAdicional: TMenuItem;
    btOkDetAdicional: TBitBtn;
    pcModoFactura: TJvPageControl;
    tsNormal: TTabSheet;
    tsExportacion: TTabSheet;
    DBText19: TDBText;
    DBText18: TDBText;
    dbeLdr: TDBEdit;
    RxCLdr: TJvDBComboEdit;
    RxCDeposito: TJvDBComboEdit;
    dbeDeposito: TDBEdit;
    RxCConVta: TJvDBComboEdit;
    dbeConVta: TDBEdit;
    dbeNombre: TDBEdit;
    Label26: TLabel;
    QAplicacionesNC: TFDQuery;
    QAplicacionesNCID: TIntegerField;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit4: TDBEdit;
    JvDBComboEdit1: TJvDBComboEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label30: TLabel;
    cbPais: TJvDBComboBox;
    cbDestino: TJvDBComboBox;
    cbIncoterms: TJvDBComboBox;
    Label31: TLabel;
    DBText27: TDBText;
    ModificaCotizacion: TAction;
    RecuperarRtos: TAction;
    MovCajaNCo: TAction;
    N13: TMenuItem;
    MovimientosCajaNC1: TMenuItem;
    pnMovCaja: TPanel;
    grAplicaNC: TGroupBox;
    DBEdit8: TDBEdit;
    JvDBComboBox4: TJvDBComboBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit7: TDBEdit;
    Label35: TLabel;
    DBEdit9: TDBEdit;
    N18: TMenuItem;
    ImpresionFormatoMail1: TMenuItem;
    dblMoneda: TDBLookupComboBox;
    LeerPeso: TAction;
    ConectarBalanza: TAction;
    imBalanza: TImage;
    Label36: TLabel;
    Pasar_A_Papelera: TAction;
    N20: TMenuItem;
    PasarAPapelera1: TMenuItem;
    Papelera: TAction;
    spPapelera: TSpeedButton;
    tsDespachante: TTabSheet;
    edNroInterno: TDBEdit;
    edDocAduanero: TDBEdit;
    edFechaCarga: TJvDBDateEdit;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    EdRefCliente: TDBEdit;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    JvDBComboEdit2: TJvDBComboEdit;
    DBEdit13: TDBEdit;
    Label44: TLabel;
    N21: TMenuItem;
    ModoDespachante1: TMenuItem;
    ComBuscadorTransporte: TComBuscador;
    BuscarTransporte: TAction;
    dbcTipoOp: TJvDBComboBox;
    pcSubForma: TPageControl;
    pag1: TTabSheet;
    pag2: TTabSheet;
    Label45: TLabel;
    Label46: TLabel;
    DBText26: TDBText;
    DBText11: TDBText;
    DBText13: TDBText;
    DBText25: TDBText;
    DBText22: TDBText;
    dbeObservaciones1: TDBEdit;
    dbeObservaciones2: TDBEdit;
    shPP: TShape;
    dbcAduanaOrigen: TJvDBLookupCombo;
    dbcAduanaDestino: TJvDBLookupCombo;
    Label17: TLabel;
    Label18: TLabel;
    N22: TMenuItem;
    ExpresarUnidadesenEnteros1: TMenuItem;
    DatosAdicionales1: TMenuItem;
    pnLimiteCto: TPanel;
    lbLimite: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Lte: TLabel;
    Saldo: TLabel;
    Label19: TLabel;
    SaldoRto: TLabel;
    Label1: TLabel;
    DBText14: TDBText;
    DBText16: TDBText;
    Label3: TLabel;
    Label15: TLabel;
    dbeDscto_1: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Panel2: TPanel;
    DBCheckBox1: TDBCheckBox;
    spMenu: TSpeedButton;
    edNotas: TDBMemo;
    pnCosto: TPanel;
    dbtCosto: TDBText;
    Label8: TLabel;
    dbtDetalle: TDBText;
    Label47: TLabel;
    Label48: TLabel;
    dbcDeduceGastos: TDBCheckBox;
    JvArrowButton1: TJvArrowButton;
    PopupMenuImpresion: TPopupMenu;
    ImprimirBorrador1: TMenuItem;
    Label49: TLabel;
    JvDBCalcEdit4: TJvDBCalcEdit;
    spMenu_2: TSpeedButton;
    ComBuscadorNotas: TComBuscador;
    ceNotas: TJvComboEdit;
    BuscarNotas: TAction;
    Label50: TLabel;
    Panel5: TPanel;
    DBCheckBox3: TDBCheckBox;
    Button1: TButton;
    BuscaNCAplicaAFactura: TAction;
    FiscalizarAutomatica: TMenuItem;
    CambiarClase: TAction;
    edFob: TDBEdit;
    edCambio: TDBEdit;
    edHonorariosPorc: TDBEdit;
    edHonorarios: TDBEdit;
    lblJvLabel2: TLabel;
    lblJvLabel3: TLabel;
    lblJvLabel6: TLabel;
    lblJvLabel1: TLabel;
    lblJvLabel8: TLabel;
    lblJvLabel10: TLabel;
    lblJvLabel11: TLabel;
    lblJvLabel9: TLabel;
    lblRxLabel58: TLabel;
    lblRxLabel59: TLabel;
    lblRxLabel60: TLabel;
    lblRxLabel61: TLabel;
    lblRxLabel63: TLabel;
    lblRxLabel2: TLabel;
    lblJurisdiccion: TLabel;
    lblRxLabel6: TLabel;
    lblRxLabel1: TLabel;
    lblJvLabel5: TLabel;
    lblJvLabel7: TLabel;
    lblJvLabel15: TLabel;
    lblRxLabel3: TLabel;
    lblRxLabel4: TLabel;
    lblRxLabel62: TLabel;
    lbCaja: TLabel;
    lblRxLabel7: TLabel;
    lblJvLabel16: TLabel;
    lblJvLabel4: TLabel;
    lblJvLabel13: TLabel;
    lblJvLabel14: TLabel;
    lblJvLabel12: TLabel;
    spDetalleEntregas: TSpeedButton;
    VerEntregas: TAction;
    edTotal: TDBEdit;
    ImportarExcel: TAction;
    OpenDialog: TOpenDialog;
    N23: TMenuItem;
    ImportarExcel1: TMenuItem;
    DBImage1: TDBImage;
	  pagEntregas: TTabSheet;
    dbgEntregas: TDBGrid;	
    spIngresarAjusteID_MOVACTA: TIntegerField;
    spIngresarAjusteID_MOVCC: TIntegerField;
    DBText34: TDBText;
    Label52: TLabel;
    ReHacerQR: TAction;
    DBText35: TDBText;
    DBText36: TDBText;
    dbgAsociados: TDBGrid;
    frxDBAsociados: TfrxDBDataset;
    btAnexosTr: TBitBtn;
    dbcTransporte: TDBLookupComboBox;
    RxLabel8: TJvLabel;
    dbgPercepcionesIVA: TDBGrid;
    lbModoCpbte: TLabel;
    frxDBPercepcionesIVA: TfrxDBDataset;
    PedidoCOT: TAction;
    spPedidoCOT: TSpeedButton;
    Label2: TLabel;
    DBText9: TDBText;
    DBText37: TDBText;
    Label51: TLabel;
    DBText38: TDBText;
    ActualizaCostoFc: TAction;
    N24: TMenuItem;
    ActualizaCostoenFactura1: TMenuItem;
    DBText39: TDBText;
    GenerarNotaPedido: TAction;
    Label53: TLabel;
    DBText40: TDBText;
    DBText41: TDBText;
    AsignarObra: TAction;
    DBText42: TDBText;
    Label54: TLabel;
    PopupActionBar1: TPopupActionBar;
    SpeedButton3: TSpeedButton;
    VerLotes: TAction;
    VerLotes1: TMenuItem;
    ModificarTotal: TMenuItem;
    Label55: TLabel;
    DBText23: TDBText;
    dbchNC_Diferencia: TDBCheckBox;
    frxDBDetNovedades: TfrxDBDataset;
    spVerNovedades: TSpeedButton;
    VerNovedadesDet: TAction;
    ActualizaDireccionLDR: TAction;
    UsarUltimoDeposito: TMenuItem;
    ExportarPDF: TMenuItem;
    CambiarFechaVencimiento: TAction;
    CambiarFechadeVencimiento1: TMenuItem;
    JvDBDateEdit1: TJvDBDateEdit;
    procedure BuscarClienteExecute(Sender: TObject);
    procedure BuscarLdrExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure BuscarCondVtaExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BuscarPresupuestoExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure AnularExecute(Sender: TObject);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
    procedure DBGrillaDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure DatosAdicionales1Clickd(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure pcDetalleFacturaEnter(Sender: TObject);
    procedure VerAplicacionesExecute(Sender: TObject);
    procedure DBGrillaDetalleEditButtonClick(Sender: TObject);
    procedure RxCSucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCLdrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCDepositoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCConVtaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarVendedorExecute(Sender: TObject);
    procedure DBGrillaDetalleEnter(Sender: TObject);
    procedure DBGrillaDetalleExit(Sender: TObject);
    procedure rxcVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DatosClienteExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure dbcheckNc_ContadoClick(Sender: TObject);
    procedure DesmarcarImpresaExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cpPuertoComReceiveData(Sender: TObject; DataPtr: Pointer;
      DataSize: Cardinal);
    procedure dbeFechaVtaExit(Sender: TObject);
    procedure RecalcularExecute(Sender: TObject);
    procedure dbcListaClick(Sender: TObject);
    procedure dbcListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AgregarClienteExecute(Sender: TObject);
    procedure dbgDetalleVtaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure BuscarSerieExecute(Sender: TObject);
    procedure dbgSeriesKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrillaDetalleDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure EnviarCorreoExecute(Sender: TObject);
    procedure ReCalcularTodoExecute(Sender: TObject);
    procedure dbcPercibeIIBBClick(Sender: TObject);
    procedure DBGrillaDetalleDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure PasaNC_a_ContadoExecute(Sender: TObject);
    procedure ExportarXMLExecute(Sender: TObject);
    procedure CopiarDetalleExecute(Sender: TObject);
    procedure PegarDetalleExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure frFacturaPrintReport(Sender: TObject);
    procedure dbeNombreMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TransformarFCExecute(Sender: TObject);
    procedure BorrarAplicacionesExecute(Sender: TObject);
    procedure CambiarNroExecute(Sender: TObject);
    procedure VerCtaCteExecute(Sender: TObject);
    procedure CambiarClienteExecute(Sender: TObject);
    procedure GrupoDetalleExecute(Sender: TObject);
    procedure dbchCtayOrdenClick(Sender: TObject);
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure dbgConsignacionesColEnter(Sender: TObject);
    procedure BuscarRecepcionExecute(Sender: TObject);
    procedure dbgConsignacionesEnter(Sender: TObject);
    procedure CacularIVADetExecute(Sender: TObject);
    procedure ToolBar1DblClick(Sender: TObject);
    procedure CambioDepositoExecute(Sender: TObject);
    procedure DuplicarComprobanteExecute(Sender: TObject);
    procedure RecalculoSuma00Execute(Sender: TObject);
    procedure GenerarRtoExecute(Sender: TObject);
    procedure AcopiarExecute(Sender: TObject);
    procedure FreezarExecute(Sender: TObject);
    procedure LeerFacturasFrezadasExecute(Sender: TObject);
    procedure sbEstadoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GravarNumeroOperacionExecute(Sender: TObject);
    procedure edNumeroOPClick(Sender: TObject);
    procedure VerOperacionesExecute(Sender: TObject);
    procedure RevisionFactRtoExecute(Sender: TObject);
    procedure GenerarTxExecute(Sender: TObject);
    procedure BusquedaPorReferenciaExecute(Sender: TObject);
    procedure btImprimirRtosClick(Sender: TObject);
    procedure CambiarTipoVtaExecute(Sender: TObject);
    procedure CopiaralPortaPaplesdeWindows1Click(Sender: TObject);
    procedure CambiaModoDiscrIVAExecute(Sender: TObject);
    procedure FiscalizarExecute(Sender: TObject);
    procedure ConsultaFiscalizacionExecute(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure CleanBufferExecute(Sender: TObject);
    procedure BuscarArticuloProdExecute(Sender: TObject);
    procedure VerCodigoAlternativo1Click(Sender: TObject);
    procedure EditarProduccionExecute(Sender: TObject);
    procedure CambiarCuitExecute(Sender: TObject);
    procedure BuscarPorObsExecute(Sender: TObject);
    procedure GenerarOrdenProduccionExecute(Sender: TObject);
    procedure VerOrdenProduccionExecute(Sender: TObject);
    procedure pnDetalleAdicionalExit(Sender: TObject);
    procedure DBGrillaDetalleColExit(Sender: TObject);
    procedure dbeDetAdicionalExit(Sender: TObject);
    procedure dbtDetalleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DesanulacionExecute(Sender: TObject);
    procedure BorrarCAEExecute(Sender: TObject);
    procedure SaltearColumnadesctoenDetalle1Click(Sender: TObject);
    procedure GaranteExecute(Sender: TObject);
    procedure lbGaranteClick(Sender: TObject);
    procedure AplicarLibroIVAExecute(Sender: TObject);
    procedure dbgDetalleLotesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BuscaLoteExecute(Sender: TObject);
    procedure dbtMuestraAcopioClick(Sender: TObject);
    procedure lblJvLabel13Click(Sender: TObject);
    procedure lblJvLabel13MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnMovCajaClick(Sender: TObject);
    procedure HacerNotaCreditoExecute(Sender: TObject);
    procedure ConsolidarFactura1Click(Sender: TObject);
    procedure BorrarConsolidacionExecute(Sender: TObject);
    procedure MostrarDlgClick(Sender: TObject);
    procedure NoLiquidarExecute(Sender: TObject);
    procedure dbgDetalleVtaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure VerColumnaUnidadesClick(Sender: TObject);
    procedure dbgExitenciasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure VerHojaCargaExecute(Sender: TObject);
    procedure dbcJuriClick(Sender: TObject);
    procedure DBText29Click(Sender: TObject);
    procedure dbeDetAdicionalKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PrevExecute(Sender: TObject);
    procedure PasaCCVtaExecute(Sender: TObject);
    procedure dbeNombreDblClick(Sender: TObject);
    procedure UsarDetalleAdicionalClick(Sender: TObject);
    procedure btOkDetAdicionalClick(Sender: TObject);
    procedure ModificaCotizacionExecute(Sender: TObject);
    procedure RecuperarRtosExecute(Sender: TObject);
    procedure MovCajaNCoExecute(Sender: TObject);
    procedure ImpresionFormatoMail1Click(Sender: TObject);
    procedure dblMonedaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ConectarBalanzaExecute(Sender: TObject);
    procedure LeerPesoExecute(Sender: TObject);
    procedure DBGrillaDetalleDblClick(Sender: TObject);
    procedure Pasar_A_PapeleraExecute(Sender: TObject);
    procedure PapeleraExecute(Sender: TObject);
    procedure frxPDFExport1BeforeExport(Sender: TObject);
    procedure ModoDespachante1Click(Sender: TObject);
//    procedure BuscarTransporteExecute(Sender: TObject);
    procedure JvDBComboEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ExpresarUnidadesenEnteros1Click(Sender: TObject);
    procedure DatosAdicionales1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ImprimirBorrador1Click(Sender: TObject);
    procedure BuscarNotasExecute(Sender: TObject);
    procedure ceNotasKeyPress(Sender: TObject; var Key: Char);
    procedure ceNotasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrillaDetalleDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure BuscaNCAplicaAFacturaExecute(Sender: TObject);
    procedure DSBaseDataChange(Sender: TObject; Field: TField);
    procedure edHonorariosEnter(Sender: TObject);
    procedure edHonorariosPorcEnter(Sender: TObject);
    procedure FiscalizarAutomaticaClick(Sender: TObject);
    procedure CambiarClaseExecute(Sender: TObject);
    procedure frFacturaAfterPrintReport(Sender: TObject);
    procedure edNroInternoEnter(Sender: TObject);
    procedure VerEntregasExecute(Sender: TObject);
    procedure ImportarExcelExecute(Sender: TObject);
    procedure pnCabeceraMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ReHacerQRExecute(Sender: TObject);
    procedure DBText36Click(Sender: TObject);
    procedure dbgAsociadosKeyPress(Sender: TObject; var Key: Char);
    procedure btAnexosTrClick(Sender: TObject);
    procedure PedidoCOTExecute(Sender: TObject);
    procedure ActualizaCostoFcExecute(Sender: TObject);
    procedure GenerarNotaPedidoExecute(Sender: TObject);
    procedure AgregarCabNP;
    procedure AgregarDetNP;
    procedure cbPaisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AsignarObraExecute(Sender: TObject);
    procedure VerLotesExecute(Sender: TObject);
    procedure ModificarTotalClick(Sender: TObject);
    procedure DBText23Click(Sender: TObject);
    procedure pcDetalleFacturaChange(Sender: TObject);
    procedure BuscarTransporteExecute(Sender: TObject);
    procedure dbeRemitosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure VerNovedadesDetExecute(Sender: TObject);
    procedure UsarUltimoDepositoClick(Sender: TObject);
    procedure ExportarPDFClick(Sender: TObject);
    procedure CambiarFechaVencimientoExecute(Sender: TObject);
  private
    { Private declarations }
    Balanza:tSystelConnect;
  public
    { Public declarations }
    Generado,
    Duplicado     : Boolean;
    PrefijoDup,
    NumeroDup,
    NroFacAnular       : String; // para cuando hago un duplicado
    NroInterno         : String;
    Proveedor          : String;
    Consignacion       : Boolean;
    IdComprobante      : Integer;
    ID_FcContado       : Integer; // esto es para las NC
    SucursalComprobante: Integer;
    CodigosSeries      : TStringList;
    Anulado            : Tpanel;
    CpbteNuevo         : Char;
    Preveer            : STRING;
    ImporteOriginal    : Real;
    Impresa            : Boolean;
    ImprimeSaldo       : String;
    Calcula_iva_articulo,Divide_iva :Boolean;
    GeneraTx:Boolean;
    AutoEnviarCorreo   :Boolean;
    DepositoDestino    :Integer;
    OldLista           :String; // lo cargo con el numero de lista del momento que esta asignada
    EditarNro          :String;
    KeyPlaner          :String;

    UltimaTipoOp       :String;  // paa despachante
    UltimaAduanaOrigen :Integer;
    UltimaTransp       :Integer;
    UltimaTranspNombre :String;
    UltimoDeposito     :Integer;
    UltimaFechaCarga   :TDateTime;

    procedure Consolidar_CtaCoorp;
    procedure AgregarCabFcCtdo(IdCpbte:Integer);
    procedure GenerarFcCtdo;
    function ControlSerie:Boolean;
    function ControlLotes:Boolean;
    PROCEDURE InsertarDetalle(Codigo: STRING; Cantidad: double; Unitario:double; Descuento: double; Detalle: STRING; Id_cab,Id_Det:Integer);
    Procedure VerificaFranquicia(Modo:Integer);
    Procedure AgregarCabRto;
    procedure AgregarDetRto;
    PROCEDURE UltimoComprobante;
    procedure Exportar_PDF(Dir:string;ConDialogo:Boolean = True);

  end;

var
  FormCpbte_2: TFormCpbte_2;

implementation

uses DMVenta, UBuscadorCpbte, UBuscarPresupuestos,DMBuscadoresForm, UBuscadorCpbte_Despachante,
     UConsultaArticuloVendido, UAplicacionesNCVenta,UDetallesEntregas,
     ULogin, UClientes_2,
     UBuscadorClientes, UBuscadorArticulos, UUltimaVtaCliente, UCorreo,
     UEleccionCaja, UUltimasVtasMensual, UCtaCteVta, UPasaACC, UCambiaNumeroCpbte,
     UCambioClienteFactura, UAsignaGrupoDetalleVta, UBuscadorProveedor,
     UProveedor_x_CtaOrden, DMStoreProcedureForm,
     UControlMesesGtia, UCambiaDespositoFc, UControlNroRto, UDepositoTxMercaderia,
     UTransferencia, UBuscadorTipoCpbte, URemitos, DMRemitos,
     UAcopio, UListarFacturasFrezadas, UNumeroOperacion, UListadoOperaciones,
     UBuscarPorNroReferencia, UDetalleCarnes, UFacturaCtdo_2, UFiscalizacion,
     UFacturaProduccion, UBuscadorComprobantes, UNroCuit_Doc, UBuscadorPorObs,
     UOrdenProduccion, UControlGrillaVta, UCantidadCuotas,
     UCantidadPedir, UAdministraGarantes, UMuestraGarantes,
     DMVentaCtdo, UAsignacionCtroCostoFVta, UDetalleMovCaja_Cpbte, UNroSeries,
     UMuestraHRuta, UAbonosCupon,UDMain_FD, UModCotizCpbte, UStock_2,
     URestaurarPapelera, UNotaCreditoAplicaAFactura, UAnexosRtoTransporte,
     CotLinker_TLB, DMNPedidoCliente, UNotaPedidoCliente, UBuscadorDepositos,
     UFecha, UAsignaObra,ULotesStock, UPresupuesto_2, UNovedadesDetVtas;

{$R *.DFM}
 {$D+}

procedure TFormCpbte_2.ActualizaCostoFcExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.ActualizaCostoFc_Vta(DSBase.DataSet.FieldByName('ID_FC').Value);
  Recuperar.Execute;
end;

procedure TFormCpbte_2.AgregarCabFcCtdo(IdCpbte:Integer);
begin
  with DatosVentasCtdo DO
  begin
    FormCpbteCtdo_2.SucursalPorDefecto                := DatosVentas.CDSVentaCabSUCURSAL.AsInteger;
    FormCpbteCtdo_2.DepositoPorDefecto                := DatosVentas.CDSVentaCabDEPOSITO.Value;
    DatosVentasCtdo.CDSVentaCabCODIGOSetText(DatosVentasCtdo.CDSVentaCabCODIGO,DatosVentas.CDSVentaCabCODIGO.AsString);
    DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDCpbte));
    DatosVentasCtdo.CDSVentaCabID_FC_CON_ADEL.Value   := DatosVentas.CDSVentaCabID_FC.Value;
    DatosVentasCtdo.CDSVentaCabIMPRESO.Value          := 'N';
    CDSVentaCabOBSERVACION1.Value                     := 'Anticipo de Sobre Fact';
    CDSVentaCabOBSERVACION2.Value                     := 'Nro.:'+DatosVentas.CDSVentaCabNROCPBTE.Value;

  //  if DatosPresupuesto.CDSPresuCabLISTAPRECIO.AsString<>'' then
  //     CDSVentaCabLISTAPRECIO.Value         :=DatosPresupuesto.CDSPresuCabLISTAPRECIO.Value;
  //  if DatosPresupuesto.CDSPresuCabVENDEDOR.AsString<>'' Then
    DatosVentasCtdo.CDSVentaCabVENDEDORSetText(DatosVentasCtdo.CDSVentaCabVENDEDOR,DatosVentas.CDSVentaCabVENDEDOR.AsString);

    DatosVentasCtdo.CDSVentaCabUSUARIO.Value     :=DMMain_FD.UsuarioActivo;
     // por que si no me agreagaba el iva
    DatosVentasCtdo.CDSVentaCabDSTOSetText(DatosVentasCtdo.CDSVentaCabDSTO,DatosVentas.CDSVentaCabDSTO.AsString);
    FormCpbteCtdo_2.DiscriminaIva  := 'S';

  end;
end;

procedure TFormCpbte_2.AgregarCabNP;
begin
  with DatosNPedidoClientes DO
  begin
    FormNotaPedidoCliente.SucursalPorDefecto := SucursalComprobante;
    FormNotaPedidoCliente.DepositoPorDefecto := DepositoDestino;
    CDSNotaPedidoCabID_TIPOCOMPROBANTESetText(CDSNotaPedidoCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
    CDSNotaPedidoCabCODIGOSetText(CDSNotaPedidoCabCODIGO,DSBase.DataSet.FieldByName('CODIGO').AsString);
    CDSNotaPedidoCabLDRSetText(CDSNotaPedidoCabLDR,DSBase.DataSet.FieldByName('LDR').AsString);
    CDSNotaPedidoCabNOMBRE.Value       := DSBase.DataSet.FieldByName('NOMBRE').Value;
    CDSNotaPedidoCabRAZONSOCIAL.Value  := DSBase.DataSet.FieldByName('RAZONSOCIAL').Value;
    CDSNotaPedidoCabCUIT.Value         := DSBase.DataSet.FieldByName('CUIT').Value;
    CDSNotaPedidoCabTIPOIVA.Value      := DSBase.DataSet.FieldByName('TIPOIVA').Value;
    CDSNotaPedidoCabDIRECCION.Value    := DSBase.DataSet.FieldByName('DIRECCION').Value;
    CDSNotaPedidoCabLOCALIDAD.Value    := DSBase.DataSet.FieldByName('LOCALIDAD').Value;
    CDSNotaPedidoCabCPOSTAL.Value      := DSBase.DataSet.FieldByName('CPOSTAL').Value;

    CDSNotaPedidoCabCONDICIONVTASetText(CDSNotaPedidoCabCONDICIONVTA,DSBase.DataSet.FieldByName('CONDICIONVTA').AsString);

    CDSNotaPedidoCabIMPRESO.Value     :='N';
    CDSNotaPedidoCabOBSERVACION1.Value:= DSBase.DataSet.FieldByName('OBSERVACION1').AsString;
    CDSNotaPedidoCabOBSERVACION2.Value:= DSBase.DataSet.FieldByName('OBSERVACION2').AsString;

    CDSNotaPedidoCabZONA.Value        := DSBase.DataSet.FieldByName('ZONA').Value;

    CDSNotaPedidoCabFACTURA_ID.Value       :=DSBase.DataSet.fieldbyName('ID_FC').Value;
    CDSNotaPedidoCabFACTURA_NROCPBTE.Value :=DSBase.DataSet.fieldbyName('NROCPBTE').Value;;

    if DSBase.DataSet.FieldByName('LISTAPRECIO').AsString<>'' then
      CDSNotaPedidoCabLISTAPRECIO.Value         :=DSBase.DataSet.FieldByName('LISTAPRECIO').Value;
    if DSBase.DataSet.FieldByName('VENDEDOR').AsString<>'' Then
      CDSNotaPedidoCabVENDEDORSetText(CDSNotaPedidoCabVENDEDOR,DSBase.DataSet.FieldByName('VENDEDOR').AsString);

    CDSNotaPedidoCabUSUARIO.Value     :=DMMain_FD.UsuarioActivo;

  end;
end;

procedure TFormCpbte_2.ConsolidarFactura1Click(Sender: TObject);
begin
  inherited;
  Consolidar_CtaCoorp;
end;

procedure TFormCpbte_2.Consolidar_CtaCoorp;
var Consolidado:boolean;
id_ajuste:Integer;
begin
  Consolidado:=False;
  if Trim(DSBase.DataSet.FieldByName('MUESTRACOORPORATIVO').AsString)='' then
    raise Exception.Create('No es una Cta Coorporativa');
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spConsolidarCoorporativa.Close;
    spConsolidarCoorporativa.ParamByName('Cliente').AsString    := DatosVentas.CDSVentaCabCODIGO.AsString;
    spConsolidarCoorporativa.ParamByName('Cta_Coorp').AsString  := DatosVentas.CDSVentaCabMUESTRACOORPORATIVO.AsString;
    spConsolidarCoorporativa.ParamByName('Importe').AsFloat     := DatosVentas.CDSVentaCabTOTAL.AsFloat;
    spConsolidarCoorporativa.ParamByName('Detalle_Fc').AsString := DatosVentas.CDSVentaCabTIPOCPBTE.AsString+'-'+
                                                                   DatosVentas.CDSVentaCabLETRAFAC.AsString+'-'+
                                                                   DatosVentas.CDSVentaCabSUCFAC.AsString+'-'+
                                                                   DatosVentas.CDSVentaCabNUMEROFAC.AsString;
    spConsolidarCoorporativa.ParamByName('Fecha_Op').AsDate     := DatosVentas.CDSVentaCabFECHAVTA.AsDateTime;
    spConsolidarCoorporativa.ParamByName('Sucursal').AsInteger  := DatosVentas.CDSVentaCabSUCURSAL.AsInteger;
    spConsolidarCoorporativa.ParamByName('Usuario').AsString    := DatosVentas.CDSVentaCabUSUARIO.AsString;
    spConsolidarCoorporativa.ParamByName('id_factura').AsInteger:= DatosVentas.CDSVentaCabID_FC.AsInteger;
    spConsolidarCoorporativa.ParamByName('tipo_comp').AsString  := DatosVentas.CDSVentaCabTIPOCPBTE.AsString;

    spConsolidarCoorporativa.ExecProc;

    id_ajuste  := spConsolidarCoorporativa.ParamByName('ID_AJUSTE_CTA_AJUSTADA').AsInteger;

    spConsolidarCoorporativa.Close;

    QInsertarRegistro.Close;
    QInsertarRegistro.ParamByName('ctadestino').Value      := DatosVentas.CDSVentaCabMUESTRACOORPORATIVO.AsString;
    QInsertarRegistro.ParamByName('ctaorigen').Value       := DatosVentas.CDSVentaCabCODIGO.AsString;
    QInsertarRegistro.ParamByName('importe').Value         := DatosVentas.CDSVentaCabTOTAL.AsFloat;
    QInsertarRegistro.ParamByName('idajustedestino').Value := spConsolidarCoorporativa.ParamByName('id_cta_destino').AsInteger;
    QInsertarRegistro.ExecSQL();

    DMMain_FD.fdcGestion.Commit;
    Consolidado:=True;
  except
    Consolidado := False;
    id_ajuste   := -1;

    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('NO se Ajustaron las Ctas Coorporativas...!');
  end;

  if Consolidado then
    begin
      if (DatosVentas.CDSVentaCabTIPOCPBTE.Value<>'NC') then
        begin
          DMMain_FD.APlicarAJ_Venta(DatosVentas.CDSVentaCabCODIGO.AsString,DatosVentas.CDSVentaCabID_FC.Value);

//          IF Not(FormAplicacionesCCVta_2.CDSMovCC.Locate('ID_CPBTE ; TIPOCPBTE', VarArrayOf([DatosVentas.CDSVentaCabID_FC.Value,DatosVentas.CDSVentaCabTIPOCPBTE.Value]), [])) tHEN
//            FormAplicacionesCCVta_2.CDSMovCC.Last;
//          IF Not(FormAplicacionesCCVta_2.CDSACta.Locate('ID_CPBTE ; TIPOCPBTE', VarArrayOf([spConsolidarCoorporativa.ParamByName('ID_AJUSTE_CTA_AJUSTADA').AsInteger,'AJ']), [])) tHEN
//            FormAplicacionesCCVta_2.CDSACta.Last;
//          if (Trunc(FormAplicacionesCCVta_2.CDSMovCCSALDO.AsFloat*100)>0) then
//            begin
//              FormAplicacionesCCVta_2.cxGrid1DBTableView1DragDrop(FormCpbte_2, FormAplicacionesCCVta_2.DBGActa,10,10);
//              if FormAplicacionesCCVta_2.MovAplicado=False then Exit;
//            end;
        end
      else
        if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC') then
          begin
            DMMain_FD.APlicarAJ_Venta(DatosVentas.CDSVentaCabCODIGO.AsString,DatosVentas.CDSVentaCabID_FC.Value);

//            IF Not(FormAplicacionesCCVta_2.CDSMovCC.Locate('ID_CPBTE ; TIPOCPBTE', VarArrayOf([spConsolidarCoorporativa.ParamByName('ID_A_CTA').Value,'AJ']), [])) tHEN
//              FormAplicacionesCCVta_2.CDSMovCC.Last;
//            IF Not(FormAplicacionesCCVta_2.CDSACta.Locate('ID_CPBTE ; TIPOCPBTE', VarArrayOf([DatosVentas.CDSVentaCabID_FC.Value,DatosVentas.CDSVentaCabTIPOCPBTE.Value]), [])) tHEN
//              FormAplicacionesCCVta_2.CDSACta.Last;
//            if (Trunc(FormAplicacionesCCVta_2.CDSMovCCSALDO.AsFloat*100)>0) then
//              begin
//                FormAplicacionesCCVta_2.cxGrid1DBTableView1DragDrop(FormCpbte_2, FormAplicacionesCCVta_2.DBGActa,10,10);
//                if FormAplicacionesCCVta_2.MovAplicado=False then Exit;
//              end;
          end;
        end;

end;

procedure TFormCpbte_2.GenerarFcCtdo;
var Cont,Renglones,Deposito,Id_Ajuste, Id_Mov:Integer;
begin
  inherited;
  //** aca se va a generar Factura.. esto es para las ventas en cuotas
  //************************************************

  DatosVentas.QbuscaAjustes.Close;
  DatosVentas.QBuscaAjustes.paramByName('id').Value:=DSBase.DataSet.FieldByName('ID_TIPOCOMPROBANTE').Value;
  DatosVentas.QbuscaAjustes.Open;
  if (DatosVentas.QBuscaAjustesID_AJUSTECC.AsString<>'') then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        DatosVentas.QbuscaAjustes.Close;
        DatosVentas.QBuscaAjustes.paramByName('id').Value:=DSBase.DataSet.FieldByName('ID_TIPOCOMPROBANTE').Value;
        DatosVentas.QbuscaAjustes.Open;

        spIngresarAjuste.Close;
        if DatosVentas.QbuscaAjustesULTID.IsNull then
          spIngresarAjuste.ParamByName('id_ajuste').Value     := 1
        else
          spIngresarAjuste.ParamByName('id_ajuste').Value     := DatosVentas.QbuscaAjustesULTID.Value + 1;

        spIngresarAjuste.ParamByName('id_comprob').Value      := DatosVentas.QBuscaAjustesID_AJUSTECC.Value;

        spIngresarAjuste.ParamByName('cliente').Value         := Trim(DSBase.DataSet.FieldByName('Codigo').AsString);
        spIngresarAjuste.ParamByName('haber').Value           := 0;
        spIngresarAjuste.ParamByName('debe').Value            := DSBase.DataSet.FieldByName('Pago_a_Cta').AsFloat;
        spIngresarAjuste.ParamByName('detalle').Value         := 'Ant.FC-'+DSBase.DataSet.FieldByName('NROCPBTE').AsString;
        spIngresarAjuste.ParamByName('fecha_VTO').Value       := DSBase.DataSet.FieldByName('ANTICIPO_VTO').Value;
        spIngresarAjuste.ParamByName('fecha_op').Value        := DSBase.DataSet.FieldByName('FECHAVTA').Value;
        spIngresarAjuste.ParamByName('sucursal').Value        := 1;
        spIngresarAjuste.ParamByName('usuario').Value         := DMMain_FD.UsuarioActivo;
        spIngresarAjuste.ParamByName('observaciones').Value   := 'Anticipo de Credito';
        spIngresarAjuste.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        if (not spIngresarAjuste.ParamByName('Id_MovCC').IsNull) and
           (MessageDlg(' ¿Genera Recibo por el anticipo?',mtConfirmation, mbYesNo,0) = mrYes)  then
                DMMain_FD.NuevoRecibo(Trim(DSBase.DataSet.FieldByName('Codigo').Value),
                                      DSBase.DataSet.FieldByName('Pago_a_Cta').Value,
                                      'ANTICIPO POR FC. Nº ' + DSBase.DataSet.FieldByName('NROCPBTE').Value,
                                      spIngresarAjuste.ParamByName('Id_MovCC').AsInteger);

        spIngresarAjuste.Close;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se Ingresaron los Ajuste por Pago a Cta ..!');
      end;
    end
  else
    ShowMessage(' No hay comprobante de Ajuste declarado para este tipo de factura. Chequear en Inicio->Comprobantes.');

  DatosVentas.QbuscaAjustes.Close;
end;


procedure TFormCpbte_2.GenerarNotaPedidoExecute(Sender: TObject);
var Cont,Renglones:Integer;
begin
  inherited;
  //** aca se va a generar Nota de Pedio..
   if DMMain_FD.HayNotaPedido(DSBase.DataSet.FieldByName('ID_FC').Value, DSBase.DataSet.FieldByName('TIPOCPBTE').Value) then
     raise Exception.Create('Ya Hay una Nota de Pedido Asociada...');

   if not(DSBase.DataSet.IsEmpty) then
     begin
       if Not(Assigned(FormBuscadorTipoCpbte)) then
         FormBuscadorTipoCpbte := TFormBuscadorTipoCpbte.Create(Application);
       FormBuscadorTipoCpbte.TipoCpbte1 := 'PC';
       FormBuscadorTipoCpbte.TipoCpbte2 := '';
       FormBuscadorTipoCpbte.TipoCpbte3 := '';
       FormBuscadorTipoCpbte.CV         := 'V';
       FormBuscadorTipoCpbte.Sucursal   := DSBase.DataSet.FieldByName('SUCURSAL').Value;
       FormBuscadorTipoCpbte.ShowModal;
       Renglones           := FormBuscadorTipoCpbte.QTipoCpbteLINEAS_DETALLE.Value;
       SucursalComprobante := FormBuscadorTipoCpbte.Sucursal;
       IDComprobante       := FormBuscadorTipoCpbte.Id_Cpbte;
       if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
         begin
           if Not(Assigned(FormBuscadorDepositos)) then
             FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Application);
           FormBuscadorDepositos.Deposito:=  DSBase.DataSet.FieldByName('DEPOSITO').Value;
           FormBuscadorDepositos.ShowModal;
           if (FormBuscadorDepositos.ModalResult=mrok) Then
             begin
               DepositoDestino  := FormBuscadorDepositos.Deposito;
               DatoNew          := IntToStr(DSBase.DataSet.FieldByName('ID_FC').Value);
               TipoCpbte        := DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
               if Not(Assigned(FormNotaPedidoCliente)) Then
                 FormNotaPedidoCliente:=TFormNotaPedidoCliente.Create(self);
               Cont:=1;
               DatosVentas.CDSVentaDet.First;
               while Not(DatosVentas.CDSVentaDet.Eof)  do
                 begin
                   FormNotaPedidoCliente.Agregar.Execute;
                   AgregarCabNP;
                   while Not(DatosVentas.CDSVentaDet.Eof) and (Cont<=Renglones)  Do // Ingreso el detalle
                     begin
                      if (DatosVentas.CDSVentaDetCANTIDAD.AsFloat>0) Then
                        AgregarDetNP;
                       DatosVentas.CDSVentaDet.Next;
                       Cont:=cont+1;
                     end;
                   FormNotaPedidoCliente.Confirma.Execute;
                   Cont:=1;
                 end;
               if FormNotaPedidoCliente.DSBase.State in [dsInsert] then
                 FormNotaPedidoCliente.Confirma.Execute;
             end;
         end;
//       DMStoreProcedure.spMarcarPresupuestoFD.Close;
//       DMStoreProcedure.spMarcarPresupuestoFD.ParamByName('id').Value    :=DSBase.DataSet.FieldByName('ID_FC').Value;
//       DMStoreProcedure.spMarcarPresupuestoFD.ParamByName('Marca').Value :='A';
//       DMStoreProcedure.spMarcarPresupuestoFD.ExecProc;
//       DMStoreProcedure.spMarcarPresupuestoFD.Close;
//
     end
   else
     ShowMessage('No hay cantidades Generar la Nota de Pedido.....!!!');
end;

function TFormCpbte_2.ControlSerie:Boolean;
VAR Aux:Boolean;
begin
  aux:=True;
 // DatosVentas.wwCDSVentaDet.DisableControls;
  DatosVentas.CDSVentaDet.First;
  while not(DatosVentas.CDSVentaDet.Eof) and aux=True do
    begin
      if DatosVentas.CDSVtaSubDetalleHACERINGRESO.Value=True Then
      begin
         DatosVentas.spIngSerie.Close;
         DatosVentas.spIngSerie.ParamByName('Codigo').Value     := DatosVentas.CDSVtaSubDetalleCODIGOARTICULO.Value;
         DatosVentas.spIngSerie.ParamByName('Serie').Value      := DatosVentas.CDSVtaSubDetalleSERIE.AsString;
         DatosVentas.spIngSerie.ParamByName('Fecha').Value      := DatosVentas.CDSVtaSubDetalleFECHA.AsDateTime;
         DatosVentas.spIngSerie.ParamByName('Deposito').Value   := DatosVentas.CDSVtaSubDetalleDEPOSITO.Value;
         DatosVentas.spIngSerie.ParamByName('id_cpbte').Value   := DatosVentas.CDSVtaSubDetalleID_CABFAC.Value;
         DatosVentas.spIngSerie.ParamByName('tipocpbte').Value  := DatosVentas.CDSVtaSubDetalleTIPOCPBTE.Value;
         DatosVentas.spIngSerie.ParamByName('clasecpbte').Value := DatosVentas.CDSVtaSubDetalleCLASECPBTE.Value;
         DatosVentas.spIngSerie.ParamByName('nrocpbte').Value   := DatosVentas.CDSVtaSubDetalleNROCPBTE.Value;
         DatosVentas.spIngSerie.ExecProc;
       end;
      aux:=True;
      if (DatosVentas.CDSVentaDetCON_NRO_SERIE.Value='S') then
        begin
          if (Int(DatosVentas.CDSVentaDetCantidad.AsFloat)=DatosVentas.CDSVtaSubDetalle.RecordCount) then
            Aux:=True
          else
           Aux:=False;
        end;
//      else
//        if (DatosVentas.CDSVentaDetCON_CODIGO_BARRA.Value='S') then
//          begin
//            if DatosVentas.CDSVtaSubDetalle.RecordCount>0 then
//              Aux:=True
//            else
//              aux:=False;
//            aux:=False; // <<<< Modificado para que no lo pida... 5/5/2017 pero dejo por las dudas
//          end;
      DatosVentas.CDSVentaDet.Next;
    end;
  DatosVentas.CDSVentaDet.First;
  Result:=Aux;
end;

function TFormCpbte_2.ControlLotes:Boolean;
VAR Aux:Boolean;
begin
  aux:=True;
  DatosVentas.CDSVentaDet.First;
  while not(DatosVentas.CDSVentaDet.Eof) and aux=True do
    begin
      if DatosVentas.CDSVentaDetCONTROL_TRAZABILIDAD.Value='S' Then
        begin
          if (Int(DatosVentas.CDSVentaDetCantidad.AsFloat)=Int(DatosVentas.CDSVentaLoteCANTIDAD.AsFloat)) then
            Aux:=True
          else
           Aux:=False;
        end;
      DatosVentas.CDSVentaDet.Next;
    end;
  Result:=Aux;
end;


PROCEDURE TFormCpbte_2.InsertarDetalle(Codigo: STRING; Cantidad: double; Unitario:double; Descuento: double; Detalle: STRING; Id_cab,Id_Det:Integer);
begin
  DBGrillaDetalle.DataSource.DataSet.Append;
  DatosVentas.CDSVentaDetCodigoArticuloSetText(DatosVentas.CDSVentaDetCodigoArticulo, Codigo);
  DatosVentas.CDSVentaDetDescuentoSetText(DatosVentas.CDSVentaDetDescuento,FloatToStr(Descuento));
  DatosVentas.CDSVentaDetDetalle.Value := Detalle;
  DatosVentas.CDSVentaDetCantidadSetText(DatosVentas.CDSVentaDetCantidad,FloatToStr(Cantidad));
  DatosVentas.CDSVentaDetUnitario_TotalSetText(DatosVentas.CDSVentaDetUnitario_Total, FloatToStr(Unitario));
//  DatosVentas.CDSVentaDet.Edit;
  DBGrillaDetalle.DataSource.DataSet.Post;
end;

procedure TFormCpbte_2.cbPaisKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_DELETE or VK_BACK then
    cbPais.Clear;
end;

procedure TFormCpbte_2.JvDBComboEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentas.CDSVentaCabID_TRANSPORTE.Clear;
      DatosVentas.CDSVentaCabMUESTRATRANSPORTE.Clear;
    end;
end;

procedure TFormCpbte_2.lblJvLabel13Click(Sender: TObject);
begin
  inherited;
  if Not(DSBase.DataSet.IsEmpty) and (DSBase.state=dsBrowse) then
    begin
      if Not(Assigned(FormAsignaCtroCostoVta)) then
        FormAsignaCtroCostoVta        := TFormAsignaCtroCostoVta.Create(self);
      FormAsignaCtroCostoVta.id       := DSBase.DataSet.FieldByName('id_fc').Value;
      FormAsignaCtroCostoVta.CtroCosto:= DSBase.DataSet.FieldByName('centro_costo').Value;

      FormAsignaCtroCostoVta.ShowModal;
      Recuperar.Execute;
    end;

end;

procedure TFormCpbte_2.lblJvLabel13MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
    if Not(DSBase.DataSet.IsEmpty) and (DSBase.state=dsBrowse) then
      lblJvLabel13.Cursor:=crHandPoint
    else
      lblJvLabel13.Cursor:=crDefault;

end;

procedure TFormCpbte_2.lbGaranteClick(Sender: TObject);
begin
  inherited;
  if Not(DSBase.DataSet.IsEmpty) then
    begin
      if Not(Assigned(FormGarantes)) then
        FormGarantes:=TFormGarantes.Create(self);
      FormGarantes.Codigo:=DSBase.DataSet.FieldByName('Codigo').Value;
      FormGarantes.ShowModal;
      if FormGarantes.modalResult=mrok then
        begin
          if DSBase.DataSet.State=dsInsert then
            DSBase.DataSet.FieldByName('ID_GARANTE').Value:=FormGarantes.id
          else
            if DSBase.DataSet.State=dsBrowse then
              begin
                Modificar.Execute;
                DSBase.DataSet.FieldByName('ID_GARANTE').Value:=FormGarantes.id;
                Confirma.Execute;
              end;
        end;
   end;
end;

procedure TFormCpbte_2.LeerFacturasFrezadasExecute(Sender: TObject);
var Nombre:String;
I:Integer;
P_Gravado,P_Exento,Importe_Iva,P_Total,P_ConIVA:Extended;
begin
  inherited;
  if DSBase.State in [dsInsert] then
    begin
      if Not(Assigned(FormListadoFacturasClonadas)) then
        FormListadoFacturasClonadas:=TFormListadoFacturasClonadas.Create(self);
      FormListadoFacturasClonadas.Directorio:=PathFreezerCtaCte;// 'facturas freezadas';
      FormListadoFacturasClonadas.ShowModal;
      if (FormListadoFacturasClonadas.ModalResult=mrOk) and (Not(FormListadoFacturasClonadas.CDSCabecera.IsEmpty)) and
         (FormListadoFacturasClonadas.CDSCabecera.FieldByName('TipoCpbte').AsString='FC') then
        begin
          For i:=0 to FormListadoFacturasClonadas.CDSCabecera.FieldCount-1 do
            begin
              if DatosVentas.CDSVentaCab.FindField(FormListadoFacturasClonadas.CDSCabecera.Fields[i].FieldName)<>nil Then
                begin
                  Nombre:=FormListadoFacturasClonadas.CDSCabecera.Fields[i].FieldName;
                  if Nombre='ID_TIPOCOMPROBANTE' then
                    DatosVentas.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE,FormListadoFacturasClonadas.CDSCabecera.FieldByName(Nombre).AsString);
                  DatosVentas.CDSVentaCab.FieldByName(Nombre).Value:=FormListadoFacturasClonadas.CDSCabecera.FieldByName(Nombre).Value;
                end;
            end;
          DatosVentas.CDSVentaCabFECHAVTA.AsDateTime :=Date;
          DatosVentas.CDSVentaCabIMPRESO.Value       :='N';
          Saldo.Caption:= '0';
          Lte.Caption  := '0';

          FormListadoFacturasClonadas.CDSDetalle.First;
          while not(FormListadoFacturasClonadas.CDSDetalle.Eof) do
            begin
              DatosVentas.CDSVentaDet.Append;
              For i:=0 to FormListadoFacturasClonadas.CDSDetalle.FieldCount-1 do
                begin
                  if DatosVentas.CDSVentaDet.FindField(FormListadoFacturasClonadas.CDSDetalle.Fields[i].FieldName)<>nil Then
                    begin
                      Nombre:=FormListadoFacturasClonadas.CDSDetalle.Fields[i].FieldName;
                      DatosVentas.CDSVentaDet.FieldByName(Nombre).Value:=FormListadoFacturasClonadas.CDSDetalle.FieldByName(Nombre).Value;
                    end;
                end;

              DatosVentas.CDSVentaDetCALCULA_SOBRETASA.Value:='N';

              if Trunc(DatosVentas.CDSVentaDetIVA_UNITARIO.AsFloat*100)=0 then
                begin
                  P_Gravado   := DatosVentas.CDSVentaDetUNITARIO_GRAVADO.AsFloat ;
                  P_Exento    := DatosVentas.CDSVentaDetUNITARIO_EXENTO.AsFloat ;
                  Importe_Iva := RoundTo(P_Gravado * DatosVentas.CDSVentaDetIVA_TASA.AsFloat * 0.01,DMMain_FD.DecRedondeo);
                  P_Total     := P_Gravado + P_Exento;
                  P_ConIVA    := P_Total + Importe_Iva;
                end
              else
                begin
                  P_Gravado   := DatosVentas.CDSVentaDetUNITARIO_GRAVADO.AsFloat ;
                  P_Exento    := DatosVentas.CDSVentaDetUNITARIO_EXENTO.AsFloat ;
                  Importe_Iva := DatosVentas.CDSVentaDetIVA_UNITARIO.AsFloat ;
                  P_Total     := P_Gravado + P_Exento;
                  P_ConIVA    := P_Total + Importe_Iva;
                end;

              if DatosVentas.CDSVentaCabDESGLOZAIVA.Value='S' then
                DatosVentas.CDSVentaDetUNITARIO_TOTALSetText(DatosVentas.CDSVentaDetUNITARIO_TOTAL,FloatToStr(P_Total))
              else
                DatosVentas.CDSVentaDetUNITARIO_TOTALSetText(DatosVentas.CDSVentaDetUNITARIO_TOTAL,FloatToStr(P_ConIVA));

              DatosVentas.CDSVentaDet.Post;
              FormListadoFacturasClonadas.CDSDetalle.Next;
            end;
         // FormListadoFacturasClonadas.Borrar.Execute;
          DatosVentas.CDSVentaDet.Append;
          DBGrillaDetalle.SetFocus;
        end;
      FreeAndNil(FormListadoFacturasClonadas);
    end;
end;

procedure TFormCpbte_2.LeerPesoExecute(Sender: TObject);
var p:TPesoActual;
begin
  if (DBGrillaDetalle.SelectedIndex=5) and (imBalanza.Visible) and (Balanza<>nil) then
    begin
      Balanza.Port :=PuertoCom;
      Balanza.Id   :=IdBalanza;
      try
        Balanza.Connect;
        Balanza.PesoActual(p);
        if DatosVentas.CDSVentaDet.State=dsBrowse then
          DatosVentas.CDSVentaDet.Edit;
        DatosVentas.CDSVentaDetCANTIDADSetText(DatosVentas.CDSVentaDetCANTIDAD ,floattostr(p.Peso*0.001));
        Balanza.Disconnect;
      except
        ShowMessage('Error de lectura');
      end;
     end;
end;

PROCEDURE TFormCpbte_2.VerificaFranquicia(Modo:Integer);
begin
  // FRANQUICIA .............................................
  // SI Hace una Transferencia por Franquicia, el stoc no se modifica....
  //  .......................................................

  GeneraTx:=False;
  DatosVentas.QClientes.Close;
  DatosVentas.QClientes.ParamByName('Codigo').Value:=DatosVentas.CDSVentaCabCODIGO.AsString;
  DatosVentas.QClientes.Open;
  if (DatosVentas.QClientesFRANQUICIA.Value='S') then
    begin
      if Not(Assigned(FormMuestraDepositoTransferencia)) then
        FormMuestraDepositoTransferencia:=TFormMuestraDepositoTransferencia.Create(self);
      FormMuestraDepositoTransferencia.Modo:=Modo;
      FormMuestraDepositoTransferencia.DepositoOrigen := DatosVentas.CDSVentaCabDEPOSITO.Value;
      if DatosVentas.QClientesID_DEPOSITO_FRANQUICIA.AsString<>'' then
        FormMuestraDepositoTransferencia.DepositoDestino:=  DatosVentas.QClientesID_DEPOSITO_FRANQUICIA.Value
      else
        FormMuestraDepositoTransferencia.DepositoDestino:=  -1;
      FormMuestraDepositoTransferencia.ShowModal;
      if FormMuestraDepositoTransferencia.ModalResult=mrOk then
        begin
          if (FormMuestraDepositoTransferencia.Modo=1) and (FormMuestraDepositoTransferencia.DepositoDestino > -1) then
            begin
              GeneraTx       := True;
              DepositoDestino:= FormMuestraDepositoTransferencia.DepositoDestino;
              DatosVentas.CDSVentaDet.First;
              while not(DatosVentas.CDSVentaDet.eof)  do
                begin
                  DatosVentas.CDSVentaDet.Edit;
                  DatosVentas.CDSVentaDetAFECTA_STOCK.Value:='N';
                  DatosVentas.CDSVentaDet.Next;
                end;
            end
          else
            begin
              GeneraTx       := False;
              ShowMessage('Como no se indica Depósito, la operacion se toma como una venta normal...');
            end
        end
      else
        ShowMessage('No se genera Tx. de Stock, la operacion se toma como una venta normal...');
    end;

end;

procedure TFormCpbte_2.VerLotesExecute(Sender: TObject);
begin
  inherited;
  if (Trim(DatosVentas.CDSVentaDetCODIGOARTICULO.AsString)<>'') and
     (Trim(DatosVentas.CDSVentaDetCONTROL_TRAZABILIDAD.AsString)='S') then
    begin
      if FormLotesStock=nil then
        formLotesStock:=TFormLotesStock.Create(self);
      FormLotesStock.Codigo:=DatosVentas.CDSVentaDetCODIGOARTICULO.AsString;
      formLotesStock.ShowModal;
      FreeAndNil(FormLotesStock);
    end;
end;

procedure TFormCpbte_2.VerNovedadesDetExecute(Sender: TObject);
begin
  inherited;
  if FormNovedadesDetVentas=nil then
    FormNovedadesDetVentas:=TFormNovedadesDetVentas.Create(Self);
  FormNovedadesDetVentas.CDS:= DatosVentas.CDSVtaDetNovedades;
  FormNovedadesDetVentas.ShowModal;
  FreeAndNil(FormNovedadesDetVentas);
  FormNovedadesDetVentas:=nil;

end;

procedure TFormCpbte_2.VerOperacionesExecute(Sender: TObject);
begin
  inherited;
  if (DatosVentas.CDSVentaCabNUMERO_OPERACION.AsString<>'') and (Not(DSBase.DataSet.IsEmpty)) then
    begin
      if not(Assigned(FormListaPorOperaciones)) then
        FormListaPorOperaciones:=TFormListaPorOperaciones.Create(Self);
      FormListaPorOperaciones.Nro_op:=DatosVentas.CDSVentaCabNUMERO_OPERACION.AsString;
      FormListaPorOperaciones.Show;
    end;
end;

procedure TFormCpbte_2.VerOrdenProduccionExecute(Sender: TObject);
var
  IdOP: Integer;
begin
  inherited;
  if DMMain_FD.BuscaOP_PorFc(DatosVentas.CDSVentaCabID_FC.Asinteger,IdOp) then
    begin
      if Not(Assigned(FormOrdenProduccion)) then
        FormOrdenProduccion:=TFormOrdenProduccion.Create(Self);
      FormOrdenProduccion.DatoNew :=    IntToStr(IdOp);
      FormOrdenProduccion.Recuperar.Execute;
      FormOrdenProduccion.Show;
    end;
end;

PROCEDURE TFormCpbte_2.UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosVentas, FormCpbte_2,DMStoreProcedure DO
    BEGIN
     // IF (DBCheckManual.Checked <> true) THEN
        BEGIN
          //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
          IF (CDSVentaCabLETRAFAC.AsString <> '') AND (CDSVentaCabCLASECPBTE.Value <> '') THEN
            BEGIN
              spNumeroCpbte.Close;
              spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSVentaCabLETRAFAC.AsString;
              spNumeroCpbte.ParamByName('Sucursal').Value    := CDSVentaCabSucursal.Value;
              spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSVentaCabCLASECPBTE.Value;
              spNumeroCpbte.ParamByName('TipoComp').Value    := CDSVentaCabTIPOCPBTE.AsString;
              spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
              spNumeroCpbte.ExecProc;
              IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
                BEGIN
                  CDSVentaCabNUMEROFAC.Value:='';
                  IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                    Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
                  ELSE
                    Numero := 1;
                  CDSVentaCabSucFacSetText(CDSVentaCabSucFac,IntToStr(Numero));
                  IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                    Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
                  ELSE
                    Numero := 1;
                  CDSVentaCabNumeroFacSetText(CDSVentaCabNumeroFac,IntToStr(Numero));
                END;
              CDSVentaCabDESGLOZAIVA.Value       := spNumeroCpbte.ParamByName('desgloza_Iva').AsString;
              CDSVentaCabINGRESA_A_CTACTE.Value  := spNumeroCpbte.ParamByName('Va_CtaCte').AsString;
              CDSVentaCabINGRESA_LIBRO_IVA.Value := spNumeroCpbte.ParamByName('Va_Libro_Iva').AsString;
              CDSVentaCabTIPOCPBTE.Value         := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
              CDSVentaCabCLASECPBTE.Value        := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
              Imprime                            := spNumeroCpbte.ParamByName('Imprime').AsString;
              spNumeroCpbte.CLose;
            END;
          CDSVentaCabNroCpbte.AsString := CDSVentaCabLetraFac.AsString + CDSVentaCabSucFac.AsString + CDSVentaCabNumeroFac.AsString;
        END;
    END;

  if DatosVentas.CDSVentaCabINGRESA_LIBRO_IVA.Value='N' Then DatosVentas.CDSVentaCabPERCIBE_IB.Value  :='N';

  if DatosVentas.CDSVentaCabINGRESA_LIBRO_IVA.Value='N' Then DatosVentas.CDSVentaCabPERCIBE_IVA.Value :='N';
  if DatosVentas.CDSVentaCabDESGLOZAIVA.Value='N' then DatosVentas.CDSVentaCabPERCIBE_IVA.AsString    :='N';

END;


procedure TFormCpbte_2.UsarDetalleAdicionalClick(Sender: TObject);
begin
  inherited;
  UsarDetalleAdicional.Checked:=Not(UsarDetalleAdicional.Checked);

  if UsarDetalleAdicional.Checked then
    DBGrillaDetalle.Columns[2].FieldName:='DETALLE_ADICIONAL'
  else
    DBGrillaDetalle.Columns[2].FieldName:='DETALLE';

  DBGrillaDetalle.Refresh;

end;

procedure TFormCpbte_2.UsarUltimoDepositoClick(Sender: TObject);
begin
  inherited;
  UsarUltimoDeposito.Checked := not(UsarUltimoDeposito.Checked);
end;

procedure TFormCpbte_2.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  ClientePorDefecto:='';
   IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
   FormBuscadorClientes.PopupMode :=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     DatosVentas.CDSVentaCabCodigoSetText(DatosVentas.CDSVentaCabCodigo,FormBuscadorClientes.Codigo);
end;

procedure TFormCpbte_2.BuscarLdrExecute(Sender: TObject);
begin
  inherited;
  DatosVentas.CDSBuscaLdr.Close;
  DatosVentas.CDSBuscaLdr.Params.ParamByName('Codigo').Value := DatosVentas.CDSVentaCabCodigo.Value;
  DatosVentas.CDSBuscaLdr.Open;
  comBuscadorLdr.Execute;
  if comBuscadorLdr.rOK Then
    DatosVentas.CDSVentaCabLDRSetText(DatosVentas.CDSVentaCabLDR, IntToStr(comBuscadorLdr.Id));
  DatosVentas.CDSBuscaLdr.Close;
end;

procedure TFormCpbte_2.BuscarNotasExecute(Sender: TObject);
var Aux:string;
begin
  inherited;
  DatosVentas.CDSBuscadorNotas.Close;
  DatosVentas.CDSBuscadorNotas.Open;
  ComBuscadorNotas.Execute;
  if ComBuscadorNotas.rOk then
    begin
       Aux:=DatosVentas.AsignarNotas(ComBuscadorNotas.id);
       if (Aux<>'') and (DSBase.DataSet.State<>dsBrowse) then
         DatosVentas.CDSVentaCabNOTAS.Value:=DatosVentas.CDSVentaCabNOTAS.Value+#13+Aux;
       ceNotas.SetFocus;
    end;
  DatosVentas.CDSBuscadorNotas.Close;
end;

procedure TFormCpbte_2.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  DatosVentas.CDSBuscaSucursal.Close;
  DatosVentas.CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    DatosVentas.CDSVentaCabSucursalSetText(DatosVentas.CDSVentaCabSucursal, IntToStr(comBuscadorSucursal.id));
  DatosVentas.CDSBuscaSucursal.Close;
end;

procedure TFormCpbte_2.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  DatosVentas.CDSBuscaDeposito.Close;
  DatosVentas.CDSBuscaDeposito.Open;
  ComBuscadorDepositos.Execute;
  if comBuscadorDepositos.rOk Then
    DatosVentas.CDSVentaCabDepositoSetText(DatosVentas.CDSVentaCabDeposito, IntToStr(comBuscadorDepositos.Id));
  DatosVentas.CDSBuscaDeposito.Close;
end;

procedure TFormCpbte_2.BuscarCondVtaExecute(Sender: TObject);
begin
  inherited;
  DatosVentas.CDSVentaCabCONDICIONVTA.Clear;
  DatosVentas.CDSBuscaCondVenta.Close;
  DatosVentas.CDSBuscaCondVenta.Params.ParamByName('Codigo').Value := DatosVentas.CDSVentaCabCodigo.Value;
  DatosVentas.CDSBuscaCondVenta.Open;
  ComBuscadorConVta.Execute;
  if comBuscadorConVta.rOk Then
    DatosVentas.CDSVentaCabCondicionVtaSetText(DatosVentas.CDSVentaCabCondicionVta, IntToStr(comBuscadorConVta.Id));
  DatosVentas.CDSBuscaCondVenta.Close;
end;

procedure TFormCpbte_2.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE.Clear;
  DatosVentas.CDSVentaCabMUESTRACOMPROBANTE.Clear;
  DatosVentas.CDSVentaCabLETRAFAC.Clear;
  DatosVentas.CDSVentaCabSUCFAC.Clear;
  DatosVentas.CDSVentaCabNUMEROFAC.Clear;

  if not DMMain_FD.CpbtePorUsuario then
    begin
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText := '';
      DMBuscadores.CDSBuscaComprob.CommandText := 'select * from comprobantes where sucursal = :suc and compra_venta = ''V'' and '+
                                                  '(tipo_comprob = ''FC'' or tipo_comprob = ''NC'' or tipo_comprob = ''ND'') and '+
                                                  '(( desgloza_iva = :desglozaiva ) or ( :desglozaiva = ''*'' ) ) order by sucursal , tipo_comprob ';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value := DatosVentas.CDSVentaCabSucursal.Value;
      if FiltraCpbteCondIva='S' Then
        DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := DatosVentas.CDSVentaCabDESGLOZAIVA.Value
      else
        DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := '*';
      // por que si no tiene el dato del cliente este campo esta vacio por lo que lo
      // lleno con un asterisco para que el Qry no de error
      if DatosVentas.CDSVentaCabDESGLOZAIVA.AsString='' Then
        DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := '*';
    end
  else
    begin
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:='''
                                                  select cpbte.* from comprobantes_usuarios c
                                                    left join comprobantes cpbte on cpbte.id_comprobante = c.id_comprobante
                                                  where c.id_usuario = :usuario and sucursal = :suc and
                                                    (cpbte.compra_venta = 'V' ) and
                                                    (( cpbte.desgloza_iva = :desglozaiva ) or ( :desglozaiva = '*' ) ) and
                                                    (cpbte.tipo_comprob = 'FC' or cpbte.tipo_comprob = 'NC' or cpbte.tipo_comprob = 'ND')
                                                  order by cpbte.sucursal , cpbte.tipo_comprob
                                                ''';


      DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value      := DatosVentas.CDSVentaCabSucursal.Value;

      if FiltraCpbteCondIva='S' Then
        DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := DatosVentas.CDSVentaCabDESGLOZAIVA.Value
      else
        DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := '*';
      // por que si no tiene el dato del cliente este campo esta vacio por lo que lo
      // lleno con un asterisco para que el Qry no de error
      if DatosVentas.CDSVentaCabDESGLOZAIVA.AsString='' Then
        DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := '*';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('usuario').Value       := DMMain_FD.UsuarioActivoId;
    end;
//  DMMain_FD.QOpciones.Close;
  if Not(Assigned(FormBuscaComprobantes)) then
    FormBuscaComprobantes        := TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos := DMBuscadores.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;
  if FormBuscaComprobantes.ModalResult=mrOk Then
    DatosVentas.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
end;

procedure TFormCpbte_2.BuscarTransporteExecute(Sender: TObject);
begin
  inherited;
  DatosVentas.CDSTransporte.Close;
  DatosVentas.CDSTransporte.Open;
  ComBuscadorTransporte.Execute;
  if ComBuscadorTransporte.rOk then
    begin
      if DatosVentas.CDSTransporte.Locate('ID',ComBuscadorTransporte.Id,[]) Then
        begin
          DatosVentas.CDSVentaCabID_TRANSPORTE.Value    :=DatosVentas.CDSTransporteID.Value;
          DatosVentas.CDSVentaCabMUESTRATRANSPORTE.Value:=DatosVentas.CDSTransporteNOMBRE.Value;
        end
      else
        begin
          DatosVentas.CDSVentaCabID_TRANSPORTE.Value    :=-1;
          DatosVentas.CDSVentaCabMUESTRATRANSPORTE.Value:='';
        end
    end;
  DatosVentas.CDSTransporte.Close;


end;

{
procedure TFormCpbte_2.BuscarTransporteExecute(Sender: TObject);
begin
  inherited;
  DatosVentas.CDSBuscadorTransporte.Close;
  DatosVentas.CDSBuscadorTransporte.Open;
  ComBuscadorTransporte.Execute;
  if ComBuscadorTransporte.rOk then
    begin
      DatosVentas.QTransporte.Close;
      DatosVentas.QTransporte.ParamByName('id').Value:=ComBuscadorTransporte.Id;
      DatosVentas.QTransporte.Open;
      if DatosVentas.QTransporteID.AsString<>'' then
        begin
          DatosVentas.CDSVentaCabID_TRANSPORTE.Value    :=DatosVentas.QTransporteID.Value;
          DatosVentas.CDSVentaCabMUESTRATRANSPORTE.Value:=DatosVentas.QTransporteNOMBRE.Value;
        end
      else
        begin
          DatosVentas.CDSVentaCabID_TRANSPORTE.Value    :=-1;
          DatosVentas.CDSVentaCabMUESTRATRANSPORTE.Value:='';
        end
    end;
end;
}

procedure TFormCpbte_2.AgregarExecute(Sender: TObject);
begin
  FormCpbte_2.Caption := 'Facturación de Cta.Cte de Ventas -- ';
  pnPrecios.Visible   := False;
  Generado            := False;
  if Anulado<>nil Then FreeAndNil(Anulado);

  Duplicado:=False;
  DBGrillaDetalle.ReadOnly :=False;
  DBGrillaIva.ReadOnly     :=False;
  DatosVentas.CDSVentaDet.EmptyDataSet;
  DatosVentas.CDSImpuestos.EmptyDataSet;

  DatosVentas.CDSVentaCab.close;
  DatosVentas.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
  DatosVentas.CDSVentaCab.Params.ParamByName('id').Clear;
  DatosVentas.CDSVentaCab.Open;

  DatosVentas.CDSVentaDet.Close;
  DatosVentas.CDSVentaDet.Params.ParamByName('id').Clear;
  DatosVentas.CDSVentaDet.Open;

  DatosVentas.CDSImpuestos.Close;
  DatosVentas.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosVentas.CDSImpuestos.Open;

  DatosVentas.CDSPercepcionIVA.Close;
  DatosVentas.CDSPercepcionIVA.Params.ParamByName('id').Clear;
  DatosVentas.CDSPercepcionIVA.Open;

  DatosVentas.CDSVtaSubDetalle.Close;
  DatosVentas.CDSVtaSubDetalle.Params.ParamByName('id').Clear;
  DatosVentas.CDSVtaSubDetalle.Open;

  DatosVentas.CDSVtaDetConsig.Close;
  DatosVentas.CDSVtaDetConsig.Params.ParamByName('id').Clear;
  DatosVentas.CDSVtaDetConsig.Open;

  inherited;
  DMMain_FD.Facturado        := False;
  pnAvisoFUAP.Visible        := False;

  if UsarUltimoDeposito.Checked Then
    DatosVentas.CDSVentaCabDEPOSITO.Text:= IntToStr(UltimoDeposito);

//DMMain_FD.LogFileFD(1,2,'Inicio de Factura C.Ct '+'('+DatosVentas.CDSVentaCabID_FC.AsString+') '+
//                                                  'Nro Incial:'+DatosVentas.CDSVentaCabLETRAFAC.AsString+'-'+DatosVentas.CDSVentaCabSUCFAC.AsString+'-'+DatosVentas.CDSVentaCabNUMEROFAC.AsString ,
//                                                  'FACVTA',DMMain_FD.UsuarioActivo);


  OldLista                         := dbcLista.Text;
  sbEstado.Panels[0].Text          := '';
  sbEstado.Panels[1].Text          := '';
  sbEstado.Panels[2].Text          := '';
  FormCpbte_2.Caption              := 'Facturación de Cta.Cte de Ventas ';
  Impresa                          := False;
  pnCabecera.Enabled               := True;
  dbcheckNc_Contado.Enabled        := False;
  CpbteNuevo                       := 'S';
  pcDetalleFactura.ActivePageIndex := 0;
  if FormCpbte_2.Visible then
    RxCCodigo.SetFocus;

  if  ModoDespachante1.Checked then
     begin
       pcModoFactura.ActivePageIndex:=2;
       pcSubForma.ActivePageIndex   :=1;
     end
   else
     begin
       pcModoFactura.ActivePageIndex:=0;
       pcSubForma.ActivePageIndex   :=0;
     end;

  DSBase.DataSet.FieldByName('key_planer').Value:=KeyPlaner;
  pnLimiteCto.Visible:=False;
  CodigosSeries.Clear;

end;

procedure TFormCpbte_2.CacularIVADetExecute(Sender: TObject);
begin
  DatoNew:=DatosVentas.CDSVentaCabID_FC.AsString;
  inherited;
  DMMain_FD.CorrigeIvaDetVta(DatosVentas.CDSVentaCabID_FC.AsInteger);
  Recuperar.Execute; 
end;

procedure TFormCpbte_2.CambiaModoDiscrIVAExecute(Sender: TObject);
begin
  inherited;
  if (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentas.CDSVentaCabCAE.AsString)>0) then
    Raise Exception.Create (' Facturas Electrónica con CAE, no se puede cambiar ...');

  IF (NOT (DatosVentas.CDSVentaCab.IsEmpty)) and
     (DMMain_FD.UsuarioAdministrador=True) THEN
    BEGIN
       CpbteNuevo:='N';
       DatosVentas.CDSVentaCab.Edit;
       if datosVentas.CDSVentaCabDESGLOZAIVA.Value<>'N' Then
         datosVentas.CDSVentaCabDESGLOZAIVA.Value := 'N'
       else
        if datosVentas.CDSVentaCabDESGLOZAIVA.Value='N' Then
           datosVentas.CDSVentaCabDESGLOZAIVA.Value := 'S';

       //    DatosVentas.wwCDSVentaCab.Post;
          Confirma.Execute;
     END;

end;

procedure TFormCpbte_2.CambiarClaseExecute(Sender: TObject);
begin
  inherited;
//  BorrarTodasAplicaciones.Execute;

  if (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentas.CDSVentaCabCAE.AsString)>0) then
    Raise Exception.Create (' Facturas Electrónica con CAE, no se puede Modicficar....');

  if (DatosVentas.CDSVentaCabINGRESA_LIBRO_IVA.Value='S') and ((DMMain_FD.UsuarioActivo<>'master') and (DMMain_FD.UsuarioAdministrador=False)) then
    Raise Exception.Create (' Facturas Ingresa en Iva, no se puede Modificar....');

  if not(Assigned(FormCambiarClaseCpbte)) then
    FormCambiarClaseCpbte:=TFormCambiarClaseCpbte.Create(Self);
  FormCambiarClaseCpbte.Tipo                     := DSBase.DataSet.FieldByName('TIPOCPBTE').AsString;
  FormCambiarClaseCpbte.Clase                    := DSBase.DataSet.FieldByName('CLASECPBTE').AsString;
  FormCambiarClaseCpbte.Letra                    := DSBase.DataSet.FieldByName('LETRAFAC').AsString;
  FormCambiarClaseCpbte.Sucursal                 := DSBase.DataSet.FieldByName('SUCURSAL').AsInteger;
  FormCambiarClaseCpbte.NroCpbte                 := DSBase.DataSet.FieldByName('NROCPBTE').Value;
  FormCambiarClaseCpbte.IdComprobante            := DSBase.DataSet.FieldByName('ID_FC').Value;
  FormCambiarClaseCpbte.ComproVenta              := 'V';
  FormCambiarClaseCpbte.dbcSucursalNew.KeyValue  := DSBase.DataSet.FieldByName('SUCURSAL').AsInteger;
  FormCambiarClaseCpbte.dbcSucursalNew.Enabled   := False;

  FormCambiarClaseCpbte.ShowModal;
  if FormCambiarClaseCpbte.ModalResult=mrOk then
    begin
      DatoNew    := IntToStr(FormCambiarClaseCpbte.IdComprobante);
      TipoCpbte  := FormCambiarClaseCpbte.Tipo;
      Recuperar.Execute;
    end;

end;

procedure TFormCpbte_2.CambiarClienteExecute(Sender: TObject);
begin
  inherited;
  if (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentas.CDSVentaCabCAE.AsString)>0) then
    Raise Exception.Create (' Facturas Electrónica con CAE, no se puede cambiar....');

  if Not(Assigned(FormCambiaClienteFactura)) then
    FormCambiaClienteFactura:=TFormCambiaClienteFactura.Create(FormCpbte_2);
  FormCambiaClienteFactura.codigo       :=DSBase.DataSet.FieldByName('codigo').AsString;
  FormCambiaClienteFactura.reazonsocial :=DSBase.DataSet.FieldByName('razonsocial').AsString;
  FormCambiaClienteFactura.nombre       :=DSBase.DataSet.FieldByName('nombre').AsString;
  FormCambiaClienteFactura.direccion    :=DSBase.DataSet.FieldByName('direccion').AsString;
  FormCambiaClienteFactura.localidad    :=DSBase.DataSet.FieldByName('localidad').AsString;
  FormCambiaClienteFactura.cpostal      :=DSBase.DataSet.FieldByName('cpostal').AsString;
  FormCambiaClienteFactura.tipoiva      :=DSBase.DataSet.FieldByName('Tipoiva').Value;
  FormCambiaClienteFactura.zona         :=DSBase.DataSet.FieldByName('zona').AsString;
  FormCambiaClienteFactura.ldr          :=DSBase.DataSet.FieldByName('ldr').Value;
  FormCambiaClienteFactura.Tipo         :=DSBase.DataSet.FieldByName('TipoCpbte').Value;
  FormCambiaClienteFactura.Id_Cpbte     :=DSBase.DataSet.FieldByName('id_fc').Value;
  FormCambiaClienteFactura.cuit         :=DSBase.DataSet.FieldByName('cuit').Value;
  FormCambiaClienteFactura.Showmodal;
  Recuperar.Execute;
end;

procedure TFormCpbte_2.CambiarCuitExecute(Sender: TObject);
begin
  inherited;
  if (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentas.CDSVentaCabCAE.AsString)>0) then
    Raise Exception.Create (' Facturas Electrónica con CAE, no se puede cambiar ...');

  if Not(Assigned(FormCuit_Doc)) then
    FormCuit_Doc:=TFormCuit_Doc.Create(self);
  FormCuit_Doc.id  := DSBase.DataSet.FieldByName('id_fc').Value;
  FormCuit_Doc.Cuit:= DSBase.DataSet.FieldByName('cuit').Value;
  FormCuit_Doc.ShowModal;
  if (FormCuit_Doc.ModalResult=mrok) then
    Recuperar.Execute;
end;

procedure TFormCpbte_2.CambiarFechaVencimientoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormFecha)) then
    FormFecha:=TFormFecha.Create(Self);
  FormFecha.dbcCtaBco.Visible   := False;
  FormFecha.dbcSucursal.Visible := False;
  FormFecha.fecha               := DSBase.DataSet.FieldByName('FECHAVTO').Value;
  FormFecha.lbCta.Visible       := False;
  FormFecha.Label1.Visible      := False;
  FormFecha.ShowModal;
  if FormFecha.ModalResult=mrOk then
    begin
     DMMain_FD.SetFechaVencimentoVta(DSBase.DataSet.FieldByName('ID_FC').Value,FormFecha.fecha);
     Recuperar.Execute;
    end;
  if (Assigned(FormFecha)) then
    FreeAndNil(FormFecha);
end;

procedure TFormCpbte_2.CambiarNroExecute(Sender: TObject);
begin
  inherited;
  if (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentas.CDSVentaCabCAE.AsString)>0) then
    Raise Exception.Create (' Facturas Electrónica con CAE, no se puede Modificar....');

  if DMMain_FD.GetFcConAplicacion(datosventas.CDSVentaCabID_FC.Value,DatosVentas.CDSVentaCabTIPOCPBTE.Value )  Then
    Raise Exception.Create (' Facturas con pagos asignados....');

  if Not(Assigned(FormCambiaNroCpbte)) then
    FormCambiaNroCpbte         :=TFormCambiaNroCpbte.Create(FormCpbte_2);
  FormCambiaNroCpbte.Id        :=DSBase.DataSet.FieldByName('id_fc').Value;
  FormCambiaNroCpbte.Num       :=DSBase.DataSet.FieldByName('NumeroFac').Value;
  FormCambiaNroCpbte.Suc       :=DSBase.DataSet.FieldByName('SucFac').Value;
  FormCambiaNroCpbte.Let       :=DSBase.DataSet.FieldByName('LetraFac').Value;
  FormCambiaNroCpbte.Tipo      :=DSBase.DataSet.FieldByName('TipoCpbte').Value;
  FormCambiaNroCpbte.Clase     :=DSBase.DataSet.FieldByName('ClaseCpbte').Value;
  if Not(VarIsNull(DSBase.DataSet.FieldByName('FechaVta').Value)) Then
    FormCambiaNroCpbte.Fecha   :=DSBase.DataSet.FieldByName('FechaVta').AsDateTime;
  if Not(VarIsNull(DSBase.DataSet.FieldByName('Fecha_FIscal').Value)) Then
    FormCambiaNroCpbte.Fecha2  :=DSBase.DataSet.FieldByName('Fecha_fiscal').AsDateTime;
  FormCambiaNroCpbte.Sucursal  :=DSBase.DataSet.FieldByName('Sucursal').Value;
  FormCambiaNroCpbte.CV        :='V';
  FormCambiaNroCpbte.Showmodal;
  Recuperar.Execute;
end;

procedure TFormCpbte_2.CambiarTipoVtaExecute(Sender: TObject);
begin
  inherited;
  IF (NOT (DatosVentas.CDSVentaCab.IsEmpty)) THEN
    BEGIN
      DMMain_FD.fdcGestion.StartTransaction;
      try
        DatosVentas.spCambiaTipoVta.Close;
        DatosVentas.spCambiaTipoVta.ParamByName('id_Cpbte').Value :=DatosVentas.CDSVentaCabID_FC.Value;
        DatosVentas.spCambiaTipoVta.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        DatosVentas.spCambiaTipoVta.Close;
      except
         DMMain_FD.fdcGestion.Rollback;
         DatosVentas.spCambiaTipoVta.Close;
      end;
      Recuperar.Execute;
    END;

end;

procedure TFormCpbte_2.CambioDepositoExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty)) and (DMMain_FD.UsuarioAdministrador)  then
    begin
      if Not(Assigned(FormcambioDeposito)) then
        formCambioDeposito := TFormcambioDeposito.create(Self);
      FormCambioDeposito.Id      := DatosVentas.CDSVentaCabID_FC.Value;
      FormCambioDeposito.codigo  := DatosVentas.CDSVentaCabDEPOSITO.Value;
      FormCambioDeposito.Detalle := DatosVentas.CDSVentaCabMUESTRADEPOSITO.Value;

      FormCambioDeposito.ShowModal;
      Recuperar.Execute;
    end;

end;

procedure TFormCpbte_2.CancelarExecute(Sender: TObject);
begin
  if pnDetalleAdicional.Visible then
    pnDetalleAdicional.Visible:=False;

  jvAlerta.Close(True);
  dskAviso.Close(True);

  pnPrecios.Visible         :=False;

  if MessageDlg('Cancelar los cambios..?',mtConfirmation,mbYesNo,0)=mrNo then
    Exit;

  DMMain_FD.LogFileFD(0,3,'Cancelacion de '+ DatosVentas.CDSVentaCabTIPOCPBTE.AsString +' Con Numero Provisorio:'+DatosVentas.CDSVentaCabLETRAFAC.AsString+'-'+DatosVentas.CDSVentaCabSUCFAC.AsString+'-'+DatosVentas.CDSVentaCabNUMEROFAC.AsString+
                          '('+DatosVentas.CDSVentaCabID_FC.AsString+')'+ '..Fecha :'+dateToStr(DatosVentas.CDSVentaCabFECHAVTA.AsDateTime)+
                          ' Importe de :'+FormatFloat(',0.00',DatosVentas.CDSVentaCabTOTAL.AsFloat),
                          'CANCELACION');

  if dbgExitencias.Visible=True Then
    dbgExitencias.Visible:=False;
  if Anulado<>nil Then FreeAndNil(Anulado);
  if DatosVentas.CDSVentaCab.State in [dsInsert,dsEdit] Then
    begin
      DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE.Clear;
      DatosVentas.CDSVentaCab.Cancel;
    end;
  DBGrillaDetalle.ReadOnly :=False;
  DBGrillaIva.ReadOnly     :=False;

  if DatosVentas.CDSVentaDet.State in [dsInsert,dsEdit] Then
     DatosVentas.CDSVentaDet.Cancel;
  if DatosVentas.CDSImpuestos.State in [dsInsert,dsEdit] Then
    DatosVentas.CDSImpuestos.Cancel;
  if DatosVentas.CDSVtaSubDetalle.State in [dsInsert,dsEdit] Then
    DatosVentas.CDSVtaSubDetalle.Cancel;

  DatosVentas.CDSVentaCab.close;
  DatosVentas.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
  DatosVentas.CDSVentaCab.Params.ParamByName('id').Clear;
  DatosVentas.CDSVentaCab.Open;

  DatosVentas.CDSVentaDet.Close;
  DatosVentas.CDSVentaDet.Params.ParamByName('id').Clear;
  DatosVentas.CDSVentaDet.Open;

  DatosVentas.CDSImpuestos.Close;
  DatosVentas.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosVentas.CDSImpuestos.Open;

  DatosVentas.CDSVtaSubDetalle.Close;
  DatosVentas.CDSVtaSubDetalle.Params.ParamByName('id').Clear;
  DatosVentas.CDSVtaSubDetalle.Open;

  DatosVentas.CDSVtaDetConsig.Close;
  DatosVentas.CDSVtaDetConsig.Params.ParamByName('id').Clear;
  DatosVentas.CDSVtaDetConsig.Open;

  inherited;
  Generado                         := False;
  pnAvisoFUAP.Visible              := False;
  pnCabecera.Enabled               := False;
  dbcheckNc_Contado.Enabled        := False;
  pcDetalleFactura.ActivePageIndex := 0;
  pnLimiteCto.Visible              := False;
  DMMain_FD.Facturado              := False;
  CodigosSeries.Clear;
  if (btNuevo.Enabled) and (FormCpbte_2.Visible=True) Then
    btNuevo.SetFocus;
  if TForm(Self.Owner).Name='FormFacturaRemitoAgrupado' then
    Salir.Execute;// Close;
  if TForm(Self.Owner).Name='FormFacturarRemitos' then
    Salir.Execute;// Close;
  if TForm(Self.Owner).Name='FormNotaPedidoCliente' then
    Salir.Execute;// Close;

end;

procedure TFormCpbte_2.ceNotasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
VAR
  Dato: STRING;
BEGIN
  IF Key = vk_return THEN
    BEGIN
      key := 0;
      Dato:= '';
      if (Trim(ceNotas.Text)<>'') then
        Dato:= DatosVentas.AsignarNotas(StrToInt(Trim(ceNotas.Text)));

      if (Trim(Dato))<>'' then
        if (DSBase.DataSet.State<>dsBrowse) then
          DatosVentas.CDSVentaCabNOTAS.Value:=DatosVentas.CDSVentaCabNOTAS.Value+#13+Dato;
      ceNotas.Text:='';
      ceNotas.SetFocus;
    END;

end;

procedure TFormCpbte_2.ceNotasKeyPress(Sender: TObject; var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato:= '';
      if (Trim(ceNotas.Text)<>'') then
        Dato:= DatosVentas.AsignarNotas(StrToInt(Trim(ceNotas.Text)));

      if (Trim(Dato))<>'' then
        if (DSBase.DataSet.State<>dsBrowse) then
          DatosVentas.CDSVentaCabNOTAS.Value:=DatosVentas.CDSVentaCabNOTAS.Value+Dato;
      ceNotas.Text:='';
    END;
end;

procedure TFormCpbte_2.CleanBufferExecute(Sender: TObject);
begin
  inherited;
  FormCpbte_2.Caption:='Facturación de Cta.Cte de Ventas -- ';
  pnPrecios.Visible:=False;
  Generado:=False;
  if Anulado<>nil Then FreeAndNil(Anulado);

  DBGrillaDetalle.ReadOnly :=False;
  DBGrillaIva.ReadOnly     :=False;
  DatosVentas.CDSVentaDet.EmptyDataSet;
  DatosVentas.CDSImpuestos.EmptyDataSet;

  DatosVentas.CDSVentaCab.close;
  DatosVentas.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
  DatosVentas.CDSVentaCab.Params.ParamByName('id').Clear;
  DatosVentas.CDSVentaCab.Open;

  DatosVentas.CDSVentaDet.Close;
  DatosVentas.CDSVentaDet.Params.ParamByName('id').Clear;
  DatosVentas.CDSVentaDet.Open;

  DatosVentas.CDSImpuestos.Close;
  DatosVentas.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosVentas.CDSImpuestos.Open;

  DatosVentas.CDSVtaSubDetalle.Close;
  DatosVentas.CDSVtaSubDetalle.Params.ParamByName('id').Clear;
  DatosVentas.CDSVtaSubDetalle.Open;

  DatosVentas.CDSVtaDetConsig.Close;
  DatosVentas.CDSVtaDetConsig.Params.ParamByName('id').Clear;
  DatosVentas.CDSVtaDetConsig.Open;

end;

procedure TFormCpbte_2.VerColumnaUnidadesClick(Sender: TObject);
begin
  inherited;
  VerColumnaUnidades.Checked:=Not(VerColumnaUnidades.Checked);

  DBGrillaDetalle.Columns.Items[9].Visible := VerColumnaUnidades.Checked;
    if VerColumnaUnidades.Checked=False then
     DBGrillaDetalle.Width:=870
   else
     DBGrillaDetalle.Width:=920;

  DBGrillaDetalle.Refresh;
end;

procedure TFormCpbte_2.ConectarBalanzaExecute(Sender: TObject);
var x: integer;
begin
  inherited;
   balanza      := tsystelconnect.Create(self);
   Screen.Cursor:= crHourGlass;
   try
     Balanza.Port:= PuertoCom;
     Balanza.Connect;
     Balanza.Id := IdBalanza;
     Balanza.Ping;
     if Balanza.Respuesta<>'' then
       begin
         imBalanza.Visible:=True;
         Balanza.Disconnect;
       end;
   except
     imBalanza.Visible:=False;
     FreeAndNil(Balanza);
     //      ShowMessage('Error de coneccion..');
   end;
   Screen.Cursor:=crDefault;
end;

procedure TFormCpbte_2.ConfirmaExecute(Sender: TObject);
VAR Cab,Det,LimiteCto,NroRipsa,Memo:String;    //   Control: boolean;
i:Integer;
HacerCuotas,Consolidado,Consolidar:Boolean;
VSaldo,VLimite:String;
Qtp:TFDquery;
mtPedidos:TFDMemTable;
QMarcarPedido:TFDQuery;
begin
  //if (CpbteNuevo='S') and ( DMMain_FD.VerificaNro(DSBase.DataSet.FieldByName('LETRAFAC').AsString,
  //                          DSBase.DataSet.FieldByName('SUCFAC').AsString,
  //                          DSBase.DataSet.FieldByName('NUMEROFAC').AsString,
  //                          DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,
  //                          DSBase.DataSet.FieldByName('CLASECPBTE').AsString,
  //                          DSBase.DataSet.FieldByName('SUCURSAL').AsInteger)) Then
  // Raise Exception.Create('Comprobante ya ingresado......');

//       For i:=0 to DatosVentas.CDSVentaCab.FieldCount-1 do
//         begin
//           if (DatosVentas.CDSVentaCab.Fields[i].Required) and (DatosVentas.CDSVentaCab.Fields[i].AsString='') Then
//             ShowMessage(DatosVentas.CDSVentaCab.Fields[i].FieldName+':'+
//           DatosVentas.CDSVentaCab.Fields[i].AsString);
//         end;

  if (DMMain_FD.UsaFirma) and (Not(DMMain_FD.UsuarioActivo='master')) and (TForm(Self.Owner).Name<>'FormRecibo_2') and (TForm(Self.Owner).Name<>'FormPedidosAProcesar') then
    begin
      if Not(Assigned(FormLogin)) then
        FormLogin := TFormLogin.Create(Self);
      FormLogin.Usuario := DMMain_FD.UsuarioActivo;
      FormLogin.Modo    := 1;
      FormLogin.ShowModal;
      if FormLogin.Tag=0 then
        raise Exception.Create('Usuario no Valido de sesion....')
      else
        DatosVentas.CDSVentaCabUSUARIO.Value:= FormLogin.Usuario;
    end;

  pnPrecios.Visible:=False;
  if FormCpbte_2.Visible then
    if dbgExitencias.Visible=True Then
      dbgExitencias.Visible:=False;

  if ((DatosVentas.CDSVentaCabCUIT.AsString='00-00000000-0') or (DatosVentas.CDSVentaCabCUIT.AsString=''))and
     (DatosVentas.CDSVentaCabDESGLOZAIVA.AsString='S') and
     (DatosVentas.CDSVentaCabINGRESA_LIBRO_IVA.AsString='S') then
    begin
      ShowMessage('No hay Numero de Cuit Cargado... y esta como inscripto en IVA, Verificar en la Ficha del Cliente...');
      Cancelar.Execute;
    end;
  if CpbteNuevo='S' then
    DatosVentas.CDSVentaCabFECHA_FISCAL.Value:=DatosVentas.CDSVentaCabFECHAVTA.Value;

  if (DatosVentas.CDSVentaCabDSTO.AsString='') Then
    DatosVentas.CDSVentaCabDSTO.AsFloat:=0;
  if (DatosVentas.CDSVentaCabDSTOIMPORTE.AsString='') Then
    DatosVentas.CDSVentaCabDSTOIMPORTE.AsFloat:=0;

  if (DatosVentas.CDSVentaDetCodigoArticulo.AsString='') and
     (DatosVentas.CDSVentaDet.State in [dsInsert,dsEdit]) Then
        DatosVentas.CDSVentaDet.Cancel;

  if (TForm(Self.Owner).Name<>'FormFacturaRemitoAgrupado') and
     (TForm(Self.Owner).Name<>'FormImportacionFacturasVtaGral') and
     (TForm(Self.Owner).Name<>'FormRecepRepartoExpress') and
     (TForm(Self.Owner).Name<>'FormConsolidacionAcopioRemitos') and
     (TForm(Self.Owner).Name<>'FormRecepRepartoExpress') and
     (TForm(Self.Owner).Name<>'FormImportacionPreventas') and
     (TForm(Self.Owner).Name<>'FormRecibo_2') and
     (TForm(Self.Owner).Name<>'FormPedidosAProcesar') and
     ((DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE.NewValue <> DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE.OldValue) or
      (DatosVentas.CDSVentaCabDEPOSITO.NewValue <> DatosVentas.CDSVentaCabDEPOSITO.OldValue) or
      (DatosVentas.CDSVentaCabFECHAVTA.NewValue <> DatosVentas.CDSVentaCabFECHAVTA.OldValue) or
      (DatosVentas.CDSVentaCabSUCURSAL.NewValue <> DatosVentas.CDSVentaCabSUCURSAL.OldValue)) and
      (DatosVentas.CDSVentaCabANULADO.Value<>'S') Then
       DatosVentas.ReAsignarDetalle;

  if DatosVentas.CDSVentaDet.State in [dsInsert,dsEdit] Then
    DatosVentas.CDSVentaDet.Post;
  if DatosVentas.CDSVtaSubDetalle.State in [dsInsert,dsEdit] Then
    DatosVentas.CDSVtaSubDetalle.Post;
  if DatosVentas.CDSVtaDetConsig.State in [dsInsert,dsEdit] Then
    DatosVentas.CDSVtaDetConsig.Post;

  if DatosVentas.CDSVentaCabPOR_CTA_Y_ORDEN.Value='S' then
    begin
     if Consignacion then
        if (DatosVentas.VerificaConsignaciones) then
          Raise Exception.Create('Hay items de consiganción sin asignar');
    end;
  //********************************************************************************************
  //** Caculamos la cantidad de Meses de Garantia **********************************************
  //********************************************************************************************
  if (DSBase.State in [dsInsert]) and (DatosVentas.CDSVentaCabCON_GTIA_EXTENDIDA.Value='S') then
    begin
      DatosVentas.CDSVentaCabMESES_DE_GARANTIA.Value := DatosVentas.SumarGtia;
      if Not(Assigned(FormControlGtia)) then
        FormControlGtia:=TFormControlGtia.Create(Self);
      FormControlGtia.Meses   := DatosVentas.CDSVentaCabMESES_DE_GARANTIA.Value;
      FormControlGtia.Importe := DatosVentas.CDSVentaCabVALOR_ASEGURADO.AsFloat;

      FormControlGtia.ShowModal;
      DatosVentas.CDSVentaCabMESES_DE_GARANTIA.AsInteger := FormControlGtia.Meses;
      DatosVentas.CDSVentaCabVALOR_ASEGURADO.AsFloat     := FormControlGtia.Importe;
    end;
  //********************************************************************************************
  TRY
    GeneraTx:=False;
    if (DatosVentas.CDSVentaCabANULADO.Value<>'S') and (CpbteNuevo='S') and
       (TForm(Self.Owner).Name<>'FormFacturaPlantillas') and
       (TForm(Self.Owner).Name<>'FormRecepRepartoExpress') and
       (TForm(Self.Owner).Name<>'FormImportacionPreventas') and
       (TForm(Self.Owner).Name<>'FormRecepRepartoExpress') and
       (TForm(Self.Owner).Name<>'FormConsolidacionAcopioRemitos') and
       (TForm(Self.Owner).Name<>'FormRecibo_2') and
       (TForm(Self.Owner).Name<>'FormTicketVta') and
       (TForm(Self.Owner).Name<>'FormPedidosAProcesar') and
       (TForm(Self.Owner).Name<>'FormImportacionFacturasVtaGral')
        Then
          VerificaFranquicia(0);

    IF DatosVentas.CDSVentaCabTotal.AsFloat <= 0 THEN
      RAISE Exception.Create('El comprobante no pude tener valor 0.....!!!!');
    if Not(ControlSerie) and (DMMain_FD.ControlaSerie) and (DSBase.State=dsInsert) and (GeneraTX=False) then
      RAISE Exception.Create('La cantidad de Items debe ser igual a la cantidad de codigo barras.....!!!!');

    VSaldo   := AnsiReplaceText(Saldo.Caption,',','');
    VLimite  := AnsiReplaceText(Lte.Caption,',','');
    if Trim(VSaldo) ='' then VSaldo  :='0.00';
    if Trim(VLimite)='' then VLimite :='0.00';

    if (CpbteNuevo='S') and
       (TForm(Self.Owner).Name<>'FormFacturaPlantillas') and
       (TForm(Self.Owner).Name<>'FormFacturarModelos') and
       (TForm(Self.Owner).Name<>'FormRecepRepartoExpress') and
       (TForm(Self.Owner).Name<>'FormTicketVta') and
       (TForm(Self.Owner).Name<>'FormRecibo_2') and
       (TForm(Self.Owner).Name<>'FormFacturaRemitoAgrupado') and
       (TForm(Self.Owner).Name<>'FormRecepRepartoExpress') and
       (TForm(Self.Owner).Name<>'FormConsolidacionAcopioRemitos') and
       (TForm(Self.Owner).Name<>'FormImportacionFacturasVtaGral') and
       (TForm(Self.Owner).Name<>'FormImportacionPreventas') and
       (TForm(Self.Owner).Name<>'FormPedidosAProcesar') and
       (DatosVentas.CDSVentaCabTOTAL.AsFloat + StrToFloat(VSaldo) >StrToFloat(VLimite)) and
       (StrToFloat(VLimite)>0) and
       (DatosVentas.ControlaLteCredito) and (DatosVentas.CDSVentaCabTIPOCPBTE.Value='FC') AND
       ((DatosVentas.BloqueaDeudor) and (DMMain_FD.UsuarioAdministrador=False)) Then
         begin
           DMMain_FD.LogFileFD(1,3,'Error de Credito Excedido..Saldo:'+VSaldo+' Limite: '+VLimite+'..'+
                                   'Nro.Cpbte: '+DSBase.DataSet.FieldByName('NROCPBTE').AsString+' ('+DSBase.DataSet.FieldByName('ID_FC').AsString+')',
                                   'FCVTA');
           RAISE Exception.Create('Supera el credito permitido.....!!!!');
         end;

    if (CpbteNuevo='S') and (Not(ControlLotes)) and (TForm(Self.Owner).Name<>'FormRemitos') Then
      RAISE Exception.Create('Hay Lotes sin Asignar.....!!!!');

  FINALLY
  END;
  WITH DatosVentas DO
    BEGIN
      DatoNew                    := IntToStr(CDSVentaCabID_FC.Value);
      TipoCpbte                  := CDSVentaCabTIPOCPBTE.Value;
      CDSVentaCabRENGLONES.Value := CDSVentaDet.RecordCount;
      CDSVentaCabDebe.ASFloat    := DatosVentas.CDSVentaCabTotal.AsFloat;

      if CDSVentaCab.State<>dsBrowse Then
        CDSVentaCab.Post;
      DMMain_FD.Facturado:=True; // esta variable la uso cuando facturo remitos
      if DatosVentas.CDSVentaCabANULADO.Value<>'S' Then
        InformarCambiosPrecio;
      //********************************************************************************************
      //** Verifico si Genero Cuotas  **************************************************************
      //********************************************************************************************
      HacerCuotas   :=  DMMain_FD.DBOpciones('CUOTASVTAS');
      if (HacerCuotas=True) then
        begin
          if (TForm(Self.Owner).Name='FormGeneradorCupones') or
             (TForm(Self.Owner).Name='FormReciboAbonos') Or
             (TForm(Self.Owner).Name='FormRecibo_2') Or
             (TForm(Self.Owner).Name='FormFacturaPlantillas') or
             (TForm(Self.Owner).Name='FormRecepGarantia') or
             (TForm(Self.Owner).Name='FormControlImpuestos') or
             (TForm(Self.Owner).Name='FormFiscalizacionLote') or
             (TForm(Self.Owner).Name='FormFacturarModelos') or
             (TForm(Self.Owner).Name='FormConsolidacionAcopioRemitos') or
             (TForm(Self.Owner).Name='FormNotaPedidoCliente') or
             (TForm(Self.Owner).Name='FormImportacionFacturasVtaGral') or
             (TForm(Self.Owner).Name='FormTicketVta') or
             (TForm(Self.Owner).Name='FormRecepRepartoExpress') or
             (TForm(Self.Owner).Name='FormFacturaRemitoAgrupado') or
             (TForm(Self.Owner).Name='FormConsolidacionAcopioRemitos') or
             (TForm(Self.Owner).Name='FormImportacionFacturasVtaGral') or
             (TForm(Self.Owner).Name='FormImportacionPreventas') or
             (TForm(Self.Owner).Name='FormRecepRepartoExpress') or
             (TForm(Self.Owner).Name='FormPedidosAProcesar') or
             (TForm(Self.Owner).Name='FormControlImpuestos') then
            HacerCuotas:=False;
        end;
      if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC') or (DatosVentas.CDSVentaCabTIPOCPBTE.Value='ND') then
        HacerCuotas:=False;
      //***************************************************************************
      // Manejo de Cuotas .......
      //***************************************************************************
      if ((HacerCuotas) and (CpbteNuevo='S')) then
        begin
          if Not(Assigned(FormCantidadCuotas)) then
            FormCantidadCuotas:=TFormCantidadCuotas.Create(Self);
          FormCantidadCuotas.Cuotas    :=DatosVentas.CDSVentaCabCUOTAS_CC.Value;
          FormCantidadCuotas.Intervalo :=DatosVentas.CDSVentaCabINTERVALO_CUOTA.Value;
          FormCantidadCuotas.Anticipo  :=DatosVentas.CDSVentaCabPAGO_A_CTA.AsFloat;
          FormCantidadCuotas.Fecha     :=DatosVentas.CDSVentaCabFECHAVTO.AsDateTime;
          FormCantidadCuotas.ShowModal;
          if FormCantidadCuotas.ModalResult=mrOk then
            begin
              if DatosVentas.CDSVentaCab.State=dsBrowse then
                DatosVentas.CDSVentaCab.Edit;
              DatosVentas.CDSVentaCabCUOTAS_CC.Value         := FormCantidadCuotas.Cuotas;
              DatosVentas.CDSVentaCabINTERVALO_CUOTA.Value   := FormCantidadCuotas.Intervalo;
              DatosVentas.CDSVentaCabPAGO_A_CTA.AsFloat      := FormCantidadCuotas.Anticipo;
              DatosVentas.CDSVentaCabPRIMER_VTO.AsDateTime   := FormCantidadCuotas.Fecha;
              DatosVentas.CDSVentaCabANTICIPO_VTO.AsDateTime := FormCantidadCuotas.VtoAnticipo;
              DatosVentas.CDSVentaCab.Post;
            end;
        end;

      // Corrige Codigo Barra RIPSA
      if (CpbteNuevo='N') and ((CDSRegFacturas.isEmpty)) then // por que viene de una modificacion
        begin
          ArchivoIni := TIniFile.Create(DMMain_FD.MainPath+DMMain_FD.UsuarioActivo+'FcPlantilla.ini');
          NroRipsa   := ArchivoIni.ReadString('ripsa', 'numero', '0000');
          ArchivoIni.Free;
          DatosVentas.GenerarCodigoBarra(NroRipsa);
        end;
      //********************************************************************************************
      PrefijoDup:= DatosVentas.CDSVentaCabSUCFAC.Value;
      NumeroDup := DatosVentas.CDSVentaCabNUMEROFAC.Value;
    end;

//  if (DSBase.State=dsBrowse)  and (Not(dsBase.DataSet.IsEmpty))   and
//     (CpbteNuevo='S')         and (FormCpbte_2.GenerarOProducion) and (DMMain_FD.HayProduccion)
//  Then
//    begin
//      if (not PedirConfirmacionOP) or (MessageDlg('Hay Articulos de Produccion, y esta configurado su usuario para generar la Orden de Produccion, ' +
//                                              ' ejecuta el procedimiento??',mtConfirmation,mbYesNo,0,mbNo)=mrYes)
//      then
//        DatosVentas.GenerarRtoProduccion;
//
//    end;

  inherited;

  Generado :=False;
  Recuperar.Execute;

  IF (DSBase.DataSet.IsEmpty) and (CpbteNuevo='S') then
    begin
      DMMain_FD.LogFileFD(1,4,'Fc.Vta Cta Cte - Transaccion No FINALIZADA  '+ DSBase.DataSet.FieldByName('RAZONSOCIAL').AsString+' '+
                              DSBase.DataSet.FieldByName('NROCPBTE').AsString+'('+DSBase.DataSet.FieldByName('ID_FC').AsString+')'+
                              'Fecha:'+DateToStr(DSBase.DataSet.FieldByName('FECHAVTA').AsDateTime)+
                              ' Origen: '+ 'Ventas',
                              'FACVTA');
      ShowMessage('No se Gravo la Operacion....');
    end;

  if (DSBase.State=dsBrowse)  and (Not(dsBase.DataSet.IsEmpty))   and
     (CpbteNuevo='S')         and (FormCpbte_2.GenerarOProducion) and (DMMain_FD.HayProduccion)
  Then
    begin
      if (not PedirConfirmacionOP) or (MessageDlg('Hay Articulos de Produccion, y esta configurado su usuario para generar la Orden de Produccion, ' +
                                                  ' ejecuta el procedimiento??',mtConfirmation,mbYesNo,0,mbNo)=mrYes)
      then
        DMStoreProcedure.GenerarRtoProduccion(DSBase.DataSet.FieldByName('ID_FC').AsInteger,'Genearcion por Vtas.');
     end;

  UltimaTipoOp       := DSBase.DataSet.FieldByName('TIPO_OPERACION_EXPO').AsString; //ArchivoIni.WriteString('Despachante', 'TipoOperacion', UltimaTipoOp);
  UltimaAduanaOrigen := DSBase.DataSet.FieldByName('ID_ADUANA').AsInteger;//ArchivoIni.WriteInteger('Despachante', 'Aduana',UltimaAduanaOrigen);//Integer;
  UltimaTransp       := DSBase.DataSet.FieldByName('ID_TRANSPORTE').AsInteger;//ArchivoIni.WriteInteger('Despachante', 'UltTransporte', UltimaTransp);//Integer;
  UltimaTranspNombre := DSBase.DataSet.FieldByName('MUESTRATRANSPORTE').AsString;//ArchivoIni.WriteInteger('Despachante', 'UltTransporte', UltimaTransp);//Integer;
  UltimoDeposito     := DSBase.DataSet.FieldByName('DEPOSITO').AsInteger;
  UltimaFechaCarga   := DSBase.DataSet.FieldByName('FECHA_CARGA').AsDateTime;//ArchivoIni.WriteString('Despachante', 'UltimaFecha', UltimaFechaCarga ); TDateTime;
  NroInterno         := Copy(DSBase.DataSet.FieldByName('NRO_INTERNO').AsString,1,4)+'/';//ArchivoIni.WriteString('Despachante', 'UltimaFecha', UltimaFechaCarga ); TDateTime;

  if CpbteNuevo='S' then
    begin
      if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC') then
        DMMain_FD.LogFileFD(1,3,'Ingreso NC :'+'('+DatosVentas.CDSVentaCabID_FC.AsString+') Nro-' +
                                 DatosVentas.CDSVentaCabLETRAFAC.AsString+'-'+DatosVentas.CDSVentaCabSUCFAC.AsString+'-'+
                                 DatosVentas.CDSVentaCabNUMEROFAC.AsString+
                                ' Fecha :'+dateToStr(DatosVentas.CDSVentaCabFECHAVTA.AsDateTime)+
                                ' Valor :'+FormatFloat(',0.00',DatosVentas.CDSVentaCabTOTAL.ASFloat),
                                'NCREDITO')
      else
        DMMain_FD.LogFileFD(1,3,'Ingreso Comprobante CC:'+'('+DatosVentas.CDSVentaCabID_FC.AsString+') Nro-' +
                                 DatosVentas.CDSVentaCabLETRAFAC.AsString+'-'+DatosVentas.CDSVentaCabSUCFAC.AsString+'-'+
                                 DatosVentas.CDSVentaCabNUMEROFAC.AsString+
                                ' Fecha :'+dateToStr(DatosVentas.CDSVentaCabFECHAVTA.AsDateTime)+
                                ' En Cta.Cte :'+(DatosVentas.CDSVentaCabINGRESA_A_CTACTE.AsString)+
                                ' En IVA :'+(DatosVentas.CDSVentaCabINGRESA_LIBRO_IVA.AsString)+
                                ' Valor :'+FormatFloat(',0.00',DatosVentas.CDSVentaCabTOTAL.ASFloat),
                                'FCVTA');
    end;

  if (Duplicado) and (DatosVentas.CDSVentaCabNUMEROFAC.Value<>NumeroDup)then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        DMStoreProcedure.spcambiaNroFD.Close;
        DMStoreProcedure.spcambiaNroFD.ParamByName('ID').Value     := DatosVentas.CDSVentaCabID_FC.AsInteger;
        DMStoreProcedure.spcambiaNroFD.ParamByName('Tipo').Value   := DatosVentas.CDSVentaCabTIPOCPBTE.ASString;
        DMStoreProcedure.spcambiaNroFD.ParamByName('Prefijo').Value:= DatosVentas.CDSVentaCabSUCFAC.AsString;
        DMStoreProcedure.spcambiaNroFD.ParamByName('Numero').Value := NumeroDup;// DatosVentasCtdo.CDSVentaCabNUMEROFAC.AsString;
        DMStoreProcedure.spcambiaNroFD.ParamByName('Compra_venta').Value :='V';
        DMStoreProcedure.spcambiaNroFD.ParamByName('Fecha').Value  := DatosVentas.CDSVentaCabFECHAVTA.AsDateTime;
        DMStoreProcedure.spcambiaNroFD.ParamByName('Fecha2').Value := DatosVentas.CDSVentaCabFECHAVTA.ASDateTime;
        DMStoreProcedure.spcambiaNroFD.ExecProc;

        DMMain_FD.LogFileFD(1,3,'Duplicado - Fecha/Nro Fc.Vta: Original:('+DatosVentas.CDSVentaCabID_FC.AsString+') '+
                            DatosVentas.CDSVentaCabLETRAFAC.AsString+'-'+DatosVentas.CDSVentaCabSUCFAC.AsString+'-'+
                            DatosVentas.CDSVentaCabNUMEROFAC.AsString+'..Fecha Fiscal:'+dateToStr(DatosVentas.CDSVentaCabFECHAVTA.AsDateTime)+
                            ' Nuevo   :'+DatosVentas.CDSVentaCabLETRAFAC.AsString+'-'+DatosVentas.CDSVentaCabSUCFAC.AsString+'-'+NumeroDup,
                            'DUPLICADO');

        DMMain_FD.fdcGestion.Commit;
        DMStoreProcedure.SPcambiaNroFD.Close;
      except
        DMStoreProcedure.SPcambiaNroFD.Close;
        DMMain_FD.fdcGestion.Rollback;
      end;
      Recuperar.Execute;
    end;

   if (ID_FcContado>0) and (DSBase.DataSet.FieldByName('TIPOCPBTE').Value='NC') and
     (DSBase.DataSet.FieldByName('NC_CONTADO').Value='S') and ((TForm(Self.Owner).Name='FormCpbteCtdo_2') or (TForm(Self.Owner).Name='FormTicketVta')) then
   begin
      // aca doy de alta los movimientos de caja que tenia el Tk o Fc de Contado
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spMovReempNC.Close;
        spMovReempNC.ParamByName('id').AsInteger      := ID_FcContado;
        spMovReempNC.ParamByName('tipo').AsString     := 'FO';
        if (TForm(Self.Owner).Name='FormTicketVta') Then
          spMovReempNC.ParamByName('tipo').AsString   := 'TK';
        spMovReempNC.ParamByName('NC_ID').AsInteger   := DSBase.DataSet.FieldByName('ID_FC').Value;
        spMovReempNC.ParamByName('NC_TIPO').AsString  := DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
        spMovReempNC.ParamByName('NC_CLASE').AsString := DSBase.DataSet.FieldByName('CLASECPBTE').Value;
        spMovReempNC.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        spMovReempNC.Close;
      except
        DMMain_FD.fdcGestion.Rollback;
        spMovReempNC.Close;
        ShowMessage('Verificar Mov.de Cta...!');
      end;
   end;

  Generado :=(Not(dsBase.DataSet.IsEmpty));  // si no esta vacio es por que se genero...

//    para las ctas coorporativas....
   Consolidar:=False;
   if (CpbteNuevo='S') and (Trim(DatosVentas.CDSVentaCabMUESTRACOORPORATIVO.AsString)<>'') then
     Consolidar:=True;
//      Borrardo del freezer.....
//      Cab:=(DMMain_FD.MainPath+'facturas freezadas\'+DatosVentas.CDSVentaCabID_FC.AsString+'-'+DatosVentas.CDSVentaCabCODIGO.AsString+'-'+DatosVentas.CDSVentaCabNOMBRE.AsString+'.XML');
//      Cab:=(PathFreezerCtaCte+'\'+DatosVentas.CDSVentaCabID_FC.AsString+'-'+DatosVentas.CDSVentaCabCODIGO.AsString+'-'+DatosVentas.CDSVentaCabNOMBRE.AsString+'.XML');
//      Det:=Copy(Cab,1,Pos('-',Cab)-1)+'.xm_';
//      DeleteFile(cab);
//      DeleteFile(det);

// *****************************************************************
//  Ingreso Movimiento A Cta de  Ventas en Cuotas
// *****************************************************************
  if (CpbteNuevo='S') and (DatosVentas.CDSVentaCabPAGO_A_CTA.AsFloat>0) and
     (DatosVentas.CDSVentaCabCUOTAS_CC.Value>=1) and (DatosVentas.CDSVentaCabTIPOCPBTE.Value<>'NC') and
     (DatosVentas.CDSVentaCabTIPOCPBTE.Value<>'ND') then
     GenerarFcCtdo;
// *****************************************************************

  if GeneraTx then
    begin
      Imprime:='N';
      if Not(Assigned(FormTransferencias)) then
        FormTransferencias:=TFormTransferencias.Create(Self);
      FormTransferencias.Show;
      FormTransferencias.DepositoPorDefecto:=DatosVentas.CDSVentaCabDEPOSITO.AsInteger;
      FormTransferencias.Agregar.Execute;
      FormTransferencias.CDSTranCabDEPOSITO_ORIGENSetText(FormTransferencias.CDSTranCabDEPOSITO_ORIGEN,DatosVentas.CDSVentaCabDEPOSITO.AsString);
      FormTransferencias.CDSTranCabDEPOSITO_DESTINOSetText(FormTransferencias.CDSTranCabDEPOSITO_DESTINO,IntToStr(DepositoDestino));
      FormTransferencias.CDSTranCabOBS1.Value:='Por Facturacion de Franquicia:'+DatosVentas.CDSVentaCabNOMBRE.Value;
      FormTransferencias.CDSTranCabOBS2.Value:='Fc.Nro:'+DatosVentas.CDSVentaCabNROCPBTE.AsString;
      FormTransferencias.CDSTranCabID_FACTURA_FRANQUICIA.Value:=DatosVentas.CDSVentaCabID_FC.Value;

      DatosVentas.CDSVentaDet.First;
      while not(DatosVentas.CDSVentaDet.eof) do
        begin
          FormTransferencias.CDSTranDet.Append;
          FormTransferencias.CDSTranDetCODIGOSetText(FormTransferencias.CDSTranDetCODIGO,DatosVentas.CDSVentaDetCODIGOARTICULO.AsString);
          FormTransferencias.CDSTranDetCANTIDADSetText(FormTransferencias.CDSTranDetCANTIDAD,DatosVentas.CDSVentaDetCANTIDAD.AsString);
          FormTransferencias.CDSTranDet.Post;
          DatosVentas.CDSVentaDet.Next;
        end;
    end;
// **** Ingreso en el Log File  **************
  if (CpbteNuevo='N') and (DatosVentas.CDSVentaCabANULADO.Value<>'S') and (Not(DatosVentas.CDSVentaCab.IsEmpty)) then // por que viene de una modificacion
    DMMain_FD.LogFileFD(1,2,'Modificación Fac.Venta: '+ DatosVentas.CDSVentaCabNROCPBTE.Value+ '('+DatosVentas.CDSVentaCabID_FC.AsString+
                            ') Cliente: '+ DatosVentas.CDSVentaCabRAZONSOCIAL.Value+' Importe Nuevo: ' + FormatFloat('0.00',DatosVentas.CDSVentaCabTOTAL.AsFloat)+
                            ' Importe Anterior :'+ FormatFloat('0.00',ImporteOriginal),'FACVTA');
// ******************************************

// esta sentencia la uso para seaber si el form  pertenece a la facturacion de abonos o de la cobranza
  if TForm(Self.Owner).Name='FormGeneradorCupones' then
    Imprime:='N'
  else
    if TForm(Self.Owner).Name='FormReciboAbonos' then
      Imprime:='N'
    else
      if TForm(Self.Owner).Name='FormFacturaPlantillas' then
        Imprime:='N'
      else
        if TForm(Self.Owner).Name='FormRecepGarantia' then
          Imprime:='N'
        else
          if TForm(Self.Owner).Name='FormControlImpuestos' then
            Imprime:='N'
          else
            if TForm(Self.Owner).Name='FormFiscalizacionLote' then
              Imprime:='N'
            else
              if TForm(Self.Owner).Name='FormFacturarModelos' then
                Imprime:='N'
              else
                if TForm(Self.Owner).Name='FormImportacionFacturasVtaGral' Then
                  Imprime:='N'
                else
                  if TForm(Self.Owner).Name='FormRecibo_2' Then
                    Imprime:='N'
                  else
                    if TForm(Self.Owner).Name='FormFiscalizacionLote' Then
                      Imprime:='N'
                    else
                      if TForm(Self.Owner).Name='FormImportacionPreventas' then
                        Imprime:='N'
                      else
                        if TForm(Self.Owner).Name='FormRecepRepartoExpress' then
                          Imprime:='N'
                        else
                          if TForm(Self.Owner).Name='FormFacturarRemitos' then
                            Imprime:='N';


   if DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S' then
    Imprime:='N';
       //*****----fin de la busqueda--------******
  if (DatosVentas.CDSVentaCabCPTE_MANUAL.Value = 'N') Then
    if (Imprime='S') Then
      IF (CpbteNuevo = 'S') THEN
         Imprimir.Execute;
     //  if TForm(Self.Owner).Name='FormFacturaRemitoAgrupado' then
     //   Salir.Execute;// Close;
  if (TForm(Self.Owner).Name='FormPedidosMorphi') and (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='N') then
    Salir.Execute;// Close;
  if (TForm(Self.Owner).Name='FormNotaPedidoCliente') and (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='N') then
    Salir.Execute;// Close;
  if TForm(Self.Owner).Name='FormControlImpuestos' then
    Salir.Execute;// Close;
  if TForm(Self.Owner).Name='FormImportacionPreventas' then
    Salir.Execute;
 // if TForm(Self.Owner).Name='FormRecepRepartoExpress' then
 //   Salir.Execute;
  if (TForm(Self.Owner).Name='FormConsolidacionAcopioRemitos') and
     (Not(DSBase.DataSet.IsEmpty)) and
     (DatosVentas.CDSVentaCabTIPOCPBTE.Value='FC') then
        Acopiar.Execute;

  pnAvisoFUAP.Visible:=False;
  // Pongo Modifi en False Forzada
  Modificar.Enabled  :=False;
  // *****************************
  if FormCpbte_2.Visible then
    if btNuevo.Enabled Then
       btNuevo.SetFocus;
  pcDetalleFactura.ActivePageIndex:=0;

  if (FormCpbte_2<>nil) and (Imprimir<>Nil) and (DSBase.DataSet<>nil) then
    Imprimir.Enabled:= (DSBase.DataSet.FieldByName('IMPRESO').AsString='N') and (DSBase.DataSet.FieldByName('ANULADO').AsString='N');

  // ***********************************************************
  // ************* Factura Electronica *************************
  // ***********************************************************
  if  (DatosVentas<>nil) and (CpbteNuevo='S') and (FiscalizarAutomatica.Checked) and
      ((DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and
       (TForm(Self.Owner).Name<>'FormGeneradorCupones')  and
       (TForm(Self.Owner).Name<>'FormFacturaPlantillas') and
       (TForm(Self.Owner).Name<>'FormRecepRepartoExpress') and
       (TForm(Self.Owner).Name<>'FormImportacionPreventas') and
       (TForm(Self.Owner).Name<>'FormFacturarModelos') ) then
    begin
      Fiscalizar.Execute;
    end;
  // ***********************************************************
  // ************* Factura Electronica *************************
  // ***********************************************************
  if  (DatosVentas<>nil) and (Duplicado) and
      ((DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and
      (TForm(Self.Owner).Name='FormFiscalizacionLote')) then
    begin
      Fiscalizar.Execute;
    end;
  if  (DatosVentas<>nil) and (Duplicado) and
      ((DatosVentas.CDSVentaCabCON_CAEA.Value='S') and
      (TForm(Self.Owner).Name='FormFiscalizacionLote')) then
    begin
      Fiscalizar.Execute;
    end;

  // para las ctas coorporativas.... Lo modifique el 30/03/2017 en intacto
  if Consolidar then
    begin
      Consolidado :=False;
      Consolidar_CtaCoorp;
    end;

  /// Registro de Remitos Facturados.......................
  if TForm(Self.Owner).Name='FormFacturaRemitoAgrupado' then
    begin
      Memo:='';
    //  ListadoRtosFacturados:=TStringList.Create;
      DatosVentas.mtRemitosFacturados.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\RemitosFacturados.xml');
      DatosVentas.mtRemitosFacturados.Open;

      DMMain_FD.fdcGestion.StartTransaction;
      try
        DatosVentas.mtRemitosfacturados.First;
        while Not(DatosVentas.mtRemitosfacturados.Eof) do
          begin
            DatosVentas.QMarcarRtoFacturado.Close;
            DatosVentas.QMarcarRtoFacturado.ParamByName('id').Value       := DatosVentas.mtRemitosFacturadosID_RTO.Value;
            DatosVentas.QMarcarRtoFacturado.ParamByName('idFactura').Value:= DatosVentas.mtRemitosFacturadosID_FAC.Value;
            DatosVentas.QMarcarRtoFacturado.ParamByName('numero').Value   := DatosVentas.mtRemitosFacturadosNROFACT.Value;
            DatosVentas.QMarcarRtoFacturado.ExecSQL;
            DatosVentas.QMarcarRtoFacturado.Close;

            Memo:= Memo+('Nro de Rto = '+DatosVentas.mtRemitosFacturadosNROREMITO.Value+ ' >>  Nrofac ='+DatosVentas.mtRemitosFacturadosNROFACT.Value)+#13;

            DatosVentas.mtRemitosfacturados.Next;
          end;
        DMMain_FD.fdcGestion.Commit;
      except
        Memo:='';
        DMMain_FD.fdcGestion.Rollback;
      end;
      if Memo<>'' then
        ShowMessage('Remitos Facturados....'+#13+Memo);
     // if ListadoRtosFacturados<>nil then
     //   FreeAndNil(ListadoRtosFacturados);
      DeleteFile(DMMain_FD.MainPath+'Archivos Temporales\RemitosFacturados.XML');
    end;

    // Si biene de Notas de Pedidos Agrupadas ... Marca los Pedidos Realizados
    if (CpbteNuevo='S') and (TForm(Self.Owner).Name='FormPedidosAProcesar') and Generado then
      begin
        mtPedidos               := TFDMemTable.Create(nil);
        QMarcarPedido           := TFDQuery.Create(nil);
        QMarcarPedido.Connection:= DMMain_FD.fdcGestion;
        QMarcarPedido.SQL.Text  := 'update plantilla_pedido_cab p set p.id_factura = :id_factura,' +
                                   '                            p.tipo_factura     = :tipo_fact,' +
                                   '                            p.facturado        =''S'','+
                                   '                            p.hay_pendientes   =''N'' '+
                                   ' where p.id = :id_pedido';
        mtPedidos.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\PedidosRemitados.xml');
        mtPedidos.Open;

        DMMain_FD.fdcGestion.StartTransaction;

        try

          mtPedidos.First;
          while Not(mtPedidos.Eof) do
            begin
              QMarcarPedido.Close;
              QMarcarPedido.ParamByName('id_factura').AsInteger  := DSBase.DataSet.FieldByName('id_FC').AsInteger;
              QMarcarPedido.ParamByName('tipo_fact').AsString    := DSBase.DataSet.FieldByName('Tipocpbte').AsString;
              QMarcarPedido.ParamByName('id_pedido').AsString    := mtPedidos.FieldByName('id').Value;
              QMarcarPedido.ExecSQL;
              QMarcarPedido.Close;
              mtpedidos.Next;
            end;
          DMMain_FD.fdcGestion.Commit;
        except
          DMMain_FD.fdcGestion.Rollback;
        end;
        QMarcarPedido.Close;
        mtPedidos.Close;
        FreeAndNil(QMarcarPedido);
        FreeAndNil(mtPedidos);
        DeleteFile(DMMain_FD.MainPath+'Archivos Temporales\PedidosRemitados.xml');
      end;

  // Aplicacion de Nota de Credito *****************
  // SI es NC Aplico la NC.....
  if  ((TForm(Self.Owner).Name<>'FormRecibo_2') and (DSBase.DataSet<>nil) and
      (DSBase.DataSet.FieldByName('TIPOCPBTE').AsString='NC') and (DSBase.DataSet.FieldByName('ASOCIADO_ID_CPBTE').Value>-1) and (dsBase.DataSet.FieldByName('NC_CONTADO').AsString<>'S') ) then
    begin
      Qtp            := TFDQuery.Create(nil);
      Qtp.Connection := DMMain_FD.fdcGestion;
      Qtp.SQL.Text   := 'select c.Tipocpbte from fcvtacab c where c.id_fc='+DSBase.DataSet.FieldByName('ASOCIADO_ID_CPBTE').AsString;
      Qtp.Open;

      DMMain_FD.APlicarNC_Venta(DSBase.DataSet.FieldByName('CODIGO').AsString,
                                DSBase.DataSet.FieldByName('ASOCIADO_ID_CPBTE').AsInteger,
                                DSBase.DataSet.FieldByName('ID_FC').AsInteger );
      Qtp.Close;
      FreeAndNil(QTp);
    end;

  Duplicado:=False;
end;

procedure TFormCpbte_2.ConsultaFiscalizacionExecute(Sender: TObject);
var aux:String;
d,m,y:word;
begin
  inherited;
  if (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S') then
    begin
      if  Not(Assigned(FormFiscalizacion)) then
        FormFiscalizacion:= TFormFiscalizacion.Create(self);
      //Formfiscalizacion.Show;
      FormFiscalizacion.PtoVenta    := StrToInt(DatosVentas.CDSVentaCabSUCFAC.Value);

      if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='FC') and (DatosVentas.CDSVentaCabLETRAFAC.Value='A') Then
        FormFiscalizacion.TipoComp:=1
      else
        if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='FC') and (DatosVentas.CDSVentaCabLETRAFAC.Value='B') Then
          FormFiscalizacion.TipoComp:=6
        else
          if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC') and (DatosVentas.CDSVentaCabLETRAFAC.Value='A') Then
            FormFiscalizacion.TipoComp:=3
          else
            if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC') and (DatosVentas.CDSVentaCabLETRAFAC.Value='A') Then
              FormFiscalizacion.TipoComp:=8;


      FormFiscalizacion.Numero := StrToFloat(DatosVentas.CDSVentaCabNUMEROFAC.Value);
      //ConsultaUltima;
    
    end;

end;

procedure TFormCpbte_2.ModificaCotizacionExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.dataSet.State=dsBrowse) and (Not(DSBase.DataSet.isEmpty)) Then
    begin
      FormCambioCotizCpbte:=TFormCambioCotizCpbte.Create(Self);
      FormCambioCotizCpbte.id        :=DSBase.DataSet.FieldByName('ID_FC').Value;
      FormCambioCotizCpbte.Cotizacion:=DSBase.DataSet.FieldByName('MONEDA_CPBTE_COTIZACION').Value;
      FormCambioCotizCpbte.ShowModal;
      Recuperar.Execute;
    end;

end;

procedure TFormCpbte_2.ModificarExecute(Sender: TObject);
begin
  Duplicado:=False;
  if (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentas.CDSVentaCabCAE.AsString)>0) then
    Raise Exception.Create (' Facturas Electrónica con CAE, no se puede Modicficar....');

  if (DMMain_FD.HayAcopios(DSBase.DataSet.FieldByName('id_fc').Value)) Then
    begin
      if (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentas.CDSVentaCabCAE.AsString)>0) then
         RAISE Exception.Create('Hay Acopios asociado al comprobante... no se puede hacer la operación....')
      else
        if (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='N') then
           RAISE Exception.Create('Hay Acopios asociado al comprobante... no se puede hacer la operación....')
    end;

  if (DatosVentas.CDSVentaCabIMPRESO.Value='N') Then
    begin
      if DMMain_FD.ModificaFactura then
        begin
          if (DMMain_FD.GetFcConAplicacion(DatosVentas.CDSVentaCabID_FC.Value,DatosVentas.CDSVentaCabTIPOCPBTE.AsString) ) and
             (DatosVentas.CDSVentaCabCAE.NewValue<>DatosVentas.CDSVentaCabCAE.OldValue) Then
            Raise Exception.Create (' Facturas con pagos asignados....');
          if DSBase.DataSet.FieldByName('TipoCpbte').AsString='NC' then
            DMMain_FD.BorrarApicacionNC(DatosVentas.CDSVentaCabID_FC.Value,
                                        DatosVentas.CDSVentaCabTIPOCPBTE.Value,
                                        DatosVentas.CDSVentaCabCLASECPBTE.Value);
          inherited;
          if ModoDespachante1.Checked=False then
            pnCabecera.Enabled:=False;
          CpbteNuevo      := 'N';
          ImporteOriginal := DatosVentas.CDSVentaCabTOTAL.AsFloat;
        end
      else
        ShowMessage('No se puede modificar No Esta Autorizado....');
    end
  else
    ShowMessage('No se puede modificar un compranbente ya impreso....');
end;

procedure TFormCpbte_2.ModificarTotalClick(Sender: TObject);
begin
  inherited;
  ModificarTotal.Checked:=Not(ModificarTotal.Checked);
end;

procedure TFormCpbte_2.ModoDespachante1Click(Sender: TObject);
begin
  inherited;
  ModoDespachante1.Checked:=not(ModoDespachante1.Checked);
  if  ModoDespachante1.Checked then
    pcModoFactura.ActivePage:=tsDespachante
  else
    pcModoFactura.ActivePage:=tsNormal;

  if ModoDespachante1.Checked then
    pcSubForma.ActivePageIndex:=1
  else
    pcSubForma.ActivePageIndex:=0;

  pnAcopio.Visible:=not(ModoDespachante1.Checked);

  if FormCpbte_2.ModoDespachante1.Checked then
    DatosVentas.CDSVentaDet.IndexFieldNames:='CODIGOARTICULO'
  else
    DatosVentas.CDSVentaDet.IndexFieldNames:='RENGLON';


end;

procedure TFormCpbte_2.MostrarDlgClick(Sender: TObject);
begin
  inherited;
  MostrarDlg.Checked:=Not(MostrarDlg.Checked);
end;

procedure TFormCpbte_2.MovCajaNCoExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.FieldByName('TIPOCPBTE').Value='NC') and (DSBase.DataSet.FieldByName('NC_CONTADO').Value='S') then
    begin
      if Not(Assigned(FormDetalleValores)) then
        FormDetalleValores:=TFormDetalleValores.Create(Self);
      FormDetalleValores.Id        :=DSBase.DataSet.FieldByName('id_fc').Value;
      FormDetalleValores.TipoCpbte :=DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
      FormDetalleValores.ClaseCpbte:=DSBase.DataSet.FieldByName('CLASECPBTE').Value;

      FormDetalleValores.TIPO     :='E';
      FormDetalleValores.ShowModal;
    end;
end;

procedure TFormCpbte_2.NextExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursal  ='+DSBase.DataSet.FieldByName('SUCURSAL').AsString +
             ' and letraFac = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRAFAC').AsString,'''');

  inherited;

end;

procedure TFormCpbte_2.NoLiquidarExecute(Sender: TObject);
begin
  inherited;
  if (DatosVentas.CDSVentaCabID_FC.AsString<>'') and(DatosVentas.CDSVentaCabLIQUIDADA.Value<>'S') then
    begin
       DMStoreProcedure.spMarcarComisionaFC.Close;
       DMStoreProcedure.spMarcarComisionaFC.Params.ParamByName('id').Value:=DatosVentas.CDSVentaCabID_FC.Value;
       DMStoreProcedure.spMarcarComisionaFC.ExecProc;
       DMStoreProcedure.spMarcarComisionaFC.Close;
    end;
end;

procedure TFormCpbte_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  if ModoDespachante1.Checked then
    begin
      IF NOT (Assigned(FormBuscaCpbteDesp)) THEN
        FormBuscaCpbteDesp := TFormBuscaCpbteDesp.Create(Self);
      FormBuscaCpbteDesp.Tag := 0;
      if DSBase.DataSet.FieldByName('TIPOCPBTE').AsString<>'' then
        FormBuscaCpbteDesp.TipoCpbte1:=DSBase.DataSet.FieldByName('TIPOCPBTE').AsString
      else
        begin
          FormBuscaCpbteDesp.TipoCpbte1:='FC';
          FormBuscaCpbteDesp.TipoCpbte2:='NC';
          FormBuscaCpbteDesp.TipoCpbte3:='ND';
        end;
      FormBuscaCpbteDesp.ShowModal;
      IF (FormBuscaCpbteDesp.Id_Rec > 0)  THEN
        BEGIN
          Condicion:=' and tipocpbte='+''''+FormBuscaCpbteDesp.TipoCpbte+'''';
          TipoCpbte:=FormBuscaCpbteDesp.TipoCpbte;
          DatoNew:=IntToStr(FormBuscaCpbteDesp.id_rec);
          Recuperar.Execute;
        END
    end
  else
    begin
      IF NOT (Assigned(FormBuscaCpbte)) THEN
        FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
      FormBuscaCpbte.Tag := 0;
      if DSBase.DataSet.FieldByName('TIPOCPBTE').AsString<>'' then
        FormBuscaCpbte.TipoCpbte1:=DSBase.DataSet.FieldByName('TIPOCPBTE').AsString
      else
        begin
          FormBuscaCpbte.TipoCpbte1:='FC';
          FormBuscaCpbte.TipoCpbte2:='NC';
          FormBuscaCpbte.TipoCpbte3:='ND';
        end;
      FormBuscaCpbte.ShowModal;
      IF  (FormBuscaCpbte.Id_Rec > 0) and (FormBuscaCpbte.TipoCpbteElegido<>'FO') THEN
        BEGIN
          Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
          TipoCpbte:=FormBuscaCpbte.TipoCpbte;
          DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
          Recuperar.Execute;
        END
      else
        IF  (FormBuscaCpbte.Id_Rec > 0) and (FormBuscaCpbte.TipoCpbteElegido='FO') THEN
        begin
          if Not(Assigned(FormCpbteCtdo_2)) then
             FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Application);
          FormCpbteCtdo_2.DatoNew:=IntToStr(FormBuscaCpbte.Id_Rec);
          FormCpbteCtdo_2.TipoCpbte:='FO';
          FormCpbteCtdo_2.Recuperar.Execute;
          FormCpbteCtdo_2.Show;
        end;
    end;

end;

procedure TFormCpbte_2.BuscarPorObsExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscadorPorObs)) THEN
    FormBuscadorPorObs := TFormBuscadorPorObs.Create(self);
  FormBuscadorPorObs.TipoComp:='F';
  FormBuscadorPorObs.ShowModal;
  IF FormBuscadorPorObs.Id > 0 THEN
    BEGIN
      if FormBuscadorPorObs.Tipo<>'FO' then
        begin
          TipoCpbte:= FormBuscadorPorObs.Tipo;
          DatoNew  := IntToStr(FormBuscadorPorObs.id);
          Recuperar.Execute;
        end
      else
        begin
          if Not(Assigned(FormCpbteCtdo_2)) then
            FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Application);
          FormCpbteCtdo_2.DatoNew:=IntToStr(FormBuscadorPorObs.id);
          FormCpbteCtdo_2.TipoCpbte:='FO';
          FormCpbteCtdo_2.Recuperar.Execute;
          FormCpbteCtdo_2.Show;
        end;
    end;
end;

procedure TFormCpbte_2.BuscarPresupuestoExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscarPresupuestos)) THEN
    FormBuscarPresupuestos := TFormBuscarPresupuestos.Create(Self,InsertarDetalle);
  FormBuscarPresupuestos.Origen:='FC';
  FormBuscarPresupuestos.Cliente:=DatosVentas.CDSVentaCabCodigo.Value;
  FormBuscarPresupuestos.ShowModal;
end;

procedure TFormCpbte_2.BuscarProveedorExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
    begin
      DatosVentas.CDSVentaCabPROVEEDORSetText(DatosVentas.CDSVentaCabPROVEEDOR, FormBuscadorProveedor.Codigo);
    end;

end;

procedure TFormCpbte_2.ImportarExcelExecute(Sender: TObject);
var r:Integer;
CantidadStr,PrecioStr,DsctoStr,Codigo:String;
Cantidad,Precio,Ajuste,Dscto: extended;
GridXLS:TAdvStringGrid;
begin
  inherited;
   if DSBase.State in [dsInsert] then
    begin
      if OpenDialog.Execute then
        if OpenDialog.FileName<>'' then
          begin
            R:=1;
            Screen.Cursor:=crHourGlass;

            GridXLS:=TAdvStringGrid.Create(self);

            GridXLS.LoadFromXLS(openDialog.FileName);
//            sgDatosImportar.LoadFromXLS(openDialog.FileName);
            while r< gridXls.RowCount { sgDatosImportar.RowCount} do
              begin
                sbEstado.SimpleText:='Procesando Reg:'+IntToStr(r)+'/'+IntToStr( GridXLS.RowCount-1);
                Application.ProcessMessages;
                CantidadStr := GridXLS.Cells[5,r];
                StringReplace(CantidadStr,',','',[rfReplaceAll]);
                if CantidadStr<>'' then
                  Cantidad := StrToFloat(CantidadStr)
                else
                  cantidad:=0;

                PrecioStr := GridXLS.Cells[6,r];
                StringReplace(PrecioStr,',','',[rfReplaceAll]);
                if PrecioStr<>'' then
                  Precio := StrToFloat(PrecioStr)
                else
                  Precio:=0;

                DsctoStr := gridXLS.Cells[7,r]; //sgDatosImportar.Cells[7,r];
                StringReplace(DsctoStr,',','',[rfReplaceAll]);
                if DsctoStr<>'' then
                  Dscto := StrToFloat(DsctoStr)
                else
                  Dscto:=0;

                Cantidad:=RoundTo(Cantidad,-3);
                if Not(IsZero(Cantidad)) then
                  begin
                    Codigo:=  GridXLS.Cells[0,r];//  Copy('00000000',1,8-Length(Codigo))+Codigo;
                    DatosVentas.CDSVentaDet.Append;
                    DatosVentas.CDSVentaDetCODIGOARTICULO.Text := codigo;
                    DatosVentas.CDSVentaDetCANTIDAD.Text       := FormatFloat('0.000', Cantidad);
                    DatosVentas.CDSVentaDetDESCUENTO.Text      := FormatFloat('0.000', Dscto);

                    DatosVentas.CDSVentaDetUNITARIO_TOTAL.Text := FormatFloat('0.000', Precio);

                  end;
                r:=r+1;
              end;
            Screen.Cursor:=crDefault;

          end;
    end;
  FreeAndNil(GridXLS);
  Screen.Cursor:=crDefault;
end;

procedure TFormCpbte_2.ImpresionFormatoMail1Click(Sender: TObject);
begin
  inherited;
  ImpresionFormatoMail1.Checked:=Not(ImpresionFormatoMail1.Checked);
end;

procedure TFormCpbte_2.ImprimirBorrador1Click(Sender: TObject);
begin
  inherited;
  ImprimirBorrador1.Checked:=Not(ImprimirBorrador1.Checked);
end;

procedure TFormCpbte_2.ImprimirExecute(Sender: TObject);
VAR Preview:String;
DiscrIva,Cuit,NroRipsa:String;
Imprime:Boolean;
BEGIN
  DiscrIva   := FormCpbte_2.DiscriminaIva;
  // ******** Generar Codigo Barra Cupon ***********
  ArchivoIni := TIniFile.Create(DMMain_FD.MainPath+DMMain_FD.UsuarioActivo+'FcPlantilla.ini');
  NroRipsa   := ArchivoIni.ReadString('ripsa', 'numero', '0000');
  ArchivoIni.Free;
  //*************************************************************
  if DatosVentas.CDSRegFacturas.IsEmpty then
    begin
      DatosVentas.GenerarCodigoBarra(NroRipsa);
      DatosVentas.CDSRegFacturas.ApplyUpdates(0);
    end
  ELSE
    begin
      DatosVentas.RevisionCodigoBarra(NroRipsa);
      DatosVentas.CDSRegFacturas.ApplyUpdates(0);
    end;

  //*************************************************

  FormCpbte_2.DiscriminaIva:='S';
  DatosVentas.CDSVentaDet.Refresh;
  if ModoDespachante1.Checked then
    DatosVentas.CDSVentaDet.IndexFieldNames:='CODIGOARTICULO'
  else
    DatosVentas.CDSVentaDet.IndexFieldNames:='GRUPO_DETALLE;RENGLON';

  frFactura.PrintOptions.Printer:=PrNomCpbte;
  frFactura.SelectPrinter;


  if (chPreview.Checked) then Preview:='S' else Preview:='N';


  DatosVentas.QComprob.Close;
  DatosVentas.QComprob.ParamByName('id').Value          := DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE.Value;
  DatosVentas.QComprob.ParamByName('suc').Value         := DatosVentas.CDSVentaCabSUCURSAL.Value;
  DatosVentas.QComprob.ParamByName('DesglozaIva').Value := '*';
  DatosVentas.QComprob.Open;

  if (DatosVentas.QComprobNOMBREIMPRESORA.Value='') or (DatosVentas.CDSVentaCabIMPRESO.Value='S') Then
    begin
      if ControlaImpresion=True then
        begin
          IF MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0)= mrYes Then
            Imprime:=True
          else
            Imprime:=false;
        end
      else
        Imprime:=True;

      if (Imprime=True) and
         (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and
         (Trunc(DatosVentas.CDSVentaCabCAE.AsFloat)<=0) and
         (ImprimirBorrador1.Checked=false) then
        begin
          Imprime:=False;
          RAISE Exception.Create('Comprobante Electronico, debe tener CAE para imprimir.(2)');
        end;

      if (Imprime=True) and (DatosVentas.CDSVentaCabIMPRESO.Value='S') and (not DMMain_FD.AutorizadoReImprimirFC) then
        begin
          Imprime:=False;
          ShowMessage('No se permite re-imprimir el cpbte ya impreso...')
        end;

      if Imprime=True then
        begin
          frFactura.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosVentas.QComprobREPORTE.AsString);
          frFactura.PrintOptions.Copies :=DatosVentas.QComprobCOPIAS.Value;

          if ImpresionFormatoMail1.Checked then
            begin
              if FileExists(DMMain_FD.PathReportesCpbte+'\Mail_'+DatosVentas.QComprobREPORTE.AsString) then
                frFactura.LoadFromFile(DMMain_FD.PathReportesCpbte+'\Mail_'+DatosVentas.QComprobREPORTE.AsString)
              else
                frFactura.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosVentas.QComprobREPORTE.AsString);

              frFactura.PrintOptions.Copies :=1;
            end;

          // ***** Segun quien Fiscaliza verifico si no fue por datos de Sucursal ....
          Cuit  := AnsireplaceText(Trim(DatosVentas.CDSEmpresaCUIT.Value),'-','');
          if Trim(DMMain_FD.Certificado_SUCURSAL)<>'' then
            begin
              FormCpbte_2.CertificadoElectronico:=Trim(DMMain_FD.Certificado_SUCURSAL);
              Cuit:= AnsireplaceText(Trim(DMMain_FD.Cuit_SUCURSAL),'-','');
            end;

          Cuit := AnsireplaceText(CUIT,'-','');
          Cuit := AnsireplaceText(CUIT,'.','');
          // ***********************************************************************

          DMMain_FD.QOpciones.Close;
          DatosVentas.QComprob.Close;
          if (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and
             ((DatosVentas.CDSVentaCabCAE.AsString<>'') and (DatosVentas.CDSVentaCabCAE.AsFloat>0)) and
             (DatosVentas.CDSVentaCabMUESTRACODIGOAFIP.Value<>'') then

          begin
            frFactura.Variables['CodigoBarra']    := ''''+DMMain_FD.CodigoBarraFcElectronica(Cuit+
                                                     Copy(DatosVentas.CDSVentaCabMUESTRACODIGOAFIP.Value,2,2)+
                                                     DatosVentas.CDSVentaCabSUCFAC.Value+
                                                     DatosVentas.CDSVentaCabCAE.Value+
                                                     FormatDateTime('yyyymmdd',DatosVentas.CDSVentaCabCAE_VENCIMIENTO.AsDateTime))+'''';

            frFactura.Variables['CodigoQR']       := '';
          end;

          frFactura.Variables['MascaraUnitario']  := ''''+DatosVentas.MascaraDetalleUnitario+'''';
          frFactura.Variables['MascaraCantidad']  := ''''+DatosVentas.MascaraDetalleCantidad+'''';
          frFactura.Variables['MascaraTotal']     := ''''+DatosVentas.MascaraDetalleTotal+'''';
          frFactura.Variables['MascaraTotalGral'] := ''''+DatosVentas.MascaraCabecera+'''';
          frFactura.Variables['MascaraIvaTasa']   := ''''+DatosVentas.MascaraIvaTasa+'''';
          frFactura.Variables['MascaraIvaImporte']:= ''''+DatosVentas.MascaraIvaImporte+'''';
          frFactura.Variables['SaldoAnterior']    := ''''+Saldo.Caption+'''';
          frFactura.Variables['ImprimirSaldo']    := ''''+FormCpbte_2.ImprimeSaldo+'''';
          frFactura.Variables['Copyname0']        := '';
          frFactura.Variables['copyname1']        := 'ORIGINAL';
          frFactura.Variables['copyname2']        := 'DUPLICADO';
          frFactura.Variables['copyname2']        := 'TRIPLICADO';

          frFactura.Variables['AduanaOrigen']     := ''''+ dbcAduanaOrigen.text+'''';
          frFactura.Variables['AduanaDestino']    := ''''+ dbcAduanaDestino.text+'''';

          if ImprimirBorrador1.Checked then
            frFactura.Variables['Borrador']  := '''S'''
          else
            frFactura.Variables['Borrador']  := '''N''';


          DatosVentas.CDSVentaDet.DisableControls;
          DatosVentas.CDSVentaDet.First;

          frFactura.PrepareReport;
          frfactura.PrintOptions.ShowDialog       := MostrarDlg.Checked;
          if ImprimirBorrador1.Checked then
            frfactura.PrintOptions.Copies:=1;

         // if NOt(VirtualUI.Active) then
            begin
              if Preview='S' Then
                frFactura.ShowReport
              else
                begin
                  if TForm(Self.Owner).Name='FormControlCompNoImpresos' then
                    frfactura.PrintOptions.ShowDialog:=False;
                  if frFactura.Print Then
                    DMMain_FD.LogFileFD(1,2,'Impresion Fac.Venta: ('+DSBase.DataSet.FieldByName('ID_FC').AsString+') '+ DatosVentas.CDSVentaCabNROCPBTE.Value+' Cliente: '+
                                        DatosVentas.CDSVentaCabRAZONSOCIAL.Value+' Importe :'+FormatFloat('0.00',DatosVentas.CDSVentaCabTOTAL.AsFloat)+
                                       '','FACVTA');

                end;
              if DatosVentas.CDSVentaCabCON_GTIA_EXTENDIDA.AsString='S' then
                begin
                  DMBuscadores.QBuscaArticuloGtiaExt.Close;
                  DMBuscadores.QBuscaArticuloGtiaExt.ParamByName('codigo').AsString:= DatosVentas.ArticuloGtia;
                  DMBuscadores.QBuscaArticuloGtiaExt.Open;
                  frGtia.LoadFromFile(DMMain_FD.PathReportesCpbte+'\GarantiaExt.fr3');
                  frGtia.Variables['Vencimiento']    :=''''+DateToStr(IncMonth(DatosVentas.CDSVentaCabFECHAVTA.AsDateTime,DatosVentas.CDSVentaCabMESES_DE_GARANTIA.Value))+'''';
                  frGtia.Variables['Valor']          := DatosVentas.CDSVentaCabVALOR_ASEGURADO.AsFloat;
                  frGtia.Variables['Articulo']       := ''''+DatosVentas.ArticuloAsegurado+'''';

                  frGtia.ShowReport;
                  DMBuscadores.QBuscaArticuloGtiaExt.Close;
                end
            end ;
          DatosVentas.CDSVentaDet.First;
          DatosVentas.CDSVentaDet.EnableControls;

          if (Impresa) and (DatosVentas.CDSVentaCabIMPRESO.Value='N') then
            begin
              if ImprimirBorrador1.Checked=False then
                if Not(DMStoreProcedure.MarcarFcVtaImpresa(DatosVentas.CDSVentaCabID_FC.Value)) Then
                  ShowMessage('Comprobante no fue marcado como Impreso ....!')
              else
                Recuperar.Execute;
            end;
        end;
    end;
  if DatosVentas.CDSVentaCabCOT.AsString<>'' then
    begin
      if MessageDlg('Imprimir Cupon de COT...',mtconfirmation,mbYesNo,0,mbYes)=mrYes then
       begin
         frFactura.LoadFromFile(DMMain_FD.PathReportesCpbte+'\cot.fr3');
         frFactura.Variables['COT']     := ''''+DatosVentas.CDSVentaCabCOT.Value+'''';
         frFactura.Variables['FECHA']   := ''''+DateToStr(DatosVentas.CDSVentaCabFECHAVTA.AsDateTime)+'''';
         frFactura.Variables['DOMINIO'] := ''''+DatosVentas.CDSVentaCabMUESTRADOMINIOUNIDADTR.AsString+'''';

         frFactura.ShowReport();
       end;

    end;
  FormCpbte_2.DiscriminaIva := DiscrIva;
  DatosVentas.CDSVentaDet.Refresh;
 END;

procedure TFormCpbte_2.AnularExecute(Sender: TObject);
var cadena:TStringList;
begin
  inherited;
  if DatosVentas.CDSVentaCabANULADO.Value='S' Then
    raise Exception.Create('Ya fue anulado....');

  if DMMain_FD.HayAcopios(DatosVentas.CDSVentaCabID_FC.Value) Then
    raise Exception.Create('No se puede anular , Hay acopios con entregas Parciales...');

  if DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S' Then
    raise Exception.Create('Factura Electronica, no se puede anular, hacer Nota de Credito....');

  if (DMMain_FD.AnularFactura=True) Then
    begin
      IF NOT (DatosVentas.CDSVentaCab.IsEmpty)  THEN
        BEGIN
          IF MessageDlg('Ud. está por hacer una operación de' + #13 +
                        'anulación.....' + #13 +
                        'Está seguro de hacerlo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
            BEGIN
              DatoNew     :=IntToStr(DatosVentas.CDSVentaCabID_FC.Value);
              TipoCpbte   :=DatosVentas.CDSVentaCabTIPOCPBTE.Value;

//              CpbteNuevo:='N';
              if DMMain_FD.GetFcConAplicacion(DatosVentas.CDSVentaCabID_FC.Value,DatosVentas.CDSVentaCabTIPOCPBTE.Value) Then
                Raise Exception.Create (' Facturas con pagos asignados....');

              if DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC' Then
                begin
                  QAplicacionesNC.Close;
                  QAplicacionesNC.ParamByName('id').Value   :=DatosVentas.CDSVentaCabID_FC.Value;
                  QAplicacionesNC.ParamByName('tipo').Value :=DatosVentas.CDSVentaCabTIPOCPBTE.Value;
                  QAplicacionesNC.ParamByName('clase').Value:=DatosVentas.CDSVentaCabCLASECPBTE.Value;
                  QAplicacionesNC.Open;
                  if QAplicacionesNCID.AsString<>'' Then
                    Raise Exception.Create (' Nota de Credito aplicada en al cta cte. borre las aplicaciones y luego la anula.....');
                  QAplicacionesNC.Close;
                end;
              // **** Ingreso en el Log File  **************
              DMMain_FD.fdcGestion.StartTransaction;
              try
                DatosVentas.CDSVentaCab.Edit;
                DatosVentas.CDSVentaCabANULADO.Value := 'S';
                if DatosVentas.Renglones<DatosVentas.CDSVentaDet.RecordCount Then
                  DatosVentas.Renglones:=DatosVentas.CDSVentaDet.RecordCount;
                DatosVentas.CDSVentaCab.Post;
                DatosVentas.CDSVentaCab.ApplyUpdates(0);

                DatosVentas.QBuscaRtos.Close;
                DatosVentas.QBuscaRtos.ParamByName('id').Value:=DatosVentas.CDSVentaCabID_FC.Value;
                DatosVentas.QBuscaRtos.Open;
                if DatosVentas.QBuscaRtos.RecordCount>0 then
                  begin
                    if MessageDlg('Hay remitos, que afectan al Cpbte. Los recupera para usar nuevamente..???',mtConfirmation,mbYesNo,0)=mrYes Then
                      begin
                        if DMMain_FD.RecuperarLoteRtos(DSBase.DataSet.FieldByName('ID_FC').Value) then
                          begin
                            DatosVentas.QBuscaRtos.First;
                            Cadena:=TStringList.Create;
                            while not(datosVentas.QBuscaRtos.Eof) do
                              begin
                                Cadena.Add(DatosVentas.QBuscaRtosNROCPBTE.AsString);
                                datosVentas.QBuscaRtos.Next;
                              end;
                            DatosVentas.QBuscaRtos.Close;
                            ShowMessage('Remitos Recuperados:'+#13+Cadena.Text);
                            FreeAndNil(Cadena);
                          end;
                      end;
                  end;
                DatosVentas.QBuscaRtos.Close;
                DMMain_FD.LogFileFD(0,2,'Anulación Fac.Venta: '+DatosVentas.CDSVentaCabNROCPBTE.Value+' Cliente: '+DatosVentas.CDSVentaCabRAZONSOCIAL.Value+
                                   ' Importe: '+FormatFloat('0.00',DatosVentas.CDSVentaCabTOTAL.AsFloat),
                                   'FACVTA');
                // ******************************************
                spControlCpbteImp_vs_comp.Close;
                spControlCpbteImp_vs_comp.ExecProc;
                spControlCpbteImp_vs_comp.Close;
                DMMain_FD.fdcGestion.Commit;
              except
                DMMain_FD.fdcGestion.Rollback;
                ShowMessage('No se Pudo hacer la Operacion...!');
              end;

              Recuperar.Execute;
            END
        END
      ELSE
        ShowMessage('No hay regsitro Activo');
    end
  else
    ShowMessage('No posee permisos para esta operación');
end;

procedure TFormCpbte_2.AplicarLibroIVAExecute(Sender: TObject);
var Cadena:string;
begin
  inherited;
  if DMMain_FD.UsuarioActivo='master' then
    begin
      if DSBase.DataSet.FieldByName('INGRESA_LIBRO_IVA').Value='S' then
        Cadena :=' Actualmente En Libro de IVA..'
      else
        Cadena :=' Actualmente Fuera del Libro de IVA..';

      Cadena:=DSBase.DataSet.FieldByName('TipoCpbte').AsString+'-'+
              DSBase.DataSet.FieldByName('ClaseCpbte').AsString+'-'+
              DSBase.DataSet.FieldByName('NroCpbte').AsString+' ';

      if MessageDlg('Esta por cambiar el Estado de Factura de Libro Iva.. Seguro? '+
                     Cadena,mtConfirmation,mbYesNo,0,mbNo)=mrYes then
       begin
         DMMain_FD.fdcGestion.StartTransaction;
         try
           DMMain_FD.LogFileFD(0,2,'Cambia Estado Libro IVA.'+Cadena+
                                   ' Cliente: '+DSBase.DataSet.FieldByName('RAZONSOCIAL').AsString+
                                   ' Importe: '+FormatFloat('0.00',DSBase.DataSet.FieldByName('TOTAL').AsFloat),
                                   'FACVTA');

           DMMain_FD.SPAplicarLibroIva.Close;
           DMMain_FD.SPAplicarLibroIva.ParamByName('id').Value  := DSBase.DataSet.FieldByName('ID_FC').AsInteger;
           DMMain_FD.SPAplicarLibroIva.ParamByName('Tipo').Value:= 'V';
           DMMain_FD.SPAplicarLibroIva.ExecProc;
           DMMain_FD.fdcGestion.Commit;
           DMMain_FD.SPAplicarLibroIva.Close;
         except
           DMMain_FD.fdcGestion.Rollback;
         end;
         recuperar.Execute;
       end;
    end;
end;

procedure TFormCpbte_2.AsignarObraExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormAsignaObras)) then
    FormAsignaObras := TFormAsignaObras.Create(self);
  FormAsignaObras.Tipo      := DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
  FormAsignaObras.id_origen := DSBase.DataSet.FieldByName('ID_FC').Value;
  FormAsignaObras.Id_Obra   := DSBase.DataSet.FieldByName('ID_OBRA').Value;
  FormAsignaObras.ShowModal;
  DatoNew:=DSBase.DataSet.FieldByName('ID_FC').AsString;
  Recuperar.Execute;
  if (Assigned(FormAsignaObras)) then
    FreeAndNil(FormAsignaObras);
end;

procedure TFormCpbte_2.dbgConsignacionesColEnter(Sender: TObject);
begin
  inherited;
  if dbgConsignaciones.SelectedIndex>3 Then
    dbgConsignaciones.SelectedIndex:=3
  else
    if dbgConsignaciones.SelectedIndex<3 Then
      dbgConsignaciones.SelectedIndex:=3;

end;

procedure TFormCpbte_2.dbgConsignacionesEnter(Sender: TObject);
begin
  inherited;
  dbgConsignaciones.SelectedIndex:=3;
end;

procedure TFormCpbte_2.dbgDetalleLotesDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if dbgDetalleLotes.DataSource.DataSet.FieldByName('CONTROL_TRAZABILIDAD').Value='S' Then
    dbgDetalleLotes.Canvas.Font.Style:=[fsBold]
  else
    dbgDetalleLotes.Canvas.Font.Style:=[];

  if (gdFocused in State) then
    begin
      dbgDetalleLotes.canvas.brush.color := ClBlack;
      dbgDetalleLotes.canvas.Font.color  := clWhite;
    end;

  dbgDetalleLotes.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormCpbte_2.dbgAsociadosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
     if (dbgAsociados.SelectedIndex < 3) THEN
        dbgAsociados.SelectedIndex := dbgAsociados.SelectedIndex + 1
      ELSE
        BEGIN
          IF (dbgAsociados.DataSource.DataSet.Eof) and (Not(DSBase.State in [dsBrowse])) THEN
            begin
              dbgAsociados.DataSource.DataSet.Append;
              dbgAsociados.SelectedIndex := 0;
            end
          else
            IF (not(dbgAsociados.DataSource.DataSet.Eof)) and (Not(DSBase.State in [dsBrowse])) and
              (dbgAsociados.DataSource.DataSet.RecordCount>0) THEN
              begin
                dbgAsociados.DataSource.DataSet.Append;
                dbgAsociados.SelectedIndex := 0;
              end;

        END;
    END;
end;

procedure TFormCpbte_2.DBGrillaDetalleColEnter(Sender: TObject);
begin
  inherited;
  dbgPrecios.Columns[1].Visible := DatosVentas.CDSVentaCabDESGLOZAIVA.Value='N';
  dbgPrecios.Columns[2].Visible := DatosVentas.CDSVentaCabDESGLOZAIVA.Value='S';

  pnAvisoFUAP.Visible:=False;
  pnPrecios.Visible  :=False;
  //******************************************************************************
  // permito o no la modificacion del precio controlando si es editable el precio
  //******************************************************************************
  if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'UNITARIO_TOTAL' then
    begin
      DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly:=False;
      if (DBGrillaDetalle.DataSource.DataSet.FieldByName('PRECIO_EDITABLE').Value='N') then
        DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly:=True
      else
        begin
          if (DMMain_FD.ModificaPrecioVta) Then
            DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly  := False
          else
             DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly := True;
        end;
      if DMMain_FD.UsuarioActivo='master' then DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly:=False;
      if DBGrillaDetalle.DataSource.DataSet.FieldByName('UNITARIO_TOTAL').AsFloat<=0 THEN
        DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly  := False
    end;
  //******************************************************************************
  // permito o no la modificacion del Detalle de Factura
  //******************************************************************************
  if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'DETALLE' then
    DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly :=  not((DMMain_FD.UsuarioActivo='master')  or
                                                                        ((DMMain_FD.ModificaDetalleArticulo) and
                                                                        (DMMain_FD.StockEditDetalle( DatosVentas.CDSVentaDetCodigoArticulo.AsString ))));
  if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'CANTIDAD' then
    begin
      if (DMMain_FD.VerStock) and (DatosVentas.CDSVentaDetAfecta_Stock.Value='S') and (Not(DSBase.State in [dsBrowse])) Then
        begin
          DatosVentas.CDSExistencia.Close;
          DatosVentas.CDSExistencia.Params.ParamByName('Unidad').Value   := 'V';
          DatosVentas.CDSExistencia.Params.ParamByName('Codigo').Value   := DatosVentas.CDSVentaDetCodigoArticulo.Value;
          DatosVentas.CDSExistencia.Params.ParamByName('fisico').Value   := 1;
          DatosVentas.CDSExistencia.Params.ParamByName('usuario').AsFloat:= DMMain_FD.UsuarioActivoId;
          DatosVentas.CDSExistencia.Open;
          dbgExitencias.Visible := True;
        end;
      pnPrecios.Visible:=False;
      if NOt(DMMain_FD.GetClienteConPrecio(DatosVentas.CDSVentaCabCODIGO.AsString, DatosVentas.CDSVentaDetCODIGOARTICULO.AsString)) then
        begin
          DMMain_FD.CDSPrecioXCant.Close;
          DMMain_FD.CDSPrecioXCant.Params.ParamByName('codigo').Value  :=DatosVentas.CDSVentaDetCODIGOARTICULO.AsString;
          DMMain_FD.CDSPrecioXCant.Params.ParamByName('id_lista').Value:=DatosVentas.CDSVentaCabLISTAPRECIO.AsInteger;
          DMMain_FD.CDSPrecioXCant.Open;
          if Not(DMMain_FD.CDSPrecioXCant.IsEmpty) then
            pnPrecios.Visible:=True
          else
            pnPrecios.Visible:=False;
        end;
      // Para Articulos de Produccion..... Si esta en modo Insercion
      if (DatosVentas.CDSVentaDetDE_PRODUCCION.Value='S') and (DSBase.DataSet.State in [dsInsert,dsEdit]) then
        EditarProduccion.Execute;
    end
  else
    dbgExitencias.Visible:=False;

  IF DBGrillaDetalle.SelectedIndex = 0 THEN
    DBGrillaDetalle.SelectedIndex := 1;

  IF DBGrillaDetalle.SelectedIndex = 3 THEN
    DBGrillaDetalle.SelectedIndex := 5;
  IF DBGrillaDetalle.SelectedIndex = 4 THEN
    DBGrillaDetalle.SelectedIndex := 5;
  IF (DBGrillaDetalle.SelectedIndex = 8) and (Not(ModificarTotal.Checked)) THEN
    DBGrillaDetalle.SelectedIndex := 7;
  IF (DBGrillaDetalle.SelectedIndex = 6) and (DBGrillaDetalle.Fields[0].AsString<>'') THEN
    BEGIN
     if ((DatosVentas.CDSVentaCabFECHAVTA.AsDateTime-DMMain_FD.FechaUltimaActulizacionPrecio)>
         (DMMain_FD.IntervMaxDesdeULtActuPrecio)) and (DMMain_FD.IntervMaxDesdeULtActuPrecio<>0) and
         (DSBase.State=dsInsert) Then
         begin
            pnAvisoFUAP.Caption:='Ult.Act. de Precio >> '+DateToStr(DMMain_FD.FechaUltimaActulizacionPrecio);
            pnAvisoFUAP.Visible:=True;
         end
      else
        pnAvisoFUAP.Visible:=False;
    END;
  if (DatosVentas.CDSVentaDetUNIDAD.Value='KGR') or (DatosVentas.CDSVentaDetUNIDAD.Value='KGS') then
    IF (DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'CANTIDAD') and (Balanza<>nil) THEN
      LeerPeso.Execute;

  if (DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName='TOTAL') AND (ModificarTotal.Checked) Then
   // DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex-1;
    DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly:=False;

//  if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'DETALLE' then
//    DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex+1;

//  if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'IVA_TASA' then
//    DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex+1;
end;

procedure TFormCpbte_2.DBGrillaDetalleColExit(Sender: TObject);
begin
  inherited;
  pnDetalleAdicional.Visible:=False;
end;

procedure TFormCpbte_2.DBGrillaDetalleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_LEFT) and (Shift =[ssCtrl]) then
    BEGIN
      if (DBGrillaDetalle.SelectedIndex = 2) THEN
        DBGrillaDetalle.SelectedIndex := 1
      else
        if (DBGrillaDetalle.SelectedIndex = 5) THEN
          DBGrillaDetalle.SelectedIndex := 2
        else
          if (DBGrillaDetalle.SelectedIndex = 6) THEN
            DBGrillaDetalle.SelectedIndex := 5
          else
            if (DBGrillaDetalle.SelectedIndex = 7) THEN
              DBGrillaDetalle.SelectedIndex := 6;
      key := 0;                                                    
    END;
  //art.vendidos
  IF (Key = VK_F11) and (Shift =[]) and (DatosVentas.CDSVentaDetCodigoArticulo.AsString<>'')  THEN
    BEGIN
      IF NOT (Assigned(FormArticulosVendidos)) THEN
        BEGIN
          FormArticulosVendidos                := TFormArticulosVendidos.Create(Self);
          FormArticulosVendidos.CodigoCliente  := DatosVentas.CDSVentaCabCodigo.Value;
          FormArticulosVendidos.CodigoArticulo := DatosVentas.CDSVentaDetCodigoArticulo.Value;
          FormArticulosVendidos.ShowModal;
        END;
    END;
 //Agr.Pedido
  IF  (Shift =[ssCtrl]) and (Key = VK_F10) and (DatosVentas.CDSVentaDetCodigoArticulo.AsString<>'')  THEN
    BEGIN
      if Not(Assigned(FormCantidadPedir)) then
        FormCantidadPedir := TFormCantidadPedir.Create(Self);
      FormCantidadPedir.ShowModal;

      if FormCantidadPedir.Cantidad>0 then
        DMMain_FD.Agregar_Pedido_Borrador(DatosVentas.CDSVentaDetCodigoArticulo.Value,DatosVentas.CDSVentaDetDETALLE.Value,FormCantidadPedir.Cantidad);
    END;
  // Autoriza Modificar Precio Descuento Detalle
  if (Shift =[ssAlt]) and (Key = VK_F3) and ((DMMain_FD.ModificaPrecioVta=False) or (DMMain_FD.AplicaDescuento=False)) and (DBGrillaDetalle.SelectedIndex in [2,6,7]) Then
    begin
      if not (Assigned(FormLogin)) then
        FormLogin := TFormLogin.Create(FormCpbte_2);
      FormLogin.ShowModal;
      DBGrillaDetalle.Columns[2].ReadOnly:=Not(FormLogin.Tag=1);
      DBGrillaDetalle.Columns[6].ReadOnly:=Not(FormLogin.Tag=1);
      DBGrillaDetalle.Columns[7].ReadOnly:=Not(FormLogin.Tag=1);
      Key:=0;
    end;
  // Ingreso pedido Carnes..
  IF (Key = VK_F8) and (DatosVentas.CDSVentaDetCodigoArticulo.AsString<>'')  THEN
    BEGIN
      if ((DBGrillaDetalle.SelectedIndex > 0) and (DBGrillaDetalle.SelectedIndex < 3)) THEN
        begin
          IF (FormMovimientosCarnes.Visible=False) THEN
            FormMovimientosCarnes.Visible:=True;
        end;
    END;
  // detalle Adicional..
  IF (Key = VK_ADD) and (Shift =[ssCtrl]) and (DatosVentas.CDSVentaDetCodigoArticulo.AsString<>'')  THEN
    BEGIN
      if (DBGrillaDetalle.SelectedIndex =2 ) THEN
        begin
          if DBGrillaDetalle.DataSource.DataSet.RecNo>0 then
            pnDetalleAdicional.Top:= 35 + ((DBGrillaDetalle.DataSource.DataSet.RecNo-1) * 22 )
          else
            pnDetalleAdicional.Top:= 35;
          pnDetalleAdicional.Visible:= Not(pnDetalleAdicional.Visible);
          dbeDetAdicional.SetFocus;
          dbeDetAdicional.SelStart:=Length(dbeDetAdicional.Text)+1;
        end;
    END;
  // Numero detalle ..
  IF (Key = VK_SPACE) and (Shift =[ssCtrl]) and (DBGrillaDetalle.DataSource.DataSet.State=dsBrowse) THEN
    BEGIN
      FormControlDetalle.Visible:=True;
    END;

  IF (Key = VK_SUBTRACT) and (Shift =[ssCtrl]) and (DatosVentas.CDSVentaDetCodigoArticulo.AsString<>'')  THEN
    BEGIN
      pnDetalleAdicional.Visible:=False;
    END;

  // Produccion.
  IF ((Shift =[ssAlt]) and (Key = VK_F12)) and (DatosVentas.CDSVentaDetCodigoArticulo.AsString<>'') and
     (DatosVentas.CDSVentaDetDE_PRODUCCION.AsString<>'') and
     (DatosVentas.CDSVentaDetDE_PRODUCCION.AsString='S') and
     (DatosVentas.CDSFc_Prod_DetID.AsString<>'')  THEN
    BEGIN
      EditarProduccion.Execute;
    END;
end;

procedure TFormCpbte_2.DBGrillaDetalleKeyPress(Sender: TObject;
  var Key: Char);
Var Top:Integer;
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      Top := 6;
      if Not(SaltearColumnadesctoenDetalle1.Checked) Then Top:=Top+1;
      IF (DBGrillaDetalle.SelectedIndex < Top) THEN
        DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF (DBGrillaDetalle.DataSource.DataSet.Eof) and (Not(DSBase.State in [dsBrowse])) THEN
            begin
              DBGrillaDetalle.DataSource.DataSet.Append;
              DBGrillaDetalle.SelectedIndex := 1;
            end
          else
            IF (not(DBGrillaDetalle.DataSource.DataSet.Eof)) and (Not(DSBase.State in [dsBrowse])) and
              (DBGrillaDetalle.DataSource.DataSet.RecordCount>0) THEN
              begin
                DBGrillaDetalle.DataSource.DataSet.Append;
                DBGrillaDetalle.SelectedIndex := 1;
              end;

        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        if Not(Assigned(FormBuscadorArticulos)) then
          begin
            IF DBGrillaDetalle.SelectedField = DatosVentas.CDSVentaDetCodigoArticulo THEN
              BuscarArticulo.Execute;
          end;
      END
    else
      if (key = #27) then
        DBGrillaDetalle.DataSource.DataSet.Cancel;
end;



procedure TFormCpbte_2.DatosAdicionales1Click(Sender: TObject);
begin
  inherited;
  DatosAdicionales1.Checked:=not(DatosAdicionales1.Checked);
  if DatosAdicionales1.Checked then
    begin
      pcModoFactura.ActivePageIndex:=1;
    end;
end;

procedure TFormCpbte_2.DatosAdicionales1Clickd(Sender: TObject);
begin
  inherited;
  if  (DBCheckManual.Checked ) and (DSBase.DataSet.FieldByName('FACTURA_ELECTRONICA').Value='S')
       and (DatosVentas.CDSVentaCab.State IN [dsEdit, dsInsert])then
    if MessageDlg('Es una factura Electronica no deberia pasa como manual... continua???',mtConfirmation,mbYesNo,0,mbYes )=mrNo then
      begin
        DBCheckManual.Checked:=False;
        Exit;
      end;
  dbeSuc.Enabled    := DBCheckManual.Checked;
  dbeNumero.Enabled := DBCheckManual.Checked;
  IF (DBCheckManual.Checked ) and (DatosVentas.CDSVentaCab.State IN [dsEdit, dsInsert]) THEN
    BEGIN
      if editarNro='N' then
        begin
          DatosVentas.CDSVentaCabSUCFAC.Value    := '0000';
          DatosVentas.CDSVentaCabNUMEROFAC.Value := '00000000';
        end;
    END;
end;

procedure TFormCpbte_2.DSBaseDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  grAplicaNC.Enabled              :=  (DSBase.DataSet.Fields.FieldByName('TIPOCPBTE').Value = 'NC') or
                                      (DSBase.DataSet.Fields.FieldByName('TIPOCPBTE').Value = 'ND');
  BuscaNCAplicaAFactura.Enabled   :=  (DSBase.DataSet.State<>dsBrowse) and
                                      ((DSBase.DataSet.FieldByName('TIPOCPBTE').Value='NC') or
                                      (DSBase.DataSet.FieldByName('TIPOCPBTE').Value='ND'));

end;

procedure TFormCpbte_2.DSBaseStateChange(Sender: TObject);
var y,m,d:word;
sDirectorio:string;
begin
  inherited;
  // pnPrincipal.Enabled:=True;
  sDirectorio      := DMMain_FD.MainPath+'Papelera_FC';

  if IsDirEmpty(sDirectorio) then
    Papelera.ImageIndex:=11
  else
    Papelera.ImageIndex:=10;

  if DirectoryExists(sDirectorio) then
    Papelera.ImageIndex:=11;

  Anular.Enabled            := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  Imprimir.Enabled          := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  btImprimirRtos.Enabled    := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  PedidoCOT.Enabled         := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  VerEntregas.Enabled       := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  GenerarTx.Enabled         := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));

  Buscar.Enabled            := DSBase.DataSet.State IN [dsBrowse];
  BuscarPresupuesto.Enabled := DSBase.DataSet.State IN [dsInsert];
  pnCabecera.Enabled        := DSBase.DataSet.State IN [dsInsert];
  dbeObservaciones1.Enabled := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeObservaciones2.Enabled := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeDscto.Enabled          := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeDscto.Enabled          := DMMain_FD.AplicaDescuento;
  DBGrillaDetalle.ReadOnly  := DSBase.DataSet.State IN [dsBrowse];
  dbgSeries.ReadOnly        := DSBase.DataSet.State IN [dsBrowse];

  dbcLista.Enabled          := DSBase.DataSet.State IN [dsInsert, dsEdit];

  dbtJuridicion.Visible     := (dbcJuri.Visible=True);
  dbtLocalidadJuri.Visible  := (dbcJuri.Visible=True);

  dbcJuri.Enabled           := DSBase.DataSet.State IN [dsInsert, dsEdit];

  if (DSBase.DataSet.State IN [dsBrowse]) and (dbgExitencias.Visible=True) Then
    dbgExitencias.Visible := False;
  rxcVendedor.Enabled       := DMMain_FD.ModificaVendedor;
  RxCSucursal.Enabled       := DMMain_FD.ModificaSucursal;
  DBGrillaDetalle.ReadOnly  := DSBase.DataSet.State IN [dsBrowse];
  EnviarCorreo.Enabled      := Imprimir.Enabled;
  GenerarRto.Enabled        := Imprimir.Enabled;
  if (DSBase.State in [dsBrowse]) and (Not(DSbase.DataSet.IsEmpty)) Then
    begin
      DecodeDate(DatosVentas.CDSVentaCabFECHAVTA.AsDateTime,y,m,d);

      DMStoreProcedure.QVerificaPeriodoFiscal.Close;
      DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:= 'V';
      DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value       := DatosVentas.CDSVentaCabFECHA_FISCAL.AsDateTime;
      DMStoreProcedure.QVerificaPeriodoFiscal.Open;

      Anular.Enabled   := Not(DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].AsString = 'C');
      Borrar.Enabled   := Not(DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].AsString = 'C');
      Modificar.Enabled:= Not(DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].AsString = 'C');
      DMStoreProcedure.QVerificaPeriodoFiscal.Close;
    end;

  spMenu.Enabled                := (DMMain_FD.UsuarioAdministrador) and (Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);
  spMenu_2.Enabled              := (DMMain_FD.UsuarioAdministrador) and (Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);

  RxCDeposito.Enabled           := DMMain_FD.ModificaDeposito;

  Acopiar.Enabled               := (Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);
  HacerNotaCredito.Enabled      := (Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);

  Fiscalizar.Enabled            := (DSBase.DataSet.State IN [dsBrowse]) and
                                   (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and
                                   (Trunc(DatosVentas.CDSVentaCabCAE.AsFloat)<=0);
  BorrarCAE.Enabled             := (DSBase.DataSet.State IN [dsBrowse]) and
                                   (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and
                                   (Trunc(DatosVentas.CDSVentaCabCAE.AsFloat)>0);
  BusquedaPorReferencia.Enabled := DSBase.DataSet.State=dsBrowse;
  BuscarPorObs.Enabled          := DSBase.DataSet.State=dsBrowse;

//  tbMenu.Enabled                := (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
  Papelera.Enabled              := (DMMain_FD.UsuarioActivo='master') and (DSBase.State=dsBrowse);
  edHonorarios.Enabled          := DSBase.State<>dsBrowse;
  edHonorariosPorc.Enabled      := DSBase.State<>dsBrowse;
  edNotas.Enabled               := DSBase.State<>dsBrowse;
  Pasar_A_Papelera.Enabled      := (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) and DMMain_FD.UsuarioAdministrador;

  dbcAduanaOrigen.Enabled       := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcAduanaDestino.Enabled      := DSBase.DataSet.State IN [dsInsert, dsEdit];
  ceNotas.Enabled               := DSBase.DataSet.State IN [dsInsert, dsEdit];
  VerNovedadesDet.Enabled       := (Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);

  CambiarClase.Enabled          := (DSBase.DataSet.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty));
  if ModoDespachante1.Checked then
    if DSBase.DataSet.State IN [dsInsert, dsEdit] then
      pnCabecera.Enabled:=True;

  if DSBase.DataSet.State=dsBrowse then
     pnCabecera.Enabled:=False;

  BuscaNCAplicaAFactura.Enabled:= (DSBase.DataSet.State<>dsBrowse) and ((DSBase.DataSet.FieldByName('TIPOCPBTE').Value='NC') or (DSBase.DataSet.FieldByName('TIPOCPBTE').Value='ND'));

  GenerarNotaPedido.Enabled   := (Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);
  if Not(VarIsNull(DSBase.DataSet.FieldByName('ID_FC').Value)) and  (Trim(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString)<>'') then
    GenerarNotaPedido.Enabled   := DMMain_FD.HayNotaPedido(DSBase.DataSet.FieldByName('ID_FC').Value, DSBase.DataSet.FieldByName('TIPOCPBTE').AsString);


     //  pag1.Enabled := DSBase.DataSet.State<>dsBrowse;
//  pag2.Enabled := DSBase.DataSet.State<>dsBrowse;
end;

procedure TFormCpbte_2.DuplicarComprobanteExecute(Sender: TObject);
var i:byte;
Nombre:String;
P_Gravado,P_Exento,P_ConIVA,Importe_Iva,P_Total:Extended;
begin
  inherited;
  if DMMain_FD.BuscaOP_PorFc(DatosVentas.CDSVentaCabID_FC.AsInteger) then
    Raise Exception.Create('Hay una orden de Produccion asociada-...');

  if (DSBase.DataSet.State = dsBrowse) and (not(DSBase.DataSet.IsEmpty)) then
    begin
      DatosVentas.CDSVentaCab.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaCab.XML');
      DatosVentas.CDSVentaDet.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaDet.XML');

      DatosVentas.CDSCabeceraXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\fcvtacab.xml');
      DatosVentas.CDSDetalleXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\fcvtadet.xml');
      Agregar.Execute;
      CpbteNuevo:='N';
      Duplicado :=True;
      //DuplicarFc:=True;
      For i:=0 to DatosVentas.CDSCabeceraXML.FieldCount-1 do
        begin
          if DatosVentas.CDSVentaCab.FindField(DatosVentas.CDSCabeceraXML.Fields[i].FieldName)<>nil Then
            begin
              Nombre:=DatosVentas.CDSCabeceraXML.Fields[i].FieldName;
              if (Nombre<>'ID_FC') Then
                DatosVentas.CDSVentaCab.FieldByName(Nombre).Value:=DatosVentas.CDSCabeceraXML.FieldByName(Nombre).Value;
            end;
        end;
      DatosVentas.CDSVentaCabIMPRESO.Value          :='N';
      DatosVentas.CDSVentaCabCAE.Value              :='0';
      DatosVentas.CDSVentaCabENVIAR_CPTE_MAIL.Value :='N';

      DatosVentas.CDSVentaCabCAE_VENCIMIENTO.Clear;

      if Not(Assigned(FormControlNroRto)) then
        FormControlNroRto:=TFormControlNroRto.Create(Application);
      FormControlNroRto.Let:= DatosVentas.CDSVentaCabLETRAFAC.Value;
      FormControlNroRto.Suc:= DatosVentas.CDSVentaCabSUCFAC.Value;
      FormControlNroRto.Num:= DatosVentas.CDSVentaCabNUMEROFAC.Value;
      FormControlNroRto.ShowMOdal;
      if (FormControlNroRto.ModalResult=mrOk) then
        begin
          if (FormControlNroRto.Let<> DatosVentas.CDSVentaCabLETRAFAC.Value) or
             (FormControlNroRto.Suc<> DatosVentas.CDSVentaCabSUCFAC.Value) or
             (FormControlNroRto.Num<> DatosVentas.CDSVentaCabNUMEROFAC.Value) Then
          DatosVentas.CDSVentaCabLETRAFAC.Value:=FormControlNroRto.Let;
          DatosVentas.CDSVentaCabSUCFAC.Value  :=FormControlNroRto.Suc;
          DatosVentas.CDSVentaCabNUMEROFACSetText(DatosVentas.CDSVentaCabNUMEROFAC,FormControlNroRto.Num);
          PrefijoDup := DatosVentas.CDSVentaCabSUCFAC.Value;
          NumeroDup  := DatosVentas.CDSVentaCabNUMEROFAC.Value;
        end
      else
        if (FormControlNroRto.ModalResult=mrCancel) then
          Cancelar.Execute;
      while not(DatosVentas.CDSDetalleXML.Eof) do
        begin
          DatosVentas.CDSVentaDet.Append;
          For i:=0 to DatosVentas.CDSDetalleXML.FieldCount-1 do
            begin
              if DatosVentas.CDSVentaDet.FindField(DatosVentas.CDSDetalleXML.Fields[i].FieldName)<>nil Then
                begin
                  Nombre:=DatosVentas.CDSDetalleXML.Fields[i].FieldName;
                  if Nombre<>'ID' Then
                    DatosVentas.CDSVentaDet.FieldByName(Nombre).Value:=DatosVentas.CDSDetalleXML.FieldByName(Nombre).Value;
                end;
            end;

          if Trunc(DatosVentas.CDSVentaDetIVA_UNITARIO.AsFloat*100)=0 then
            begin
              P_Gravado   := DatosVentas.CDSVentaDetUNITARIO_GRAVADO.AsFloat ;
              P_Exento    := DatosVentas.CDSVentaDetUNITARIO_EXENTO.AsFloat ;
              Importe_Iva := RoundTo(P_Gravado * DatosVentas.CDSVentaDetIVA_TASA.AsFloat * 0.01,DMMain_FD.DecRedondeo);
              P_Total     := P_Gravado + P_Exento;
              P_ConIVA    := P_Total + Importe_Iva;
            end
          else
            begin
              P_Gravado   := DatosVentas.CDSVentaDetUNITARIO_GRAVADO.AsFloat ;
              P_Exento    := DatosVentas.CDSVentaDetUNITARIO_EXENTO.AsFloat ;
              Importe_Iva := DatosVentas.CDSVentaDetIVA_UNITARIO.AsFloat ;
              P_Total     := P_Gravado + P_Exento;
              P_ConIVA    := P_Total + Importe_Iva;
            end;

          if (DatosVentas.CDSVentaCabDESGLOZAIVA.Value='S') and (FormCpbte_2.DiscriminaIva='S')  then
            DatosVentas.CDSVentaDetUNITARIO_TOTAL.Text      :=  FloatToStr(P_Total)
          else
            DatosVentas.CDSVentaDetUNITARIO_TOTAL.Text      :=  FloatToStr(P_ConIVA);

          DatosVentas.CDSVentaDetId_CabFac.Value:=DatosVentas.CDSVentaCabID_FC.Value;
          DatosVentas.CDSVentaDet.Post;
          DatosVentas.CDSDetalleXML.Next;
        end;
   end;
 Confirma.Execute;

end;


procedure TFormCpbte_2.edHonorariosEnter(Sender: TObject);
begin
  inherited;
  edHonorarios.SelectAll;
end;

procedure TFormCpbte_2.edHonorariosPorcEnter(Sender: TObject);
begin
  inherited;
  edHonorariosPorc.SelectAll;
end;

procedure TFormCpbte_2.EditarProduccionExecute(Sender: TObject);
begin
  inherited;
  if (DatosVentas.CDSVentaDetDE_PRODUCCION.AsString='S') then
    begin
      FormCpbte_Produccion.Codigo                := DatosVentas.CDSVentaDetCodigoArticulo.AsString;
      FormCpbte_Produccion.dbgDetalle.DataSource := DatosVentas.DSFc_Prod_Mov;
      FormCpbte_Produccion.edCodigo.DataSource   := DatosVentas.DSFc_Prod_Det;
      FormCpbte_Produccion.edDetalle.DataSource  := DatosVentas.DSFc_Prod_Det;
      FormCpbte_Produccion.edCantidad.DataSource := DatosVentas.DSFc_Prod_Det;

      if (DSBase.DataSet.State = dsInsert)  Then       { and (DatosVentas.CDSVentaDet.RecordCount>0)}
        DatosVentas.CDSFc_Prod_DetCANTIDAD.Text :=  FormatFloat('0.00',DatosVentas.CDSVentaDetCANTIDAD.AsFloat);

      FormCpbte_Produccion.ShowModal;

      FormCpbte_2.DBGrillaDetalle.SelectedIndex :=  FormCpbte_2.DBGrillaDetalle.SelectedIndex+1;
    end;
end;

procedure TFormCpbte_2.edNroInternoEnter(Sender: TObject);
begin
  inherited;
  edNroInterno.AutoSelect:=True;
  edNroInterno.SelStart:=Length(edNroInterno.Text);
end;

procedure TFormCpbte_2.edNumeroOPClick(Sender: TObject);
begin
  inherited;
  if DatosVentas.CDSVentaCabNUMERO_OPERACION.AsString<>'' then
    begin
      if not(Assigned(FormListaPorOperaciones)) then
        FormListaPorOperaciones:=TFormListaPorOperaciones.Create(Self);
      FormListaPorOperaciones.Nro_op:=DatosVentas.CDSVentaCabNUMERO_OPERACION.AsString;
      FormListaPorOperaciones.Show;
    end;
end;

procedure TFormCpbte_2.FormCreate(Sender: TObject);
var I:Integer;
begin
  inherited;
  SinBDE:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  Calcula_iva_articulo             := True;
  sbEstado.Panels[0].Text          := '';
  sbEstado.Panels[1].Text          := '';
  pcDetalleFactura.ActivePageIndex := 0;

  IF NOT (Assigned(DatosVentas)) THEN
    DatosVentas := TDatosVentas.Create(Self);
  DSBase.DataSet:=DatosVentas.CDSVentaCab;

  IF NOT (Assigned(FormMovimientosCarnes)) THEN
    FormMovimientosCarnes := TFormMovimientosCarnes.Create(Self);
  FormMovimientosCarnes.DSMov.DataSet:=DatosVentas.CDSMov_Carnes;

  IF NOT (Assigned(FormControlDetalle)) THEN
    FormControlDetalle := TFormControlDetalle.Create(Self);
  FormControlDetalle.DBGrillaDetalle_2.DataSource:=DatosVentas.DSVentaDet;

  IF NOT (Assigned(FormCpbte_Produccion)) THEN
    FormCpbte_Produccion := TFormCpbte_Produccion.Create(Self);

  IF NOT (Assigned(FormAnexosRtoTransporte)) THEN
    FormAnexosRtoTransporte := TFormAnexosRtoTransporte.Create(Self);


  WITH DatosVentas DO
    BEGIN
      AddClientDataset(CDSVentaCab, DSPVentaCab);
      AddClientDataset(CDSVentaDet, DSPVentaDet);
      AddClientDataset(CDSImpuestos,DSPImpuestos);
      AddClientDataSet(CDSPercepcionIVA,DSPPercepcionIVA);
      AddClientDataSet(CDSVtaSubDetalle,DSPVtaSubDet);
      AddClientDataSet(CDSVtaDetNovedades,DSPVtaDetNovedades);

      AddClientDataSet(CDSVtaDetConsig,DSPVtaDetConsig);
      AddClientDataSet(CDSMov_Carnes,DSPMov_Carnes);
      AddClientDataSet(CDSFc_Prod_Det,DSPFc_Prod_Det);
      AddClientDataSet(CDSFc_Prod_Mov,DSPFc_Prod_Mov);
      AddClientdataSet(CDSRegFacturas,DSPRegFacturas);
      AddClientdataSet(CDSVentaLote,DSPVentaLote);
      AddClientDataSet(CDSAsociados,DSPAsociados);

      DatosVentas.CDSVentaCab.close;
      DatosVentas.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
      DatosVentas.CDSVentaCab.Params.ParamByName('id').Clear;
      DatosVentas.CDSVentaCab.Open;

      DatosVentas.CDSVentaDet.Close;
      DatosVentas.CDSVentaDet.Params.ParamByName('id').Clear;
      DatosVentas.CDSVentaDet.Open;

      DatosVentas.CDSVtaDetNovedades.Close;
      DatosVentas.CDSVtaDetNovedades.Params.ParamByName('id').Clear;
      DatosVentas.CDSVtaDetNovedades.Open;

      DatosVentas.CDSImpuestos.Close;
      DatosVentas.CDSImpuestos.Params.ParamByName('id').Clear;
      DatosVentas.CDSImpuestos.Open;

      DatosVentas.CDSPercepcionIVA.Close;
      DatosVentas.CDSPercepcionIVA.Params.ParamByName('id').Clear;
      DatosVentas.CDSPercepcionIVA.Open;

      DatosVentas.CDSVtaSubDetalle.Close;
      DatosVentas.CDSVtaSubDetalle.Params.ParamByName('id').Clear;
      DatosVentas.CDSVtaSubDetalle.Open;

      DatosVentas.CDSVtaDetConsig.Close;
      DatosVentas.CDSVtaDetConsig.Params.ParamByName('id').Clear;
      DatosVentas.CDSVtaDetConsig.Open;

      DatosVentas.CDSMov_Carnes.Close;
      DatosVentas.CDSMov_Carnes.Params.ParamByName('id').Clear;
      DatosVentas.CDSMov_Carnes.Open;

      DatosVentas.CDSVentaLote.MasterSource := nil;
      DatosVentas.CDSVentaLote.MasterFields := '';

      DatosVentas.CDSVentaLote.Close;
      DatosVentas.CDSVentaLote.Params.ParamByName('id').Clear;//Value     := StrToInt(DatoNew);//DatosVentas.CDSVentaDetID.AsInteger;//
      DatosVentas.CDSVentaLote.Open;

      DatosVentas.CDSVentaLote.MasterSource := DatosVentas.DSVentaDet;
      DatosVentas.CDSVentaLote.MasterFields := 'ID';

      DatosVentas.CDSCompAFIP.Close;
      DatosVentas.CDSCompAFIP.Open;

      DatosVentas.CDSAsociados.Close;
      DatosVentas.CDSAsociados.Params.ParamByName('id').Clear;
      DatosVentas.CDSAsociados.Open;

      DatosVentas.CDSEmpresa.Close;
      DatosVentas.CDSEmpresa.Open;

      DatosVentas.CDSFc_Prod_Det.Close;
      DatosVentas.CDSFc_Prod_Det.Params[0].Clear;
      DatosVentas.CDSFc_Prod_Det.Open;

      DatosVentas.CDSFc_Prod_Mov.Close;
      DatosVentas.CDSFc_Prod_Mov.Params[0].Clear;
      DatosVentas.CDSFc_Prod_Mov.Open;

      DatosVentas.CDSRegFacturas.Close;
      DatosVentas.CDSRegFacturas.Open;

      DatosVentas.CDSAduanaOrig.Close;
      DatosVentas.CDSAduanaOrig.Open;

      DatosVentas.CDSPaises.Close;
      DatosVentas.CDSPaises.Open;

      DatosVentas.CDSTransporte.Close;
      DatosVentas.CDSTransporte.Open;


      AplicarMascarasNumericas;

    END;

   DatosVentas.QLstMonedas.Open;
   //***************************************************************
   // Si no puede modificar precio el usuario pongo la
   // columna en la grilla como solo lectura y no puede cambiar de lista
   //Precio Unitario
   DBGrillaDetalle.Columns[6].ReadOnly:=NOt(DMMain_FD.ModificaPrecioVta);
   // Descuentos
   DBGrillaDetalle.Columns[7].ReadOnly:=not(DMMain_FD.AplicaDescuento);
   // perimito o no modificar detalle de la factura
   DBGrillaDetalle.Columns[2].ReadOnly:=Not(DMMain_FD.ModificaDetalleArticulo);

   dbeDscto.Enabled                   :=(DMMain_FD.AplicaDescuento);
   dbeDscto_1.Enabled                 :=(DMMain_FD.AplicaDescuento);

   gbLista.Enabled:=(DMMain_FD.ModificaListaPrecios);
   pnCosto.Visible:=(DMMain_FD.VerCostos);
   //***************************************************************
   PagPorCtaOrden.TabVisible:=False;
//   DMMain_FD.QOpciones.Close;
//   DMMain_FD.QOpciones.ParamByName('Opcion').Value:='CONTROLSERIE';
//   DMMain_FD.QOpciones.Open;
//   pagSeries.TabVisible:=DMMain_FD.QOpciones.Fields[0].AsString[1]='S';
//   DMMain_FD.QOpciones.Close;

   //***************************************************************
   // Verifico la Opcion de Ver Stock y si vendo con stock cero
   //***************************************************************
//   DMMain_FD.QOpciones.Close;
//   DMMain_FD.QOpciones.ParamByName('Opcion').Value:='VERSTOCK';
//   DMMain_FD.QOpciones.Open;
//   DMMain_FD.VerStock :=Copy(DMMain_FD.QOpciones.Fields[0].Value,1,1)='S';
//   DMMain_FD.QOpciones.Close;

//   DMMain_FD.QOpciones.ParamByName('Opcion').Value:='VTASTOCKCERO';
//   DMMain_FD.QOpciones.Open;
//   DMMain_FD.VenderSinStock:=Copy(DMMain_FD.QOpciones.Fields[0].Value,1,1)='S';
//   DMMain_FD.QOpciones.Close;

//   DMMain_FD.QOpciones.CLose;
//   DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='PREVIEWFACTUR';
//   DMMain_FD.QOpciones.Open;
//   chPreview.Checked:= Copy(DMMain_FD.QOpciones.Fields[0].Value,1,1)='S';
//   DMMain_FD.QOpciones.CLose;

//   DMMain_FD.QOpciones.CLose;
//   DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='BLOQUEADEUDOR';
//   DMMain_FD.QOpciones.Open;
//   if Copy(DMMain_FD.QOpciones.Fields[0].Value,1,1)<>'' then
//     DatosVentas.BloqueaDeudor   := Copy(DMMain_FD.QOpciones.Fields[0].Value,1,1)='S'
//   else
//     DatosVentas.BloqueaDeudor   := True;
//   DMMain_FD.QOpciones.CLose;

   // permite o no credito exedido
//   DMMain_FD.QOpciones.Close;
//   DMMain_FD.QOpciones.ParamByName('Opcion').Value:='LTECREDITO';
//   DMMain_FD.QOpciones.Open;
//   DatosVentas.ControlaLteCredito := Copy(DMMain_FD.QOpciones.Fields[0].Value,1,1)='N';
//   DMMain_FD.QOpciones.CLose;
  //***************************************************************

   pagSeries.TabVisible     := DMMain_FD.ControlaSerie;
   chPreview.Checked        := DMMain_FD.PreviewFactura;

   dbcJuri.Visible          := DMMain_FD.FacturaPorJuridiccion;
   lblJurisdiccion.Visible  := DMMain_FD.FacturaPorJuridiccion;
   dbchCtayOrden.Visible    := DMMain_FD.FacturaPorCtaOrden;
  //***************************************************************
   if dbcJuri.Visible then
     DatosVentas.CDSBuscaLocalidadJur.Open;

   DatosVentas.QListaCaja.Close;
   DatosVentas.QListaCaja.Open;

   // *******************************************************************
   // **** Manejo Lista Precios ....
   // *******************************************************************
   DatosVentas.CDSListaPrecios.Close;
   if DMMain_FD.UsuarioAdministrador Then
     DatosVentas.CDSListaPrecios.Params.ParamByName('uso').Value:='*'
   else
     DatosVentas.CDSListaPrecios.Params.ParamByName('uso').Value:='S';
   DatosVentas.CDSListaPrecios.OPen;
   // *******************************************************************
   // **** se es controlada la lista por usuario ....
   // *******************************************************************
   if (DMMain_FD.GetControlaLista) then
     begin
       DatosVentas.CDSListaPrecios.Close;
       DatosVentas.DSListaPrecios.DataSet := DMMain_FD.CDSListaPreciosUsuarios;
       DMMain_FD.CDSListaPreciosUsuarios.Close;
       DMMain_FD.CDSListaPreciosUsuarios.Params.ParamByName('usuario').Value := DMMain_FD.UsuarioActivoId;
       DMMain_FD.CDSListaPreciosUsuarios.Open;
     end;
   // *******************************************************************
   // *******************************************************************

   //***************************************************************
   // esta lineas se agragan por lo de astesano con rescpecto a la vta en consignacion
   //***************************************************************
//   DMMain_FD.QOpciones.Close;
//   DMMain_FD.QOpciones.ParamByName('Opcion').Value:='CONSIGNACION';
//   DMMain_FD.QOpciones.Open;
//   if (DMMain_FD.QOpciones.Fields[0].AsString[1]='S') then
//     Consignacion:=True
//   else
//     Consignacion:=False;
//   DMMain_FD.QOpciones.Close;

   Consignacion   :=  DMMain_FD.UsaConsignacion;
   Tabla          := 'FcVtaCab';
   Campo          := 'Id_Fc';

   //*************************************************************
   ArchivoIni                             := TIniFile.Create(DMMain_FD.MainPath+DMMain_FD.UsuarioActivo+'consignacion.ini');
   Proveedor                              := ArchivoIni.ReadString('proveedor', 'codigo', '');
   VerCodigoAlternativo1.Checked          := ArchivoIni.ReadBool('codigo', 'codigo', False);
   SaltearColumnadesctoenDetalle1.Checked := ArchivoIni.ReadBool('DSCTO', 'DSCTO', True);
   VerColumnaUnidades.Checked             := ArchivoIni.ReadBool('VerUnidades', 'Unidades', False);
   DatosAdicionales1.Checked              := ArchivoIni.ReadBool('DatoAdicional', 'Modo', False);
   ModoDespachante1.Checked               := ArchivoIni.ReadBool('ModoFactura', 'ModoDespachante', False);
   ExpresarUnidadesenEnteros1.Checked     := ArchivoIni.ReadBool('Unidades', 'ModoEntero', False);
   FiscalizarAutomatica.Checked           := ArchivoIni.ReadBool('ModoFiscalizacion', 'Automatico', True);
   ModificarTotal.Checked                 := ArchivoIni.ReadBool('ImporteTotal', 'Moddifica',False );

   NroInterno                             := ArchivoIni.ReadString('Despachante', 'NroInterno', '');
   UltimaTipoOp                           := ArchivoIni.ReadString('Despachante', 'TipoOperacion', '');
   UltimaAduanaOrigen                     := ArchivoIni.ReadInteger('Despachante', 'Aduana', -1);//Integer;
   UltimaTransp                           := ArchivoIni.ReadInteger('Despachante', 'UltTransporte', -1);//Integer;
   UltimaTranspNombre                     := ArchivoIni.ReadString('Despachante', 'UltTransporteNombre', 'NN');//Integer;
   UltimaFechaCarga                       := ArchivoIni.ReadDateTime('Despachante', 'UltimaFecha', 0); //TDateTime;
   UsarUltimoDeposito.Checked             := ArchivoIni.ReadBool('deposito', 'UsarUltimoDeposito',False);
   UltimoDeposito                         := ArchivoIni.ReadInteger('deposito', 'UltimoDeposito',-1);
   ArchivoIni.Free;

   if VerCodigoAlternativo1.Checked then
    DBGrillaDetalle.Columns[1].Title.Caption:='Cod.Alt'
   else
    DBGrillaDetalle.Columns[1].Title.Caption:='Codigo';

   if  ModoDespachante1.Checked then
     begin
       pcModoFactura.ActivePageIndex:=2;
       pcSubForma.ActivePageIndex   :=1;
     end
   else
     begin
       pcModoFactura.ActivePageIndex:=0;
       pcSubForma.ActivePageIndex   :=0;
     end;

   if ModoDespachante1.Checked then
     DatosVentas.CDSVentaDet.IndexFieldNames:='CODIGOARTICULO'
   else
     DatosVentas.CDSVentaDet.IndexFieldNames:='RENGLON';

   pnAcopio.Visible:=not(ModoDespachante1.Checked);

   //*************************************************************
   Pasar_A_Papelera.Visible     := DMMain_FD.UsuarioActivo='master';
   //*************************************************************
   ArchivoIni                   := TIniFile.Create(DMMain_FD.MainPath+DMMain_FD.UsuarioActivo+'FcCta_Impresion.ini');
   MostrarDlg.Checked           := ArchivoIni.ReadBool('ModoImpresio', 'Dlg', True);
   ArchivoIni.Free;
   //*************************************************************

   DMMain_FD.CodigoBarraSerie:='';
   // Lista de Codigos Serie en Memoria
   CodigosSeries:=TStringList.Create;
   CodigosSeries.Clear;

   lbPercep.Visible             := DMMain_FD.AgentePercepcionIB;//='S';
   dbtTasa_IB.Visible           := lbPercep.Visible;
   dbtImporte_IB.Visible        := lbPercep.Visible;
   bvPercepcion.Visible         := lbPercep.Visible;
   dbcPercibeIIBB.Visible       := lbPercep.Visible;

   DBGrillaDetalle.Columns.Items[9].Visible:=VerColumnaUnidades.Checked;

   if VerColumnaUnidades.Checked=False then
     DBGrillaDetalle.Width:=870
   else
     DBGrillaDetalle.Width:=920;

   // DatosVentas.CDSEmpresa.Close;
   AutoEnviarCorreo              := False;
   ControlaImpresion             := True;
   AutoSize                      := False;

  lbmodocpbte.Visible:=DiscriminaIva='N';
  SearchAssignGrid(DBGrillaDetalle);
  // para el uso de facturacion desde Administracion de Tareas
  DatosVentas.MargenUtilidad   :=DMMain_FD.GetMargenUtilidad;
  KeyPlaner:='';

end;

procedure TFormCpbte_2.FiscalizarAutomaticaClick(Sender: TObject);
begin
  inherited;
  FiscalizarAutomatica.Checked := not(FiscalizarAutomatica.Checked);
end;

procedure TFormCpbte_2.FiscalizarExecute(Sender: TObject);
var aux,Aux2,TextoLog,TextoLogFiscalizacion:String;
NroCae:String;
d,m,y:word;
CaeREVISION    :WideString;
VtoREVISION    :String;
FechaCapturada :String;
NumeroCapturado:Double;
MonedaCotiz    :Double;

FechaVta       :TDateTime;
FechaVtoCae    :TDateTime;
NumeroStr      :String;
EstadoControlImp,EstadoPreviw,
EstadoDlg,RevisionCAE,Ajustar,FiscalizacionImprimir:Boolean;
begin
  inherited;
  RevisionCAE     := False;
  Agregar.Enabled := False;
  if (DatosVentas<>nil) and (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and
     (DatosVentas.CDSVentaCabIMPRESO.Value='N') and (DatosVentas.CDSVentaCabCAE.AsFloat<=0) and
     ((DatosVentas.CDSVentaCabTIPOCPBTE.Value='FC') or (DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC') or (DatosVentas.CDSVentaCabTIPOCPBTE.Value='ND')) Then
     // DatosVentas.CDSEmpresa.Open;
    begin
      if (FormFiscalizacion<>nil) then
        begin
          FreeAndNil(FormFiscalizacion);
          FormFiscalizacion:=nil;
        end;

      if Not(Assigned(FormFiscalizacion)) then
        FormFiscalizacion:= TFormFiscalizacion.Create(self);

      Aux:= Trim( DatosVentas.CDSEmpresa.FieldByName('cuit').AsString);

      //*********  Control del Certifiado por Sucursal **************
      if Trim(DMMain_FD.Certificado_SUCURSAL)<>'' then
        begin
          Formfiscalizacion.CertificadoSucursal:= Trim(DMMain_FD.Certificado_SUCURSAL);
          Aux := Trim( DMMain_FD.Cuit_SUCURSAL);
        end
      else
        Formfiscalizacion.CertificadoSucursal:= '';
      //************************************************************

      Aux:= AnsiReplaceText(Aux,'-','');
      Aux:= AnsiReplaceText(Aux,'.','');
      Aux:= AnsiReplaceStr(Aux,'_','');

      if (aux='') or (copy(aux,1,1)='0') then
        Raise Exception.Create (' Falta el Numero de Cuit de su Empresa....');

      FormFiscalizacion.CuitVdor    := StrToFloat(Aux);

      // ***** Cuit del Comprador ***********************************
      Aux:= DatosVentas.CDSVentaCabCUIT.AsString;
      if aux='' then aux:='00000000000';

      Aux:= AnsiReplaceText(Aux,'-','');
      Aux:= AnsiReplaceText(Aux,'.','');
      Aux:= AnsiReplaceStr(Aux,'_','');

      Aux2:= DatosVentas.CDSVentaCabCUIT_PAIS.AsString;
      if aux2='' then aux2:='00000000000';

      Aux2:= AnsiReplaceText(Aux2,'-','');
      Aux2:= AnsiReplaceText(Aux2,'.','');
      Aux2:= AnsiReplaceStr(Aux2,'_','');
      //***********************************************************

      FormFiscalizacion.CuitComp          := StrToFloat(Aux);
      FormFiscalizacion.CuitPais          := StrToFloat(Aux2);
      FormFiscalizacion.ID_Comprobante    := DatosVentas.CDSVentaCabID_FC.AsString;
      FormFiscalizacion.PtoVenta          := StrToInt(DatosVentas.CDSVentaCabSUCFAC.Value);
      FormFiscalizacion.FechaVta          := FormatDateTime('yyyymmdd', DatosVentas.CDSVentaCabFECHAVTA.AsDateTime);
      if DatosVentas.CDSVentaCabTIPOCPBTE.ASString<>'NC' then
        FormFiscalizacion.FechaVto        := FormatDateTime('yyyymmdd', DatosVentas.CDSVentaCabFECHAVTO.AsDateTime)
      else
        FormFiscalizacion.FechaVto        := FormatDateTime('yyyymmdd', DatosVentas.CDSVentaCabFECHAVTA.AsDateTime);

      FormFiscalizacion.Total             := DatosVentas.CDSVentaCabTOTAL.AsFloat;
      FormFiscalizacion.TotalNeto         := DatosVentas.CDSVentaCabNETOGRAV2.AsFloat;
      FormFiscalizacion.TotalExento       := RoundTo(DatosVentas.CDSVentaCabNETOEXEN2.AsFloat,-2);
      FormFiscalizacion.TotalIIBB         := DatosVentas.CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat;
      FormFiscalizacion.TotalNetoNoGrav   := DatosVentas.CDSVentaCabNETONOGRAV2.AsFloat;
      FormFiscalizacion.TasaIIBB          := DatosVentas.CDSVentaCabPERCEPCION_IB_TASA.AsFloat;
      FormFiscalizacion.Nombre            := DatosVentas.CDSVentaCabRAZONSOCIAL.AsString;
      FormFiscalizacion.Domicilio         := DatosVentas.CDSVentaCabDIRECCION.AsString;
      FormFiscalizacion.BaseImpIIBB       := DatosVentas.CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat;
      FormFiscalizacion.DatosImp          := DatosVentas.CDSImpuestos;
      FormFiscalizacion.DatosPercecpionIVA:= DatosVentas.CDSPercepcionIVA;

      FormFiscalizacion.URLWSAA           := FormCpbte_2.URLWSAA;
      FormFiscalizacion.URLWSW            := FormCpbte_2.URLWSW;
      FormFiscalizacion.URLWSW_EX         := FormCpbte_2.URLWSW_EX;
      FormFiscalizacion.NumeroActual      := DatosVentas.CDSVentaCabNUMEROFAC.AsFloat;
      FormFiscalizacion.TipoNumero        := DatosVentas.CDSVentaCabTIPOCPBTE.Value+'-'+DatosVentas.CDSVentaCabNROCPBTE.Value;
      FormFiscalizacion.Moneda            := DatosVentas.CDSVentaCabMONEDA_CPBTE.Value;
      FormFiscalizacion.MonedaCotiz       := DatosVentas.CDSVentaCabMONEDA_CPBTE_COTIZACION.ASFloat;
      FormFiscalizacion.Cbu               := DatosVentas.CDSVentaCabCBU.AsString;
      FormFiscalizacion.NombreIni         := DMMain_FD.MainPath + DMMain_FD.NombreIni;

      FormFiscalizacion.Asociado_Tipo     := DatosVentas.CDSVentaCabASOCIADO_TIPO.Value;
      FormFiscalizacion.Asociado_PtoVta   := DatosVentas.CDSVentaCabASOCIADO_PTOVTA.Value;
      FormFiscalizacion.Asociado_Nro      := DatosVentas.CDSVentaCabASOCIADO_NRO.Value;
      FormFiscalizacion.Asociado_CpbteFch := DatosVentas.CDSVentaCabASOCIADO_CPTEFCH.Value;
      FormFiscalizacion.DatosAsociados    := DatosVentas.CDSAsociados;
      FormFiscalizacion.CodigoActividad   := DatosVentas.CDSEmpresaCOD_ACTIVIDAD.Value;
      FormFiscalizacion.TipoIvaComp       := DatosVentas.CDSVentaCabTIPOIVA.Value;

      if DatosVentas.CDSVentaCabMUESTRACODIGOAFIP.AsString='' Then
        raise Exception.Create('No Hay codigo AFIP ene comprobante verficiar en la pantalla de comprobantes');

      if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='FC') and (DatosVentas.CDSVentaCabLETRAFAC.Value='A') Then
        FormFiscalizacion.TipoComp:=DatosVentas.CDSVentaCabMUESTRACODIGOAFIP.AsInteger// 1
      else
        if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='FC') and (DatosVentas.CDSVentaCabLETRAFAC.Value='B') Then
          FormFiscalizacion.TipoComp:=DatosVentas.CDSVentaCabMUESTRACODIGOAFIP.AsInteger//6
        else
          if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC') and (DatosVentas.CDSVentaCabLETRAFAC.Value='A') Then
            FormFiscalizacion.TipoComp:=DatosVentas.CDSVentaCabMUESTRACODIGOAFIP.AsInteger//3
          else
            if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC') and (DatosVentas.CDSVentaCabLETRAFAC.Value='B') Then
              FormFiscalizacion.TipoComp:=DatosVentas.CDSVentaCabMUESTRACODIGOAFIP.AsInteger//8
            else
              if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='FC') and (DatosVentas.CDSVentaCabLETRAFAC.Value='E') Then
                begin
                  FormFiscalizacion.TipoComp  := DatosVentas.CDSVentaCabMUESTRACODIGOAFIP.AsInteger;//19;
                  FormFiscalizacion.Incoterms := DatosVentas.CDSVentaCabINCOTERMS.AsString;
                  FormFiscalizacion.DatosDet  := DatosVentas.CDSVentaDet;
                end
              else
                if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC') and (DatosVentas.CDSVentaCabLETRAFAC.Value='E') Then
                  begin
                    FormFiscalizacion.TipoComp  := DatosVentas.CDSVentaCabMUESTRACODIGOAFIP.AsInteger;//21;
                    FormFiscalizacion.DatosDet  := DatosVentas.CDSVentaDet;
                    FormFiscalizacion.Incoterms := DatosVentas.CDSVentaCabINCOTERMS.AsString;
                   end
                else

                if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='ND') and (DatosVentas.CDSVentaCabLETRAFAC.Value='A') Then
                  FormFiscalizacion.TipoComp:=DatosVentas.CDSVentaCabMUESTRACODIGOAFIP.AsInteger//2
                else
                  if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='ND') and (DatosVentas.CDSVentaCabLETRAFAC.Value='B') Then
                    FormFiscalizacion.TipoComp:=DatosVentas.CDSVentaCabMUESTRACODIGOAFIP.AsInteger//7
                  else
                    if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='FC') and (DatosVentas.CDSVentaCabLETRAFAC.Value='M') Then
                      FormFiscalizacion.TipoComp:=DatosVentas.CDSVentaCabMUESTRACODIGOAFIP.AsInteger//51
                    else
                      if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC') and (DatosVentas.CDSVentaCabLETRAFAC.Value='M') Then
                        FormFiscalizacion.TipoComp:=DatosVentas.CDSVentaCabMUESTRACODIGOAFIP.AsInteger//53
                      else
                        if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='ND') and (DatosVentas.CDSVentaCabLETRAFAC.Value='M') Then
                           FormFiscalizacion.TipoComp:=DatosVentas.CDSVentaCabMUESTRACODIGOAFIP.AsInteger;//52;

      if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='FC') and (DatosVentas.CDSVentaCabLETRAFAC.Value='C') Then
        FormFiscalizacion.TipoComp:=DatosVentas.CDSVentaCabMUESTRACODIGOAFIP.AsInteger;//11;

      if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC') and (DatosVentas.CDSVentaCabLETRAFAC.Value='C') Then
        FormFiscalizacion.TipoComp:=DatosVentas.CDSVentaCabMUESTRACODIGOAFIP.AsInteger;//13;


      if (DatosVentas.CDSVentaCabLETRAFAC.Value<>'E') then
        begin
          if ((DatosVentas.CDSVentaCabTOTAL.AsFloat*DatosVentas.CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat)<DMMain_FD.LimiteFactB) and
             ((DatosVentas.CDSVentaCabLETRAFAC.Value ='B') or (DatosVentas.CDSVentaCabLETRAFAC.Value='C'))  and
             (DatosVentas.CDSVentaCabTIPOIVA.Value=3) Then
            begin
              FormFiscalizacion.TipoDocumento := 99;
              FormFiscalizacion.CuitComp      := StrToFloat('00000000000');
            end
          else
            FormFiscalizacion.TipoDocumento := 80;
          if ((DatosVentas.CDSVentaCabTOTAL.AsFloat*DatosVentas.CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat)>=DMMain_FD.LimiteFactB) and
              ((DatosVentas.CDSVentaCabLETRAFAC.Value ='B') or (DatosVentas.CDSVentaCabLETRAFAC.Value='C'))  and
             (DatosVentas.CDSVentaCabTIPOIVA.Value=3) Then
            begin
              FormFiscalizacion.TipoDocumento := 96;
            end;
        end
      else
        if (DatosVentas.CDSVentaCabLETRAFAC.Value='E') then
          FormFiscalizacion.TipoDocumento := 80;

      if Duplicado then
        begin
          FormFiscalizacion.PageControl1.ActivePageIndex:=1;
          FormFiscalizacion.btBuscar.Click;
        end;

 // Controlde Fiscalizacion Automatica ............
      if (TForm(Self.Owner).Name='FormFacturaRemito') Then
        FormFiscalizacion.AutoRun := True;

      FormFiscalizacion.ShowModal;

      if FormFiscalizacion.Resultado='A' then
        begin
          FiscalizacionImprimir := FormFiscalizacion.Imprimir;
          RevisionCAE           := FormFiscalizacion.Revision;
          CaeREVISION           := FormFiscalizacion.CAE;
          VtoREVISION           := FormFiscalizacion.Vencimiento;
          FechaCapturada        := FormFiscalizacion.FechaVta;
          NumeroCapturado       := FormFiscalizacion.NumeroInt;
          Ajustar               := FormFiscalizacion.Ajustar;
          MonedaCotiz           := FormFiscalizacion.MonedaCotiz;

          d:=StrToInt( Copy(FechaCapturada,7,2));
          m:=StrToInt( Copy(FechaCapturada,5,2));
          y:=StrToInt( Copy(FechaCapturada,1,4));

          FechaVta := EncodeDate(y,m,d);


          d:= StrToInt( Copy(FormFiscalizacion.Vencimiento,7,2));
          m:= StrToInt( Copy(FormFiscalizacion.Vencimiento,5,2));
          y:= StrToInt( Copy(FormFiscalizacion.Vencimiento,1,4));

          FechaVtoCae :=EncodeDate(y,m,d);;

          NumeroStr:= copy('00000000',1,8-length(FloatToStr(NumeroCapturado)))+FloatToStr(NumeroCapturado);

          if RevisionCAE then
            begin
              if DMMain_FD.VerificarCAE(CaeREVISION) Then
                begin
                  DMMain_FD.LogFileFD(1,2,'Error de intento de Asignacion de CAE '+'('+DatosVentas.CDSVentaCabID_FC.AsString+') '+
                                                                                    DatosVentas.CDSVentaCabNROCPBTE.AsString ,
                                                                                    'FACVTA');
                  Raise Exception.Create('Este CAE esta asignnado en una factura');
                end;
            end;

          if Not(DMStoreProcedure.ActualizaCAE_VTO(DatosVentas.CDSVentaCabID_FC.Value,
                                                   FechaVta,
                                                   CaeREVISION,
                                                   FechaVtoCae,
                                                   NumeroStr,
                                                   FormFiscalizacion.QRImage)) Then
            ShowMessage('No se pudo gravar datos de CAE/Vencimiento y Actualizacion de Numero...Proceso de Fiscalizacion ');


          Recuperar.Execute;

          if Ajustar then
            begin
              //FormCpbte_2.Modificar.Enabled:=True;
              //FormCpbte_2.Modificar.Execute;
              //DatosVentas.ReCalcularIvaAuto;
            end;

          TextoLog:= 'Restauracion de CAE Fc.Cta.Cte.Nro: '+'('+DatosVentas.CDSVentaCabID_FC.AsString+') '+
                      DatosVentas.CDSVentaCabNROCPBTE.AsString+' Cliente: '+
                      DatosVentas.CDSVentaCabRAZONSOCIAL.AsString+' Importe Fc: '+
                      FormatFloat('0.00',DatosVentas.CDSVentaCabTOTAL.asfloat)+
                      ' Nro.CAE.:'+DatosVentas.CDSVentaCabCAE.AsString;

          TextoLogFiscalizacion:= 'Gravacion Nro de CAE Fc.Cta:Cte.Nro: '+'('+DatosVentas.CDSVentaCabID_FC.AsString+') '+
                                 DatosVentas.CDSVentaCabNROCPBTE.AsString+' Cliente: '+
                                 DatosVentas.CDSVentaCabRAZONSOCIAL.AsString+' Importe Fc: '+
                                 FormatFloat('0.00',DatosVentas.CDSVentaCabTOTAL.asfloat)+
                                 ' Nro.CAE.:'+DatosVentas.CDSVentaCabCAE.Value;

          if FormCpbte_2.DSBase.State in [dsInsert,dsEdit] then
            FormCpbte_2.Confirma.Execute;

          if (RevisionCAE=False) then
            begin
              DMStoreProcedure.spActualizaContadorCpbte.Close;
              DMStoreProcedure.spActualizaContadorCpbte.ParamByName('SUCURSAL').AsInteger     :=DSBase.DataSet.FieldByName('SUCURSAL').Value;
              DMStoreProcedure.spActualizaContadorCpbte.ParamByName('LETRA').AsString         :=DSBase.DataSet.FieldByName('LETRAFAC').Value;
              DMStoreProcedure.spActualizaContadorCpbte.ParamByName('NUMERO').AsString        :=DSBase.DataSet.FieldByName('NUMEROFAC').Value;
              DMStoreProcedure.spActualizaContadorCpbte.ParamByName('CLASE_COMPROB').AsString :=DSBase.DataSet.FieldByName('CLASECPBTE').Value;
              DMStoreProcedure.spActualizaContadorCpbte.ParamByName('TIPO_COMPROB').AsString  :=DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
              DMStoreProcedure.spActualizaContadorCpbte.ParamByName('COMP_VTA').AsString      := 'V';
              DMStoreProcedure.spActualizaContadorCpbte.ExecProc;
              DMStoreProcedure.spActualizaContadorCpbte.Close;
            end;

          if (MonedaCotiz>1) then
            begin
              if Not(DMStoreProcedure.Actualiza_Cotiz_Cpbte(DSBase.DataSet.FieldByName('ID_FC').Value,MonedaCotiz)) Then
                ShowMessage('No se Actualizaron Los Montos');
//              DMStoreProcedure.spActualiza_cotiz_cpbte.Close;
//              DMStoreProcedure.spActualiza_cotiz_cpbte.ParamByName('ID_CPBTE').AsInteger :=DSBase.DataSet.FieldByName('ID_FC').Value;
//              DMStoreProcedure.spActualiza_cotiz_cpbte.ParamByName('COTIZACION').AsFLoat :=MonedaCotiz;
//              DMStoreProcedure.spActualiza_cotiz_cpbte.ExecProc;
//              DMStoreProcedure.spActualiza_cotiz_cpbte.Close;
            end;

          EstadoControlImp               := FormCpbte_2.ControlaImpresion;
          FormCpbte_2.ControlaImpresion  := False;
          EstadoPreviw                   := FormCpbte_2.chPreview.Checked;
          FormCpbte_2.chPreview.Checked  := False;
          EstadoDlg                      := MostrarDlg.Checked;

          FormCpbte_2.ControlaImpresion  := EstadoControlImp;
          FormCpbte_2.chPreview.Checked  := EstadoPreviw;
          FormCpbte_2.MostrarDlg.Checked := EstadoDlg;

          if FiscalizacionImprimir then
            Imprimir.Execute;

          // **** Ingreso en el Log File  **************
          if RevisionCAE then
              DMMain_FD.LogFileFD(1,2,TextoLog,' FACVTA')
           else
              DMMain_FD.LogFileFD(1,2,TextoLogFiscalizacion,' FACVTA');
          // ******************************************
        end;
    end;

  Agregar.Enabled:=True;
  if (FormCpbte_2.Visible) and (btNuevo.Visible) then
    btNuevo.SetFocus;
  if (DSBase.DataSet.FieldByName('enviar_cpte_mail').Value='S') and (DSBase.DataSet.FieldByName('CAE').AsString<>'') then
    begin
      If (RevisionCAE=False) Then
        begin
          AutoEnviarCorreo:=True;
          if ConfirmaAutoEnvioCorreoFc then
            begin
              if MessageDlg('Enviar Correo con la Factura...?',mtConfirmation,mbYesNo,0,mbYes)=mrYes Then
                EnviarCorreo.Execute;
            end
          else
            EnviarCorreo.Execute;
        end;
    end;
end;

procedure TFormCpbte_2.FormActivate(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State = dsBrowse) and (DSBase.DataSet.IsEmpty=False) then
    begin
      if (DSBase.DataSet.IsEmpty=False) and (FormCpbte_2<>Nil) then
        Recuperar.Execute;
    end;
  if btNuevo.Visible and btNuevo.Enabled then
    btNuevo.SetFocus;
end;

procedure TFormCpbte_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //*************************************************************
   ArchivoIni          := TIniFile.Create(DMMain_FD.MainPath + DMMain_FD.UsuarioActivo+'consignacion.ini');
   ArchivoIni.WriteBool('codigo', 'codigo', VerCodigoAlternativo1.Checked);
   ArchivoIni.WriteBool('DSCTO', 'DSCTO', SaltearColumnadesctoenDetalle1.Checked);
   ArchivoIni.WriteBool('VerUnidades', 'Unidades', VerColumnaUnidades.Checked);
   ArchivoIni.WriteBool('ModoFactura', 'ModoDespachante', ModoDespachante1.Checked);
   ArchivoIni.WriteBool('ModoFiscalizacion', 'Automatico', FiscalizarAutomatica.Checked);
   ArchivoIni.WriteBool('Unidades', 'ModoEntero', ExpresarUnidadesenEnteros1.Checked);
   ArchivoIni.WriteBool('DatoAdicional', 'Modo', DatosAdicionales1.Checked);
   ArchivoIni.WriteBool('ImporteTotal', 'Moddifica', ModificarTotal.Checked);

   ArchivoIni.WriteString('Despachante','NroInterno', NroInterno);
   ArchivoIni.WriteString('Despachante', 'TipoOperacion', UltimaTipoOp);
   ArchivoIni.WriteInteger('Despachante', 'Aduana',UltimaAduanaOrigen);//Integer;
   ArchivoIni.WriteInteger('Despachante', 'UltTransporte', UltimaTransp);//Integer;
   ArchivoIni.WriteString('Despachante', 'UltTransporteNombre', UltimaTranspNombre);//Integer;

   ArchivoIni.WriteDateTime('Despachante', 'UltimaFecha', UltimaFechaCarga );// TDateTime;

   ArchivoIni.WriteBool('deposito', 'UsarUltimoDeposito',UsarUltimoDeposito.Checked);
   ArchivoIni.WriteInteger('deposito', 'UltimoDeposito',UltimoDeposito);


   ArchivoIni.Free;
   //*************************************************************
   //*************************************************************
   ArchivoIni                   := TIniFile.Create(DMMain_FD.MainPath+DMMain_FD.UsuarioActivo+'FcCta_Impresion.ini');
   ArchivoIni.WriteBool('ModoImpresio', 'Dlg', MostrarDlg.Checked);
   ArchivoIni.Free;
   //*************************************************************

   if DSBase.DataSet.State IN [dsInsert, dsEdit] then
     DMMain_FD.LogFileFD(0,3,'Cierre de Pantalla Con Cpbte Abierto, Numero Provisorio:'+DatosVentas.CDSVentaCabLETRAFAC.AsString+'-'+DatosVentas.CDSVentaCabSUCFAC.AsString+'-'+DatosVentas.CDSVentaCabNUMEROFAC.AsString+
                             '('+DatosVentas.CDSVentaCabID_FC.AsString+')'+ '..Fecha :'+dateToStr(DatosVentas.CDSVentaCabFECHAVTA.AsDateTime)+
                             ' Importe de :'+FormatFloat(',0.00',DatosVentas.CDSVentaCabTOTAL.AsFloat),
                             'CANCELACION');


   IF Assigned(FormAplicacionesNCVta) Then
     FormAplicacionesNCVta.Close;

 // IF (Not(TForm(Self.Owner).Name='FormAplicacionesCCVta_2')) and  Assigned(FormAplicacionesCCVta_2) Then
 //   FreeAndNil(FormAplicacionesCCVta_2);
   IF Assigned(FormMovimientosCarnes) THEN
     FreeAndNil(FormMovimientosCarnes);

   IF Assigned(FormControlDetalle) THEN
     FreeAndNil(FormControlDetalle);

   IF Assigned(FormCpbte_Produccion) THEN
     FreeAndNil(FormCpbte_Produccion);

   IF Assigned(FormAnexosRtoTransporte) THEN
     FreeAndNil(FormAnexosRtoTransporte);

   if Anulado<>nil Then
     FreeAndNil(Anulado);

   if pcDetalleFactura<>nil then
     pcDetalleFactura.ActivePage := PagDetalles;
   WITH DatosVentas DO
     BEGIN
     // CancelarCambios;
       QClientes.Close;
       CDSVentaDet.Close;
       CDSVentaCab.Close;
       CDSSucursal.Close;
       CDSStock.Close;
       CDSCondVenta.Close;
       CDSInscripcion.Close;
       CDSIva.Close;
       CDSDeposito.Close;
       CDSImpuestos.Close;
      //DMMain_FD.QListaPrecioPorDefecto.Close;
       CDSListaPrecios.Close;
       QListaCaja.Close;
       CDSVtaSubDetalle.Close;
       if CDSBuscaLocalidadJur.Active=True Then
         CDSBuscaLocalidadJur.Open;
       CDSVentaLote.Close;
       FreeAndNil(DatosVentas);
    END;
  Action := caFree;
 //   cpPuertoCom.Disconnect;

    //  inherited;
end;

procedure TFormCpbte_2.BuscarRecepcionExecute(Sender: TObject);
begin
  inherited;
  DatosVentas.CDSBuscaRecepDetalle.Close;
  DatosVentas.CDSBuscaRecepDetalle.Params.ParamByName('Proveedor').Value:=DatosVentas.CDSVentaCabPROVEEDOR.Value;
  DatosVentas.CDSBuscaRecepDetalle.Params.ParamByName('Codigo').Value   :=DatosVentas.CDSVtaDetConsigCODIGO.Value;
  DatosVentas.CDSBuscaRecepDetalle.Open;
  comBuscadorRecepciones.Execute;
  if comBuscadorRecepciones.rOk then
    begin
      DatosVentas.CDSVtaDetConsigID_MOV_RECEPCION_DETSetText(DatosVentas.CDSVtaDetConsigID_MOV_RECEPCION_DET,IntToStr(comBuscadorRecepciones.Id));
    end;
  DatosVentas.CDSBuscaRecepDetalle.Close;
end;

procedure TFormCpbte_2.BuscaLoteExecute(Sender: TObject);
begin
  inherited;
  if DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC' then
     DatosVentas.CDSBuscaLotes.CommandText:='select s.* from stock_lotes_impo s where s.codigo = :codigo';
  DatosVentas.CDSBuscaLotes.Close;
  DatosVentas.CDSBuscaLotes.Params.ParamByName('Codigo').Value:=DatosVentas.CDSVentaDetCODIGOARTICULO.Value;
  DatosVentas.CDSBuscaLotes.Open;
  if (DatosVentas.CDSVentaDetCONTROL_TRAZABILIDAD.Value='S') Then
    begin
      comBuscadorLote.Execute;
      if comBuscadorLote.rOk Then
        DatosVentas.CDSVentaLoteID_LOTESetText(DatosVentas.CDSVentaLoteID_LOTE,IntToStr(comBuscadorLote.Id));
    end;
  DatosVentas.CDSBuscaLotes.Close;
end;

procedure TFormCpbte_2.BuscaNCAplicaAFacturaExecute(Sender: TObject);
begin
  inherited;
  if DSBase.DataSet.FieldByName('codigo').AsString<>'' then
    begin
      if not Assigned(FormNotaCreditoAplicaAFactura) then
        FormNotaCreditoAplicaAFactura :=  TFormNotaCreditoAplicaAFactura.Create(self);
      FormNotaCreditoAplicaAFactura.Cliente := DSBase.DataSet.FieldByName('CODIGO').AsString;
      FormNotaCreditoAplicaAFactura.ShowModal;
      if FormNotaCreditoAplicaAFactura.ModalResult=mrOk then
        begin
          DSBase.DataSet.FieldByName('ASOCIADO_CPTEFCH').AsString  := FormNotaCreditoAplicaAFactura.Fecha;
          DSBase.DataSet.FieldByName('ASOCIADO_PTOVTA').AsString   := FormNotaCreditoAplicaAFactura.Suc;
          DSBase.DataSet.FieldByName('ASOCIADO_NRO').AsString      := FormNotaCreditoAplicaAFactura.NUmero;
          DSBase.DataSet.FieldByName('ASOCIADO_TIPO').Value        := StrToInt(FormNotaCreditoAplicaAFactura.CodigoAfip);
          DSBase.DataSet.FieldByName('ASOCIADO_ID_CPBTE').Value    := FormNotaCreditoAplicaAFactura.ID_Cpbte;
        end;
    end;
end;

procedure TFormCpbte_2.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsInsert,dsEdit]) then
    begin
     // si es por cuenta y orden busco las recepciones
     // if DatosVentas.wwCDSVentaCabPOR_CTA_Y_ORDEN.Value='S' then
     //   buscar
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos := TFormBuscadorArticulos.Create(self);
      FormBuscadorArticulos.Param1      := 1;
      FormBuscadorArticulos.Param2      := 3;
      FormBuscadorArticulos.Param3      := 3;
      FormBuscadorArticulos.ListaPrecio := DatosVentas.CDSVentaCabLISTAPRECIO.Value;
      FormBuscadorArticulos.Esquema     := DMMain_FD.GetEsquemaLista(DSBase.DataSet.FieldByName('CODIGO').AsString);
      if FormBuscadorArticulos.Visible=False Then
        FormBuscadorArticulos.ShowModal;

      if FormBuscadorArticulos.Codigo<>'' Then
        DatosVentas.CDSVentaDetCodigoArticuloSetText(DatosVentas.CDSVentaDetCodigoArticulo,FormBuscadorArticulos.Codigo);
    end;
end;

procedure TFormCpbte_2.BuscarArticuloProdExecute(Sender: TObject);
begin
  inherited;
    begin
     // si es por cuenta y orden busco las recepciones
     // if DatosVentas.wwCDSVentaCabPOR_CTA_Y_ORDEN.Value='S' then
     //   buscar
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
     // FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
      //FormBuscadorArticulos.CampoNro          := 1;
      FormBuscadorArticulos.Param1:=1;
      FormBuscadorArticulos.Param2:=3;
      FormBuscadorArticulos.ListaPrecio := DatosVentas.CDSVentaCabLISTAPRECIO.Value;
      FormBuscadorArticulos.Esquema     := DMMain_FD.GetEsquemaLista(DatosVentas.CDSVentaCabCODIGO.AsString);

      //if FormBuscadorArticulos.Visible=False Then
        FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        DatosVentas.CDSFc_Prod_MovCODIGO.Text   :=  FormBuscadorArticulos.Codigo;
    end;
end;

procedure TFormCpbte_2.FormDestroy(Sender: TObject);
begin
  FormCpbte_2:=nil;
  inherited;
end;

procedure TFormCpbte_2.FormShow(Sender: TObject);
var sDirectorio:String;
begin
  inherited;
  sDirectorio      := DMMain_FD.MainPath+'Papelera_FC';

  if IsDirEmpty(sDirectorio) then
    Papelera.ImageIndex:=11
  else
    Papelera.ImageIndex:=10;
  if DirectoryExists(sDirectorio) then
    Papelera.ImageIndex:=11;


  IF (DSBase.State=dsBrowse) AND (btNuevo.Visible=True) Then
     btNuevo.SetFocus;

  if  ModoDespachante1.Checked then
     begin
       pcModoFactura.ActivePageIndex:=2;
       pcSubForma.ActivePageIndex   :=1;
     end
  else
    begin
      pcModoFactura.ActivePageIndex:=0;
      pcSubForma.ActivePageIndex   :=0;
    end;

  if (TForm(Self.Owner).Name<>'FormFacturaRemitoAgrupado') and
     (TForm(Self.Owner).Name<>'FormImportacionFacturasVtaGral') and
     (TForm(Self.Owner).Name<>'FormNotaPedidoCliente') and
     (TForm(Self.Owner).Name<>'FormConsolidacionAcopioRemitos') and
     (TForm(Self.Owner).Name<>'FormImportacionPreventas') and
     (TForm(Self.Owner).Name<>'FormRecibo_2') and
     (ScannerSerie='S') and (Balanza=nil) then
    ConectarBalanza.Execute;

  if FormCpbte_2<>nil then

  lbmodocpbte.Visible:=FormCpbte_2.DiscriminaIva='N';
  //edNumeroOP.Parent:=FormCpbte_2;
 // edNumeroOP.BringToFront;
end;

procedure TFormCpbte_2.FreezarExecute(Sender: TObject);
var i:integer;
CDSCab,CDSDet:TClientDataSet;
begin
  inherited;
  if ((DatosVentas.CDSVentaCab.IsEmpty) or (Not(DSBase.State in [dsInsert]))) Then
    Raise exception.Create('No se puede hacer esta Operacion..');

  if not DirectoryExists(PathFreezerCtaCte) then
    CreateDir(PathFreezerCtaCte);
  if (Not(DatosVentas.CDSVentaCab.IsEmpty) and (DatosVentas.CDSVentaCabTOTAL.AsFloat>0)) and (DSBase.State in [dsInsert]) Then
    begin
//     For i:=0 to DatosVentas.CDSVentaCab.FieldCount-1 do
//       begin
//         if (DatosVentas.CDSVentaCab.Fields[i].Required) and (DatosVentas.CDSVentaCab.Fields[i].AsString='') Then
//           ShowMessage(DatosVentas.CDSVentaCab.Fields[i].FieldName+':'+
//         DatosVentas.CDSVentaCab.Fields[i].AsString);
//       end;
      DatosVentas.CDSVentaCabRENGLONES.Value := DatosVentas.CDSVentaDet.RecordCount;
      DatosVentas.CDSVentaCabDebe.ASFloat    := DatosVentas.CDSVentaCabTotal.AsFloat;

      if DatosVentas.CDSVentaCab.State in [dsInsert,dsEdit] then
        DatosVentas.CDSVentaCab.Post;

      if DatosVentas.CDSVentaDet.State in [dsInsert,dsEdit] then
        DatosVentas.CDSVentaDet.Post;

      CDSCab:=TClientDataSet.Create(Self);
      CDSCab.CloneCursor(DatosVentas.CDSVentaCab,True);
//     For i:=0 to CDSCab.FieldCount-1 do
//       begin
//         if CDSCab.Fields[i].Required Then
//           ShowMessage(CDSCab.Fields[i].FieldName+':'+
//         CDSCab.Fields[i].AsString);
//       end;
      CDSDet:=TClientDataSet.Create(Self);
      CDSDet.CloneCursor(DatosVentas.CDSVentaDet,True);

      CDSCab.SaveToFile(PathFreezerCtaCte+'\'+DatosVentas.CDSVentaCabID_FC.AsString+'-'+DatosVentas.CDSVentaCabCODIGO.AsString+'-'+DatosVentas.CDSVentaCabNOMBRE.AsString+'.XML');
      CDSDet.SaveToFile(PathFreezerCtaCte+'\'+DatosVentas.CDSVentaDetID_CABFAC.AsString+'.xm_');
      ShowMessage('Comprobante freezado............');
    end
  else
    ShowMessage('No Hay datos para exportar....');
  FreeAndNil(CDSCab);
  FreeAndNil(CDSDet);

  DatosVentas.CDSVentaCab.close;
  DatosVentas.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
  DatosVentas.CDSVentaCab.Params.ParamByName('id').Clear;
  DatosVentas.CDSVentaCab.Open;

  DatosVentas.CDSVentaDet.Close;
  DatosVentas.CDSVentaDet.Params.ParamByName('id').Clear;
  DatosVentas.CDSVentaDet.Open;

  DatosVentas.CDSImpuestos.Close;
  DatosVentas.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosVentas.CDSImpuestos.Open;

  DatosVentas.CDSVtaSubDetalle.Close;
  DatosVentas.CDSVtaSubDetalle.Params.ParamByName('id').Clear;
  DatosVentas.CDSVtaSubDetalle.Open;

  DatosVentas.CDSVtaDetConsig.Close;
  DatosVentas.CDSVtaDetConsig.Params.ParamByName('id').Clear;
  DatosVentas.CDSVtaDetConsig.Open;

  btNuevo.SetFocus;

end;

procedure TFormCpbte_2.frFacturaAfterPrintReport(Sender: TObject);
begin
  inherited;
  DMMain_FD.LogFileFD(1,2,'Impresion Fac.Venta: ('+DSBase.DataSet.FieldByName('ID_FC').AsString+') '+ DatosVentas.CDSVentaCabNROCPBTE.Value+' Cliente: '+
                      DatosVentas.CDSVentaCabRAZONSOCIAL.Value+' Importe :'+FormatFloat('0.00',DatosVentas.CDSVentaCabTOTAL.AsFloat)+
                     '','FACVTA');
  Impresa:=True;
end;

procedure TFormCpbte_2.frFacturaPrintReport(Sender: TObject);
begin
  inherited;
   if ModoDespachante1.Checked then
      Impresa:=False
   else
     Impresa:=True;
end;

procedure TFormCpbte_2.frxPDFExport1BeforeExport(Sender: TObject);
begin
  inherited;
  frxPDFExport1.EmbeddedFonts := True;

  if (TForm(Self.Owner).Name<>'FormControlCompNoImpresos') Then
    begin
      if DatosVentas.CDSVentaCabTIPOCPBTE.Value='FC' Then
        frxPDFExport1.FileName:=(DMMain_FD.MainPath+'Archivos Temporales\Factura_'+DatosVentas.CDSVentaCabNROCPBTE.AsString+'.pdf')
      else
       if DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC' Then
          frxPDFExport1.FileName:=(DMMain_FD.MainPath+'Archivos Temporales\NCredito_'+DatosVentas.CDSVentaCabNROCPBTE.AsString+'.pdf')
       else
         if DatosVentas.CDSVentaCabTIPOCPBTE.Value='ND' Then
            frxPDFExport1.FileName:=(DMMain_FD.MainPath+'Archivos Temporales\NDebito_'+DatosVentas.CDSVentaCabNROCPBTE.AsString+'.pdf');
    end;
end;

procedure TFormCpbte_2.AcopiarExecute(Sender: TObject);
VAR Continua:Boolean;
begin
  inherited;
  if (DMBuscadores.GetHayRemitos(DatosVentas.CDSVentaCabID_FC.Value)) then
    raise Exception.Create('Factura con remitos asociados no se puede acopiar....');

  if DMBuscadores.GetAcopioFactura(DatosVentas.CDSVentaCabID_FC.Value) then
    raise Exception.Create('Ya esta Acopiado......');

  Continua:=False;

  if (Not(DSBase.DataSet.IsEmpty)) and (Not(TForm(Self.Owner).Name='FormConsolidacionAcopioRemitos')) and
      (MessageDlg('Genera acopio de mercaderia?? ....',mtConfirmation,mbYesNo,1)=mrYes) and (DSBase.DataSet.FieldByName('TIPOCPBTE').Value<>'NC') then Continua:=True
        else
    if (Not(DSBase.DataSet.IsEmpty)) and (TForm(Self.Owner).Name='FormConsolidacionAcopioRemitos') then Continua:=True;

  if (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and
     (DatosVentas.CDSVentaCabCAE.AsFloat<=0) then
   begin
     Continua:=False;
     ShowMessage('Fiscalice la facture y luego haga el proceso de acopio...');
   end;

  if Continua=True then
  begin
    if DMBuscadores.GetAcopioFactura(DatosVentas.CDSVentaCabID_FC.Value)=False then
      begin
        if Not(Assigned(FormAcopio)) Then
          FormAcopio:=TFormAcopio.Create(self);
        FormAcopio.Agregar.Execute;
        FormAcopio.CDSMercCabFECHA.AsDateTime     := Date;
        FormAcopio.CDSMercCabCLIENTE.AsString     := DatosVentas.CDSVentaCabCODIGO.AsString;
        FormAcopio.CDSMercCabNOMBRE.AsString      := DatosVentas.CDSVentaCabNOMBRE.AsString;
        FormAcopio.CDSMercCabDIRECCION.AsString   := DatosVentas.CDSVentaCabDIRECCION.AsString;
        FormAcopio.CDSMercCabCPOSTAL.AsString     := DatosVentas.CDSVentaCabCPOSTAL.AsString;
        FormAcopio.CDSMercCabLOCALIDAD.AsString   := DatosVentas.CDSVentaCabLOCALIDAD.AsString;
        FormAcopio.CDSMercCabNROCPBTE.AsString    := DatosVentas.CDSVentaCabNROCPBTE.AsString;
        FormAcopio.CDSMercCabID_FACTURA.AsInteger := DatosVentas.CDSVentaCabID_FC.AsInteger;
        FormAcopio.CDSMercCabOBS1.AsString        := DatosVentas.CDSVentaCabOBSERVACION1.AsString;
        FormAcopio.CDSMercCabOBS2.AsString        := DatosVentas.CDSVentaCabOBSERVACION2.AsString;
        DatosVentas.CDSVentaDet.First;
        while Not(DatosVentas.CDSVentaDet.Eof)  do
          begin
            while Not(DatosVentas.CDSVentaDet.Eof)  Do // Ingreso el detalle
              begin
                Application.ProcessMessages;
                if DatosVentas.CDSVentaDetACOPIABLE.Value='S' then
                  begin
                    if Not(FormAcopio.CDSMercDet.Locate('CODIGO',DatosVentas.CDSVentaDetCODIGOARTICULO.Value,[])) Then
                      begin
                        FormAcopio.CDSMercDet.Append;
                        FormAcopio.CDSMercDetCODIGO.AsString    := DatosVentas.CDSVentaDetCODIGOARTICULO.AsString;
                        FormAcopio.CDSMercDetDETALLE.AsString   := DatosVentas.CDSVentaDetDETALLE.AsString;
                        if DSBase.DataSet.FieldByName('TipoCpbte').Value<>'NC' then
                          FormAcopio.CDSMercDetCANTIDAD.AsFloat := DatosVentas.CDSVentaDetCANTIDAD.AsFloat
                        else
                        FormAcopio.CDSMercDetCANTIDAD.AsFloat   := (DatosVentas.CDSVentaDetCANTIDAD.AsFloat * 1); // era por -1
                        FormAcopio.CDSMercDetSALDO.AsFloat      := FormAcopio.CDSMercDetCANTIDAD.AsFloat;
                        FormAcopio.CDSMercDet.Post;
                      end
                    else
                      begin
                        FormAcopio.CDSMercDet.Edit;
                        if DSBase.DataSet.FieldByName('TipoCpbte').Value<>'NC' then
                          FormAcopio.CDSMercDetCANTIDAD.AsFloat:= FormAcopio.CDSMercDetCANTIDAD.AsFloat + DatosVentas.CDSVentaDetCANTIDAD.AsFloat
                        else
                          FormAcopio.CDSMercDetCANTIDAD.AsFloat:= FormAcopio.CDSMercDetCANTIDAD.AsFloat - (DatosVentas.CDSVentaDetCANTIDAD.AsFloat*1);

                        FormAcopio.CDSMercDetSALDO.AsFloat   := DatosVentas.CDSVentaDetCANTIDAD.AsFloat;
                        FormAcopio.CDSMercDet.Post;
                      end;
                  end;

                DatosVentas.CDSVentaDet.Next;
              end;
          end;
        FormAcopio.Confirma.Execute;
        if (TForm(Self.Owner).Name='FormConsolidacionAcopioRemitos') Then FormAcopio.SAlir.Execute;
      end
    else
      ShowMessage('Ya fue realizado.....');
  end;

end;

procedure TFormCpbte_2.AgregarCabRto;
begin
  with DatosRemitos,DatosVentas DO
  begin
    FormRemitos.SucursalPorDefecto:=CDSVentaCabSUCURSAL.Value;
    FormRemitos.DepositoPorDefecto:=CDSVentaCabDEPOSITO.Value;
    CDSRtoCabSucursalSetText(CDSRtoCabSucursal, IntToStr(CDSVentaCabSUCURSAL.Value));
    CDSRtoCabCodigoSetText(CDSRtoCabCodigo,CDSVentaCabCODIGO.AsString);
    CDSRtoCabLDRSetText(CDSRtoCabLDR,CDSVentaCabLDR.AsString);

    CDSRtoCabID_TIPOCOMPROBANTESetText(CDSRtoCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));

    CDSRtoCabDepositoSetText(CDSRtoCabDeposito,IntToStr(CDSVentaCabDEPOSITO.Value));
    CDSRtoCabCondicionVtaSetText(CDSRtoCabCondicionVta,CDSVentaCabCONDICIONVTA.AsString);
    CDSRtoCabANULADO.Value         := 'N';

    CDSRtoCabIMPRESO.Value         := 'N';
    CDSRtoCabOBSERVACION1.Value    := CDSVentaCabOBSERVACION1.Value;
    CDSRtoCabOBSERVACION2.Value    := CDSVentaCabOBSERVACION2.Value;
    CDSRtoCabCPTE_MANUAL.Value     := 'N';

    CDSRtoCabZONA.Value            := CDSVentaCabZONA.Value;
    CDSRtoCabIDFACTURA.Value       := CDSVentaCabID_FC.Value;
    CDSRtoCabNROFACT.Value         := CDSVentaCabNROCPBTE.Value;
    CDSRtoCabLISTAPRECIO.Value     := CDSVentaCabLISTAPRECIO.Value;
    CDSRtoCabVENDEDOR.Value        := CDSVentaCabVENDEDOR.AsString;

    CDSRtoCabUSUARIO.AsString      := DMMain_FD.UsuarioActivo;

  end;
end;

procedure TFormCpbte_2.AgregarDetNP;
Var UnitarioTotal,Precio,coef:Real;
begin
  inherited;
  with DatosNPedidoClientes DO
    begin
      CDSNotaPedidoDet.Append;
      CDSNotaPedidoDetDESGLOZAIVA.Value        := CDSNotaPedidoCabDESGLOZAIVA.Value;
      CDSNotaPedidoDetDEPOSITO.Value           := CDSNotaPedidoCabDeposito.Value;
      CDSNotaPedidoDetCLASECPBTE.Value         := CDSNotaPedidoCabCLASECPBTE.Value;
      CDSNotaPedidoDetTIPOCPBTE.Value          := CDSNotaPedidoCabTIPOCPBTE.Value;
      CDSNotaPedidoDetCODIGOARTICULOSetText(CDSNotaPedidoDetCODIGOARTICULO,DatosVentas.CDSVentaDetCODIGOARTICULO.AsString);
      CDSNotaPedidoDetDETALLE.Value            := DatosVentas.CDSVentaDetDETALLE.Value;
      CDSNotaPedidoDetCANTIDAD_PEDIDIASetText(CDSNotaPedidoDetCANTIDAD_PEDIDIA,DatosVentas.CDSVentaDetCANTIDAD.AsString);
      CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat := (DatosVentas.CDSVentaDetUNITARIO_GRAVADO.AsFloat/DatosVentas.CDSVentaDetCOTIZACION.AsFloat)* DatosVentas.CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat;
      CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat  := (DatosVentas.CDSVentaDetUNITARIO_EXENTO.AsFloat/DatosVentas.CDSVentaDetCOTIZACION.AsFloat)* DatosVentas.CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat;

      CDSNotaPedidoDetDescuento.Value          := DatosVentas.CDSVentaDetDESCUENTO.Value;

      UnitarioTotal                            := CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat + CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;

      if DatosVentas.CDSVentaCabDESGLOZAIVA.Value='N' Then
        UnitarioTotal:= CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat + DatosVentas.CDSVentaDetIVA_UNITARIO.AsFloat + CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;


//      if DatosPresupuesto.wwCDSPresuCabDESGLOZAIVA.Value='N' Then
  //       CDSNotaPedidoDetUNITARIO_TOTALSetText(CDSNotaPedidoDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal*(1+DatosPresupuesto.wwCDSPresuDetIVA_TASA.Value/100)))
 //      else
    //   CDSNotaPedidoDetUNITARIO_TOTALSetText(CDSNotaPedidoDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal));

      CDSNotaPedidoDetUNITARIO_TOTALSetText(CDSNotaPedidoDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal));

      CDSNotaPedidoDet.Post;
    end;
end;


procedure TFormCpbte_2.AgregarDetRto;
var UnitarioTotal:Extended;
begin
  inherited;
  with DatosRemitos,DatosVentas DO
    begin
      CDSRtoDet.Append;
      CDSRtoDetDESGLOZAIVA.Value        := CDSRtoCabDESGLOZAIVA.Value;
      CDSRtoDetDEPOSITO.Value           := CDSRtoCabDeposito.Value;
      CDSRtoDetCLASECPBTE.Value         := CDSRtoCabCLASECPBTE.Value;
      CDSRtoDetTIPOCPBTE.Value          := CDSRtoCabTIPOCPBTE.Value;
      CDSRtoDetCODIGOARTICULOSetText(CDSRtoDetCODIGOARTICULO,DatosVentas.CDSVentaDetCODIGOARTICULO.AsString);
      CDSRtoDetDETALLE.Value            := DatosVentas.CDSVentaDetDETALLE.Value;
      CDSRtoDetCantidadSetText(CDSRtoDetCantidad,DatosVentas.CDSVentaDetCANTIDAD.AsString);//AsFloat;
      CDSRtoDetUNITARIO_GRAVADO.AsFloat := DatosVentas.CDSVentaDetUNITARIO_GRAVADO.AsFloat;
      CDSRtoDetUNITARIO_EXENTO.AsFloat  := DatosVentas.CDSVentaDetUNITARIO_EXENTO.AsFloat;
      CDSRtoDetUNITARIO_TOTAL.AsFloat   := DatosVentas.CDSVentaDetUNITARIO_TOTAL.AsFloat;
      CDSRtoDetIVA_UNITARIO.AsFloat     := DatosVentas.CDSVentaDetIVA_UNITARIO.AsFloat;
      CDSRtoDetIVA_TOTAL.AsFloat        := DatosVentas.CDSVentaDetIVA_TOTAL.AsFloat;

      UnitarioTotal := CDSRtoDetUNITARIO_TOTAL.AsFloat;

      if CDSRtoCabDESGLOZAIVA.Value='N' Then
        UnitarioTotal := CDSRtoDetUNITARIO_TOTAL.AsFloat + CDSRtoDetIVA_UNITARIO.AsFloat;

      CDSRtoDetUNITARIO_TOTALSetText(CDSRtoDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal));
      CDSRtoDetAFECTA_STOCK.Value         :='N';
      CDSRtoDetCONTROLA_TRAZABILIDAD.Value:='N';
      CDSRtoDet.Post;
    end;
end;


procedure TFormCpbte_2.GaranteExecute(Sender: TObject);
begin
  inherited;
  IF (NOT (DatosVentas.CDSVentaCab.IsEmpty)) and (DSBase.DataSet.State=dsBrowse) THEN
    BEGIN
      if Not(Assigned(FormAdministracionGarantes)) then
        FormAdministracionGarantes:=TFormAdministracionGarantes.Create(Self);
      FormAdministracionGarantes.Codigo:=DatosVentas.CDSVentaCabCODIGO.Value;
      FormAdministracionGarantes.ShowModal;
      if FormAdministracionGarantes.ModalResult=mrOk then
        begin
          CpbteNuevo:='N';
          DatosVentas.CDSVentaCab.Edit;
          DatosVentas.CDSVentaCabID_GARANTE.Value:=FormAdministracionGarantes.Id;
          Confirma.Execute;
          DMMain_FD.LogFileFD(1,2,'Modificación Fac.Venta: '+ DatosVentas.CDSVentaCabNROCPBTE.Value+' Cliente: '+
                              DatosVentas.CDSVentaCabRAZONSOCIAL.Value+
                              ' Id Garante Old:'+IntToStr(DatosVentas.CDSVentaCabID_GARANTE.OldValue)+
                              ' Id Garante New:'+IntToStr(DatosVentas.CDSVentaCabID_GARANTE.NewValue)+
                              ' Cambia Garantia','FACVTA');
        end;
     END;
end;

procedure TFormCpbte_2.GenerarOrdenProduccionExecute(Sender: TObject);
begin
  inherited;
    if DMMain_FD.BuscaOP_PorFc(DatosVentas.CDSVentaCabID_FC.AsInteger) then
      Raise Exception.Create('Hay una orden de Produccion asociada-...');

  if (DSBase.State=dsBrowse) and (Not(dsBase.DataSet.IsEmpty)) and (FormCpbte_2.GenerarOProducion) and (DMMain_FD.HayProduccion) then
    begin
      if MessageDlg('Va a Generar el Rto.de Produccion, ejecuta el procedimiento??',mtConfirmation,mbYesNo,0,mbNo)=mrYes then
        DMStoreProcedure.GenerarRtoProduccion(DSBase.DataSet.FieldByName('ID_FC').AsInteger,
                                              'Genearcion por Vtas.');
    end;
end;

procedure TFormCpbte_2.GenerarRtoExecute(Sender: TObject);
begin
  inherited;
  if DSBase.DataSet.FieldByName('MUESTRAACOPIO').AsString<>'' then
    raise Exception.Create('No se puede hacer un rto cuando hay una acopio asociado...');
  //** aca se va a generar el Rto..
  if Not(DMBuscadores.GetHayRemitos(DatosVentas.CDSVentaCabID_FC.Value)) then
     begin
       if not(DSBase.DataSet.IsEmpty) then
         begin
           if Not(Assigned(FormBuscadorTipoCpbte)) then
             FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
           FormBuscadorTipoCpbte.TipoCpbte1:='RE';
           FormBuscadorTipoCpbte.TipoCpbte2:='';
           FormBuscadorTipoCpbte.TipoCpbte3:='';
           FormBuscadorTipoCpbte.CV        :='V';
           FormBuscadorTipoCpbte.Sucursal  := DatosVentas.CDSVentaCabSUCURSAL.Value;
           FormBuscadorTipoCpbte.ShowModal;
           SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
           IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;

           if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
             begin
               if Not(Assigned(FormRemitos)) Then
                 FormRemitos:=TFormRemitos.Create(self);
               FormRemitos.Agregar.Execute;
               AgregarCabRto;
               if Not(Assigned(FormControlNroRto)) then
                 FormControlNroRto:=TFormControlNroRto.Create(Self);
               FormControlNroRto.Let:= DatosRemitos.CDSRtoCabLETRARTO.AsString;
               FormControlNroRto.Suc:= DatosRemitos.CDSRtoCabSUCRTO.AsString;
               FormControlNroRto.Num:= DatosRemitos.CDSRtoCabNUMERORTO.AsString;
               FormControlNroRto.ShowMOdal;

               if (FormControlNroRto.ModalResult=mrOk) then
                 begin
                   if (FormControlNroRto.Let<> DatosRemitos.CDSRtoCabLETRARTO.Value) or
                      (FormControlNroRto.Suc<> DatosRemitos.CDSRtoCabSUCRTO.Value) or
                      (FormControlNroRto.Num<> DatosRemitos.CDSRtoCabNUMERORTO.Value) Then
                   DatosRemitos.CDSRtoCabCPTE_MANUAL.Value:='S';
                   DatosRemitos.CDSRtoCabLETRARTO.Value:=FormControlNroRto.Let;
                   DatosRemitos.CDSRtoCabSUCRTOSetText(DatosRemitos.CDSRtoCabSUCRTO,FormControlNroRto.Suc);
                   DatosRemitos.CDSRtoCabNUMERORTOSetText(DatosRemitos.CDSRtoCabNUMERORTO,FormControlNroRto.Num);
                 end;
               DatosVentas.CDSVentaDet.First;
               while Not(DatosVentas.CDSVentaDet.Eof)  do
                 begin
                   while Not(DatosVentas.CDSVentaDet.Eof)  Do // Ingreso el detalle
                     begin
                       AgregarDetRto;
                       DatosVentas.CDSVentaDet.Next;
                     end;
                 end;
               FormRemitos.Confirma.Execute;
               DMMain_FD.fdcGestion.StartTransaction;
               Try
                 DMMain_FD.QGravarNroRto_Factura.Close;
                 DMMain_FD.QGravarNroRto_Factura.ParamByName('id_rto').Value:= DatosRemitos.CDSRtoCabID_RTO.Value;
                 DMMain_FD.QGravarNroRto_Factura.ParamByName('numero').Value:= DatosRemitos.CDSRtoCabNROCPBTE.Value;
                 DMMain_FD.QGravarNroRto_Factura.ParamByName('id_fc').Value := DatosVentas.CDSVentaCabID_FC.Value;
                 DMMain_FD.QGravarNroRto_Factura.ExecSQL;
                 DMMain_FD.fdcGestion.Commit;
               Except
                 DMMain_FD.fdcGestion.Rollback;
                 ShowMessage('No se pudo marcar la Factura');
               End;
             end;
         end;
     end
   else
     ShowMessage('Ya tiene Rto esta factura....');
end;

procedure TFormCpbte_2.GenerarTxExecute(Sender: TObject);
begin
  inherited;
  with DatosVentas do
  begin
    if (CDSVentaCabMUESTRAESFRANQUICIA.Value='S') and (CDSVentaDetAFECTA_STOCK.AsString='N') then
      begin
        GeneraTx:=False;
        VerificaFranquicia(1);
        if GeneraTx then
          begin
            if Not(Assigned(FormTransferencias)) then
              FormTransferencias:=TFormTransferencias.Create(Self);
            FormTransferencias.Show;
            FormTransferencias.DepositoPorDefecto:=DatosVentas.CDSVentaCabDEPOSITO.AsInteger;
            FormTransferencias.Agregar.Execute;
            FormTransferencias.CDSTranCabDEPOSITO_ORIGENSetText(FormTransferencias.CDSTranCabDEPOSITO_ORIGEN,DatosVentas.CDSVentaCabDEPOSITO.AsString);
            FormTransferencias.CDSTranCabDEPOSITO_DESTINOSetText(FormTransferencias.CDSTranCabDEPOSITO_DESTINO,IntToStr(DepositoDestino));
            FormTransferencias.CDSTranCabOBS1.Value:='Por Facturación de Fanquicia:'+CDSVentaCabNOMBRE.Value;
            FormTransferencias.CDSTranCabOBS2.Value:='Fc.Nro:'+CDSVentaCabNROCPBTE.AsString;
            FormTransferencias.CDSTranCabID_FACTURA_FRANQUICIA.Value:=CDSVentaCabID_FC.Value;

            DatosVentas.CDSVentaDet.First;
            while not(DatosVentas.CDSVentaDet.eof) do
              begin
                FormTransferencias.CDSTranDet.Append;
                FormTransferencias.CDSTranDetCODIGOSetText(FormTransferencias.CDSTranDetCODIGO,DatosVentas.CDSVentaDetCODIGOARTICULO.AsString);
                FormTransferencias.CDSTranDetCANTIDADSetText(FormTransferencias.CDSTranDetCANTIDAD,DatosVentas.CDSVentaDetCANTIDAD.AsString);
                FormTransferencias.CDSTranDet.Post;
                DatosVentas.CDSVentaDet.Next;
              end;
          end;
      end
    else
      ShowMessage('No se permite esta operacion, por no ser franquicia o el stock ya se movio')
  end;
end;

procedure TFormCpbte_2.GravarNumeroOperacionExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State = dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    begin
      if Not(Assigned(FormNumeroOperacion)) then
        FormNumeroOperacion    :=TFormNumeroOperacion.Create(Self);
      FormNumeroOperacion.Id   :=DatosVentas.CDSVentaCabID_FC.Value;
      FormNumeroOperacion.Tipo :='FV';
      if (DatosVentas.CDSVentaCabNUMERO_OPERACION.AsString='') or (length(DatosVentas.CDSVentaCabNUMERO_OPERACION.AsString)<8) then
        FormNumeroOperacion.Anio:= Copy(DateToStr(DatosVentas.CDSVentaCabFECHAVTA.AsDateTime),7,4)
      else
        begin
          FormNumeroOperacion.Anio  := Copy(DatosVentas.CDSVentaCabNUMERO_OPERACION.AsString,1,4);
          FormNumeroOperacion.Numero:= Copy(DatosVentas.CDSVentaCabNUMERO_OPERACION.AsString,5,4);
        end;
      FormNumeroOperacion.ShowModal;
      Recuperar.Execute;
    end;
end;

procedure TFormCpbte_2.GrupoDetalleExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormAgrupamientoDetalle)) then
    FormAgrupamientoDetalle:=TFormAgrupamientoDetalle.Create(Self);
  FormAgrupamientoDetalle.Id:=DSBase.DataSet.FieldByName('id_fc').Value;
  FormAgrupamientoDetalle.showModal;

end;


procedure TFormCpbte_2.HacerNotaCreditoExecute(Sender: TObject);
var estado,caja:integer;
convalores:boolean;
Leyenda:String;
Qtp:TFDQuery;
begin
  inherited;
  if (DMMain_FD.AutorizadoHacerNC=False) Then
    raise Exception.Create('No esta Autorizado para esta Operacion....');

  if DSBase.DataSet.FieldByName('MUESTRAID_NC').AsString<>'' then
    Raise Exception.Create('Ya hay una Nota de credito...');



  Leyenda:='ANULA FC-'+' ('+DSBase.DataSet.FieldByName('ID_Fc').AsString+') '+DSBase.DataSet.FieldByName('LetraFac').Value+'-'+
           DSBase.DataSet.FieldByName('SucFac').Value+'-'+DSBase.DataSet.FieldByName('NumeroFac').Value;
  if (DSBase.State=dsBrowse) and  Not(DSBase.DataSet.IsEmpty) and (DSBase.DataSet.FieldByName('TIPOCPBTE').Value<>'NC') then
    begin
      NroFacAnular  :=DatosVentas.CDSVentaCabNROCPBTE.Value;
      ExportarXML.Execute;
      if Not(Assigned(FormTransformaFactura)) then
        FormTransformaFactura                := TFormTransformaFactura.Create(FormCpbte_2);
      FormTransformaFactura.sucursal         := DSBase.DataSet.FieldByName('sucursal').Value;
      FormTransformaFactura.Numero           := DSBase.DataSet.FieldByName('NumeroFac').Value;
      FormTransformaFactura.Prefijo          := DSBase.DataSet.FieldByName('SucFac').Value;
      FormTransformaFactura.Letra            := DSBase.DataSet.FieldByName('LetraFac').Value;
      FormTransformaFactura.Tag              := 99;// para indicar que es Nota de Credito
      FormTransformaFactura.Fiscal           := DSBase.DataSet.FieldByName('INGRESA_LIBRO_IVA').Value;
      if pcDetalleFactura.ActivePage=pagEntregas then
        FormTransformaFactura.Tag:=98;

      if Tag=98 then
        Leyenda:='Nc Sobre FC-'+' ('+DSBase.DataSet.FieldByName('ID_Fc').AsString+') '+DSBase.DataSet.FieldByName('LetraFac').Value+'-'+
                  DSBase.DataSet.FieldByName('SucFac').Value+'-'+DSBase.DataSet.FieldByName('NumeroFac').Value;

      FormTransformaFactura.Leyenda          := Leyenda;
      FormTransformaFactura.Deposito         := DSBase.DataSet.FieldByName('Deposito').Value;
      FormTransformaFactura.cbTipo.ItemIndex := 1; // lo pone en NC
      FormTransformaFactura.cbTipo.Enabled   := False;
      FormTransformaFactura.Showmodal;
      if (FormTransformaFactura.Transformada) then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
            try
              // **** Ingreso en el Log File  **************
              DMMain_FD.LogFileFD(0,5,'Geneacion de N.C desde Factura: '+ DatosVentas.CDSVentaCabTIPOCPBTE.OldValue+'-'+ DatosVentas.CDSVentaCabCLASECPBTE.OldValue+'-'+
                                  DatosVentas.CDSVentaCabNROCPBTE.OldValue+' Cliente: '+DatosVentas.CDSVentaCabRAZONSOCIAL.Value+' Importe: '+ FormatFloat('0.00',DatosVentas.CDSVentaCabTOTAL.AsFloat),
                                  'FACVTA');
               // ******************************************
              DMMain_FD.fdcGestion.Commit;
            except
              DMMain_FD.fdcGestion.Rollback;
              ShowMessage('No se pudo gravo el Log ...');
            end;
          DatoNew   :=IntToStr(FormTransformaFactura.IdFactura);
          TipoCpbte :='NC';
          Recuperar.Execute;

          if FormTransformaFactura.Tag=98 then
            ReCalcularTodo.Execute;

          if (DSBase.DataSet.FieldByName('TIPOCPBTE').Value='NC') and (DSBase.DataSet.FieldByName('ASOCIADO_ID_CPBTE').Value>-1) then
            begin
              DMMain_FD.APlicarNC_Venta(DSBase.DataSet.FieldByName('CODIGO').AsString,
                                        DSBase.DataSet.FieldByName('ASOCIADO_ID_CPBTE').AsInteger,
                                        DSBase.DataSet.FieldByName('ID_FC').AsInteger );

//              Qtp            := TFDQuery.Create(nil);
//              Qtp.Connection := DMMain_FD.fdcGestion;
//              Qtp.SQL.Text   := 'select c.Tipocpbte from fcvtacab c where c.id_fc='+DSBase.DataSet.FieldByName('ASOCIADO_ID_CPBTE').AsString;
//              Qtp.Open;
//
//              if not(Assigned(FormAplicacionesCCVta_2)) then
//                FormAplicacionesCCVta_2:=TFormAplicacionesCCVta_2.Create(Self);
//              FormAplicacionesCCVta_2.FormStyle     := fsNormal;
//              FormAplicacionesCCVta_2.Visible       := False;
//              FormAplicacionesCCVta_2.edCodigo.Text := DSBase.DataSet.FieldByName('CODIGO').AsString;
//              FormAplicacionesCCVta_2.VerCCte.Execute;
//              FormAplicacionesCCVta_2.CDSMovCC.First;
//              FormAplicacionesCCVta_2.CDSMovCC.Locate('id_cpbte ;TipoCpbte',VarArrayOf([DSBase.DataSet.FieldByName('ASOCIADO_ID_CPBTE').AsString,qtp.Fields[0].AsString]),[]);
//              FormAplicacionesCCVta_2.CDSACta.Locate('id_cpbte ; TipoCpbte', VarArrayOf([DatosVentas.CDSVentaCabID_FC.AsString,'NC']), []);
//              if (Trunc(FormAplicacionesCCVta_2.CDSMovCCSALDO.AsFloat*100)>0) then
//                begin
//                  FormAplicacionesCCVta_2.cxGrid1DBTableView1DragDrop( Sender, FormAplicacionesCCVta_2.DBGActa,10,10);
//                end;
//              Qtp.Close;
//              FreeAndNil(Qtp);
//              FormAplicacionesCCVta_2.Confirma.Execute;
//              FormAplicacionesCCVta_2.Close;
//              FreeAndNil(FormAplicacionesCCVta_2);

            end;

        end;
    end;
end;

procedure TFormCpbte_2.btAnexosTrClick(Sender: TObject);
begin
  inherited;
 // DatosRemitos.CDSChoferes.Close;
 // DatosRemitos.CDSChoferes.Params.ParamByName('id').Value:=dbcTransporte.KeyValue;
 // DatosRemitos.CDSChoferes.Open;

  if DSBase.DataSet.FieldByName('TRANSPORTE_UNIDAD').AsString='' then
    FormAnexosrtoTransporte.id_Unidad     := -1
  else
    FormAnexosrtoTransporte.id_Unidad     := DSBase.DataSet.FieldByName('TRANSPORTE_UNIDAD').Value;

  if DSBase.DataSet.FieldByName('ID_CHOFER').AsString='' then
    FormAnexosrtoTransporte.id_Chofer     := -1
  else
    FormAnexosrtoTransporte.id_Chofer     := DSBase.DataSet.FieldByName('ID_CHOFER').Value;

  if DSBase.DataSet.FieldByName('TRANSPORTE_ADICIONAL').AsString='' then
    FormAnexosrtoTransporte.id_anexo      := -1
  else
    FormAnexosrtoTransporte.id_anexo      := DSBase.DataSet.FieldByName('TRANSPORTE_ADICIONAL').Value;

  if DSBase.DataSet.FieldByName('ID_TRANSPORTE').AsString='' then
    FormAnexosrtoTransporte.id_Transporte := -1
  else
    FormAnexosrtoTransporte.id_Transporte:=DSBase.DataSet.FieldByName('ID_TRANSPORTE').Value;

  if Not(Assigned(FormAnexosRtoTransporte)) then
    FormAnexosRtoTransporte:=FormAnexosRtoTransporte.Create(Self);
  FormAnexosRtoTransporte.ShowModal;

  if FormAnexosRtoTransporte.ModalResult=mrOk then
    begin
      DatosVentas.CDSVentaCabID_CHOFER.Value                 := FormAnexosrtoTransporte.id_Chofer;
      DatosVentas.CDSVentaCabTRANSPORTE_ADICIONAL.Value      := FormAnexosrtoTransporte.id_anexo;
      DatosVentas.CDSVentaCabID_TRANSPORTE.Value             := FormAnexosrtoTransporte.id_Transporte;
      DatosVentas.CDSVentaCabMUESTRADOMINIOUNIDADTR.Value    := FormAnexosRtoTransporte.Dominio_Tr;
      DatosVentas.CDSVentaCabTRANSPORTE_UNIDAD.Value         := FormAnexosRtoTransporte.id_Unidad;
      DatosVentas.CDSVentaCabMUESTRA_UNI_TRANSPORTE.AsString := FormAnexosRtoTransporte.Unidad_Tr;
    end;
end;

procedure TFormCpbte_2.btImprimirRtosClick(Sender: TObject);
begin
  inherited;
  frFactura.PrintOptions.Printer:=PrNomCpbte;
  frFactura.SelectPrinter;

  frFactura.LoadFromFile(DMMain_FD.PathReportesLst+'\LstRtos.fr3');

  //DMMain_FD.QOpciones.Close;

  //Preview:='S';
  frFactura.PrepareReport;
  frfactura.PrintOptions.ShowDialog:=True;
  frFactura.ShowReport
end;

procedure TFormCpbte_2.btOkDetAdicionalClick(Sender: TObject);
begin
  inherited;
  pnDetalleAdicional.Visible:=False;
  FormCpbte_2.DBGrillaDetalle.SetFocus;
  FormCpbte_2.DBGrillaDetalle.SelectedIndex:=5;
end;

procedure TFormCpbte_2.BorrarAplicacionesExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spBorraAplicaciones.Close;
    spBorraAplicaciones.ParamByName('TIPO').Value:=DatosVentas.CDSVentaCabTIPOCPBTE.Value;
    spBorraAplicaciones.ParamByName('ID').Value  :=DatosVentas.CDSVentaCabID_FC.Value;
    spBorraAplicaciones.ExecProc;
    DMMain_FD.LogFileFD(0,2,'Modificación Fac.Venta: '+ DatosVentas.CDSVentaCabNROCPBTE.Value+' Cliente: '+
                          DatosVentas.CDSVentaCabRAZONSOCIAL.Value+' Importe :'+FormatFloat('0.00',DatosVentas.CDSVentaCabTOTAL.AsFloat)+
                          ' Borrado de Aplicaciones','FACVTA');

    DMMain_FD.fdcGestion.Commit;
    spBorraAplicaciones.Close;
  Except
    spBorraAplicaciones.Close;
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se Borrarorn las aplicaciones de pago en la factura....!');
  end;
end;

procedure TFormCpbte_2.BorrarCAEExecute(Sender: TObject);
begin
  inherited;
  if (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='N') and (StrToFloat(DatosVentas.CDSVentaCabCAE.AsString)>=0) then
    Raise Exception.Create (' No es Facturas Electrónica ...');

  IF (NOT (DatosVentas.CDSVentaCab.IsEmpty)) and (DMMain_FD.UsuarioAdministrador) THEN
    BEGIN
      DMMain_FD.fdcGestion.StartTransaction;
      try
        // Borrado de Cae LOG
        DMMain_FD.LogFileFD(0,2,'Borrado de CAE Fc.Nro: '+
                              DatosVentas.CDSVentaCabNROCPBTE.Value+
                             ' Cliente: '+
                              DatosVentas.CDSVentaCabRAZONSOCIAL.Value+
                             ' Importe Fc: '+
                              FormatFloat('0.00',DatosVentas.CDSVentaCabTOTAL.asfloat)+
                             ' Nro.CAE.:'+DatosVentas.CDSVentaCabCAE.Value,
                             ' FACVTA');
        // ******************************************
        DMStoreProcedure.QBorrarCAEFD.Close;
        DMStoreProcedure.QBorrarCAEFD.ParamByName('id').Value :=DatosVentas.CDSVentaCabID_FC.Value;
        DMStoreProcedure.QBorrarCAEFD.ExecSQL;
        DMStoreProcedure.QBorrarCAEFD.Close;
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        DMStoreProcedure.QBorrarCAEFD.Close;
      end;
      Recuperar.Execute;
    END
  else
    ShowMessage('Debe ser Administrador... para esta Operacion...');

end;

procedure TFormCpbte_2.BorrarConsolidacionExecute(Sender: TObject);
begin
  inherited;
  if Not(DSBase.DataSet.IsEmpty) then
    begin
      QBorrarConsolidacion.Close;
      QBorrarConsolidacion.ParamByName('id').Value:=DSBase.DataSet.FieldByName('id_fc').Value;
      QBorrarConsolidacion.ExecSQL();
      QBorrarConsolidacion.Close;
    end
  else
    ShowMessage('No ha datos para Procesar...');
end;

procedure TFormCpbte_2.BorrarExecute(Sender: TObject);
var Cadena:String;
begin
  if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC') and (DatosVentas.CDSVentaCabNC_CONTADO.Value='S')  then
    if DMMain_FD.CajaCerradaNC(DatosVentas.CDSVentaCabID_FC.Value,DatosVentas.CDSVentaCabCLASECPBTE.Value) then
      Raise Exception.Create (' Caja Cerrada....');

  if (Not(DMMain_FD.UsuarioAdministrador)) Then
    Raise Exception.Create (' No esta Autorizado para esta Operación....');

  if (DMMain_FD.GetFcConAplicacion(DatosVentas.CDSVentaCabID_FC.Value,DatosVentas.CDSVentaCabTIPOCPBTE.Value)) Then
    Raise Exception.Create (' Facturas con pagos asignados....');

  if (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentas.CDSVentaCabCAE.AsString)>0) then
    Raise Exception.Create (' Facturas Electrónica con CAE, no se puede borrar....');

  if (DMMain_FD.HayAcopios(DSBase.DataSet.FieldByName('id_fc').Value)) Then
    RAISE Exception.Create('Hay Acopios asociado al comprobante... no se puede hacer la operación....');

  if (DMMain_FD.UsuarioAdministrador) Then
    begin
      if (MessageDlg('Está por hacer una opreación de borrado.. Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes) Then
        if Not(DatosVentas.CDSVentaCab.IsEmpty) Then
          begin
            DMMain_FD.fdcGestion.StartTransaction;
            try
              // **** Ingreso en el Log File  **************
              DMMain_FD.LogFileFD(0,4,'Borrado Fac.Venta(FormCpbte): '+ DatosVentas.CDSVentaCabNROCPBTE.Value+'('+DatosVentas.CDSVentaCabID_FC.AsString+')'+
                                  ' Cliente: '+ DatosVentas.CDSVentaCabRAZONSOCIAL.Value+
                                  ' Importe: '+ FormatFloat('0.00',DatosVentas.CDSVentaCabTOTAL.asfloat),
                                  'FACVTA');
             // ******************************************
              DatosVentas.QBuscaRtos.Close;
              DatosVentas.QBuscaRtos.ParamByName('id').Value:=DatosVentas.CDSVentaCabID_FC.Value;
              DatosVentas.QBuscaRtos.Open;
              if DatosVentas.QBuscaRtos.RecordCount>0 then
                begin
                 if MessageDlg('Hay remitos, que afectan al Cpbte. Los recupera para usar nuevamente..???('+IntToStr(DatosVentas.QBuscaRtos.RecordCount)+')',mtConfirmation,mbYesNo,0)=mrYes Then
                   begin
                     Cadena:='';
                     if DMMain_FD.RecuperarLoteRtos(DSBase.DataSet.FieldByName('id_fc').Value) then
                       begin
                         DatosVentas.QBuscaRtos.First;
                         while not(datosVentas.QBuscaRtos.Eof) do
                           begin
                             if cadena='' then
                               Cadena:= DatosVentas.QBuscaRtosNROCPBTE.AsString+#13
                             else
                               Cadena:=Cadena+DatosVentas.QBuscaRtosNROCPBTE.AsString+#13;
                             DatosVentas.QBuscaRtos.Next;
                           end;
                         ShowMessage('Remitos Recuperados....:'+#13+Cadena);
                       end;
                   end;
                end;
              //****** Paso a la Paplera ************************************************************
              Pasar_A_Papelera.Execute;
//              DMMain_FD.Guardar_a_Papelera('FCVTA','CAB'+DatosVentas.CDSVentaCabTIPOCPBTE.Value+
//                                                        DatosVentas.CDSVentaCabNROCPBTE.Value,
//                                                        DatosVentas.CDSVentaCab);
//              DMMain_FD.Guardar_a_Papelera('FCVTA','DET'+DatosVentas.CDSVentaCabTIPOCPBTE.Value+
//                                                        DatosVentas.CDSVentaCabNROCPBTE.Value,
//                                                        DatosVentas.CDSVentaDet);
              //***************************************************************************************
              DatosVentas.CDSVentaCab.Delete;
              DatosVentas.CDSVentaCab.ApplyUpdates(0);

              DMMain_FD.fdcGestion.Commit;

              DatosVentas.CDSVentaCab.close;
              DatosVentas.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
              DatosVentas.CDSVentaCab.Params.ParamByName('id').Clear;
              DatosVentas.CDSVentaCab.Open;

              DatosVentas.CDSVentaDet.Close;
              DatosVentas.CDSVentaDet.Params.ParamByName('id').Clear;
              DatosVentas.CDSVentaDet.Open;

              DatosVentas.CDSImpuestos.Close;
              DatosVentas.CDSImpuestos.Params.ParamByName('id').Clear;
              DatosVentas.CDSImpuestos.Open;
              if Anulado<>nil Then FreeAndNil(Anulado);

              DatosVentas.CDSVentaCab.EmptyDataSet;
              DatosVentas.CDSVentaDet.EmptyDataSet;
              DatosVentas.CDSImpuestos.EmptyDataSet;
              DatosVentas.CDSVtaDetConsig.EmptyDataSet;
            except
              DMMain_FD.fdcGestion.Rollback;
              ShowMessage('Transacción no finalizada....!');
            end
          end
        else
          ShowMessage('No hay registro Seleccionado')
    end
  else
    ShowMessage('Operación no permitida');
  pcDetalleFactura.ActivePageIndex := 0;
  btNuevo.SetFocus;
  //inherited;
end;

procedure TFormCpbte_2.pcDetalleFacturaChange(Sender: TObject);
begin
  inherited;
  pnAcopio.Visible:=pcDetalleFactura.ActivePageIndex=0;
end;

procedure TFormCpbte_2.pcDetalleFacturaEnter(Sender: TObject);
var Mensaje:String;
begin
  inherited;
  Mensaje:='';
  if DSBase.State=dsInsert then
  begin
    IF (RxCCodigo.Text = '') OR
       (RxCLdr.Text = '') OR
       (RxCSucursal.Text = '') OR
       (RxCDeposito.Text = '') OR
       (DatosVentas.CDSVentaCabMUESTRACOMPROBANTE.Value='') OR
       (RxCConVta.TExt='') OR
       (dbeSuc.Text = '') OR
       (dbeMuestraVendedor.Text = '') OR
       (dbeNumero.Text = '') OR
       (Trim(copy(dbeFechaVta.Text,1,2)) = '') or ((dbcCaja.Text='') and (dbcheckNc_Contado.Checked=True)) THEN
      BEGIN
        if (RxCCodigo.Text = '') Then Mensaje:='-Falta Codigo Cliente'+#13;

        if (RxCLdr.Text = '') Then Mensaje:= Mensaje+'-Falta Codigo Ldr'+#13;
        if (RxCSucursal.Text = '') Then Mensaje:='-Falta Codigo Sucursal'+#13;
        if (RxCDeposito.Text = '') Then Mensaje:='-Falta Codigo Deposito'+#13;
        if (DatosVentas.CDSVentaCabMUESTRACOMPROBANTE.Value='') Then Mensaje:='-Falta Tipo Comp.'+#13;
        if (RxCConVta.TExt='') Then Mensaje:='-Falta Cond.de Vta.'+#13;
        if (dbeSuc.Text = '') Then Mensaje:='-Falta Prefijo'+#13;
        if (dbeMuestraVendedor.Text = '') Then Mensaje:='-Falta Vendedor'+#13;
        if (dbeNumero.Text = '') Then Mensaje:='-Falta Nro.Cpbte.'+#13;
        if (dbeFechaVta.Text = '') Then Mensaje:='-Falta Fecha'+#13;

        ShowMessage('Datos en la Cabecera Incompletos....'+#13+Mensaje);
        IF pcDetalleFactura.ActivePageIndex <> 0 THEN
          pcDetalleFactura.ActivePageIndex := 0;
        if ModoDespachante1.Checked then
          pcDetalleFactura.ActivePageIndex := 2;

        pnCabecera.Enabled := True;
        RxCCodigo.SetFocus;
      END
  else
    begin
      if (DatosVentas.CDSVentaCabTIPOCPBTE.Value<>'NC') and
         (DSBase.State in [dsInsert]) and
		     (DMMain_FD.ControlaDeuda) then
            DatosVentas.CreditoExedido;
      if ModoDespachante1.Checked then
        pnCabecera.Enabled      :=True
      else
        pnCabecera.Enabled      :=False;

      pcDetalleFactura.Enabled:=True;
      // Modo Despachante ...............
      // Despachante ingresar Concepto Automatico de Honorarios
      // **********************************************
      if ModoDespachante1.Checked then
        begin
          if Trim(CodHonorarios)<>'' then
            begin
              if not(DatosVentas.CDSVentaDet.Locate('CodigoArticulo',CodHonorarios,[])) then
                begin
                  DatosVentas.CDSVentaDetCodigoArticuloSetText(DatosVentas.CDSVentaDetCodigoArticulo,CodHonorarios);
                  DatosVentas.CDSVentaDetCantidadSetText(DatosVentas.CDSVentaDetCantidad,'1');
                  DatosVentas.CDSVentaDetUnitario_TotalSetText(DatosVentas.CDSVentaDetUnitario_Total,'1');
                  DBGrillaDetalle.SelectedIndex:=6;
                end;
            end;
        end;
    end;
  end;
end;

procedure TFormCpbte_2.VerAplicacionesExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormAplicacionesNCVta)) Then
    FormAplicacionesNCVta:=TFormAplicacionesNCVta.Create(FormCpbte_2);
  FormAplicacionesNCVta.CDSAplica.Close;
  FormAplicacionesNCVta.CDSAplica.Params.ParamByName('id').Value   :=DatosVentas.CDSVentaCabID_FC.Value;
  FormAplicacionesNCVta.CDSAplica.Params.ParamByName('Tipo').Value :=DatosVentas.CDSVentaCabTIPOCPBTE.Value;
  FormAplicacionesNCVta.CDSAplica.Params.ParamByName('clase').Value:=DatosVentas.CDSVentaCabCLASECPBTE.Value;
  FormAplicacionesNCVta.CDSAplica.Open;
  FormAplicacionesNCVta.Show;
end;

procedure TFormCpbte_2.VerCodigoAlternativo1Click(Sender: TObject);
begin
  inherited;
  VerCodigoAlternativo1.Checked:=Not(VerCodigoAlternativo1.Checked);
  if VerCodigoAlternativo1.Checked then
    DBGrillaDetalle.Columns[1].Title.Caption:='Cod.Alt'
  else
    DBGrillaDetalle.Columns[1].Title.Caption:='Codigo';
   DBGrillaDetalle.Refresh;
end;

procedure TFormCpbte_2.VerCtaCteExecute(Sender: TObject);
begin
  if Not(Assigned(FormCtaCteVta)) then
    FormCtaCteVta:=TFormCtaCteVta.Create(self);
  FormCtaCteVta.ceCliente.Text      :=DSBase.DataSet.FieldByName('codigo').AsString;
  FormCtaCteVta.edNombreCliente.Text:=DSBase.DataSet.FieldByName('nombre').AsString;
  FormCtaCteVta.TraerCtaCte.Execute;

  FormCtaCteVta.Show;

end;

procedure TFormCpbte_2.VerEntregasExecute(Sender: TObject);
begin
  inherited;
  DatosVentas.CDSVentasEntregas.close;
  DatosVentas.CDSVentasEntregas.Params.ParamByName('id').Value        :=StrToInt(DatoNew);
  DatosVentas.CDSVentasEntregas.Open;
  if Not(Assigned(FormDetalleEntregas)) Then
    FormDetalleEntregas:=TFormDetalleEntregas.Create(self);
  FormDetalleEntregas.DataSource :=DatosVentas.CDSVentasEntregas;
  FormDetalleEntregas.ShowModal;


       //DatosVentas.
end;

procedure TFormCpbte_2.VerHojaCargaExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormMuestraHRuta)) then
    FormMuestraHRuta:=TFormMuestraHRuta.Create(self);
  FormMuestraHRuta.Id:=DSBase.DataSet.FieldByName('id_fc').Value;
  FormMuestraHRuta.Tipo:=DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
  FormMuestraHRuta.ShowModal;
end;

procedure TFormCpbte_2.DBGrillaDetalleEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormCpbte_2.RxCSucursalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentas.CDSVentaCabSUCURSAL.Clear;
      DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE.Clear;
      DatosVentas.CDSVentaCabMUESTRASUCURSAL.Clear;
      DatosVentas.CDSVentaCabMUESTRACOMPROBANTE.Clear;
      DatosVentas.CDSVentaCabLETRAFAC.Clear;
      DatosVentas.CDSVentaCabSUCFAC.Clear;
      DatosVentas.CDSVentaCabNUMEROFAC.Clear;
    end;
end;

procedure TFormCpbte_2.RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE.Clear;
      DatosVentas.CDSVentaCabMUESTRACOMPROBANTE.Clear;
      DatosVentas.CDSVentaCabLETRAFAC.Clear;
      DatosVentas.CDSVentaCabSUCFAC.Clear;
      DatosVentas.CDSVentaCabNUMEROFAC.Clear;
    end;
end;

procedure TFormCpbte_2.RxCCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentas.CDSVentaCabCODIGO.Clear;
      DatosVentas.CDSVentaCabNOMBRE.Clear;
      DatosVentas.CDSVentaCabLDR.Clear;
      DatosVentas.CDSVentaCabMUESTRALDR.Clear;
      DatosVentas.CDSVentaCabCONDICIONVTA.Clear;
      DatosVentas.CDSVentaCabMUESTRACONDVENTA.Clear;
      DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE.Clear;
      DatosVentas.CDSVentaCabMUESTRACOMPROBANTE.Clear;
    end;

end;

procedure TFormCpbte_2.RxCLdrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentas.CDSVentaCabLDR.Clear;
      DatosVentas.CDSVentaCabMUESTRALDR.Clear;
    end;
end;

procedure TFormCpbte_2.RxCDepositoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentas.CDSVentaCabDEPOSITO.Clear;
      DatosVentas.CDSVentaCabMUESTRADEPOSITO.Clear;
    end;
end;

procedure TFormCpbte_2.RxCConVtaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentas.CDSVentaCabVENDEDOR.Clear;
      DatosVentas.CDSVentaCabMUESTRAVENDEDOR.Clear;
    end;
end;

procedure TFormCpbte_2.BuscarVendedorExecute(Sender: TObject);
begin
  inherited;
  DatosVentas.CDSBuscaVendedor.Close;
  DatosVentas.CDSBuscaVendedor.Open;
  ComBuscadorVendedores.Execute;
  if ComBuscadorVendedores.rOk Then
    DatosVentas.CDSVentaCabVENDEDORSetText(DatosVentas.CDSVentaCabVENDEDOR,ComBuscadorVendedores.Id);
  DatosVentas.CDSBuscaVendedor.Close;
end;


procedure TFormCpbte_2.BusquedaPorReferenciaExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(self);
  FormBuscarPorNroReferenica.CompraVta:='V';
  FormBuscarPorNroReferenica.ShowModal;
  IF FormBuscarPorNroReferenica.Id > 0 THEN
    BEGIN
      if FormBuscarPorNroReferenica.Tipo<>'FO' then
        begin
          TipoCpbte:= FormBuscarPorNroReferenica.Tipo;
          DatoNew  := IntToStr(FormBuscarPorNroReferenica.id);
          Recuperar.Execute;
        end
      else
        begin
          if Not(Assigned(FormCpbteCtdo_2)) then
            FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
          FormCpbteCtdo_2.DatoNew:=IntToStr(FormBuscarPorNroReferenica.id);
          FormCpbteCtdo_2.TipoCpbte:='FO';
          FormCpbteCtdo_2.Recuperar.Execute;
          FormCpbteCtdo_2.Show;
        end;
    end
  else
    ShowMessage('No Hay Comprobante con ese Nro...');
end;

procedure TFormCpbte_2.DBGrillaDetalleEnter(Sender: TObject);
begin
  inherited;
  if DBGrillaDetalle.SelectedIndex<1 then
    DBGrillaDetalle.SelectedIndex:=1;
  sbEstado.Panels[0].Text:=' F11:Ver Mov.Art-Ctr+F11:Cta.Cte-Ctr+F:Frezar-Ctr(+)Det.Adic-Ctr+F10 Pedido';
  if DMMain_FD.ModificaPrecioVta=False Then
    sbEstado.Panels[0].Text:=sbEstado.Panels[0].Text+'-F3:Autorización Cambio de Precio';
end;

procedure TFormCpbte_2.DBGrillaDetalleExit(Sender: TObject);
begin
  inherited;
  sbEstado.Panels[0].Text:='';
  sbEstado.Panels[1].Text:='';
end;

procedure TFormCpbte_2.rxcVendedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if DMMain_FD.ModificaVendedor Then
    if (key=vk_delete) or (Key=VK_back) Then
      begin
        DatosVentas.CDSVentaCabVENDEDOR.Clear;
        DatosVentas.CDSVentaCabMUESTRAVENDEDOR.Clear;
      end;
end;

procedure TFormCpbte_2.SaltearColumnadesctoenDetalle1Click(Sender: TObject);
begin
  inherited;
  SaltearColumnadesctoenDetalle1.Checked:=Not(SaltearColumnadesctoenDetalle1.Checked);
end;

procedure TFormCpbte_2.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frFactura.DesignReport;
end;

procedure TFormCpbte_2.sbEstadoMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  sbEstado.Hint:=sbEstado.Panels[0].Text;
  sbEstado.ShowHint:=True;
end;

procedure TFormCpbte_2.ToolBar1DblClick(Sender: TObject);
begin
  inherited;
  frGtia.DesignReport;
end;

procedure TFormCpbte_2.TransformarFCExecute(Sender: TObject);
var estado,caja:integer;
convalores:boolean;
begin
  inherited;
  if (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentas.CDSVentaCabCAE.AsString)>0) then
    Raise Exception.Create (' Facturas Electrónica con CAE, no se puede hacer....');

    if DMMain_FD.BuscaOP_PorFc(DatosVentas.CDSVentaCabID_FC.AsInteger) then
      Raise Exception.Create('Hay una orden de Produccion asociada -...');

  if (DSBase.State=dsBrowse) and (DMMain_FD.UsuarioAdministrador) and
     Not(DSBase.DataSet.IsEmpty)  then
  begin
    BorrarAplicaciones.Execute;
    ExportarXML.Execute;
    if Not(Assigned(FormTransformaFactura)) then
      FormTransformaFactura:=TFormTransformaFactura.Create(self);
    FormTransformaFactura.sucursal :=DSBase.DataSet.FieldByName('sucursal').Value;
    FormTransformaFactura.deposito :=DSBase.DataSet.FieldByName('deposito').Value;
    FormTransformaFactura.Numero   :=DSBase.DataSet.FieldByName('NumeroFac').Value;
    FormTransformaFactura.Prefijo  :=DSBase.DataSet.FieldByName('SucFac').Value;
    FormTransformaFactura.Letra    :=DSBase.DataSet.FieldByName('LetraFac').Value;
    FormTransformaFactura.Fiscal   :='*';

    FormTransformaFactura.Tag      :=0;
    FormTransformaFactura.Showmodal;
    if (FormTransformaFactura.Transformada )then
      begin
        convalores:=False;
        DMMain_FD.fdcGestion.StartTransaction;
        try
          if (DatosVentas.CDSVentaCabTIPOCPBTE.Value='FO') or ((DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC') and (DatosVentas.CDSVentaCabNC_CONTADO.Value='S')) then
            convalores:=True;
          if convalores then
            begin
               DMStoreProcedure.spAbreCajaFD.Close;
               DMStoreProcedure.spAbreCajaFD.ParamByName('idcomprobante').Value := DatosVentas.CDSVentaCabID_FC.Value;
               DMStoreProcedure.spAbreCajaFD.ParamByName('tipocpbte').Value     := DatosVentas.CDSVentaCabTIPOCPBTE.Value;
               DMStoreProcedure.spAbreCajaFD.ParamByName('clasecpbte').Value    := DatosVentas.CDSVentaCabCLASECPBTE.Value;
               DMStoreProcedure.spAbreCajaFD.ExecProc;
               estado:=DMStoreProcedure.spAbreCajaFD.ParamByName('estadoactual').Value;
               caja  :=DMStoreProcedure.spAbreCajaFD.ParamByName('caja').Value;
               DMStoreProcedure.spAbreCajaFD.Close;
             end;

          DMStoreProcedure.spBorraFcVtaCabFD.Close;
          DMStoreProcedure.spBorraFcVtaCabFD.ParamByName('id').Value:=DatosVentas.CDSVentaCabID_FC.Value;
          DMStoreProcedure.spBorraFcVtaCabFD.ExecProc;
          DMStoreProcedure.spBorraFcVtaCabFD.Close;

          if convalores then
            begin
              DMStoreProcedure.spCierraCajaFD.Close;
              DMStoreProcedure.spCierraCajaFD.ParamByName('id_caja').Value := caja;
              DMStoreProcedure.spCierraCajaFD.ParamByName('estado').Value  := estado;
              DMStoreProcedure.spCierraCajaFD.ExecProc;
              DMStoreProcedure.spCierraCajaFD.Close;
            end;
          // **** Ingreso en el Log File  **************
          DMMain_FD.LogFileFD(0,5,'Transformación Cpbte.Venta: Antes >> '+ DatosVentas.CDSVentaCabTIPOCPBTE.OldValue+'-'+ DatosVentas.CDSVentaCabCLASECPBTE.OldValue+'-'+
                               DatosVentas.CDSVentaCabNROCPBTE.OldValue+' Cliente: '+DatosVentas.CDSVentaCabRAZONSOCIAL.Value+' Importe: '+ FormatFloat('0.00',DatosVentas.CDSVentaCabTOTAL.AsFloat),
                               'FACVTA');
           // ******************************************
          DMMain_FD.fdcGestion.Commit;
        except
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('No se pudo realizar las operaciones de caja...');
        end;

        DatosVentas.CDSVentaCab.close;
        DatosVentas.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
        DatosVentas.CDSVentaCab.Params.ParamByName('id').Clear;
        DatosVentas.CDSVentaCab.Open;

        DatosVentas.CDSVentaDet.Close;
        DatosVentas.CDSVentaDet.Params.ParamByName('id').Clear;
        DatosVentas.CDSVentaDet.Open;

        DatosVentas.CDSImpuestos.Close;
        DatosVentas.CDSImpuestos.Params.ParamByName('id').Clear;
        DatosVentas.CDSImpuestos.Open;

        DatosVentas.CDSVtaSubDetalle.Close;
        DatosVentas.CDSVtaSubDetalle.Params.ParamByName('id').Clear;
        DatosVentas.CDSVtaSubDetalle.Open;

      end;
  end;
end;


procedure TFormCpbte_2.DatosClienteExecute(Sender: TObject);
begin
  inherited;
 { if DSBase.DataSet.FieldByName('Nombre').AsString<>'' then
    begin
      if Not(Assigned(FormDatosClienteCabeceraCpbte)) Then
        FormDatosClienteCabeceraCpbte:=TFormDatosClienteCabeceraCpbte.Create(Application);
      FormDatosClienteCabeceraCpbte.Tag :=1;
      FormDatosClienteCabeceraCpbte.ShowModal;
    end;
                    }

  DMMain_FD.ModificarDatosCliente(DSBase);

end;

procedure TFormCpbte_2.dbchCtayOrdenClick(Sender: TObject);
begin
  inherited;
//  if (DatosVentas.CDSVentaCab.State in [dsInsert]) then
//  begin
//  PagPorCtaOrden.TabVisible:=dbchCtayOrden.Checked;
//  if dbchCtayOrden.Checked then
//    begin
//      if Not(Assigned(FormProveedor_x_CtaOrden)) Then
//        FormProveedor_x_CtaOrden:= TFormProveedor_x_CtaOrden.Create(Self);
//      FormProveedor_x_CtaOrden.ShowModal;
//      if (FormProveedor_x_CtaOrden.ModalResult=mrOk ) and
//         (FormProveedor_x_CtaOrden.codigo<>'') then
//        begin
//          DatosVentas.CDSVentaCabPROVEEDORSetText(DatosVentas.CDSVentaCabPROVEEDOR,FormProveedor_x_CtaOrden.codigo);
//        end
//      else
//        begin
//          dbchCtayOrden.Checked:=False;
//          DatosVentas.CDSVentaCabPROVEEDOR.Clear;
//          if DatosVentas.CDSVtaDetConsig.RecordCount>0 then
//            begin
//              DatosVentas.CDSVtaDetConsig.Close;
//              DatosVentas.CDSVtaDetConsig.Params.ParamByName('id').Clear;
//              DatosVentas.CDSVtaDetConsig.Open;
//            end;
//
//        end;
//    end;
//  end;
  inherited;
  if (DatosVentas.CDSVentaCab.State in [dsInsert]) then
    begin
      PagPorCtaOrden.TabVisible:=dbchCtayOrden.Checked;
      if (dbchCtayOrden.Checked) then
        begin
          if Proveedor='' then
            begin
              if Not(Assigned(FormProveedor_x_CtaOrden)) Then
                FormProveedor_x_CtaOrden:= TFormProveedor_x_CtaOrden.Create(Self);
              FormProveedor_x_CtaOrden.ShowModal;
              if (FormProveedor_x_CtaOrden.ModalResult=mrOk ) and
                 (FormProveedor_x_CtaOrden.codigo<>'') then
                Proveedor:=FormProveedor_x_CtaOrden.codigo;
            end;

          if Proveedor<>'' then
            DatosVentas.CDSVentaCabPROVEEDORSetText(DatosVentas.CDSVentaCabPROVEEDOR,Proveedor)
          else
            begin
              dbchCtayOrden.Checked:=False;
              DatosVentas.CDSVentaCabPROVEEDOR.Clear;
              if DatosVentas.CDSVtaDetConsig.RecordCount>0 then
                begin
                  DatosVentas.CDSVtaDetConsig.Close;
                  DatosVentas.CDSVtaDetConsig.Params.ParamByName('id').Clear;
                  DatosVentas.CDSVtaDetConsig.Open;
                end;
            end;
          //*************************************************************
          ArchivoIni := TIniFile.Create(DMMain_FD.MainPath+DMMain_FD.UsuarioActivo+'consignacion.ini');
          ArchivoIni.WriteString('proveedor', 'codigo', Proveedor);
          ArchivoIni.Free;
          //*************************************************************
        end
      else
        begin
          dbchCtayOrden.Checked:=False;
          DatosVentas.CDSVentaCabPROVEEDOR.Clear;
          if DatosVentas.CDSVtaDetConsig.RecordCount>0 then
            begin
              DatosVentas.CDSVtaDetConsig.Close;
              DatosVentas.CDSVtaDetConsig.Params.ParamByName('id').Clear;
              DatosVentas.CDSVtaDetConsig.Open;
            end;
        end;
    end;

end;

procedure TFormCpbte_2.RecalculoSuma00Execute(Sender: TObject);
VAR Puntero,Puntero2:TBookmark;
begin
  inherited;
  if DatosVentas.CDSVentaCabTIPOCPBTE.Value<>'NC' then
    BorrarAplicaciones.Execute;
  Puntero:=DatosVentas.CDSVentaDet.GetBookmark;
  DatosVentas.CDSVentaDet.First;
  DatosVentas.CDSVentaDet.DisableControls;
  while Not(DatosVentas.CDSVentaDet.Eof) DO
    begin
      Puntero2:=DatosVentas.CDSVentaDet.GetBookmark;
      DatosVentas.CDSVentaDet.edit;
      DatosVentas.CDSVentaDetUNITARIO_GRAVADO.AsFloat:=RoundTo(DatosVentas.CDSVentaDetUNITARIO_GRAVADO.AsFloat,-2);
      DatosVentas.CDSVentaDetUNITARIO_EXENTO.AsFloat :=RoundTo(DatosVentas.CDSVentaDetUNITARIO_EXENTO.AsFloat,-2);
      DatosVentas.CDSVentaDetUNITARIO_TOTAL.AsFloat  :=DatosVentas.CDSVentaDetUNITARIO_GRAVADO.AsFloat+
                                                       DatosVentas.CDSVentaDetUNITARIO_GRAVADO.AsFloat;

      DatosVentas.CDSVentaDetIVA_UNITARIO.AsFloat    :=RoundTo(DatosVentas.CDSVentaDetIVA_UNITARIO.AsFloat,-2);


      DatosVentas.CDSVentaDetCantidadSetText(DatosVentas.CDSVentaDetCantidad,DatosVentas.CDSVentaDetCANTIDAD.AsString);
      DatosVentas.CDSVentaDet.GotoBookmark(Puntero2);
      DatosVentas.CDSVentaDet.FreeBookmark(Puntero2);
      DatosVentas.CDSVentaDet.Next;
    end;
  DatosVentas.CDSVentaDet.GotoBookmark(Puntero);
  DatosVentas.CDSVentaDet.FreeBookmark(Puntero);
  DatosVentas.CDSVentaDet.EnableControls;
end;

procedure TFormCpbte_2.RecuperarExecute(Sender: TObject);
var y,m,d:word;
TotalGral,NetoTotal:Real;
sDirectorio:String;
begin
  inherited;
  sDirectorio      := DMMain_FD.MainPath+'Papelera_FC';
  if IsDirEmpty(sDirectorio) then
    Papelera.ImageIndex:=11
  else
    Papelera.ImageIndex:=10;
  
  if DatoNew<>'' then
    begin
      sbEstado.Panels[0].Text      :='';
      sbEstado.Panels[1].Text      :='';
      shPP.Visible                 :=False;

      if  ModoDespachante1.Checked then
        begin
          pcModoFactura.ActivePageIndex:=2;
          pcSubForma.ActivePageIndex   :=1;
        end
      else
        begin
          pcModoFactura.ActivePageIndex:=0;
          pcSubForma.ActivePageIndex   :=0;
        end;

      DatosVentas.CDSVentaCab.close;
      DatosVentas.CDSVentaCab.Params.ParamByName('TipoCpbte').Value :=TipoCpbte;
      DatosVentas.CDSVentaCab.Params.ParamByName('id').Value        :=StrToInt(DatoNew);
      DatosVentas.CDSVentaCab.Open;

      condicion:=' and tipocpbte ='+AnsiQuotedStr(DatosVentas.CDSVentaCabTIPOCPBTE.AsString,'''') +
                 ' and clasecpbte='+AnsiQuotedStr(DatosVentas.CDSVentaCabCLASECPBTE.AsString,'''');

      // aca me fijo si imprimo o no el saldo en la factura

      DatosVentas.QClientes.Close;
      DatosVentas.QClientes.ParamByName('Codigo').Value:=DatosVentas.CDSVentaCabCODIGO.AsString;
      DatosVentas.QClientes.Open;

      DatosVentas.CDSVentasEntregas.close;
      DatosVentas.CDSVentasEntregas.Params.ParamByName('id').Value        :=StrToInt(DatoNew);
      DatosVentas.CDSVentasEntregas.Open;

      ImprimeSaldo:=DatosVentas.QClientesIMPRIME_SALDOFACTURA.AsString;

      DatosVentas.QClientes.Close;

      //******************
      // Controla Acopios....
      Acopiar.Enabled:=(DatosVentas.CDSVentaCabMUESTRAACOPIO.Value<=0) or (VarIsNull(DatosVentas.CDSVentaCabMUESTRAACOPIO.Value));
      //******************
      //******************


      if DatosVentas.CDSVentaCabANULADO.Value='S' Then
        begin
          if Anulado=nil Then
            Anulado:=TPanel.Create(Self);
          Anulado.Parent     := Self;
          Anulado.Caption    := 'ANULADA';
          Anulado.Top        :=  Trunc(FormCpbte_2.Height*0.5)-20;
          Anulado.Left       := Trunc(FormCpbte_2.Width*0.5)-100;
          Anulado.Height     := 40;
          Anulado.Width      := 200;
          Anulado.Font.Size  := 30;
          Anulado.Font.Color := clRed;
          Anulado.Font.Name  := 'Arial';
          Anulado.Font.Style := [fsBold];
          Anulado.Visible    := True;
          ANulado.BringToFront;
        end
      else
        if Anulado<>nil Then
          FreeAndNil(Anulado);
      //    ((TotalGral / NetoTotal)-1) x 100 = Tasa de Iva usada
      //   ------------------------
      TotalGral := DatosVentas.CDSVentaCabTotal.AsFloat -
                   DatosVentas.CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat -
                   DatosVentas.CDSVentaCabNETOEXEN2.AsFloat;
      NetoTotal := DatosVentas.CDSVentaCabNetoGrav2.AsFloat;// + DatosVentas.CDSVentaCabNETOEXEN2.AsFloat;

      if DatosVentas.CDSVentaCabNETOGRAV2.AsFloat>0 Then
        DatosVentas.Var_TasaIVA:= ((TotalGral/NetoTotal)-1)*100
      else
        DatosVentas.Var_TasaIva:=0;

      DatosVentas.CDSVentaDet.Close;
      DatosVentas.CDSVentaDet.Params.ParamByName('id').Value:=StrToInt(DatoNew);
      DatosVentas.CDSVentaDet.Open;

      DatosVentas.CDSVtaDetNovedades.Close;
      DatosVentas.CDSVtaDetNovedades.Params.ParamByName('id').Value:=StrToInt(DatoNew);
      DatosVentas.CDSVtaDetNovedades.Open;

      VerNovedadesDet.Enabled := Not(DatosVentas.CDSVtaDetNovedades.IsEmpty);

      DatosVentas.CDSImpuestos.Close;
      DatosVentas.CDSImpuestos.Params.ParamByName('id').Value:=StrToInt(DatoNew);
      DatosVentas.CDSImpuestos.Open;

      DatosVentas.CDSPercepcionIVA.Close;
      DatosVentas.CDSPercepcionIVA.Params.ParamByName('id').Value := StrToInt(DatoNew);
      DatosVentas.CDSPercepcionIVA.Open;

      DatosVentas.CDSVtaSubDetalle.Close;
      DatosVentas.CDSVtaSubDetalle.Params.ParamByName('id').Value := DatosVentas.CDSVentaDetID.AsInteger;// StrToInt(DatoNew);
      DatosVentas.CDSVtaSubDetalle.Open;

      DatosVentas.CDSMov_Carnes.Close;
      DatosVentas.CDSMov_Carnes.Params.ParamByName('id').Value    := DatosVentas.CDSVentaDetID.AsInteger;// StrToInt(DatoNew);
      DatosVentas.CDSMov_Carnes.Open;

      DatosVentas.CDSVtaDetConsig.Close;
      DatosVentas.CDSVtaDetConsig.Params.ParamByName('id').Value  := StrToInt(DatoNew);
      DatosVentas.CDSVtaDetConsig.Open;

      DatosVentas.CDSRegFacturas.Close;
      DatosVentas.CDSRegFacturas.Params.ParamByName('id').Value   := StrToInt(DatoNew);
      DatosVentas.CDSRegFacturas.Open;

      DatosVentas.CDSRtos.Close;
      DatosVentas.CDSRtos.Params.ParamByName('id').Value          := StrToInt(DatoNew);
      DatosVentas.CDSRtos.Open;

      DatosVentas.CDSAsociados.Close;
      DatosVentas.CDSAsociados.Params.ParamByName('id').Value     := StrToInt(DatoNew);
      DatosVentas.CDSAsociados.Open;

      DatosVentas.CDSVentaLote.MasterSource := nil;
      DatosVentas.CDSVentaLote.MasterFields := '';

      DatosVentas.CDSVentaLote.Close;
      DatosVentas.CDSVentaLote.Params.ParamByName('id').Value     := StrToInt(DatoNew);//DatosVentas.CDSVentaDetID.AsInteger;//
      DatosVentas.CDSVentaLote.Open;

      DatosVentas.CDSVentaLote.MasterSource := DatosVentas.DSVentaDet;
      DatosVentas.CDSVentaLote.MasterFields := 'ID';

      DatosVentas.CDSSucursal.Close;
      DatosVentas.CDSSucursal.Params.ParamByName('codigo').Value  := DatosVentas.CDSVentaCabSUCURSAL.AsInteger;//
      DatosVentas.CDSSucursal.Open;


      if Trim(DatosVentas.CDSSucursalCERTIFICADO_ELEC.AsString)<>'' then
        begin
          DMMain_FD.Cuit_SUCURSAL         :=  DatosVentas.CDSSucursalCUIT.AsString;
          DMMain_FD.Certificado_SUCURSAL  :=  DatosVentas.CDSSucursalCERTIFICADO_ELEC.AsString;
        end;

 //   DatosVentas.CDSFc_Prod_Det.MasterSource:=nil;
      DatosVentas.CDSFc_Prod_Det.Close;
      DatosVentas.CDSFc_Prod_Det.Params.ParamByName('ID_CAB').AsInteger  := StrToInt(DatoNew);
      DatosVentas.CDSFc_Prod_Det.Open;
 //   DatosVentas.CDSFc_Prod_Det.MasterSource:=DatosVentas.DSVentaDet;

      if Not(DatosVentas.cdsFC_Prod_det.IsEmpty) then
        DatosVentas.CDSFc_Prod_Det.First;

      DatosVentas.CDSFc_Prod_Mov.Close;
      DatosVentas.CDSFc_Prod_Mov.Params.ParamByName('id_det').Value  := DatosVentas.CDSFc_Prod_DetID.AsInteger;
      DatosVentas.CDSFc_Prod_Mov.Open;

      btImprimirRtos.Enabled:=(DSBase.State=dsBrowse) and (Not(DatosVentas.CDSRtos.IsEmpty));
      DatosVentas.HabilitarLabel;
      pnPrincipal.Enabled:=True;
      //CpbteNuevo := 'N';
      if DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC' Then
        sbEstado.Panels[0].Text:='Ctrl+A Ver Aplicaciones'
      else
        sbEstado.Panels[0].Text:='';

      if (DSBase.DataSet.FieldByName('MUESTRACODIGOAFIP').Value='019') or (DSBase.DataSet.FieldByName('MUESTRACODIGOAFIP').Value='021') then
        pcModoFactura.ActivePageIndex:=1;

      // segun el periodo fiscal habilito o no para borrar y modificar
      begin
        DecodeDate(DatosVentas.CDSVentaCabFECHAVTA.AsDateTime,y,m,d);

        DMStoreProcedure.QVerificaPeriodoFiscal.Close;
        DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:='V';
        DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value:=DatosVentas.CDSVentaCabFECHA_FISCAL.AsDateTime;
        DMStoreProcedure.QVerificaPeriodoFiscal.Open;

        Anular.Enabled   := Not(DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].AsString = 'C');
        Borrar.Enabled   := Not(DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].AsString = 'C');
        Modificar.Enabled:= Not(DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].AsString = 'C');


        if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
          begin
            sbEstado.Panels[0].Text  :='No se puede Borrar ni modificar, período fiscal fue cerrado';
            Anular.Enabled           :=False;
            Modificar.Enabled        :=false;
            DBGrillaDetalle.ReadOnly :=True;
            DBGrillaIva.ReadOnly     :=True;
          end
        else
          begin
            if DatosVentas.CDSVentaCabANULADO.Value='N' Then
              begin
                Anular.Enabled         :=True;
                Modificar.Enabled      :=True;
//              DBGrillaDetalle.ReadOnly :=False;
//              DBGrillaIva.ReadOnly     :=False;
              end
            else
              if DatosVentas.CDSVentaCabANULADO.Value='S' Then
                begin
                  Anular.Enabled         :=False;
                  Modificar.Enabled      :=False;
//                DBGrillaDetalle.ReadOnly :=True;
//                DBGrillaIva.ReadOnly     :=True;
                end;
            if DatosVentas.CDSVentaCabIMPRESO.Value='S' Then
              begin
                sbEstado.Panels[0].Text:='No se puede modificar, ya fué impreso';
                Anular.Enabled         :=True;
                Modificar.Enabled      :=false;
 //              DBGrillaDetalle.ReadOnly :=True;
 //            DBGrillaIva.ReadOnly     :=True;
              end;
          end;
        DMStoreProcedure.QVerificaPeriodoFiscal.Close;

        LbCaja.Visible           := DatosVentas.CDSVentaCabNC_CONTADO.Value='S';
        dbcCaja.Visible          := DatosVentas.CDSVentaCabNC_CONTADO.Value='S';
        dbcheckNc_Contado.Enabled:= DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC';
      end;
      DatosVentas.HabilitarLabel;
      DatoNew:=''+DatoNew+'';
      if Not(DSBase.DataSet.IsEmpty) then
        begin
          FormCpbte_2.Calcula_iva_articulo := DMMain_FD.GetCalcualIvaItems(DSBase.Dataset.FieldByName('ID_TIPOCOMPROBANTE').Value)='S';

          DatosVentas.Renglones            := DMMain_FD.GetLineasComprobante(DSBase.Dataset.FieldByName('ID_TIPOCOMPROBANTE').Value);
        end;

      PagPorCtaOrden.TabVisible:=DatosVentas.CDSVentaCabPOR_CTA_Y_ORDEN.Value='S';
      if DatosVentas.CDSVentaCabNUMERO_OPERACION.AsString<>'' then
        sbEstado.Panels[1].Text:='Ctrl+Alt+O:Ver Ope.';

      sbEstado.Panels[2].Text:='';
      if DatosVentas.CDSVentaCabINGRESA_LIBRO_IVA.Value='S' then
        sbEstado.Panels[2].Text:='Iva';
      if DatosVentas.CDSVentaCabINGRESA_A_CTACTE.Value='S' then
        sbEstado.Panels[2].Text:=sbEstado.Panels[2].Text+'-CC';

      FormCpbte_2.Caption:='Facturación de Cta.Cte de Ventas -- '+DatosVentas.CDSVentaCabFECHA_HORA.AsString+'//'+Copy(DatosVentas.CDSVentaCabUSUARIO.AsString,1,15);
      if (datosVentas.CDSVentaCabCAE.AsString<>'') and (datosVentas.CDSVentaCabCAE.AsFloat>0 )then
        FormCpbte_2.Caption:='Facturación de Cta.Cte de Ventas -- '+DatosVentas.CDSVentaCabFECHA_HORA.AsString+'//'+Copy(DatosVentas.CDSVentaCabUSUARIO.AsString,1,15)+'// CAE: '+datosVentas.CDSVentaCabCAE.AsString;
      if datosVentas.CDSVentaCabTIPOCPBTE.Value='NC' then
        FormCpbte_2.Caption:=FormCpbte_2.Caption+'//'+'Apli.Fc: Tipo:'+DatosVentas.CDSVentaCabASOCIADO_TIPO.AsString+'-Pt.Vta:'+DatosVentas.CDSVentaCabASOCIADO_PTOVTA.AsString+
                            '-Nro.:'+DatosVentas.CDSVentaCabASOCIADO_NRO.AsString;

      // ********** verifico si hay items de Produccion... **
      DMMain_FD.HayProduccion:=DatosVentas.VerificaProduccion;
      // ****************************************************

    end;
  if (FormCpbte_2.Visible) and (btNuevo.Visible) and (btNuevo.Enabled) then
    btNuevo.SetFocus;
  PasaCCVta.Enabled       := DMMain_FD.UsuarioAdministrador;
  AplicarLibroIVA.Enabled := DMMain_FD.UsuarioAdministrador;
  Borrar.Enabled          := DMMain_FD.UsuarioAdministrador;

  if ModoDespachante1.Checked then
    pnCabecera.Enabled      :=True
  else
    pnCabecera.Enabled      :=False;
  if DSBase.DataSet.State = dsBrowse then
    pnCabecera.Enabled:=False;

  Acopiar.Enabled                := Not(DSBase.DataSet.FieldByName('TIPOCPBTE').Value='NC') and (DSBase.DataSet.FieldByName('ANULADO').Value='N') and (DSBase.DataSet.FieldByName('MUESTRATIPONC').AsString='');
  GenerarRto.Enabled             := Not(DSBase.DataSet.FieldByName('TIPOCPBTE').Value='NC') and (DSBase.DataSet.FieldByName('ANULADO').Value='N') and (DSBase.DataSet.FieldByName('MUESTRATIPONC').AsString='');
  GenerarNotaPedido.Enabled      := Not(DSBase.DataSet.FieldByName('TIPOCPBTE').Value='NC') and (DSBase.DataSet.FieldByName('ANULADO').Value='N') and (DSBase.DataSet.FieldByName('MUESTRATIPONC').AsString='');
  GenerarOrdenProduccion.Enabled := Not(DSBase.DataSet.FieldByName('TIPOCPBTE').Value='NC') and (DSBase.DataSet.FieldByName('ANULADO').Value='N') and (DSBase.DataSet.FieldByName('MUESTRATIPONC').AsString='');
  GenerarTx.Enabled              := Not(DSBase.DataSet.FieldByName('TIPOCPBTE').Value='NC') and (DSBase.DataSet.FieldByName('ANULADO').Value='N') and (DSBase.DataSet.FieldByName('MUESTRATIPONC').AsString='');
  Anular.Enabled                 := Not(DSBase.DataSet.FieldByName('TIPOCPBTE').Value='NC') and (DSBase.DataSet.FieldByName('ANULADO').Value='N') and (DSBase.DataSet.FieldByName('MUESTRATIPONC').AsString='');
  HacerNotaCredito.Enabled       := Not(DSBase.DataSet.FieldByName('TIPOCPBTE').Value='NC') and (DSBase.DataSet.FieldByName('ANULADO').Value='N') and (DSBase.DataSet.FieldByName('MUESTRATIPONC').AsString='');
  AsignarObra.Enabled            := (DSBase.DataSet.FieldByName('ANULADO').Value='N') and Not(DSBase.DataSet.IsEmpty);

end;

procedure TFormCpbte_2.RecuperarRtosExecute(Sender: TObject);
var Cadena:TStringList;
begin
  inherited;
  DatosVentas.QBuscaRtos.Close;
  DatosVentas.QBuscaRtos.ParamByName('id').Value:=DatosVentas.CDSVentaCabID_FC.Value;
  DatosVentas.QBuscaRtos.Open;
  if DatosVentas.QBuscaRtos.RecordCount>0 then
    begin
     if MessageDlg('Hay remitos, que afectan al Cpbte. Los recupera para usar nuevamente..???',mtConfirmation,mbYesNo,0)=mrYes Then
       begin
         if DMMain_FD.RecuperarLoteRtos(DSBase.DataSet.FieldByName('ID_FC').Value) Then
           begin
             Cadena:=TStringList.Create;
             DatosVentas.QBuscaRtos.First;
             while not(datosVentas.QBuscaRtos.Eof) do
               begin
                 Cadena.Add(DatosVentas.QBuscaRtosNROCPBTE.AsString);
                 datosVentas.QBuscaRtos.Next;
               end;
             DatosVentas.QBuscaRtos.Close;
             ShowMessage('Remitos Recuperados:'+#13+Cadena.Text);
             FreeAndNil(Cadena);
           end;
       end;
    end;
end;

procedure TFormCpbte_2.ReHacerQRExecute(Sender: TObject);
Var QrImage    :TBitmap;
FechaQr        :String;
MonedaStr      :String;
CuitVendedor   :String;
CuitComprador  :String;
TipoDocReceptor:Integer;
begin
  QRImage:=TBitmap.Create;
  CuitVendedor:=DMMain_FD.FormatoCUIT(DatosVentas.CDSEmpresaCUIT.Value);
  if Trim(DatosVentas.CDSSucursalCERTIFICADO_ELEC.AsString)<>'' then
    CuitVendedor:=DMMain_FD.FormatoCUIT(DatosVentas.CDSSucursalCUIT.Value);

  CuitComprador :=DMMain_FD.FormatoCUIT(DSBase.DataSet.FieldByName('CUIT').AsString);

  if (DSBase.DataSet.FieldByName('MUESTRACODIGOAFIP').AsInteger=19) then
    CuitComprador := ReplaceStr ( (DMMain_FD.FormatoCUIT(DSBase.DataSet.FieldByName('CUIT_PAIS').AsString))
                                  ,'-','');


  case DSBase.DataSet.FieldByName('TIPOIVA').AsInteger of
    1,5,6:TipoDocReceptor:=80;
    3    :TipoDocReceptor:=96;
  end;
  if (DSBase.DataSet.FieldByName('TIPOIVA').AsInteger=3) and (DSBase.DataSet.FieldByName('Total').Asfloat<DMMain_FD.LimiteFactB) then
    begin
      TipoDocReceptor := 99;
      CuitComprador   := '0'
    end;

  if DSBase.DataSet.FieldByName('MUESTRACODIGOAFIP').AsInteger in [19,20,21] then
    TipoDocReceptor:=80;


  if DatosVentas.CDSVentaCabMONEDA_CPBTE.Value=1 Then
    MonedaStr:='PES'
  else
    if DatosVentas.CDSVentaCabMONEDA_CPBTE.Value=2 Then
      MonedaStr:='DOL';

  if (FormFiscalizacion<>nil) then
    begin
      FreeAndNil(FormFiscalizacion);
      FormFiscalizacion:=nil;
    end;
  if Not(Assigned(FormFiscalizacion)) then
    FormFiscalizacion:= TFormFiscalizacion.Create(self);
  FechaQr  := FormatDateTime('yyyy-mm-dd', DSBase.DataSet.FieldByName('FECHAVTA').AsDateTime);
  QRImage  := FormFiscalizacion.GenerarQR(1,FechaQr,
                                        StrToFLoat(CuitVendedor),// DSBase.DataSet.FieldByName('CUIT').AsFloat,
                                        DSBase.DataSet.FieldByName('SUCFAC').AsInteger,
                                        DSBase.DataSet.FieldByName('MUESTRACODIGOAFIP').AsInteger,
                                        DSBase.DataSet.FieldByName('NUMEROFAC').AsInteger,
                                        DSBase.DataSet.FieldByName('Total').Asfloat,
                                        MonedaStr,
                                        DSBase.DataSet.FieldByName('MONEDA_CPBTE_COTIZACION').AsFloat,
                                        TipoDocReceptor,
                                        StrToFloat(CuitComprador),
                                        'E',
                                        DSBase.DataSet.FieldByName('CAE').Asfloat);

  if Not(DMStoreProcedure.ActualizaCAE_VTO(DSBase.DataSet.FieldByName('ID_FC').AsInteger,
                                           DSBase.DataSet.FieldByName('FECHAVTA').AsDateTime,
                                           DSBase.DataSet.FieldByName('CAE').AsString,
                                           DSBase.DataSet.FieldByName('CAE_VENCIMIENTO').AsdateTime,
                                           DSBase.DataSet.FieldByName('NUMEROFAC').AsString,QRImage)) Then
    ShowMessage('No se pudo gravar datos de CAE/Vencimiento y Actualizacion de Numero...Proceso de Fiscalizacion ');  //

  FreeAndNil(QrImage);
  FreeAndNil(FormFiscalizacion);
  Recuperar.Execute;
end;

procedure TFormCpbte_2.RevisionFactRtoExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  DMMain_FD.RevNroRto;
  Screen.Cursor:=crDefault;

end;

procedure TFormCpbte_2.dbcheckNc_ContadoClick(Sender: TObject);
begin
  inherited;
  LbCaja.Visible                  := dbcheckNc_Contado.Checked;
  dbcCaja.Visible                 := dbcheckNc_Contado.Checked;
  pnMovCaja.Visible               := dbcheckNc_Contado.Checked;
  DatosVentas.QListaCaja.Filtered := False;
  DatosVentas.QListaCaja.Filter   := 'Estado = 0 ';
  DatosVentas.QListaCaja.Filtered := dbcCaja.Visible;
  //dbeEntrega.Visible:=Not(dbcheckNc_Contado.Checked);
  //RxLEntrega.Visible:=Not(dbcheckNc_Contado.Checked);
end;

procedure TFormCpbte_2.dbcJuriClick(Sender: TObject);
begin
  inherited;
  DatosVentas.CDSVentaCabJURIDICION.Value:=dbcJuri.ListSource.DataSet.FieldByName('ID_JURIDICION').Value;
end;

procedure TFormCpbte_2.dbtMuestraAcopioClick(Sender: TObject);
begin
  inherited;
  if DSBase.DataSet.FieldByName('MUESTRAACOPIO').AsString<>'' then
     begin
       if Not(Assigned(FormAcopio)) then
         FormAcopio:=TFormAcopio.Create(Self);
       FormAcopio.DatoNew:= DSBase.DataSet.FieldByName('MUESTRAACOPIO').AsString;
       FormAcopio.Recuperar.Execute;
       FormAcopio.Show;
     end;
  
end;

procedure TFormCpbte_2.DBText23Click(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormPresupuesto_2)) then
    FormPresupuesto_2:=TFormPresupuesto_2.Create(Self);
  FormPresupuesto_2.DatoNew:=DatosVentas.CDSVentaCabPRESUPUESTO_ID.AsString;
  FormPresupuesto_2.Recuperar.Execute;
  FormPresupuesto_2.Show;
end;

procedure TFormCpbte_2.DBText29Click(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormAbonosCupon)) then
    FormAbonosCupon:=TFormAbonosCupon.Create(Self);
  FormAbonosCupon.DatoNew:=DatosVentas.CDSVentaCabMUESTRAIDABONO.AsString;
  FormAbonosCupon.Recuperar.Execute;
  FormAbonosCupon.Show;

end;

procedure TFormCpbte_2.DBText36Click(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCpbte_2)) then
    FormCpbte_2:=TFormCpbte_2.Create(self);
  FormCpbte_2.DatoNew  :=DSBase.DataSet.FieldByName('MuestraID_NC').AsString;
  FormCpbte_2.TipoCpbte:='NC';
  FormCpbte_2.Recuperar.Execute;
  FormCpbte_2.Show;
end;

procedure TFormCpbte_2.DesanulacionExecute(Sender: TObject);
begin
  inherited;
  if DatosVentas.CDSVentaCabANULADO.Value='N' Then
    raise Exception.Create('No es un comprobante anulado....');

  if (DMMain_FD.AnularFactura) Then
    begin
      IF NOT (DatosVentas.CDSVentaCab.IsEmpty)  THEN
        BEGIN
          IF MessageDlg('Ud. está por hacer una operación de' + #13 +
                        'desanulación.....' + #13 +
                        'Está seguro de hacerlo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
            BEGIN
              DatoNew     :=IntToStr(DatosVentas.CDSVentaCabID_FC.Value);
              TipoCpbte   :=DatosVentas.CDSVentaCabTIPOCPBTE.AsString;

              // **** Ingreso en el Log File  **************
             DMMain_FD.fdcGestion.StartTransaction;
              try
                DatosVentas.CDSVentaCab.Edit;
                DatosVentas.CDSVentaCabANULADO.Value := 'N';
                if DatosVentas.Renglones<DatosVentas.CDSVentaDet.RecordCount Then
                  DatosVentas.Renglones:=DatosVentas.CDSVentaDet.RecordCount;
                DatosVentas.CDSVentaCab.Post;
                DatosVentas.CDSVentaCab.ApplyUpdates(0);

               DMMain_FD.LogFileFD(0,2,'DesAnulación Fac.Venta: '+DatosVentas.CDSVentaCabNROCPBTE.Value+' Cliente: '+DatosVentas.CDSVentaCabRAZONSOCIAL.Value+
                                    ' Importe: '+FormatFloat('0.00',DatosVentas.CDSVentaCabTOTAL.AsFloat),
                                    'FACVTA');
              // ******************************************
                spControlCpbteImp_vs_comp.Close;
                spControlCpbteImp_vs_comp.ExecProc;
                spControlCpbteImp_vs_comp.Close;
                DMMain_FD.fdcGestion.Commit;
              except
                DMMain_FD.fdcGestion.Rollback;
                ShowMessage('No se Pudo hacer la Operacion...!');
              end;

              Recuperar.Execute;
            END
        END
      ELSE
        ShowMessage('No hay regsitro Activo');
    end
  else
    ShowMessage('No posee permisos para esta operación');
end;

procedure TFormCpbte_2.DesmarcarImpresaExecute(Sender: TObject);
begin
  inherited;
  IF (NOT (DatosVentas.CDSVentaCab.IsEmpty)) and
     (DMMain_FD.UsuarioAdministrador=True) THEN
    BEGIN
      CpbteNuevo:='N';
      DatosVentas.CDSVentaCab.Edit;
      if datosVentas.CDSVentaCabIMPRESO.Value<>'N' Then
        datosVentas.CDSVentaCabIMPRESO.Value := 'N'
      else
       if datosVentas.CDSVentaCabIMPRESO.Value='N' Then
           datosVentas.CDSVentaCabIMPRESO.Value := 'S';
      DatoNew:=DSBase.DataSet.FieldByName('ID_FC').AsString;
      Confirma.Execute;
      DMMain_FD.LogFileFD(1,2,'Modificación Fac.Venta: ('+DSBase.DataSet.FieldByName('ID_FC').AsString+') '+ DatosVentas.CDSVentaCabNROCPBTE.Value+' Cliente: '+
                          DatosVentas.CDSVentaCabRAZONSOCIAL.Value+' Importe :'+FormatFloat('0.00',DatosVentas.CDSVentaCabTOTAL.AsFloat)+
                          ' Cambia Marca de Impreso','FACVTA');

     END;

end;

procedure TFormCpbte_2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
VAr Enter:Char;
begin
  inherited;
  if Not(DSBase.DataSet.IsEmpty) then
    begin
      IF (Shift=[ssCtrl]) and (Key=VK_DELETE) and (FormCpbte_2.Active) and (DMMain_FD.UsuarioAdministrador=True) Then
        Borrar.Execute;
      if (Key=VK_F5) and (DatosVentas.CDSVentaCabCODIGO.AsString<>'') Then
        begin
          if Not(Assigned(FormUltimaVta)) Then
             FormUltimaVta:=TFormUltimaVta.Create(Application);
           FormUltimaVta.Codigo:=DatosVentas.CDSVentaCabCODIGO.AsString;
           FormUltimaVta.ShowModal;
        end
      else
        if (Key=VK_F6) and (DatosVentas.CDSVentaCabCODIGO.AsString<>'') Then
          begin
            if Not(Assigned(FormUltimaVtaMensual)) Then
               FormUltimaVtaMensual:=TFormUltimaVtaMensual.Create(Application);
             FormUltimaVtaMensual.Codigo:=DatosVentas.CDSVentaCabCODIGO.AsString;
             FormUltimaVtaMensual.Fecha:=DatosVentas.CDSVentaCabFECHAVTA.AsDateTime;
             FormUltimaVtaMensual.ShowModal;
          end
        else
          if (Key=VK_F4) and (DSBase.State<>dsBrowse) Then
            begin
              if (dbeDscto_1.Enabled) and (dbeDscto_1.Visible)
                 and (pcDetalleFactura.ActivePageIndex=0) then
                dbeDscto_1.SetFocus;
            end
          else
            IF (Shift=[ssCtrl]) and ((Key=Ord('r')) or (Key=Ord('R'))) and (DSBase.State in [dsInsert]) Then
              begin
                LeerFacturasFrezadas.Execute;
              end;
    end;


end;


procedure TFormCpbte_2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if ActiveControl<>nil then
    begin
      if (Key=#27) and (ActiveControl is TDBMemo) then
        begin
          Key:=#0;
          pnDetalleAdicional.Visible:=False;
        end;
      if {(Key=#13)and }(Not(ActiveControl.Name='ceNotas')) and (not(ActiveControl is TJvDBCalcEdit)) then
        inherited;
    end;
end;

procedure TFormCpbte_2.FormResize(Sender: TObject);
begin
  inherited;
  if FormCpbte_2<>nil then
    if FormCpbte_2.Width<>968 then
      FormCpbte_2.Width:=968;
end;

procedure TFormCpbte_2.cpPuertoComReceiveData(Sender: TObject;
  DataPtr: Pointer; DataSize: Cardinal);
Var
  Dato:String;
  p:Pchar;
  i:integer;
  Enter:char;
begin
  Enter:=#13;
  IF (DBGrillaDetalle.SelectedIndex=0) and (ActiveControl is TDBGrid) Then
    begin
      Dato:='';
      p:=DataPtr;
      for i:=0 to DataSize-1 do
        begin
          Dato:=Dato+p[i];
        end;
      if Copy(dato,length(Dato),1)=#13 Then
        begin
          Dato  := DMMain_FD.CodigoBarraSerie+dato;
          delete(dato,1,1);
          Delete(dato,length(Dato),1);
          DatosVentas.CDSVentaDetCodigoArticuloSetText(DatosVentas.CDSVentaDetCodigoArticulo,Dato);
          DBGrillaDetalleKeyPress(Sender,Enter);
          DMMain_FD.CodigoBarraSerie :='';
        end
      else
        DMMain_FD.CodigoBarraSerie:=Dato;
    end;
end;

procedure TFormCpbte_2.dbeDetAdicionalExit(Sender: TObject);
begin
  inherited;
 // formCpbte_2.pnDetalleAdicional.Visible:=False;
end;

procedure TFormCpbte_2.dbeDetAdicionalKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#27 then
    begin
      Key:=#0;
      pnDetalleAdicional.Visible:=False;
    end;
end;

procedure TFormCpbte_2.dbeFechaVtaExit(Sender: TObject);
begin
  inherited;
  if (TForm(Self.Owner).Name<>'FormFacturaRemitoAgrupado') and
     (TForm(Self.Owner).Name<>'FormImportacionFacturasVtaGral') and
     (TForm(Self.Owner).Name<>'FormRecibo_2') Then
  DatosVentas.CDSVentaCabFECHAVTASetText(DatosVentas.CDSVentaCabFECHAVTA,dbeFechaVta.Text);
end;

procedure TFormCpbte_2.dbeNombreDblClick(Sender: TObject);
begin
  inherited;
  if Trim(DSBase.DataSet.FieldByName('Codigo').AsString)<>'' then
    begin
      if (Assigned(FormClientes_2)) then
        FreeAndNil(FormClientes_2);

      if Not(Assigned(FormClientes_2)) then
        FormClientes_2:=TFormClientes_2.Create(Self);
      FormClientes_2.DatoNew:=Trim(DSBase.DataSet.FieldByName('Codigo').AsString);
      FormClientes_2.Recuperar.Execute;
      FormClientes_2.Show;
    end;

end;

procedure TFormCpbte_2.dbeNombreMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
 if DatosVentas.CDSVentaCabCODIGO.AsString<>'' then
    begin
      DatosVentas.QClientes.Close;
      DatosVentas.QClientes.ParamByName('codigo').Value:=DatosVentas.CDSVentaCabCODIGO.AsString;
      DatosVentas.QClientes.Open;
      Hint:=DatosVentas.QClientesOBSERVACIONES.Value;
      ShowHint:=True;
      DatosVentas.QClientes.Close;
    end;
end;


procedure TFormCpbte_2.dbeRemitosMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  dbeRemitos.Hint:= dberemitos.Text;
end;

procedure TFormCpbte_2.RecalcularExecute(Sender: TObject);
VAR Puntero,Puntero2:TBookmark;
 Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
begin
  inherited;
  if (dbcLista.KeyValue<>Null) and (Trim(dbcLista.Text)<>'') Then
    begin
      Puntero:=DatosVentas.CDSVentaDet.GetBookmark;
      DatosVentas.CDSVentaDet.First;
      DatosVentas.CDSVentaDet.DisableControls;
      while Not(DatosVentas.CDSVentaDet.Eof) DO
        begin
          Puntero2:=DatosVentas.CDSVentaDet.GetBookmark;
          DatosVentas.CDSVentaDet.edit;

          if (FormCpbte_2.Divide_iva=True) then
            DatosVentas.CDSVentaDetIVA_TASA.Value:=DatosVentas.CDSVentaDetIVA_TASA.Value/2;

          if (FormCpbte_2.Calcula_iva_Articulo=False) then
            DatosVentas.CDSVentaDetIVA_TASA.Value:=0;


          DMMain_FD.CalculaPrecioVta_FD(DatosVentas.CDSVentaCabINGRESA_LIBRO_IVA.AsString,DMMain_FD.IdListaProveedor, DatosVentas.CDSVentaCabLISTAPRECIO.Value,DatosVentas.CDSVentaCabSUCURSAL.Value,DatosVentas.CDSVentaCabDEPOSITO.Value,
                                        DatosVentas.CDSVentaDetCODIGOARTICULO.AsString,DatosVentas.CDSVentaCabCODIGO.AsString,DatosVentas.CDSVentaCabTIPOCPBTE.Value,
                                        DatosVentas.CDSVentaDetCOTIZACION.AsFloat,
                                        DatosVentas.CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat,
                                        Gravado,exento,Total,Iva,Margen,dscto,PFinal);

          if (FormCpbte_2.Divide_iva=True) then
            Iva:=Iva/2;

          if (FormCpbte_2.Calcula_iva_Articulo=False) then
            Iva:=0;


          DatosVentas.CDSVentaDetUNITARIO_GRAVADO.AsFloat:=Gravado;
          DatosVentas.CDSVentaDetUNITARIO_EXENTO.AsFloat :=Exento;
          DatosVentas.CDSVentaDetUNITARIO_TOTAL.AsFloat  :=Total;
          DatosVentas.CDSVentaDetIVA_UNITARIO.AsFloat    :=Iva;
          DatosVentas.CDSVentaDetMARGEN.ASFloat          :=Margen;
          DatosVentas.CDSVentaDetDESCUENTO.ASFloat       :=Dscto;

     //     DatosVentas.CalculaPrecioVta;
          DatosVentas.CDSVentaDetCantidadSetText(DatosVentas.CDSVentaDetCantidad,DatosVentas.CDSVentaDetCantidad.AsString);
          DatosVentas.CDSVentaDet.GotoBookmark(Puntero2);
          DatosVentas.CDSVentaDet.FreeBookmark(Puntero2);
          DatosVentas.CDSVentaDet.Next;
        end;
      DatosVentas.CDSVentaDet.GotoBookmark(Puntero);
      DatosVentas.CDSVentaDet.FreeBookmark(Puntero);
      DatosVentas.CDSVentaDet.EnableControls;
    end
  else
    ShowMessage('No se puede recalcular si no hay lista asignada...');

end;

procedure TFormCpbte_2.dbcListaClick(Sender: TObject);
begin
  inherited;
  if (dbcLista.KeyValue<>Null) Then
    begin
      DMMain_FD.LogFileFD(1,2,'Modificacion Lista de Precio en Fc.de Vta de Lista >>'+ OldLista+
                          ' a lista >> '+ dbcLista.Text +
                          ' en Fc.Nro'+' ('+DSBase.DataSet.FieldByName('ID_FC').AsString+') '+
                          DSBase.DataSet.FieldByName('TIPOCPBTE').AsString+'-'+
                          DSBase.DataSet.FieldByName('NROCPBTE').AsString ,' FACVTA');

      if (FormCpbte_2.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsInteger>-1) Then
        DatosVentas.CDSVentaCabCondicionVtaSetText(DatosVentas.CDSVentaCabCONDICIONVTA,FormCpbte_2.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString);
      Recalcular.Execute;
      if (DatosVentas.CDSVentaCabCON_GTIA_EXTENDIDA.Value='S') then
        DatosVentas.ReCalculaGtia(DatosVentas.ArticuloGtia,DatosVentas.CDSVentaCabCODIGO.AsString);
      oldLista:=dbcLista.Text;
    end;
end;

procedure TFormCpbte_2.dbcListaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=VK_back) or (Key=VK_delete) Then
    begin
      DatosVentas.CDSVentaCabLISTAPRECIO.Clear;
      DMMain_FD.LogFileFD(1,2,'Modificacion Lista de Precio en Fc.de Vta de Lista >>'+OldLista+
                           ' a lista >> VACIA en Fc.Nro'+' ('+DatosVentas.CDSVentaCabID_FC.AsString+') '+
                           DatosVentas.CDSVentaCabTIPOCPBTE.AsString+'-'+
                           DatosVentas.CDSVentaCabNROCPBTE.AsString ,' FACVTA');
      oldLista:='0';
      Recalcular.Execute;
    end;
end;

procedure TFormCpbte_2.AgregarClienteExecute(Sender: TObject);
var
  CodAux: string;
begin
  inherited;
  CodAux  :=  DMMain_FD.NuevoCliente;
  if CodAux <> '' then
    DSBase.DataSet.FieldByName('CODIGO').Text :=  CodAux;
end;

procedure TFormCpbte_2.dbgDetalleVtaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (gdSelected in state) Then
    begin
      dbgDetalleVta.Canvas.Font.Color:=clWhite;
      dbgDetalleVta.Canvas.Brush.Color:=clNavy;
    end
  else

  if (dbgDetalleVta.DataSource.DataSet.FieldByName('Con_Nro_Serie').Value='S') and
     (dbgDetalleVta.DataSource.DataSet.FieldByName('Con_Codigo_Barra').Value='N')Then
    begin
      dbgDetalleVta.Canvas.Font.Style:=[fsBold];
      dbgDetalleVta.Canvas.Font.Color:=clRed;
    end
  else
    if (dbgDetalleVta.DataSource.DataSet.FieldByName('Con_Nro_Serie').Value='N') and
     (dbgDetalleVta.DataSource.DataSet.FieldByName('Con_Codigo_Barra').Value='S')Then
      begin
        dbgDetalleVta.Canvas.Font.Style:=[fsBold];
        dbgDetalleVta.Canvas.Font.Color:=clBlue;
      end
    else
      if (dbgDetalleVta.DataSource.DataSet.FieldByName('Con_Nro_Serie').Value='S') and
         (dbgDetalleVta.DataSource.DataSet.FieldByName('Con_Codigo_Barra').Value='S')Then
        begin
          dbgDetalleVta.Canvas.Font.Style:=[fsBold];
          dbgDetalleVta.Canvas.Font.Color:=clGreen;
        end
      else
        begin
          dbgDetalleVta.Canvas.Font.Color:=clWindowText;
          dbgDetalleVta.Canvas.Font.Style:=[];
        end;
  dbgDetalleVta.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormCpbte_2.dbgDetalleVtaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ((Shift=[ssCtrl]) and (key=VK_F2)) then
    begin
      if (DSBase.State = dsBrowse) and (Not(DatosVentas.CDSVentaDet.IsEmpty)) and
        (Not(DatosVentas.CDSVtaSubDetalle.IsEmpty)) then
        begin
          if Not(Assigned(FormNroSeries)) then
            FormNroSeries:=TFormNroSeries.Create(Self);
          FormNroSeries.Id_Deposito := DatosVentas.CDSVentaCabDEPOSITO.Value;
          FormNroSeries.Id_Fc       := DatosVentas.CDSVentaDetID.Value;
          FormNroSeries.Codigo      := DatosVentas.CDSVentaDetCODIGOARTICULO.Value;
          FormNroSeries.ShowModal;
          if FormNroSeries.ModalResult=mrOk then
            Recuperar.Execute;
        end;
    end;

end;

procedure TFormCpbte_2.dbgExitenciasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
 if (gdFocused in State) then
    begin
      dbgExitencias.canvas.brush.color := clNavy;
      dbgExitencias.canvas.Font.color  := clWhite;
    end
  else
    begin
      if (dbgExitencias.DataSource.DataSet.FieldByName('FULTAJUSTE').AsDateTime)>Date-10 then
        begin
          dbgExitencias.Canvas.Font.Color:=clBlue;
          dbgExitencias.Canvas.Font.Style:=[fsBold];
        end;
    end;
    //Esta línea es nueva
    dbgExitencias.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormCpbte_2.BuscarSerieExecute(Sender: TObject);
var i:byte; 
begin
  if ((DSBase.DataSet.State IN [dsInsert,dsEdit])) then
    begin
      if (DatosVentas.CDSVentaDetCON_NRO_SERIE.Value='S') Then
        begin
          if DatosVentas.CDSVentaCabTIPOCPBTE.AsString<>'NC' Then
            begin
              DatosVentas.CDSBuscaNroSerie.Close;
              DatosVentas.CDSBuscaNroSerie.CommandText:='';
              DatosVentas.CDSBuscaNroSerie.CommandText:='select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,ss.fechaegreso,ss.deposito from stock_series ss '+
                                                        'where  (ss.codigo_stk = :codigo  and ss.id_cpbte_egreso is null)  and ( ss.deposito = :deposito or  :deposito = -1 ) ';
             // DMMain_FD.QOpciones.Close;
//              DMMain_FD.QOpciones.ParamByName('opcion').Value:='SERIEDEPOSITO';
//              DMMain_FD.QOpciones.Open;
//              SERIEDEPOSITO :=  DMMain_FD.DBOpciones('SERIEDEPOSITO');
            //  if DMMain_FD.QOpciones.Fields[0].AsString[1]='S' Then
              if DMMain_FD.SERIEDEPOSITO then
                DatosVentas.CDSBuscaNroSerie.Params.ParamByName('deposito').AsInteger := -1
              else
                DatosVentas.CDSBuscaNroSerie.Params.ParamByName('deposito').AsInteger := DatosVentas.CDSVentaDetDeposito.AsInteger;
            //  DMMain_FD.QOpciones.Close;
            end
          else
            if DatosVentas.CDSVentaCabTIPOCPBTE.AsString='NC' Then
              begin
                DatosVentas.CDSBuscaNroSerie.Close;
                DatosVentas.CDSBuscaNroSerie.CommandText:='';
                DatosVentas.CDSBuscaNroSerie.CommandText:='select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,ss.fechaegreso, ss.deposito from stock_series ss '+
                                                          'where (ss.codigo_stk = :codigo ) and ( ss.deposito <> :deposito ) and (Not(id_cpbte_egreso is null)) ';
                DatosVentas.CDSBuscaNroSerie.Params.ParamByName('deposito').AsInteger:=-1;
              end;
          comBuscadorSeries.Campo :='codigoserie';
          ComBuscadorSeries.Data  :=DatosVentas.CDSBuscaNroSerie;

          DatosVentas.CDSBuscaNroSerie.Params.ParamByName('codigo').AsString  :=DatosVentas.CDSVentaDetCodigoArticulo.AsString;
          DatosVentas.CDSBuscaNroSerie.Open;

//          wwBuscadorSerie.Selected.Clear;
//          for i:= 0 to DatosVentas.CDSBuscaNroSerie.FieldCount-1 do
//            begin
//              if i<0 then
//                wwBuscadorSerie.Selected.Add(DatosVentas.CDSBuscaNroSerie.Fields[i].FieldName + #9 + IntToStr(DatosVentas.CDSBuscaNroSerie.Fields[i].DisplayWidth) + #9 +
//                  DatosVentas.CDSBuscaNroSerie.Fields[i].DisplayLabel);
//              if i>0 then
//                DatosVentas.CDSBuscaNroSerie.Fields[i].Visible:=False;
//            end;

          ComBuscadorSeries.Execute;
          if comBuscadorSeries.rOk Then
            DatosVentas.CDSVtaSubDetalleSERIESetText(DatosVentas.CDSVtaSubDetalleSERIE,comBuscadorSeries.Id);
          DatosVentas.CDSBuscaNroSerie.Close;
        end
      else
        if (DatosVentas.CDSVentaDetCON_NRO_SERIE.Value='N') and (DatosVentas.CDSVentaDetCON_CODIGO_BARRA.Value='S') Then
          begin
            comBuscadorSeries.Campo:='codigobarra';
            ComBuscadorSeries.Data :=DatosVentas.CDSBuscaCodigoBarra;
            DatosVentas.CDSBuscaCodigoBarra.Close;
            DatosVentas.CDSBuscaCodigoBarra.Params.ParamByName('codigo').Value:= DatosVentas.CDSVentaDetCodigoArticulo.Value;
            DatosVentas.CDSBuscaCodigoBarra.Open;

//            wwBuscadorSerie.Selected.Clear;
//            for i:= 0 to DatosVentas.CDSBuscaCodigoBarra.FieldCount-1 do
//              begin
//                if i<0 then
//                  wwBuscadorSerie.Selected.Add(DatosVentas.CDSBuscaCodigoBarra.Fields[i].FieldName + #9 + IntToStr(DatosVentas.CDSBuscaCodigoBarra.Fields[i].DisplayWidth) + #9 +
//                    DatosVentas.CDSBuscaCodigoBarra.Fields[i].DisplayLabel);
//                if I>0 then
//                  DatosVentas.CDSBuscaCodigoBarra.Fields[i].Visible:=False;
//              end;

            comBuscadorSeries.Execute;
            if comBuscadorSeries.rOk Then
              DatosVentas.CDSVtaSubDetalleSERIESetText(DatosVentas.CDSVtaSubDetalleSERIE,comBuscadorSeries.Id);
            DatosVentas.CDSBuscaCodigoBarra.Close;
          end;
    end;


end;

procedure TFormCpbte_2.dbgSeriesKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  IF (Key = #13) and (dbgSeries.ReadOnly=False) THEN
    BEGIN
      Key := #0;
      DBGSeries.DataSource.DataSet.Append;
    END;

end;

procedure TFormCpbte_2.dblMonedaClick(Sender: TObject);
begin
  inherited;
  recalcular.Execute;
end;

procedure TFormCpbte_2.dbtDetalleMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  dbtDetalle.Hint:= DatosVentas.CDSVentaDetDETALLE.Value + ' '+
                    DatosVentas.CDSVentaDetDETALLE_ADICIONAL.Value;

end;

procedure TFormCpbte_2.DBGrillaDetalleDragDrop(Sender, Source: TObject; X, Y: Integer);
var codigo:string;
  UnitarioTotal,Precio,PrecioRto:Extended;
begin
  inherited;
  // Pasaje de Articulos entre remitos o cosnulta de stock
  if (Source is TJvDBGrid) and ((Source as TJvDBGrid).Name='dbgStock') then
    begin
      if (DatosVentas.CDSVentaCab.State in [dsInsert,dsEdit]) Then
        begin
          DatosVentas.CDSVentaDet.Append;
          DatosVentas.CDSVentaDetCodigoArticuloSetText(DatosVentas.CDSVentaDetCodigoArticulo, (Source as TJvDBGrid).DataSource.DataSet.FieldByName('Codigo_stk').AsString);
          DatosVentas.CDSVentaDetCantidadSetText(DatosVentas.CDSVentaDetCantidad,'1');
          DatosVentas.CDSVentaDetUnitario_TotalSetText(DatosVentas.CDSVentaDetUnitario_Total,(Source as TJvDBGrid).DataSource.DataSet.FieldByName('MuestraPrecio').Value);
        end;
    end
  else
    // Pasaje de Articulos desde remitos
    if (Source is TDBGrid) and ((Source as TDBGrid).Name='DBGrillaDetalle') then
      begin
        if (DatosVentas.CDSVentaCab.State in [dsInsert,dsEdit]) Then
          begin
            if not(DatosVentas.CDSVentaDet.Locate('ID_DET_REMITO',(Source as TDBGrid).DataSource.DataSet.FieldByName('ID').AsString,[])) then
              if ((Source as TDBGrid).DataSource.DataSet.FieldByName('ID_FACTURA').AsString='') or
                 ( VarIsNull((Source as TDBGrid).DataSource.DataSet.FieldByName('ID_FACTURA').Value ) ) or
                 ((Source as TDBGrid).DataSource.DataSet.FieldByName('ID_FACTURA').AsInteger<=0) then
                begin
                  DatosVentas.CDSVentaCabLISTAPRECIO.Text:=(Source as TDBGrid).DataSource.DataSet.FieldByName('MUESTRALISTAPRECIO').AsString;
                  codigo:= (Source as TDBGrid).DataSource.DataSet.FieldByName('CODIGO').AsString;
                  if (DSBase.DataSet.FieldByName('CODIGO').Value= Codigo) then
                    begin

                      DMMain_FD.QStockPrecio.Close;
                      DMMain_FD.QStockPrecio.ParamByName('Codigo').Value  := (Source as TDBGrid).DataSource.DataSet.FieldByName('CODIGOARTICULO').AsString;
                      DMMain_FD.QStockPrecio.ParamByName('deposito').Value:= (Source as TDBGrid).DataSource.DataSet.FieldByName('DEPOSITO').Value;
                      DMMain_FD.QStockPrecio.ParamByName('Lista').Value   := (Source as TDBGrid).DataSource.DataSet.FieldByName('MUESTRALISTAPRECIO').Value;
                      DMMain_FD.QStockPrecio.ParamByName('Sucursal').Value:= (Source as TDBGrid).DataSource.DataSet.FieldByName('SUCURSAL').Value;
                      DMMain_FD.QStockPrecio.Open;

                      DatosVentas.CDSVentaDet.Append;
                      DatosVentas.CDSVentaDetCodigoArticuloSetText(DatosVentas.CDSVentaDetCodigoArticulo, (Source as TDBGrid).DataSource.DataSet.FieldByName('CODIGOARTICULO').AsString);
                      DatosVentas.CDSVentaDetCantidadSetText(DatosVentas.CDSVentaDetCantidad,(Source as TDBGrid).DataSource.DataSet.FieldByName('CANTIDAD').AsString);
                      DatosVentas.CDSVentaDetUnitario_TotalSetText(DatosVentas.CDSVentaDetUNITARIO_TOTAL,(Source as TDBGrid).DataSource.DataSet.FieldByName('UNITARIO_TOTAL').AsString);
                      DatosVentas.CDSVentaDetID_DET_REMITO.Value:=(Source as TDBGrid).DataSource.DataSet.FieldByName('ID').Value;

                      Precio       := DMMain_FD.QStockPrecioPRECIO.AsFloat;
                      PrecioRto    := (Source as TDBGrid).DataSource.DataSet.FieldByName('UNITARIO_TOTAL').AsFloat;
                      if  DatosVentas.CDSVentaCabDESGLOZAIVA.Value='N' then
                        begin
                          Precio      := Precio * (1 + (Source as TDBGrid).DataSource.DataSet.FieldByName('IVA_TASA').AsFloat * 0.01);
                          PrecioRto   := PrecioRto + (Source as TDBGrid).DataSource.DataSet.FieldByName('IVA_UNITARIO').AsFloat;
                        end;

                      if ((Trunc(Precio * 100) - Trunc( PrecioRto * 100)) > 0.01) Then
                        begin
                          if MessageDlg('Precio distinto al ingresado'+#13+
                                        'Artículo      :'+DatosVentas.CDSVentaDetDETALLE.AsString+#13+
                                        'Precio Cargado:'+FormatFloat('0.00',PrecioRto)+#13+
                                        'Nuevo Precio  :'+FormatFloat('0.00',Precio)+#13+#13+
                                        'Modifica?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
                            begin
                              DatosVentas.CDSVentaDetUnitario_Total.AsString:= FormatFloat('0.00',Precio);
                            end;
                        end;

                    end;
                end;
             if DatosVentas.CDSVentaDet.State in [dsInsert,dsEdit] then
               DatosVentas.CDSVentaDet.Post;
          end;
      end;

end;

procedure TFormCpbte_2.DBGrillaDetalleDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  if (Source is TJvDBGrid) then
    begin
      if ((Source as TJvDBGrid).Name='dbgStock') then
        Accept:=True
      else
        Accept:=False;
    end
  else
    Accept:=False;

  if Accept=False then
    if (Source is TDBGrid) then
      if ((Source as TDBGrid).Name='DBGrillaDetalle') then
        Accept:=True
      else
        Accept:=False;

end;

procedure TFormCpbte_2.DBGrillaDetalleDblClick(Sender: TObject);
begin
  inherited;
  if (DSBase.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty)) and (not(DBGrillaDetalle.DataSource.DataSet.IsEmpty)) then
    begin
      if not(Assigned(FormStock_2)) then
        FormStock_2:=TFormStock_2.Create(Self);
      FormStock_2.DatoNew:=DBGrillaDetalle.DataSource.DataSet.FieldByName('codigoArticulo').Value;
      formstock_2.recuperar.Execute;
      FormStock_2.Show;
    end;
end;

procedure TFormCpbte_2.EnviarCorreoExecute(Sender: TObject);
var
  MandarCorreo:Boolean;
  DiscrIva,TipoCpbte:String;
begin
  inherited;
  if Not(DSBase.DataSet.IsEmpty) then
    begin
      MandarCorreo := True;
      DiscrIva     := FormCpbte_2.DiscriminaIva;
      if not DirectoryExists(DMMain_FD.MainPath+'Archivos Temporales') then
        CreateDir(DMMain_FD.MainPath+'Archivos Temporales');

      frFactura.PrintOptions.Printer:=PrNomCpbte;
      frFactura.SelectPrinter;

      DatosVentas.QComprob.Close;
      DatosVentas.QComprob.ParamByName('id').Value         := DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE.Value;
      DatosVentas.QComprob.ParamByName('suc').Value        := DatosVentas.CDSVentaCabSUCURSAL.Value;
      DatosVentas.QComprob.ParamByName('desglozaIva').Value:= '*';
      DatosVentas.QComprob.Open;

      if FileExists(DMMain_FD.PathReportesCpbte + '\Mail_'+DatosVentas.QComprobREPORTE.AsString) then
        frFactura.LoadFromFile(DMMain_FD.PathReportesCpbte + '\Mail_'+DatosVentas.QComprobREPORTE.AsString)
      else
        frFactura.LoadFromFile(DMMain_FD.PathReportesCpbte + '\'+DatosVentas.QComprobREPORTE.AsString);

      FormCpbte_2.DiscriminaIva:='S';

      DatosVentas.QComprob.Close;
      frFactura.PrepareReport;

      frxPDFExport1.ShowDialog:=False;
      if DatosVentas.CDSVentaCabTIPOCPBTE.Value='FC' Then
        frxPDFExport1.FileName:=(DMMain_FD.MainPath+'Archivos Temporales\Factura_'+DatosVentas.CDSVentaCabNROCPBTE.AsString+'.pdf')
      else
       if DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC' Then
          frxPDFExport1.FileName:=(DMMain_FD.MainPath+'Archivos Temporales\NCredito_'+DatosVentas.CDSVentaCabNROCPBTE.AsString+'.pdf')
       else
         if DatosVentas.CDSVentaCabTIPOCPBTE.Value='ND' Then
            frxPDFExport1.FileName:=(DMMain_FD.MainPath+'Archivos Temporales\NDebito_'+DatosVentas.CDSVentaCabNROCPBTE.AsString+'.pdf');

      frFactura.Export(frxPDFExport1);
      frxPDFExport1.ShowDialog:=True;

      DatosVentas.CorreoDestino   := DMMain_FD.GetCorreoCliente_1(DSBase.DataSet.FieldByName('CODIGO').AsString);
      DatosVentas.CorreoDestino_2 := DMMain_FD.GetCorreoCliente_2(DSBase.DataSet.FieldByName('CODIGO').AsString);

      if (TForm(Self.Owner).Name='FormFiscalizacionLote') and (Trim(DatosVentas.CorreoDestino)='') then
        MandarCorreo:=False;

      if (DatosVentas.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and
         (Trunc(DatosVentas.CDSVentaCabCAE.AsFloat)<=0) then
        MandarCorreo:=False;

      // Si no tiene correo no mando nada...
      if MandarCorreo then
        begin
          TipoCpbte:='Factura - ';
          if DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC' then TipoCpbte:='N.de Credito - ';
          if DatosVentas.CDSVentaCabTIPOCPBTE.Value='ND' then TipoCpbte:='N.de Debito - ';
          if Not(Assigned(FormCorreo)) Then
            FormCorreo:=TFormCorreo.Create(Self);
          FormCorreo.CorreoOrigen        := DirCorreo;
          FormCorreo.edDireccion.Text    := DatosVentas.CorreoDestino;
          FormCorreo.Remitente           := Remitente;
          FormCorreo.Destinatario        := DatosVentas.CDSVentaCabNOMBRE.AsString;
          FormCorreo.Puerto              := Puerto;
          FormCorreo.CorreoDestino       := DatosVentas.CorreoDestino;
          FormCorreo.CCopia              := DatosVentas.CorreoDestino_2;
          FormCorreo.NombreServidorCorreo:= NombreServidor;
          FormCorreo.NombreCuentaCorreo  := NombreCuenta;
          FormCorreo.Clave               := Clave;
          FormCorreo.Autenticacion       := Autotenticacion;
          FormCorreo.Asunto              := TipoCpbte + DatosVentas.CDSVentaCabLETRAFAC.AsString+
                                            '-'+ DatosVentas.CDSVentaCabSUCFAC.AsString+
                                            '-'+ DatosVentas.CDSVentaCabNUMEROFAC.AsString+
                                            ' del '+ FormatDateTime('dd-mm-yy',DatosVentas.CDSVentaCabFECHAVTA.AsDateTime);
          if DatosVentas.CDSVentaCabTIPOCPBTE.Value='FC' Then
            FormCorreo.Adjuntos.Add(DMMain_FD.MainPath+'Archivos Temporales\Factura_'+DatosVentas.CDSVentaCabNROCPBTE.AsString+'.pdf')
          else
            if DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC' Then
              FormCorreo.Adjuntos.Add(DMMain_FD.MainPath+'Archivos Temporales\NCredito_'+DatosVentas.CDSVentaCabNROCPBTE.AsString+'.pdf')
            else
              if DatosVentas.CDSVentaCabTIPOCPBTE.Value='ND' Then
                FormCorreo.Adjuntos.Add(DMMain_FD.MainPath+'Archivos Temporales\NDebito_'+DatosVentas.CDSVentaCabNROCPBTE.AsString+'.pdf');

          if AutoEnviarCorreo=False then
            FormCorreo.Show
          else
            FormCorreo.Enviar.Execute;
          AutoEnviarCorreo:=False;
        end;
      FormCpbte_2.DiscriminaIva := DiscrIva;
      DatosVentas.CDSVentaDet.Refresh;
    end;
end;

procedure TFormCpbte_2.ReCalcularTodoExecute(Sender: TObject);
begin
  inherited;
  DatosVentas.ReCalcularTodo;
end;

procedure TFormCpbte_2.dbcPercibeIIBBClick(Sender: TObject);
begin
  inherited;
  if DSBase.State in [dsInsert,DsEdit] Then
    BEGIN
      if dbcPercibeIIBB.Checked Then
        DatosVentas.CDSVentaCabPERCIBE_IB.Value:='S'
      else
        DatosVentas.CDSVentaCabPERCIBE_IB.Value:='N';
      if datosventas.CDSVentaDet.IsEmpty=False then
        begin
          DatosVentas.SumarDetalle;
          DatosVentas.CalcularTotales;
        end;
    END;
  end;

procedure TFormCpbte_2.DBGrillaDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($CCCCFF);
begin
  inherited;
  if (Trunc(DatosVentas.CDSVentaDetUnitario_Total.AsFloat*1000) <
      Trunc(DatosVentas.CDSVentaDetCosto_Total.AsFloat*1000)) Then
    DBGrillaDetalle.canvas.brush.color := clPaleRed;
  DBGrillaDetalle.Canvas.Font.Style:=[];
  if (DatosVentas.CDSVentaDetMargen.AsFloat<DatosVentas.MargenUtilidad) and
     (DatosVentas.CDSVentaDetCodigoArticulo.AsString<>'') and
     (Trunc(DatosVentas.CDSVentaDetMargen.AsFloat*100)<>0) and
     (DatosVentas.CDSVentaDetMargen.AsString<>'') then
    DBGrillaDetalle.Canvas.Font.Style:=[fsBold];

  if (DatosVentas.CDSVentaDetDE_PRODUCCION.AsString='S') then
    DBGrillaDetalle.Canvas.Font.Color:=clBlue;

  if (DatosVentas.CDSVentaDetPERCIBE_IVA.AsString='S') and (DataCol=0) then
    DBGrillaDetalle.Canvas.Brush.Color:=clAqua;

  if (gdFocused in State) then
    begin
      DBGrillaDetalle.canvas.brush.color := ClBlack;
      DBGrillaDetalle.canvas.Font.color  := clWhite;
    end;
    //Esta línea es nueva
  DBGrillaDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormCpbte_2.PasaNC_a_ContadoExecute(Sender: TObject);
begin
  inherited;
  if DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC' then
    begin
      if DatosVentas.CDSVentaCabNC_CONTADO.Value='N' Then
        begin
          if Not(Assigned(FormEleccionCaja)) Then
            FormEleccionCaja:=TFormEleccionCaja.Create(Application);
          FormEleccionCaja.CajaPorDefecto:=CajaPorDefecto;
          FormEleccionCaja.ShowModal;
          if FormEleccionCaja.Caja<>-1 Then
            begin
              DatosVentas.CDSVentaCab.Edit;
              DatosVentas.CDSVentaCabCAJA_POR_DEFECTO.Value:=FormEleccionCaja.Caja;
              DatosVentas.CDSVentaCabNC_CONTADO.Value:='S';
              Confirma.Execute;
            end;
          end
        else
          ShowMessage('La N.de Credito es de contado....');
    end
  else
    ShowMessage('No es una Nota de Credito....');
end;

procedure TFormCpbte_2.Pasar_A_PapeleraExecute(Sender: TObject);
begin
  inherited;
  if not DirectoryExists(DMMain_FD.MainPath+'Papelera_FC') then
    CreateDir(DMMain_FD.MainPath+'Papelera_FC');
  if Not(DatosVentas.CDSVentaCab.IsEmpty)  Then
    begin
      DatosVentas.CDSVentaCab.SaveToFile(DMMain_FD.MainPath+'Papelera_FC\('+DatosVentas.CDSVentaCabID_FC.AsString+')FcVtaCab.XML');
      DatosVentas.CDSVentaDet.SaveToFile(DMMain_FD.MainPath+'Papelera_FC\('+DatosVentas.CDSVentaCabID_FC.AsString+')FcVtaDet.bin');
      DatosVentas.CDSImpuestos.SaveToFile(DMMain_FD.MainPath+'Papelera_FC\('+DatosVentas.CDSVentaCabID_FC.AsString+')FcVtaImp.bin');
      DatosVentas.CDSPercepcionIVA.SaveToFile(DMMain_FD.MainPath+'Papelera_FC\('+DatosVentas.CDSVentaCabID_FC.AsString+')FcPercepcion.bin');
      DatosVentas.CDSVtaSubDetalle.SaveToFile(DMMain_FD.MainPath+'Papelera_FC\('+DatosVentas.CDSVentaCabID_FC.AsString+')FCVtaSubDetalle.bin');
      DatosVentas.CDSVtaDetConsig.SaveToFile(DMMain_FD.MainPath+'Papelera_FC\('+DatosVentas.CDSVentaCabID_FC.AsString+')FcVtaDetConsig.bin');
      DatosVentas.CDSMov_Carnes.SaveToFile(DMMain_FD.MainPath+'Papelera_FC\('+DatosVentas.CDSVentaCabID_FC.AsString+')FCPMov_Carnes.bin');
      DatosVentas.CDSFc_Prod_Det.SaveToFile(DMMain_FD.MainPath+'Papelera_FC\('+DatosVentas.CDSVentaCabID_FC.AsString+')FC_Prod_Det.bin');
      DatosVentas.CDSFc_Prod_Mov.SaveToFile(DMMain_FD.MainPath+'Papelera_FC\('+DatosVentas.CDSVentaCabID_FC.AsString+')Fc_Prod_Mov.bin');
      DatosVentas.CDSRegFacturas.SaveToFile(DMMain_FD.MainPath+'Papelera_FC\('+DatosVentas.CDSVentaCabID_FC.AsString+')FCRegFacturas.bin');
      DatosVentas.CDSVentaLote.SaveToFile(DMMain_FD.MainPath+'Papelera_FC\('+DatosVentas.CDSVentaCabID_FC.AsString+')FCVentaLote.bin');
    end;
end;

procedure TFormCpbte_2.PapeleraExecute(Sender: TObject);
var QAux:TFDQuery;
Nro:string;
Id:String;
sDirectorio:string;
Restaurado:Boolean;
cab:string;
begin
  inherited;
  sDirectorio      := DMMain_FD.MainPath+'Papelera_FC';
  Restaurado:=False;
  if DMMain_FD.UsuarioActivo='master' then
    begin
      if Not(Assigned(FormRestaurarPapelera)) Then
        FormRestaurarPapelera := TFormRestaurarPapelera.Create(Self);
      FormRestaurarPapelera.Tag              := 0;
      FormRestaurarPapelera.Directorio       := sDirectorio;
      FormRestaurarPapelera.CDSVentaCab      := DatosVentas.CDSVentaCab;
      FormRestaurarPapelera.CDSVentaDet      := DatosVentas.CDSVentaDet;
      FormRestaurarPapelera.CDSImpuestos     := DatosVentas.CDSImpuestos;
      FormRestaurarPapelera.CDSPercepcion    := DatosVentas.CDSPercepcionIVA;
      FormRestaurarPapelera.CDSVtaSubDetalle := DatosVentas.CDSVtaSubDetalle;
      FormRestaurarPapelera.CDSVtaDetConsig  := DatosVentas.CDSVtaDetConsig;
      FormRestaurarPapelera.CDSMov_Carnes    := DatosVentas.CDSMov_Carnes;
      FormRestaurarPapelera.CDSFc_Prod_Det   := DatosVentas.CDSFc_Prod_Det;
      FormRestaurarPapelera.CDSFc_Prod_Mov   := DatosVentas.CDSFc_Prod_Mov;
      FormRestaurarPapelera.CDSRegFacturas   := DatosVentas.CDSRegFacturas;
      FormRestaurarPapelera.CDSVentaLote     := DatosVentas.CDSVentaLote;
      FormRestaurarPapelera.ShowModal;
      if FormRestaurarPapelera.ModalResult=mrOk then
        begin
           QAux               := TFDQuery.Create(self);
           QAux.Connection    := DMMain_FD.fdcGestion;
           QAux.CachedUpdates := True;
           Nro                := DatosVentas.CDSVentaCabNUMEROFAC.AsString;
           Id                 := DatosVentas.CDSVentaCabID_FC.AsString;
           DMMain_FD.fdcGestion.StartTransaction;
           try
             QAux.SQL.Text      := DMMain_FD.QVentaCab.Sql.Text;
             QAux.Open;
             QAux.CopyDataSet(DatosVentas.CDSVentaCab);
             QAux.ApplyUpdates(0);
             QAux.Close;

             QAux.SQL.Text      := DMMain_FD.QVentaDet.Sql.Text;
             QAux.Open;
             QAux.CopyDataSet(DatosVentas.CDSVentaDet);
             QAux.ApplyUpdates(0);
             QAux.Close;

             if not(DatosVentas.CDSImpuestos.IsEmpty) then
               begin
                 QAux.SQL.Text      := DMMain_FD.QImpuestosVta.Sql.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentas.CDSImpuestos);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(DatosVentas.CDSVtaSubDetalle.IsEmpty) then
               begin
                 QAux.SQL.Text      := DMMain_FD.QVtaSubDetalle.Sql.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentas.CDSVtaSubDetalle);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(DatosVentas.CDSVtaDetConsig.IsEmpty) Then
               begin
                 QAux.SQL.Text      := DMMain_FD.QVtaDetalleConsig.Sql.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentas.CDSVtaDetConsig);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(DatosVentas.CDSMov_Carnes.IsEmpty) Then
               begin
                 QAux.SQL.Text      := DMMain_FD.QMov_Carnes.Sql.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentas.CDSMov_Carnes);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(DatosVentas.CDSFc_Prod_Det.IsEmpty) Then
               begin
                 QAux.SQL.Text      := DMMain_FD.QFcVta_Prod_Det.Sql.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentas.CDSFc_Prod_Det);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(DatosVentas.CDSFc_Prod_Mov.IsEmpty) Then
               begin
                 QAux.SQL.Text      := DMMain_FD.QFcVta_Prod_Mov.Sql.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentas.CDSFc_Prod_Mov);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(DatosVentas.CDSRegFacturas.IsEmpty) Then
               begin
                 QAux.SQL.Text      := DatosVentas.QRegFacturas.SQL.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentas.CDSRegFacturas);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(DatosVentas.CDSVentaLote.IsEmpty) Then
               begin
                 QAux.SQL.Text      := DMMain_FD.QVentaLote.SQL.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentas.CDSVentaLote);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             QAux.SQL.Text:='Update FcVtaCab f set f.NUMEROFAC='+''''+Nro+''''+' where f.id_fc='+''+ID+'';
             QAux.ExecSQL;
             QAux.Close;
             Restaurado:=True;
             DMMain_FD.fdcGestion.Commit;
           except
             Restaurado:=False;
             DMMain_FD.fdcGestion.Rollback;
             ShowMessage('Opercion de restauración Fallida...')
           end;
           DatoNew   := DatosVentas.CDSVentaCabID_FC.AsString;
           TipoCpbte := DatosVentas.CDSVentaCabTIPOCPBTE.AsString;
           Recuperar.Execute;
        end;
      if Restaurado then
        begin
          DeleteFile(sDirectorio+'\('+Id+')FcVtaCab.xml');
          DeleteFile(sDirectorio+'\('+Id+')FcVtaDet.bin');
          DeleteFile(sDirectorio+'\('+Id+')FcVtaImp.bin');
          DeleteFile(sDirectorio+'\('+Id+')FCVtaSubDetalle.bin');
          DeleteFile(sDirectorio+'\('+Id+')FcVtaDetConsig.bin');
          DeleteFile(sDirectorio+'\('+Id+')FCPMov_Carnes.bin');
          DeleteFile(sDirectorio+'\('+Id+')FC_Prod_Det.bin');
          DeleteFile(sDirectorio+'\('+Id+')Fc_Prod_Mov.bin');
          DeleteFile(sDirectorio+'\('+Id+')FCRegFacturas.bin');
          DeleteFile(sDirectorio+'\('+Id+')FCVentaLote.bin');
        end
      else
        begin
          DatoNew:='-1';
          Recuperar.Execute;
        end;
      FreeAndNil(FormRestaurarPapelera);
    end;
end;

procedure TFormCpbte_2.PasaCCVtaExecute(Sender: TObject);
var Cadena:string;
Ok:Integer;
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador then
    begin
      if DSBase.DataSet.FieldByName('ingresa_a_ctacte').Value='S' then
        Cadena :=' Actualmente En Cta Corriente...'
      else
        Cadena :=' Actualmente Fuera de Cta Corriente...';

      if MessageDlg('Esta por cambiar el estado de Factura de Cta Cte... Seguro? '+
                     Cadena,mtConfirmation,mbYesNo,0,mbNo)=mrYes then
        begin
          try
            DMStoreProcedure.QPasaACtaVta.Close;
            DMStoreProcedure.QPasaACtaVta.ParamByName('id').Value    :=DSBase.DataSet.FieldByName('ID_FC').Value;
            if DSBase.DataSet.FieldByName('ingresa_a_ctacte').Value='S' then
              DMStoreProcedure.QPasaACtaVta.ParamByName('estado').Value:='N'
            else
              DMStoreProcedure.QPasaACtaVta.ParamByName('estado').Value:='S';
            DMStoreProcedure.QPasaACtaVta.ExecSQL;
            DMMain_FD.LogFileFD(1,2,'Cambia Estado Fac.Venta de Cta Cte.'+Cadena+
                                    ' Cliente: '+DatosVentas.CDSVentaCabRAZONSOCIAL.AsString+
                                    ' Importe: '+FormatFloat('0.00',DatosVentas.CDSVentaCabTOTAL.AsFloat),
                                    'FACVTA');
          finally
            DMStoreProcedure.QPasaACtaVta.Close;
          end;



          Recuperar.Execute;
            begin
              DatosVentas.spReHaceMov.Close;
              DatosVentas.spReHaceMov.ParamByName('CPBTE_ID').Value   := DSBase.DataSet.FieldByName('ID_FC').Value;
              DatosVentas.spReHaceMov.ParamByName('CPBTE_TIPO').Value := DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
              DatosVentas.spReHaceMov.ParamByName('CPBTE_CLASE').Value:= DSBase.DataSet.FieldByName('CLASECPBTE').Value;
              DatosVentas.spReHaceMov.ExecProc;
              DatosVentas.spReHaceMov.Close;
            end
        end;
    end;
end;



procedure TFormCpbte_2.ExportarPDFClick(Sender: TObject);
begin
  inherited;
  Exportar_PDF( TPath.GetDocumentsPath+'\');
end;

procedure TFormCpbte_2.ExportarXMLExecute(Sender: TObject);
begin
  inherited;
  if not DirectoryExists(DMMain_FD.MainPath+'Archivos Temporales') then
    CreateDir(DMMain_FD.MainPath+'Archivos Temporales');
  if Not(DatosVentas.CDSVentaCab.IsEmpty)  Then
    begin
      DatosVentas.CDSVentaCab.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaCab.XML');
      DatosVentas.CDSVentaDet.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaDet.XML');
      DatosVentas.CDSImpuestos.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaImp.XML');
      DatosVentas.CDSPercepcionIVA.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaPerc.XML');

      DatosVentas.CDSVentasEntregas.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaEntregas.XML');
     end
  else
    ShowMessage('No Hay datos para exportar....');
end;

procedure TFormCpbte_2.Exportar_PDF(Dir:string;ConDialogo:Boolean = True);
var DiscrIVA:String;
begin
  DiscrIva                      := FormCpbte_2.DiscriminaIva;
  FormCpbte_2.DiscriminaIva     := 'S';
  DatosVentas.QComprob.Close;
  DatosVentas.QComprob.ParamByName('id').Value         := DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE.Value;
  DatosVentas.QComprob.ParamByName('suc').Value        := DatosVentas.CDSVentaCabSUCURSAL.Value;
  DatosVentas.QComprob.ParamByName('desglozaIva').Value:= '*';
  DatosVentas.QComprob.Open;

  if FileExists(DMMain_FD.PathReportesCpbte + '\Mail_'+DatosVentas.QComprobREPORTE.AsString) then
    frFactura.LoadFromFile(DMMain_FD.PathReportesCpbte + '\Mail_'+DatosVentas.QComprobREPORTE.AsString)
  else
    frFactura.LoadFromFile(DMMain_FD.PathReportesCpbte + '\'+DatosVentas.QComprobREPORTE.AsString);

  frxPDFExport1.ShowDialog:=False;

  frxPDFExport1.FileName:='';

  if DatosVentas.CDSVentaCabTIPOCPBTE.Value='FC' Then
    frxPDFExport1.FileName := Dir+DatosVentas.CDSVentaCabNROCPBTE.AsString+'.pdf'
  else
   if DatosVentas.CDSVentaCabTIPOCPBTE.Value='NC' Then
      frxPDFExport1.FileName := Dir+DatosVentas.CDSVentaCabNROCPBTE.AsString+'.pdf'
   else
     if DatosVentas.CDSVentaCabTIPOCPBTE.Value='ND' Then
        frxPDFExport1.FileName := Dir+DatosVentas.CDSVentaCabNROCPBTE.AsString+'.pdf';

  frFactura.PrepareReport;
  frxPDFExport1.ShowDialog    := ConDialogo;// True;
  frxPDFExport1.EmbeddedFonts := True;
  frxPDFExport1.OnBeforeExport:= nil;
  frFactura.Export(frxPDFExport1);
  frxPDFExport1.OnBeforeExport:= frxPDFExport1BeforeExport;

  DatosVentas.QComprob.Close;
  FormCpbte_2.DiscriminaIva   :=DiscrIva;
end;

procedure TFormCpbte_2.ExpresarUnidadesenEnteros1Click(Sender: TObject);
begin
  inherited;
  ExpresarUnidadesenEnteros1.Checked:= not(ExpresarUnidadesenEnteros1.Checked);
  DBGrillaDetalle.Refresh;
end;

procedure TFormCpbte_2.CopiaralPortaPaplesdeWindows1Click(Sender: TObject);
begin
  inherited;
  DMMain_FD.CopiarClipBoard(DBGrillaDetalle);
end;

procedure TFormCpbte_2.CopiarDetalleExecute(Sender: TObject);
begin
  inherited;
  if not DirectoryExists(DMMain_FD.MainPath+'Archivos Temporales') then
    CreateDir(DMMain_FD.MainPath+'Archivos Temporales');
  if Not(DatosVentas.CDSVentaCab.IsEmpty)  Then
    begin
//      DatosVentas.wwCDSVentaCab.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaCab.XML');
      DatosVentas.CDSVentaDet.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaDet.XML');
//      DatosVentas.wwCDSImpuestos.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaImp.XML');
    end
  else
    ShowMessage('No Hay datos para Copiar....');
  shPP.Visible:=True;
end;

procedure TFormCpbte_2.PedidoCOTExecute(Sender: TObject);
var cliente: ClienteRE;
  cab: IRemito;
  det: IProducto;
  COT_CLAVE,COT_CUIT,FechaSalida:String;
begin
  if Not(Assigned(FormFecha)) then
    FormFecha:=TFormFecha.Create(self);
  FormFecha.fecha:=Date;
  FormFecha.dbcCtaBco.Visible   := False;
  FormFecha.dbcSucursal.Visible := False;
  FormFecha.ShowModal;
  if FormFecha.ModalResult=mrOk then
    FechaSalida :=FormatDateTime('yyyymmdd', FormFecha.fecha)
  else
    FechaSalida :=FormatDateTime('yyyymmdd', Now);

  FreeAndNil(FormFecha);

  if (DSBase.DataSet.FieldByName('ID_TRANSPORTE').AsString='') or (DSBase.DataSet.FieldByName('ID_TRANSPORTE').AsInteger<=0) then
    raise Exception.Create('No Hay Transporte seleccionado....');

  if Trim(DMMain_FD.CuitCOT)='' then
    raise Exception.Create('No Hay CUIT para Cot....');

  if Trim(DMMain_FD.ClaveCOT)='' then
    raise Exception.Create('No Hay Clave para Cot....');

  cliente                             := CoClienteRE.Create;
  cliente.ModoProduccion              := DMMain_FD.ModoCOT=1;          //  false;          // Cambiar a true para trabajar en producción
  cliente.CUIT                        := StrToFloat(DMMain_FD.CuitCOT);// 20939802593;     //StrToFloat(AnsiReplaceStr(DatosRemitos.CDSEmpresaCUIT.AsString,'-','')); //20129063662;//20939802593;
  cliente.Password                    := DMMain_FD.ClaveCOT;           // 'bitingenieria'; // Obtenerla segun las instrucciones en www.bitingenieria.com.ar/cotlinker
  DMMain_FD.COT_Sucursal(DSBase.DataSet.FieldByName('SUCURSAL').Value,cot_cuit,cot_clave);
  if COT_cuit<>'' then
    begin
      cliente.CUIT       := StrToFloat(cot_cuit);// 20939802593;     //StrToFloat(AnsiReplaceStr(DatosRemitos.CDSEmpresaCUIT.AsString,'-','')); //20129063662;//20939802593;
      cliente.Password   := Cot_clave;           // 'bitingenieria'; // Obtenerla segun las instrucciones en www.bitingenieria.com.ar/cotlinker
    end;


  cliente.NroPlanta                   := 0;
  cliente.NroPuerta                   := 1;
  cliente.Fecha                       := FormatDateTime('yyyymmdd', Now);
  cliente.NroSecuencial               := 10;
  cliente.Inicializar;

  cab                                 := CoRemito.Create;

  if Trim(DSBase.DataSet.FieldByName('MUESTRACODIGOAFIP').Value)='' then
    raise Exception.Create('No Hay Codigo de Comprobante ...');

  cab.CU_CODIGO_DGI                   := StrToInt(DSBase.DataSet.FieldByName('MUESTRACODIGOAFIP').Value);//   91;
  cab.CU_TIPO                         := ' '+DSBase.DataSet.FieldByName('LETRAFAC').AsString;//   ' R';
  cab.CU_PREFIJO                      := DSBase.DataSet.FieldByName('SUCFAC').AsInteger;// 5;
  cab.CU_NUMERO                       := DSBase.DataSet.FieldByName('NUMEROFAC').AsInteger;// 10;

  cab.FECHA_EMISION                   := FormatDateTime('yyyymmdd', Now);//  '';//DSBase.DataSet.FieldByName('FECHAVTA').AsDateTime;//   FormatDateTime('yyyymmdd', Now);
  cab.FECHA_SALIDA_TRANSPORTE         := FechaSalida;// FormatDateTime('yyyymmdd', Now);
  cab.SUJETO_GENERADOR                := 'E';
  cab.DESTINATARIO_CONSUMIDOR_FINAL   := false;
  cab.DESTINATARIO_TENEDOR            := true;
  cab.DESTINATARIO_CUIT               := StrToFloat(AnsiReplaceStr(DSBase.DataSet.FieldByName('CUIT').AsString,'-',''));//   20939802593;
  cab.DESTINATARIO_RAZON_SOCIAL       := DSBase.DataSet.FieldByName('RAZONSOCIAL').AsString;//'Razon Social';
  cab.DESTINO_DOMICILIO_CALLE         := ifthen(DSBase.DataSet.FieldByName('MUESTRADIRECCION_CALLE').AsString<>'',DSBase.DataSet.FieldByName('MUESTRADIRECCION_CALLE').AsString,DSBase.DataSet.FieldByName('DIRECCION').AsString);//'calle';
  if Trim(DSBase.DataSet.FieldByName('MUESTRADIRECCION_NRO').AsString)<>'' then
    cab.DESTINO_DOMICILIO_NUMERO        := DSBase.DataSet.FieldByName('MUESTRADIRECCION_NRO').AsInteger
  else
    cab.DESTINO_DOMICILIO_NUMERO        := 1234;//1234;

  cab.DESTINO_DOMICILIO_CODIGO_POSTAL := ifThen(DSBase.DataSet.FieldByName('CPOSTAL').AsString<>'',DSBase.DataSet.FieldByName('CPOSTAL').AsString,'1000');//'1234';
  cab.DESTINO_DOMICILIO_LOCALIDAD     := DSBase.DataSet.FieldByName('LOCALIDAD').AsString;//'Capital Federal';
  cab.DESTINO_DOMICILIO_PROVINCIA     := ifthen(DSBase.DataSet.FieldByName('LETRACOT').AsString<>'',DSBase.DataSet.FieldByName('LETRACOT').AsString,' B');
  cab.ORIGEN_CUIT                     := cliente.CUIT;// StrToFloat(AnsiReplaceStr(DatosRemitos.CDSEmpresaCUIT.AsString,'-',''));// 20939802593;
  cab.ORIGEN_RAZON_SOCIAL             := DatosVentas.CDSEmpresaNOMBRE.AsString;// 'razon social';
  cab.ORIGEN_DOMICILIO_CALLE          := DatosVentas.CDSEmpresaDIRECCION.AsString;// 'calle';
  cab.ORIGEN_DOMICILIO_NUMERO         := DatosVentas.CDSEmpresaDIRECCION_NRO.AsInteger;// 1234;
  cab.ORIGEN_DOMICILIO_CODIGO_POSTAL  := DatosVentas.CDSEmpresaCPOSTAL.Value;// '1234';
  cab.ORIGEN_DOMICILIO_LOCALIDAD      := DatosVentas.CDSEmpresaLOCALIDAD.Value;//  'Avellaneda';
  cab.ORIGEN_DOMICILIO_PROVINCIA      := DatosVentas.CDSEmpresaCODIGO_COT.Value;// 'B';
  cab.ENTREGA_DOMICILIO_ORIGEN        := 'SI';
  cab.TRANSPORTISTA_CUIT              := StrToFloat(AnsiReplaceStr(DSBase.DataSet.FieldByName('MUESTRACUITTRANSPORTE').AsString,'-',''));// 20939802593;
  cab.PATENTE_VEHICULO                := DSBase.DataSet.FieldByName('MUESTRADOMINIOUNIDADTR').AsString;//DatosVentas.CDSRtoCabMUESTRADOMINIOUNIDTR.AsString;// 'AAA111';
  cab.IMPORTE                         := DSBase.DataSet.FieldByName('TOTAL').AsFloat;//DatosVentas.CDSRtoCabTOTAL.AsFloat;//  1000;

  cliente.AgregaRemito(cab);

  DatosVentas.CDSVentaDet.First;
  DatosVentas.CDSVentaDet.DisableControls;
  while Not(DatosVentas.CDSVentaDet.Eof) do
    begin
      det                                  := CoProducto.Create;
      det.CODIGO_UNICO_PRODUCTO            := DMMain_FD.CodigoConceptoCOT;//   '010100';//DatosRemitos.CDSRtoDetCODIGOARTICULO.Value;// '010100'; 190590
      det.RENTAS_CODIGO_UNIDAD_MEDIDA      := 1;
      det.CANTIDAD                         := DatosVentas.CDSVentaDetCANTIDAD.Value;// 1000;
      det.PROPIO_CODIGO_PRODUCTO           := DatosVentas.CDSVentaDetCODIGOARTICULO.Value;//'prod1';
      det.PROPIO_DESCRIPCION_PRODUCTO      := Copy(DatosVentas.CDSVentaDetDETALLE.Value,1,40);//'producto 1';
      det.PROPIO_DESCRIPCION_UNIDAD_MEDIDA := 'UNIDAD';
      det.CANTIDAD_AJUSTADA                := DatosVentas.CDSVentaDetCANTIDAD.Value;//1000;

      cliente.AgregaProducto(det);
      DatosVentas.CDSVentaDet.Next;

    end;
  cliente.Enviar;


  if cliente.Resultado.TransactionOk then
    begin
     DMMain_FD.GravarCot('A',DatosVentas.CDSVentaCabID_FC.Value,IntToStr(cliente.Resultado.COT));
     ShowMessage('COT obtenido: ' + IntToStr(cliente.Resultado.COT));
     Recuperar.Execute;
    end
  else
    ShowMessage(cliente.Resultado.Errores);
end;

procedure TFormCpbte_2.PegarDetalleExecute(Sender: TObject);
var importe :extended;
begin
  inherited;
  shPP.Visible:=False;
  if (DSBase.State in [dsInsert,dsEdit]) and (ActiveControl is TDBGrid) Then
    begin
      DatosVentas.CDSDetalleXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaDet.XML');
      DatosVentas.CDSDetalleXML.First;
      while not(DatosVentas.CDSDetalleXML.Eof) do
        begin
          DatosVentas.CDSVentaDet.Append;
          DatosVentas.CDSVentaDetCodigoArticuloSetText(DatosVentas.CDSVentaDetCodigoArticulo,DatosVentas.CDSDetalleXML.FieldByName('CODIGOArticulo').AsString);
          DatosVentas.CDSVentaDetDetalle.AsString  :=DatosVentas.CDSDetalleXML.FieldByName('Detalle').AsString;
          DatosVentas.CDSVentaDetDescuentoSetText(DatosVentas.CDSVentaDetDescuento,DatosVentas.CDSDetalleXML.FieldByName('DESCUENTO').AsString);
          DatosVentas.CDSVentaDetCantidadSetText(DatosVentas.CDSVentaDetCantidad,DatosVentas.CDSDetalleXML.FieldByName('Cantidad').AsString);
          if (DatosVentas.CDSVentaCabDESGLOZAIVA.Value='N') or (FormCpbte_2.DiscriminaIva='N') then
            importe:=DatosVentas.CDSDetalleXML.FieldByName('Unitario_Total').AsFloat+
                     DatosVentas.CDSDetalleXML.FieldByName('Iva_Unitario').AsFloat
          else
            importe:=DatosVentas.CDSDetalleXML.FieldByName('Unitario_Total').AsFloat;

          DatosVentas.CDSVentaDetUnitario_Total.Text    :=  FormatFloat('0.00',Importe);
          DatosVentas.CDSVentaDet.Post;
          DatosVentas.CDSDetalleXML.Next;
        end;
    end;

end;

procedure TFormCpbte_2.pnCabeceraMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
 // if (X>580) and (x<680) then
 //   if (y>129) and (y<145) then
 //     sbEstado.Panels[2].Text:=IntToStr(x)+'-'+IntToStr(y);

//      if dbeRemitos.Text<>'' then
//     begin
//       FormCpbte_2.ShowHint:=False;
//       FormCpbte_2.Hint:='';
//       FormCpbte_2.Hint:= dbeRemitos.Text;
//       FormCpbte_2.ShowHint:=True;
//     end
//   else
//     dbeRemitos.ShowHint:=False;

end;

procedure TFormCpbte_2.pnDetalleAdicionalExit(Sender: TObject);
begin
  inherited;
  pnDetalleAdicional.Visible:=False;
  FormCpbte_2.DBGrillaDetalle.SetFocus;
  FormCpbte_2.DBGrillaDetalle.SelectedIndex:=2;
end;

procedure TFormCpbte_2.pnMovCajaClick(Sender: TObject);
begin
  inherited;
  MOvCajaNCo.Execute;
end;

procedure TFormCpbte_2.PrevExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursal  ='+DSBase.DataSet.FieldByName('SUCURSAL').AsString +
             ' and letraFac = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRAFAC').AsString,'''');
  inherited;

end;

end.

//      RecalculoSuma00.Execute;
//      GeneraTx:=False;
//      if (DatosVentas.CDSVentaCabANULADO.Value<>'S') and (CpbteNuevo='S') Then
//        VerificaFranquicia;

//      Control de Campos Vacios
//      for i:= 0 to CDSVentaCab.FieldCount - 1 do
//        begin
//          if CDSVentaCab.Fields[i].AsString='' then
//            ShowMessage( CDSVentaCab.Fields[i].Name+':'+CDSVentaCab.Fields[i].AsString+' '+ BoolToStr(CDSVentaCab.Fields[i].Required));
//        end;
     //ListBox1.Items.Clear;
//
//      for i:= 0 to CDSVentaDet.FieldCount - 1 do
//        begin
//        //  if CDSVentaDet.FieldDefList[i].DataType=ftInteger Then
//          ListBox1.Items.Append( CDSVentaDet.Fields[i].Name+' :'+'............ ('+VarToStr(CDSVentaDet.FieldDefList[i].DataType)+') ..... '+
//                                 CDSVentaDet.Fields[i].AsString+'....'+ VarToStr(CDSVentaDet.Fields[i].Required));
//        end;
//     ListBox1.Visible:=True;
    // ShowMessage('');
     //este linea es nueva
//   CDSVentaLote.First;
//   for i:= 0 to CDSVentaLote.FieldCount - 1 do
//       begin
//         // if CDSVentaLote.FieldDefList[i].DataType=ftInteger Then
//          ListBox1.Items.Append( CDSVentaLote.Fields[i].Name+' :'+'............ ('+VarToStr(CDSVentaLote.FieldDefList[i].DataType)+') ..... '+
//                                 CDSVentaLote.Fields[i].AsString+'....'+ VarToStr(CDSVentaLote.Fields[i].Required));
//        end;
//     ListBox1.Visible:=True;

