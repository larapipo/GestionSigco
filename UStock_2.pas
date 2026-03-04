unit UStock_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ExtCtrls, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Db, ActnList, Buttons, ToolWin, Librerias,JvJCLUtils,System.StrUtils,
  frxDBSet, frxClass,IBGenerator , Provider, DBClient,Menus, IniFiles,Variants, ImgList,
  JvExControls, JvGradient, JvComponentBase, JvExMask, JvToolEdit, JvDBControls,
  JvExDBGrids, JvDBGrid, DBCGrids, JvExStdCtrls, JvDBCombobox, JvCombobox,
  JvFormPlacement, JvLabel, FMTBcd, SqlExpr, JvDBLookup, JvBaseEdits, ExtDlgs,
  UCtaContables, JvDBGridFooter, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  DBXCommon, JvSpin, JvDBSpinEdit, System.Actions, JvAppStorage, JvAppIniStorage,
  CompBuscador, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxCalc, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, AdvUtil, AdvObj, BaseGrid, AdvGrid, Vcl.Samples.Spin,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList,
  WooCommerceAPI, REST.Response.Adapter, System.JSON, DMWordPress, DBAdvGrid,
  JvDBLookupTreeView, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomControl, VCL.TMSFNCTreeViewBase,
  VCL.TMSFNCTreeViewData, VCL.TMSFNCCustomTreeView, VCL.TMSFNCTreeView,
  VCL.TMSFNCCheckedTreeView, AdvCustomControl, AdvTreeViewBase, AdvTreeViewData,
  AdvCustomTreeView, AdvTreeView, AdvCheckedTreeView,System.Generics.Collections,
  AdvMemo, AdvmWS, JvUrlListGrabber, JvUrlGrabbers,VirtualUI_sdk, dxSkinWXI,
  frCoreClasses ,UProductosVariables, AdvGroupBox, AdvOfficeButtons, JvDBImage,
  System.Rtti, VCL.TMSFNCDataGridCell, VCL.TMSFNCDataGridData,
  VCL.TMSFNCDataGridBase, VCL.TMSFNCDataGridCore, VCL.TMSFNCDataGridRenderer,
  VCL.TMSFNCCustomComponent, VCL.TMSFNCDataGridDatabaseAdapter,
  VCL.TMSFNCDataGrid, cxGrid;

type
  TMyTreeNode = class(TAdvTreeViewNode)
  public
    ID: Integer;
  end;


