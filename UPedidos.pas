unit UPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, JvToolEdit, MidasLib,
  JvDBControls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, JvExMask,System.Types,
  JvExControls, JvLabel, Vcl.ComCtrls, Data.DBXInterBase, Data.FMTBcd, Data.DB,
  Datasnap.Provider, Datasnap.DBClient, Data.SqlExpr, System.Actions,
  Vcl.ActnList, IBGenerator, AdvUtil, AdvObj, BaseGrid, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, CompBuscador,IniFiles, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, frxClass,
  frxDBSet, JvGradient, Vcl.ExtCtrls, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxPSStdGrLnk, JvAppStorage, JvAppIniStorage,
  JvComponentBase, JvFormPlacement, JvBaseEdits, Vcl.Menus, Vcl.ImgList,
  JvMaskEdit, JvDBFindEdit, AdvGroupBox, AdvOfficeButtons,StrUtils, ToolPanels, JvExStdCtrls, JvCombobox, JvDBCombobox,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, dxPScxVGridLnk,
  Vcl.Samples.Spin, JvArrowButton,Math, DataExport, DataToXLS,VirtualUI_SDK,
  JvDBLookup, frCoreClasses, dxSkinWXI;

type
  TFormPedidos = class(TForm)
    pcGeneral: TPageControl;
    tsPedido: TTabSheet;
    tsPlantilla: TTabSheet;
    dbgPlantilla: TDBGrid;
    btCancelar: TBitBtn;
    btGuardar: TBitBtn;
    btNuevo: TBitBtn;
    CDSPlantilla: TClientDataSet;
    DSPPlantilla: TDataSetProvider;
    CDSPlantillaCODIGO: TStringField;
    CDSPlantillaID_ORDEN: TIntegerField;
    CDSPlantillaDETALLE_STK: TStringField;
    DSPlantilla: TDataSource;
    ActionList1: TActionList;
    BuscaArticulos: TAction;
    DSPedidoCab: TDataSource;
    DSPedidoDet: TDataSource;
    BuscarClientes: TAction;
    CDSPlantillaMUESTRASUBRUB: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1IDCAB: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRADETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD_PEDIDA: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD_UNID_PED: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD_UNID_ENTR: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD_PRESENTACION: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRASUBRUB: TcxGridDBColumn;
    btBuscar: TBitBtn;
    ComBuscadorPedidos: TComBuscador;
    Facturar: TAction;
    dxComponentPrinter1: TdxComponentPrinter;
    btImprimir: TBitBtn;
    dxComponentPrinter1Link1: TdxGridReportLink;
    btBorrar: TBitBtn;
    btRemitar: TBitBtn;
    frxReport: TfrxReport;
    frDBDetalle: TfrxDBDataset;
    frDBCabecera: TfrxDBDataset;
    pnPie: TPanel;
    QPlantilla: TFDQuery;
    CDSPlantillaPRESENTACION_CANTIDAD: TFloatField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    QPlantillaCODIGO: TStringField;
    QPlantillaID_ORDEN: TIntegerField;
    QPlantillaDETALLE_STK: TStringField;
    QPlantillaPRESENTACION_CANTIDAD: TFloatField;
    QPlantillaMUESTRASUBRUB: TStringField;
    JvFormStorage1: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    pnPiePlantilla: TPanel;
    btBorrarPlantilla: TButton;
    Label1: TLabel;
    btTransferir: TBitBtn;
    tsPrevision: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    DSPrevision: TDataSource;
    cxGridDBTableView1CODIGO: TcxGridDBColumn;
    cxGridDBTableView1CANTIDAD_PEDIDA: TcxGridDBColumn;
    cxGridDBTableView1CANTIDAD_UNID_PED: TcxGridDBColumn;
    cxGridDBTableView1CANTIDAD_UNID_ENTR: TcxGridDBColumn;
    cxGridDBTableView1MUESTRASUBRUB: TcxGridDBColumn;
    cxGridDBTableView1MUESTRADETALLE: TcxGridDBColumn;
    pnCantidad: TPanel;
    Panel2: TPanel;
    edCantidad: TJvCalcEdit;
    Label4: TLabel;
    btOkCantidad: TBitBtn;
    EstadoPrevision: TAction;
    Recuperar: TAction;
    DBText1: TDBText;
    DBText2: TDBText;
    DBMemo1: TDBMemo;
    pnCabecera: TPanel;
    lbEstadoPrevision: TLabel;
    ceCodigo: TJvDBComboEdit;
    dbeNombre: TDBEdit;
    dbeFechaVta: TJvDBDateEdit;
    pnPrevision: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    dbeVtoRevision: TJvDBDateEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    TabSheet1: TTabSheet;
    QGrupos: TFDQuery;
    DSPGrupos: TDataSetProvider;
    CDSGrupos: TClientDataSet;
    DSGrupos: TDataSource;
    QGruposID: TIntegerField;
    QGruposORDEN: TIntegerField;
    CDSGruposID: TIntegerField;
    CDSGruposORDEN: TIntegerField;
    QGruposDESCRIPCION: TStringField;
    CDSGruposDESCRIPCION: TStringField;
    QNextIDGrupo: TFDQuery;
    QNextIDGrupoNEXTID: TIntegerField;
    btAgregar: TButton;
    lwLista: TListView;
    edGrupo: TEdit;
    GuardarGrupo: TAction;
    spABGrupo: TFDStoredProc;
    PopupMenu1: TPopupMenu;
    Borrar: TAction;
    Borrar1: TMenuItem;
    Button2: TButton;
    ImageList1: TImageList;
    QPlantillaID_GRUPO: TIntegerField;
    QPlantillaMUESTRAGRUPO: TStringField;
    CDSPlantillaID_GRUPO: TIntegerField;
    CDSPlantillaMUESTRAGRUPO: TStringField;
    pcOrdenamiento: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2ID: TcxGridDBColumn;
    cxGridDBTableView2IDCAB: TcxGridDBColumn;
    cxGridDBTableView2CODIGO: TcxGridDBColumn;
    cxGridDBTableView2MUESTRADETALLE: TcxGridDBColumn;
    cxGridDBTableView2CANTIDAD_PEDIDA: TcxGridDBColumn;
    cxGridDBTableView2CANTIDAD_UNID_PED: TcxGridDBColumn;
    cxGridDBTableView2CANTIDAD_UNID_ENTR: TcxGridDBColumn;
    cxGridDBTableView2CANTIDAD_PRESENTACION: TcxGridDBColumn;
    edFind: TJvDBFindEdit;
    JvDBFindEdit1: TJvDBFindEdit;
    spGeneraPedido: TFDStoredProc;
    chTodos: TAdvOfficeCheckBox;
    chPedidosPrevision: TAdvOfficeCheckBox;
    chCantidadCero: TAdvOfficeCheckBox;
    chImprimeCero: TAdvOfficeCheckBox;
    rgCantidades: TAdvOfficeRadioGroup;
    cxGridDBTableView2ORDEN_GRUPO: TcxGridDBColumn;
    DBText3: TDBText;
    DBText4: TDBText;
    PopupMenu2: TPopupMenu;
    OrdenarporNrodeOrden1: TMenuItem;
    tpListaPlantilla: TAdvToolPanelTab;
    AdvToolPanel1: TAdvToolPanel;
    lwPlantilla: TListView;
    Panel3: TPanel;
    btGuardarordenPlantila: TBitBtn;
    chPedidosEstables: TAdvOfficeCheckBox;
    dbcDia: TJvDBComboBox;
    PopupMenu3: TPopupMenu;
    OcultarGrupos1: TMenuItem;
    btEntregas: TBitBtn;
    AplicaEntregadas: TAction;
    DBText6: TDBText;
    spHacerCopia: TSpeedButton;
    DBText7: TDBText;
    DBText8: TDBText;
    RxLabel2: TLabel;
    RxLabel58: TLabel;
    JvLabel1: TLabel;
    JvLabel2: TLabel;
    tsRecepcion: TTabSheet;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    QRecepcion: TFDQuery;
    CDSRecepcion: TClientDataSet;
    DSPRecepcion: TDataSetProvider;
    DSRecepcion: TDataSource;
    pnCab: TPanel;
    cxGrid4DBTableView1ID_DET: TcxGridDBColumn;
    cxGrid4DBTableView1ID_CAB: TcxGridDBColumn;
    cxGrid4DBTableView1MUESTRAFEHCA: TcxGridDBColumn;
    cxGrid4DBTableView1MUESTRATIPOCPBTE: TcxGridDBColumn;
    cxGrid4DBTableView1MUESTRANROCPBTE: TcxGridDBColumn;
    cxGrid4DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid4DBTableView1MUESTRADETALLE: TcxGridDBColumn;
    cxGrid4DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid4DBTableView1CANTIDAD_RECIBIDA: TcxGridDBColumn;
    cxGrid4DBTableView1DIFERENCIA: TcxGridDBColumn;
    cxGrid4DBTableView1MUESTRANROCOMPLETO: TcxGridDBColumn;
    edDesde: TJvDateEdit;
    edHasta: TJvDateEdit;
    Label6: TLabel;
    Label7: TLabel;
    sbFechas: TSpinButton;
    BuscarRecepcion: TAction;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    spCantRecibida: TFDStoredProc;
    RecibirCantidad: TAction;
    pnPieRecibido: TPanel;
    SpeedButton2: TSpeedButton;
    pnCopia: TPanel;
    Label5: TLabel;
    DBText5: TDBText;
    abFacturar: TJvArrowButton;
    popMenuFactura: TPopupMenu;
    OmitirFacturaPordefecto1: TMenuItem;
    PopupCopy: TPopupMenu;
    CopyAll: TMenuItem;
    dbchPrevision: TAdvOfficeCheckBox;
    chPedidoFijo: TAdvOfficeCheckBox;
    HacerCopia: TAction;
    QRecepcionID_DET: TIntegerField;
    QRecepcionID_CAB: TIntegerField;
    QRecepcionMUESTRAFECHA: TSQLTimeStampField;
    QRecepcionMUESTRATIPOCPBTE: TStringField;
    QRecepcionMUESTRANROCPBTE: TStringField;
    QRecepcionCODIGO: TStringField;
    QRecepcionMUESTRADETALLE: TStringField;
    QRecepcionCANTIDAD: TFloatField;
    QRecepcionCANTIDAD_RECIBIDA: TFloatField;
    QRecepcionDIFERENCIA: TFloatField;
    QRecepcionMUESTRANROCOMPLETO: TStringField;
    CDSRecepcionID_DET: TIntegerField;
    CDSRecepcionID_CAB: TIntegerField;
    CDSRecepcionMUESTRAFECHA: TSQLTimeStampField;
    CDSRecepcionMUESTRATIPOCPBTE: TStringField;
    CDSRecepcionMUESTRANROCPBTE: TStringField;
    CDSRecepcionCODIGO: TStringField;
    CDSRecepcionMUESTRADETALLE: TStringField;
    CDSRecepcionCANTIDAD: TFloatField;
    CDSRecepcionCANTIDAD_RECIBIDA: TFloatField;
    CDSRecepcionDIFERENCIA: TFloatField;
    CDSRecepcionMUESTRANROCOMPLETO: TStringField;
    pmOrdenBusqueda: TPopupMenu;
    OrdenPorNro1: TMenuItem;
    OrdenClienteNroPedido1: TMenuItem;
    OrdenClienteFechaAsc1: TMenuItem;
    MarcarPedido: TAction;
    N1: TMenuItem;
    dbcSector: TDBLookupComboBox;
    pagDatos: TTabSheet;
    DBGrid1: TDBGrid;
    QSector: TFDQuery;
    DSPSector: TDataSetProvider;
    CDSSector: TClientDataSet;
    DSSector: TDataSource;
    QSectorID: TIntegerField;
    QSectorDETALLE: TStringField;
    CDSSectorID: TIntegerField;
    CDSSectorDETALLE: TStringField;
    btNPedidoCliente: TBitBtn;
    Label8: TLabel;
    DataToXLS: TDataToXLS;
    QPlantillaCOSTO: TFloatField;
    CDSPlantillaCOSTO: TFloatField;
    PopupMenu4: TPopupMenu;
    ExportarPlantillaXLS: TAction;
    SaveDialog1: TSaveDialog;
    ExportarPlantillaXLS1: TMenuItem;
    QListaCab: TFDQuery;
    DSPListaCab: TDataSetProvider;
    CDSListaCab: TClientDataSet;
    DSListaCab: TDataSource;
    CDSListaCabID: TIntegerField;
    CDSListaCabNOMBRE: TStringField;
    dbcListaPrecios: TJvDBLookupCombo;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    QPlantillaRECARGO: TFloatField;
    QPlantillaPRECIONETO: TFloatField;
    QPlantillaPRECIO: TFloatField;
    CDSPlantillaRECARGO: TFloatField;
    CDSPlantillaPRECIONETO: TFloatField;
    CDSPlantillaPRECIO: TFloatField;
    QPlantillaLISTANRO: TIntegerField;
    CDSPlantillaLISTANRO: TIntegerField;
    QRecepcionOBSERVACION1: TStringField;
    QRecepcionOBSERVACION2: TStringField;
    CDSRecepcionOBSERVACION1: TStringField;
    CDSRecepcionOBSERVACION2: TStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    QRecepcionCANTIDAD_PEDIDA: TFloatField;
    CDSRecepcionCANTIDAD_PEDIDA: TFloatField;
    cxGrid4DBTableView1CANTIDAD_PEDIDA: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure BuscaArticulosExecute(Sender: TObject);
    procedure CDSPlantillaCODIGOSetText(Sender: TField; const Text: string);
    procedure CDSPlantillaNewRecord(DataSet: TDataSet);
    procedure CDSPlantillaAfterPost(DataSet: TDataSet);
    procedure CDSPlantillaAfterDelete(DataSet: TDataSet);
    procedure dbgPlantillaColEnter(Sender: TObject);
    procedure btNuevoClick(Sender: TObject);
    procedure BuscarClientesExecute(Sender: TObject);
    procedure btGuardarClick(Sender: TObject);
    procedure DSPedidoCabStateChange(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure DSPedidoDetStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FacturarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure btBorrarClick(Sender: TObject);
    procedure btRemitarClick(Sender: TObject);
    procedure dbgPlantillaKeyPress(Sender: TObject; var Key: Char);
    procedure dbgPlantillaDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure dbgPlantillaDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dbgPlantillaDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure btBorrarPlantillaClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure btTransferirClick(Sender: TObject);
    procedure dbchPrevisionClick(Sender: TObject);
    procedure chCantidadCeroClick(Sender: TObject);
    procedure btOkCantidadClick(Sender: TObject);
    procedure pcGeneralChange(Sender: TObject);
    procedure EstadoPrevisionExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure DBText1Click(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure CDSGruposNewRecord(DataSet: TDataSet);
    procedure btAgregarClick(Sender: TObject);
    procedure lwListaDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lwListaDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure GuardarGrupoExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure edGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure dbgPlantillaTitleClick(Column: TColumn);
    procedure pnPieDblClick(Sender: TObject);
    procedure pcOrdenamientoChange(Sender: TObject);
    procedure pcOrdenamientoChanging(Sender: TObject; var AllowChange: Boolean);
    procedure CDSPedidoDetCalcFields(DataSet: TDataSet);
    procedure OrdenarporNrodeOrden1Click(Sender: TObject);
    procedure dbgPlantillaEnter(Sender: TObject);
    procedure btGuardarordenPlantilaClick(Sender: TObject);
    procedure lwPlantillaDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure lwPlantillaDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dbcDiaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure OcultarGrupos1Click(Sender: TObject);
    procedure PopupMenu3Popup(Sender: TObject);
    procedure AplicaEntregadasExecute(Sender: TObject);
    procedure DBText5Click(Sender: TObject);
    procedure BuscarRecepcionExecute(Sender: TObject);
    procedure sbFechasDownClick(Sender: TObject);
    procedure sbFechasUpClick(Sender: TObject);
    procedure RecibirCantidadExecute(Sender: TObject);
    procedure CDSRecepcionAfterPost(DataSet: TDataSet);
    procedure CDSRecepcionCANTIDAD_RECIBIDASetText(Sender: TField;
      const Text: string);
    procedure OmitirFacturaPordefecto1Click(Sender: TObject);
    procedure abFacturarClick(Sender: TObject);
    procedure CopyAllClick(Sender: TObject);
    procedure HacerCopiaExecute(Sender: TObject);
    procedure cxGrid4DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid4DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure OrdenPorNro1Click(Sender: TObject);
    procedure OrdenClienteNroPedido1Click(Sender: TObject);
    procedure OrdenClienteFechaAsc1Click(Sender: TObject);
    procedure MarcarPedidoExecute(Sender: TObject);
    procedure CDSSectorAfterPost(DataSet: TDataSet);
    procedure CDSSectorAfterDelete(DataSet: TDataSet);
    procedure CDSSectorNewRecord(DataSet: TDataSet);
    procedure btNPedidoClienteClick(Sender: TObject);
    procedure ExportarPlantillaXLSExecute(Sender: TObject);
    procedure dbcListaPreciosChange(Sender: TObject);
    procedure pcOrdenamientoEnter(Sender: TObject);
  private
    procedure GenerarNotaPedidoCliente;
    procedure AgregarCabNP;
    procedure AgregarDetNP;
    { Private declarations }
  public
    { Public declarations }
    ArchivoIni:TIniFile;
    Datos:String;
    TipoBaseDatos,
    Sucursal,
    Deposito:Integer;
    SucursalComprobante,IDComprobante:Integer;
    DatoNew:Integer;
    OrdenOld, OrdenNew,Id_Grupo: Integer;
    Descripcion:string;
    Lista    : TListItem;
    Nuevo     :Boolean;
    procedure AgregarCabRto;
    procedure AgregaDetalleRto;
    procedure AgregarCabTx;

    PROCEDURE AgregaCabecera;
    procedure AgregaDetalle;
    procedure GenerarCopia;

  end;

type
  TGridHack = class(TDBGrid);

var
  FormPedidos: TFormPedidos;

implementation


uses DMPedidos,UBuscadorArticulos, UBuscadorClientes, DMVenta,UDMain_FD,
     UBuscadorTipoCpbte, UFactura_2, DMRemitos, URemitos, UControlNroRto, UStock_2,
     ULista_Stock_rub_subrub, UTransferencia, UListCpbteNoImportados,
     UBuscadorDepositos, UNotaPedidoCliente, DMStoreProcedureForm, DMNPedidoCliente;
{$R *.dfm}


procedure TFormPedidos.AgregarDetNP;
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
      CDSNotaPedidoDetCODIGOARTICULOSetText(CDSNotaPedidoDetCODIGOARTICULO,DSPedidoDet.DataSet.FieldByName('CODIGO').AsString);
      CDSNotaPedidoDetCANTIDAD_PEDIDIASetText(CDSNotaPedidoDetCANTIDAD_PEDIDIA,DSPedidoDet.DataSet.FieldByName('CANTIDAD_PEDIDA').AsString);
      //CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat := (DatosPresupuesto.CDSPresuDetUNITARIO_GRAVADO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)* DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat;
      //CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat  := (DatosPresupuesto.CDSPresuDetUNITARIO_EXENTO.AsFloat/DatosPresupuesto.CDSPresuDetCOTIZACION.AsFloat)* DatosPresupuesto.CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat;

      //CDSNotaPedidoDetDescuento.Value          := DatosPresupuesto.CDSPresuDetDESCUENTO.Value;

      UnitarioTotal                            := CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat +
                                                  CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;

      //if DatosPresupuesto.CDSPresuCabDESGLOZAIVA.Value='N' Then
      //  UnitarioTotal:= CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat + DatosPresupuesto.CDSPresuDetIVA_UNITARIO.AsFloat + CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;;


//      if DatosPresupuesto.wwCDSPresuCabDESGLOZAIVA.Value='N' Then
  //       CDSNotaPedidoDetUNITARIO_TOTALSetText(CDSNotaPedidoDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal*(1+DatosPresupuesto.wwCDSPresuDetIVA_TASA.Value/100)))
 //      else
    //   CDSNotaPedidoDetUNITARIO_TOTALSetText(CDSNotaPedidoDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal));

      CDSNotaPedidoDetUNITARIO_TOTALSetText(CDSNotaPedidoDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal));

      CDSNotaPedidoDet.Post;
    end;
end;


procedure TFormPedidos.AgregarCabNP;
begin
  with DatosNPedidoClientes DO
  begin
    FormNotaPedidoCliente.SucursalPorDefecto :=SucursalComprobante;
    FormNotaPedidoCliente.DepositoPorDefecto :=Deposito;
    //CDSNotaPedidoCabSUCURSAL.Value           :=SucursalComprobante;
    CDSNotaPedidoCabID_TIPOCOMPROBANTESetText(CDSNotaPedidoCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
    CDSNotaPedidoCabCODIGOSetText(CDSNotaPedidoCabCODIGO,DSPedidoCab.DataSet.FieldByName('CLIENTE').AsString);
    //CDSNotaPedidoCabLDRSetText(CDSNotaPedidoCabLDR,DatosPresupuesto.CDSPresuCabLDR.AsString);
    //CDSNotaPedidoCabNOMBRE.Value       := DatosPresupuesto.CDSPresuCabNOMBRE.Value;
    //CDSNotaPedidoCabRAZONSOCIAL.Value  := DatosPresupuesto.CDSPresuCabRAZONSOCIAL.Value;
    //CDSNotaPedidoCabCUIT.Value         := DatosPresupuesto.CDSPresuCabCUIT.Value;
    //CDSNotaPedidoCabTIPOIVA.Value      := DatosPresupuesto.CDSPresuCabTIPOIVA.Value;
    //CDSNotaPedidoCabDIRECCION.Value    := DatosPresupuesto.CDSPresuCabDIRECCION.Value;
    //CDSNotaPedidoCabLOCALIDAD.Value    := DatosPresupuesto.CDSPresuCabLOCALIDAD.Value;
    //CDSNotaPedidoCabCPOSTAL.Value    := DatosPresupuesto.CDSPresuCabCPOSTAL.Value;


    //CDSNotaPedidoCabDEPOSITOS.Value:=Deposito;
    //CDSNotaPedidoCabCONDICIONVTASetText(CDSNotaPedidoCabCONDICIONVTA,DatosPresupuesto.CDSPresuCabCONDICIONVTA.AsString);

    CDSNotaPedidoCabIMPRESO.Value     :='N';
    //CDSNotaPedidoCabOBSERVACION1.Value:= DatosPresupuesto.CDSPresuCabOBSERVACION1.Value;
    //CDSNotaPedidoCabOBSERVACION2.Value:= DatosPresupuesto.CDSPresuCabOBSERVACION2.Value;

    //CDSNotaPedidoCabZONA.Value        :=DatosPresupuesto.CDSPresuCabZONA.Value;

    CDSNotaPedidoCabPRESUPUESTO_ID.Value       :=DSPedidoCab.DataSet.FieldByName('id').Value;
    CDSNotaPedidoCabPRESUPUESTO_NROCPBTE.Value :='PI';//DatosPresupuesto.CDSPresuCabNROCPBTE.Value;

  // DatosPresupuesto.wwCDSPresuCabNOTA_PEDIDO_ID.Value  :=CDSNotaPedidoCabID.Value;
  // DatosPresupuesto.wwCDSPresuCabNOTA_PEDIDO_NROCPBTE.Value  :=CDSNotaPedidoCabNROCPBTE.Value;

   // if DatosPresupuesto.CDSPresuCabLISTAPRECIO.AsString<>'' then
   //   CDSNotaPedidoCabLISTAPRECIO.Value         :=DatosPresupuesto.CDSPresuCabLISTAPRECIO.Value;
   // if DatosPresupuesto.CDSPresuCabVENDEDOR.AsString<>'' Then
   //   CDSNotaPedidoCabVENDEDORSetText(CDSNotaPedidoCabVENDEDOR,DatosPresupuesto.CDSPresuCabVENDEDOR.AsString);

    CDSNotaPedidoCabUSUARIO.Value     :=DMMain_FD.UsuarioActivo;

  end;
end;


procedure TFormPedidos.GenerarNotaPedidoCliente;
var Cont,Renglones:Integer;
TipoCpbte,DatoNew:string;
begin
  inherited;
  //** aca se va a generar Nota de Pedio..
   if not(DSPedidoCab.DataSet.IsEmpty) then
     begin
       if Not(Assigned(FormBuscadorTipoCpbte)) then
         FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
       FormBuscadorTipoCpbte.TipoCpbte1 := 'PC';
       FormBuscadorTipoCpbte.TipoCpbte2 := '';
       FormBuscadorTipoCpbte.TipoCpbte3 := '';
       FormBuscadorTipoCpbte.CV         := 'V';
       FormBuscadorTipoCpbte.Sucursal   := Sucursal;// DatosPresupuesto.CDSPresuCabSUCURSAL.Value;
       FormBuscadorTipoCpbte.ShowModal;
       Renglones           := FormBuscadorTipoCpbte.QTipoCpbteLINEAS_DETALLE.Value;
       SucursalComprobante := FormBuscadorTipoCpbte.Sucursal;
       IDComprobante       := FormBuscadorTipoCpbte.Id_Cpbte;
       if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
         begin
        //  flag:=DatosNPedidoClientes.HayParaFacturar(DatosNPedidoClientes.CDSNotaPedidoDet);
           if Not(Assigned(FormBuscadorDepositos)) then
             FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Application);
           FormBuscadorDepositos.Deposito:= 1;// DatosPresupuesto.CDSPresuCabDEPOSITO.Value;
           FormBuscadorDepositos.ShowModal;
           if (FormBuscadorDepositos.ModalResult=mrok) Then
             begin
               Deposito    := FormBuscadorDepositos.Deposito;
               DatoNew     := IntToStr(DSPedidoCab.DataSet.FieldByName('ID').AsInteger);
               TipoCpbte   := 'PI';// DatosPresupuesto.CDSPresuCabTIPOCPBTE.Value;
               if Not(Assigned(FormNotaPedidoCliente)) Then
                 FormNotaPedidoCliente:=TFormNotaPedidoCliente.Create(self);
               Cont:=1;
               DSPedidoDet.DataSet.First;
               while Not(DSPedidoDet.DataSet.Eof)  do
                 begin
                   FormNotaPedidoCliente.Agregar.Execute;
                   AgregarCabNP;
                   while Not(DSPedidoDet.DataSet.Eof) and (Cont<=Renglones)  Do // Ingreso el detalle
                     begin
                       if (DSPedidoDet.DataSet.FieldByName('CANTIDAD_PEDIDA').AsFloat>0) Then
                         begin
                           AgregarDetNP;
                           Cont:=cont+1;
                         end;
                       DSPedidoDet.DataSet.Next;
                     end;
                   FormNotaPedidoCliente.Confirma.Execute;
                   Cont:=1;
                 end;
               if FormNotaPedidoCliente.DSBase.State in [dsInsert] then
                 FormNotaPedidoCliente.Confirma.Execute;
             end;
         end;
      
     // if Not(DSBase.DataSet.IsEmpty) and (DSBase.State in [dsBrowse]) Then
     //   Recuperar.Execute;
     end
   else
     ShowMessage('No hay cantidades Generar la Nota de Pedido.....!!!');
end;



procedure TFormPedidos.AgregarCabRto;
begin
  with DatosRemitos DO
    begin
      FormRemitos.SucursalPorDefecto:= SucursalComprobante;
      FormRemitos.DepositoPorDefecto:= Deposito;
      CDSRtoCabSucursalSetText(CDSRtoCabSucursal, IntToStr(SucursalComprobante));
      CDSRtoCabCodigoSetText(CDSRtoCabCodigo,DatosPedidos.CDSPedidoCabCLIENTE.AsString);
      CDSRtoCabFECHAVTA.AsDateTime    :=DatosPedidos.CDSPedidoCabFECHA.AsDateTime;
      CDSRtoCabID_TIPOCOMPROBANTESetText(CDSRtoCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));

      CDSRtoCabPEDIDO_ID.Value    := DatosPedidos.CDSPedidoCabID.Value;
      CDSRtoCabANULADO.Value      := 'N';

      CDSRtoCabIMPRESO.Value      := 'N';
      CDSRtoCabOBSERVACION1.Value := '';//CDSVentaCabOBSERVACION1.Value;
      CDSRtoCabOBSERVACION2.Value := '';//CDSVentaCabOBSERVACION2.Value;
      CDSRtoCabCPTE_MANUAL.Value  := 'N';

   // wwCDSRtoCabNROENTREGA.Value        :=CDSNotaPedidoCabNROENTREGA.Value;
      //CDSRtoCabVENDEDOR.Value        := CDSVentaCabVENDEDOR.AsString;

      CDSRtoCabUSUARIO.Value         :=DMMain_FD.UsuarioActivo;

    end;
