unit UPresupuesto_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs,Librerias,
  UABMBase, frxClass, frxExportRTF, frxDBSet,Graphics,Variants,StrUtils,
  Grids, DBGrids, Menus, frxExportImage, frxExportText, frxExportPDF,
  frxDMPExport, DataExport, DataToXLS, DB, DBCtrls, StdCtrls, JvArrowButton,
  ComCtrls, JvExMask, JvSpin, JvDBSpinEdit,   JvExDBGrids,
  JvDBGrid, Mask, ExtCtrls, JvComponentBase, JvFormPlacement, ImgList,
  ActnList, JvLabel, JvDBControls, JvExControls,
  JvGradient, Buttons, ToolWin, JvToolEdit, FMTBcd, SqlExpr,
  DBXCommon, ClipBrd, CheckLst,IniFiles,Math, System.Actions, JvAppStorage,
  JvAppIniStorage,VirtualUI_SDK, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCheckBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, JvMaskEdit,Datasnap.DBClient, JvBaseEdits,
  AdvPanel, AdvGaugeCircle,UCargaSectorObras, frxExportBaseDialog, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  System.ImageList,Registry, AdvCustomComponent, Vcl.OleCtrls,DateUtils,
  dxSkinWXI, frCoreClasses, AdvSmoothButton;

type
  TFormPresupuesto_2 = class(TFormABMBase)
    pnCabecera: TPanel;
    dbtMuestraComprob: TDBText;
    DBText73: TDBText;
    DBText4: TDBText;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeConVta: TDBEdit;
    dbeNombre: TDBEdit;
    dbeLdr: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeDeposito: TDBEdit;
    pcDetallePresupuesto: TPageControl;
    PagDetalles: TTabSheet;
    Label17: TLabel;
    Bevel21: TBevel;
    DBText60: TDBText;
    Label1: TLabel;
    dbeObservaciones2: TDBEdit;
    dbeObservaciones1: TDBEdit;
    PagPieCpbte: TTabSheet;
    frPresupuesto: TfrxReport;
    frDBCabecera: TfrxDBDataset;
    frDBDetalle: TfrxDBDataset;
    frDBDImpuestos: TfrxDBDataset;
    Imprimir: TAction;
    BuscarArticulo: TAction;
    BuscarTipoCpbte: TAction;
    BuscarCliente: TAction;
    BuscarLdr: TAction;
    BuscarSucursal: TAction;
    BuscarDeposito: TAction;
    BuscarCondVenta: TAction;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    dbeMuestraVendedor: TDBEdit;
    BuscadorVendedor: TAction;
    Exportar: TAction;
    SpeedButton1: TSpeedButton;
    DatosCliente: TAction;
    pnCosto: TPanel;
    dbtCosto: TDBText;
    Label8: TLabel;
    dbtDetalle: TDBText;
    gbLista: TGroupBox;
    dbcLista: TDBLookupComboBox;
    Recalcular: TAction;
    EnviarCorreo: TAction;
    pnAvisoFUAP: TPanel;
    DataToXLS: TDataToXLS;
    SaveDialog: TSaveDialog;
    frxDBEmpresa: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    PagNotas: TTabSheet;
    dbrNotas: TDBRichEdit;
    Label5: TLabel;
    GenerarNotaPedido: TAction;
    dbeNotas: TDBEdit;
    DBGrillaDetalle: TJvDBGrid;
    dbtFechaVtoPresupuesto: TDBText;
    dbeDias: TJvDBSpinEdit;
    btnEnviarCorreo: TSpeedButton;
    SelectAll: TAction;
    UnselectAll: TAction;
    pm1: TPopupMenu;
    SeleccioanrTodos1: TMenuItem;
    SacarTodos1: TMenuItem;
    bt1: TBitBtn;
    bt2: TBitBtn;
    GenerarFacturaCC: TAction;
    btMenu: TJvArrowButton;
    pm2: TPopupMenu;
    GenerarNotadePedido1: TMenuItem;
    Buscar1: TMenuItem;
    GenerarNdeVta: TAction;
    N1: TMenuItem;
    GenerarNdeVta1: TMenuItem;
    ReHabilitar: TAction;
    GenerarRto: TAction;
    GenerarRto1: TMenuItem;
    dbtIdPresupuesto: TDBText;
    RxDBESucursal: TJvDBComboEdit;
    RxDBECodigo: TJvDBComboEdit;
    RxDBELdr: TJvDBComboEdit;
    RxDBEDeposito: TJvDBComboEdit;
    RxDBEConVta: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    rxcVendedor: TJvDBComboEdit;
    N2: TMenuItem;
    N3: TMenuItem;
    dbeFechaVta: TJvDBDateEdit;
    ActualizaMonedas: TAction;
    DBText9: TDBText;
    N4: TMenuItem;
    ActualizarCotizacionesdelosArticulosconOtrasMonedas1: TMenuItem;
    DBText10: TDBText;
    CopiarDetalle: TAction;
    PegarDetalle: TAction;
    N5: TMenuItem;
    PegarDetalle1: TMenuItem;
    N6: TMenuItem;
    DBText11: TDBText;
    DBText12: TDBText;
    frDBSucursal: TfrxDBDataset;
    CopiarPortaPapeles: TAction;
    N7: TMenuItem;
    CopiaPortaPapelesdeWindows1: TMenuItem;
    pnColumnas: TPanel;
    chklstColumnas: TCheckListBox;
    btnSalirColumna: TButton;
    Columnas: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    ImprimirFormatoProforma1: TMenuItem;
    PrintProforma: TAction;
    DBText13: TDBText;
    DBText14: TDBText;
    CambiarFecha: TAction;
    N10: TMenuItem;
    CambiarFecha1: TMenuItem;
    GenerarFcCtdo: TAction;
    GenerarFcdeCtdo1: TMenuItem;
    BuscarPorObs: TAction;
    CambiarCliente: TAction;
    CambiarCliente1: TMenuItem;
    VerporCodigoAlternativo1: TMenuItem;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorDeposito: TComBuscador;
    ComBuscadorLdr: TComBuscador;
    ComBuscadorCondVta: TComBuscador;
    ComBuscadorVendedor: TComBuscador;
    dbIdFactura: TDBText;
    pagAgrupadoItems: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1ID_CABPRES: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1MODO_GRAVAMEN: TcxGridDBColumn;
    cxGrid1DBTableView1AFECTA_STOCK: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1IVA_TASA: TcxGridDBColumn;
    cxGrid1DBTableView1DESCUENTO: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1ACEPTADO: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM_NRO: TcxGridDBColumn;
    pnDscto: TPanel;
    Label3: TLabel;
    dbeDscto2: TDBEdit;
    JvDBMaskEdit1: TJvDBMaskEdit;
    dbTotal: TJvDBMaskEdit;
    N12: TMenuItem;
    ExportarDetalle1: TMenuItem;
    VertItemAgrupado: TMenuItem;
    cxGrid1DBTableView1UNITARIO_TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRAITEM: TcxGridDBColumn;
    DBText8: TDBText;
    pnFc: TPanel;
    CopiarPresupuesto: TAction;
    dbIdRto: TDBText;
    N13: TMenuItem;
    CalcularDetallexlosIVA1: TMenuItem;
    pagSumaItems: TTabSheet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid2DBTableView1TOTAL_GRAVADO: TcxGridDBColumn;
    cxGrid2DBTableView1ITEM_NRO: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    frxDBDSubDet: TfrxDBDataset;
    cxGrid2DBTableView1DETALLE: TcxGridDBColumn;
    pmPrint: TPopupMenu;
    ImprimeUnitario1: TMenuItem;
    ImprimeTotal1: TMenuItem;
    cxGrid2DBTableView1TOTAL_NETO: TcxGridDBColumn;
    MostrarTasaIva: TMenuItem;
    MostrarUnidadesVta: TMenuItem;
    MostrarUnitarioNeto: TMenuItem;
    edTotalNeto: TJvMaskEdit;
    N14: TMenuItem;
    SaltearDescto1: TMenuItem;
    SaltearItem1: TMenuItem;
    dbeReferencia: TDBEdit;
    RxLabel5: TLabel;
    RxLabel1: TLabel;
    JvLabel1: TLabel;
    RxLabel58: TLabel;
    RxLabel59: TLabel;
    RxLabel60: TLabel;
    RxLabel62: TLabel;
    RxLabel2: TLabel;
    RxLabel3: TLabel;
    RxLabel4: TLabel;
    RxLabel6: TLabel;
    RxLabel7: TLabel;
    RxLabel8: TLabel;
    RxLabel9: TLabel;
    JvLabel2: TLabel;
    JvLabel3: TLabel;
    Label7: TLabel;
    pnReferencia: TPanel;
    BuscarPorReferencia: TAction;
    ClonarPresupuesto: TAction;
    DuplicarPresupuesto: TAction;
    GenerarOProduccion: TAction;
    GenerarOdeProduccion1: TMenuItem;
    DuplicarPresupuesto1: TMenuItem;
    dbchFinanciero: TDBCheckBox;
    dbchTecnica: TDBCheckBox;
    edFechaFinanciera: TJvDBDateEdit;
    edFechaTecnica: TJvDBDateEdit;
    edFechaEntrega: TJvDBDateEdit;
    lbPlazo: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edFechaOC: TJvDBDateEdit;
    Label11: TLabel;
    dbeOCompra: TDBEdit;
    dbePlazoEntrega: TDBEdit;
    pnMuestraImpuestos: TAdvPanel;
    Label16: TLabel;
    Bevel1: TBevel;
    Bevel22: TBevel;
    Bevel28: TBevel;
    Bevel32: TBevel;
    Bevel6: TBevel;
    DBText1: TDBText;
    DBText15: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    Label14: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    lbPercep: TLabel;
    dbtImporte_IB: TDBText;
    dbtTasa_IB: TDBText;
    Label2: TLabel;
    DBGrillaIva: TDBGrid;
    dbeDscto: TDBEdit;
    spOProduccion: TSpeedButton;
    MostrarEspecificacion: TMenuItem;
    gaClon: TAdvGaugeCircle;
    AplicarDsctoTodo: TAction;
    N15: TMenuItem;
    AplicarDsctoaTodo1: TMenuItem;
    N16: TMenuItem;
    cxGrid1DBTableView1ITEM_CONDETALLE: TcxGridDBColumn;
    ModoDuplicacion: TMenuItem;
    spIncidencias: TSpeedButton;
    Incidencias: TAction;
    gbObra: TGroupBox;
    MostrarObra1: TMenuItem;
    Label13: TLabel;
    dbtOProd: TDBText;
    pnPrevSigui: TPanel;
    lbPrev: TLabel;
    lbSig: TLabel;
    Label15: TLabel;
    cxGrid1DBTableView1TOTAL_FINAL: TcxGridDBColumn;
    cxGrid2DBTableView1TOTAL_UNIT_FINAL: TcxGridDBColumn;
    cxGrid2DBTableView1TOTAL_FINAL: TcxGridDBColumn;
    AgendarTarea: TAction;
    spAgendarTareas: TSpeedButton;
    dbcObraSector: TDBLookupComboBox;
    Label18: TLabel;
    spNuevoSector: TSpeedButton;
    NuevoSector: TAction;
    Label19: TLabel;
    Label22: TLabel;
    ReHabilitar1: TMenuItem;
    N17: TMenuItem;
    MarcarAceptado: TAction;
    MarcarRevision: TAction;
    MarcarAcpetado1: TMenuItem;
    MarcarRevision1: TMenuItem;
    JvDBStatusLabel1: TJvDBStatusLabel;
    DeshabilitarSumaDetalle1: TMenuItem;
    GenerarTk: TAction;
    BuscarPresupuesto: TAction;
    GenerarTk1: TMenuItem;
    chbImprimeDirecto: TCheckBox;
    N18: TMenuItem;
    Label23: TLabel;
    dbcTipoObra: TDBLookupComboBox;
    Label24: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    dbchTienePlano: TDBCheckBox;
    dbcPercibeIIBB: TDBCheckBox;
    GenerarFcAnticipo: TAction;
    GenerarFacturaAnticipo1: TMenuItem;
    Panel2: TPanel;
    Label25: TLabel;
    DBText16: TDBText;
    edObra: TJvDBComboEdit;
    edMuestraObra: TDBEdit;
    ComBuscadorObra: TComBuscador;
    BuscarObra: TAction;
    spNuevaObra: TSpeedButton;
    NuevaObra: TAction;
    Panel3: TPanel;
    dbeFechaRevision: TJvDBDateEdit;
    Label12: TLabel;
    btNuevoCliente: TSpeedButton;
    AgregarCliente: TAction;
    N19: TMenuItem;
    ResetColumnas: TAction;
    ResetColumnas1: TMenuItem;
    lbModoCpbte: TLabel;
    lbAcopio: TLabel;
    ToolButton2: TToolButton;
    spAcopiar: TSpeedButton;
    Acopiar: TAction;
    MostrarMargen: TMenuItem;
    lbNeto: TDBText;
    lbMargen: TDBText;
    OpenDialog1: TOpenDialog;
    Label26: TLabel;
    Label27: TLabel;
    RecalcularMargen: TAction;
    RecalcularMargen1: TMenuItem;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    CambiarFechaVto: TAction;
    CambiarFechaVto1: TMenuItem;
    dbgPercepcionesIVA: TDBGrid;
    dblMoneda: TDBLookupComboBox;
    CambiarNroCpbte: TAction;
    CambiarNroCpbte1: TMenuItem;
    ModificarDatosCabecera: TAction;
    ModificarDatosCabecera1: TMenuItem;
    SpeedButton2: TSpeedButton;
    lbACobrar: TLabel;
    EnviarAlCobro: TAction;
    ToolButton5: TToolButton;
    spAlCobro: TSpeedButton;
    frDBDPercepcionIVA: TfrxDBDataset;
    MarcarAnulado: TAction;
    MarcarAnulado1: TMenuItem;
    N11: TMenuItem;
    Label28: TLabel;
    DBText17: TDBText;
    ToolButton6: TToolButton;
    spAnular: TSpeedButton;
    Label29: TLabel;
    LbNetoPercepcion: TLabel;
    ImportarXML: TAction;
    ExportardetalleaExcel1: TMenuItem;
    ImportarXML2: TMenuItem;
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure BuscarLdrExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure BuscarCondVentaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbgDBGrillaDetalle_oldColEnter(Sender: TObject);
    procedure dbgDBGrillaDetalle_oldKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgDBGrillaDetalle_oldKeyPress(Sender: TObject; var Key: Char);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pcDetallePresupuestoEnter(Sender: TObject);
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ModificarExecute(Sender: TObject);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBELdrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBEDepositoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBEConVtaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscadorVendedorExecute(Sender: TObject);
    procedure rxcVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BorrarExecute(Sender: TObject);
    procedure dbgDBGrillaDetalle_oldExit(Sender: TObject);
    procedure dbgDBGrillaDetalle_oldEnter(Sender: TObject);
    procedure ExportarExecute(Sender: TObject);
    procedure DatosClienteExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure RecalcularExecute(Sender: TObject);
    procedure dbcListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcListaClick(Sender: TObject);
    procedure dbgDBGrillaDetalle_oldDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure dbgDBGrillaDetalle_oldDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure EnviarCorreoExecute(Sender: TObject);
    procedure dbgDBGrillaDetalle_oldDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GenerarNotaPedidoExecute(Sender: TObject);
    function DBGrillaDetalleCheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
      var StringForTrue, StringForFalse: string): Boolean;
    procedure DBGrillaDetalleDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure DBGrillaDetalleDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure DBGrillaDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
    procedure DBGrillaDetalleColExit(Sender: TObject);
    procedure DBGrillaDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbeDiasChange(Sender: TObject);
    procedure SelectAllExecute(Sender: TObject);
    procedure UnselectAllExecute(Sender: TObject);
    procedure GenerarFacturaCCExecute(Sender: TObject);
    procedure GenerarNdeVtaExecute(Sender: TObject);
    procedure ReHabilitarExecute(Sender: TObject);
    procedure GenerarRtoExecute(Sender: TObject);
    procedure sbEstadoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure sbEstadoClick(Sender: TObject);
    procedure ToolBar1DblClick(Sender: TObject);
    procedure ActualizaMonedasExecute(Sender: TObject);
    procedure CopiarDetalleExecute(Sender: TObject);
    procedure PegarDetalleExecute(Sender: TObject);
    procedure CopiarPortaPapelesExecute(Sender: TObject);
    procedure ColumnasClick(Sender: TObject);
    procedure btnSalirColumnaClick(Sender: TObject);
    procedure PrintProformaExecute(Sender: TObject);
    procedure CambiarFechaExecute(Sender: TObject);
    procedure GenerarFcCtdoExecute(Sender: TObject);
    procedure GenerarTkExecute(Sender: TObject);
    procedure BuscarPorObsExecute(Sender: TObject);
    procedure CambiarClienteExecute(Sender: TObject);
    procedure VerporCodigoAlternativo1Click(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure DBGrillaDetalleEnter(Sender: TObject);
    procedure dbIdFacturaClick(Sender: TObject);
    procedure dbcPercibeIIBBClick(Sender: TObject);
    procedure VertItemAgrupadoClick(Sender: TObject);
    procedure dbTotalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CopiarPresupuestoExecute(Sender: TObject);
    procedure dbIdRtoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CalcularDetallexlosIVA1Click(Sender: TObject);
    procedure ImprimeUnitario1Click(Sender: TObject);
    procedure ImprimeTotal1Click(Sender: TObject);
    procedure MostrarTasaIvaClick(Sender: TObject);
    procedure MostrarUnidadesVtaClick(Sender: TObject);
    procedure MostrarUnitarioNetoClick(Sender: TObject);
    procedure SaltearDescto1Click(Sender: TObject);
    procedure SaltearItem1Click(Sender: TObject);
    procedure BuscarPorReferenciaExecute(Sender: TObject);
    procedure ClonarPresupuestoExecute(Sender: TObject);
    procedure DuplicarPresupuestoExecute(Sender: TObject);
    procedure GenerarOProduccionExecute(Sender: TObject);
    procedure dbchFinancieroClick(Sender: TObject);
    procedure dbchTecnicaClick(Sender: TObject);
    procedure dbePlazoEntregaKeyPress(Sender: TObject; var Key: Char);
    procedure edFechaFinancieraExit(Sender: TObject);
    procedure edFechaTecnicaExit(Sender: TObject);
    procedure MostrarEspecificacionClick(Sender: TObject);
    procedure AplicarDsctoTodoExecute(Sender: TObject);
    procedure IncidenciasExecute(Sender: TObject);
    procedure DBGrillaDetalleDblClick(Sender: TObject);
    procedure MostrarObra1Click(Sender: TObject);
//    procedure dbcObraKeyDown(Sender: TObject; var Key: Word;
//      Shift: TShiftState);
    procedure dbtOProdClick(Sender: TObject);
    procedure lbPrevClick(Sender: TObject);
    procedure lbSigClick(Sender: TObject);
    procedure cxGrid2DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid2DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure AgendarTareaExecute(Sender: TObject);
    procedure dbcObraClick(Sender: TObject);
    procedure dbcObraSectorEnter(Sender: TObject);
    procedure dbcObraSectorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NuevoSectorExecute(Sender: TObject);
    procedure frxPDFExport1BeforeExport(Sender: TObject);
    procedure MarcarAceptadoExecute(Sender: TObject);
    procedure MarcarRevisionExecute(Sender: TObject);
    procedure BuscarPresupuestoExecute(Sender: TObject);
    procedure DeshabilitarSumaDetalle1Click(Sender: TObject);
    procedure GenerarFcAnticipoExecute(Sender: TObject);
    procedure DBText16Click(Sender: TObject);
    procedure BuscarObraExecute(Sender: TObject);
    procedure NuevaObraExecute(Sender: TObject);
    procedure AgregarClienteExecute(Sender: TObject);
    procedure ResetColumnasExecute(Sender: TObject);
    procedure AcopiarExecute(Sender: TObject);
    procedure MostrarMargenClick(Sender: TObject);
    procedure RecalcularMargenExecute(Sender: TObject);
    procedure CambiarFechaVtoExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure dblMonedaClick(Sender: TObject);
    procedure CambiarNroCpbteExecute(Sender: TObject);
    procedure ModificarDatosCabeceraExecute(Sender: TObject);
    procedure EnviarAlCobroExecute(Sender: TObject);
    procedure MarcarAnuladoExecute(Sender: TObject);
    procedure ImportarXMLExecute(Sender: TObject);
  private
    { Private declarations }
    Procedure SaveColPos(Const DbGrid:TJvDBgrid);
    Procedure LoadColPos(Var DbGrid:TJvDBgrid);
  public
    CpbteNuevo          :Char;
    SucursalComprobante :Integer;
    ColVisibles:Integer;
    IDComprobante       :Integer;
    Deposito,Dias       :Integer;
    Anulado:Tpanel;
    Cpbte_Envio_id      :Integer;
    Cpbte_Envio_Tipo    :string;
    ColumnasVisble      :String;
    ArchivoIni          :TIniFile;
    OldLista            :String;
    Duplicado           :Boolean;
    Calcula_iva_articulo
    ,Divide_iva         :Boolean;
    IdTicket            :Integer;
    procedure AgregarCabNP;
    procedure AgregarDetNP;
    procedure AgregarCabFcCC;
    procedure AgregarDetFcCC;
    procedure MarcaPresupuesto(Marca:string);
    procedure AgregarCabRto;
    procedure AgregarDetRto;
    procedure CopiarClipBoard(Grilla:TDBGrid);
    procedure AgregarCabFcCtdo;
    procedure AgregarDetFcCtdo;
    procedure AgregarCabTk;
    procedure AgregarDetTk;

    { Public declarations }
  end;

var
  FormPresupuesto_2: TFormPresupuesto_2;

PROCEDURE UltimoComprobante;

implementation

uses DMPresupuesto, UBuscadorCpbte, ComposicionPrecio,UOrdenProduccion,
  UConsultaArticuloVendido, UDatosClienteCabeceraCpbte, UConsultaStock,
  UBuscadorClientes, UBuscadorArticulos, UCorreo, UNotaPedidoCliente,
  UBuscadorTipoCpbte, UBuscadorDepositos, DMNPedidoCliente, DMVenta, UFactura_2,
  UNotaVenta, DMNotaVenta, URemitos, DMRemitos, DMOrdenProduccion,
  DMStoreProcedureForm,DMBuscadoresForm, UFecha, UFacturaCtdo_2, DMVentaCtdo,
  UBuscadorPorObs, UCambioClienteFactura, UBuscadorComprobantes, UZPrint,
  UBuscadorPresupuestos,UDMain_FD, UPresupuetoIncidencias, UStock_2,UMontoAnticipo,
  UAltaEventoTareas, UTiketVta, DMTicket, UBuscarPorNroReferencia, UObras,
  ULogin, UCambiaNumeroCpbte, UBuscaDirectorio;

{$R *.DFM}

procedure TFormPresupuesto_2.CopiarClipBoard(Grilla:TDBGrid);
var
  i_local,j_local: Integer;
  BookMark_local: TBookmark;
  s_local,Campo: string;
begin
  Grilla.DataSource.DataSet.DisableControls;  // evita parpadeo en la grilla
  try
    BookMark_local:= Grilla.DataSource.DataSet.Bookmark;  // guardar posición
    Grilla.DataSource.DataSet.first; // ir a 1era fila
    s_local:= '';

    for j_local:= 0 to Grilla.FieldCount - 1 do   // campos
      begin
         if (chklstColumnas.Checked[j_local]) then
          begin
            campo:='';
            campo:= Grilla.Columns[j_local].Title.Caption;
            s_local:= s_local + campo +
              Copy('                                         ',1,Grilla.Fields[j_local].Size-Length(Grilla.Columns[j_local].Title.Caption));

//            if i_local < Grilla.Columns.Count then s_local:= s_local + #9;
            s_local:= s_local + #9;

          end;
      end;
    s_local:= s_local + #13 + #10;                  //CRLF
    Grilla.DataSource.DataSet.first; // ir a 1era fila
    for i_local:= 0 to Grilla.Datasource.dataset.RecordCount - 1 do  // nro filas mostradas
    begin
      for j_local:= 0 to Grilla.FieldCount - 1 do   // campos
      begin
         if (chklstColumnas.Checked[j_local]) then
          begin
            campo:='';
//            if (Grilla.Fields[j_local].DataType=ftFloat) or
//               (Grilla.Fields[j_local].DataType=ftBCD) or
//               (Grilla.Fields[j_local].DataType=ftFMTBcd) Then
//              begin
//                 if (J_local=5) or (J_local=7) then
//                   begin
//                     if DatosPresupuesto.CDSPresuCabDESGLOZAIVA.Value='S' then
//                       campo:= FormatFloat(',0.00',RoundTo( Grilla.Fields[j_local].AsFloat,-2))
//                     else
//                       campo:= FormatFloat(',0.00',RoundTo( (Grilla.Fields[j_local].AsFloat * ((1+Grilla.Fields[3].AsFloat*0.01))),-2));
//                   end
//                 else
//                   campo:= FormatFloat(',0.00',RoundTo( Grilla.Fields[j_local].AsFloat,-2))
//               end
//             else
//               campo:= Grilla.Fields[j_local].AsString;
             campo:= Grilla.Fields[j_local].AsString;
             campo:= Grilla.Columns[j_local].Field.Text;

            s_local:= s_local + campo +
              Copy('                                         ',1,Grilla.Fields[j_local].Size-Length(Grilla.Fields[j_local].AsString));
            if i_local < Grilla.datasource.dataset.recordCount then s_local:= s_local + #9;
          end;
      end;
      s_local:= s_local + #13 + #10;                  //CRLF
      Grilla.DataSource.DataSet.Next;   // siguiente fila
    end;
    ClipBoard.SetTextBuf(PChar(s_local));  // a portapapeles
    Grilla.DataSource.DataSet.Bookmark:= BookMark_local; // restaurar posición
  finally
    Grilla.DataSource.DataSet.EnableControls;
  end;
end;

//******************************************************************************
//*****************Posicion de Columnas ****************************************
//******************************************************************************
procedure TFormPresupuesto_2.LoadColPos(var DbGrid: TJvDBgrid);
Var
 Registro :TRegistry;
 F        :Byte;
 St:String;
Begin
  Registro:=TRegistry.Create;
  Registro.OpenKey('\Software\GestionPresupuesto\Grids',False);
  If Registro.ValueExists(DbGrid.Name+'[0]') Then
  For F:=0 To DbGrid.Columns.Count-1 Do
    begin
      DbGrid.Columns[F].Width:=Registro.ReadInteger(DbGrid.Name+'['+IntToStr(F)+']');

//      DbGrid.Columns[F].Width  := Registro.ReadInteger(DbGrid.Columns[F].FieldName);
//      St                       := Registro.ReadString(DbGrid.COlumns[F].FieldName);
//      if St='S' then DbGrid.Columns[F].ButtonStyle:=cbsEllipsis
//      else
//      DbGrid.Columns[F].ButtonStyle:=cbsAuto;


//      DbGrid.Columns[F].ButtonStyle:=  Registro.ReadString(DbGrid.COlumns[F].FieldName);
    end;
  Registro.Free;
End;

procedure TFormPresupuesto_2.SaveColPos(const DbGrid: TJvDBgrid);
Var
 Registro :TRegistry;
 F        :Byte;
 Begin
   Registro:=TRegistry.Create;
   Registro.OpenKey('\Software\GestionPresupuesto\Grids',True);
   For F:=0 To DbGrid.Columns.Count-1 Do
     begin
//       Registro.WriteInteger(DbGrid.Name+'['+IntToStr(F)+']'+'ButtonStyle',DbGrid.Columns[F].Width);
       Registro.WriteInteger(DbGrid.Name+'['+IntToStr(F)+']',DbGrid.Columns[F].Width);
//       Registro.WriteInteger(DbGrid.Columns[F].FieldName,DbGrid.Columns[F].Width);
//       if DbGrid.Columns[F].ButtonStyle=cbsEllipsis then
//         Registro.WriteString(DbGrid.Columns[F].FieldName,'S')
//       else
//         Registro.WriteString(DbGrid.Columns[F].FieldName,'N');

      end;

   Registro.Free;
end;
//******************************************************************************
//******************************************************************************
//******************************************************************************

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosPresupuesto,DMStoreProcedure,DMStoreProcedure DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSPresuCabLETRAFAC.AsString <> '') AND
        (CDSPresuCabCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('LETRA_ING').AsString := CDSPresuCabLETRAFAC.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value     := CDSPresuCabSucursal.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value    := CDSPresuCabCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value     := CDSPresuCabTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value  := 'V';
          spNumeroCpbte.ExecProc;
          //      if Not(spNumeroCpbte.IsEmpty) Then
          IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
          ELSE
            Numero := 1;
          CDSPresuCabSucFacSetText(CDSPresuCabSucFac, IntToStr(Numero));
          IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
          ELSE
            Numero := 1;
          CDSPresuCabNumeroFacSetText(CDSPresuCabNumeroFac,IntToStr(Numero));
          // ******* el desgloza iva lo manejo segun el cliente. cuando levanto los datos del mismo
          // ******** IF spNumeroCpbte.ParamByName('Desgloza_Iva').Value='N' Then
          //          wwCDSPresuCabDESGLOZAIVA.Value    :=spNumeroCpbte.ParamByName('desgloza_Iva').Value;
          //          wwCDSPresuCabINGRESA_A_CTACTE.Value :=spNumeroCpbte.ParamByName('Va_CtaCte').Value;
          //          wwCDSPresuCabINGRESA_LIBRO_IVA.Value:=spNumeroCpbte.ParamByName('Va_Libro_Iva').Value;

          CDSPresuCabTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').Value;
          CDSPresuCabCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').Value;
          FormPresupuesto_2.Imprime     := spNumeroCpbte.ParamByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSPresuCabNroCpbte.AsString := CDSPresuCabLetraFac.AsString + CDSPresuCabSucFac.AsString + CDSPresuCabNumeroFac.AsString;
    END;

END;

procedure TFormPresupuesto_2.AgregarCabNP;
begin
  with DatosNPedidoClientes DO
  begin
    FormNotaPedidoCliente.SucursalPorDefecto :=SucursalComprobante;
    FormNotaPedidoCliente.DepositoPorDefecto :=Deposito;
    CDSNotaPedidoCabID_TIPOCOMPROBANTESetText(CDSNotaPedidoCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
    CDSNotaPedidoCabCODIGOSetText(CDSNotaPedidoCabCODIGO,DatosPresupuesto.CDSPresuCabCODIGO.AsString);
    CDSNotaPedidoCabLDRSetText(CDSNotaPedidoCabLDR,DatosPresupuesto.CDSPresuCabLDR.AsString);
    CDSNotaPedidoCabNOMBRE.Value       := DatosPresupuesto.CDSPresuCabNOMBRE.Value;
    CDSNotaPedidoCabRAZONSOCIAL.Value  := DatosPresupuesto.CDSPresuCabRAZONSOCIAL.Value;
    CDSNotaPedidoCabCUIT.Value         := DatosPresupuesto.CDSPresuCabCUIT.Value;
    CDSNotaPedidoCabTIPOIVA.Value      := DatosPresupuesto.CDSPresuCabTIPOIVA.Value;
    CDSNotaPedidoCabDIRECCION.Value    := DatosPresupuesto.CDSPresuCabDIRECCION.Value;
    CDSNotaPedidoCabLOCALIDAD.Value    := DatosPresupuesto.CDSPresuCabLOCALIDAD.Value;
    CDSNotaPedidoCabCPOSTAL.Value      := DatosPresupuesto.CDSPresuCabCPOSTAL.Value;

    CDSNotaPedidoCabCONDICIONVTASetText(CDSNotaPedidoCabCONDICIONVTA,DatosPresupuesto.CDSPresuCabCONDICIONVTA.AsString);

    CDSNotaPedidoCabIMPRESO.Value      :='N';
    CDSNotaPedidoCabOBSERVACION1.Value := DatosPresupuesto.CDSPresuCabOBSERVACION1.AsString;
    CDSNotaPedidoCabOBSERVACION2.Value := DatosPresupuesto.CDSPresuCabOBSERVACION2.AsString;

    CDSNotaPedidoCabZONA.Value         :=DatosPresupuesto.CDSPresuCabZONA.Value;

    CDSNotaPedidoCabPRESUPUESTO_ID.Value       :=DatosPresupuesto.CDSPresuCabID_PR.Value;
    CDSNotaPedidoCabPRESUPUESTO_NROCPBTE.Value :=DatosPresupuesto.CDSPresuCabNROCPBTE.Value;

    if DatosPresupuesto.CDSPresuCabLISTAPRECIO.AsString<>'' then
      CDSNotaPedidoCabLISTAPRECIO.Value         :=DatosPresupuesto.CDSPresuCabLISTAPRECIO.Value;
    if DatosPresupuesto.CDSPresuCabVENDEDOR.AsString<>'' Then
      CDSNotaPedidoCabVENDEDORSetText(CDSNotaPedidoCabVENDEDOR,DatosPresupuesto.CDSPresuCabVENDEDOR.AsString);

    CDSNotaPedidoCabUSUARIO.Value     :=DMMain_FD.UsuarioActivo;

  end;
end;

procedure TFormPresupuesto_2.AplicarDsctoTodoExecute(Sender: TObject);
var Descuento:Extended;
Puntero:TBookmark;
begin
  inherited;
  Descuento:=DatosPresupuesto.CDSPresuDetDESCUENTO.Value;
  Puntero  := DatosPresupuesto.CDSPresuDet.GetBookmark;
  DatosPresupuesto.CDSPresuDet.First;
  DatosPresupuesto.CDSPresuDet.DisableControls;
  Datospresupuesto.CDSPresuDet.AfterPost:=nil;
  while not(DatosPresupuesto.CDSPresuDet.Eof) do
    begin
      if DatosPresupuesto.CDSPresuDet.State=dsBrowse then
        DatosPresupuesto.CDSPresuDet.Edit;
      DatosPresupuesto.CDSPresuDetDESCUENTOSetText(DatosPresupuesto.CDSPresuDetDESCUENTO,FloatToStr(Descuento));
      DatosPresupuesto.CDSPresuDet.Next;
    end;
  DatosPresupuesto.CDSPresuDet.AfterPost:=DatosPresupuesto.CDSPresuDetAfterPost;
  DatosPresupuesto.CDSPresuDet.edit;
  DatosPresupuesto.CDSPresuDet.Post;

  DatosPresupuesto.CDSPresuDet.GotoBookmark(Puntero);
  DatosPresupuesto.CDSPresuDet.FreeBookmark(Puntero);
  DatosPresupuesto.CDSPresuDet.EnableControls;
end;

procedure TFormPresupuesto_2.AcopiarExecute(Sender: TObject);
begin
  inherited;
  Modificar.Execute;
  if DSBase.DataSet.FieldByName('PARA_ACOPIO').Value<>'S' then
    DSBase.DataSet.FieldByName('PARA_ACOPIO').Value:='S'
  else
    DSBase.DataSet.FieldByName('PARA_ACOPIO').Value:='N';
  Confirma.Execute;

end;

procedure TFormPresupuesto_2.ActualizaMonedasExecute(Sender: TObject);
begin
  if MessageDlg('Actualizar los valores de cotizacion de las monedas para los itmes expresados en otras monedas?...',mtConfirmation,mbYesNo,0) = mrYes Then
    begin
      DatosPresupuesto.spActualizarCotizacionDetalle.Close;
      DatosPresupuesto.spActualizarCotizacionDetalle.ParamByName('id').Value:=DatosPresupuesto.CDSPresuCabID_PR.Value;
      DatosPresupuesto.spActualizarCotizacionDetalle.ExecProc;
      DatosPresupuesto.spActualizarCotizacionDetalle.Close;
      DatoNew:=DatosPresupuesto.CDSPresuCabID_PR.AsString;
      Recuperar.Execute;
     if MessageDlg('Hacer Recalculo del Presupuesto ?...',mtConfirmation,mbYesNo,0) = mrYes Then
       Recalcular.Execute;

    end;
end;

procedure TFormPresupuesto_2.AgendarTareaExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty)) then
    begin
       if not(Assigned(FormAltaEventoTareas)) then
        FormAltaEventoTareas:=TFormAltaEventoTareas.Create(Self);
      FormAltaEventoTareas.Fecha      := Date;// DBPlannerMonthView1.Date;
      FormAltaEventoTareas.IdUsuario  := DMMain_FD.UsuarioActivoId;
      FormAltaEventoTareas.Codigo     := DSBase.DataSet.FieldByName('Codigo').AsString;
      FormAltaEventoTareas.Nombre     := DSBase.DataSet.FieldByName('NOMBRE').AsString;
      FormAltaEventoTareas.Asunto     := DSBase.DataSet.FieldByName('REFERENCIA').AsString;
      FormAltaEventoTareas.IdCpbte    := DSBase.DataSet.FieldByName('ID_PR').AsInteger;
      FormAltaEventoTareas.TipoCpbte  := DSBase.DataSet.FieldByName('TIPOCPBTE').AsString;
      FormAltaEventoTareas.ClaseCpbte := DSBase.DataSet.FieldByName('CLASECPBTE').AsString;
      FormAltaEventoTareas.Nota       :='Presupuesto:'+DSBase.DataSet.FieldByName('NROCPBTE').AsString;
      FormAltaEventoTareas.ShowModal;
    end;