type
  TFormStock_2 = class(TFormABMBase)
    pcPrincipal: TPageControl;
    Pag1: TTabSheet;
    pcDatosArticulo: TPageControl;
    SubPag1: TTabSheet;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label29: TLabel;
    Label34: TLabel;
    Label9: TLabel;
    Label17: TLabel;
    dbeDescripcion: TDBEdit;
    dbeReemplazo: TDBEdit;
    dbeCodigo: TDBEdit;
    dbchControlaStock: TDBCheckBox;
    dbcUnidad: TDBLookupComboBox;
    dbeMarca: TDBEdit;
    dbeRubro: TDBEdit;
    dbeSubRubro: TDBEdit;
    SubPag2: TTabSheet;
    Label30: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    dbrgClaseArticulo: TDBRadioGroup;
    dbcTasa: TDBLookupComboBox;
    dbcSobreTasa: TDBLookupComboBox;
    dbeImpuesto: TDBEdit;
    SubPag3: TTabSheet;
    Label24: TLabel;
    Label25: TLabel;
    dbgMovimientos: TDBGrid;
    rgTipoOp: TRadioGroup;
    BuscarMarca: TAction;
    BuscarRubro: TAction;
    BuscarSubRubro: TAction;
    BuscarDeposito: TAction;
    TraerMovimientos: TAction;
    btVerMov: TBitBtn;
    Label2: TLabel;
    Label4: TLabel;
    chbGravadoIB: TDBCheckBox;
    lbEntran: TLabel;
    lbSalen: TLabel;
    BuscarProvee: TAction;
    dbchActualizaCosto: TDBCheckBox;
    Label8: TLabel;
    UpDown1: TUpDown;
    BuscarStkComponente: TAction;
    dbchProduccionDirecta: TDBCheckBox;
    dbchDeProduccion: TDBCheckBox;
    BitBtn1: TBitBtn;
    ImprimirMov: TAction;
    frDBMov: TfrxDBDataset;
    frDBStock: TfrxDBDataset;
    frxReporte: TfrxReport;
    Label14: TLabel;
    dbcUnidadesCompra: TDBLookupComboBox;
    dbcContCompra: TDBEdit;
    Label5: TLabel;
    rgUnidades: TRadioGroup;
    rgUnidadesDepositos: TRadioGroup;
    dbchControlSerie: TDBCheckBox;
    SubPag4: TTabSheet;
    dbgSerie: TDBGrid;
    dbgMovSerie: TDBGrid;
    btSeries: TBitBtn;
    TraerSeries: TAction;
    GroupBox1: TGroupBox;
    dbeFecha: TDBEdit;
    dbeClase: TDBEdit;
    dbeNumero: TDBEdit;
    dbeProv: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    dbchUsaCodigoBarra: TDBCheckBox;
    rgTipo: TRadioGroup;
    BitBtn2: TBitBtn;
    RearmarMovimientos: TAction;
    dbcIngBruto: TDBLookupComboBox;
    SubPag5: TTabSheet;
    Label15: TLabel;
    Panel3: TPanel;
    Label18: TLabel;
    DBEdit5: TDBEdit;
    Label19: TLabel;
    DBEdit4: TDBEdit;
    BorrarHistorial: TAction;
    DBGrid1: TDBGrid;
    pmHistorial: TPopupMenu;
    BorrarHistorial1: TMenuItem;
    spCodigosProveedores: TSpeedButton;
    dbtTasaIva: TDBText;
    dbtSobreTasa: TDBText;
    SubPag6: TTabSheet;
    Label6: TLabel;
    dbgProveedores: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    dbeNroCpbte: TDBEdit;
    Label3: TLabel;
    Label20: TLabel;
    gbTablaPrecios: TGroupBox;
    dbeMuestraTablaPrecio: TDBEdit;
    dbeMuestraPrecio2: TDBEdit;
    dbeMuestraPrecio1: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    BuscarTablaPrecio: TAction;
    BuscarTablaPrecioDetalle: TAction;
    Label28: TLabel;
    Label40: TLabel;
    dbeCostoGravadoSombra: TDBEdit;
    dbeCostoExentoSombra: TDBEdit;
    Label41: TLabel;
    Label42: TLabel;
    FechaActulizacionPrecioSombra: TJvDBDateEdit;
    Label43: TLabel;
    spVerHistorial: TSpeedButton;
    VerPrecioSombra: TAction;
    Label44: TLabel;
    tbImagenes: TTabSheet;
    Button1: TButton;
    dbcMoneda: TDBLookupComboBox;
    Label45: TLabel;
    Label46: TLabel;
    DBEdit6: TDBEdit;
    Label47: TLabel;
    DBEdit8: TDBEdit;
    Label48: TLabel;
    DBEdit9: TDBEdit;
    dbcGravamen: TJvDBComboBox;
    dbeDiasVto: TDBEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    dbcPRESENTACION_UNIDAD: TDBLookupComboBox;
    dbePRESENTACION_CANTIDAD: TDBEdit;
    dbchEditaPrecio: TDBCheckBox;
    dbchEditaDetalle: TDBCheckBox;
    dbtCodigo_Stk: TDBText;
    dbtDetalle_Stk: TDBText;
    dbtCodigo_Stk1: TDBText;
    dbtDetalle_Stk1: TDBText;
    dbtCodigo_Stk2: TDBText;
    dbtDetalle_Stk2: TDBText;
    MarcarProveedorDefecto: TAction;
    bt1: TBitBtn;
    dbtLinkURL: TDBText;
    btURL: TSpeedButton;
    Label36: TLabel;
    RxDBCMarca: TJvDBComboEdit;
    RxDBCSubRubro: TJvDBComboEdit;
    dbcCodigoBarra: TJvDBComboEdit;
    dbcTablaPrecio: TJvDBComboEdit;
    dbcCodigoPrecio: TJvDBComboEdit;
    BuscaURL: TAction;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    DBStatusLabel2: TJvDBStatusLabel;
    dbchComanda: TDBCheckBox;
    dbtUltimaVta: TDBText;
    dbtFechaAlta: TDBText;
    dbtUltimaCompra: TDBText;
    dbtUltimaActualizacion: TDBText;
    ToolBar2: TToolBar;
    MenuConfig: TMainMenu;
    Opciones1: TMenuItem;
    MemorizarUltimoIngreso1: TMenuItem;
    rgPasoFecha: TRadioGroup;
    chbSincronizarFechas: TCheckBox;
    lb1: TLabel;
    lb2: TLabel;
    imgFoto: TImage;
    opdImagenes: TOpenDialog;
    CambiarCodigo: TAction;
    N1: TMenuItem;
    CambiarCodigo1: TMenuItem;
    dbeCostoTotal: TDBEdit;
    dbeCostoConIva: TDBEdit;
    Label52: TLabel;
    dbeFPTotal: TDBEdit;
    Label53: TLabel;
    dbeFPrecioConIvaTotal: TDBEdit;
    FrameCtaContable2: TFrameCtaContable;
    DBText1: TDBText;
    DBText2: TDBText;
    BorrarStockProv: TAction;
    BitBtn3: TBitBtn;
    DBText5: TDBText;
    DBText6: TDBText;
    Label54: TLabel;
    Label55: TLabel;
    dbgListaPrecios: TJvDBGrid;
    TabSheet1: TTabSheet;
    dbgMov: TJvDBGrid;
    CDSMovVenta: TClientDataSet;
    DSPMovVenta: TDataSetProvider;
    DSMovimientos: TDataSource;
    CDSMovVentaID_FC: TIntegerField;
    CDSMovVentaTIPOCPBTE: TStringField;
    CDSMovVentaCLASECPBTE: TStringField;
    CDSMovVentaNROCPBTE: TStringField;
    CDSMovVentaFECHAVTA: TSQLTimeStampField;
    CDSMovVentaANULADO: TStringField;
    CDSMovVentaAFECTA_STOCK: TStringField;
    CDSMovVentaCONTROL: TFloatField;
    DSPMovCompra: TDataSetProvider;
    CDSMovCompra: TClientDataSet;
    CDSMovCompraID_FC: TIntegerField;
    CDSMovCompraTIPOCPBTE: TStringField;
    CDSMovCompraCLASECPBTE: TStringField;
    CDSMovCompraNROCPBTE: TStringField;
    CDSMovCompraFECHACOMPRA: TSQLTimeStampField;
    CDSMovCompraANULADO: TStringField;
    CDSMovCompraAFECTA_STOCK: TStringField;
    CDSMovCompraCONTROL: TFloatField;
    pnCabeceraControlMov: TPanel;
    Desde_2: TJvDateEdit;
    Hasta_2: TJvDateEdit;
    UpDown2: TUpDown;
    rgPasoFecha_2: TRadioGroup;
    pnPieControlMov: TPanel;
    rgTipoMov: TRadioGroup;
    edEntra: TJvCalcEdit;
    edSale: TJvCalcEdit;
    btVerControlMov: TButton;
    Label56: TLabel;
    Label57: TLabel;
    BitBtn4: TBitBtn;
    SimularArmadoMov: TAction;
    SpeedButton1: TSpeedButton;
    Label58: TLabel;
    tsGastos: TTabSheet;
    Label60: TLabel;
    Label61: TLabel;
    CodigoEAN: TEdit;
    dbchWeb: TDBCheckBox;
    dbgFotos: TJvDBGrid;
    spMeses: TJvDBSpinEdit;
    Label62: TLabel;
    dbchGtiaOficial: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    lbAvisoPrecio: TLabel;
    tsArticulosTrazables: TTabSheet;
    dbgTrazables: TDBGrid;
    BitBtn5: TBitBtn;
    ComBuscadorMarca: TComBuscador;
    ComBuscadorDepositos: TComBuscador;
    ComBuscadorTablaPrecios: TComBuscador;
    ComBuscadorCodTablaPrecios: TComBuscador;
    dbchIvaModificado: TDBCheckBox;
    TabSheet2: TTabSheet;
    dbgArticulosSeriesTrazables: TJvDBGrid;
    BitBtn6: TBitBtn;
    lbUnidades: TLabel;
    dbeUnidades: TDBEdit;
    Label63: TLabel;
    dbeSiglas: TDBEdit;
    Label64: TLabel;
    dbeGrupo: TDBEdit;
    FrameCtaContable1: TFrameCtaContable;
    TabSheet3: TTabSheet;
    cxGridLotes: TcxGrid;
    cxGridLotesDBTableView1: TcxGridDBTableView;
    cxGridLotesTableView1: TcxGridTableView;
    cxGridLotesDBTableView2: TcxGridDBTableView;
    cxGridLotesLevel1: TcxGridLevel;
    cxGridLotesLevel2: TcxGridLevel;
    cxGridLotesDBTableView2ID: TcxGridDBColumn;
    cxGridLotesDBTableView2ID_LOTE: TcxGridDBColumn;
    cxGridLotesDBTableView2CODIGO: TcxGridDBColumn;
    cxGridLotesDBTableView2FECHA: TcxGridDBColumn;
    cxGridLotesDBTableView2ID_COMPROBANTE: TcxGridDBColumn;
    cxGridLotesDBTableView2ID_DETALLE_CPBTE: TcxGridDBColumn;
    cxGridLotesDBTableView2TIPO_COMPROBANTE: TcxGridDBColumn;
    cxGridLotesDBTableView2TIPO: TcxGridDBColumn;
    cxGridLotesDBTableView2ENTRA: TcxGridDBColumn;
    cxGridLotesDBTableView2SALE: TcxGridDBColumn;
    cxGridLotesDBTableView2DEPOSITO: TcxGridDBColumn;
    cxGridLotesDBTableView2MUESTRANROCPBTE: TcxGridDBColumn;
    cxGridLotesDBTableView2MUESTRAOPERACION: TcxGridDBColumn;
    cxGridLotesDBTableView2MUESTRADEPOSITO: TcxGridDBColumn;
    cxGridLotesDBTableView1ID: TcxGridDBColumn;
    cxGridLotesDBTableView1ID_COMPROBANTE: TcxGridDBColumn;
    cxGridLotesDBTableView1CODIGO: TcxGridDBColumn;
    cxGridLotesDBTableView1ID_DETALLE_CPBTE: TcxGridDBColumn;
    cxGridLotesDBTableView1FECHA_ENTRADA: TcxGridDBColumn;
    cxGridLotesDBTableView1FECHA_VTO: TcxGridDBColumn;
    cxGridLotesDBTableView1LOTE: TcxGridDBColumn;
    cxGridLotesDBTableView1DESPACHO: TcxGridDBColumn;
    cxGridLotesDBTableView1CANTIDAD: TcxGridDBColumn;
    cxGridLotesDBTableView1SALDO: TcxGridDBColumn;
    cxGridLotesDBTableView2MUESTRANOMBRE: TcxGridDBColumn;
    DBCheckBox3: TDBCheckBox;
    Label59: TLabel;
    dbePLU: TDBEdit;
    dbgDepositos: TJvDBGrid;
    edAdicional_1: TDBEdit;
    edAdicional_2: TDBEdit;
    edAdicional_3: TDBEdit;
    edAdicional_4: TDBEdit;
    pnAdicionalSeries: TPanel;
    DBCheckBox4: TDBCheckBox;
    chRemitos: TCheckBox;
    QMovVenta: TFDQuery;
    CDSMovVentaCANTIDAD: TFloatField;
    CDSMovVentaENTRA: TFloatField;
    CDSMovVentaSALE: TFloatField;
    QMovCompra: TFDQuery;
    CDSMovCompraDETALLE: TStringField;
    CDSMovCompraCANTIDAD: TFloatField;
    CDSMovCompraENTRA: TFloatField;
    CDSMovCompraSALE: TFloatField;
    Adicionales: TTabSheet;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    edLargo1: TDBEdit;
    edLargo2: TDBEdit;
    edLargo3: TDBEdit;
    edRotura1: TDBEdit;
    edRotura2: TDBEdit;
    edCima: TDBEdit;
    edVolumen: TDBEdit;
    edPeso: TDBEdit;
    edbOlla: TDBEdit;
    edAltoAccesorio: TDBEdit;
    pnAdicionales: TPanel;
    dbcClaseProducto: TJvDBComboBox;
    DatosAdicionales1: TMenuItem;
    N2: TMenuItem;
    BuscarCodLibre: TAction;
    DBComboBox1: TDBComboBox;
    Label77: TLabel;
    BitBtn7: TBitBtn;
    Imprimir: TAction;
    dbeDetalleAdicional: TDBEdit;
    ReamarMovi_OfLog: TAction;
    Label78: TLabel;
    dbcTipo: TJvDBLookupCombo;
    chAplicaCodigo: TCheckBox;
    GenerarCodigo: TAction;
    edCodigoResultado: TEdit;
    spAplicarCodigo: TSpeedButton;
    AplicarCodigo: TAction;
    pnBase: TPanel;
    Label72: TLabel;
    edBase: TDBEdit;
    edNombre: TEdit;
    pcGeneradorArticulos: TPageControl;
    ArticulosFab: TTabSheet;
    pgGenerador: TTabSheet;
    sgGenerador: TAdvStringGrid;
    Label79: TLabel;
    cbdTipoGenerado: TJvDBLookupCombo;
    edRoturaDesde: TEdit;
    edLargo: TEdit;
    edOlla: TEdit;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    btGenerar: TButton;
    edRoturaHasta: TEdit;
    edAlto: TEdit;
    spPaso: TSpinEdit;
    Label85: TLabel;
    Label86: TLabel;
    QBuscadorCodigo: TFDQuery;
    QBuscadorCodigoMAX: TStringField;
    spABMStock: TFDStoredProc;
    btGravar: TButton;
    Label87: TLabel;
    chAlfa: TCheckBox;
    rgJustifica: TRadioGroup;
    cbChar: TComboBox;
    Label88: TLabel;
    edNombreArticulo: TEdit;
    chbEditar: TCheckBox;
    lbSaldo: TLabel;
    pnPesoCalculado: TPanel;
    Label89: TLabel;
    edPeso_calculado: TDBEdit;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    spSeccionesPLU: TSpeedButton;
    ABMSeccionesPLU: TAction;
    spRecalculaIVA: TFDStoredProc;
    pmIVA: TPopupMenu;
    RecIVA: TAction;
    pnCabcerarMovim: TPanel;
    DBText3: TDBText;
    Label7: TLabel;
    DBText4: TDBText;
    Label26: TLabel;
    RxDBDeposito: TJvDBLookupCombo;
    ReemplazarArticulo: TAction;
    BitBtn8: TBitBtn;
    ppmMovimientos: TPopupMenu;
    ReemplazarArt1: TMenuItem;
    BitBtn9: TBitBtn;
    ToolButton1: TToolButton;
    Etiquetas: TfrxDBDataset;
    edEtiqueta1: TEdit;
    sbReporte: TSpeedButton;
    OpenDialog: TOpenDialog;
    ImprimirEtiquetas: TAction;
    JvDBComboEdit1: TJvDBComboEdit;
    DBEdit10: TDBEdit;
    BuscarCtaGasto: TAction;
    DBEdit11: TDBEdit;
    BuscarSubRubro_2: TAction;
    edCodSubRubro: TJvComboEdit;
    edMuestraSubRubro: TEdit;
    edCodRubStock: TEdit;
    edMuestraRubStock: TEdit;
    BuscarSubProduccion: TAction;
    frxEtiqueta: TfrxReport;
    DBEdit12: TDBEdit;
    dbgProduccion: TDBGrid;
    Label93: TLabel;
    N3: TMenuItem;
    BloquearPreciosCosto: TMenuItem;
    pnCostos: TPanel;
    Label31: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Label50: TLabel;
    dbeCostoNoGravado: TDBEdit;
    dbeCostoGravado: TDBEdit;
    dbeCostoFinal: TDBEdit;
    dbeCostoIva: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    dbeFPGravado: TDBEdit;
    dbeFPnoGravado: TDBEdit;
    dbeFPrecioConIva: TDBEdit;
    dbeIvaFPrecio: TDBEdit;
    Label94: TLabel;
    Label95: TLabel;
    chbPerciveIVA: TDBCheckBox;
    dbcPercepIVA: TDBLookupComboBox;
    DBText7: TDBText;
    WoordPress: TTabSheet;
    pcWordPress: TPageControl;
    pagLstProductos: TTabSheet;
    pagLstCategorias: TTabSheet;
    TabSheet5: TTabSheet;
    dbgProductos: TDBAdvGrid;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    N4: TMenuItem;
    UsaWoordPress1: TMenuItem;
    edID_wp: TEdit;
    edSku_wp: TEdit;
    edNombre_wp: TEdit;
    edPrecio_wp: TEdit;
    edRegularPrec_wp: TEdit;
    edSalePreci_wp: TEdit;
    edUrl_wp: TEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label110: TLabel;
    dbgCategorias: TDBAdvGrid;
    Label99: TLabel;
    Label100: TLabel;
    spItemsPag: TSpinEdit;
    Button3: TButton;
    ConsultaWP: TAction;
    lbPaginas: TLabel;
    pnCategorias: TPanel;
    Label96: TLabel;
    btSincronizarWebCateg: TButton;
    SincronizaCategoriasWeb: TAction;
    Panel4: TPanel;
    Label97: TLabel;
    upPaginas: TUpDown;
    edPagina: TEdit;
    Traer_Sku: TAction;
    mShotDescription: TMemo;
    lbPermalink: TLabel;
    edLongDesc_wp: TMemo;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    Label98: TLabel;
    Label111: TLabel;
    JvDBStatusLabel1: TJvDBStatusLabel;
    btSincronizarWebProductos: TButton;
    AgregarWeb: TAction;
    AgregarWeb1: TMenuItem;
    ModificaWeb: TAction;
    N5: TMenuItem;
    ModificaWeb1: TMenuItem;
    BorrarWeb: TAction;
    pnArticuloWoordPress: TPanel;
    BorrarWeb1: TMenuItem;
    Label112: TLabel;
    edStockWeb: TEdit;
    JvDBStatusLabel2: TJvDBStatusLabel;
    dbePlu_2: TDBEdit;
    Label113: TLabel;
    Label114: TLabel;
    dbeDetalleCorto: TDBEdit;
    Label115: TLabel;
    DBEdit15: TDBEdit;
    Label116: TLabel;
    edTipo: TEdit;
    Label117: TLabel;
    edCategorias: TEdit;
    ExportarArticulosWeb: TAction;
    SaveDialog1: TSaveDialog;
    popMenuExportar: TPopupMenu;
    ExportarArticulosWeb1: TMenuItem;
    N6: TMenuItem;
    VerRecetaProduccion: TAction;
    VerRecetadeProduccion1: TMenuItem;
    pagComposicion: TTabSheet;
    dbgDetalleProduccion: TDBGrid;
    QStockProdDetalle: TFDQuery;
    DSStockProdDetalle: TDataSource;
    QStockProdDetalleCODIGO_STK: TStringField;
    QStockProdDetalleDETALLE: TStringField;
    QStockProdDetalleUNIDAD: TStringField;
    QStockProdDetalleCANTIDAD_REAL: TFloatField;
    QStockProdDetalleCANTIDAD_FISICA: TFloatField;
    BuscarVariable: TAction;
    Variables: TAction;
    Label118: TLabel;
    edVariaciones: TEdit;
    lbVariaciones: TLabel;
    rgTipoVariable: TDBRadioGroup;
    dbcArticuloVariable: TJvDBComboEdit;
    comBuscadoArticuloWeb: TComBuscador;
    AgregarWebVariante: TAction;
    foto1: TMenuItem;
    DBImage1: TDBImage;
    GuardarFoto: TAction;
    RefrescaDatosActivo: TMenuItem;
    btRefrescarLotes: TBitBtn;
    DBEdit16: TDBEdit;
    Label119: TLabel;
    LimpiarFoto: TAction;
    LimpiarFoto1: TMenuItem;
    N7: TMenuItem;
    fncDGLotes: TTMSFNCDataGrid;
    fncADAPLote: TTMSFNCDataGridDatabaseAdapter;
    TMSFNCDataGrid1: TTMSFNCDataGrid;
    fncADAPDetalle: TTMSFNCDataGridDatabaseAdapter;
    Label120: TLabel;
    CalculoVolumen: TAction;
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BuscarMarcaExecute(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure TraerMovimientosExecute(Sender: TObject);
    procedure dbgDepositosColEnter(Sender: TObject);
    procedure dbgDepositosEditButtonClick(Sender: TObject);
    procedure dbgDepositosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgDepositosKeyPress(Sender: TObject; var Key: Char);
    procedure pcDatosArticuloChanging(Sender: TObject;
      var AllowChange: Boolean);
    procedure rgTipoOpClick(Sender: TObject);
    procedure RxDBDepositoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbeReemplazoExit(Sender: TObject);
    procedure RxDBCMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBCRubroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBCSubRubroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ModificarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarProveeExecute(Sender: TObject);
    procedure dbgProveedoresEditButtonClick(Sender: TObject);
    procedure dbgProveedoresColEnter(Sender: TObject);
    procedure dbgProveedoresKeyPress(Sender: TObject; var Key: Char);
    procedure dbgProveedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure dbchDeProduccionClick(Sender: TObject);
    procedure ToolBar1DblClick(Sender: TObject);
    procedure ImprimirMovExecute(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure rgUnidadesClick(Sender: TObject);
    procedure rgUnidadesDepositosClick(Sender: TObject);
    procedure TraerSeriesExecute(Sender: TObject);
    procedure dbchUsaCodigoBarraClick(Sender: TObject);
    procedure dbcCodigoBarraButtonClick(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure RearmarMovimientosExecute(Sender: TObject);
    procedure chbGravadoIBClick(Sender: TObject);
    procedure BorrarHistorialExecute(Sender: TObject);
    procedure dbgListaPreciosColEnter(Sender: TObject);
    procedure BuscarTablaPrecioExecute(Sender: TObject);
    procedure dbcTablaPrecioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcCodigoPrecioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarTablaPrecioDetalleExecute(Sender: TObject);
    procedure VerPrecioSombraExecute(Sender: TObject);
    procedure spCodigosProveedoresClick(Sender: TObject);
    procedure dbcGravamenChange(Sender: TObject);
    procedure dbgProveedoresDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure MarcarProveedorDefectoExecute(Sender: TObject);
    procedure lbLinkUrlClick(Sender: TObject);
    procedure dbeURLClick(Sender: TObject);
    procedure dbtLinkURLClick(Sender: TObject);
    procedure BuscaURLExecute(Sender: TObject);
    procedure MemorizarUltimoIngreso1Click(Sender: TObject);
    procedure dbgListaPreciosEnter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CambiarCodigoExecute(Sender: TObject);
    procedure dbgMovimientosDblClick(Sender: TObject);
    procedure dbgMovimientosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SubPag3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbeCodigoExit(Sender: TObject);
    procedure BorrarStockProvExecute(Sender: TObject);
    procedure dbgListaPreciosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgListaPreciosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btVerControlMovClick(Sender: TObject);
    procedure SimularArmadoMovExecute(Sender: TObject);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure SpeedButton1Click(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure dbrgClaseArticuloClick(Sender: TObject);
    procedure CodigoEANKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function dbgFotosCheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
      var StringForTrue, StringForFalse: string): Boolean;
    procedure dbgMovDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgMovimientosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgMovSerieDblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure dbgTrazablesDblClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure dbgArticulosSeriesTrazablesDblClick(Sender: TObject);
    procedure FrameCtaContable2ceCodigoButtonClick(Sender: TObject);
    procedure FrameCtaContable2ceCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameCtaContable2ceCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrameCtaContable1ceCodigoButtonClick(Sender: TObject);
    procedure FrameCtaContable1ceCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameCtaContable1ceCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure dbePLUKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeSiglasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CodigoEANEnter(Sender: TObject);
    function dbgDepositosCheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
      var StringForTrue, StringForFalse: string): Boolean;
    procedure DatosAdicionales1Click(Sender: TObject);
    procedure dbeCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeDescripcionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeDescripcionEnter(Sender: TObject);
    procedure dbeDescripcionExit(Sender: TObject);
    procedure dbeCodigoEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ReamarMovi_OfLogExecute(Sender: TObject);
    procedure GenerarCodigoExecute(Sender: TObject);
    procedure AplicarCodigoExecute(Sender: TObject);
    procedure btGenerarClick(Sender: TObject);
    procedure pcGeneradorArticulosChange(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure chbEditarClick(Sender: TObject);
    procedure edPeso_calculadoChange(Sender: TObject);
    procedure ABMSeccionesPLUExecute(Sender: TObject);
    procedure RecIVAExecute(Sender: TObject);
    procedure ReemplazarArticuloExecute(Sender: TObject);
    procedure sbReporteClick(Sender: TObject);
    procedure ImprimirEtiquetasExecute(Sender: TObject);
    procedure BuscarCtaGastoExecute(Sender: TObject);
    procedure BuscarSubRubro_2Execute(Sender: TObject);
    procedure BuscarSubProduccionExecute(Sender: TObject);
    procedure dbgProduccionDblClick(Sender: TObject);
    procedure cxGridLotesDBTableView2DblClick(Sender: TObject);
    procedure chbPerciveIVAClick(Sender: TObject);
    procedure UsaWoordPress1Click(Sender: TObject);
    procedure ConsultaWPExecute(Sender: TObject);
    procedure SincronizaCategoriasWebExecute(Sender: TObject);
    procedure upPaginasClick(Sender: TObject; Button: TUDBtnType);
    procedure Traer_SkuExecute(Sender: TObject);
    procedure lbPermalinkClick(Sender: TObject);
    procedure btSincronizarWebProductosClick(Sender: TObject);
    procedure AgregarWebExecute(Sender: TObject);
    procedure ModificaWebExecute(Sender: TObject);
    procedure BorrarWebExecute(Sender: TObject);
    procedure dbchWebClick(Sender: TObject);
    procedure dbgProductosDblClick(Sender: TObject);
    procedure ExportarArticulosWebExecute(Sender: TObject);
    procedure dbgProductosSaveCell(Sender: TObject; ACol, ARow: Integer;
      var Value: string);
    procedure dbgProductosGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure VerRecetaProduccionExecute(Sender: TObject);
    procedure VariablesExecute(Sender: TObject);
    procedure lbVariacionesClick(Sender: TObject);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure rgTipoVariableClick(Sender: TObject);
    procedure dbcArticuloVariableButtonClick(Sender: TObject);
    procedure BuscarVariableExecute(Sender: TObject);
    procedure AgregarWebVarianteExecute(Sender: TObject);
    procedure dbcArticuloVariableDblClick(Sender: TObject);
    procedure GuardarFotoExecute(Sender: TObject);
    procedure RefrescaDatosActivoClick(Sender: TObject);
    procedure btRefrescarLotesClick(Sender: TObject);
    procedure LimpiarFotoExecute(Sender: TObject);
    procedure fncDGLotesGetCellFormatting(Sender: TObject;
      ACell: TTMSFNCDataGridCellCoord; AData: TTMSFNCDataGridCellValue;
      var AFormatting: TTMSFNCDataGridDataFormatting;
      var AConvertSettings: TFormatSettings; var ACanFormat: Boolean);

  private
    { Private declarations }
    FModal:    boolean;
    FWooCommerceAPI: TWooCommerceAPI;
    function PagesQuery: string;
    procedure ActualizarVariacionPorSKU(const ProductoSKU, VariacionSKU,
      NuevaDescripcion: string; const NuevoPrecio: Double;
      WooAPI: TWooCommerceAPI);


  public
    GeneraCodigoBarra :string;
    CodigoSecuencial  :Boolean;
    CodigoAlfa        :Boolean;
    ArchivoIni        :TIniFile;
    AltaListaProveedor:Boolean;
    CodigoProveedor   :String;
    CodigoArtProveedor:String;
    function Generar_Codigo:string;
   // procedure SetAdapter(Response: TJSONValue);
    function CalcularVolumenLitrosPorNomenclatura(
      const Nomenclatura: string): Double;

  published
    property  Modal: boolean read FModal write FModal;
  //  procedure Recuprear(Dato:String);
    { Public declarations }
  end;

var
  FormStock_2: TFormStock_2;

implementation

uses DMStock, UBuscadorArticulos, UAvisoCambioPrecio,
     UBuscadorProveedor, UHistorico_PrecioSombraPorArticulo,
     UCodigoProveedor_stock, UCodigoBarra, UIngresoURL,
     UCambioCodigoStock, UFactura_2, UFacturaCtdo_2, UCompra_2, UCompraCtdo_2,
     UAjusteMercaderia, UTransferencia, URMAEnvio, URMARecepcion, UPlanillaArmado,
     DMContableForm, UMovTemporalStock, UTiketVta, DMBuscadoresForm,
     UMuestraListaCodBarra, UOrdenProduccion, URtoEntregaAcopio, UAjustesSeries,
     UArticulosUsadosRtos, UPrecios_x_Cantidades, URemitos,UDMain_FD,
     URecepcionMercaderia,USeccionCategoria, UCambioArticuloVta,
     UBuscadorCuentaGastos, UBuscadorSubRubrosStock_2, UStockProduccion,
  UStock_Variaciones;

{$R *.DFM}

{$D+ }
// esto lo hice pero no se si anda...
function TFormStock_2.CalcularVolumenLitrosPorNomenclatura(const Nomenclatura: string): Double;
var
  Altura, Rotura: Integer;
  Rext, Rint, Espesor, VolM3: Double;
  Partes: TArray<string>;
begin
  Result := 0;

  // Dividir la nomenclatura en partes (ej: POSTE HºAº 12 R 1200)
  Partes := Nomenclatura.Split([' ']);

  // Buscar altura y rotura
  Altura := 0;
  Rotura := 0;

  if Length(Partes) >= 4 then
  begin
    Altura := StrToIntDef(Partes[2], 0);   // "12"
    Rotura := StrToIntDef(Partes[4], 0);   // "1200"
  end;

  if (Altura = 0) or (Rotura = 0) then
    Exit; // datos inválidos

  // --- Valores estándar promedio ---
  // Radio externo promedio (m)
  Rext := 0.16;

  // Espesor según rotura (m)
  if Rotura <= 2000 then
    Espesor := 0.04
  else if Rotura <= 5000 then
    Espesor := 0.05
  else if Rotura <= 8000 then
    Espesor := 0.06
  else
    Espesor := 0.07;

  Rint := Rext - Espesor;

  // Volumen en m³
  VolM3 := Pi * Altura * (Sqr(Rext) - Sqr(Rint));

  // Convertir a litros
  Result := VolM3 * 1000;
end;


procedure TFormStock_2.ABMSeccionesPLUExecute(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormSeccionCategorias)) then
    FormSeccionCategorias:=TFormSeccionCategorias.create(self);
  FormSeccionCategorias.Item:=DatosStock.CDSStockCATEGORIAS_WEB.Value;
  FormSeccionCategorias.ShowModal;
   if FormSeccionCategorias.ModalResult=mrOk then
     begin
       DatosStock.CDSStockCATEGORIAS_WEB.Value:=FormSeccionCategorias.Item;
     end;

end;

procedure TFormStock_2.AgregarExecute(Sender: TObject);
begin
  if ((Trim(DatosStock.CDSStockCODIGO_STK.AsString)<>'') and (MemorizarUltimoIngreso1.Checked)) then
    DatosStock.CDSStock.SaveToFile(ExtractFilePath(ParamStr(0))+'UltimoItem.XML');

  DatosStock.CDSStock.Close;
  DatosStock.CDSStock.Params.ParamByName('Codigo').Clear;
  DatosStock.CDSStock.Open;

  DatosStock.CDSDepositoStk.Close;
  DatosStock.CDSDepositoStk.Params.ParamByName('Codigo').Clear;
  DatosStock.CDSDepositoStk.Open;

  DatosStock.CDSProvStock.Close;
  DatosStock.CDSProvStock.Params.ParamByName('Codigo').Clear;
  DatosStock.CDSProvStock.Open;

  DatosStock.CDSListaHistorial.Close;
  DatosStock.CDSListaHistorial.Params.ParamByName('Codigo').Clear;
  DatosStock.CDSListaHistorial.Open;

  DatosStock.CDSCodigoBarra.Close;
  DatosStock.CDSCodigoBarra.Params.ParamByName('Codigo').Clear;
  DatosStock.CDSCodigoBarra.Open;

  DatosStock.CDSListaArt.Close;
  DatosStock.CDSListaArt.Params.ParamByName('Codigo').Clear;
  DatosStock.CDSListaArt.Open;

  DatosStock.CDSStockFotos.Close;
  DatosStock.CDSStockFotos.Params.ParamByName('Codigo').Clear;
  DatosStock.CDSStockFotos.Open;

  if FormPreciosPorCantidades.Visible then
    FormPreciosPorCantidades.Visible:=False;

  if FileExists(ExtractFilePath(ParamStr(0))+'UltimoItem.XML') then
    DatosStock.CDSDatosXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'ULTIMOITEM.XML');

  inherited;

  AltaListaProveedor    :=False; // esta variable la uso para cuando agrego desde la lista de Proveedores.

  FormCodigosBarra.Visible        := False;
  pcPrincipal.ActivePageIndex     := 0;
  pcDatosArticulo.ActivePageIndex := 0;
  if Not(CodigoAlfa) Then
    dbeDescripcion.SetFocus
  else
    begin
      dbeCodigo.SetFocus;
      dbeCodigo.SelectAll;
    end;
  pnCostos.Enabled:=True;
end;

// ** Rutnas para WoordPress - Web ****************************************

procedure TFormStock_2.AgregarWebVarianteExecute(Sender: TObject);
var
  Body      : String;
  Response  : TWooCommerceResponse;
  IdVariable: Integer;
  Variacion : TJSONObject;
  Precio,
  PrecioOferta: String;
  Categorias  : string;
  AuxCateg    : String;
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  FWooCommerceAPI.Adapter.DataSet := DatosWordPress.mtProducto;
  Response                        := FWooCommerceAPI.Get('/products/?sku='+DSBase.DataSet.FieldByName('CODIGO_ART_VARIABLE').AsString);
  if Response.Status=200 then
    begin
      if not(DatosWordPress.mtProducto.IsEmpty) then
        begin
          IdVariable:= DatosWordPress.mtProducto.FieldByName('id').AsInteger;
          Categorias  := DSBase.DataSet.FieldByName('CATEGORIAS_WEB').Value;
          AuxCateg    := '';
          Precio      := FormatFloat('0', DMMain_FD.GetPrecioLista(DSBase.DataSet.FieldByName('CODIGO_STK').Value,DMMain_FD.GetListaPreciosWoordPress));
          PrecioOferta:= FormatFloat('0', StrToFloat(Precio) * (1-(DMMain_FD.GetBonificacionWoordPress * 0.01)));

          Variacion := TJSONObject.Create;
          try
            Variacion.AddPair('sku',DSBase.DataSet.FieldByName('CODIGO_STK').AsString);
            Variacion.AddPair('regular_price', Precio);
            body:=Variacion.ToString;
            // Enviar la solicitud para crear la variación
            //WooAPI.Post('products/' + idVariable + '/variations', Variacion);
            Response := FWooCommerceAPI.Post('products/' + IntToStr(idVariable) + '/variations', body);
          finally
            Variacion.Free;
          end;

        end;
    end;
end;

procedure TFormStock_2.AgregarWebExecute(Sender: TObject);
var
  Body        : String;
  Response    : TWooCommerceResponse;
  Precio,
  PrecioOferta: String;
  Categorias  : string;
  AuxCateg    : String;
  objS1, objS2: TJSONObject;
  arrStocks   : TJSONArray;

begin
  if (UsaWoordPress1.Checked) and (DatosStock.CDSStockPUBLICAR_WEB.Value='S') and (DatosStock.CDSStockARTICULO_VARIABLE.Value<>'T') then
    begin
      Categorias  := DSBase.DataSet.FieldByName('CATEGORIAS_WEB').Value;
      AuxCateg    := '';
      Precio      := FormatFloat('0', DMMain_FD.GetPrecioLista(DSBase.DataSet.FieldByName('CODIGO_STK').Value,DMMain_FD.GetListaPreciosWoordPress));
      PrecioOferta:= FormatFloat('0', StrToFloat(Precio) * (1-(DMMain_FD.GetBonificacionWoordPress * 0.01)));

      begin
        objS1     := TJSONObject.Create;
        objS2     := TJSONObject.Create;
        arrStocks := TJSONArray.Create;
        try
          objS1.AddPair('sku',               TJSONString.Create(DSBase.DataSet.FieldByName('CODIGO_STK').Value));
          objS1.AddPair('name',              TJSONString.Create(DMMain_FD.CapitalizeAll(DSBase.DataSet.FieldByName('DETALLE_STK_ADICIONAL').Value)));
          if (DSBase.DataSet.FieldByName('ARTICULO_VARIABLE').AsString='N') then
            objS1.AddPair('type',              TJSONString.Create('simple'))
          else
            if (DSBase.DataSet.FieldByName('ARTICULO_VARIABLE').AsString='V') then
              objS1.AddPair('type',              TJSONString.Create('variable'));

          objS1.AddPair('regular_price',     TJSONString.Create(Precio));
          objS1.AddPair('price',             TJSONString.Create(PrecioOferta));
          objS1.AddPair('sale_price',        TJSONString.Create(PrecioOferta));
          objS1.AddPair('regular_price',     TJSONString.Create(Precio));
          objS1.AddPair('description',       TJSONString.Create(DSBase.DataSet.FieldByName('DETALLE_STK').AsString));
          objS1.AddPair('short_description', TJSONString.Create(DSBase.DataSet.FieldByName('DETALLE_STK').AsString));
          objS1.AddPair('stock_quantity',    TJSONString.Create(FormatFLoat('0;-0;0',DMMain_FD.GetStockWeb(DSBase.DataSet.FieldByName('CODIGO_STK').Value))));
          objS1.AddPair('manage_stock',      TJSONBool.Create(True));

          while Categorias<>'' do
            begin
              if Pos(Categorias,',')>0 then
                AuxCateg:=Copy(categorias,1,Pos(Categorias,',')-1)
              else
                AuxCateg:=Categorias;
              objS2.AddPair('id', TJSONNumber.Create(StrToInt(Auxcateg)));
              if Pos(Categorias,',')>0 then
                Delete(Categorias,1,Pos(Categorias,','))
              else
                Categorias:='';
            end;
          arrStocks.Add(objS2);

          objS1.AddPair('categories', arrStocks);

          body:=objS1.ToString;

        finally
          objS1.Free;
        end;
      end;
      Response := FWooCommerceAPI.Post('/products', body);
    end
  else
    begin
      AgregarWebVariante.Execute;
    end;
    //ShowMessage('Articulo No Habililtado para Publicar en la Web...')
end;



procedure TFormStock_2.BorrarWebExecute(Sender: TObject);
var
  Body        : String;
  Response    : TWooCommerceResponse;
  Precio,
  PrecioOferta: String;
  Categorias  : string;
  AuxCateg    : String;
  objS1,objS2 : TJSONObject;
  arrStocks   : TJSONArray;
  Id          : Integer;
begin
  try
    FWooCommerceAPI.Adapter.DataSet := DatosWordPress.mtProducto;
    Response                        := FWooCommerceAPI.Get('/products/?sku='+DSBase.DataSet.FieldByName('codigo_stk').AsString);
    if Response.Status=200 then
      begin
        if not(DatosWordPress.mtProducto.IsEmpty) then
          begin
            Id:= DatosWordPress.mtProducto.FieldByName('id').AsInteger;
            Response := FWooCommerceAPI.Delete('/products/' + IntToStr(Id) + '/?force=true');
            if Response.Status=200 then
              begin
                Modificar.Execute;
                DSBase.DataSet.FieldByName('PUBLICAR_WEB').Value:='N';
                Confirma.Execute;
              end;
          end;
      end;
  finally

  end;
end;


procedure TFormStock_2.ActualizarVariacionPorSKU(const ProductoSKU, VariacionSKU: string;
                                                 const NuevaDescripcion: string;
                                                 const NuevoPrecio: Double; WooAPI: TWooCommerceAPI);
var
  ProductoResponse,
  VariacionResponse : TWooCommerceResponse;
  VariacionObj,
  UpdatePayload     : TJSONObject;
  ProductID, VariationID: Integer;
  ProductoObj, JSonArr, VariacionesArray: TJSONArray;
  I: Integer;
begin
  try
    // Paso 1: Buscar el producto principal directamente por su SKU
    WooAPI.Adapter.DataSet := DatosWordPress.mtProducto;
    ProductoResponse := WooAPI.Get('/products/?sku=' + ProductoSKU);
    if not ProductoResponse.Status=200 then
      raise Exception.Create('Error al buscar el producto padre: ' + ProductoResponse.Content);

    // Obtener el ID del producto padre
    ProductID := DatosWordPress.mtProducto.FieldByName('id').AsInteger;

    // Paso 2: Buscar las variaciones de ese producto
    VariacionResponse := WooAPI.Get('/products/'+IntToStr(ProductID)+'/variations/');
    if not VariacionResponse.status=200 then
      raise Exception.Create('Error al buscar las variaciones: ' + VariacionResponse.Content);

    VariacionesArray := TJSONObject.ParseJSONValue(VariacionResponse.Content) as TJSONArray;
    if VariacionesArray = nil then
      raise Exception.Create('No se encontraron variaciones para el producto padre.');

    // Paso 3: Encontrar la variación por SKU
    VariationID := -1;
    for I := 0 to VariacionesArray.Count - 1 do
    begin
      VariacionObj := VariacionesArray.Items[I] as TJSONObject;
      if SameText(VariacionObj.GetValue<string>('sku'), VariacionSKU) then
      begin
        VariationID := VariacionObj.GetValue<Integer>('id');
        Break;
      end;
    end;

    if VariationID = -1 then
      raise Exception.Create('No se encontró la variación con el SKU proporcionado.');

    // Paso 4: Actualizar la variación con los nuevos datos
    UpdatePayload := TJSONObject.Create;
    try
      UpdatePayload.AddPair('description', NuevaDescripcion);
      UpdatePayload.AddPair('regular_price', FormatFloat('0.00', NuevoPrecio));
      UpdatePayload.AddPair('stock_quantity', FormatFloat('0.00',DMMain_FD.GetStockWeb(DSBase.DataSet.FieldByName('CODIGO_STK').Value)));

      VariacionResponse := WooAPI.Put(Format('/products/%d/variations/%d', [ProductID, VariationID]),UpdatePayload.ToJSON);

      if not VariacionResponse.Status=200 then
        raise Exception.Create('Error al actualizar la variación: ' + VariacionResponse.Content);

  //    ShowMessage('Variación actualizada exitosamente.');
    finally
      UpdatePayload.Free;
    end;

  finally
    // Liberar recursos
 //   if Assigned(ProductoObj) then ProductoObj.Free;
    if Assigned(VariacionesArray) then VariacionesArray.Free;
  end;
end;


procedure TFormStock_2.ModificaWebExecute(Sender: TObject);
var
  Body         : String;
  Response     : TWooCommerceResponse;
  Precio,
  PrecioOferta : String;
  Categorias,AuxCateg: String;
  objProduct, objCategory, objStocks: TJSONObject;
  arrCategories: TJSONArray;
  IDProducto,IDVariant: Integer;
begin
  if (UsaWoordPress1.Checked) and (DatosStock.CDSStockPUBLICAR_WEB.Value = 'S') then
  begin
    try
      FWooCommerceAPI.Adapter.DataSet := DatosWordPress.mtProducto;
      Response := FWooCommerceAPI.Get('/products/?sku=' + DSBase.DataSet.FieldByName('codigo_stk').AsString);

      if Response.Status = 200 then
      begin
        if not(DatosWordPress.mtProducto.IsEmpty) then
          IDProducto := DatosWordPress.mtProducto.FieldByName('id').AsInteger;
      end;

      Precio       := FormatFloat('0.00', DMMain_FD.GetPrecioLista(DSBase.DataSet.FieldByName('CODIGO_STK').Value, DMMain_FD.GetListaPreciosWoordPress));
      PrecioOferta := FormatFloat('0.00', StrToFloat(Precio) * (1 - (DMMain_FD.GetBonificacionWoordPress * 0.01)));

      objProduct   := TJSONObject.Create;

      objProduct.AddPair('name', TJSONString.Create(dmmain_fd.CapitalizeAll(DSBase.DataSet.FieldByName('DETALLE_STK_ADICIONAL').Value)));

      if DSBase.DataSet.FieldByName('ARTICULO_VARIABLE').AsString = 'X' then
        objProduct.AddPair('type', TJSONString.Create('simple'))
      else if DSBase.DataSet.FieldByName('ARTICULO_VARIABLE').AsString = 'V' then
        objProduct.AddPair('type', TJSONString.Create('variable'));
      if DSBase.DataSet.FieldByName('ARTICULO_VARIABLE').AsString = 'T' then
        objProduct.AddPair('type', TJSONString.Create('variation'));


      objProduct.AddPair('description', TJSONString.Create(DSBase.DataSet.FieldByName('DETALLE_STK').AsString));
      objProduct.AddPair('short_description', TJSONString.Create(DSBase.DataSet.FieldByName('DETALLE_STK').AsString));
      objProduct.AddPair('price', TJSONString.Create(PrecioOferta));
      objProduct.AddPair('sale_price', TJSONString.Create(PrecioOferta));
      objProduct.AddPair('regular_price', TJSONString.Create(Precio));
      objProduct.AddPair('stock_quantity', TJSONString.Create(FormatFloat('0.00', DMMain_FD.GetStockWeb(DSBase.DataSet.FieldByName('CODIGO_STK').Value))));
      objProduct.AddPair('manage_stock', TJSONBool.Create(True));

      // Construir array de categorías

      Categorias := DSBase.DataSet.FieldByName('CATEGORIAS_WEB').AsString;
      if Categorias<>'' then
        begin
          arrCategories := TJSONArray.Create;

          while Categorias <> '' do
            begin
              if Pos(',', Categorias) > 0 then
                begin
                  AuxCateg := Copy(Categorias, 1, Pos(',', Categorias) - 1);
                  Delete(Categorias, 1, Pos(',', Categorias));
                end
              else
                begin
                  AuxCateg   := Categorias;
                  Categorias := '';
                end;

              objCategory := TJSONObject.Create;
              objCategory.AddPair('id', TJSONNumber.Create(StrToIntDef(AuxCateg, 0)));
              arrCategories.Add(objCategory);
              objProduct.AddPair('categories', arrCategories);
            end;
        end;

    //  objProduct.AddPair('categories', arrCategories);

      Body := objProduct.ToString;

    finally
      if arrCategories<>nil then
        arrCategories.Free
      else
        objCategory.Free;

    end;
    if (DSBase.DataSet.FieldByName('ARTICULO_VARIABLE').AsString='N') or (DSBase.DataSet.FieldByName('ARTICULO_VARIABLE').AsString='V') then
      Response := FWooCommerceAPI.Put('/products/' + IntToStr(IDProducto), Body);
  end
    else
      showMessage('Articulo no publicable en la web....');

  // Articulo Variable en Wen
//  if (DSBase.DataSet.FieldByName('ARTICULO_VARIABLE').Value='S') then
  if (DSBase.DataSet.FieldByName('ARTICULO_VARIABLE').AsString='T') then
    begin
     ActualizarVariacionPorSKU(
        DSBase.DataSet.FieldByName('CODIGO_ART_VARIABLE').AsString,             // SKU del producto padre
        DSBase.DataSet.FieldByName('CODIGO_STK').AsString,             // SKU de la variación a actualizar
        DSBase.DataSet.FieldByName('DETALLE_STK').AsString,    // Nueva descripción para la variación
        StrToFloat(PrecioOferta),                 // Nuevo precio para la variación
        FWooCommerceAPI                  // Objeto de la API
      );
   end;

end;

/////////////////////////////////////////////////////////////////////////////////////////




procedure TFormStock_2.CambiarCodigoExecute(Sender: TObject);
begin
 inherited;
 if (DMMain_FD.UsuarioAdministrador=True) Then
   begin
     if ((DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty))) then
       begin
         if Not(Assigned(FormCambioCodigoStock)) then
           FormCambioCodigoStock :=TFormCambioCodigoStock.Create(Self);
         FormCambioCodigoStock.CodigoNew := DatosStock.CDSStockCODIGO_STK.Value;
         FormCambioCodigoStock.CodigoOld := DatosStock.CDSStockCODIGO_STK.Value;
         FormCambioCodigoStock.Detalle   := DatosStock.CDSStockDETALLE_STK.Value;
         FormCambioCodigoStock.ShowModal;
         if (FormCambioCodigoStock.ModalResult=mrOk) and (FormCambioCodigoStock.Modificado)  then
           begin
             DatoNew  := FormCambioCodigoStock.CodigoNew;
             Recuperar.Execute;
             if TipoBaseDatos=1 Then
               ReamarMovi_OfLog.Execute;
           end;
       end;
   end
 else
   ShowMessage('No esta autorizado para esta accion, solo administrador...');  
end;

procedure TFormStock_2.CancelarExecute(Sender: TObject);
begin
  DatosStock.CDSStock.Cancel;
  datosStock.CDSDepositoStk.Cancel;
  if FormPreciosPorCantidades.Visible then
    FormPreciosPorCantidades.Visible:=False;
  inherited;
  FormCodigosBarra.Visible:=False;
  DatosStock.CDSStock.Close;
  DatosStock.CDSStock.Params.ParamByName('Codigo').Clear;
  DatosStock.CDSStock.Open;

  DatosStock.CDSDepositoStk.Close;
  DatosStock.CDSDepositoStk.Params.ParamByName('Codigo').Clear;
  DatosStock.CDSDepositoStk.Open;

  DatosStock.CDSProvStock.Close;
  DatosStock.CDSProvStock.Params.ParamByName('Codigo').Clear;
  DatosStock.CDSProvStock.Open;

  DatosStock.CDSListaHistorial.Close;
  DatosStock.CDSListaHistorial.Params.ParamByName('Codigo').Clear;
  DatosStock.CDSListaHistorial.Open;

  DatosStock.CDSListaArt.Close;
  DatosStock.CDSListaArt.Params.ParamByName('Codigo').Clear;
  DatosStock.CDSListaArt.Open;

  DatosStock.CDSStockFotos.Close;
  DatosStock.CDSStockFotos.Params.ParamByName('Codigo').Clear;
  DatosStock.CDSStockFotos.Open;


  pcPrincipal.ActivePageIndex     :=0;
  pcDatosArticulo.ActivePageIndex :=0;
  if (btNuevo.Enabled) and (btNuevo.Visible) then btNuevo.SetFocus;
  ModalResult   :=  mrCancel;