end;

procedure TFormPedidos.AgregarCabTx;
begin

 //
end;

procedure TFormPedidos.AplicaEntregadasExecute(Sender: TObject);
var Cantidad:String;
begin
  DatosPedidos.CDSPedidoDet.First;
  while not(DatosPedidos.CDSPedidoDet.Eof) do
    begin
      Cantidad:=AnsiReplaceStr(DatosPedidos.CDSPedidoDetCANTIDAD_UNID_PED.Text,'-','');
      Cantidad:=AnsiReplaceStr(Cantidad,',','');

      DatosPedidos.CDSPedidoDet.Edit;
      DatosPedidos.CDSPedidoDetCANTIDAD_UNID_ENTR.Text:=Cantidad;
      DatosPedidos.CDSPedidoDet.Next;
    end;
end;

procedure TFormPedidos.btGuardarordenPlantilaClick(Sender: TObject);
var
  Seleccionados: TStringList;
  i: Integer;
  Orden:Integer;
begin
  Orden:=1;
  for i := 0 to lwPlantilla.Items.Count - 1 do
    begin
       DatosPedidos.QUpdateOrdenPlantilla.Close;
       DatosPedidos.QUpdateOrdenPlantilla.ParamByName('CODIGO').Value   :=lwPlantilla.Items[i].SubItems[0];
       DatosPedidos.QUpdateOrdenPlantilla.ParamByName('ORDEN').Value    :=Orden;
       DatosPedidos.QUpdateOrdenPlantilla.ExecSQL;
       DatosPedidos.QUpdateOrdenPlantilla.Close;
       Orden:=Orden+1;
    end;
  CDSPlantilla.Close;
  CDSPlantilla.Open;

  lwPlantilla.Clear;
  CDSPlantilla.First;
  while Not(CDSPlantilla.Eof) do
    begin
      Lista:=lwPlantilla.Items.Add;
      Lista.SubItems.Add(CDSPlantillaCODIGO.AsString);
      Lista.SubItems.Add(CDSPlantillaID_ORDEN.AsString);
      Lista.SubItems.Add(CDSPlantillaMUESTRASUBRUB.AsString);
      Lista.SubItems.Add(CDSPlantillaDETALLE_STK.AsString);
      CDSPlantilla.Next;
    end;