end;

procedure TFormPresupuesto_2.AgregarCabFcCC;
begin
  with DatosVentas DO
  begin
    FormCpbte_2.SucursalPorDefecto :=SucursalComprobante;
    FormCpbte_2.DepositoPorDefecto :=Deposito;
    CDSVentaCabCODIGOSetText(CDSVentaCabCODIGO,DatosPresupuesto.CDSPresuCabCODIGO.AsString);
    CDSVentaCabNOMBRE.Value       := DatosPresupuesto.CDSPresuCabNOMBRE.Value;
    CDSVentaCabRAZONSOCIAL.Value  := DatosPresupuesto.CDSPresuCabRAZONSOCIAL.Value;
    CDSVentaCabCUIT.Value         := DatosPresupuesto.CDSPresuCabCUIT.Value;
    CDSVentaCabTIPOIVA.Value      := DatosPresupuesto.CDSPresuCabTIPOIVA.Value;
    CDSVentaCabDIRECCION.Value    := DatosPresupuesto.CDSPresuCabDIRECCION.Value;
    CDSVentaCabLOCALIDAD.Value    := DatosPresupuesto.CDSPresuCabLOCALIDAD.Value;
    CDSVentaCabCPOSTAL.Value      := DatosPresupuesto.CDSPresuCabCPOSTAL.Value;

    CDSVentaCabLDRSetText(CDSVentaCabLDR,DatosPresupuesto.CDSPresuCabLDR.AsString);
    CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));

    CDSVentaCabCONDICIONVTASetText(CDSVentaCabCONDICIONVTA,DatosPresupuesto.CDSPresuCabCONDICIONVTA.AsString);

    CDSVentaCabIMPRESO.Value     :='N';
    CDSVentaCabOBSERVACION1.Value:= DatosPresupuesto.CDSPresuCabOBSERVACION1.Value;
    CDSVentaCabOBSERVACION2.Value:= DatosPresupuesto.CDSPresuCabOBSERVACION2.Value;

    CDSVentaCabZONA.Value        :=DatosPresupuesto.CDSPresuCabZONA.Value;

    CDSVentaCabPRESUPUESTO_ID.Value       := DatosPresupuesto.CDSPresuCabID_PR.Value;
    CDSVentaCabPRESUPUESTO_NROCPBTE.Value := DatosPresupuesto.CDSPresuCabNROCPBTE.Value;

    if DatosPresupuesto.CDSPresuCabLISTAPRECIO.AsString<>'' then
      CDSVentaCabLISTAPRECIO.Value         :=DatosPresupuesto.CDSPresuCabLISTAPRECIO.Value;
    if DatosPresupuesto.CDSPresuCabVENDEDOR.AsString<>'' Then
      CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR,DatosPresupuesto.CDSPresuCabVENDEDOR.AsString);

    CDSVentaCabUSUARIO.Value     := DMMain_FD.UsuarioActivo;
     // por que si no me agreagaba el iva

    CDSVentaCabMONEDA_CPBTE.Value            := DatosPresupuesto.CDSPresuCabMONEDA_CPBTE.Value;
    CDSVentaCabMONEDA_CPBTE_COTIZACION.Value := DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.Value;

    CDSVentaCabDSTOSetText(CDSVentaCabDSTO,DatosPresupuesto.CDSPresuCabDSTO.AsString);
    FormCpbte_2.DiscriminaIva:='S';

    cxGrid2DBTableView1TOTAL_UNIT_FINAL.Visible  := DiscriminaIva='N';
    cxGrid2DBTableView1TOTAL_FINAL.Visible       := DiscriminaIva='N';

    cxGrid2DBTableView1TOTAL_GRAVADO.Visible     := DiscriminaIva='S';
    cxGrid2DBTableView1TOTAL_NETO.Visible        := DiscriminaIva='S';

    cxGrid1DBTableView1TOTAL_FINAL.Visible       := DiscriminaIva='N';
    cxGrid1DBTableView1TOTAL.Visible             := DiscriminaIva='S';

  end;
end;

procedure TFormPresupuesto_2.AgregarCabFcCtdo;
begin
  with DatosVentasCtdo DO
  begin
    FormCpbteCtdo_2.SucursalPorDefecto :=SucursalComprobante;
    FormCpbteCtdo_2.DepositoPorDefecto :=Deposito;
    //CDSNotaPedidoCabSUCURSAL.Value           :=SucursalComprobante;
    CDSVentaCabCODIGOSetText(CDSVentaCabCODIGO,DatosPresupuesto.CDSPresuCabCODIGO.AsString);
    CDSVentaCabLDRSetText(CDSVentaCabLDR,DatosPresupuesto.CDSPresuCabLDR.AsString);
    CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));

    CDSVentaCabNOMBRE.Value       := DatosPresupuesto.CDSPresuCabNOMBRE.Value;
    CDSVentaCabRAZONSOCIAL.Value  := DatosPresupuesto.CDSPresuCabRAZONSOCIAL.Value;
    CDSVentaCabCUIT.Value         := DatosPresupuesto.CDSPresuCabCUIT.Value;
    CDSVentaCabTIPOIVA.Value      := DatosPresupuesto.CDSPresuCabTIPOIVA.Value;
    CDSVentaCabDIRECCION.Value    := DatosPresupuesto.CDSPresuCabDIRECCION.Value;
    CDSVentaCabLOCALIDAD.Value    := DatosPresupuesto.CDSPresuCabLOCALIDAD.Value;
    CDSVentaCabCPOSTAL.Value      := DatosPresupuesto.CDSPresuCabCPOSTAL.Value;


    CDSVentaCabIMPRESO.Value      := 'N';
    CDSVentaCabOBSERVACION1.Value := DatosPresupuesto.CDSPresuCabOBSERVACION1.Value;
    CDSVentaCabOBSERVACION2.Value := DatosPresupuesto.CDSPresuCabOBSERVACION2.Value;

    CDSVentaCabZONA.Value         := DatosPresupuesto.CDSPresuCabZONA.Value;

    CDSVentaCabIDREMITO.Value     := DatosPresupuesto.CDSPresuCabID_PR.Value;
    CDSVentaCabTIPO_REMITO.Value  := DatosPresupuesto.CDSPresuCabTIPOCPBTE.Value;
    CDSVentaCabNRORTO.Value       := DatosPresupuesto.CDSPresuCabNROCPBTE.Value;

    //CDSNotaPedidoCabPRESUPUESTO_ID.Value       :=DatosPresupuesto.wwCDSPresuCabID_PR.Value;
    //CDSNotaPedidoCabPRESUPUESTO_NROCPBTE.Value :=DatosPresupuesto.wwCDSPresuCabNROCPBTE.Value;

  // DatosPresupuesto.wwCDSPresuCabNOTA_PEDIDO_ID.Value  :=CDSNotaPedidoCabID.Value;
  // DatosPresupuesto.wwCDSPresuCabNOTA_PEDIDO_NROCPBTE.Value  :=CDSNotaPedidoCabNROCPBTE.Value;

    CDSVentaCabPRESUPUESTO_ID.Value       := DatosPresupuesto.CDSPresuCabID_PR.Value;
    CDSVentaCabPRESUPUESTO_NROCPBTE.Value := DatosPresupuesto.CDSPresuCabNROCPBTE.Value;

    CDSVentaCabMONEDA_CPBTE.Value            := DatosPresupuesto.CDSPresuCabMONEDA_CPBTE.Value;
    CDSVentaCabMONEDA_CPBTE_COTIZACION.Value := DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.Value;

    if DatosPresupuesto.CDSPresuCabLISTAPRECIO.AsString<>'' then
      CDSVentaCabLISTAPRECIO.Value         :=DatosPresupuesto.CDSPresuCabLISTAPRECIO.Value;
    if DatosPresupuesto.CDSPresuCabVENDEDOR.AsString<>'' Then
      CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR,DatosPresupuesto.CDSPresuCabVENDEDOR.AsString);

    CDSVentaCabUSUARIO.Value     :=DMMain_FD.UsuarioActivo;

    CDSVentaCabDSTOSetText(CDSVentaCabDSTO,DatosPresupuesto.CDSPresuCabDSTO.AsString);
    FormCpbteCtdo_2.DiscriminaIva:='S';
  end;
end;


procedure TFormPresupuesto_2.AgregarCabTk;
begin
  with DatosVentasTicket DO
  begin
 //   FormTicketVta.SucursalPorDefecto :=SucursalComprobante;
//    FormTicketVta.DepositoPorDefecto :=Deposito;
    //CDSNotaPedidoCabSUCURSAL.Value           :=SucursalComprobante;
    CDSVentaCabCODIGOSetText(CDSVentaCabCODIGO,DatosPresupuesto.CDSPresuCabCODIGO.AsString);
    CDSVentaCabLDRSetText(CDSVentaCabLDR,DatosPresupuesto.CDSPresuCabLDR.AsString);
   // CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));

    CDSVentaCabNOMBRE.Value       := DatosPresupuesto.CDSPresuCabNOMBRE.Value;
    CDSVentaCabRAZONSOCIAL.Value  := DatosPresupuesto.CDSPresuCabRAZONSOCIAL.Value;
    CDSVentaCabCUIT.Value         := DatosPresupuesto.CDSPresuCabCUIT.Value;
    CDSVentaCabTIPOIVA.Value      := DatosPresupuesto.CDSPresuCabTIPOIVA.Value;
    CDSVentaCabDIRECCION.Value    := DatosPresupuesto.CDSPresuCabDIRECCION.Value;
    CDSVentaCabLOCALIDAD.Value    := DatosPresupuesto.CDSPresuCabLOCALIDAD.Value;
    CDSVentaCabCPOSTAL.Value      := DatosPresupuesto.CDSPresuCabCPOSTAL.Value;

    CDSVentaCabIMPRESO.Value     :='N';
    CDSVentaCabOBSERVACION1.Value:= DatosPresupuesto.CDSPresuCabOBSERVACION1.Value;
    CDSVentaCabOBSERVACION2.Value:= DatosPresupuesto.CDSPresuCabOBSERVACION2.Value;

    CDSVentaCabZONA.Value        :=DatosPresupuesto.CDSPresuCabZONA.Value;

    CDSVentaCabIDREMITO.Value     := DatosPresupuesto.CDSPresuCabID_PR.Value;
    CDSVentaCabTIPO_REMITO.Value  := DatosPresupuesto.CDSPresuCabTIPOCPBTE.Value;
    CDSVentaCabNRORTO.Value       := DatosPresupuesto.CDSPresuCabNROCPBTE.Value;

    //CDSNotaPedidoCabPRESUPUESTO_ID.Value       :=DatosPresupuesto.wwCDSPresuCabID_PR.Value;
    //CDSNotaPedidoCabPRESUPUESTO_NROCPBTE.Value :=DatosPresupuesto.wwCDSPresuCabNROCPBTE.Value;

  // DatosPresupuesto.wwCDSPresuCabNOTA_PEDIDO_ID.Value  :=CDSNotaPedidoCabID.Value;
  // DatosPresupuesto.wwCDSPresuCabNOTA_PEDIDO_NROCPBTE.Value  :=CDSNotaPedidoCabNROCPBTE.Value;

     CDSVentaCabPRESUPUESTO_ID.Value       := DatosPresupuesto.CDSPresuCabID_PR.Value;
     CDSVentaCabPRESUPUESTO_NROCPBTE.Value := DatosPresupuesto.CDSPresuCabNROCPBTE.Value;

    if DatosPresupuesto.CDSPresuCabLISTAPRECIO.AsString<>'' then
      CDSVentaCabLISTAPRECIO.Value         :=DatosPresupuesto.CDSPresuCabLISTAPRECIO.Value;
    if DatosPresupuesto.CDSPresuCabVENDEDOR.AsString<>'' Then
      CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR,DatosPresupuesto.CDSPresuCabVENDEDOR.AsString);

    CDSVentaCabUSUARIO.Value     :=DMMain_FD.UsuarioActivo;
     // por que si no me agreagaba el iva

    CDSVentaCabDSTOSetText(CDSVentaCabDSTO,DatosPresupuesto.CDSPresuCabDSTO.AsString);
    //FormTicketVta.DiscriminaIva:='S';

  end;
end;

procedure TFormPresupuesto_2.AgregarClienteExecute(Sender: TObject);
var
  CodAux: string;
begin
  inherited;
  CodAux  :=  DMMain_FD.NuevoCliente;
  if CodAux <> '' then
    DSBase.DataSet.FieldByName('CODIGO').Text :=  CodAux;
end;

procedure TFormPresupuesto_2.AgregarDetTk;
Var UnitarioTotal,Precio,coef:Extended;
begin
  inherited;
  with DatosVentasTicket DO
    begin
      CDSVentaDet.Append;
      CDSVentaDetDESGLOZAIVA.Value   := CDSVentaCabDESGLOZAIVA.Value;
      CDSVentaDetDEPOSITO.Value      := CDSVentaCabDeposito.Value;
      CDSVentaDetCLASECPBTE.Value    := CDSVentaCabCLASECPBTE.Value;
      CDSVentaDetTIPOCPBTE.Value     := CDSVentaCabTIPOCPBTE.Value;
      CDSVentaDetCODIGOARTICULOSetText(CDSVentaDetCODIGOARTICULO,DatosPresupuesto.CDSPresuDetCODIGOARTICULO.AsString);
      CDSVentaDetDETALLE.Value       := DatosPresupuesto.CDSPresuDetDETALLE.Value;
      CDSVentaDetCANTIDAD.AsFloat    := DatosPresupuesto.CDSPresuDetCANTIDAD.AsFloat;

//      CDSVentaDetUNITARIO_GRAVADO.AsFloat := (DatosPresupuesto.CDSPresuDetUNITARIO_GRAVADO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat;
//      CDSVentaDetUNITARIO_EXENTO.AsFloat  := (DatosPresupuesto.CDSPresuDetUNITARIO_EXENTO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat;
//      CDSVentaDetUNITARIO_TOTAL.AsFloat   := (DatosPresupuesto.CDSPresuDetUNITARIO_TOTAL.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat;
//      CDSVentaDetIVA_UNITARIO.AsFloat     := (DatosPresupuesto.CDSPresuDetIVA_UNITARIO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat;
//      CDSVentaDetIVA_TOTAL.AsFloat        := (DatosPresupuesto.CDSPresuDetIVA_TOTAL.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat;

      CDSVentaDetUNITARIO_GRAVADO.AsFloat := (DatosPresupuesto.CDSPresuDetUNITARIO_GRAVADO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)* CDSVentaDetCOTIZACION.AsFloat;
      CDSVentaDetUNITARIO_EXENTO.AsFloat  := (DatosPresupuesto.CDSPresuDetUNITARIO_EXENTO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*CDSVentaDetCOTIZACION.AsFloat;
      CDSVentaDetUNITARIO_TOTAL.AsFloat   := (DatosPresupuesto.CDSPresuDetUNITARIO_TOTAL.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*CDSVentaDetCOTIZACION.AsFloat;
      CDSVentaDetIVA_UNITARIO.AsFloat     := (DatosPresupuesto.CDSPresuDetIVA_UNITARIO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*CDSVentaDetCOTIZACION.AsFloat;
      CDSVentaDetIVA_TOTAL.AsFloat        := (DatosPresupuesto.CDSPresuDetIVA_TOTAL.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*CDSVentaDetCOTIZACION.AsFloat;

      UnitarioTotal:= CDSVentaDetUNITARIO_TOTAL.AsFloat;

      if CDSVentaCabDESGLOZAIVA.Value='N' Then
        UnitarioTotal:= CDSVentaDetUNITARIO_GRAVADO.AsFloat + DatosPresupuesto.CDSPresuDetIVA_UNITARIO.AsFloat;

      CDSVentaDetUNITARIO_TOTALSetText(CDSVentaDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal));

      CDSVentaDetDescuentoSetText(CDSVentaDetDescuento,DatosPresupuesto.CDSPresuDetDESCUENTO.AsString);

      CDSVentaDet.Post;
    end;
end;


procedure TFormPresupuesto_2.AgregarCabRto;
begin
  with DatosRemitos,DatosPresupuesto DO
  begin
    FormRemitos.SucursalPorDefecto  := SucursalComprobante;
    FormRemitos.DepositoPorDefecto  := Deposito;
    CDSRtoCabSucursalSetText(CDSRtoCabSucursal, IntToStr(SucursalComprobante));
    CDSRtoCabCodigoSetText(CDSRtoCabCodigo,CDSPresuCabCODIGO.AsString);
    CDSRtoCabLDRSetText(CDSRtoCabLDR,CDSPresuCabLDR.AsString);

    CDSRtoCabNOMBRE.Value       := DatosPresupuesto.CDSPresuCabNOMBRE.Value;
    CDSRtoCabRAZONSOCIAL.Value  := DatosPresupuesto.CDSPresuCabRAZONSOCIAL.Value;
    CDSRtoCabCUIT.Value         := DatosPresupuesto.CDSPresuCabCUIT.Value;
    CDSRtoCabTIPOIVA.Value      := DatosPresupuesto.CDSPresuCabTIPOIVA.Value;
    CDSRtoCabDIRECCION.Value    := DatosPresupuesto.CDSPresuCabDIRECCION.Value;
    CDSRtoCabLOCALIDAD.Value    := DatosPresupuesto.CDSPresuCabLOCALIDAD.Value;
    CDSRtoCabCPOSTAL.Value      := DatosPresupuesto.CDSPresuCabCPOSTAL.Value;


    CDSRtoCabID_TIPOCOMPROBANTESetText(CDSRtoCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));

    CDSRtoCabDepositoSetText(CDSRtoCabDeposito,IntToStr(Deposito));
    CDSRtoCabCondicionVtaSetText(CDSRtoCabCondicionVta,CDSPresuCabCONDICIONVTA.AsString);
    CDSRtoCabANULADO.Value      := 'N';

    CDSRtoCabIMPRESO.Value      := 'N';
    CDSRtoCabOBSERVACION1.Value := CDSPresuCabOBSERVACION1.Value;
    CDSRtoCabOBSERVACION2.Value := CDSPresuCabOBSERVACION2.Value;
    CDSRtoCabCPTE_MANUAL.Value  := 'N';

    CDSRtoCabZONA.Value                 := CDSPresuCabZONA.Value;
    if CDSPresuCabLISTAPRECIO.AsString<>'' then
      CDSRtoCabLISTAPRECIO.Value         := CDSPresuCabLISTAPRECIO.Value;
    if CDSPresuCabVENDEDOR.AsString<>'' Then
      CDSRtoCabVENDEDORSetText(CDSRtoCabVENDEDOR,CDSPresuCabVENDEDOR.AsString);

    CDSRtoCabUSUARIO.Value              := DMMain_FD.UsuarioActivo;
    CDSRtoCabPRESUPUESTO_ID.Value       := CDSPresuCabID_PR.Value;
    CDSRtoCabPRESUPUESTO_NROCPBTE.Value := CDSPresuCabNROCPBTE.Value;

  end;
end;


procedure TFormPresupuesto_2.AgregarDetNP;
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
      CDSNotaPedidoDetCODIGOARTICULOSetText(CDSNotaPedidoDetCODIGOARTICULO,DatosPresupuesto.CDSPresuDetCODIGOARTICULO.AsString);
      CDSNotaPedidoDetDETALLE.Value            := DatosPresupuesto.CDSPresuDetDETALLE.Value;
      CDSNotaPedidoDetCANTIDAD_PEDIDIASetText(CDSNotaPedidoDetCANTIDAD_PEDIDIA,DatosPresupuesto.CDSPresuDetCANTIDAD.AsString);
      CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat := (DatosPresupuesto.CDSPresuDetUNITARIO_GRAVADO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)* DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat;
      CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat  := (DatosPresupuesto.CDSPresuDetUNITARIO_EXENTO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)* DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat;

      CDSNotaPedidoDetDescuento.Value          := DatosPresupuesto.CDSPresuDetDESCUENTO.Value;

      UnitarioTotal                            := CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat + CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;

      if DatosPresupuesto.CDSPresuCabDESGLOZAIVA.Value='N' Then
        UnitarioTotal:= CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat + DatosPresupuesto.CDSPresuDetIVA_UNITARIO.AsFloat + CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;;


//      if DatosPresupuesto.wwCDSPresuCabDESGLOZAIVA.Value='N' Then
  //       CDSNotaPedidoDetUNITARIO_TOTALSetText(CDSNotaPedidoDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal*(1+DatosPresupuesto.wwCDSPresuDetIVA_TASA.Value/100)))
 //      else
    //   CDSNotaPedidoDetUNITARIO_TOTALSetText(CDSNotaPedidoDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal));

      CDSNotaPedidoDetUNITARIO_TOTALSetText(CDSNotaPedidoDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal));

      CDSNotaPedidoDet.Post;
    end;
end;

procedure TFormPresupuesto_2.AgregarDetFcCC;
Var UnitarioTotal,Precio,coef:Extended;
begin
  inherited;
  with DatosVentas DO
    begin
      CDSVentaDet.Append;
      CDSVentaDetCODIGOARTICULOSetText(CDSVentaDetCODIGOARTICULO,DatosPresupuesto.CDSPresuDetCODIGOARTICULO.AsString);
      CDSVentaDetDESGLOZAIVA.Value        := CDSVentaCabDESGLOZAIVA.Value;
      CDSVentaDetDEPOSITO.Value           := CDSVentaCabDeposito.Value;
      CDSVentaDetCLASECPBTE.Value         := CDSVentaCabCLASECPBTE.Value;
      CDSVentaDetTIPOCPBTE.Value          := CDSVentaCabTIPOCPBTE.Value;
      CDSVentaDetID_MONEDA.Value          := DatosPresupuesto.CDSPresuDetID_MONEDA.Value;
      CDSVentaDetCOTIZACION.Value         := DatosPresupuesto.CDSPresuDetCOTIZACION.Value;

      if CDSVentaDetID_MONEDA.Value<>DatosPresupuesto.CDSPresuDetID_MONEDA.Value then
        begin
          CDSVentaDetID_MONEDA.Value     := DatosPresupuesto.CDSPresuDetID_MONEDA.Value;
          CDSVentaDetCOTIZACION.Value    := DatosPresupuesto.CDSPresuDetCOTIZACION.Value;
          DMMain_FD.LogFileFD(1,2,' Cambio Linea de Moneda en Facturacion de Presupuesto(' +
                                  DatosPresupuesto.CDSPresuCabID_PR.AsString+') Moneda Orig:'+
                                  DatosPresupuesto.CDSPresuDetID_MONEDA.AsString +' Arti.:' +
                                  DatosPresupuesto.CDSPresuDetDETALLE.AsString +
                                  '('+DatosPresupuesto.CDSPresuDetCODIGOARTICULO.AsString+')','PRES');
        end;

      CDSVentaDetDETALLE.Value            := DatosPresupuesto.CDSPresuDetDETALLE.Value;
      CDSVentaDetCANTIDAD.AsFloat         := DatosPresupuesto.CDSPresuDetCANTIDAD.AsFloat;
      if VertItemAgrupado.Checked then
        CDSVentaDetCANTIDAD.AsFloat       := DatosPresupuesto.CDSPresuDetCANTIDAD.AsFloat*DatosPresupuesto.CDSPresuDetITEMCANTIDAD.Value;

      CDSVentaDetDescuentoSetText (CDSVentaDetDescuento,DatosPresupuesto.CDSPresuDetDESCUENTO.AsString);

      CDSVentaDetUNITARIO_GRAVADO.AsFloat := (DatosPresupuesto.CDSPresuDetUNITARIO_GRAVADO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat) * DatosVentas.CDSVentaDetCOTIZACION.AsFloat;
      CDSVentaDetUNITARIO_EXENTO.AsFloat  := (DatosPresupuesto.CDSPresuDetUNITARIO_EXENTO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat) * DatosVentas.CDSVentaDetCOTIZACION.AsFloat;
      CDSVentaDetUNITARIO_TOTAL.AsFloat   := (DatosPresupuesto.CDSPresuDetUNITARIO_TOTAL.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat) * DatosVentas.CDSVentaDetCOTIZACION.AsFloat;
      CDSVentaDetIVA_UNITARIO.AsFloat     := (DatosPresupuesto.CDSPresuDetIVA_UNITARIO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat) * DatosVentas.CDSVentaDetCOTIZACION.AsFloat;
      CDSVentaDetIVA_TOTAL.AsFloat        := (DatosPresupuesto.CDSPresuDetIVA_TOTAL.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat) * DatosVentas.CDSVentaDetCOTIZACION.AsFloat;

      UnitarioTotal                       := CDSVentaDetUNITARIO_TOTAL.AsFloat;

      if CDSVentaCabDESGLOZAIVA.Value='N' Then
        UnitarioTotal:= CDSVentaDetUNITARIO_GRAVADO.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat;//.CDSPresuDetIVA_UNITARIO.AsFloat;

      CDSVentaDetUNITARIO_TOTALSetText(CDSVentaDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal));

      CDSVentaDet.Post;
    end;
end;