end;

procedure TFormStock_2.CodigoEANEnter(Sender: TObject);
begin
  inherited;
  CodigoEAN.SelectAll;
  CodigoEAN.Clear;

end;

procedure TFormStock_2.CodigoEANKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var Aux:String;
begin
  if DSBase.State=dsBrowse then
    begin
      if (Key=VK_RETURN) then
        begin
          DMMain_FD.CDSCodigoBarra.Close;
          DMMain_FD.CDSCodigoBarra.Params.ParamByName('CodigoBarra').AsString:=Trim(CodigoEAN.text);
          DMMain_FD.CDSCodigoBarra.Open;
          If DMMain_FD.CDSCodigoBarra.Fields[0].AsString='' Then
            begin
              DMMain_FD.CDSCodigoBarra.Close;
              DMMain_FD.CDSCodigoBarra.Params.ParamByName('CodigoBarra').AsString:=Copy(CodigoEAN.text,1,length(Trim(CodigoEAN.text))-1);
              DMMain_FD.CDSCodigoBarra.Open;
            end;

          If DMMain_FD.CDSCodigoBarra.Fields[0].AsString='' Then
            begin
              DMBuscadores.QConsultaCodigoSerie.Close;
              DMBuscadores.QConsultaCodigoSerie.ParamByName('CodigoSerie').AsString:=Trim(CodigoEAN.Text);
              DMBuscadores.QConsultaCodigoSerie.Open;
              If DMBuscadores.QConsultaCodigoSerieCODIGO_STK.AsString='' Then
                begin
                  Aux:=DMBuscadores.QConsultaCodigoSerieCODIGO_STK.AsString;
                  DMMain_FD.EncontroCodigoBarra:=False;
                end
              else
                begin
                  Aux:=DMBuscadores.QConsultaCodigoSerieCODIGO_STK.AsString;
                  DMMain_FD.EncontroCodigoBarra:=True;
                end;
              DMBuscadores.QConsultaCodigoSerie.Close;
            end

          else
            begin
              if DMMain_FD.CDSCodigoBarra.RecordCount>1 Then
                begin
                  if Not(Assigned(FormMuestraListaCodigoBarra)) Then
                    FormMuestraListaCodigoBarra:=TFormMuestraListaCodigoBarra.Create(Self);
                  FormMuestraListaCodigoBarra.CodigoBarra:=UpperCase(CodigoEAN.text);
                  FormMuestraListaCodigoBarra.ShowModal;
                  Aux:=FormMuestraListaCodigoBarra.Codigo;
                end
              else
                begin
                  Aux:=DMMain_FD.CDSCodigoBarra.Fields[0].AsString;
                  DMMain_FD.EncontroCodigoBarra:=True;
                end;
            end;

          DMMain_FD.CDSCodigoBarra.Close;
          DatoNew :=Aux;
          Recuperar.Execute;
          CodigoEAN.SetFocus;
          CodigoEAN.SelectAll;
        end
      else
        if (Key=VK_Escape) then
          begin
            btNuevo.SetFocus;
          end;
    end;
end;


procedure TFormStock_2.ConfirmaExecute(Sender: TObject);
Var Leyenda:String;
Modo:String;
begin
  if (chbPerciveIVA.Checked) and (DSBase.Dataset.FieldByName('ID_TASA_PERCEP_IVA').Value<=0) then
    raise Exception.Create('Si el Articulo Percibe IVA Indicar TASA....');

  if DSBase.Dataset.State=dsEdit then Modo:='E'
    else
  if DSBase.Dataset.State=dsInsert then Modo:='I';

  if DSBase.Dataset.State=dsEdit then
    begin
      if DatosStock.CDSStockPRESENTACION_CANTIDAD.OldValue<>DatosStock.CDSStockPRESENTACION_CANTIDAD.NewValue then
        DMMain_FD.LogFileFD(0,2,'Modificacion Cantidad Presentacio Antes :'+FormatFloat(',0.00',DatosStock.CDSStockPRESENTACION_CANTIDAD.OldValue)+
                                '>> Nuevo :'+formatFloat(',0.00',DatosStock.CDSStockPRESENTACION_CANTIDAD.NewValue),'STOCK')
      else
        if DatosStock.CDSStockCONTENIDO_COMPRA.OldValue<>DatosStock.CDSStockCONTENIDO_COMPRA.NewValue then
          DMMain_FD.LogFileFD(0,2,'Modificacion Contenido Compra Antes :'+FormatFloat(',0.00',DatosStock.CDSStockCONTENIDO_COMPRA.OldValue)+
                                  '>> Nuevo :'+formatFloat(',0.00',DatosStock.CDSStockCONTENIDO_COMPRA.NewValue),'STOCK')
        else
          if DatosStock.CDSStockPLU.OldValue<>DatosStock.CDSStockPLU.NewValue then
            if (Not(VarIsNull(DatosStock.CDSStockPLU.OldValue)) and  Not(VarIsNull(DatosStock.CDSStockPLU.NewValue))) then
              DMMain_FD.LogFileFD(0,2,'Modificacion PLU Antes :'+DatosStock.CDSStockPLU.OldValue+
                                      '>> Nuevo :'+ DatosStock.CDSStockPLU.NewValue,'STOCK')
          else
            if (VarIsNull(DatosStock.CDSStockPLU.OldValue)) and Not(VarIsNull(DatosStock.CDSStockPLU.NewValue)) then
              DMMain_FD.LogFileFD(0,2,'Modificacion PLU Antes :'+' (Vacio) '+
                                      '>> Nuevo :'+ DatosStock.CDSStockPLU.NewValue,'STOCK')
            else
              if (Not(VarIsNull(DatosStock.CDSStockPLU.OldValue))) and (VarIsNull(DatosStock.CDSStockPLU.NewValue)) then
                DMMain_FD.LogFileFD(0,2,'Modificacion PLU Antes :'+DatosStock.CDSStockPLU.OldValue+
                                        '>> Nuevo :'+ ' Vacio' ,'STOCK')
        else
          if DatosStock.CDSStockDETALLE_STK.OldValue<>DatosStock.CDSStockDETALLE_STK.NewValue then
            DMMain_FD.LogFileFD(0,2,'Modificacion Detalle Antes :'+DatosStock.CDSStockDETALLE_STK.OldValue+
                                    '>> Nuevo :'+DatosStock.CDSStockDETALLE_STK.NewValue,'STOCK')
        else
          if DatosStock.CDSStockTASA_IVA.OldValue<>DatosStock.CDSStockTASA_IVA.NewValue then
            DMMain_FD.LogFileFD(0,2,'Modificacion Cod.Tasa de IVA :'+IntToStr(DatosStock.CDSStockTASA_IVA.OldValue)+
                                    '>> Nuevo :'+IntToStr(DatosStock.CDSStockTASA_IVA.NewValue),'STOCK')
          else
            if DatosStock.CDSStockGRAVADO_IB.OldValue<>DatosStock.CDSStockGRAVADO_IB.NewValue then
              DMMain_FD.LogFileFD(0,2,'Modificacion Modo Grabado IIBB :'+IntToStr(DatosStock.CDSStockGRAVADO_IB.OldValue)+
                                      '>> Nuevo :'+IntToStr(DatosStock.CDSStockGRAVADO_IB.NewValue),'STOCK')
            else
              if DatosStock.CDSStockCLASE_ARTICULO.OldValue<>DatosStock.CDSStockCLASE_ARTICULO.NewValue then
                DMMain_FD.LogFileFD(0,2,'Modificacion Clase Articulo (Cod) :'+VarToStr( DatosStock.CDSStockCLASE_ARTICULO.OldValue)+
                                        '>> Nuevo :'+VarToStr(DatosStock.CDSStockCLASE_ARTICULO.NewValue),'STOCK')
              else
                if DatosStock.CDSStockCONTROLASTOCK.OldValue<>DatosStock.CDSStockCONTROLASTOCK.NewValue then
                  DMMain_FD.LogFileFD(0,2,'Modificacion Modo Control Stock :'+DatosStock.CDSStockCONTROLASTOCK.OldValue+
                                         '>> Nuevo :'+DatosStock.CDSStockCONTROLASTOCK.NewValue,'STOCK')
                else
                  if DatosStock.CDSStockDEPRODUCCION.OldValue<>DatosStock.CDSStockDEPRODUCCION.NewValue then
                    DMMain_FD.LogFileFD(0,2,'Modificacion Modo Produccion :'+DatosStock.CDSStockDEPRODUCCION.OldValue+
                                            '>> Nuevo :'+DatosStock.CDSStockDEPRODUCCION.NewValue,'STOCK')
                  else
                    if DatosStock.CDSStockMONEDA.OldValue<>DatosStock.CDSStockMONEDA.NewValue then
                      DMMain_FD.LogFileFD(0,2,'Modificacion Moneda de Stock antes Cod.:'+IntToStr(DatosStock.CDSStockMONEDA.OldValue)+
                                              '>> Nuevo :'+IntToStr(DatosStock.CDSStockMONEDA.NewValue),'STOCK')
                    else
                      DMMain_FD.LogFileFD(0,2,'Modificacion en Stock No Identificada','STOCK');

    end;

  if (DSBase.DataSet.FieldByName('PUBLICAR_WEB').AsString='S') and  (DSBase.DataSet.FieldByName('ARTICULO_VARIABLE').AsString='T') and
     (Trim(DSBase.DataSet.FieldByName('CODIGO_ART_VARIABLE').AsString)='') then
     raise Exception.Create('Articulo Variante debe indicar el articulo variable....');




  if FormPreciosPorCantidades.Visible then
    FormPreciosPorCantidades.Visible:=False;

  if (DatosStock.CDSStockFIJACION_PRECIO_TOTAL.OldValue<>DatosStock.CDSStockFIJACION_PRECIO_TOTAL.NewValue) or
     (DatosStock.CDSStockCOSTO_TOTAL_STK.OldValue<>DatosStock.CDSStockCOSTO_TOTAL_STK.NewValue) Then
     DatosStock.CDSStockFUAP.AsDateTime:=Date;

  if DatosStock.CDSStockCLASE_ARTICULO.Value in [0,1] then
    begin
      DatosStock.CDSStockRUBRO_GASTO.Value    :='***';
      DatosStock.CDSStockRUBRO_CTA_GASTO.Value:='******';
    end;
  if DatosStock.CDSStockPRESENTACION_CANTIDAD.AsString='' then
    DatosStock.CDSStockPRESENTACION_CANTIDAD.AsFloat:=1;

  if DatosStock.CDSStockREEMPLAZO_STK.AsString='' then
    DatosStock.CDSStockREEMPLAZO_STK.Value:=DatosStock.CDSStockCODIGO_STK.Value;
  if (DatosStock.CDSStockFECHA_ALTA.AsString='') and (DSBase.DataSet.State=dsInsert) Then
    DatosStock.CDSStockFECHA_ALTA.AsDateTime:=Date;
  if (DatosStock.CDSStockGRAVADO_IB.AsString[1]='S') and
     (DatosStock.CDSStockTASA_IB.Value=-1) Then
    raise Exception.Create('Falta indicar la Tasa de Ingresos Brutos');
  if  (dbeRubro.Text='') Then
    raise Exception.Create('Falta indicar Rubro');
  if (RxDBCSubRubro.Text='') or (dbeSubRubro.Text='') Then
    raise Exception.Create('Falta indicar SubRubro');
  if (DatosStock.CDSStockMONEDA.IsNull) or (DatosStock.CDSStockMONEDA.AsInteger<0)  then
    raise Exception.Create('Falta indicar Moneda');

  if (DatosStock.CDSStockMODO_GRAVAMEN.IsNull) or (trim(DatosStock.CDSStockMODO_GRAVAMEN.AsString)='') then
    RAISE Exception.Create('Falta Indicar modo de Gravamen');
  if Trim(DatosStock.CDSStockDETALLE_CORTO.AsString)='' then
    DatosStock.CDSStockDETALLE_CORTO.Value:=Copy(Trim(DatosStock.CDSStockDETALLE_STK.Value),1,18);
  if (DatosStock.CDSStockDETALLE_STK_ADICIONAL.Value='') then
    DatosStock.CDSStockDETALLE_STK_ADICIONAL.Value:=DatosStock.CDSStockDETALLE_STK.Value;
  if (not DatosStock.CDSStockTASA_IVA.IsNull) and (DatosStock.CDSStockTASA_IVA.Asinteger>-1) Then
    if (not DatosStock.CDSStockSOBRETASA_IVA.IsNull) and (DatosStock.CDSStockSOBRETASA_IVA.AsInteger>-1) Then
      begin
        if DatosStock.CDSStockMODO_GRAVAMEN.Value='G' Then
          begin
            if (DatosStock.CDSStockCOSTO_EXENTO_STK.AsFloat<>0) or (DatosStock.CDSStockFIJACION_PRECIO_EXENTO.AsFloat<>0) Then
                RAISE Exception.Create('Si el artículo es gravado, no puede tener costo exento)');
            if Moneda3D(' ','0.0',dbcTasa.ListSource.DataSet.FieldByName('Tasa').Value)=0 Then
                RAISE Exception.Create('La Tasa de Iva esta en Valor 0(cero)');
            if Moneda3D(' ','0.0',dbcSobreTasa.ListSource.DataSet.FieldByName('Tasa').Value)=0 Then
                RAISE Exception.Create('La Sobre Tasa de Iva esta en Valor 0(cero)');
          end
        else
          if (DatosStock.CDSStockMODO_GRAVAMEN.Value='E') or ( DatosStock.CDSStockMODO_GRAVAMEN.Value='N') Then
            begin
              if (DatosStock.CDSStockCOSTO_GRAVADO_STK.AsFloat<>0) or (DatosStock.CDSStockFIJACION_PRECIO_GRAVADO.AsFloat<>0) Then
                RAISE Exception.Create('Si el artículo es Exento, no puede tener costo Gravado)');
              if Moneda3D(' ','0.0',dbcTasa.ListSource.DataSet.FieldByName('Tasa').Value)<>0 Then
                  RAISE Exception.Create('Poner en La Tasa de Iva en Valor 0(cero) -- Exento -- ');
              if Moneda3D(' ','0.0',dbcSobreTasa.ListSource.DataSet.FieldByName('Tasa').Value)<>0 Then
                  RAISE Exception.Create('Poner en La Sobre Tasa de Iva en Valor 0(cero) -- Exento -- ');
            end;

        DatoNew:=DatosStock.CDSStockCODIGO_STK.Value;

        //  ************ si es un reg. nuevo **********************
        if (DSBase.State in [dsInsert]) Then
          begin
            DatosStock.CDSListaDepositos.Close;
            DatosStock.CDSListaDepositos.Open;
            DatosStock.CDSListaDepositos.First;
            if (DatosStock.CDSDepositoStk.RecordCount=0) Then
              begin
                 while not(DatosStock.CDSListaDepositos.Eof) do
                  begin
                    DatosStock.CDSDepositoStk.Insert;
                    DatosStock.CDSDepositoStkCODIGO_DEPOSITOSetText(DatosStock.CDSDepositoStkCODIGO_DEPOSITO,DatosStock.CDSListaDepositosID.AsString);
                    DatosStock.CDSListaDepositos.Next;
                  end;
              end;
            DatosStock.CDSListaDepositos.Close;
          end;

        //  ************ si es un reg. Existente **********************
        if (DSBase.State in [dsEdit]) and (DatosStock.CDSDepositoStk.IsEmpty) Then
          begin
            DatosStock.CDSListaDepositos.Close;
            DatosStock.CDSListaDepositos.Open;
            DatosStock.CDSListaDepositos.First;
            if (DatosStock.CDSDepositoStk.RecordCount=0) Then
              begin
                 while not(DatosStock.CDSListaDepositos.Eof) do
                  begin
                    DatosStock.CDSDepositoStk.Insert;
                    DatosStock.CDSDepositoStkCODIGO_DEPOSITOSetText(DatosStock.CDSDepositoStkCODIGO_DEPOSITO,DatosStock.CDSListaDepositosID.AsString);
                    DatosStock.CDSListaDepositos.Next;
                  end;
              end;
            DatosStock.CDSListaDepositos.Close;
          end;

        if (DSBase.DataSet.State=dsEdit) and (dbrgClaseArticulo.ItemIndex=5) then
          begin
            DMBuscadores.CDSBuscaArtRtosPendientes.Close;
            DMBuscadores.CDSBuscaArtRtosPendientes.Params.ParamByName('codigo').AsString:=DatosStock.CDSStockCODIGO_STK.AsString;
            DMBuscadores.CDSBuscaArtRtosPendientes.Open;
            if Not(DMBuscadores.CDSBuscaArtRtosPendientes.IsEmpty) then
              begin
                ShowMessage('Articulo usado en Rtos que aun estan en condicion de facturacion, no se puede inactivar...');

                if Not(Assigned(FormArticulosUsadosRtos)) then
                  FormArticulosUsadosRtos:=TFormArticulosUsadosRtos.Create(Self);
                FormArticulosUsadosRtos.DSArticulos.DataSet:=DMBuscadores.CDSBuscaArtRtosPendientes;
                FormArticulosUsadosRtos.ShowModal;

                DMBuscadores.CDSBuscaArtRtosPendientes.Close;
                Cancelar.Execute;
              end;
          end;

         //  ********************************************************
        if DatosStock.CDSCodigoBarra.State<>dsBrowse Then
          DatosStock.CDSCodigoBarra.Post;

        if DatosStock.CDSStock.state<>dsBrowse Then
          DatosStock.CDSStock.Post;

        if Not(VarIsNull(DatosStock.CDSStockFIJACION_PRECIO_TOTAL.OldValue)) and
                ( (DatosStock.CDSStockFIJACION_PRECIO_TOTAL.OldValue<>DatosStock.CDSStockFIJACION_PRECIO_TOTAL.NewValue) or
                  (DatosStock.CDSStockCOSTO_TOTAL_STK.OldValue<>DatosStock.CDSStockCOSTO_TOTAL_STK.NewValue)) Then
          begin

            if Not(Assigned(FormAvisoCambioPrecio)) Then
              FormAvisoCambioPrecio:=TFormAvisoCambioPrecio.Create(Application);
            FormAvisoCambioPrecio.ShowModal;
            if FormAvisoCambioPrecio.ModalResult = mrcancel Then
              begin
                DatosStock.CDSStock.edit;
                RAISE Exception.Create('Se cancela todas las modificaciones... ');
              end;

            DMMain_FD.fdcGestion.StartTransaction;
            try
              DMMain_FD.LogFileFD(0,2,'Modificacion de Costo F.p.. Antes(FP) :'+FormatFloat(',0.00',DatosStock.CDSStockFIJACION_PRECIO_TOTAL.OldValue)+
                                      'Nuevo (FP):'+formatFloat(',0.00',DatosStock.CDSStockFIJACION_PRECIO_TOTAL.NewValue)+
                                      'Modificacion de Costo C.. Antes(CS) :'+FormatFloat(',0.00',DatosStock.CDSStockCOSTO_TOTAL_STK.OldValue)+
                                      'Nuevo (CS):'+formatFloat(',0.00',DatosStock.CDSStockCOSTO_TOTAL_STK.NewValue),'STOCK');

              DatosStock.spCambioPrecioFD.Close;
              DatosStock.spCambioPrecioFD.ParamByName('codigo').AsString           :=DatosStock.CDSStockCODIGO_STK.Value;
              DatosStock.spCambioPrecioFD.ParamByName('costo_old').AsFloat         :=DatosStock.CDSStockCOSTO_TOTAL_STK.OldValue;
              DatosStock.spCambioPrecioFD.ParamByName('costo_old_gravado').AsFloat :=DatosStock.CDSStockCOSTO_GRAVADO_STK.OldValue;
              DatosStock.spCambioPrecioFD.ParamByName('costo_old_exento').AsFloat  :=DatosStock.CDSStockCOSTO_EXENTO_STK.OldValue;

              DatosStock.spCambioPrecioFD.ParamByName('costo_new').AsFloat         :=DatosStock.CDSStockCOSTO_TOTAL_STK.AsFloat;
              DatosStock.spCambioPrecioFD.ParamByName('costo_new_gravado').AsFloat :=DatosStock.CDSStockCOSTO_GRAVADO_STK.AsFLoat;
              DatosStock.spCambioPrecioFD.ParamByName('costo_new_exento').AsFloat  :=DatosStock.CDSStockCOSTO_EXENTO_STK.AsFloat;

              DatosStock.spCambioPrecioFD.ParamByName('fprecio_old').AsFloat        :=DatosStock.CDSStockFIJACION_PRECIO_TOTAL.OldValue;
              DatosStock.spCambioPrecioFD.ParamByName('fprecio_old_gravado').AsFloat:=DatosStock.CDSStockFIJACION_PRECIO_GRAVADO.OldValue;
              DatosStock.spCambioPrecioFD.ParamByName('fprecio_old_exento').AsFloat :=DatosStock.CDSStockFIJACION_PRECIO_EXENTO.OldValue;

              DatosStock.spCambioPrecioFD.ParamByName('fprecio_new').AsFloat        :=DatosStock.CDSStockFIJACION_PRECIO_TOTAL.AsFloat;
              DatosStock.spCambioPrecioFD.ParamByName('fprecio_new_gravado').AsFloat:=DatosStock.CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
              DatosStock.spCambioPrecioFD.ParamByName('fprecio_new_exento').AsFloat :=DatosStock.CDSStockFIJACION_PRECIO_EXENTO.AsFloat;

              DatosStock.spCambioPrecioFD.ParamByName('usuario').AsString           :=DMMain_FD.UsuarioActivo;
              DatosStock.spCambioPrecioFD.ParamByName('fecha').AsDateTime           :=Date+Time;
              DatosStock.spCambioPrecioFD.ParamByName('motivo').AsString            :=FormAvisoCambioPrecio.Texto;

              DatosStock.spCambioPrecioFD.ParamByName('id_cambio_precio').AsInteger :=-1;
              DatosStock.spCambioPrecioFD.ParamByName('id_fc_compra').Clear;

              DatosStock.spCambioPrecioFD.ExecProc;
              DatosStock.spCambioPrecioFD.Close;

              DMMain_FD.fdcGestion.Commit;

            except
              DMMain_FD.fdcGestion.Rollback;
            end;
          end;

        inherited;
        Recuperar.Execute;

        if (AltaListaProveedor) and (Not(DSBase.DataSet.IsEmpty)) then  // Alta de Lista Proveedor biene Falsa dentro de la Alta de Stock
          begin
            DMMain_FD.fdcGestion.StartTransaction;
            try
              DatosStock.spAsociarListaProveedorFD.Close;
              DatosStock.spAsociarListaProveedorFD.ParamByName('CODIGO').Value            := DatosStock.CDSStockCODIGO_STK.Value;
              DatosStock.spAsociarListaProveedorFD.ParamByName('CODArtProveedor').Value   := CodigoArtProveedor;
              DatosStock.spAsociarListaProveedorFD.ParamByName('CODProveedor').Value      := CodigoProveedor;
              DatosStock.spAsociarListaProveedorFD.ExecProc;
              DatosStock.spAsociarListaProveedorFD.Close;
              Recuperar.Execute;
              DMMain_FD.fdcGestion.Commit;
            except
              DMMain_FD.fdcGestion.Rollback;
              ShowMessage('NO se Linkeo con la Lista del Proveedor....!');
            end;
          end;
        if (DatosStock.CDSStockCONTROLASTOCK.Value='S') and (DatosStock.CDSStockUSA_CODIGOBARRA.Value='S' ) and (GeneraCodigoBarra='S') then
          begin
            DMMain_FD.fdcGestion.StartTransaction;
            try
              DatosStock.spAltaCBFD.Close;
              DatosStock.spAltaCBFD.ParamByName('CODIGO').Value               := DatosStock.CDSStockCODIGO_STK.Value;
              DatosStock.spAltaCBFD.ParamByName('CODIGOBARRA').Value          := '1'+DatosStock.CDSStockCODIGO_STK.Value;
              DatosStock.spAltaCBFD.ParamByName('CANTIDAD_POR_BULTO').AsFloat := 1;
              DatosStock.spAltaCBFD.ExecProc;
              DatosStock.spAltaCBFD.Close;
              Recuperar.Execute;
              DMMain_FD.fdcGestion.Commit;
            except
              DMMain_FD.fdcGestion.Rollback;
              ShowMessage('NO se ingreso Codigo de Barra automático....!');
            end;
          end;
        FormCodigosBarra.Visible:=False;

        IF btNuevo.Enabled = True THEN
          btNuevo.SetFocus;

        // Usa en la Web............
        if (DSBase.DataSet.FieldByName('PUBLICAR_WEB').AsString='S') Then
          begin
            if UsaWoordPress1.Checked then
              begin
                if (Modo='I') then
                  begin
                    if MessageDlg('Ingresa en la Web...?',mtConfirmation,[mbyes,mbno],0,mbNo)=mrYes then
                      AgregarWeb.Execute;
                  end
                else
                  if (Modo='E') then
                    begin
                      if MessageDlg('Modifica en la Web...?',TMsgDlgType.mtConfirmation,[mbYes,mbNo],0,mbNo)=mrYes then
                        ModificaWeb.Execute;
                    end;
              end;
          end;
      end
    else
      ShowMessage('Faltan indicar las Sobre Tasas de IVA....')
  else
    ShowMessage('Faltan indicar las Tasas de IVA....');

  ModalResult :=  mrOk;
end;

procedure TFormStock_2.ConsultaWPExecute(Sender: TObject);
var
  Response: TWooCommerceResponse;
begin
  inherited;
  //FWooCommerceAPI                       := TWooCommerceAPI.Create('https://'+DMMain_FD.URlWoordPress, DMMain_FD.UsuarioWoordPress, DMMain_fd.ClaveUsuarioWoordPress);
  if DMMain_FD.URlWoordPress<>'' then
    begin
      case pcWordPress.ActivePageIndex of
        1:begin
            dbgProductos.PageMode           := True;
            FWooCommerceAPI.Adapter.DataSet := DatosWordPress.mtProductos;
            Response                        := FWooCommerceAPI.Get('/products'+PagesQuery);
            upPaginas.Max                   := Response.TotalPages;
            spItemsPag.Value                := Response.Total;
            dbgProductos.AutoSize           := True;
            dbgProductos.PageMode           := False;
            dbgProductos.SortSettings.Show  := True;
           // dbgProductos.SaveVirtCells := false;
            // dbgProductos.SaveWithRTF:= True;
          end;
        2:begin
           dbgCategorias.PageMode:=True;
           FWooCommerceAPI.Adapter.DataSet := DatosWordPress.mtCategorias;
           Response                        := FWooCommerceAPI.Get('/products/categories'+PagesQuery);
           upPaginas.Max                   := Response.TotalPages;
           spItemsPag.Value                := Response.Total;
           dbgCategorias.AutoSize          := True;
           dbgCategorias.PageMode          := False;
           dbgCategorias.SortSettings.Show := True;
          end;

      end;
    end;
  lbPaginas.Caption               := Response.TotalPages.ToString;
 // FWooCommerceAPI.Free;