end;

procedure TFormPedidos.BorrarExecute(Sender: TObject);
begin
  if lwLista.Items[lwLista.Selected.Index].SubItems[0]<>'' Then
    begin
      spABGrupo.Close;
      spABGrupo.Params.ParamByName('Operacion').Value   :='B';
      spABGrupo.Params.ParamByName('id').Value          :=lwLista.Items[lwLista.Selected.Index].SubItems[0];
      spABGrupo.Params.ParamByName('Descripcion').Value :=edGrupo.Text;
      spABGrupo.Params.ParamByName('orden').Value       :=lwLista.Items.Count+1;
      spABGrupo.ExecProc;
      lwLista.Items[lwLista.Selected.Index].Delete;
    end;
end;

procedure TFormPedidos.btTransferirClick(Sender: TObject);
begin
 //** aca se va a generar Transferencia..
  if (DatosPedidos.CDSPedidoCabFACTURADO.AsString<>'S') then
     begin
       if not(DatosPedidos.CDSPedidoCab.IsEmpty) then
         begin
           if Not(Assigned(FormBuscadorTipoCpbte)) then
             FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
           FormBuscadorTipoCpbte.TipoCpbte1:='TX';
           FormBuscadorTipoCpbte.TipoCpbte2:='';
           FormBuscadorTipoCpbte.TipoCpbte3:='';
           FormBuscadorTipoCpbte.CV        :='V';
           FormBuscadorTipoCpbte.Sucursal  := Sucursal;
           FormBuscadorTipoCpbte.ShowModal;
           SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
           IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;

           if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
             begin
               if Not(Assigned(FormTransferencias)) Then
                 FormTransferencias:=TFormTransferencias.Create(self);
               FormTransferencias.Agregar.Execute;
               AgregarCabRto;
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
               DatosPedidos.CDSPedidoDet.First;
               while Not(DatosPedidos.CDSPedidoDet.Eof)  do
                 begin
                   while Not(DatosPedidos.CDSPedidoDet.Eof)  Do // Ingreso el detalle
                     begin
                       if (DatosPedidos.CDSPedidoDetCANTIDAD_UNID_ENTR.AsFloat > 0) then
                         AgregaDetalleRto;
                       DatosPedidos.CDSPedidoDet.Next;
                     end;
                 end;
               FormRemitos.Confirma.Execute;
             end;
         end;
     end
   else
     ShowMessage('Ya tiene Rto esta factura....');
  DatosPedidos.CDSPedidoCab.Close;
  DatosPedidos.CDSPedidoDet.Close;
  DatosPedidos.CDSPedidoCab.Open;
  DatosPedidos.CDSPedidoDet.Open;
  DatosPedidos.CDSPedidoCab.EmptyDataSet;
  DatosPedidos.CDSPedidoDet.EmptyDataSet;
end;

procedure TFormPedidos.btOkCantidadClick(Sender: TObject);
begin
  pnCantidad.Visible:=False;
  if DatosPedidos.CDSPedidoDet.Locate('CODIGO',DatosPedidos.CDSPrevisionCODIGO.AsString,[]) then
    begin
      if DatosPedidos.CDSPedidoDet.State=dsBrowse then
        DatosPedidos.CDSPedidoDet.Edit;
      DatosPedidos.CDSPedidoDetCANTIDAD_PEDIDASetText(DatosPedidos.CDSPedidoDetCANTIDAD_PEDIDA,FloatToStr(edCantidad.Value));
    end;

end;

procedure TFormPedidos.AgregaDetalleRto;
Var UnitarioTotal,Precio,PrecioRto:Extended;
begin
  inherited;
  with DatosRemitos DO
    begin
      CDSRtoDet.Append;
      CDSRtoDetCodigoArticuloSetText(CDSRtoDetCodigoArticulo,DatosPedidos.CDSPedidoDetCODIGO.AsString);
      CDSRtoDetDetalle.Value          :=DatosPedidos.CDSPedidoDetMUESTRADETALLE.Value;
      CDSRtoDetDescuento.AsFloat      :=0;
//      CDSRtoDetCantidadSetText(CDSRtoDetCantidad,DatosPedidos.CDSPedidoDetCANTIDAD_UNID_ENTR.AsString);
      case rgCantidades.ItemIndex of
        0:CDSRtoDetCantidadSetText(CDSRtoDetCantidad,DatosPedidos.CDSPedidoDetCANTIDAD_PEDIDA.AsString);
        1:CDSRtoDetCantidadSetText(CDSRtoDetCantidad,DatosPedidos.CDSPedidoDetCANTIDAD_UNID_ENTR.AsString);
      end;
      CDSRtoDet.Post;
    end;
end;