procedure TFormPresupuesto_2.AgregarDetFcCtdo;
Var UnitarioTotal,Precio,coef:Extended;
begin
  inherited;
  with DatosVentasCtdo DO
    begin
      CDSVentaDet.Append;
      CDSVentaDetDESGLOZAIVA.Value   := CDSVentaCabDESGLOZAIVA.Value;
      CDSVentaDetDEPOSITO.Value      := CDSVentaCabDeposito.Value;
      CDSVentaDetCLASECPBTE.Value    := CDSVentaCabCLASECPBTE.Value;
      CDSVentaDetTIPOCPBTE.Value     := CDSVentaCabTIPOCPBTE.Value;
      CDSVentaDetCODIGOARTICULOSetText(CDSVentaDetCODIGOARTICULO,DatosPresupuesto.CDSPresuDetCODIGOARTICULO.AsString);
      CDSVentaDetDETALLE.Value       := DatosPresupuesto.CDSPresuDetDETALLE.Value;
      CDSVentaDetCANTIDAD.AsFloat    := DatosPresupuesto.CDSPresuDetCANTIDAD.AsFloat;

      if CDSVentaDetID_MONEDA.Value<>DatosPresupuesto.CDSPresuDetID_MONEDA.Value then
        begin
          CDSVentaDetID_MONEDA.Value     := DatosPresupuesto.CDSPresuDetID_MONEDA.Value;
          CDSVentaDetCOTIZACION.Value    := DatosPresupuesto.CDSPresuDetCOTIZACION.Value;
          DMMain_FD.LogFileFD(1,2,' Cambio Linea de Moneda en Facturacion de Presupuesto(' +
                                    DatosPresupuesto.CDSPresuCabID_PR.AsString+') Moneda Orig:'+
                                    DatosPresupuesto.CDSPresuDetID_MONEDA.AsString +' Arti.:' +
                                    DatosPresupuesto.CDSPresuDetDETALLE.AsString +
                                    '('+DatosPresupuesto.CDSPresuDetCODIGOARTICULO.AsString+')','PRES');
        end;


      CDSVentaDetUNITARIO_GRAVADO.AsFloat := (DatosPresupuesto.CDSPresuDetUNITARIO_GRAVADO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)* DatosVentasCtdo.CDSVentaDetCOTIZACION.AsFloat;
      CDSVentaDetUNITARIO_EXENTO.AsFloat  := (DatosPresupuesto.CDSPresuDetUNITARIO_EXENTO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*DatosVentasCtdo.CDSVentaDetCOTIZACION.AsFloat;
      CDSVentaDetUNITARIO_TOTAL.AsFloat   := (DatosPresupuesto.CDSPresuDetUNITARIO_TOTAL.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*DatosVentasCtdo.CDSVentaDetCOTIZACION.AsFloat;
      CDSVentaDetIVA_UNITARIO.AsFloat     := (DatosPresupuesto.CDSPresuDetIVA_UNITARIO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*DatosVentasCtdo.CDSVentaDetCOTIZACION.AsFloat;
      CDSVentaDetIVA_TOTAL.AsFloat        := (DatosPresupuesto.CDSPresuDetIVA_TOTAL.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*DatosVentasCtdo.CDSVentaDetCOTIZACION.AsFloat;

      UnitarioTotal:= CDSVentaDetUNITARIO_TOTAL.AsFloat;

      if CDSVentaCabDESGLOZAIVA.Value='N' Then
        UnitarioTotal:= CDSVentaDetUNITARIO_GRAVADO.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat;

      CDSVentaDetUNITARIO_TOTALSetText(CDSVentaDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal));

      CDSVentaDetDescuentoSetText(CDSVentaDetDescuento,DatosPresupuesto.CDSPresuDetDESCUENTO.AsString);
      CDSVentaDet.Post;
    end;
end;


procedure TFormPresupuesto_2.AgregarDetRto;
Var UnitarioTotal,Precio,PrecioPresu,coef:Extended;
begin
  inherited;
  with DatosRemitos,DatosPresupuesto DO
    begin
      CDSRtoDet.Append;
      CDSRtoDetDESGLOZAIVA.Value        := CDSRtoCabDESGLOZAIVA.Value;
      CDSRtoDetDEPOSITO.Value           := CDSRtoCabDeposito.Value;
      CDSRtoDetCLASECPBTE.Value         := CDSRtoCabCLASECPBTE.Value;
      CDSRtoDetTIPOCPBTE.Value          := CDSRtoCabTIPOCPBTE.Value;
      CDSRtoDetCODIGOARTICULOSetText(CDSRtoDetCODIGOARTICULO,DatosPresupuesto.CDSPresuDetCODIGOARTICULO.AsString);
      CDSRtoDetDETALLE.Value            := DatosPresupuesto.CDSPresuDetDETALLE.Value;
      CDSRtoDetCANTIDAD.AsFloat         := DatosPresupuesto.CDSPresuDetCANTIDAD.AsFloat;
      CDSRtoDetUNITARIO_GRAVADO.AsFloat := (DatosPresupuesto.CDSPresuDetUNITARIO_GRAVADO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat;
      CDSRtoDetUNITARIO_EXENTO.AsFloat  := (DatosPresupuesto.CDSPresuDetUNITARIO_EXENTO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat;
      CDSRtoDetUNITARIO_TOTAL.AsFloat   := (DatosPresupuesto.CDSPresuDetUNITARIO_TOTAL.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat;
      CDSRtoDetIVA_UNITARIO.AsFloat     := (DatosPresupuesto.CDSPresuDetIVA_UNITARIO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat;
      CDSRtoDetIVA_TOTAL.AsFloat        := (DatosPresupuesto.CDSPresuDetIVA_TOTAL.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat;

      UnitarioTotal                     := CDSRtoDetUNITARIO_TOTAL.AsFloat;

      if CDSRtoCabDESGLOZAIVA.Value='N' Then
        UnitarioTotal := CDSRtoDetUNITARIO_TOTAL.AsFloat + CDSRtoDetIVA_UNITARIO.AsFloat;

      CDSRtoDetUNITARIO_TOTALSetText(CDSRtoDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal));

      CDSRtoDetDescuentoSetText(CDSRtoDetDescuento,DatosPresupuesto.CDSPresuDetDESCUENTO.AsString);

      CDSRtoDet.Post;
    end;
end;


procedure TFormPresupuesto_2.AgregarExecute(Sender: TObject);
begin
  DatosPresupuesto.CDSPresuCab.EmptyDataSet;
  DatosPresupuesto.CDSPresuDet.EmptyDataSet;
  DatosPresupuesto.CDSImpuestos.EmptyDataSet;
  DatosPresupuesto.CDSPresuSubDet.EmptyDataSet;

  DatosPresupuesto.CDSPresuCab.Close;
  DatosPresupuesto.CDSPresuDet.Close;
  DatosPresupuesto.CDSImpuestos.Close;
  DatosPresupuesto.CDSPresuSubDet.Close;

  // los abro con un parametro vacio por que no me vaciaba los CDS
  DatosPresupuesto.CDSPresuCab.Params.ParamByName('id').Clear;
  DatosPresupuesto.CDSPresuCab.Open;

  DatosPresupuesto.CDSPresuDet.Params.ParamByName('id').Clear;
  DatosPresupuesto.CDSPresuDet.Open;

  DatosPresupuesto.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosPresupuesto.CDSImpuestos.Open;

  DatosPresupuesto.CDSPresuSubDet.Params.ParamByName('id').Clear;
  DatosPresupuesto.CDSPresuSubDet.Open;

  inherited;
  pnPrincipal.Enabled     := True;
  pnCabecera.Enabled      := True;
  OldLista                := dbcLista.Text;
  pcDetallePresupuesto.ActivePageIndex := 0;
  CpbteNuevo              := 'S';
  dbeFechaVta.SetFocus;
  dbeFechaVta.SelectAll;
  pnAvisoFUAP.Visible:=False;
  if Anulado<>nil Then
    FreeAndNil(Anulado);
end;

procedure TFormPresupuesto_2.MarcaPresupuesto(Marca: string);
begin
  // Marca el presupuesto
  //DMMain_FD.DBXt:=DMMain_FD.SQLConectionMain.BeginTransaction(TDBXIsolations.ReadCommitted);
  DMMain_FD.fdcGestion.StartTransaction;
  try
    DMStoreProcedure.spMarcarPresupuestoFD.Close;
    DMStoreProcedure.spMarcarPresupuestoFD.ParamByName('id').Value    :=DatosPresupuesto.CDSPresuCabID_PR.Value;
    DMStoreProcedure.spMarcarPresupuestoFD.ParamByName('Marca').Value :=Marca;
    DMStoreProcedure.spMarcarPresupuestoFD.ExecProc;
    DMStoreProcedure.spMarcarPresupuestoFD.Close;
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se marco el presupuesto.....');
  end;
 // DMStoreProcedure.spMarcarPresupuestoFD.Close;
end;


procedure TFormPresupuesto_2.MarcarAceptadoExecute(Sender: TObject);
begin
  inherited;
  DatoNew   := DatosPresupuesto.CDSPresuCabID_PR.AsString;
  TipoCpbte := 'PR';
  MarcaPresupuesto('A');
  Recuperar.Execute;
end;

procedure TFormPresupuesto_2.MarcarAnuladoExecute(Sender: TObject);
begin
  inherited;
  DatoNew   := DatosPresupuesto.CDSPresuCabID_PR.AsString;
  TipoCpbte := 'PR';
  MarcaPresupuesto('S');
  Recuperar.Execute;
end;

procedure TFormPresupuesto_2.MarcarRevisionExecute(Sender: TObject);
begin
  inherited;
  DatoNew   := DatosPresupuesto.CDSPresuCabID_PR.AsString;
  TipoCpbte := 'PR';
  MarcaPresupuesto('R');
  Recuperar.Execute;
end;

procedure TFormPresupuesto_2.CalcularDetallexlosIVA1Click(Sender: TObject);
begin
  inherited;
  if DSBase.DataSet.State=dsBrowse then
    DatosPresupuesto.CalcularDetalles;
end;

procedure TFormPresupuesto_2.CambiarClienteExecute(Sender: TObject);
begin
  inherited;
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
  FormCambiaClienteFactura.Id_Cpbte     :=DSBase.DataSet.FieldByName('id_pr').Value;
  FormCambiaClienteFactura.cuit         :=DSBase.DataSet.FieldByName('cuit').Value;
  FormCambiaClienteFactura.Showmodal;
  Recuperar.Execute;
end;

procedure TFormPresupuesto_2.CambiarFechaExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormFecha)) then
    FormFecha:=TFormfecha.Create(self);
  FormFecha.dbcCtaBco.Visible  := False;
  FormFecha.dbcSucursal.Visible:= False;
  FormFecha.lbCta.Visible      := False;
  FormFecha.Label1.Visible     := False;
  FormFecha.fecha              := DatosPresupuesto.CDSPresuCabFECHAVTA.AsDateTime;

  FormFecha.ShowModal;
  if (FormFecha.ModalResult=mrOk) then
    begin
      Modificar.Execute;
      DatosPresupuesto.CDSPresuCabFECHAVTA.AsDateTime:=FormFecha.fecha;
      Confirma.Execute;
    end;
  FreeAndNil(FormFecha);

end;

procedure TFormPresupuesto_2.CambiarFechaVtoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormFecha)) then
    FormFecha:=TFormfecha.Create(self);
  FormFecha.dbcCtaBco.Visible  := False;
  FormFecha.dbcSucursal.Visible:= False;
  FormFecha.lbCta.Visible      := False;
  FormFecha.Label1.Visible     := False;
  FormFecha.fecha              := DatosPresupuesto.CDSPresuCabFECHAVTO_PRESUPUESTO.AsDateTime;

  FormFecha.ShowModal;
  if (FormFecha.ModalResult=mrOk) then
    begin
      Modificar.Execute;
      DatosPresupuesto.CDSPresuCabFECHAVTO_PRESUPUESTO.AsDateTime:=FormFecha.fecha;
      DatosPresupuesto.CDSPresuCabDIAS_VIGENCIA_PRESUPESTO.Value:= Trunc(DatosPresupuesto.CDSPresuCabFECHAVTO_PRESUPUESTO.AsDateTime - DatosPresupuesto.CDSPresuCabFECHAVTA.AsDateTime);
      Confirma.Execute;
    end;
  FreeAndNil(FormFecha);
end;

procedure TFormPresupuesto_2.CambiarNroCpbteExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCambiaNroCpbte)) then
    FormCambiaNroCpbte         :=TFormCambiaNroCpbte.Create(FormCpbte_2);
  FormCambiaNroCpbte.Id        :=DSBase.DataSet.FieldByName('id_pr').Value;
  FormCambiaNroCpbte.Num       :=DSBase.DataSet.FieldByName('NumeroFac').Value;
  FormCambiaNroCpbte.Suc       :=DSBase.DataSet.FieldByName('SucFac').Value;
  FormCambiaNroCpbte.Let       :=DSBase.DataSet.FieldByName('LetraFac').Value;
  FormCambiaNroCpbte.Tipo      :=DSBase.DataSet.FieldByName('TipoCpbte').Value;
  FormCambiaNroCpbte.Clase     :=DSBase.DataSet.FieldByName('ClaseCpbte').Value;
  if Not(VarIsNull(DSBase.DataSet.FieldByName('FechaVta').Value)) Then
    FormCambiaNroCpbte.Fecha   :=DSBase.DataSet.FieldByName('FechaVta').AsDateTime;
  FormCambiaNroCpbte.Fecha2    :=DSBase.DataSet.FieldByName('FechaVta').AsDateTime;
  FormCambiaNroCpbte.Sucursal  :=DSBase.DataSet.FieldByName('Sucursal').Value;
  FormCambiaNroCpbte.CV        :='V';
  FormCambiaNroCpbte.Showmodal;
  Recuperar.Execute;
end;

procedure TFormPresupuesto_2.CancelarExecute(Sender: TObject);
begin
  DatosPresupuesto.CDSPresuCab.Close;
  DatosPresupuesto.CDSPresuDet.Close;
  DatosPresupuesto.CDSImpuestos.Close;

  // los abro con un parametro vacio por que no me vaciaba los CDS
  DatosPresupuesto.CDSPresuCab.Params.ParamByName('id').Clear;
  DatosPresupuesto.CDSPresuCab.Open;

  DatosPresupuesto.CDSPresuDet.Params.ParamByName('id').Clear;
  DatosPresupuesto.CDSPresuDet.Open;

  DatosPresupuesto.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosPresupuesto.CDSImpuestos.Open;

  DatosPresupuesto.CDSPresuCab.EmptyDataSet;
  DatosPresupuesto.CDSPresuDet.EmptyDataSet;
  DatosPresupuesto.CDSImpuestos.EmptyDataSet;
  inherited;
  pnAvisoFUAP.Visible:=False;
  pnCabecera.Enabled:=True;
  pcDetallePresupuesto.ActivePageIndex:=0;
  btNuevo.SetFocus;
  if Anulado<>nil Then FreeAndNil(Anulado);
end;

procedure TFormPresupuesto_2.ClonarPresupuestoExecute(Sender: TObject);
var Directorio:string;
begin
  inherited;
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
  if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.Directorio:='c:\';
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
   begin
      Directorio:=FormBuscaDirectorio.Directorio;
      if Not(DatosPresupuesto.CDSPresuCab.IsEmpty)  Then
        begin
          DatosPresupuesto.CDSPresuCab.SaveToFile(Directorio+'\PresuCab.XML');
          DatosPresupuesto.CDSPresuDet.SaveToFile(Directorio+'\PresuDet.XML');
          DatosPresupuesto.CDSPresuSubDet.SaveToFile(Directorio+'\PresuSub.XML');
          DatosPresupuesto.CDSImpuestos.SaveToFile(Directorio+'\PresuImp.XML');
        end
      else
        ShowMessage('No Hay datos para Copiar....');
      ShowMessage('Datos Copiados....');
    end;
end;

procedure TFormPresupuesto_2.ColumnasClick(Sender: TObject);
begin
  inherited;
  if pnColumnas.Visible=False
    then pnColumnas.Visible:=True
  else pnColumnas.Visible:=False;
end;

procedure TFormPresupuesto_2.ConfirmaExecute(Sender: TObject);
begin
  if CpbteNuevo<>'S' then
    DSBase.DataSet.FieldByName('FECHA_REVISION').Value:=Date;

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
          DatosPresupuesto.CDSPresuCabUSUARIO.Value:= FormLogin.Usuario;
        End;
    end;

  if (DatosPresupuesto.CDSPresuCabNUMEROFAC.AsString='') or (DatosPresupuesto.CDSPresuCabSUCFAC.AsString='') then
    RAISE Exception.Create('El comprobante debe tener numero ...!!!!');


  if (Trim(DatosPresupuesto.CDSPresuDetCODIGOARTICULO.AsString)='') and (DatosPresupuesto.CDSPresuDet.State in [dsInsert,dsEdit]) Then
    DatosPresupuesto.CDSPresuDet.Cancel;

  if DatosPresupuesto.CDSPresuDet.State in [dsInsert,dsEdit] Then
    DatosPresupuesto.CDSPresuDet.Post;

  if DatosPresupuesto.CDSPresuSubDet.State in [dsInsert,dsEdit] Then
    DatosPresupuesto.CDSPresuSubDet.Post;

  DatosPresupuesto.SumarSubDetalle;
  TRY
    IF DatosPresupuesto.CDSPresuCabTotal.AsFloat = 0 THEN
      RAISE Exception.Create('El comprobante no pude tener valor 0.....!!!!');
  FINALLY
  END;
  WITH DatosPresupuesto DO
    BEGIN
      DatoNew     :=IntToStr(CDSPresuCabID_PR.Value);
      TipoCpbte   :=CDSPresuCabTIPOCPBTE.Value;
      if CDSPresuCab.State<>dsBrowse Then
        CDSPresuCab.Post;
   //   if Duplicado then
   //     begin
   //       DatosPresupuesto.CDSContacto.ApplyUpdates(0);
   //      DatosPresupuesto.CDSIncidencias.ApplyUpdates(0);
   //     end;
      inherited;
      Recuperar.Execute;
      if Imprime='S' Then
        if CpbteNuevo='S' Then
          IF (chbImprimeDirecto.Checked) or(MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) THEN
            Imprimir.Execute;

    END;
  pnAvisoFUAP.Visible:=False;
end;

procedure TFormPresupuesto_2.CopiarDetalleExecute(Sender: TObject);
begin
  inherited;
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
  if Not(DatosPresupuesto.CDSPresuCab.IsEmpty)  Then
    begin
      DatosPresupuesto.CDSPresuDet.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\PresuDet.XML');
    end
  else
    ShowMessage('No Hay datos para Copiar....');
  ShowMessage('Datos Copiados....');
end;

procedure TFormPresupuesto_2.CopiarPortaPapelesExecute(Sender: TObject);
begin
  inherited;
  CopiarClipBoard(DBGrillaDetalle);
end;

procedure TFormPresupuesto_2.CopiarPresupuestoExecute(Sender: TObject);
var i,SubNro:byte;
Nombre:String;
CDSCabXML,CDSDetXML,CDSSubXML: TClientDataSet;
P_Gravado,P_Exento,P_ConIVA,Importe_Iva,P_Total:Extended;
ID_Next_Old:Integer;
ID_Prev_Old:Integer;

begin
  inherited;
   gaClon.Minimum:=0;

  if (DSBase.DataSet.State = dsBrowse) and (not(DSBase.DataSet.IsEmpty)) then
    begin
      DatosPresupuesto.CDSPresuCab.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\PresuCab.XML');
      DatosPresupuesto.CDSPresuDet.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\PresuDet.XML');
      DatosPresupuesto.CDSPresuSubDet.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\PresuSub.XML');
      DatosPresupuesto.CDSImpuestos.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\PresuImp.XML');

      CDSCabXML:=TClientDataSet.Create(Self);
      CDSDetXML:=TClientDataSet.Create(Self);
      CDSSubXML:=TClientDataSet.Create(Self);

      CDSCabXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\PresuCab.XML');
      CDSDetXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\PresuDet.XML');
      CDSSubXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\PresuSub.XML');

      Agregar.Execute;

      Application.ProcessMessages;

      gaClon.Minimum  := 0;
      gaClon.Maximum  := CDSDetXML.RecordCount;
      gaClon.Position := 1;

      Duplicado :=True;
      //DuplicarFc:=True;
      For i:=0 to CDSCabXML.FieldCount-1 do
        begin
          if DatosPresupuesto.CDSPresuCab.FindField(CDSCabXML.Fields[i].FieldName)<>nil Then
            begin
              Nombre:=CDSCabXML.Fields[i].FieldName;
              if (Nombre<>'ID_PR') and (Nombre<>'NUMEROFAC') Then
                DatosPresupuesto.CDSPresuCab.FieldByName(Nombre).Value:=CDSCabXML.FieldByName(Nombre).Value;

            end;
        end;
      DatosPresupuesto.CDSPresuCabIMPRESO.Value              := 'N';
      DatosPresupuesto.CDSPresuCabID_OBRA.Value              := -1;
      DatosPresupuesto.CDSPresuCabID_PRESU_NEXT.Value        := -1;
      DatosPresupuesto.CDSPresuCabID_PRESU_PREV.Value        := -1;
      DatosPresupuesto.CDSPresuCabID_OPRODUCC.Value          := -1;
      DatosPresupuesto.CDSPresuCabID_FACTURA_ANTICIPO.Value  := -1;
      DatosPresupuesto.CDSPresuCabID_FACTURA.Value           := -1;
      DatosPresupuesto.CDSPresuCabREFERENCIA.AsString        := '';
      DatosPresupuesto.CDSPresuCabID_OPRODUCC.Value          := -1;
      DatosPresupuesto.CDSPresuCabMUESTRAOPRODUCCION.Value   := '';
      DatosPresupuesto.CDSPresuCabMUESTRANOTAVENTA_NRO.Value := '';
      DatosPresupuesto.CDSPresuCabMUESTRAFACTURA.Value       := '';




      DatosPresupuesto.CDSPresuCabANULADO.Value             := 'N';
      DatosPresupuesto.CDSPresuCabSUB_NRO.AsString          := '00';
      DatosPresupuesto.CDSPresuCabANULADO.Value             := 'N';
      DatosPresupuesto.CDSPresuCabUSUARIO.Value             := DMMain_FD.UsuarioActivo;
      DatosPresupuesto.CDSPresuCabFECHA_HORA.AsDateTime     := Now;


      CDSDetXML.First;
      CDSSubXML.First;
      DatosPresupuesto.CDSPresuDet.AfterPost  :=nil;
      DatosPresupuesto.CDSPresuDet.AfterScroll:=nil;

      gaClon.Visible:=True;

      while not(CDSDetXML.Eof) do
        begin
          DatosPresupuesto.CDSPresuDet.Append;
          For i:=0 to CDSDetXML.FieldCount-1 do
            begin
              if DatosPresupuesto.CDSPresuDet.FindField(CDSDetXML.Fields[i].FieldName)<>nil Then
                begin
                  Nombre:=CDSDetXML.Fields[i].FieldName;
                  if Nombre<>'ID' Then
                    DatosPresupuesto.CDSPresuDet.FieldByName(Nombre).Value:=CDSDetXML.FieldByName(Nombre).Value;
                end;
            end;
          gaClon.Position:= gaClon.Position+1;
          Application.ProcessMessages;
          DatosPresupuesto.CDSPresuDetID_CABPRES.Value:=DatosPresupuesto.CDSPresuCabID_PR.Value;
          DatosPresupuesto.CDSPresuDet.Post;
          CDSDetXML.Next;
        end;
      DatosPresupuesto.SumaFinal;
      DatosPresupuesto.CDSPresuDet.AfterPost  :=DatosPresupuesto.CDSPresuDetAfterScroll;
      DatosPresupuesto.CDSPresuDet.AfterScroll:=DatosPresupuesto.CDSPresuDetAfterScroll;

      CDSSubXML.First;
      while not(CDSSubXML.Eof) do
        begin
          if DatosPresupuesto.CDSPresuSubDet.Locate('ITEM_NRO',CDSSubXML.FieldByName('ITEM_NRO').AsString,[]) Then
            begin
              DatosPresupuesto.CDSPresuSubDet.Edit;
              For i:=0 to CDSSubXML.FieldCount-1 do
                begin
                  if DatosPresupuesto.CDSPresuSubDet.FindField(CDSSubXML.Fields[i].FieldName)<>nil Then
                    begin
                      Nombre:=CDSSubXML.Fields[i].FieldName;
                      if (Nombre='CANTIDAD') Then
                        DatosPresupuesto.CDSPresuSubDetCANTIDADSetText(DatosPresupuesto.CDSPresuSubDetCANTIDAD,CDSSubXML.FieldByName(Nombre).AsString);
                      if (Nombre='DETALLE') Then
                        DatosPresupuesto.CDSPresuSubDetDETALLE.AsString:=CDSSubXML.FieldByName(Nombre).AsString;

//                       DatosPresupuesto.CDSPresuSubDet.FieldByName(Nombre).Value:=CDSSubXML.FieldByName(Nombre).Value;
                    end;
                end;
              DatosPresupuesto.CDSPresuSubDetID_CAB.AsInteger:=DatosPresupuesto.CDSPresuCabID_PR.AsInteger;
              DatosPresupuesto.CDSPresuSubDet.Post;
            end;
          CDSSubXML.Next;
        end;
    end;
  gaClon.Visible:=False;
end;

procedure TFormPresupuesto_2.cxGrid2DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  inherited;
  if DiscriminaIva='S' then
    edTotalNeto.Text:=AText;
end;

procedure TFormPresupuesto_2.cxGrid2DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  inherited;
  if DiscriminaIva='N' then
    edTotalNeto.Text:=AText;

end;

procedure TFormPresupuesto_2.ImportarXMLExecute(Sender: TObject);
var i,SubNro:byte;
  Directorio:string;
  Nombre,NumStr:String;
  CDSCabXML,CDSDetXML,CDSSubXML: TClientDataSet;

begin
  inherited;
  if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.Directorio:='c:\';
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
   begin
      Directorio:=FormBuscaDirectorio.Directorio;

//    CDSCabXML:=TClientDataSet.Create(Self);
      CDSDetXML:=TClientDataSet.Create(Self);
      CDSSubXML:=TClientDataSet.Create(Self);

 //   CDSCabXML.LoadFromFile(Directorio+'\PresuCab.XML');
      CDSDetXML.LoadFromFile(Directorio+'\PresuDet.XML');
      CDSSubXML.LoadFromFile(Directorio+'\PresuSub.XML');

      Agregar.Execute;

      Application.ProcessMessages;


{     For i:=0 to CDSCabXML.FieldCount-1 do
        begin
          if DatosPresupuesto.CDSPresuCab.FindField(CDSCabXML.Fields[i].FieldName)<>nil Then
            begin
              Nombre:=CDSCabXML.Fields[i].FieldName;
              if (Nombre<>'ID_PR') Then
                DatosPresupuesto.CDSPresuCab.FieldByName(Nombre).Value:=CDSCabXML.FieldByName(Nombre).Value;
            end;
        end;
      DatosPresupuesto.CDSPresuCabIMPRESO.Value             := 'N';
      DatosPresupuesto.CDSPresuCabFECHA_REVISION.AsDateTime := Date;
      DatosPresupuesto.CDSPresuCabANULADO.Value             := 'N';
      DatosPresupuesto.CDSPresuCabUSUARIO.Value             := DMMain_FD.UsuarioActivo;
      DatosPresupuesto.CDSPresuCabFECHA_HORA.AsDateTime     := Now;
}
      CDSDetXML.First;
      CDSSubXML.First;
      DatosPresupuesto.CDSPresuDet.AfterPost   := nil;
      DatosPresupuesto.CDSPresuDet.AfterScroll := nil;

       while not(CDSDetXML.Eof) do
        begin
          DatosPresupuesto.CDSPresuDet.Append;
          For i:=0 to CDSDetXML.FieldCount-1 do
            begin
              if DatosPresupuesto.CDSPresuDet.FindField(CDSDetXML.Fields[i].FieldName)<>nil Then
                begin
                  Nombre:=CDSDetXML.Fields[i].FieldName;
                  if (Nombre<>'ID') and (Nombre<>'ID_CABPRES') and (Nombre<>'TIPOCPBTE')
                     and (Nombre<>'CLASECPBTE') and (Nombre<>'NROCPBTE') and (Nombre<>'SUCURSAL')
                     and (Nombre<>'DEPOSITO') Then
                    DatosPresupuesto.CDSPresuDet.FieldByName(Nombre).Value:=CDSDetXML.FieldByName(Nombre).Value;
                end;
            end;
          Application.ProcessMessages;
          DatosPresupuesto.CDSPresuDetID_CABPRES.Value:=DatosPresupuesto.CDSPresuCabID_PR.Value;
          DatosPresupuesto.CDSPresuDet.Post;
          CDSDetXML.Next;
        end;
      DatosPresupuesto.SumaFinal;
      DatosPresupuesto.CDSPresuDet.AfterPost  :=DatosPresupuesto.CDSPresuDetAfterScroll;
      DatosPresupuesto.CDSPresuDet.AfterScroll:=DatosPresupuesto.CDSPresuDetAfterScroll;

      CDSSubXML.First;
      while not(CDSSubXML.Eof) do
        begin
          if DatosPresupuesto.CDSPresuSubDet.Locate('ITEM_NRO',CDSSubXML.FieldByName('ITEM_NRO').Value,[]) Then
            begin
              DatosPresupuesto.CDSPresuSubDet.Edit;
              For i:=0 to CDSSubXML.FieldCount-1 do
                begin
                  if DatosPresupuesto.CDSPresuSubDet.FindField(CDSSubXML.Fields[i].FieldName)<>nil Then
                    begin
                      Nombre:=CDSSubXML.Fields[i].FieldName;
                      if (Nombre<>'ID_CAB') Then
                        DatosPresupuesto.CDSPresuSubDet.FieldByName(Nombre).Value:=CDSSubXML.FieldByName(Nombre).Value
                    end;
                end;
              DatosPresupuesto.CDSPresuSubDet.Post;
            end;
          CDSSubXML.Next;
        end;

     end;
end;

procedure TFormPresupuesto_2.ImprimeTotal1Click(Sender: TObject);
begin
  inherited;
  ImprimeTotal1.Checked:=Not(ImprimeTotal1.Checked);
end;

procedure TFormPresupuesto_2.ImprimeUnitario1Click(Sender: TObject);
begin
  inherited;
  ImprimeUnitario1.Checked:=Not(ImprimeUnitario1.Checked);
end;

procedure TFormPresupuesto_2.ImprimirExecute(Sender: TObject);
var DiscrIva,Cuit:String;
BEGIN
  DiscrIva:=FormPresupuesto_2.DiscriminaIva;
  FormPresupuesto_2.DiscriminaIva:='S';
  if FileExists(DMMain_FD.PathReportesCpbte+'\'+DatosPresupuesto.QComprobREPORTE.AsString) then
    begin
      frPresupuesto.PrintOptions.Printer:=PrNomCpbte;
      frPresupuesto.SelectPrinter;


      DMMain_FD.QOpciones.Close;
      DMMain_FD.QOpciones.ParamByName('opcion').Value:='CPBTES';
      DMMain_FD.QOpciones.Open;

      DatosPresupuesto.CDSEmpresa.Close;
      DatosPresupuesto.CDSEmpresa.Open;

      DatosPresupuesto.QComprob.Close;
      DatosPresupuesto.QComprob.ParamByName('id').Value  := DatosPresupuesto.CDSPresuCabID_TIPOCOMPROBANTE.Value;
      DatosPresupuesto.QComprob.ParamByName('suc').Value := DatosPresupuesto.CDSPresuCabSUCURSAL.Value;
      DatosPresupuesto.QComprob.Open;

      DatosPresupuesto.CDSPresuSubDet.MasterFields    := 'ITEM_NRO';
      DatosPresupuesto.CDSPresuSubDet.IndexFieldNames := 'ITEM_NRO';
      DatosPresupuesto.CDSPresuSubDet.MasterSource    := DatosPresupuesto.DSPresuDet;


      frPresupuesto.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosPresupuesto.QComprobREPORTE.AsString);

      if VertItemAgrupado.Checked then
        begin
          DatosPresupuesto.CDSPresuDet.IndexFieldNames := 'ITEM_NRO;ORDEN_ITEM;DETALLE';
          frPresupuesto.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+AnsiReplaceStr(DatosPresupuesto.QComprobREPORTE.AsString,'.fr3','')+'_Agrupado.fr3');
        end;
      if ImprimeUnitario1.Checked then
        frPresupuesto.Variables['ImpUnitario']  :='''S'''
      else
        frPresupuesto.Variables['ImpUnitario']  :='''N''';
      if ImprimeTotal1.Checked then
        frPresupuesto.Variables['ImpTotal']     :='''S'''
      else
       frPresupuesto.Variables['ImpTotal']     :='''N''';

      
      frPresupuesto.PrintOptions.Copies :=DatosPresupuesto.QComprobCOPIAS.Value;

      frPresupuesto.PrepareReport;

      DMMain_FD.QOpciones.CLose;
      DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='PREVIEWPRESUP';
      DMMain_FD.QOpciones.Open;
          //VirtualUI.
         // if NOt(VirtualUI.Active) then
      begin
        frPresupuesto.PrintOptions.ShowDialog       :=  not chbImprimeDirecto.Checked;   // Si está Checked, no muestra mensaje
        if (DMMain_FD.QOpciones.Fields[0].AsString[1]='S') then
          frPresupuesto.ShowReport
        else
          frPresupuesto.Print;
      end;
      DMMain_FD.QOpciones.CLose;
      DatosPresupuesto.CDSEmpresa.Close;

      DatosPresupuesto.CDSPresuSubDet.MasterFields    := '';
      DatosPresupuesto.CDSPresuSubDet.IndexFieldNames := '';
      DatosPresupuesto.CDSPresuSubDet.MasterSource    := Nil;
    end
  else
    Showmessage('No hay reporte definido para este comprobante. Chequear configuracion en Inicio->Comprobantes');
  FormPresupuesto_2.DiscriminaIva:=DiscrIva;
  DatosPresupuesto.CDSPresuDet.Refresh;