end;

procedure TFormStock_2.cxGridLotesDBTableView2DblClick(Sender: TObject);
begin
  inherited;
  if DatosStock.CDSMovLoteTIPO.Value='I' then
    begin
      if DatosStock.CDSMovLoteTIPO_COMPROBANTE.Value='FC' then
        begin
          if Not( Assigned(FormCompra_2)) then
            FormCompra_2:=TFormCompra_2.Create(Self);
          FormCompra_2.DatoNew   := DatosStock.CDSMovLoteID_COMPROBANTE.AsString;
          FormCompra_2.TipoCpbte := DatosStock.CDSMovLoteTIPO_COMPROBANTE.AsString;
          FormCompra_2.Recuperar.Execute;
          FormCompra_2.Show;
        end
      else
        if DatosStock.CDSMovLoteTIPO_COMPROBANTE.Value='RM' then
          begin
            if Not( Assigned(FormRecepcionMercaderia)) then
              FormRecepcionMercaderia:=TFormRecepcionMercaderia.Create(Self);
            FormRecepcionMercaderia.DatoNew   := DatosStock.CDSMovLoteID_COMPROBANTE.AsString;
            FormRecepcionMercaderia.TipoCpbte := DatosStock.CDSMovLoteTIPO_COMPROBANTE.AsString;
            FormRecepcionMercaderia.Recuperar.Execute;
            FormRecepcionMercaderia.Show;
          end
      else
        if DatosStock.CDSMovLoteTIPO_COMPROBANTE.Value='AS' then
          begin
            if Not( Assigned(FormAjustesSeries)) then
              FormAjustesStock:=TFormAjustesStock.Create(Self);
            FormAjustesStock.DatoNew   := DatosStock.CDSMovLoteID_COMPROBANTE.AsString;
            FormAjustesStock.TipoCpbte := DatosStock.CDSMovLoteTIPO_COMPROBANTE.AsString;
            FormAjustesStock.Recuperar.Execute;
            FormAjustesStock.Show;
          end;

    end
  else
    if DatosStock.CDSMovLoteTIPO.Value='E' then
      begin
        if DatosStock.CDSMovLoteTIPO_COMPROBANTE.Value='FC' then
          begin
            if Not( Assigned(FormCpbte_2)) then
              FormCpbte_2:=TFormCpbte_2.Create(Self);
            FormCpbte_2.DatoNew   := DatosStock.CDSMovLoteID_COMPROBANTE.AsString;
            FormCpbte_2.TipoCpbte := DatosStock.CDSMovLoteTIPO_COMPROBANTE.AsString;
            FormCpbte_2.Recuperar.Execute;
            FormCpbte_2.Show;
          end;
      end;
end;

procedure TFormStock_2.DatosAdicionales1Click(Sender: TObject);
begin
  inherited;
  DatosAdicionales1.Checked := Not(DatosAdicionales1.Checked);
  Adicionales.TabVisible    := DatosAdicionales1.Checked;
end;

procedure TFormStock_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  pcPrincipal.ActivePageIndex     := 0;
  pcDatosArticulo.ActivePageIndex := 0;

  if FormPreciosPorCantidades.Visible then
    FormPreciosPorCantidades.Visible :=False;

  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);

  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos := TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.cbCampos.ItemIndex := 1;
  FormBuscadorArticulos.Param1      := -1;
  FormBuscadorArticulos.Param2      := -1;
  FormBuscadorArticulos.Esquema     := -1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    BEGIN
      DatoNew:=FormBuscadorArticulos.Codigo;
      Recuperar.Execute;
         {
          FWooCommerceAPI                 := TWooCommerceAPI.Create('https://'+DMMain_FD.URlWoordPress, DMMain_FD.UsuarioWoordPress, DMMain_FD.ClaveUsuarioWoordPress);
          FWooCommerceAPI.Adapter.DataSet := DatosWordPress.mtProducto;
          Response                        := FWooCommerceAPI.Get('/products/?sku='+DatosStock.CDSStockCODIGO_STK.Value);
          if Response.Status=200 then
            begin
              edID_wp.Text          :=datoswordpress.mtProducto.FieldByName('id').AsString;
              edSku_wp.Text         :=datoswordpress.mtProducto.FieldByName('sku').AsString;
              edNombre_wp.Text      :=datoswordpress.mtProducto.FieldByName('name').AsString;
              edShortDesc_wp.Text   :=datoswordpress.mtProducto.FieldByName('short_description').AsString;
              edLongDesc_wp.Text    :=datoswordpress.mtProducto.FieldByName('description').AsString;
              edUrl_wp.Text         :=datoswordpress.mtProducto.FieldByName('permalink').AsString;
              edPrecio_wp.Text      :=datoswordpress.mtProducto.FieldByName('price').AsString;
              edRegularPrec_wp.Text :=datoswordpress.mtProducto.FieldByName('regular_price').AsString;
              edSalePreci_wp.Text   :=datoswordpress.mtProducto.FieldByName('sale_price').AsString;

            end;
            }
    END;
end;

procedure TFormStock_2.BuscarMarcaExecute(Sender: TObject);
begin
  inherited;
  DatosStock.CDSBuscaMarca.Close;
  DatosStock.CDSBuscaMarca.Open;
  ComBuscadorMarca.Execute;
  IF ComBuscadorMarca.rOk THEN
    DatosStock.CDSStockMARCA_STKSetText(DatosStock.CDSStockMARCA_STK,comBuscadorMarca.id);
  DatosStock.CDSBuscaMarca.Close;
end;

procedure TFormStock_2.BuscarSubProduccionExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorSubRubro_RubroStock)) then
    FormBuscadorSubRubro_RubroStock:=TFormBuscadorSubRubro_RubroStock.Create(self);
  FormBuscadorSubRubro_RubroStock.ShowModal;
  if FormBuscadorSubRubro_RubroStock.ModalResult=mrOk then
    begin
      edCodSubRubro.Text       :=FormBuscadorSubRubro_RubroStock.SubRubro;
      edCodRubStock.Text       :=FormBuscadorSubRubro_RubroStock.Rubro;
      edMuestraSubRubro.Text   :=FormBuscadorSubRubro_RubroStock.DetalleSubRub;
      edMuestraRubStock.Text   :=FormBuscadorSubRubro_RubroStock.DetalleRubro;
    end
  else
    begin
      edCodSubRubro.Text       :='';
      edCodRubStock.Text       :='';
      edMuestraSubRubro.Text   :='';
      edMuestraRubStock.Text   :='';
    end;

end;

procedure TFormStock_2.BuscarSubRubro_2Execute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorSubRubro_RubroStock)) then
    FormBuscadorSubRubro_RubroStock:=TFormBuscadorSubRubro_RubroStock.Create(self);
  FormBuscadorSubRubro_RubroStock.ShowModal;
  if FormBuscadorSubRubro_RubroStock.ModalResult=mrOk then
    begin
      DatosStock.CDSStockRUBRO_STK.Text     := FormBuscadorSubRubro_RubroStock.Rubro;
      DatosStock.CDSStockSUBRUBRO_STK.Text  := FormBuscadorSubRubro_RubroStock.SubRubro;
    end;
end;

procedure TFormStock_2.BuscarCtaGastoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorCuentaGastos)) then
    FormBuscadorCuentaGastos:=TFormBuscadorCuentaGastos.Create(self);
  FormBuscadorCuentaGastos.ShowModal;
  if FormBuscadorCuentaGastos.ModalResult=mrOk then
    begin
      DatosStock.CDSStockRUBRO_CTA_GASTO.AsString  :=FormBuscadorCuentaGastos.Cuenta;
      DatosStock.CDSStockRUBRO_GASTO.ASString      :=FormBuscadorCuentaGastos.Rubro;
      DatosStock.CDSStockMUESTRACTAGASTO.AsString  :=FormBuscadorCuentaGastos.DetalleCuenta;
      DatosStock.CDSStockMUESTRARUBROGASTO.ASString:=FormBuscadorCuentaGastos.DetalleRubro;
    end
  else
    begin
      DatosStock.CDSStockRUBRO_CTA_GASTO.AsString:='******';
      DatosStock.CDSStockRUBRO_GASTO.AsString    :='***';
      DatosStock.CDSStockMUESTRACTAGASTO.Clear;
      DatosStock.CDSStockMUESTRARUBROGASTO.Clear;
    end;


end;

procedure TFormStock_2.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  DatosStock.CDSBuscaDeposito.Close;
  DatosStock.CDSBuscaDeposito.Open;
  ComBuscadorDepositos.Execute;
  IF comBuscadorDepositos.rOk THEN
    DatosStock.CDSDepositoStkCODIGO_DEPOSITOSetText(DatosStock.CDSDepositoStkCODIGO_DEPOSITO, IntToStr(comBuscadorDepositos.Id));
  DatosStock.CDSBuscaDeposito.Close;
end;

procedure TFormStock_2.TraerMovimientosExecute(Sender: TObject);
VAR
  Modo,T: STRING;
  E,S,Dif,Unid:Real;
BEGIN
  CASE rgUnidades.ItemIndex OF
    0: Modo := 'V';//unidades de Venta
    1: Modo := 'C';//unidades de compra
  END;
  {En el CASE invierto el sentido de los que quiero mostrar
  por que uso una sentencia distinto de...}
  CASE rgTipoOp.ItemIndex OF
    0: T := '';
    1: T := 'V';//venta
    2: T := 'C';//compra
    3: T := 'X';//transferencia
    4: T := 'J';//ajuste
    5: T := 'P';//Producción
    6: T := 'R';//Recepcion
    7: T := 'O';//Remitos de Obra
    8: T := 'M';//RMA Saliente
    9: T := 'A';//RMA Entrante
   10: T := 'W';//entrega Acopio
   11: T := 'T';//Remitos
   12: T := 'E';//Remitos Con Movimiento de Stock
  END;
  DatosStock.CDSMovStock.Close;
  DatosStock.CDSMovStock.Params.ParamByName('Codigo').Value   := Trim(dbeCodigo.Text);
  DatosStock.CDSMovStock.Params.ParamByName('deposito').Value := RxDBDeposito.Value;
  IF RxDBDeposito.Value = '' THEN
    DatosStock.CDSMovStock.Params.ParamByName('deposito').Value := null;
  DatosStock.CDSMovStock.Params.ParamByName('TipoMovimiento').Value := T;
  DatosStock.CDSMovStock.Params.ParamByName('Desde').AsDate := Desde.Date;
  DatosStock.CDSMovStock.Params.ParamByName('hasta').AsDate := Hasta.Date;
  DatosStock.CDSMovStock.Params.ParamByName('Modo').Value   := Modo;

  if chRemitos.Checked then
    DatosStock.CDSMovStock.Params.ParamByName('rtos').Value := 'S'
  else
    DatosStock.CDSMovStock.Params.ParamByName('rtos').Value := 'N';

  DatosStock.CDSMovStock.Open;
  DatosStock.CDSMovStock.First;
  DatosStock.CDSMovStock.DisableControls;
  E:=0;S:=0;Unid:=0;
  while not(DatosStock.CDSMovStock.Eof) do
    begin
      E:=DatosStock.CDSMovStockENTRA.AsFloat+E;
      S:=DatosStock.CDSMovStockSALE.AsFloat+S;
      Unid:=Unid+DatosStock.CDSMovStockUNIDADES.AsFloat;
      DatosStock.CDSMovStock.Next;
    end;
  Dif:=E-S;
  DatosStock.CDSMovStock.EnableControls;
  lbEntran.Caption   := FormatFloat(DatosStock.Mascara,E);
  lbSalen.Caption    := FormatFloat(DatosStock.Mascara,S);
  lbSAldo.Caption    := FormatFloat(DatosStock.Mascara,Dif);
  if Dif>=0 then lbSaldo.Font.Color:=clBlue
  else
    lbSaldo.Font.Color:=clRed;
  lbUnidades.Caption := FormatFloat(DatosStock.Mascara,Unid);

  dbgMovimientos.Width:=dbgMovimientos.Width-1;
  dbgMovimientos.Width:=dbgMovimientos.Width+1;
end;

procedure TFormStock_2.dbgArticulosSeriesTrazablesDblClick(Sender: TObject);
begin
  inherited;
  if DatosStock.CDSArticulosSeriesTrazabCODIGO_STK.Value<>'' then
    begin
      DatoNew:=DatosStock.CDSArticulosSeriesTrazabCODIGO_STK.Value;
      Recuperar.Execute;
      pcPrincipal.ActivePageIndex:=0;
    end;
end;

function TFormStock_2.dbgDepositosCheckIfBooleanField(Grid: TJvDBGrid;
  Field: TField; var StringForTrue, StringForFalse: string): Boolean;
begin
  inherited;
  result   := Field = DatosStock.CDSDepositoStkAVISO_MINIMOSTOCK;
  StringForTrue  := 'S';
  StringForFalse := 'N';
end;

procedure TFormStock_2.dbgDepositosColEnter(Sender: TObject);
begin
  inherited;
 IF dbgDepositos.SelectedIndex = 1 THEN
    dbgDepositos.SelectedIndex := 2;
 IF dbgDepositos.SelectedIndex = 5 THEN
    dbgDepositos.SelectedIndex := 6;

end;

procedure TFormStock_2.dbgDepositosEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscarDeposito.Execute;
end;

procedure TFormStock_2.dbgDepositosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_LEFT) AND (dbgDepositos.SelectedIndex = 2) THEN
    dbgDepositos.SelectedIndex := 0;
  IF (Key = VK_LEFT) AND (dbgDepositos.SelectedIndex = 6) THEN
    dbgDepositos.SelectedIndex := 4;

end;

procedure TFormStock_2.dbgDepositosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF dbgDepositos.SelectedIndex < 7 THEN
        dbgDepositos.SelectedIndex := dbgDepositos.SelectedIndex + 1
      ELSE
        BEGIN
          dbgDepositos.DataSource.DataSet.Append;
          dbgDepositos.SelectedIndex := 0;
        END;
    END
  ELSE IF key = #10 THEN
    BEGIN
      Key := #0;
      IF dbgDepositos.SelectedIndex = 0 THEN
        BEGIN
          IF dbgDepositos.DataSource.DataSet.State = dsBrowse THEN
            dbgDepositos.DataSource.DataSet.Edit;
          BuscarDeposito.Execute;
        END;
    END;

end;

function TFormStock_2.dbgFotosCheckIfBooleanField(Grid: TJvDBGrid;
  Field: TField; var StringForTrue, StringForFalse: string): Boolean;
begin
  inherited;
  result   := Field = DatosStock.CDSStockFotosPOR_DEFECTO;
  StringForTrue  := 'S';
  StringForFalse := 'N';
end;

procedure TFormStock_2.pcDatosArticuloChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  IF ((RxDBCSubRubro.Text = '') OR
      (dbcUnidad.Text ='') OR
      (dbeDescripcion.Text = ''))
      AND (DatosStock.CDSStock.State in [dsInsert,dsEdit])
      THEN
    BEGIN
      ShowMessage('Faltan completar datos en esta página antes de pasar a la siguiente...!!!');
      AllowChange := False;
    END
  ELSE
    AllowChange := True;
  if FormPreciosPorCantidades.Visible then
    FormPreciosPorCantidades.Visible:=False;

end;

procedure TFormStock_2.PrevExecute(Sender: TObject);
begin
 inherited;
 if FormPreciosPorCantidades.Visible then
    FormPreciosPorCantidades.Visible:=False;
end;

procedure TFormStock_2.dbcGravamenChange(Sender: TObject);
begin
  inherited;
  IF DatosStock.CDSStock.State IN [dsInsert, dsEdit] THEN
    BEGIN
   //   dbchAplicaPercepcionIIBB.Enabled:=dbcGravamen.Value[1] IN ['E'];
//      IF dbcGravamen.ItemIndex IN ['I', 'Y'] THEN
      IF dbcGravamen.ItemIndex IN [3,4] THEN

        BEGIN
          FormStock_2.dbeImpuesto.Enabled := True;
          FormStock_2.dbeImpuesto.Color   := clWindow;
        END
      ELSE
        BEGIN
          FormStock_2.dbeImpuesto.Enabled := False;
          FormStock_2.dbeImpuesto.Color   := clBtnFace;
        END;

//      if dbcGravamen.Value[1] in ['M','Y'] then
      IF dbcGravamen.ItemIndex IN [2,4] THEN

        begin
          FormStock_2.dbeCostoNoGravado.Enabled :=True;
          FormStock_2.dbeCostoNoGravado.Color   :=clWindow;

          FormStock_2.dbeCostoGravado.Enabled   :=True;
          FormStock_2.dbeCostoGravado.Color     :=clWindow;

          FormStock_2.dbeCostoConIva.Enabled    :=True;
          FormStock_2.dbeCostoConIva.Color      :=clWindow;

          FormStock_2.dbeCostoGravadoSombra.Color   :=clWindow;
          FormStock_2.dbeCostoGravadoSombra.Enabled :=True;
          FormStock_2.dbeCostoExentoSombra.Color    :=clWindow;
          FormStock_2.dbeCostoExentoSombra.Enabled  :=True;


          FormStock_2.dbeFPnoGravado.Enabled :=True;
          FormStock_2.dbeFPnoGravado.Color   :=clWindow;
          FormStock_2.dbeFPGravado.Enabled   :=True;
          FormStock_2.dbeFPGravado.Color     :=clWindow;

        end;

//      if dbcGravamen.Value[1] in ['E'] then
      IF dbcGravamen.ItemIndex IN [1] THEN

        begin
          FormStock_2.dbeCostoNoGravado.Enabled :=True;
          FormStock_2.dbeCostoNoGravado.Color   :=clWindow;
          FormStock_2.dbeCostoGravado.Enabled   :=False;
          FormStock_2.dbeCostoGravado.Color     :=clBtnFace;

          FormStock_2.dbeCostoGravadoSombra.Color   :=clBtnFace;
          FormStock_2.dbeCostoGravadoSombra.Enabled :=False;
          FormStock_2.dbeCostoExentoSombra.Color    :=clWindow;
          FormStock_2.dbeCostoExentoSombra.Enabled  :=True;


          DatosStock.CDSStockCOSTO_GRAVADO_STKSetText(DatosStock.CDSStockCOSTO_GRAVADO_STK,'0');
          DatosStock.CDSStockFIJACION_PRECIO_GRAVADOSetText(DatosStock.CDSStockFIJACION_PRECIO_GRAVADO,'0');
          FormStock_2.dbeFPnoGravado.Enabled:=True;
          FormStock_2.dbeFPnoGravado.Color  :=clWindow;
          FormStock_2.dbeFPGravado.Enabled  :=False;
          FormStock_2.dbeFPGravado.Color    :=clBtnFace;
         end;
//      if dbcGravamen.Value[1] in ['G','I'] then
      IF dbcGravamen.ItemIndex IN [0,3] THEN
        begin
          FormStock_2.dbeCostoNoGravado.Enabled := False;
          FormStock_2.dbeCostoNoGravado.Color   := clBtnFace;
          FormStock_2.dbeCostoGravado.Enabled   := True;
          FormStock_2.dbeCostoGravado.Color     := clWindow;

          DatosStock.CDSStockCOSTO_EXENTO_STKSetText(DatosStock.CDSStockCOSTO_EXENTO_STK,'0');
          DatosStock.CDSStockFIJACION_PRECIO_EXENTOSetText(DatosStock.CDSStockFIJACION_PRECIO_EXENTO,'0');

          FormStock_2.dbeCostoGravadoSombra.Color   :=clWindow;
          FormStock_2.dbeCostoGravadoSombra.Enabled :=True;
          FormStock_2.dbeCostoExentoSombra.Color    :=clBtnFace;
          FormStock_2.dbeCostoExentoSombra.Enabled  :=False;


          FormStock_2.dbeFPnoGravado.Enabled  :=False;
          FormStock_2.dbeFPnoGravado.Color    :=clBtnFace;
          FormStock_2.dbeFPGravado.Enabled    :=True;
          FormStock_2.dbeFPGravado.Color      :=clWindow;
        end;

      FormStock_2.dbeCostoFinal.Enabled    := FormStock_2.dbeCostoGravado.Enabled;
      FormStock_2.dbeCostoFinal.Color      := FormStock_2.dbeCostoGravado.Color;
    END;

end;


procedure TFormStock_2.rgTipoOpClick(Sender: TObject);
begin
  inherited;
  TraerMovimientos.Execute;
end;

procedure TFormStock_2.rgTipoVariableClick(Sender: TObject);
begin
  inherited;
  // si es un articulo variante habilito el artoculo que es variable
  lbVariaciones.Visible      := rgTipoVariable.ItemIndex = 1;
  lbVariaciones.Enabled      := rgTipoVariable.ItemIndex = 1;

  dbcArticuloVariable.Visible:= rgTipoVariable.ItemIndex = 2;
  dbcArticuloVariable.Enabled:= rgTipoVariable.ItemIndex = 2;

end;

procedure TFormStock_2.RxDBDepositoChange(Sender: TObject);
begin
  inherited;
  TraerMovimientos.Execute;
end;

procedure TFormStock_2.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;

procedure TFormStock_2.sbReporteClick(Sender: TObject);
VAR Lon1,Lon2:integer;
begin
  inherited;
  OpenDialog.InitialDir:=DMMain_FD.PathReportesLst;
  if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        edEtiqueta1.Text:= OpenDialog.FileName;
        Lon1:=Length(OpenDialog.InitialDir);
        Lon2:=Length(OpenDialog.FileName);
        edEtiqueta1.Text:=Copy(OpenDialog.FileName,Lon1+2,Lon2-Lon1-1);
      end
    else
      edEtiqueta1.Text:='';
end;

//procedure TFormStock_2.SetAdapter(Response: TJSONValue);
//var
//  jsonResponse: TRESTResponseJSON;
//begin
//  DatosWordPress.RESTResponseDataSetAdapter.Active := false;
//  if (Response <> nil) then
//    begin
//      jsonResponse := TRESTResponseJSON.Create(self, Response, true);
//      try
//        DatosWordPress.RESTResponseDataSetAdapter.ResponseJSON := jsonResponse;
//        DatosWordPress.RESTResponseDataSetAdapter.Active := true;
//      finally
//        jsonResponse.Free;
//      end;
//    end;
//end;

procedure TFormStock_2.SimularArmadoMovExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormMovTemporalesStock)) then
    FormMovTemporalesStock:=TFormMovTemporalesStock.Create(Self);
  FormMovTemporalesStock.Codigo :=DatosStock.CDSStockCODIGO_STK.Value;
  FormMovTemporalesStock.Detalle:=DatosStock.CDSStockDETALLE_STK.Value;
  FormMovTemporalesStock.Show;
end;

procedure TFormStock_2.SincronizaCategoriasWebExecute(Sender: TObject);
var i:Integer;
begin
  inherited;

  if (dbgCategorias.RowCount>0) and Not(dbgCategorias.DataSource.DataSet.IsEmpty) then
    begin
      for i:= 1 to dbgCategorias.RowCount-1 do
        begin
          DatosStock.spAMCategorias.Close;
          DatosStock.spAMCategorias.ParamByName('ID').AsInteger     := StrToInt( dbgCategorias.Cells[0,i]);
          DatosStock.spAMCategorias.ParamByName('DETALLE').AsString := dbgCategorias.Cells[1,i];
          DatosStock.spAMCategorias.ParamByName('Parent').AsInteger := StrToInt (dbgCategorias.Cells[3,i]);
          DatosStock.spAMCategorias.ExecProc;
        end;

    end;
end;

procedure TFormStock_2.FormActivate(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State=dsBrowse) and
     (Not(DSBase.DataSet.IsEmpty)) and
     (FormStock_2<>nil) and
     (FormStock_2.Visible=True)  then
    recuperar.Execute;
 end;

procedure TFormStock_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if FileExists(ExtractFilePath(ParamStr(0))+'UltimoItem.XML') then
    DeleteFile(ExtractFilePath(ParamStr(0))+'UltimoItem.XML');
  //Archivo Ini de Stock
  ArchivoIni       := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Stock_');
  ArchivoIni.WriteBool('Stock', 'Adicionales', DatosAdicionales1.Checked);
  ArchivoIni.WriteBool('Stock', 'AplicaCodGenerado', chAplicaCodigo.Checked );
  ArchivoIni.WriteString('Stock', 'Etiqueta', edEtiqueta1.Text );
  ArchivoIni.WriteBool('Stock', 'refresh', RefrescaDatosActivo.Checked);

//  ArchivoIni.WriteString('wpress', 'Usuario', edUsuarioWP.Text);
//  ArchivoIni.WriteString('wpress', 'pass', edPassWP.Text );
//  ArchivoIni.WriteString('wpress', 'Dominio', edDominioWP.Text );
  ArchivoIni.WriteInteger('wpress', 'ItemPagina', spItemsPag.Value );
  ArchivoIni.WriteBool('wpress','usawp',UsaWoordPress1.Checked);

  ArchivoIni.Free;
  //**********************

  DatosStock.CDSStock.Close;
  DatosStock.CDSDepositoStk.Close;
  DatosStock.CDSBuscaIva1.Close;
  DatosStock.CDSBuscaIva2.Close;
  DatosStock.CDSListaUnidad.Close;
  DatosStock.CDSProvStock.Close;
  DatosStock.CDSCodigoBarra.Close;
  DatosStock.CDSListaArt.Close;
  DatosStock.CDSBuscaMoneda.Close;
  DatosStock.CDSListaDepositos.Close;
  DatosStock.QListaPresentacion.Close;
  DatosStock.QTiposAdicionales.Close;
  DatosStock.CDSListaIngBruto.Close;
  DatosStock.CDSStockFotos.Close;
  DatosStock.CDSBuscaPercepIVA.Close;

  DatosStock.CDSMarca.Close;
  DatosStock.QDeposito.Close;
  DatosStock.CDSSeccionPLU.Close;

  FreeAndNil(FormCodigosBarra);
  if (DatosStock<>Nil) then
    FreeAndNil(DatosStock);
  if (DatosWordPress<>Nil) then
    FreeAndNil(DatosWordPress);
 if (FWooCommerceAPI<>nil)  then
    FWooCommerceAPI.Free;

  Action:=caFree;
  inherited;

 end;