procedure TFormPedidos.AgregaCabecera;
Var Continua:Boolean;
begin
  with DatosVentas DO
    begin
      Continua:=True;
      CDSVentaCabCodigoSetText(CDSVentaCabCodigo,DatosPedidos.CDSPedidoCabCLIENTE.AsString);
        begin
          CDSInscripcion.Close;
          CDSInscripcion.Params.ParamByName('Codigo').AsInteger := DatosPedidos.CDSPedidoCabMUESTRAIVA.AsInteger;
          CDSInscripcion.Open;
          iF NOT (CDSInscripcion.Eof) THEN
            begin
              if OmitirFacturaPordefecto1.Checked=False then
                begin
                  DatosPedidos.CDSComprobantePorDefecto.Close;
                  DatosPedidos.CDSComprobantePorDefecto.Params.ParamByName('desglozaIva').Value:= CDSInscripcionDISCRIMINAIVA.Value;
                  DatosPedidos.CDSComprobantePorDefecto.Params.ParamByName('sucursal').Value   := Sucursal;
                  DatosPedidos.CDSComprobantePorDefecto.Params.ParamByName('compraventa').Value:= 'V';
                  DatosPedidos.CDSComprobantePorDefecto.Params.ParamByName('tipo').Value       := 'FC';
                  DatosPedidos.CDSComprobantePorDefecto.Open;
                  if (DatosPedidos.CDSComprobantePorDefecto.RecordCount=1) and
                     (DatosPedidos.CDSComprobantePorDefecto.Fields[0].AsString<>'') Then
                      CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,DatosPedidos.CDSComprobantePorDefecto.Fields[0].AsString)
                  else
                    if (DatosPedidos.CDSComprobantePorDefecto.RecordCount>1) or (DatosPedidos.CDSComprobantePorDefecto.RecordCount<=0) or (OmitirFacturaPordefecto1.Checked) then
                      begin
                        if Not(Assigned(FormBuscadorTipoCpbte)) then
                          FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
                        FormBuscadorTipoCpbte.TipoCpbte1:='FC';
                        FormBuscadorTipoCpbte.TipoCpbte2:='';
                        FormBuscadorTipoCpbte.TipoCpbte3:='';
                        FormBuscadorTipoCpbte.CV        :='V';
                        FormBuscadorTipoCpbte.Sucursal     := Sucursal;
                        FormBuscadorTipoCpbte.DiscriminaIVA:= '*';
        //                FormBuscadorTipoCpbte.DiscriminaIVA:= CDSRtosCabDESGLOZAIVA.Value;
                        FormBuscadorTipoCpbte.ShowModal;
                        if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
                          CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(FormBuscadorTipoCpbte.Id_Cpbte))
                        else
                          Continua:=False;
                      end;
                end
              else
                begin
                  if Not(Assigned(FormBuscadorTipoCpbte)) then
                    FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
                  FormBuscadorTipoCpbte.TipoCpbte1:='FC';
                  FormBuscadorTipoCpbte.TipoCpbte2:='';
                  FormBuscadorTipoCpbte.TipoCpbte3:='';
                  FormBuscadorTipoCpbte.CV        :='V';
                  FormBuscadorTipoCpbte.Sucursal     := Sucursal;
                  FormBuscadorTipoCpbte.DiscriminaIVA:= '*';
  //                FormBuscadorTipoCpbte.DiscriminaIVA:= CDSRtosCabDESGLOZAIVA.Value;
                  FormBuscadorTipoCpbte.ShowModal;
                  if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
                    CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(FormBuscadorTipoCpbte.Id_Cpbte))
                  else
                    Continua:=False;
                end;
            end;
        end;

      if Continua Then
        begin
          CDSVentaCabDepositoSetText(CDSVentaCabDeposito,IntToStr(DEPOSITO));

          CDSCondVenta.Close;
          CDSCondVenta.Params.ParamByName('Codigo').Value     := DatosPedidos.CDSPedidoCabCLIENTE.AsString;
          CDSCondVenta.Params.ParamByName('CodigoPago').Value := 1;//CDSRtosCabCONDICIONVTA.AsString;
          CDSCondVenta.Open;

          if (CDSCondVenta.IsEmpty) then
            begin
              //Traigo La primera condicion de vta por defecto
              if DMMain_FD.GetCondicionVtaPorDefecto(DatosPedidos.CDSPedidoCabCLIENTE.AsString)>-1 then
                CDSVentaCabCONDICIONVTASetText(CDSVentaCabCONDICIONVTA,IntToStr(DMMain_FD.GetCondicionVtaPorDefecto(DatosPedidos.CDSPedidoCabCLIENTE.AsString)))
              else
                begin
                  ShowMessage('No tiene Condiciones de Vta. cargadas....');
                  CDSVentaCabCONDICIONVTA.Clear;
                  CDSVentaCabMUESTRACONDVENTA.Clear;
                 end;
            end
          else
            CDSVentaCabCondicionVtaSetText(CDSVentaCabCondicionVta,'1');

          CDSCondVenta.Close;

          CDSVentaCabANULADO.Value      := 'N';
          CDSVentaCabIMPRESO.Value      := 'N';
          CDSVentaCabCPTE_MANUAL.Value  := 'N';
          CDSVentaCabREDUCIDA.Value     := 'N';
          CDSVentaCabCANT_BULTOS.Value  := 1;
          CDSVentaCabDSTO.AsFloat       := 0;
          CDSVentaCabIDREMITO.Value     := DatosPedidos.CDSPedidoCabID.Value;
          CDSVentaCabTIPO_REMITO.Value  := 'PI';
          CDSVentaCabNRORTO.Value       := DatosPedidos.CDSPedidoCabID.AsString;

          CDSVentaCabFECHA_HORA.AsDateTime:= Now;
          CDSVentaCabUSUARIO.Value        := DMMain_FD.UsuarioActivo;

          // por que si no me agreagaba el iva
          FormCpbte_2.DiscriminaIva:='S';
        end
      else
        FormCpbte_2.Cancelar.Execute;
    end;
end;


procedure TFormPedidos.AgregaDetalle;
Var UnitarioTotal,Precio,PrecioRto:Extended;
    Gravado,Exento,Iva,Total,Margen,Dscto:Extended;
    Estado: TValueRelationship;
begin
  inherited;
  with DatosVentas DO
    begin
      CDSVentaDet.Append;
      CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,DatosPedidos.CDSPedidoDetCODIGO.AsString);
      CDSVentaDetDetalle.Value        :=DatosPedidos.CDSPedidoDetMUESTRADETALLE.Value;
      // verificar esta linea por que si no tiene permiso el que factura borra el dscto
      CDSVentaDetDescuento.AsFloat    :=0;
      case rgCantidades.ItemIndex of
        0:CDSVentaDetCantidadSetText(CDSVentaDetCantidad,DatosPedidos.CDSPedidoDetCANTIDAD_PEDIDA.AsString);
        1:CDSVentaDetCantidadSetText(CDSVentaDetCantidad,DatosPedidos.CDSPedidoDetCANTIDAD_UNID_ENTR.AsString);
      end;
//      CDSVentaDetCantidadSetText(CDSVentaDetCantidad,CDSPedidoDetCANTIDAD_UNID_ENTR.AsString);
      CDSVentaDetDESGLOZAIVA.Value    :=CDSVentaCabDESGLOZAIVA.Value;
      CDSVentaDetDEPOSITO.Value       :=CDSVentaCabDeposito.Value;
      CDSVentaDetCLASECPBTE.Value     :=CDSVentaCabCLASECPBTE.Value;
      CDSVentaDet.Post;
    end;
end;



procedure TFormPedidos.btBorrarClick(Sender: TObject);
begin
  if Not(DatosPedidos.CDSPedidoCab.IsEmpty) and (DatosPedidos.CDSPedidoCabFACTURADO.Value='N') then
    begin
      if MessageDlg(' Esta por borrar el Registro.. esta seguro.?',mtConfirmation,mbYesNo,0,mbYes)=mrYes then
        begin
          DatosPedidos.CDSPedidoCab.Delete;
          DatosPedidos.CDSPedidoCab.ApplyUpdates(-1);
          DatosPedidos.CDSPedidoCab.Close;
          DatosPedidos.CDSPedidoDet.Close;
          DatosPedidos.CDSPedidoCab.Open;
          DatosPedidos.CDSPedidoDet.Open;
          DatosPedidos.CDSPedidoCab.EmptyDataSet;
          DatosPedidos.CDSPedidoDet.EmptyDataSet;
        end;
    end
  else
    ShowMessage('Pedido Facturado.... o no hay pedido para borrar...');
end;

procedure TFormPedidos.btBorrarPlantillaClick(Sender: TObject);
begin
  CDSPlantilla.First;
  while not(CDSPlantilla.IsEmpty) do
    begin
      CDSPlantilla.Delete;
      CDSPlantilla.First;
    end;
end;

procedure TFormPedidos.btBuscarClick(Sender: TObject);
begin
  DatosPedidos.CDSBuscadorPedido.IndexName      :='';
  DatosPedidos.CDSBuscadorPedido.IndexFieldNames:='';

  DatosPedidos.CDSBuscadorPedido.Close;
  DatosPedidos.CDSBuscadorPedido.Params.ParamByName('ESTADO').Value   :='N';

  if chPedidosEstables.Checked Then
    DatosPedidos.CDSBuscadorPedido.Params.ParamByName('ESTABLE').Value:='S'
  else
    DatosPedidos.CDSBuscadorPedido.Params.ParamByName('ESTABLE').Value:='N';

  if chPedidosPrevision.Checked Then
    DatosPedidos.CDSBuscadorPedido.Params.ParamByName('PREVISION').Value:='S'
  else
    DatosPedidos.CDSBuscadorPedido.Params.ParamByName('PREVISION').Value:='N';

  if chTodos.Checked Then
    begin
      DatosPedidos.CDSBuscadorPedido.Params.ParamByName('ESTADO').Value   :='*';
      DatosPedidos.CDSBuscadorPedido.Params.ParamByName('Prevision').Value:='*';
      DatosPedidos.CDSBuscadorPedido.Params.ParamByName('ESTABLE').Value  :='*';     // no se usa mas....
    end;


  DatosPedidos.CDSBuscadorPedido.Open;

  DatosPedidos.CDSBuscadorPedido.IndexName:='';

  if OrdenPorNro1.Checked then
    DatosPedidos.CDSBuscadorPedido.IndexName:='ndxID'
  else
    if OrdenClienteNroPedido1.Checked then
      DatosPedidos.CDSBuscadorPedido.IndexFieldNames:='cliente;id'
    else
    if OrdenClienteFechaAsc1.Checked then
      DatosPedidos.CDSBuscadorPedido.IndexFieldNames:='cliente;Fecha';





  ComBuscadorPedidos.Execute;
  if ComBuscadorPedidos.rOk then
    begin
      DatoNew:=ComBuscadorPedidos.Id;
      Recuperar.Execute;
    end;
  DatosPedidos.CDSBuscadorPedido.Close;


  case pcOrdenamiento.ActivePageIndex of
    0:if not(OrdenarporNrodeOrden1.Checked) Then
        DatosPedidos.CDSPedidoDet.IndexFieldNames:='MUESTRASUBRUB;MUESTRADETALLE'
      else
        DatosPedidos.CDSPedidoDet.IndexFieldNames:='MUESTRASUBRUB;MUESTRAORDENPLA';
    1:DatosPedidos.CDSPedidoDet.IndexFieldNames:='MUESTRAORDENGRUPO;CODIGO;MUESTRADETALLE';
  end;
  dbcDia.Enabled := DatosPedidos.CDSPedidoCabPEDIDO_ESTABLE.AsString='S';

  //FormPedidos.Caption:=FormPedidos.Caption+'//'+DatosPedidos.CDSPedidoCabFECHA_HORA.AsString;
end;

procedure TFormPedidos.btCancelarClick(Sender: TObject);
begin
  if Nuevo then
    begin
      DatosPedidos.CDSPedidoCab.Delete;
      DatosPedidos.CDSPedidoCab.ApplyUpdates(-1);
    end;
  DatosPedidos.CDSPedidoCab.Close;
  DatosPedidos.CDSPedidoDet.Close;
  DatosPedidos.CDSPedidoCab.Open;
  DatosPedidos.CDSPedidoDet.Open;
  DatosPedidos.CDSPedidoCab.EmptyDataSet;
  DatosPedidos.CDSPedidoDet.EmptyDataSet;
end;


//procedure TFormPedidos.btFacturaClick(Sender: TObject);
//var EstadoIVA:String;
//begin
//  if Not(DatosPedidos.CDSPedidoCab.IsEmpty) and ((VarIsNull(DatosPedidos.CDSPedidoCabID_FACTURA.Value)) or ((DatosPedidos.CDSPedidoCabID_FACTURA.Value)<=0)) and
//       (DatosPedidos.CDSPedidoDetTOTALPEDIDO.Value>0) Then
//   begin
//     if Not(Assigned(FormCpbte_2)) Then
//        FormCpbte_2:=TFormCpbte_2.Create(self);
//     EstadoIva:=FormCpbte_2.DiscriminaIva; // lo guardo para despues reasignar, cuand genero la factura
//                                            // pongo que discrime el IVA por que me hacia un efecto de agregado
//                                            // me suma ael IVA dos veces. Para que mantegan la propiedad de que si quiere
//                                            // ver la factura con IVA incluido lo guardo y lo asigno de nuevo
//                                            // esto es por Gomeria Centenario.... que hincha pelota....
//     Facturar.Execute;
//     if FormCpbte_2.dsBase.State=dsInsert then
//       begin
//         FormCpbte_2.DiscriminaIva:=EstadoIva;
//         FormCpbte_2.Show;
//         FormCpbte_2.DBGrillaDetalle.SetFocus;
//       end;
//
//    if DatosPedidos.CDSPedidoCabHAY_PENDIENTES.Value='S' then
//      GenerarCopia;
//
//   end
// else
//    ShowMessage('Ya esta Entregado// o Sin Cantidades Pedida ....');
//  DatosPedidos.CDSPedidoCab.Close;
//  DatosPedidos.CDSPedidoDet.Close;
//  DatosPedidos.CDSPedidoCab.Open;
//  DatosPedidos.CDSPedidoDet.Open;
//  DatosPedidos.CDSPedidoCab.EmptyDataSet;
//  DatosPedidos.CDSPedidoDet.EmptyDataSet;
//end;

