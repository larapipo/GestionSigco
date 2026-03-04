unit UConversorFcVta_a_Comp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, JvAppStorage,System.AnsiStrings,
  JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, JvDBLookup,
  Vcl.Samples.Gauges, JvBaseEdits, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, JvExMask,
  JvToolEdit, Datasnap.DBClient,DateUtils,IniFiles, Datasnap.Provider,DBXCommon, 
  JvMemoryDataset, Data.DBXDataSnap, IPPeerClient, JvExExtCtrls, JvExtComponent,
  JvPanel, JvExStdCtrls, JvCombobox, Datasnap.DSConnect,Math, Vcl.DBCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, JvDBLookupComboEdit, cxCheckBox, Vcl.Menus,Vcl.Clipbrd, CompBuscador,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinBlack, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  System.ImageList, AdvGroupBox, AdvDBLookupComboBox, AdvUtil, AdvObj, BaseGrid,
  AdvGrid, DBAdvGrid;

 {$R-}

type
  TFormConversorFcVta_a_Compra = class(TFormABMBase)
    pnDatosAImportar: TPanel;
    Label1: TLabel;
    lbDesde: TJvLabel;
    lbHasta: TJvLabel;
    JvDBStatusLabel3: TJvDBStatusLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    dbgFcVtaCab: TDBGrid;
    dbgFcVtaDet: TDBGrid;
    chbPorDia: TCheckBox;
    edTotal: TJvCalcEdit;
    pnDatos: TPanel;
    DSFcVtaCabXML: TDataSource;
    DSFcVtaDetXML: TDataSource;
    DSFcVtaImpXML: TDataSource;
    pcImportacion: TPageControl;
    Datos: TTabSheet;
    Configuracion: TTabSheet;
    Label7: TLabel;
    rxDbcCaja: TJvDBLookupCombo;
    JvLabel2: TJvLabel;
    dbcDeposito: TJvDBLookupCombo;
    dbgImportados: TDBGrid;
    Label3: TLabel;
    JvDBStatusLabel1: TJvDBStatusLabel;
    DSFc_A: TDataSource;
    DSFc_B: TDataSource;
    DSFo_A: TDataSource;
    DSFo_B: TDataSource;
    DSNc_A: TDataSource;
    DSNc_B: TDataSource;
    DSNd_A: TDataSource;
    DSNd_B: TDataSource;
    DSFc_C: TDataSource;
    DSFo_C: TDataSource;
    JvLabel12: TJvLabel;
    dbcSucursal: TJvDBLookupCombo;
    DSSucursal: TDataSource;
    DSDeposito: TDataSource;
    DSCaja: TDataSource;
    MTClientes: TJvMemoryData;
    MTClientesCodigo: TStringField;
    MTClientesNombre: TStringField;
    DSMClientes: TDataSource;
    dbcClientes: TJvDBLookupCombo;
    Relacion: TTabSheet;
    dbgRelacion: TDBGrid;
    CDSRelacion: TClientDataSet;
    DSPRelacion: TDataSetProvider;
    DSRelacion: TDataSource;
    CDSRelacionPROVEEDOR: TStringField;
    CDSRelacionCLIENTE: TStringField;
    CDSRelacionMUESTRANOMBRE: TStringField;
    btImportar: TBitBtn;
    MemoryData: TJvMemoryData;
    MemoryDataNROCPBTE: TStringField;
    MemoryDataNOMBRE: TStringField;
    MemoryDataTOTAL: TFloatField;
    MemoryDataID: TIntegerField;
    DSMemory: TDataSource;
    VerCpbte: TAction;
    MemoryDataTIPOCPBTE: TStringField;
    edTotalImportado: TJvCalcEdit;
    BorrarImportados: TAction;
    BuscarArticulo: TAction;
    JvLabel13: TJvLabel;
    ceCentroCosto: TJvDBLookupCombo;
    DSCtroCosto: TDataSource;
    Panel2: TPanel;
    RxLabel6: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    JvLabel10: TJvLabel;
    JvLabel8: TJvLabel;
    JvLabel9: TJvLabel;
    JvLabel11: TJvLabel;
    dbcFacturaA: TJvDBLookupCombo;
    dbcFacturaB: TJvDBLookupCombo;
    dbcF_ContadoA: TJvDBLookupCombo;
    dbcF_ContadoB: TJvDBLookupCombo;
    dbcNc_A: TJvDBLookupCombo;
    dbcNd_A: TJvDBLookupCombo;
    dbcNd_B: TJvDBLookupCombo;
    dbcNc_B: TJvDBLookupCombo;
    dbcF_ContadoC: TJvDBLookupCombo;
    dbcFacturaC: TJvDBLookupCombo;
    pcModoConeccion: TPageControl;
    tsImportacionXML: TTabSheet;
    JvLabel1: TJvLabel;
    edPathOrigen: TEdit;
    lbDirectorio: TLabel;
    btImpoXML: TBitBtn;
    tbImportacionDataSnap: TTabSheet;
    sbNuevo: TSpeedButton;
    btTraerDatos: TButton;
    JvLabel14: TJvLabel;
    DesdeW: TJvDateEdit;
    JvLabel15: TJvLabel;
    HastaW: TJvDateEdit;
    UpDown2: TUpDown;
    JvDBStatusLabel2: TJvDBStatusLabel;
    edTotalDet: TJvCalcEdit;
    sbDelete: TSpeedButton;
    spConectar: TSpeedButton;
    ImageList2: TImageList;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label2: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    imConectado: TImage;
    imDesconectado: TImage;
    lbEstadoConeccion: TLabel;
    JvLabel16: TJvLabel;
    JvLabel17: TJvLabel;
    FactImportadas: TTabSheet;
    Label12: TLabel;
    JvDBStatusLabel4: TJvDBStatusLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    CDSFactImportadas: TClientDataSet;
    DSPFacImportadas: TDataSetProvider;
    DSFacImportadas: TDataSource;
    CDSFactImportadasID_FC: TIntegerField;
    CDSFactImportadasTIPOCPBTE: TStringField;
    CDSFactImportadasCLASECPBTE: TStringField;
    CDSFactImportadasLETRAFAC: TStringField;
    CDSFactImportadasSUCFAC: TStringField;
    CDSFactImportadasNUMEROFAC: TStringField;
    CDSFactImportadasNROCPBTE: TStringField;
    CDSFactImportadasCODIGO: TStringField;
    CDSFactImportadasRAZONSOCIAL: TStringField;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1RAZONSOCIAL: TcxGridDBColumn;
    CDSFactImportadasTOTAL_RECALCULADO: TFloatField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    btFcImportadas: TButton;
    pnDatosImportados: TPanel;
    btNovedades: TButton;
    BitBtn2: TBitBtn;
    Progress: TGauge;
    CDSFactImportadasSELECCION: TBooleanField;
    ReasignaCtroCosto: TAction;
    Label13: TLabel;
    VerCpbteAplicado: TAction;
    PopupMenu1: TPopupMenu;
    VerCpbteAplicado1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    Verificar: TAction;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    Verificar1: TMenuItem;
    LimpiarMarcas: TAction;
    N1: TMenuItem;
    LimpiarMarcas1: TMenuItem;
    ReASignaCtrCostoLote: TAction;
    ReAsignaCtrCosto1: TMenuItem;
    chFiltroRelacion: TCheckBox;
    DSRubros: TDataSource;
    DSSubRubro: TDataSource;
    IngresarArticulos: TAction;
    BorrarFc: TAction;
    N2: TMenuItem;
    BorrarFc1: TMenuItem;
    BorrarFcAll: TAction;
    BorrarTodaslasFc1: TMenuItem;
    Label14: TLabel;
    Label15: TLabel;
    cbRubro: TJvDBLookupCombo;
    Label16: TLabel;
    cbSubRubro: TJvDBLookupCombo;
    ModificarArticulo: TAction;
    FechaFiscal: TJvDateEdit;
    chbFechaFiscal: TCheckBox;
    QFc_A: TFDQuery;
    QFc_AID_COMPROBANTE: TIntegerField;
    QFc_ATIPO_COMPROB: TStringField;
    QFc_ACLASE_COMPROB: TStringField;
    QFc_ADENOMINACION: TStringField;
    QFc_ASUCURSAL: TIntegerField;
    QFc_ALETRA: TStringField;
    QFo_B: TFDQuery;
    QNc_A: TFDQuery;
    QNc_B: TFDQuery;
    QNd_A: TFDQuery;
    QFo_A: TFDQuery;
    QFc_B: TFDQuery;
    QFc_BID_COMPROBANTE: TIntegerField;
    QFc_BTIPO_COMPROB: TStringField;
    QFc_BCLASE_COMPROB: TStringField;
    QFc_BDENOMINACION: TStringField;
    QFc_BSUCURSAL: TIntegerField;
    QFc_BLETRA: TStringField;
    QFo_AID_COMPROBANTE: TIntegerField;
    QFo_ATIPO_COMPROB: TStringField;
    QFo_ACLASE_COMPROB: TStringField;
    QFo_ADENOMINACION: TStringField;
    QFo_ASUCURSAL: TIntegerField;
    QFo_ALETRA: TStringField;
    QFo_BID_COMPROBANTE: TIntegerField;
    QFo_BTIPO_COMPROB: TStringField;
    QFo_BCLASE_COMPROB: TStringField;
    QFo_BDENOMINACION: TStringField;
    QFo_BSUCURSAL: TIntegerField;
    QFo_BLETRA: TStringField;
    QNc_AID_COMPROBANTE: TIntegerField;
    QNc_ATIPO_COMPROB: TStringField;
    QNc_ACLASE_COMPROB: TStringField;
    QNc_ADENOMINACION: TStringField;
    QNc_ASUCURSAL: TIntegerField;
    QNc_ALETRA: TStringField;
    QNc_BID_COMPROBANTE: TIntegerField;
    QNc_BTIPO_COMPROB: TStringField;
    QNc_BCLASE_COMPROB: TStringField;
    QNc_BDENOMINACION: TStringField;
    QNc_BSUCURSAL: TIntegerField;
    QNc_BLETRA: TStringField;
    QNd_AID_COMPROBANTE: TIntegerField;
    QNd_ATIPO_COMPROB: TStringField;
    QNd_ACLASE_COMPROB: TStringField;
    QNd_ADENOMINACION: TStringField;
    QNd_ASUCURSAL: TIntegerField;
    QNd_ALETRA: TStringField;
    QSucursal: TFDQuery;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QSucursalDIRECCION: TStringField;
    QSucursalLOCALIDAD: TStringField;
    QSucursalTELEFONO1: TStringField;
    QSucursalTELEFONO2: TStringField;
    QSucursalRECARGO: TFloatField;
    QSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    QSucursalGENERA_XML_COMUN: TStringField;
    QSucursalHOST: TStringField;
    QSucursalCERTIFICADO_ELEC: TStringField;
    QSucursalCUIT: TStringField;
    QSucursalRAZONSOCIAL: TStringField;
    QBorrarImputacinCCostoFD: TFDQuery;
    QRubro: TFDQuery;
    QRubroCODIGO_RUBRO: TStringField;
    QRubroDETALLE_RUBRO: TStringField;
    QSubRubro: TFDQuery;
    QSubRubroCODIGO_SUBRUBRO: TStringField;
    QSubRubroDETALLE_SUBRUBRO: TStringField;
    QSubRubroCODIGO_RUBRO: TStringField;
    QCtroCosto: TFDQuery;
    QCtroCostoID: TIntegerField;
    QCtroCostoDESCRIPCION: TStringField;
    QCtroCostoACTIVO: TStringField;
    QTraeCodigo: TFDQuery;
    QTraeCodigoCODIGO_STK: TStringField;
    QCtroCostoPOR_DEFECTO: TStringField;
    QTraeCodigoDETALLE_STK: TStringField;
    QTraeCodigoRUBRO_STK: TStringField;
    QTraeCodigoSUBRUBRO_STK: TStringField;
    QFactImportadas: TFDQuery;
    CDSFactImportadasTOTAL: TFloatField;
    QRelacion: TFDQuery;
    QRelacionPROVEEDOR: TStringField;
    QRelacionCLIENTE: TStringField;
    QRelacionMUESTRANOMBRE: TStringField;
    QBorrarFc: TFDQuery;
    QCaja: TFDQuery;
    QCajaID_CAJA: TIntegerField;
    QCajaID_CUENTA_CAJA: TIntegerField;
    QCajaNUMEROCAJA: TIntegerField;
    QCajaMUESTRACAJA: TStringField;
    QDepositos: TFDQuery;
    QFc_C: TFDQuery;
    QNd_B: TFDQuery;
    IntegerField3: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField4: TIntegerField;
    StringField8: TStringField;
    QFo_C: TFDQuery;
    IntegerField5: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    IntegerField6: TIntegerField;
    StringField12: TStringField;
    QFc_CID_COMPROBANTE: TIntegerField;
    QFc_CTIPO_COMPROB: TStringField;
    QFc_CCLASE_COMPROB: TStringField;
    QFc_CDENOMINACION: TStringField;
    QFc_CSUCURSAL: TIntegerField;
    QFc_CLETRA: TStringField;
    QArticuloAlte: TFDQuery;
    dbcStock: TJvDBLookupCombo;
    DSArticuloAlte: TDataSource;
    Label4: TLabel;
    CDSFcVtaCabXMLm: TFDMemTable;
    CDSFcVtaDetXMLm: TFDMemTable;
    CDSFcVtaImpXMLm: TFDMemTable;
    JvLabel18: TJvLabel;
    dbcFacturaX: TJvDBLookupCombo;
    QFcX: TFDQuery;
    DSFcX: TDataSource;
    QFcXID_COMPROBANTE: TIntegerField;
    QFcXTIPO_COMPROB: TStringField;
    QFcXCLASE_COMPROB: TStringField;
    QFcXDENOMINACION: TStringField;
    QFcXSUCURSAL: TIntegerField;
    QFcXLETRA: TStringField;
    spABMStock_FD: TFDStoredProc;
    VerificaMontos: TAction;
    VerificaMontos1: TMenuItem;
    Label5: TLabel;
    Shape1: TShape;
    lbSinCae: TLabel;
    pnCtaContable: TPanel;
    Label6: TLabel;
    edCodCtaContable: TEdit;
    Label17: TLabel;
    edCtaContable: TEdit;
    SpeedButton4: TSpeedButton;
    BuscarCtaContable: TAction;
    spAsignaCtaContable: TFDStoredProc;
    PopupMenu3: TPopupMenu;
    ReASignaCtaContable: TAction;
    ReAsignarCtaContable1: TMenuItem;
    DSHost: TDataSource;
    pnHost: TJvPanel;
    Label8: TLabel;
    Label9: TLabel;
    spGuardar: TSpeedButton;
    Label18: TLabel;
    edHost: TEdit;
    edPuerto: TEdit;
    edAlias: TEdit;
    dbcHost: TJvDBLookupCombo;
    sbCerrar: TSpeedButton;
    DBText4: TDBText;
    DBText5: TDBText;
    cbProveedores: TComboBox;
    Label19: TLabel;
    sbModificar: TSpeedButton;
    QUltimoCodigoStk: TFDQuery;
    QUltimoCodigoStkCODIGO: TStringField;
    procedure lbDirectorioClick(Sender: TObject);
    procedure btImpoXMLClick(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbcClientesChange(Sender: TObject);
    procedure CDSRelacionPROVEEDORSetText(Sender: TField; const Text: string);
    procedure CDSRelacionCLIENTESetText(Sender: TField; const Text: string);
    procedure dbgRelacionEditButtonClick(Sender: TObject);
    procedure dbgRelacionColEnter(Sender: TObject);
    procedure CDSRelacionAfterPost(DataSet: TDataSet);
    procedure CDSRelacionAfterDelete(DataSet: TDataSet);
    procedure btImportarClick(Sender: TObject);
    procedure btNovedadesClick(Sender: TObject);
    procedure VerCpbteExecute(Sender: TObject);
    procedure BorrarImportadosExecute(Sender: TObject);
    procedure sbNuevoClick(Sender: TObject);
    procedure spGuardarClick(Sender: TObject);
    procedure btTraerDatosClick(Sender: TObject);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure CDSFcVtaCabXMLAfterScroll(DataSet: TDataSet);
    procedure sbDeleteClick(Sender: TObject);
    procedure pnHostExit(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure DSFcVtaCabXMLStateChange(Sender: TObject);
    procedure CDSFactImportadasCalcFields(DataSet: TDataSet);
    procedure btFcImportadasClick(Sender: TObject);
    procedure ReasignaCtroCostoExecute(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure VerCpbteAplicadoExecute(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure VerificarExecute(Sender: TObject);
    procedure dbcSucursalChange(Sender: TObject);
    procedure LimpiarMarcasExecute(Sender: TObject);
    procedure ReASignaCtrCostoLoteExecute(Sender: TObject);
    procedure cbSubRubroEnter(Sender: TObject);
    procedure cbRubroChange(Sender: TObject);
    procedure IngresarArticulosExecute(Sender: TObject);
    procedure BorrarFcExecute(Sender: TObject);
    procedure BorrarFcAllExecute(Sender: TObject);
    procedure HastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure SalirExecute(Sender: TObject);
    procedure ModificarArticuloExecute(Sender: TObject);
    procedure chbFechaFiscalClick(Sender: TObject);
    procedure dbgFcVtaCabDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CDSFcVtaCabXMLmAfterScroll(DataSet: TDataSet);
    procedure pcModoConeccionChanging(Sender: TObject; var AllowChange: Boolean);
    procedure spABMStockReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure VerificaMontosExecute(Sender: TObject);
    procedure BuscarCtaContableExecute(Sender: TObject);
    procedure dbgFcVtaDetDblClick(Sender: TObject);
    procedure ReASignaCtaContableExecute(Sender: TObject);
    procedure sbCerrarClick(Sender: TObject);
    procedure spConectarClick(Sender: TObject);
    procedure dbcHostClick(Sender: TObject);
    procedure cbProveedoresClick(Sender: TObject);
    procedure sbModificarClick(Sender: TObject);
  private
    procedure Conectar;
    procedure Desconectar;
    { Private declarations }
  public
    ArchivoIni:TIniFile;
    { Public declarations }
    function ModificaStock( var CODIGO , DETALLE , MARCA , RUBRO , SUBRUBRO , MODO_GRAVAMEN,DETALLE_ADICIONAL , CODIGO_ALTERNATIVO :String;
                            TASA_IVA , SOBRETASA_IVA ,MONEDA: integer):Boolean;

    procedure CopiarClipBoard(Grilla:TDBGrid);
    procedure AgregarCabecera;
    procedure AgregaDetalle;
    Procedure SumarXML;
    Procedure SumarXMLDet;
    Procedure SumarImportados;
  end;

var
  FormConversorFcVta_a_Compra: TFormConversorFcVta_a_Compra;

implementation

{$R *.dfm}

uses UBuscaDirectorio,UDMain_FD, UBuscadorProveedor, UCompra_2, DMCompra,
     UNovedadesFacturacion, UBuscadorArticulos, UAsignacionCtroCosto,
     UBuscadorCtaContables, DMContableForm, UStock_2,DMConversorVta_Comp;


function TFormConversorFcVta_a_Compra.ModificaStock(var CODIGO, DETALLE, MARCA,
  RUBRO, SUBRUBRO, MODO_GRAVAMEN, DETALLE_ADICIONAL, CODIGO_ALTERNATIVO: String;
  TASA_IVA, SOBRETASA_IVA, MONEDA: integer): Boolean;
var Q:TFDQuery;
QConection:TFDConnection;
begin
  QConection := TFDConnection.Create(Application);
  with QConection do
    begin
      ConnectionName                         := 'ModificaStock';
      QConection.Params.Values['Database']   := DMMain_FD.fdcGestion.Params.Values['Database'];
      QConection.Params.Values['User_Name']  := DMMain_FD.fdcGestion.Params.Values['User_Name'];
      QConection.Params.Values['Password']   := DMMain_FD.fdcGestion.Params.Values['Password'];
      QConection.Params.Values['DriverID']   := DMMain_FD.fdcGestion.Params.Values['DriverID'];
      QConection.Params.Values['SQLDialect'] := DMMain_FD.fdcGestion.Params.Values['SQLDialect'];
      LoginPrompt                            := False;
      QConection.Connected                   := True;
    end;

  Q:=TFDQuery.Create(nil);
  Q.Connection := QConection;
  Q.SQL.Text   := 'execute procedure modifica_stock (:CODIGO, :DETALLE, :MARCA, :RUBRO, :SUBRUBRO, :MODO_GRAVAMEN ,'+
                                                     ':TASA_IVA, :SOBRETASA_IVA, :DETALLE_ADICIONAL, :CODIGO_ALTERNATIVO,'+
                                                     ':MONEDA )';
  q.ParamByName('CODIGO').Value             := CODIGO;
  q.ParamByName('DETALLE').Value            := DETALLE;
  q.ParamByName('MARCA').Value              := MARCA;
  q.ParamByName('RUBRO').Value              := RUBRO;
  q.ParamByName('SUBRUBRO').Value           := SUBRUBRO;
  q.ParamByName('MODO_GRAVAMEN').Value      := MODO_GRAVAMEN;
  q.ParamByName('TASA_IVA').Value           := TASA_IVA;
  q.ParamByName('SOBRETASA_IVA').Value      := SOBRETASA_IVA;
  q.ParamByName('DETALLE_ADICIONAL').Value  := DETALLE_ADICIONAL;
  q.ParamByName('CODIGO_ALTERNATIVO').Value := CODIGO_ALTERNATIVO;
  q.ParamByName('MONEDA').Value             := MONEDA;
  QConection.StartTransaction;
  try
    Q.ExecSQL;
    Q.Close;
    QConection.Commit;
  except
    Q.Close;
    QConection.Rollback;
  end;
  FreeAndNil(Q);
  FreeAndNil(QConection);

end;

procedure TFormConversorFcVta_a_Compra.CopiarClipBoard(Grilla:TDBGrid);
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
     //    if (chklstColumnas.Checked[j_local]) then
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
       //  if (chklstColumnas.Checked[j_local]) then
          begin
            campo:='';
//            if (Grilla.Fields[j_local].DataType=ftFloat) or
//               (Grilla.Fields[j_local].DataType=ftBCD) or
//               (Grilla.Fields[j_local].DataType=ftFMTBcd) Then
//              begin
//                 if (J_local=9) or (J_local=7) then
//                   begin
//                     if DatosRemitos.CDSRtoCabDESGLOZAIVA.Value='S' then
//                       campo:= FormatFloat(',0.00',RoundTo( Grilla.Fields[j_local].AsFloat,-2))
//                     else
//                       campo:= FormatFloat(',0.00',RoundTo( (Grilla.Fields[j_local].AsFloat * ((1+Grilla.Fields[3].AsFloat*0.01))),-2));
//                   end
//                 else
//                   campo:= FormatFloat(',0.00',RoundTo( Grilla.Fields[j_local].AsFloat,-2))
//
//               end
//             else
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


procedure TFormConversorFcVta_a_Compra.SumarXML;
var sincae:Integer;
begin
  sincae:=0;
  DSFcVtaCabXML.DataSet.First;
  DSFcVtaCabXML.DataSet.DisableControls;
  edTotal.Value:=0;
  while Not(DSFcVtaCabXML.DataSet.Eof) do
    begin
      if (DSFcVtaCabXML.DataSet.FieldByName('FACTURA_ELECTRONICA').AsString='S') and
         ((DSFcVtaCabXML.DataSet.FieldByName('CAE').AsFloat=0) or (DSFcVtaCabXML.DataSet.FieldByName('CAE').AsString='')) Then
         sincae:=sincae+1;

      if DSFcVtaCabXML.DataSet.FieldByName('TipoCPBTE').AsString<>'NC' Then
        edTotal.Value:=edTotal.Value+DSFcVtaCabXML.DataSet.FieldByName('TOTAL').AsFloat
      else
        if DSFcVtaCabXML.DataSet.FieldByName('TipoCPBTE').AsString='NC' Then
          edTotal.Value:=edTotal.Value-DSFcVtaCabXML.DataSet.FieldByName('TOTAL').AsFloat;
      DSFcVtaCabXML.DataSet.Next;
    end;
  DSFcVtaCabXML.DataSet.First;
  DSFcVtaCabXML.DataSet.EnableControls;
  lbSinCae.Caption:=IntToStr(sincae);
end;

procedure TFormConversorFcVta_a_Compra.SumarXMLDet;
begin
  if DSFcVtaDetXML.DataSet.Active=True then
    begin
      DSFcVtaDetXML.DataSet.First;
      DSFcVtaDetXML.DataSet.DisableControls;
      edTotalDet.Value:=0;
      while Not(DSFcVtaDetXML.DataSet.Eof) do
        begin
          edTotalDet.Value:=edTotalDet.Value+DSFcVtaDetXML.DataSet.FieldByName('TOTAL').AsFloat;
          DSFcVtaDetXML.DataSet.Next;
        end;
      DSFcVtaDetXML.DataSet.First;
      DSFcVtaDetXML.DataSet.EnableControls;
    end;
end;


procedure TFormConversorFcVta_a_Compra.SalirExecute(Sender: TObject);
begin
  inherited;
  if (Assigned(FormCompra_2)) then
    FreeAndNil(FormCompra_2);

end;

procedure TFormConversorFcVta_a_Compra.sbCerrarClick(Sender: TObject);
begin
  inherited;
  edHost.Clear;
  edAlias.Clear;
  edPuerto.Clear;
  pnHost.Visible:=False;
end;

procedure TFormConversorFcVta_a_Compra.spABMStockReconcileError(
  DataSet: TFDDataSet; E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
  inherited;
  ShowMessage(e.Message);
end;

procedure TFormConversorFcVta_a_Compra.spConectarClick(Sender: TObject);
begin
  inherited;
  Conectar;
end;

procedure TFormConversorFcVta_a_Compra.sbDeleteClick(Sender: TObject);
begin
  inherited;
  DatosConversorVta_Comp.mtHost.delete;
  dbcHost.KeyValue:=-1;

end;

procedure TFormConversorFcVta_a_Compra.sbModificarClick(Sender: TObject);
begin
  inherited;
  pnHost.Visible:=True;
end;

procedure TFormConversorFcVta_a_Compra.sbNuevoClick(Sender: TObject);
begin
  inherited;
  pnHost.Visible:=True;
  edAlias.Text  :='';
  edHost.Text   :='';
  edPuerto.Text :='';
end;

procedure TFormConversorFcVta_a_Compra.spGuardarClick(Sender: TObject);
var I:integer;
begin
  inherited;
  DatosConversorVta_Comp.mtHost.IndexFieldNames:='ID';
  DatosConversorVta_Comp.mtHost.Last;
  i:= DatosConversorVta_Comp.mthostID.AsInteger;
  DatosConversorVta_Comp.mtHost.append;
  DatosConversorVta_Comp.mthostALIAS.AsString  := edAlias.Text;
  DatosConversorVta_Comp.mthostHOST.AsString   := edHost.Text;
  DatosConversorVta_Comp.mthostPUERTO.AsString := edPuerto.Text;
  DatosConversorVta_Comp.mthostID.AsInteger    := i+1;

  DatosConversorVta_Comp.mtHost.post;
  dbcHost.KeyValue := DatosConversorVta_Comp.mthostID.AsInteger;

  pnHost.Visible:=False;
end;



procedure TFormConversorFcVta_a_Compra.SumarImportados;
begin
  MemoryData.First;
  MemoryData.DisableControls;
  edTotalImportado.Value:=0;
  while Not(MemoryData.Eof) do
    begin
      if MemoryData.FieldByName('TIPOCPBTE').AsString<>'NC' then
        edTotalImportado.Value:=edTotalImportado.Value+MemoryData.FieldByName('TOTAL').AsFloat
      else
        if MemoryData.FieldByName('TIPOCPBTE').AsString='NC' then
          edTotalImportado.Value:=edTotalImportado.Value-MemoryData.FieldByName('TOTAL').AsFloat;

      MemoryData.Next;
    end;
  MemoryData.First;
  MemoryData.EnableControls;
end;


procedure TFormConversorFcVta_a_Compra.AgregarCabecera;
var FechaVta:String;
begin
  with DatosCompra DO
    begin
      FormCompra_2.SucursalPorDefecto:= dbcSucursal.KeyValue;
      FormCompra_2.DepositoPorDefecto:= dbcDeposito.KeyValue;
      FormCompra_2.CajaPorDefecto    := rxDbcCaja.KeyValue;

      FechaVta  := DSFcVtaCabXML.DataSet.FieldByName('FECHAVTA').AsString;

      CDSCompraCabFECHACOMPRASetText(CDSCompraCabFECHACOMPRA,FechaVta);
      CDSCompraCabSUCURSALCOMPRASetText(CDSCompraCabSUCURSALCOMPRA,IntToStr( dbcSucursal.KeyValue));
      CDSCompraCabCodigoSetText(CDSCompraCabCodigo,CDSRelacionPROVEEDOR.AsString);


      if chbFechaFiscal.Checked  then
        CDSCompraCabFECHAFISCALSetText(CDSCompraCabFECHAFISCAL,DateToStr(FechaFiscal.Date))
      else
        CDSCompraCabFECHAFISCALSetText(CDSCompraCabFECHAFISCAL,FechaVta);
      if DSFcVtaCabXML.DataSet.FieldByName('LETRAFAC').AsString='A' then
        begin
          if DSFcVtaCabXML.DataSet.FieldByName('TIPOCPBTE').ASString='FC' Then
            begin
              if dbcFacturaA.KeyValue>0 then
                CDSCompraCabID_TIPOCOMPROBANTESetText(CDSCompraCabID_TIPOCOMPROBANTE,IntToStr(dbcFacturaA.KeyValue))
              else
                raise Exception.Create('No Hay Comprobante FC A seleccionado en configuracion....');
            end;
          if DSFcVtaCabXML.DataSet.FieldByName('TIPOCPBTE').ASString='NC' Then
            begin
              if dbcNc_A.KeyValue>0 then
                CDSCompraCabID_TIPOCOMPROBANTESetText(CDSCompraCabID_TIPOCOMPROBANTE,IntToStr(dbcNc_A.KeyValue))
              else
                raise Exception.Create('No Hay Comprobante NC A seleccionado en configuracion....');
            end;
          if DSFcVtaCabXML.DataSet.FieldByName('TIPOCPBTE').ASString='ND' Then
            begin
              if dbcNd_A.KeyValue>0 then
                CDSCompraCabID_TIPOCOMPROBANTESetText(CDSCompraCabID_TIPOCOMPROBANTE,IntToStr(dbcNd_A.KeyValue))
              else
                raise Exception.Create('No Hay Comprobante ND A seleccionado en configuracion....');
            end;
        end
      else
        if DSFcVtaCabXML.DataSet.FieldByName('LETRAFAC').AsString='B' then
          begin
            if DSFcVtaCabXML.DataSet.FieldByName('TIPOCPBTE').ASString='FC' Then
              begin
                if dbcFacturaB.KeyValue>0 then
                  CDSCompraCabID_TIPOCOMPROBANTESetText(CDSCompraCabID_TIPOCOMPROBANTE,IntToStr(dbcFacturaB.KeyValue))
                else
                  raise Exception.Create('No Hay Comprobante FC B seleccionado en configuracion....');
               end;
            if DSFcVtaCabXML.DataSet.FieldByName('TIPOCPBTE').ASString='NC' Then
              begin
                if dbcNc_B.KeyValue>0 then
                  CDSCompraCabID_TIPOCOMPROBANTESetText(CDSCompraCabID_TIPOCOMPROBANTE,IntToStr(dbcNc_B.KeyValue))
                else
                  raise Exception.Create('No Hay Comprobante NC B seleccionado en configuracion....');
               end;
            if DSFcVtaCabXML.DataSet.FieldByName('TIPOCPBTE').ASString='ND' Then
              begin
                if dbcNd_B.KeyValue>0 then
                  CDSCompraCabID_TIPOCOMPROBANTESetText(CDSCompraCabID_TIPOCOMPROBANTE,IntToStr(dbcNd_B.KeyValue))
                else
                  raise Exception.Create('No Hay Comprobante ND B seleccionado en configuracion....');
              end;
          end
        else
          if DSFcVtaCabXML.DataSet.FieldByName('LETRAFAC').AsString='C' then
            begin
              if DSFcVtaCabXML.DataSet.FieldByName('TIPOCPBTE').ASString = 'FC' Then
                begin
                  if dbcFacturaC.KeyValue>0 then
                    CDSCompraCabID_TIPOCOMPROBANTESetText(CDSCompraCabID_TIPOCOMPROBANTE,IntToStr(dbcFacturaC.KeyValue))
                  else
                    raise Exception.Create('No Hay Comprobante FC C seleccionado en configuracion....');
                end;
            end
        else
          if DSFcVtaCabXML.DataSet.FieldByName('LETRAFAC').AsString='X' then
            begin
              if DSFcVtaCabXML.DataSet.FieldByName('TIPOCPBTE').ASString = 'FC'
                Then CDSCompraCabID_TIPOCOMPROBANTESetText(CDSCompraCabID_TIPOCOMPROBANTE,IntToStr(dbcFacturaX.KeyValue));
          end;


      CDSCompraCabLETRAFAC.Value        := DSFcVtaCabXML.DataSet.FieldByName('LETRAFAC').ASString;
      CDSCompraCabSUCFAC.Value          := DSFcVtaCabXML.DataSet.FieldByName('SUCFAC').ASString;
      CDSCompraCabID_OBRA.Value         := -1;
      CDSCompraCabMONEDA_CPBTE_COTIZACION.Value;
      if CDSCompraCabMONEDA_CPBTE_COTIZACION.Value<=0 then
        CDSCompraCabMONEDA_CPBTE_COTIZACION.Value:=1;
      CDSCompraCabNumeroFacSetText(CDSCompraCabNumeroFac,DSFcVtaCabXML.DataSet.FieldByName('NUMEROFAC').ASString);
      CDSCompraCabDepositoSetText(CDSCompraCabDEPOSITO,IntToStr(dbcDeposito.KeyValue));
      if DSFcVtaCabXML.DataSet.FieldByName('DSTO').AsFloat>0 then
        CDSCompraCabDSTOSetText(CDSCompraCabDSTO,DSFcVtaCabXML.DataSet.FieldByName('DSTO').ASString);
    end;

end;


procedure TFormConversorFcVta_a_Compra.AgregaDetalle;
Var UnitarioTotal,Precio:Extended;
Aux:String;
begin
  Aux:='';
  QTraeCodigo.Close;//Busca por el Alternativo Ojo
  QTraeCodigo.ParamByName('codigo').Value := Trim(DSFcVtaDetXML.DataSet.FieldByName('CodigoArticulo').AsString);
  QTraeCodigo.Open;
  if Trim(QTraeCodigo.Fields[0].AsString)<>'' then
    Aux := Trim(QTraeCodigo.Fields[0].AsString);
  QTraeCodigo.Close;
  if Trim(Aux)='' then
    begin
      IngresarArticulos.Execute;
      Aux:='';
      QTraeCodigo.Close;
      QTraeCodigo.ParamByName('codigo').Value := Trim(DSFcVtaDetXML.DataSet.FieldByName('CodigoArticulo').AsString);
      QTraeCodigo.Open;
      Aux := Trim(QTraeCodigo.Fields[0].AsString);
      QTraeCodigo.Close;
    end
  else
    ModificarArticulo.Execute;

  with DatosCompra DO
    begin
      if (DSFcVtaDetXML.DataSet.FieldbyName('UNITARIO_TOTAL').AsFloat>0) and (DSFcVtaDetXML.DataSet.FieldbyName('CANTIDAD').AsFloat>0) and (DSFcVtaDetXML.DataSet.FieldbyName('TOTAL').AsFloat>0) then
        begin
          CDSCompraDet.Append;
          if Trim(Aux)<>'' Then
            CDSCompraDetCodigoArticuloSetText(CDSCompraDetCodigoArticulo,Aux)
          else
            CDSCompraDetCodigoArticuloSetText(CDSCompraDetCodigoArticulo,dbcStock.KeyValue);

          CDSCompraDetDetalle.Value        :=DSFcVtaDetXML.DataSet.FieldbyName('DETALLE').Value;

          CDSCompraDetCantidadSetText(CDScompraDetCantidad,DSFcVtaDetXML.DataSet.FieldbyName('CANTIDAD').AsString);

          CDSCompraDetUNIDADES_GRAVADO.Value := DSFcVtaDetXML.DataSet.FieldbyName('UNITARIO_GRAVADO').AsFloat;
          CDSCompraDetUNIDADES_EXENTO.Value  := DSFcVtaDetXML.DataSet.FieldbyName('UNITARIO_EXENTO').AsFloat;
          CDSCompraDetUNIDADES_TOTALSetText(CDSCompraDetUNIDADES_TOTAL,FloatToStr(DSFcVtaDetXML.DataSet.FieldbyName('UNITARIO_TOTAL').AsFloat));
          CDSCompraDetTOTALSetText(CDSCompraDetTOTAL,FloatToStr(DSFcVtaDetXML.DataSet.FieldbyName('TOTAL').AsFloat));
//          CDSCompraDetUNIDADES_TOTAL.Value  := CDSFcVtaDetXML.FieldbyName('UNITARIO_TOTAL').AsFloat;
//          CDSCompraDetCantidadSetText(CDScompraDetCantidad,CDSFcVtaDetXML.FieldbyName('CANTIDAD').AsString);
          if DSFcVtaDetXML.DataSet.FieldbyName('DESCUENTO').AsFloat>0 then
            CDSCompraDetDESCUENTOSetText(CDSCompraDetDESCUENTO,FormatFloat('0.00',DSFcVtaDetXML.DataSet.FieldbyName('DESCUENTO').AsFloat));
          CDSCompraDet.Post;
        end;
    end;
end;


procedure TFormConversorFcVta_a_Compra.btImpoXMLClick(Sender: TObject);
var a,m,d:Word;
CDSClone:TFDMemTable;
Codigo:String;
begin
  inherited;
  if CDSFcVtaCabXMLm.IsEmpty then
    begin
      CDSClone := TFDMemTable.Create(Self);
      DSFcVtaCabXML.DataSet := CDSFcVtaCabXMLm;
      DSFcVtaDetXML.DataSet := CDSFcVtaDetXMLm;
      DSFcVtaImpXML.DataSet := CDSFcVtaImpXMLm;

      CDSFcVtaCabXMLm.LoadFromFile(edPathOrigen.Text+'\fcvtacab.xml');
      CDSFcVtaDetXMLm.LoadFromFile(edPathOrigen.Text+'\fcvtadet.bin');
      CDSFcVtaImpXMLm.LoadFromFile(edPathOrigen.Text+'\fcvtaimp.bin');

      CDSFcVtaDetXMLm.MasterSource    := DSFcVtaCabXML;
      CDSFcVtaDetXMLm.MasterFields    := 'id_fc';
      CDSFcVtaDetXMLm.IndexFieldNames := 'id_cabfac';
      CDSFcVtaImpXMLm.MasterSource    := DSFcVtaCabXML;
      CDSFcVtaImpXMLm.MasterFields    := 'id_fc';
      CDSFcVtaImpXMLm.IndexFieldNames := 'ID_FCVTACAB';
      CDSFcVtaCabXMLm.IndexFieldNames := 'nrocpbte';

      CDSFcVtaCabXMLm.First;

      DecodeDate(CDSFcVtaCabXMLm.FieldByName('FECHAVTA').AsDateTime,a,m,d);
      Desde.Date:= EncodeDate(a,m,1);
      Hasta.Date:= EncodeDate(a,m,DaysInMonth(Desde.Date));

      Codigo :='';
      mtClientes.Open;
      CDSClone.CloneCursor(CDSFcVtaCabXMLm,True);
      CDSClone.First;
      while Not(CDSClone.Eof) do
        begin
          Codigo:=CDSClone.FieldByName('Codigo').AsString;
          if Not(mtClientes.Locate('Codigo',Codigo,[])) Then
            begin
              mtClientes.Append;
              mtClientesCodigo.Value:=CDSClone.FieldByName('CODIGO').AsString;
              mtClientesNombre.Value:=CDSClone.FieldByName('NOMBRE').AsString;
              mtClientes.Post;
            end;
          CDSClone.Next;
        end;
      CDSFcVtaCabXMLm.Filtered:=False;
      CDSFcVtaCabXMLm.Filter:='';

      if dbcClientes.KeyValue<>'******' then
        CDSFcVtaCabXMLm.Filter:='TIPOCPBTE<>''FO'' and FECHAVTA >='+''''+DateToStr(Desde.Date)+''''+' and FECHAVTA<='+''''+DateToStr(Hasta.Date)+''''+' and  codigo='+''''+dbcClientes.KeyValue+''''
      else
        CDSFcVtaCabXMLm.Filter:='TIPOCPBTE<>''FO'' and  FECHAVTA >='+''''+DateToStr(Desde.Date)+''''+' and FECHAVTA<='+''''+DateToStr(Hasta.Date)+'''';
      CDSFcVtaCabXMLm.Filtered:=True;
      CDSClone.Close;
      FreeAndNil(CDSClone);
      SumarXML;
    end;
end;

procedure TFormConversorFcVta_a_Compra.BorrarFcAllExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSFactImportadas.IsEmpty) then
    begin
      Screen.Cursor:=crHourGlass;
      CDSFactImportadas.First;
      while Not(CDSFactImportadas.Eof) do
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          Try
            QBorrarFc.Close;
            QBorrarFc.ParamByName('id').Value:=CDSFactImportadasID_FC.Value;
            QBorrarFc.ExecSQL();
            DMMain_FD.fdcGestion.Commit;
            QBorrarFc.Close;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('Transacción no finalizada....!');
            QBorrarFc.Close;
            exit;
          end;
          CDSFactImportadas.Next;
        end;
      //btFcImportadas.Click;
    end;
  btFcImportadas.Click;
  Screen.Cursor:=crDefault;

end;

procedure TFormConversorFcVta_a_Compra.BorrarFcExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  Try
    QBorrarFc.Close;
    QBorrarFc.ParamByName('id').Value:=CDSFactImportadasID_FC.Value;
    QBorrarFc.ExecSQL();
    DMMain_FD.fdcGestion.Commit;

  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('Transacción no finalizada....!');
  end;
  btFcImportadas.Click;
end;

procedure TFormConversorFcVta_a_Compra.BorrarImportadosExecute(Sender: TObject);
begin
  inherited;
  if Not(MemoryData.IsEmpty) then
    begin
      Screen.Cursor:=crHourGlass;
      MemoryData.First;
      MemoryData.DisableControls;
      while Not(MemoryData.Eof) do
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          Try
            QBorrarFc.Close;
            QBorrarFc.ParamByName('id').Value:=MemoryDataID.Value;
            QBorrarFc.ExecSQL();
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('Transacción no finalizada....!');
            exit;
          end;
          MemoryData.Next;
        end;
      MemoryData.Close;
      MemoryData.Open;
      MemoryData.EmptyTable;
    end;
  Screen.Cursor:=crDefault;
end;

procedure TFormConversorFcVta_a_Compra.btImportarClick(Sender: TObject);
var Lista:TListItem;
HayNovedades,Control:Boolean;
pos:Integer;
Valor,Importe,Dscto:Extended;
i:integer;
Cadena,ValorStr:String;
Longitud:Integer;
begin
  inherited;

  if VarIsNull(rxDbcCaja.KeyValue) or (rxDbcCaja.KeyValue='') Then
    RAISE Exception.Create('No hay caja seleccionada');

  if DSFcVtaCabXML.DataSet.IsEmpty then
    RAISE Exception.Create('No hay Datos a Procesar');

  if (VarIsNull(cbRubro.KeyValue)) or (cbRubro.KeyValue='***') Then
    RAISE Exception.Create('No hay Rubro seleccionado');

  if VarIsNull(cbSubRubro.KeyValue) or (cbSubRubro.KeyValue='*****') Then
    RAISE Exception.Create('No hay SubRubro seleccionado');


  if (Assigned(FormCompra_2)) then
    FreeAndNil(FormCompra_2);

  HayNovedades:=False;

  if Not(Assigned(FormCompra_2)) then
    FormCompra_2:=TFormCompra_2.Create(Self);


  DSFcVtaCabXML.DataSet.First;
  MemoryData.Close;
  MemoryData.Open;
  MemoryData.EmptyTable;
 // pcImportacion.ActivePageIndex:=0;
  FormNovedadesFacturacion.lwNovedades.Clear;
  Application.ProcessMessages;
  Progress.MaxValue:=DSFcVtaCabXML.DataSet.RecordCount;
  while not(DSFcVtaCabXML.DataSet.Eof) do
    begin
      //Inserto la cabecera
      if CDSRelacion.Locate('CLIENTE',DSFcVtaCabXML.DataSet.FieldByName('Codigo').AsString,[]) Then
        begin
          DatosCompra.QVerificaNro.Close;
          DatosCompra.QVerificaNro.ParamByName('Nro').Value   := DSFcVtaCabXML.DataSet.FieldByName('NROCPBTE').AsString;
          DatosCompra.QVerificaNro.ParamByName('codigo').Value:= CDSRelacionPROVEEDOR.AsString;
          DatosCompra.QVerificaNro.ParamByName('Tipo').Value  := DSFcVtaCabXML.DataSet.FieldByName('TIPOCPBTE').AsString;
          DatosCompra.QVerificaNro.ParamByName('Clase').Value := '**';

          DatosCompra.QVerificaNro.Open;

          // Verifico que tenga cae en las electronicas...
          Control:=True;
          if DSFcVtaCabXML.DataSet.FieldByName('FACTURA_ELECTRONICA').AsString='S' then
            if ((DSFcVtaCabXML.DataSet.FieldByName('CAE').AsString='') or (DSFcVtaCabXML.DataSet.FieldByName('CAE').ASFloat<=0)) then
              Control:=False;


          if (DatosCompra.QVerificaNro.Fields[0].AsString='') and (Control=True) Then
            begin
              FormCompra_2.Agregar.Execute;
              AgregarCabecera;
              if DSFcVtaCabXML.DataSet.FieldByName('PERCIBE_IB').Value='N' then
                DatosCompra.PerciveIB:='N';
              DatosCompra.PerciveIva :='N';
              if DSFcVtaCabXML.DataSet.FieldByName('PERCIBE_IVA').Value='N' then
                DatosCompra.PerciveIva:='N';

              DSFcVtaDetXML.DataSet.First;
              while Not(DSFcVtaDetXML.DataSet.Eof) do
                begin
                  AgregaDetalle;
                  DSFcVtaDetXML.DataSet.Next;
                end;
              DatosCompra.CDSCompraCabNETOGRAV1.AsFloat:=DSFcVtaCabXML.DataSet.FieldByName('NETOGRAV1').ASFloat;
              DatosCompra.CDSCompraCabNETOGRAV2.AsFloat:=DSFcVtaCabXML.DataSet.FieldByName('NETOGRAV2').ASFloat;
              DatosCompra.CDSCompraCabNETOEXEN1.AsFloat:=DSFcVtaCabXML.DataSet.FieldByName('NETOEXEN1').ASFloat;
              DatosCompra.CDSCompraCabNETOEXEN2.AsFloat:=DSFcVtaCabXML.DataSet.FieldByName('NETOEXEN2').ASFloat;

              DSFcVtaImpXML.DataSet.First;
              if DSFcVtaImpXML.DataSet.RecordCount>1then
                while Not(DatosConversorVta_Comp.CDSFcVtaImpXML.Eof) do
                  begin
                    if DatosCompra.CDSImpuestos.Locate('CODIGO_GRAVAMEN',DSFcVtaImpXML.DataSet.FieldByName('CODIGO_GRAVAMEN').AsString,[]) Then
                      begin
                        DatosCompra.CDSImpuestosIMPORTESetText(DatosCompra.CDSImpuestosIMPORTE,DSFcVtaImpXML.DataSet.FieldByName('IMPORTE').AsString);
                      end;
                    DatosConversorVta_Comp.CDSFcVtaImpXML.Next;
                  end
              else
                begin
                  DSFcVtaImpXML.Dataset.First;
                  if DSFcVtaImpXML.DataSet.RecordCount=1then
                    begin
                      if DatosCompra.CDSImpuestos.Locate('CODIGO_GRAVAMEN',DSFcVtaImpXML.DataSet.FieldByName('CODIGO_GRAVAMEN').AsString,[]) Then
                        DatosCompra.CDSImpuestosIMPORTESetText(DatosCompra.CDSImpuestosIMPORTE,DSFcVtaImpXML.DataSet.FieldByName('IMPORTE').AsString);
                    end;
                end;


              if DSFcVtaCabXML.DataSet.FieldByName('PERCEPCION_IB_IMPORTE').AsFloat>0 then
                begin
                  if Not(DatosCompra.CDSPercepcionIB.IsEmpty) then
                    begin
                      DatosCompra.CDSPercepcionIB.Edit;
                      DatosCompra.CDSPercepcionIBIMPORTESetText(DatosCompra.CDSPercepcionIBIMPORTE,DSFcVtaCabXML.DataSet.FieldByName('PERCEPCION_IB_IMPORTE').AsString);
                      if DatosCompra.CDSPercepcionIB.State<>dsBrowse then
                        DatosCompra.CDSPercepcionIB.Post;
                    end
                  else
                    DatosCompra.CDSPercepcionIB.EmptyDataSet;
                end
              else
                if DSFcVtaCabXML.DataSet.FieldByName('PERCEPCION_IB_IMPORTE').AsFloat<=0 then
                  begin
                    if Not(DatosCompra.CDSPercepcionIB.IsEmpty) then
                      begin
                        DatosCompra.CDSPercepcionIB.Delete;
                      end;
                    DatosCompra.CDSPercepcionIB.EmptyDataSet;
                  end;

              sbEstado.SimpleText:='Grabando Factura....';
              Application.ProcessMessages;
              if FormCompra_2.DSBase.DataSet.State <>dsBrowse Then
                FormCompra_2.Confirma.Execute;

              //*******************************************************************
              sbEstado.SimpleText:='Apliacando Centro de Costo....';
              Application.ProcessMessages;
              if DatosCompra.CDSCompraCabID_FC.AsInteger>0 then

              begin
                if (Assigned(FormAsignacionCentroCosto)) then
                  FreeAndNil(FormAsignacionCentroCosto);

                if Not(Assigned(FormAsignacionCentroCosto)) then
                  FormAsignacionCentroCosto:=TFormAsignacionCentroCosto.Create(Self);
                FormAsignacionCentroCosto.IdCpbte  := DatosCompra.CDSCompraCabID_FC.Value;
                FormAsignacionCentroCosto.TipoCpbte:= DatosCompra.CDSCompraCabTIPOCPBTE.Value;
                FormAsignacionCentroCosto.Tipo     := 'E';
                FormAsignacionCentroCosto.CtroCosto:= ceCentroCosto.KeyValue;

                FormAsignacionCentroCosto.Total    := RoundTo(DatosCompra.CDSCompraCabNETOGRAV2.AsFloat +
                                                              DatosCompra.CDSCompraCabNETOEXEN2.AsFloat +
                                                              DatosCompra.CDSCompraCabIMPORTEEXCLUIDO2.ASFloat +
                                                              DatosCompra.CDSCompraCabNETOMONOTRIBUTO2.AsFloat,-2);

                FormAsignacionCentroCosto.edTotalGral.Value := FormAsignacionCentroCosto.Total;
                FormCompra_2.DBGrillaDetalle.DataSource.DataSet.First;
                while Not(FormCompra_2.DBGrillaDetalle.DataSource.DataSet.Eof) do
                  begin
                    pos:=FormAsignacionCentroCosto.LstConcepto.IndexOf(FormCompra_2.DBGrillaDetalle.Columns[0].Field.Text);
                    if Pos<0 Then
                      begin
                        FormAsignacionCentroCosto.LstConcepto.Append(FormCompra_2.DBGrillaDetalle.Columns[0].Field.Text );
                        FormAsignacionCentroCosto.LstDetalles.Append(FormCompra_2.DBGrillaDetalle.Columns[1].Field.Text );
                        Importe:= StrToFloat(AnsiReplaceText(FormCompra_2.DBGrillaDetalle.Columns[9].Field.Text,',',''));
                        Dscto  := 1-(DatosCompra.CDSCompraCabDSTO.AsFloat * 0.01);
                        //if Importe>0 then
                          begin
                            Importe:= Importe * Dscto;
                            FormAsignacionCentroCosto.LstImportes.Append(FloatToStr(Importe));
                          end;
                       end
                     else
                       begin
                         Importe:= StrToFloat(AnsiReplaceText(FormCompra_2.DBGrillaDetalle.Columns[9].Field.Text,',',''));
                         Dscto  := 1-(DatosCompra.CDSCompraCabDSTO.AsFloat * 0.01);
                         Importe:= Importe * Dscto;
                         //if Importe>0 then
                           begin
                             Valor:=StrToFloat(AnsiReplaceText(FormAsignacionCentroCosto.LstImportes[Pos],',',''))+ Importe;
                             FormAsignacionCentroCosto.LstImportes[Pos]:=FloatToStr(Valor);
                           end;
                       end;
                    FormCompra_2.DBGrillaDetalle.DataSource.DataSet.Next;
                  end;
                //********************************************************
                FormAsignacionCentroCosto.edTotalGral.Value:=FormAsignacionCentroCosto.Total;

                FormAsignacionCentroCosto.dbgAplic.Columns[0].PickList.Clear;
                for I := 0 to FormAsignacionCentroCosto.LstConcepto.Count - 1 do
                  begin
                    Cadena:=FormAsignacionCentroCosto.LstConcepto[i];
                    FormAsignacionCentroCosto.dbgAplic.Columns[0].PickList.Add(Cadena);
                  end;
                longitud:=length(FormAsignacionCentroCosto.LstConcepto[0]);
                FormAsignacionCentroCosto.CDSAplic.Close;
                FormAsignacionCentroCosto.CDSAplic.Params.ParamByName('id').Value       :=FormAsignacionCentroCosto.IdCpbte;
                FormAsignacionCentroCosto.CDSAplic.Params.ParamByName('TipoCpbte').Value:=FormAsignacionCentroCosto.TipoCpbte;
                FormAsignacionCentroCosto.CDSAplic.Params.ParamByName('Tipo').Value     :=FormAsignacionCentroCosto.Tipo;
                FormAsignacionCentroCosto.CDSAplic.Open;
                if FormAsignacionCentroCosto.CDSAplic.IsEmpty then
                  begin
                    for I := 0 to FormAsignacionCentroCosto.LstConcepto.Count - 1 do
                      begin
                        Cadena:=FormAsignacionCentroCosto.LstConcepto[i];
                        if StrToFloat(FormAsignacionCentroCosto.LstImportes[i])>0 then
                          begin
                            FormAsignacionCentroCosto.CDSAplic.Append;
                            FormAsignacionCentroCosto.CDSAplicCONCEPTOSetText(FormAsignacionCentroCosto.CDSAplicCONCEPTO,Cadena);
                            FormAsignacionCentroCosto.CDSAplicDETALLE_CONCEP.Value:=FormAsignacionCentroCosto.LstDetalles[i];
                            FormAsignacionCentroCosto.CDSAplicIMPORTE_LINEASetText(FormAsignacionCentroCosto.CDSAplicIMPORTE_LINEA,FormAsignacionCentroCosto.LstImportes[i]);
                            FormAsignacionCentroCosto.CDSAplicIMPUTADOSetText(FormAsignacionCentroCosto.CDSAplicIMPUTADO,FormAsignacionCentroCosto.LstImportes[i]);
                            FormAsignacionCentroCosto.CDSAplic.Post;
                          end;
                      end;
                  end;
                //********************************************************
                FormAsignacionCentroCosto.btAceptar.Click;
              end;

              //*******************************************************************
          Progress.Progress:=Progress.Progress+1;
          if FormCompra_2.DSBase.DataSet.IsEmpty then
            begin
              sbEstado.SimpleText:='Agregando Novedades....';
              Application.ProcessMessages;
              HayNovedades       :=True;
              Lista:=FormNovedadesFacturacion.lwNovedades.Items.Add;
              Lista.Caption:=DSFcVtaCabXML.DataSet.FieldByName('NROCPBTE').AsString;
              Lista.SubItems.Add(DSFcVtaCabXML.DataSet.FieldByName('NOMBRE').AsString);
              Lista.SubItems.Add(DSFcVtaCabXML.DataSet.FieldByName('TOTAL').AsString);
            end
          else
            begin
              MemoryData.Append;
              MemoryDataNROCPBTE.Value  :=FormCompra_2.DSBase.DataSet.FieldByName('NROCPBTE').ASString;
              MemoryDataNOMBRE.Value    :=FormCompra_2.DSBase.DataSet.FieldByName('NOMBRE').ASString;
              MemoryDataTOTAL.AsFloat   :=FormCompra_2.DSBase.DataSet.FieldByName('TOTAL').ASFloat;
              MemoryDataID.Value        :=FormCompra_2.DSBase.DataSet.FieldByName('ID_FC').ASInteger;
              MemoryDataTIPOCPBTE.Value :=FormCompra_2.DSBase.DataSet.FieldByName('TIPOCPBTE').ASString;
              MemoryData.Post;
            end;
          end
        else
          begin
            HayNovedades:=True;
            Lista:=FormNovedadesFacturacion.lwNovedades.Items.Add;
            Lista.Caption:=DSFcVtaCabXML.DataSet.FieldByName('NOMBRE').AsString;
            Lista.SubItems.Add(DSFcVtaCabXML.DataSet.FieldByName('TOTAL').AsString);
            Lista.SubItems.Add(DSFcVtaCabXML.DataSet.FieldByName('NROCPBTE').AsString);
          end;
        end;
      DSFcVtaCabXML.DataSet.Next;
      sbEstado.SimpleText:='....';
      Application.ProcessMessages;
    end;
  FormCompra_2.Salir.Execute;
  if Assigned(FormCompra_2) then
    FreeAndNil(FormCompra_2);

  if Assigned(FormAsignacionCentroCosto) Then
    FreeAndNil(FormAsignacionCentroCosto);

  ShowMessage('Operación Finalizada...');
  if HayNovedades then
    ShowMessage('Hay Novedades de la Importacion...');

  SumarImportados;
  sbEstado.SimpleText:='';
  Application.ProcessMessages;
  Progress.Progress:=0;

end;

procedure TFormConversorFcVta_a_Compra.btNovedadesClick(Sender: TObject);
begin
  inherited;
  FormNovedadesFacturacion.Visible:= Not(FormNovedadesFacturacion.Visible);
end;

procedure TFormConversorFcVta_a_Compra.btFcImportadasClick(Sender: TObject);
var condicion:String;
 Temporal: TStringList;
begin
  inherited;
  Temporal:=TStringList.Create;
  Temporal.Sorted:=True;//La lista debe ser ordenada
  Temporal.Duplicates:=dupIgnore; // Igonorar los elementos repetidos

  cbProveedores.Items.Clear;
  cbProveedores.Items.Add('Sin Seleccion');
  CDSFactImportadas.Close;

  CDSFactImportadas.CommandText:='select f.id_fc,f.tipocpbte,f.clasecpbte,f.letrafac,'+
                                 'f.sucfac,f.numerofac,f.nrocpbte,'+
                                 'f.codigo,f.razonsocial, f.total from fccompcab f '+
                                 'where f.fechacompra between :desde and :hasta and ';
  Condicion:='';
  CDSRelacion.First;
  while not(CDSRelacion.Eof) do
    begin
      if Condicion='' Then Condicion:='( f.codigo='+''''+CDSRelacionPROVEEDOR.AsString+'''' else
        Condicion:=Condicion+' or f.codigo='+''''+CDSRelacionPROVEEDOR.AsString+'''';
      CDSRelacion.Next;

      Temporal.Add(CDSRelacionPROVEEDOR.AsString);
    end;
  cbProveedores.Items.AddStrings(Temporal);
  CDSFactImportadas.CommandText:=CDSFactImportadas.CommandText+Condicion+' ) order by f.NumeroFac';

  CDSFactImportadas.Params.ParamByName('desde').AsDateTime:=DesdeW.Date;
  CDSFactImportadas.Params.ParamByName('Hasta').AsDateTime:=HastaW.Date;
  CDSFactImportadas.Open;
  FreeAndNil(Temporal);
end;

procedure TFormConversorFcVta_a_Compra.btTraerDatosClick(Sender: TObject);
var CDSClone:TClientDataSet;
Codigo     :String;
Condicion  :String;
Host,Puerto:String;
i          :Integer;
begin
  inherited;
  Desde.Date:=DesdeW.Date;
  Hasta.Date:=HastaW.Date;

//  if Puerto='211' then
//    if SQLConnectionWeb.Connected=False then
//      Raise Exception.Create('No Esta conectado al servidor........')
//  else
//    if Puerto='2001' then
      if DatosConversorVta_Comp.RemoteDB.Connected=False then
        Raise Exception.Create('No Esta conectado al servidor........')  ;

  Screen.Cursor:=crHourGlass;
  DatosConversorVta_Comp.CDSFcVtaCabXML.Close;
  DatosConversorVta_Comp.CDSFcVtaDetXML.Close;
  DatosConversorVta_Comp.CDSFcVtaImpXML.Close;

  DatosConversorVta_Comp.CDSFcVtaDetXML.MasterSource   :=nil;
  DatosConversorVta_Comp.CDSFcVtaImpXML.MasterSource   :=Nil;


  if chFiltroRelacion.Checked then
    begin

      DatosConversorVta_Comp.CDSFcVtaCabXML.CommandText:='select f.* from fcvtacab f where ( f.fechavta between :desde and :hasta ) and ';
      Condicion:='';
      CDSRelacion.First;
      while not(CDSRelacion.Eof) do
        begin
          if Condicion='' Then Condicion:='( f.codigo='+''''+CDSRelacionCLIENTE.AsString+'''' else
            Condicion:=Condicion+' or f.codigo='+''''+CDSRelacionCLIENTE.AsString+'''';
           CDSRelacion.Next;
        end;

      DatosConversorVta_Comp.CDSFcVtaCabXML.CommandText:=DatosConversorVta_Comp.CDSFcVtaCabXML.CommandText+Condicion+' ) order by f.id_fc';
    end;

  DatosConversorVta_Comp.CDSFcVtaCabXML.Params.ParamByName('Desde').AsDateTime :=DesdeW.Date;
  DatosConversorVta_Comp.CDSFcVtaCabXML.Params.ParamByName('Hasta').AsDateTime :=HastaW.Date;

  DatosConversorVta_Comp.CDSFcVtaCabXML.Open;

  DatosConversorVta_Comp.CDSFcVtaDetXML.MasterSource    := DSFcVtaCabXML;
  DatosConversorVta_Comp.CDSFcVtaDetXML.MasterFields    := 'id_fc';
  DatosConversorVta_Comp.CDSFcVtaDetXML.IndexFieldNames := 'id_cabfac';
  DatosConversorVta_Comp.CDSFcVtaCabXML.IndexFieldNames := 'id_fc';

  DatosConversorVta_Comp.CDSFcVtaImpXML.MasterSource    := DSFcVtaCabXML;
  DatosConversorVta_Comp.CDSFcVtaImpXML.MasterFields    := 'id_fc';
  DatosConversorVta_Comp.CDSFcVtaImpXML.IndexFieldNames := 'ID_FCVTACAB';
  DatosConversorVta_Comp.CDSFcVtaCabXML.IndexFieldNames := 'id_fc';

 // DatosConversorVta_Comp.CDSFcVtaCabXML.Params.ParamByName('Desde').AsDateTime :=DesdeW.Date;
 // DatosConversorVta_Comp.CDSFcVtaCabXML.Params.ParamByName('Hasta').AsDateTime :=HastaW.Date;


 // DatosConversorVta_Comp.CDSFcVtaCabXML.Open;

  MemoryData.Close;
  MemoryData.Open;
  MemoryData.EmptyTable;


  if DatosConversorVta_Comp.CDSFcVtaCabXML.RecordCount>0 then
    begin
      DatosConversorVta_Comp.QMaxMin.Close;
      DatosConversorVta_Comp.QMaxMin.Params.ParamByName('desde').Value:= DesdeW.Date;
      DatosConversorVta_Comp.QMaxMin.Params.ParamByName('hasta').Value:= HastaW.Date;
      DatosConversorVta_Comp.QMaxMin.Open;

      DatosConversorVta_Comp.CDSFcVtaCabXML.IndexFieldNames:='ID_FC';
      //DatosConversorVta_Comp.CDSFcVtaCabXML.First;
      DatosConversorVta_Comp.CDSFcVtaDetXML.Params.ParamByName('id_desde').Value:=DatosConversorVta_Comp.QMaxMinMIN.Value;// DatosConversorVta_Comp.CDSFcVtaCabXML.FieldByName('ID_FC').Value;
      DatosConversorVta_Comp.CDSFcVtaImpXML.Params.ParamByName('id_desde').Value:=DatosConversorVta_Comp.QMaxMinMIN.Value;// DatosConversorVta_Comp.CDSFcVtaCabXML.FieldByName('ID_FC').Value;

     // DatosConversorVta_Comp.CDSFcVtaCabXML.Last;
      DatosConversorVta_Comp.CDSFcVtaDetXML.Params.ParamByName('id_Hasta').Value:=DatosConversorVta_Comp.QMaxMinMAX.Value;// DatosConversorVta_Comp.CDSFcVtaCabXML.FieldByName('ID_FC').Value;
      DatosConversorVta_Comp.CDSFcVtaImpXML.Params.ParamByName('id_Hasta').Value:=DatosConversorVta_Comp.QMaxMinMAX.Value;// DatosConversorVta_Comp.CDSFcVtaCabXML.FieldByName('ID_FC').Value;

      DatosConversorVta_Comp.CDSFcVtaCabXML.IndexFieldNames:='nrocpbte';
      DatosConversorVta_Comp.CDSFcVtaDetXML.Open;
      DatosConversorVta_Comp.CDSFcVtaImpXML.Open;

      DatosConversorVta_Comp.CDSFcVtaCabXML.First;

      Codigo:='';

      CDSClone:=TClientDataSet.Create(Self);
      mtClientes.Open;
      mtClientes.EmptyTable;
      CDSClone.CloneCursor(DatosConversorVta_Comp.CDSFcVtaCabXML,True);
      CDSClone.IndexFieldNames:='NOMBRE';
      CDSClone.First;
      while Not(CDSClone.Eof) do
        begin
          Codigo:=CDSClone.FieldByName('Codigo').AsString;
          if Not(mtClientes.Locate('Codigo',Codigo,[])) Then
            begin
              mtClientes.Append;
              mtClientesCodigo.Value:=CDSClone.FieldByName('CODIGO').AsString;
              mtClientesNombre.Value:=CDSClone.FieldByName('NOMBRE').AsString;
              mtClientes.Post;
            end;
          CDSClone.Next;
        end;
      DatosConversorVta_Comp.CDSFcVtaCabXML.Filtered:=False;
      DatosConversorVta_Comp.CDSFcVtaCabXML.Filter:='';
      if dbcClientes.KeyValue<>'******' then
        DatosConversorVta_Comp.CDSFcVtaCabXML.Filter:='TIPOCPBTE<>''FO'' and FECHAVTA >='+''''+DateToStr(Desde.Date)+''''+' and FECHAVTA<='+''''+DateToStr(Hasta.Date)+''''+' and  codigo='+''''+dbcClientes.KeyValue+''''
      else
        DatosConversorVta_Comp.CDSFcVtaCabXML.Filter:='TIPOCPBTE<>''FO'' and  FECHAVTA >='+''''+DateToStr(Desde.Date)+''''+' and FECHAVTA<='+''''+DateToStr(Hasta.Date)+'''';

      DatosConversorVta_Comp.CDSFcVtaCabXML.Filtered:=True;

      Screen.Cursor:=crDefault;
      CDSClone.Close;
      FreeAndNil(CDSClone);

      SumarXML;


      if Not(dbgFcVtaCab.DataSource.DataSet.IsEmpty) Then
        begin
          for i:=0 to dbgFcVtaCab.Columns.Count-1 do
            begin
              if dbgFcVtaCab.Fields[i].DataType=ftFloat Then
                TFloatField(dbgFcVtaCab.Fields[i]).DisplayFormat := ',0.00;-,0.00;-';
              if dbgFcVtaCab.Fields[i].DataType=ftBCD Then
                TFloatField(dbgFcVtaCab.Fields[i]).DisplayFormat := ',0.00;-,0.00;-';
              if dbgFcVtaCab.Fields[i].DataType=ftFMTBcd Then
                TFloatField(dbgFcVtaCab.Fields[i]).DisplayFormat := ',0.00;-,0.00;-';
            end;
        end;

      if Not(dbgFcVtaDet.DataSource.DataSet.IsEmpty) Then
        begin
          for i:=0 to dbgFcVtaDet.Columns.Count-1 do
            begin
              if dbgFcVtaDet.Fields[i].DataType=ftFloat Then
                TFloatField(dbgFcVtaDet.Fields[i]).DisplayFormat := ',0.00;-,0.00;-';
              if dbgFcVtaDet.Fields[i].DataType=ftBCD Then
                TFloatField(dbgFcVtaDet.Fields[i]).DisplayFormat := ',0.00;-,0.00;-';
              if dbgFcVtaDet.Fields[i].DataType=ftFMTBcd Then
                TFloatField(dbgFcVtaDet.Fields[i]).DisplayFormat := ',0.00;-,0.00;-';
            end;
        end;


     // dbgFcVtaDet.Fields[3].f DataSource.DataSet.FieldByName('CANTIDAD').EditMask:=',0.00';

     //***********************************
     // SQLConnectionWeb.Connected:=False;

      imConectado.Visible    := DatosConversorVta_Comp.RemoteDB.Connected;// SQLConnectionWeb.ConnectionState in [csStateOpen];
      imDesconectado.Visible := not(DatosConversorVta_Comp.RemoteDB.Connected);//SQLConnectionWeb.ConnectionState in [csStateClosed];
      DatosConversorVta_Comp.QMaxMin.Close;
    end;

  if DatosConversorVta_Comp.RemoteDB.Connected then // SQLConnectionWeb.ConnectionState in [csStateOpen] then
    begin
      lbEstadoConeccion.Caption:='Estado Conectado..';
      lbEstadoConeccion.Font.Color:=clGreen;
    end
  else
    begin
      lbEstadoConeccion.Caption:='Desconectado del Host';
      lbEstadoConeccion.Font.Color:=clRed;
    end;
   dbgFcVtaCab.Width:=dbgFcVtaCab.Width+1;
   dbgFcVtaCab.Width:=dbgFcVtaCab.Width-1;

   dbgFcVtaDet.Width:=dbgFcVtaDet.Width+1;
   dbgFcVtaDet.Width:=dbgFcVtaDet.Width-1;

end;

procedure TFormConversorFcVta_a_Compra.BuscarCtaContableExecute(
  Sender: TObject);
begin
  inherited;
  if DMMain_FD.GetUsaContabilidad then
    begin
      if Not(Assigned(FormBuscadorCtaContable)) then
        FormBuscadorCtaContable:=TFormBuscadorCtaContable.Create(Self);
      FormBuscadorCtaContable.ShowModal;

      if FormBuscadorCtaContable.ModalResult=mrOk then
        begin
          edCodCtaContable.Text := FormBuscadorCtaContable.Codigo;
          edCtaContable.Text    := FormBuscadorCtaContable.Detalle;
        end
    end;
end;

procedure TFormConversorFcVta_a_Compra.CancelarExecute(Sender: TObject);
begin
  if btCancelar.Visible then
    inherited;
end;

procedure TFormConversorFcVta_a_Compra.cbProveedoresClick(Sender: TObject);
begin
  inherited;
  CDSFactImportadas.Filtered:=False;
  CDSFactImportadas.Filter:='CODIGO='+cbProveedores.Text;
  if cbProveedores.Text<>'Sin Seleccion' then
    CDSFactImportadas.Filtered:=True;

end;

procedure TFormConversorFcVta_a_Compra.cbRubroChange(Sender: TObject);
begin
  inherited;
  cbSubRubro.ClearValue;
end;

procedure TFormConversorFcVta_a_Compra.cbSubRubroEnter(Sender: TObject);
begin
  inherited;
  QSubRubro.Close;
  QSubRubro.ParamByName('rubro').Value:=cbRubro.KeyValue;
  QSubRubro.Open;
end;

procedure TFormConversorFcVta_a_Compra.CDSFactImportadasCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSFactImportadasTOTAL_RECALCULADO.AsFloat:=CDSFactImportadasTOTAL.AsFloat;
  if CDSFactImportadasTIPOCPBTE.Value='NC' then
    CDSFactImportadasTOTAL_RECALCULADO.AsFloat:=CDSFactImportadasTOTAL.AsFloat*-1;
 end;

procedure TFormConversorFcVta_a_Compra.CDSFcVtaCabXMLAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  SumarXMLDet;
  dbgFcVtaDet.Width:=dbgFcVtaDet.Width-1;
  dbgFcVtaDet.Width:=dbgFcVtaDet.Width+1;

end;

procedure TFormConversorFcVta_a_Compra.CDSFcVtaCabXMLmAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  SumarXMLDet;
  dbgFcVtaDet.Width:=dbgFcVtaDet.Width-1;
  dbgFcVtaDet.Width:=dbgFcVtaDet.Width+1;
end;

procedure TFormConversorFcVta_a_Compra.CDSRelacionAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  CDSRelacion.ApplyUpdates(0);

end;

procedure TFormConversorFcVta_a_Compra.CDSRelacionAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSRelacion.ApplyUpdates(0);
end;

procedure TFormConversorFcVta_a_Compra.CDSRelacionCLIENTESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Copy('000000',1,6-Length(Text))+Text;
end;

procedure TFormConversorFcVta_a_Compra.CDSRelacionPROVEEDORSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if CDSRelacion.State=dsBrowse then CDSRelacion.Edit;
      Sender.AsString:=Copy('000000',1,6-Length(Text))+Text;
      DatosConversorVta_Comp.QProveedor.Close;
      DatosConversorVta_Comp.QProveedor.ParamByName('Codigo').Value := Sender.AsString;
      DatosConversorVta_Comp.QProveedor.Open;
      IF NOT (DatosConversorVta_Comp.QProveedor.IsEmpty) THEN
        BEGIN
          CDSRelacionMUESTRANOMBRE.vALUE:= DatosConversorVta_Comp.QProveedorNOMBRE.Value;
        END
      else
        begin
          Sender.AsString:='';
          CDSRelacion.Cancel;
        end;
      DatosConversorVta_Comp.QProveedor.Close;
    end;
end;

procedure TFormConversorFcVta_a_Compra.chbFechaFiscalClick(Sender: TObject);
begin
  inherited;
  FechaFiscal.Enabled:=chbFechaFiscal.Checked;
end;

procedure TFormConversorFcVta_a_Compra.Desconectar;
var Host,Puerto:String;
begin
  DatosConversorVta_Comp.CDSFcVtaCabXML.Close;
  DatosConversorVta_Comp.CDSFcVtaDetXML.Close;
  DatosConversorVta_Comp.CDSFcVtaImpXML.Open;
  MTClientes.Close;
  MTClientes.EmptyTable;
  MTClientes.Open;

  DatosConversorVta_Comp.RemoteDB.Connected:=False;
  lbEstadoConeccion.Caption                 := 'Sin Conexcion..';
  lbEstadoConeccion.Font.Color              := clRed;
  DatosConversorVta_Comp.RemoteDB.Connected := False;
  imDesconectado.Visible                    := True;
  imConectado.Visible                       := False;
  sbEstado.SimpleText:='';

end;


procedure TFormConversorFcVta_a_Compra.Conectar;
var Host,Puerto:String;
begin
  DatosConversorVta_Comp.CDSFcVtaCabXML.Close;
  DatosConversorVta_Comp.CDSFcVtaDetXML.Close;

  Host   := dbcHost.LookupSource.DataSet.FieldByName('HOST').AsString;  // Copy(Host,1,pos(';',Host)-1);
  Puerto := dbcHost.LookupSource.DataSet.FieldByName('PUERTO').AsString; //Trim(Copy(Puerto,pos(';',Puerto)+1,4));

  DatosConversorVta_Comp.RemoteDB.Connected:=False;
  DatosConversorVta_Comp.RemoteDB.ServerUri:='http://'+Host+':'+puerto+'/tms/remotedb';
  try
    DatosConversorVta_Comp.RemoteDB.Connected:=True;
    if DatosConversorVta_Comp.RemoteDB.Connected then
      begin
        lbEstadoConeccion.Caption   := 'Estado Conectado..';
        lbEstadoConeccion.Font.Color:= clGreen;
        imConectado.Visible         := True;
        imDesconectado.Visible      := False;
        btTraerDatos.Enabled        := True;
      end
  except
    lbEstadoConeccion.Caption                 := 'Sin Conexcion..';
    lbEstadoConeccion.Font.Color              := clRed;
    DatosConversorVta_Comp.RemoteDB.Connected := False;
    imDesconectado.Visible                    := True;
    imConectado.Visible                       := False;
    btTraerDatos.Enabled                      := False;

    ShowMessage('No se pudo conetar al equipo remoto..');
  end;
  sbEstado.SimpleText:='';

end;


{
procedure TFormConversorFcVta_a_Compra.ComboBoxDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  sValor, sTodo: string;
  i, iPos: Integer;
  rc: TRect;
  AnchoColumna: array[0..2] of Integer;
begin
  ComboBox.Canvas.Brush.Style := bsSolid;
  ComboBox.Canvas.FillRect( Rect );

  // Las columnas deben ir separadas por un ;
  sTodo := ComboBox.Items[Index];

  // Establecemos el ancho de las columnas
  AnchoColumna[0] := 0;
  AnchoColumna[1] := 250;  // Ancho de la columna 1
  AnchoColumna[2] := 500;  // Ancho de la columna 2
 // AnchoColumna[3] := 650;  // Ancho de la columna 3

  // Leemos el texto de la primera columna
  iPos := Pos( ';', sTodo );
  sValor := Copy( sTodo, 1, iPos - 1 );

  for i := 0 to 2 do
  begin
    // Dibujamos la primera columna
    rc.Left   := Rect.Left + AnchoColumna[i] + 2;
    rc.Right  := Rect.Left + AnchoColumna[i+1] - 2;
    rc.Top    := Rect.Top;
    rc.Bottom := Rect.Bottom;

    // Escribimos el texto
    Combobox.Canvas.TextRect( rc, rc.Left, rc.Top, sValor );

    // Dibujamos las líneas que separan las columnas
    if i < 2 then
    begin
      Combobox.Canvas.MoveTo( rc.Right, rc.Top );
      Combobox.Canvas.LineTo( rc.Right, rc.Bottom );
    end;

    // Leemos el texto de la segunda columna
    sTodo := Copy( sTodo, iPos + 1, Length( sTodo ) - iPos );
    iPos := Pos( ';', sTodo );
    sValor := Copy( sTodo, 1, iPos - 1 );
  end;
end;
 }

procedure TFormConversorFcVta_a_Compra.cxGrid1DBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  ReasignaCtroCosto.Execute;

end;

procedure TFormConversorFcVta_a_Compra.dbcClientesChange(Sender: TObject);
begin
  inherited;
  DSFcVtaCabXML.DataSet.Filtered:=False;
  DSFcVtaCabXML.DataSet.Filter:='';
  if dbcClientes.KeyValue<>'******' then
    DSFcVtaCabXML.DataSet.Filter:='TIPOCPBTE<>''FO'' and FECHAVTA >='+''''+DateToStr(Desde.Date)+''''+' and FECHAVTA<='+''''+DateToStr(Hasta.Date)+''''+' and  codigo='+''''+dbcClientes.KeyValue+''''
  else
    DSFcVtaCabXML.DataSet.Filter:='TIPOCPBTE<>''FO'' and  FECHAVTA >='+''''+DateToStr(Desde.Date)+''''+' and FECHAVTA<='+''''+DateToStr(Hasta.Date)+'''';

  DSFcVtaCabXML.DataSet.Filtered:=True;
  SumarXML;
end;

procedure TFormConversorFcVta_a_Compra.dbcHostClick(Sender: TObject);
begin
  inherited;
  Desconectar;
end;

procedure TFormConversorFcVta_a_Compra.dbcSucursalChange(Sender: TObject);
begin
  inherited;
  QDepositos.Open;
  QDepositos.Close;
  QDepositos.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QDepositos.Open;

  QFc_A.Close;
  QFc_A.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFc_A.Open;

  QFc_B.Close;
  QFc_B.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFc_B.Open;

  QFo_A.Close;
  QFo_A.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFo_A.Open;

  QFo_B.Close;
  QFo_B.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFo_B.Open;

  QNc_A.Close;
  QNc_A.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QNc_A.Open;

  QNc_B.Close;
  QNc_B.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QNc_B.Open;

  QNd_A.Close;
  QNd_A.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QNd_A.Open;

  QNd_B.Close;
  QNd_B.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QNd_B.Open;

  QFc_C.Close;
  QFc_C.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFc_C.Open;

  QFo_C.Close;
  QFo_C.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFo_C.Open;
end;


procedure TFormConversorFcVta_a_Compra.dbgFcVtaCabDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (DSFcVtaCabXML.DataSet.FieldByName('FACTURA_ELECTRONICA').AsString='S') and
     ((DSFcVtaCabXML.DataSet.FieldByName('CAE').AsFloat=0) or (DSFcVtaCabXML.DataSet.FieldByName('CAE').AsString='')) Then
    dbgFcVtaCab.canvas.brush.color := clRed
  else
    dbgFcVtaCab.canvas.brush.color := clWhite;

  if (gdFocused in State) then
    begin
      dbgFcVtaCab.canvas.brush.color := clBlue;
      dbgFcVtaCab.canvas.Font.color  := clWhite;
    end;
    //Esta línea es nueva
  dbgFcVtaCab.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormConversorFcVta_a_Compra.dbgFcVtaDetDblClick(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormStock_2)) then
     FormStock_2:=TFormStock_2.Create(Self);
  FormStock_2.DatoNew:= dbgFcVtaDet.DataSource.DataSet.FieldByName('codigoArticulo').Value;
  formstock_2.recuperar.Execute;
  FormStock_2.Show;
end;

procedure TFormConversorFcVta_a_Compra.dbgRelacionColEnter(Sender: TObject);
begin
  inherited;
  if dbgRelacion.SelectedIndex=1 then
    dbgRelacion.SelectedIndex:=2;
end;

procedure TFormConversorFcVta_a_Compra.dbgRelacionEditButtonClick(Sender: TObject);
begin
  inherited;
    IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
    CDSRelacionPROVEEDORSetText(CDSRelacionPROVEEDOR,FormBuscadorProveedor.Codigo);
end;

procedure TFormConversorFcVta_a_Compra.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  DesdeW.Date:=ADate;
end;

procedure TFormConversorFcVta_a_Compra.DSFcVtaCabXMLStateChange(
  Sender: TObject);
begin
  inherited;
  btImportar.Enabled      :=Not(DSFcVtaCabXML.DataSet.IsEmpty);

end;

procedure TFormConversorFcVta_a_Compra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
//  if FileExists(ExtractFilePath(ParamStr(0))+'ListaHost.txt') then
//    ComboBox.Items.SaveToFile(ExtractFilePath(ParamStr(0))+'ListaHost.txt');

  DatosConversorVta_Comp.mtHost.SaveToFile(ExtractFilePath(ParamStr(0))+'ListaHost.xml');

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportarConversorFactura.ini');
  ArchivoIni.WriteString('Path', 'Path', edPathOrigen.Text);
  ArchivoIni.WriteInteger('Dato', 'Sucursal',dbcSucursal.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteFCA',dbcFacturaA.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteFCB',dbcFacturaB.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteFCC',dbcFacturaC.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteFOA',dbcF_ContadoA.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteFOB',dbcF_ContadoB.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteFOC',dbcF_ContadoC.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteNCA',dbcNc_A.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteNCB',dbcNc_B.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteNDA',dbcNd_A.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteNDB',dbcNd_B.KeyValue);
  ArchivoIni.WriteInteger('Dato', 'ComprobanteFCX',dbcFacturaX.KeyValue);


  ArchivoIni.WriteInteger('Dato', 'caja',rxDbcCaja.KeyValue);
  ArchivoIni.WriteString('Dato', 'Codigostk',dbcStock.KeyValue);


 // ArchivoIni.WriteInteger('base', 'host', ComboBox.ItemIndex);

  ArchivoIni.WriteInteger('base', 'host', dbcHost.KeyValue);

  ArchivoIni.WriteInteger('Dato', 'CentroCosto',ceCentroCosto.KeyValue);

  ArchivoIni.WriteString('Archivo', 'Rubro', cbRubro.KeyValue);
  ArchivoIni.WriteString('Archivo', 'SubRubro', cbSubRubro.KeyValue);

  ArchivoIni.WriteBool('Dato', 'Filtro',chFiltroRelacion.Checked);
  ArchivoIni.WriteInteger('Modo','index',pcModoConeccion.ActivePageIndex);

  ArchivoIni.WriteString('Contable', 'Codigo', edCodCtaContable.Text);
  ArchivoIni.WriteString('Contable', 'Detalle', edCtaContable.Text);

  if Assigned(FormCompra_2) then
    FreeAndNil(FormCompra_2);

  ArchivoIni.Free;
  Action:=caFree;
  FreeAndNil(DatosConversorVta_Comp);
end;

procedure TFormConversorFcVta_a_Compra.FormCreate(Sender: TObject);
var Host,Puerto:String;
F,I:Integer;
begin
  inherited;

  IF NOT (Assigned(DatosConversorVta_Comp)) THEN
    DatosConversorVta_Comp := TDatosConversorVta_Comp.Create(Self);

  QSucursal.Close;
  QSucursal.Open;

  QCaja.Close;
  QCaja.Open;

  CDSRelacion.Close;
  CDSRelacion.Open;

  QCtroCosto.Close;
  QCtroCosto.Open;

  dbcSucursal.KeyValue:=SucursalPorDefecto;

  QDepositos.Open;
  QDepositos.Close;
  QDepositos.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QDepositos.Open;

  QRubro.Close;
  QRubro.Open;

  QArticuloAlte.Close;
  QArticuloAlte.Open;

  QSubRubro.Close;
  QSubRubro.ParamByName('rubro').Value:=cbRubro.KeyValue;
  QSubRubro.Open;

  dbcDeposito.KeyValue:=DepositoPorDefecto;

  QFc_A.Close;
  QFc_A.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFc_A.Open;

  QFc_B.Close;
  QFc_B.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFc_B.Open;

  QFo_A.Close;
  QFo_A.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFo_A.Open;

  QFo_B.Close;
  QFo_B.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFo_B.Open;

  QNc_A.Close;
  QNc_A.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QNc_A.Open;

  QNc_B.Close;
  QNc_B.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QNc_B.Open;

  QNd_A.Close;
  QNd_A.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QNd_A.Open;

  QNd_B.Close;
  QNd_B.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QNd_B.Open;

  QFc_C.Close;
  QFc_C.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFc_C.Open;

  QFo_C.Close;
  QFo_C.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFo_C.Open;

  QFcX.Close;
  QFcX.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFcX.Open;


  ArchivoIni           := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportarConversorFactura.ini');
  edPathOrigen.Text    := ArchivoIni.ReadString('Path', 'Path', '...');
  dbcSucursal.KeyValue := ArchivoIni.ReadInteger('Dato', 'Sucursal',SucursalPorDefecto);
  rxDbcCaja.KeyValue   := ArchivoIni.ReadInteger('Dato', 'caja',CajaPorDefecto);

  cbRubro.KeyValue     := ArchivoIni.ReadString('Archivo', 'Rubro', '***');
  cbSubRubro.KeyValue  := ArchivoIni.ReadString('Archivo', 'SubRubro', '*****');

  QDepositos.Open;
  QDepositos.Close;
  QDepositos.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QDepositos.Open;


  QFc_A.Close;
  QFc_A.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFc_A.Open;

  QFc_B.Close;
  QFc_B.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFc_B.Open;

  QFo_A.Close;
  QFo_A.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFo_A.Open;

  QFo_B.Close;
  QFo_B.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFo_B.Open;

  QNc_A.Close;
  QNc_A.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QNc_A.Open;

  QNc_B.Close;
  QNc_B.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QNc_B.Open;

  QNd_A.Close;
  QNd_A.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QNd_A.Open;

  QNd_B.Close;
  QNd_B.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QNd_B.Open;

  QFc_C.Close;
  QFc_C.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFc_C.Open;

  QFo_C.Close;
  QFo_C.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFo_C.Open;

  QFcX.Close;
  QFcX.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QFcX.Open;

  dbcDeposito.KeyValue    := ArchivoIni.ReadInteger('Dato', 'Deposito',DepositoPorDefecto);

  dbcFacturaA.KeyValue    := ArchivoIni.ReadInteger('Dato', 'ComprobanteFCA',-1);
  dbcFacturaB.KeyValue    := ArchivoIni.ReadInteger('Dato', 'ComprobanteFCB',-1);
  dbcFacturaC.KeyValue    := ArchivoIni.ReadInteger('Dato', 'ComprobanteFCC',-1);
  dbcF_ContadoA.KeyValue  := ArchivoIni.ReadInteger('Dato', 'ComprobanteFOA',-1);
  dbcF_ContadoB.KeyValue  := ArchivoIni.ReadInteger('Dato', 'ComprobanteFOB',-1);
  dbcF_ContadoC.KeyValue  := ArchivoIni.ReadInteger('Dato', 'ComprobanteFOC',-1);
  dbcNc_A.KeyValue        := ArchivoIni.ReadInteger('Dato', 'ComprobanteNCA',-1);
  dbcNc_B.KeyValue        := ArchivoIni.ReadInteger('Dato', 'ComprobanteNCB',-1);
  dbcNd_A.KeyValue        := ArchivoIni.ReadInteger('Dato', 'ComprobanteNDA',-1);
  dbcNd_B.KeyValue        := ArchivoIni.ReadInteger('Dato', 'ComprobanteNDB',-1);
  dbcFacturaX.KeyValue    := ArchivoIni.ReadInteger('Dato', 'ComprobanteFCX',-1);

  dbcStock.KeyValue       := ArchivoIni.ReadString('Dato', 'Codigostk','00000000');

  ceCentroCosto.KeyValue  := ArchivoIni.ReadInteger('Dato', 'CentroCosto',-1);

  chFiltroRelacion.Checked:= ArchivoIni.ReadBool('Dato', 'Filtro',False);

//  if not FileExists(ExtractFilePath(ParamStr(0))+'ListaHost.txt') then
//    begin
//      F:=FileCreate(ExtractFilePath(ParamStr(0))+'ListaHost.txt');
//      FileClose(F);
//    end;
 // Combobox.Style := csOwnerDrawFixed;
 // ComboBox.Clear;
 // ComboBox.Items.LoadFromFile(ExtractFilePath(ParamStr(0))+'ListaHost.txt');

  i:=ArchivoIni.ReadInteger('base', 'host',-1);

  if FileExists(ExtractFilePath(ParamStr(0))+'ListaHost.xml') then
    DatosConversorVta_Comp.mtHost.LoadFromFile(ExtractFilePath(ParamStr(0))+'ListaHost.xml');
  DatosConversorVta_Comp.mtHost.open;
  if DatosConversorVta_Comp.mtHost.RecordCount>0 then
    dbcHost.KeyValue:=I;


 // if ArchivoIni.ReadInteger('base', 'host',-1 )>-1 then
 //   ComboBox.ItemIndex := ArchivoIni.ReadInteger('base', 'host',-1 );

  pcModoConeccion.ActivePageIndex := ArchivoIni.ReadInteger('Modo','index',0);

  edCodCtaContable.Text := ArchivoIni.ReadString('Contable', 'Codigo', '');
  edCtaContable.Text    := ArchivoIni.ReadString('Contable', 'Detalle', '');

  ArchivoIni.Free;

  if edCodCtaContable.Text='edCodCtaContable' then
    begin
      edCodCtaContable.Text := '';
      edCtaContable.Text    := '';

    end;

 //  if ComboBox.ItemIndex>-1 then
//    begin
//      Host:= ComboBox.Items[ComboBox.ItemIndex];
//      Host:= Copy(Host,1,pos(';',Host)-1);

//      Puerto:= ComboBox.Items[ComboBox.ItemIndex];
//      Puerto:= Copy(Puerto,pos(';',Puerto)+1,3);
//    end;

  pcImportacion.ActivePageIndex:=0;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  if Not(Assigned(FormNovedadesFacturacion)) then
    FormNovedadesFacturacion:=TFormNovedadesFacturacion.Create(Self);
  FormNovedadesFacturacion.lwNovedades.Clear;
end;

procedure TFormConversorFcVta_a_Compra.FormDestroy(Sender: TObject);
begin
  inherited;
  FormConversorFcVta_a_Compra:=nil;
end;

procedure TFormConversorFcVta_a_Compra.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 // if Not(Components is TcxGrid) then

 // inherited;

end;

procedure TFormConversorFcVta_a_Compra.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(Desde.Date));
  DesdeW.Date:=Desde.Date;
  HastaW.Date:=Hasta.Date;
end;

procedure TFormConversorFcVta_a_Compra.HastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  HastaW.Date:=ADate;
end;

procedure TFormConversorFcVta_a_Compra.IngresarArticulosExecute(Sender: TObject);
var CodigoArt,Detalle:String;
V_Stock:TStock;
begin
  inherited;
  V_Stock             := TStock.Create;
  sbEstado.SimpleText := 'Ingresando Articulo..... ';
  Detalle             := trim(UpperCase(copy(DSFcVtaDetXML.DataSet.FieldByName('DETALLE').AsString,1,45)));

  V_Stock:= DMMain_FD.GetCodigo_x_Alternativo(Trim(DSFcVtaDetXML.DataSet.FieldByName('CODIGOARTICULO').AsString));
//  if Trim(QTraeCodigoCODIGO_STK.AsString)<>'' then
  if V_Stock.Ok then
    begin
      CodigoArt := V_Stock.Codigo;// QTraeCodigoCODIGO_STK.AsString;
      Detalle   := V_stock.Detalle;// QTraeCodigoDETALLE_STK.AsString;
    end
  else
    begin
      try
        QUltimoCodigoStk.Close;
        QUltimoCodigoStk.ParamByName('Prefijo').Value :=  '[0-9]{8}';
        QUltimoCodigoStk.Open;
        if QUltimoCodigoStk.Fields[0].AsString<>'' Then
          CodigoArt:=IntToStr(QUltimoCodigoStk.Fields[0].AsInteger+1)
        else
          CodigoArt:='0';
      except
        CodigoArt:=dbcStock.KeyValue;
      end;

      QUltimoCodigoStk.Close;
      CodigoArt := copy('00000000',1,8-length(CodigoArt)) + CodigoArt;
    end;

//  FreeAndNil(V_Stock);

  spABMStock_FD.Close;
  spABMStock_FD.ParamByName('CODIGO').Value                := CodigoArt;
  spABMStock_FD.ParamByName('CODIGO_alternativo').Value    := Trim(DSFcVtaDetXML.DataSet.FieldByName('CODIGOARTICULO').AsString);
  spABMStock_FD.ParamByName('Detalle').AsString            := Detalle;
  spABMStock_FD.ParamByName('Detalle_Adicional').AsString  := Detalle;
  spABMStock_FD.ParamByName('costo_gravado').Value         := DSFcVtaDetXML.DataSet.FieldByName('UNITARIO_TOTAL').AsFloat;

  spABMStock_FD.ParamByName('Marca').AsString              := '';
  spABMStock_FD.ParamByName('Rubro').AsString              := cbRubro.KeyValue;

  spABMStock_FD.ParamByName('subRubro').AsString           := cbSubRubro.KeyValue;
  spABMStock_FD.ParamByName('modo_gravamen').AsString      := DSFcVtaDetXML.DataSet.FieldByName('MODO_GRAVAMEN').AsString;

  spABMStock_FD.ParamByName('costo_exento').Value          := 0;
  spABMStock_FD.ParamByName('tasa_iva').AsInteger          := DSFcVtaDetXML.DataSet.FieldByName('TIPOIVA_TASA').AsInteger;

  spABMStock_FD.ParamByName('sobretasa_iva').AsInteger     := DSFcVtaDetXML.DataSet.FieldByName('TIPOIVA_TASA').AsInteger;
  spABMStock_FD.ParamByName('moneda').AsInteger            := 1;

  spABMStock_FD.ExecProc;
  spABMStock_FD.Close;

  if DMMain_FD.GetUsaContabilidad then
    begin
      spABMStock_FD.Close;
      spAsignaCtaContable.Close;
      spAsignaCtaContable.Params.ParamByName('COD_ELEMENTO').Value:= CodigoArt;
      spAsignaCtaContable.Params.ParamByName('CTA_CONTABLE').Value:= DMContable.GetIdCta(edCodCtaContable.text);
      spAsignaCtaContable.Params.ParamByName('TABLA').Value       := 4;
      spAsignaCtaContable.ExecProc;
      spAsignaCtaContable.Close;

      spABMStock_FD.Close;
      spAsignaCtaContable.Close;
      spAsignaCtaContable.Params.ParamByName('COD_ELEMENTO').Value:= CodigoArt;
      spAsignaCtaContable.Params.ParamByName('CTA_CONTABLE').Value:= DMContable.GetIdCta(edCodCtaContable.text);
      spAsignaCtaContable.Params.ParamByName('TABLA').Value       := 3;
      spAsignaCtaContable.ExecProc;
      spAsignaCtaContable.Close;
    end;

  sbEstado.SimpleText:='';

end;

procedure TFormConversorFcVta_a_Compra.lbDirectorioClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.Directorio:=edPathOrigen.Text;
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    edPathOrigen.Text:=FormBuscaDirectorio.Directorio;
end;

procedure TFormConversorFcVta_a_Compra.LimpiarMarcasExecute(Sender: TObject);
begin
  inherited;
  CDSFactImportadas.First;
  while not(CDSFactImportadas.Eof) do
    begin
      CDSFactImportadas.Edit;
      CDSFactImportadasSELECCION.Value:=False;
      CDSFactImportadas.Next;
    end;
  CDSFactImportadas.First;
end;

procedure TFormConversorFcVta_a_Compra.MenuItem1Click(Sender: TObject);
begin
  inherited;
 CopiarClipBoard(dbgFcVtaCab);
end;

procedure TFormConversorFcVta_a_Compra.ModificarArticuloExecute(
  Sender: TObject);
var CodigoArt,Detalle,vacio,r,sr,Mg,CAlt:String;
TIva,Mon:Integer;
begin
  inherited;
  sbEstado.SimpleText:='Revisando Articulo..... ';
  vacio    := '';
  Detalle  := trim(UpperCase(copy(DSFcVtaDetXML.DataSet.FieldByName('DETALLE').AsString,1,45)));
  Mg       := DSFcVtaDetXML.DataSet.FieldByName('MODO_GRAVAMEN').AsString;
  CAlt     := Trim(DSFcVtaDetXML.DataSet.FieldByName('CODIGOARTICULO').AsString);
  TIva     := DSFcVtaDetXML.DataSet.FieldByName('TIPOIVA_TASA').AsInteger;
  Mon      := 1;
  if DSFcVtaDetXML.DataSet.FieldByName('UNITARIO_TOTAL').AsFloat>0 then
    begin
      CodigoArt   :=Trim(DSFcVtaDetXML.DataSet.FieldByName('CodigoArticulo').AsString);
      r  := cbRubro.KeyValue;
      sr := cbSubRubro.KeyValue;
      ModificaStock(CodigoArt,
                    Detalle,
                    vacio,
                    r,
                    sr,
                    Mg,
                    Detalle,
                    CAlt,
                    TIva,
                    TIva,
                    Mon);


//      DMMain_FD.fdcGestion.StartTransaction;
//      try
//        spABMStock_FD.Close;
//        spABMStock_FD.ParamByName('CODIGO').Value                := CodigoArt;
//        spABMStock_FD.ParamByName('CODIGO_alternativo').Value    := Trim(DSFcVtaDetXML.DataSet.FieldByName('CODIGOARTICULO').AsString);
//        spABMStock_FD.ParamByName('Detalle').AsString            := Detalle;
//        spABMStock_FD.ParamByName('Detalle_Adicional').AsString  := Detalle;
//        spABMStock_FD.ParamByName('costo_gravado').Value         := DSFcVtaDetXML.DataSet.FieldByName('UNITARIO_GRAVADO').AsFloat;
//
//        spABMStock_FD.ParamByName('Marca').AsString              := '';
//        spABMStock_FD.ParamByName('Rubro').AsString              := cbRubro.KeyValue;
//        spABMStock_FD.ParamByName('subRubro').AsString           := cbSubRubro.KeyValue;
//
//        spABMStock_FD.ParamByName('modo_gravamen').AsString      := DSFcVtaDetXML.DataSet.FieldByName('MODO_GRAVAMEN').AsString;
//        spABMStock_FD.ParamByName('costo_exento').Value          := DSFcVtaDetXML.DataSet.FieldByName('UNITARIO_EXENTO').AsFloat;;
//
//        spABMStock_FD.ParamByName('tasa_iva').AsInteger          := DSFcVtaDetXML.DataSet.FieldByName('TIPOIVA_TASA').AsInteger;
//        spABMStock_FD.ParamByName('sobretasa_iva').AsInteger     := DSFcVtaDetXML.DataSet.FieldByName('TIPOIVA_TASA').AsInteger;
//        spABMStock_FD.ParamByName('moneda').AsInteger            := 1;
//
//        spABMStock_FD.ExecProc;
//        spABMStock_FD.Close;
//        DMMain_FD.fdcGestion.Commit;
//      except
//        DMMain_FD.fdcGestion.Rollback;
//      end;
    end;

  if (DMMain_FD.GetUsaContabilidad) and (DSFcVtaDetXML.DataSet.FieldByName('UNITARIO_TOTAL').AsFloat>0) and (Trim(edCodCtaContable.Text)<>'') then
    begin
      spAsignaCtaContable.Close;
      spAsignaCtaContable.Params.ParamByName('COD_ELEMENTO').Value:= CodigoArt;
      spAsignaCtaContable.Params.ParamByName('CTA_CONTABLE').Value:= DMContable.GetIdCta(edCodCtaContable.text);
      spAsignaCtaContable.Params.ParamByName('TABLA').Value       := 4;
      spAsignaCtaContable.ExecProc;
      spAsignaCtaContable.Close;

      spAsignaCtaContable.Close;
      spAsignaCtaContable.Params.ParamByName('COD_ELEMENTO').Value:= CodigoArt;
      spAsignaCtaContable.Params.ParamByName('CTA_CONTABLE').Value:= DMContable.GetIdCta(edCodCtaContable.text);
      spAsignaCtaContable.Params.ParamByName('TABLA').Value       := 3;
      spAsignaCtaContable.ExecProc;
      spAsignaCtaContable.Close;

    end;

  sbEstado.SimpleText:='';
end;


procedure TFormConversorFcVta_a_Compra.pcModoConeccionChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  AllowChange:= (DSFcVtaCabXML.DataSet.IsEmpty);

end;

procedure TFormConversorFcVta_a_Compra.pnHostExit(Sender: TObject);
begin
  inherited;
  pnHost.Visible:=False;
end;

procedure TFormConversorFcVta_a_Compra.ReASignaCtaContableExecute(
  Sender: TObject);
begin
  inherited;
  spAsignaCtaContable.Close;
  spAsignaCtaContable.Params.ParamByName('COD_ELEMENTO').Value:= dbgFcVtaDet.DataSource.DataSet.FieldByName('codigoArticulo').Value;
  spAsignaCtaContable.Params.ParamByName('CTA_CONTABLE').Value:= DMContable.GetIdCta(edCodCtaContable.text);
  spAsignaCtaContable.Params.ParamByName('TABLA').Value       := 4;
  spAsignaCtaContable.ExecProc;
  spAsignaCtaContable.Close;

  spAsignaCtaContable.Close;
  spAsignaCtaContable.Params.ParamByName('COD_ELEMENTO').Value:= dbgFcVtaDet.DataSource.DataSet.FieldByName('codigoArticulo').Value;
  spAsignaCtaContable.Params.ParamByName('CTA_CONTABLE').Value:= DMContable.GetIdCta(edCodCtaContable.text);
  spAsignaCtaContable.Params.ParamByName('TABLA').Value       := 3;
  spAsignaCtaContable.ExecProc;
  spAsignaCtaContable.Close;
end;

procedure TFormConversorFcVta_a_Compra.ReASignaCtrCostoLoteExecute(Sender: TObject);
begin
  inherited;
  CDSFactImportadas.First;
  while not(CDSFactImportadas.Eof) do
    begin
      if CDSFactImportadasSELECCION.Value=True then
        ReasignaCtroCosto.Execute;
      CDSFactImportadas.Next;
    end;
  CDSFactImportadas.First;
end;

procedure TFormConversorFcVta_a_Compra.ReasignaCtroCostoExecute(
  Sender: TObject);
var i:integer;
Lista:TListItem;
HayNovedades:Boolean;
pos:Integer;
Valor,Importe,Dscto:Extended;
Cadena,ValorStr:String;
Longitud:Integer;
begin
  inherited;
  if CDSFactImportadasID_FC.AsString<>'' then
    begin
      QBorrarImputacinCCostoFD.Close;
      QBorrarImputacinCCostoFD.ParamByName('Id').Value  :=CDSFactImportadasID_FC.Value;
      QBorrarImputacinCCostoFD.ParamByName('Tipo').Value:=CDSFactImportadasTIPOCPBTE.Value;
      QBorrarImputacinCCostoFD.ExecSQL();
      QBorrarImputacinCCostoFD.Close;


      if Not(Assigned(FormCompra_2)) then
        FormCompra_2:=TFormCompra_2.Create(Self);
      FormCompra_2.FormStyle:=fsNormal;
      FormCompra_2.Visible  :=False;
      FormCompra_2.DatoNew  :=CDSFactImportadasID_FC.AsString;
      FormCompra_2.TipoCpbte:=CDSFactImportadasTIPOCPBTE.Value;
      FormCompra_2.Recuperar.Execute;
      //*******************************************************************
      sbEstado.SimpleText:='Apliacando Centro de Costo....';
      Application.ProcessMessages;

      begin
        if Not(Assigned(FormAsignacionCentroCosto)) then
          FormAsignacionCentroCosto:=TFormAsignacionCentroCosto.Create(Self);
        FormAsignacionCentroCosto.IdCpbte  := DatosCompra.CDSCompraCabID_FC.Value;
        FormAsignacionCentroCosto.TipoCpbte:= DatosCompra.CDSCompraCabTIPOCPBTE.Value;
        FormAsignacionCentroCosto.Tipo     := 'E';
        FormAsignacionCentroCosto.CtroCosto:= ceCentroCosto.KeyValue;

        FormAsignacionCentroCosto.Total    := RoundTo(DatosCompra.CDSCompraCabNETOGRAV2.AsFloat +
                                                      DatosCompra.CDSCompraCabNETOEXEN2.AsFloat +
                                                      DatosCompra.CDSCompraCabIMPORTEEXCLUIDO2.ASFloat +
                                                      DatosCompra.CDSCompraCabNETOMONOTRIBUTO2.AsFloat,-2);

        FormCompra_2.DBGrillaDetalle.DataSource.DataSet.First;
        while Not(FormCompra_2.DBGrillaDetalle.DataSource.DataSet.Eof) do
          begin
            pos:=FormAsignacionCentroCosto.LstConcepto.IndexOf(FormCompra_2.DBGrillaDetalle.Columns[0].Field.Text);
            if Pos<0 Then
              begin
                FormAsignacionCentroCosto.LstConcepto.Append(FormCompra_2.DBGrillaDetalle.Columns[0].Field.Text );
                FormAsignacionCentroCosto.LstDetalles.Append(FormCompra_2.DBGrillaDetalle.Columns[1].Field.Text );
                Importe:= StrToFloat(AnsiReplaceText(FormCompra_2.DBGrillaDetalle.Columns[9].Field.Text,',',''));
                Dscto  := 1-(DatosCompra.CDSCompraCabDSTO.AsFloat * 0.01);
                Importe:= Importe * Dscto;
                FormAsignacionCentroCosto.LstImportes.Append(FloatToStr(Importe));
               end
             else
               begin
                 Importe:= StrToFloat(AnsiReplaceText(FormCompra_2.DBGrillaDetalle.Columns[9].Field.Text,',',''));
                 Dscto  := 1-(DatosCompra.CDSCompraCabDSTO.AsFloat * 0.01);
                 Importe:= Importe * Dscto;
                 Valor:=StrToFloat(AnsiReplaceText(FormAsignacionCentroCosto.LstImportes[Pos],',',''))+ Importe;
                 FormAsignacionCentroCosto.LstImportes[Pos]:=FloatToStr(Valor);
               end;
            FormCompra_2.DBGrillaDetalle.DataSource.DataSet.Next;
          end;
        //********************************************************
        FormAsignacionCentroCosto.edTotalGral.Value:=FormAsignacionCentroCosto.Total;

        FormAsignacionCentroCosto.dbgAplic.Columns[0].PickList.Clear;
         for I := 0 to FormAsignacionCentroCosto.LstConcepto.Count - 1 do
           begin
             Cadena:=FormAsignacionCentroCosto.LstConcepto[i];
             FormAsignacionCentroCosto.dbgAplic.Columns[0].PickList.Add(Cadena);
           end;
        longitud:=length(FormAsignacionCentroCosto.LstConcepto[0]);
        FormAsignacionCentroCosto.CDSAplic.Close;
        FormAsignacionCentroCosto.CDSAplic.Params.ParamByName('id').Value       :=FormAsignacionCentroCosto.IdCpbte;
        FormAsignacionCentroCosto.CDSAplic.Params.ParamByName('TipoCpbte').Value:=FormAsignacionCentroCosto.TipoCpbte;
        FormAsignacionCentroCosto.CDSAplic.Params.ParamByName('Tipo').Value     :=FormAsignacionCentroCosto.Tipo;
        FormAsignacionCentroCosto.CDSAplic.Open;
        if FormAsignacionCentroCosto.CDSAplic.IsEmpty then
          begin
            for I := 0 to FormAsignacionCentroCosto.LstConcepto.Count - 1 do
              begin
                Cadena:=FormAsignacionCentroCosto.LstConcepto[i];
                if StrToFloat(FormAsignacionCentroCosto.LstImportes[i])>0 then
                  begin
                    FormAsignacionCentroCosto.CDSAplic.Append;
                    FormAsignacionCentroCosto.CDSAplicCONCEPTOSetText(FormAsignacionCentroCosto.CDSAplicCONCEPTO,Cadena);
                    FormAsignacionCentroCosto.CDSAplicDETALLE_CONCEP.Value:=FormAsignacionCentroCosto.LstDetalles[i];
                    FormAsignacionCentroCosto.CDSAplicIMPORTE_LINEASetText(FormAsignacionCentroCosto.CDSAplicIMPORTE_LINEA,FormAsignacionCentroCosto.LstImportes[i]);
                    FormAsignacionCentroCosto.CDSAplicIMPUTADOSetText(FormAsignacionCentroCosto.CDSAplicIMPUTADO,FormAsignacionCentroCosto.LstImportes[i]);
                    FormAsignacionCentroCosto.CDSAplic.Post;
                  end;
              end;
          end;

        //********************************************************
        FormAsignacionCentroCosto.btAceptar.Click;
      end;
      FormCompra_2.Salir.Execute;
      if Assigned(FormCompra_2) then
        FreeAndNil(FormCompra_2);
    end;
end;

procedure TFormConversorFcVta_a_Compra.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
begin
  if chbPorDia.Checked=False then
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
      Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
    end
  else
    begin
      if Button=btnext Then
        Desde.Date:=IncDay(Desde.Date,1)
      else
        if Button=btPrev Then
         Desde.Date:=IncDay(Desde.Date,-1);
       Hasta.Date:=Desde.Date;

    end;

  desdew.Date:=Desde.Date;
  hastaw.Date:=Hasta.Date;

  if Not(DatosConversorVta_Comp.CDSFcVtaCabXML.IsEmpty) then
    begin
      DatosConversorVta_Comp.CDSFcVtaCabXML.Filtered:=False;
      DatosConversorVta_Comp.CDSFcVtaCabXML.Filter:='';
      if dbcClientes.KeyValue<>'******' then
        DatosConversorVta_Comp.CDSFcVtaCabXML.Filter:=' FECHAVTA >='+''''+DateToStr(Desde.Date)+''''+' and FECHAVTA<='+''''+DateToStr(Hasta.Date)+''''+' and  codigo='+''''+dbcClientes.KeyValue+''''
      else
        DatosConversorVta_Comp.CDSFcVtaCabXML.Filter:=' FECHAVTA >='+''''+DateToStr(Desde.Date)+''''+' and FECHAVTA<='+''''+DateToStr(Hasta.Date)+'''';
      DatosConversorVta_Comp.CDSFcVtaCabXML.Filtered:=True;
      SumarXML;
    end;
end;

procedure TFormConversorFcVta_a_Compra.UpDown2Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
begin
  DecodeDate(DesdeW.Date,y,m,d);
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

  DesdeW.Date:=EncodeDate(y,m,1);
  HastaW.Date:=EncodeDate(y,m,DaysInMonth(DesdeW.Date));

  Desde.Date:=DesdeW.Date;
  Hasta.Date:=HastaW.Date;

end;


procedure TFormConversorFcVta_a_Compra.VerCpbteAplicadoExecute(Sender: TObject);
begin
  inherited;
  if (Assigned(FormCompra_2)) then
    FreeAndNil(FormCompra_2);

  if Not(Assigned(FormCompra_2)) then
    FormCompra_2:=TFormCompra_2.Create(Self);
  FormCompra_2.DatoNew  :=CDSFactImportadasID_FC.AsString;
  FormCompra_2.TipoCpbte:=CDSFactImportadasTIPOCPBTE.Value;
  FormCompra_2.Recuperar.Execute;
  FormCompra_2.Show;
  FormCompra_2.BringToFront;
end;

procedure TFormConversorFcVta_a_Compra.VerCpbteExecute(Sender: TObject);
begin
  inherited;
  if (Assigned(FormCompra_2)) then
    FreeAndNil(FormCompra_2);

  if Not(Assigned(FormCompra_2)) then
    FormCompra_2:=TFormCompra_2.Create(Self);
  FormCompra_2.DatoNew  :=MemoryDataID.ASString;
  FormCompra_2.TipoCpbte:=MemoryDataTIPOCPBTE.ASString;
  FormCompra_2.Recuperar.Execute;
  FormCompra_2.Show;
  FormCompra_2.BringToFront;

end;

procedure TFormConversorFcVta_a_Compra.VerificaMontosExecute(Sender: TObject);
begin
  inherited;
  DatosConversorVta_Comp.CDSFcVtaCabXML.First;
  while not(DatosConversorVta_Comp.CDSFcVtaCabXML.Eof) do
    begin
      if CDSFactImportadas.Locate('TIPOCPBTE;NROCPBTE',VarArrayOf([DatosConversorVta_Comp.CDSFcVtaCabXML.FieldByName('TIPOCPBTE').AsString,DatosConversorVta_Comp.CDSFcVtaCabXML.FieldByName('NROCPBTE').AsString]),[]) Then
        begin
          if (Trunc(Abs(CDSFactImportadasTOTAL.Value) * 100) = Trunc(Abs(DatosConversorVta_Comp.CDSFcVtaCabXML.FieldByName('TOTAL').Value) * 100)) then
            begin
              CDSFactImportadas.Edit;
              CDSFactImportadasSELECCION.Value:=True;
              CDSFactImportadas.Post;
            end;
        end;
      DatosConversorVta_Comp.CDSFcVtaCabXML.Next;
    end;
end;

procedure TFormConversorFcVta_a_Compra.VerificarExecute(Sender: TObject);
begin
  inherited;
  DatosConversorVta_Comp.CDSFcVtaCabXML.First;
  while not(DatosConversorVta_Comp.CDSFcVtaCabXML.Eof) do
    begin
      if CDSFactImportadas.Locate('TIPOCPBTE;NROCPBTE',VarArrayOf([DatosConversorVta_Comp.CDSFcVtaCabXML.FieldByName('TipoCpbte').Value,DatosConversorVta_Comp.CDSFcVtaCabXML.FieldByName('NROCPBTE').Value]),[]) Then
        begin
          CDSFactImportadas.Edit;
          CDSFactImportadasSELECCION.Value:=True;
          CDSFactImportadas.Post;
        end;
      DatosConversorVta_Comp.CDSFcVtaCabXML.Next;
    end;

end;

end.