procedure TFormStock_2.FormCreate(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(DatosStock)) THEN
    DatosStock:=TDatosStock.Create(Self);
  IF NOT (Assigned(DatosWordPress)) THEN
    DatosWOrdPress:=TDatosWordPress.Create(Self);
  IF NOT (Assigned(FormCodigosBarra)) THEN
    FormCodigosBarra:=TFormCodigosBarra.Create(Self);
  IF NOT (Assigned(FormPreciosPorCantidades)) THEN
    FormPreciosPorCantidades:=TFormPreciosPorCantidades.Create(Self);
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  SinBDE:=2;

  DSBase.DataSet:=DatosStock.CDSStock;
  pcDatosArticulo.ActivePageIndex:=0;
  WITH DatosStock DO
    BEGIN
      AddClientDataSet(CDSStock, DSPStock);
      AddClientDataSet(CDSDepositoStk, DSPDepositoStk);
      AddClientDataSet(CDSProvStock, DSPProvStock);
      AddClientDataSet(CDSCodigoBarra,DSPCodigoBasrra);
      AddClientDataSet(CDSListaArt,DSPListaArt);
      AddClientDataSet(CDSStockFotos,DSPStockFotos);
      AddClientDataSet(CDSListaArtSubDet,DSPListaArtSubDet);
      AddClientDataSet(CDSSeries,DSPSeries);

      CDSStock.Open;
      CDSDepositoStk.Open;
      CDSProvStock.Open;
      CDSCodigoBarra.Open;
      CDSListaArt.Open;
      CDSListaArtSubDet.Open;
      CDSStockFotos.Open;

      CDSListaDepositos.Open;
      QListaPresentacion.Open;
      CDSBuscaIva1.Open;
      CDSBuscaIva2.Open;
      CDSListaIngBruto.Open;
      CDSListaUnidad.Open;
      CDSBuscaMoneda.Open;
      QTiposAdicionales.Open;

      CDSSeries.Open;

      CDSSeccionPLU.Close;
      CDSSeccionPLU.Open;
      CDSBuscaPercepIVA.Close;
      CDSBuscaPercepIVA.Open;
     END;

  pcPrincipal.ActivePageIndex     := 0;
  pcDatosArticulo.ActivePageIndex := 0;


  // Veo si se cargan codigo Alfanumericos y si son secuenciales
//  DMMain_FD.QOpciones.CLose;
//  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='ALFA';
//  DMMain_FD.QOpciones.Open;
  CodigoAlfa:=DMMain_FD.GetModoCodificacion;
  // Verifico si Genera Codigo Barra
  DMMain_FD.QOpciones.CLose;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='GENERACB';
  DMMain_FD.QOpciones.Open;
  if (DMMain_FD.QOpciones.Fields[0].AsString<>'') then
    GeneraCodigoBarra:=Trim(DMMain_FD.QOpciones.Fields[0].AsString[1])
  else
    GeneraCodigoBarra:='N';
  //********************************************

  // Codigo Secuencial
//  DMMain_FD.QOpciones.CLose;
//  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='SECUENCIAL';
//  DMMain_FD.QOpciones.Open;
  CodigoSecuencial:=DMMain_FD.GetCodificacionSecuencial;
  //DMMain_FD.QOpciones.CLose;
  //********************************************

  // Actualiza Precio Vta
  //DMMain_FD.QOpciones.CLose;
  //DMMain_FD.QOpciones.ParamByName('Opcion').Value:='COSTOVTA';
  //DMMain_FD.QOpciones.Open;
  DMMain_FD.ActualizaPrecioVta:=DMMain_FD.GetActualizaPrecioVta;
  //DMMain_FD.QOpciones.CLose;
  //********************************************

  // Directorio de Imagenes
  if Trim(DMMain_FD.PathImagenes)<>'' then
    opdImagenes.InitialDir:= DMMain_FD.PathImagenes
  else
    opdImagenes.InitialDir:= 'C:\';
  //**********************

  lbAvisoPrecio.Visible      := Not(DMMain_FD.ActualizaPrecioVta);
  RearmarMovimientos.Enabled := DMMain_FD.UsuarioAdministrador;
  DatosStock.AsignarMascaras;

  //Archivo Ini de Stock
  //*************************************************************
  ArchivoIni                  := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Stock_');
  Adicionales.TabVisible      := ArchivoIni.ReadBool('Stock', 'Adicionales', False);
  DatosAdicionales1.Checked   := Adicionales.TabVisible;
  chAplicaCodigo.Checked      := ArchivoIni.ReadBool('Stock', 'AplicaCodGenerado', False);
  edEtiqueta1.Text            := ArchivoIni.ReadString('Stock', 'Etiqueta', '' );
  spItemsPag.Value            := ArchivoIni.ReadInteger('wpress', 'ItemPagina', 50 );
  UsaWoordPress1.Checked      := ArchivoIni.ReadBool('wpress','usawp',False);
  RefrescaDatosActivo.Checked := ArchivoIni.ReadBool('Stock', 'refresh', False);


  ArchivoIni.Free;
  //*************************************************************

  WoordPress.TabVisible    := UsaWoordPress1.Checked;

  if FileExists(ExtractFilePath(ParamStr(0))+'UltimoItem.XML') then
    DeleteFile(ExtractFilePath(ParamStr(0))+'UltimoItem.XML');

  Tabla              := 'stock';
  Campo              := 'codigo_stk';
  Condicion          := '';
  AltaListaProveedor := False;

  pcGeneradorArticulos.ActivePageIndex:= 0;
  pcWordPress.ActivePageIndex         := 0;
  Modal                               := False;
  if (UsaWoordPress1.Checked) and (FWooCommerceAPI=nil)  then
    FWooCommerceAPI   := TWooCommerceAPI.Create('https://'+DMMain_FD.URlWoordPress, DMMain_FD.UsuarioWoordPress, DMMain_fd.ClaveUsuarioWoordPress);

  pagComposicion.TabVisible:=False;
end;

{
// Agrega las unidades necesarias a tu cláusula "uses"
uses
  // ... otras unidades ...
  FMX.TMSFNCCheckTreeView, Data.DB, Datasnap.DBClient;

// Luego, en el evento OnCreate de tu formulario o cualquier otro lugar adecuado, puedes usar el siguiente código para cargar datos jerárquicos desde una tabla en el TMSFNCCheckTreeView:

procedure TForm1.FormCreate(Sender: TObject);
var
  CDS: TClientDataSet;
  Node, ParentNode: TTMSFNCCheckTreeViewNode;
begin
  CDS := TClientDataSet.Create(nil);
  try
    CDS.SetProvider(TDataSetProvider.Create(Self));
    CDS.Provider.DataSet := TuTabla; // Reemplaza "TuTabla" con el nombre de tu tabla
    CDS.Open;
    CDS.First;
    while not CDS.Eof do
    begin
      Node := TMSFNCCheckTreeView1.Items.Add(nil, CDS.FieldByName('NombreCampo').AsString); // Reemplaza "NombreCampo" con el nombre del campo que quieres mostrar
      ParentNode := TMSFNCCheckTreeView1.FindNodeByFieldValue('IDCampo', CDS.FieldByName('IDCampoPadre').AsInteger); // Reemplaza "IDCampo" con el nombre del campo que contiene el ID del nodo padre, y "IDCampoPadre" con el nombre del campo que contiene el ID del nodo padre para el nodo actual

      if Assigned(ParentNode) then
        Node.ParentNode := ParentNode; // Establecer la relación jerárquica con el nodo padre si existe

      Node.Checked := CDS.FieldByName('ValorCampoBooleano').AsBoolean; // Reemplaza "ValorCampoBooleano" con el nombre del campo que contiene el valor booleano para la casilla de verificación
      CDS.Next;
    end;
  finally
    CDS.Free;
  end;
end;


}


procedure TFormStock_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormStock_2:=nil;
end;

procedure TFormStock_2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift=[ssAlt]) and  (key=VK_F12) then
    begin
      CodigoEAN.SetFocus;
      CodigoEAN.SelectAll;
    end;

end;

procedure TFormStock_2.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  pcPrincipal.ActivePageIndex     := 0;
  pcDatosArticulo.ActivePageIndex := 0;
  DecodeDate(Date,A,M,D);
  Desde.Date                      := EncodeDate(A,M,1);
  Hasta.Date                      := EncodeDate(A,M,DaysInMonth(A,M));
  Desde_2.Date                    := Desde.Date;
  Hasta_2.Date                    := Hasta.Date;
  tbImagenes.Visible              := False;
  // Contable *******
  FrameCtaContable2.Visible       := DMMain_FD.GetUsaContabilidad;
  FrameCtaContable2.NombreTabla   := 'Stock';
  FrameCtaContable1.Visible       := FrameCtaContable2.Visible ;//DMMain_FD.UsaContabilidad;
  FrameCtaContable1.NombreTabla   := 'Stock';

  //*****************
  if (btNuevo.Enabled) and (btNuevo.Visible) then btNuevo.SetFocus;
  if FModal then
    begin
      BringToFront;
      Agregar.execute;
    end;
end;

procedure TFormStock_2.FrameCtaContable1ceCodigoButtonClick(Sender: TObject);
begin
  FrameCtaContable1.CodigoElemento := DSBase.DataSet.FieldByName('CODIGO_STK').AsString;
  FrameCtaContable1.NombreTabla    := 'Stock';
  FrameCtaContable1.SubIndice      := 'Compra';
  inherited;
  FrameCtaContable1.ceCodigoButtonClick(Sender);

end;

procedure TFormStock_2.FrameCtaContable1ceCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  FrameCtaContable1.CodigoElemento := DSBase.DataSet.FieldByName('CODIGO_STK').AsString;
  FrameCtaContable1.NombreTabla    := 'Stock';
  FrameCtaContable1.SubIndice      := 'Compra';
  inherited;
  FrameCtaContable1.ceCodigoKeyDown(Sender, Key, Shift);
end;

procedure TFormStock_2.FrameCtaContable1ceCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  FrameCtaContable1.CodigoElemento := DSBase.DataSet.FieldByName('CODIGO_STK').AsString;
  FrameCtaContable1.NombreTabla    := 'Stock';
  FrameCtaContable1.SubIndice      := 'Compra';
  inherited;
  FrameCtaContable1.ceCodigoKeyPress(Sender, Key);
end;

procedure TFormStock_2.FrameCtaContable2ceCodigoButtonClick(Sender: TObject);
begin
  FrameCtaContable2.CodigoElemento := DSBase.DataSet.FieldByName('CODIGO_STK').AsString;
  FrameCtaContable2.NombreTabla    := 'Stock';
  FrameCtaContable2.SubIndice      := 'Venta';
  inherited;
  FrameCtaContable2.ceCodigoButtonClick(Sender);
end;

procedure TFormStock_2.FrameCtaContable2ceCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  FrameCtaContable2.CodigoElemento := DSBase.DataSet.FieldByName('CODIGO_STK').AsString;
  FrameCtaContable2.NombreTabla    := 'Stock';
  FrameCtaContable2.SubIndice      := 'Venta';
  inherited;
  FrameCtaContable2.ceCodigoKeyDown(Sender, Key, Shift);
end;

procedure TFormStock_2.FrameCtaContable2ceCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  FrameCtaContable2.CodigoElemento := DSBase.DataSet.FieldByName('CODIGO_STK').AsString;
  FrameCtaContable2.NombreTabla    := 'Stock';
  FrameCtaContable2.SubIndice      := 'Venta';
  inherited;
  FrameCtaContable2.ceCodigoKeyPress(Sender, Key);
end;

procedure TFormStock_2.GenerarCodigoExecute(Sender: TObject);
VAR Cadena :String;
CadenaNombre:String;
SubCad,Largo1,Largo2,Largo3,Rotura1,Rotura2:String;
begin
  inherited;
  if (DSBase.DataSet.State in [dsInsert,dsEdit]) Then
    begin
      Cadena      :='';
      CadenaNombre:='';
      Largo1 :=Copy( '0000',1,Length(Trim(edLargo1.Text)))  + edLargo1.Text;
      Largo2 :=Copy( '0000',1,Length(Trim(edLargo2.Text)))  + edLargo2.Text;
      Largo3 :=Copy( '0000',1,Length(Trim(edLargo3.Text)))  + edLargo3.Text;
      Rotura1:=Copy('00000',1,Length(Trim(edRotura1.Text))) + edRotura1.Text;
      Rotura2:=Copy('00000',1,Length(Trim(edRotura2.Text))) + edRotura2.Text;


      // if chGenerarCodigo.Checked then
      Cadena:=dbcTipo.KeyValue+Largo1;
      Case dbcClaseProducto.ItemIndex of
        0:begin Cadena:=Cadena+'RO';SubCad:='RO';end;
        1:begin Cadena:=Cadena+'R';SubCad :='R'; end;
        2:begin Cadena:=Cadena+'X';SubCad :='X'; end;
      End;

      if  (DSBase.DataSet.State in [dsInsert,dsEdit]) and (dbcClaseProducto.ItemIndex=0) and (Largo1<>'') and (Trim(edCima.Text)<>'')   then
        DSBase.DataSet.FieldByName('BASE').Value:= (DSBase.DataSet.FieldByName('LARGO_1').Value * 0.15) +
                                                    DSBase.DataSet.FieldByName('CIMA').Value;

      Cadena:=Cadena + Rotura1 +
              Trim(edCima.Text) +
              Trim(edAltoAccesorio.Text);

      if dbcClaseProducto.ItemIndex>0 then
        Cadena:=Cadena + Trim(edbOlla.Text); //ver comento

      if Copy(Cadena,1,1)='*' then
        Cadena:='';

      if (Largo1<>'') and (Rotura1<>'') and (Trim(edCima.Text)<>'') then
        CadenaNombre := Trim(copy(dbcTipo.Text,1, pos(',',dbcTipo.Text)))+' - '+
                        Largo1 +' '+SubCad+':'+
                        Rotura1+' - '+
                        FormatFloat('0',(StrToFloat(edCima.Text)))+'-'+
                        Trim(edbOlla.Text)
      else
        if (Trim(edLargo1.Text)<>'') and (Trim(edRotura1.Text)<>'') and (Trim(edCima.Text)='') then
          CadenaNombre := Trim(copy(dbcTipo.Text,1, pos(',',dbcTipo.Text)))+' - '+
                          Largo1 +' '+SubCad+':'+
                          Rotura1+
                          Trim(edbOlla.Text);


      if Copy(Cadena,1,1)='*' then
        CadenaNombre:='';


      edCodigoResultado.Text := Cadena;
      edNombre.Text          := CadenaNombre;

      if chAplicaCodigo.Checked then
        if (DSBase.DataSet.State in [dsInsert,dsEdit]) Then
          begin
            if (Copy(Trim(edCodigoResultado.Text),1,1)<>'*') then
              begin
                DSBase.DataSet.FieldByName('REEMPLAZO_STK').Value        :=Trim(edCodigoResultado.Text);
                DSBase.DataSet.FieldByName('DETALLE_STK').Value          :=Trim(edNombre.Text);
                DSBase.DataSet.FieldByName('DETALLE_STK_ADICIONAL').Value:=Trim(edNombre.Text);

              end
            else
              DSBase.DataSet.FieldByName('REEMPLAZO_STK').Value:='';
          end;
       if (DSBase.DataSet.State in [dsInsert,dsEdit]) and (Trim(edVolumen.Text)<>'') then
         begin
           DSBase.DataSet.FieldByName('PESO_CALCULADO').ASFloat:= DSBase.DataSet.FieldByName('VOLUMEN').AsFloat*2.4;
           DSBase.DataSet.FieldByName('PESO').ASFloat          := DSBase.DataSet.FieldByName('PESO_CALCULADO').ASFloat

         end;
    end;
 end;

function TFormStock_2.Generar_Codigo: string;
var num:Integer;
dato:String;
begin
   if (CodigoSecuencial)  Then
     begin
       QUltimoCodigo2.Close;
       QUltimoCodigo2.Open;
       if QUltimoCodigo2.Fields[0].AsString<>'' Then
         Result:=IntToStr(QUltimoCodigo2.Fields[0].AsInteger+1)
       else
         Result:='0';
       QUltimoCodigo2.Close;
     end
   else
     begin
       QBuscadorCodigo.Close;
       QBuscadorCodigo.ParamByName('Id_Rubro').Value    := edCodRubStock.Text;
       QBuscadorCodigo.ParamByName('Id_SubRubro').Value := edCodSubRubro.Text;
       QBuscadorCodigo.Open;

       IF (QBuscadorCodigo.Fields[0].AsString<>'') THEN
         Num := StrToInt(QBuscadorCodigo.Fields[0].Value) + 1
       ELSE
         num := StrToInt(Dato+'000');
       result := Copy('00000000000', 1, 8 - Length(IntToStr(Num))) + IntToStr(Num);
     end;
end;

procedure TFormStock_2.GuardarFotoExecute(Sender: TObject);
begin
  inherited;
  if not(DatosStock.CDSStockFotos.IsEmpty) then
    begin
      if (DSBase.DataSet.State = dsBrowse) and (Not(dsbase.DataSet.IsEmpty)) then
       begin
         DMMain_FD.GuardarImagenReducidaEnStock(DSBase.DataSet.FieldByName('CODIGO_STK').AsString);
         Recuperar.Execute;
       end;
    end;
end;

procedure TFormStock_2.DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
  var Action: Boolean);
begin
  inherited;
  Desde.Date := ADate;
  Action     := True;
  TraerMovimientos.Execute;
end;

procedure TFormStock_2.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  Label31.Visible  := DMMain_FD.VerCostoFichaStock;
  Label35.Visible  := DMMain_FD.VerCostoFichaStock;
  Label32.Visible  := DMMain_FD.VerCostoFichaStock;
  Label33.Visible  := DMMain_FD.VerCostoFichaStock;
  Label37.Visible  := DMMain_FD.VerCostoFichaStock;
  lbl1.Visible     := DMMain_FD.VerCostoFichaStock;
  lbl2.Visible     := DMMain_FD.VerCostoFichaStock;

  Label50.Visible  := DMMain_FD.VerCostoFichaStock;
  Label49.Visible  := DMMain_FD.VerCostoFichaStock;

  Label53.Visible  := DMMain_FD.VerCostoFichaStock;
  Label51.Visible  := DMMain_FD.VerCostoFichaStock;

  Label52.Visible  := DMMain_FD.VerCostoFichaStock;

  Lb2.Visible      := DMMain_FD.VerCostoFichaStock;
  Lb1.Visible      := DMMain_FD.VerCostoFichaStock;

  spVerHistorial.Enabled          :=Not(DSBase.DataSet.IsEmpty);

  dbeCostoNoGravado.Visible       := DMMain_FD.VerCostoFichaStock;
  dbeCostoGravado.Visible         := DMMain_FD.VerCostoFichaStock;
  dbeCostoTotal.Visible           := DMMain_FD.VerCostoFichaStock;
  dbeCostoFinal.Visible           := DMMain_FD.VerCostoFichaStock;
  dbeCostoIva.Visible             := DMMain_FD.VerCostoFichaStock;
  dbeCostoConIva.Visible          := DMMain_FD.VerCostoFichaStock;

 // dbeIvaCosto.Visible             := DMMain_FD.VerCostoFichaStock;

  dbeFPnoGravado.Visible          := DMMain_FD.VerCostoFichaStock;
  dbeFPGravado.Visible            := DMMain_FD.VerCostoFichaStock;
  dbeFPTotal.Visible              := DMMain_FD.VerCostoFichaStock;
  dbeFPrecioConIva.Visible        := DMMain_FD.VerCostoFichaStock;
  dbeFPrecioConIvaTotal.Visible   := DMMain_FD.VerCostoFichaStock;
  dbeIvaFPrecio.Visible           := DMMain_FD.VerCostoFichaStock;

  dbeCostoNoGravado.Enabled       := DMMain_FD.ModificaPrecioVta;
  dbeCostoGravado.Enabled         := DMMain_FD.ModificaPrecioVta;
  dbeCostoIva.Enabled             := DMMain_FD.ModificaPrecioVta;

  dbeFPnoGravado.Enabled          := DMMain_FD.ModificaPrecioVta;
  dbeFPGravado.Enabled            := DMMain_FD.ModificaPrecioVta;
  dbeIvaFPrecio.Enabled           := DMMain_FD.ModificaPrecioVta;

  pnPrincipal.Enabled             := True;
  pcPrincipal.Enabled             := True;
  Pag1.Enabled                    := True;
//  SubPag1.Enabled               := DSBase.DataSet.State IN [dsInsert, dsEdit];
  SubPag1.Enabled                 := True;
  SubPag2.Enabled                 := True;
  SubPag3.Enabled                 := True;

  dbeCodigo.Enabled               := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeDescripcion.Enabled          := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeDetalleAdicional.Enabled     := DSBase.DataSet.State IN [dsInsert, dsEdit];
  spMeses.Enabled                 := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeReemplazo.Enabled            := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcUnidad.Enabled               := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcContCompra.Enabled           := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcUnidadesCompra.Enabled       := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcMoneda.Enabled               := DSBase.DataSet.State IN [dsInsert, dsEdit];

  dbcGravamen.Enabled             := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcTasa.Enabled                 := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcSobreTasa.Enabled            := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeCostoNoGravado.Enabled       := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeCostoGravado.Enabled         := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeFPnoGravado.Enabled          := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeFPGravado.Enabled            := DSBase.DataSet.State IN [dsInsert, dsEdit];
  ABMSeccionesPLU.Enabled         := DSBase.DataSet.State IN [dsInsert, dsEdit];

  dbrgClaseArticulo.Enabled       := DSBase.DataSet.State IN [dsInsert, dsEdit];

  chbGravadoIB.Enabled            := DSBase.DataSet.State IN [dsInsert, dsEdit];
  chbPerciveIVA.Enabled           := DSBase.DataSet.State IN [dsInsert, dsEdit];

  dbcIngBruto.Enabled             := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcPercepIVA.Enabled            := DSBase.DataSet.State IN [dsInsert, dsEdit];

  RxDBCMarca.Enabled              := DSBase.DataSet.State IN [dsInsert, dsEdit];
  RxDBCSubRubro.Enabled           := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbchControlaStock.Enabled       := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbchActualizaCosto.Enabled      := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbchDeProduccion.Enabled        := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbchWeb.Enabled                 := DSBase.DataSet.State IN [dsInsert, dsEdit];

  dbchProduccionDirecta.Enabled   := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcPRESENTACION_UNIDAD.Enabled  := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbePRESENTACION_CANTIDAD.Enabled:= DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbgDepositos.ReadOnly           := Not(DSBase.DataSet.State IN [dsInsert, dsEdit]);
  dbgProveedores.ReadOnly         := Not(DSBase.DataSet.State IN [dsInsert, dsEdit]);
  dbchEditaPrecio.Enabled         := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbchEditaDetalle.Enabled        := DSBase.DataSet.State IN [dsInsert, dsEdit];

  dbgListaPrecios.ReadOnly        := (DSBase.DataSet.State IN [dsInsert,dsBrowse]);

  GuardarFoto.Enabled             := (DSBase.DataSet.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));

  if (dbgListaPrecios.ReadOnly=False) and (DMMain_FD.ModificaPrecioVta=False) Then
    dbgListaPrecios.ReadOnly :=True;

  dbeCodigo.Enabled               := DSBase.State=dsInsert;
  rgUnidadesDepositos.Enabled     := Not(DSBase.DataSet.State IN [dsInsert, dsEdit]);
  gbTablaPrecios.Enabled          := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbchEditaPrecio.Enabled         := DMMain_FD.ModificaPrecioVta;
  dbchEditaDetalle.Enabled        := DMMain_FD.ModificaDetalleArticulo;

  FrameCtaContable2.Enabled       := DSBase.DataSet.State IN [dsInsert, dsEdit];

  MarcarProveedorDefecto.Enabled  := (DSBase.DataSet.State IN [dsBrowse]) and (not(DSBase.DataSet.IsEmpty));
  BuscaURL.Enabled                := DSBase.DataSet.State IN [dsInsert, dsEdit];
  tsGastos.Enabled                := DSBase.DataSet.State IN [dsInsert, dsEdit];
  tbImagenes.Enabled              := DSBase.DataSet.State IN [dsInsert, dsEdit];

  SimularArmadoMov.Enabled        :=(DSBase.DataSet.State IN [dsBrowse]) and (not(DSBase.DataSet.IsEmpty));
  Imprimir.Enabled                :=(DSBase.DataSet.State IN [dsBrowse]) and (not(DSBase.DataSet.IsEmpty));
  ImprimirEtiquetas.Enabled       :=(DSBase.DataSet.State IN [dsBrowse]) and (not(DSBase.DataSet.IsEmpty));

  pnAdicionales.Enabled           := DSBase.DataSet.State IN [dsInsert, dsEdit];

  DatosStock.CDSCodigoBarra.ReadOnly := DSBase.DataSet.State IN [dsBrowse];
  CodigoEAN.Enabled                  := DSBase.State=dsBrowse;
  //lbVariaciones.Enabled              := (DSBase.DataSet.State IN [dsInsert, dsEdit]) and (not(DSBase.DataSet.IsEmpty)) and (DSBase.DataSet.FieldByName('ARTICULO_VARIABLE').Value='S') ;

  if DSBase.State=dsbrowse then
    dbgListaPrecios.Options:= dbgListaPrecios.Options+[dgRowSelect]
  else
    begin
      dbgListaPrecios.Options := dbgListaPrecios.Options-[dgRowSelect]+[dgediting];
      dbgListaPrecios.ReadOnly:= False;
    end;

  lbVariaciones.Visible      := (DSBase.DataSet.FieldByName('Articulo_variable').AsString='V');
  dbcArticuloVariable.Visible:= (DSBase.DataSet.FieldByName('Articulo_variable').AsString='T');
  ReemplazarArticulo.Enabled := (DSBase.DataSet.State IN [dsBrowse]) and (not(DSBase.DataSet.IsEmpty)) and (DMMain_FD.UsuarioAdministrador);
  ReemplazarArticulo.Visible := (DSBase.DataSet.State IN [dsBrowse]) and (not(DSBase.DataSet.IsEmpty)) and (DMMain_FD.UsuarioAdministrador);

end;

procedure TFormStock_2.edPeso_calculadoChange(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsInsert,dsEdit]) and (Trim(edPeso.Text)<>'') then
    edPeso.Text:=edPeso_calculado.Text;
end;

procedure TFormStock_2.dbeURLClick(Sender: TObject);
begin
  inherited;
  OpenObject((Sender as TDBEdit).Text);
end;

procedure TFormStock_2.dbeCodigoEnter(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='Buscar Codig desde el Indicado CTR + F12';
end;

procedure TFormStock_2.dbeCodigoExit(Sender: TObject);
begin
  inherited;
  FrameCtaContable2.CodigoElemento:= dbeCodigo.Text;
  sbEstado.SimpleText:='';
end;

procedure TFormStock_2.dbeCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_F12) and (Shift =[ssCtrl]) THEN
    begin
      DatosStock.QCodigoFree.Close;
      DatosStock.QCodigoFree.ParamByName('Desde').Value := '00000000';
      DatosStock.QCodigoFree.ParamByName('Hasta').Value := '99999999';
      DatosStock.QCodigoFree.Open;
      DatosStock.CDSStockCODIGO_STKSetText(DatosStock.CDSStockCODIGO_STK,DatosStock.QCodigoFreeNEWCODIGO.AsString);
      DatosStock.QCodigoFree.Close;
    end
end;