procedure TFormPedidos.btNPedidoClienteClick(Sender: TObject);
begin
  GenerarNotaPedidoCliente;
end;

procedure TFormPedidos.btNuevoClick(Sender: TObject);
var id:Integer;
begin
  id     := DatosPedidos.ibgCab.IncrementFD(1);
  Nuevo  := True;
  spGeneraPedido.Close;
  spGeneraPedido.Params.ParamByName('idcab').Value      := id;
  spGeneraPedido.Params.ParamByName('Fecha').Value      := Date;
  spGeneraPedido.Params.ParamByName('FECHA_HORA').Value := now;
  spGeneraPedido.ExecProc;
  spGeneraPedido.Close;

  DatosPedidos.CDSPedidoCab.Close;
  DatosPedidos.CDSPedidoCab.Params.ParamByName('id').Value:=id;
  DatosPedidos.CDSPedidoCab.Open;

  DatosPedidos.CDSPedidoDet.Close;
  DatosPedidos.CDSPedidoDet.Params.ParamByName('id').Value:=id;
  DatosPedidos.CDSPedidoDet.Open;

  pnPrevision.Visible:=False;

  DatosPedidos.CDSPedidoDet.First;
  DatosPedidos.CDSPedidoDet.EnableControls;
  cxGrid1DBTableView1.DataController.Groups.FullExpand;
  cxGridDBTableView2.DataController.Groups.FullExpand;

  DatosPedidos.CDSPedidoCab.Edit;


  case pcOrdenamiento.ActivePageIndex of
    0:if not(OrdenarporNrodeOrden1.Checked) Then
        DatosPedidos.CDSPedidoDet.IndexFieldNames:='MUESTRASUBRUB;MUESTRADETALLE'
      else
        DatosPedidos.CDSPedidoDet.IndexFieldNames:='MUESTRASUBRUB;MUESTRAORDENPLA';
    1:DatosPedidos.CDSPedidoDet.IndexFieldNames:='MUESTRAORDENGRUPO;CODIGO;MUESTRADETALLE';
  end;

end;

procedure TFormPedidos.btRemitarClick(Sender: TObject);
begin
  //** aca se va a generar el Rto..
  if Not(DatosPedidos.CDSPedidoCab.IsEmpty) then
    begin
      if (DatosPedidos.CDSPedidoCabFACTURADO.AsString<>'S') and (DatosPedidos.CDSPedidoDetTOTALPEDIDO.Value>0) then
         begin
           if not(DatosPedidos.CDSPedidoCab.IsEmpty) then
             begin
               if Not(Assigned(FormBuscadorTipoCpbte)) then
                 FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
               FormBuscadorTipoCpbte.TipoCpbte1:='RE';
               FormBuscadorTipoCpbte.TipoCpbte2:='';
               FormBuscadorTipoCpbte.TipoCpbte3:='';
               FormBuscadorTipoCpbte.CV        :='V';
               FormBuscadorTipoCpbte.Sucursal  := Sucursal;
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
                     FormControlNroRto:=TFormControlNroRto.Create(Application);
                   FormControlNroRto.Let:= DatosRemitos.CDSRtoCabLETRARTO.AsString;
                   FormControlNroRto.Suc:= DatosRemitos.CDSRtoCabSUCRTO.AsString;
                   FormControlNroRto.Num:= DatosRemitos.CDSRtoCabNUMERORTO.Value;
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
                   DatosRemitos.CDSRtoDet.AfterPost:=nil;
                   DatosPedidos.CDSPedidoDet.First;
                   while Not(DatosPedidos.CDSPedidoDet.Eof)  do
                     begin
                       while Not(DatosPedidos.CDSPedidoDet.Eof)  Do // Ingreso el detalle
                         begin
                           if (DatosPedidos.CDSPedidoDetCANTIDAD_UNID_ENTR.AsFloat > 0) then
                             AgregaDetalleRto;
                           DatosPedidos.CDSPedidoDet.Next;
                         end;
                     end;
                   DatosRemitos.CDSRtoDet.AfterPost:=DatosRemitos.CDSRtoDetAfterPost;
                   DatosRemitos.CDSRtoDet.Edit;
                   DatosRemitos.CDSRtoDet.Post;

                   FormRemitos.Confirma.Execute;
                 end;
             end;
         end
       else
         ShowMessage('Ya tiene Rto esta factura o Sin Cantidades Pedidas....');
      DatosPedidos.CDSPedidoCab.Close;
      DatosPedidos.CDSPedidoDet.Close;
      DatosPedidos.CDSPedidoCab.Open;
      DatosPedidos.CDSPedidoDet.Open;
      DatosPedidos.CDSPedidoCab.EmptyDataSet;
      DatosPedidos.CDSPedidoDet.EmptyDataSet;
    end;
end;

procedure TFormPedidos.btGuardarClick(Sender: TObject);
var Dato:String;
begin
  if Trim(DatosPedidos.CDSPedidoCabCLIENTE.AsString)='' then
    raise Exception.Create('Falta el Cliente');

  DatosPedidos.control_cantidad;

  Dato:=DatosPedidos.CDSPedidoCabID.AsString;
  if DatosPedidos.CDSPedidoCab.State<>dsBrowse then
    DatosPedidos.CDSPedidoCab.Post;


  DMMain_FD.fdcGestion.StartTransaction;
  try
    if DatosPedidos.CDSPedidoCab.ApplyUpdates(0)=0 Then
      if DatosPedidos.CDSPedidoDet.ApplyUpdates(0)=0 Then
        DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('Fallo de Grabacion...');
  end;

  DatosPedidos.CDSPedidoCab.Close;
  DatosPedidos.CDSPedidoCab.Params.ParamByName('id').Value := StrToInt(Dato);
  DatosPedidos.CDSPedidoCab.Open;

  DatosPedidos.CDSPedidoDet.Close;
  DatosPedidos.CDSPedidoDet.Params.ParamByName('id').Value := StrToInt(Dato);
  DatosPedidos.CDSPedidoDet.Open;

  cxGrid1DBTableView1.DataController.Groups.FullExpand;
  cxGridDBTableView2.DataController.Groups.FullExpand;

end;

procedure TFormPedidos.btImprimirClick(Sender: TObject);
begin
 //  dxComponentPrinter1Link1.Caption:='Pedido :'+DateToStr(dbeFechaVta.Date)+' '+dbeNombre.text;
//  dxComponentPrinter1Link1.Preview(True);

  DatosPedidos.CDSPedidoDet.Filtered:=False;
  DatosPedidos.CDSPedidoDet.Filter:='(CANTIDAD_PEDIDA>0)';
  DatosPedidos.CDSPedidoDet.Filtered:=not(chImprimeCero.Checked);

  cxGrid1DBTableView1.DataController.Groups.FullExpand;
  cxGridDBTableView2.DataController.Groups.FullExpand;

 //  frxReport.PrintOptions.Printer:=PrNomListados;
//  frxReport.SelectPrinter;

  if pcOrdenamiento.ActivePageIndex=0 Then
    frxReport.LoadFromFile(DMMain_FD.PathReportesCpbte+'\NotaPedidos.fr3')
  else
    if pcOrdenamiento.ActivePageIndex=1 Then
      frxReport.LoadFromFile(DMMain_FD.PathReportesCpbte+'\NotaPedidoGrupo.fr3');
 // frxReport.Variables['ConCero']:= '''0''';


  //frxReport.Variables['Banco']:= ''''+edNombreCta.Text+'''';
  //frxReport.Variables['NroCta']:= ''''+edNroCta.Text+'''';
  //frxReport.Variables['Desde']:= ''''+DateToStr(Desde.Date)+'''';
  //frxReport.Variables['Hasta']:= ''''+DateToStr(Hasta.Date)+'''';

//  frxReport.PrintOptions.Copies := 1;
  // frCtaCte.PrepareReport;
  frxReport.ShowReport;

  DatosPedidos.CDSPedidoDet.Filtered:=False;

  cxGrid1DBTableView1.DataController.Groups.FullExpand;
  cxGridDBTableView2.DataController.Groups.FullExpand;

end;

procedure TFormPedidos.BuscaArticulosExecute(Sender: TObject);
begin
  if Not(Assigned(FormBuscadorArticulos)) then
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.Param1:=1;
  FormBuscadorArticulos.Param2:=3;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' then
    CDSPlantillaCODIGOSetText(CDSPlantillaCODIGO,FormBuscadorArticulos.Codigo);

end;

procedure TFormPedidos.BuscarClientesExecute(Sender: TObject);
begin
  if Not(Assigned(FormBuscadorClientes)) then
    FormBuscadorClientes:=TFormBuscadorClientes.Create(Self);
   FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     DatosPedidos.CDSPedidoCabCLIENTESetText(DatosPedidos.CDSPedidoCabCLIENTE,FormBuscadorClientes.Codigo);

end;

procedure TFormPedidos.btAgregarClick(Sender: TObject);
var cod:Integer;
begin
  QNextIDGrupo.Close;
  QNextIDGrupo.Open;
  if QNextIDGrupoNEXTID.AsString<>'' then
    Cod:= QNextIDGrupoNEXTID.AsInteger+1
  else
    Cod:= 1;
  QNextIDGrupo.Close;

  Lista:=lwLista.Items.Add;
  Lista.SubItems.Add(IntToStr(cod));
  Lista.SubItems.Add(edGrupo.Text);
  Lista.SubItems.Add(IntToStr(lwLista.Items.Count+1));

  spABGrupo.Close;
  spABGrupo.Params.ParamByName('Operacion').Value   :='A';
  spABGrupo.Params.ParamByName('id').Value          :=cod;
  spABGrupo.Params.ParamByName('Descripcion').Value :=edGrupo.Text;
  spABGrupo.Params.ParamByName('orden').Value       :=lwLista.Items.Count+1;
  spABGrupo.ExecProc;

end;



procedure TFormPedidos.CDSGruposNewRecord(DataSet: TDataSet);
begin
  QNextIDGrupo.Close;
  QNextIDGrupo.Open;

  if QNextIDGrupoNEXTID.AsString<>'' then
    CDSGruposID.Value:= QNextIDGrupoNEXTID.AsInteger+1
  else
    CDSGruposID.Value:= 1;
  QNextIDGrupo.Close;

  CDSGruposORDEN.Value := CDSGrupos.RecordCount+1;
end;

procedure TFormPedidos.CDSPedidoDetCalcFields(DataSet: TDataSet);
begin
 // CDSPedidoDetOREDE_GRUPO.Value  :=CDSPedidoDetMUESTRAORDENGRUPO.AsString+'-'+CDSPedidoDetMUESTRAGRUPO.Value;

end;

procedure TFormPedidos.CDSPlantillaAfterDelete(DataSet: TDataSet);
begin
  CDSPlantilla.ApplyUpdates(-1);
end;

procedure TFormPedidos.CDSPlantillaAfterPost(DataSet: TDataSet);
begin
  CDSPlantilla.ApplyUpdates(-1);
end;

procedure TFormPedidos.CDSPlantillaCODIGOSetText(Sender: TField;
  const Text: string);
Var CDSClone:TClientDataSet;
Cod:String;
begin
  if Text<>#13 then
    begin
       if DMMain_FD.JustificaCodigo='D' Then
        Sender.AsString:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(Text)) + Text
      else
        if DMMain_FD.JustificaCodigo='I' Then
          Sender.AsString:=Text+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(Text));

      CDSClone:=TClientDataSet.Create(self);
      CDSClone.CloneCursor(CDSPlantilla,True);
      cod:=VarToStr(CDSClone.Lookup('codigo',Sender.AsString,'codigo'));
      if Cod='' then
        begin
          if CDSPlantilla.State=dsBrowse then CDSPlantilla.Append;
          DatosPedidos.CDSStock.Close;
          DatosPedidos.CDSStock.Params.ParamByName('codigo').ASString:=Sender.AsString;
          DatosPedidos.CDSStock.Open;
          if Not(DatosPedidos.CDSStock.IsEmpty) then
            begin
              if CDSPlantilla.State=dsBrowse then CDSPlantilla.Edit;
              CDSPlantillaCODIGO.AsString               := DatosPedidos.CDSStockCODIGO_STK.AsString;
              CDSPlantillaDETALLE_STK.AsString          := DatosPedidos.CDSStockDETALLE_STK.AsString;
              CDSPlantillaPRESENTACION_CANTIDAD.AsFloat := DatosPedidos.CDSStockPRESENTACION_CANTIDAD.AsFloat;
              CDSPlantillaMUESTRASUBRUB.Value           := DatosPedidos.CDSStockMUESTRASUBRUBRO.Value;
            end;
        end
      else
        begin
          Sender.Clear;
          CDSPlantilla.Cancel;
        end;
      CDSClone.Free;
    end;