END;

procedure TFormPresupuesto_2.IncidenciasExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty)) then
    begin
      if Not(Assigned(FormPresupuestoIncidencias)) then
        FormPresupuestoIncidencias := TFormPresupuestoIncidencias.Create(Self);
      FormPresupuestoIncidencias.id     := DSBase.DataSet.FieldByName('ID_PR').Value;
      FormPresupuestoIncidencias.Codigo := DSBase.DataSet.FieldByName('CODIGO').Value;
      FormPresupuestoIncidencias.Recuperar.Execute;
      FormPresupuestoIncidencias.Show;
    end;
end;

procedure TFormPresupuesto_2.lbPrevClick(Sender: TObject);
begin
  inherited;
  DatoNew:=DSBase.DataSet.FieldByName('ID_PRESU_PREV').AsString;
  if (DatoNew<>'') and (StrToInt(DatoNew)>0) then
    Recuperar.Execute;
end;

procedure TFormPresupuesto_2.lbSigClick(Sender: TObject);
begin
  inherited;
  DatoNew:=DSBase.DataSet.FieldByName('ID_PRESU_NEXT').AsString;
  if (DatoNew<>'') and (StrToInt(DatoNew)>0) then
    Recuperar.Execute;
end;


function TFormPresupuesto_2.DBGrillaDetalleCheckIfBooleanField(Grid: TJvDBGrid;
  Field: TField; var StringForTrue, StringForFalse: string): Boolean;
begin
  inherited;
  result   := Field = DatosPresupuesto.CDSPresuDetACEPTADO;
  StringForTrue  := 'S';
  StringForFalse := 'N';
end;

procedure TFormPresupuesto_2.DBGrillaDetalleColEnter(Sender: TObject);
var Enter:Char;
begin
  inherited;
  Enter:=#13;
  pnAvisoFUAP.Visible:=False;
  if DBGrillaDetalle.SelectedIndex=0 then
    DBGrillaDetalle.SelectedIndex:=1;

 // if (DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'CODIGOARTICULO') then
 //   DBGrillaDetalle.DataSource.DataSet.FieldByName('CODIGOARTICULO'). := DBGrillaDetalle.SelectedIndex+1;

//  if (DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Visible=False) then
//    DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex+1;

  if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'UNIDAD' then
    DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex+1;

  if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'IVA_TASA' then
    DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex+1;

  if (DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'DESCUENTO') and (SAltearDescto1.CHecked) then
    DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex+1;

  IF (DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'MUESTRA_UNIT_NETO') THEN
    DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex+1;

  if (DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'ITEM_NRO') and (SAltearItem1.CHecked) then
    FormPresupuesto_2.DBGrillaDetalle.OnKeyPress(FormPresupuesto_2.DBGrillaDetalle,Enter);

  if (DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'TOTAL') then
    DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex+1;

  IF (DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'CANTIDAD') and (DBGrillaDetalle.Fields[0].AsString<>'') THEN
    BEGIN
      if ((DatosPresupuesto.CDSPresuCabFECHAVTA.AsDateTime-DMMain_FD.FechaUltimaActulizacionPrecio)>
         (DMMain_FD.IntervMaxDesdeULtActuPrecio)) and (DMMain_FD.IntervMaxDesdeULtActuPrecio<>0) and
         (DSBase.State=dsInsert) Then
         begin
            pnAvisoFUAP.Caption:='Ult.Act. de Precio >> '+DateToStr(DMMain_FD.FechaUltimaActulizacionPrecio);
            pnAvisoFUAP.Visible:=True;
         end
      else
        pnAvisoFUAP.Visible:=False;
//      IF (DatosPresupuesto.CDSPresuDet.State IN [dsEdit, dsInsert]) AND
//        (DatosPresupuesto.CDSPresuDetModo_Gravamen.Value = 'M') THEN
//        BEGIN
//          FormComposicionPrecio              := TFormComposicionPrecio.Create(Application);
//          FormComposicionPrecio.ValorGravado := DatosPresupuesto.CDSPresuDetUnitario_Gravado.AsFloat;
//          FormComposicionPrecio.ValorExento  := DatosPresupuesto.CDSPresuDetUnitario_Exento.AsFloat;
//          FormComposicionPrecio.ShowModal;
//          // FreeAndNil(ComposicionPrecioForm);
//          DatosPresupuesto.CDSPresuDetUnitario_Exento.AsFloat  := FormComposicionPrecio.ValorExento;
//          DatosPresupuesto.CDSPresuDetUnitario_Gravado.AsFloat := FormComposicionPrecio.ValorGravado;
//          DatosPresupuesto.CDSPresuDetUnitario_TotalSetText(DatosPresupuesto.CDSPresuDetUnitario_Total, DatosPresupuesto.CDSPresuDetUnitario_Total.AsString);
//        END;
    END
end;

procedure TFormPresupuesto_2.DBGrillaDetalleColExit(Sender: TObject);
begin
  inherited;
  sbEstado.Panels[0].Text:='';
  sbEstado.Panels[1].Text:='';
end;

procedure TFormPresupuesto_2.DBGrillaDetalleDblClick(Sender: TObject);
begin
  inherited;
  if (not(DSBase.DataSet.IsEmpty)) and (not(DBGrillaDetalle.DataSource.DataSet.IsEmpty)) then
    begin
      if not(Assigned(FormStock_2)) then
        FormStock_2:=TFormStock_2.Create(Self);
      FormStock_2.DatoNew:=DBGrillaDetalle.DataSource.DataSet.FieldByName('codigoArticulo').Value;
      formstock_2.recuperar.Execute;
      FormStock_2.Show;
    end;
end;

procedure TFormPresupuesto_2.DBGrillaDetalleDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  inherited;
  if (DatosPresupuesto.CDSPresuCab.State in [dsInsert,dsEdit]) Then
    begin
      DatosPresupuesto.CDSPresuDetCodigoArticuloSetText(DatosPresupuesto.CDSPresuDetCodigoArticulo, (Source as TjvDBGrid).DataSource.DataSet.FieldByName('Codigo_stk').AsString);
      DatosPresupuesto.CDSPresuDetCantidadSetText(DatosPresupuesto.CDSPresuDetCantidad,'1');
      DatosPresupuesto.CDSPresuDetUnitario_TotalSetText(DatosPresupuesto.CDSPresuDetUnitario_Total,(Source as TjvDBGrid).DataSource.DataSet.FieldByName('MuestraPrecio').Value);
      DatosPresupuesto.CDSPresuDet.Append;
    end;
end;

procedure TFormPresupuesto_2.DBGrillaDetalleDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  if Source=FormConsultaStock.dbgStock Then
    Accept:=True
  else
    Accept:=False;
end;

procedure TFormPresupuesto_2.DBGrillaDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
const
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($CCCCFF);
begin
  inherited;
  if Trim(DatosPresupuesto.CDSPresuDetNOTAS.AsString)<>'' then
    DBGrillaDetalle.Canvas.Font.Color:=clBlue;

  if (DatosPresupuesto.CDSPresuDetUnitario_Total.Value<DatosPresupuesto.CDSPresuDetCOSTO_TOTAL.Value) Then
    DBGrillaDetalle.canvas.brush.color := clPaleRed
  else
    if (gdFocused in State) then
      DBGrillaDetalle.canvas.brush.color := clBlack;


  DBGrillaDetalle.Canvas.Font.Style:=[];

  if (DatosPresupuesto.CDSPresuDetPERCIBE_IVA.AsString='S') and (DataCol=0) then
    DBGrillaDetalle.Canvas.Brush.Color:=clAqua;

  if (DatosPresupuesto.CDSPresuDetMargen.AsFloat<DatosPresupuesto.MargenUtilidad) and
     (DatosPresupuesto.CDSPresuDetCodigoArticulo.AsString<>'') and
     (DatosPresupuesto.CDSPresuDetMargen.AsFloat<>0) and
     (DatosPresupuesto.CDSPresuDetMargen.AsString<>'') then
       DBGrillaDetalle.Canvas.Font.Style:=[fsBold];

  DBGrillaDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormPresupuesto_2.DBGrillaDetalleEnter(Sender: TObject);
begin
  inherited;
  if (DBGrillaDetalle.SelectedIndex<1) or (DBGrillaDetalle.SelectedIndex>1) then
    DBGrillaDetalle.SelectedIndex:=1;
  if DSBase.State<>dsBrowse then
    sbEstado.Panels[0].Text:=' F-11:Lista los movimientos del artículo elegido';
end;

procedure TFormPresupuesto_2.DBGrillaDetalleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_LEFT) and (Shift =[ssCtrl]) THEN
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
    END
  else
    IF (Key = VK_F11) and (DatosPresupuesto.CDSPresuDetCODIGOARTICULO.AsString<>'') THEN
      BEGIN
        IF NOT (Assigned(FormArticulosVendidos)) THEN
          BEGIN
            FormArticulosVendidos                := TFormArticulosVendidos.Create(Application);
            FormArticulosVendidos.CodigoCliente  := DatosPresupuesto.CDSPresuCabCODIGO.Value;
            FormArticulosVendidos.CodigoArticulo := DatosPresupuesto.CDSPresuDetCODIGOARTICULO.Value;
            FormArticulosVendidos.ShowModal;
          END;
      END;

end;

procedure TFormPresupuesto_2.DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
var Tope:Integer;
begin
  inherited;
  //if (SaltearItem1.Checked=True then
  Tope:=ColVisibles;
//  else
  //  Tope:=9;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (DBGrillaDetalle.SelectedIndex < Tope) THEN
        begin
          DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex + 1;
          if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Visible=False Then
            DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex + 1;
        end
      ELSE
        BEGIN
          IF DBGrillaDetalle.DataSource.DataSet.Eof THEN
            DBGrillaDetalle.DataSource.DataSet.Append;
          DBGrillaDetalle.SelectedIndex := 0;
          Key := #0;
        END;
    END
  ELSE IF (Key = #10) THEN
    BEGIN
      Key := #0;
      if Not(Assigned(FormBuscadorArticulos)) then
        begin
          Key := #0;
          IF DBGrillaDetalle.SelectedField = DatosPresupuesto.CDSPresuDetCodigoArticulo THEN
            BuscarArticulo.Execute;
        end;
      END
  else
    if (key = #27) then
      DBGrillaDetalle.DataSource.DataSet.Cancel;
end;





procedure TFormPresupuesto_2.dbIdFacturaClick(Sender: TObject);
begin
  inherited;
  if (DatosPresupuesto.CDSPresuCabID_FACT.AsString<>'') and (DatosPresupuesto.CDSPresuCabID_FACT.AsInteger>0) then
    begin
      DatosPresupuesto.QFcAsociada.Close;
      DatosPresupuesto.QFcAsociada.ParamByName('id').Value:=DatosPresupuesto.CDSPresuCabID_FACT.AsInteger;
      DatosPresupuesto.QFcAsociada.Open;
      if DatosPresupuesto.QFcAsociadaID_FC.AsString<>'' then
        begin
          if DatosPresupuesto.QFcAsociadaTIPOCPBTE.Value='FO' then
            begin
              if (Assigned(FormCpbteCtdo_2)) then
                FreeAndNil(FormCpbteCtdo_2);
              if Not(Assigned(FormCpbteCtdo_2)) then
                FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
              FormCpbteCtdo_2.TipoCpbte:='FO';
              FormCpbteCtdo_2.DatoNew  :=DatosPresupuesto.QFcAsociadaID_FC.AsString;
              FormCpbteCtdo_2.Recuperar.Execute;
              FormCpbteCtdo_2.Show;
            end
          else
            if DatosPresupuesto.QFcAsociadaTIPOCPBTE.Value='FC' then
              begin
                if (Assigned(FormCpbte_2)) then
                  FreeAndNil(FormCpbte_2);
                if Not(Assigned(FormCpbte_2)) then
                  FormCpbte_2:=TFormCpbte_2.Create(self);
                FormCpbte_2.TipoCpbte:='FC';
                FormCpbte_2.DatoNew  :=DatosPresupuesto.QFcAsociadaID_FC.AsString;
                FormCpbte_2.Recuperar.Execute;
                FormCpbte_2.Show;
              end;
        end;
    end;

end;

procedure TFormPresupuesto_2.dbIdRtoClick(Sender: TObject);
begin
  inherited;
  if (DatosPresupuesto.CDSPresuCabID_RTO.AsString<>'') and (DatosPresupuesto.CDSPresuCabID_RTO.AsInteger>0) then
    begin
      if (Assigned(FormRemitos)) then
        FreeAndNil(FormRemitos);
      if Not(Assigned(FormRemitos)) then
        FormRemitos:=TFormRemitos.Create(self);
      FormRemitos.TipoCpbte:='RE';
      FormRemitos.DatoNew  :=DatosPresupuesto.CDSPresuCabID_RTO.AsString;
      FormRemitos.Recuperar.Execute;
      FormRemitos.Show;
    end;
end;

procedure TFormPresupuesto_2.dblMonedaClick(Sender: TObject);
begin
  inherited;
  DSBase.DataSet.FieldByName('MONEDA_CPBTE_COTIZACION').Value:= dblMoneda.ListSource.DataSet.FieldByName('COTIZACION').Value;
  Recalcular.Execute;
end;

procedure TFormPresupuesto_2.DBText16Click(Sender: TObject);
begin
  inherited;
 if (DatosPresupuesto.CDSPresuCabID_FACTURA_ANTICIPO.AsString<>'') and (DatosPresupuesto.CDSPresuCabID_FACTURA_ANTICIPO.AsInteger>0) then
    begin
      DatosPresupuesto.QFcAsociada.Close;
      DatosPresupuesto.QFcAsociada.ParamByName('id').Value:=DatosPresupuesto.CDSPresuCabID_FACTURA_ANTICIPO.AsInteger;
      DatosPresupuesto.QFcAsociada.Open;
      if DatosPresupuesto.QFcAsociadaID_FC.AsString<>'' then
        begin
          if DatosPresupuesto.QFcAsociadaTIPOCPBTE.Value='FO' then
            begin
              if (Assigned(FormCpbteCtdo_2)) then
                FreeAndNil(FormCpbteCtdo_2);
              if Not(Assigned(FormCpbteCtdo_2)) then
                FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
              FormCpbteCtdo_2.TipoCpbte:='FO';
              FormCpbteCtdo_2.DatoNew  :=DatosPresupuesto.QFcAsociadaID_FC.AsString;
              FormCpbteCtdo_2.Recuperar.Execute;
              FormCpbteCtdo_2.Show;
            end
          else
            if DatosPresupuesto.QFcAsociadaTIPOCPBTE.Value='FC' then
              begin
                if (Assigned(FormCpbte_2)) then
                  FreeAndNil(FormCpbte_2);
                if Not(Assigned(FormCpbte_2)) then
                  FormCpbte_2:=TFormCpbte_2.Create(self);
                FormCpbte_2.TipoCpbte:='FC';
                FormCpbte_2.DatoNew  :=DatosPresupuesto.QFcAsociadaID_FC.AsString;
                FormCpbte_2.Recuperar.Execute;
                FormCpbte_2.Show;
              end;
        end;
    end;

end;

procedure TFormPresupuesto_2.dbcObraClick(Sender: TObject);
begin
  inherited;
  DatosPresupuesto.CDSObrasSector.Close;
  DatosPresupuesto.CDSObrasSector.Params.ParamByName('obra').Value:=DSBase.DataSet.FieldByName('id_obra').AsInteger;
  DatosPresupuesto.CDSObrasSector.Open;
end;

//procedure TFormPresupuesto_2.dbcObraKeyDown(Sender: TObject;
//  var Key: Word; Shift: TShiftState);
//begin
//  inherited;
//  if DSBase.State in [dsInsert,dsEdit] then
//    begin
//      if (key=VK_back) or (Key=VK_delete) Then
//        begin
//          DSBase.DataSet.FieldByName('ID_OBRA').Value:=-1;
//          DSBase.DataSet.FieldByName('ID_OBRA_SECTOR').Value:=-1;
//        end;
//    end;
//end;

procedure TFormPresupuesto_2.dbcObraSectorEnter(Sender: TObject);
begin
  inherited;
  DatosPresupuesto.CDSObrasSector.Close;
  DatosPresupuesto.CDSObrasSector.Params.ParamByName('obra').Value:=DSBase.DataSet.FieldByName('id_obra').AsInteger;
  DatosPresupuesto.CDSObrasSector.Open;
end;

procedure TFormPresupuesto_2.dbcObraSectorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   begin
      if (key=VK_back) or (Key=VK_delete) Then
        begin
          DSBase.DataSet.FieldByName('ID_OBRA_SECTOR').Value:=-1;
        end;
    end;
end;

procedure TFormPresupuesto_2.dbtOProdClick(Sender: TObject);
begin
  inherited;
 inherited;
  if (DatosPresupuesto.CDSPresuCabID_OPRODUCC.AsString<>'') and (DatosPresupuesto.CDSPresuCabID_OPRODUCC.AsInteger>0) then
    begin
      if (Assigned(FormOrdenProduccion)) then
        FreeAndNil(FormOrdenProduccion);
      if Not(Assigned(FormOrdenProduccion)) then
        FormOrdenProduccion:=TFormOrdenProduccion.Create(Application); //le puse Applucation por si es llamado de O.P
      FormOrdenProduccion.TipoCpbte := 'OR';
      FormOrdenProduccion.DatoNew   := DatosPresupuesto.CDSPresuCabID_OPRODUCC.AsString;
      FormOrdenProduccion.Recuperar.Execute;
      FormOrdenProduccion.Show;
    end;
end;

procedure TFormPresupuesto_2.dbTotalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  dbTotal.Hint:='Valor Pesos: '+FormatFloat(',0.00',DatosPresupuesto.CDSPresuCabTOTAL.AsFloat*DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.ASFloat);
  if (DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.ASFloat>1) then
  dbTotal.ShowHint:=True
  else
  dbTotal.ShowHint:=False;
end;

procedure TFormPresupuesto_2.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsInsert,dsEdit]) then
    begin
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos:=TFormBuscadorArticulos.Create(self);
      //FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
      //FormBuscadorArticulos.CampoNro          := 1;
      FormBuscadorArticulos.Param1      :=1;
      FormBuscadorArticulos.Param2      :=3;
      FormBuscadorArticulos.Param3      :=3;
      FormBuscadorArticulos.Esquema     := DMMain_FD.GetEsquemaLista(DSBase.DataSet.FieldByName('CODIGO').AsString);
      FormBuscadorArticulos.ListaPrecio := DatosPresupuesto.CDSPresuCabLISTAPRECIO.Value;
      FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        DatosPresupuesto.CDSPresuDetCodigoArticuloSetText(DatosPresupuesto.CDSPresuDetCodigoArticulo,FormBuscadorArticulos.Codigo);
    end;
end;

procedure TFormPresupuesto_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.TipoCpbte1 := 'PR';
  FormBuscaCpbte.TipoCpbte2 := '';
  FormBuscaCpbte.TipoCpbte3 := '';
  if Not(VertItemAgrupado.Checked) then
    FormBuscaCpbte.Tag := 4
  else
    if (VertItemAgrupado.Checked) then
      FormBuscaCpbte.Tag := 400;
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:= ' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:= FormBuscaCpbte.TipoCpbte;
      DatoNew  := IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;
  cxGrid1DBTableView1.DataController.Groups.FullExpand;

  DatosPresupuesto.CDSPresuCab.IndexFieldNames:='CLASECPBTE;LETRAFAC;SUCFAC;NUMEROFAC';

end;

procedure TFormPresupuesto_2.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  DMBuscadores.CDSBuscaComprob.Close;
  DMBuscadores.CDSBuscaComprob.CommandText:='';
  DMBuscadores.CDSBuscaComprob.CommandText:= 'select * from comprobantes where sucursal = :suc and '+
                                             ' compra_venta = ''V'' and (tipo_comprob = ''PR'' ) ';
  DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value  := DatosPresupuesto.CDSPresuCabSUCURSAL.Value;

  DMBuscadores.CDSBuscaComprob.Open;

 if Not(Assigned(FormBuscaComprobantes)) then
    FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;

  if FormBuscaComprobantes.ModalResult=mrOk Then
    DatosPresupuesto.CDSPresuCabID_TIPOCOMPROBANTESetText(DatosPresupuesto.CDSPresuCabID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));

  DMBuscadores.CDSBuscaComprob.Close;

end;