procedure TFormStock_2.dbeDescripcionEnter(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='Buscar Codig desde el Indicado CTR + F12';
end;

procedure TFormStock_2.dbeDescripcionExit(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';
end;

procedure TFormStock_2.dbeDescripcionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_F12) and (Shift =[ssCtrl]) THEN
    begin
      DatosStock.QCodigoFree.Close;
      DatosStock.QCodigoFree.ParamByName('Desde').Value:= dbeCodigo.text;
      DatosStock.QCodigoFree.ParamByName('Hasta').Value:= '99999999';
      DatosStock.QCodigoFree.Open;
      DatosStock.CDSStockCODIGO_STKSetText(DatosStock.CDSStockCODIGO_STK,DatosStock.QCodigoFreeNEWCODIGO.AsString);
      DatosStock.QCodigoFree.Close;
    end
end;

procedure TFormStock_2.dbeSiglasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if (Key=VK_DELETE) or (key=VK_BACK) then
    DSBase.DataSet.FieldByName('SIGLAS').Clear;
end;

procedure TFormStock_2.dbeGrupoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if (Key=VK_DELETE) or (key=VK_BACK) then
    DSBase.DataSet.FieldByName('PRESENTACION_2_CANT').Clear;
end;

procedure TFormStock_2.dbePLUKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_DELETE) or (key=VK_BACK) then
    DSBase.DataSet.FieldByName('PLU').Clear;
end;

procedure TFormStock_2.dbeReemplazoExit(Sender: TObject);
begin
  inherited;
  IF ((RxDBCSubRubro.Text <>'') and
      (dbcUnidad.Text <>'') and (dbeDescripcion.Text = '')) then
  begin
    pcDatosArticulo.ActivePageIndex:=1;
    dbcGravamen.SetFocus;
  end;  
end;

procedure TFormStock_2.RxDBCMarcaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosStock.CDSStockMARCA_STK.Clear;
      DatosStock.CDSStockMUESTRAMARCA.Clear;
    end;

end;

procedure TFormStock_2.RxDBCRubroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if ((key=vk_delete) or (Key=VK_back)) Then
    begin
      DatosStock.CDSStockRUBRO_STK.Clear;
      DatosStock.CDSStockMUESTRARUBRO.Clear;
      DatosStock.CDSStockSUBRUBRO_STK.Clear;
      DatosStock.CDSStockMUESTRASUBRUBRO.Clear;
      if (DSBase.DataSet.State=dsInsert) then
        DatosStock.CDSStockCODIGO_STK.Clear;
    end;

end;

procedure TFormStock_2.RxDBCSubRubroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if (key=vk_delete) or (Key=VK_back) Then
      begin
        DatosStock.CDSStockSUBRUBRO_STK.Text  :=  '';
        if (DSBase.DataSet.State=dsInsert) then
          DatosStock.CDSStockCODIGO_STK.Clear;
      end
    else
      if (key=VK_RETURN) and (RxDBCSubRubro.Text<>'') Then
        dbcUnidadesCompra.SetFocus;

end;

procedure TFormStock_2.MarcarProveedorDefectoExecute(Sender: TObject);
begin
  inherited;
  DatoNew:=DatosStock.CDSStockCODIGO_STK.AsString;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    DatosStock.spMarcaProveeDefectoFD.Close;
    DatosStock.spMarcaProveeDefectoFD.ParamByName('codigo').Value:=DatosStock.CDSStockCODIGO_STK.Value;
    DatosStock.spMarcaProveeDefectoFD.ParamByName('id').Value    :=DatosStock.CDSProvStockID_PROVEESTOCK.Value;
    DatosStock.spMarcaProveeDefectoFD.ExecProc;
    DatosStock.spMarcaProveeDefectoFD.Close;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se marco el proveedor....!!!');
  end;
  Recuperar.Execute;
end;

procedure TFormStock_2.MemorizarUltimoIngreso1Click(Sender: TObject);
begin
  inherited;
  if MemorizarUltimoIngreso1.Checked=False then
    MemorizarUltimoIngreso1.Checked:=True
  else
    MemorizarUltimoIngreso1.Checked:=False;

end;

procedure TFormStock_2.ModificarExecute(Sender: TObject);
begin
  inherited;
 // DatosStock.CDSStockFUAP.AsDateTime:=date;

  // IF dbcGravamen.Value[1] IN ['I', 'Y'] THEN
  IF dbcGravamen.ItemIndex IN [3, 4] THEN

    BEGIN
      FormStock_2.dbeImpuesto.Enabled := True;
      FormStock_2.dbeImpuesto.Color := clWindow;
    END
  ELSE
    BEGIN
      FormStock_2.dbeImpuesto.Enabled := False;
      FormStock_2.dbeImpuesto.Color := clBtnFace;
    END;

 // if dbcGravamen.Value[1] in ['M','Y'] then
  IF dbcGravamen.ItemIndex IN [2, 4] THEN

    begin
      FormStock_2.dbeCostoNoGravado.Enabled:=True;
      FormStock_2.dbeCostoNoGravado.Color  :=clWindow;
      FormStock_2.dbeCostoGravado.Enabled  :=True;
      FormStock_2.dbeCostoGravado.Color    :=clWindow;

      FormStock_2.dbeFPnoGravado.Enabled:=True;
      FormStock_2.dbeFPnoGravado.Color  :=clWindow;
      FormStock_2.dbeFPGravado.Enabled:=True;
      FormStock_2.dbeFPGravado.Color  :=clWindow;

   end;

 // if dbcGravamen.Value[1] in ['E'] then
  IF dbcGravamen.ItemIndex IN [1] THEN

    begin
      FormStock_2.dbeCostoNoGravado.Enabled:=True;
      FormStock_2.dbeCostoNoGravado.Color  :=clWindow;
      FormStock_2.dbeCostoGravado.Enabled  :=False;
      FormStock_2.dbeCostoGravado.Color    :=clBtnFace;

      FormStock_2.dbeFPnoGravado.Enabled:=True;
      FormStock_2.dbeFPnoGravado.Color  :=clWindow;
      FormStock_2.dbeFPGravado.Enabled:=False;
      FormStock_2.dbeFPGravado.Color  :=clBtnFace;

    end;
//  if dbcGravamen.Value[1] in ['G','I'] then
   IF dbcGravamen.ItemIndex IN [0, 3] THEN

    begin
      FormStock_2.dbeCostoNoGravado.Enabled:=False;
      FormStock_2.dbeCostoNoGravado.Color  :=clBtnFace;
      FormStock_2.dbeCostoGravado.Enabled  :=True;
      FormStock_2.dbeCostoGravado.Color    :=clWindow;

      FormStock_2.dbeFPnoGravado.Enabled:=False;
      FormStock_2.dbeFPnoGravado.Color  :=clBtnFace;
      FormStock_2.dbeFPGravado.Enabled:=True;
      FormStock_2.dbeFPGravado.Color  :=clWindow;
    end;
end;


procedure TFormStock_2.NextExecute(Sender: TObject);
begin
  inherited;
  if FormPreciosPorCantidades.Visible then
    FormPreciosPorCantidades.Visible:=False;
end;

procedure TFormStock_2.AplicarCodigoExecute(Sender: TObject);
begin
  inherited;
  if Copy(Trim(edCodigoResultado.Text),1,1)<>'*' then
    begin
      DatosStock.CDSStockREEMPLAZO_STK.Value          := Trim(edCodigoResultado.Text);
      DatosStock.CDSStockDETALLE_STK.Value            := Trim(edNombre.Text);
      DatosStock.CDSStockDETALLE_STK_ADICIONAL.Value  := Trim(edNombre.Text);
    end;
end;

procedure TFormStock_2.btRefrescarLotesClick(Sender: TObject);
begin
  inherited;
  DatosStock.CDSLotes.Close;
  DatosStock.CDSLotes.Params.ParamByName('Codigo').Value      := DatoNew;
  DatosStock.CDSLotes.Open;

  DatosStock.CDSMovLote.Close;
  DatosStock.CDSMovLote.Params.ParamByName('Codigo').Value    := DatoNew;
  DatosStock.CDSMovLote.Open;
end;

procedure TFormStock_2.BitBtn5Click(Sender: TObject);
begin
  inherited;
  DatosStock.CDSTrazables.Close;
  DatosStock.CDSTrazables.Open;
  dbgTrazables.Width:=dbgTrazables.Width+1;
  dbgTrazables.Width:=dbgTrazables.Width-1;
end;

procedure TFormStock_2.BitBtn6Click(Sender: TObject);
begin
  inherited;
  DatosStock.CDSArticulosSeriesTrazab.Close;
  DatosStock.CDSArticulosSeriesTrazab.Open;
end;

procedure TFormStock_2.BorrarExecute(Sender: TObject);
  var Detalle:String;
  Web:Boolean;