end;

procedure TFormPedidos.CDSPlantillaNewRecord(DataSet: TDataSet);
var CDSClone:TClientDataSet;
Cod:String;
begin
  CDSClone:=TClientDataSet.Create(self);
  CDSClone.CloneCursor(CDSPlantilla,True);
  CDSPlantillaID_ORDEN.Value                := CDSPlantilla.RecordCount;
  cod:=VarToStr(CDSClone.Lookup('id_orden',CDSPlantillaID_ORDEN.AsString,'Id_Orden'));
  while Cod<>'' do
    begin
      CDSPlantillaID_ORDEN.Value  := CDSPlantillaID_ORDEN.Value+1;
      cod:=VarToStr(CDSClone.Lookup('id_orden',CDSPlantillaID_ORDEN.AsString,'Id_Orden'));
    end;

  CDSPlantillaCODIGO.Value                  := '';
  CDSPlantillaDETALLE_STK.Value             := '';
  CDSPlantillaPRESENTACION_CANTIDAD.AsFloat := 0;
  CDSPlantillaID_GRUPO.AsFloat              := -1;

end;

procedure TFormPedidos.CDSRecepcionAfterPost(DataSet: TDataSet);
begin
  RecibirCantidad.Execute;
end;

procedure TFormPedidos.CDSRecepcionCANTIDAD_RECIBIDASetText(Sender: TField;
  const Text: string);
begin
  if Text<>'' then
    begin
      Sender.AsString  :=Text;
      CDSRecepcionDIFERENCIA.Value:=CDSRecepcionCANTIDAD.Value-Sender.AsFloat;
    end;
end;

procedure TFormPedidos.CDSSectorAfterDelete(DataSet: TDataSet);
begin
  CDSSector.ApplyUpdates(-1);
  CDSSector.Refresh;
end;

procedure TFormPedidos.CDSSectorAfterPost(DataSet: TDataSet);
begin
  CDSSector.ApplyUpdates(-1);
  CDSSector.Refresh;
end;

procedure TFormPedidos.CDSSectorNewRecord(DataSet: TDataSet);
begin
  CDSSectorID.Value:=-1;
end;

procedure TFormPedidos.chCantidadCeroClick(Sender: TObject);
begin
  DatosPedidos.CDSPedidoDet.Filtered := False;
  DatosPedidos.CDSPedidoDet.Filter   := '(CANTIDAD_UNID_ENTR>0) or (CANTIDAD_UNID_PED>0)';
  DatosPedidos.CDSPedidoDet.Filtered := chCantidadCero.Checked;
  cxGrid1DBTableView1.DataController.Groups.FullExpand;
  cxGridDBTableView2.DataController.Groups.FullExpand;

end;

procedure TFormPedidos.CopyAllClick(Sender: TObject);
var Lista:TStringList;
begin
  if Lista=nil then
    lista:=TStringList.Create;
  Lista.Clear;
  DatosPedidos.CDSPedidoDet.First;
  while not(DatosPedidos.CDSPedidoDet.Eof) do
    begin
      if Trunc(DatosPedidos.CDSPedidoDetCANTIDAD_PEDIDA.Value*100)>0 then
        lista.Add(DatosPedidos.CDSPedidoDetCODIGO.Value+'  '+
                  LeftStr(DatosPedidos.CDSPedidoDetMUESTRADETALLE.Value+'..................................................................',45)+
                  RightStr('         '+DatosPedidos.CDSPedidoDetCANTIDAD_UNID_PED.AsString,15));
        DatosPedidos.CDSPedidoDet.Next;
    end;
  if (lista<>nil) and (lista.Count>0) then
    begin
      if Not(Assigned(FormListaNoImportados)) then
        FormListaNoImportados:=TFormListaNoImportados.Create(Application);
      FormListaNoImportados.mLista.Lines:=lista;
      FormListaNoImportados.Show;
    end
end;

procedure TFormPedidos.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  if DatosPedidos.CDSPedidoCab.State in [dsInsert,dsEdit] then
    begin
      pnCantidad.Visible:=True;
      edCantidad.SetFocus;
      edCantidad.SelectAll;
    end;
end;

procedure TFormPedidos.cxGrid4DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if CDSRecepcionID_CAB.AsString<>'' then
    begin
       if Not(Assigned(FormCpbte_2)) then
         formCpbte_2:=TFormCpbte_2.Create(Application);
       FormCpbte_2.DatoNew:=CDSRecepcionID_CAB.AsString;
       FormCpbte_2.TipoCpbte:='FC';
       FormCpbte_2.Recuperar.Execute;
       FormCpbte_2.Show;
       FormCpbte_2.BringToFront;
    end;

end;

procedure TFormPedidos.cxGrid4DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  colSaldo,colHaber: integer;
  Valor   : Extended;
begin
  inherited;
 // Para Dibujar renglon en cxGrid
  colSaldo := cxGrid4DBTableView1DIFERENCIA.Index;
  if AViewInfo.Selected then
    begin
       ACanvas.Font.Color  := clWhite;
       ACanvas.Brush.Color := clBlue;
     end
  else
    begin
      if Not(IsZero(AviewInfo.GridRecord.Values[colSaldo])) then
        ACanvas.Font.Color:=clRed;
    end;
end;

procedure TFormPedidos.cxGridDBTableView2DblClick(Sender: TObject);
begin
  if DatosPedidos.CDSPedidoCab.State in [dsInsert,dsEdit] then
    begin
      pnCantidad.Visible:=True;
      edCantidad.SetFocus;
      edCantidad.SelectAll;
    end;
end;

procedure TFormPedidos.dbcDiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_DELETE then
    DSPedidoCab.DataSet.FieldByName('DIA').Value:=-1;
end;

procedure TFormPedidos.dbchPrevisionClick(Sender: TObject);
begin
  pnPrevision.Visible:= dbchPrevision.Checked;
end;

procedure TFormPedidos.dbcListaPreciosChange(Sender: TObject);
begin
  CDSPlantilla.Close;
  CDSPlantilla.IndexName:='';
  CDSPlantilla.IndexDefs.Clear;
  CDSPlantilla.Params.ParamByName('lista').Value:=dbcListaPrecios.KeyValue;
  CDSPlantilla.Open;
end;

procedure TFormPedidos.dbgPlantillaColEnter(Sender: TObject);
begin
  if dbgPlantilla.SelectedIndex<=1 then
    dbgPlantilla.SelectedIndex:=2
  else
  if (dbgPlantilla.SelectedIndex>2) and (dbgPlantilla.SelectedIndex<5) then
    dbgPlantilla.SelectedIndex:=2;
end;

procedure TFormPedidos.dbgPlantillaDblClick(Sender: TObject);
begin
 if Not(Assigned(FormStock_2)) then
    FormStock_2:= TFormStock_2.Create(Self);
  FormStock_2.DatoNew:=CDSPlantillaCODIGO.AsString;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
end;

procedure TFormPedidos.dbgPlantillaDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  TargetNode, SourceNode,Nodo1 : TTreeNode;
  nodeTmp : TTreeNode;
  i,Sel,Long,N : Integer;
  Tipo,Clase,Codigo,Id,IdUsuario,Temp,Sucursal:String;
  ListaNodos:TStringList;
begin
  ListaNodos   := TStringList.Create;
  Screen.Cursor:= crHourGlass;

  if True then

  for Sel := 0 to (Source as TTreeView).Items.Count - 1 do
    begin
      if ((Source as TTreeView).Items[sel].Selected)then
        begin
          SourceNode := (Source as TTreeView).Items[sel];
          Temp       := Trim(SourceNode.Text);
          Codigo     := Copy(Temp,1,pos('-',Temp)-1);

          CDSPlantilla.Append;
          CDSPlantillaCODIGOSetText(CDSPlantillaCODIGO,Codigo);
        end;
    end;

  FreeAndNil(ListaNodos);
  Screen.Cursor:=crDefault;
end;

procedure TFormPedidos.dbgPlantillaDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
VAR Nodo:TTreeNode;
begin
 if (Source is TTreeView) then
    Accept:=True;
  Nodo:=(Source as TTreeView).Selected;
  if Nodo.Level<2 then
    Accept:=False;

end;

procedure TFormPedidos.dbgPlantillaEnter(Sender: TObject);
begin
  tpListaPlantilla.RollIn(AdvToolPanel1);
  if dbgPlantilla.SelectedIndex<=1 then
    dbgPlantilla.SelectedIndex:=2
end;

procedure TFormPedidos.dbgPlantillaKeyPress(Sender: TObject; var Key: Char);
begin
  IF (Key = #10) THEN
    BEGIN
      Key := #0;
      if Not(Assigned(FormBuscadorArticulos)) then
        begin
          IF dbgPlantilla.SelectedField = CDSPlantillaCODIGO THEN
            BuscaArticulos.Execute;
          end;
      END;
end;


procedure TFormPedidos.dbgPlantillaTitleClick(Column: TColumn);
var campo:string;
begin
  try
    Campo := Column.FieldName;
    with dbgPlantilla.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.begin

  end;
end;

procedure TFormPedidos.DBText1Click(Sender: TObject);
begin
  if DatosPedidos.CDSPedidoCabTIPO_FACTURA.Value='RE' then
    begin
      if not(Assigned(FormRemitos)) then
        FormRemitos:=TFormRemitos.Create(Self);
      FormRemitos.DatoNew   := DatosPedidos.CDSPedidoCabID_FACTURA.AsString;
      FormRemitos.TipoCpbte := 'RE';
      FormRemitos.Recuperar.Execute;
      FormRemitos.Show;
    end
  else
    if DatosPedidos.CDSPedidoCabTIPO_FACTURA.Value='FC' then
      begin
        if not(Assigned(FormCpbte_2)) then
          FormCpbte_2:=TFormCpbte_2.Create(Self);
        FormCpbte_2.DatoNew   := DatosPedidos.CDSPedidoCabID_FACTURA.AsString;
        FormCpbte_2.TipoCpbte := 'FC';
        FormCpbte_2.Recuperar.Execute;
        FormCpbte_2.Show;
      end

end;

procedure TFormPedidos.DBText5Click(Sender: TObject);
begin
 if DatosPedidos.CDSPedidoCabID_PEDIDO_ORIGEN.AsInteger>0 then
   begin
      DatoNew  :=DatosPedidos.CDSPedidoCabID_PEDIDO_ORIGEN.AsInteger;
      Recuperar.Execute;
   end;
end;

procedure TFormPedidos.DSPedidoCabStateChange(Sender: TObject);
begin
  dbeFechaVta.Enabled       := DSPedidoCab.State <> dsBrowse;
  ceCodigo.Enabled          := DSPedidoCab.State <> dsBrowse;
  btGuardar.Enabled         := DSPedidoCab.State in [dsInsert,dsEdit];
  btCancelar.Enabled        := DSPedidoCab.State in [dsInsert,dsEdit];
  btNuevo.Enabled           := DSPedidoCab.State = dsBrowse;
  abFacturar.Enabled        := (Not(DSpedidoCab.DataSet.IsEmpty)) and (DSPedidoCab.State = dsBrowse);
  btRemitar.Enabled         := (Not(DSpedidoCab.DataSet.IsEmpty)) and (DSPedidoCab.State = dsBrowse);
  btImprimir.Enabled        := (Not(DSpedidoCab.DataSet.IsEmpty)) and (DSPedidoCab.State = dsBrowse);
  btBorrar.Enabled          := (Not(DSpedidoCab.DataSet.IsEmpty)) and (DSPedidoCab.State = dsBrowse);
  AplicaEntregadas.Enabled  := (Not(DSpedidoCab.DataSet.IsEmpty)) and (DSPedidoCab.State = dsBrowse);
  HacerCopia.Enabled        := (Not(DSpedidoCab.DataSet.IsEmpty)) and (DSPedidoCab.State = dsBrowse);
  btBuscar.Enabled          := DSPedidoCab.State = dsBrowse;
  dbcSector.Enabled         := DSPedidoCab.State <> dsBrowse;
  //  btBorrar.Enabled          := (DSPedidoCab.State = dsBrowse) and (DSpedidoCab.DataSet.IsEmpty=False) ;
  AplicaEntregadas.Enabled  := (DSPedidoCab.State = dsBrowse) and (Not(DSpedidoCab.DataSet.IsEmpty)) and (Not(DatosPedidos.CDSPedidoCabID_PEDIDO_ORIGEN.Value<=0));
  if DatosPedidos<>nil then
    begin
      abFacturar.Enabled     := (Not(DSpedidoCab.DataSet.IsEmpty)) and (DatosPedidos.CDSPedidoCabPEDIDO_PREVISION.Value = 'N') and (DSPedidoCab.State = dsBrowse);
      btRemitar.Enabled      := (Not(DSpedidoCab.DataSet.IsEmpty)) and (DatosPedidos.CDSPedidoCabPEDIDO_PREVISION.Value = 'N') and (DSPedidoCab.State = dsBrowse);
    end;
//  btBorrar.Enabled       := (Not(DSpedidoCab.DataSet.IsEmpty)) and (CDSPedidoCabPEDIDO_PREVISION.Value = 'N');


 // dbeVtoRevision.Enabled := pnPrevision.visible and (DSPedidoCab.State in [dsInsert]);

end;

procedure TFormPedidos.DSPedidoDetStateChange(Sender: TObject);
begin
 


  if (DSPedidoCab.State=dsBrowse) and (DSPedidoDet.State=dsEdit) then
    DSPedidoCab.Edit;

end;


procedure TFormPedidos.edGrupoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (Trim(edGrupo.Text)<>'') then
    begin
      btAgregar.Click;
      edGrupo.Clear;
      edGrupo.SetFocus;
    end;

end;

procedure TFormPedidos.EstadoPrevisionExecute(Sender: TObject);
begin
  if (DatosPedidos.CDSPedidoCab.State=dsBrowse) and (DatosPedidos.CDSPedidoCabPEDIDO_PREVISION.Value='S') and
     (DatosPedidos.CDSPedidoCabESTADO_PREVISION.Value='A') then
    begin
      DatosPedidos.CDSPedidoCab.Edit;
      DatosPedidos.CDSPedidoCabESTADO_PREVISION.Value:='I';
      DatosPedidos.CDSPedidoCab.Post;
      DatosPedidos.CDSPedidoCab.ApplyUpdates(-1);
    end;
end;

procedure TFormPedidos.ExportarPlantillaXLSExecute(Sender: TObject);
begin
if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if Not(CDSPlantilla.IsEmpty) then
    begin
      SaveDialog1.DefaultExt:='xls';
      SaveDialog1.FileName:='PlantillaPedidos';

      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute then
        if SaveDialog1.FileName<>'' then
          begin
            if VirtualUI.Active then
              DataToXLS.SaveToFile(SaveDialog1.FileName)
            else
              DataToXLS.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog1.FileName);
          end;
    end;
