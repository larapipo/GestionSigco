unit UFacturaCtdo_2;

interface

uses
  Windows,UABMBase, Db,  frxDBSet, frxClass, Buttons,
  ComCtrls, Forms, UMovValoresIngreso, Grids, DBGrids, ExtCtrls,  
  Mask, DBCtrls, StdCtrls,DBClient,  Classes, ActnList,SystelConn,
  Controls, ToolWin, SysUtils, Dialogs, Librerias, Graphics, {CPDrv,}
  frxExportRTF,Variants, ImgList, ActnMan,  ActnColorMaps, JvExControls, JvGradient,
  JvComponentBase, frxDMPExport, frxExportText, frxExportImage, frxExportPDF, Menus,
  JvArrowButton, JvFormPlacement, JvLabel, JvDBControls, JvExMask, JvToolEdit,
  FMTBcd, SqlExpr, DBXCommon, JvDBLookup, Math, GridClickPatch, CustomizeDlg, JvExDBGrids,
  JvDBGrid, IniFiles,StrUtils, System.Actions, JvAppStorage, JvAppIniStorage,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxGDIPlusClasses, JvFormMagnet, frxExportBaseDialog, JvBaseDlg, JvDesktopAlert,
  System.ImageList, AdvUtil, AdvObj, BaseGrid, AdvGrid, frCoreClasses,
  AdvSmoothButton, JvExComCtrls, JvDBTreeView;

type
  TFormCpbteCtdo_2 = class(TFormABMBase)
    pnCabecera: TPanel;
    Label1: TLabel;
    DBText1: TDBText;
    dbtMuestraComprobante: TDBText;
    DBText3: TDBText;
    DBCheckManual: TDBCheckBox;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeNombre: TDBEdit;
    dbeLdr: TDBEdit;
    dbeMuestraSucursal: TDBEdit;
    dbeDeposito: TDBEdit;
    dbeEntrega: TDBEdit;
    pcDetalleFactura: TPageControl;
    PagDetalles: TTabSheet;
    Label17: TLabel;
    Label2: TLabel;
    dbeObservaciones2: TDBEdit;
    dbeObservaciones1: TDBEdit;
    DBGrillaDetalle: TDBGrid;
    Panel3: TPanel;
    DBCheckBox2: TDBCheckBox;
    PagPieCpbte: TTabSheet;
    Label6: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Bevel1: TBevel;
    Bevel6: TBevel;
    Bevel22: TBevel;
    Bevel28: TBevel;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText7: TDBText;
    DBText6: TDBText;
    Label21: TLabel;
    Bevel32: TBevel;
    DBText8: TDBText;
    DBText9: TDBText;
    Label3: TLabel;
    DBGrillaIva: TDBGrid;
    dbeDscto: TDBEdit;
    frxDBCabecera: TfrxDBDataset;
    frxDBDetalle: TfrxDBDataset;
    frxDBImpuetos: TfrxDBDataset;
    BuscarSucrusal: TAction;
    BuscarTipoCpbte: TAction;
    BuscarArticulo: TAction;
    BuscarCliente: TAction;
    BuscarLdr: TAction;
    BuscarDeposito: TAction;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    ToolButton2: TToolButton;
    BtAnular: TSpeedButton;
    Imprimir: TAction;
    Anular: TAction;
    FrameMovValoresIngreso1: TFrameMovValoresIngreso;
    PagValores: TTabSheet;
    dbeMuestraVendedor: TDBEdit;
    BuscarVendedor: TAction;
    Label4: TLabel;
    dbeDscto_1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DatosCliente: TAction;
    DesmarcarImpresa: TAction;
    BuscarPresupuesto: TAction;
    btBuscarPresupuestos: TBitBtn;
    Recalcular: TAction;
    gbLista: TGroupBox;
    dbcLista: TDBLookupComboBox;
    pnCosto: TPanel;
    dbtCosto: TDBText;
    Label8: TLabel;
    dbtDetalle: TDBText;
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
    lbLimiteCredito: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    frxRTFExport1: TfrxRTFExport;
    lbEstado: TLabel;
    gbValores: TGroupBox;
    DBEdit2: TDBEdit;
    dbtZ: TDBText;
    ReCalcularTodo: TAction;
    dbtImporte_IB: TDBText;
    bvPercepcion: TBevel;
    dbtTasa_IB: TDBText;
    lbPercep: TLabel;
    Label13: TLabel;
    DBText12: TDBText;
    dbcPercibeIIBB: TDBCheckBox;
    CalcularRecargosTC: TAction;
    Button1: TButton;
    CancelarRecargoTC: TAction;
    Button2: TButton;
    pnAvisoFUAP: TPanel;
    Panel2: TPanel;
    DBText10: TDBText;
    Label5: TLabel;
    ExportarXML: TAction;
    PegarDetalle: TAction;
    CopiarDetalle: TAction;
    ClonarFc: TAction;
    gbPrecioTabla: TGroupBox;
    lsPrecios: TListBox;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxPDFExport1: TfrxPDFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    EnviarCorreo: TAction;
    spCorreo: TSpeedButton;
    TransferirXML: TAction;
    PopupMenu1: TPopupMenu;
    CalcularRecargosTC1: TMenuItem;
    ReCalcularTodo1: TMenuItem;
    ransferirXML1: TMenuItem;
    PegarDetalle1: TMenuItem;
    CancelarRecargoTC1: TMenuItem;
    ClonarFc1: TMenuItem;
    DesmarcarImpresa1: TMenuItem;
    ExportarXML1: TMenuItem;
    Recalcular1: TMenuItem;
    BuscarDeposito1: TMenuItem;
    NroRec: TDBText;
    CambiarNro: TAction;
    CambiarNro1: TMenuItem;
    TransofrmarFc: TAction;
    ransofrmarFc1: TMenuItem;
    spMenu: TSpeedButton;
    DBText11: TDBText;
    RxLabel1: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel8: TJvLabel;
    RxLabel9: TJvLabel;
    RxLabel10: TJvLabel;
    RxLabel11: TJvLabel;
    lbVdor: TJvLabel;
    RxLabel4: TJvLabel;
    RxCCodigo: TJvDBComboEdit;
    RxCLdr: TJvDBComboEdit;
    RxCSucursal: TJvDBComboEdit;
    RxCDeposito: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    rxcVendedor: TJvDBComboEdit;
    dbeFechaVta: TJvDBDateEdit;
    JvLabel1: TJvLabel;
    pagPorCtaOrden: TTabSheet;
    dbgConsignaciones: TDBGrid;
    dbeProveedor: TDBEdit;
    ceProveedor: TJvDBComboEdit;
    BuscarProveedor: TAction;
    BuscaRecepcionDetalle: TAction;
    DBCheckBox1: TDBCheckBox;
    Bevel8: TBevel;
    dbtTotal: TDBText;
    dbchCtayOrden: TDBCheckBox;
    lbJurisdiccion: TJvLabel;
    dbcJuri: TDBLookupComboBox;
    frGtia: TfrxReport;
    frxDBGtias: TfrxDBDataset;
    DBText13: TDBText;
    CambioDeposito: TAction;
    CambioDeposito1: TMenuItem;
    CalcularIvaDet: TAction;
    DBText14: TDBText;
    DuplicarComprobante: TAction;
    DuplicarComprobante1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    CalcularelIvaendetalle1: TMenuItem;
    RecalculoSuma00: TAction;
    RecalculoSuma0001: TMenuItem;
    Acopiar: TAction;
    spAcopiar: TSpeedButton;
    DBStatusLabel2: TJvDBStatusLabel;
    Freezar: TAction;
    LeerFacturasFreezadas: TAction;
    RxLabel63: TJvLabel;
    dbeRemitos: TDBEdit;
    HacerNC: TAction;
    N3: TMenuItem;
    HacerNCSobresestaFactura1: TMenuItem;
    JvLabel2: TJvLabel;
    pnPrecios: TPanel;
    dbgPrecios: TJvDBGrid;
    DBText15: TDBText;
    DBText16: TDBText;
    DBText17: TDBText;
    dbtCotozacionDet: TDBText;
    DBEdit1: TDBEdit;
    shPP: TShape;
    pmMenu: TPopupMenu;
    CopiarDetalle1: TMenuItem;
    PegarDetalle2: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    chPreview: TCheckBox;
    edNumeroOP: TDBText;
    Label12: TLabel;
    GravarNumeroOperacion: TAction;
    VerOperacionesRelacionadas: TAction;
    BuscarPorReferencia: TAction;
    BuscarPorReferencia1: TMenuItem;
    CambiarCliente: TAction;
    CambiarCliente1: TMenuItem;
    N7: TMenuItem;
    Freezar1: TMenuItem;
    LeerFacturasFreezadas1: TMenuItem;
    DBText2: TDBText;
    CambiarModoDiscIVA: TAction;
    Buscar1: TMenuItem;
    Fiscalizar: TAction;
    Fiscalizar1: TMenuItem;
    N8: TMenuItem;
    spFiscalizar: TSpeedButton;
    frEmpresa: TfrxDBDataset;
    N9: TMenuItem;
    DBText20: TDBText;
    DBText19: TDBText;
    CambiarCuit: TAction;
    N10: TMenuItem;
    CambioDeposito2: TMenuItem;
    BuscarPorObs: TAction;
    EditarProduccion: TAction;
    spProduccion: TSpeedButton;
    GenerarOrdenProduccion: TAction;
    GenerarOrdendeProduccion1: TMenuItem;
    VerOrdenProduccion: TAction;
    N11: TMenuItem;
    VerOrdendeProduccionAsociada1: TMenuItem;
    N12: TMenuItem;
    VerCodigoAlternativo1: TMenuItem;
    Label7: TLabel;
    BorrarCAE1: TMenuItem;
    LibroIVA: TAction;
    AgregaroSacardellibrodeIva1: TMenuItem;
    pnAcopio: TPanel;
    dbtAcopio: TDBText;
    JvLabel12: TJvLabel;
    pnCtroCosto: TPanel;
    dbtCtroCosto: TDBText;
    lbCtroCosto: TJvLabel;
    frCajaMov: TfrxDBDataset;
    frChe3: TfrxDBDataset;
    frTCred: TfrxDBDataset;
    spNCredito: TSpeedButton;
    CambiarClase: TAction;
    CambiarClase1: TMenuItem;
    MainMenu1: TMainMenu;
    MenuImp: TMenuItem;
    MostrarDlg: TMenuItem;
    tsLote: TTabSheet;
    dbgDetalleLotes: TDBGrid;
    pnLote: TPanel;
    JvLabel8: TJvLabel;
    JvDBComboEdit1: TJvDBComboEdit;
    Panel4: TPanel;
    JvLabel10: TJvLabel;
    JvLabel11: TJvLabel;
    JvLabel9: TJvLabel;
    DBEdit5: TDBEdit;
    dbeCantidadLote: TDBEdit;
    DBEdit4: TDBEdit;
    BuscarLote: TAction;
    frxDBLotes: TfrxDBDataset;
    BorrarCae: TAction;
    ComBuscadorLDR: TComBuscador;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorDeposito: TComBuscador;
    ComBuscadorVendedor: TComBuscador;
    ComBuscadorSerie: TComBuscador;
    ComBuscadorRecepciones: TComBuscador;
    ComBuscadorLote: TComBuscador;
    Bevel2: TBevel;
    DBText21: TDBText;
    Label15: TLabel;
    Bevel3: TBevel;
    DBText22: TDBText;
    Label18: TLabel;
    N13: TMenuItem;
    VerColumnaUnidades: TMenuItem;
    NoLiquidar: TAction;
    NoLiquidar1: TMenuItem;
    VerHojaCarga: TAction;
    VerHojadeCarga1: TMenuItem;
    DBText32: TDBText;
    OmitirControlFondosMaster1: TMenuItem;
    ToolBar2: TToolBar;
    N14: TMenuItem;
    RevisiondeValores1: TMenuItem;
    RevisionValoresIng: TAction;
    frSucursal: TfrxDBDataset;
    DBText23: TDBText;
    RecuperarRemitos: TAction;
    RecuperarRemitos1: TMenuItem;
    N15: TMenuItem;
    ImpresionFormatoMail1: TMenuItem;
    imBalanza: TImage;
    LeerPeso: TAction;
    ConectarBalanza: TAction;
    Pasar_A_Papelera: TAction;
    Papelera: TAction;
    SpeedButton3: TSpeedButton;
    PasarAPapelera1: TMenuItem;
    dskAviso: TJvDesktopAlert;
    N16: TMenuItem;
    ExpresarUnidadesenEnteros1: TMenuItem;
    N17: TMenuItem;
    GenerarRemito: TAction;
    spRto: TSpeedButton;
    frFactura: TfrxReport;
    pnNC: TPanel;
    DBText24: TDBText;
    DBText25: TDBText;
    VerNC: TAction;
    DBImage1: TDBImage;
    N18: TMenuItem;
    IniciarFocoFecha1: TMenuItem;
    Desanular: TAction;
    RehacerQr: TAction;
    N19: TMenuItem;
    CopiaralPortaPapelesdeWindows1: TMenuItem;
    N20: TMenuItem;
    ImportarExcel: TAction;
    OpenDialog: TOpenDialog;
    ImportardesdeExcel1: TMenuItem;
    dbgPercecpionesIVA: TDBGrid;
    lbModoCpbte: TLabel;
    frxDBPercepcionesIVA: TfrxDBDataset;
    ActualizaCostoFcVta: TAction;
    N21: TMenuItem;
    ActualizaCostoenFactura1: TMenuItem;
    dbtProvincia: TDBText;
    dbtLocalidad: TDBText;
    dbtId_Juridiccion: TDBText;
    BorrarDeTemporal: TAction;
    EnviarTemporal: TAction;
    GenerarNotaPedido: TAction;
    GenerarNotaPedido1: TMenuItem;
    Label54: TLabel;
    DBText42: TDBText;
    AsignarObra: TAction;
    MarcarComoImpresaalDuplicar1: TMenuItem;
    ModificarDatosCabecera: TAction;
    ModificarDatosCabecera1: TMenuItem;
    SpeedButton4: TSpeedButton;
    pagTablas: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    frDBDetNovedades: TfrxDBDataset;
    VerNovedadesDet: TAction;
    spNovedadesDetalle: TSpeedButton;
    UsarUltimoDeposito: TMenuItem;
    procedure AgregarExecute(Sender: TObject);
    procedure BuscarSucrusalExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure BuscarLdrExecute(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure pcDetalleFacturaChange(Sender: TObject);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
    procedure DBGrillaDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckManualClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure AnularExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure pcDetalleFacturaEnter(Sender: TObject);
    procedure DBGrillaDetalleEditButtonClick(Sender: TObject);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCSucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCLdrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCDepositoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarVendedorExecute(Sender: TObject);
    procedure rxcVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrillaDetalleEnter(Sender: TObject);
    procedure DBGrillaDetalleExit(Sender: TObject);
    procedure DatosClienteExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure DesmarcarImpresaExecute(Sender: TObject);
    procedure BuscarPresupuestoExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cpPuertoComReceiveData(Sender: TObject; DataPtr: Pointer;
      DataSize: Cardinal);
    procedure dbeFechaVtaExit(Sender: TObject);
    procedure dbcListaClick(Sender: TObject);
    procedure RecalcularExecute(Sender: TObject);
    procedure dbcListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AgregarClienteExecute(Sender: TObject);
    procedure dbgDetalleVtaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbgSeriesKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarSerieExecute(Sender: TObject);
    procedure DBGrillaDetalleDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure DBGrillaDetalleDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure ReCalcularTodoExecute(Sender: TObject);
    procedure dbcPercibeIIBBClick(Sender: TObject);
    procedure CalcularRecargosTCExecute(Sender: TObject);
    procedure CancelarRecargoTCExecute(Sender: TObject);
    procedure DBGrillaDetalleDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ExportarXMLExecute(Sender: TObject);
    procedure PegarDetalleExecute(Sender: TObject);
    procedure CopiarDetalleExecute(Sender: TObject);
    procedure ClonarFcExecute(Sender: TObject);
    procedure lsPreciosClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure lsPreciosKeyPress(Sender: TObject; var Key: Char);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure EnviarCorreoExecute(Sender: TObject);
    procedure TransferirXMLExecute(Sender: TObject);
    procedure CambiarNroExecute(Sender: TObject);
    procedure TransofrmarFcExecute(Sender: TObject);
    procedure frFacturaPrintReport(Sender: TObject);
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure BuscaRecepcionDetalleExecute(Sender: TObject);
    procedure dbchCtayOrdenClick(Sender: TObject);
    procedure FrameMovValoresIngreso1CDSCajaMovAfterDelete(DataSet: TDataSet);
    procedure FrameMovValoresIngreso1CDSCajaMovBeforeDelete(DataSet: TDataSet);
    procedure FrameMovValoresIngreso1CDSCajaMovAfterPost(DataSet: TDataSet);
    procedure dbgConsignacionesEnter(Sender: TObject);
    procedure dbgConsignacionesColEnter(Sender: TObject);
    procedure ToolBar1DblClick(Sender: TObject);
    procedure CambioDepositoExecute(Sender: TObject);
    procedure CalcularIvaDetExecute(Sender: TObject);
    procedure DuplicarComprobanteExecute(Sender: TObject);
    procedure RecalculoSuma00Execute(Sender: TObject);
    procedure AcopiarExecute(Sender: TObject);
    procedure FreezarExecute(Sender: TObject);
    procedure LeerFacturasFreezadasExecute(Sender: TObject);
    procedure HacerNCExecute(Sender: TObject);
    procedure GravarNumeroOperacionExecute(Sender: TObject);
    procedure VerOperacionesRelacionadasExecute(Sender: TObject);
    procedure BuscarPorReferenciaExecute(Sender: TObject);
    procedure CambiarClienteExecute(Sender: TObject);
    procedure CambiarModoDiscIVAExecute(Sender: TObject);
    procedure FiscalizarExecute(Sender: TObject);
    procedure lbVdorClick(Sender: TObject);
    procedure CambiarCuitExecute(Sender: TObject);
    procedure BuscarPorObsExecute(Sender: TObject);
    procedure EditarProduccionExecute(Sender: TObject);
    procedure GenerarOrdenProduccionExecute(Sender: TObject);
    procedure VerOrdenProduccionExecute(Sender: TObject);
    procedure VerCodigoAlternativo1Click(Sender: TObject);
    procedure BorrarCAEExecute(Sender: TObject);
    procedure LibroIVAExecute(Sender: TObject);
    procedure dbtAcopioClick(Sender: TObject);
    procedure lbCtroCostoClick(Sender: TObject);
    procedure lbCtroCostoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CambiarClaseExecute(Sender: TObject);
    procedure BuscarLoteExecute(Sender: TObject);
    procedure dbgDetalleLotesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgExitenciasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure VerColumnaUnidadesClick(Sender: TObject);
    procedure NoLiquidarExecute(Sender: TObject);
    procedure VerHojaCargaExecute(Sender: TObject);
    procedure dbcJuriClick(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure MostrarDlgClick(Sender: TObject);
    procedure OmitirControlFondosMaster1Click(Sender: TObject);
    procedure RevisionValoresIngExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure RecuperarRemitosExecute(Sender: TObject);
    procedure ImpresionFormatoMail1Click(Sender: TObject);
    procedure LeerPesoExecute(Sender: TObject);
    procedure ConectarBalanzaExecute(Sender: TObject);
    procedure Pasar_A_PapeleraExecute(Sender: TObject);
    procedure PapeleraExecute(Sender: TObject);
    procedure frxPDFExport1BeforeExport(Sender: TObject);
    procedure ExpresarUnidadesenEnteros1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure GenerarRemitoExecute(Sender: TObject);
    procedure frFacturaAfterPrintReport(Sender: TObject);
    procedure VerNCExecute(Sender: TObject);
    procedure DBText25Click(Sender: TObject);
    procedure IniciarFocoFecha1Click(Sender: TObject);
    procedure DesanularExecute(Sender: TObject);
    procedure RehacerQrExecute(Sender: TObject);
    procedure DBGrillaDetalleDblClick(Sender: TObject);
    procedure CopiaralPortaPapelesdeWindows1Click(Sender: TObject);
    procedure ImportarExcelExecute(Sender: TObject);
    procedure ActualizaCostoFcVtaExecute(Sender: TObject);
    procedure BorrarDeTemporalExecute(Sender: TObject);
    procedure EnviarTemporalExecute(Sender: TObject);
    procedure GenerarNotaPedidoExecute(Sender: TObject);
    procedure AgregarCabNP;
    procedure AgregarDetNP;
    procedure AsignarObraExecute(Sender: TObject);
    procedure MarcarComoImpresaalDuplicar1Click(Sender: TObject);
    procedure ModificarDatosCabeceraExecute(Sender: TObject);
    procedure VerNovedadesDetExecute(Sender: TObject);
    procedure FrameMovValoresIngreso1BitBtn6Click(Sender: TObject);
    procedure UsarUltimoDepositoClick(Sender: TObject);
  private
    { Private declarations }
   Balanza:tSystelConnect;
  public
    { Public declarations }
    ArchivoIni          : TIniFile;
    Proveedor           : String;
    CodigosSeries       : TStringList;
    Duplicado           : Boolean;
    PrefijoDup,NumeroDup,
    NroFacAnular        : String; // para cuando hago un duplicado
    Anulado             : Tpanel;
    CpbteNuevo          : Char;
    CajaAbierta         : Boolean;
    CajaNro             : Integer;
    Saldo               : Real;
    Id_referencia,
    Id_Old              : Integer;
    Copias              : Integer;
    Preveer             : STRING;
    Impresa             : Boolean;
    DuplicarFc          : Boolean;
    Consignacion        : Boolean;
    AutoEnviarCorreo    : Boolean;
    ImporteOriginal     : Real;
    SucursalComprobante : Integer;
    DepositoDestino     : Integer;
    IDComprobante       : Integer;
    ID_Cta_Caja         : Integer;
    UltimoDepositoUsado : Integer;

    Calcula_iva_Articulo,
    Divide_Iva          : Boolean;
    ItemRedondeo  :String; // LO UTILIZO PARA SABER EL ITME QUE SE USA PARA AGREGAR AL DETALLE COMO REDONDEO DE LAS TC
    OldLista      :String;
    EditarNro     :String;
//    procedure AgregarCabNC;
//    procedure AgregarDetNC;
    procedure AgregarCabRto;
    procedure AgregarDetRto;
    function ControlSerie:Boolean;
    PROCEDURE InsertarDetalle(Codigo: STRING; Cantidad: double; Unitario:double; Descuento: double; Detalle:STRING; Id_cab,Id_Det:Integer);
    PROCEDURE UltimoComprobante; virtual;
    procedure IngresarEfectivo(Importe:Extended);
    function ControlLotes:Boolean;
    procedure Exportar_Pdf(Direcorio:String);
  end;

var
  FormCpbteCtdo_2: TFormCpbteCtdo_2;

implementation

uses DMVentaCtdo, ComposicionPrecio, UBuscadorCpbte, UConsultaArticuloVendido,
     UDatosClienteCabeceraCpbte, UBuscarPresupuestos,ULogin, UClientes_2, UConsultaStock,
     UBuscadorClientes, UBuscadorArticulos, UUltimaVtaCliente, UCorreo, UUltimasVtasMensual,
     UCambiaNumeroCpbte, UPasaACC, DMStoreProcedureForm, DMBuscadoresForm,
     UBuscadorProveedor, UProveedor_x_CtaOrden, UControlMesesGtia, UCambiaDespositoFc,
     UControlNroRto, UAcopio, UListarFacturasFrezadas, UBuscadorTipoCpbte, USeleccionCajaNC,
     UFactura_2, UNumeroOperacion, UListadoOperaciones, UDetalleCarnes, UBuscarPorNroReferencia,
     UCambioClienteFactura, UFiscalizacion, UBuscadorComprobantes, UNroCuit_Doc, UBuscadorPorObs,
     UFacturaProduccion,  UOrdenProduccion, UBorradorPedido,
     UCantidadPedir, UAsignacionCtroCostoFVta, UCambiaClaseComprobante,
     UMuestraHRuta, URevisionValoresIngreso,UDMain_FD, URestaurarPapelera,
     URemitos, DMRemitos, UStock_2, DMNPedidoCliente, UNotaPedidoCliente,
     UBuscadorDepositos, UAsignaObra, UNovedadesDetVtas;

{$R *.dfm}

function TFormCpbteCtdo_2.ControlLotes:Boolean;
VAR Aux:Boolean;
begin
  aux:=True;
 // DatosVentasCtdo.wwCDSVentaDet.DisableControls;
  DatosVentasCtdo.CDSVentaDet.First;
  while not(DatosVentasCtdo.CDSVentaDet.Eof) and aux=True do
    begin
      if DatosVentasCtdo.CDSVentaDetCONTROL_TRAZABILIDAD.AsString='S' Then
        begin
          if (Int(DatosVentasCtdo.CDSVentaDetCantidad.AsFloat)=Int(DatosVentasCtdo.CDSVentaLoteCANTIDAD.AsFloat)) then
            Aux:=True
          else
           Aux:=False;
        end;
      DatosVentasCtdo.CDSVentaDet.Next;
    end;
 // DatosVentasCtdo.wwCDSVentaDet.EnableControls;
  Result:=Aux;
end;

procedure TFormCpbteCtdo_2.GenerarRemitoExecute(Sender: TObject);
begin
   if DSBase.DataSet.FieldByName('MUESTRAACOPIO').AsString<>'' then
    raise Exception.Create('No se puede hacer un rto cuando hay una acopio asociado...');
  //** aca se va a generar el Rto..
   if Not(DMBuscadores.GetHayRemitos(DatosVentasCtdo.CDSVentaCabID_FC.AsInteger)) then
     begin
       if not(DSBase.DataSet.IsEmpty) then
         begin
           if Not(Assigned(FormBuscadorTipoCpbte)) then
             FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
           FormBuscadorTipoCpbte.TipoCpbte1:='RE';
           FormBuscadorTipoCpbte.TipoCpbte2:='';
           FormBuscadorTipoCpbte.TipoCpbte3:='';
           FormBuscadorTipoCpbte.CV        :='V';
           FormBuscadorTipoCpbte.Sucursal  := DatosVentasCtdo.CDSVentaCabSUCURSAL.AsInteger;
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
                   if (FormControlNroRto.Let<> DatosRemitos.CDSRtoCabLETRARTO.AsString) or
                      (FormControlNroRto.Suc<> DatosRemitos.CDSRtoCabSUCRTO.AsString) or
                      (FormControlNroRto.Num<> DatosRemitos.CDSRtoCabNUMERORTO.AsString) Then
                   DatosRemitos.CDSRtoCabCPTE_MANUAL.AsString:='S';
                   DatosRemitos.CDSRtoCabLETRARTO.AsString:=FormControlNroRto.Let;
                   DatosRemitos.CDSRtoCabSUCRTOSetText(DatosRemitos.CDSRtoCabSUCRTO,FormControlNroRto.Suc);
                   DatosRemitos.CDSRtoCabNUMERORTOSetText(DatosRemitos.CDSRtoCabNUMERORTO,FormControlNroRto.Num);
                 end;
               DatosVentasCtdo.CDSVentaDet.First;
               while Not(DatosVentasCtdo.CDSVentaDet.Eof)  do
                 begin
                   while Not(DatosVentasCtdo.CDSVentaDet.Eof)  Do // Ingreso el detalle
                     begin
                       AgregarDetRto;
                       DatosVentasCtdo.CDSVentaDet.Next;
                     end;
                 end;
               FormRemitos.Confirma.Execute;
              DMMain_FD.fdcGestion.StartTransaction;
               Try
                 DMMain_FD.QGravarNroRto_Factura.Close;
                 DMMain_FD.QGravarNroRto_Factura.ParamByName('id_rto').Value:= DatosRemitos.CDSRtoCabID_RTO.AsInteger;
                 DMMain_FD.QGravarNroRto_Factura.ParamByName('numero').Value:= DatosRemitos.CDSRtoCabNROCPBTE.AsString;
                 DMMain_FD.QGravarNroRto_Factura.ParamByName('id_fc').Value := DatosVentasCtdo.CDSVentaCabID_FC.AsInteger;
                 DMMain_FD.QGravarNroRto_Factura.ExecSQL;
                 DMMain_FD.fdcGestion.Commit;
               Except
                 DMMain_FD.fdcGestion.Rollback;
                 ShowMessage('No se pudo marcar la Factura....');
               End;
             end;
         end;
     end
   else
     ShowMessage('Ya tiene Rto esta factura....');
end;


procedure TFormCpbteCtdo_2.ActualizaCostoFcVtaExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.ActualizaCostoFc_Vta(DSBase.DataSet.FieldByName('ID_FC').Value);
  Recuperar.Execute;
end;

procedure TFormCpbteCtdo_2.AgregarCabNP;
begin
 with DatosNPedidoClientes DO
  begin
    FormNotaPedidoCliente.SucursalPorDefecto := SucursalComprobante;
    FormNotaPedidoCliente.DepositoPorDefecto := DepositoDestino;
    CDSNotaPedidoCabID_TIPOCOMPROBANTESetText(CDSNotaPedidoCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
    CDSNotaPedidoCabCODIGOSetText(CDSNotaPedidoCabCODIGO,DSBase.DataSet.FieldByName('CODIGO').AsString);
    CDSNotaPedidoCabLDRSetText(CDSNotaPedidoCabLDR,DSBase.DataSet.FieldByName('LDR').AsString);
    CDSNotaPedidoCabNOMBRE.Value       := DSBase.DataSet.FieldByName('NOMBRE').AsString;
    CDSNotaPedidoCabRAZONSOCIAL.Value  := DSBase.DataSet.FieldByName('RAZONSOCIAL').AsString;
    CDSNotaPedidoCabCUIT.Value         := DSBase.DataSet.FieldByName('CUIT').Value;
    CDSNotaPedidoCabTIPOIVA.Value      := DSBase.DataSet.FieldByName('TIPOIVA').Value;
    CDSNotaPedidoCabDIRECCION.Value    := DSBase.DataSet.FieldByName('DIRECCION').AsString;
    CDSNotaPedidoCabLOCALIDAD.Value    := DSBase.DataSet.FieldByName('LOCALIDAD').AsString;
    CDSNotaPedidoCabCPOSTAL.Value      := DSBase.DataSet.FieldByName('CPOSTAL').AsString;

    CDSNotaPedidoCabIMPRESO.Value         :='N';
    CDSNotaPedidoCabOBSERVACION1.AsString := DSBase.DataSet.FieldByName('OBSERVACION1').AsString;
    CDSNotaPedidoCabOBSERVACION2.AsString := DSBase.DataSet.FieldByName('OBSERVACION2').AsString;

    CDSNotaPedidoCabZONA.Value        := DSBase.DataSet.FieldByName('ZONA').Value;

    CDSNotaPedidoCabFACTURA_ID.Value          := DSBase.DataSet.fieldbyName('ID_FC').Value;
    CDSNotaPedidoCabFACTURA_NROCPBTE.AsString := DSBase.DataSet.fieldbyName('NROCPBTE').AsString;

    if DSBase.DataSet.FieldByName('LISTAPRECIO').AsString<>'' then
      CDSNotaPedidoCabLISTAPRECIO.Value         :=DSBase.DataSet.FieldByName('LISTAPRECIO').Value;
    if DSBase.DataSet.FieldByName('VENDEDOR').AsString<>'' Then
      CDSNotaPedidoCabVENDEDORSetText(CDSNotaPedidoCabVENDEDOR,DSBase.DataSet.FieldByName('VENDEDOR').AsString);

    CDSNotaPedidoCabUSUARIO.Value     :=DMMain_FD.UsuarioActivo;

  end;
end;

procedure TFormCpbteCtdo_2.AgregarDetNP;
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
      CDSNotaPedidoDetCODIGOARTICULOSetText(CDSNotaPedidoDetCODIGOARTICULO,DatosVentasCtdo.CDSVentaDetCODIGOARTICULO.AsString);
      CDSNotaPedidoDetDETALLE.Value            := DatosVentasCtdo.CDSVentaDetDETALLE.Value;
      CDSNotaPedidoDetCANTIDAD_PEDIDIASetText(CDSNotaPedidoDetCANTIDAD_PEDIDIA,DatosVentasCtdo.CDSVentaDetCANTIDAD.AsString);
      CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat := (DatosVentasCtdo.CDSVentaDetUNITARIO_GRAVADO.AsFloat/DatosVentasCtdo.CDSVentaDetCOTIZACION.AsFloat)* DatosVentasCtdo.CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat;
      CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat  := (DatosVentasCtdo.CDSVentaDetUNITARIO_EXENTO.AsFloat/DatosVentasCtdo.CDSVentaDetCOTIZACION.AsFloat)* DatosVentasCtdo.CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat;

      CDSNotaPedidoDetDescuento.Value          := DatosVentasCtdo.CDSVentaDetDESCUENTO.Value;

      UnitarioTotal                            := CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat + CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;

      if DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.Value='N' Then
        UnitarioTotal:= CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat + DatosVentasCtdo.CDSVentaDetIVA_UNITARIO.AsFloat + CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;


      CDSNotaPedidoDetUNITARIO_TOTALSetText(CDSNotaPedidoDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal));

      CDSNotaPedidoDet.Post;
    end;
end;


procedure TFormCpbteCtdo_2.AgregarCabRto;
begin
  with DatosRemitos,DatosVentasCtdo DO
  begin
    FormRemitos.SucursalPorDefecto      := CDSVentaCabSUCURSAL.AsInteger;
    FormRemitos.DepositoPorDefecto      := CDSVentaCabDEPOSITO.AsInteger;
    CDSRtoCabSucursal.Text              := CDSVentaCabSUCURSAL.AsString;
    CDSRtoCabCodigo.Text                := CDSVentaCabCODIGO.AsString;
    CDSRtoCabLDR.Text                   := CDSVentaCabLDR.AsString;

    CDSRtoCabID_TIPOCOMPROBANTE.Text    := IntToStr(IDComprobante);

    CDSRtoCabDeposito.Text              := CDSVentaCabDEPOSITO.AsString;
    CDSRtoCabCondicionVta.Text          := '1';
    CDSRtoCabANULADO.AsString           := 'N';

    CDSRtoCabIMPRESO.AsString           := 'N';
    CDSRtoCabOBSERVACION1.AsString      := CDSVentaCabOBSERVACION1.AsString;
    CDSRtoCabOBSERVACION2.AsString      := CDSVentaCabOBSERVACION2.AsString;
    CDSRtoCabCPTE_MANUAL.AsString       := 'N';

    CDSRtoCabZONA.AsInteger             := CDSVentaCabZONA.AsInteger;
    CDSRtoCabIDFACTURA.AsInteger        := CDSVentaCabID_FC.AsInteger;
    CDSRtoCabNROFACT.AsString           := CDSVentaCabNROCPBTE.AsString;
    CDSRtoCabLISTAPRECIO.AsInteger      := CDSVentaCabLISTAPRECIO.AsInteger;
    CDSRtoCabVENDEDOR.AsString          := CDSVentaCabVENDEDOR.AsString;

    CDSRtoCabUSUARIO.AsString           := DMMain_FD.UsuarioActivo;
  end;
end;
{
procedure TFormCpbteCtdo_2.AgregarDetNC;
Var Precio:Extended;
begin
  DatosVentasCtdo.CDSVentaDet.First;
  while Not(DatosVentasCtdo.CDSVentaDet.Eof) DO
    begin
      DatosVentas.CDSVentaDet.Append;

      Precio :=DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL.AsFloat;
      if DatosVentas.CDSVentaCabDESGLOZAIVA.Value='N' then
        Precio:= DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL.AsFloat + DatosVentasCtdo.CDSVentaDetIVA_UNITARIO.AsFloat;
      DatosVentas.CDSVentaDetCodigoArticuloSetText(DatosVentas.CDSVentaDetCodigoArticulo,DatosVentasCtdo.CDSVentaDetCODIGOARTICULO.AsString);
      DatosVentas.CDSVentaDetCantidadSetText(DatosVentas.CDSVentaDetCANTIDAD,DatosVentasCtdo.CDSVentaDetCANTIDAD.AsString);
      DatosVentas.CDSVentaDetUnitario_TotalSetText(DatosVentas.CDSVentaDetUNITARIO_TOTAL,FormatFloat('0.00000',Precio));
      DatosVentas.CDSVentaDetDescuentoSetText(DatosVentas.CDSVentaDetDescuento,FormatFloat('0.000',DatosVentasCtdo.CDSVentaDetDESCUENTO.AsFloat));
      // esta linea se agrega por las dif de centavos las de arriba no las borro   09/07/2021
      DatosVentas.CDSVentaDetUNITARIO_EXENTO.AsFloat := DatosVentasCtdo.CDSVentaDetUNITARIO_EXENTO.AsFloat;
      DatosVentas.CDSVentaDetUNITARIO_GRAVADO.AsFloat:= DatosVentasCtdo.CDSVentaDetUNITARIO_GRAVADO.AsFloat;
      DatosVentas.CDSVentaDetUNITARIO_TOTAL.AsFloat  := DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL.AsFloat;
      DatosVentas.CDSVentaDetIVA_UNITARIO.AsFloat    := DatosVentasCtdo.CDSVentaDetIVA_UNITARIO.AsFloat;
      DatosVentas.CDSVentaDetIVA_TOTAL.AsFloat       := DatosVentasCtdo.CDSVentaDetIVA_TOTAL.AsFloat;
      DatosVentas.CDSVentaDetTOTAL_EXENTO.AsFloat    := DatosVentasCtdo.CDSVentaDetTOTAL_EXENTO.AsFloat;
      DatosVentas.CDSVentaDetTOTAL_GRAVADO.AsFloat   := DatosVentasCtdo.CDSVentaDetTOTAL_GRAVADO.AsFloat;
      DatosVentas.CDSVentaDetTOTAL.AsFloat           := DatosVentasCtdo.CDSVentaDetTOTAL.AsFloat;
      DatosVentas.CDSVentaDetDESCUENTO.AsFloat       := DatosVentasCtdo.CDSVentaDetDESCUENTO.AsFloat;



      DatosVentas.CDSVentaDet.Post;
      DatosVentasCtdo.CDSVentaDet.Next;
    end;

end;
}

procedure TFormCpbteCtdo_2.AgregarDetRto;
var UnitarioTotal:Extended;
begin
  inherited;
  with DatosRemitos,DatosVentasCtdo DO
    begin
      CDSRtoDet.Append;
      CDSRtoDetDESGLOZAIVA.AsString     := CDSRtoCabDESGLOZAIVA.AsString;
      CDSRtoDetDEPOSITO.AsInteger       := CDSRtoCabDeposito.AsInteger;
      CDSRtoDetCLASECPBTE.AsString      := CDSRtoCabCLASECPBTE.AsString;
      CDSRtoDetTIPOCPBTE.AsString       := CDSRtoCabTIPOCPBTE.AsString;
      CDSRtoDetCODIGOARTICULO.Text      := CDSVentaDetCODIGOARTICULO.AsString;
      CDSRtoDetDETALLE.AsString         := CDSVentaDetDETALLE.AsString;
      CDSRtoDetCantidadSetText(CDSRtoDetCantidad,CDSVentaDetCANTIDAD.AsString);
      CDSRtoDetUNITARIO_GRAVADO.AsFloat := CDSVentaDetUNITARIO_GRAVADO.AsFloat;
      CDSRtoDetUNITARIO_EXENTO.AsFloat  := CDSVentaDetUNITARIO_EXENTO.AsFloat;
      CDSRtoDetUNITARIO_TOTAL.AsFloat   := CDSVentaDetUNITARIO_TOTAL.AsFloat;
      CDSRtoDetIVA_UNITARIO.AsFloat     := CDSVentaDetIVA_UNITARIO.AsFloat;
      CDSRtoDetIVA_TOTAL.AsFloat        := CDSVentaDetIVA_TOTAL.AsFloat;

      UnitarioTotal := CDSRtoDetUNITARIO_TOTAL.AsFloat;

      if CDSRtoCabDESGLOZAIVA.AsString='N' Then
        UnitarioTotal := CDSRtoDetUNITARIO_TOTAL.AsFloat + CDSRtoDetIVA_UNITARIO.AsFloat;

      CDSRtoDetUNITARIO_TOTAL.Text      := FloatToStr(UnitarioTotal);
      CDSRtoDetAFECTA_STOCK.AsString    := 'N';
      CDSRtoDet.Post;
    end;
end;

function TFormCpbteCtdo_2.ControlSerie:Boolean;
VAR Aux:Boolean;
begin
  aux:=True;
 // DatosVentasCtdo.wwCDSVentaDet.DisableControls;
  DatosVentasCtdo.CDSVentaDet.First;
  while not(DatosVentasCtdo.CDSVentaDet.Eof) and aux=True do
    begin
      if DatosVentasCtdo.CDSVtaSubDetalleHACERINGRESO.AsBoolean Then
      begin
         DatosVentasCtdo.spIngSerie.Close;
         DatosVentasCtdo.spIngSerie.ParamByName('Codigo').Value     :=DatosVentasCtdo.CDSVtaSubDetalleCODIGOARTICULO.AsString;
         DatosVentasCtdo.spIngSerie.ParamByName('Serie').Value      :=DatosVentasCtdo.CDSVtaSubDetalleSERIE.AsString;
         DatosVentasCtdo.spIngSerie.ParamByName('Fecha').Value      :=DatosVentasCtdo.CDSVtaSubDetalleFECHA.AsDateTime;
         DatosVentasCtdo.spIngSerie.ParamByName('Deposito').Value   :=DatosVentasCtdo.CDSVtaSubDetalleDEPOSITO.AsInteger;
         DatosVentasCtdo.spIngSerie.ParamByName('id_cpbte').Value   :=DatosVentasCtdo.CDSVtaSubDetalleID_CABFAC.AsInteger;
         DatosVentasCtdo.spIngSerie.ParamByName('tipocpbte').Value  :=DatosVentasCtdo.CDSVtaSubDetalleTIPOCPBTE.AsString;
         DatosVentasCtdo.spIngSerie.ParamByName('clasecpbte').Value :=DatosVentasCtdo.CDSVtaSubDetalleCLASECPBTE.AsString;
         DatosVentasCtdo.spIngSerie.ParamByName('nrocpbte').Value   :=DatosVentasCtdo.CDSVtaSubDetalleNROCPBTE.AsString;
         DatosVentasCtdo.spIngSerie.ExecProc;
       end;
      aux:=True;
      if (DatosVentasCtdo.CDSVentaDetCON_NRO_SERIE.AsString='S') then
        begin
          if (Int(DatosVentasCtdo.CDSVentaDetCantidad.AsFloat)=DatosVentasCtdo.CDSVtaSubDetalle.RecordCount) then
            Aux:=True
          else
           Aux:=False;
        end;
//      else
//        if (DatosVentasCtdo.CDSVentaDetCON_CODIGO_BARRA.Value='S') then
//          begin
//            if DatosVentasCtdo.CDSVtaSubDetalle.RecordCount>0 then
//              Aux:=True
//            else
//              aux:=False;
//            aux:=False; // <<<< Modificado para que no lo pida... 5/5/2017 pero dejo por las dudas
//          end;
      DatosVentasCtdo.CDSVentaDet.Next;
    end;
  DatosVentasCtdo.CDSVentaDet.First;
 // DatosVentasCtdo.wwCDSVentaDet.EnableControls;
  Result:=Aux;
end;

PROCEDURE TFormCpbteCtdo_2.InsertarDetalle(Codigo: STRING; Cantidad: double; Unitario:double; Descuento: double; Detalle: STRING; Id_cab,Id_Det:Integer);
begin
  DBGrillaDetalle.DataSource.DataSet.Append;
  DatosVentasCtdo.CDSVentaDetCodigoArticuloSetText(DatosVentasCtdo.CDSVentaDetCodigoArticulo, Codigo);
  DatosVentasCtdo.CDSVentaDetDESCUENTOSetText(DatosVentasCtdo.CDSVentaDetDESCUENTO,FloatToStr(Descuento));
  DatosVentasCtdo.CDSVentaDetDetalle.Value := Detalle;
  DatosVentasCtdo.CDSVentaDetCantidadSetText(DatosVentasCtdo.CDSVentaDetCantidad, FloatToStr(Cantidad));
  DatosVentasCtdo.CDSVentaDetUnitario_TotalSetText(DatosVentasCtdo.CDSVentaDetUnitario_Total, FloatToStr(Unitario));
//  DatosVentasCtdo.CDSVentaDet.Edit;
  DBGrillaDetalle.DataSource.DataSet.Post;
end;

procedure TFormCpbteCtdo_2.lbCtroCostoClick(Sender: TObject);
begin
  inherited;
  if Not(DSBase.DataSet.IsEmpty) and (DSBase.state=dsBrowse) then
    begin
      if Not(Assigned(FormAsignaCtroCostoVta)) then
        FormAsignaCtroCostoVta:=TFormAsignaCtroCostoVta.Create(self);
      FormAsignaCtroCostoVta.id       :=DSBase.DataSet.FieldByName('id_fc').Value;
      FormAsignaCtroCostoVta.CtroCosto:=DSBase.DataSet.FieldByName('centro_costo').Value;

      FormAsignaCtroCostoVta.ShowModal;
      Recuperar.Execute;
    end;

end;

procedure TFormCpbteCtdo_2.lbCtroCostoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
   if Not(DSBase.DataSet.IsEmpty) and (DSBase.state=dsBrowse) then
      lbCtroCosto.Cursor:=crHandPoint
    else
      lbCtroCosto.Cursor:=crDefault;
end;

procedure TFormCpbteCtdo_2.LeerFacturasFreezadasExecute(Sender: TObject);
var Nombre:String;
I:Integer;
P_Gravado,P_Exento,Importe_Iva,P_Total,P_ConIVA:Extended;
begin
  inherited;
  if DSBase.State in [dsInsert] then
    begin
      if Not(Assigned(FormListadoFacturasClonadas)) then
        FormListadoFacturasClonadas:=TFormListadoFacturasClonadas.Create(self);
      FormListadoFacturasClonadas.Directorio:=PathFreezerCtdo;
      FormListadoFacturasClonadas.ShowModal;
      if (FormListadoFacturasClonadas.ModalResult=mrOk) and (Not(FormListadoFacturasClonadas.CDSCabecera.IsEmpty)) and
         (FormListadoFacturasClonadas.CDSCabecera.FieldByName('TipoCpbte').AsString='FO') then
        begin
          For i:=0 to FormListadoFacturasClonadas.CDSCabecera.FieldCount-1 do
            begin
              if DatosVentasCtdo.CDSVentaCab.FindField(FormListadoFacturasClonadas.CDSCabecera.Fields[i].FieldName)<>nil Then
                begin
                  Nombre:=FormListadoFacturasClonadas.CDSCabecera.Fields[i].FieldName;
                  if Nombre='ID_TIPOCOMPROBANTE' then
                    DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTE,FormListadoFacturasClonadas.CDSCabecera.FieldByName(Nombre).AsString);
                  DatosVentasCtdo.CDSVentaCab.FieldByName(Nombre).Value:=FormListadoFacturasClonadas.CDSCabecera.FieldByName(Nombre).Value;
                end;
            end;
          DatosVentasCtdo.CDSVentaCabIMPRESO.Value        :='N';
          DatosVentasCtdo.CDSVentaCabFECHAVTA.AsDateTime  :=Date;
        //  Saldo.Caption:= '0';
        //  Lte.Caption  := '0';

          FormListadoFacturasClonadas.CDSDetalle.First;
          while not(FormListadoFacturasClonadas.CDSDetalle.Eof) do
            begin
              DatosVentasCtdo.CDSVentaDet.Append;
              For i:=0 to FormListadoFacturasClonadas.CDSDetalle.FieldCount-1 do
                begin
                  if DatosVentasCtdo.CDSVentaDet.FindField(FormListadoFacturasClonadas.CDSDetalle.Fields[i].FieldName)<>nil Then
                    begin
                      Nombre:=FormListadoFacturasClonadas.CDSDetalle.Fields[i].FieldName;
                      DatosVentasCtdo.CDSVentaDet.FieldByName(Nombre).Value:=FormListadoFacturasClonadas.CDSDetalle.FieldByName(Nombre).Value;
                    end;
                end;

              DatosVentasCtdo.CDSVentaDetCALCULA_SOBRETASA.Value:='N';

              if Trunc(DatosVentasCtdo.CDSVentaDetIVA_UNITARIO.AsFloat*100)=0 then
                begin
                  P_Gravado   := DatosVentasCtdo.CDSVentaDetUNITARIO_GRAVADO.AsFloat ;
                  P_Exento    := DatosVentasCtdo.CDSVentaDetUNITARIO_EXENTO.AsFloat ;
                  Importe_Iva := RoundTo(P_Gravado * DatosVentasCtdo.CDSVentaDetIVA_TASA.AsFloat * 0.01,DMMain_FD.DecRedondeo);
                  P_Total     := P_Gravado + P_Exento;
                  P_ConIVA    := P_Total + Importe_Iva;
                end
              else
                begin
                  P_Gravado   := DatosVentasCtdo.CDSVentaDetUNITARIO_GRAVADO.AsFloat ;
                  P_Exento    := DatosVentasCtdo.CDSVentaDetUNITARIO_EXENTO.AsFloat ;
                  Importe_Iva := DatosVentasCtdo.CDSVentaDetIVA_UNITARIO.AsFloat ;
                  P_Total     := P_Gravado + P_Exento;
                  P_ConIVA    := P_Total + Importe_Iva;
                end;

              if DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.Value='S' then
                DatosVentasCtdo.CDSVentaDetUNITARIO_TOTALSetText(DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL,FloatToStr(P_Total))
              else
                DatosVentasCtdo.CDSVentaDetUNITARIO_TOTALSetText(DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL,FloatToStr(P_ConIVA));

//              For i:=0 to DatosVentasCtdo.CDSVentaDet.FieldCount-1 do
//                begin
//                  if DatosVentasCtdo.CDSVentaDet.Fields[i].Required Then
//                    ShowMessage(DatosVentasCtdo.CDSVentaDet.Fields[i].FieldName+':'+
//                                DatosVentasCtdo.CDSVentaDet.Fields[i].AsString);
//              end;
          DatosVentasCtdo.CDSVentaDet.Post;
          FormListadoFacturasClonadas.CDSDetalle.Next;
        end;

      FreeAndNil(FormListadoFacturasClonadas);
      DatosVentasCtdo.CDSVentaDet.Append;
      DBGrillaDetalle.SetFocus;
    end;
  end;
end;

procedure TFormCpbteCtdo_2.LeerPesoExecute(Sender: TObject);
var p:TPesoActual;
begin
  if (DBGrillaDetalle.SelectedIndex=5) and (imBalanza.Visible) and (Balanza<>nil) then
    begin
      Balanza.Port :=PuertoCom;
      Balanza.Id   :=IdBalanza;
      try
        Balanza.Connect;
        Balanza.PesoActual(p);
        if DatosVentasCtdo.CDSVentaDet.State=dsBrowse then
          DatosVentasCtdo.CDSVentaDet.Edit;
        DatosVentasCtdo.CDSVentaDetCANTIDADSetText(DatosVentasCtdo.CDSVentaDetCANTIDAD ,floattostr(p.Peso*0.001));
        Balanza.Disconnect;
      except
        ShowMessage('Error de lectura');
      end;
     end;
end;

procedure TFormCpbteCtdo_2.LibroIVAExecute(Sender: TObject);
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
                                    ' Cliente: '+DSBase.DataSet.FieldByName('RAZONSOCIAL').Value+
                                    ' Importe: '+FormatFloat('0.00',DSBase.DataSet.FieldByName('TOTAL').AsFloat),
                                    'FACVTA');

            DMMain_FD.SPAplicarLibroIva.Close;
            DMMain_FD.SPAplicarLibroIva.ParamByName('id').Value  := DSBase.DataSet.FieldByName('ID_FC').Value;
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

PROCEDURE TFormCpbteCtdo_2.UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosVentasCtdo,DMStoreProcedure, FormCpbteCtdo_2 DO
    BEGIN
     // IF (DBCheckManual.Checked <> true) THEN
        BEGIN
          //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
          IF ( CDSVentaCabLETRAFAC.AsString <> '') AND ( CDSVentaCabCLASECPBTE.Value <> '') THEN
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
              Imprime                            := spNumeroCpbte.paramByName('Imprime').AsString;
              spNumeroCpbte.CLose;
            END;
          CDSVentaCabNroCpbte.AsString := CDSVentaCabLetraFac.AsString + CDSVentaCabSucFac.AsString + CDSVentaCabNumeroFac.AsString;
        END;
    END;
  if DatosVentasCtdo.CDSVentaCabINGRESA_LIBRO_IVA.Value='N' Then DatosVentasCtdo.CDSVentaCabPERCIBE_IB.Value  :='N';
  if DatosVentasCtdo.CDSVentaCabINGRESA_LIBRO_IVA.Value='N' Then DatosVentasCtdo.CDSVentaCabPERCIBE_IVA.Value :='N';
  if DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.Value='N' then DatosVentasCtdo.CDSVentaCabPERCIBE_IVA.AsString    :='N';

END;

procedure TFormCpbteCtdo_2.UsarUltimoDepositoClick(Sender: TObject);
begin
  inherited;
  UsarUltimoDeposito.Checked:=Not(UsarUltimoDeposito.Checked);
end;

procedure TFormCpbteCtdo_2.IniciarFocoFecha1Click(Sender: TObject);
begin
  inherited;
  IniciarFocoFecha1.Checked:=Not(IniciarFocoFecha1.Checked);
end;

procedure TFormCpbteCtdo_2.IngresarEfectivo(Importe:extended);
begin
  with FrameMovValoresIngreso1 do
    begin
      IF (DSBase.State=dsInsert) THEN
        BEGIN
          QCajaCab.Close;
          QCajaCab.ParamByName('Id').Value := CajaPorDefecto;
          QCajaCab.Open;
          if QCajaCab.Fields[0].AsString='' Then
            Raise Exception.Create('No Hay caja ingresada para terminar la operación....');
          IF NOT (QCajaCab.IsEmpty) and (DSBase.State=dsInsert) THEN
            BEGIN
              ceCaja.Text        := IntToStr(QCajaCabID_CUENTA_CAJA.AsInteger);
              edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
              Id_Caja            := QCajaCabID_CAJA.Value;
              id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
              FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
            end;
          QCajaCab.Close;
        END;
      TipoCpbte      := DatosVentasCtdo.CDSVentaCabTIPOCPBTE.Value;
      TipoOperacion  := 'I';
      ClaseCpbte     := DatosVentasCtdo.CDSVentaCabCLASECPBTE.Value;
      NroCpbte       := DatosVentasCtdo.CDSVentaCabNROCPBTE.Value;
      IdCpbte        := DatosVentasCtdo.CDSVentaCabID_FC.Value;
      FechaOperacion := DatosVentasCtdo.CDSVentaCabFECHAVTA.AsDateTime;
      Origen         := DatosVentasCtdo.CDSVentaCabRAZONSOCIAL.Value;

      pcDetalleFactura.ActivePageIndex:=2;

      CDSCajaMov.Insert;
      CDSCajaMovHABER.AsFloat        := 0;
      CDSCajaMovDEBE.AsFloat         := Importe;//DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat;
      CDSFormaPagoEfec.Close;
      CDSFormaPagoEfec.Open;
      CDSFormaPagoEfec.First;
      CDSCajaMovID_TPAGO.Value        := 1;
      CDSCajaMovID_FPAGO.Value        := CDSFormaPagoEfecID_FPAGO.Value;
      CDSCajaMovUNIDADES.AsFloat      := Importe;//DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat;
      CDSCajaMovCOTIZACION.Value      := CDSFormaPagoEfecCOTIZACION.Value;
      CDSCajaMovCLASE_COMPROB.Value   := ClaseCpbte;
      CDSCajaMovID_CUENTA_CAJA.Value  := id_Cuenta_caja;
      CDSCajaMovMONEDA.Value          := CDSFormaPagoEfecMONEDA.Value;
      CDSFormaPagoEfec.Close;
      CDSMovEfectivo.Insert;
      CDSMovEfectivoID_EFECTIVO.Value    := IBGId_Efectivo.IncrementFD(1);
      CDSMovEfectivoID_CAJA.Value        := CDSCajaMovID_CAJA.Value;
      CDSMovEfectivoID_MOV_CAJA.Value    := CDSCajaMovID_MOV_CAJA.Value;
      CDSMovEfectivoID_FPAGO.Value       := CDSCajaMovID_FPAGO.Value;
      CDSMovEfectivoCOTIZACION.Value     := CDSCajaMovCOTIZACION.Value;
      CDSMovEfectivoUNIDADES.AsFloat     := Importe;//CDSCajaMovUNIDADES.Value;
      CDSMovEfectivoIMPORTE.AsFloat      := Importe;//DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat;
      CDSMovEfectivoID_CUENTA_CAJA.Value := CDSCajaMovID_CUENTA_CAJA.Value;
      CDSMovEfectivoMONEDA.Value         := CDSCajaMovMONEDA.Value;
      CDSMovEfectivo.Post;
      pcDetalleFactura.ActivePageIndex   :=0;
      QCajaCab.Close;
    end;
end;


procedure TFormCpbteCtdo_2.VerCodigoAlternativo1Click(Sender: TObject);
begin
  inherited;
  VerCodigoAlternativo1.Checked:=Not(VerCodigoAlternativo1.Checked);
  if VerCodigoAlternativo1.Checked then
    DBGrillaDetalle.Columns[1].Title.Caption:='Cod.Alt'
  else
    DBGrillaDetalle.Columns[1].Title.Caption:='Codigo';

  DBGrillaDetalle.Refresh;
end;

procedure TFormCpbteCtdo_2.VerOperacionesRelacionadasExecute(Sender: TObject);
begin
  inherited;
 if (DatosVentasCtdo.CDSVentaCabNUMERO_OPERACION.AsString<>'') and (Not(DSBase.DataSet.IsEmpty)) then
    begin
      if not(Assigned(FormListaPorOperaciones)) then
        FormListaPorOperaciones     :=TFormListaPorOperaciones.Create(Self);
      FormListaPorOperaciones.Nro_op:=DatosVentasCtdo.CDSVentaCabNUMERO_OPERACION.AsString;
      FormListaPorOperaciones.Show;
    end;
end;

procedure TFormCpbteCtdo_2.VerOrdenProduccionExecute(Sender: TObject);
var
  IdOP  : integer;
begin
  inherited;
//  DMMain_FD.QBuscaOP_PorFc.Close;
//  DMMain_FD.QBuscaOP_PorFc.ParamByName('id').Value:=DatosVentasCtdo.CDSVentaCabID_FC.Value;
//  DMMain_FD.QBuscaOP_PorFc.Open;
//  if DMMain_FD.QBuscaOP_PorFc.Fields[0].AsString<>'' then
  if DMMain_FD.BuscaOP_PorFc(DatosVentasCtdo.CDSVentaCabID_FC.AsInteger, IdOp) then
    begin
      if Not(Assigned(FormOrdenProduccion)) then
        FormOrdenProduccion:=TFormOrdenProduccion.Create(Self);
      FormOrdenProduccion.DatoNew   := IntToStr(IdOp);    //DMMain_FD.QBuscaOP_PorFc.Fields[0].AsString;
      FormOrdenProduccion.Recuperar.Execute;
      FormOrdenProduccion.Show;
    end;
//  DMMain_FD.QBuscaOP_PorFc.Close;
end;

procedure TFormCpbteCtdo_2.VerColumnaUnidadesClick(Sender: TObject);
begin
  inherited;
  VerColumnaUnidades.Checked:=Not(VerColumnaUnidades.Checked);

  DBGrillaDetalle.Columns.Items[9].Visible := VerColumnaUnidades.Checked;
    if VerColumnaUnidades.Checked=False then
     DBGrillaDetalle.Width:=727
   else
     DBGrillaDetalle.Width:=795;

  DBGrillaDetalle.Refresh;
end;

procedure TFormCpbteCtdo_2.VerHojaCargaExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormMuestraHRuta)) then
    FormMuestraHRuta:=TFormMuestraHRuta.Create(self);
  FormMuestraHRuta.Id:=DSBase.DataSet.FieldByName('id_fc').Value;
  FormMuestraHRuta.Tipo:=DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
  FormMuestraHRuta.ShowModal;

end;

procedure TFormCpbteCtdo_2.VerNCExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCpbte_2)) then
    FormCpbte_2:=TFormCpbte_2.Create(self);
  FormCpbte_2.DatoNew  :=DSBase.DataSet.FieldByName('MuestraID_NC').AsString;
  FormCpbte_2.TipoCpbte:='NC';
  FormCpbte_2.Recuperar.Execute;
  FormCpbte_2.Show;
end;

procedure TFormCpbteCtdo_2.VerNovedadesDetExecute(Sender: TObject);
begin
  inherited;
  if FormNovedadesDetVentas=nil then
    FormNovedadesDetVentas:=TFormNovedadesDetVentas.Create(Self);
  FormNovedadesDetVentas.CDS:= DatosVentasCtdo.CDSVtaDetNovedades;
  FormNovedadesDetVentas.ShowModal;
  FreeAndNil(FormNovedadesDetVentas);
  FormNovedadesDetVentas:=nil;

end;

procedure TFormCpbteCtdo_2.AgregarExecute(Sender: TObject);
begin
  if Anulado<>nil Then FreeAndNil(Anulado);
    gbPrecioTabla.Visible:=False;

  Duplicado:=False;

  DatosVentasCtdo.CDSVentaCab.close;
  DatosVentasCtdo.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
  DatosVentasCtdo.CDSVentaCab.Params.ParamByName('id').Clear;
  DatosVentasCtdo.CDSVentaCab.Open;

  DatosVentasCtdo.CDSVentaDet.Close;
  DatosVentasCtdo.CDSVentaDet.Params.ParamByName('id').Clear;
  DatosVentasCtdo.CDSVentaDet.Open;

  DatosVentasCtdo.CDSImpuestos.Close;
  DatosVentasCtdo.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosVentasCtdo.CDSImpuestos.Open;

  DatosVentasCtdo.CDSVtaDetConsig.Close;
  DatosVentasCtdo.CDSVtaDetConsig.Params.ParamByName('id').Clear;
  DatosVentasCtdo.CDSVtaDetConsig.Open;

  DatosVentasCtdo.CDSVtaSubDetalle.Close;
  DatosVentasCtdo.CDSVtaSubDetalle.Params.ParamByName('id').Clear;
  DatosVentasCtdo.CDSVtaSubDetalle.Open;


  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  FrameMovValoresIngreso1.CDSMovTCredito.Close;
  FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovTCredito.Open;

  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSTransBco.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';
  FrameMovValoresIngreso1.Id_Caja           :=0;

  inherited;

  DBGrillaDetalle.ReadOnly            := False;
  DuplicarFc                          := False;

//  DMMain_FD.LogFileFD(1,2,'Inicio de Ticket '+'('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+') '+
//                                                  'Nro Incial:'+DatosVentasCtdo.CDSVentaCabLETRAFAC.AsString+'-'+DatosVentasCtdo.CDSVentaCabSUCFAC.AsString+'-'+DatosVentasCtdo.CDSVentaCabNUMEROFAC.AsString ,
//                                                  'FACVTACTDO',DMMain_FD.UsuarioActivo);
  if UsarUltimoDeposito.Checked Then
    DatosVentasCtdo.CDSVentaCabDEPOSITO.Text:= IntToStr(UltimoDepositoUsado);


  pnAvisoFUAP.Visible                            := False;
  pcDetalleFactura.ActivePageIndex               := 0;
  FrameMovValoresIngreso1.SumaValores            := 0;
  FrameMovValoresIngreso1.lbTotalValores.Caption := '0.000';
  FrameMovValoresIngreso1.CDSCajaMov.EmptyDataSet;
  DatosVentasCtdo.CDSVentaDet.EmptyDataSet;
  DatosVentasCtdo.CDSImpuestos.EmptyDataSet;
  FrameMovValoresIngreso1.dbgMovimientos.ReadOnly:=False;
  sbEstado.Panels[0].Text:='';
  sbEstado.Panels[1].Text:='';
  Impresa                :=False;
  CpbteNuevo             := 'S';
  CodigosSeries.Clear;
  OldLista:=dbcLista.Text;
  //FormCpbteCtdo_2.wwDBEFechaVta.SetFocus;
  //FormCpbteCtdo_2.wwDBEFechaVta.SelectAll;
  if (TForm(Self.Owner).Name<>'FormPresupuesto_2') then
    if ClientePorDefecto<>'' Then
      begin
        DatosVentasCtdo.CDSVentaCabCodigoSetText(DatosVentasCtdo.CDSVentaCabCODIGO,ClientePorDefecto);
      end;
  if FormCpbteCtdo_2.Visible then
    begin
      FormCpbteCtdo_2.Caption:='Ventas de Contado';
      RxCCodigo.SetFocus;
      if IniciarFocoFecha1.Checked then
        dbeFechaVta.SetFocus;
    end;
end;

procedure TFormCpbteCtdo_2.BuscarSucrusalExecute(Sender: TObject);
begin
  inherited;
  DatosVentasCtdo.CDSBuscaSucursal.Close;
  DatosVentasCtdo.CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    DatosVentasCtdo.CDSVentaCabSucursalSetText(DatosVentasCtdo.CDSVentaCabSucursal, IntToStr(comBuscadorSucursal.Id));
  DatosVentasCtdo.CDSBuscaSucursal.Close;
end;

procedure TFormCpbteCtdo_2.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTE.Clear;
  DatosVentasCtdo.CDSVentaCabMUESTRACOMPROBANTE.Clear;
  DatosVentasCtdo.CDSVentaCabLETRAFAC.Clear;
  DatosVentasCtdo.CDSVentaCabSUCFAC.Clear;
  DatosVentasCtdo.CDSVentaCabNUMEROFAC.Clear;

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='COMPUSER';/
//  DMMain_FD.QOpciones.Open;
//  if (Copy(DMMain_FD.QOpciones.Fields[0].AsString,1,1)='N') then
  if not DMMain_FD.CpbtePorUsuario then	
    begin
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:=' select * from comprobantes where sucursal=:suc and compra_venta=''V'' and '+
                                                   '(tipo_comprob=''FO'') and (( desgloza_iva=:desglozaiva ) or ( :desglozaiva = ''*'' ) ) order by sucursal,tipo_comprob ';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value := DatosVentasCtdo.CDSVentaCabSucursal.Value;
      if FiltraCpbteCondIva='S' Then
         DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.Value
      else
        DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := '*';
      // por que si no tiene el dato del cliente este campo esta vacio por lo que lo
      // lleno con un asterisco para que el Qry no de error
      if DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.AsString='' Then
        DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := '*';
    end
  else
    begin
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:=' select cpbe.* from comprobantes_usuarios c '+
                            'left join comprobantes cpbe on cpbe.id_comprobante=c.id_comprobante '+
                            'where c.id_usuario=:usuario and cpbe.sucursal=:suc and cpbe.compra_venta=''V'' and '+
                            '(cpbe.tipo_comprob=''FO'') and (( cpbe.desgloza_iva=:desglozaiva ) or ( :desglozaiva = ''*'' ) ) order by cpbe.sucursal,cpbe.tipo_comprob ';


      DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value     := DatosVentasCtdo.CDSVentaCabSucursal.Value;
      if FiltraCpbteCondIva='S' Then
        DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.Value
      else
        DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := '*';

      // por que si no tiene el dato del cliente este campo esta vacio por lo que lo
      // lleno con un asterisco para que el Qry no de error
      if DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.AsString='' Then
        DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := '*';

      DMBuscadores.CDSBuscaComprob.Params.ParamByName('usuario').Value := DMMain_FD.UsuarioActivoId;
    end;
//  DMMain_FD.QOpciones.Close;
  if Not(Assigned(FormBuscaComprobantes)) then
    FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;
  if FormBuscaComprobantes.ModalResult=mrOk Then
    BEGIN
      DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
    END;
end;

procedure TFormCpbteCtdo_2.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsInsert,dsEdit]) then
    begin
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
      //FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
      //FormBuscadorArticulos.CampoNro          := 1;
      FormBuscadorArticulos.Param1:=1;
      FormBuscadorArticulos.Param2:=3;
      FormBuscadorArticulos.Param3:=3;

      FormBuscadorArticulos.ListaPrecio:= DatosVentasCtdo.CDSVentaCabLISTAPRECIO.Value;
      FormBuscadorArticulos.Esquema    := DMMain_FD.GetEsquemaLista(DSBase.DataSet.FieldByName('CODIGO').AsString);


      if FormBuscadorArticulos.Visible=False Then
        FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        DatosVentasCtdo.CDSVentaDetCodigoArticuloSetText(DatosVentasCtdo.CDSVentaDetCodigoArticulo,FormBuscadorArticulos.Codigo);
    end;
end;

procedure TFormCpbteCtdo_2.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
   ClientePorDefecto:='';
   IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     DatosVentasCtdo.CDSVentaCabCodigoSetText(DatosVentasCtdo.CDSVentaCabCodigo,FormBuscadorClientes.Codigo);

end;

procedure TFormCpbteCtdo_2.BuscarLdrExecute(Sender: TObject);
begin
  inherited;
  DatosVentasCtdo.CDSBuscaLdr.Close;
  DatosVentasCtdo.CDSBuscaLdr.Params.ParamByName('Codigo').Value := DatosVentasCtdo.CDSVentaCabCodigo.Value;
  DatosVentasCtdo.CDSBuscaLdr.Open;
  comBuscadorLdr.Execute;
  if comBuscadorLDR.rOk Then
    DatosVentasCtdo.CDSVentaCabLDRSetText(DatosVentasCtdo.CDSVentaCabLDR, IntToStr(comBuscadorLDR.Id));
  DatosVentasCtdo.CDSBuscaLdr.Close;
end;

procedure TFormCpbteCtdo_2.BuscarLoteExecute(Sender: TObject);
begin
  inherited;
  if DatosVentasCtdo.CDSVentaCabTIPOCPBTE.Value='NC' then
     DatosVentasCtdo.CDSBuscaLotes.CommandText:='select s.* from stock_lotes_impo s where s.codigo = :codigo';
  DatosVentasCtdo.CDSBuscaLotes.Close;
  DatosVentasCtdo.CDSBuscaLotes.Params.ParamByName('Codigo').Value:=DatosVentasCtdo.CDSVentaDetCODIGOARTICULO.Value;
  DatosVentasCtdo.CDSBuscaLotes.Open;
  if (DatosVentasCtdo.CDSVentaDetCONTROL_TRAZABILIDAD.Value='S') Then
    begin
      ComBuscadorLote.Execute;
      if comBuscadorLote.rOk Then
        DatosVentasCtdo.CDSVentaLoteID_LOTESetText(DatosVentasCtdo.CDSVentaLoteID_LOTE,IntToStr(comBuscadorLote.Id));
    end;
  DatosVentasCtdo.CDSBuscaLotes.Close;
end;

procedure TFormCpbteCtdo_2.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  DatosVentasCtdo.CDSBuscaDeposito.Close;
  DatosVentasCtdo.CDSBuscaDeposito.Open;
  comBuscadorDeposito.Execute;
  if comBuscadorDeposito.rOk Then
    DatosVentasCtdo.CDSVentaCabDepositoSetText(DatosVentasCtdo.CDSVentaCabDeposito, IntToStr(comBuscadorDeposito.Id));
  DatosVentasCtdo.CDSBuscaDeposito.Close;
end;

procedure TFormCpbteCtdo_2.BuscaRecepcionDetalleExecute(Sender: TObject);
begin
  inherited;
  DatosVentasCtdo.CDSBuscaRecepDetalle.Close;
  DatosVentasCtdo.CDSBuscaRecepDetalle.Params.ParamByName('Proveedor').Value:=DatosVentasCtdo.CDSVentaCabPROVEEDOR.Value;
  DatosVentasCtdo.CDSBuscaRecepDetalle.Params.ParamByName('Codigo').Value   :=DatosVentasCtdo.CDSVtaDetConsigCODIGO.Value;
  DatosVentasCtdo.CDSBuscaRecepDetalle.Open;
  comBuscadorRecepciones.Execute;
  if comBuscadorRecepciones.rOk then
    DatosVentasCtdo.CDSVtaDetConsigID_MOV_RECEPCION_DETSetText(DatosVentasCtdo.CDSVtaDetConsigID_MOV_RECEPCION_DET,IntToStr(comBuscadorRecepciones.Id));
  DatosVentasCtdo.CDSBuscaRecepDetalle.Close;
end;

procedure TFormCpbteCtdo_2.pcDetalleFacturaChange(Sender: TObject);
begin
  inherited;
  if DSBase.State in [dsInsert,dsEdit] Then
    DatosVentasCtdo.ReAsignarDetalle;
  WITH FrameMovValoresIngreso1 DO
    BEGIN
      if (DSBase.State in [dsInsert,dsEdit]) and (ceCaja.Text='') Then
        begin
          QCajaCab.Close;
          QCajaCab.ParamByName('Id').Value := CajaPorDefecto;
          QCajaCab.Open;
          IF NOT (QCajaCab.IsEmpty) THEN
            BEGIN
              ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
              edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
              Id_Caja            := QCajaCabID_CAJA.Value;
              id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
              FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
            end;
         end;
      TipoCpbte      := DatosVentasCtdo.CDSVentaCabTIPOCPBTE.Value;
      TipoOperacion  := 'I';
      ClaseCpbte     := DatosVentasCtdo.CDSVentaCabCLASECPBTE.Value;
      NroCpbte       := DatosVentasCtdo.CDSVentaCabNROCPBTE.Value;
      IdCpbte        := DatosVentasCtdo.CDSVentaCabID_FC.Value;
      FechaOperacion := DatosVentasCtdo.CDSVentaCabFECHAVTA.AsDateTime;
      Origen         := DatosVentasCtdo.CDSVentaCabRAZONSOCIAL.Value;
      Documento      := DMMain_FD.GetNroDocumento(DatosVentasCtdo.CDSVentaCabCODIGO.AsString);
    END;
  pnNC.Enabled      := pcDetalleFactura.ActivePageIndex = 0;
  pnNC.Visible      := pcDetalleFactura.ActivePageIndex = 0;
  pnAcopio.Visible  := pcDetalleFactura.ActivePageIndex = 0;
  chPreview.Visible := pcDetalleFactura.ActivePageIndex = 0;

end;

procedure TFormCpbteCtdo_2.DBGrillaDetalleColEnter(Sender: TObject);
begin
  inherited;
  dbgPrecios.Columns[1].Visible  := DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.Value='N';
  dbgPrecios.Columns[2].Visible  := DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.Value='S';

  pnAvisoFUAP.Visible:=False;
  gbPrecioTabla.Visible:=False;
  pnPrecios.Visible:=False;
  //******************************************************************************
  // permito o no la modificacion del prescio controlando si es editable el precio
  //******************************************************************************
  if DBGrillaDetalle.SelectedIndex=6 Then
    begin
      DBGrillaDetalle.Columns[6].ReadOnly:=False;
      if (DBGrillaDetalle.DataSource.DataSet.FieldByName('PRECIO_EDITABLE').Value='N') then
        DBGrillaDetalle.Columns[6].ReadOnly:=True
      else
        begin
          if (DMMain_FD.ModificaPrecioVta=True) Then DBGrillaDetalle.Columns[6].ReadOnly:=False
          else
          DBGrillaDetalle.Columns[6].ReadOnly:=True;
        end;
      if DMMain_FD.UsuarioActivo='master' then DBGrillaDetalle.Columns[6].ReadOnly:=False;
    end;
  //******************************************************************************
  // permito o no la modificacion del Detalle de Factura
  //******************************************************************************
  if DBGrillaDetalle.SelectedIndex=2 Then
      DBGrillaDetalle.Columns[2].ReadOnly:= not((DMMain_FD.UsuarioActivo='master')  or
                                                ((DMMain_FD.ModificaDetalleArticulo) and
                                                (DMMain_FD.StockEditDetalle( DatosVentasCtdo.CDSVentaDetCodigoArticulo.AsString ))));
  if DBGrillaDetalle.SelectedIndex=5 Then
    begin
      if (DMMain_FD.VerStock) and
         (DatosVentasCtdo.CDSVentaDetAfecta_Stock.Value='S') and
         (Not(DSBase.State in [dsBrowse])) Then
        begin
          DatosVentasCtdo.CDSExistencia.Close;
          DatosVentasCtdo.CDSExistencia.Params.ParamByName('Unidad').Value:='V';
          DatosVentasCtdo.CDSExistencia.Params.ParamByName('Codigo').Value:=DatosVentasCtdo.CDSVentaDetCodigoArticulo.Value;
          DatosVentasCtdo.CDSExistencia.Params.ParamByName('fisico').Value:=1;
          DatosVentasCtdo.CDSExistencia.Params.ParamByName('usuario').AsFloat:=DMMain_FD.UsuarioActivoId;
          DatosVentasCtdo.CDSExistencia.Open;
          dbgExitencias.Visible:=True;
        end;

       pnPrecios.Visible:=False;

      if Not(DMMain_FD.GetClienteConPrecio(DatosVentasCtdo.CDSVentaCabCODIGO.AsString, DatosVentasCtdo.CDSVentaDetCODIGOARTICULO.AsString)) then
        begin
          DMMain_FD.CDSPrecioXCant.Close;
          DMMain_FD.CDSPrecioXCant.Params.ParamByName('codigo').Value  :=DatosVentasCtdo.CDSVentaDetCODIGOARTICULO.AsString;
          DMMain_FD.CDSPrecioXCant.Params.ParamByName('id_lista').Value:=DatosVentasCtdo.CDSVentaCabLISTAPRECIO.AsInteger;
          DMMain_FD.CDSPrecioXCant.Open;
          if Not(DMMain_FD.CDSPrecioXCant.IsEmpty) then
            pnPrecios.Visible:=True
          else
            pnPrecios.Visible:=False;
        end;
      // *****************************************
      // Para Articulos de Produccion..... Si esta en modo Insercion
      if (DatosVentasCtdo.CDSVentaDetDE_PRODUCCION.Value='S') and (DSBase.DataSet.State in [dsInsert,dsEdit]) then
        begin
           EditarProduccion.Execute;
        end;
      // *****************************************
      // *****************************************
    end
  else
    dbgExitencias.Visible:=False;

  IF DBGrillaDetalle.SelectedIndex = 0 THEN
    DBGrillaDetalle.SelectedIndex := 1;
  IF DBGrillaDetalle.SelectedIndex = 3 THEN
    DBGrillaDetalle.SelectedIndex := 5;
  IF DBGrillaDetalle.SelectedIndex = 4 THEN
    DBGrillaDetalle.SelectedIndex := 5;
  IF DBGrillaDetalle.SelectedIndex = 8 THEN
    DBGrillaDetalle.SelectedIndex := 7;
  IF (DBGrillaDetalle.SelectedIndex = 6) and (DBGrillaDetalle.Fields[0].AsString<>'') THEN
    BEGIN
      if ((DatosVentasCtdo.CDSVentaCabFECHAVTA.AsDateTime - DMMain_FD.FechaUltimaActulizacionPrecio)>
         (DMMain_FD.IntervMaxDesdeULtActuPrecio)) and (DMMain_FD.IntervMaxDesdeULtActuPrecio<>0) and
         (DSBase.State=dsInsert) Then
         begin
            pnAvisoFUAP.Caption:='Ult.Act. de Precio >> '+DateToStr(DMMain_FD.FechaUltimaActulizacionPrecio);
            pnAvisoFUAP.Visible:=True;
         end
      else
        pnAvisoFUAP.Visible:=False;

      if DatosVentasCtdo.UsaTablaDePrecios Then
        begin
          FormCpbteCtdo_2.lsPrecios.Items.Clear;
          DatosVentasCtdo.QPrecioTablaDetalle.Close;
          DatosVentasCtdo.QPrecioTablaDetalle.ParamByName('Codigo').Value:=DatosVentasCtdo.CDSVentaDetCodigoArticulo.Value;
          DatosVentasCtdo.QPrecioTablaDetalle.Open;
          if (DatosVentasCtdo.QPrecioTablaDetallePRECIO1.AsString<>'') and
             (DatosVentasCtdo.QPrecioTablaDetallePRECIO2.AsString<>'')
               Then
            begin
              lsPrecios.Items.Add(DatosVentasCtdo.QPrecioTablaDetallePRECIO1.AsString);
              lsPrecios.Items.Add(DatosVentasCtdo.QPrecioTablaDetallePRECIO2.AsString);
              gbPrecioTabla.Visible:=True;
            //  gbPrecioTabla.SetFocus;
              lsPrecios.TopIndex;
              lsPrecios.Selected[0];
            //  lsPrecios.SetFocus;
            end;
        end;
    END;
  if (DatosVentasCtdo.CDSVentaDetUNIDAD.Value='KGR') or (DatosVentasCtdo.CDSVentaDetUNIDAD.Value='KGS') then
    IF (DBGrillaDetalle.SelectedIndex = 5) and (Balanza<>nil) THEN
      LeerPeso.Execute;


end;

procedure TFormCpbteCtdo_2.DBGrillaDetalleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ((key = vk_down) or (key = vk_up)) and
      (DBGrillaDetalle.SelectedIndex=1 ) and
      (DatosVentasCtdo.CDSVentaDet.State in [dsinsert,dsedit]) then
    begin
     if (DBGrillaDetalle.DataSource.DataSet.RecordCount=0) Then
       Key:=0;
     if (DBGrillaDetalle.DataSource.DataSet.RecordCount>0) and
        (Key= vk_down) and
        (DatosVentasCtdo.CDSVentaDetCodigoArticulo.AsString='') Then
       Key:=0;
     if (DBGrillaDetalle.DataSource.DataSet.RecordCount>0) and
        (Key= vk_Up) and
        (DatosVentasCtdo.CDSVentaDetCodigoArticulo.AsString='') //and
       // (DatosVentasCtdo.wwCDSVentaDet.State in [dsInsert])  Then
         then
          // begin
         DatosVentasCtdo.CDSVentaDet.Cancel;
//         Sysutils.Abort;
        //Key:=0;
     end;

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
  IF (Key = VK_F11) and (DatosVentasCtdo.CDSVentaDetCodigoArticulo.AsString<>'') THEN
    BEGIN
      IF NOT (Assigned(FormArticulosVendidos)) THEN
        BEGIN
          FormArticulosVendidos                := TFormArticulosVendidos.Create(self);
          FormArticulosVendidos.CodigoCliente  := DatosVentasCtdo.CDSVentaCabCodigo.Value;
          FormArticulosVendidos.CodigoArticulo := DatosVentasCtdo.CDSVentaDetCodigoArticulo.Value;
          FormArticulosVendidos.ShowModal;
        END;
    END;
  // Autoriza Modificar Precio Descuento Detalle
  if ((key= Vk_F3) and ((DMMain_FD.ModificaPrecioVta=False) or (DMMain_FD.AplicaDescuento=False)) and (DBGrillaDetalle.SelectedIndex in [2,6,7])) Then
    begin
      if not (Assigned(FormLogin)) then
        FormLogin := TFormLogin.Create(FormCpbteCtdo_2);
      FormLogin.ShowModal;
      DBGrillaDetalle.Columns[2].ReadOnly:=Not(FormLogin.Tag=1);
      DBGrillaDetalle.Columns[6].ReadOnly:=Not(FormLogin.Tag=1);
      DBGrillaDetalle.Columns[7].ReadOnly:=Not(FormLogin.Tag=1);
      key:=0;
    end;
  //Agr.Pedido
   IF  (Shift =[ssCtrl]) and (Key = VK_F10) and (DatosVentasCtdo.CDSVentaDetCodigoArticulo.AsString<>'')  THEN
    BEGIN
      if Not(Assigned(FormCantidadPedir)) then
        FormCantidadPedir:=TFormCantidadPedir.Create(Self);
      FormCantidadPedir.ShowModal;

      if FormCantidadPedir.Cantidad>0 then
      DMMain_FD.Agregar_Pedido_Borrador(DatosVentasCtdo.CDSVentaDetCodigoArticulo.Value,DatosVentasCtdo.CDSVentaDetDETALLE.Value,FormCantidadPedir.Cantidad);
    END;

  IF (Key = VK_F8) and (DatosVentasCtdo.CDSVentaDetCodigoArticulo.AsString<>'')  THEN
    BEGIN
      if ((DBGrillaDetalle.SelectedIndex > 0) and (DBGrillaDetalle.SelectedIndex < 3)) THEN
        begin
          IF (FormMovimientosCarnes.Visible=False) THEN
            FormMovimientosCarnes.Visible:=True;
        END;                                         
    END;
 // Produccion.
  IF ((Shift =[ssAlt]) and (Key = VK_F12)) and (DatosVentasCtdo.CDSVentaDetCodigoArticulo.AsString<>'') and
     (DatosVentasCtdo.CDSVentaDetDE_PRODUCCION.AsString<>'') and
     (DatosVentasCtdo.CDSVentaDetDE_PRODUCCION.AsString='S') and
     (DatosVentasCtdo.CDSFc_Prod_DetID.AsString<>'')  THEN
    BEGIN
      EditarProduccion.Execute;
    END;

end;

procedure TFormCpbteCtdo_2.DBGrillaDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (DBGrillaDetalle.SelectedIndex < 6) THEN
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
            IF DBGrillaDetalle.SelectedField = DatosVentasCtdo.CDSVentaDetCodigoArticulo THEN
              BuscarArticulo.Execute;
          end;
      END
    else
      if (key = #27) then
        DBGrillaDetalle.DataSource.DataSet.Cancel
      else
        if DBGrillaDetalle.SelectedIndex=6 Then
          DBGrillaDetalle.DataSource.DataSet.Edit;
end;

procedure TFormCpbteCtdo_2.DBCheckManualClick(Sender: TObject);
begin
  inherited;
  if  (DBCheckManual.Checked ) and (DSBase.DataSet.FieldByName('FACTURA_ELECTRONICA').Value='S')
      and (DatosVentasCtdo.CDSVentaCab.State IN [dsEdit, dsInsert]) then
    if MessageDlg('Es una factura Electronica no deberia pasa como manual... continua???',mtConfirmation,mbYesNo,0,mbYes )=mrNo then
      begin
        DBCheckManual.Checked:=False;
        Exit;
      end;
  dbeSuc.Enabled    := DBCheckManual.Checked;
  dbeNumero.Enabled := DBCheckManual.Checked;
  IF (DBCheckManual.Checked ) and (DatosVentasCtdo.CDSVentaCab.State IN [dsEdit, dsInsert]) THEN
    BEGIN
      if editarNro='N' then
        begin
          DatosVentasCtdo.CDSVentaCabSucFac.Value    := '0000';
          DatosVentasCtdo.CDSVentaCabNumeroFac.Value := '00000000';
        end;
    END;
end;

procedure TFormCpbteCtdo_2.FormCreate(Sender: TObject);
var SelecVdor:Boolean;
begin
  inherited;
  SinBDE:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  pcDetalleFactura.ActivePageIndex:=0;
  IF NOT (Assigned(DatosVentasCtdo)) THEN
    DatosVentasCtdo := TDatosVentasCtdo.Create(Self);
  AutoSize := False;

  IF NOT (Assigned(FormMovimientosCarnes)) THEN
    FormMovimientosCarnes := TFormMovimientosCarnes.Create(Self);
  FormMovimientosCarnes.DSMov.DataSet:=DatosVentasCtdo.CDSMov_Carnes;

  IF NOT (Assigned(FormCpbte_Produccion)) THEN
    FormCpbte_Produccion := TFormCpbte_Produccion.Create(Self);

  FrameMovValoresIngreso1.tsEfectivo.TabVisible           := True;
  FrameMovValoresIngreso1.tsChe3.TabVisible               := True;
  FrameMovValoresIngreso1.tsTCredito.TabVisible           := True;
  FrameMovValoresIngreso1.tsTransf.TabVisible             := True;
  FrameMovValoresIngreso1.tsDebito.TabVisible             := True;
  FrameMovValoresIngreso1.tsValoresCompartidos.TabVisible := True;
  FrameMovValoresIngreso1.tsCheques.TabVisible            := False;
  FrameMovValoresIngreso1.tsDebito.TabVisible             := False;

  DSBase.DataSet:= DatosVentasCtdo.CDSVentaCab;
  DuplicarFc    := False;
  BEGIN
    WITH DatosVentasCtdo DO
      BEGIN
        AddClientDataset(CDSVentaCab, DSPVentaCab);
        AddClientDataset(CDSVentaDet, DSPVentaDet);
        AddClientDataset(CDSVtaDetNovedades, DSPVtaDetNovedades);
        AddClientDataset(CDSImpuestos, DSPImpuestos);
        AddClientDataset(CDSPercepcionIVA, DSPPercepcionIVA);
        AddClientDataSet(CDSVtaSubDetalle,DSPVtaSubDet);
        AddClientDataSet(CDSVtaDetConsig,DSPVtaDetConsig);
        AddClientDataSet(CDSMov_Carnes,DSPMov_Carnes);
        AddClientDataSet(CDSFc_Prod_Det,DSPFc_Prod_Det);
        AddClientDataSet(CDSFc_Prod_Mov,DSPFc_Prod_Mov);
        AddClientdataSet(CDSVentaLote,DSPVentaLote);

        AddClientDataSet(FrameMovValoresIngreso1.CDSCajaMov,FrameMovValoresIngreso1.DSPCajaMov);
        AddClientDataSet(FrameMovValoresIngreso1.CDSChe3,FrameMovValoresIngreso1.DSPChe3);
        AddClientDataSet(FrameMovValoresIngreso1.CDSMovEfectivo,FrameMovValoresIngreso1.DSPMovEfectivo);
        AddClientDataSet(FrameMovValoresIngreso1.CDSMovTCredito,FrameMovValoresIngreso1.DSPMovTCredito);
        AddClientDataSet(FrameMovValoresIngreso1.CDSTransBco,FrameMovValoresIngreso1.DSPTransBco);
        AddClientDataSet(FrameMovValoresIngreso1.CDSAjustes,FrameMovValoresIngreso1.DSPAjustes);

        DatosVentasCtdo.CDSVentaCab.close;
        DatosVentasCtdo.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
        DatosVentasCtdo.CDSVentaCab.Params.ParamByName('id').Clear;
        DatosVentasCtdo.CDSVentaCab.Open;

        DatosVentasCtdo.CDSVentaDet.Close;
        DatosVentasCtdo.CDSVentaDet.Params.ParamByName('id').Clear;
        DatosVentasCtdo.CDSVentaDet.Open;

        DatosVentasCtdo.CDSVtaDetNovedades.Close;
        DatosVentasCtdo.CDSVtaDetNovedades.Params.ParamByName('id').Clear;
        DatosVentasCtdo.CDSVtaDetNovedades.Open;

        DatosVentasCtdo.CDSImpuestos.Close;
        DatosVentasCtdo.CDSImpuestos.Params.ParamByName('id').Clear;
        DatosVentasCtdo.CDSImpuestos.Open;

        DatosVentasCtdo.CDSPercepcionIVA.Close;
        DatosVentasCtdo.CDSPercepcionIVA.Params.ParamByName('id').Clear;
        DatosVentasCtdo.CDSPercepcionIVA.Open;

        DatosVentasCtdo.CDSVtaSubDetalle.Close;
        DatosVentasCtdo.CDSVtaSubDetalle.Params.ParamByName('id').Clear;
        DatosVentasCtdo.CDSVtaSubDetalle.Open;

        DatosVentasCtdo.CDSVtaDetConsig.Close;
        DatosVentasCtdo.CDSVtaDetConsig.Params.ParamByName('id').Clear;
        DatosVentasCtdo.CDSVtaDetConsig.Open;

        DatosVentasCtdo.CDSMov_Carnes.Close;
        DatosVentasCtdo.CDSMov_Carnes.Params.ParamByName('id').Clear;
        DatosVentasCtdo.CDSMov_Carnes.Open;

        FrameMovValoresIngreso1.CDSCajaMov.Close;
        FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
        FrameMovValoresIngreso1.CDSCajaMov.Open;

        FrameMovValoresIngreso1.CDSChe3.Close;
        FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSChe3.Open;

        FrameMovValoresIngreso1.CDSMovEfectivo.Close;
        FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSMovEfectivo.Open;

        FrameMovValoresIngreso1.CDSMovTCredito.Close;
        FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSMovTCredito.Open;

        FrameMovValoresIngreso1.CDSTransBco.Close;
        FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSTransBco.Open;

        FrameMovValoresIngreso1.CDSAjustes.Close;
        FrameMovValoresIngreso1.CDSAjustes.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSAjustes.Open;

        DatosVentasCtdo.CDSVentaLote.Close;
        DatosVentasCtdo.CDSVentaLote.Params.ParamByName('id').Clear;
        DatosVentasCtdo.CDSVentaLote.Open;

        DatosVentasCtdo.CDSEmpresa.Close;
        DatosVentasCtdo.CDSEmpresa.Open;

        DatosVentasCtdo.CDSFc_Prod_Det.Close;
        DatosVentasCtdo.CDSFc_Prod_Det.Params.ParamByName('id_Det').Clear;
        DatosVentasCtdo.CDSFc_Prod_Det.Open;

        DatosVentasCtdo.CDSFc_Prod_Mov.Close;
        DatosVentasCtdo.CDSFc_Prod_Mov.Params.ParamByName('id_Det').Clear;
        DatosVentasCtdo.CDSFc_Prod_Mov.Open;

        FrameMovValoresIngreso1.QCajaCab.Open;
        FrameMovValoresIngreso1.CDSCtasBancarias.Open;

        FrameMovValoresIngreso1.InicicalizaMascarasNumericas;

        AplicarMascarasNumericas;
        FrameMovValoresIngreso1.ceCaja.Enabled:=DMMain_FD.ModificaCaja;
      END;
  END;
  //***************************************************************
  // Si no puede modificar precio el usuario pongo la
  // columna en la grilla como solo lectura
  //Precio Unitario
   DBGrillaDetalle.Columns[6].ReadOnly    := NOt(DMMain_FD.ModificaPrecioVta);
  //Descuentos
   DBGrillaDetalle.Columns[7].ReadOnly    := not(DMMain_FD.AplicaDescuento);
   dbeDscto.Enabled                       := (DMMain_FD.AplicaDescuento);
   dbeDscto_1.Enabled                     := (DMMain_FD.AplicaDescuento);

   gbLista.Enabled                        := (DMMain_FD.ModificaListaPrecios);
   pnCosto.Visible                        := (DMMain_FD.VerCostos);
  //***************************************************************
   PagPorCtaOrden.TabVisible              := False;
   pagSeries.TabVisible                   := DMMain_FD.ControlaSerie;
   // Verifico la Opcion de Ver Stock y si vendo con stock cero
   chPreview.Checked                      := DMMain_FD.PreviewFactura;
  //***************************************************************
   dbcJuri.Visible                        := DMMain_FD.FacturaPorJuridiccion;
   lbJurisdiccion.Visible                 := DMMain_FD.FacturaPorJuridiccion;

   dbtProvincia.Visible                   := DMMain_FD.FacturaPorJuridiccion;
   dbtId_Juridiccion.Visible              := DMMain_FD.FacturaPorJuridiccion;
   dbtLocalidad.Visible                   := DMMain_FD.FacturaPorJuridiccion;

   dbchCtayOrden.Visible                  := DMMain_FD.FacturaPorCtaOrden;
  //***************************************************************

   if dbcJuri.Visible then
     DatosVentasCtdo.CDSBuscaLocalidadJur.Open;

  // si Usa Tabla de precios
   DatosVentasCtdo.UsaTablaDePrecios      := DMMain_FD.UsaTablaDePrecios;
// esta lineas se agragan por lo de astesano con rescpecto a la vta en consignacion

   Consignacion                           :=  DMMain_FD.UsaConsignacion;
   Tabla := 'FcVtaCab';
   Campo :='Id_Fc';

  //*************************************************************
   ArchivoIni                             := TIniFile.Create(DMMain_FD.MainPath + DMMain_FD.UsuarioActivo+'consignacion.ini');
   Proveedor                              := ArchivoIni.ReadString('proveedor', 'codigo', '');
   SelecVdor                              := ArchivoIni.ReadBool('vendedor', 'opcion', False);
   VerColumnaUnidades.Checked             := ArchivoIni.ReadBool('VerUnidades', 'Unidades', False);
   ExpresarUnidadesenEnteros1.Checked     := ArchivoIni.ReadBool('Unidades', 'ModoEntero', False);
   UltimoDepositoUsado                    := ArchivoIni.ReadInteger('Deposito', 'Deposito', -1);
   UsarUltimoDeposito.Checked             := ArchivoIni.ReadBool('Deposito', 'UsarUltimo', False);
   ArchivoIni.Free;
  //*************************************************************

   //*************************************************************
   ArchivoIni                             := TIniFile.Create(DMMain_FD.MainPath + DMMain_FD.UsuarioActivo+'FcCtdo_Impresion.ini');
   MostrarDlg.Checked                     := ArchivoIni.ReadBool('ModoImpresio', 'Dlg', True);
   VerCodigoAlternativo1.Checked          := ArchivoIni.ReadBool('codigo', 'codigo', False);
   OmitirControlFondosMaster1.Checked     := ArchivoIni.ReadBool('control', 'controlfondo', False);
   IniciarFocoFecha1.Checked              := ArchivoIni.ReadBool('Foco', 'Fecha', False);

   ArchivoIni.Free;
   //*************************************************************


   if VerCodigoAlternativo1.Checked then
    DBGrillaDetalle.Columns[1].Title.Caption:='Cod.Alt'
   else
    DBGrillaDetalle.Columns[1].Title.Caption:='Codigo';

   DMMain_FD.CodigoBarraSerie:='';

   if ClientePorDefecto<>'' Then
     begin
       RxCLdr.TabStop       :=False;
       RxCDeposito.TabStop  :=False;
       RxCSucursal.TabStop  :=False;
       rxcVendedor.TabStop  :=SelecVdor;
       dbeEntrega.TabStop   :=False;
       RxCTipoCpbte.TabStop :=False;
       DBCheckManual.TabStop:=False;
     end
   else
     begin
       RxCLdr.TabStop       :=True;
       RxCDeposito.TabStop  :=True;
       RxCSucursal.TabStop  :=True;
       rxcVendedor.TabStop  :=True;
       dbeEntrega.TabStop   :=True;
       RxCTipoCpbte.TabStop :=True;
       DBCheckManual.TabStop:=True;
     end;
   if rxcVendedor.TabStop then
    lbVdor.Font.Style:=[fsBold,fsUnderline]
  else
    lbVdor.Font.Style:=[fsUnderline];

   // *******************************************************************
   // **** Manejo Lista Precios ....
   // *******************************************************************
   DatosVentasCtdo.CDSListaPrecios.Close;
   if DMMain_FD.UsuarioAdministrador Then
     DatosVentasCtdo.CDSListaPrecios.Params.ParamByName('uso').Value:='*'
   else
     DatosVentasCtdo.CDSListaPrecios.Params.ParamByName('uso').Value:='S';
   DatosVentasCtdo.CDSListaPrecios.OPen;
   // *******************************************************************
   // **** se es controlada la lista por usuario ....
   // *******************************************************************
   if (DMMain_FD.GetControlaLista) then
     begin
       DatosVentasCtdo.CDSListaPrecios.Close;
       DatosVentasCtdo.DSListaPrecios.DataSet :=DMMain_FD.CDSListaPreciosUsuarios;
       DMMain_FD.CDSListaPreciosUsuarios.Close;
       DMMain_FD.CDSListaPreciosUsuarios.Params.ParamByName('usuario').Value:=DMMain_FD.UsuarioActivoId;
       DMMain_FD.CDSListaPreciosUsuarios.Open;
     end;
   // *******************************************************************
   // *******************************************************************
   //*************************************************************
   Pasar_A_Papelera.Visible   := DMMain_FD.UsuarioActivo='master';
   //*************************************************************


   // Lista de Codigos Serie en Memoria
   CodigosSeries:=TStringList.Create;
   CodigosSeries.Clear;
  // DatosVentasCtdo.CDSEmpresa.Close;
  // DatosVentasCtdo.CDSEmpresa.Open;
//   DMMain_FD.AgentePerepcionIB := DatosVentasCtdo.CDSEmpresa.FieldByName('AG_PERCEPCION_ING_BRUTOS').Value;
//   DMMain_FD.TasaPercepcionIB  := DatosVentasCtdo.CDSEmpresa.FieldByName('TASA_PERCEPCION_IB').Value;
//   DMMain_FD.Minim_Imp_IB_Perc := DatosVentasCtdo.CDSEmpresa.FieldByName('MINO_IMP_PERCEP_IB').Value;

   lbPercep.Visible           := DMMain_FD.AgentePercepcionIB;
   dbtTasa_IB.Visible         := lbPercep.Visible;
   dbtImporte_IB.Visible      := lbPercep.Visible;
   bvPercepcion.Visible       := lbPercep.Visible;
   dbcPercibeIIBB.Visible     := lbPercep.Visible;

   //DatosVentasCtdo.CDSEmpresa.Close;
   ItemRedondeo    :='*';
   AutoEnviarCorreo:=False;
  // ControlaImpresion:=True;
   lbmodocpbte.Visible:=DiscriminaIva='N';
   DatosVentasCtdo.MargenUtilidad := DMMain_FD.GetMargenUtilidad;
  SearchAssignGrid(DBGrillaDetalle);
end;

procedure TFormCpbteCtdo_2.FiscalizarExecute(Sender: TObject);
var aux,TextoLog,TextoLogFiscalizacion:String;
d,m,y:word;
EstadoControlImp,EstadoPreviw,
EstadoDlg,RevisionCAE,Ajustar     :Boolean;
CaeREVISION    :WideString;
VtoREVISION    :String;
FechaCapturada :String;
NumeroCapturado:Double;
NumeroStr      :String;
FechaVta       :TDateTime;
FechaVtoCae    :TDateTime;
ImagenQR       :TBitmap;
begin
  inherited;
  RevisionCAE:=False;
  if (DatosVentasCtdo<>nil) and (DatosVentasCtdo.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and
     (DatosVentasCtdo.CDSVentaCabIMPRESO.Value='N') and (DatosVentasCtdo.CDSVentaCabCAE.AsFloat<=0) then
    begin

      if (FormFiscalizacion<>nil) then
        begin
          FreeAndNil(FormFiscalizacion);
          FormFiscalizacion:=nil;
        end;

      if Not(Assigned(FormFiscalizacion)) then
        FormFiscalizacion:= TFormFiscalizacion.Create(self);

      Aux:= DatosVentasCtdo.CDSEmpresa.FieldByName('cuit').AsString;

      //*********  Control del Certifiado por Sucursal **************
      if Trim(DMMain_FD.Certificado_SUCURSAL)<>'' then
        begin
          Aux:= Trim(DMMain_FD.Cuit_SUCURSAL);
          FormFiscalizacion.CertificadoSucursal:= Trim(DMMain_FD.Certificado_SUCURSAL);
        end
      else
        FormFiscalizacion.CertificadoSucursal:= '';
      //************************************************************

      Aux:=AnsiReplaceStr(Aux,'-','');
      Aux:=AnsiReplaceStr(Aux,'.','');

      FormFiscalizacion.CuitVdor    := StrToFloat(Aux);

      Aux:= DatosVentasCtdo.CDSVentaCabCUIT.AsString;
      if aux='' then aux:='00000000000';

      Aux:=AnsiReplaceStr(Aux,'-','');
      Aux:=AnsiReplaceStr(Aux,'.','');
      Aux:=AnsiReplaceStr(Aux,'_','');

      FormFiscalizacion.CuitComp           := StrToFloat(Aux);
      FormFiscalizacion.ID_Comprobante     := DatosVentasCtdo.CDSVentaCabID_FC.AsString;
      FormFiscalizacion.PtoVenta           := DatosVentasCtdo.CDSVentaCabSUCFAC.AsInteger;
      FormFiscalizacion.FechaVta           := FormatDateTime('yyyymmdd', DatosVentasCtdo.CDSVentaCabFECHAVTA.AsDateTime);
      FormFiscalizacion.FechaVto           := FormatDateTime('yyyymmdd', DatosVentasCtdo.CDSVentaCabFECHAVTA.AsDateTime);
      FormFiscalizacion.Total              := RoundTo(DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat,-2);
      FormFiscalizacion.TotalNeto          := DatosVentasCtdo.CDSVentaCabNETOGRAV2.AsFloat;
      FormFiscalizacion.TotalExento        := roundto(DatosVentasCtdo.CDSVentaCabNETOEXEN2.AsFloat,-2);
      FormFiscalizacion.TotalIIBB          := DatosVentasCtdo.CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat;
      FormFiscalizacion.TotalNetoNoGrav    := DatosVentasCtdo.CDSVentaCabNETONOGRAV2.AsFloat;
      FormFiscalizacion.TasaIIBB           := DatosVentasCtdo.CDSVentaCabPERCEPCION_IB_TASA.AsFloat;
      FormFiscalizacion.Nombre             := DatosVentasCtdo.CDSVentaCabRAZONSOCIAL.AsString;
      FormFiscalizacion.Domicilio          := DatosVentasCtdo.CDSVentaCabDIRECCION.AsString;
      FormFiscalizacion.BaseImpIIBB        := DatosVentasCtdo.CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat;
      FormFiscalizacion.DatosImp           := DatosVentasCtdo.CDSImpuestos;
      FormFiscalizacion.DatosPercecpionIVA := DatosVentasCtdo.CDSPercepcionIVA;
      FormFiscalizacion.URLWSAA            := FormCpbteCtdo_2.URLWSAA;
      FormFiscalizacion.URLWSW             := FormCpbteCtdo_2.URLWSW;
      FormFiscalizacion.URLWSW_EX          := FormCpbteCtdo_2.URLWSW_EX;
      FormFiscalizacion.NumeroActual       := DatosVentasCtdo.CDSVentaCabNUMEROFAC.AsFloat;
      FormFiscalizacion.TipoNumero         := DatosVentasCtdo.CDSVentaCabTIPOCPBTE.Value+'-'+DatosVentasCtdo.CDSVentaCabNROCPBTE.Value;
      FormFiscalizacion.Moneda             := DatosVentasCtdo.CDSVentaCabMONEDA_CPBTE.Value;
      FormFiscalizacion.MonedaCotiz        := DatosVentasCtdo.CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat;
      FormFiscalizacion.NombreIni          := DMMain_FD.MainPath+DMMain_FD.NombreIni;
      FormFiscalizacion.CodigoActividad    := DatosVentasCtdo.CDSEmpresaCOD_ACTIVIDAD.Value;
      FormFiscalizacion.TipoIvaComp        := DatosVentasCtdo.CDSVentaCabTIPOIVA.Value;
      // codificacion de Factura Contado //Nota de Vta Contado
      if NotaVtaCtdo then
        begin
          if (DatosVentasCtdo.CDSVentaCabTIPOCPBTE.Value='FO') and (DatosVentasCtdo.CDSVentaCabLETRAFAC.Value='A') Then
            FormFiscalizacion.TipoComp:=DatosVentasCtdo.CDSVentaCabMUESTRACODIGOAFIP.AsInteger// 5
          else
            if (DatosVentasCtdo.CDSVentaCabTIPOCPBTE.Value='FO') and (DatosVentasCtdo.CDSVentaCabLETRAFAC.Value='B') Then
              FormFiscalizacion.TipoComp:=DatosVentasCtdo.CDSVentaCabMUESTRACODIGOAFIP.AsInteger;//10;
         end
      else
        begin
          if (DatosVentasCtdo.CDSVentaCabTIPOCPBTE.Value='FO') and (DatosVentasCtdo.CDSVentaCabLETRAFAC.Value='A') Then
            FormFiscalizacion.TipoComp:=DatosVentasCtdo.CDSVentaCabMUESTRACODIGOAFIP.AsInteger//1
          else
            if (DatosVentasCtdo.CDSVentaCabTIPOCPBTE.Value='FO') and (DatosVentasCtdo.CDSVentaCabLETRAFAC.Value='B') Then
              FormFiscalizacion.TipoComp:=DatosVentasCtdo.CDSVentaCabMUESTRACODIGOAFIP.AsInteger;//6;
        end;

      if (DatosVentasCtdo.CDSVentaCabTIPOCPBTE.Value='FO') and (DatosVentasCtdo.CDSVentaCabLETRAFAC.Value='C') Then
        FormFiscalizacion.TipoComp:=DatosVentasCtdo.CDSVentaCabMUESTRACODIGOAFIP.AsInteger;//11;

       //****************************************************************************************

      if (DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat<DMMain_FD.LimiteFactB) and
         ((DatosVentasCtdo.CDSVentaCabLETRAFAC.Value='B') or  (DatosVentasCtdo.CDSVentaCabLETRAFAC.Value='C')) and
         (DatosVentasCtdo.CDSVentaCabTIPOIVA.Value=3) Then
        begin
          FormFiscalizacion.TipoDocumento := 99;
          FormFiscalizacion.CuitComp      := 0;
        end
      else
        FormFiscalizacion.TipoDocumento := 80;

      if (DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat>=DMMain_FD.LimiteFactB) and
         ((DatosVentasCtdo.CDSVentaCabLETRAFAC.Value='B') or  (DatosVentasCtdo.CDSVentaCabLETRAFAC.Value='C')) and
         (DatosVentasCtdo.CDSVentaCabTIPOIVA.Value=3) Then
        begin
          FormFiscalizacion.TipoDocumento := 96;
        end;

//      FormFiscalizacion.Certificado := FormCpbteCtdo_2.CertificadoElectronico;
//      FormFiscalizacion.Clave       := FormCpbteCtdo_2.ClaveElectronica;
//
//      //*********  Control de Certifiado por Sucursal **************
//      if Trim(DMMain_FD.Certificado_SUCURSAL)<>'' then
//        FormFiscalizacion.Certificado:=Trim(DMMain_FD.Certificado_SUCURSAL);
//      //************************************************************

      DMMain_FD.LogFileFD(1,2,'Incio de Fiscalizacion Nro.'+DatosVentasCtdo.CDSVentaCabNROCPBTE.AsString+'('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')'+
                              DatosVentasCtdo.CDSVentaCabNROCPBTE.AsString , 'FACVTA');

      FormFiscalizacion.ShowModal;
      if (FormFiscalizacion.Resultado='A') then
        begin

          RevisionCAE    := FormFiscalizacion.Revision;
          CaeREVISION    := FormFiscalizacion.CAE;
          VtoREVISION    := FormFiscalizacion.Vencimiento;
          FechaCapturada := FormFiscalizacion.FechaVta;
          NumeroCapturado:= FormFiscalizacion.NumeroInt;
          Ajustar        := FormFiscalizacion.Ajustar;

          d := StrToInt( Copy(FechaCapturada,7,2));
          m := StrToInt( Copy(FechaCapturada,5,2));
          y := StrToInt( Copy(FechaCapturada,1,4));

          FechaVta :=EncodeDate(y,m,d);

          DMMain_FD.LogFileFD(1,2,'Fiscalizacion Ok Nro de Cpbte Asignado.'+FormatFloat('00000000',NumeroCapturado)+'('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')'+
                             'CAE '+CaeREVISION , 'FACVTA');

          d := StrToInt( Copy(FormFiscalizacion.Vencimiento,7,2));
          m := StrToInt( Copy(FormFiscalizacion.Vencimiento,5,2));
          y := StrToInt( Copy(FormFiscalizacion.Vencimiento,1,4));

          FechaVtoCae := EncodeDate(y,m,d);;

          NumeroStr:= copy('00000000',1,8-length(FloatToStr(NumeroCapturado)))+FloatToStr(NumeroCapturado);

          if RevisionCAE then
            begin
              if DMMain_FD.VerificarCAE(CaeREVISION) Then
                begin
                  DMMain_FD.LogFileFD(1,2,'Error de intento de Asignacion de CAE '+'('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+') '+
                                                                                       DatosVentasCtdo.CDSVentaCabNROCPBTE.AsString ,
                                                                                    'FACVTA');
                  raise Exception.Create('Este CAE esta asignnado en una factura');
                end;
            end;

          if Not(DMStoreProcedure.ActualizaCAE_VTO(DatosVentasCtdo.CDSVentaCabID_FC.Value,FechaVta,CaeREVISION,FechaVtoCae,NumeroStr,FormFiscalizacion.QRImage)) Then
            ShowMessage('No se pudo gravar datos de CAE/Vencimiento y Actualizacion de Numero...Proceso de Fiscalizacion ');

//          DMMain_FD.fdcGestion.StartTransaction;
//          try
//            DMStoreProcedure.spActualizaNro_CAE_VTO.Close;
//            DMStoreProcedure.spActualizaNro_CAE_VTO.Params.ParamByName('Id').Value            := DatosVentasCtdo.CDSVentaCabID_FC.Value;
//            DMStoreProcedure.spActualizaNro_CAE_VTO.Params.ParamByName('Fecha').Value         := FechaVta;
//            DMStoreProcedure.spActualizaNro_CAE_VTO.Params.ParamByName('Cae').Value           := CaeREVISION;
//            DMStoreProcedure.spActualizaNro_CAE_VTO.Params.ParamByName('CaeVencimiento').Value:= FechaVtoCae;
//            DMStoreProcedure.spActualizaNro_CAE_VTO.Params.ParamByName('Numero').Value        := NumeroStr;
//            DMStoreProcedure.spActualizaNro_CAE_VTO.ExecProc;
//            DMStoreProcedure.spActualizaNro_CAE_VTO.Close;
//            DMMain_FD.fdcGestion.Commit;
//          Except
//            DMMain_FD.fdcGestion.Rollback;
//            ShowMessage('No se pudo gravar datos de CAE/Vencimiento y Actualizacion de Numero...Proceso de Fiscalizacion ')
//          end;

          Recuperar.Execute;

          TextoLog:= 'Restauracion de CAE Fc.Ctdo.Nro: '+ '('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+') '+
                      DatosVentasCtdo.CDSVentaCabNROCPBTE.AsString+
                      ' Cliente: '+
                      DatosVentasCtdo.CDSVentaCabRAZONSOCIAL.AsString+
                      ' Importe Fc: '+
                      FormatFloat('0.00',DatosVentasCtdo.CDSVentaCabTOTAL.asfloat)+
                      ' Nro.CAE.:'+DatosVentasCtdo.CDSVentaCabCAE.Value;

          TextoLogFiscalizacion:= 'Gravacion de CAE Fc.Ctdo.Nro: '+'('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+') '+
                                  DatosVentasCtdo.CDSVentaCabNROCPBTE.AsString+
                                  ' Cliente: '+
                                  DatosVentasCtdo.CDSVentaCabRAZONSOCIAL.AsString+
                                  ' Importe Fc: '+
                                  FormatFloat('0.00',DatosVentasCtdo.CDSVentaCabTOTAL.asfloat)+
                                  ' Nro.CAE.:'+DatosVentasCtdo.CDSVentaCabCAE.Value;

         if FormCpbteCtdo_2.DSBase.State in [dsInsert,dsEdit] then
            FormCpbteCtdo_2.Confirma.Execute;

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

          EstadoControlImp                  := FormCpbteCtdo_2.ControlaImpresion;
          FormCpbteCtdo_2.ControlaImpresion := False;
          EstadoPreviw                      := FormCpbteCtdo_2.chPreview.Checked;
          FormCpbteCtdo_2.chPreview.Checked := False;
          EstadoDlg                         := MostrarDlg.Checked;

          FormCpbteCtdo_2.ControlaImpresion  := EstadoControlImp;
          FormCpbteCtdo_2.chPreview.Checked  := EstadoPreviw;
          FormCpbteCtdo_2.MostrarDlg.Checked := EstadoDlg;

          if (FormFiscalizacion<>nil) and ( FormFiscalizacion.Imprimir) then
            Imprimir.Execute;

          // **** Ingreso en el Log File  **************
          if RevisionCAE then
            DMMain_FD.LogFileFD(1,2,TextoLog,' FACVTACTD')
          else
            DMMain_FD.LogFileFD(1,2,TextoLogFiscalizacion,' FACVTACTD');
          // ******************************************
          // ******************************************
        end;
    end;
 if (Assigned(FormCpbteCtdo_2)) and  ((FormCpbteCtdo_2.Visible=True) and (btNuevo.Enabled=True)) then
    btNuevo.SetFocus;
end;

procedure TFormCpbteCtdo_2.FormActivate(Sender: TObject);
begin
  inherited;
  if DSBase.DataSet.State = dsBrowse then
    begin
      if (DSBase.DataSet.IsEmpty=False) and (FormCpbte_2<>Nil) then
        Recuperar.Execute;
    end;
  if Assigned(FormCpbteCtdo_2) then
    if ((FormCpbteCtdo_2.Visible=True) and (btNuevo.Enabled=True)) then
      btNuevo.SetFocus;
end;

procedure TFormCpbteCtdo_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ArchivoIni                   := TIniFile.Create(DMMain_FD.MainPath+DMMain_FD.UsuarioActivo+'FcCtdo_Impresion.ini');
  ArchivoIni.WriteBool('ModoImpresio', 'Dlg', MostrarDlg.Checked);
  ArchivoIni.WriteBool('VerUnidades', 'Unidades', VerColumnaUnidades.Checked);
  ArchivoIni.WriteBool('codigo', 'codigo', VerCodigoAlternativo1.Checked);
  ArchivoIni.WriteBool('control', 'controlfondo', OmitirControlFondosMaster1.Checked);
  ArchivoIni.WriteBool('Foco', 'Fecha', IniciarFocoFecha1.Checked);

  ArchivoIni.Free;
  //*************************************************************

  if DSBase.DataSet.State IN [dsInsert, dsEdit] then
   DMMain_FD.LogFileFD(0,3,'Cierre de Pantalla Con Cpbte Abierto, Numero Provisorio:'+DatosVentasCtdo.CDSVentaCabLETRAFAC.AsString+'-'+DatosVentasCtdo.CDSVentaCabSUCFAC.AsString+'-'+DatosVentasCtdo.CDSVentaCabNUMEROFAC.AsString+
                          '('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')'+ '..Fecha :'+dateToStr(DatosVentasCtdo.CDSVentaCabFECHAVTA.AsDateTime)+
                          ' Importe de :'+FormatFloat(',0.00',DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat),
                          'CANCELACION');

  if Anulado<>nil Then
    FreeAndNil(Anulado);
  if CodigosSeries<>nil then
    FreeAndNil(CodigosSeries);

  pcDetalleFactura.ActivePage := PagDetalles;
  WITH DatosVentasCtdo DO
    BEGIN
     // Cancelar.Execute;
      QClientes.Close;
      CDSVentaDet.Close;
      CDSSucursal.Close;
      CDSStock.Close;
      CDSInscripcion.Close;
      CDSIva.Close;
      CDSDeposito.Close;
      CDSImpuestos.Close;
      CDSVentaCab.Close;
      CDSVtaSubDetalle.Close;
      CDSListaPrecios.Close;
      CDSVentaLote.Close;
    END;
  FreeAndNil(DatosVentasCtdo);
 // cpPuertoCom.Disconnect;
  Action := caFree;
  // DatosVentasCtdo.free;
  inherited;
end;

procedure TFormCpbteCtdo_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCpbteCtdo_2 := NIL;
end;

procedure TFormCpbteCtdo_2.ImportarExcelExecute(Sender: TObject);
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
                    DatosVentasCtdo.CDSVentaDet.Append;
                    DatosVentasCtdo.CDSVentaDetCODIGOARTICULO.Text := codigo;
                    DatosVentasCtdo.CDSVentaDetCANTIDAD.Text       := FormatFloat('0.000', Cantidad);
                    DatosVentasCtdo.CDSVentaDetDESCUENTO.Text      := FormatFloat('0.000', Dscto);

                    DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL.Text := FormatFloat('0.000', Precio);

                  end;
                r:=r+1;
              end;
            Screen.Cursor:=crDefault;

          end;
    end;
  FreeAndNil(GridXLS);
  Screen.Cursor:=crDefault;
end;

procedure TFormCpbteCtdo_2.ImpresionFormatoMail1Click(Sender: TObject);
begin
  inherited;
  ImpresionFormatoMail1.Checked:=Not(ImpresionFormatoMail1.Checked);
end;

procedure TFormCpbteCtdo_2.ImprimirExecute(Sender: TObject);
VAR Preview:String;
DiscrIva,Cuit:String;
Imprime:Boolean;
BEGIN
  DiscrIva:=FormCpbteCtdo_2.DiscriminaIva;
  FormCpbteCtdo_2.DiscriminaIva:='S';
 // DatosVentasCtdo.CDSVentaDet.Refresh;
//  DatosVentasCtdo.wwCDSVentaDet.IndexFieldNames:='GRUPO_DETALLE'+'RENGLON';

 // DMMain_FD.QOpciones.CLose;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='PREVIEWFACTUR';
//  DMMain_FD.QOpciones.Open;

  frFactura.PrintOptions.Printer:=PrNomCpbte;
  frFactura.SelectPrinter;
  frFactura.PrintOptions.Printer:=PrNomCpbte;
  frFactura.SelectPrinter;

  if (chPreview.Checked) then Preview:='S' else Preview:='N';

  DatosVentasCtdo.QComprob.Close;
  DatosVentasCtdo.QComprob.ParamByName('id').Value:=DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTE.Value;
  DatosVentasCtdo.QComprob.ParamByName('suc').Value:=DatosVentasCtdo.CDSVentaCabSUCURSAL.Value;
  DatosventasCtdo.QComprob.ParamByName('DesglozaIva').Value := '*';
  DatosVentasCtdo.QComprob.Open;

  if (DatosVentasCtdo.QComprobNOMBREIMPRESORA.Value='') or (DatosVentasCtdo.CDSVentaCabIMPRESO.Value='S') Then
    begin
      //IF MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
      if ControlaImpresion=True then
        begin
          IF MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0)= mrYes Then
            Imprime:=True
          else
            Imprime:=false;
        end
      else
        Imprime:=True;

      if (DatosVentasCtdo.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (DatosVentasCtdo.CDSVentaCabCAE.AsFloat<=0) then
        begin
          Imprime:=False;
          RAISE Exception.Create('Comprobante Electronico, debe tener CAE para imprimir.(2)');
        end;

      if (Imprime=True) and (DatosVentasCtdo.CDSVentaCabIMPRESO.Value='S') and (DMMain_FD.AutorizadoReImprimirFC=False) then
        begin
          Imprime:=False;
          ShowMessage('no se permite re-imprimir el cpbte ya impreso...')
        end;

      if Imprime=True then
        begin
          frFactura.LoadFromFile( DMMain_FD.PathReportesCpbte+'\'+DatosVentasCtdo.QComprobREPORTE.AsString);
          frFactura.PrintOptions.Copies :=DatosVentasCtdo.QComprobCOPIAS.Value;

          if ImpresionFormatoMail1.Checked then
            begin
              if FileExists(DMMain_FD.PathReportesCpbte+'\Mail_'+DatosVentasCtdo.QComprobREPORTE.AsString) then
                frFactura.LoadFromFile(DMMain_FD.PathReportesCpbte+'\Mail_'+DatosVentasCtdo.QComprobREPORTE.AsString)
              else
                frFactura.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosVentasCtdo.QComprobREPORTE.AsString);

              frFactura.PrintOptions.Copies :=1;

            end;

          DatosVentasCtdo.QComprob.Close;

          // ***** Segun quien Fiscaliza verifico si no fue por datos de Sucursal ....
          Cuit  := AnsireplaceText(Trim(DatosVentasCtdo.CDSEmpresaCUIT.Value),'-','');
          if Trim(DMMain_FD.Certificado_SUCURSAL)<>'' then
            begin
              FormCpbteCtdo_2.CertificadoElectronico:=Trim(DMMain_FD.Certificado_SUCURSAL);
              Cuit:= AnsireplaceText(Trim(DMMain_FD.Cuit_SUCURSAL),'-','');
            end;

          Cuit := AnsireplaceText(CUIT,'-','');
          Cuit := AnsireplaceText(CUIT,'.','');
          // ***********************************************************************

          Cuit:=Copy('0000000000',1,11-Length(Trim(Cuit)))+Trim(Cuit);

          if (DatosVentasCtdo.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and
             ((DatosVentasCtdo.CDSVentaCabCAE.AsString<>'') and (DatosVentasCtdo.CDSVentaCabCAE.AsFloat>0)) and
             (DatosVentasCtdo.CDSVentaCabMUESTRACODIGOAFIP.Value<>'') then

          begin
            frFactura.Variables['CodigoBarra']  :=''''+DMMain_FD.CodigoBarraFcElectronica(Cuit+
                                                    Copy(DatosVentasCtdo.CDSVentaCabMUESTRACODIGOAFIP.Value,2,2)+
                                                    DatosVentasCtdo.CDSVentaCabSUCFAC.Value+
                                                    DatosVentasCtdo.CDSVentaCabCAE.Value+
                                                    FormatDateTime('yyyymmdd',DatosVentasCtdo.CDSVentaCabCAE_VENCIMIENTO.AsDateTime))+'''';

            frFactura.Variables['CodigoQR']         := '';

          end;

          frFactura.Variables['MascaraUnitario']  :=''''+DatosVentasCtdo.MascaraDetalleUnitario+'''';
          frFactura.Variables['MascaraCantidad']  :=''''+DatosVentasCtdo.MascaraDetalleCantidad+'''';
          frFactura.Variables['MascaraTotal']     :=''''+DatosVentasCtdo.MascaraDetalleTotal+'''';
          frFactura.Variables['MascaraTotalGral'] :=''''+DatosVentasCtdo.MascaraCabecera+'''';
          frFactura.Variables['MascaraIvaTasa']   :=''''+DatosVentasCtdo.MascaraIvaTasa+'''';
          frFactura.Variables['MascaraIvaImporte']:=''''+DatosVentasCtdo.MascaraIvaImporte+'''';
          frFactura.PrepareReport;
          frfactura.PrintOptions.ShowDialog:=MostrarDlg.Checked;

          if Preview='S' Then
            frFactura.ShowReport
          else
             begin
              if TForm(Self.Owner).Name='FormControlCompNoImpresos' then
                frfactura.PrintOptions.ShowDialog:=False;
              frFactura.Print;
            end;
            // frFactura.Print;
           if DatosVentasCtdo.CDSVentaCabCON_GTIA_EXTENDIDA.AsString='S' then
            begin
              if DatosVentasCtdo.ArticuloGtia='' then
                DatosVentasCtdo.BuscaArticuloGarantia;
              DMBuscadores.QBuscaArticuloGtiaExt.Close;
              DMBuscadores.QBuscaArticuloGtiaExt.ParamByName('codigo').AsString:= DatosVentasCtdo.ArticuloGtia;
              DMBuscadores.QBuscaArticuloGtiaExt.Open;
              frGtia.LoadFromFile(DMMain_FD.PathReportesCpbte+'\GarantiaExt.fr3');
              frGtia.Variables['Vencimiento']    :=''''+DateToStr(IncMonth(DatosVentasCtdo.CDSVentaCabFECHAVTA.AsDateTime,DatosVentasCtdo.CDSVentaCabMESES_DE_GARANTIA.Value))+'''';
              frGtia.Variables['Valor']          := DatosVentasCtdo.CDSVentaCabVALOR_ASEGURADO.AsFloat;
              frGtia.Variables['Articulo']       := ''''+DatosVentasCtdo.ArticuloAsegurado+'''';
              frGtia.ShowReport;
              DMBuscadores.QBuscaArticuloGtiaExt.Close;
            end;

          if (Impresa) and (DatosVentasCtdo.CDSVentaCabIMPRESO.Value='N') then
            begin
              if Not(DMStoreProcedure.MarcarFcVtaImpresa(DatosVentasCtdo.CDSVentaCabID_FC.Value)) Then
                ShowMessage('Comprobante no fue marcado como Impreso ....!')
              else
                Recuperar.Execute;
            end;
        end;
    end;
  FormCpbteCtdo_2.DiscriminaIva:=DiscrIva;
  DatosVentasCtdo.CDSVentaDet.Refresh;
  if (Assigned(FormCpbteCtdo_2)) and ((FormCpbteCtdo_2.Visible=True) and (btNuevo.Enabled=True)) then
    btNuevo.SetFocus;

end;
procedure TFormCpbteCtdo_2.AnularExecute(Sender: TObject);
Var Detalle:String;
begin
  inherited;
  // Verifico si estan los valores disponibles
   if DatosVentasCtdo.CDSVentaCabFACTURA_ELECTRONICA.Value='S' Then
    raise Exception.Create('Factura Electronica, no se puede anular, hacer Nota de Credito....');

  DMStoreProcedure.QControlFondos.Close;
  DMStoreProcedure.QControlFondos.ParamByName('id').Value  :=DatosVentasCtdo.CDSVentaCabID_FC.Value;
  DMStoreProcedure.QControlFondos.ParamByName('Tipo').Value:='FO';
  DMStoreProcedure.QControlFondos.Open;
  if DMStoreProcedure.QControlFondos.Fields[0].Value='N' then
    RAISE Exception.Create('Los cheques y/o tarjetas de Creditos han sido Usados para otras operaciones, no se pude hacer la operación....');
  DMStoreProcedure.QControlFondos.Close;

  if DatosVentasCtdo.CDSVentaCabANULADO.Value='S' Then
    raise Exception.Create('Ya fue anulado....');

  if DMMain_FD.AnularFactura=True then
    begin
      if Not(DSBase.DataSet.IsEmpty) Then
        begin
          IF MessageDlg('Ud. está por hacer una operación de' + #13 + 'anulación.....'+#13+'Está seguro de hacerlo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
            BEGIN
              DMMain_FD.fdcGestion.StartTransaction;
              try
                DatoNew     :=IntToStr(DatosVentasCtdo.CDSVentaCabID_FC.Value);
                TipoCpbte   :=DatosVentasCtdo.CDSVentaCabTIPOCPBTE.Value;
                DatosVentasCtdo.CDSVentaCab.Edit;
                datosVentasCtdo.CDSVentaCabANULADO.Value := 'S';
                //    DatosVentasCtdo.wwCDSVentaCab.Post;
                if DatosVentasCtdo.Renglones<DatosVentasCtdo.CDSVentaDet.RecordCount Then
                  DatosVentasCtdo.Renglones:=DatosVentasCtdo.CDSVentaDet.RecordCount;
                // **** Ingreso en el Log File  **************
                Detalle:= 'Anulación Fac.Venta Ctdo.: '+
                          DatosVentasCtdo.CDSVentaCabNROCPBTE.Value+
                         ' Cliente: '+
                          DatosVentasCtdo.CDSVentaCabRAZONSOCIAL.Value+
                         ' Importe: '+
                          FormatFloat('0.00',DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat);

                DMMain_FD.LogFileFD(0,2,Detalle,'FACVTA');

                {
                DMStoreProcedure.spGravarLogDBX.Close;
                DMStoreProcedure.spGravarLogDBX.ParamByName('Tipo').Value      := 2;
                DMStoreProcedure.spGravarLogDBX.ParamByName('Detalle').AsString:= 'Anulación Fac.Venta Ctdo.: '+
                                                                      DatosVentasCtdo.CDSVentaCabNROCPBTE.Value+
                                                                     ' Cliente: '+
                                                                      DatosVentasCtdo.CDSVentaCabRAZONSOCIAL.Value+
                                                                     ' Importe: '+
                                                                      FormatFloat('0.00',DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat);
                DMStoreProcedure.spGravarLogDBX.ParamByName('Origen').AsString   :='FACVTA';
                DMStoreProcedure.spGravarLogDBX.ParamByName('Usuario').AsString  :=DMMain_FD.UsuarioActivo;
                DMStoreProcedure.spGravarLogDBX.ExecProc;
                DMStoreProcedure.spGravarLogDBX.Close;
                }
                DatosVentasCtdo.CDSVentaCab.Post;
                DatosVentasCtdo.CDSVentaCab.ApplyUpdates(0);
                // ******************************************
                DMMain_FD.fdcGestion.Commit;
                // Confirma.Execute;
              except
                DMMain_FD.fdcGestion.Rollback;
                ShowMessage('No se pudo realizar la anulación....');
              end;
              Recuperar.Execute;
            END;
          end
        else
          ShowMessage('No hay comprobante para anular....');
    end
  else
    ShowMessage('No posee permisos para esta operación');
end;

procedure TFormCpbteCtdo_2.AsignarObraExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormAsignaObras)) then
    FormAsignaObras:=TFormAsignaObras.Create(self);
  FormAsignaObras.Tipo      := DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
  FormAsignaObras.id_origen := DSBase.DataSet.FieldByName('ID_FC').Value;
  FormAsignaObras.Id_Obra   := DSBase.DataSet.FieldByName('ID_OBRA').Value;
  FormAsignaObras.ShowModal;
  DatoNew:=DSBase.DataSet.FieldByName('ID_FC').AsString;
  Recuperar.Execute;
  if (Assigned(FormAsignaObras)) then
    FreeAndNil(FormAsignaObras);
end;

procedure TFormCpbteCtdo_2.ConectarBalanzaExecute(Sender: TObject);
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

procedure TFormCpbteCtdo_2.ConfirmaExecute(Sender: TObject);
VAR //Control : Boolean;
  i:integer;
  Dif:Extended;
  Cuit:string;
  Detalle:string;
begin

  if (DMMain_FD.UsaFirma) and (Not(DMMain_FD.UsuarioActivo='master')) then
    begin
      if Not(Assigned(FormLogin)) then
        FormLogin:=TFormLogin.Create(Self);
      FormLogin.Usuario:=DMMain_FD.UsuarioActivo;
      FormLogin.Modo :=1;
      FormLogin.ShowModal;
      if FormLogin.Tag=0 then
        begin
          raise Exception.Create('Usuario no Valido de sesion....');
        end
      else
        Begin
          DatosVentasCtdo.CDSVentaCabUSUARIO.Value:= FormLogin.Usuario;
        End;
    end;

  pnPrecios.Visible:=False;
  if DatosVentasCtdo.CDSVentaCabPOR_CTA_Y_ORDEN.Value='S' then
    begin
      if Consignacion then
        if (DatosVentasCtdo.VerificaConsignaciones) then
          Raise Exception.Create('Hay items de consigancion sin asignar');
    end;
//  if FrameMovValoresIngreso1.CDSDebitos.State<>dsBrowse then
//    FrameMovValoresIngreso1.CDSDebitos.Post;
//  if FrameMovValoresIngreso1.CDSTransBco.State<>dsBrowse then
//    FrameMovValoresIngreso1.CDSTransBco.Post;
//  if FrameMovValoresIngreso1.CDSMovEfectivo.State<>dsBrowse then
//    FrameMovValoresIngreso1.CDSMovEfectivo.Post;
//  if FrameMovValoresIngreso1.CDSMovTCredito.State<>dsBrowse then
//    FrameMovValoresIngreso1.CDSMovTCredito.Post;
//  if FrameMovValoresIngreso1.CDSChe3.State<>dsBrowse then
//    FrameMovValoresIngreso1.CDSChe3.Post;

  Cuit:= Trim(DSBase.DataSet.fieldByName('CUIT').Value);
  Cuit:= ReplaceStr(Cuit,'-','');

  if  (Trunc(DMMain_FD.LimiteFactB)>0) and (DatosVentasCtdo.CDSVentaCabTOTAL.Value>DMMain_FD.LimiteFactB) and
      ( Cuit='') and  (DatosVentasCtdo.CDSVentaCabLETRAFAC.Value='B') and (DatosVentasCtdo.CDSVentaCabFACTURA_ELECTRONICA.Value='S') then
    begin
       if Not(Assigned(FormDatosClienteCabeceraCpbte)) Then
        FormDatosClienteCabeceraCpbte := TFormDatosClienteCabeceraCpbte.Create(Application);
      FormDatosClienteCabeceraCpbte.Tag :=2;
      FormDatosClienteCabeceraCpbte.ShowModal;

      Cuit:= Trim(DSBase.DataSet.fieldByName('CUIT').Value);
      Cuit:= ReplaceStr(Cuit,'-','');

      if Trim(Cuit)='' then
        Raise Exception.Create('No se Ingreso Doc/Cuit....')

    end;

  if CpbteNuevo='S' then
    DatosVentasCtdo.CDSVentaCabFECHA_FISCAL.Value:=DatosVentasCtdo.CDSVentaCabFECHAVTA.Value;

  if (DatosVentasCtdo.CDSVentaCabDSTO.AsString='') Then
    DatosVentasCtdo.CDSVentaCabDSTO.AsFloat:=0;
  if (DatosVentasCtdo.CDSVentaCabDSTOIMPORTE.AsString='') Then
    DatosVentasCtdo.CDSVentaCabDSTOIMPORTE.AsFloat:=0;


  if (DatosVentasCtdo.CDSVentaDetCodigoArticulo.AsString='') and
     (DatosVentasCtdo.CDSVentaDet.State in [dsInsert,dsEdit]) Then
        DatosVentasCtdo.CDSVentaDet.Cancel;
  if DatosVentasCtdo.CDSVentaDet.State in [dsInsert,dsEdit] Then
    DatosVentasCtdo.CDSVentaDet.Post;
  if DatosVentasCtdo.CDSVtaSubDetalle.State in [dsInsert,dsEdit] Then
    DatosVentasCtdo.CDSVtaSubDetalle.Post;

  if ((DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTE.NewValue <> DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTE.OldValue) or
      (DatosVentasCtdo.CDSVentaCabDEPOSITO.NewValue <> DatosVentasCtdo.CDSVentaCabDEPOSITO.OldValue) or
      (DatosVentasCtdo.CDSVentaCabFECHAVTA.NewValue <> DatosVentasCtdo.CDSVentaCabFECHAVTA.OldValue) or
      (DatosVentasCtdo.CDSVentaCabSUCURSAL.NewValue <> DatosVentasCtdo.CDSVentaCabSUCURSAL.OldValue)) and
      (DatosVentasCtdo.CDSVentaCabANULADO.Value<>'S') Then
       DatosVentasCtdo.ReAsignarDetalle;

  if dbgExitencias.Visible=True Then
    dbgExitencias.Visible:=False;


//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='CONTROLSERIE';
//  DMMain_FD.QOpciones.Open;
//  Control:=DMMain_FD.QOpciones.Fields[0].AsString[1];
//  DMMain_FD.QOpciones.Close;
//  Control :=  DMMain_FD.ControlSerie;

  if (FrameMovValoresIngreso1.SumaValores>0) and (DatosVentasCtdo.CDSVentaCabANULADO.Value<>'S') and (DSBase.State=dsEdit) and
     (DatosVentasCtdo.CDSVentaCabCAE.OldValue=DatosVentasCtdo.CDSVentaCabCAE.NewValue) Then
    begin
       IF (FormatFloat(DatosVentasCtdo.MascaraCabecera,DatosVentasCtdo.CDSVentaCabTotal.AsFloat) <>
           FormatFloat(DatosVentasCtdo.MascaraCabecera,FrameMovValoresIngreso1.SumaValores)) then
         begin
          FrameMovValoresIngreso1.CDSCajaMov.First;
          while Not(FrameMovValoresIngreso1.CDSCajaMov.Eof) do
            begin
              if FrameMovValoresIngreso1.CDSCajaMovID_TPAGO.Value=1 then
                begin
                  FrameMovValoresIngreso1.CDSCajaMov.Delete;
                  FrameMovValoresIngreso1.CDSCajaMov.First;
                end
              else
                FrameMovValoresIngreso1.CDSCajaMov.Next;
            end;
        end;
    end;

  if (FrameMovValoresIngreso1.SumaValores<=0) and (DatosVentasCtdo.CDSVentaCabANULADO.Value<>'S') Then
    begin
       IngresarEfectivo(DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat);
    end;
  //********************************************************************************************
  //** Caculamos la cantidad de Meses de Garantia **********************************************
  //********************************************************************************************
  if (DSBase.State in [dsInsert]) and (DatosVentasCtdo.CDSVentaCabCON_GTIA_EXTENDIDA.Value='S') then
    begin
      DatosVentasCtdo.CDSVentaCabMESES_DE_GARANTIA.Value := DatosVentasCtdo.SumarGtia;
      if Not(Assigned(FormControlGtia)) then
        FormControlGtia:=TFormControlGtia.Create(Self);
      FormControlGtia.Meses  :=DatosVentasCtdo.CDSVentaCabMESES_DE_GARANTIA.Value;
      FormControlGtia.Importe:=DatosVentasCtdo.CDSVentaCabVALOR_ASEGURADO.AsFloat;

      FormControlGtia.ShowModal;
      DatosVentasCtdo.CDSVentaCabMESES_DE_GARANTIA.AsInteger := FormControlGtia.Meses;
      DatosVentasCtdo.CDSVentaCabVALOR_ASEGURADO.AsFloat     := FormControlGtia.Importe;
    end;
  //********************************************************************************************
  //********************************************************************************************
  TRY
    IF DatosVentasCtdo.CDSVentaCabTotal.AsFloat<= 0 THEN
      RAISE
        Exception.Create('El comprobante no pude tener valor 0(cero).....!!!!');
    if (DSBase.State=dsInsert) and Not(ControlSerie) and (DMMain_FD.ControlaSerie) {(Control='S')} then
      RAISE Exception.Create('La cantidad de Items debe ser igual a la cantidad de codigo barras.....!!!!');

   if (CpbteNuevo='S') and (Not(ControlLotes)) Then
      RAISE Exception.Create('Hay Lotes sin Asignar.....!!!!');

  FINALLY
  END;
  TRY
    Dif:=Abs(RoundTo(DatosVentasCtdo.CDSVentaCabTotal.AsFloat-FrameMovValoresIngreso1.SumaValores,-2));
    if ( Dif > 0) and ( Dif < 0.10) then
      begin
        IngresarEfectivo(dif);
        Dif := 0;
      end;

    IF (Not(IsZero(dif))) and (DatosVentasCtdo.CDSVentaCabANULADO.Value<>'S') THEN
      RAISE Exception.Create('Hay diferencias entre lo percibido' + #13 +
                             'Ingresos por:'+FormatFloat(DatosVentasCtdo.MascaraCabecera,FrameMovValoresIngreso1.SumaValores)+#13+
                             'Importe Cpbt:'+FormatFloat(DatosVentasCtdo.MascaraCabecera,DatosVentasCtdo.CDSVentaCabTotal.AsFloat));

  FINALLY
  END;
  WITH DatosVentasCtdo DO
    BEGIN
      DatoNew                    := IntToStr(CDSVentaCabID_FC.Value);
      TipoCpbte                  := CDSVentaCabTIPOCPBTE.Value;
      if CDSVentaDet.State<>dsBrowse then
        CDSVentaDet.Post;
      CDSVentaCabRENGLONES.Value := CDSVentaDet.RecordCount;
      CDSVentaCabDebe.ASFloat    := DatosVentasCtdo.CDSVentaCabTotal.AsFloat;

//      Control de Campos Vacios
//      for i:= 0 to CDSVentaCab.FieldCount - 1 do
//        begin
//          if (CDSVentaCab.Fields[i].AsString='') and (CDSVentaCab.Fields[i].Required)  then
//           ShowMessage( CDSVentaCab.Fields[i].Name+':'+CDSVentaCab.Fields[i].AsString+'.... '+ CDSVentaCab.Fields[i].Value );
//        end;

      CDSVentaCab.Post;
      if CDSVentaCabANULADO.Value<>'S' Then
        InformarCambiosPrecio;   // da aviso por el log de los cambios de precio

      PrefijoDup:= DatosVentasCtdo.CDSVentaCabSUCFAC.Value;
      NumeroDup := DatosVentasCtdo.CDSVentaCabNUMEROFAC.Value;

///   Remito de Produccion... ver por que si no se genera dos veces....
      if (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) and
         (CpbteNuevo='S') and (FormCpbteCtdo_2.GenerarOProducion) and (DMMain_FD.HayProduccion)
        then
          begin
            if (not PedirConfirmacionOP) or (MessageDlg('Hay Articulos de Produccion, y esta configurado su usuario para generar la Orden de Produccion, ' +
                                                        ' ejecuta el procedimiento??',mtConfirmation,mbYesNo,0,mbNo)=mrYes)
              then DatosVentasCtdo.GenerarRtoProduccion;
          end;

      inherited;

      Recuperar.Execute;

      IF (DSBase.DataSet.IsEmpty) and (CpbteNuevo='S') then
        begin
          DMMain_FD.LogFileFD(1,4,'Fc.Vta Contado - Transaccion No FINALIZADA  '+ DSBase.DataSet.FieldByName('RAZONSOCIAL').AsString+' '+
                                   DSBase.DataSet.FieldByName('NROCPBTE').AsString+'('+DSBase.DataSet.FieldByName('ID_FC').AsString+')'+
                                  'Fecha:'+DateToStr(DSBase.DataSet.FieldByName('FECHAVTA').AsDateTime)+
                                  ' Origen: '+ 'Ventas',
                                  'FACVTA');
          ShowMessage('No se Gravo la Operacion....');
        end;
      //else
      //  BorrarDeTemporal.Execute;

      if (Duplicado) and (DatosVentasCtdo.CDSVentaCabNUMEROFAC.Value<>NumeroDup)then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            DMStoreProcedure.spcambiaNroFD.Close;
            DMStoreProcedure.spcambiaNroFD.ParamByName('ID').Value     := DatosVentasCtdo.CDSVentaCabID_FC.AsInteger;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Tipo').Value   := DatosVentasCtdo.CDSVentaCabTIPOCPBTE.ASString;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Prefijo').Value:= DatosVentasCtdo.CDSVentaCabSUCFAC.AsString;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Numero').Value := NumeroDup;// DatosVentasCtdo.CDSVentaCabNUMEROFAC.AsString;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Compra_venta').Value :='V';
            DMStoreProcedure.spcambiaNroFD.ParamByName('Fecha').Value  := DatosVentasCtdo.CDSVentaCabFECHAVTA.AsDateTime;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Fecha2').Value := DatosVentasCtdo.CDSVentaCabFECHAVTA.ASDateTime;
            DMStoreProcedure.spcambiaNroFD.ExecProc;

            DMMain_FD.LogFileFD(0,2,'Cambio Fecha/Nro Fc.Vta: Original:'+DatosVentasCtdo.CDSVentaCabLETRAFAC.AsString+'-'+DatosVentasCtdo.CDSVentaCabSUCFAC.AsString+'-'+DatosVentasCtdo.CDSVentaCabNUMEROFAC.AsString+
                                    '..Fecha Fiscal:'+dateToStr(DatosVentasCtdo.CDSVentaCabFECHAVTA.AsDateTime)+
                                    ' Nuevo   :'+DatosVentasCtdo.CDSVentaCabLETRAFAC.AsString+'-'+DatosVentasCtdo.CDSVentaCabSUCFAC.AsString+'-'+NumeroDup,
                                    'CAMBIONRO');

            DMMain_FD.fdcGestion.Commit;
            DMStoreProcedure.spcambiaNroFD.Close;
          except
            DMMain_FD.fdcGestion.Rollback;
            DMStoreProcedure.spcambiaNroFD.Close;
          end;
          Recuperar.Execute;
        end;

      if (DSBase.State=dsBrowse) and (Not(dsBase.DataSet.IsEmpty)) and (CpbteNuevo='S') then
        DMMain_FD.Facturado := True;

//      if (DSBase.State=dsBrowse) and (Not(dsBase.DataSet.IsEmpty)) and (CpbteNuevo='S') and (FormCpbteCtdo_2.GenerarOProducion) and (DMMain_FD.HayProduccion) then
//        begin
//          if PedirConfirmacionOP then
//            begin
//              if MessageDlg('Hay Articulos de Produccion, y esta configurado su usuario para generar la Orden de Produccion, ejecuta el procedimiento??',mtConfirmation,mbYesNo,0,mbNo)=mrYes then
//                GenerarRtoProduccion;
//            end
//          else
//            GenerarRtoProduccion;
//         end;

   // para tranferir las vtas..
   // TransferirXML.Execute;

      if (DSBase.State=dsBrowse) and (Not(dsBase.DataSet.IsEmpty)) and (CpbteNuevo='S') and (DuplicarFc=False) then
          begin
            DMMain_FD.LogFileFD(1,3,'Ingreso Comprobante Contado:'+'('+DSBase.Dataset.fieldByName('ID_FC').AsString+') Nro-' +
                                     DSBase.DataSet.FieldByName('LETRAFAC').AsString+'-'+DSBase.DataSet.FieldByName('SUCFAC').AsString+'-'+
                                     DSBase.DataSet.FieldByName('NUMEROFAC').AsString+
                                    ' Fecha :'+dateToStr(DSBase.DataSet.FieldByName('FECHAVTA').AsDateTime)+
                                    ' En IVA :'+(DSBase.DataSet.FieldByName('INGRESA_LIBRO_IVA').AsString)+
                                    ' Valor :'+FormatFloat(',0.00',DSBase.DataSet.FieldByName('TOTAL').ASFloat),
                                    'FCVTA');
           end;

      if DuplicarFc=True Then
        begin

           DatosVentasCtdo.QNroBorrado.Close;
           DatosVentasCtdo.QNroBorrado.ParamByName('id').Value:=id_Old;
           DatosVentasCtdo.QNroBorrado.Open;

           DMMain_FD.LogFileFD(1,2,'Clonado. Fc.Venta Ctdo.: '+
                               ' Nro.Fc Clonada: '+DatosVentasCtdo.QNroBorradoNROCPBTE.AsString+
                               ' Cliente : '+DatosVentasCtdo.QNroBorradoRAZONSOCIAL.AsString+
                               ' Importe: '+FormatFloat('0.00',DatosVentasCtdo.QNroBorradoTOTAL.AsFloat)+
                               ' Nuevo.Cpbte '+DatosVentasCtdo.CDSVentaCabNROCPBTE.Value+
                               ' Importe: '+ FormatFloat('0.00',DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat),
                               'FACVTA');

          if MessageDlg('Borra el comprobante anterior que fue duplicado?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
            begin
              DMMain_FD.fdcGestion.StartTransaction;
              try
                DatosVentasCtdo.QBorraFc.Close;
                DatosVentasCtdo.QBorraFc.ParamByName('id').Value:=id_Old;
                DatosVentasCtdo.QBorraFc.ExecSQL;
                DatosVentasCtdo.QBorraFc.Close;

                // **** Ingreso en el Log File  **************

                Detalle:= 'Borrado por ser Clonado Fac.Venta Ctdo.: '+
                          ' Fc Clonada: '+DatosVentasCtdo.QNroBorradoNROCPBTE.AsString+
                          ' Cliente : '+DatosVentasCtdo.QNroBorradoRAZONSOCIAL.AsString+
                          ' // Nuevo Nro.:'+
                          DatosVentasCtdo.CDSVentaCabNROCPBTE.Value+
                          ' Cliente: '+
                          DatosVentasCtdo.CDSVentaCabRAZONSOCIAL.Value+
                          ' Importe: '+
                          FormatFloat('0.00',DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat);

                DMMain_FD.LogFileFD(0,6,Detalle,'FACVTA');

                DatosVentasCtdo.QNroBorrado.Close;
              // ******************************************
                DMMain_FD.fdcGestion.Commit;
              Except
                DatosVentasCtdo.QNroBorrado.Close;
                DMMain_FD.fdcGestion.Rollback;
                ShowMessage('NO se pudo Borrar....!');
              end;
            end;
           DuplicarFc:=False;
        end;
         // **** Ingreso en el Log File  **************
      if (Assigned(DatosVentasCtdo)) and (CpbteNuevo='N') and  (DatosVentasCtdo.CDSVentaCabANULADO.AsString<>'S') and
          (Not(SameValue(DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat,DatosVentasCtdo.CDSVentaCabTOTAL.OldValue))) then // por que viene de una modificacion
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try

            Detalle:= 'Modificación Fac.Contado: '+
                       DatosVentasCtdo.CDSVentaCabNROCPBTE.Value+
                       ' Cliente: '+
                        DatosVentasCtdo.CDSVentaCabRAZONSOCIAL.Value+
                       ' Importe Nuevo: '+
                        FormatFloat('0.00',DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat)+
                       ' Importe Anterior :'+
                        FormatFloat('0.00',ImporteOriginal);

            DMMain_FD.LogFileFD(0,2,Detalle,'FACVTA');

           // ******************************************
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('NO se ingreso registro en el LogFile....!');
          end;
        end;
       // ******************************************
      { DONE -cConfirmar Grabaciones : Confirma las operaciones de Valores }
      if DatosVentasCtdo.CDSVentaCabFACTURA_ELECTRONICA.AsString='S' then
        Imprime:='N';

      if (TForm(Self.Owner).Name='FormImportacionPreventas') or
         (TForm(Self.Owner).Name='FormRecepRepartoExpress') Then
        Imprime:='N';

      if (TForm(Self.Owner).Name<>'FormCajaResumen') and
         (TForm(Self.Owner).Name<>'FormCpbte_2') and
        // (TForm(Self.Owner).Name<>'FormFiscalizacionLote') and   *** no se por ahora no o borro 5/5/2021
         (TForm(Self.Owner).Name<>'FormControlImpuestos')  then
        begin
          IF (CpbteNuevo = 'S') Then
            if(CDSVentaCabCPTE_MANUAL.Value = 'N') Then
              if (Imprime='S') THEN
                Imprimir.Execute;
          pnAvisoFUAP.Visible := False;
          Modificar.Enabled   := False;
          pcDetalleFactura.ActivePageIndex := 0;
          if ((FormCpbteCtdo_2.Visible=True) and (btNuevo.Enabled=True)) then
            btNuevo.SetFocus;
        end
      else
        Salir.Execute;
    END;
  if (TForm(Self.Owner).Name='FormConsolidacionAcopioRemitos') and (Not(DSBase.DataSet.IsEmpty)) then
    Acopiar.Execute;
  // ***********************************************************
  // ************* Factura Electronica *************************
  // ***********************************************************
  if (DatosVentasCtdo<>nil) and (CpbteNuevo='S') and
     (DatosVentasCtdo.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and
     (TForm(Self.Owner).Name<>'FormCajaResumen') then
    Fiscalizar.Execute;
  if (Assigned(FormCpbteCtdo_2)) and  ((FormCpbteCtdo_2.Visible=True) and (btNuevo.Enabled=True)) then
    btNuevo.SetFocus;

   ArchivoIni                             := TIniFile.Create(DMMain_FD.MainPath + DMMain_FD.UsuarioActivo+'consignacion.ini');
   ArchivoIni.WriteInteger('Deposito', 'Deposito', DatosVentasCtdo.CDSVentaCabDEPOSITO.Value);
   ArchivoIni.WriteBool('Deposito', 'UsarUltimo', UsarUltimoDeposito.Checked);
   ArchivoIni.Free;
end;

procedure TFormCpbteCtdo_2.MarcarComoImpresaalDuplicar1Click(Sender: TObject);
begin
  inherited;
  MarcarComoImpresaalDuplicar1.Checked:=Not(MarcarComoImpresaalDuplicar1.Checked);
end;

procedure TFormCpbteCtdo_2.ModificarDatosCabeceraExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State=dsBrowse) and Not(DSBase.DataSet.IsEmpty) then
    if ( ((DSBase.DataSet.FieldByName('FACTURA_ELECTRONICA').Value='S') and (DSBase.DataSet.FieldByName('CAE').Value<=0)) or
         (DSBase.DataSet.FieldByName('FACTURA_ELECTRONICA').Value<>'S') ) then
      begin
        DMMain_FD.ModificarDatosCliente(DSBase);
        Confirma.Execute;
      end;
end;

procedure TFormCpbteCtdo_2.ModificarExecute(Sender: TObject);
var ControlFondos:Boolean;
begin
  ControlFondos:=True;
  if (DMMain_FD.UsuarioActivo='master') and (OmitirControlFondosMaster1.Checked) then
    if MessageDlg('Omitir el Control de Valores...?',mtConfirmation,mbYesNo,0,mbNo)=mrYes Then
      ControlFondos:=False;

  if (DatosVentasCtdo.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentasCtdo.CDSVentaCabCAE.AsString)>0) then
    Raise Exception.Create (' Facturas Electrónica con CAE, no se puede Modicficar....');

  if (DatosVentasCtdo.CDSVentaCabIMPRESO.Value='N') Then
    begin
      // Verifico si estan los valores disponibles
       if DMMain_FD.ModificaFactura then
         begin
           DMStoreProcedure.QControlFondos.Close;
           DMStoreProcedure.QControlFondos.ParamByName('id').Value  :=DatosVentasCtdo.CDSVentaCabID_FC.Value;
           DMStoreProcedure.QControlFondos.ParamByName('Tipo').Value:='FO';
           DMStoreProcedure.QControlFondos.Open;
           if (DMStoreProcedure.QControlFondos.Fields[0].Value='N') and (ControlFondos=True) then
             RAISE Exception.Create('Los cheques y/o tarjetas de Creditos han sido Usados para otras operaciones, no se pude hacer la operación....');
           DMStoreProcedure.QControlFondos.Open;
           if (DMMain_FD.HayAcopios(DSBase.DataSet.FieldByName('id_fc').Value)) Then
             RAISE Exception.Create('Hay Acopios asociado al comprobante... no se puede hacer la operación....');
           inherited;
           CpbteNuevo := 'N';
           ImporteOriginal:=DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat;
           IF NOT (DatosVentasCtdo.CDSVentaCab.IsEmpty) THEN
             begin
               DatosVentasCtdo.CDSVentaCab.Edit;
               pcDetalleFactura.OnChange(self);
             end
           ELSE
             ShowMessage('No hay registro activo');
         end
       else
         ShowMessage('No se puede modificar No Esta Autorizado....');
     end
   else
     ShowMessage('No se puede modificar un compranbente ya impreso....');
end;

procedure TFormCpbteCtdo_2.MostrarDlgClick(Sender: TObject);
begin
  inherited;
  MostrarDlg.Checked:=Not(MostrarDlg.Checked);
end;

procedure TFormCpbteCtdo_2.NextExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursal  ='+DSBase.DataSet.FieldByName('SUCURSAL').AsString +
             ' and letraFac = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRAFAC').AsString,'''');
  inherited;

end;

procedure TFormCpbteCtdo_2.NoLiquidarExecute(Sender: TObject);
begin
  inherited;
  if (DatosVentasCtdo.CDSVentaCabID_FC.AsString<>'') and(DatosVentasCtdo.CDSVentaCabLIQUIDADA.Value<>'S') then
    begin
       DMStoreProcedure.spMarcarComisionaFC.Close;
       DMStoreProcedure.spMarcarComisionaFC.Params.ParamByName('id').Value:=DatosVentasCtdo.CDSVentaCabID_FC.Value;
       DMStoreProcedure.spMarcarComisionaFC.ExecProc;
       DMStoreProcedure.spMarcarComisionaFC.Close;
    end;
end;

procedure TFormCpbteCtdo_2.OmitirControlFondosMaster1Click(Sender: TObject);
begin
  inherited;
  OmitirControlFondosMaster1.Checked:=Not(OmitirControlFondosMaster1.Checked);
end;

procedure TFormCpbteCtdo_2.EnviarTemporalExecute(Sender: TObject);
begin
  inherited;
  if not DirectoryExists(DMMain_FD.MainPath+'Archivos Temporales') then
    CreateDir(DMMain_FD.MainPath+'Archivos Temporales');
  if Not(DatosVentasCtdo.CDSVentaCab.IsEmpty)  Then
    begin
      DatosVentasCtdo.CDSVentaCab.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaCab.XML');
      DatosVentasCtdo.CDSVentaDet.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaDet.XML');
      DatosVentasCtdo.CDSImpuestos.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaImp.XML');

      FrameMovValoresIngreso1.CDSCajaMov.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\CajaMov.XML');
      FrameMovValoresIngreso1.CDSChe3.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\Che3.XML');
      FrameMovValoresIngreso1.CDSMovEfectivo.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\MovEfectivo.XML');
      FrameMovValoresIngreso1.CDSMovTCredito.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\MovTCredito.XML');
      FrameMovValoresIngreso1.CDSTransBco.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\TranBco.XML');
    end;
end;

procedure TFormCpbteCtdo_2.Pasar_A_PapeleraExecute(Sender: TObject);
begin
  inherited;
 if not DirectoryExists(DMMain_FD.MainPath+'Papelera_FO') then
    CreateDir(DMMain_FD.MainPath+'Papelera_FO');
  if Not(DatosVentasCtdo.CDSVentaCab.IsEmpty)  Then
    begin
      DatosVentasCtdo.CDSVentaCab.SaveToFile(DMMain_FD.MainPath+'Papelera_FO\('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')FcVtaCab.XML');
      DatosVentasCtdo.CDSVentaDet.SaveToFile(DMMain_FD.MainPath+'Papelera_FO\('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')FcVtaDet.bin');
      DatosVentasCtdo.CDSImpuestos.SaveToFile(DMMain_FD.MainPath+'Papelera_FO\('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')FcVtaImp.bin');
      DatosVentasCtdo.CDSVtaSubDetalle.SaveToFile(DMMain_FD.MainPath+'Papelera_FO\('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')FCVtaSubDetalle.bin');
      DatosVentasCtdo.CDSVtaDetConsig.SaveToFile(DMMain_FD.MainPath+'Papelera_FO\('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')FcVtaDetConsig.bin');
      DatosVentasCtdo.CDSMov_Carnes.SaveToFile(DMMain_FD.MainPath+'Papelera_FO\('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')FCPMov_Carnes.bin');
      DatosVentasCtdo.CDSFc_Prod_Det.SaveToFile(DMMain_FD.MainPath+'Papelera_FO\('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')FC_Prod_Det.bin');
      DatosVentasCtdo.CDSFc_Prod_Mov.SaveToFile(DMMain_FD.MainPath+'Papelera_FO\('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')Fc_Prod_Mov.bin');
      DatosVentasCtdo.CDSVentaLote.SaveToFile(DMMain_FD.MainPath+'Papelera_FO\('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')FCVentaLote.bin');

      FrameMovValoresIngreso1.CDSCajaMov.SaveToFile(DMMain_FD.MainPath+'Papelera_FO\('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')CajaMov.bin');
      FrameMovValoresIngreso1.CDSChe3.SaveToFile(DMMain_FD.MainPath+'Papelera_FO\('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')Che3.bin');
      FrameMovValoresIngreso1.CDSMovEfectivo.SaveToFile(DMMain_FD.MainPath+'Papelera_FO\('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')Efectivo.bin');
      FrameMovValoresIngreso1.CDSMovTCredito.SaveToFile(DMMain_FD.MainPath+'Papelera_FO\('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')TCredito.bin');
      FrameMovValoresIngreso1.CDSTransBco.SaveToFile(DMMain_FD.MainPath+'Papelera_FO\('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')TXBanco.bin');
      FrameMovValoresIngreso1.CDSAjustes.SaveToFile(DMMain_FD.MainPath+'Papelera_FO\('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')Ajuste.bin');
    end;
end;

procedure TFormCpbteCtdo_2.CancelarExecute(Sender: TObject);
begin
  pnPrecios.Visible:=False;
  dskAviso.Close(True);

  if MessageDlg('Cancelar los cambios..?',mtConfirmation,mbYesNo,0)=mrNo then
    Exit;
  DMMain_FD.LogFileFD(0,3,'Cancelacion de Fc.Ctdo Con Numero Provisorio:'+DatosVentasCtdo.CDSVentaCabLETRAFAC.AsString+'-'+DatosVentasCtdo.CDSVentaCabSUCFAC.AsString+'-'+DatosVentasCtdo.CDSVentaCabNUMEROFAC.AsString+
                          '('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')'+ '..Fecha :'+dateToStr(DatosVentasCtdo.CDSVentaCabFECHAVTA.AsDateTime)+
                          ' Importe de :'+FormatFloat(',0.00',DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat),
                          'FCVTACTDO');




  if Anulado<>nil Then FreeAndNil(Anulado);
  if dbgExitencias.Visible=True Then
    dbgExitencias.Visible:=False;
  gbPrecioTabla.Visible:=False;
  FrameMovValoresIngreso1.QTc.Cancel;
  FrameMovValoresIngreso1.CDSMovTCredito.Cancel;
  FrameMovValoresIngreso1.CDSMovEfectivo.Cancel;
  FrameMovValoresIngreso1.CDSChe3.Cancel;
  FrameMovValoresIngreso1.CDSCajaMov.Cancel;

  if DatosVentasCtdo.cdsventaDet.State in [dsInsert,dsEdit] Then
     DatosVentasCtdo.CDSVentaDet.Cancel;
  if DatosVentasCtdo.cdsImpuestos.State in [dsInsert,dsEdit] Then
    DatosVentasCtdo.CDSImpuestos.Cancel;
   if DatosVentasCtdo.CDSVtaSubDetalle.State in [dsInsert,dsEdit] Then
    DatosVentasCtdo.CDSVtaSubDetalle.Cancel;



  DatosVentasCtdo.CDSVentaDet.Close;
  DatosVentasCtdo.CDSVentaDet.Params.ParamByName('id').Clear;
  DatosVentasCtdo.CDSVentaDet.Open;

  DatosVentasCtdo.CDSImpuestos.Close;
  DatosVentasCtdo.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosVentasCtdo.CDSImpuestos.Open;

  DatosVentasCtdo.CDSVtaSubDetalle.Close;
  DatosVentasCtdo.CDSVtaSubDetalle.Params.ParamByName('id').Clear;
  DatosVentasCtdo.CDSVtaSubDetalle.Open;

  DatosVentasCtdo.CDSVentaCab.close;
  DatosVentasCtdo.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
  DatosVentasCtdo.CDSVentaCab.Params.ParamByName('id').Clear;
  DatosVentasCtdo.CDSVentaCab.Open;

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  FrameMovValoresIngreso1.CDSMovTCredito.Close;
  FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovTCredito.Open;


  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSTransBco.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';
  FrameMovValoresIngreso1.Id_Caja           :=0;
  inherited;
  if TForm(Self.Owner).Name='FormCajaResumen' then
    Salir.Execute;

  pnAvisoFUAP.Visible:=False;
  pcDetalleFactura.ActivePageIndex := 0;
  if CodigosSeries<>nil then
    CodigosSeries.Clear;
  IF btNuevo.Enabled THEN
    btNuevo.SetFocus;
end;

procedure TFormCpbteCtdo_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.Tag := 0;
  FormBuscaCpbte.TipoCpbte1 := 'FO';
  FormBuscaCpbte.TipoCpbte2 := '';
  FormBuscaCpbte.TipoCpbte3 := '';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    end;
end;

procedure TFormCpbteCtdo_2.DSBaseStateChange(Sender: TObject);
var sDirectorio:String;
begin
  inherited;
 // pnPrincipal.Enabled:=True;

  sDirectorio      := DMMain_FD.MainPath+'Papelera_FO';
  if IsDirEmpty(sDirectorio) then
    Papelera.ImageIndex:=12
  else
    Papelera.ImageIndex:=11;

  Anular.Enabled            := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  Imprimir.Enabled          := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  HacerNC.Enabled           := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  pnCabecera.Enabled        := DSBase.DataSet.State IN [dsInsert];
  dbeObservaciones1.Enabled := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeObservaciones2.Enabled := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeDscto.Enabled          := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeDscto.Enabled          := DMMain_FD.AplicaDescuento;
  BuscarPresupuesto.Enabled := DSBase.DataSet.State IN [dsInsert];
  Buscar.Enabled            := DSBase.DataSet.State IN [dsBrowse];
  EnviarCorreo.Enabled      := Imprimir.Enabled;
  HacerNC.Enabled           :=(DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));  
  HacerNC.Enabled           :=(DSBase.DataSet.FieldByName('MUESTRAID_NC').Value<=0);

 // pnPrincipal.Enabled       := True;
  FrameMovValoresIngreso1.dbgMovimientos.ReadOnly := DSBase.State IN [dsBrowse];
  if DMMain_FD.ModificaCaja Then
    FrameMovValoresIngreso1.ceCaja.Enabled        := DSBase.State IN [dsInsert];
  FrameMovValoresIngreso1.tsEfectivo.Enabled      := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresIngreso1.tsChe3.Enabled          := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresIngreso1.tsTCredito.Enabled      := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresIngreso1.tsTransf.Enabled        := DSBase.State IN [dsInsert,dsEdit];
 // FrameMovValoresIngreso1.ceCaja.Enabled          := DSBase.State IN [dsInsert];
  DBGrillaDetalle.ReadOnly    := DSBase.DataSet.State IN [dsBrowse];
  dbgSeries.ReadOnly          := DSBase.DataSet.State IN [dsBrowse];

  dbcJuri.Visible             := DMMain_FD.FacturaPorJuridiccion;

  dbcLista.Enabled            := DSBase.DataSet.State IN [dsInsert, dsEdit];

  dbcJuri.Enabled             := DSBase.DataSet.State IN [dsInsert, dsEdit];

  if (DSBase.DataSet.State IN [dsBrowse]) and (dbgExitencias.Visible=True) Then
    dbgExitencias.Visible:= False;
  rxcVendedor.Enabled := DMMain_FD.ModificaVendedor;
  RxCSucursal.Enabled := DMMain_FD.ModificaSucursal;
  if (DSBase.State in [dsBrowse]) and (Not(DSbase.DataSet.IsEmpty)) Then
    begin
      pnPrincipal.Enabled       := True;

      DMStoreProcedure.QVerificaPeriodoFiscal.Close;
      DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:='V';
      DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value:=DatosVentasCtdo.CDSVentaCabFECHA_FISCAL.AsDateTime;
      DMStoreProcedure.QVerificaPeriodoFiscal.Open;

      Anular.Enabled   := Not(DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].AsString = 'C');
      Borrar.Enabled   := Not(DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].AsString = 'C');
      if Modificar.Enabled then
        Modificar.Enabled:= Not(DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].AsString = 'C');
      DMStoreProcedure.QVerificaPeriodoFiscal.Close;
    end;
  spMenu.Enabled     := (DMMain_FD.UsuarioAdministrador) and (Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);

  Acopiar.Enabled    := (Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);

  RxCDeposito.Enabled           := DMMain_FD.ModificaDeposito;

  if (DSBase.DataSet.State IN [dsBrowse]) and
     (Assigned(FormCpbteCtdo_2)) and  ((FormCpbteCtdo_2.Visible=True) and
     (btNuevo.Enabled=True)) then
    btNuevo.SetFocus;

  VerNovedadesDet.Enabled     := (Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);
  Papelera.Enabled            := (DMMain_FD.UsuarioActivo='master') and (DSBase.State=dsBrowse);
  BuscarPorReferencia.Enabled := DSBase.DataSet.State=dsBrowse;
  BuscarPorObs.Enabled        := DSBase.DataSet.State=dsBrowse;
  CambiarClase.Enabled        := (DSBase.DataSet.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty));
  GenerarRemito.Enabled       := Imprimir.Enabled;
  AsignarObra.Enabled         := (DSBase.DataSet.FieldByName('ANULADO').Value='N') and Not(DSBase.DataSet.IsEmpty);
  GenerarNotaPedido.Enabled   := (Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);
  if Not(VarIsNull(DSBase.DataSet.FieldByName('ID_FC').Value)) and (DSBase.DataSet.FieldByName('TIPOCPBTE').AsString<>'') then
    GenerarNotaPedido.Enabled   := DMMain_FD.HayNotaPedido(DSBase.DataSet.FieldByName('ID_FC').Value, DSBase.DataSet.FieldByName('TIPOCPBTE').Value);

  Cancelar.Enabled := (Not(DSBase.DataSet.IsEmpty)) and (DSBase.DataSet.State IN [dsInsert, dsEdit]);
end;

procedure TFormCpbteCtdo_2.DuplicarComprobanteExecute(Sender: TObject);
var i:byte;
Nombre:String;
P_Gravado,P_Exento,P_ConIVA,Importe_Iva,P_Total:Extended;
begin
  inherited;
  if Not(DMMain_FD.UsuarioAdministrador) then
    Raise Exception.Create('Opcion solo para Administrador...');

    if DMMain_FD.BuscaOP_PorFc(DatosVentasCtdo.CDSVentaCabID_FC.AsInteger) then
      Raise Exception.Create('Hay una orden de Produccion asociada-...');

  if (DSBase.DataSet.State = dsBrowse) and (not(DSBase.DataSet.IsEmpty)) then
    begin
      DatosVentasCtdo.CDSVentaCab.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaCab.XML');
      DatosVentasCtdo.CDSVentaDet.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaDet.XML');

      DatosVentasCtdo.CDSFcVtaCabXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\fcvtacab.xml');
      DatosVentasCtdo.CDSDetalleXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\fcvtadet.xml');

      Agregar.Execute;

      DuplicarFc:=True;
      Duplicado :=True;
      For i:=0 to DatosVentasCtdo.CDSFcVtaCabXML.FieldCount-1 do
        begin
          if DatosVentasCtdo.CDSVentaCab.FindField(DatosVentasCtdo.CDSFcVtaCabXML.Fields[i].FieldName)<>nil Then
            begin
              Nombre:=DatosVentasCtdo.CDSFcVtaCabXML.Fields[i].FieldName;
              if (Nombre<>'ID_FC') Then
                DatosVentasCtdo.CDSVentaCab.FieldByName(Nombre).Value:=DatosVentasCtdo.CDSFcVtaCabXML.FieldByName(Nombre).Value;
            end;
        end;
      DatosVentasCtdo.CDSVentaCabIMPRESO.Value     :='N';

      DatosVentasCtdo.CDSVentaCabCAE.Value         :='0';
      DatosVentasCtdo.CDSVentaCabCAE_VENCIMIENTO.Clear;


      if Not(Assigned(FormControlNroRto)) then
        FormControlNroRto:=TFormControlNroRto.Create(Self);
      FormControlNroRto.Let:= DatosVentasCtdo.CDSVentaCabLETRAFAC.Value;
      FormControlNroRto.Suc:= DatosVentasCtdo.CDSVentaCabSUCFAC.Value;
      FormControlNroRto.Num:= DatosVentasCtdo.CDSVentaCabNUMEROFAC.Value;

      FormControlNroRto.ShowMOdal;

      if (FormControlNroRto.ModalResult=mrOk) then
        begin
          if (FormControlNroRto.Let<> DatosVentasCtdo.CDSVentaCabLETRAFAC.AsString) or
             (FormControlNroRto.Suc<> DatosVentasCtdo.CDSVentaCabSUCFAC.AsString) or
             (FormControlNroRto.Num<> DatosVentasCtdo.CDSVentaCabNUMEROFAC.AsString) Then
          begin
            DatosVentasCtdo.CDSVentaCabLETRAFAC.AsString  := FormControlNroRto.Let;
            DatosVentasCtdo.CDSVentaCabSUCFAC.AsString    := FormControlNroRto.Suc;
            DatosVentasCtdo.CDSVentaCabNUMEROFACSetText(DatosVentasCtdo.CDSVentaCabNUMEROFAC,FormControlNroRto.Num);
            PrefijoDup := DatosVentasCtdo.CDSVentaCabSUCFAC.Value;
            NumeroDup  := DatosVentasCtdo.CDSVentaCabNUMEROFAC.Value;
          end;
        end;

      while not(DatosVentasCtdo.CDSDetalleXML.Eof) do
        begin
          DatosVentasCtdo.CDSVentaDet.Append;
          For i:=0 to DatosVentasCtdo.CDSDetalleXML.FieldCount-1 do
            begin
              if DatosVentasCtdo.CDSVentaDet.FindField(DatosVentasCtdo.CDSDetalleXML.Fields[i].FieldName)<>nil Then
                begin
                  Nombre:=DatosVentasCtdo.CDSDetalleXML.Fields[i].FieldName;
                  if Nombre<>'ID' Then
                    DatosVentasCtdo.CDSVentaDet.FieldByName(Nombre).Value:=DatosVentasCtdo.CDSDetalleXML.FieldByName(Nombre).Value;
                end;
            end;

          if Trunc(DatosVentasCtdo.CDSVentaDetIVA_UNITARIO.AsFloat*100)=0 then
            begin
              P_Gravado   := DatosVentasCtdo.CDSVentaDetUNITARIO_GRAVADO.AsFloat ;
              P_Exento    := DatosVentasCtdo.CDSVentaDetUNITARIO_EXENTO.AsFloat ;
              Importe_Iva := RoundTo(P_Gravado * DatosVentasCtdo.CDSVentaDetIVA_TASA.AsFloat * 0.01,DMMain_FD.DecRedondeo);
              P_Total     := P_Gravado + P_Exento;
              P_ConIVA    := P_Total + Importe_Iva;
            end
          else
            begin
              P_Gravado   := DatosVentasCtdo.CDSVentaDetUNITARIO_GRAVADO.AsFloat ;
              P_Exento    := DatosVentasCtdo.CDSVentaDetUNITARIO_EXENTO.AsFloat ;
              Importe_Iva := DatosVentasCtdo.CDSVentaDetIVA_UNITARIO.AsFloat ;
              P_Total     := P_Gravado + P_Exento;
              P_ConIVA    := P_Total + Importe_Iva;
            end;

          if (DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.Value='S') and (FormCpbteCtdo_2.DiscriminaIva='S') then
            DatosVentasCtdo.CDSVentaDetUNITARIO_TOTALSetText(DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL,FloatToStr(P_Total))
          else
            DatosVentasCtdo.CDSVentaDetUNITARIO_TOTALSetText(DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL,FloatToStr(P_ConIVA));

          DatosVentasCtdo.CDSVentaDetId_CabFac.Value:=DatosVentasCtdo.CDSVentaCabID_FC.Value;
          DatosVentasCtdo.CDSVentaDet.Post;
          DatosVentasCtdo.CDSDetalleXML.Next;
        end;
      if MarcarComoImpresaalDuplicar1.Checked then
        DatosVentasCtdo.CDSVentaCabIMPRESO.Value     :='S';
    end
end;

procedure TFormCpbteCtdo_2.FormShow(Sender: TObject);
var sDirectorio:string;
begin
  inherited;
  sDirectorio      := DMMain_FD.MainPath + 'Papelera_FO';
  if IsDirEmpty(sDirectorio) then
    Papelera.ImageIndex:=12
  else
    Papelera.ImageIndex:=11;


  gbPrecioTabla.Visible:=False;
  if (btNuevo.Enabled=True) and (btNuevo.Visible=True) then
    btNuevo.SetFocus;

  if (TForm(Self.Owner).Name<>'FormFacturaRemitoAgrupado') and
     (TForm(Self.Owner).Name<>'FormImportacionFacturasVtaGral') and
     (TForm(Self.Owner).Name<>'FormConsolidacionAcopioRemitos') and
     (TForm(Self.Owner).Name<>'FormImportacionPreventas') and
     (TForm(Self.Owner).Name<>'FormRecibo_2') and
     (ScannerSerie='S') and (Balanza=nil) then
    ConectarBalanza.Execute;
end;

procedure TFormCpbteCtdo_2.BorrarCAEExecute(Sender: TObject);
begin
  inherited;
  if (DatosVentasCtdo.CDSVentaCabFACTURA_ELECTRONICA.Value='N') and (StrToFloat(DatosVentasCtdo.CDSVentaCabCAE.AsString)<=0) then
    Raise Exception.Create (' No es Factura Electrónica ....');

  IF (NOT (DatosVentasCtdo.CDSVentaCab.IsEmpty)) and (DMMain_FD.UsuarioAdministrador) THEN
    BEGIN
      DMMain_FD.fdcGestion.StartTransaction;
      try
        // Borrado de Cae LOG
        DMMain_FD.LogFileFD(0,2,'Borrado de CAE Fc.Ctdo.Nro: '+
                              DatosVentasCtdo.CDSVentaCabNROCPBTE.Value+
                             ' Cliente: '+
                              DatosVentasCtdo.CDSVentaCabRAZONSOCIAL.Value+
                             ' Importe Fc: '+
                              FormatFloat('0.00',DatosVentasCtdo.CDSVentaCabTOTAL.asfloat)+
                             ' Nro.CAE.:'+DatosVentasCtdo.CDSVentaCabCAE.Value,
                             ' FACVTA');
        // ******************************************
        DMStoreProcedure.QBorrarCAEFD.Close;
        DMStoreProcedure.QBorrarCAEFD.ParamByName('id').Value :=DatosVentasCtdo.CDSVentaCabID_FC.Value;
        DMStoreProcedure.QBorrarCAEFD.ExecSQL;
        DMMain_FD.fdcGestion.Commit;
        DMStoreProcedure.QBorrarCAEFD.Close;
      except
         DMMain_FD.fdcGestion.Rollback;
         DMStoreProcedure.QBorrarCAEFD.Close;
      end;
      Recuperar.Execute;
    END;

end;

procedure TFormCpbteCtdo_2.BorrarDeTemporalExecute(Sender: TObject);
var Cadena:String;
PathBk, cab, Det, sub:string;
begin
  inherited;
  if Not(DSBase.DataSet.IsEmpty)  Then
    begin
      PathBk :=(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
      DeleteFile(PathBk+'\FcVtaCab.XML');
      DeleteFile(PathBk+'\FcVtaDet.XML');
      DeleteFile(PathBk+'\FcVtaImp.XML');

      DeleteFile(PathBk+'\CajaMov.XML');
      DeleteFile(PathBk+'\Che3.XML');
      DeleteFile(PathBk+'\MovEfectivo.XML');
      DeleteFile(PathBk+'\MovTCredito.XML');
      DeleteFile(PathBk+'\TranBco.XML');
    end;


end;

procedure TFormCpbteCtdo_2.BorrarExecute(Sender: TObject);
var Cadena:String;
Detalle:string;
begin
  // Verifico si estan los valores disponibles
  DMStoreProcedure.QControlFondos.Close;
  DMStoreProcedure.QControlFondos.ParamByName('id').Value  :=DatosVentasCtdo.CDSVentaCabID_FC.Value;
  DMStoreProcedure.QControlFondos.ParamByName('Tipo').Value:='FO';
  DMStoreProcedure.QControlFondos.Open;
  if DMStoreProcedure.QControlFondos.Fields[0].Value='N' then
    RAISE Exception.Create('Los cheques y/o tarjetas de Creditos han sido Usados para otras operaciones, no se pude hacer la operación....');
  DMStoreProcedure.QControlFondos.Open;

  if (Not(DMMain_FD.UsuarioAdministrador)) Then
    Raise Exception.Create (' No esta Autorizado para esta Operación....');

  if (DatosVentasCtdo.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentasCtdo.CDSVentaCabCAE.AsString)>0) then
    Raise Exception.Create (' Facturas Electrónica con CAE, no se puede borrar....');

  if DMMain_FD.CajaCerrada(FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value) { DatosVentasCtdo.QCajaESTADO.Value=1} Then
    RAISE Exception.Create('La caja esta cerrada, no se pude hacer la operación....');

  if (DMMain_FD.HayAcopios(DSBase.DataSet.FieldByName('id_fc').Value)) Then
    RAISE Exception.Create('Hay Acopios asociado al comprobante... no se puede hacer la operación....');

  if (DMMain_FD.UsuarioAdministrador) Then
    begin
      if MessageDlg('Está por hacer una opreación de borrado.. Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes Then
        if Not(DatosVentasCtdo.CDSVentaCab.IsEmpty) Then
          begin
            DMMain_FD.fdcGestion.StartTransaction;
            try
              // **** Ingreso en el Log File  **************

              Detalle:='Borrado Fac.Venta Ctdo.(FormFcVtaCtdo): '+
                         DatosVentasCtdo.CDSVentaCabNROCPBTE.Value+'('+DatosVentasCtdo.CDSVentaCabID_FC.ASString+')'+
                         ' Cliente: '+
                         DatosVentasCtdo.CDSVentaCabRAZONSOCIAL.Value+
                         ' Importe: '+
                         FormatFloat('0.00',DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat);

              DMMain_FD.LogFileFD(0,4,Detalle,'FACVTA');

              DatosVentasCtdo.QBuscaRtos.Close;
              DatosVentasCtdo.QBuscaRtos.ParamByName('id').Value:=DatosVentasCtdo.CDSVentaCabID_FC.Value;
              DatosVentasCtdo.QBuscaRtos.Open;
              // **** Verifica remitos *********************
              if DatosVentasCtdo.QBuscaRtos.RecordCount>0 then
                begin
                 if MessageDlg('Hay remitos, que afectan al Cpbte. Los recupera para usar nuevamente..???',mtConfirmation,mbYesNo,0)=mrYes Then
                   begin
                     Cadena:='';
                     DatosVentasCtdo.QBuscaRtos.First;
                     while not(DatosVentasCtdo.QBuscaRtos.Eof) do
                       begin
                         DatosVentasCtdo.QRecuperarRtos.Close;
                         DatosVentasCtdo.QRecuperarRtos.ParamByName('id').Value:=DatosVentasCtdo.QBuscaRtosID_RTO.Value;
                         DatosVentasCtdo.QRecuperarRtos.ExecSQL;
                         DatosVentasCtdo.QRecuperarRtos.Close;
                         if cadena='' then
                           Cadena:=DatosVentasCtdo.QBuscaRtosNROCPBTE.AsString
                         else
                           Cadena:=Cadena+'-'+DatosVentasCtdo.QBuscaRtosNROCPBTE.AsString;
                         DatosVentasCtdo.QBuscaRtos.Next;
                       end;
                   end;
                end;
             //****** Paso a la Paplera ************************************************************
              Pasar_A_Papelera.Execute;

              DatosVentasCtdo.QBuscaRtos.Close;
              DatosVentasCtdo.CDSVentaCab.Delete;
              DatosVentasCtdo.CDSVentaCab.ApplyUpdates(0);

              DMMain_FD.fdcGestion.Commit;

              DBGrillaDetalle.ReadOnly  :=False;
              pnCabecera.Enabled        :=True;

              DatosVentasCtdo.CDSVentaCab.close;
              DatosVentasCtdo.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
              DatosVentasCtdo.CDSVentaCab.Params.ParamByName('id').Clear;
              DatosVentasCtdo.CDSVentaCab.Open;

              DatosVentasCtdo.CDSVentaDet.Close;
              DatosVentasCtdo.CDSVentaDet.Params.ParamByName('id').Clear;
              DatosVentasCtdo.CDSVentaDet.Open;

              DatosVentasCtdo.CDSImpuestos.Close;
              DatosVentasCtdo.CDSImpuestos.Params.ParamByName('id').Clear;
              DatosVentasCtdo.CDSImpuestos.Open;

              FrameMovValoresIngreso1.CDSCajaMov.Close;
              FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
              FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
              FrameMovValoresIngreso1.CDSCajaMov.Open;


              FrameMovValoresIngreso1.CDSChe3.Close;
              FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
              FrameMovValoresIngreso1.CDSChe3.Open;

              FrameMovValoresIngreso1.CDSMovEfectivo.Close;
              FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
              FrameMovValoresIngreso1.CDSMovEfectivo.Open;

              FrameMovValoresIngreso1.CDSTransBco.Close;
              FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
              FrameMovValoresIngreso1.CDSTransBco.Open;

              FrameMovValoresIngreso1.ceCaja.Text       :='';
              FrameMovValoresIngreso1.edMuestraCaja.Text:='';
              FrameMovValoresIngreso1.Id_Caja           :=0;
              if Anulado<>nil Then FreeAndNil(Anulado);

            except
              DMMain_FD.fdcGestion.Rollback;
              ShowMessage('Transaccion no finalizada....!');
            end;
          end
        else
          ShowMessage('No hay registro Seleccionado');
     end
  else
    ShowMessage('Operación no permitida');
  //DatosCompraCtdo.wwCDSCondCompra.EmptyDataSet;
//  inherited;
//  ShowMessage('Operación no permitida');
end;

procedure TFormCpbteCtdo_2.pcDetalleFacturaEnter(Sender: TObject);
begin
  inherited;
   IF ((Trim(RxCCodigo.Text) = '') OR
      (Trim(RxCLdr.Text) = '') OR
      (Trim(RxCSucursal.Text) = '') OR
      (Trim(RxCDeposito.Text) = '') OR
      (Trim(DatosVentasCtdo.CDSVentaCabMUESTRACOMPROBANTE.Value)='') OR
      (Trim(dbeSuc.Text) = '') OR
      (Trim(dbeNumero.Text) = '') OR
      (Trim(dbeMuestraVendedor.Text) = '') OR
      (Trim(copy(dbeFechaVta.Text,1,2)) = '')) and (DSBase.State in [dsEdit,dsInsert]) THEN
     BEGIN
        ShowMessage('Datos en la Cabecera Incompletos....');
        IF pcDetalleFactura.ActivePageIndex <> 0 THEN
          pcDetalleFactura.ActivePageIndex := 0;
        pnCabecera.Enabled := True;
        RxCCodigo.SetFocus;
     END
   else
     begin
       pnCabecera.Enabled:=False;
       pcDetalleFactura.Enabled:=True;
     END;

end;

procedure TFormCpbteCtdo_2.DBGrillaDetalleEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormCpbteCtdo_2.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTE.Clear;
      DatosVentasCtdo.CDSVentaCabMUESTRACOMPROBANTE.Clear;
      DatosVentasCtdo.CDSVentaCabLETRAFAC.Clear;
      DatosVentasCtdo.CDSVentaCabSUCFAC.Clear;
      DatosVentasCtdo.CDSVentaCabNUMEROFAC.Clear;
    end;
end;

procedure TFormCpbteCtdo_2.RxCSucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentasCtdo.CDSVentaCabSUCURSAL.Clear;
      DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTE.Clear;
      DatosVentasCtdo.CDSVentaCabMUESTRASUCURSAL.Clear;
      DatosVentasCtdo.CDSVentaCabMUESTRACOMPROBANTE.Clear;
      DatosVentasCtdo.CDSVentaCabLETRAFAC.Clear;
      DatosVentasCtdo.CDSVentaCabSUCFAC.Clear;
      DatosVentasCtdo.CDSVentaCabNUMEROFAC.Clear;
    end;
end;

procedure TFormCpbteCtdo_2.RxCCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentasCtdo.CDSVentaCabCODIGO.Clear;
      DatosVentasCtdo.CDSVentaCabNOMBRE.Clear;
      DatosVentasCtdo.CDSVentaCabLDR.Clear;
      DatosVentasCtdo.CDSVentaCabMUESTRALDR.Clear;
      DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTE.Clear;
      DatosVentasCtdo.CDSVentaCabMUESTRACOMPROBANTE.Clear;
    end;

end;

procedure TFormCpbteCtdo_2.RxCLdrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentasCtdo.CDSVentaCabLDR.Clear;
      DatosVentasCtdo.CDSVentaCabMUESTRALDR.Clear;
    end;

end;

procedure TFormCpbteCtdo_2.RxCDepositoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentasCtdo.CDSVentaCabDEPOSITO.Clear;
      DatosVentasCtdo.CDSVentaCabMUESTRADEPOSITO.Clear;
    end;

end;

procedure TFormCpbteCtdo_2.BuscarVendedorExecute(Sender: TObject);
begin
  inherited;
  DatosVentasCtdo.CDSBuscaVendedor.Close;
  DatosVentasCtdo.CDSBuscaVendedor.Open;
  comBuscadorVendedor.Execute;
  if comBuscadorVendedor.rOk Then
    DatosVentasCtdo.CDSVentaCabVENDEDORSetText(DatosVentasCtdo.CDSVentaCabVENDEDOR,comBuscadorVendedor.Id);
  DatosVentasCtdo.CDSBuscaVendedor.Close;
end;

procedure TFormCpbteCtdo_2.rxcVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if DMMain_FD.ModificaVendedor Then
    if (key=vk_delete) or (Key=VK_back) Then
      begin
        DatosVentasCtdo.CDSVentaCabVENDEDOR.Clear;
        DatosVentasCtdo.CDSVentaCabMUESTRAVENDEDOR.Clear;
      end;
end;

procedure TFormCpbteCtdo_2.lbVdorClick(Sender: TObject);
begin
  inherited;
  rxcVendedor.TabStop:=Not(rxcVendedor.TabStop);
  ArchivoIni := TIniFile.Create(DMMain_FD.MainPath+DMMain_FD.UsuarioActivo+'consignacion.ini');
  ArchivoIni.WriteBool('vendedor', 'opcion', rxcVendedor.TabStop);
  ArchivoIni.Free;
  if rxcVendedor.TabStop then
    lbVdor.Font.Style:=[fsBold,fsUnderline]
  else
    lbVdor.Font.Style:=[fsUnderline]

end;

procedure TFormCpbteCtdo_2.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frFactura.DesignReport;
end;

procedure TFormCpbteCtdo_2.ToolBar1DblClick(Sender: TObject);
begin
  inherited;
  frGtia.DesignReport;
end;

procedure TFormCpbteCtdo_2.TransferirXMLExecute(Sender: TObject);
var Aux:String;
begin
  inherited;
// no lo borro era para hacer una transferencia de archivos... vemos
// if not DirectoryExists(DMMain_FD.MainPath+'Archivos Transferencia') then
//    CreateDir(DMMain_FD.MainPath+'Archivos Transferencia');
//  if Not(DatosVentasCtdo.CDSVentaCab.IsEmpty)  Then
//    begin
//      Aux:='FO'+DatosVentasCtdo.CDSVentaCabNROCPBTE.Value;
//      if CpbteNuevo='S' then
//        Aux:='A'+Aux
//      else
//        Aux:='M'+Aux;
//      DatosVentasCtdo.CDSVentaCab.SaveToFile(DMMain_FD.MainPath+'Archivos Transferencia\'+Aux+'CAB.XML');
//      DatosVentasCtdo.CDSVentaDet.SaveToFile(DMMain_FD.MainPath+'Archivos Transferencia\'+Aux+'DET.XML');
//      DatosVentasCtdo.CDSImpuestos.SaveToFile(DMMain_FD.MainPath+'Archivos Transferencia\'+Aux+'IMP.XML');
//
//
//      FrameMovValoresIngreso1.CDSCajaMov.SaveToFile(DMMain_FD.MainPath+'Archivos Transferencia\'+Aux+'CAJ.XML');
//      FrameMovValoresIngreso1.CDSChe3.SaveToFile(DMMain_FD.MainPath+'Archivos Transferencia\'+Aux+'CHE.XML');
//      FrameMovValoresIngreso1.CDSMovEfectivo.SaveToFile(DMMain_FD.MainPath+'Archivos Transferencia\'+Aux+'EFE.XML');
//      FrameMovValoresIngreso1.CDSMovTCredito.SaveToFile(DMMain_FD.MainPath+'Archivos Transferencia\'+Aux+'TCR.XML');
//      FrameMovValoresIngreso1.CDSTransBco.SaveToFile(DMMain_FD.MainPath+'Archivos Transferencia\'+Aux+'TXB.XML');
//    end
//  else
//    ShowMessage('No Hay datos para exportar....');
//  ShowMessage('Datos Exportados para sincronizar ....');
end;

procedure TFormCpbteCtdo_2.TransofrmarFcExecute(Sender: TObject);
var estado,caja : Integer;
    convalores  : boolean;
    Detalle     : String;
begin
  inherited;

  if (DatosVentasCtdo.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentasCtdo.CDSVentaCabCAE.AsString)>0) then
    Raise Exception.Create (' Facturas Electrónica con CAE, no se puede hacer....');

//  DMMain_FD.QBuscaOP_PorFc.Close;
//  DMMain_FD.QBuscaOP_PorFc.ParamByName('id').Value:=DatosVentasCtdo.CDSVentaCabID_FC.Value;
//  DMMain_FD.QBuscaOP_PorFc.Open;
//  if DMMain_FD.QBuscaOP_PorFc.Fields[0].AsString<>'' then
  if DMMain_FD.BuscaOP_PorFc(DatosVentasCtdo.CDSVentaCabID_FC.AsInteger) then
    Raise Exception.Create('Hay una orden de Produccion asociada-...');
//  DMMain_FD.QBuscaOP_PorFc.Close;

  if (DSBase.State=dsBrowse) and (DMMain_FD.UsuarioAdministrador) and
     Not(DSBase.DataSet.IsEmpty)  then
   begin
    // Verifico si estan los valores disponibles
     DMStoreProcedure.QControlFondos.Close;
     DMStoreProcedure.QControlFondos.ParamByName('id').Value  :=DatosVentasCtdo.CDSVentaCabID_FC.Value;
     DMStoreProcedure.QControlFondos.ParamByName('Tipo').Value:='FO';
     DMStoreProcedure.QControlFondos.Open;
     if DMStoreProcedure.QControlFondos.Fields[0].Value='N' then
       RAISE Exception.Create('Los cheques y/o tarjetas de Creditos han sido Usados para otras operaciones, no se pude hacer la operación....');
     DMStoreProcedure.QControlFondos.Open;

     if DMMain_FD.CajaCerrada(FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value){ DatosVentasCtdo.QCajaESTADO.Value=1} Then
       RAISE Exception.Create('La caja esta cerrada, no se pude hacer la operación....');

    ExportarXML.Execute;
    if Not(Assigned(FormTransformaFactura)) then
      FormTransformaFactura:=TFormTransformaFactura.Create(FormCpbteCtdo_2);
    FormTransformaFactura.sucursal := DSBase.DataSet.FieldByName('sucursal').Value;
    FormTransformaFactura.deposito := DSBase.DataSet.FieldByName('deposito').Value;
    FormTransformaFactura.Numero   := DSBase.DataSet.FieldByName('NumeroFac').Value;
    FormTransformaFactura.Prefijo  := DSBase.DataSet.FieldByName('SucFac').Value;
    FormTransformaFactura.Letra    := DSBase.DataSet.FieldByName('LetraFac').Value;
    FormTransformaFactura.Fiscal   :='*';
    FormTransformaFactura.Showmodal;
    if (FormTransformaFactura.Transformada )then
      begin
//        fdcGestion.StartTransaction;
        DMMain_FD.fdcGestion.StartTransaction;
        try
          DMStoreProcedure.spBorraFcVtaCabFD.Close;
          DMStoreProcedure.spBorraFcVtaCabFD.ParamByName('id').Value:=DatosVentasCtdo.CDSVentaCabID_FC.Value;
          DMStoreProcedure.spBorraFcVtaCabFD.ExecProc;
          DMStoreProcedure.spBorraFcVtaCabFD.Close;
          // **** Ingreso en el Log File  **************
          Detalle:= 'Transformación Cpbte.Venta: '+
                    DatosVentasCtdo.CDSVentaCabTIPOCPBTE.OldValue+'-'+
                    DatosVentasCtdo.CDSVentaCabCLASECPBTE.OldValue+'-'+
                    DatosVentasCtdo.CDSVentaCabNROCPBTE.OldValue+
                    ' Nuevo Cpbte.: '+
                    DatosVentasCtdo.CDSVentaCabTIPOCPBTE.NewValue+'-'+
                    DatosVentasCtdo.CDSVentaCabCLASECPBTE.NewValue+'-'+
                    DatosVentasCtdo.CDSVentaCabNROCPBTE.NewValue+
                    ' Cliente: '+
                    DatosVentasCtdo.CDSVentaCabRAZONSOCIAL.Value+
                    ' Importe: '+
                    FormatFloat('0.00',DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat);
          DMMain_FD.LogFileFD(0,5,Detalle,'FACVTA');
           // ******************************************
//          DMMain_FD.fdcGestion.Commit;
          DMMain_FD.fdcGestion.Commit;
        except
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('No se pudo realizar de los mov. de caja de la factura anterior...');
        end;
        DatosVentasCtdo.CDSVentaCab.close;
        DatosVentasCtdo.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
        DatosVentasCtdo.CDSVentaCab.Params.ParamByName('id').Clear;
        DatosVentasCtdo.CDSVentaCab.Open;

        DatosVentasCtdo.CDSVentaDet.Close;
        DatosVentasCtdo.CDSVentaDet.Params.ParamByName('id').Clear;
        DatosVentasCtdo.CDSVentaDet.Open;

        DatosVentasCtdo.CDSImpuestos.Close;
        DatosVentasCtdo.CDSImpuestos.Params.ParamByName('id').Clear;
        DatosVentasCtdo.CDSImpuestos.Open;

        DatosVentasCtdo.CDSVtaSubDetalle.Close;
        DatosVentasCtdo.CDSVtaSubDetalle.Params.ParamByName('id').Clear;
        DatosVentasCtdo.CDSVtaSubDetalle.Open;
      end;
  end;
end;

procedure TFormCpbteCtdo_2.DBGrillaDetalleEnter(Sender: TObject);
begin
  inherited;
  if (DBGrillaDetalle.SelectedIndex<1) or (DBGrillaDetalle.SelectedIndex>1) then
    DBGrillaDetalle.SelectedIndex:=1;
  if DSBase.State<>dsBrowse then
    begin
      sbEstado.Panels[0].Text:=' F-11:Lista los movimientos del artículo elegido';
      if DMMain_FD.ModificaPrecioVta=False Then
        sbEstado.Panels[0].Text:=sbEstado.Panels[0].Text+'-F3:Pide Autorización Cambio de Precio';
    end;
end;

procedure TFormCpbteCtdo_2.DBGrillaDetalleExit(Sender: TObject);
begin
  inherited;
  if DSBase.State<>dsBrowse then
    begin
      sbEstado.Panels[0].Text:='';
      sbEstado.Panels[1].Text:='';
    end;
end;

procedure TFormCpbteCtdo_2.DatosClienteExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.ModificarDatosCliente(DSBase);
end;

procedure TFormCpbteCtdo_2.dbchCtayOrdenClick(Sender: TObject);
begin
  inherited;
  if (DatosVentasCtdo.CDSVentaCab.State in [dsInsert]) then
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
            DatosVentasCtdo.CDSVentaCabPROVEEDORSetText(DatosVentasCtdo.CDSVentaCabPROVEEDOR,Proveedor)
          else
            begin
              dbchCtayOrden.Checked:=False;
              DatosVentasCtdo.CDSVentaCabPROVEEDOR.Clear;
              if DatosVentasCtdo.CDSVtaDetConsig.RecordCount>0 then
                begin
                  DatosVentasCtdo.CDSVtaDetConsig.Close;
                  DatosVentasCtdo.CDSVtaDetConsig.Params.ParamByName('id').Clear;
                  DatosVentasCtdo.CDSVtaDetConsig.Open;
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
          DatosVentasCtdo.CDSVentaCabPROVEEDOR.Clear;
          if DatosVentasCtdo.CDSVtaDetConsig.RecordCount>0 then
            begin
              DatosVentasCtdo.CDSVtaDetConsig.Close;
              DatosVentasCtdo.CDSVtaDetConsig.Params.ParamByName('id').Clear;
              DatosVentasCtdo.CDSVtaDetConsig.Open;
            end;
        end;
    end;
 end;

procedure TFormCpbteCtdo_2.RecalculoSuma00Execute(Sender: TObject);
VAR Puntero,Puntero2:TBookmark;
begin
  inherited;
  Puntero:=DatosVentasCtdo.CDSVentaDet.GetBookmark;
  DatosVentasCtdo.CDSVentaDet.First;
  DatosVentasCtdo.CDSVentaDet.DisableControls;
  while Not(DatosVentasCtdo.CDSVentaDet.Eof) DO
    begin
      Puntero2:=DatosVentasCtdo.CDSVentaDet.GetBookmark;
      DatosVentasCtdo.CDSVentaDet.edit;
      DatosVentasCtdo.CDSVentaDetUNITARIO_GRAVADO.AsFloat:=RoundTo(DatosVentasCtdo.CDSVentaDetUNITARIO_GRAVADO.AsFloat,-3);
      DatosVentasCtdo.CDSVentaDetUNITARIO_GRAVADO.AsFloat:=RoundTo(DatosVentasCtdo.CDSVentaDetUNITARIO_GRAVADO.AsFloat,-2);

      DatosVentasCtdo.CDSVentaDetUNITARIO_EXENTO.AsFloat :=RoundTo(DatosVentasCtdo.CDSVentaDetUNITARIO_EXENTO.AsFloat,-3);
      DatosVentasCtdo.CDSVentaDetUNITARIO_EXENTO.AsFloat :=RoundTo(DatosVentasCtdo.CDSVentaDetUNITARIO_EXENTO.AsFloat,-2);

      DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL.AsFloat  :=DatosVentasCtdo.CDSVentaDetUNITARIO_GRAVADO.AsFloat+
                                                           DatosVentasCtdo.CDSVentaDetUNITARIO_EXENTO.AsFloat;

      DatosVentasCtdo.CDSVentaDetIVA_UNITARIO.AsFloat    :=RoundTo(DatosVentasCtdo.CDSVentaDetIVA_UNITARIO.AsFloat,-3);
      DatosVentasCtdo.CDSVentaDetIVA_UNITARIO.AsFloat    :=RoundTo(DatosVentasCtdo.CDSVentaDetIVA_UNITARIO.AsFloat,-2);

      DatosVentasCtdo.CDSVentaDetCantidadSetText(DatosVentasCtdo.CDSVentaDetCantidad,DatosVentasCtdo.CDSVentaDetCANTIDAD.AsString);
      DatosVentasCtdo.CDSVentaDet.GotoBookmark(Puntero2);
      DatosVentasCtdo.CDSVentaDet.FreeBookmark(Puntero2);
      DatosVentasCtdo.CDSVentaDet.Next;
    end;
  DatosVentasCtdo.CDSVentaDet.GotoBookmark(Puntero);
  DatosVentasCtdo.CDSVentaDet.FreeBookmark(Puntero);
  DatosVentasCtdo.CDSVentaDet.EnableControls;
end;

procedure TFormCpbteCtdo_2.RecuperarRemitosExecute(Sender: TObject);
var Cadena:String;
begin
  inherited;
  DatosVentasCtdo.QBuscaRtos.Close;
  DatosVentasCtdo.QBuscaRtos.ParamByName('id').Value:=DatosVentasCtdo.CDSVentaCabID_FC.Value;
  DatosVentasCtdo.QBuscaRtos.Open;
  // **** Verifica remitos *********************
  if DatosVentasCtdo.QBuscaRtos.RecordCount>0 then
    begin
     if MessageDlg('Hay remitos, que afectan al Cpbte. Los recupera para usar nuevamente..???',mtConfirmation,mbYesNo,0)=mrYes Then
       begin
         Cadena:='';
         DatosVentasCtdo.QBuscaRtos.First;
         while not(DatosVentasCtdo.QBuscaRtos.Eof) do
           begin
             DatosVentasCtdo.QRecuperarRtos.Close;
             DatosVentasCtdo.QRecuperarRtos.ParamByName('id').Value:=DatosVentasCtdo.QBuscaRtosID_RTO.Value;
             DatosVentasCtdo.QRecuperarRtos.ExecSQL;
             DatosVentasCtdo.QRecuperarRtos.Close;
             if cadena='' then
               Cadena:=DatosVentasCtdo.QBuscaRtosNROCPBTE.AsString
             else
               Cadena:=Cadena+'-'+DatosVentasCtdo.QBuscaRtosNROCPBTE.AsString;
             DatosVentasCtdo.QBuscaRtos.Next;
           end;
          ShowMessage('Remitos Recuperados:'+#13+Cadena);
       end;
    end;
  // ******************************************
  DatosVentasCtdo.QBuscaRtos.Close;
end;

procedure TFormCpbteCtdo_2.RehacerQrExecute(Sender: TObject);
Var QrImage:TBitmap;
FechaQr:String;
CuitVendedor  :String;
CuitComprador :String;
TipoDocReceptor:Integer;
begin
  QRImage:=TBitmap.Create;
  CuitVendedor:=DMMain_FD.FormatoCUIT(DatosVentasCtdo.CDSEmpresaCUIT.Value);
  if Trim(DatosVentasCtdo.CDSSucursalCERTIFICADO_ELEC.AsString)<>'' then
    CuitVendedor:=DMMain_FD.FormatoCUIT(DatosVentasCtdo.CDSSucursalCUIT.Value);

  CuitComprador :=DMMain_FD.FormatoCUIT(DSBase.DataSet.FieldByName('CUIT').AsString);

  case DSBase.DataSet.FieldByName('TIPOIVA').AsInteger of
    1,5,6:TipoDocReceptor:=80;
    3    :TipoDocReceptor:=96;
  end;
  if (DSBase.DataSet.FieldByName('TIPOIVA').AsInteger=3) and (DSBase.DataSet.FieldByName('Total').Asfloat<DMMain_FD.LimiteFactB) then
    begin
      TipoDocReceptor:=99;
      CuitComprador:='0'
    end;


  if (FormFiscalizacion<>nil) then
    begin
      FreeAndNil(FormFiscalizacion);
      FormFiscalizacion:=nil;
    end;
  if Not(Assigned(FormFiscalizacion)) then
    FormFiscalizacion:= TFormFiscalizacion.Create(self);
  FechaQr        := FormatDateTime('yyyy-mm-dd', DSBase.DataSet.FieldByName('FECHAVTA').AsDateTime);
  QRImage:= FormFiscalizacion.GenerarQR(1,FechaQr,
                                        StrToFLoat(CuitVendedor),// DSBase.DataSet.FieldByName('CUIT').AsFloat,
                                        DSBase.DataSet.FieldByName('SUCFAC').AsInteger,
                                        DSBase.DataSet.FieldByName('MUESTRACODIGOAFIP').AsInteger,
                                        DSBase.DataSet.FieldByName('NUMEROFAC').AsInteger,
                                        DSBase.DataSet.FieldByName('Total').Asfloat,
                                        'PES',
                                        1,
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

procedure TFormCpbteCtdo_2.PapeleraExecute(Sender: TObject);
var QAux:TFDQuery;
Nro:string;
Id:String;
sDirectorio:string;
Restaurado:Boolean;
cab:string;
begin
  inherited;
  sDirectorio      := DMMain_FD.MainPath+'Papelera_FO';
  Restaurado:=False;
  if DMMain_FD.UsuarioActivo='master' then
    begin
      if Not(Assigned(FormRestaurarPapelera)) Then
        FormRestaurarPapelera := TFormRestaurarPapelera.Create(Self);
      FormRestaurarPapelera.Directorio:=sDirectorio;
      FormRestaurarPapelera.Tag              := 0;
      FormRestaurarPapelera.CDSVentaCab      := DatosVentasCtdo.CDSVentaCab;
      FormRestaurarPapelera.CDSVentaDet      := DatosVentasCtdo.CDSVentaDet;
      FormRestaurarPapelera.CDSImpuestos     := DatosVentasCtdo.CDSImpuestos;
      FormRestaurarPapelera.CDSVtaSubDetalle := DatosVentasCtdo.CDSVtaSubDetalle;
      FormRestaurarPapelera.CDSVtaDetConsig  := DatosVentasCtdo.CDSVtaDetConsig;
      FormRestaurarPapelera.CDSMov_Carnes    := DatosVentasCtdo.CDSMov_Carnes;
      FormRestaurarPapelera.CDSFc_Prod_Det   := DatosVentasCtdo.CDSFc_Prod_Det;
      FormRestaurarPapelera.CDSFc_Prod_Mov   := DatosVentasCtdo.CDSFc_Prod_Mov;
      FormRestaurarPapelera.CDSVentaLote     := DatosVentasCtdo.CDSVentaLote;

      FormRestaurarPapelera.CDSCajaMov       := FrameMovValoresIngreso1.CDSCajaMov;
      FormRestaurarPapelera.CDSChe3          := FrameMovValoresIngreso1.CDSChe3;
      FormRestaurarPapelera.CDSMovEfectivo   := FrameMovValoresIngreso1.CDSMovEfectivo;
      FormRestaurarPapelera.CDSMovTCredito   := FrameMovValoresIngreso1.CDSMovTCredito;
      FormRestaurarPapelera.CDSTransBco      := FrameMovValoresIngreso1.CDSTransBco;
      FormRestaurarPapelera.CDSAjustes       := FrameMovValoresIngreso1.CDSAjustes;

      FormRestaurarPapelera.ShowModal;
      if FormRestaurarPapelera.ModalResult=mrOk then
        begin
           QAux               := TFDQuery.Create(self);
           QAux.Connection    := DMMain_FD.fdcGestion;
           QAux.CachedUpdates := True;

           Nro                := DatosVentasCtdo.CDSVentaCabNUMEROFAC.Value;
           Id                 := DatosVentasCtdo.CDSVentaCabID_FC.AsString;

           DMMain_FD.fdcGestion.StartTransaction;
           try
             QAux.SQL.Text      := DMMain_FD.QVentaCab.Sql.Text;
             QAux.Open;
             QAux.CopyDataSet(DatosVentasCtdo.CDSVentaCab);
             QAux.ApplyUpdates(0);
             QAux.Close;

             QAux.SQL.Text      := DMMain_FD.QVentaDet.Sql.Text;
             QAux.Open;
             QAux.CopyDataSet(DatosVentasCtdo.CDSVentaDet);
             QAux.ApplyUpdates(0);
             QAux.Close;

             if not(DatosVentasCtdo.CDSImpuestos.IsEmpty) then
               begin
                 QAux.SQL.Text      := DMMain_FD.QImpuestosVta.Sql.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentasCtdo.CDSImpuestos);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(DatosVentasCtdo.CDSVtaSubDetalle.IsEmpty) then
               begin
                 QAux.SQL.Text      := DMMain_FD.QVtaSubDetalle.Sql.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentasCtdo.CDSVtaSubDetalle);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(DatosVentasCtdo.CDSVtaDetConsig.IsEmpty) Then
               begin
                 QAux.SQL.Text      := DMMain_FD.QVtaDetalleConsig.Sql.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentasCtdo.CDSVtaDetConsig);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(DatosVentasCtdo.CDSMov_Carnes.IsEmpty) Then
               begin
                 QAux.SQL.Text      := DMMain_FD.QMov_Carnes.Sql.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentasCtdo.CDSMov_Carnes);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(DatosVentasCtdo.CDSFc_Prod_Det.IsEmpty) Then
               begin
                 QAux.SQL.Text      := DMMain_FD.QFcVta_Prod_Det.Sql.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentasCtdo.CDSFc_Prod_Det);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(DatosVentasCtdo.CDSFc_Prod_Mov.IsEmpty) Then
               begin
                 QAux.SQL.Text      := DMMain_FD.QFcVta_Prod_Mov.Sql.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentasCtdo.CDSFc_Prod_Mov);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(DatosVentasCtdo.CDSVentaLote.IsEmpty) Then
               begin
                 QAux.SQL.Text      := DMMain_FD.QVentaLote.SQL.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentasCtdo.CDSVentaLote);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;
     /////////////////////////////////////////////////////////////////////////////////
             if not(FrameMovValoresIngreso1.CDSCajaMov.IsEmpty) Then
               begin
                 QAux.SQL.Text      := FrameMovValoresIngreso1.QCajaMov.SQL.Text;
                 QAux.Open;
                 QAux.CopyDataSet( FrameMovValoresIngreso1.CDSCajaMov);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(FrameMovValoresIngreso1.CDSMovEfectivo.IsEmpty) Then
               begin
                 QAux.SQL.Text      := FrameMovValoresIngreso1.QMovEfectivo.SQL.Text;
                 QAux.Open;
                 QAux.CopyDataSet( FrameMovValoresIngreso1.CDSMovEfectivo);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(FrameMovValoresIngreso1.CDSMovTCredito.IsEmpty) Then
               begin
                 QAux.SQL.Text      := FrameMovValoresIngreso1.QMovTCredito.SQL.Text;
                 QAux.Open;
                 QAux.CopyDataSet( FrameMovValoresIngreso1.CDSMovTCredito);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(FrameMovValoresIngreso1.CDSChe3.IsEmpty) Then
               begin
                 QAux.SQL.Text      := FrameMovValoresIngreso1.QChe3.SQL.Text;
                 QAux.Open;
                 QAux.CopyDataSet(FrameMovValoresIngreso1.CDSChe3);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(FrameMovValoresIngreso1.CDSTransBco.IsEmpty) Then
               begin
                 QAux.SQL.Text      := FrameMovValoresIngreso1.QTransBco.SQL.Text;
                 QAux.Open;
                 QAux.CopyDataSet( FrameMovValoresIngreso1.CDSTransBco);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(FrameMovValoresIngreso1.CDSAjustes.IsEmpty) Then
               begin
                 QAux.SQL.Text      := FrameMovValoresIngreso1.QAjustes.SQL.Text;
                 QAux.Open;
                 QAux.CopyDataSet( FrameMovValoresIngreso1.CDSAjustes);
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
           DatoNew   := DatosVentasCtdo.CDSVentaCabID_FC.AsString;
           TipoCpbte := DatosVentasCtdo.CDSVentaCabTIPOCPBTE.AsString;
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
          DeleteFile(sDirectorio+'\('+Id+')FCVentaLote.bin');

          DeleteFile(sDirectorio+'\('+Id+')CajaMov.bin');
          DeleteFile(sDirectorio+'\('+Id+')Che3.bin');
          DeleteFile(sDirectorio+'\('+Id+')Efectivo.bin');
          DeleteFile(sDirectorio+'\('+Id+')TCredito.bin');
          DeleteFile(sDirectorio+'\('+Id+')TXBanco.bin');
          DeleteFile(sDirectorio+'\('+Id+')Ajuste.bin');
        end
      else
        begin
          DatoNew:='-1';
          Recuperar.Execute;
        end;

      FreeAndNil(FormRestaurarPapelera);
    end;
end;

procedure TFormCpbteCtdo_2.RecuperarExecute(Sender: TObject);
var TotalGral,NetoTotal:Real;
sDirectorio:String;
begin
  inherited;

  sDirectorio      := DMMain_FD.MainPath+'Papelera_FO';
  if IsDirEmpty(sDirectorio) then
    Papelera.ImageIndex:=12
  else
    Papelera.ImageIndex:=11;

  ClonarFc.Enabled           := True;

  sbEstado.Panels[0].Text    := '';
  sbEstado.Panels[1].Text    := '';
  sbEstado.Panels[2].Text    := '';
  shPP.Visible               := False;
  RevisionValoresIng.Enabled := True;
  DatosVentasCtdo.CDSVentaCab.close;
  DatosVentasCtdo.CDSVentaCab.Params.ParamByName('TipoCpbte').Value := TipoCpbte;
  DatosVentasCtdo.CDSVentaCab.Params.ParamByName('id').Value        := StrToInt(DatoNew);
  DatosVentasCtdo.CDSVentaCab.Open;

  if Not(DatosVentasCtdo.CDSVentaCab.IsEmpty) then
    condicion:=' and tipocpbte ='+AnsiQuotedStr(DatosVentasCtdo.CDSVentaCabTIPOCPBTE.AsString,'''') +
               ' and clasecpbte='+AnsiQuotedStr(DatosVentasCtdo.CDSVentaCabCLASECPBTE.AsString,'''');

  //******************
  // Controla Acopios....
  Acopiar.Enabled:=(DatosVentasCtdo.CDSVentaCabMUESTRAACOPIO.Value<=0) or (VarIsNull(DatosVentasCtdo.CDSVentaCabMUESTRAACOPIO.Value));
  //******************
  //******************

  if DatosVentasCtdo.CDSVentaCabANULADO.Value='S' Then
    begin
       if Anulado=nil Then
          Anulado:=TPanel.Create(Self);
       Anulado.Parent     := Self;
       Anulado.Caption    := 'ANULADA';
       Anulado.Top        := Trunc(FormCpbteCtdo_2.Height*0.5)-20;
       Anulado.Left       := Trunc(FormCpbteCtdo_2.Width*0.5)-100;
       Anulado.Height     := 40;
       Anulado.Width      := 200;
       Anulado.Font.Size  := 30;
       Anulado.Font.Color := clRed;
       Anulado.Font.Name  := 'Arial';
       Anulado.Font.Style := [fsBold];
       Anulado.Visible    := True;
       ClonarFc.Enabled   := False;
       ANulado.BringToFront;
    end
  else
    if Anulado<>nil Then
      begin
        FreeAndNil(Anulado);
      end;

//    ((TotalGral / NetoTotal)-1) x 100 = Tasa de Iva usada
//   ------------------------
  TotalGral := DatosVentasCtdo.CDSVentaCabTotal.AsFloat-DatosVentasCtdo.CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat-DatosVentasCtdo.CDSVentaCabNETOEXEN2.AsFloat;
  NetoTotal := DatosVentasCtdo.CDSVentaCabNetoGrav2.AsFloat;// + DatosVentasCtdo.CDSVentaCabNETOEXEN2.AsFloat;

  if DatosVentasCtdo.CDSVentaCabNETOGRAV2.AsFloat>0 Then
    DatosVentasCtdo.Var_TasaIVA:= ((TotalGral/NetoTotal)-1)*100
  else
    DatosVentasCtdo.Var_TasaIva:=0;// Var_TasaIva, lo uso para tener el valor de IVA para cuando muestro los importe con el iva sin discriminar


  DatosVentasCtdo.CDSVentaDet.Close;
  DatosVentasCtdo.CDSVentaDet.Params.ParamByName('id').Value      := StrToInt(DatoNew);
  DatosVentasCtdo.CDSVentaDet.Open;

  DatosVentasCtdo.CDSVtaDetNovedades.Close;
  DatosVentasCtdo.CDSVtaDetNovedades.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  DatosVentasCtdo.CDSVtaDetNovedades.Open;

  VerNovedadesDet.Enabled := Not(DatosVentasCtdo.CDSVtaDetNovedades.IsEmpty);

  DatosVentasCtdo.CDSMov_Carnes.Close;
  DatosVentasCtdo.CDSMov_Carnes.Params.ParamByName('id').Value    := DatosVentasCtdo.CDSVentaDetID.AsInteger;// StrToInt(DatoNew);
  DatosVentasCtdo.CDSMov_Carnes.Open;

  DatosVentasCtdo.CDSVtaSubDetalle.Close;
  DatosVentasCtdo.CDSVtaSubDetalle.Params.ParamByName('id').Value := StrToInt(DatoNew);
  DatosVentasCtdo.CDSVtaSubDetalle.Open;

  DatosVentasCtdo.CDSImpuestos.Close;
  DatosVentasCtdo.CDSImpuestos.Params.ParamByName('id').Value     := StrToInt(DatoNew);
  DatosVentasCtdo.CDSImpuestos.Open;

  DatosVentasCtdo.CDSPercepcionIVA.Close;
  DatosVentasCtdo.CDSPercepcionIVA.Params.ParamByName('id').Value := StrToInt(DatoNew);
  DatosVentasCtdo.CDSPercepcionIVA.Open;


  DatosVentasCtdo.CDSVtaDetConsig.Close;
  DatosVentasCtdo.CDSVtaDetConsig.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  DatosVentasCtdo.CDSVtaDetConsig.Open;

  DatosVentasCtdo.CDSSucursal.Close;
  DatosVentasCtdo.CDSSucursal.Params.ParamByName('codigo').Value  := DatosVentasCtdo.CDSVentaCabSUCURSAL.AsInteger;//
  DatosVentasCtdo.CDSSucursal.Open;

  if Trim(DatosVentasCtdo.CDSSucursalCERTIFICADO_ELEC.Value)<>'' then
    begin
      DMMain_FD.Cuit_SUCURSAL       :=DatosVentasCtdo.CDSSucursalCUIT.Value;
      DMMain_FD.Certificado_SUCURSAL:=DatosVentasCtdo.CDSSucursalCERTIFICADO_ELEC.Value;
    end;

  FrameMovValoresIngreso1.TipoOperacion := 'I';

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Value := TipoCpbte;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :=FrameMovValoresIngreso1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresIngreso1.edMuestraCaja.Text:=FrameMovValoresIngreso1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresIngreso1.Id_Caja           :=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
  FrameMovValoresIngreso1.id_Cuenta_caja    :=FrameMovValoresIngreso1.CDSCajaMovID_CUENTA_CAJA.Value;
  FrameMovValoresIngreso1.FechaCaja         :=FrameMovValoresIngreso1.CDSCajaMovFECHA_CAJA.AsDateTime;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Value        := StrToInt(DatoNew);//FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Value := StrToInt(DatoNew);//FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  FrameMovValoresIngreso1.CDSMovTCredito.Close;
  FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Value := StrToInt(DatoNew);//FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSMovTCredito.Open;

  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Value    := StrToInt(DatoNew);//FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSTransBco.Open;

  FrameMovValoresIngreso1.CDSAjustes.Close;
  FrameMovValoresIngreso1.CDSAjustes.Params.ParamByName('id').Value     := StrToInt(DatoNew);//FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSAjustes.Open;

  DatosVentasCtdo.CDSFc_Prod_Det.Close;
//  DatosVentasCtdo.CDSFc_Prod_Det.Params.ParamByName('id_det').Value  := StrToInt(DatosVentasCtdo.CDSVentaDetID.AsString);
  DatosVentasCtdo.CDSFc_Prod_Det.Open;

  DatosVentasCtdo.CDSFc_Prod_Mov.Close;
//  DatosVentasCtdo.CDSFc_Prod_Mov.Params.ParamByName('id_det').Value  := StrToInt(DatosVentasCtdo.CDSFc_Prod_MovID_FC_DET.AsString);
  DatosVentasCtdo.CDSFc_Prod_Mov.Open;

  FrameMovValoresIngreso1.CalcularValores;

  FrameMovValoresIngreso1.tsChe3.TabVisible  := DatosVentasCtdo.CDSVentaCabMUESTRAUSACHE.AsString='S';

  DatosVentasCtdo.HabilitarLabel;
  // pnPrincipal.Enabled:=True;
  // CpbteNuevo := 'N';

  // VERIFICO SI LA CAJA ESTA CERRADA
  //DatosVentasCtdo.QCaja.Close;
  //DatosVentasCtdo.QCaja.ParamByName('id').Value:=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
  //DatosVentasCtdo.QCaja.Open;
  // segun el periodo fiscal habilito o no para borrar y modificar
  begin
    DMStoreProcedure.QVerificaPeriodoFiscal.Close;
    DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').AsDate         := DatosVentasCtdo.CDSVentaCabFECHA_FISCAL.AsDateTime;
    DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('compra_venta').AsString:='V';
    DMStoreProcedure.QVerificaPeriodoFiscal.Open;
    if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
      begin
        sbEstado.Panels[0].Text:='Este comprobante no se puede Borrar ni modificar, este período fiscal fue cerrado';
        Anular.Enabled         :=False;
        Modificar.Enabled      :=False;
        ClonarFc.Enabled       := False;
        FrameMovValoresIngreso1.dbgMovimientos.ReadOnly:=true;
      end
    else
      begin
       if DatosVentasCtdo.CDSVentaCabANULADO.Value='N' Then
         begin
           Anular.Enabled         :=True;
           Modificar.Enabled      :=True;
         end
       else
         if DatosVentasCtdo.CDSVentaCabANULADO.Value='S' Then
           begin
             Anular.Enabled         :=False;
             Modificar.Enabled      :=False;
           end;
       if DatosVentasCtdo.CDSVentaCabIMPRESO.Value='S' Then
          begin
            sbEstado.Panels[0].Text:='Este comprobante no se puede modificar, ya fué impreso';
            Anular.Enabled         :=True;
            Modificar.Enabled      :=false;
          end;
//       if DatosVentasCtdo.QCajaESTADO.Value=1 Then

        if DMMain_FD.CajaCerrada(FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value) then
          begin
            sbEstado.Panels[0].Text    := 'La caja está cerrada, por lo que no se puede modificar ni borrar';
            Anular.Enabled             := False;
            Modificar.Enabled          := False;
            ClonarFc.Enabled           := False;
            FrameMovValoresIngreso1.dbgMovimientos.ReadOnly :=true;
            RevisionValoresIng.Enabled := False;
          end;
      end;
  end;
  DMStoreProcedure.QVerificaPeriodoFiscal.Close;
  DatoNew:=''+DatoNew+'';

  if Not(DSBase.DataSet.IsEmpty) then
    begin
      FormCpbteCtdo_2.Calcula_iva_articulo := DMMain_FD.GetCalcualIvaItems(DSBase.Dataset.FieldByName('ID_TIPOCOMPROBANTE').Value)='S';

      DatosVentasCtdo.Renglones            := DMMain_FD.GetLineasComprobante(DSBase.Dataset.FieldByName('ID_TIPOCOMPROBANTE').Value);
    end;

  gbPrecioTabla.Visible:=False;
  if DatosVentasCtdo.CDSVentaCabNUMERO_OPERACION.AsString<>'' then
    sbEstado.Panels[1].Text:='Ctrl+Alt+O:Ver Operaciones';
  if DatosVentasCtdo.CDSVentaCabINGRESA_LIBRO_IVA.Value='S' then
    sbEstado.Panels[2].Text:='Iva';
  FormCpbteCtdo_2.Caption:='Ventas de Contado -- '+DatosVentasCtdo.CDSVentaCabFECHA_HORA.AsString+'//'+Copy(DatosVentasCtdo.CDSVentaCabUSUARIO.Value,1,15);

  if (DatosVentasCtdo.CDSVentaCabCAE.AsString<>'') and (DatosVentasCtdo.CDSVentaCabCAE.AsFloat>0 )then
    FormCpbteCtdo_2.Caption:='Ventas de Contado -- '+DatosVentasCtdo.CDSVentaCabFECHA_HORA.AsString+'//'+Copy(DatosVentasCtdo.CDSVentaCabUSUARIO.Value,1,15)+'// CAE: '+datosVentasCtdo.CDSVentaCabCAE.Value;

  // ********** verifico si hay items de Produccion... **
  DMMain_FD.HayProduccion:=DatosVentasCtdo.VerificaProduccion;
  // ****************************************************
  if RevisionValoresIng.Enabled then
    RevisionValoresIng.Enabled:= (DMMain_FD.UsuarioAdministrador) or (DMMain_FD.UsuarioActivo='master');
  if (FormCpbteCtdo_2.Visible) and (btNuevo.Visible) then
    btNuevo.SetFocus;
  LibroIVA.Enabled:=DMMain_FD.UsuarioActivo='master';

  Acopiar.Enabled                := (DSBase.DataSet.FieldByName('ANULADO').Value='N') and (DSBase.DataSet.FieldByName('MUESTRATIPONC').AsString='');
  GenerarRemito.Enabled          := (DSBase.DataSet.FieldByName('ANULADO').Value='N') and (DSBase.DataSet.FieldByName('MUESTRATIPONC').AsString='');
  GenerarNotaPedido.Enabled      := (DSBase.DataSet.FieldByName('ANULADO').Value='N') and (DSBase.DataSet.FieldByName('MUESTRATIPONC').AsString='');
  GenerarOrdenProduccion.Enabled := (DSBase.DataSet.FieldByName('ANULADO').Value='N') and (DSBase.DataSet.FieldByName('MUESTRATIPONC').AsString='');
  Anular.Enabled                 := (DSBase.DataSet.FieldByName('ANULADO').Value='N') and (DSBase.DataSet.FieldByName('MUESTRATIPONC').AsString='');
  HacerNC.Enabled                := (DSBase.DataSet.FieldByName('ANULADO').Value='N') and (DSBase.DataSet.FieldByName('MUESTRATIPONC').AsString='');

  Acopiar.Enabled                := not(DMBuscadores.GetAcopioFactura(DatosVentasCtdo.CDSVentaCabID_FC.Value));
  GenerarNotaPedido.Enabled      := Acopiar.Enabled;

end;

procedure TFormCpbteCtdo_2.RevisionValoresIngExecute(Sender: TObject);
var aux:String;
begin
  inherited;
  if (DSBase.DataSet.State=dsBrowse) and (DSBase.DataSet.IsEmpty=False) then
    if (DMMain_FD.UsuarioAdministrador) or (DMMain_FD.UsuarioActivo='master') then
      begin
        Aux:= FrameMovValoresIngreso1.lbTotalValores.Caption;
        Aux:= AnsiReplaceText(Aux,',','');
        if Not(Assigned(FormRevisionValoresIngreso)) then
          FormRevisionValoresIngreso :=TFormRevisionValoresIngreso.Create(Self);
        FormRevisionValoresIngreso.Id_Comprobante  := DSBase.DataSet.FieldByName('Id_FC').Value;
        FormRevisionValoresIngreso.TipoComprobante := DSBase.DataSet.FieldByName('TipoCpbte').Value;
        FormRevisionValoresIngreso.ClaseComprob    := DSBase.DataSet.FieldByName('ClaseCpbte').Value;
        FormRevisionValoresIngreso.ImporteOriginal := StrToFloat(Aux);// DSBase.DataSet.FieldByName('Total').Value;
        FormRevisionValoresIngreso.Id_Caja         := FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
        FormRevisionValoresIngreso.Id_Cta_Caja     := FrameMovValoresIngreso1.CDSCajaMovID_CUENTA_CAJA.Value;
        FormRevisionValoresIngreso.NroComprobante  := DSBase.DataSet.FieldByName('NroCpbte').Value;
        FormRevisionValoresIngreso.FechaOperacion  := DSBase.DataSet.FieldByName('Fechavta').Value;
        FormRevisionValoresIngreso.Origen          := DSBase.DataSet.FieldByName('RAZONSOCIAL').Value;
        FormRevisionValoresIngreso.Cuit            := DSBase.DataSet.FieldByName('CUIT').Value;
        FormRevisionValoresIngreso.Show;
      end;
end;

procedure TFormCpbteCtdo_2.dbtAcopioClick(Sender: TObject);
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

procedure TFormCpbteCtdo_2.DBText25Click(Sender: TObject);
begin
  inherited;
  VerNC.Execute;
end;

procedure TFormCpbteCtdo_2.DesanularExecute(Sender: TObject);
begin
  inherited;
 if DatosVentasCtdo.CDSVentaCabANULADO.Value='N' Then
    raise Exception.Create('No es un comprobante anulado....');

  if (DMMain_FD.AnularFactura) Then
    begin
      IF NOT (DatosVentasCtdo.CDSVentaCab.IsEmpty)  THEN
        BEGIN
          IF MessageDlg('Ud. está por hacer una operación de' + #13 +
                        'desanulación.....' + #13 +
                        'Está seguro de hacerlo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
            BEGIN
              DatoNew     :=IntToStr(DatosVentasCtdo.CDSVentaCabID_FC.Value);
              TipoCpbte   :=DatosVentasCtdo.CDSVentaCabTIPOCPBTE.AsString;

              // **** Ingreso en el Log File  **************
             DMMain_FD.fdcGestion.StartTransaction;
              try
                DatosVentasCtdo.CDSVentaCab.Edit;
                DatosVentasCtdo.CDSVentaCabANULADO.Value := 'N';
                if DatosVentasCtdo.Renglones<DatosVentasCtdo.CDSVentaDet.RecordCount Then
                  DatosVentasCtdo.Renglones:=DatosVentasCtdo.CDSVentaDet.RecordCount;
                DatosVentasCtdo.CDSVentaCab.Post;
                DatosVentasCtdo.CDSVentaCab.ApplyUpdates(0);

               DMMain_FD.LogFileFD(0,2,'DesAnulación Fac.Venta Ctdo: '+DatosVentasCtdo.CDSVentaCabNROCPBTE.Value+' Cliente: '+DatosVentasCtdo.CDSVentaCabRAZONSOCIAL.Value+
                                    ' Importe: '+FormatFloat('0.00',DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat),
                                    'FACVTA');
              // ******************************************
             //   spControlCpbteImp_vs_comp.Close;
             //   spControlCpbteImp_vs_comp.ExecProc;
             //   spControlCpbteImp_vs_comp.Close;
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

procedure TFormCpbteCtdo_2.DesmarcarImpresaExecute(Sender: TObject);
begin
  IF (NOT (DatosVentasCtdo.CDSVentaCab.IsEmpty)) and
   (DMMain_FD.UsuarioAdministrador=True) THEN
    BEGIN
       CpbteNuevo:='N';
       DatosVentasCtdo.CDSVentaCab.Edit;
       if DatosVentasCtdo.CDSVentaCabIMPRESO.Value<>'N' Then
         DatosVentasCtdo.CDSVentaCabIMPRESO.Value := 'N'
       else
        if DatosVentasCtdo.CDSVentaCabIMPRESO.Value='N' Then
           DatosVentasCtdo.CDSVentaCabIMPRESO.Value := 'S';
       //    DatosVentasCtdo.wwCDSVentaCab.Post;
          Confirma.Execute;
     END;
end;

procedure TFormCpbteCtdo_2.BuscarPorObsExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscadorPorObs)) THEN
    FormBuscadorPorObs := TFormBuscadorPorObs.Create(Application);
  FormBuscadorPorObs.TipoComp:='F';
  FormBuscadorPorObs.ShowModal;
  IF FormBuscadorPorObs.Id > 0 THEN
    BEGIN
      if FormBuscadorPorObs.Tipo='FO' then
        begin
          TipoCpbte:= FormBuscadorPorObs.Tipo;
          DatoNew  := IntToStr(FormBuscadorPorObs.id);
          Recuperar.Execute;
        end
      else
        begin
          if Not(Assigned(FormCpbte_2)) then
            FormCpbte_2:=TFormCpbte_2.Create(Application);
          FormCpbte_2.DatoNew:=IntToStr(FormBuscadorPorObs.id);
          FormCpbte_2.TipoCpbte:=FormBuscadorPorObs.Tipo;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end;
   end
end;

procedure TFormCpbteCtdo_2.BuscarPorReferenciaExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(Application);
  FormBuscarPorNroReferenica.CompraVta:='V';
  FormBuscarPorNroReferenica.ShowModal;
  IF FormBuscarPorNroReferenica.Id > 0 THEN
    BEGIN
      if FormBuscarPorNroReferenica.Tipo='FO' then
        begin
          TipoCpbte:= FormBuscarPorNroReferenica.Tipo;
          DatoNew  := IntToStr(FormBuscarPorNroReferenica.id);
          Recuperar.Execute;
        end
      else
        begin
          if Not(Assigned(FormCpbte_2)) then
            FormCpbte_2:=TFormCpbte_2.Create(Application);
          FormCpbte_2.DatoNew:=IntToStr(FormBuscarPorNroReferenica.id);
          FormCpbte_2.TipoCpbte:=FormBuscarPorNroReferenica.Tipo;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end;
   end
 else
    ShowMessage('No Hay Comprobante con ese Nro...');
end;

procedure TFormCpbteCtdo_2.BuscarPresupuestoExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscarPresupuestos)) THEN
    FormBuscarPresupuestos := TFormBuscarPresupuestos.Create(Self,Insertardetalle);
  FormBuscarPresupuestos.Origen:='FO';
  FormBuscarPresupuestos.Cliente:=DatosVentasCtdo.CDSVentaCabCodigo.Value;
  FormBuscarPresupuestos.ShowModal;
end;

procedure TFormCpbteCtdo_2.BuscarProveedorExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
    begin
      DatosVentasCtdo.CDSVentaCabPROVEEDORSetText(DatosVentasCtdo.CDSVentaCabPROVEEDOR, FormBuscadorProveedor.Codigo);
    end;

end;

procedure TFormCpbteCtdo_2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // Borrado de Comprobante
  if Not(DSBase.DataSet.IsEmpty) then
    begin
      IF (Shift=[ssCtrl]) and (Key=VK_DELETE) and (FormCpbteCtdo_2.Active) and (DMMain_FD.UsuarioAdministrador=True) Then
        Borrar.Execute;
      if (Key=VK_F5) and (DatosVentasCtdo.CDSVentaCabCODIGO.AsString<>'') Then
        begin
          if Not(Assigned(FormUltimaVta)) Then
             FormUltimaVta:=TFormUltimaVta.Create(Application);
           FormUltimaVta.Codigo:=DatosVentasCtdo.CDSVentaCabCODIGO.AsString;
           FormUltimaVta.ShowModal;
        end
      else
        if (Key=VK_F6) and (DatosVentasCtdo.CDSVentaCabCODIGO.AsString<>'') Then
          begin
            if Not(Assigned(FormUltimaVtaMensual)) Then
               FormUltimaVtaMensual:=TFormUltimaVtaMensual.Create(Application);
             FormUltimaVtaMensual.Codigo:=DatosVentasCtdo.CDSVentaCabCODIGO.AsString;
             FormUltimaVtaMensual.Fecha :=DatosVentasCtdo.CDSVentaCabFECHAVTA.AsDateTime;
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
                LeerFacturasFreezadas.Execute;
              end;
    end;

end;

procedure TFormCpbteCtdo_2.cpPuertoComReceiveData(Sender: TObject;
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
          Dato:=DMMain_FD.CodigoBarraSerie+dato;
          delete(dato,1,1);
          Delete(dato,length(Dato),1);
          DatosVentasCtdo.CDSVentaDetCodigoArticuloSetText(DatosVentasCtdo.CDSVentaDetCodigoArticulo,Dato);
          DBGrillaDetalleKeyPress(Sender,Enter);
          DMMain_FD.CodigoBarraSerie:='';

        end
      else
        DMMain_FD.CodigoBarraSerie:=Dato;
    end;
end;

procedure TFormCpbteCtdo_2.dbeFechaVtaExit(Sender: TObject);
begin
  inherited;
  DatosVentasCtdo.CDSVentaCabFECHAVTASetText(DatosVentasCtdo.CDSVentaCabFECHAVTA,dbeFechaVta.Text);
end;


procedure TFormCpbteCtdo_2.dbcJuriClick(Sender: TObject);
begin
  inherited;
  DatosVentasCtdo.CDSVentaCabJURIDICION.Value:=dbcJuri.ListSource.DataSet.FieldByName('ID_JURIDICION').Value;
end;

procedure TFormCpbteCtdo_2.dbcListaClick(Sender: TObject);
begin
  inherited;
  if dbcLista.KeyValue<>Null Then
    begin
      DMMain_FD.LogFileFD(1,2,'Modificacion Lista de Precio en Fc.de Vta Ctdo. de Lista >>'+ OldLista+
                         ' a lista >> '+ dbcLista.Text +
                         ' en Fc.Nro'+' ('+DSBase.DataSet.FieldByName('ID_FC').AsString+') '+
                         DSBase.DataSet.FieldByName('TIPOCPBTE').AsString+'-'+
                         DSBase.DataSet.FieldByName('NROCPBTE').AsString ,' FACVTA');

      Recalcular.Execute;
      if (DatosVentasCtdo.CDSVentaCabCON_GTIA_EXTENDIDA.Value='S') then
        DatosVentasCtdo.ReCalculaGtia(DatosVentasCtdo.ArticuloGtia,DatosVentasCtdo.CDSVentaCabCODIGO.AsString);
      oldLista:=dbcLista.Text;
    end;
end;

procedure TFormCpbteCtdo_2.RecalcularExecute(Sender: TObject);
VAR Puntero,Puntero2:TBookmark;
 Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
begin
  inherited;
  if (dbcLista.KeyValue<>Null) and (Trim(dbcLista.Text)<>'') Then
    begin
      Puntero:=DatosVentasCtdo.CDSVentaDet.GetBookmark;
      DatosVentasCtdo.CDSVentaDet.First;
      DatosVentasCtdo.CDSVentaDet.DisableControls;
      while Not(DatosVentasCtdo.CDSVentaDet.Eof) DO
        begin
          Puntero2:=DatosVentasCtdo.CDSVentaDet.GetBookmark;

          DatosVentasCtdo.CDSVentaDet.edit;

          if (FormCpbteCtdo_2.Divide_iva=True) then
            DatosVentasCtdo.CDSVentaDetIVA_TASA.Value:=DatosVentasCtdo.CDSVentaDetIVA_TASA.Value/2;

          if (FormCpbteCtdo_2.Calcula_iva_Articulo=False) then
            DatosVentasCtdo.CDSVentaDetIVA_TASA.Value:=0;

          DMMain_FD.CalculaPrecioVta_FD( DatosVentasCtdo.CDSVentaCabINGRESA_LIBRO_IVA.Value,DMMain_FD.IdListaProveedor ,DatosVentasCtdo.CDSVentaCabLISTAPRECIO.Value,DatosVentasCtdo.CDSVentaCabSUCURSAL.Value,DatosVentasCtdo.CDSVentaCabDEPOSITO.Value,
                                       DatosVentasCtdo.CDSVentaDetCODIGOARTICULO.AsString,DatosVentasCtdo.CDSVentaCabCODIGO.AsString,DatosVentasCtdo.CDSVentaCabTIPOCPBTE.Value,
                                       DatosVentasCtdo.CDSVentaDetCOTIZACION.AsFloat,
                                       DatosVentasCtdo.CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat,
                                       Gravado,exento,Total,Iva,Margen,dscto,PFinal);

          if (FormCpbteCtdo_2.Divide_iva=True) then
            Iva:=Iva/2;

          if (FormCpbteCtdo_2.Calcula_iva_Articulo=False) then
            Iva:=0;

          DatosVentasCtdo.CDSVentaDetUNITARIO_GRAVADO.AsFloat:=Gravado;
          DatosVentasCtdo.CDSVentaDetUNITARIO_EXENTO.AsFloat :=Exento;
          DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL.AsFloat  :=Total;
          DatosVentasCtdo.CDSVentaDetIVA_UNITARIO.AsFloat    :=Iva;
          DatosVentasCtdo.CDSVentaDetMARGEN.ASFloat          :=Margen;
          DatosVentasCtdo.CDSVentaDetDESCUENTO.ASFloat       :=Dscto;


          DatosVentasCtdo.CDSVentaDetCantidadSetText(DatosVentasCtdo.CDSVentaDetCantidad,DatosVentasCtdo.CDSVentaDetCantidad.AsString);
          DatosVentasCtdo.CDSVentaDet.GotoBookmark(Puntero2);
          DatosVentasCtdo.CDSVentaDet.FreeBookmark(Puntero2);
          DatosVentasCtdo.CDSVentaDet.Next;
        end;
      DatosVentasCtdo.CDSVentaDet.GotoBookmark(Puntero);
      DatosVentasCtdo.CDSVentaDet.FreeBookmark(Puntero);
      DatosVentasCtdo.CDSVentaDet.EnableControls;
    end
  else
    ShowMessage('No se puede recalcular si no hay lista asignada...');
end;

procedure TFormCpbteCtdo_2.dbcListaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=VK_back) or (Key=VK_delete) Then
    begin
      DatosVentasCtdo.CDSVentaCabLISTAPRECIO.Clear;
      DMMain_FD.LogFileFD(1,2,'Modificacion Lista de Precio en Fc.de Vta Ctdo. de Lista >>'+OldLista+
                          ' a lista >> VACIA en Fc.Nro'+' ('+DSBase.DataSet.FieldByName('ID_FC').AsString+') '+
                          DSBase.DataSet.FieldByName('TIPOCPBTE').AsString+'-'+
                          DSBase.DataSet.FieldByName('NROCPBTE').AsString ,' FACVTA');
      oldLista:='0';
      Recalcular.Execute;
    end;
end;

procedure TFormCpbteCtdo_2.AcopiarExecute(Sender: TObject);
VAR Continua:Boolean;
begin
  Continua:=False;
  if (Not(DSBase.DataSet.IsEmpty)) and (Not(TForm(Self.Owner).Name='FormConsolidacionAcopioRemitos')) and
     (MessageDlg('Genera acopio de mercaderia?? ....',mtConfirmation,mbYesNo,1)=mrYes) then Continua:=True
  else
    if (Not(DSBase.DataSet.IsEmpty)) and (TForm(Self.Owner).Name='FormConsolidacionAcopioRemitos') then Continua:=True;

  if (DatosVentasCtdo.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and
     (DatosVentasCtdo.CDSVentaCabCAE.AsFloat<=0) then
   begin
     Continua:=False;
     ShowMessage('Fiscalice la facture y luego haga el proceso de acopio...');

   end;

  if Continua=True then

  begin
//    DMBuscadores.QBuscaAcopio.Close;
//    DMBuscadores.QBuscaAcopio.ParamByName('id').Value:=DatosVentasCtdo.CDSVentaCabID_FC.Value;
//    DMBuscadores.QBuscaAcopio.Open;
//    if DMBuscadores.QBuscaAcopio.IsEmpty then
    if not(DMBuscadores.GetAcopioFactura(DatosVentasCtdo.CDSVentaCabID_FC.Value)) then
      begin
        if Not(Assigned(FormAcopio)) Then
          FormAcopio:=TFormAcopio.Create(self);
        FormAcopio.Agregar.Execute;
        FormAcopio.CDSMercCabFECHA.AsDateTime:= Date;
        FormAcopio.CDSMercCabCLIENTE.Value   := DatosVentasCtdo.CDSVentaCabCODIGO.Value;
        FormAcopio.CDSMercCabNOMBRE.Value    := DatosVentasCtdo.CDSVentaCabNOMBRE.Value;
        FormAcopio.CDSMercCabDIRECCION.Value := DatosVentasCtdo.CDSVentaCabDIRECCION.Value;
        FormAcopio.CDSMercCabCPOSTAL.Value   := DatosVentasCtdo.CDSVentaCabCPOSTAL.Value;
        FormAcopio.CDSMercCabLOCALIDAD.Value := DatosVentasCtdo.CDSVentaCabLOCALIDAD.Value;
        FormAcopio.CDSMercCabNROCPBTE.Value  := DatosVentasCtdo.CDSVentaCabNROCPBTE.Value;
        FormAcopio.CDSMercCabID_FACTURA.Value:= DatosVentasCtdo.CDSVentaCabID_FC.Value;
        FormAcopio.CDSMercCabOBS1.Value      := DatosVentasCtdo.CDSVentaCabOBSERVACION1.Value;
        FormAcopio.CDSMercCabOBS2.Value      := DatosVentasCtdo.CDSVentaCabOBSERVACION2.Value;

        DatosVentasCtdo.CDSVentaDet.First;
        while Not(DatosVentasCtdo.CDSVentaDet.Eof)  do
          begin
            while Not(DatosVentasCtdo.CDSVentaDet.Eof)  Do // Ingreso el detalle
              begin
                if DatosVentasCtdo.CDSVentaDetACOPIABLE.Value='S' then
                  begin
                    Application.ProcessMessages;
                    FormAcopio.CDSMercDet.Append;
                    FormAcopio.CDSMercDetCODIGO.AsString    := DatosVentasCtdo.CDSVentaDetCODIGOARTICULO.AsString;
                    FormAcopio.CDSMercDetDETALLE.AsString   := DatosVentasCtdo.CDSVentaDetDETALLE.AsString;
                    FormAcopio.CDSMercDetCANTIDAD.AsFloat   := DatosVentasCtdo.CDSVentaDetCANTIDAD.AsFloat;
                    FormAcopio.CDSMercDetSALDO.AsFloat      := DatosVentasCtdo.CDSVentaDetCANTIDAD.AsFloat;
                    FormAcopio.CDSMercDet.Post;
                  end;
                DatosVentasCtdo.CDSVentaDet.Next;
              end;
          end;
        FormAcopio.Confirma.Execute;
        if (TForm(Self.Owner).Name='FormConsolidacionAcopioRemitos') Then FormAcopio.Salir.Execute;
      end
    else
      ShowMessage('Ya fue realizado.....');
  end;
end;

procedure TFormCpbteCtdo_2.AgregarClienteExecute(Sender: TObject);
var
  CodAux: string;
begin
  inherited;
  CodAux  :=  DMMain_FD.NuevoCliente;
  if CodAux <> '' then
    DSBase.DataSet.FieldByName('CODIGO').Text :=  CodAux;

end;

procedure TFormCpbteCtdo_2.dbgConsignacionesColEnter(Sender: TObject);
begin
  inherited;
  if dbgConsignaciones.SelectedIndex>3 Then
    dbgConsignaciones.SelectedIndex:=3
  else
    if dbgConsignaciones.SelectedIndex<3 Then
      dbgConsignaciones.SelectedIndex:=3;

end;

procedure TFormCpbteCtdo_2.dbgConsignacionesEnter(Sender: TObject);
begin
  inherited;
  dbgConsignaciones.SelectedIndex:=3;
end;

procedure TFormCpbteCtdo_2.dbgDetalleLotesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if dbgDetalleLotes.DataSource.DataSet.FieldByName('CONTROL_TRAZABILIDAD').Value='S' Then
    dbgDetalleLotes.Canvas.Font.Style:=[fsBold]
  else
    dbgDetalleLotes.Canvas.Font.Style:=[];
  dbgDetalleLotes.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormCpbteCtdo_2.dbgDetalleVtaDrawColumnCell(Sender: TObject;
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
          dbgDetalleVta.Canvas.Font.Color:=clBlack;
          dbgDetalleVta.Canvas.Font.Style:=[];
        end;
  dbgDetalleVta.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormCpbteCtdo_2.dbgExitenciasDrawColumnCell(Sender: TObject;
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

procedure TFormCpbteCtdo_2.dbgSeriesKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF (Key = #13) and (dbgSeries.ReadOnly=False) THEN
    BEGIN
      Key := #0;
      DBGSeries.DataSource.DataSet.Append;
    END;
end;

procedure TFormCpbteCtdo_2.BuscarSerieExecute(Sender: TObject);
var i:byte;
begin
  if ((DSBase.DataSet.State IN [dsInsert,dsEdit])) then
    begin
      if (DatosVentasCtdo.CDSVentaDetCON_NRO_SERIE.Value='S') Then
        begin
          DatosVentasCtdo.CDSBuscaNroSerie.Close;
          DatosVentasCtdo.CDSBuscaNroSerie.CommandText:='';
          DatosVentasCtdo.CDSBuscaNroSerie.CommandText:='select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,ss.fechaegreso,ss.deposito from stock_series ss '+
                                                        'where  (ss.codigo_stk = :codigo and ss.id_cpbte_egreso is null)  and ( ss.deposito = :deposito or  :deposito = -1 ) ';
//          DMMain_FD.QOpciones.Close;
//          DMMain_FD.QOpciones.ParamByName('opcion').Value:='SERIEDEPOSITO';
//          DMMain_FD.QOpciones.Open;
//          if DMMain_FD.QOpciones.Fields[0].AsString[1]='S' Then
		  if DMMain_FD.SerieDeposito then
            DatosVentasCtdo.CDSBuscaNroSerie.Params.ParamByName('deposito').AsInteger:= -1
          else
            DatosVentasCtdo.CDSBuscaNroSerie.Params.ParamByName('deposito').AsInteger:=DatosVentasCtdo.CDSVentaDetDeposito.ASInteger;
//          DMMain_FD.QOpciones.Close;

          comBuscadorSerie.Data  :=DatosVentasCtdo.CDSBuscaNroSerie;
          comBuscadorSerie.Campo :='codigoserie';

         // DatosVentasCtdo.CDSBuscaNroSerie.Close;
          DatosVentasCtdo.CDSBuscaNroSerie.Params.ParamByName('codigo').AsString :=DatosVentasCtdo.CDSVentaDetCodigoArticulo.AsString;
          DatosVentasCtdo.CDSBuscaNroSerie.Open;

//          wwBuscadorSerie.Selected.Clear;
//          for i:= 0 to DatosVentasCtdo.CDSBuscaNroSerie.FieldCount-1 do
//            begin
//              if i<0 then
//                wwBuscadorSerie.Selected.Add(DatosVentasCtdo.CDSBuscaNroSerie.Fields[i].FieldName + #9 + IntToStr(DatosVentasCtdo.CDSBuscaNroSerie.Fields[i].DisplayWidth) + #9 +
//                  DatosVentasCtdo.CDSBuscaNroSerie.Fields[i].DisplayLabel);
//              if i>0 then
//                DatosVentasCtdo.CDSBuscaNroSerie.Fields[i].Visible:=False;
//            end;

          comBuscadorSerie.Execute;
          if comBuscadorSerie.rOk Then
            DatosVentasCtdo.CDSVtaSubDetalleSERIESetText(DatosVentasCtdo.CDSVtaSubDetalleSERIE,comBuscadorSerie.Id);
          DatosVentasCtdo.CDSBuscaNroSerie.Close;
        end
      else
        if (DatosVentasCtdo.CDSVentaDetCON_NRO_SERIE.Value='N') and (DatosVentasCtdo.CDSVentaDetCON_CODIGO_BARRA.Value='S') Then
          begin
            comBuscadorSerie.Data  :=DatosVentasCtdo.CDSBuscaCodigoBarra;
            comBuscadorSerie.Campo :='codigosbarra';

            DatosVentasCtdo.CDSBuscaCodigoBarra.Close;
            DatosVentasCtdo.CDSBuscaCodigoBarra.Params.ParamByName('codigo').Value:= DatosVentasCtdo.CDSVentaDetCodigoArticulo.Value;
            DatosVentasCtdo.CDSBuscaCodigoBarra.Open;

//            wwBuscadorSerie.Selected.Clear;
//            for i:= 0 to DatosVentasCtdo.CDSBuscaNroSerie.FieldCount-1 do
//              begin
//                if i<0 then
//                  wwBuscadorSerie.Selected.Add(DatosVentasCtdo.CDSBuscaNroSerie.Fields[i].FieldName + #9 + IntToStr(DatosVentasCtdo.CDSBuscaNroSerie.Fields[i].DisplayWidth) + #9 +
//                    DatosVentasCtdo.CDSBuscaNroSerie.Fields[i].DisplayLabel);
//                if i>0 then
//                  DatosVentasCtdo.CDSBuscaNroSerie.Fields[i].Visible:=False;
//              end;

            comBuscadorSerie.Execute;
            if comBuscadorSerie.rOk Then
              DatosVentasCtdo.CDSVtaSubDetalleSERIESetText(DatosVentasCtdo.CDSVtaSubDetalleSERIE,comBuscadorSerie.Id);
            DatosVentasCtdo.CDSBuscaCodigoBarra.Close;
          end;
    end;
end;

procedure TFormCpbteCtdo_2.DBGrillaDetalleDblClick(Sender: TObject);
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

procedure TFormCpbteCtdo_2.DBGrillaDetalleDragDrop(Sender, Source: TObject;
  X, Y: Integer);
begin
  inherited;
  if (DatosVentasCtdo.CDSVentaCab.State in [dsInsert,dsEdit]) Then
    begin
      DatosVentasCtdo.CDSVentaDetCodigoArticuloSetText(DatosVentasCtdo.CDSVentaDetCodigoArticulo, (Source as TDBGrid).DataSource.DataSet.FieldByName('Codigo_stk').AsString);
      DatosVentasCtdo.CDSVentaDetCantidadSetText(DatosVentasCtdo.CDSVentaDetCantidad,'1');
      DatosVentasCtdo.CDSVentaDetUnitario_TotalSetText(DatosVentasCtdo.CDSVentaDetUnitario_Total,(Source as TDBGrid).DataSource.DataSet.FieldByName('MuestraPrecio').AsString);
      DatosVentasCtdo.CDSVentaDet.Append;
    end;
end;

procedure TFormCpbteCtdo_2.DBGrillaDetalleDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  if FormConsultaStock<>nil then
    begin
      if Source=FormConsultaStock.dbgStock Then
        Accept:=True
      else
       accept:=False;
    end
  else
    Accept:=False;
end;

procedure TFormCpbteCtdo_2.ReCalcularTodoExecute(Sender: TObject);
begin
  inherited;
  DatosVentasCtdo.ReCalcularTodo;
end;

procedure TFormCpbteCtdo_2.dbcPercibeIIBBClick(Sender: TObject);
begin
  inherited;
  if DSBase.State in [dsInsert,DsEdit] Then
    BEGIN
      if dbcPercibeIIBB.Checked Then
        DatosVentasCtdo.CDSVentaCabPERCIBE_IB.Value:='S'
      else
        DatosVentasCtdo.CDSVentaCabPERCIBE_IB.Value:='N';
      if DatosVentasCtdo.CDSVentaDet.IsEmpty=False then
        begin
          DatosVentasCtdo.SumarDetalle;
          DatosVentasCtdo.CalcularTotales;
        end;
    END;
end;

procedure TFormCpbteCtdo_2.CalcularIvaDetExecute(Sender: TObject);
begin
  inherited;
  DatoNew:=DatosVentasCtdo.CDSVentaCabID_FC.AsString;
  inherited;
  DMMain_FD.CorrigeIvaDetVta(DatosVentasCtdo.CDSVentaCabID_FC.AsInteger);
  Recuperar.Execute;
end;

// **** Control de pago con Tarjeta de Credito ******
procedure TFormCpbteCtdo_2.CalcularRecargosTCExecute(Sender: TObject);
var
  TotalRecargo,
  coeficiente,Unitario :Real;
  TotalOld,TotalNuevo  :Real;
  DiferenciaRec :Real;
  HayPago_ConTC :Boolean;
begin
  inherited;
  Coeficiente   :=0;
  HayPago_ConTC :=False;
  // Veo si hubo Pago con tarjetas
  FrameMovValoresIngreso1.CDSCajaMov.First;
  if FrameMovValoresIngreso1.CDSCajaMov.RecordCount=1 then
    begin
      if FrameMovValoresIngreso1.CDSCajaMovID_TPAGO.Value=4 Then
          HayPago_ConTC:=True;
    end
  else
    while (Not(FrameMovValoresIngreso1.CDSCajaMov.Eof)) do
      begin
        if FrameMovValoresIngreso1.CDSCajaMovID_TPAGO.Value=4 Then
          HayPago_ConTC:=True;
        FrameMovValoresIngreso1.CDSCajaMov.Next;
      end;

  TotalRecargo  :=0;

 //  Nueva Asignacion de Valores Old
//  if (DatosVentasCtdo.CDSVentaDet.State=dsBrowse) Then DatosVentasCtdo.CDSVentaDet.Edit;
//  DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL_OLD.Value:=DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL.Value;
//  DatosVentasCtdo.CDSVentaDetUNITARIO_IVA_OLD.Value  :=DatosVentasCtdo.CDSVentaDetIVA_UNITARIO.Value;
//  DatosVentasCtdo.CDSVentaDet.Post;
  if HayPago_ConTC then
    CancelarRecargoTC.Execute;

  TotalOld      :=DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat;

  // Voy acumulando todos los recargos
  FrameMovValoresIngreso1.CDSCajaMov.First;
  if FrameMovValoresIngreso1.CDSCajaMov.RecordCount=1 then
    begin
      if FrameMovValoresIngreso1.CDSCajaMovID_TPAGO.Value=4 Then
        begin
          TotalRecargo :=FrameMovValoresIngreso1.CDSMovTCreditoIMPORTE_RECARGO.AsFloat;
          HayPago_ConTC:=True;
        end;
    end
  else
    while (Not(FrameMovValoresIngreso1.CDSCajaMov.Eof)) do
      begin
        if FrameMovValoresIngreso1.CDSCajaMovID_TPAGO.Value=4 Then
          begin
            TotalRecargo :=TotalRecargo + FrameMovValoresIngreso1.CDSMovTCreditoIMPORTE_RECARGO.AsFloat;
            HayPago_ConTC:=True;
          end;
        FrameMovValoresIngreso1.CDSCajaMov.Next;
      end;
  //Calculo el coeficiente total en caso de haber mas de una tarjeta
  Coeficiente:=(TotalOld+TotalRecargo)/TotalOld;
  //**************************************************
  if HayPago_ConTC=True Then
    begin

      if UsaConceptoRecargoTC=False then
        begin
          DatosVentasCtdo.CDSVentaDet.First;
          while Not(DatosVentasCtdo.CDSVentaDet.eof) do
            begin
              DatosVentasCtdo.CDSVentaDet.Edit;
              DatosVentasCtdo.CDSVentaDetUNI_C_REC.Value    := 'S'; // aca le indico que tiene recargo
              if (DatosVentasCtdo.CDSVentaDetDesglozaIVA.Value='S') AND (FormCpbteCtdo_2.DiscriminaIva='S')  Then
              // Si es con Iva discrimando Tomo el importe Sin Iva
                DatosVentasCtdo.CDSVentaDetUnitario_TotalSetText(DatosVentasCtdo.CDSVentaDetUnitario_Total,
                                                                 FloatToStr(DatosVentasCtdo.CDSVentaDetUnitario_Total.AsFloat * coeficiente))
              else
              // Si es Sin Iva discrimando Tomo el importe + Iva
                begin
                  Unitario:= DatosVentasCtdo.CDSVentaDetUnitario_Total.AsFloat;
                  Unitario:= Unitario + DatosVentasCtdo.CDSVentaDetIVA_UNITARIO.AsFloat;
                  Unitario:= Unitario * coeficiente;
                  Unitario:= RoundTo(Unitario,-4);
                  Unitario:= RoundTo(Unitario,-3);
                  DatosVentasCtdo.CDSVentaDetUnitario_TotalSetText(DatosVentasCtdo.CDSVentaDetUnitario_Total,FloatToStr(Unitario));
                end;
              DatosVentasCtdo.CDSVentaDet.Next;
            end;
        end
      else
        Begin
          if Trunc(TotalRecargo)>0 then
            begin
              DatosVentasCtdo.QTCredito.Close;
              DatosVentasCtdo.QTCredito.ParamByName('Codigo').Value:=FrameMovValoresIngreso1.CDSMovTCreditoID_TC.Value;
              DatosVentasCtdo.QTCredito.Open;
              if DatosVentasCtdo.QTCreditoCODIGOARTICULO.Value<>'' Then
                ItemRedondeo:=DatosVentasCtdo.QTCreditoCODIGOARTICULO.Value
              else
                ItemRedondeo:='*';
              if ItemRedondeo<>'*' then
                begin
                  DatosVentasCtdo.CDSVentaDet.Append;
                  DatosVentasCtdo.CDSVentaDetCodigoArticuloSetText(DatosVentasCtdo.CDSVentaDetCodigoArticulo,ItemRedondeo);
                  DatosVentasCtdo.CDSVentaDetCantidadSetText(DatosVentasCtdo.CDSVentaDetCantidad,'1');
                  if DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.Value='N' Then
                    DatosVentasCtdo.CDSVentaDetUnitario_TotalSetText(DatosVentasCtdo.CDSVentaDetUnitario_Total,FormatFloat(DatosVentasCtdo.MascaraDetalleUnitario,TotalRecargo))
                  else
                    DatosVentasCtdo.CDSVentaDetUnitario_TotalSetText(DatosVentasCtdo.CDSVentaDetUnitario_Total,FormatFloat(DatosVentasCtdo.MascaraDetalleUnitario,(TotalRecargo/(1+(DatosVentasCtdo.CDSVentaDetIVA_Tasa.AsFloat)*0.01))));
                  DatosVentasCtdo.CDSVentaDet.Post;
                end;
              end;
        end;

//    Calculo la diferencia que me quedo sin aplicar
      DiferenciaRec:= 0;
      TotalNuevo   := TotalOld+TotalRecargo;
//    DiferenciaRec:=StrToFloat(FormatFloat('0.000',(TotalOld+TotalRecargo)))-StrToFloat(FormatFloat('0.000',DatosVentasCtdo.wwCDSVentaCabTOTAL.Value));
      DiferenciaRec:= (RoundTo(TotalNuevo,-2)) - (RoundTo(DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat,-2));
      if DiferenciaRec>0 Then
        begin
          ItemRedondeo:='*';
          FrameMovValoresIngreso1.CDSCajaMov.First;
          if FrameMovValoresIngreso1.CDSCajaMov.RecordCount=1 then
            begin
              if FrameMovValoresIngreso1.CDSCajaMovID_TPAGO.Value=4 Then
                Begin
                  DatosVentasCtdo.QTCredito.Close;
                  DatosVentasCtdo.QTCredito.ParamByName('Codigo').Value:=FrameMovValoresIngreso1.CDSMovTCreditoID_TC.Value;
                  DatosVentasCtdo.QTCredito.Open;
                  if DatosVentasCtdo.QTCreditoCODIGOARTICULO.Value<>'' Then
                    ItemRedondeo:=DatosVentasCtdo.QTCreditoCODIGOARTICULO.Value
                  else
                    ItemRedondeo:='*';
                end;
             end
          else
            while Not(FrameMovValoresIngreso1.CDSCajaMov.Eof) do
              begin
                if FrameMovValoresIngreso1.CDSCajaMovID_TPAGO.Value=4 Then
                  Begin
                    DatosVentasCtdo.QTCredito.Close;
                    DatosVentasCtdo.QTCredito.ParamByName('Codigo').Value:=FrameMovValoresIngreso1.CDSMovTCreditoID_TC.Value;
                    DatosVentasCtdo.QTCredito.Open;
                    if (ItemRedondeo='*') and (DatosVentasCtdo.QTCreditoCODIGOARTICULO.Value<>'') Then
                      begin
                        ItemRedondeo:=DatosVentasCtdo.QTCreditoCODIGOARTICULO.Value;
                      end
                    else
                      ItemRedondeo:='*';
//        Correcion, esta linea pasa despues del end, por que no hacia el next
//        FrameMovValoresIngreso1.wwCDSCajaMov.Next;
                  end;
                FrameMovValoresIngreso1.CDSCajaMov.Next;
              end;
          if ItemRedondeo<>'*' then
            Begin
              DatosVentasCtdo.CDSVentaDet.Append;
              DatosVentasCtdo.CDSVentaDetCodigoArticuloSetText(DatosVentasCtdo.CDSVentaDetCodigoArticulo,ItemRedondeo);
              DatosVentasCtdo.CDSVentaDetCantidadSetText(DatosVentasCtdo.CDSVentaDetCantidad,'1');
              if DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.Value='N' Then
                DatosVentasCtdo.CDSVentaDetUnitario_TotalSetText(DatosVentasCtdo.CDSVentaDetUnitario_Total,FormatFloat(DatosVentasCtdo.MascaraDetalleUnitario,DiferenciaRec))
              else
                DatosVentasCtdo.CDSVentaDetUnitario_TotalSetText(DatosVentasCtdo.CDSVentaDetUnitario_Total,FormatFloat(DatosVentasCtdo.MascaraDetalleUnitario,(DiferenciaRec/(1+(DatosVentasCtdo.CDSVentaDetIVA_Tasa.AsFloat)*0.01))));
              DatosVentasCtdo.CDSVentaDet.Post;
            end;
        end;
  end;
end;

procedure TFormCpbteCtdo_2.CambiarClaseExecute(Sender: TObject);
begin
  inherited;
//  BorrarTodasAplicaciones.Execute;
  if (DSBase.State=dsBrowse) and Not(DSBase.dataSet.IsEmpty) then
    begin
      if (DatosVentasCtdo.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentasCtdo.CDSVentaCabCAE.AsString)>0) then
        Raise Exception.Create (' Facturas Electrónica con CAE, no se puede Modicficar....');

      if (DatosVentasCtdo.CDSVentaCabINGRESA_LIBRO_IVA.Value='S') and (DMMain_FD.UsuarioActivo<>'master') then
        Raise Exception.Create (' Facturas Ingresa en Iva, no se puede Modificar....');

      if not(Assigned(FormCambiarClaseCpbte)) then
        FormCambiarClaseCpbte:=TFormCambiarClaseCpbte.Create(Self);
      FormCambiarClaseCpbte.Tipo                     := DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
      FormCambiarClaseCpbte.Clase                    := DSBase.DataSet.FieldByName('CLASECPBTE').Value;
      FormCambiarClaseCpbte.Letra                    := DSBase.DataSet.FieldByName('LETRAFAC').Value;
      FormCambiarClaseCpbte.Sucursal                 := DSBase.DataSet.FieldByName('SUCURSAL').Value;
      FormCambiarClaseCpbte.NroCpbte                 := DSBase.DataSet.FieldByName('NROCPBTE').Value;
      FormCambiarClaseCpbte.IdComprobante            := DSBase.DataSet.FieldByName('ID_FC').Value;
      FormCambiarClaseCpbte.ComproVenta              := 'V';
      FormCambiarClaseCpbte.dbcSucursalNew.KeyValue  := DSBase.DataSet.FieldByName('SUCURSAL').Value;
      FormCambiarClaseCpbte.dbcSucursalNew.Enabled   := False;

      FormCambiarClaseCpbte.ShowModal;

      DatoNew    := IntToStr(FormCambiarClaseCpbte.IdComprobante);
      TipoCpbte  := FormCambiarClaseCpbte.Tipo;
      Recuperar.Execute;
    end;

end;

procedure TFormCpbteCtdo_2.CambiarClienteExecute(Sender: TObject);
begin
  inherited;

  if (DatosVentasCtdo.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentasCtdo.CDSVentaCabCAE.AsString)>0) then
    Raise Exception.Create (' Facturas Electrónica con CAE, no se puede Cambiar....');

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

procedure TFormCpbteCtdo_2.CambiarCuitExecute(Sender: TObject);
begin
  inherited;
  if (DatosVentasCtdo.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentasCtdo.CDSVentaCabCAE.AsString)>0) then
    Raise Exception.Create (' Facturas Electrónica con CAE, no se puede modifica...');


  if Not(Assigned(FormCuit_Doc)) then
    FormCuit_Doc:=TFormCuit_Doc.Create(self);
  FormCuit_Doc.id  := DSBase.DataSet.FieldByName('id_fc').Value;
  FormCuit_Doc.Cuit:= DSBase.DataSet.FieldByName('cuit').Value;
  FormCuit_Doc.ShowModal;
  if (FormCuit_Doc.ModalResult=mrok) then
    Recuperar.Execute;

end;

procedure TFormCpbteCtdo_2.CambiarModoDiscIVAExecute(Sender: TObject);
begin
  inherited;
  if (DatosVentasCtdo.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentasCtdo.CDSVentaCabCAE.AsString)>0) then
    Raise Exception.Create (' Facturas Electrónica con CAE, no se puede cambiar....');


  IF (NOT (DatosVentasCtdo.CDSVentaCab.IsEmpty)) and
     (DMMain_FD.UsuarioAdministrador=True) THEN
    BEGIN
       CpbteNuevo:='N';
       DatosVentasCtdo.CDSVentaCab.Edit;
       if DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.Value<>'N' Then
         DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.Value := 'N'
       else
        if DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.Value='N' Then
           DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.Value := 'S';

       //    DatosVentasCtdo.wwCDSVentaCab.Post;
          Confirma.Execute;
     END;
end;

procedure TFormCpbteCtdo_2.CambiarNroExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty)) then
    begin
      if (DatosVentasCtdo.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentasCtdo.CDSVentaCabCAE.AsString)>0) then
        Raise Exception.Create (' Facturas Electrónica con CAE, no se puede Cambiar....');

      if Not(Assigned(FormCambiaNroCpbte)) then
        FormCambiaNroCpbte       := TFormCambiaNroCpbte.Create(FormCpbteCtdo_2);
      FormCambiaNroCpbte.Id      := DSBase.DataSet.FieldByName('id_fc').Value;
      FormCambiaNroCpbte.Num     := DSBase.DataSet.FieldByName('NumeroFac').Value;
      FormCambiaNroCpbte.Suc     := DSBase.DataSet.FieldByName('SucFac').Value;
      FormCambiaNroCpbte.Let     := DSBase.DataSet.FieldByName('LetraFac').Value;
      FormCambiaNroCpbte.Tipo    := DSBase.DataSet.FieldByName('TipoCpbte').Value;
      FormCambiaNroCpbte.Clase   := DSBase.DataSet.FieldByName('ClaseCpbte').Value;
      if Not(VarIsNull(DSBase.DataSet.FieldByName('FechaVta').Value)) Then
        FormCambiaNroCpbte.Fecha   := DSBase.DataSet.FieldByName('FechaVta').Value;
      if Not(VarIsNull(DSBase.DataSet.FieldByName('FechaVta').Value)) Then
        FormCambiaNroCpbte.Fecha2  := DSBase.DataSet.FieldByName('FechaVta').Value;
      FormCambiaNroCpbte.Sucursal:= DSBase.DataSet.FieldByName('Sucursal').Value;
      FormCambiaNroCpbte.CV      := 'V';
      FormCambiaNroCpbte.Showmodal;
      Recuperar.Execute;

    end;
end;

procedure TFormCpbteCtdo_2.CambioDepositoExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty))  then
    begin
      if Not(Assigned(FormcambioDeposito)) then
        formCambioDeposito := TFormcambioDeposito.create(Self);
      FormCambioDeposito.Id      := DatosVentasCtdo.CDSVentaCabID_FC.Value;
      FormCambioDeposito.codigo  := DatosVentasCtdo.CDSVentaCabDEPOSITO.Value;
      FormCambioDeposito.Detalle := DatosVentasCtdo.CDSVentaCabMUESTRADEPOSITO.AsString;

      FormCambioDeposito.ShowModal;
      Recuperar.Execute;
    end;
end;

procedure TFormCpbteCtdo_2.CancelarRecargoTCExecute(Sender: TObject);
var ImporteOld:Real;
begin
  inherited;
  if ItemRedondeo<>'*' Then
    begin
      if DatosVentasCtdo.CDSVentaDet.Locate('CODIGOARTICULO',ItemRedondeo,[]) Then
        begin
          //DatosVentasCtdo.CDSVentaDet.Last;
          DatosVentasCtdo.CDSVentaDet.delete;
          DatosVentasCtdo.CDSVentaDet.First;
          ItemRedondeo:='*';
        end;
    end;
  DatosVentasCtdo.CDSVentaDet.First;
  while noT(DatosVentasCtdo.CDSVentaDet.Eof) do
    begin
      DatosVentasCtdo.CDSVentaDet.Edit;
      DatosVentasCtdo.CDSVentaDetUNI_C_REC.Value:='N';

      // Si es con Iva discrimando Tomo el importe Sin Iva
      if (DatosVentasCtdo.CDSVentaDetDesglozaIVA.Value='S') AND (FormCpbteCtdo_2.DiscriminaIva='S')  Then
        DatosVentasCtdo.CDSVentaDetUnitario_TotalSetText(DatosVentasCtdo.CDSVentaDetUnitario_Total,
                                                         FloatToStr(RoundTo(DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL_OLD.Value,-3)))
      else
        // Si es Sin Iva discrimando Tomo el importe + Iva
        begin
          ImporteOld := DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL_OLD.Value;
          ImporteOld := ImporteOld + DatosVentasCtdo.CDSVentaDetUNITARIO_IVA_OLD.Value;
          ImporteOld := RoundTo(ImporteOld,-4);
          ImporteOld := RoundTo(ImporteOld,-3);
          DatosVentasCtdo.CDSVentaDetUnitario_TotalSetText(DatosVentasCtdo.CDSVentaDetUnitario_Total, FloatToStr(ImporteOld));
        end;

      DatosVentasCtdo.CDSVentaDet.Next;

    end;
// Recalcular.Execute;
end;

procedure TFormCpbteCtdo_2.frFacturaAfterPrintReport(Sender: TObject);
begin
  inherited;
  DMMain_FD.LogFileFD(1,2,'Impresion Fac.Venta: ('+DSBase.DataSet.FieldByName('ID_FC').AsString+') '+ DatosVentasCtdo.CDSVentaCabNROCPBTE.AsString+' Cliente: '+
                      DatosVentasCtdo.CDSVentaCabRAZONSOCIAL.AsString+' Importe :'+FormatFloat('0.00',DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat)+
                     '','FACVTACO');
  Impresa:=True;
end;

procedure TFormCpbteCtdo_2.frFacturaPrintReport(Sender: TObject);
begin
  inherited;
  Impresa:=True;
end;

procedure TFormCpbteCtdo_2.frxPDFExport1BeforeExport(Sender: TObject);
begin
  inherited;
  frxPDFExport1.EmbeddedFonts := True;
  if (TForm(Self.Owner).Name<>'FormControlCompNoImpresos') Then
    frxPDFExport1.FileName      :=(DMMain_FD.MainPath+'Archivos Temporales\Factura_Ctdo'+DatosVentasCtdo.CDSVentaCabNROCPBTE.AsString+'.pdf');
end;

procedure TFormCpbteCtdo_2.GenerarNotaPedidoExecute(Sender: TObject);
var Cont,Renglones:Integer;
begin
  inherited;
   if DMMain_FD.HayNotaPedido(DSBase.DataSet.FieldByName('ID_FC').Value, DSBase.DataSet.FieldByName('TIPOCPBTE').Value) then
     raise Exception.Create('Ya Hay una Nota de Pedido Asociada...');
  //** aca se va a generar Nota de Pedio..
   if not(DSBase.DataSet.IsEmpty) then
     begin
       if Not(Assigned(FormBuscadorTipoCpbte)) then
         FormBuscadorTipoCpbte:= TFormBuscadorTipoCpbte.Create(Application);
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
               DatosVentasCtdo.CDSVentaDet.First;
               while Not(DatosVentasCtdo.CDSVentaDet.Eof)  do
                 begin
                   FormNotaPedidoCliente.Agregar.Execute;
                   AgregarCabNP;
                   while Not(DatosVentasCtdo.CDSVentaDet.Eof) and (Cont<=Renglones)  Do // Ingreso el detalle
                     begin
                      if (DatosVentasCtdo.CDSVentaDetCANTIDAD.AsFloat>0) Then
                        AgregarDetNP;
                       DatosVentasCtdo.CDSVentaDet.Next;
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

procedure TFormCpbteCtdo_2.GenerarOrdenProduccionExecute(Sender: TObject);
begin
  inherited;
//  DMMain_FD.QBuscaOP_PorFc.Close;
//  DMMain_FD.QBuscaOP_PorFc.ParamByName('id').Value:=DatosVentasCtdo.CDSVentaCabID_FC.Value;
//  DMMain_FD.QBuscaOP_PorFc.Open;
//  if DMMain_FD.QBuscaOP_PorFc.Fields[0].AsString<>'' then
  if DMMain_FD.BuscaOP_PorFc(DatosVentasCtdo.CDSVentaCabID_FC.Asinteger) then
    Raise Exception.Create('Hay una orden de Produccion asociada-...');
//  DMMain_FD.QBuscaOP_PorFc.Close;

  if (DSBase.State=dsBrowse) and (Not(dsBase.DataSet.IsEmpty)) and (FormCpbteCtdo_2.GenerarOProducion) and (DMMain_FD.HayProduccion) then
    begin
      if MessageDlg('Va a Generar el Rto.de Produccion, ejecuta el procedimiento??',mtConfirmation,mbYesNo,0,mbNo)=mrYes then
        DAtosVentasCtdo.GenerarRtoProduccion;
    end;
end;

procedure TFormCpbteCtdo_2.GravarNumeroOperacionExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State = dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    begin
      if Not(Assigned(FormNumeroOperacion)) then
        FormNumeroOperacion    :=TFormNumeroOperacion.Create(Self);
      FormNumeroOperacion.Id   :=DatosVentasCtdo.CDSVentaCabID_FC.Value;
      FormNumeroOperacion.Tipo :='FV';
      if (DatosVentasCtdo.CDSVentaCabNUMERO_OPERACION.AsString='') or (length(DatosVentasCtdo.CDSVentaCabNUMERO_OPERACION.AsString)<8) then
        FormNumeroOperacion.Anio:= Copy(DateToStr(DatosVentasCtdo.CDSVentaCabFECHAVTA.AsDateTime),7,4)
      else
        begin
          FormNumeroOperacion.Anio  := Copy(DatosVentasCtdo.CDSVentaCabNUMERO_OPERACION.AsString,1,4);
          FormNumeroOperacion.Numero:= Copy(DatosVentasCtdo.CDSVentaCabNUMERO_OPERACION.AsString,5,4);
        end;
      FormNumeroOperacion.ShowModal;
      Recuperar.Execute;
    end;
end;

procedure TFormCpbteCtdo_2.HacerNCExecute(Sender: TObject);
var Id_NC:Integer;
TextoLog:String;
begin
  if Assigned(FormCpbte_2) then
    begin
      FormCpbte_2.Close;
      FreeANdNil(FormCpbte_2);
    end;

  if (DMMain_FD.AutorizadoHacerNC=False) Then
    raise Exception.Create('No esta Autorizado para esta Operacion....');

  ID_Cta_Caja        := -1;

  if DatosVentasCtdo.CDSVentaCabANULADO.Value='S' then
    Raise Exception.Create('Comprobante anulado...');

  if DatosVentasCtdo.CDSVentaCabMUESTRAID_NC.AsString<>'' then
    Raise Exception.Create('Ya hay una Nota de credito...');

  NroFacAnular:= DatosVentasCtdo.CDSVentaCabNROCPBTE.AsString;
  // Comprobante en el cliente...

  DatosVentasCtdo.QNCPorDefecto.Close;
  DatosVentasCtdo.QNCPorDefecto.ParamByName('codigo').Value:=DatosVentasCtdo.CDSVentaCabCODIGO.Value;
  DatosVentasCtdo.QNCPorDefecto.Open;

  if (DatosVentasCtdo.QNCPorDefecto.Fields[0].AsString='') then
    begin
      DatosVentasCtdo.CDSInscripcion.Close;
      DatosVentasCtdo.CDSInscripcion.Params.ParamByName('Codigo').AsInteger := DatosVentasCtdo.CDSVentaCabTIPOIVA.AsInteger;
      DatosVentasCtdo.CDSInscripcion.Open;
      IF NOT (DatosVentasCtdo.CDSInscripcion.Eof) THEN
        begin
          DatosVentasCtdo.CDSComprobantePorDefecto.Close;
          DatosVentasCtdo.CDSComprobantePorDefecto.Params.ParamByName('desglozaIva').Value:= DatosVentasCtdo.CDSInscripcionDISCRIMINAIVA.Value;
          DatosVentasCtdo.CDSComprobantePorDefecto.Params.ParamByName('sucursal').Value   := DatosVentasCtdo.CDSVentaCabSUCURSAL.Value;
          DatosVentasCtdo.CDSComprobantePorDefecto.Params.ParamByName('compraventa').Value:= 'V';
          DatosVentasCtdo.CDSComprobantePorDefecto.Params.ParamByName('tipo').Value       := 'NC';
          DatosVentasCtdo.CDSComprobantePorDefecto.Open;
          if (DatosVentasCtdo.CDSComprobantePorDefecto.RecordCount=1) and (DatosVentasCtdo.CDSComprobantePorDefecto.Fields[0].AsString<>'') Then
            begin
              IDComprobante      := DatosVentasCtdo.CDSComprobantePorDefecto.Fields[0].AsInteger;
              SucursalComprobante:= DatosVentasCtdo.CDSVentaCabSUCURSAL.Value;
              ID_Cta_Caja        := StrToInt(FrameMovValoresIngreso1.ceCaja.Text);
            end
          else
            begin
              if Not(Assigned(FormBuscadorTipoCpbte)) then
                FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
              FormBuscadorTipoCpbte.TipoCpbte1    := 'NC';
              FormBuscadorTipoCpbte.TipoCpbte2    := '';
              FormBuscadorTipoCpbte.TipoCpbte3    := '';
              FormBuscadorTipoCpbte.CV            := 'V';
              FormBuscadorTipoCpbte.Sucursal      := DatosVentasCtdo.CDSVentaCabSUCURSAL.Value;
              FormBuscadorTipoCpbte.DiscriminaIVA := DatosVentasCtdo.CDSInscripcionDISCRIMINAIVA.AsString;
              FormBuscadorTipoCpbte.ShowModal;
              if FormBuscadorTipoCpbte.ModalResult=mrOk then
                begin
                  SucursalComprobante := FormBuscadorTipoCpbte.Sucursal;
                  IDComprobante       := FormBuscadorTipoCpbte.Id_Cpbte;
                  ID_Cta_Caja         := StrToInt(FrameMovValoresIngreso1.ceCaja.Text);
                end
              else
                Exit;
            end;
        end;
    end
  else
    BEGIN
      if (MessageDlg('Comprobante por defecto NC '+DatosVentasCtdo.QNCPorDefectoDENOMINACION.AsString+' Confirma?',mtInformation,[mbYes, mbNo], 0, mbYes)=mrYes) then
        begin
          SucursalComprobante:= DatosVentasCtdo.QNCPorDefectoSUCURSAL.Value;
          IDComprobante      := DatosVentasCtdo.QNCPorDefectoID_NOTACREDITOPORDEFECTO.Value;
          ID_Cta_Caja        := StrToInt(FrameMovValoresIngreso1.ceCaja.Text);
        end
      else
        begin
          if Not(Assigned(FormBuscadorTipoCpbte)) then
             FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
          FormBuscadorTipoCpbte.TipoCpbte1   := 'NC';
          FormBuscadorTipoCpbte.TipoCpbte2   := '';
          FormBuscadorTipoCpbte.TipoCpbte3   := '';
          FormBuscadorTipoCpbte.CV           := 'V';
          FormBuscadorTipoCpbte.Sucursal     := DatosVentasCtdo.CDSVentaCabSUCURSAL.Value;
          FormBuscadorTipoCpbte.DiscriminaIVA:= DatosVentasCtdo.CDSInscripcionDISCRIMINAIVA.AsString;
          FormBuscadorTipoCpbte.ShowModal;
            if (FormBuscadorTipoCpbte.ModalResult=mrOk) and (FormBuscadorTipoCpbte.NumeracionPropia<>'X') then
              begin
                SucursalComprobante := FormBuscadorTipoCpbte.Sucursal;
                IDComprobante       := FormBuscadorTipoCpbte.Id_Cpbte;
                ID_Cta_Caja         := StrToInt(FrameMovValoresIngreso1.ceCaja.Text);
              end
            else
              Exit;
        end;
    end;

    if ID_Cta_Caja = -1 then
      ID_Cta_Caja:=CajaPorDefecto;

    if Not(Assigned(FormSeleccionCajaNC)) then
      FormSeleccionCajaNC          := TFormSeleccionCajaNC.Create(self);

    FormSeleccionCajaNC.CajaOrigen  := FrameMovValoresIngreso1.CDSCajaMovID_CUENTA_CAJA.Value;
    FormSeleccionCajaNC.CajaDestino := FrameMovValoresIngreso1.CDSCajaMovID_CUENTA_CAJA.Value;
    FormSeleccionCajaNC.ShowModal;
    if FormSeleccionCajaNC.ModalResult=mrOk then
      begin
        ID_Cta_Caja:= FormSeleccionCajaNC.CajaDestino;
        Id_NC := DMMain_FD.Hacer_NC(IDComprobante,DSBase.DataSet.FieldByName('ID_FC').ASInteger,ID_Cta_Caja,date);
        if id_nc>-1 Then
          begin
            if Not(Assigned(FormCpbte_2)) Then
              FormCpbte_2:=TFormCpbte_2.Create(Self);
            FormCpbte_2.DatoNew   :=IntToStr(id_NC);
            FormCpbte_2.TipoCpbte :='NC';
            FormCpbte_2.Recuperar.Execute;
            FormCpbte_2.Show;
            if (FormCpbte_2.DSBase.DataSet.FieldByName('FACTURA_ELECTRONICA').Value='S') and
               (FormCpbte_2.DSBase.DataSet.FieldByName('CAE').ASFloat<=0) then
              FormCpbte_2.Fiscalizar.Execute;
                    TextoLog:= 'Ingreso NC Automatica desde Factura '+DSBase.DataSet.FieldByName('NROCPBTE').AsString+
                                '('+DSBase.DataSet.FieldByName('ID_FC').AsString +')'+' x Valor de '+
                                FormatFloat(',0.00',DSBase.DataSet.FieldByName('TOTAL').AsFloat)+' >> NC-'+DatosVentasCtdo.CDSVentaCabNROCPBTE.AsString+
                                '('+DatosVentasCtdo.CDSVentaCabID_FC.AsString+')';
            DMMain_FD.LogFileFD(1,4,TextoLog,'NCAUTO');
          end
        else
          showMessage('No se Pudo Hacer la NC....');
      end;
end;

procedure TFormCpbteCtdo_2.FrameMovValoresIngreso1BitBtn6Click(Sender: TObject);
begin
  inherited;
  FrameMovValoresIngreso1.PostTCreditoExecute(Sender);

end;

procedure TFormCpbteCtdo_2.FrameMovValoresIngreso1CDSCajaMovAfterDelete(
  DataSet: TDataSet);
var aux:Real;
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovAfterDelete(DataSet);
  FrameMovValoresIngreso1.CalcularValores;
  if Not(FrameMovValoresIngreso1.CDSCajaMov.IsEmpty) Then
    CalcularRecargosTC.Execute;
  aux:= DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat -( FrameMovValoresIngreso1.SumaValores );
  FrameMovValoresIngreso1.lbResto.Caption:= FormatFloat(DatosVentasCtdo.MascaraCabecera,aux);

end;

procedure TFormCpbteCtdo_2.FrameMovValoresIngreso1CDSCajaMovAfterPost(
  DataSet: TDataSet);
var aux:Real;
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovAfterPost(DataSet);
  FrameMovValoresIngreso1.CalcularValores;
  CalcularRecargosTC.Execute;
  aux:= DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat -( FrameMovValoresIngreso1.SumaValores );
  FrameMovValoresIngreso1.lbResto.Caption:= FormatFloat(DatosVentasCtdo.MascaraCabecera,aux);
end;

procedure TFormCpbteCtdo_2.FrameMovValoresIngreso1CDSCajaMovBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  if FrameMovValoresIngreso1.CDSCajaMovID_TPAGO.Value=4 then
    CancelarRecargoTC.Execute;
  FrameMovValoresIngreso1.CDSCajaMovBeforeDelete(DataSet);
end;

procedure TFormCpbteCtdo_2.FreezarExecute(Sender: TObject);
var i:integer;
CDSCab,CDSDet:TClientDataSet;
begin
  inherited;
  if ((DatosVentasCtdo.CDSVentaCab.IsEmpty) or (Not(DSBase.State in [dsInsert]))) Then
    Raise exception.Create('No se puede hacer esta Operacion..');

  if not DirectoryExists(PathFreezerCtdo) then
    CreateDir(PathFreezerCtdo);
  if (Not(DatosVentasCtdo.CDSVentaCab.IsEmpty) and (DatosVentasCtdo.CDSVentaCabTOTAL.AsFloat>0)) and (DSBase.State in [dsInsert]) Then
    begin
      DatosVentasCtdo.CDSVentaCabRENGLONES.Value := DatosVentasCtdo.CDSVentaDet.RecordCount;
      DatosVentasCtdo.CDSVentaCabDebe.ASFloat    := DatosVentasCtdo.CDSVentaCabTotal.AsFloat;

      if DatosVentasCtdo.CDSVentaCab.State in [dsInsert,dsEdit] then
        DatosVentasCtdo.CDSVentaCab.Post;

      if DatosVentasCtdo.CDSVentaDet.State in [dsInsert,dsEdit] then
        DatosVentasCtdo.CDSVentaDet.Post;

      CDSCab:=TClientDataSet.Create(Self);
      CDSCab.CloneCursor(DatosVentasCtdo.CDSVentaCab,True);
//     For i:=0 to CDSCab.FieldCount-1 do
//       begin
//         if CDSCab.Fields[i].Required Then
//           ShowMessage(CDSCab.Fields[i].FieldName+':'+
//         CDSCab.Fields[i].AsString);
//       end;
      CDSDet:=TClientDataSet.Create(Self);
      CDSDet.CloneCursor(DatosVentasCtdo.CDSVentaDet,True);

      CDSCab.SaveToFile(PathFreezerCtdo+'\'+DatosVentasCtdo.CDSVentaCabID_FC.AsString+'-'+DatosVentasCtdo.CDSVentaCabCODIGO.AsString+'-'+DatosVentasCtdo.CDSVentaCabNOMBRE.AsString+'.XML');
      CDSDet.SaveToFile(PathFreezerCtdo+'\'+DatosVentasCtdo.CDSVentaDetID_CABFAC.AsString+'.xm_');
      ShowMessage('Comprobante freezado............');
    end
  else
    ShowMessage('No Hay datos para exportar....');
  FreeAndNil(CDSCab);
  FreeAndNil(CDSDet);

  DatosVentasCtdo.CDSVentaCab.close;
  DatosVentasCtdo.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
  DatosVentasCtdo.CDSVentaCab.Params.ParamByName('id').Clear;
  DatosVentasCtdo.CDSVentaCab.Open;

  DatosVentasCtdo.CDSVentaDet.Close;
  DatosVentasCtdo.CDSVentaDet.Params.ParamByName('id').Clear;
  DatosVentasCtdo.CDSVentaDet.Open;

  DatosVentasCtdo.CDSImpuestos.Close;
  DatosVentasCtdo.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosVentasCtdo.CDSImpuestos.Open;

  DatosVentasCtdo.CDSVtaSubDetalle.Close;
  DatosVentasCtdo.CDSVtaSubDetalle.Params.ParamByName('id').Clear;
  DatosVentasCtdo.CDSVtaSubDetalle.Open;

  DatosVentasCtdo.CDSVtaDetConsig.Close;
  DatosVentasCtdo.CDSVtaDetConsig.Params.ParamByName('id').Clear;
  DatosVentasCtdo.CDSVtaDetConsig.Open;

  btNuevo.SetFocus;
end;

procedure TFormCpbteCtdo_2.DBGrillaDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($CCCCFF);
begin
  inherited;
  if (DatosVentasCtdo.CDSVentaDetUnitario_Total.AsFloat<DatosVentasCtdo.CDSVentaDetCosto_Total.AsFloat) Then
    if (gdFocused in State) then
      begin
        DBGrillaDetalle.canvas.brush.color := ClBlack;
        DBGrillaDetalle.canvas.Font.color  := clWhite;
      end
    else
      begin
        DBGrillaDetalle.canvas.brush.color := clPaleRed;
     end;
   DBGrillaDetalle.Canvas.Font.Style:=[];
   if (DatosVentasCtdo.CDSVentaDetMargen.AsFloat<DatosVentasCtdo.MargenUtilidad) and
      (DatosVentasCtdo.CDSVentaDetCodigoArticulo.AsString<>'') and
      (DatosVentasCtdo.CDSVentaDetMargen.AsFloat<>0) and
      (DatosVentasCtdo.CDSVentaDetMargen.AsString<>'') then
    DBGrillaDetalle.Canvas.Font.Style:=[fsBold];

  if (DatosVentasCtdo.CDSVentaDetDE_PRODUCCION.AsString='S') then
    DBGrillaDetalle.Canvas.Font.Color:=clBlue;

  if (DatosVentasCtdo.CDSVentaDetPERCIBE_IVA.AsString='S') and (DataCol=0) then
    DBGrillaDetalle.Canvas.Brush.Color:=clAqua;

  if (gdFocused in State) then
    begin
      DBGrillaDetalle.canvas.brush.color := ClBlack;
      DBGrillaDetalle.canvas.Font.color  := clWhite;
    end;

    DBGrillaDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormCpbteCtdo_2.EditarProduccionExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State in [dsInsert]) and (DatosVentasCtdo.CDSVentaDetDE_PRODUCCION.Value='S') Then
    begin
      FormCpbte_Produccion.Codigo  := DatosVentasCtdo.CDSVentaDetCodigoArticulo.AsString;
      DatosVentasCtdo.CDSFc_Prod_DetCANTIDADSetText(DatosVentasCtdo.CDSFc_Prod_DetCANTIDAD,FormatFloat('0.00',DatosVentasCtdo.CDSVentaDetCANTIDAD.AsFloat));
      FormCpbte_Produccion.dbgDetalle.DataSource := DatosVentasCtdo.DSFc_Prod_Mov;
      FormCpbte_Produccion.edCodigo.DataSource   := DatosVentasCtdo.DSFc_Prod_Det;
      FormCpbte_Produccion.edDetalle.DataSource  := DatosVentasCtdo.DSFc_Prod_Det;
      FormCpbte_Produccion.edCantidad.DataSource := DatosVentasCtdo.DSFc_Prod_Det;
      FormCpbte_Produccion.ShowModal;
      FormCpbteCtdo_2.DBGrillaDetalle.SelectedIndex:=FormCpbteCtdo_2.DBGrillaDetalle.SelectedIndex+1;
    end
  else
    if (DSBase.DataSet.State in [dsBrowse]) and (DatosVentasCtdo.CDSVentaDetDE_PRODUCCION.Value='S') Then
      begin
        FormCpbte_Produccion.Codigo  := DatosVentasCtdo.CDSVentaDetCodigoArticulo.AsString;
        FormCpbte_Produccion.dbgDetalle.DataSource := DatosVentasCtdo.DSFc_Prod_Mov;
        FormCpbte_Produccion.edCodigo.DataSource   := DatosVentasCtdo.DSFc_Prod_Det;
        FormCpbte_Produccion.edDetalle.DataSource  := DatosVentasCtdo.DSFc_Prod_Det;
        FormCpbte_Produccion.edCantidad.DataSource := DatosVentasCtdo.DSFc_Prod_Det;

        FormCpbte_Produccion.ShowModal;
  //      FormCpbteCtdo_2.DBGrillaDetalle.SelectedIndex:=FormCpbteCtdo_2.DBGrillaDetalle.SelectedIndex+1;
    end;

end;

procedure TFormCpbteCtdo_2.EnviarCorreoExecute(Sender: TObject);
var DiscrIva,CCopia:String;
MandarCorreo:Boolean;
begin
  inherited;
  DiscrIva                      := FormCpbteCtdo_2.DiscriminaIva;
  FormCpbteCtdo_2.DiscriminaIva := 'S';

  MandarCorreo:=True;
  if not DirectoryExists(DMMain_FD.MainPath+'Archivos Temporales') then
    CreateDir(DMMain_FD.MainPath+'Archivos Temporales');

  frFactura.PrintOptions.Printer:=PrNomCpbte;
  frFactura.SelectPrinter;

  DatosVentasCtdo.QComprob.Close;
  DatosVentasCtdo.QComprob.ParamByName('id').Value :=DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTE.Value;
  DatosVentasCtdo.QComprob.ParamByName('suc').Value:=DatosVentasCtdo.CDSVentaCabSUCURSAL.Value;
  DatosVentasCtdo.QComprob.ParamByName('desglozaIva').Value:='*';
  DatosVentasCtdo.QComprob.Open;

  if FileExists(DMMain_FD.PathReportesCpbte+'\Mail_'+DatosVentasCtdo.QComprobREPORTE.AsString) then
    frFactura.LoadFromFile(DMMain_FD.PathReportesCpbte+'\Mail_'+DatosVentasCtdo.QComprobREPORTE.AsString)
  else
    frFactura.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosVentasCtdo.QComprobREPORTE.AsString);

//  DMMain_FD.QOpciones.Close;
  DatosVentasCtdo.QComprob.Close;
  frFactura.PrepareReport;

  frxPDFExport1.ShowDialog    := False;
  frxPDFExport1.EmbeddedFonts := True;
  frxPDFExport1.FileName      :=(DMMain_FD.MainPath+'Archivos Temporales\Factura_Ctdo'+DatosVentasCtdo.CDSVentaCabNROCPBTE.AsString+'.pdf');
  frFactura.Export(frxPDFExport1);
  frxPDFExport1.ShowDialog:=True;

  DatosVentasCtdo.CorreoDestino:= DMMain_FD.GetCorreoCliente_1(DSBase.DataSet.FieldByName('Codigo').AsString);
  ccopia                       := DMMain_FD.GetCorreoCliente_2(DSBase.DataSet.FieldByName('Codigo').AsString);

  if (TForm(Self.Owner).Name='FormFiscalizacionLote') and (Trim(DatosVentasCtdo.CorreoDestino)='') then
    MandarCorreo:=False;

  if (DatosVentasCtdo.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and
     (Trunc(DatosVentasCtdo.CDSVentaCabCAE.AsFloat)<=0) then
    MandarCorreo:=False;
  // Si no tiene correo no mando nada...
  if MandarCorreo then
    begin
      if Not(Assigned(FormCorreo)) Then
        FormCorreo:=TFormCorreo.Create(Application);
      FormCorreo.CorreoOrigen        :=DirCorreo;
      FormCorreo.edDireccion.Text    :=DatosVentasCtdo.CorreoDestino;
      FormCorreo.Remitente           :=Remitente;
      FormCorreo.Destinatario        :=DatosVentasCtdo.CDSVentaCabNOMBRE.AsString;
      FormCorreo.Puerto              :=Puerto;
      FormCorreo.CorreoDestino       :=DatosVentasCtdo.CorreoDestino;
      FormCorreo.CCopia              :=CCopia;
      FormCorreo.NombreServidorCorreo:=NombreServidor;
      FormCorreo.NombreCuentaCorreo  :=NombreCuenta;
      FormCorreo.Clave               :=Clave;
      FormCorreo.Autenticacion       :=Autotenticacion;
      FormCorreo.Asunto              :='Factura Ctdo- '+ DatosVentasCtdo.CDSVentaCabLETRAFAC.AsString+
                                       '-'+ DatosVentasCtdo.CDSVentaCabSUCFAC.AsString+
                                       '-'+ DatosVentasCtdo.CDSVentaCabNUMEROFAC.AsString+
                                       ' del '+ FormatDateTime('dd-mm-yy',DatosVentasCtdo.CDSVentaCabFECHAVTA.AsDateTime);
      FormCorreo.Adjuntos.Add(DMMain_FD.MainPath+'Archivos Temporales\Factura_Ctdo'+DatosVentasCtdo.CDSVentaCabNROCPBTE.AsString+'.pdf');
      if AutoEnviarCorreo=False then
        FormCorreo.Show
      else
        begin
          FormCorreo.Enviar.Execute;
        end;
      AutoEnviarCorreo:=False;
    end;
  FormCpbteCtdo_2.DiscriminaIva:=DiscrIva;
  DatosVentasCtdo.CDSVentaDet.Refresh;

end;

procedure TFormCpbteCtdo_2.ExportarXMLExecute(Sender: TObject);
begin
  inherited;
  if not DirectoryExists(DMMain_FD.MainPath+'Archivos Temporales') then
    CreateDir(DMMain_FD.MainPath+'Archivos Temporales');
  if Not(DatosVentasCtdo.CDSVentaCab.IsEmpty)  Then
    begin
      DatosVentasCtdo.CDSVentaCab.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaCab.XML');
      DatosVentasCtdo.CDSVentaDet.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaDet.XML');
      DatosVentasCtdo.CDSImpuestos.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaImp.XML');

      FrameMovValoresIngreso1.CDSCajaMov.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\CajaMov.XML');
      FrameMovValoresIngreso1.CDSChe3.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\Che3.XML');
      FrameMovValoresIngreso1.CDSMovEfectivo.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\MovEfectivo.XML');
      FrameMovValoresIngreso1.CDSMovTCredito.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\MovTCredito.XML');
      FrameMovValoresIngreso1.CDSTransBco.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\TranBco.XML');
    end
  else
    ShowMessage('No Hay datos para exportar....');
  ShowMessage('Datos exportados....');

end;

procedure TFormCpbteCtdo_2.Exportar_Pdf(Direcorio: String);
var DiscrIVA:String;
begin
  DiscrIva                      := FormCpbteCtdo_2.DiscriminaIva;
  FormCpbteCtdo_2.DiscriminaIva := 'S';

  frFactura.PrintOptions.Printer:=PrNomCpbte;
  frFactura.SelectPrinter;

  DatosVentasCtdo.QComprob.Close;
  DatosVentasCtdo.QComprob.ParamByName('id').Value :=DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTE.Value;
  DatosVentasCtdo.QComprob.ParamByName('suc').Value:=DatosVentasCtdo.CDSVentaCabSUCURSAL.Value;
  DatosVentasCtdo.QComprob.ParamByName('desglozaIva').Value:='*';
  DatosVentasCtdo.QComprob.Open;

  if FileExists(DMMain_FD.PathReportesCpbte+'\Mail_'+DatosVentasCtdo.QComprobREPORTE.AsString) then
    frFactura.LoadFromFile(DMMain_FD.PathReportesCpbte+'\Mail_'+DatosVentasCtdo.QComprobREPORTE.AsString)
  else
    frFactura.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosVentasCtdo.QComprobREPORTE.AsString);

  DatosVentasCtdo.QComprob.Close;
  frFactura.PrepareReport();
  frxPDFExport1.ShowDialog    := False;
  frxPDFExport1.EmbeddedFonts := True;
  frxPDFExport1.FileName      :=(Direcorio+DatosVentasCtdo.CDSVentaCabNROCPBTE.AsString+'.pdf');
  frFactura.Export(frxPDFExport1);
  frxPDFExport1.ShowDialog:=True;
  DatosVentasCtdo.QComprob.Close;
  FormCpbteCtdo_2.DiscriminaIva  :=DiscrIva;

end;

procedure TFormCpbteCtdo_2.ExpresarUnidadesenEnteros1Click(Sender: TObject);
begin
  inherited;
  ExpresarUnidadesenEnteros1.Checked:= not(ExpresarUnidadesenEnteros1.Checked);
  DBGrillaDetalle.Refresh;
end;

procedure TFormCpbteCtdo_2.PegarDetalleExecute(Sender: TObject);
begin
  inherited;
  shPP.Visible:=False;
  if (DSBase.State in [dsInsert,dsEdit]) and (ActiveControl is TDBGrid) Then
    begin
      DatosVentasCtdo.CDSDetalleXML.LoadFromFile(DMMain_FD.MainPath +'Archivos Temporales\FcVtaDet.XML');
      DatosVentasCtdo.CDSDetalleXML.First;
      while not(DatosVentasCtdo.CDSDetalleXML.Eof) do
        begin
          DatosVentasCtdo.CDSVentaDet.Insert;
          DatosVentasCtdo.CDSVentaDetCodigoArticulo.Text  := DatosVentasCtdo.CDSDetalleXML.FieldByName('CODIGOArticulo').AsString;
          DatosVentasCtdo.CDSVentaDetDetalle.AsString     := DatosVentasCtdo.CDSDetalleXML.FieldByName('Detalle').AsString;
          DatosVentasCtdo.CDSVentaDetCantidad.Text        := DatosVentasCtdo.CDSDetalleXML.FieldByName('Cantidad').AsString;
          DatosVentasCtdo.CDSVentaDetUnitario_Total.Text  := DatosVentasCtdo.CDSDetalleXML.FieldByName('Unitario_Total').AsString;
          DatosVentasCtdo.CDSVentaDet.Post;
          DatosVentasCtdo.CDSDetalleXML.Next;
        end;
    end;

end;

procedure TFormCpbteCtdo_2.PrevExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursal  ='+DSBase.DataSet.FieldByName('SUCURSAL').AsString +
             ' and letraFac = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRAFAC').AsString,'''');
  inherited;

end;

procedure TFormCpbteCtdo_2.CopiaralPortaPapelesdeWindows1Click(Sender: TObject);
begin
  inherited;
  DMMain_FD.CopiarClipBoard(DBGrillaDetalle);
end;

procedure TFormCpbteCtdo_2.CopiarDetalleExecute(Sender: TObject);
begin
  inherited;
  if not DirectoryExists(DMMain_FD.MainPath+'Archivos Temporales') then
    CreateDir(DMMain_FD.MainPath+'Archivos Temporales');
  if Not(DatosVentasCtdo.CDSVentaCab.IsEmpty)  Then
    begin
//      DatosVentasCtdo.wwCDSVentaCab.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaCab.XML');
      DatosVentasCtdo.CDSVentaDet.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaDet.XML');
//      DatosVentasCtdo.wwCDSImpuestos.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaImp.XML');
    end
  else
    ShowMessage('No Hay datos para Copiar....');
  shPP.Visible:=True;

end;

procedure TFormCpbteCtdo_2.ClonarFcExecute(Sender: TObject);
var i:byte;
Nombre,EstadoModoFormulario:String;
id_comprobante:String;
begin
  inherited;
  if DMMain_FD.BuscaOP_PorFc(DatosVentasCtdo.CDSVentaCabID_FC.AsInteger) then
    Raise Exception.Create('Hay una orden de Produccion asociada-...');

  if (DatosVentasCtdo.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (DatosVentasCtdo.CDSVentaCabCAE.AsFloat>0) then
    Raise Exception.Create('Factura Electronica no se puede hacer esta Operacion...');

  if (DatosVentasCtdo.CDSVentaCabINGRESA_LIBRO_IVA.Value='S') and (DMMain_FD.UsuarioAdministrador=False) then
    Raise Exception.Create('No se permite clonar una factura del tipo Fiscal...');

  if (DatosVentasCtdo.CDSVentaCabINGRESA_LIBRO_IVA.Value='S') and (DMMain_FD.UsuarioAdministrador=False) then
    Raise Exception.Create('No se permite clonar una factura del tipo Fiscal...');

  if (DSBase.DataSet.State = dsBrowse) and (not(DSBase.DataSet.IsEmpty)) then
    begin
      id_Old:=DatosVentasCtdo.CDSVentaCabID_FC.Value;
      DatosVentasCtdo.CDSVentaCab.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaCab.XML');
      DatosVentasCtdo.CDSVentaDet.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaDet.XML');

      DatosVentasCtdo.CDSFcVtaCabXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\fcvtacab.xml');
      DatosVentasCtdo.CDSDetalleXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\fcvtadet.xml');
      Agregar.Execute;
      DuplicarFc                   := True;
      EstadoModoFormulario         := FormCpbteCtdo_2.DiscriminaIva;
      FormCpbteCtdo_2.DiscriminaIva:= 'S';
      DatosVentasCtdo.CDSVentaCabCODIGOSetText(DatosVentasCtdo.CDSVentaCabCODIGO,DatosVentasCtdo.CDSFcVtaCabXML.FieldByName('CODIGO').AsString);

      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
      FormBuscadorTipoCpbte.TipoCpbte1   := 'FO';
      FormBuscadorTipoCpbte.TipoCpbte2   := '';
      FormBuscadorTipoCpbte.TipoCpbte3   := '';
      FormBuscadorTipoCpbte.CV           := 'V';
      FormBuscadorTipoCpbte.Sucursal     := DatosVentasCtdo.CDSVentaCabSUCURSAL.AsInteger;
      FormBuscadorTipoCpbte.DiscriminaIVA:= DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.AsString;
      FormBuscadorTipoCpbte.ShowModal;

      id_comprobante:='';

      if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
         id_comprobante:=IntToStr(FormBuscadorTipoCpbte.Id_Cpbte)
      else
         id_comprobante:='';

      if id_comprobante<>'' then
        begin
          For i:=0 to DatosVentasCtdo.CDSFcVtaCabXML.FieldCount-1 do
            begin
              if DatosVentasCtdo.CDSVentaCab.FindField(DatosVentasCtdo.CDSFcVtaCabXML.Fields[i].FieldName)<>nil Then
                begin
                  Nombre:=DatosVentasCtdo.CDSFcVtaCabXML.Fields[i].FieldName;
                  if (Nombre<>'ID_FC') and (Nombre<>'TIPOCPBTE') and (Nombre<>'CLASECPBTE') and (Nombre<>'NROCPBTE') and
                     (Nombre<>'LETRAFAC') and (Nombre<>'SUCFAC') and (Nombre<>'NUMEROFAC') and (Nombre<>'RENGLONES') and
                     (Nombre<>'DESGLOZAIVA') Then
                    DatosVentasCtdo.CDSVentaCab.FieldByName(Nombre).Value:=DatosVentasCtdo.CDSFcVtaCabXML.FieldByName(Nombre).Value;
                end;
            end;

          DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTE,id_comprobante);

          DatosVentasCtdo.CDSVentaCabIMPRESO.Value     :='N';
          DatosVentasCtdo.CDSVentaCabCPTE_MANUAL.Value :='N';
          while not(DatosVentasCtdo.CDSDetalleXML.Eof) do
            begin
              DatosVentasCtdo.CDSVentaDet.Append;
              For i:=0 to DatosVentasCtdo.CDSDetalleXML.FieldCount-1 do
                begin
                  if DatosVentasCtdo.CDSVentaDet.FindField(DatosVentasCtdo.CDSDetalleXML.Fields[i].FieldName)<>nil Then
                    begin
                      Nombre:=DatosVentasCtdo.CDSDetalleXML.Fields[i].FieldName;
                      if Nombre<>'ID' Then
                        DatosVentasCtdo.CDSVentaDet.FieldByName(Nombre).Value:=DatosVentasCtdo.CDSDetalleXML.FieldByName(Nombre).Value;
                    end;
                end;
              DatosVentasCtdo.CDSVentaDetDESGLOZAIVA.Value := DatosVentasCtdo.CDSVentaCabDESGLOZAIVA.Value;
              DatosVentasCtdo.CDSVentaDetId_CabFac.Value   := DatosVentasCtdo.CDSVentaCabID_FC.Value;
              DatosVentasCtdo.CDSVentaDetTIPOCPBTE.Value   := DatosVentasCtdo.CDSVentaCabTIPOCPBTE.Value;
              DatosVentasCtdo.CDSVentaDetCLASECPBTE.Value  := DatosVentasCtdo.CDSVentaCabCLASECPBTE.Value;
              DatosVentasCtdo.CDSVentaDetNROCPBTE.Value    := DatosVentasCtdo.CDSVentaCabNROCPBTE.Value;
              DatosVentasCtdo.CDSVentaDetCANTIDADSetText(DatosVentasCtdo.CDSVentaDetCANTIDAD,DatosVentasCtdo.CDSVentaDetCANTIDAD.AsString);

              if DatosVentasCtdo.CDSVentaDetDESGLOZAIVA.AsString='N' then
                DatosVentasCtdo.CDSVentaDetUNITARIO_TOTALSetText(DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL,
                                                                 FloatToStr(DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL.AsFloat +
                                                                            DatosVentasCtdo.CDSVentaDetIVA_UNITARIO.AsFloat))
              else
                DatosVentasCtdo.CDSVentaDetUNITARIO_TOTALSetText(DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL,
                                                                 DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL.AsString);


              DatosVentasCtdo.CDSVentaDet.Post;

              DatosVentasCtdo.CDSDetalleXML.Next;
            end;
        end
      else
        Cancelar.Execute;

      FormCpbteCtdo_2.DiscriminaIva:=EstadoModoFormulario;
    end;
  DBGrillaDetalle.ReadOnly:=True;
end;

procedure TFormCpbteCtdo_2.lsPreciosClick(Sender: TObject);
var Enter:Char;
begin
  inherited;
  Enter:=#13;
  gbPrecioTabla.Visible:=False;
  DatosVentasCtdo.CDSVentaDetUnitario_TotalSetText(DatosVentasCtdo.CDSVentaDetUnitario_Total,lsPrecios.Items.Strings[lsPrecios.itemindex]);
  DBGrillaDetalleKeyPress(Sender,Enter);
end;

procedure TFormCpbteCtdo_2.FormKeyPress(Sender: TObject; var Key: Char);
begin

// if (Key = #13) and
//    (not (ActiveControl is TListBox)) Then
  inherited;

end;

procedure TFormCpbteCtdo_2.FormResize(Sender: TObject);
begin
  inherited;
  if FormCpbteCtdo_2<>nil then
    if FormCpbteCtdo_2.Width<>912 then
      FormCpbteCtdo_2.Width:=912;

end;

procedure TFormCpbteCtdo_2.lsPreciosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 Then
    begin
      gbPrecioTabla.Visible:=False;
      DatosVentasCtdo.CDSVentaDetUnitario_TotalSetText(DatosVentasCtdo.CDSVentaDetUnitario_Total,lsPrecios.Items.Strings[lsPrecios.itemindex]);
    end;
end;

end.