begin
  IF MessageDlg('Está por hacer una operación de borrado,'+ #13 +
     'todos los movimientos de stock seran borrados '+#13+
     'Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes
    THEN
      begin

        DMBuscadores.QBuscaArtRtosPendientes.Close;
        DMBuscadores.QBuscaArtRtosPendientes.ParamByName('codigo').AsString:=DatosStock.CDSStockCODIGO_STK.AsString;
        DMBuscadores.QBuscaArtRtosPendientes.Open;
        if DMBuscadores.QBuscaArtRtosPendientes.Fields[0].Value>0 then
          RAISE Exception.Create('Articulo usado en rtos que aun estan en condicion de facturacion, no se puede inactivar...');


        DatosStock.QVerificaStockConMov.Close;
        DatosStock.QVerificaStockConMov.ParamByName('codigo').Value:=DatosStock.CDSStockCODIGO_STK.Value;
        DatosStock.QVerificaStockConMov.Open;
        if (DatosStock.QVerificaStockConMovESTADO.Value='S') Then
          ShowMessage('Este artículo tiene movimientos asociados no se puede borrar...')
        else
          begin
            Detalle:=DatosStock.CDSStockCODIGO_STK.AsString+' '+DatosStock.CDSStockDETALLE_STK.AsString;
            web:=DatosStock.CDSStockPUBLICAR_WEB.AsString='S';
            inherited;
            if DSBase.DataSet.IsEmpty then
              DMMain_FD.LogFileFD(1,2,'Borrado De Articulo :'+Detalle,'STOCK');

            if UsaWoordPress1.Checked and web then
              if MessageDlg('Elimina de la Web...?',mtConfirmation,[mbyes,mbno],0,mbNo)=mrYes then
                  BorrarWeb.Execute;
          end;
      end;
  pcPrincipal.ActivePageIndex    :=0;
  pcDatosArticulo.ActivePageIndex:=0;
end;

procedure TFormStock_2.RecIVAExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
    try
      spRecalculaIVA.Close;
      spRecalculaIVA.ParamByName('codigo').Value    :=DSBase.DataSet.FieldByName('CODIGO_STK').Value;
      spRecalculaIVA.ExecProc;
      DMMain_FD.fdcGestion.Commit;
    except
      DMMain_FD.fdcGestion.Rollback;
    end;
  spRecalculaIVA.Close;
end;

procedure TFormStock_2.RecuperarExecute(Sender: TObject);
begin
  inherited;
  if FormPreciosPorCantidades.Visible then
    FormPreciosPorCantidades.Visible:=False;

  DatosStock.CDSStock.Close;
  DatosStock.CDSStock.Params.ParamByName('Codigo').Value       := DatoNew;
  DatosStock.CDSStock.Open;

  FrameCtaContable2.CodigoElemento:= DatoNew;
  if DMMain_FD.GetUsaContabilidad then
    begin
      FrameCtaContable2.CDSCtaContable.Close;
      FrameCtaContable2.CDSCtaContable.Params.ParamByName('Tabla').AsString     := FrameCtaContable2.NombreTabla;
      FrameCtaContable2.CDSCtaContable.Params.ParamByName('Codigo').AsString    := DatoNew;
      FrameCtaContable2.CDSCtaContable.Params.ParamByName('SubIndice').AsString := 'Ventas';
      FrameCtaContable2.CDSCtaContable.Open;

      FrameCtaContable1.CDSCtaContableCompra.Close;
      FrameCtaContable1.CDSCtaContableCompra.Params.ParamByName('Tabla').AsString     := FrameCtaContable2.NombreTabla;
      FrameCtaContable1.CDSCtaContableCompra.Params.ParamByName('Codigo').AsString    := DatoNew;
      FrameCtaContable1.CDSCtaContableCompra.Params.ParamByName('SubIndice').AsString := 'Compras';
      FrameCtaContable1.CDSCtaContableCompra.Open;

    end;

  edID_wp.Text                := '';
  edSku_wp.Text               := '';
  edNombre_wp.Text            := '';
  edLongDesc_wp.Text          := '';
  mShotDescription.Lines.Text := '';
  edTipo.Text                 := '';
  edUrl_wp.Text               := '';
  edCategorias.Text           := '';

  lbPermalink.Caption         := '';
  edPrecio_wp.Text            := FormatFloat(',0.00', 0);
  edRegularPrec_wp.Text       := FormatFloat(',0.00', 0);
  edSalePreci_wp.Text         := FormatFloat(',0.00', 0);
  edStockWeb.Text             := FormatFloat(',0.00', 0);


  DatosStock.CDSDepositoStk.Close;
  DatosStock.CDSDepositoStk.Params.ParamByName('Codigo').Value := DatoNew;
  DatosStock.CDSDepositoStk.Open;

  DatosStock.CDSProvStock.Close;
  DatosStock.CDSProvStock.Params.ParamByName('Codigo').Value   := DatoNew;
  DatosStock.CDSProvStock.Open;

  DatosStock.CDSCodigoBarra.Close;
  DatosStock.CDSCodigoBarra.Params.ParamByName('Codigo').Value := DatoNew;
  DatosStock.CDSCodigoBarra.Open;

  DatosStock.CDSListaHistorial.Close;
  DatosStock.CDSListaHistorial.Params.ParamByName('Codigo').Value := DatoNew;
  DatosStock.CDSListaHistorial.Open;

  DatosStock.CDSListaArt.Close;
  DatosStock.CDSListaArt.Params.ParamByName('Codigo').Value       := DatoNew;
  DatosStock.CDSListaArt.Open;

  DatosStock.CDSStockFotos.Close;
  DatosStock.CDSStockFotos.Params.ParamByName('Codigo').Value      := DatoNew;
  DatosStock.CDSStockFotos.Open;

  DatosStock.CDSStockFotos.First;
  imgFoto.Picture.Assign(nil);

  try
    if FileExists(FormStock_2.opdImagenes.InitialDir + '\' + DatosStock.CDSStockFotosFOTO.AsString) then
      imgFoto.Picture.LoadFromFile(FormStock_2.opdImagenes.InitialDir + '\' + DatosStock.CDSStockFotosFOTO.AsString);
  Except
    //ShowMessage('Imagen no Disponible');
  end;


  DatosStock.CDSLotes.Close;
  DatosStock.CDSLotes.Params.ParamByName('Codigo').Value      := DatoNew;
  DatosStock.CDSLotes.Open;

  DatosStock.CDSMovLote.Close;
  DatosStock.CDSMovLote.Params.ParamByName('Codigo').Value    := DatoNew;
  DatosStock.CDSMovLote.Open;

  DatosStock.CDSEnArtProduccion.Close;
  DatosStock.CDSEnArtProduccion.Params.ParamByName('Codigo').Value  := DatoNew;
  DatosStock.CDSEnArtProduccion.Open;

  DatosStock.CDSVariaciones.Close;
  DatosStock.CDSVariaciones.Params.ParamByName('Codigo').Value      := DatoNew;
  DatosStock.CDSVariaciones.Open;


  pagComposicion.TabVisible := DatosStock.CDSStockDEPRODUCCION.Value='S';
  if DatosStock.CDSStockDEPRODUCCION.Value='S' then
    begin
      QStockProdDetalle.Close;
      QStockProdDetalle.ParamByName('codigo').AsString:=DatoNew;
      QStockProdDetalle.Open;
    end;

  dbcCodigoBarra.Enabled := dbchUsaCodigoBarra.Checked;

//  DatosStock.CDSMovSeries.Close;
//  DatosStock.CDSProStk.Params.ParamByName('Codigo').Value        := DatoNew;
//  DatosStock.CDSProStk.Open;

//  DatosStock.QMovStock.Close;
//  IF dbcGravamen.Value[1] IN ['I', 'Y'] THEN
  IF dbcGravamen.ItemIndex IN [3, 4] THEN

    BEGIN
      FormStock_2.dbeImpuesto.Enabled := True;
      FormStock_2.dbeImpuesto.Color := clWindow;
    END
  ELSE
    BEGIN
      FormStock_2.dbeImpuesto.Enabled := False;
      FormStock_2.dbeImpuesto.Color := clBtnFace;
    END;

 // if dbcGravamen.Value[1] in ['M','Y'] then
  IF dbcGravamen.ItemIndex IN [2, 4] THEN
    begin
      FormStock_2.dbeCostoNoGravado.Enabled     := True;
      FormStock_2.dbeCostoNoGravado.Color       := clWindow;
      FormStock_2.dbeCostoGravado.Enabled       := True;
      FormStock_2.dbeCostoGravado.Color         := clWindow;

      FormStock_2.dbeCostoGravadoSombra.Color   := clWindow;
      FormStock_2.dbeCostoGravadoSombra.Enabled := True;
      FormStock_2.dbeCostoExentoSombra.Color    := clWindow;
      FormStock_2.dbeCostoExentoSombra.Enabled  := True;

      FormStock_2.dbeFPnoGravado.Enabled        := True;
      FormStock_2.dbeFPnoGravado.Color          := clWindow;
      FormStock_2.dbeFPGravado.Enabled          := True;
      FormStock_2.dbeFPGravado.Color            := clWindow;

   end;

//  if dbcGravamen.Value[1] in ['E'] then
   IF dbcGravamen.ItemIndex IN [1] THEN

    begin
      FormStock_2.dbeCostoNoGravado.Enabled     := True;
      FormStock_2.dbeCostoNoGravado.Color       := clWindow;
      FormStock_2.dbeCostoGravado.Enabled       := False;
      FormStock_2.dbeCostoGravado.Color         := clBtnFace;

      FormStock_2.dbeCostoGravadoSombra.Color   := clBtnFace;
      FormStock_2.dbeCostoGravadoSombra.Enabled := False;
      FormStock_2.dbeCostoExentoSombra.Color    := clWindow;
      FormStock_2.dbeCostoExentoSombra.Enabled  := True;

      FormStock_2.dbeFPnoGravado.Enabled        := True;
      FormStock_2.dbeFPnoGravado.Color          := clWindow;
      FormStock_2.dbeFPGravado.Enabled          := False;
      FormStock_2.dbeFPGravado.Color            := clBtnFace;
    end;
//  if dbcGravamen.Value[1] in ['G','I'] then
  IF dbcGravamen.ItemIndex IN [0, 3] THEN
    begin
      FormStock_2.dbeCostoNoGravado.Enabled     := False;
      FormStock_2.dbeCostoNoGravado.Color       := clBtnFace;
      FormStock_2.dbeCostoGravado.Enabled       := True;
      FormStock_2.dbeCostoGravado.Color         := clWindow;

      FormStock_2.dbeCostoGravadoSombra.Color   := clWindow;
      FormStock_2.dbeCostoGravadoSombra.Enabled := True;
      FormStock_2.dbeCostoExentoSombra.Color    := clBtnFace;
      FormStock_2.dbeCostoExentoSombra.Enabled  := False;

      FormStock_2.dbeFPnoGravado.Enabled        := False;
      FormStock_2.dbeFPnoGravado.Color          := clBtnFace;
      FormStock_2.dbeFPGravado.Enabled          := True;
      FormStock_2.dbeFPGravado.Color            := clWindow;
    end;

  FormStock_2.dbeCostoFinal.Enabled             := FormStock_2.dbeFPGravado.Enabled;
  FormStock_2.dbeCostoFinal.Color               := FormStock_2.dbeFPGravado.Color;

  FormStock_2.dbeFPrecioConIva.Enabled          := FormStock_2.dbeFPGravado.Enabled;
  FormStock_2.dbeFPrecioConIva.Color            := FormStock_2.dbeFPGravado.Color;

  if chbPerciveIVA.Checked Then
    begin
//      dbcPercepIVA.Enabled:=True;
      dbcPercepIVA.Color  :=clWindow;
    end
  else
    begin
//      dbcPercepIVA.Enabled:=False;
      dbcPercepIVA.Color  :=clBtnFace;
    end;

  if chbGravadoIB.Checked Then
    begin
//      dbcIngBruto.Enabled:=True;
      dbcIngBruto.Color  :=clWindow;
    end
  else
    begin
//      dbcIngBruto.Enabled:=False;
      dbcIngBruto.Color  :=clBtnFace;
    end;

  tsGastos.TabVisible := DatosStock.CDSStockCLASE_ARTICULO.Value in [2..5];
  sbEstado.SimpleText := 'Ctr+Alt+C:cambiar Codigo';
  DatoNew             := ''+DatoNew+'';
  TraerMovimientos.Execute;

  IF btNuevo.Enabled = True THEN
    btNuevo.SetFocus;
  CodigoEAN.Text:='Codigo EAN';

  dbcArticuloVariable.Enabled := DSBase.DataSet.FieldByName('PUBLICAR_WEB').AsString='S';
  lbVariaciones.Enabled       := DSBase.DataSet.FieldByName('PUBLICAR_WEB').AsString='S';
  rgTipoVariable.Enabled      := DSBase.DataSet.FieldByName('PUBLICAR_WEB').AsString='S';
  //rgTipoVariable.Enabled  :=
  if (UsaWoordPress1.Checked) and (DatosStock.CDSStockPUBLICAR_WEB.Value='S') then
    Traer_Sku.Execute;

  //pnCostos.Enabled:=Not(dbchDeProduccion.Checked);

end;

procedure TFormStock_2.ReemplazarArticuloExecute(Sender: TObject);
var
  Codigo: TStringList;
begin
  inherited;
  Codigo  :=  TStringList.Create;
  Codigo.Delimiter := '|';

  Codigo.Add(DatosStock.CDSStockCODIGO_STK.AsString+' - '+DatosStock.CDSStockDETALLE_STK.AsString);

  if Not(Assigned(FormCambiaArticuloEnVtas)) then
    FormCambiaArticuloEnVtas:= TFormCambiaArticuloEnVtas.Create(Self);
  FormCambiaArticuloEnVtas.Codigos  := Codigo;
  FormCambiaArticuloEnVtas.Detalle  := DatosStock.CDSStockDETALLE_STK.AsString;

  FormCambiaArticuloEnVtas.ShowModal;

  if FormCambiaArticuloEnVtas.ModalResult=mrOk then TraerMovimientos.Execute;

  FreeAndNil(Codigo);
end;

procedure TFormStock_2.RefrescaDatosActivoClick(Sender: TObject);
begin
  inherited;
  RefrescaDatosActivo.Checked:=Not(RefrescaDatosActivo.Checked);
end;

procedure TFormStock_2.BuscarProveeExecute(Sender: TObject);
begin
  inherited;
 IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
    begin
      DatosStock.QProveedores.Close;
      DatosStock.QProveedores.ParamByName('Codigo').Value:= FormBuscadorProveedor.Codigo;
      DatosStock.QProveedores.Open;
      if Not(DatosStock.QProveedores.IsEmpty) Then
        begin
          if DatosStock.CDSProvStock.State=dsBrowse Then
            DatosStock.CDSProvStock.Edit;
          DatosStock.CDSProvStockCODIGO_PROVEEDOR.Value:=DatosStock.QProveedoresCODIGO.Value;
          DatosStock.CDSProvStockMUESTRAPROVEEDOR.Value:=DatosStock.QProveedoresNOMBRE.Value;
          dbgProveedores.SelectedIndex:=2;
        end;
    end;

end;

procedure TFormStock_2.dbgProveedoresEditButtonClick(Sender: TObject);
begin
  inherited;
   BuscarProvee.Execute;
end;

procedure TFormStock_2.dbgProduccionDblClick(Sender: TObject);
begin
  inherited;
  if Not(dbgProduccion.DataSource.DataSet.isEmpty) then
    begin
      if Not(Assigned(FormStockProduccion)) then
        FormStockProduccion:=TFormStockProduccion.Create(Application);
      FormStockProduccion.datoNew:=dbgProduccion.DataSource.DataSet.FieldByName('Id_Cab').AsString;
      FormStockProduccion.Recuperar.Execute;
      FormStockProduccion.Show;
    end;
end;

procedure TFormStock_2.dbgProductosDblClick(Sender: TObject);
begin
  inherited;
  if dbgProductos.DataSource.DataSet.RecordCount>0 then
    begin
      DatoNew:=dbgProductos.cells[14,dbgProductos.Row];// rce.DataSet.FieldByName('SKU').AsString;
      Recuperar.Execute;
    end;
end;

procedure TFormStock_2.dbgProductosGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
  inherited;
  if ACol=14 then
    AStyle := ssAlphabetic;

end;

procedure TFormStock_2.dbgProductosSaveCell(Sender: TObject; ACol,
  ARow: Integer; var Value: string);
begin
  inherited;
  if ACol<>14 then
    begin
      Value:=Trim(AnsiReplaceStr(Value,#9,''));
      Value:=Trim(AnsiReplaceStr(Value,#10,''));
      Value:=Trim(AnsiReplaceStr(Value,#13,''));
    end;
end;

procedure TFormStock_2.dbgProveedoresColEnter(Sender: TObject);
begin
  inherited;
  IF dbgProveedores.SelectedIndex = 1 THEN
    dbgProveedores.SelectedIndex := 2;
  IF dbgProveedores.SelectedIndex = 5 THEN
    dbgProveedores.SelectedIndex := 4;

end;

procedure TFormStock_2.dbgProveedoresDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
    if (DatosStock.CDSProvStockPORDEFECTO.Value='S') Then
      dbgProveedores.Canvas.Font.Style:=[fsBold]
    else
      dbgProveedores.Canvas.Font.Style:=[];
    dbgProveedores.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormStock_2.dbgProveedoresKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;

  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgProveedores.SelectedIndex < 4) THEN
        dbgProveedores.SelectedIndex := dbgProveedores.SelectedIndex + 1
      ELSE
        BEGIN
          IF dbgProveedores.DataSource.DataSet.Eof THEN
            dbgProveedores.DataSource.DataSet.Append;
          dbgProveedores.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF dbgProveedores.SelectedField = DatosStock.CDSProvStockCODIGO_PROVEEDOR THEN
           BuscarProvee.Execute;
      END
    else
      if (key = #27) then
        dbgProveedores.DataSource.DataSet.Cancel;

end;

procedure TFormStock_2.dbgTrazablesDblClick(Sender: TObject);
begin
  inherited;
  DatoNew:=DatosStock.CDSTrazablesCODIGO_STK.AsString;
  Recuperar.Execute;
  pcPrincipal.ActivePageIndex:=0;
  pcDatosArticulo.ActivePageIndex:=0;
end;

procedure TFormStock_2.dbrgClaseArticuloClick(Sender: TObject);
begin
  inherited;
  tsGastos.TabVisible:=dbrgClaseArticulo.ItemIndex in [1..4];
end;

procedure TFormStock_2.dbtLinkURLClick(Sender: TObject);
begin
  inherited;
  if Trim((Sender as TDBText).Caption)<>'' then
    OpenObject((Sender as TDBText).Caption);
end;

procedure TFormStock_2.dbgProveedoresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_LEFT) and (Shift =[ssCtrl]) then
    BEGIN
      if (dbgProveedores.SelectedIndex = 2) THEN
        dbgProveedores.SelectedIndex := 0;
     {
      else
        if (dbgProveedores.SelectedIndex = 3) THEN
          dbgProveedores.SelectedIndex := 2
        else
          if (dbgProveedores.SelectedIndex = 4) THEN
            dbgProveedores.SelectedIndex := 3;
      }
      key := 0;
    END;

end;

procedure TFormStock_2.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  inherited;
  if rgPasoFecha.ItemIndex=0 then
    begin
      if Button=btnext Then
        begin
          Desde.Date := IncDay(Desde.Date,(1));
          if chbSincronizarFechas.Checked then
            Hasta.Date := Desde.Date;
        end
      else
        if Button=btPrev Then
          begin
            Desde.Date := IncDay(Desde.Date,(-1));
            if chbSincronizarFechas.Checked then
              Hasta.Date := Desde.Date;
          end;
     end
   else
     if rgPasoFecha.ItemIndex=1 then
       begin
         if Button=btnext Then
           begin
             Desde.Date := IncMonth(Desde.Date,1);
             if chbSincronizarFechas.Checked then
               Hasta.Date := IncMonth(Hasta.Date,1);
           end
         else
           if Button=btPrev Then
             begin
               Desde.Date := IncMonth(Desde.Date,-1);
               if chbSincronizarFechas.Checked then
                 Hasta.Date := IncMonth(Hasta.Date,-1);
             end;
     end;
    TraerMovimientos.Execute;

end;

procedure TFormStock_2.UpDown2Click(Sender: TObject; Button: TUDBtnType);
begin
  inherited;
  if rgPasoFecha_2.ItemIndex=0 then
    begin
      if Button=btnext Then
        begin
          Desde_2.Date := IncDay(Desde_2.Date,(1));
          Hasta_2.Date := Desde_2.Date;
        end
      else
        if Button=btPrev Then
          begin
            Desde_2.Date := IncDay(Desde_2.Date,(-1));
            Hasta_2.Date := Desde_2.Date;
          end;
     end
   else
     if rgPasoFecha_2.ItemIndex=1 then
       begin
         if Button=btnext Then
           begin
             Desde_2.Date := IncMonth(Desde_2.Date,1);
             Hasta_2.Date := IncMonth(Hasta_2.Date,1);
           end
         else
           if Button=btPrev Then
             begin
               Desde_2.Date := IncMonth(Desde_2.Date,-1);
               Hasta_2.Date := IncMonth(Hasta_2.Date,-1);
             end;
     end;
    btVerControlMovClick(Sender);

end;

procedure TFormStock_2.upPaginasClick(Sender: TObject; Button: TUDBtnType);
begin
  inherited;
  ConsultaWP.Execute;
end;

procedure TFormStock_2.UsaWoordPress1Click(Sender: TObject);
begin
  inherited;
  if UsaWoordPress1.Checked=False then
    UsaWoordPress1.Checked:=True
  else
    UsaWoordPress1.Checked:=False;

  WoordPress.TabVisible:=UsaWoordPress1.Checked;

end;

procedure TFormStock_2.VariablesExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormStockVariaciones)) then
    FormStockVariaciones:=TFormStockVariaciones.create(self);
  FormStockVariaciones.codigo :=DSBase.DataSet.FieldByName('codigo_stk').AsString;
  FormStockVariaciones.Detalle:=DSBase.DataSet.FieldByName('Detalle_stk').AsString;
  FormStockVariaciones.showModal;
  if FormStockVariaciones.ModalResult=mrOk then
    begin
      if DSBase.State<>dsBrowse then
        Cancelar.Execute;
      DatoNew :=FormStockVariaciones.CodigoStk;
      Recuperar.Execute;
    end;
  if Assigned(FormStockVariaciones) then
    FreeAndNil(FormStockVariaciones);

end;

procedure TFormStock_2.VerPrecioSombraExecute(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormHistorico_PrecSombra_Art)) then
    FormHistorico_PrecSombra_Art:=TFormHistorico_PrecSombra_Art.Create(FormStock_2);
  FormHistorico_PrecSombra_Art.Codigo:=DatosStock.CDSStockCODIGO_STK.Value;
  FormHistorico_PrecSombra_Art.ShowModal;
end;

procedure TFormStock_2.VerRecetaProduccionExecute(Sender: TObject);
var id:Integer;
begin
  inherited;
  id:=DatosStock.IdProduccion(DSBase.DataSet.FieldByName('codigo_stk').AsString);
  if id>0 then
    begin
      if FormStockProduccion=nil then
        FormStockProduccion:=TFormStockProduccion.Create(Application);
      FormStockProduccion.DatoNew:=IntToStr(id);
      FormStockProduccion.Recuperar.Execute;
      FormStockProduccion.Show;
    end;

end;

procedure TFormStock_2.dbchDeProduccionClick(Sender: TObject);
begin
  inherited;
  dbchProduccionDirecta.Enabled := dbchDeProduccion.Checked;
 // pnCostos.Enabled              := Not(dbchDeProduccion.Checked);
end;

procedure TFormStock_2.chbPerciveIVAClick(Sender: TObject);
begin
  inherited;
  if DSBase.State in [dsInsert,dsEdit] Then
    begin
      if chbPerciveIVA.Checked Then
        begin
          dbcPercepIVA.Enabled:=True;
          dbcPercepIVA.Color  :=clWindow;
        end
      else
        begin
          dbcPercepIVA.Enabled:=False;
          dbcPercepIVA.Color  :=clBtnFace;
          DatosStock.CDSStockID_TASA_PERCEP_IVA.Value:=-1;
        end;
    end;
end;

procedure TFormStock_2.ToolBar1DblClick(Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;

procedure TFormStock_2.ExportarArticulosWebExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  SaveDialog1.DefaultExt:='csv';
  dbgProductos.SaveVirtCells := False;
  dbgProductos.SaveWithHTML  := False;
  dbgProductos.SaveWithRTF   := False;

  //dbgProductos.AlwaysQuotes := True;
  dbgProductos.CSVTrimSpaces:= True;


  if SaveDialog1.Execute then
    begin
      if Not(AnsiEndsText( '.csv', SaveDialog1.FileName )) Then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
      dbgProductos.SaveToCSV(SaveDialog1.FileName,True);
    end;

end;

procedure TFormStock_2.fncDGLotesGetCellFormatting(Sender: TObject;
  ACell: TTMSFNCDataGridCellCoord; AData: TTMSFNCDataGridCellValue;
  var AFormatting: TTMSFNCDataGridDataFormatting;
  var AConvertSettings: TFormatSettings; var ACanFormat: Boolean);
begin
  inherited;
  if ACell.Column>3 then
    begin
      AFormatting.Format:='%.2f';
      AFormatting.&Type:= gdftNumber;

    end;


end;

procedure TFormStock_2.ImprimirEtiquetasExecute(Sender: TObject);
begin
  inherited;
  try
    frxEtiqueta.PrintOptions.Printer:=PrNomListados;
    frxEtiqueta.SelectPrinter;
    frxEtiqueta.LoadFromFile(DMMain_FD.PathReportesLst+'\'+edEtiqueta1.Text);
    frxEtiqueta.PrintOptions.Copies :=1;
    frxEtiqueta.PrepareReport();
    frxEtiqueta.PrintOptions.ShowDialog:=True;
    frxEtiqueta.ShowReport
  except
    Showmessage('Error en el reporte');
  end;
end;

procedure TFormStock_2.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;
  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\Stock.fr3');
  // frCtaCte.PrepareReport;
  frxReporte.ShowReport;
end;

procedure TFormStock_2.ImprimirMovExecute(Sender: TObject);
begin
  inherited;
  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;
  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\lstMovStockPorArticulo.fr3');
  // frCtaCte.PrepareReport;
  frxReporte.ShowReport;
end;



procedure TFormStock_2.lbLinkUrlClick(Sender: TObject);
begin
  inherited;
  OpenObject((Sender as TLabel).Caption);
end;


procedure TFormStock_2.lbPermalinkClick(Sender: TObject);
begin
  inherited;
  OpenObject((Sender as TLabel).Caption);
end;

procedure TFormStock_2.lbVariacionesClick(Sender: TObject);
begin
  inherited;
  Variables.Execute;
end;

procedure TFormStock_2.LimpiarFotoExecute(Sender: TObject);
begin
  inherited;
  begin
    if (DSBase.DataSet.State = dsBrowse) and (Not(dsbase.DataSet.IsEmpty)) then
     begin
       Modificar.Execute;
       dsbase.DataSet.FieldByName('foto').Value:=Null;
       Confirma.Execute;
      //Recuperar.Execute;
     end;
  end;
end;

procedure TFormStock_2.pcGeneradorArticulosChange(Sender: TObject);
begin
  inherited;
  DMBuscadores.QBuscaRubroFD.CLose;
  DMBuscadores.QbuscaRubroFD.Open;
  DMBuscadores.QBuscaSubRubroFD.CLose;
  DMBuscadores.QBuscaSubRubroFD.ParamByName('rubro').Value:='***';
  DMBuscadores.QBuscaSubRubroFD.Open;
end;

procedure TFormStock_2.Panel1DblClick(Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;

procedure TFormStock_2.rgUnidadesClick(Sender: TObject);
begin
  inherited;
  TraerMovimientos.Execute;
end;

procedure TFormStock_2.rgUnidadesDepositosClick(Sender: TObject);
begin
  inherited;
  if rgUnidadesDepositos.ItemIndex=0 Then
    begin
      dbgDepositos.Columns[2].FieldName:='INICIAL';
      dbgDepositos.Columns[3].FieldName:='MEDIO';
      dbgDepositos.Columns[4].FieldName:='MINIMO';
      dbgDepositos.Columns[5].FieldName:='FISICO';
    end
  else
    if rgUnidadesDepositos.ItemIndex=1 Then
      begin
        dbgDepositos.Columns[2].FieldName:='COMPRAINICIAL';
        dbgDepositos.Columns[3].FieldName:='COMPRAMEDIO';
        dbgDepositos.Columns[4].FieldName:='COMPRAMINIMO';
        dbgDepositos.Columns[5].FieldName:='COMPRAFISICO';
      end;

end;

procedure TFormStock_2.TraerSeriesExecute(Sender: TObject);
begin
 // inherited;
  DatosStock.CDSSeries.Close;
  if rgTipo.ItemIndex=0 Then
    DatosStock.CDSSeries.CommandText:='select ss.*,fc.nombre as MuestraProveedor,fv.nombre as MuestraCliente, rc.nombre as MuestraProveedor_2 from stock_series ss '+
                                      'left join fccompcab fc on fc.id_fc=ss.id_cpbte_ingreso and fc.tipocpbte=ss.tipocpbte_ingreso '+
                                      'left join fcvtacab fv on fv.id_fc=ss.id_cpbte_egreso and fc.tipocpbte=ss.tipocpbte_egreso '+
                                      'left join recepmercacab rc on rc.id_recmer=ss.id_cpbte_ingreso and rc.tipocpbte=ss.tipocpbte_ingreso '+
                                      'where ss.codigo_stk=:codigo '+
                                      'order by ss.codigoserie desc'
  else
    if rgTipo.ItemIndex=1 Then
      DatosStock.CDSSeries.CommandText:='select ss.*,fc.nombre as MuestraProveedor,fv.nombre as MuestraCliente,rc.nombre as MuestraProveedor_2 from stock_series ss '+
                                        'left join fccompcab fc on fc.id_fc=ss.id_cpbte_ingreso and fc.tipocpbte=ss.tipocpbte_ingreso '+
                                        'left join fcvtacab fv on fv.id_fc=ss.id_cpbte_egreso and fc.tipocpbte=ss.tipocpbte_egreso '+
                                        'left join recepmercacab rc on rc.id_recmer=ss.id_cpbte_ingreso and rc.tipocpbte=ss.tipocpbte_ingreso '+
                                        'where ss.codigo_stk=:codigo and Not(ss.id_cpbte_egreso is null) '+
                                        'order by ss.codigoserie desc'
    else
      if rgTipo.ItemIndex=2 Then
        DatosStock.CDSSeries.CommandText:='select ss.*,fc.nombre as MuestraProveedor,fv.nombre as MuestraCliente, rc.nombre as MuestraProveedor_2 from stock_series ss '+
                                          'left join fccompcab fc on fc.id_fc=ss.id_cpbte_ingreso and fc.tipocpbte=ss.tipocpbte_ingreso '+
                                          'left join fcvtacab fv on fv.id_fc=ss.id_cpbte_egreso and fc.tipocpbte=ss.tipocpbte_egreso '+
                                          'left join recepmercacab rc on rc.id_recmer=ss.id_cpbte_ingreso and rc.tipocpbte=ss.tipocpbte_ingreso '+
                                          'where ss.codigo_stk=:codigo and (ss.id_cpbte_egreso is null) '+
                                          'order by ss.codigoserie desc';



  DatosStock.CDSSeries.Params.ParamByName('Codigo').Value:=DatosStock.CDSStockCODIGO_STK.Value;
  DatosStock.CDSSeries.Open;

  DatosStock.CDSMovSeries.Close;
  DatosStock.CDSMovSeries.Params.ParamByName('id').Value:=DatosStock.CDSSeriesID.Value;
  DatosStock.CDSMovSeries.Open;


end;

procedure TFormStock_2.Traer_SkuExecute(Sender: TObject);
var
  Response: TWooCommerceResponse;
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  FWooCommerceAPI.Adapter.DataSet := DatosWordPress.mtProducto;
  Response                        := FWooCommerceAPI.Get('/products/?sku='+DSBase.DataSet.FieldByName('codigo_stk').AsString);
  if Response.Status=200 then
    begin
      if not(DatosWordPress.mtProducto.IsEmpty) then
        begin
          edID_wp.Text                := DatosWordPress.mtProducto.FieldByName('id').AsString;
          edSku_wp.Text               := DatosWordPress.mtProducto.FieldByName('sku').AsString;
          edNombre_wp.Text            := DatosWordPress.mtProducto.FieldByName('name').AsString;
          edLongDesc_wp.Text          := AnsiReplaceText(DatosWordPress.mtProducto.FieldByName('description').AsString,'<p>','');
          mShotDescription.Lines.Text := AnsiReplaceText(DatosWordPress.mtProducto.FieldByName('short_description').AsString,'<p>','');
          edTipo.Text                 := DatosWordPress.mtProducto.FieldByName('type').AsString;
          edCategorias.Text           := DatosWordPress.mtProducto.FieldByName('categories').AsString;
          edUrl_wp.Text               := DatosWordPress.mtProducto.FieldByName('external_url').AsString;
          lbPermalink.Caption         := DatosWordPress.mtProducto.FieldByName('permalink').AsString;
          edVariaciones.Text          := '';
          edVariaciones.Text          := AnsiReplaceText(DatosWordPress.mtProducto.FieldByName('variations').AsString,'[','');
          edVariaciones.Text          := AnsiReplaceText(edVariaciones.Text,']','');
          if DatosWordPress.mtProducto.FieldByName('price').AsString<>'' Then
            edPrecio_wp.Text       := FormatFloat(',0.00', StrToFloat(DatosWordPress.mtProducto.FieldByName('price').AsString));
          if DatosWordPress.mtProducto.FieldByName('regular_price').AsString<>'' Then
            edRegularPrec_wp.Text  := FormatFloat(',0.00', StrToFloat(DatosWordPress.mtProducto.FieldByName('regular_price').AsString));
          if DatosWordPress.mtProducto.FieldByName('sale_price').AsString<>'' then
            edSalePreci_wp.Text    := FormatFloat(',0.00', StrToFloat(DatosWordPress.mtProducto.FieldByName('sale_price').AsString));
          if DatosWordPress.mtProducto.FieldByName('stock_quantity').AsString<>'' then
            edStockWeb.Text    := FormatFloat(',0.00', StrToFloat(DatosWordPress.mtProducto.FieldByName('stock_quantity').AsString));
        end;
    end;
  Screen.Cursor:=crDefault;
end;

procedure TFormStock_2.dbchUsaCodigoBarraClick(Sender: TObject);
begin
  inherited;
  dbcCodigoBarra.Enabled:=dbchUsaCodigoBarra.Checked;
end;


procedure TFormStock_2.dbchWebClick(Sender: TObject);
begin
  inherited;
  rgTipoVariable.Enabled:= dbchWeb.Checked;
  if dbchWeb.Checked=False then
    begin
      lbVariaciones.Visible      :=False;
      dbcArticuloVariable.Visible:=False;
    end;
end;

procedure TFormStock_2.dbcArticuloVariableButtonClick(Sender: TObject);
begin
  inherited;
  BuscarVariable.Execute;
end;

procedure TFormStock_2.dbcArticuloVariableDblClick(Sender: TObject);
begin
  inherited;
  if Trim(dbcArticuloVariable.Text)<>'' then
    begin
      DatoNew := dbcarticuloVariable.Text;
      Recuperar.Execute;
    end;
end;

procedure TFormStock_2.dbcCodigoBarraButtonClick(Sender: TObject);
begin
  inherited;
  if FormCodigosBarra.Visible=True Then
     begin
       FormCodigosBarra.Visible:=False;
     end
   else
     begin
       FormCodigosBarra.Visible:=True;
       FormCodigosBarra.BringToFront;
     end;

end;

procedure TFormStock_2.rgTipoClick(Sender: TObject);
begin
  inherited;
  TraerSeries.Execute;
end;

procedure TFormStock_2.ReamarMovi_OfLogExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  DMMain_FD.fdcGestion.StartTransaction;
    try
      DatosStock.spRearmarMovFD.CLose;
      DatosStock.spRearmarMovFD.ParamByName('I_Codigo').Value:=DatosStock.CDSStockCODIGO_STK.Value;
      DatosStock.spRearmarMovFD.ExecProc;
      DatosStock.spRearmarMovFD.CLose;
      DMMain_FD.fdcGestion.Commit;
    except
      DMMain_FD.fdcGestion.Rollback;
      ShowMessage('No se pudo realizar el Proceso .....');
    end;
  DatoNew       := DatosStock.CDSStockCODIGO_STK.AsString;
  Screen.Cursor := crDefault;
  Recuperar.Execute;
 end;

procedure TFormStock_2.RearmarMovimientosExecute(Sender: TObject);
begin
  inherited;
  if (DMMain_FD.UsuarioAdministrador=True) Then
    begin
      if MessageDlg('Inicia el proceso de Re-Construción de movimientos..??',mtConfirmation,mbYesNo,0) = mrYes Then
        begin //*************'Procesar Movimientos.....');
          Screen.Cursor:=crHourGlass;
          DMMain_FD.fdcGestion.StartTransaction;
          try
            DatosStock.spRearmarMovFD.CLose;
            DatosStock.spRearmarMovFD.ParamByName('I_Codigo').Value:=DatosStock.CDSStockCODIGO_STK.Value;
            DatosStock.spRearmarMovFD.ExecProc;
            DMMain_FD.fdcGestion.Commit;
            DatosStock.spRearmarMovFD.CLose;
          //  ShowMessage('Finalizado el Proceso de Movimientos.....');
          except
            DMMain_FD.fdcGestion.Rollback;
            DatosStock.spRearmarMovFD.CLose;
            ShowMessage('No se pudo realizar el Proceso .....');
          end;
          DatoNew        := DatosStock.CDSStockCODIGO_STK.AsString;
          Screen.Cursor  := crDefault;
          Recuperar.Execute;
        end;
    end;
  Screen.Cursor:=crDefault;
end;



procedure TFormStock_2.chbEditarClick(Sender: TObject);
begin
  inherited;
  if chbEditar.Checked then
    sgGenerador.Options:=sgGenerador.Options+[goEditing]
  else
    sgGenerador.Options:=sgGenerador.Options-[goEditing];

end;

procedure TFormStock_2.chbGravadoIBClick(Sender: TObject);
begin
  inherited;
  if DSBase.State in [dsInsert,dsEdit] Then
    begin
      if chbGravadoIB.Checked Then
        begin
          dbcIngBruto.Enabled:=True;
          dbcIngBruto.Color  :=clWindow;
        end
      else
        begin
          dbcIngBruto.Enabled:=False;
          dbcIngBruto.Color  :=clBtnFace;
          DatosStock.CDSStockTASA_IB.Value:=-1;
        end;
    end;
end;

procedure TFormStock_2.BorrarHistorialExecute(Sender: TObject);
begin
  inherited;
  if Not(DatosStock.CDSListaHistorial.IsEmpty) Then
    begin
      DatosStock.QBorraHistorial.Close;
      DatosStock.QBorraHistorial.ParamByName('id').Value:=DatosStock.CDSListaHistorialID.Value;
      DatosStock.QBorraHistorial.ExecSQL;
      DatosStock.QBorraHistorial.Close;

      DatoNew:= DatosStock.CDSStockCODIGO_STK.Value;
      Recuperar.Execute;
    end;
end;

procedure TFormStock_2.BorrarStockProvExecute(Sender: TObject);
begin
  inherited;
  DatoNew:=DatosStock.CDSStockCODIGO_STK.AsString;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    DatosStock.QBorraProvStock.Close;
    DatosStock.QBorraProvStock.ParamByName('codigo').Value    :=DatosStock.CDSProvStockCODIGO_STK.Value;
    DatosStock.QBorraProvStock.ParamByName('proveedor').Value :=DatosStock.CDSProvStockCODIGO_PROVEEDOR.Value;
    DatosStock.QBorraProvStock.ExecSQL;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se borro el item......!!!');
  end;
  DatosStock.QBorraProvStock.Close;
  Recuperar.Execute;
end;


procedure TFormStock_2.spCodigosProveedoresClick(Sender: TObject);
begin
  inherited;
  if Not(DatosStock.CDSStock.IsEmpty) then
    begin
      if Not(Assigned(FormCodigoDeProveedores_Stock)) then
        FormCodigoDeProveedores_Stock:=TFormCodigoDeProveedores_Stock.Create(FormStock_2);
      FormCodigoDeProveedores_Stock.codigo:=DatosStock.CDSStockCODIGO_STK.AsString;
      FormCodigoDeProveedores_Stock.ShowModal;
      FreeAndNil(FormCodigoDeProveedores_Stock);
    end;
end;

procedure TFormStock_2.SpeedButton1Click(Sender: TObject);
begin
  inherited;
   if FormPreciosPorCantidades.Visible=False then
     begin
       FormPreciosPorCantidades.Visible:=True;
       FormPreciosPorCantidades.Show;
       FormPreciosPorCantidades.BringToFront;

     end
   else
     FormPreciosPorCantidades.Visible:=False;

end;



procedure TFormStock_2.SubPag3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  sbEstado.SimpleText:='';
end;

procedure TFormStock_2.dbgListaPreciosColEnter(Sender: TObject);
begin
  inherited;
  if dbgListaPrecios.SelectedIndex<>0 then
    begin
      if (dbgListaPrecios.SelectedIndex<=2) Then
       dbgListaPrecios.SelectedIndex:=3
      else
        if dbgListaPrecios.SelectedIndex in [4,5,6,8]  Then
          dbgListaPrecios.SelectedIndex:=7;
    end;
end;

procedure TFormStock_2.dbgListaPreciosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if gdSelected in State then
    dbgListaPrecios.Canvas.Font.Color:=clWhite
  else
    begin
      if DatosStock.CDSListaArtHAYSUBDET.Value>0 then
        dbgListaPrecios.Canvas.Font.Style:=[fsBold]
      else
        dbgListaPrecios.Canvas.Font.Style:=[];
      if DatosStock.CDSListaArtMUESTRAACTUALIZAPOREXCEPCION.Value='S' then
        dbgListaPrecios.Canvas.Font.Color:=clBlue;
    end;
  dbgListaPrecios.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormStock_2.dbgListaPreciosEnter(Sender: TObject);
begin
  inherited;
  dbgListaPrecios.SelectedIndex:=3
end;

procedure TFormStock_2.dbgListaPreciosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//  pnPreciosPorCant.Top:= 336 + ((dbgListaPrecios.DataSource.DataSet.RecNo-1) * 17 );

  if ((Key=VK_DOWN) and (Shift=[ssShift])) then
    begin
      if FormPreciosPorCantidades.Visible=False then
         FormPreciosPorCantidades.Visible:=True;
    end
  else
    if ((Key=VK_UP) and (Shift=[ssShift])) then
      begin
        if FormPreciosPorCantidades.Visible=True then
           FormPreciosPorCantidades.Visible:=False;
      end
    else
      if (Key=VK_UP) then
        dbgListaPrecios.DataSource.DataSet.Prior
      else
        if (Key=VK_DOWN) then
         dbgListaPrecios.DataSource.DataSet.Next;
  Key:=0;
end;

procedure TFormStock_2.dbgMovDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if CDSMovVentaANULADO.Value='S' Then
    dbgMov.Canvas.Font.Style :=[fsStrikeOut]
  else
    dbgMov.Canvas.Font.Style :=[];
  dbgMov.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormStock_2.dbgMovimientosDblClick(Sender: TObject);
var TipoCpbte:string;
TipoOp,IdCpbte:String;
begin
  inherited;
  TipoCpbte := DatosStock.CDSMovStockTIPOCPBTE.AsString;
  TipoOp    := DatosStock.CDSMovStockTIPOOPERACION.AsString;
  IdCpbte   := DatosStock.CDSMovStockID_COMPROB.AsString;

  if (TipoOp='V') and (TipoCpbte='NC') then
    begin
      if Not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(self);
      FormCpbte_2.DatoNew  :=IdCpbte;
      FormCpbte_2.TipoCpbte:=TipoCpbte;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
  if (TipoOp='V') and (TipoCpbte='FC') then
    begin
      if Not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(self);
      FormCpbte_2.DatoNew  :=IdCpbte;
      FormCpbte_2.TipoCpbte:=TipoCpbte;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (TipoOp='V') and (TipoCpbte='FO') then
      begin
        if Not(Assigned(FormCpbteCtdo_2)) then
          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
        FormCpbteCtdo_2.DatoNew  :=IdCpbte;
        FormCpbteCtdo_2.TipoCpbte:=TipoCpbte;
        FormCpbteCtdo_2.Recuperar.Execute;
        FormCpbteCtdo_2.Show;
      end
    else
    if (TipoOp='V') and (TipoCpbte='TK') then
      begin
        if Not(Assigned(FormTicketVta)) then
          FormTicketVta:=TFormTicketVta.Create(self);
        FormTicketVta.DatoNew  :=IdCpbte;
        FormTicketVta.TipoCpbte:=TipoCpbte;
        FormTicketVta.Recuperar.Execute;
        FormTicketVta.Show;
      end
    else
      if (TipoOp='C') and (TipoCpbte='FC') then
        begin
          if Not(Assigned(FormCompra_2)) then
            FormCompra_2:=TFormCompra_2.Create(self);
          FormCompra_2.DatoNew  :=IdCpbte;
          FormCompra_2.TipoCpbte:=TipoCpbte;
          FormCompra_2.Recuperar.Execute;
          FormCompra_2.Show;
        end
      else
        if (TipoOp='C') and (TipoCpbte='FO') then
          begin
            if Not(Assigned(FormCompraCtdo_2)) then
              FormCompraCtdo_2:=TFormCompraCtdo_2.Create(self);
            FormCompraCtdo_2.DatoNew  :=IdCpbte;
            FormCompraCtdo_2.TipoCpbte:=TipoCpbte;
            FormCompraCtdo_2.Recuperar.Execute;
            FormCompraCtdo_2.Show;
          end
        else
          if (TipoOp='J') then
            begin
              if Not(Assigned(FormAjustesStock)) then
                FormAjustesStock:=TFormAjustesStock.Create(self);
              FormAjustesStock.DatoNew  :=IdCpbte;
              FormAjustesStock.TipoCpbte:=TipoCpbte;
              FormAjustesStock.Recuperar.Execute;
              FormAjustesStock.Show;
            end
          else
            if (TipoOp='X') then
              begin
                if Not(Assigned(FormTransferencias)) then
                  FormTransferencias:=TFormTransferencias.Create(self);
                FormTransferencias.DatoNew  :=IdCpbte;
                FormTransferencias.TipoCpbte:=TipoCpbte;
                FormTransferencias.Recuperar.Execute;
                FormTransferencias.Show;
              end
            else
              if (TipoOp='M') and (Trunc(DatosStock.CDSMovStockSALE.AsFloat*100)>0) then
                begin
                  if Not(Assigned(FormRMAEnvios)) then
                    FormRMAEnvios:=TFormRMAEnvios.Create(self);
                  FormRMAEnvios.DatoNew  :=IdCpbte;
                  FormRMAEnvios.TipoCpbte:=TipoCpbte;
                  FormRMAEnvios.Recuperar.Execute;
                  FormRMAEnvios.Show;
                end
              else
                if (TipoOp='A') and (Trunc(DatosStock.CDSMovStockENTRA.AsFloat*100)>0) then
                  begin
                    if Not(Assigned(FormRMARecepcion)) then
                      FormRMARecepcion:=TFormRMARecepcion.Create(self);
                    FormRMARecepcion.DatoNew  :=IdCpbte;
                    FormRMARecepcion.TipoCpbte:=TipoCpbte;
                    FormRMARecepcion.Recuperar.Execute;
                    FormRMARecepcion.Show;
                  end
                else
                  if (TipoOp='L') then
                    begin
                      if Not(Assigned(FormPlanillaArmado)) then
                        FormPlanillaArmado:=TFormPlanillaArmado.Create(self);
                      FormPlanillaArmado.DatoNew  :=IdCpbte;
                      FormPlanillaArmado.TipoCpbte:=TipoCpbte;
                      FormPlanillaArmado.Recuperar.Execute;
                      FormPlanillaArmado.Show;
                    end
                  else
                    if (TipoOp='P') then
                      begin
                        if Not(Assigned(FormOrdenProduccion)) then
                          FormOrdenProduccion:=TFormOrdenProduccion.Create(self);
                        FormOrdenProduccion.DatoNew  :=IdCpbte;
                        FormOrdenProduccion.TipoCpbte:=TipoCpbte;
                        FormOrdenProduccion.Recuperar.Execute;
                        FormOrdenProduccion.Show;
                      end
                    else
                      if (TipoOp='W') then
                        begin
                          if Not(Assigned(FormRtoEntregaAcopio)) then
                            FormRtoEntregaAcopio:=TFormRtoEntregaAcopio.Create(self);
                          FormRtoEntregaAcopio.DatoNew  :=IdCpbte;
                          FormRtoEntregaAcopio.TipoCpbte:=TipoCpbte;
                          FormRtoEntregaAcopio.Recuperar.Execute;
                          FormRtoEntregaAcopio.Show;
                        end
                      else
                        if (TipoOp='T') or (TipoOp='E')  then
                          begin
                            if Not(Assigned(FormRemitos)) then
                              FormRemitos:=TFormRemitos.Create(self);
                            FormRemitos.DatoNew  :=IdCpbte;
                            FormRemitos.TipoCpbte:=TipoCpbte;
                            FormRemitos.Recuperar.Execute;
                            FormRemitos.Show;
                          end
                        else
                          if (TipoOp='R') then
                            begin
                              if Not(Assigned(FormRecepcionMercaderia)) then
                                 FormRecepcionMercaderia:= TFormRecepcionMercaderia.Create(self);
                              FormRecepcionMercaderia.DatoNew  :=IdCpbte;
                              FormRecepcionMercaderia.TipoCpbte:=TipoCpbte;
                              FormRecepcionMercaderia.Recuperar.Execute;
                              FormRecepcionMercaderia.Show;
                            end;


end;

procedure TFormStock_2.dbgMovimientosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
 if (Trim(DatosStock.CDSMovStockDETALLE.AsString)='ANULADOS') then
   dbgMovimientos.Canvas.Font.Color:=clRed;
 if (gdFocused in State) then
   begin
     dbgMovimientos.canvas.brush.color := ClBlack;
     dbgMovimientos.canvas.Font.color  := clWhite;
   end;
    //Esta línea es nueva
    dbgMovimientos.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormStock_2.dbgMovimientosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if ( DSBase.State in [dsBrowse]  ) and (Not( dbgMovimientos.DataSource.DataSet.IsEmpty )) Then
    sbEstado.SimpleText:='Dbl+Clik = Ver Comprobante'
  else
    sbEstado.SimpleText:='';
end;

procedure TFormStock_2.dbgMovSerieDblClick(Sender: TObject);
begin
  inherited;
 if dbgMovSerie.DataSource.DataSet.FieldByName('ORIGEN').Value='V' then
    begin
      if dbgMovSerie.DataSource.DataSet.FieldByName('TIPOCPBTE').Value='FC' then
        begin
          if Not(Assigned(FormCpbte_2)) then
            FormCpbte_2:=TFormCpbte_2.Create(Self);
          FormCpbte_2.DatoNew  := dbgMovSerie.DataSource.DataSet.FieldByName('ID_CPBTE').AsString;
          FormCpbte_2.TipoCpbte:='FC';
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
          FormCpbte_2.BringToFront;
        end
      else
        if dbgMovSerie.DataSource.DataSet.FieldByName('TIPOCPBTE').Value='FO' then
          begin
            if Not(Assigned(FormCpbteCtdo_2)) then
              FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
            FormCpbteCtdo_2.DatoNew  :=dbgMovSerie.DataSource.DataSet.FieldByName('ID_CPBTE').AsString;
            FormCpbteCtdo_2.TipoCpbte:='FO';
            FormCpbteCtdo_2.Recuperar.Execute;
            FormCpbteCtdo_2.Show;
            FormCpbteCtdo_2.BringToFront;
        end
    end
  else

  if  dbgMovSerie.DataSource.DataSet.FieldByName('ORIGEN').Value='C' then
    begin
      if dbgMovSerie.DataSource.DataSet.FieldByName('TIPOCPBTE').Value='FC' then
        begin
          if Not(Assigned(FormCompra_2)) then
            FormCompra_2:=TFormCompra_2.Create(Self);
          FormCompra_2.DatoNew  :=dbgMovSerie.DataSource.DataSet.FieldByName('ID_CPBTE').AsString;
          FormCompra_2.TipoCpbte:='FC';
          FormCompra_2.Recuperar.Execute;
          FormCompra_2.Show;
          FormCompra_2.BringToFront;
        end
      else
        if dbgMovSerie.DataSource.DataSet.FieldByName('TIPOCPBTE').Value='FO' then
          begin
            if Not(Assigned(FormCompraCtdo_2)) then
              FormCompraCtdo_2:=TFormCompraCtdo_2.Create(Self);
            FormCompraCtdo_2.DatoNew  :=dbgMovSerie.DataSource.DataSet.FieldByName('ID_CPBTE').AsString;
            FormCompraCtdo_2.TipoCpbte:='FO';
            FormCompraCtdo_2.Recuperar.Execute;
            FormCompraCtdo_2.Show;
            FormCompraCtdo_2.BringToFront;
        end
    end
  else

  if dbgMovSerie.DataSource.DataSet.FieldByName('ORIGEN').Value='J' then
    begin
      if dbgMovSerie.DataSource.DataSet.FieldByName('TIPOCPBTE').Value='AS' then
        begin
          if Not(Assigned(FormAjustesStock)) then
            FormAjustesStock:=TFormAjustesStock.Create(Self);
          FormAjustesStock.DatoNew  :=dbgMovSerie.DataSource.DataSet.FieldByName('ID_CPBTE').AsString;
          FormAjustesStock.TipoCpbte:='AS';
          FormAjustesStock.Recuperar.Execute;
          FormAjustesStock.Show;
          FormAjustesStock.BringToFront;
        end
    end

  else

  if dbgMovSerie.DataSource.DataSet.FieldByName('ORIGEN').Value='S' then
    begin
      if dbgMovSerie.DataSource.DataSet.FieldByName('TIPOCPBTE').Value='AN' then
        begin
          if Not(Assigned(FormAjustesSeries)) then
            FormAjustesSeries:=TFormAjustesSeries.Create(Self);
          FormAjustesSeries.DatoNew  :=dbgMovSerie.DataSource.DataSet.FieldByName('ID_CPBTE').AsString;
          FormAjustesSeries.TipoCpbte:='AN';
          FormAjustesSeries.Recuperar.Execute;
          FormAjustesSeries.Show;
          FormAjustesSeries.BringToFront;
        end
    end;

 end;

procedure TFormStock_2.dbcTablaPrecioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosStock.CDSStockID_TABLAPRECIOS.Clear;
      DatosStock.CDSStockID_TABLAPRECIOSDETALLE.Clear;
      DatosStock.CDSStockMUESTRATABLAPRECIO1.Clear;
      DatosStock.CDSStockMUESTRATABLAPRECIO2.Clear;
      DatosStock.CDSStockCODIGO_PRECIO.Clear;
      DatosStock.CDSStockMUESTRATABLAPRECIODETALLE.Clear;
    end;
end;

procedure TFormStock_2.dbcCodigoPrecioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosStock.CDSStockMUESTRATABLAPRECIO1.Clear;
      DatosStock.CDSStockMUESTRATABLAPRECIO2.Clear;
      DatosStock.CDSStockCODIGO_PRECIO.Clear;
    end;
end;

procedure TFormStock_2.BuscarTablaPrecioExecute(Sender: TObject);
begin
  inherited;
  DatosStock.CDSBuscaTablaPrecioCab.Close;
  DatosStock.CDSBuscaTablaPrecioCab.Open;
  ComBuscadorTablaPrecios.Execute;
  IF comBuscadorTablaPrecios.rOK THEN
    DatosStock.CDSStockID_TABLAPRECIOSSetText(DatosStock.CDSStockID_TABLAPRECIOS,IntToStr(comBuscadorTablaPrecios.Id));
  DatosStock.CDSBuscaTablaPrecioCab.Close;
end;


procedure TFormStock_2.BuscarVariableExecute(Sender: TObject);
begin
  inherited;
  DatosStock.QBuscadorArticulosWeb.Close;
  DatosStock.QBuscadorArticulosWeb.Open;
  comBuscadoArticuloWeb.Execute;
  if comBuscadoArticuloWeb.Id<>'' then
    BEGIN
      if DSBase.DataSet.State<>dsbrowse then
        DatosStock.CDSStockCODIGO_ART_VARIABLE.AsString:=comBuscadoArticuloWeb.Id;
    END
  else
    if DSBase.DataSet.State<>dsbrowse then
      DatosStock.CDSStockARTICULO_VARIABLE.AsString:='';
  DatosStock.QBuscadorArticulosWeb.Close;

end;

procedure TFormStock_2.BuscaURLExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsInsert,dsEdit]) Then
     begin
       if not(Assigned(FormUrl)) and (DSBase.State in [dsInsert,dsEdit]) Then
        FormUrl:=TFormUrl.Create(self);
      FormUrl.Url:=DatosStock.CDSStockURL.Value;
      FormUrl.ShowModal;
      DatosStock.CDSStockURL.Value:=FormURL.Url;
    end;
end;

procedure TFormStock_2.Button1Click(Sender: TObject);
VAR Lon1,Lon2:integer;
NomFile:String;
begin
  inherited;
  if opdImagenes.Execute then
    if opdImagenes.FileName<>'' then
      if DSBase.State in [dsInsert,dsEdit] then
        begin
          DatosStock.CDSStockFotos.Append;
          Lon1 :=Length(opdImagenes.InitialDir);
          Lon2 :=Length(opdImagenes.FileName);
          NomFile :=Copy(opdImagenes.FileName,Lon1+2,Lon2-Lon1-1);
          DatosStock.CDSStockFotosFOTO.Value:=NomFile;
          DatosStock.CDSStockFotos.Post;
          imgFoto.Picture.LoadFromFile(opdImagenes.InitialDir+'\'+DatosStock.CDSStockFotosFOTO.Value);
        end;
end;



procedure TFormStock_2.btGenerarClick(Sender: TObject);
var
  I,CodAux  : Integer;
  RoturS    : Integer;
  Codigo    : String;
begin
  //RowN:=spPaso.Value;
  sgGenerador.Clear;
  sgGenerador.ColumnHeaders.Append('Codigo Alt');
  sgGenerador.ColumnHeaders.Append('Descripcion');
  sgGenerador.ColumnHeaders.Append('Largo');
  sgGenerador.ColumnHeaders.Append('Rotura');
  sgGenerador.ColumnHeaders.Append('Alto');
  sgGenerador.ColumnHeaders.Append('Olla');
  sgGenerador.ColumnHeaders.Append('Codigo');
  sgGenerador.ColumnHeaders.Append('Rubro');
  sgGenerador.ColumnHeaders.Append('Sub Rubro');

  if Trim(edCodSubRubro.Text)='***' then
    raise Exception.Create('Falta Sub/Rubro....');

  RoturS               := StrToInt(edRoturaDesde.Text);
  sgGenerador.RowCount := StrToInt(edRoturaHasta.Text)- StrToInt(edRoturaDesde.Text);
  Codigo               := Generar_Codigo;
  if chAlfa.Checked=False Then
    codigo := copy('00000000',1,8-length(CODIGO)) + Codigo
  else
    begin
      if rgJustifica.ItemIndex=1 Then
        begin
          if cbChar.ItemIndex=0 Then
            codigo  := Codigo+copy('        ',1,8-length(CODIGO));
          if cbChar.ItemIndex=1 Then
            codigo  := Codigo+copy('00000000',1,8-length(CODIGO));
          if cbChar.ItemIndex=2 Then
            codigo  := Codigo+copy('--------',1,8-length(CODIGO));
          if cbChar.ItemIndex=3 Then
            codigo  := Codigo+copy('........',1,8-length(CODIGO));
        end
      else
        if rgJustifica.ItemIndex=0 Then
          begin
            if cbChar.ItemIndex=0 Then
              codigo   := copy('        ',1,8-length(CODIGO))+Codigo;
            if cbChar.ItemIndex=1 Then
              codigo   := copy('00000000',1,8-length(CODIGO))+Codigo;
            if cbChar.ItemIndex=2 Then
              codigo   := copy('--------',1,8-length(CODIGO))+Codigo;
            if cbChar.ItemIndex=3 Then
              codigo   := copy('........',1,8-length(CODIGO))+Codigo;
          end;
    end;

  i:=1;
  sgGenerador.RowCount:=2;
  repeat

    sgGenerador.Cells[0,I] := cbdTipoGenerado.Value+edLargo.Text+'R'+IntToStr(RoturS)+edOlla.text;
    sgGenerador.Cells[1,I] := edNombreArticulo.Text+cbdTipoGenerado.Value+'-'+edLargo.Text+'-R-'+IntToStr(RoturS)+edAlto.Text+'-'+edOlla.text;
    sgGenerador.Cells[2,I] := edLargo.Text;
    sgGenerador.Cells[3,I] := IntToStr(RoturS);
    sgGenerador.Cells[4,I] := edAlto.text;
    sgGenerador.Cells[5,I] := edOlla.text;

    sgGenerador.Cells[6,I] := Codigo;
    sgGenerador.Cells[7,I] := edCodRubStock.Text;
    sgGenerador.Cells[8,I] := edCodSubRubro.Text;

    RoturS := RoturS+spPaso.Value;
    i      := i+1;
    sgGenerador.RowCount:=sgGenerador.RowCount+1;
    CodAux := StrToInt(Codigo)+1;
    Codigo := AnsiRightStr('00000000'+IntToStr(CodAux),8);

   until RoturS>StrToInt(edRoturaHasta.Text) ;
end;

procedure TFormStock_2.btGravarClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  for I := 1 to sgGenerador.RowCount-1 do
    begin
      if Trim(sgGenerador.Cells[7,I])<>'' then
        begin
          spABMStock.Close;
          spABMStock.ParamByName('CODIGO').AsString             := sgGenerador.Cells[6,I];
          spABMStock.ParamByName('Detalle').AsString            := sgGenerador.Cells[1,I];
          spABMStock.ParamByName('Detalle_Adicional').AsString  := sgGenerador.Cells[1,I];
          spABMStock.ParamByName('costo_gravado').Value         := 0;
          spABMStock.ParamByName('codigo_alternativo').AsString := sgGenerador.Cells[0,I];
          spABMStock.ParamByName('PRESENTACION_CANTIDAD').Value := 0;
          spABMStock.ParamByName('PRESENTACION_UNIDAD').Value   := '';
          spABMStock.ParamByName('Marca').AsString              := '';
          spABMStock.ParamByName('Rubro').AsString              := edCodRubStock.Text;
          spABMStock.ParamByName('SubRubro').AsString           := edCodSubRubro.Text;
          spABMStock.ParamByName('modo_gravamen').AsString      := 'G';
          spABMStock.ParamByName('tasa_iva').AsInteger          := 1;
          spABMStock.ParamByName('sobretasa_iva').AsInteger     := 1;
          spABMStock.ParamByName('moneda').AsFloat              := 1;
          spABMStock.ParamByName('costo_gravado').Value         := 0;

          if Trim(sgGenerador.Cells[2,I])<>'' Then
            spABMStock.ParamByName('Largo1').Value              := StrToFloat(sgGenerador.Cells[2,I])
          else
            spABMStock.ParamByName('Largo1').Value              := 0;

          if Trim(sgGenerador.Cells[3,I])<>''then
            spABMStock.ParamByName('Rotura1').Value             := StrToFloat(sgGenerador.Cells[3,I])
          else
            spABMStock.ParamByName('Rotura1').Value             := 0;

          spABMStock.ParamByName('Cima').Value                  := 0;
          spABMStock.ParamByName('Base').Value                  := 0;

          if Trim(sgGenerador.Cells[4,I])<>'' then
            spABMStock.ParamByName('Alto_Acc').Value            := StrToFloat(sgGenerador.Cells[4,I])
          else
            spABMStock.ParamByName('Alto_Acc').Value            := 0;

          if Trim(sgGenerador.Cells[5,I])<>'' then
            spABMStock.ParamByName('Diametro_olla').Value       := StrToFloat(sgGenerador.Cells[5,I])
          else
            spABMStock.ParamByName('Diametro_olla').Value       := 0;

          spABMStock.ExecProc;
        end;
    end;
  spABMStock.Close;
  sgGenerador.Clear;

end;

procedure TFormStock_2.btSincronizarWebProductosClick(Sender: TObject);
var i,x1,x2:Integer;
S,s2:string;
begin
  inherited;
  if (dbgProductos.RowCount>0) and Not(dbgProductos.DataSource.DataSet.IsEmpty) then
    begin
      for i:= 1 to dbgProductos.RowCount-1 do
        begin
          DatosStock.spABMStockWord.Close;
          DatosStock.spABMStockWord.ParamByName('codigo').AsString            := Copy(dbgProductos.Cells[14,i],1,8);
          DatosStock.spABMStockWord.ParamByName('detalle_adicional').AsString := UpperCase(dbgProductos.Cells[1,i]);
          DatosStock.spABMStockWord.ParamByName('descripcion_corta').Value    := AnsiReplaceText( AnsiReplaceText(dbgProductos.Cells[13,i],'<p>',''),'</p>','');
          DatosStock.spABMStockWord.ParamByName('descripcion_larga').Value    := AnsiReplaceText( AnsiReplaceText(dbgProductos.Cells[12,i],'<p>',''),'</p>','');
          s := dbgProductos.Cells[54,i];
          s2:='';


          s:= AnsiReplaceText(S,'[','');
          S:= AnsiReplaceText(s,']','');
          S:= AnsiReplaceText(s,'{','');
          S:= AnsiReplaceText(s,'}','');

          while Pos('id',S)>0 do
            begin
              if Pos('id',s)>0 then
                begin
                  x1:= AnsiPos('id',s)+4;
                  x2:= AnsiPos('name',s);
                  if s2='' then
                    s2:= AnsiMidStr(S,x1,x2-x1-2)
                  else
                    if s2<>'' then
                      s2:= s2+','+AnsiMidStr(S,x1,x2-x1-2);


                  Delete(s,1,AnsiPos('name',s)+5);
                end;
            end;
          DatosStock.spABMStockWord.ParamByName('categorias').AsString        := s2;
          DatosStock.spABMStockWord.ExecProc;
          DatosStock.spABMStockWord.Close;
        end;

    end;
end;

function TFormStock_2.PagesQuery(): string;
var
  page :Integer;
  per_page: integer;
begin
  Result:='';
  try
    page := StrToInt(edPagina.Text);
  except
    page := 0;
  end;
  try
    per_page := StrToInt(spItemsPag.Text);
  except
    per_page := 0;
  end;
  if (page <> 0) then
    Result := '?page=' + page.ToString;

  if (per_page <> 0) then
  begin
    if length(Result)>0 then
      Result:=Result+'&per_page='+per_page.ToString
    else Result:='?per_page='+per_page.ToString
  end;
end;



procedure TFormStock_2.btVerControlMovClick(Sender: TObject);
begin
  inherited;
  edEntra.Value:=0;
  edSale.Value :=0;
  if rgTipoMov.ItemIndex=0 then
    begin
     CDSMovVenta.Close;
     CDSMovVenta.Params.ParamByName('codigo').Value:=DatosStock.CDSStockCODIGO_STK.Value;
     CDSMovVenta.Params.ParamByName('Desde').Value :=Desde_2.Date;
     CDSMovVenta.Params.ParamByName('Hasta').Value :=Hasta_2.Date;
     CDSMovVenta.Open;
     DSMovimientos.DataSet:=CDSMovVenta;

     CDSMovVenta.First;
     CDSMovVenta.DisableControls;
     while Not(CDSMovVenta.Eof) do
       begin
         edSale.Value :=edSale.Value+CDSMovVentaSALE.AsFloat;
         edEntra.Value:=edEntra.Value+CDSMovVentaENTRA.AsFloat;
         CDSMovVenta.Next;
       end;
     CDSMovVenta.First;
     CDSMovVenta.EnableControls;

    end
  else
    if rgTipoMov.ItemIndex=1 then
      begin
        CDSMovCompra.Close;
        CDSMovCompra.Params.ParamByName('codigo').Value:=DatosStock.CDSStockCODIGO_STK.Value;
        CDSMovCompra.Params.ParamByName('Desde').Value :=Desde_2.Date;
        CDSMovCompra.Params.ParamByName('Hasta').Value :=Hasta_2.Date;
        CDSMovCompra.Open;
        DSMovimientos.DataSet:=CDSMovCompra;

        CDSMovCompra.First;
        CDSMovCompra.DisableControls;
        while Not(CDSMovCompra.Eof) do
          begin
            edSale.Value :=edSale.Value+CDSMovCompraSALE.AsFloat;
            edEntra.Value:=edEntra.Value+CDSMovCompraENTRA.AsFloat;
            CDSMovCompra.Next;
          end;
        CDSMovCompra.First;
        CDSMovCompra.EnableControls;
      end;

end;

procedure TFormStock_2.BuscarTablaPrecioDetalleExecute(Sender: TObject);
begin
  inherited;
  if DatosStock.CDSStockID_TABLAPRECIOS.AsString<>'' Then
    begin
      DatosStock.CDSBuscaTablaPrecioDet.Close;
      DatosStock.CDSBuscaTablaPrecioDet.Params.ParamByName('id_cab').Value:=DatosStock.CDSStockID_TABLAPRECIOS.AsInteger;
      DatosStock.CDSBuscaTablaPrecioDet.Open;
      ComBuscadorCodTablaPrecios.Execute;
      if comBuscadorCodTablaPrecios.rOk Then
        DatosStock.CDSStockCODIGO_PRECIOSetText(DatosStock.CDSStockCODIGO_PRECIO,comBuscadorCodTablaPrecios.Id);
      DatosStock.CDSBuscaTablaPrecioDet.Close;
    end
  else
    ShowMessage('Debe seleccionar la Lista que va usar.....');
end;

///////////////////////////////////////////////////////////////////////////////////////
function ObtenerProductoPorSKU(const WooAPI: TWooCommerceAPI; const SKU: string; out ProductID: string): Boolean;
var
  Response: TWooCommerceResponse;
  JSONArr: TJSONArray;
  JSONObj: TJSONObject;
begin
  Result := False;
  ProductID := '';

  // Realizar la solicitud GET para obtener el producto por SKU
  Response := WooAPI.Get('products?sku=' + SKU);
  if Response.Status = 200 then
  begin
    JSONArr := TJSONObject.ParseJSONValue(Response.Content) as TJSONArray;
    if JSONArr.Count > 0 then
    begin
      JSONObj := JSONArr.Items[0] as TJSONObject;
      ProductID := JSONObj.GetValue<string>('id');
      Result := True;
    end;
  end;
end;

function ObtenerVariacionPorSKU(const WooAPI: TWooCommerceAPI; const ProductID: string; const VariationSKU: string; out VariationID: string): Boolean;
var
  Response: TWooCommerceResponse;
  JSONArr: TJSONArray;
  JSONObj: TJSONObject;
  I: Integer;
begin
  Result := False;
  VariationID := '';

  // Realizar la solicitud GET para obtener las variaciones del producto
  Response := WooAPI.Get(Format('products/%s/variations', [ProductID]));
  if Response.Status = 200 then
  begin
    JSONArr := TJSONObject.ParseJSONValue(Response.Content) as TJSONArray;
    for I := 0 to JSONArr.Count - 1 do
    begin
      JSONObj := JSONArr.Items[I] as TJSONObject;
      if JSONObj.GetValue<string>('sku') = VariationSKU then
      begin
        VariationID := JSONObj.GetValue<string>('id');
        Result := True;
        Break;
      end;
    end;
  end;
end;

procedure ModificarVariacion(const WooAPI: TWooCommerceAPI; const ProductID: string; const VariationID: string; const NewPrice: string);
var
  Response: TWooCommerceResponse;
  JSONObj: TJSONObject;
begin
  // Crear el JSON con los datos que deseas actualizar
  JSONObj := TJSONObject.Create;
  try
    JSONObj.AddPair('regular_price', NewPrice);

    // Realizar la solicitud PUT para modificar la variación
    Response := WooAPI.Put(Format('products/%s/variations/%s', [ProductID, VariationID]), JSONObj.ToString);
    if Response.Status = 200 then
    begin
      Writeln('Variación modificada exitosamente.');
    end
    else
    begin
      Writeln('Error al modificar la variación. Código de estado: ' + Response.Status.ToString);
    end;
  finally
    JSONObj.Free;
  end;
end;

///////////////////////////////////////////////////////////////////////////////////////

end.