procedure TFormPresupuesto_2.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
    FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''S'''; // Activos
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    DatosPresupuesto.CDSPresuCabCodigoSetText(DatosPresupuesto.CDSPresuCabCodigo,FormBuscadorClientes.Codigo);

end;

procedure TFormPresupuesto_2.BuscarLdrExecute(Sender: TObject);
begin
  inherited;
  DatosPresupuesto.CDSBuscaLdr.Close;
  DatosPresupuesto.CDSBuscaLdr.Params.ParamByName('Codigo').Value := DatosPresupuesto.CDSPresuCabCodigo.Value;
  DatosPresupuesto.CDSBuscaLdr.Open;
  comBuscadorLdr.Execute;
  if comBuscadorLdr.rOk Then
    DatosPresupuesto.CDSPresuCabLDRSetText(DatosPresupuesto.CDSPresuCabLDR, IntToStr(comBuscadorLdr.Id));
  DatosPresupuesto.CDSBuscaLdr.Close;
end;

procedure TFormPresupuesto_2.BuscarObraExecute(Sender: TObject);
begin
  inherited;
  ComBuscadorObra.Data.Open;
  ComBuscadorObra.Execute;
  if ComBuscadorObra.rOk then
    begin
      DSBase.DataSet.FieldByName('ID_OBRA').Text:=ComBuscadorObra.Id;
      DSBase.DataSet.FieldByName('ID_OBRA_SECTOR').Clear;
    end;
  ComBuscadorObra.Data.Close;

end;

procedure TFormPresupuesto_2.BuscarPorObsExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscadorPorObs)) THEN
    FormBuscadorPorObs := TFormBuscadorPorObs.Create(Application);
  FormBuscadorPorObs.TipoComp:='P';
  FormBuscadorPorObs.ShowModal;
  IF FormBuscadorPorObs.Id > 0 THEN
    BEGIN
      TipoCpbte:= FormBuscadorPorObs.Tipo;
      DatoNew  := IntToStr(FormBuscadorPorObs.id);
      Recuperar.Execute;
    end;
end;

procedure TFormPresupuesto_2.BuscarPorReferenciaExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(self);
  FormBuscarPorNroReferenica.CompraVta:='PR';
  FormBuscarPorNroReferenica.ShowModal;
  IF (FormBuscarPorNroReferenica.ModalResult=mrOK) then
    begin
      if (FormBuscarPorNroReferenica.Id > 0) THEN
        BEGIN
            TipoCpbte:= FormBuscarPorNroReferenica.Tipo;
            DatoNew  := IntToStr(FormBuscarPorNroReferenica.id);
            Recuperar.Execute;
        END
      else
        Showmessage('No se encontró el presupuesto');
    end;

end;

procedure TFormPresupuesto_2.BuscarPresupuestoExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscadorPresupuestos)) THEN
    FormBuscadorPresupuestos := TFormBuscadorPresupuestos.Create(Application);
  FormBuscadorPresupuestos.ShowModal;
  IF FormBuscadorPresupuestos.Id > 0 THEN
    BEGIN
      TipoCpbte:= FormBuscadorPresupuestos.Tipo;
      DatoNew  := IntToStr(FormBuscadorPresupuestos.id);
      Recuperar.Execute;
    end;
end;

procedure TFormPresupuesto_2.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  DatosPresupuesto.CDSBuscaSucursal.Close;
  DatosPresupuesto.CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    DatosPresupuesto.CDSPresuCabSucursalSetText(DatosPresupuesto.CDSPresuCabSucursal, IntToStr(comBuscadorSucursal.Id));
  DatosPresupuesto.CDSBuscaSucursal.Close;
end;

procedure TFormPresupuesto_2.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  DatosPresupuesto.CDSBuscaDeposito.Close;
  DatosPresupuesto.CDSBuscaDeposito.Open;
  comBuscadorDeposito.Execute;
  if comBuscadorDeposito.rOk Then
    DatosPresupuesto.CDSPresuCabDepositoSetText(DatosPresupuesto.CDSPresuCabDeposito, IntToStr(comBuscadorDeposito.Id));
  DatosPresupuesto.CDSBuscaDeposito.Close;
end;

procedure TFormPresupuesto_2.BuscarCondVentaExecute(Sender: TObject);
begin
  inherited;
  DatosPresupuesto.CDSbuscaCondVenta.Close;
  DatosPresupuesto.CDSbuscaCondVenta.Params.ParamByName('Codigo').Value := DatosPresupuesto.CDSPresuCabCodigo.Value;
  DatosPresupuesto.CDSbuscaCondVenta.Open;
  comBuscadorCondVta.Execute;
  if comBuscadorCondVta.rOk Then
    DatosPresupuesto.CDSPresuCabCondicionVtaSetText(DatosPresupuesto.CDSPresuCabCondicionVta, IntToStr(comBuscadorCondVta.Id));
  DatosPresupuesto.CDSbuscaCondVenta.Close;
end;

procedure TFormPresupuesto_2.FormCreate(Sender: TObject);
var i:Integer;
Ind:Integer;
begin
  inherited;
  AutoSize:=False;
  SinBDE  :=2;
 // if DiscriminaIva='S' then
 //   lbModoCpbte.Caption:='C/';

  Duplicado               := False;
  Calcula_iva_articulo    := True;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  IF NOT (Assigned(DatosPresupuesto)) THEN
    DatosPresupuesto := TDatosPresupuesto.Create(Self);
  DSBase.DataSet:=DatosPresupuesto.CDSPresuCab;
  WITH DatosPresupuesto DO
    BEGIN
      AddClientDataset(CDSPresuCab, DSPPresuCab);
      AddClientDataset(CDSPresuDet, DSPPresuDet);
      AddClientDataset(CDSPresuSubDet, DSPPresuSubDet);
      AddClientDataset(CDSImpuestos, DSPImpuestos);
      AddClientDataSet(CDSContacto,DSPContacto);
      AddClientDataSet(CDSIncidencias,DSPIncidencias);
      AddClientDataSet(CDSPercepcionIVA,DSPPercepcionIVA);

      CDSPresuCab.Open;
      CDSPresuDet.Open;
      CDSPresuSubDet.Open;
      CDSImpuestos.Open;
      CDSObras.Open;
      CDSObrasSector.Open;
      CDSContacto.Open;
      CDSIncidencias.Open;
      CDSPercepcionIVA.Open;
      CDSPercepcionIVA.EmptyDataSet;
      CDSPresuCab.EmptyDataSet;
      CDSPresuDet.EmptyDataSet;
      CDSPresuSubDet.EmptyDataSet;
      CDSImpuestos.EmptyDataSet;
      CDSTipoObra.Close;
      CDSTipoObra.Open;
      QLstMonedas.OPen;
      AplicarMascarasNumericas;

      CDSEmpresa.Open;
    END;
  // ShowMessage('Mem:'+IntToStr(AllocMemSize));
  pcDetallePresupuesto.ActivePage := PagDetalles;
  //***************************************************************
  // Si no puede modificar precio el usuario pongo la
  // columna en la grilla como solo lectura
  // Precio Unitario

  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='UNITARIO_TOTAL' Then
        Ind:=i;
    end;
  DBGrillaDetalle.Columns[Ind].ReadOnly:=NOt(DMMain_FD.ModificaPrecioVta);
   //Descuentos
  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='DESCUENTO' Then
        Ind:=i;
    end;
  DBGrillaDetalle.Columns[Ind].ReadOnly:=NOt(DMMain_FD.AplicaDescuento);

  dbeDscto.Enabled                   :=(DMMain_FD.AplicaDescuento);
  pnDscto.Enabled                    :=(DMMain_FD.AplicaDescuento);

  gbLista.Enabled:=(DMMain_FD.ModificaListaPrecios);
  pnCosto.Visible:=(DMMain_FD.VerCostos);
  //***************************************************************

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('opcion').Value:='DIASPRESUP';
  DMMain_FD.QOpciones.Open;
  if DMMain_FD.QOpciones.Fields[0].AsString<>'' then
    Dias:=DMMain_FD.QOpciones.Fields[0].AsInteger
  else
    Dias:=1;
  DMMain_FD.QOpciones.Close;
  //dbeDias.Value:=Dias;
  Tabla:='PresCab';
  Campo:='NROCPBTE2';
  if DMMain_FD.UsuarioActivo<>'' Then
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_presupuesto.ini')
  else
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_presupuesto.ini');
  //*************************************************************
  ColumnasVisble                   := ArchivoIni.ReadString('Dato', 'Dato', '11111111111111');
  VerporCodigoAlternativo1.Checked := ArchivoIni.ReadBool('Dato', 'Cod', False);
  VertItemAgrupado.Checked         := ArchivoIni.ReadBool('Dato', 'ColIten', False);
  SaltearDescto1.Checked           := ArchivoIni.ReadBool('Detalle', 'SaltaDescto', True);
  SaltearItem1.Checked             := ArchivoIni.ReadBool('Detalle', 'SaltaItem',True);
  chbImprimeDirecto.Checked        := ArchivoIni.ReadBool('Detalle', 'ImprimeDirecto', False);

  MostrarTasaIva.Checked           := ArchivoIni.ReadBool('Detalle', 'Iva', True);
  MostrarUnidadesVta.Checked       := ArchivoIni.ReadBool('Detalle', 'Unidad', True);
  MostrarUnitarioNeto.Checked      := ArchivoIni.ReadBool('Detalle', 'NetoUnitario', False);
  MostrarEspecificacion.Checked    := ArchivoIni.ReadBool('Detalle', 'Especificacion', False);
  MostrarObra1.Checked             := ArchivoIni.ReadBool('Detalle', 'Obras', False);
  IdTicket                         := ArchivoIni.ReadInteger('Ticket','IdTicket',0);

  ArchivoIni.Free;


  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='CODIGOARTICULO' Then
        Ind:=i;
    end;
  if VerporCodigoAlternativo1.Checked then
    DBGrillaDetalle.Columns[Ind].Title.Caption:='Cod.Alt'
  else
    DBGrillaDetalle.Columns[Ind].Title.Caption:='Codigo';

  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='IVA_TASA' Then
        Ind:=i;
    end;
  DBGrillaDetalle.Columns[Ind].Visible := MostrarTasaIva.Checked;

  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='UNIDAD' Then
        Ind:=i;
     end;
  DBGrillaDetalle.Columns[Ind].Visible:=MostrarUnidadesVta.Checked;

  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='MUESTRA_UNIT_NETO' Then
        Ind:=i;
    end;
  DBGrillaDetalle.Columns[Ind].Visible:=MostrarUnitarioNeto.Checked;

  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='ESPECIFICACION' Then
        Ind:=i;
    end;
  DBGrillaDetalle.Columns[Ind].Visible:=MostrarEspecificacion.Checked;

  //Margen
   for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='MARGEN' Then
        Ind:=i;
    end;
  DBGrillaDetalle.Columns[Ind].Visible:=False;

  for i:= 0 to (DBGrillaDetalle.Columns.Count-1) do
    begin
      //NombreCampo.Add(QClientes.Fields[i].FieldName);
      chklstColumnas.Items.Add(DBGrillaDetalle.Columns[i].Title.Caption);
      chklstColumnas.Checked[i]:=ColumnasVisble[i+1]='1';//   True;
     end;

  pagAgrupadoItems.TabVisible := VertItemAgrupado.Checked;
  pagSumaItems.TabVisible     := VertItemAgrupado.Checked;
  edTotalNeto.Visible         := VertItemAgrupado.Checked;
  gbObra.Visible              := MostrarObra1.Checked;
  // PagPieCpbte.TabVisible        := Not(VertItemAgrupado.Checked);
  // *******************************************************************
  // **** Manejo Lista Precios ....
  // *******************************************************************
  DatosPresupuesto.CDSListaPrecios.Close;
  if DMMain_FD.UsuarioAdministrador Then
    DatosPresupuesto.CDSListaPrecios.Params.ParamByName('uso').Value:='*'
  else
    DatosPresupuesto.CDSListaPrecios.Params.ParamByName('uso').Value:='S';
  DatosPresupuesto.CDSListaPrecios.OPen;
  // *******************************************************************
  // **** se es controlada la lista por usuario ....
  // *******************************************************************
  if (DMMain_FD.GetControlaLista) then
    begin
      DatosPresupuesto.CDSListaPrecios.Close;
      DatosPresupuesto.DSListaPrecios.DataSet :=DMMain_FD.CDSListaPreciosUsuarios;
      DMMain_FD.CDSListaPreciosUsuarios.Close;
      DMMain_FD.CDSListaPreciosUsuarios.Params.ParamByName('usuario').Value:=DMMain_FD.UsuarioActivoId;
      DMMain_FD.CDSListaPreciosUsuarios.Open;
    end;
   // *******************************************************************
   // *******************************************************************
   //   DMMain_FD.AgentePerepcionIB := DatosPresupuesto.CDSEmpresa.FieldByName('AG_PERCEPCION_ING_BRUTOS').Value;
   //   asignacion de los MinimoImponibles Ingresos Bruto IIBB
   //   DMMain_FD.TasaPercepcionIB  := DatosPresupuesto.CDSEmpresa.FieldByName('TASA_PERCEPCION_IB').Value;
   //   DMMain_FD.Minim_Imp_IB_Perc := DatosPresupuesto.CDSEmpresa.FieldByName('MINO_IMP_PERCEP_IB').Value;

  lbPercep.Visible           := DMMain_FD.AgentePercepcionIB;
  dbtTasa_IB.Visible         := lbPercep.Visible ;
  dbtImporte_IB.Visible      := lbPercep.Visible ;
  pnMuestraImpuestos.Visible := Not(VertItemAgrupado.Checked);
  ColVisibles:=0;
  for i := 0 to DBGrillaDetalle.Columns.Count-2 do
    if DBGrillaDetalle.Columns[i].Visible then
      ColVisibles:=ColVisibles+1;

   //Margen
  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='MARGEN' Then
        Ind:=i;
    end;
  DBGrillaDetalle.Columns[Ind].Visible:=False;

  MostrarMargen.Enabled      := DMMain_FD.UsuarioAdministrador;
  CambiarFecha.Enabled       := DMMain_FD.UsuarioAdministrador;
  CambiarFechaVto.Enabled    := DMMain_FD.UsuarioAdministrador;
  lbNeto.Visible             := False;
  lbMargen.Visible           := False;
  DatosPresupuesto.MargenUtilidad := DMMain_FD.GetMargenUtilidad;
  SearchAssignGrid(DBGrillaDetalle);
end;

procedure TFormPresupuesto_2.FormActivate(Sender: TObject);
begin
  inherited;
  if (FormPresupuesto_2<>nil) and (DSBase.DataSet.State = dsBrowse) and (DSBase.DataSet.IsEmpty=False) then
    begin
      if (DSBase.DataSet.IsEmpty=False) and (FormPresupuesto_2<>Nil) then
        begin
          DatoNew     :=IntToStr(DatosPresupuesto.CDSPresuCabID_PR.Value);
          TipoCpbte   :=DatosPresupuesto.CDSPresuCabTIPOCPBTE.Value;
          Recuperar.Execute;
          DatosPresupuesto.CDSPresuDet.Last;
        end;
    end;
end;

procedure TFormPresupuesto_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i:Integer;
begin
  ColumnasVisble:='';
  if (chklstColumnas.Items.Count>0) and (chklstColumnas.Items.Count=14) then
    begin
      for i:=0 to chklstColumnas.Items.Count-1 do
        begin
          if chklstColumnas.Checked[i] Then
            ColumnasVisble:=ColumnasVisble+'1'
          else
            ColumnasVisble:=ColumnasVisble+'0'
        end;
    end
  else
    ColumnasVisble:='11111111111111';

  if DMMain_FD.UsuarioActivo<>'' Then
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_presupuesto.ini')
  else
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_presupuesto.ini');
 //*************************************************************
  ArchivoIni.WriteString('Dato', 'Dato', ColumnasVisble);
  ArchivoIni.WriteBool('Dato', 'Cod', VerporCodigoAlternativo1.Checked);
  ArchivoIni.WriteBool('Dato', 'ColIten', VertItemAgrupado.Checked);
  ArchivoIni.WriteBool('Detalle', 'SaltaDescto', SaltearDescto1.Checked);
  ArchivoIni.WriteBool('Detalle', 'SaltaItem', SaltearItem1.Checked);
  ArchivoIni.WriteBool('Detalle', 'ImprimeDirecto', chbImprimeDirecto.Checked);

  ArchivoIni.WriteBool('Detalle', 'Iva', MostrarTasaIva.Checked);
  ArchivoIni.WriteBool('Detalle', 'Unidad', MostrarUnidadesVta.Checked);
  ArchivoIni.WriteBool('Detalle', 'NetoUnitario', MostrarUnitarioNeto.Checked);
  ArchivoIni.WriteBool('Detalle', 'Especificacion', MostrarEspecificacion.Checked);
  ArchivoIni.WriteBool('Detalle', 'Obras', MostrarObra1.Checked);
  ArchivoIni.WriteInteger('Ticket','IdTicket',IdTicket);

  ArchivoIni.Free;

  pcDetallePresupuesto.ActivePage := PagDetalles;
  WITH DatosPresupuesto DO
    BEGIN
      //CancelarCambios;
      CDSPresuDet.Close;
      CDSPresuCab.Close;
      CDSCondVenta.Close;
      CDSInscripcion.Close;
      CDSIva.Close;
      CDSEmpresa.Close;
      CDSObras.Close;
      CDSImpuestos.Active := False;
      CDSListaPrecios.Close;
      CDSTipoObra.Close;
      QLstMonedas.OPen;
    END;
  Action := caFree;
  inherited;
end;

procedure TFormPresupuesto_2.FormShow(Sender: TObject);
begin
  inherited;
  if (FormPresupuesto_2<>Nil) and (FormPresupuesto_2.Visible) then
    btNuevo.SetFocus;
  var i,Ind:Integer;
  //Margen
   for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='MARGEN' Then
        Ind:=i;
    end;
  DBGrillaDetalle.Columns[Ind].Visible:=False;
end;



procedure TFormPresupuesto_2.frxPDFExport1BeforeExport(Sender: TObject);
begin
  inherited;
  frxPDFExport1.EmbeddedFonts := True;
  frxPDFExport1.FileName      := ExtractFilePath(ParamStr(0))+'Archivos Temporales\Prespuesto_'+DatosPresupuesto.CDSPresuCabNROCPBTE.AsString+'.pdf';
end;

procedure TFormPresupuesto_2.GenerarFacturaCCExecute(Sender: TObject);
var Cont,Renglones:Integer;
FcGenerada:Boolean;
begin
  inherited;
  //** aca se va a generar Factura..
   if not(DSBase.DataSet.IsEmpty) then
     begin
       if Not(Assigned(FormBuscadorTipoCpbte)) then
         FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
       FormBuscadorTipoCpbte.TipoCpbte1   :='FC';
       FormBuscadorTipoCpbte.TipoCpbte2   :='';
       FormBuscadorTipoCpbte.TipoCpbte3   :='';
       FormBuscadorTipoCpbte.CV           :='V';
       FormBuscadorTipoCpbte.Sucursal     := DatosPresupuesto.CDSPresuCabSUCURSAL.Value;
       FormBuscadorTipoCpbte.DiscriminaIVA:= DatosPresupuesto.CDSPresuCabDESGLOZAIVA.Value;
       FormBuscadorTipoCpbte.ShowModal;
       Renglones           := FormBuscadorTipoCpbte.QTipoCpbteLINEAS_DETALLE.Value;
       SucursalComprobante := FormBuscadorTipoCpbte.Sucursal;
       IDComprobante       := FormBuscadorTipoCpbte.Id_Cpbte;
       if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
         begin
        //  flag:=DatosNPedidoClientes.HayParaFacturar(DatosNPedidoClientes.CDSNotaPedidoDet);
           if Not(Assigned(FormBuscadorDepositos)) then
             FormBuscadorDepositos := TFormBuscadorDepositos.Create(Self);
           FormBuscadorDepositos.Deposito:=  DatosPresupuesto.CDSPresuCabDEPOSITO.Value;
           FormBuscadorDepositos.ShowModal;
           if (FormBuscadorDepositos.ModalResult=mrok) Then
             begin
               Deposito    := FormBuscadorDepositos.Deposito;
               DatoNew     := IntToStr(DatosPresupuesto.CDSPresuCabID_PR.Value);
               TipoCpbte   := DatosPresupuesto.CDSPresuCabTIPOCPBTE.Value;
               if Not(Assigned(FormCpbte_2)) Then
                 FormCpbte_2:= TFormCpbte_2.Create(self);
               FormCpbte_2.SucursalPorDefecto := SucursalComprobante;
               FormCpbte_2.DepositoPorDefecto := Deposito;
               FcGenerada := False;
               Cont       := 1;
               DatosPresupuesto.CDSPresuDet.First;
               while Not(DatosPresupuesto.CDSPresuDet.Eof) and (FcGenerada=False) do
                 begin
                   FormCpbte_2.Agregar.Execute;
                   AgregarCabFcCC;
                   DatosVentas.CDSVentaDet.AfterPost:=nil;
                   DatosVentas.CDSVentaDet.DisableControls;
                   while Not(DatosPresupuesto.CDSPresuDet.Eof) and (Cont<=Renglones)  Do // Ingreso el detalle
                     begin
                       if (DatosPresupuesto.CDSPresuDetCANTIDAD.AsFloat>0) and (DatosPresupuesto.CDSPresuDetACEPTADO.Value='S') Then
                          begin
                            if (DMMain_FD.VenderSinStock=False) and (DatosPresupuesto.CDSPresuDetAFECTA_STOCK.Value='S') Then
                              begin
                                DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
                                DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('codigo').AsString    :=DatosPresupuesto.CDSPresuDetCODIGOARTICULO.Value;
                                DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('deposito').AsInteger :=DatosVentas.CDSVentaCabDeposito.Value;
                                DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('unidad').AsString    :='V';
                                DMStoreProcedure.QExistenciaStockArticuloDepo.Open;

                                if (DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat<=0) or
                                   (Moneda3D(' ','0.00',DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat)<
                                    Moneda3D(' ','0.00',DatosPresupuesto.CDSPresuDetCANTIDAD.AsFloat)) Then
                                   ShowMessage('Este item no Tiene Stock en este deposito, se ignora.....')

                                 else
                                   begin
                                     AgregarDetFcCC;
                                     Cont:=Cont+1;
                                   end;
                                DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
                              end
                            else
                              begin
                                AgregarDetFcCC;
                                Cont:=Cont+1;
                              end;
                          end;
                       DatosPresupuesto.CDSPresuDet.Next;
                     end;
                   DatosVentas.CDSVentaDet.EnableControls;
                   DatosVentas.CDSVentaDet.AfterPost:=DatosVentas.CDSVentaDetAfterPost;
                   DatosVentas.CDSVentaDet.edit;
                   DatosVentas.CDSVentaDet.Post;

                   FormCpbte_2.Confirma.Execute;
                   FcGenerada:= FormCpbte_2.Generado;
                   Cont:=1;
                 end;
               if FormCpbte_2.DSBase.State in [dsInsert] then
                 FormCpbte_2.Confirma.Execute;
             end;
         end;
     end
   else
     ShowMessage('No hay cantidades de entrega para Generar la factura.....!!!');
end;

procedure TFormPresupuesto_2.GenerarFcAnticipoExecute(Sender: TObject);
var ImporteAnticipo,Aux:Extended;
renglones:Integer;

begin
  inherited;
  //** aca se va a generar Factura..
   if Not(Assigned(FormMontoAnticipo)) then
     FormMontoAnticipo:=TFormMontoAnticipo.create(self);
   if  VertItemAgrupado.Checked then
     FormMontoAnticipo.Importe       := StrToFloat(AnsiReplaceStr(edTotalNeto.Text,',',''))
   else
     FormMontoAnticipo.Importe       := StrToFloat(AnsiReplaceStr(dbTotal.Text,',',''));

   FormMontoAnticipo.Porcentaje    := StrToFloat('0');
   FormMontoAnticipo.ImpPorcentaje := StrToFloat('0');
   FormMontoAnticipo.Total         := FormMontoAnticipo.Importe;
   FormMontoAnticipo.ShowModal;
   if FormMontoAnticipo.ModalResult=mrOk then
   if not(DSBase.DataSet.IsEmpty) then
     begin
       ImporteAnticipo:=FormMontoAnticipo.Total;

       if Not(Assigned(FormBuscadorTipoCpbte)) then
         FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
       FormBuscadorTipoCpbte.TipoCpbte1   :='FC';
       FormBuscadorTipoCpbte.TipoCpbte2   :='';
       FormBuscadorTipoCpbte.TipoCpbte3   :='';
       FormBuscadorTipoCpbte.CV           :='V';
       FormBuscadorTipoCpbte.Sucursal     := DatosPresupuesto.CDSPresuCabSUCURSAL.Value;
       FormBuscadorTipoCpbte.DiscriminaIVA:= DatosPresupuesto.CDSPresuCabDESGLOZAIVA.Value;
       FormBuscadorTipoCpbte.ShowModal;
       Renglones           := FormBuscadorTipoCpbte.QTipoCpbteLINEAS_DETALLE.Value;
       SucursalComprobante := FormBuscadorTipoCpbte.Sucursal;
       IDComprobante       := FormBuscadorTipoCpbte.Id_Cpbte;
       if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
         begin
        //  flag:=DatosNPedidoClientes.HayParaFacturar(DatosNPedidoClientes.CDSNotaPedidoDet);
           if Not(Assigned(FormBuscadorDepositos)) then
             FormBuscadorDepositos  :=TFormBuscadorDepositos.Create(Self);
           FormBuscadorDepositos.Deposito:=  DatosPresupuesto.CDSPresuCabDEPOSITO.Value;
           FormBuscadorDepositos.ShowModal;
           if (FormBuscadorDepositos.ModalResult=mrok) Then
             begin
               Deposito    := FormBuscadorDepositos.Deposito;
               DatoNew     := IntToStr(DatosPresupuesto.CDSPresuCabID_PR.Value);
               TipoCpbte   := DatosPresupuesto.CDSPresuCabTIPOCPBTE.Value;
               if Not(Assigned(FormCpbte_2)) Then
                 FormCpbte_2:=TFormCpbte_2.Create(self);
               FormCpbte_2.SucursalPorDefecto:=SucursalComprobante;
               FormCpbte_2.DepositoPorDefecto:=Deposito;
               FormCpbte_2.Agregar.Execute;
               AgregarCabFcCC;
               DatosVentas.CDSVentaCabFACTURA_DE_ANTICIPO.Value:='S';
               with DatosVentas DO
                 begin
                   CDSVentaDet.Append;
                   CDSVentaDetDESGLOZAIVA.Value        := CDSVentaCabDESGLOZAIVA.Value;
                   CDSVentaDetDEPOSITO.Value           := CDSVentaCabDeposito.Value;
                   CDSVentaDetCLASECPBTE.Value         := CDSVentaCabCLASECPBTE.Value;
                   CDSVentaDetTIPOCPBTE.Value          := CDSVentaCabTIPOCPBTE.Value;
                   CDSVentaDetCODIGOARTICULO.Text      := CodAnticipos;
                   CDSVentaDetDETALLE.Value            := 'ANTICIPO - '+FormatFloat('0.00%',FormMontoAnticipo.Porcentaje)+' - PRE.:'+ DatosPresupuesto.CDSPresuCabNROCPBTE.Value;
                   CDSVentaDetCANTIDAD.Text            := '1';
                   if CDSVentaCabDESGLOZAIVA.Value='N' Then
                     CDSVentaDetUNITARIO_TOTAL.Text :=FormatFloat('0.00', FormMontoAnticipo.ImpPorcentaje/1.21)
                   else
                     CDSVentaDetUNITARIO_TOTAL.Text :=FormatFloat('0.00', FormMontoAnticipo.ImpPorcentaje);
                   CDSVentaDet.Post;
                 end;
             end;
//           if FormCpbte_2.DSBase.State in [dsInsert] then
//             FormCpbte_2.Confirma.Execute;
         end;
     end
   else
     ShowMessage('No hay cantidades de entrega para Generar la factura.....!!!');
   FreeAndNil(FormMontoAnticipo);
end;

procedure TFormPresupuesto_2.GenerarFcCtdoExecute(Sender: TObject);
var Cont,Renglones:Integer;
begin
  inherited;
  //** aca se va a generar Factura..
   if not(DSBase.DataSet.IsEmpty) then
     begin
       if Not(Assigned(FormBuscadorTipoCpbte)) then
         FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
       FormBuscadorTipoCpbte.TipoCpbte1   :='FO';
       FormBuscadorTipoCpbte.TipoCpbte2   :='';
       FormBuscadorTipoCpbte.TipoCpbte3   :='';
       FormBuscadorTipoCpbte.CV           :='V';
       FormBuscadorTipoCpbte.Sucursal     := DatosPresupuesto.CDSPresuCabSUCURSAL.Value;
       FormBuscadorTipoCpbte.DiscriminaIVA:= DatosPresupuesto.CDSPresuCabDESGLOZAIVA.Value;
       FormBuscadorTipoCpbte.ShowModal;
       Renglones:=FormBuscadorTipoCpbte.QTipoCpbteLINEAS_DETALLE.Value;
       SucursalComprobante  := FormBuscadorTipoCpbte.Sucursal;
       IDComprobante        := FormBuscadorTipoCpbte.Id_Cpbte;
       if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
         begin
           if Not(Assigned(FormBuscadorDepositos)) then
             FormBuscadorDepositos := TFormBuscadorDepositos.Create(Application);
           FormBuscadorDepositos.Deposito:=  DatosPresupuesto.CDSPresuCabDEPOSITO.Value;
           FormBuscadorDepositos.ShowModal;
           if (FormBuscadorDepositos.ModalResult=mrok) Then
             begin
               Deposito    := FormBuscadorDepositos.Deposito;
               DatoNew     := IntToStr(DatosPresupuesto.CDSPresuCabID_PR.Value);
               TipoCpbte   := DatosPresupuesto.CDSPresuCabTIPOCPBTE.Value;
               if Not(Assigned(FormCpbteCtdo_2)) Then
                 FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
               FormCpbteCtdo_2.SucursalPorDefecto := SucursalComprobante;
               FormCpbteCtdo_2.DepositoPorDefecto := Deposito;
               Cont:=1;
               DatosPresupuesto.CDSPresuDet.First;
               while Not(DatosPresupuesto.CDSPresuDet.Eof)  do
                 begin
                   FormCpbteCtdo_2.Agregar.Execute;
                   AgregarCabFcCtdo;
                   while Not(DatosPresupuesto.CDSPresuDet.Eof) and (Cont<=Renglones)  Do // Ingreso el detalle
                     begin
                       if (DatosPresupuesto.CDSPresuDetCANTIDAD.AsFloat>0) and (DatosPresupuesto.CDSPresuDetACEPTADO.Value='S') Then
                          begin
                            if (DMMain_FD.VenderSinStock=False) and (DatosPresupuesto.CDSPresuDetAFECTA_STOCK.Value='S') Then
                              begin
                                DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
                                DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('codigo').AsString    :=DatosPresupuesto.CDSPresuDetCODIGOARTICULO.Value;
                                DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('deposito').AsInteger :=DatosVentasCtdo.CDSVentaCabDeposito.Value;
                                DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('unidad').AsString    :='V';
                                DMStoreProcedure.QExistenciaStockArticuloDepo.Open;

                                if (DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat<=0) or
                                   (Moneda3D(' ','0.00',DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat)<
                                    Moneda3D(' ','0.00',DatosPresupuesto.CDSPresuDetCANTIDAD.AsFloat)) Then
                                   ShowMessage('Este item no Tiene Stock en este deposito, se ignora.....')

                                 else
                                   begin
                                     AgregarDetFcCtdo;
                                     Cont := Cont+1;
                                   end;
                                DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
                              end
                            else
                              begin
                                AgregarDetFcCtdo;
                                Cont := Cont+1;
                              end;
                          end;
                       DatosPresupuesto.CDSPresuDet.Next;
                     end;
                  // FormCpbteCtdo_2.Confirma.Execute;
                   Cont:=1;
                 end;
              // if FormCpbteCtdo_2.DSBase.State in [dsInsert] then
                // FormCpbteCtdo_2.Confirma.Execute;
             end;
         end;
       DatoNew:=IntToStr(DatosPresupuesto.CDSPresuCabID_PR.Value);
       Recuperar.Execute;
     // if Not(DSBase.DataSet.IsEmpty) and (DSBase.State in [dsBrowse]) Then
     //   Recuperar.Execute;
     end
   else
     ShowMessage('No hay cantidades de entrega para Generar la factura.....!!!');
end;

procedure TFormPresupuesto_2.GenerarNdeVtaExecute(Sender: TObject);
begin
  inherited;
  //** aca se va a La Nota de Vta..
   if not(DSBase.DataSet.IsEmpty) then
     begin
       if Not(Assigned(FormNotaVta)) then
         FormNotaVta:=TFormNotaVta.Create(self);
       FormNotaVta.Agregar.Execute;
       DatosNotaVenta.CDSNVCabFECHAPEDIDO.AsDateTime:=DatosPresupuesto.CDSPresuCabFECHAVTA.AsDateTime;
       DatosNotaVenta.CDSNVCabCODIGOSetText(DatosNotaVenta.CDSNVCabCODIGO,DatosPresupuesto.CDSPresuCabCODIGO.Value);

       DatosNotaVenta.CDSNVCabNOMBRE.Value       := DatosPresupuesto.CDSPresuCabNOMBRE.Value;
       DatosNotaVenta.CDSNVCabRAZONSOCIAL.Value  := DatosPresupuesto.CDSPresuCabRAZONSOCIAL.Value;
       DatosNotaVenta.CDSNVCabCUIT.Value         := DatosPresupuesto.CDSPresuCabCUIT.Value;
       DatosNotaVenta.CDSNVCabTIPOIVA.Value      := DatosPresupuesto.CDSPresuCabTIPOIVA.Value;
       DatosNotaVenta.CDSNVCabDIRECCION.Value    := DatosPresupuesto.CDSPresuCabDIRECCION.Value;
       DatosNotaVenta.CDSNVCabLOCALIDAD.Value    := DatosPresupuesto.CDSPresuCabLOCALIDAD.Value;
       DatosNotaVenta.CDSNVCabCPOSTAL.Value      := DatosPresupuesto.CDSPresuCabCPOSTAL.Value;

       DatosNotaVenta.CDSNVCabLDR.Value                  := DatosPresupuesto.CDSPresuCabLDR.Value;
       DatosNotaVenta.CDSNVCabMUESTRALDR.Value           := DatosPresupuesto.CDSPresuCabMUESTRALDR.Value;
       DatosNotaVenta.CDSNVCabVENDEDOR.Value             := DatosPresupuesto.CDSPresuCabVENDEDOR.Value;
       DatosNotaVenta.CDSNVCabMUESTRAVENDEDOR.Value      := DatosPresupuesto.CDSPresuCabMUESTRAVENDEDOR.Value;
       DatosNotaVenta.CDSNVCabDEPOSITO.Value             := DatosPresupuesto.CDSPresuCabDEPOSITO.Value;
       DatosNotaVenta.CDSNVCabMUESTRADEPOSITO.Value      := DatosPresupuesto.CDSPresuCabMUESTRADEPOSITO.Value;
       DatosNotaVenta.CDSNVCabSUCURSAL.Value             := DatosPresupuesto.CDSPresuCabSUCURSAL.Value;
       DatosNotaVenta.CDSNVCabMUESTRASUCURSAL.Value      := DatosPresupuesto.CDSPresuCabMUESTRASUCURSAL.Value;
       DatosNotaVenta.CDSNVCabLISTAPRECIO.Value          := DatosPresupuesto.CDSPresuCabLISTAPRECIO.Value;
       DatosNotaVenta.CDSNVCabPRESUPUESTO_ID.Value       := DatosPresupuesto.CDSPresuCabID_PR.Value;
       DatosNotaVenta.CDSNVCabPRESUPUESTO_NROCPBTE.Value := DatosPresupuesto.CDSPresuCabNROCPBTE.Value;
       DatosNotaVenta.CDSNVCabDSTO.AsFloat               := DatosPresupuesto.CDSPresuCabDSTO.AsFloat;
       DatosPresupuesto.CDSPresuDet.First;
       while not(DatosPresupuesto.CDSPresuDet.Eof) do
         begin
           if DatosPresupuesto.CDSPresuDetCANTIDAD.AsFloat>0 then
             begin
               DatosNotaVenta.CDSNVDet.Append;
               DatosNotaVenta.CDSNVDetCODIGOARTICULOSetText(DatosNotaVenta.CDSNVDetCODIGOARTICULO,DatosPresupuesto.CDSPresuDetCODIGOARTICULO.Value);
               DatosNotaVenta.CDSNVDetDETALLE.Value              := DatosPresupuesto.CDSPresuDetDETALLE.Value;
               DatosNotaVenta.CDSNVDetCANTIDAD_PEDIDIA.AsFloat   := DatosPresupuesto.CDSPresuDetCANTIDAD.AsFloat;
               DatosNotaVenta.CDSNVDetCANTIDAD_ENTREGADA.AsFloat := DatosPresupuesto.CDSPresuDetCANTIDAD.AsFloat;

               DatosNotaVenta.CDSNVDetUNITARIO_TOTAL.AsFloat     := (DatosPresupuesto.CDSPresuDetUNITARIO_TOTAL.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat;
               DatosNotaVenta.CDSNVDetUNITARIO_GRAVADO.AsFloat   := (DatosPresupuesto.CDSPresuDetUNITARIO_GRAVADO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat;
               DatosNotaVenta.CDSNVDetUNITARIO_EXENTO.AsFloat    := (DatosPresupuesto.CDSPresuDetUNITARIO_EXENTO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)*DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat;
               DatosNotaVenta.CDSNVDetDESCUENTO.AsFloat          := DatosPresupuesto.CDSPresuDetDESCUENTO.AsFloat;
               DatosNotaVenta.CDSNVDet.Post;
             end;
           DatosPresupuesto.CDSPresuDet.Next;
         end;
       DatosNotaVenta.CDSNVDet.First;
       FormNotaVta.Confirma.Execute;
       MarcaPresupuesto('A');
       DatoNew:=DatosPresupuesto.CDSPresuCabID_PR.AsString;
       Recuperar.Execute;
     end
   else
     ShowMessage('No hay cantidades Generar la Nota de Venta.....!!!');
 end;

procedure TFormPresupuesto_2.GenerarNotaPedidoExecute(Sender: TObject);
var Cont,Renglones:Integer;
begin
  inherited;
  //** aca se va a generar Nota de Pedio..
   if DMMain_FD.HayNotaPedido(DSBase.DataSet.FieldByName('ID_PR').Value, DSBase.DataSet.FieldByName('TIPOCPBTE').Value) then
     raise Exception.Create('Ya Hay una Nota de Pedido Asociada...');

   if not(DSBase.DataSet.IsEmpty) then
     begin
       if Not(Assigned(FormBuscadorTipoCpbte)) then
         FormBuscadorTipoCpbte := TFormBuscadorTipoCpbte.Create(Application);
       FormBuscadorTipoCpbte.TipoCpbte1 := 'PC';
       FormBuscadorTipoCpbte.TipoCpbte2 := '';
       FormBuscadorTipoCpbte.TipoCpbte3 := '';
       FormBuscadorTipoCpbte.CV         := 'V';
       FormBuscadorTipoCpbte.Sucursal   := DatosPresupuesto.CDSPresuCabSUCURSAL.Value;
       FormBuscadorTipoCpbte.ShowModal;
       Renglones           := FormBuscadorTipoCpbte.QTipoCpbteLINEAS_DETALLE.Value;
       SucursalComprobante := FormBuscadorTipoCpbte.Sucursal;
       IDComprobante       := FormBuscadorTipoCpbte.Id_Cpbte;
       if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
         begin
           if Not(Assigned(FormBuscadorDepositos)) then
             FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Application);
           FormBuscadorDepositos.Deposito:=  DatosPresupuesto.CDSPresuCabDEPOSITO.Value;
           FormBuscadorDepositos.ShowModal;
           if (FormBuscadorDepositos.ModalResult=mrok) Then
             begin
               Deposito    := FormBuscadorDepositos.Deposito;
               DatoNew     := IntToStr(DatosPresupuesto.CDSPresuCabID_PR.Value);
               TipoCpbte   := DatosPresupuesto.CDSPresuCabTIPOCPBTE.Value;
               if Not(Assigned(FormNotaPedidoCliente)) Then
                 FormNotaPedidoCliente:=TFormNotaPedidoCliente.Create(self);
               Cont:=1;
               DatosPresupuesto.CDSPresuDet.First;
               while Not(DatosPresupuesto.CDSPresuDet.Eof)  do
                 begin
                   FormNotaPedidoCliente.Agregar.Execute;
                   AgregarCabNP;
                   while Not(DatosPresupuesto.CDSPresuDet.Eof) and (Cont<=Renglones)  Do // Ingreso el detalle
                     begin
                      if (DatosPresupuesto.CDSPresuDetCANTIDAD.AsFloat>0) and (DatosPresupuesto.CDSPresuDetACEPTADO.Value='S') Then
                        AgregarDetNP;
                       DatosPresupuesto.CDSPresuDet.Next;
                       Cont:=cont+1;
                     end;
                   FormNotaPedidoCliente.Confirma.Execute;
                   Cont:=1;
                 end;
               if FormNotaPedidoCliente.DSBase.State in [dsInsert] then
                 FormNotaPedidoCliente.Confirma.Execute;
             end;
         end;
       DMStoreProcedure.spMarcarPresupuestoFD.Close;
       DMStoreProcedure.spMarcarPresupuestoFD.ParamByName('id').Value    :=DatosPresupuesto.CDSPresuCabID_PR.Value;
       DMStoreProcedure.spMarcarPresupuestoFD.ParamByName('Marca').Value :='A';
       DMStoreProcedure.spMarcarPresupuestoFD.ExecProc;
       DMStoreProcedure.spMarcarPresupuestoFD.Close;
     // if Not(DSBase.DataSet.IsEmpty) and (DSBase.State in [dsBrowse]) Then
     //   Recuperar.Execute;
     end
   else
     ShowMessage('No hay cantidades Generar la Nota de Pedido.....!!!');
end;

procedure TFormPresupuesto_2.GenerarOProduccionExecute(Sender: TObject);
var Cantidad:Extended;
Novedades:String;
begin
  inherited;
  if ((DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty))) and
     (dbchFinanciero.Checked) and (dbchTecnica.Checked) and
     (DSBase.DataSet.FieldByName('Anulado').AsString='N') and
     (Trim(DSBase.DataSet.FieldByName('Referencia').AsString)<>'') and
     (DSBase.DataSet.FieldByName('TIPO_obra').AsInteger>0) and
     (Trim(dsBase.DataSet.FieldByName('NRO_ORDEN_COMP').AsString)<>'') then
    begin
      DatosPresupuesto.QVerificaOrdenProduccion.Close;
      DatosPresupuesto.QVerificaOrdenProduccion.ParamByName('ID').Value:=DSBase.DataSet.FieldByName('ID_PR').AsInteger;
      DatosPresupuesto.QVerificaOrdenProduccion.Open;
      if (DatosPresupuesto.QVerificaOrdenProduccion.Fields[0].AsString='') and (DatosPresupuesto.QVerificaOrdenProduccion.Fields[0].AsInteger<=0) Then
        begin
          if Not(Assigned(FormOrdenProduccion)) then
            FormOrdenProduccion:=TFormOrdenProduccion.Create(Self);
          FormOrdenProduccion.DepositoPorDefecto:=DatosPresupuesto.CDSPresuCabDEPOSITO.AsInteger;
          FormOrdenProduccion.Agregar.Execute;
          DatosOProduccion.CDSOProdCabDEPOSITO_ORIGENSetText(DatosOProduccion.CDSOProdCabDEPOSITO_ORIGEN,DatosPresupuesto.CDSPresuCabDEPOSITO.AsString);
          DatosOProduccion.CDSOProdCabDEPOSITO_DESTINOSetText(DatosOProduccion.CDSOProdCabDEPOSITO_DESTINO,DatosPresupuesto.CDSPresuCabDEPOSITO.AsString);
          DatosOProduccion.CDSOProdCabCLIENTESetText(DatosOProduccion.CDSOProdCabCLIENTE,DSBase.DataSet.FieldByName('CODIGO').ASString);
          DatosOProduccion.CDSOProdCabFECHA_ENTREGA_PREV.AsDateTime :=DatosPresupuesto.CDSPresuCabFECHA_ENTREGA.AsDateTime;
          DatosOProduccion.CDSOProdCabID_PRESUPUESTO.Value          := DSBase.DataSet.FieldByName('ID_PR').AsInteger;
          DatosOProduccion.CDSOProdCabOBS1.Value                    := 'Generada desde Presupuesto Nro.'+DSBase.DataSet.FieldByName('NROCPBTE').AsString;

          DatosPresupuesto.CDSPresuDet.First;
          while Not( DatosPresupuesto.CDSPresuDet.Eof) do
            begin
              if DatosPresupuesto.CDSPresuDetMUESTRADEPRODUCC.Value='S' Then
                begin
                  DatosOProduccion.CDSOProdDet.Append;
                  DatosOProduccion.CDSOProdDetCODIGOSetText(DatosOProduccion.CDSOProdDetCODIGO,DatosPresupuesto.CDSPresuDetCODIGOARTICULO.Text);
                  DatosOProduccion.CDSOProdDetDETALLE.Value:='It. '+DatosPresupuesto.CDSPresuDetITEM_NRO.AsString+'-'+DatosOProduccion.CDSOProdDetDETALLE.Value;

                  Cantidad:=DatosPresupuesto.CDSPresuDetCANTIDADTOTAL.Value;//.Value*DatosPresupuesto.CDSPresuSubDetCANTIDAD.ASFloat;
                  DatosOProduccion.CDSOProdDetCANTIDADSetText( DatosOProduccion.CDSOProdDetCANTIDAD,FloatToStr(Cantidad));
                  DatosOProduccion.CDSOProdDetESPECIFICACION.Value := DatosPresupuesto.CDSPresuDetESPECIFICACION.Value;
                  DatosOProduccion.CDSOProdDetID_PRESU_CAB.Value   := DatosPresupuesto.CDSPresuDetID_CABPRES.Value;
                  DatosOProduccion.CDSOProdDetID_PRESU_DET.Value   := DatosPresupuesto.CDSPresuDetID.Value;
                  DatosOProduccion.CDSOProdDetITEM_DETALLE.AsString:= DatosPresupuesto.CDSPresuDetITEM_CONDETALLE.AsString;
                  DatosOProduccion.CDSOProdDet.Post;
                end;
              DatosPresupuesto.CDSPresuDet.Next;
            end;
          FormOrdenProduccion.Confirma.Execute;
          FormOrdenProduccion.Show;
        end
      else
        ShowMessage('O.Produccion ya echa...Nro.:'+DatosPresupuesto.QVerificaOrdenProduccionNROCPBTE.AsString+' Fecha:'+DatosPresupuesto.QVerificaOrdenProduccionFECHA_INICIADA.AsString);
      DatosPresupuesto.QVerificaOrdenProduccion.Close;
    end
  else
    begin
      Novedades:='';
      if not(dbchFinanciero.Checked) Then Novedades := 'Financiero sin eleccion'+#13;
      if not(dbchTecnica.Checked) Then Novedades    := Novedades+'Tecnica sin eleccion'+#13;
      if (Trim(DSBase.DataSet.FieldByName('Referencia').AsString)='') Then Novedades:=Novedades+'Falta Referencia..'+#13;
      if (DSBase.DataSet.FieldByName('TIPO_obra').AsInteger<=0) Then Novedades:=Novedades+'Falta Tipo Obra..'+#13;
      if (Trim(dsBase.DataSet.FieldByName('NRO_ORDEN_COMP').AsString)='') Then Novedades:=Novedades+'Falta Nro. Orden de Compra..'+#13;
      ShowMessage('Faltan completar Datos Adicionales...'+#13+Novedades);
    end;
end;

procedure TFormPresupuesto_2.GenerarRtoExecute(Sender: TObject);
var Cont,Renglones:Integer;
EsUno:Boolean;
begin
  inherited;
  //** aca se va a generar Remito..
   if not(DSBase.DataSet.IsEmpty) and (DatosPresupuesto.CDSPresuCabMUESTRAREMITO.AsString='')
     and (DatosPresupuesto.CDSPresuCabANULADO.Value<>'A')  then
     begin
       if Not(Assigned(FormBuscadorTipoCpbte)) then
         FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
       FormBuscadorTipoCpbte.TipoCpbte1 := 'RE';
       FormBuscadorTipoCpbte.TipoCpbte2 := '';
       FormBuscadorTipoCpbte.TipoCpbte3 := '';
       FormBuscadorTipoCpbte.CV         := 'V';
       FormBuscadorTipoCpbte.Sucursal   := DatosPresupuesto.CDSPresuCabSUCURSAL.Value;
       FormBuscadorTipoCpbte.ShowModal;
       Renglones:=FormBuscadorTipoCpbte.QTipoCpbteLINEAS_DETALLE.Value;
       SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
       IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
       if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
         begin
           if Not(Assigned(FormBuscadorDepositos)) then
             FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Application);
           FormBuscadorDepositos.Deposito:=  DatosPresupuesto.CDSPresuCabDEPOSITO.Value;
           FormBuscadorDepositos.ShowModal;
           if (FormBuscadorDepositos.ModalResult=mrok) Then
             begin
               Deposito    := FormBuscadorDepositos.Deposito;
               DatoNew     := IntToStr(DatosPresupuesto.CDSPresuCabID_PR.Value);
               TipoCpbte   := DatosPresupuesto.CDSPresuCabTIPOCPBTE.Value;
               if Not(Assigned(FormRemitos)) Then
                 FormRemitos := TFormRemitos.Create(self);
               FormRemitos.SucursalPorDefecto:=SucursalComprobante;
               FormRemitos.DepositoPorDefecto:=Deposito;
               Cont:=1;
               DatosPresupuesto.CDSPresuDet.First;
               EsUno :=False;
               while (Not(DatosPresupuesto.CDSPresuDet.Eof)) and (EsUno=False) do
                 begin
                   EsUno:=DatosPresupuesto.CDSPresuDet.RecordCount=1;
                   FormRemitos.Agregar.Execute;
                   AgregarCabRto;
                   while Not(DatosPresupuesto.CDSPresuDet.Eof) and (Cont<=Renglones)  Do // Ingreso el detalle
                     begin
                       if (DatosPresupuesto.CDSPresuDetCANTIDAD.AsFloat>0) and (DatosPresupuesto.CDSPresuDetACEPTADO.Value='S') Then
                          begin
                            if (DMMain_FD.VenderSinStock=False) and (DatosPresupuesto.CDSPresuDetAFECTA_STOCK.Value='S') Then
                              begin
                                DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
                                DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('codigo').AsString    := DatosPresupuesto.CDSPresuDetCODIGOARTICULO.Value;
                                DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('deposito').AsInteger := DatosRemitos.CDSRtoCabDEPOSITO.Value;
                                DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('unidad').AsString    := 'V';
                                DMStoreProcedure.QExistenciaStockArticuloDepo.Open;

                                if (DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat<=0) or
                                   (Moneda3D(' ','0.00',DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat)<
                                    Moneda3D(' ','0.00',DatosPresupuesto.CDSPresuDetCANTIDAD.AsFloat)) Then
                                   ShowMessage('Este item no Tiene Stock en este deposito, se ignora.....')
                                 else
                                   begin
                                     AgregarDetRto;
                                     Cont:=cont+1;
                                   end;
                                DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
                              end
                            else
                               begin
                                 AgregarDetRto;
                                 Cont:=cont+1;
                               end;
                          end;
                       DatosPresupuesto.CDSPresuDet.Next;
                     end;
                   FormRemitos.Confirma.Execute;
                   Cont:=1;
                 end;
//               if FormRemitos.DSBase.State in [dsInsert] then
//                 FormRemitos.Confirma.Execute;
             end;
         end;
      // MarcaPresupuesto('A');
       if Not(DSBase.DataSet.IsEmpty) and (DSBase.State in [dsBrowse]) Then
         Recuperar.Execute;
     end
   else
     ShowMessage('No hay cantidades de entrega para Generar el Remito....!!!');
end;

procedure TFormPresupuesto_2.GenerarTkExecute(Sender: TObject);
var renglones, cont: integer;
begin
  inherited;
  if not(DSBase.DataSet.IsEmpty) then
     begin
     {  if Not(Assigned(FormBuscadorTipoCpbte)) then
         FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
       FormBuscadorTipoCpbte.TipoCpbte1   :='TK';
       FormBuscadorTipoCpbte.TipoCpbte2   :='';
       FormBuscadorTipoCpbte.TipoCpbte3   :='';
       FormBuscadorTipoCpbte.CV           :='V';
       FormBuscadorTipoCpbte.Sucursal     := DatosPresupuesto.CDSPresuCabSUCURSAL.Value;
       FormBuscadorTipoCpbte.DiscriminaIVA:= DatosPresupuesto.CDSPresuCabDESGLOZAIVA.Value;
       FormBuscadorTipoCpbte.ShowModal;
       Renglones:=FormBuscadorTipoCpbte.QTipoCpbteLINEAS_DETALLE.Value;
       SucursalComprobante  := FormBuscadorTipoCpbte.Sucursal;
       IDComprobante        := FormBuscadorTipoCpbte.Id_Cpbte;
       Deposito             := FormBuscadorTipoCpbte.QTipoCpbteDEPOSITO.AsInteger;

       if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
         begin
           if (Deposito<=0) then
             begin
               if (Not Assigned(FormBuscadorDepositos)) then
                 FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Application);
               FormBuscadorDepositos.Deposito:=  DatosPresupuesto.CDSPresuCabDEPOSITO.Value;
               FormBuscadorDepositos.ShowModal;
               if (FormBuscadorDepositos.ModalResult=mrok) Then
                   Deposito    := FormBuscadorDepositos.Deposito;
             end;                                                                         }

           DatoNew     := IntToStr(DatosPresupuesto.CDSPresuCabID_PR.Value);
           TipoCpbte   := DatosPresupuesto.CDSPresuCabTIPOCPBTE.Value;
           if Not(Assigned(FormTicketVta)) Then
             FormTicketVta:=TFormTicketVta.Create(self);
           FormTicketVta.SucursalPorDefecto := DatosPresupuesto.CDSPresuCabSUCURSAL.AsInteger;
           FormTicketVta.DepositoPorDefecto := DatosPresupuesto.CDSPresuCabDEPOSITO.AsInteger;
           Cont:=1;
           DatosPresupuesto.CDSPresuDet.First;
           while Not(DatosPresupuesto.CDSPresuDet.Eof)  do
             begin
               FormTicketVta.Agregar.Execute;
               AgregarCabTk;
               while Not(DatosPresupuesto.CDSPresuDet.Eof) and (Cont<=Renglones)  Do // Ingreso el detalle
                 begin
                   if (DatosPresupuesto.CDSPresuDetCANTIDAD.AsFloat>0) and (DatosPresupuesto.CDSPresuDetACEPTADO.Value='S') Then
                      begin
                        if (DMMain_FD.VenderSinStock=False) and (DatosPresupuesto.CDSPresuDetAFECTA_STOCK.Value='S') Then
                          begin
                            DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
                            DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('codigo').AsString    :=DatosPresupuesto.CDSPresuDetCODIGOARTICULO.Value;
                            DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('deposito').AsInteger :=DatosVentasTicket.CDSVentaCabDeposito.Value;
                            DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('unidad').AsString    :='V';
                            DMStoreProcedure.QExistenciaStockArticuloDepo.Open;

                            if (DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat<=0) or
                               (Moneda3D(' ','0.00',DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat)<
                                Moneda3D(' ','0.00',DatosPresupuesto.CDSPresuDetCANTIDAD.AsFloat)) Then
                               ShowMessage('Este item no Tiene Stock en este deposito, se ignora.....')

                             else
                               begin
                                 AgregarDetTk;
                                 Cont := Cont+1;
                               end;
                            DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
                          end
                        else
                          begin
                            AgregarDetTk;
                            Cont := Cont+1;
                          end;
                      end;
                   DatosPresupuesto.CDSPresuDet.Next;
                 end;
              // FormCpbteCtdo_2.Confirma.Execute;
               Cont:=1;
             end;
              // if FormCpbteCtdo_2.DSBase.State in [dsInsert] then
                // FormCpbteCtdo_2.Confirma.Execute;

       //  end;
       DatoNew:=IntToStr(DatosPresupuesto.CDSPresuCabID_PR.Value);
       Recuperar.Execute;
     // if Not(DSBase.DataSet.IsEmpty) and (DSBase.State in [dsBrowse]) Then
     //   Recuperar.Execute;
     end
   else
     ShowMessage('No hay cantidades de entrega para Generar la factura.....!!!');

end;

procedure TFormPresupuesto_2.dbgDBGrillaDetalle_oldColEnter(Sender: TObject);
begin
  inherited;
  pnAvisoFUAP.Visible:=False;
  IF DBGrillaDetalle.SelectedIndex = 2 THEN
    DBGrillaDetalle.SelectedIndex := 4;
  IF DBGrillaDetalle.SelectedIndex = 3 THEN
    DBGrillaDetalle.SelectedIndex := 4;
  IF DBGrillaDetalle.SelectedIndex = 7 THEN
    DBGrillaDetalle.SelectedIndex := 6;
  IF (DBGrillaDetalle.SelectedIndex = 5) and (DBGrillaDetalle.Fields[0].AsString<>'') THEN
    BEGIN
      if ((DatosPresupuesto.CDSPresuCabFECHAVTA.AsDateTime-DMMain_FD.FechaUltimaActulizacionPrecio)>
         (DMMain_FD.IntervMaxDesdeULtActuPrecio)) and (DMMain_FD.IntervMaxDesdeULtActuPrecio<>0) and
         (DSBase.State=dsInsert) Then
         begin
            pnAvisoFUAP.Caption:='Ult.Act. de Precio >> '+DateToStr(DMMain_FD.FechaUltimaActulizacionPrecio);
            pnAvisoFUAP.Visible:=True;
         end
      else
        pnAvisoFUAP.Visible:=False;

      IF (DatosPresupuesto.CDSPresuDet.State IN [dsEdit, dsInsert]) AND
        (DatosPresupuesto.CDSPresuDetModo_Gravamen.Value = 'M') THEN
        BEGIN
          FormComposicionPrecio              := TFormComposicionPrecio.Create(Application);
          FormComposicionPrecio.ValorGravado := DatosPresupuesto.CDSPresuDetUnitario_Gravado.AsFloat;
          FormComposicionPrecio.ValorExento  := DatosPresupuesto.CDSPresuDetUnitario_Exento.AsFloat;
          FormComposicionPrecio.ShowModal;
          // FreeAndNil(ComposicionPrecioForm);
          DatosPresupuesto.CDSPresuDetUnitario_Exento.AsFloat  := FormComposicionPrecio.ValorExento;
          DatosPresupuesto.CDSPresuDetUnitario_Gravado.AsFloat := FormComposicionPrecio.ValorGravado;
          DatosPresupuesto.CDSPresuDetUnitario_TotalSetText(DatosPresupuesto.CDSPresuDetUnitario_Total, DatosPresupuesto.CDSPresuDetUnitario_Total.AsString);
        END;
    END
end;

procedure TFormPresupuesto_2.dbgDBGrillaDetalle_oldKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_LEFT) and (Shift =[ssCtrl]) THEN
    BEGIN
      if (DBGrillaDetalle.SelectedIndex = 1) THEN
        DBGrillaDetalle.SelectedIndex := 0
      else
        if (DBGrillaDetalle.SelectedIndex = 4) THEN
          DBGrillaDetalle.SelectedIndex := 1
        else
          if (DBGrillaDetalle.SelectedIndex = 5) THEN
            DBGrillaDetalle.SelectedIndex := 4
          else
            if (DBGrillaDetalle.SelectedIndex = 6) THEN
              DBGrillaDetalle.SelectedIndex := 5;
      key := 0;
    END;
    IF (Key = VK_F11) and (DatosPresupuesto.CDSPresuDetCODIGOARTICULO.AsString<>'') THEN
      BEGIN
        IF NOT (Assigned(FormArticulosVendidos)) THEN
          BEGIN
            FormArticulosVendidos := TFormArticulosVendidos.Create(Application);
            FormArticulosVendidos.CodigoCliente  :=DatosPresupuesto.CDSPresuCabCODIGO.Value;
            FormArticulosVendidos.CodigoArticulo :=DatosPresupuesto.CDSPresuDetCODIGOARTICULO.Value;
            FormArticulosVendidos.ShowModal;
        END;
    END;

end;

procedure TFormPresupuesto_2.dbgDBGrillaDetalle_oldKeyPress(Sender: TObject;
var Key: Char);
begin
  inherited;

  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (DBGrillaDetalle.SelectedIndex < 5) THEN
        DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF DBGrillaDetalle.DataSource.DataSet.Eof THEN
            DBGrillaDetalle.DataSource.DataSet.Append;
          DBGrillaDetalle.SelectedIndex := 0;
        END;
    END
  ELSE IF (Key = #10) THEN
    BEGIN
      Key := #0;
      IF DBGrillaDetalle.SelectedField = DatosPresupuesto.CDSPresuDetCodigoArticulo THEN
        BuscarArticulo.Execute;
      END
    else
      if (key = #27) then
        DBGrillaDetalle.DataSource.DataSet.Cancel;
end;

procedure TFormPresupuesto_2.DeshabilitarSumaDetalle1Click(Sender: TObject);
begin
  inherited;
  DeshabilitarSumaDetalle1.Checked  := Not(DeshabilitarSumaDetalle1.Checked);
  DatosPresupuesto.FlagSumaDetalle := DeshabilitarSumaDetalle1.Checked;
end;

procedure TFormPresupuesto_2.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  Imprimir.Enabled                         := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  Incidencias.Enabled                      := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  Exportar.Enabled                         := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  EnviarCorreo.Enabled                     := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  pnCabecera.Enabled                       := DSBase.DataSet.State IN [dsInsert];
  DBGrillaDetalle.ReadOnly                 := DSBase.DataSet.State = dsBrowse;
  dbeObservaciones1.Enabled                := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeObservaciones2.Enabled                := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeNotas.Enabled                         := DSBase.DataSet.State IN [dsInsert, dsEdit];
  GenerarOProduccion.Enabled               := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  rxcVendedor.Enabled                      := DMMain_FD.ModificaVendedor;
  dbeDscto.Enabled                         := DSBase.DataSet.State IN [dsInsert, dsEdit];
  CopiarDetalle.Enabled                    := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DatosPresupuesto.CDSPresuDet.IsEmpty));
  PegarDetalle.Enabled                     := (DSBase.DataSet.State IN [dsInsert, dsEdit]);
  BuscarPorObs.Enabled                     := DSBase.DataSet.State IN [dsBrowse];
  GenerarNotaPedido.Enabled                := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  DatosPresupuesto.CDSPresuSubDet.ReadOnly := DSBase.DataSet.State IN [dsBrowse];
  DatosPresupuesto.CDSPresuDet.ReadOnly    := DSBase.DataSet.State IN [dsBrowse];
  dbrNotas.ReadOnly                        := DSBase.DataSet.State IN [dsBrowse];
  pnReferencia.Enabled                     := Not(DSBase.DataSet.State IN [dsBrowse]);
  btMenu.Enabled                           := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  AgendarTarea.Enabled                     := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  gbObra.Enabled                           := Not(DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  dbclista.Enabled                         := Not(DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  dblMoneda.Enabled                        := Not(DSBase.DataSet.State IN [dsBrowse]);
  GenerarNotaPedido.Enabled                := (Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);
  if Not(VarIsNull(DSBase.DataSet.FieldByName('ID_FACTURA').Value)) then
    GenerarNotaPedido.Enabled              := DMMain_FD.HayNotaPedido(DSBase.DataSet.FieldByName('ID_PR').Value, DSBase.DataSet.FieldByName('TIPOCPBTE').Value);
  EnviarAlCobro.Enabled                    := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty)) and (Trim(DSBase.DataSet.FieldByName('MUESTRAFACTURA').AsString)='')
                                               and (Trim(DSBase.DataSet.FieldByName('MUESTRAREMITO').AsString)='');

  if GenerarNotaPedido.Enabled Then GenerarNotaPedido.Enabled      := DSBase.DataSet.FieldByName('ANULADO').Value<>'S';
  if GenerarFacturaCC.Enabled Then GenerarFacturaCC.Enabled        := DSBase.DataSet.FieldByName('ANULADO').Value<>'S';
  if GenerarNdeVta.Enabled Then GenerarNdeVta.Enabled              := DSBase.DataSet.FieldByName('ANULADO').Value<>'S';
  if GenerarRto.Enabled Then GenerarRto.Enabled                    := DSBase.DataSet.FieldByName('ANULADO').Value<>'S';
  if GenerarFcCtdo.Enabled Then GenerarFcCtdo.Enabled              := DSBase.DataSet.FieldByName('ANULADO').Value<>'S';
  if GenerarOdeProduccion1.Enabled Then GenerarOProduccion.Enabled := DSBase.DataSet.FieldByName('ANULADO').Value<>'S';
  if GenerarTk.Enabled Then GenerarTk.Enabled                      := DSBase.DataSet.FieldByName('ANULADO').Value<>'S';
  if GenerarFcAnticipo.Enabled Then GenerarFcAnticipo.Enabled      := DSBase.DataSet.FieldByName('ANULADO').Value<>'S';


  if Not(DSBase.DataSet.State=dsInactive) and (Not(DSBase.Dataset.IsEmpty)) then
    begin
//      if (DSBase.DataSet.State=dsBrowse)  then
//        DBGrillaDetalle.Options:=DBGrillaDetalle.Options + [dgRowselect]
//      else
//        DBGrillaDetalle.Options:=DBGrillaDetalle.Options - [dgRowselect]
    end;

end;

procedure TFormPresupuesto_2.DuplicarPresupuestoExecute(Sender: TObject);
var i,SubNro:byte;
  Nombre,NumStr:String;
  CDSCabXML,CDSDetXML,CDSSubXML,CDSIncXML,CDSConXML: TClientDataSet;
  P_Gravado,P_Exento,P_ConIVA,Importe_Iva,P_Total:Extended;
  ID_Next_Old:Integer;
  ID_Prev_Old:Integer;
begin
  inherited;
   gaClon.Minimum:=0;

  if (DSBase.DataSet.State = dsBrowse) and (not(DSBase.DataSet.IsEmpty)) and (DSBase.DataSet.FieldByName('ANULADO').Value<>'R')  then
    begin
      DatosPresupuesto.CDSIncidencias.Close;
      DatosPresupuesto.CDSIncidencias.Params.ParamByName('Id').Value := DSBase.DataSet.FieldByName('ID_PR').Value;
      DatosPresupuesto.CDSIncidencias.Open;

      DatosPresupuesto.CDSContacto.Close;
      DatosPresupuesto.CDSContacto.Params.ParamByName('ID').Value    := DSBase.DataSet.FieldByName('ID_PR').Value;
      DatosPresupuesto.CDSContacto.Open;

      DatosPresupuesto.CDSPresuCab.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\PresuCab.XML');
      DatosPresupuesto.CDSPresuDet.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\PresuDet.XML');
      DatosPresupuesto.CDSPresuSubDet.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\PresuSub.XML');
      DatosPresupuesto.CDSImpuestos.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\PresuImp.XML');
      DatosPresupuesto.CDSContacto.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Contacto.XML');
      DatosPresupuesto.CDSIncidencias.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Incidencias.XML');

      DatosPresupuesto.CDSIncidencias.Close;
      DatosPresupuesto.CDSContacto.Close;

      CDSCabXML:=TClientDataSet.Create(Self);
      CDSDetXML:=TClientDataSet.Create(Self);
      CDSSubXML:=TClientDataSet.Create(Self);
      CDSIncXML:=TClientDataSet.Create(Self);
      CDSConXML:=TClientDataSet.Create(Self);

      CDSCabXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\PresuCab.XML');
      CDSDetXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\PresuDet.XML');
      CDSSubXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\PresuSub.XML');
      CDSIncXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Incidencias.XML');
      CDSConXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Contacto.XML');

      Agregar.Execute;

      Application.ProcessMessages;

      gaClon.Minimum  := 0;
      gaClon.Maximum  := CDSDetXML.RecordCount;
      gaClon.Position := 1;

      Duplicado :=True;
      //DuplicarFc:=True;
      For i:=0 to CDSCabXML.FieldCount-1 do
        begin
          if DatosPresupuesto.CDSPresuCab.FindField(CDSCabXML.Fields[i].FieldName)<>nil Then
            begin
              Nombre:=CDSCabXML.Fields[i].FieldName;
              if (Nombre<>'ID_PR') Then
                DatosPresupuesto.CDSPresuCab.FieldByName(Nombre).Value:=CDSCabXML.FieldByName(Nombre).Value;
              if (Nombre='ID_PR') Then
                ID_Prev_Old:= CDSCabXML.FieldByName(Nombre).Value;

            end;
        end;
      DatosPresupuesto.CDSPresuCabIMPRESO.Value             := 'N';
      DatosPresupuesto.CDSPresuCabFECHA_REVISION.AsDateTime := Date;
      DatosPresupuesto.CDSPresuCabANULADO.Value             := 'N';
      DatosPresupuesto.CDSPresuCabUSUARIO.Value             := DMMain_FD.UsuarioActivo;
      DatosPresupuesto.CDSPresuCabFECHA_HORA.AsDateTime     := Now;
      DatosPresupuesto.QUltimoSubNro.Close;
      DatosPresupuesto.QUltimoSubNro.ParamByName('Nro').AsString   := DatosPresupuesto.CDSPresuCab.FieldByName('NumeroFac').Value ;
      DatosPresupuesto.QUltimoSubNro.ParamByName('Letra').AsString := DatosPresupuesto.CDSPresuCab.FieldByName('LetraFac').Value ;
      DatosPresupuesto.QUltimoSubNro.ParamByName('Suc').AsString   := DatosPresupuesto.CDSPresuCab.FieldByName('sucfac').Value ;
      DatosPresupuesto.QUltimoSubNro.Open;
      SubNro:= DatosPresupuesto.QUltimoSubNro.Fields[0].AsInteger+1;
      NumStr:= AnsiRightStr('00'+IntToStr(subnro),2);
      DatosPresupuesto.CDSPresuCabSUB_NRO.Value       := NumStr;//  Copy('00',1,Length(IntToStr(SubNro)))+IntToStr(SubNro);

      //DatosPresupuesto.CDSPresuCabSUB_NRO.Value       := Copy('00',1,Length(IntToStr(SubNro)))+IntToStr(SubNro);

      DatosPresupuesto.CDSPresuCabID_PRESU_PREV.Value := ID_Prev_Old;
      DatosPresupuesto.CDSPresuCabID_PRESU_NEXT.Value := -1;

      DatosPresupuesto.QUltimoSubNro.Close;

      CDSDetXML.First;
      CDSSubXML.First;
      DatosPresupuesto.CDSPresuDet.AfterPost   := nil;
      DatosPresupuesto.CDSPresuDet.AfterScroll := nil;

      gaClon.Visible:=True;

      while not(CDSDetXML.Eof) do
        begin
          DatosPresupuesto.CDSPresuDet.Append;
          For i:=0 to CDSDetXML.FieldCount-1 do
            begin
              if DatosPresupuesto.CDSPresuDet.FindField(CDSDetXML.Fields[i].FieldName)<>nil Then
                begin
                  Nombre:=CDSDetXML.Fields[i].FieldName;
                  if (Nombre<>'ID') and (Nombre<>'ID_CABPRES')  Then
                    DatosPresupuesto.CDSPresuDet.FieldByName(Nombre).Value:=CDSDetXML.FieldByName(Nombre).Value;
                end;
            end;
          gaClon.Position:= gaClon.Position+1;
          Application.ProcessMessages;
          DatosPresupuesto.CDSPresuDetID_CABPRES.Value:=DatosPresupuesto.CDSPresuCabID_PR.Value;
          DatosPresupuesto.CDSPresuDet.Post;
          CDSDetXML.Next;
        end;
      DatosPresupuesto.SumaFinal;
      DatosPresupuesto.CDSPresuDet.AfterPost  :=DatosPresupuesto.CDSPresuDetAfterScroll;
      DatosPresupuesto.CDSPresuDet.AfterScroll:=DatosPresupuesto.CDSPresuDetAfterScroll;

      CDSSubXML.First;
      while not(CDSSubXML.Eof) do
        begin
          if DatosPresupuesto.CDSPresuSubDet.Locate('ITEM_NRO',CDSSubXML.FieldByName('ITEM_NRO').Value,[]) Then
            begin
              DatosPresupuesto.CDSPresuSubDet.Edit;
              For i:=0 to CDSSubXML.FieldCount-1 do
                begin
                  if DatosPresupuesto.CDSPresuSubDet.FindField(CDSSubXML.Fields[i].FieldName)<>nil Then
                    begin
                      Nombre:=CDSSubXML.Fields[i].FieldName;
                      if (Nombre<>'ID_CAB') Then
                        DatosPresupuesto.CDSPresuSubDet.FieldByName(Nombre).Value:=CDSSubXML.FieldByName(Nombre).Value
                    end;
                end;
     //         DatosPresupuesto.CDSPresuSubDetID_CAB.AsInteger:=DatosPresupuesto.CDSPresuCabID_PR.AsInteger;
              DatosPresupuesto.CDSPresuSubDet.Post;
            end;
          CDSSubXML.Next;
        end;

      // Contactos Incicidencias ..............................
      DatosPresupuesto.CDSContacto.Open;
      CDSConXML.First;
      begin
        DatosPresupuesto.CDSContacto.Append;
        For i:=0 to CDSConXML.FieldCount-1 do
          begin
            if DatosPresupuesto.CDSContacto.FindField(CDSConXML.Fields[i].FieldName)<>nil Then
              begin
                Nombre:=CDSConXML.Fields[i].FieldName;
                if (Nombre<>'ID_PRESUPUESTO') and (Nombre<>'ID')  Then
                  DatosPresupuesto.CDSContacto.FieldByName(Nombre).Value:=CDSConXML.FieldByName(Nombre).Value;
              end;
          end;
        DatosPresupuesto.CDSContacto.Post;
      end;
      // Incicidencias ..............................
      DatosPresupuesto.CDSIncidencias.Open;
      CDSIncXML.First;
      while not(CDSIncXML.Eof) do
        begin
          DatosPresupuesto.CDSIncidencias.Append;
          For i:=0 to CDSIncXML.FieldCount-1 do
            begin
              if DatosPresupuesto.CDSIncidencias.FindField(CDSIncXML.Fields[i].FieldName)<>nil Then
                begin
                  Nombre:=CDSIncXML.Fields[i].FieldName;
                  if (Nombre<>'ID_PRESUPUESTO') and (Nombre<>'ID') Then
                    DatosPresupuesto.CDSIncidencias.FieldByName(Nombre).Value:=CDSIncXML.FieldByName(Nombre).Value;
                end;
            end;
          CDSIncXML.Next;
          DatosPresupuesto.CDSIncidencias.Post;
        end;
      //***************************************************************

    end
  else
   if DSBase.DataSet.FieldByName('ANULADO').Value='R' then
     ShowMessage('Ya tiene Revision...');
  gaClon.Visible:=False;

end;

procedure TFormPresupuesto_2.edFechaFinancieraExit(Sender: TObject);
begin
  inherited;
  if DSBase.State In [dsInsert,dsEdit] then
    DatosPresupuesto.CDSPresuCabFECHA_FINANCIERASetText(DatosPresupuesto.CDSPresuCabFECHA_FINANCIERA,edFechaFinanciera.Text);
end;

procedure TFormPresupuesto_2.edFechaTecnicaExit(Sender: TObject);
begin
  inherited;
  if DSBase.State In [dsInsert,dsEdit] then
    DatosPresupuesto.CDSPresuCabFECHA_TECNICASetText(DatosPresupuesto.CDSPresuCabFECHA_TECNICA,edFechaTecnica.Text);
end;

procedure TFormPresupuesto_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPresupuesto_2:=nil;
end;

procedure TFormPresupuesto_2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Not(ActiveControl is TDBRichEdit) then
    inherited;
end;

procedure TFormPresupuesto_2.FormResize(Sender: TObject);
begin
  inherited;
   if FormPresupuesto_2<>nil then
     if FormPresupuesto_2.Width<983 then
       FormPresupuesto_2.Width:=983;

end;

procedure TFormPresupuesto_2.pcDetallePresupuestoEnter(Sender: TObject);
begin
  inherited;
   IF ((RxDBECodigo.Text = '')   OR
      (RxDBELdr.Text = '') OR
      (RxDBESucursal.Text = '') OR
      (RxDBEDeposito.Text = '') OR
      (dbeSuc.Text = '')        OR
      (dbeNumero.Text = '') OR
      (dbeConVta.Text ='') or
      (DatosPresupuesto.CDSPresuCabMUESTRACOMPROBANTE.Value='') or
      (dbeFechaVta.Text = '')) and (DSBase.State=dsInsert) THEN
      BEGIN
        ShowMessage('Datos en la Cabecera Incompletos....');
        IF pcDetallePresupuesto.ActivePageIndex <> 0 THEN
          pcDetallePresupuesto.ActivePageIndex := 0;
        pnCabecera.Enabled := True;
        RxDBECodigo.SetFocus;
      END
    else
      begin
        pcDetallePresupuesto.Enabled:=True;
        pnCabecera.Enabled:=False;
      end;
end;

procedure TFormPresupuesto_2.PegarDetalleExecute(Sender: TObject);
Var DeclaIva:String;
begin
  inherited;
  DeclaIva := FormPresupuesto_2.DiscriminaIva;
  FormPresupuesto_2.DiscriminaIva:='S';
  if (DSBase.State in [dsInsert,dsEdit]) and (ActiveControl is TDBGrid) Then
    begin
      DatosPresupuesto.CDSPresuDetXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\PresuDet.XML');
      DatosPresupuesto.CDSPresuDetXML.First;
      DatosPresupuesto.CDSPresuDet.AfterPost:=nil;
      while not(DatosPresupuesto.CDSPresuDetXML.Eof) do
        begin
          DatosPresupuesto.CDSPresuDet.Append;
          DatosPresupuesto.CDSPresuDetCODIGOARTICULOSetText(DatosPresupuesto.CDSPresuDetCODIGOARTICULO,DatosPresupuesto.CDSPresuDetXML.FieldByName('CODIGOArticulo').AsString);
          DatosPresupuesto.CDSPresuDetDetalle.Value           := DatosPresupuesto.CDSPresuDetXML.FieldByName('Detalle').AsString;
          DatosPresupuesto.CDSPresuDetDETALLE_ADICIONAL.Value := DatosPresupuesto.CDSPresuDetXML.FieldByName('Detalle_ADICIONAL').AsString;
          DatosPresupuesto.CDSPresuDetCantidadSetText(DatosPresupuesto.CDSPresuDetCANTIDAD,DatosPresupuesto.CDSPresuDetXML.FieldByName('Cantidad').AsString);
          DatosPresupuesto.CDSPresuDetDescuento.Value         := DatosPresupuesto.CDSPresuDetXML.FieldByName('DESCUENTO').AsFloat;
          DatosPresupuesto.CDSPresuDetUnitario_TotalSetText(DatosPresupuesto.CDSPresuDetUNITARIO_TOTAL,DatosPresupuesto.CDSPresuDetXML.FieldByName('Unitario_Total').AsString);
          DatosPresupuesto.CDSPresuDetITEM_NRO.Value          := DatosPresupuesto.CDSPresuDetXML.FieldByName('ITEM_NRO').Value;
          DatosPresupuesto.CDSPresuDetITEMGRAVADO.Value       := DatosPresupuesto.CDSPresuDetXML.FieldByName('ITEMGRAVADO').Value;
          DatosPresupuesto.CDSPresuDetITEMEXENTO.Value        := DatosPresupuesto.CDSPresuDetXML.FieldByName('ITEMEXENTO').Value;
          DatosPresupuesto.CDSPresuDetITEMIVA.Value           := DatosPresupuesto.CDSPresuDetXML.FieldByName('ITEMIVA').Value;
          DatosPresupuesto.CDSPresuDet.Post;
          DatosPresupuesto.CDSPresuDetXML.Next;
        end;
      DatosPresupuesto.CDSPresuDet.AfterPost:= DatosPresupuesto.CDSPresuDetAfterPost;
      DatosPresupuesto.CDSPresuDet.Edit;
      DatosPresupuesto.CDSPresuDet.Post;
    end;
  FormPresupuesto_2.DiscriminaIva:=DeclaIva;
  datospresupuesto.CDSPresuDet.First;
  DatosPresupuesto.CDSPresuDet.Edit;
  DatosPresupuesto.CDSPresuDet.Post;

end;

procedure TFormPresupuesto_2.PrevExecute(Sender: TObject);
var Nro:String;
begin
   condicion:=' and sucursal   ='+DSBase.DataSet.FieldByName('SUCURSAL').AsString +
              ' and clasecpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
              ' and letraFac   ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRAFAC').AsString,'''')+
              ' and SucFac     ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('SUCFAC').AsString,'''');

   condicion:=' group by id_pr order by 2 desc ';

   Nro:=DSBase.DataSet.FieldByName('NROCPBTE2').AsString;
   DatoOld:=DatoNew;
   QBrowse2.Close;
   QBrowse2.SQL.Clear;
   QBrowse2.SQL.Add('select first 1 id_pr,max(nrocpbte2) from '+''+tabla+''+' where '+''+campo+''+' < '+''''+Nro+''''+''+Condicion+'');
   QBrowse2.Open;
   if QBrowse2.Fields[0].AsString='' Then
     begin
       QBrowse2.Close;
       QBrowse2.SQL.Clear;
       QBrowse2.SQL.Add('select first 1 id_pr,max(nrocpbte2) from '+''+tabla+''+' where '+''+campo+''+' > '+''''+Nro+''''+''+Condicion+'');
       QBrowse2.Open;
     end;
   DatoNew:=QBrowse2.Fields[0].AsString;
   if DatoNew='' Then  DatoNew:=DatoOld;
   QBrowse2.Close;
   if DatoNew<>'' Then
     Recuperar.Execute;

//  inherited;

end;

procedure TFormPresupuesto_2.PrintProformaExecute(Sender: TObject);
begin
  inherited;
//
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('opcion').Value:='CPBTES';
  DMMain_FD.QOpciones.Open;

  DatosPresupuesto.CDSEmpresa.Close;
  DatosPresupuesto.CDSEmpresa.Open;

 // DatosPresupuesto.QComprob.Close;
//  DatosPresupuesto.QComprob.ParamByName('id').Value  := DatosPresupuesto.CDSPresuCabID_TIPOCOMPROBANTE.Value;
//  DatosPresupuesto.QComprob.ParamByName('suc').Value := DatosPresupuesto.CDSPresuCabSUCURSAL.Value;
//  DatosPresupuesto.QComprob.Open;

  frPresupuesto.PrintOptions.Printer:=PrNomCpbte;
  frPresupuesto.SelectPrinter;

  frPresupuesto.LoadFromFile(DMMain_FD.QOpciones.Fields[0].AsString+'\FacturaProforma.fr3');

  frPresupuesto.PrintOptions.Printer:=PrNomCpbte;
  frPresupuesto.SelectPrinter;

  frPresupuesto.PrintOptions.Copies :=1;

  frPresupuesto.PrepareReport;

  //frxRTFExport1.ShowDialog:=False;
  //frPresupuesto.ExportTo(frxRTFExport1,'c:\mm.rtf');

//  DatosPresupuesto.QComprob.Close;

  DMMain_FD.QOpciones.CLose;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='PREVIEWPRESUP';
  DMMain_FD.QOpciones.Open;

  if (DMMain_FD.QOpciones.Fields[0].AsString[1]='S') then
    frPresupuesto.ShowReport
  else
    frPresupuesto.Print;
  DMMain_FD.QOpciones.CLose;
  DatosPresupuesto.CDSEmpresa.Close;

end;

procedure TFormPresupuesto_2.RxDBESucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosPresupuesto.CDSPresuCabSUCURSAL.Clear;
      DatosPresupuesto.CDSPresuCabID_TIPOCOMPROBANTE.Clear;
      DatosPresupuesto.CDSPresuCabMUESTRASUCURSAL.Clear;
      DatosPresupuesto.CDSPresuCabMUESTRACOMPROBANTE.Clear;
      DatosPresupuesto.CDSPresuCabLETRAFAC.Clear;
      DatosPresupuesto.CDSPresuCabSUCFAC.Clear;
      DatosPresupuesto.CDSPresuCabNUMEROFAC.Clear;

    end;
end;

procedure TFormPresupuesto_2.SaltearDescto1Click(Sender: TObject);
begin
  inherited;
  SaltearDescto1.Checked:=Not(SaltearDescto1.Checked);
end;

procedure TFormPresupuesto_2.SaltearItem1Click(Sender: TObject);
begin
  inherited;
  SaltearItem1.Checked:=Not(SaltearItem1.Checked);
end;


procedure TFormPresupuesto_2.sbEstadoClick(Sender: TObject);
begin
  inherited;
  if (Cpbte_Envio_id > -1) then
  begin
    if Cpbte_Envio_Tipo='FC' then
      begin
        if not(Assigned(FormCpbte_2)) then
          FormCpbte_2:=TFormCpbte_2.Create(self);
        FormCpbte_2.DatoNew  :=IntToStr(Cpbte_Envio_id);
        FormCpbte_2.TipoCpbte:=Cpbte_Envio_Tipo;
        FormCpbte_2.Recuperar.Execute;
        FormCpbte_2.Show;
      end
    else
      if Cpbte_Envio_Tipo='NV' then
        begin
          if not(Assigned(FormNotaVta)) then
            FormNotaVta:=TFormNotaVta.Create(self);
          FormNotaVta.DatoNew  :=IntToStr(Cpbte_Envio_id);
          FormNotaVta.TipoCpbte:=Cpbte_Envio_Tipo;
          FormNotaVta.Recuperar.Execute;
          FormNotaVta.Show;
        end
      else
        if Cpbte_Envio_Tipo='RE' then
          begin
            if not(Assigned(FormRemitos)) then
              FormRemitos:=TFormRemitos.Create(self);
            FormRemitos.DatoNew  :=IntToStr(Cpbte_Envio_id);
            FormRemitos.TipoCpbte:=Cpbte_Envio_Tipo;
            FormRemitos.Recuperar.Execute;
            FormRemitos.Show;
          end
        else
          if Cpbte_Envio_Tipo='PC' then
            begin
              if not(Assigned(FormNotaPedidoCliente)) then
                FormNotaPedidoCliente:=TFormNotaPedidoCliente.Create(self);
              FormNotaPedidoCliente.DatoNew  :=IntToStr(Cpbte_Envio_id);
              FormNotaPedidoCliente.TipoCpbte:=Cpbte_Envio_Tipo;
              FormNotaPedidoCliente.Recuperar.Execute;
              FormNotaPedidoCliente.Show;
            end
          else
          if Cpbte_Envio_Tipo='FO' then
            begin
              if not(Assigned(FormCpbteCtdo_2)) then
                FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
              FormCpbteCtdo_2.DatoNew  :=IntToStr(Cpbte_Envio_id);
              FormCpbteCtdo_2.TipoCpbte:=Cpbte_Envio_Tipo;
              FormCpbteCtdo_2.Recuperar.Execute;
              FormCpbteCtdo_2.Show;
            end;

  end;

end;

procedure TFormPresupuesto_2.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frPresupuesto.DesignReport;
end;

procedure TFormPresupuesto_2.sbEstadoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if x>(sbEstado.Panels[0].Width+10) then
    begin
      sbEstado.Cursor  := crHandPoint;
      sbEstado.OnClick := sbEstadoClick;

    end
   else
     begin
       sbEstado.Cursor  := crDefault;
       sbEstado.OnClick := Nil;
     end;
end;

procedure TFormPresupuesto_2.SelectAllExecute(Sender: TObject);
var p:TBookmark;
begin
  inherited;
  if DSBase.State in [dsInsert,dsEdit] then
    begin
      p:=DBGrillaDetalle.DataSource.DataSet.GetBookmark;
      DBGrillaDetalle.DataSource.DataSet.First;
      DBGrillaDetalle.DataSource.DataSet.DisableControls;
      while not(DBGrillaDetalle.DataSource.DataSet.Eof) do
        begin
          DBGrillaDetalle.DataSource.DataSet.Edit;
          DBGrillaDetalle.DataSource.DataSet.FieldByName('ACEPTADO').Value:='S';
          DBGrillaDetalle.DataSource.DataSet.Next;
        end;
      DBGrillaDetalle.DataSource.DataSet.GotoBookmark(p);
      DBGrillaDetalle.DataSource.DataSet.EnableControls;
      DBGrillaDetalle.DataSource.DataSet.FreeBookmark(p);
    end;
end;

procedure TFormPresupuesto_2.ToolBar1DblClick(Sender: TObject);
begin
  inherited;
  frPresupuesto.DesignReport;
end;



procedure TFormPresupuesto_2.UnselectAllExecute(Sender: TObject);
var p:TBookmark;
begin
  inherited;
  if DSBase.State in [dsInsert,dsEdit] then
    begin
      p:=DBGrillaDetalle.DataSource.DataSet.GetBookmark;
      DBGrillaDetalle.DataSource.DataSet.First;
      DBGrillaDetalle.DataSource.DataSet.DisableControls;
      while not(DBGrillaDetalle.DataSource.DataSet.Eof) do
        begin
          DBGrillaDetalle.DataSource.DataSet.Edit;
          DBGrillaDetalle.DataSource.DataSet.FieldByName('ACEPTADO').Value:='N';
          DBGrillaDetalle.DataSource.DataSet.Next;
        end;
      DBGrillaDetalle.DataSource.DataSet.GotoBookmark(p);
      DBGrillaDetalle.DataSource.DataSet.EnableControls;
      DBGrillaDetalle.DataSource.DataSet.FreeBookmark(p);
    end;
end;

procedure TFormPresupuesto_2.VerporCodigoAlternativo1Click(Sender: TObject);
begin
  inherited;
  VerporCodigoAlternativo1.Checked := Not(VerporCodigoAlternativo1.Checked);
  var i:Integer;
  var Ind:Integer;
  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='CODIGOARTICULO' Then
        Ind:=i;
    end;

  if VerporCodigoAlternativo1.Checked then
    DBGrillaDetalle.Columns[ind].Title.Caption:='Cod.Alt'
  else
    DBGrillaDetalle.Columns[ind].Title.Caption:='Codigo';

  DBGrillaDetalle.Refresh;
end;

procedure TFormPresupuesto_2.VertItemAgrupadoClick(Sender: TObject);
begin
  inherited;
  VertItemAgrupado.Checked                  := Not(VertItemAgrupado.Checked);
  DBGrillaDetalle.Columns.Items[9].ReadOnly := Not(VertItemAgrupado.Checked);
  pagAgrupadoItems.TabVisible               := VertItemAgrupado.Checked;
  pagSumaItems.TabVisible                   := VertItemAgrupado.Checked;
  pnMuestraImpuestos.Visible                := Not(VertItemAgrupado.Checked);
  edTotalNeto.Visible                       := VertItemAgrupado.Checked;

 // DBGrillaDetalle.Refresh;
end;

procedure TFormPresupuesto_2.ModificarDatosCabeceraExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State=dsBrowse) and Not(DSBase.DataSet.IsEmpty) then
    if (DSBase.DataSet.FieldByName('ID_FACTURA').Value<0) and (DSBase.DataSet.FieldByName('ANULADO').Value<>'S')  then
      begin
        DMMain_FD.ModificarDatosCliente(DSBase);
        Confirma.Execute;
      end;
end;

procedure TFormPresupuesto_2.ModificarExecute(Sender: TObject);
begin
  inherited;
  CpbteNuevo:='N';
  pnCabecera.Enabled:=False;
end;

procedure TFormPresupuesto_2.MostrarUnidadesVtaClick(Sender: TObject);
var i,Ind:integer;
begin
  inherited;
  MostrarUnidadesVta.Checked:=Not(MostrarUnidadesVta.Checked);
  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='UNIDAD' Then
        Ind:=i;
     end;
  DBGrillaDetalle.Columns[Ind].Visible:=MostrarUnidadesVta.Checked;

end;

procedure TFormPresupuesto_2.MostrarUnitarioNetoClick(Sender: TObject);
var i,Ind:integer;
begin
  inherited;
  MostrarUnitarioNeto.Checked:=Not(MostrarUnitarioNeto.Checked);
  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='MUESTRA_UNIT_NETO' Then
        Ind:=i;
    end;
  DBGrillaDetalle.Columns[Ind].Visible:=MostrarUnitarioNeto.Checked;
end;

procedure TFormPresupuesto_2.MostrarEspecificacionClick(Sender: TObject);
var i,Ind:integer;
begin
  inherited;
  MostrarEspecificacion.Checked:=Not(MostrarEspecificacion.Checked);
  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='ESPECIFICACION' Then
        Ind:=i;
    end;
  DBGrillaDetalle.Columns[Ind].Visible:=MostrarEspecificacion.Checked;
end;

procedure TFormPresupuesto_2.MostrarMargenClick(Sender: TObject);
var i,Ind:integer;
begin
  inherited;
  MostrarMargen.Checked             := Not(MostrarMargen.Checked);
  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='MARGEN' Then
        Ind:=i;
    end;
  DBGrillaDetalle.Columns[Ind].Visible := MostrarMargen.Checked;
  lbMargen.Visible := MostrarMargen.Checked;
  lbNeto.Visible   := MostrarMargen.Checked;
end;

procedure TFormPresupuesto_2.MostrarObra1Click(Sender: TObject);
begin
  inherited;
  MostrarObra1.Checked:=not(MostrarObra1.Checked);
  gbObra.Visible:=MostrarObra1.Checked;
end;

procedure TFormPresupuesto_2.MostrarTasaIvaClick(Sender: TObject);
var i,Ind:integer;
begin
  inherited;
  MostrarTasaIva.Checked             := Not(MostrarTasaIva.Checked);
  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='IVA_TASA' Then
        Ind:=i;
    end;
  DBGrillaDetalle.Columns[Ind].Visible := MostrarTasaIva.Checked;

end;

procedure TFormPresupuesto_2.NextExecute(Sender: TObject);
var Nro:String;
begin
  condicion:=' and sucursal  ='+DSBase.DataSet.FieldByName('SUCURSAL').AsString +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and letraFac = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRAFAC').AsString,'''')+
             ' and SucFac = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('SUCFAC').AsString,'''');

  condicion:=' group by id_pr order by 2 ';


  Nro:=DSBase.DataSet.FieldByName('NROCPBTE2').AsString;
  DatoOld:=DatoNew;
  QBrowse2.Close;
  QBrowse2.SQL.Clear;
  QBrowse2.SQL.Add('select first 1 id_pr, min(nrocpbte2) from '+''+tabla+''+' where '+''+campo+''+' > '+''''+Nro+''''+''+Condicion+'');
  QBrowse2.Open;
  if QBrowse2.Fields[0].AsString='' Then
    begin
      QBrowse2.Close;
      QBrowse2.SQL.Clear;
      QBrowse2.SQL.Add('select first 1 id_pr,min(nrocpbte2) from '+''+tabla+''+' where '+''+campo+''+' < '+''''+Nro+''''+''+Condicion+'');
      QBrowse2.Open;
    end;
  DatoNew:=QBrowse2.Fields[0].AsString;
  if DatoNew='' Then  DatoNew:=DatoOld;
  QBrowse2.Close;
  if DatoNew<>'' Then
    Recuperar.Execute;


  //inherited;

end;

procedure TFormPresupuesto_2.NuevaObraExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormObras)) then
    FormObras:=TFormObras.Create(self);
  FormObras.Show;
  DSBase.DataSet.FieldByName('id_obra').Value:=FormObras.Tag;
end;

procedure TFormPresupuesto_2.NuevoSectorExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.FieldByName('id_obra').AsString<>'') and (DSBase.State in [dsInsert,dsEdit]) then
    begin
      if Not(Assigned(FormCargaSectorObra)) then
        FormCargaSectorObra:=TFormCargaSectorObra.Create(Self);
      FormCargaSectorObra.IdObra:=DSBase.DataSet.FieldByName('id_obra').AsInteger;
      FormCargaSectorObra.ShowModal;
      if (FormCargaSectorObra.ModalResult=mrOk) and (FormCargaSectorObra.idSector>-1)  then
        begin
          DatosPresupuesto.CDSObrasSector.Close;
          DatosPresupuesto.CDSObrasSector.Params.ParamByName('obra').Value:=DSBase.DataSet.FieldByName('id_obra').AsInteger;
          DatosPresupuesto.CDSObrasSector.Open;
          dbcObraSector.KeyValue:=FormCargaSectorObra.idSector;
          DSBase.DataSet.FieldByName('ID_OBRA_SECTOR').AsInteger:=FormCargaSectorObra.idSector;
        end;
    end;
end;

procedure TFormPresupuesto_2.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosPresupuesto.CDSPresuCabID_TIPOCOMPROBANTE.Clear;
      DatosPresupuesto.CDSPresuCabMUESTRACOMPROBANTE.Clear;
      DatosPresupuesto.CDSPresuCabLETRAFAC.Clear;
      DatosPresupuesto.CDSPresuCabSUCFAC.Clear;
      DatosPresupuesto.CDSPresuCabNUMEROFAC.Clear;
    end;
end;

procedure TFormPresupuesto_2.RxDBECodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosPresupuesto.CDSPresuCabCODIGO.Clear;
      DatosPresupuesto.CDSPresuCabNOMBRE.Clear;
      DatosPresupuesto.CDSPresuCabLDR.Clear;
      DatosPresupuesto.CDSPresuCabMUESTRALDR.Clear;
      DatosPresupuesto.CDSPresuCabCONDICIONVTA.Clear;
      DatosPresupuesto.CDSPresuCabMUESTRACONDVENTA.Clear;
    end;

end;

procedure TFormPresupuesto_2.RxDBELdrKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosPresupuesto.CDSPresuCabLDR.Clear;
      DatosPresupuesto.CDSPresuCabMUESTRALDR.Clear;
    end;

end;

procedure TFormPresupuesto_2.RxDBEDepositoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosPresupuesto.CDSPresuCabDEPOSITO.Clear;
      DatosPresupuesto.CDSPresuCabMUESTRADEPOSITO.Clear;
    end;

end;

procedure TFormPresupuesto_2.RxDBEConVtaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosPresupuesto.CDSPresuCabCONDICIONVTA.Clear;
      DatosPresupuesto.CDSPresuCabMUESTRACONDVENTA.Clear;
    end;

end;

procedure TFormPresupuesto_2.BuscadorVendedorExecute(Sender: TObject);
begin
  inherited;
  DatosPresupuesto.CDSBuscaVendedor.Close;
  DatosPresupuesto.CDSBuscaVendedor.Open;
  comBuscadorVendedor.Execute;
  if comBuscadorVendedor.rOk Then
    DatosPresupuesto.CDSPresuCabVENDEDORSetText(DatosPresupuesto.CDSPresuCabVENDEDOR,comBuscadorVendedor.Id);
  DatosPresupuesto.CDSBuscaVendedor.Close;
end;

procedure TFormPresupuesto_2.rxcVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosPresupuesto.CDSPresuCabVENDEDOR.Clear;
      DatosPresupuesto.CDSPresuCabMUESTRAVENDEDOR.Clear;
    end;

end;

procedure TFormPresupuesto_2.BorrarExecute(Sender: TObject);
VAR NUMERO,NOMBRE,IMPORTE:String;
begin
  if Not(DSBase.DataSet.IsEmpty) and (DatosPresupuesto.CDSPresuCabANULADO.Value='N') and (FormPresupuesto_2.Active) then
    if (MessageDlg('Está por hacer una opreación de borrado.. Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes) Then
      begin
        if DatosPresupuesto.CDSPresuCabANULADO.Value='N' then
          begin
            Numero :=DatosPresupuesto.CDSPresuCabNROCPBTE.AsString;
            Nombre :=DatosPresupuesto.CDSPresuCabNOMBRE.AsString;
            Importe:=FormatFloat('0,00',DatosPresupuesto.CDSPresuCabTOTAL.AsFloat);
            inherited;
            DMMain_FD.LogFileFD(1,2,'Borrado de presupuesto Nro.'+Numero+
                                    ' Cliente :'+Nombre+
                                    ' Importe :'+Importe,
                                    'PRESUPUESTO');

            DatosPresupuesto.CDSPresuCab.Close;
            DatosPresupuesto.CDSPresuDet.Close;
            DatosPresupuesto.CDSImpuestos.Close;
            // los abro con un parametro vacio por que no me vaciaba los CDS
            DatosPresupuesto.CDSPresuCab.Params.ParamByName('id').Clear;
            DatosPresupuesto.CDSPresuCab.Open;

            DatosPresupuesto.CDSPresuDet.Params.ParamByName('id').Clear;
            DatosPresupuesto.CDSPresuDet.Open;

            DatosPresupuesto.CDSImpuestos.Params.ParamByName('id').Clear;
            DatosPresupuesto.CDSImpuestos.Open;
          end;
      end;
end;

procedure TFormPresupuesto_2.btnSalirColumnaClick(Sender: TObject);
begin
  inherited;
  pnColumnas.Visible:=False;
end;

procedure TFormPresupuesto_2.dbgDBGrillaDetalle_oldExit(Sender: TObject);
begin
  inherited;
  sbEstado.Panels[0].Text:='';
  sbEstado.Panels[1].Text:='';
end;

procedure TFormPresupuesto_2.dbgDBGrillaDetalle_oldEnter(Sender: TObject);
begin
  inherited;
  sbEstado.Panels[0].Text:=' F-11: Lista los movimientos del artículo elegido';
end;

procedure TFormPresupuesto_2.ExportarExecute(Sender: TObject);
begin
  inherited;
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (DatosPresupuesto.CDSPresuDet.IsEmpty) THEN
    BEGIN
      ShowMessage('Este procedimiento exportara los importes sin IVA,'+#13+
                  'para aquellos que sean Gravados, tener en cuenta esto.'+#13+
                  'de ser necesario, exportar al Porta Papeles de Windows.(Btn+Drcho de Mouse, sobre el detalle)');
      SaveDialog.FileName:=dbeNombre.Text;
      SaveDialog.DefaultExt:='XLS';

      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

            DataToXLS.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog.FileName);
          end;

//      WITH Grilla, Grilla.ExportOptions DO
//        BEGIN
//          FileName := 'wwexporttest.slk';
//          Save;
//          ShellExecute(Handle, 'Open', PChar( Grilla.exportoptions.Filename),
//            NIL, NIL, sw_shownormal);
//        END;
    END;
end;

procedure TFormPresupuesto_2.DatosClienteExecute(Sender: TObject);
begin
  inherited;
  {if Not(Assigned(FormDatosClienteCabeceraCpbte)) Then
    FormDatosClienteCabeceraCpbte:=TFormDatosClienteCabeceraCpbte.Create(Application);
  FormDatosClienteCabeceraCpbte.Tag :=3;
  FormDatosClienteCabeceraCpbte.ShowModal;  }

  DMMain_FD.ModificarDatosCliente(DSBase);

end;

procedure TFormPresupuesto_2.RecuperarExecute(Sender: TObject);
begin
  inherited;
  sbEstado.Panels[0].Text :='';
  sbEstado.Panels[1].Text :='';
  sbEstado.Panels[2].Text :='';

  if Anulado<>nil Then
    FreeAndNil(Anulado);

  DatosPresupuesto.CDSPresuCab.close;
  DatosPresupuesto.CDSPresuCab.Params.ParamByName('id').Value := DatoNew;
  DatosPresupuesto.CDSPresuCab.Open;

  if DatosPresupuesto.CDSPresuCabNETOGRAV2.AsFloat>0 Then
     DatosPresupuesto.Var_TasaIVA:=(((DatosPresupuesto.CDSPresuCabTOTAL.AsFloat - DatosPresupuesto.CDSPresuCabNETOGRAV2.AsFloat) *100) / DatosPresupuesto.CDSPresuCabNETOGRAV2.AsFloat)
  else
     DatosPresupuesto.Var_TasaIVA:=0;
  DatosPresupuesto.CDSPresuDet.Close;
  DatosPresupuesto.CDSPresuDet.Params.ParamByName('id').Value := DatoNew;
  DatosPresupuesto.CDSPresuDet.Open;

  DatosPresupuesto.CDSImpuestos.Close;
  DatosPresupuesto.CDSImpuestos.Params.ParamByName('id').Value:= DatoNew;
  DatosPresupuesto.CDSImpuestos.Open;

  DatosPresupuesto.CDSPercepcionIVA.Close;
  DatosPresupuesto.CDSPercepcionIVA.Params.ParamByName('id').Value:= DatoNew;
  DatosPresupuesto.CDSPercepcionIVA.Open;

  DatosPresupuesto.CDSPresuSubDet.Close;
  DatosPresupuesto.CDSPresuSubDet.Params.ParamByName('id').Value:= DatoNew;
  DatosPresupuesto.CDSPresuSubDet.Open;

  DatosPresupuesto.QComprob.Close;
  DatosPresupuesto.QComprob.ParamByName('Id').Value := DatosPresupuesto.CDSPresuCabID_TIPOCOMPROBANTE.AsInteger;
  DatosPresupuesto.QComprob.ParamByName('suc').Value:= DatosPresupuesto.CDSPresuCabSUCURSAL.AsInteger;
  DatosPresupuesto.QComprob.Open;

  if DatosPresupuesto.CDSPresuCabSUCURSAL.Value>0 then
    begin
      DatosPresupuesto.CDSSucursal.Close;
      DatosPresupuesto.CDSSucursal.Params.ParamByName('Codigo').Value := DatosPresupuesto.CDSPresuCabSUCURSAL.Value;
      DatosPresupuesto.CDSSucursal.Open;
    end;

  IF NOT (DatosPresupuesto.QComprob.IsEmpty) THEN
    BEGIN
      FormPresupuesto_2.Calcula_iva_articulo         := DatosPresupuesto.QComprobCALCULA_IVA_ARTICULOS.Value='S';
      FormPresupuesto_2.Divide_iva                   := DatosPresupuesto.QComprobDIVIDE_IVA.Value='S';
    END;
  FormPresupuesto_2.sbEstado.Panels[2].Text:='';

  if FormPresupuesto_2.Calcula_iva_articulo then
    FormPresupuesto_2.sbEstado.Panels[2].Text:='Calc./Iva';
  if FormPresupuesto_2.Divide_iva then
    FormPresupuesto_2.sbEstado.Panels[2].Text:='-/2';

  DatosPresupuesto.HabilitarLabel;

  pnPrincipal.Enabled          := True;
  pcDetallePresupuesto.Enabled := True;
  DBGrillaDetalle.Enabled      := True;
  Borrar.Enabled               := DatosPresupuesto.CDSPresuCabANULADO.Value='N';

  if (DatosPresupuesto.CDSPresuCabANULADO.Value='A') or
     (DatosPresupuesto.CDSPresuCabANULADO.Value='S') or
     (DatosPresupuesto.CDSPresuCabANULADO.Value='R') or
     (DatosPresupuesto.CDSPresuCabANULADO.Value='C') or
     (DatosPresupuesto.CDSPresuCabANULADO.Value='T') or
     (DatosPresupuesto.CDSPresuCabANULADO.Value='V')  Then
    begin
      if Anulado=nil Then
        Anulado:=TPanel.Create(Self);
       Anulado.Parent:=FormPresupuesto_2;
      if (DatosPresupuesto.CDSPresuCabANULADO.Value='A') then
         Anulado.Caption:='ACEPTADO'
       else
         if (DatosPresupuesto.CDSPresuCabANULADO.Value='S') then
           Anulado.Caption:='ANULADO'
         else
           if (DatosPresupuesto.CDSPresuCabANULADO.Value='V') then
              Anulado.Caption:='VENCIDO'
           else
             if (DatosPresupuesto.CDSPresuCabANULADO.Value='R') then
                Anulado.Caption:='REVISION'
             else
               if (DatosPresupuesto.CDSPresuCabANULADO.Value='C') then
                 Anulado.Caption:='COBRADO'
             else
               if (DatosPresupuesto.CDSPresuCabANULADO.Value='T') then
                  Anulado.Caption:='CTA CTE';

      Anulado.Top        := 220;//Trunc(FormPresupuesto_2.Height*0.5)-50;
      Anulado.Left       := Trunc(FormPresupuesto_2.Width*0.5)-115;
      Anulado.Height     := 36;
      Anulado.Width      := 230;
      Anulado.Font.Size  := 26;
      Anulado.Font.Color := clRed;
      Anulado.Font.Name  := 'Arial';
      Anulado.Font.Style := [fsBold];
      Anulado.Visible    := True;
      ANulado.BringToFront;
    end
  else
    if Anulado<>nil Then
      begin
        FreeAndNil(Anulado);
      end;
  if DatosPresupuesto.CDSPresuCabANULADO.Value='A' then
    sbEstado.Panels[0].Text:='Ctr+R Habilita el Presupuesto-';
  Recalcular.Enabled:=(DatosPresupuesto.CDSPresuCabANULADO.Value<>'S') and
                      (DatosPresupuesto.CDSPresuCabANULADO.Value<>'A');

// if DatosPresupuesto.CDSPresuCabMUESTRANOTAVENTA_ID.AsString<>'' then
//    GenerarNdeVta.Enabled:=False
//  else
//    GenerarNdeVta.Enabled:=True;

  GenerarNotaPedido.Enabled := GenerarNdeVta.Enabled;
  GenerarFacturaCC.Enabled  := GenerarNdeVta.Enabled;
  GenerarFcCtdo.Enabled     := GenerarNdeVta.Enabled;
  GenerarTk.Enabled         := GenerarNdeVta.Enabled;
  GenerarRto.Enabled        := GenerarNdeVta.Enabled;

  sbEstado.Panels[1].Text   := '';
  Cpbte_Envio_id            := -1;
  Cpbte_Envio_Tipo          := '';
  lbAcopio.Visible          := DSBase.DataSet.fieldByName('PARA_ACOPIO').Value='S';
  lbACobrar.Visible         := DSBase.DataSet.fieldByName('A_COBRAR').Value='S';

  DatosPresupuesto.spCpteDestino.Close;
  DatosPresupuesto.spCpteDestino.paramByName('id_presupuesto').Value:=StrToInt(DatoNew);
  DatosPresupuesto.spCpteDestino.ExecProc;
  if DatosPresupuesto.spCpteDestino.ParamByName('id').AsString<>'' then
    begin
      sbEstado.Panels[1].Text:= DatosPresupuesto.spCpteDestino.ParamByName('Tipo').AsString+'-'+
                                DatosPresupuesto.spCpteDestino.ParamByName('Nro').AsString;
      Cpbte_Envio_id         := DatosPresupuesto.spCpteDestino.ParamByName('Id').AsInteger;
      Cpbte_Envio_Tipo       := DatosPresupuesto.spCpteDestino.ParamByName('Tipo').AsString;
      if DatosPresupuesto.CDSPresuCabANULADO.Value='N' then
        MarcaPresupuesto('A');
      GenerarNotaPedido.Enabled := False;
      GenerarFacturaCC.Enabled  := False;
      GenerarFcCtdo.Enabled     := False;
      GenerarTk.Enabled         := False;
      GenerarRto.Enabled        := False;
      GenerarNdeVta.Enabled     := False;
    end
  else
    begin
      if DatosPresupuesto.CDSPresuCabANULADO.Value='A' then
        sbEstado.Panels[1].Text   := 'Aceptado Sin Comprobante ..'
      else
        if DatosPresupuesto.CDSPresuCabANULADO.Value='N' then
         sbEstado.Panels[1].Text   := 'Nuevo..';

      Cpbte_Envio_id            := -1;
      Cpbte_Envio_Tipo          := '';
      GenerarNotaPedido.Enabled := True;
      GenerarFacturaCC.Enabled  := True;
      GenerarFcCtdo.Enabled     := True;
      GenerarTk.Enabled         := True;
      GenerarRto.Enabled        := True;
      GenerarNdeVta.Enabled     := True;
     end;

  DatosPresupuesto.spCpteDestino.Close;

  edFechaFinanciera.Enabled := dbchFinanciero.Checked;
  edFechaTecnica.Enabled    := dbchTecnica.Checked;

  DBGrillaDetalle.Width     := DBGrillaDetalle.Width+1;
  DBGrillaDetalle.Width     := DBGrillaDetalle.Width-1;

  if DatosPresupuesto.CDSPresuCabID_FACTURA.Value<=-1 then
    begin
      GenerarFacturaCC.Enabled :=True;
      GenerarFcCtdo.Enabled    :=True;
      GenerarTk.Enabled        :=True;
    end;
  if Trim(DatosPresupuesto.CDSPresuCabMUESTRAREMITO.AsString)='' then
    begin
      GenerarRto.Enabled        :=True;
    end;

  FormPresupuesto_2.Caption :='Presupuesto de Ventas -- '+DatosPresupuesto.CDSPresuCabFECHA_HORA.AsString+'//'+Copy(DatosPresupuesto.CDSPresuCabUSUARIO.Value,1,15);

  CopiarDetalle.Enabled     := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DatosPresupuesto.CDSPresuDet.IsEmpty));
  PegarDetalle.Enabled      := (DSBase.DataSet.State IN [dsInsert, dsEdit]);
//  Variable de Form para Discriminar IVA SI o NO
//  DiscriminaIva                                := DSBase.DataSet.FieldByName('DESGLOZAIVA').Value;

  cxGrid2DBTableView1TOTAL_UNIT_FINAL.Visible  := DiscriminaIva='N';
  cxGrid2DBTableView1TOTAL_FINAL.Visible       := DiscriminaIva='N';

  cxGrid2DBTableView1TOTAL_GRAVADO.Visible     := DiscriminaIva='S';
  cxGrid2DBTableView1TOTAL_NETO.Visible        := DiscriminaIva='S';

  cxGrid1DBTableView1TOTAL_FINAL.Visible       := DiscriminaIva='N';
  cxGrid1DBTableView1TOTAL.Visible             := DiscriminaIva='S';

  if GenerarNotaPedido.Enabled Then GenerarNotaPedido.Enabled      := DSBase.DataSet.FieldByName('ANULADO').Value<>'S';
  if GenerarFacturaCC.Enabled Then GenerarFacturaCC.Enabled        := DSBase.DataSet.FieldByName('ANULADO').Value<>'S';
  if GenerarNdeVta.Enabled Then GenerarNdeVta.Enabled              := DSBase.DataSet.FieldByName('ANULADO').Value<>'S';
  if GenerarRto.Enabled Then GenerarRto.Enabled                    := DSBase.DataSet.FieldByName('ANULADO').Value<>'S';
  if GenerarFcCtdo.Enabled Then GenerarFcCtdo.Enabled              := DSBase.DataSet.FieldByName('ANULADO').Value<>'S';
  if GenerarOdeProduccion1.Enabled Then GenerarOProduccion.Enabled := DSBase.DataSet.FieldByName('ANULADO').Value<>'S';
  if GenerarTk.Enabled Then GenerarTk.Enabled                      := DSBase.DataSet.FieldByName('ANULADO').Value<>'S';
  if GenerarFcAnticipo.Enabled Then GenerarFcAnticipo.Enabled      := DSBase.DataSet.FieldByName('ANULADO').Value<>'S';


  // and (FormPresupuesto_2.DiscriminaIva='N') then
  cxGrid1DBTableView1.DataController.Groups.FullExpand;
 
end;

procedure TFormPresupuesto_2.ReHabilitarExecute(Sender: TObject);
begin
  inherited;
  DatoNew       := DatosPresupuesto.CDSPresuCabID_PR.AsString;
  TipoCpbte     := 'PR';
  MarcaPresupuesto('N');
  Recuperar.Execute;
end;

procedure TFormPresupuesto_2.ResetColumnasExecute(Sender: TObject);
begin
  inherited;
  if FileExists(FormPresupuesto_2.Name+'_'+DMMain_FD.Nombre_PC) then
    DeleteFile(FormPresupuesto_2.Name+'_'+DMMain_FD.Nombre_PC);

end;

procedure TFormPresupuesto_2.RecalcularExecute(Sender: TObject);
VAR Puntero:TBookmark;
    Gravado,Exento,Iva,Total,Margen,Dscto,DsctoLinea,PFinal:Extended;
begin
  inherited;
 // if DatosPresupuesto.CDSPresuCabListaprecio.OldValue<>DatosPresupuesto.CDSPresuCabListaprecio.NewValue Then
    begin
      DatosPresupuesto.CDSPresuDet.AfterPost   := nil;

      if DatosPresupuesto.CDSPresuCabMONEDA_CPBTE.Value<=0 then DatosPresupuesto.CDSPresuCabMONEDA_CPBTE.Value:=1;

      DatosPresupuesto.QMonedas.Close;
      DatosPresupuesto.QMonedas.ParamByName('id').Value:=DatosPresupuesto.CDSPresuCabMONEDA_CPBTE.Value;
      DatosPresupuesto.QMonedas.Open;
      if DatosPresupuesto.CDSPresuCab.State=dsBrowse then DatosPresupuesto.CDSPresuCab.Edit;

      DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat:= DatosPresupuesto.QMonedasCOTIZACION.AsFloat;
      DatosPresupuesto.QMonedas.Close;

      Puntero:=DatosPresupuesto.CDSPresuDet.GetBookmark;
      DatosPresupuesto.CDSPresuDet.First;
      DatosPresupuesto.CDSPresuDet.DisableControls;
      while Not(DatosPresupuesto.CDSPresuDet.Eof) DO
        begin
          DsctoLinea:=RoundTo( DatosPresupuesto.CDSPresuDetDESCUENTO.ASFloat,-3);
           // Puntero2  :=DatosPresupuesto.CDSPresuDet.GetBookmark;
          DatosPresupuesto.CDSPresuDet.edit;
            // Por si no tiene moneda asignada....
          if (DatosPresupuesto.CDSPresuDetID_MONEDA.AsString='') or (DatosPresupuesto.CDSPresuDetID_MONEDA.Value<=0) then
            begin
              DatosPresupuesto.CDSStock.Close;
              DatosPresupuesto.CDSStock.Params.ParamByName('codigo').Value:=DatosPresupuesto.CDSPresuDetCODIGOARTICULO.AsString;
              DatosPresupuesto.CDSStock.Open;
              DatosPresupuesto.CDSPresuDetID_MONEDA.Value:=DatosPresupuesto.CDSStockMONEDA.Value;
              DatosPresupuesto.CDSStock.Close;
            end;

          if DatosPresupuesto.CDSPresuDetID_MONEDA.Value<>1 then
            begin
              DatosPresupuesto.QMonedas.Close;
              DatosPresupuesto.QMonedas.ParamByName('id').Value:= DatosPresupuesto.CDSPresuDetID_MONEDA.Value;
              DatosPresupuesto.QMonedas.Open;
              if DatosPresupuesto.QMonedasCOTIZACION.AsString<>'' then
                DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat := DatosPresupuesto.QMonedasCOTIZACION.AsFloat
              else
                DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat := 1;
                DatosPresupuesto.CDSPresuDetMUESTRASIGNO.Value:=DatosPresupuesto.QMonedasSIGNO.Value;
                DatosPresupuesto.QMonedas.Close;
            end;

          if FormPresupuesto_2.Divide_iva=True then
            DatosPresupuesto.CDSPresuDetIVA_TASA.Value:=DatosPresupuesto.CDSPresuDetIVA_TASA.Value/2;

          if FormPresupuesto_2.Calcula_iva_articulo=false then
            DatosPresupuesto.CDSPresuDetIVA_TASA.Value:=0;


          DMMain_FD.CalculaPrecioVta_FD('N',DMMain_FD.IdListaProveedor, DatosPresupuesto.CDSPresuCabLISTAPRECIO.Value,DatosPresupuesto.CDSPresuCabSUCURSAL.Value,DatosPresupuesto.CDSPresuCabDEPOSITO.Value,
                                        DatosPresupuesto.CDSPresuDetCODIGOARTICULO.AsString,DatosPresupuesto.CDSPresuCabCODIGO.AsString,DatosPresupuesto.CDSPresucabTIPOCPBTE.Value,
                                        DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat,
                                        DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat,
                                        Gravado,exento,Total,Iva,Margen,dscto,PFInal);

          if FormPresupuesto_2.Divide_iva=True then
            Iva:=Iva/2;

          if FormPresupuesto_2.Calcula_iva_articulo=false then
            Iva:=0;

          DatosPresupuesto.CDSPresuDetUNITARIO_GRAVADO.AsFloat:=Gravado;
          DatosPresupuesto.CDSPresuDetUNITARIO_EXENTO.AsFloat :=Exento;
          DatosPresupuesto.CDSPresuDetUNITARIO_TOTAL.AsFloat  :=Total;
          DatosPresupuesto.CDSPresuDetIVA_UNITARIO.AsFloat    :=Iva;
          DatosPresupuesto.CDSPresuDetMARGEN.ASFloat          :=Margen;
          DatosPresupuesto.CDSPresuDetDESCUENTO.ASFloat       :=Dscto;
          if (Trunc(DsctoLinea*100))>0 then
            DatosPresupuesto.CDSPresuDetDESCUENTO.ASFloat       :=DsctoLinea;

          DatosPresupuesto.CDSPresuDetCantidadSetText(DatosPresupuesto.CDSPresuDetCantidad,DatosPresupuesto.CDSPresuDetCantidad.AsString);
          DatosPresupuesto.CDSPresuDet.Next;
        end;
      DatosPresupuesto.SumaFinal;
      DatosPresupuesto.CDSPresuDet.GotoBookmark(Puntero);
      DatosPresupuesto.CDSPresuDet.FreeBookmark(Puntero);
      DatosPresupuesto.CDSPresuDet.AfterPost  :=DatosPresupuesto.CDSPresuDetAfterPost;
      DatosPresupuesto.CDSPresuDet.EnableControls;

      //if (DSBase.State<>dsInsert) and (DatosPresupuesto.CDSPresuCabANULADO.AsString<>'A') then
      //  begin
      //    if MessageDlg('Confirma la actualización de los precios ??? ',mtConfirmation,mbYesNo,0)=mrYes then
      //      Confirma.Execute
      //    else
      //      begin
      //        DatoNew:=DatosPresupuesto.CDSPresuCabID_PR.AsString;
      //        Recuperar.Execute;
      //      end;
      //  end;

    end;
end;

procedure TFormPresupuesto_2.RecalcularMargenExecute(Sender: TObject);
begin
  inherited;
  if DSBase.DataSet.FieldByName('NETO_ACUMULADO').AsFloat<=0 Then
    begin
      DatosPresupuesto.SumaFinal;
      Confirma.Execute;
      Recuperar.Execute;
      DMMain_FD.LogFileFD(1,2,'Recalulo de Presupuesto Margen - Lista >>'+OldLista+
                          ' a lista >> VACIA en Pres.Nro'+' ('+DSBase.DataSet.FieldByName('ID_PR').AsString+') '+
                          DSBase.DataSet.FieldByName('TIPOCPBTE').AsString+'-'+
                          DSBase.DataSet.FieldByName('NROCPBTE').AsString ,' PRESUP');
    end;
end;

procedure TFormPresupuesto_2.dbcListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=VK_back) or (Key=VK_delete) Then
    begin
      DatosPresupuesto.CDSPresuCabLISTAPRECIO.Clear;
      DMMain_FD.LogFileFD(1,2,'Modificacion Lista de Precio en Presupuesto de Lista >>'+OldLista+
                          ' a lista >> VACIA en Pres.Nro'+' ('+DSBase.DataSet.FieldByName('ID_PR').AsString+') '+
                          DSBase.DataSet.FieldByName('TIPOCPBTE').AsString+'-'+
                          DSBase.DataSet.FieldByName('NROCPBTE').AsString ,' PRESUP');
      oldLista:='0';

      Recalcular.Execute;
    end;
end;

procedure TFormPresupuesto_2.dbcPercibeIIBBClick(Sender: TObject);
begin
  inherited;
  if DSBase.State in [dsInsert,DsEdit] Then
    BEGIN
      if dbcPercibeIIBB.Checked Then
        DatosPresupuesto.CDSPresuCabPERCIB_IB.Value:='S'
      else
        DatosPresupuesto.CDSPresuCabPERCIB_IB.Value:='N';
      if DatosPresupuesto.CDSPresuDet.IsEmpty=False then
        begin
          DatosPresupuesto.SumarDetalleClon;
          DatosPresupuesto.CalcularTotales;
        end;
    END;
end;

procedure TFormPresupuesto_2.dbchTecnicaClick(Sender: TObject);
begin
  inherited;
  if DSBase.State in [dsInsert,dsedit] then
    begin
      edFechaTecnica.Enabled:=dbchTecnica.Checked;
      if dbchTecnica.Checked=False then
        DSBase.DataSet.FieldByName('FECHA_TECNICA').Clear
      else
        DSBase.DataSet.FieldByName('FECHA_TECNICA').AsDateTime:=Date;

    end;
end;

procedure TFormPresupuesto_2.dbeDiasChange(Sender: TObject);
begin
  inherited;
  if DSBase.State in [dsInsert,dsedit] then
    DatosPresupuesto.CDSPresuCabFECHAVTO_PRESUPUESTO.AsDateTime:=DatosPresupuesto.CDSPresuCabFECHAVTA.AsDateTime+dbeDias.Value;
end;

procedure TFormPresupuesto_2.dbePlazoEntregaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (DSBase.State in [dsEdit,dsInsert]) and (not(Key in ['0'..'9',#8,#13,#7])) then
  begin
    Key:=#0;
  end;
end;

procedure TFormPresupuesto_2.dbchFinancieroClick(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsEdit,dsInsert]) Then
    begin
      edFechaFinanciera.Enabled:=dbchFinanciero.Checked;
      if dbchFinanciero.Checked=False then
        DSBase.DataSet.FieldByName('FECHA_FINANCIERA').Clear
      else
        DSBase.DataSet.FieldByName('FECHA_FINANCIERA').AsDateTime:=Date;

    end;

end;

procedure TFormPresupuesto_2.dbcListaClick(Sender: TObject);
begin
  inherited;
  if ((dbcLista.KeyValue<>Null) and (DSBase.State<>dsBrowse)) Then
    begin
      DMMain_FD.LogFileFD(1,2,'Modificacion Lista de Precio en Presupuesto de Listta >>'+ OldLista+
                          ' a lista >> '+ dbcLista.Text +
                          ' en Pres.Nro'+' ('+DSBase.DataSet.FieldByName('ID_PR').AsString+') '+
                          DSBase.DataSet.FieldByName('TIPOCPBTE').AsString+'-'+
                          DSBase.DataSet.FieldByName('NROCPBTE').AsString ,'PRESUP');
      oldLista:=dbcLista.Text;

      if DSBase.State=dsBrowse then
        Modificar.Execute;
    // comente esta linea por que al cambiar de lista y la lista tiene asignada una forma de pago me daba error

    //  if (FormPresupuesto_2.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsInteger>-1) Then
    //    DatosPresupuesto.CDSPresuCabCONDICIONVTASetText(DatosPresupuesto.CDSPresuCabCONDICIONVTA,FormPresupuesto_2.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString);
      Recalcular.Execute;
    end;
end;

procedure TFormPresupuesto_2.dbgDBGrillaDetalle_oldDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  if Source=FormConsultaStock.dbgStock Then
    Accept:=True
  else
    Accept:=False;
end;

procedure TFormPresupuesto_2.dbgDBGrillaDetalle_oldDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  inherited;
  if (DatosPresupuesto.CDSPresuCab.State in [dsInsert,dsEdit]) Then
    begin
      DatosPresupuesto.CDSPresuDetCodigoArticuloSetText(DatosPresupuesto.CDSPresuDetCodigoArticulo, (Source as TDBGrid).DataSource.DataSet.FieldByName('Codigo_stk').AsString);
      DatosPresupuesto.CDSPresuDetCantidadSetText(DatosPresupuesto.CDSPresuDetCantidad,'1');
      DatosPresupuesto.CDSPresuDetUnitario_TotalSetText(DatosPresupuesto.CDSPresuDetUnitario_Total,(Source as TDBGrid).DataSource.DataSet.FieldByName('MuestraPrecio').Value);
      DatosPresupuesto.CDSPresuDet.Append;
    end;
end;

procedure TFormPresupuesto_2.EnviarAlCobroExecute(Sender: TObject);
begin
  inherited;
  Modificar.Execute;
  if DSBase.DataSet.FieldByName('A_COBRAR').Value<>'S' then
    DSBase.DataSet.FieldByName('A_COBRAR').Value:='S'
  else
    DSBase.DataSet.FieldByName('A_COBRAR').Value:='N';
  Confirma.Execute;
end;

procedure TFormPresupuesto_2.EnviarCorreoExecute(Sender: TObject);
var DiscrIva,Cuit:String;
BEGIN
  inherited;
  DiscrIva:=FormPresupuesto_2.DiscriminaIva;
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');

  frPresupuesto.PrintOptions.Printer:=PrNomCpbte;
  frPresupuesto.SelectPrinter;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('opcion').Value:='CPBTES';
  DMMain_FD.QOpciones.Open;

  DatosPresupuesto.QComprob.Close;
  DatosPresupuesto.QComprob.ParamByName('id').Value:=DatosPresupuesto.CDSPresuCabID_TIPOCOMPROBANTE.Value;
  DatosPresupuesto.QComprob.ParamByName('suc').Value:=DatosPresupuesto.CDSPresuCabSUCURSAL.Value;
  DatosPresupuesto.QComprob.Open;

  frPresupuesto.LoadFromFile(DMMain_FD.QOpciones.Fields[0].AsString+'\'+DatosPresupuesto.QComprobREPORTE.AsString);
  frPresupuesto.PrintOptions.Copies :=DatosPresupuesto.QComprobCOPIAS.Value;

  frPresupuesto.PrepareReport;

  frxPDFExport1.ShowDialog    :=False;
  frxPDFExport1.EmbeddedFonts := True;
  frxPDFExport1.FileName      := ExtractFilePath(ParamStr(0))+'Archivos Temporales\Prespuesto_'+DatosPresupuesto.CDSPresuCabNROCPBTE.AsString+'.pdf';
  frPresupuesto.Export(frxPDFExport1);
  frxPDFExport1.ShowDialog:=True;

 // DatosPresupuesto.QComprob.Close;
  DMMain_FD.QOpciones.CLose;

  if DatosPresupuesto.CorreoDestino='' Then
    DatosPresupuesto.CorreoDestino:=DMMain_FD.GetCorreoCliente_1(DSBase.DataSet.FieldByName('Codigo').AsString);

  if Not(Assigned(FormCorreo)) Then
    FormCorreo:=TFormCorreo.Create(Application);
  FormCorreo.CorreoOrigen        := DirCorreo;
  FormCorreo.Remitente           := Remitente;
  FormCorreo.Destinatario        := DatosPresupuesto.CDSPresuCabNOMBRE.AsString;
  FormCorreo.Puerto              := Puerto;
  FormCorreo.CorreoDestino       := DatosPresupuesto.CorreoDestino;
  FormCorreo.CCopia              := DMMain_FD.GetCorreoCliente_2(DSBase.DataSet.FieldByName('Codigo').AsString);
  FormCorreo.NombreServidorCorreo:= NombreServidor;
  FormCorreo.NombreCuentaCorreo  := NombreCuenta;
  FormCorreo.Clave               := Clave;
  FormCorreo.Autenticacion       := Autotenticacion;
  FormCorreo.Asunto              := 'Presupuesto - '+ DatosPresupuesto.CDSPresuCabLETRAFAC.AsString+
                                    '-'+ DatosPresupuesto.CDSPresuCabSUCFAC.AsString+
                                    '-'+ DatosPresupuesto.CDSPresuCabNUMEROFAC.AsString+
                                    ' del '+ FormatDateTime('dd-mm-yy',DatosPresupuesto.CDSPresuCabFECHAVTA.AsDateTime);
//  FormCorreo.Adjunto             := ExtractFilePath(ParamStr(0))+'Archivos Temporales\Prespuesto_'+DatosPresupuesto.CDSPresuCabNROCPBTE.AsString+'.pdf';

  FormCorreo.Adjuntos.Add(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Prespuesto_'+DatosPresupuesto.CDSPresuCabNROCPBTE.AsString+'.pdf');


  FormCorreo.Show;
  //FormCorreo.Close;
  FormPresupuesto_2.DiscriminaIva:=DiscrIva;
  DatosPresupuesto.CDSPresuDet.Refresh;
end;

procedure TFormPresupuesto_2.dbgDBGrillaDetalle_oldDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($CCCCFF);
begin
  inherited;
  if (DatosPresupuesto.CDSPresuDetUnitario_Total.AsFloat<DatosPresupuesto.CDSPresuDetCOSTO_TOTAL.AsFloat) Then
    if (gdFocused in State) then
      begin
        DBGrillaDetalle.canvas.brush.color := clBlack;
      end
    else
      begin
        DBGrillaDetalle.canvas.brush.color := clPaleRed;
     end;

  DBGrillaDetalle.Canvas.Font.Style:=[];
  if (DatosPresupuesto.CDSPresuDetMargen.AsFloat<DMMain_FD.GetMargenUtilidad) and
     (DatosPresupuesto.CDSPresuDetCodigoArticulo.AsString<>'') and
     (DatosPresupuesto.CDSPresuDetMargen.AsFloat<>0) and
     (DatosPresupuesto.CDSPresuDetMargen.AsString<>'') then
    DBGrillaDetalle.Canvas.Font.Style:=[fsBold];

 { if not (DBGrillaDetalle.DataSource.DataSet.IsEmpty) then
    begin
      if CompareText(Column.FieldName, 'ACEPTADO') = 0 then
      begin
        Check := 0;
        if DBGrillaDetalle.DataSource.DataSet.FieldByName('ACEPTADO').Value = 'S' then
          Check := DFCS_CHECKED;
        DBGrillaDetalle.Canvas.FillRect(Rect);
        DrawFrameControl(DBGrillaDetalle.Canvas.Handle, Rect,
        DFC_BUTTON, DFCS_BUTTONCHECK or Check);
      end;
    end
  else
    DBGrillaDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);
 }

    DBGrillaDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

end.