end;

procedure TFormPedidos.FacturarExecute(Sender: TObject);
var EstadoActualLista:Boolean;
begin
  inherited;
  if (FormCpbte_2.DSBase.State=dsBrowse) then
    begin
      EstadoActualLista           :=DMMain_FD.GetControlaLista;
    //  DMMain_FD.ControlaLista:=False;
      FormCpbte_2.Agregar.Execute;
      AgregaCabecera;
      if FormCpbte_2.DSBase.State = dsInsert then
        begin
          DatosVentas.CDSVentaDet.AfterPost:=nil;
          DatosPedidos.CDSPedidoDet.First;

          while Not(DatosPedidos.CDSPedidoDet.Eof) Do // Ingreso el detalle
            begin
              if (DatosPedidos.CDSPedidoDetCANTIDAD_UNID_ENTR.AsFloat > 0) then
                AgregaDetalle;
              DatosPedidos.CDSPedidoDET.Next;
            end;
          DatosVentas.CDSVentaDet.AfterPost:=DatosVentas.CDSVentaDetAfterPost;
          DatosVentas.CDSVentaDet.Edit;
          DatosVentas.CDSVentaDet.Post;
   //       DMMain_FD.ControlaLista:=EstadoActualLista;
        end;
    end
      else
        ShowMessage('Hay un Comprobante abierto sin confirmar...');
end;

procedure TFormPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ArchivoIni       := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  ArchivoIni.WriteInteger('Ordenamiento', 'Opcion', pcOrdenamiento.ActivePageIndex);
  ArchivoIni.WriteInteger('Canitdades', 'op', rgCantidades.ItemIndex);
  ArchivoIni.WriteBool('Ordenamiento', 'Orden', OrdenarporNrodeOrden1.Checked);
  ArchivoIni.WriteBool('Grupos', 'Mostrar', OcultarGrupos1.Checked);

  ArchivoIni.WriteBool('Orden', 'A', OrdenPorNro1.Checked);
  ArchivoIni.WriteBool('Orden', 'B', OrdenClienteNroPedido1.Checked);
  ArchivoIni.WriteBool('Orden', 'C', OrdenClienteFechaAsc1.Checked);


  ArchivoIni.Free;

  CDSPlantilla.Close;

  DatosPedidos.CDSPedidoDet.Close;
  DatosPedidos.CDSPedidoCab.Close;
  DatosPedidos.CDSPrevision.Close;

  FreeAndNil(DatosPedidos);
  Action :=caFree;
end;

procedure TFormPedidos.FormCreate(Sender: TObject);
begin
  AutoSize      :=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  if Not(Assigned(DatosPedidos)) then
    DatosPedidos:=TDatosPedidos.create(self);

  ArchivoIni                      := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  Sucursal                        := ArchivoIni.ReadInteger('sucursal', 'sucursal', -1);
  Deposito                        := ArchivoIni.ReadInteger('Deposito', 'Deposito', 1);
  rgCantidades.ItemIndex          := ArchivoIni.ReadInteger('Canitdades', 'op', 0);
  pcOrdenamiento.ActivePageIndex  := ArchivoIni.ReadInteger('Ordenamiento', 'Opcion', 0);
  OrdenarporNrodeOrden1.Checked   := ArchivoIni.ReadBool('Ordenamiento', 'Orden', False);
  OcultarGrupos1.Checked          := ArchivoIni.ReadBool('Grupos', 'Mostrar', True);
  OrdenPorNro1.Checked            := ArchivoIni.ReadBool('Orden', 'A', True);
  OrdenClienteNroPedido1.Checked  := ArchivoIni.ReadBool('Orden', 'B', False);
  OrdenClienteFechaAsc1.Checked   := ArchivoIni.ReadBool('Orden', 'C', False);
  if (OcultarGrupos1.Checked) then
    OcultarGrupos1.Caption:='Ver Grupos'
  else
    OcultarGrupos1.Caption:='Ocultar Grupos';

  cxGridDBTableView2.OptionsView.GroupByBox:=OcultarGrupos1.Checked;

  ArchivoIni.Free;

  pcGeneral.ActivePageIndex      := 0;
  pcOrdenamiento.ActivePageIndex := 0;
  tsPrevision.TabVisible:=False;
  edDesde.Date:=Date;
  edHasta.Date:=Date;
end;

procedure TFormPedidos.FormDestroy(Sender: TObject);
begin
  FormPedidos:=nil;
end;

procedure TFormPedidos.FormResize(Sender: TObject);
begin
  if FormPedidos<>nil then
    if FormPedidos.Width<>1060 then
       FormPedidos.Width:=1060;
 end;

procedure TFormPedidos.FormShow(Sender: TObject);
begin
  CDSListaCab.Close;
  CDSListaCab.Open;
  dbcListaPrecios.KeyValue:=DMMain_FD.ListaPorDefecto(-1);

  CDSPlantilla.Close;
  CDSPlantilla.IndexName:='';
  CDSPlantilla.IndexDefs.Clear;
  CDSPlantilla.Params.ParamByName('lista').Value:=dbcListaPrecios.KeyValue;
  CDSPlantilla.Open;


  CDSGrupos.Close;
  CDSGrupos.Open;

  CDSSector.Close;
  CDSSector.Open;

  DatosPedidos.CDSPedidoCab.Close;
  DatosPedidos.CDSPedidoCab.Open;

  DatosPedidos.CDSPedidoDet.Close;
  DatosPedidos.CDSPedidoDet.Open;

  lwLista.Clear;
  CDSGrupos.First;
  while Not(CDSGrupos.Eof) do
    begin
      Lista:=lwLista.Items.Add;
      Lista.SubItems.Add(CDSGruposID.ASString);
      Lista.SubItems.Add(CDSGruposDESCRIPCION.ASString);
      Lista.SubItems.Add(CDSGruposORDEN.AsString);
      CDSGrupos.Next;
    end;
  lwPlantilla.Clear;
  CDSPlantilla.First;
  while Not(CDSPlantilla.Eof) do
    begin
      Lista:=lwPlantilla.Items.Add;
      Lista.SubItems.Add(CDSPlantillaCODIGO.AsString);
      Lista.SubItems.Add(CDSPlantillaID_ORDEN.AsString);
      Lista.SubItems.Add(CDSPlantillaMUESTRASUBRUB.AsString);
      Lista.SubItems.Add(CDSPlantillaDETALLE_STK.AsString);
      CDSPlantilla.Next;
    end;
 
  end;

procedure TFormPedidos.GenerarCopia;
var QVerifica:TFDQuery;
begin
  QVerifica:=TFDQuery.Create(nil);
  QVerifica.Connection:=DMMain_FD.fdcGestion;
  QVerifica.SQL.Text:='select c.id from plantilla_pedido_cab c where c.id_pedido_origen = :id';
  QVerifica.ParamByName('id').Value:=DatosPedidos.CDSPedidoCabID.Value;
  QVerifica.Open;
  if (QVerifica.Fields[0].AsString<>'') and
      (QVerifica.Fields[0].AsInteger>0)then
  raise Exception.Create('Ya Hay una Copia Generada..('+QVerifica.Fields[0].AsString+')');
  QVerifica.Close;
  FreeAndNil(QVerifica);


  DMMain_FD.fdcGestion.StartTransaction;
  try
    DatosPedidos.spGeneraPendiente.Close;
    DatosPedidos.spGeneraPendiente.Params.ParamByName('id_pedido').Value:=DatosPedidos.CDSPedidoCabID.Value;
    DatosPedidos.spGeneraPendiente.ExecProc;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se Realizao la Copia...');
  end;
  DatosPedidos.spGeneraPendiente.Close;
end;



procedure TFormPedidos.GuardarGrupoExecute(Sender: TObject);
var
  Seleccionados: TStringList;
  i: Integer;
  Orden:Integer;
begin
  Orden:=1;
  for i := 0 to lwLista.Items.Count - 1 do
    begin
       spABGrupo.Close;
       spABGrupo.Params.ParamByName('Operacion').Value   :='M';
       spABGrupo.Params.ParamByName('id').Value          :=lwLista.Items[i].SubItems[0];
       spABGrupo.Params.ParamByName('Descripcion').Value :='';
       spABGrupo.Params.ParamByName('orden').Value       :=Orden;
       spABGrupo.ExecProc;
       spABGrupo.Close;
       Orden:=Orden+1;
    end;
end;

procedure TFormPedidos.HacerCopiaExecute(Sender: TObject);
begin
  if DatosPedidos.CDSPedidoCabHAY_PENDIENTES.Value='S' then
    begin
      GenerarCopia;
      DatoNew:= DatosPedidos.CDSPedidoCabID.Value;
      Recuperar.Execute;
    end;
end;

procedure TFormPedidos.abFacturarClick(Sender: TObject);
var EstadoIVA:String;
begin
  if Not(DatosPedidos.CDSPedidoCab.IsEmpty) then
    begin
      if Not(DatosPedidos.CDSPedidoCab.IsEmpty) and ((VarIsNull(DatosPedidos.CDSPedidoCabID_FACTURA.Value)) or ((DatosPedidos.CDSPedidoCabID_FACTURA.Value)<=0)) and
           (DatosPedidos.CDSPedidoDetTOTALPEDIDO.Value>0) Then
       begin
         if Not(Assigned(FormCpbte_2)) Then
            FormCpbte_2:=TFormCpbte_2.Create(self);
         EstadoIva:=FormCpbte_2.DiscriminaIva; // lo guardo para despues reasignar, cuand genero la factura
                                               // pongo que discrime el IVA por que me hacia un efecto de agregado
                                               // me suma ael IVA dos veces. Para que mantegan la propiedad de que si quiere
                                               // ver la factura con IVA incluido lo guardo y lo asigno de nuevo
                                               // esto es por Gomeria Centenario.... que hincha pelota....
         Facturar.Execute;
         if FormCpbte_2.dsBase.State=dsInsert then
           begin
             FormCpbte_2.DiscriminaIva:=EstadoIva;
             FormCpbte_2.Show;
             FormCpbte_2.DBGrillaDetalle.SetFocus;
           end;

        if DatosPedidos.CDSPedidoCabHAY_PENDIENTES.Value='S' then
          GenerarCopia;

       end
     else
        ShowMessage('Ya esta Entregado// o Sin Cantidades Pedida ....');
      DatosPedidos.CDSPedidoCab.Close;
      DatosPedidos.CDSPedidoDet.Close;
      DatosPedidos.CDSPedidoCab.Open;
      DatosPedidos.CDSPedidoDet.Open;
      DatosPedidos.CDSPedidoCab.EmptyDataSet;
      DatosPedidos.CDSPedidoDet.EmptyDataSet;
    end;
end;


procedure TFormPedidos.Label1Click(Sender: TObject);
begin
  if Not(Assigned(FormLista_Stock_Rub_SubRub)) then
    FormLista_Stock_Rub_SubRub:=TFormLista_Stock_Rub_SubRub.Create ( Self);
  FormLista_Stock_Rub_SubRub.Show;
end;

procedure TFormPedidos.lwListaDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  DragItem, DropItem, CurrentItem, NextItem: TListItem;
begin
  if Sender = Source then
    with TListView(Sender) do
    begin
      DropItem    := GetItemAt(X, Y);
      CurrentItem := Selected;
      while CurrentItem <> nil do
      begin
        NextItem := GetNextItem(CurrentItem, SdAll, [IsSelected]);
        if DropItem = nil then DragItem := Items.Add
        else
          DragItem := Items.Insert(DropItem.Index);
        DragItem.Assign(CurrentItem);
        CurrentItem.Free;
        CurrentItem := NextItem;
      end;
    end;
end;


procedure TFormPedidos.lwListaDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := Sender = lwLista;
end;

procedure TFormPedidos.lwPlantillaDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  DragItem, DropItem, CurrentItem, NextItem: TListItem;
begin
  if Sender = Source then
    with TListView(Sender) do
    begin
      DropItem    := GetItemAt(X, Y);
      CurrentItem := Selected;
      while CurrentItem <> nil do
      begin
        NextItem := GetNextItem(CurrentItem, SdAll, [IsSelected]);
        if DropItem = nil then DragItem := Items.Add
        else
          DragItem := Items.Insert(DropItem.Index);
        DragItem.Assign(CurrentItem);
        CurrentItem.Free;
        CurrentItem := NextItem;
      end;
    end;
end;

procedure TFormPedidos.lwPlantillaDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState;
  var Accept: Boolean);
begin
  Accept := Sender = lwPlantilla;
end;

procedure TFormPedidos.MarcarPedidoExecute(Sender: TObject);
begin
  if (DSPedidoCab.State=dsBrowse) and (Not(DSPedidoCab.DataSet.IsEmpty)) then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        DatosPedidos.spMarcarPedido.Close;
        DatosPedidos.spMarcarPedido.Params.ParamByName('id').Value := DatosPedidos.CDSPedidoCabID.Value;
        DatosPedidos.spMarcarPedido.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        DatosPedidos.spMarcarPedido.Close;
      except
        DMMain_FD.fdcGestion.Rollback;
      end;
      DatosPedidos.spMarcarPedido.Close;
    end;
end;

procedure TFormPedidos.OcultarGrupos1Click(Sender: TObject);
begin
  cxGridDBTableView2.OptionsView.GroupByBox:=Not(OcultarGrupos1.Checked);
  if (cxGridDBTableView2.OptionsView.GroupByBox) then
    OcultarGrupos1.Caption:='Ver Grupos'
  else
    OcultarGrupos1.Caption:='Ocultar Grupos'

end;

procedure TFormPedidos.OmitirFacturaPordefecto1Click(Sender: TObject);
begin
  OmitirFacturaPordefecto1.Checked:=not(OmitirFacturaPordefecto1.Checked);
end;

procedure TFormPedidos.OrdenarporNrodeOrden1Click(Sender: TObject);
begin
  OrdenarporNrodeOrden1.Checked:=not(OrdenarporNrodeOrden1.Checked);
  case pcOrdenamiento.ActivePageIndex of
    0:if not(OrdenarporNrodeOrden1.Checked) Then
        DatosPedidos.CDSPedidoDet.IndexFieldNames:='MUESTRASUBRUB;MUESTRADETALLE'
      else
        DatosPedidos.CDSPedidoDet.IndexFieldNames:='MUESTRASUBRUB;MUESTRAORDENPLA';
    1:DatosPedidos.CDSPedidoDet.IndexFieldNames:='MUESTRAORDENGRUPO;MUESTRADETALLE';
  end;

end;



procedure TFormPedidos.OrdenClienteFechaAsc1Click(Sender: TObject);
begin
  OrdenClienteFechaAsc1.Checked := Not(OrdenClienteFechaAsc1.Checked);

  if OrdenPorNro1.Checked Then
    OrdenPorNro1.Checked := False;
  if OrdenClienteNroPedido1.Checked Then
    OrdenClienteNroPedido1.Checked := False;

end;

procedure TFormPedidos.OrdenClienteNroPedido1Click(Sender: TObject);
begin
  OrdenClienteNroPedido1.Checked := Not(OrdenClienteNroPedido1.Checked);

  if OrdenPorNro1.Checked Then
    OrdenPorNro1.Checked := False;
  if OrdenClienteFechaAsc1.Checked Then
    OrdenClienteFechaAsc1.Checked := False;

end;

procedure TFormPedidos.OrdenPorNro1Click(Sender: TObject);
begin
  OrdenPorNro1.Checked := Not(OrdenPorNro1.Checked);

  if OrdenClienteNroPedido1.Checked Then
    OrdenClienteNroPedido1.Checked := False;
  if OrdenClienteFechaAsc1.Checked Then
    OrdenClienteFechaAsc1.Checked := False;

end;

procedure TFormPedidos.pcGeneralChange(Sender: TObject);
begin
  pnCantidad.Visible:=False;
  tpListaPlantilla.RollIn(AdvToolPanel1);
  if pcGeneral.ActivePageIndex=4 then
   BuscarRecepcion.Execute;
end;


procedure TFormPedidos.pcOrdenamientoChange(Sender: TObject);
begin
  case pcOrdenamiento.ActivePageIndex of
    0:if not(OrdenarporNrodeOrden1.Checked) Then
        DatosPedidos.CDSPedidoDet.IndexFieldNames:='MUESTRASUBRUB;MUESTRADETALLE'
      else
        DatosPedidos.CDSPedidoDet.IndexFieldNames:='MUESTRASUBRUB;MUESTRAORDENPLA';
    1:DatosPedidos.CDSPedidoDet.IndexFieldNames:='MUESTRAORDENGRUPO;CODIGO';
  end;
  cxGrid1DBTableView1.DataController.Groups.FullExpand;
  cxGridDBTableView2.DataController.Groups.FullExpand;
end;

procedure TFormPedidos.pcOrdenamientoChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  //case pcOrdenamiento.ActivePageIndex of
//    0:CDSPedidoDet.IndexFieldNames:='MUESTRASUBRUB;MUESTRADETALLE';
//    1:CDSPedidoDet.IndexFieldNames:='MUESTRAORDENGRUPO;MUESTRADETALLE';
//  end;
//  cxGrid1DBTableView1.DataController.Groups.FullExpand;
//  cxGridDBTableView2.DataController.Groups.FullExpand;
end;

procedure TFormPedidos.pcOrdenamientoEnter(Sender: TObject);
begin
  if ceCodigo.Text='' then
    begin
      ShowMessage('No Hay Cliente elegido');
      ceCodigo.SetFocus;
    end;
end;

procedure TFormPedidos.pnPieDblClick(Sender: TObject);
begin
  frxReport.DesignReport;
end;

procedure TFormPedidos.PopupMenu3Popup(Sender: TObject);
begin
  if (cxGridDBTableView2.OptionsView.GroupByBox) then
    OcultarGrupos1.Caption:='Ver Grupos'
  else
    OcultarGrupos1.Caption:='Ocultar Grupos'
end;

procedure TFormPedidos.BuscarRecepcionExecute(Sender: TObject);
begin
  CDSRecepcion.Close;
  CDSRecepcion.Params.ParamByName('Desde').AsDateTime := edDesde.Date;
  CDSRecepcion.Params.ParamByName('Hasta').AsDateTime := edHasta.Date;
  CDSRecepcion.Params.ParamByName('Cliente').AsString  := ceCodigo.Text;
  CDSRecepcion.Open;
  cxGrid4DBTableView1.DataController.Groups.FullExpand;
end;

procedure TFormPedidos.RecibirCantidadExecute(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spCantRecibida.Close;
    spCantRecibida.Params.ParamByName('id').Value       :=CDSRecepcionID_DET.Value;
    spCantRecibida.Params.ParamByName('cantidad').Value :=CDSRecepcionCANTIDAD_RECIBIDA.Value;
    spCantRecibida.ExecProc;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
  end;
  spCantRecibida.Close;
end;

procedure TFormPedidos.RecuperarExecute(Sender: TObject);
begin
  DatosPedidos.CDSPedidoCab.Close;
  DatosPedidos.CDSPedidoCab.Params.ParamByName('id').Value:=DatoNew;
  DatosPedidos.CDSPedidoCab.Open;

  DatosPedidos.CDSPedidoDet.Close;
  DatosPedidos.CDSPedidoDet.Params.ParamByName('id').Value:=DatoNew;
  DatosPedidos.CDSPedidoDet.Open;

  DatosPedidos.CDSPrevision.Close;
  DatosPedidos.CDSPrevision.Params.ParamByName('CLIENTE').Value:=DatosPedidos.CDSPedidoCabCLIENTE.Value;// DatoNew;
  DatosPedidos.CDSPrevision.Open;

  DatosPedidos.CDSPrevision.Filtered:=False;
  DatosPedidos.CDSPrevision.Filter:='(CANTIDAD_UNID_ENTR>0) or (CANTIDAD_UNID_PED>0)';
  DatosPedidos.CDSPrevision.Filtered:= True;

  cxGridDBTableView1.DataController.Groups.FullExpand;
  pnPrevision.Visible       := DatosPedidos.CDSPedidoCabPEDIDO_PREVISION.Value='S';
  lbEstadoPrevision.Visible := DatosPedidos.CDSPedidoCabPEDIDO_PREVISION.Value='S';
  if DatosPedidos.CDSPedidoCabESTADO_PREVISION.Value='A' then
    begin
      lbEstadoPrevision.Font.Color  := clBlue;
      lbEstadoPrevision.Caption     := 'ACTIVO';
    end
  else
    if DatosPedidos.CDSPedidoCabESTADO_PREVISION.Value='I' then
      begin
        lbEstadoPrevision.Font.Color := clRed;
        lbEstadoPrevision.Caption    := 'INACTIVO';
      end;

  case pcOrdenamiento.ActivePageIndex of
    0:if not(OrdenarporNrodeOrden1.Checked) Then
        DatosPedidos.CDSPedidoDet.IndexFieldNames:='MUESTRASUBRUB;MUESTRADETALLE'
      else
        DatosPedidos.CDSPedidoDet.IndexFieldNames:='MUESTRASUBRUB;MUESTRAORDENPLA';
    1:DatosPedidos.CDSPedidoDet.IndexFieldNames:='MUESTRAORDENGRUPO;MUESTRADETALLE';
  end;

  cxGrid1DBTableView1.DataController.Groups.FullExpand;
  cxGridDBTableView2.DataController.Groups.FullExpand;
  pnCopia.Visible:=DatosPedidos.CDSPedidoCabID_PEDIDO_ORIGEN.Value>0;

  FormPedidos.Caption:='Pedidos -- '+DatosPedidos.CDSPedidoCabFECHA_HORA.AsString+'//'+DatosPedidos.CDSPedidoCabID.AsString;

end;

procedure TFormPedidos.sbFechasDownClick(Sender: TObject);
begin
  edDesde.Date:= edDesde.Date-1;
  edHasta.Date:= edHasta.Date-1;
  BuscarRecepcion.Execute;
end;

procedure TFormPedidos.sbFechasUpClick(Sender: TObject);
begin
  edDesde.Date:= edDesde.Date+1;
  edHasta.Date:= edHasta.Date+1;
  BuscarRecepcion.Execute;
end;

end.


