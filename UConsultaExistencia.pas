unit UConsultaExistencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,VirtualUI_SDK,
  Grids, Db, ExtCtrls, ActnList, Provider, DBClient, StdCtrls, Buttons,  frxDBSet, frxClass,
  ImgList,IniFiles,Printers, frxExportXLS, ComCtrls, Mask,Math,
  frxExportRTF,Variants, JvExControls, JvGradient,StrUtils,
  frxExportPDF, JvDBLookup, DBGrids, JvExDBGrids, JvDBGrid, DataToAscii,
  DataExport, DataToXLS, JvExStdCtrls, JvEdit, JvDBSearchEdit, JvExMask,
  JvToolEdit, JvMaskEdit, JvDBFindEdit, FMTBcd, SqlExpr, JvLabel, JvDBControls,
  DBCtrls, CheckLst, JvBaseEdits, cxGraphics, 
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.VCLUI.Async,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, JvFormPlacement, JvComponentBase,
  JvAppStorage, JvAppIniStorage, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxPScxCommon, dxPSCore, frxExportBaseDialog, frCoreClasses, System.Actions,
  Vcl.Samples.Spin, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, cxClasses, cxCustomData, cxStyles, cxEdit,
  dxBarBuiltInMenu, cxCalc, cxCurrencyEdit, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  AdvCircularProgress, Vcl.Menus, cxCustomPivotGrid, cxDBPivotGrid,cxExportPivotGridLink;

type
  TFormExistencias = class(TForm)
    DSStock: TDataSource;
    DSDepositos: TDataSource;
    pnBase: TPanel;
    ActionList1: TActionList;
    Buscar: TAction;
    DSRubro: TDataSource;
    DSMarca: TDataSource;
    DSSubRubro: TDataSource;
    StockCero: TAction;
    Imprimir: TAction;
    frStock: TfrxReport;
    frDBStock: TfrxDBDataset;
    Salir: TAction;
    Label4: TLabel;
    rgFormato: TRadioGroup;
    rgUnidades: TRadioGroup;
    Label5: TLabel;
    deFecha: TDateTimePicker;
    TraerConsulta: TAction;
    frxPDFExport1: TfrxPDFExport;
    dbclistaPrecios: TJvDBLookupCombo;
    DSlistaprecios: TDataSource;
    lb1: TLabel;
    DataToXLS1: TDataToXLS;
    DataToAscii1: TDataToAscii;
    ExportarXLS: TAction;
    SaveDialog1: TSaveDialog;
    RxCDepositos: TJvDBLookupCombo;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    sbEstado: TStatusBar;
    pnColumnas: TPanel;
    chklstColumnas: TCheckListBox;
    btExportar: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dbgstock: TJvDBGrid;
    TabSheet2: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    DSStockGral: TDataSource;
    CDSStockGral: TClientDataSet;
    DSPStockGral: TDataSetProvider;
    CDSStockGralCODIGO_STK: TStringField;
    CDSStockGralDETALLE_STK: TStringField;
    CDSStockGralUNIDAD: TStringField;
    CDSStockGralUNIDAD_COMPRA: TStringField;
    CDSStockGralMARCA_STK: TStringField;
    CDSStockGralRUBRO_STK: TStringField;
    CDSStockGralAUXILIAR: TStringField;
    CDSStockGralSUBRUBRO_STK: TStringField;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    PopupMenu1: TPopupMenu;
    CDSStockGralCOD_DEPO: TIntegerField;
    cxDBPivotGrid1Field13: TcxDBPivotGridField;
    CDSStockGralRUB_NOMBRE: TStringField;
    CDSStockGralSUB_NOMBRE: TStringField;
    CDSStockGralSEC: TStringField;
    CDSStockGralUBICA: TStringField;
    CDSStockGralSIGNO_M: TStringField;
    cxDBPivotGrid1Field14: TcxDBPivotGridField;
    cxDBPivotGrid1Field15: TcxDBPivotGridField;
    cxDBPivotGrid1Field16: TcxDBPivotGridField;
    chSinComprometido: TCheckBox;
    CDSStockGralMUESTRADEPO: TStringField;
    pnColumnasVisible: TPanel;
    chkColumnasVisibles: TCheckListBox;
    PopupMenu2: TPopupMenu;
    ColumnasVisibles1: TMenuItem;
    ControlVisualColumnas: TAction;
    ExportarXLSCross: TAction;
    ExportarXLSCross1: TMenuItem;
    CDSStockGralMARCA_DEC: TStringField;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    cxDBPivotGrid1Field17: TcxDBPivotGridField;
    Button1: TSpeedButton;
    btnSalirColumna: TSpeedButton;
    CDSStockGralREEMPLAZO_STK: TStringField;
    CDSStockGralCOSTOTOTAL: TFloatField;
    cxDBPivotGrid1Field18: TcxDBPivotGridField;
    cxDBPivotGrid1Field19: TcxDBPivotGridField;
    seDias: TSpinEdit;
    Label12: TLabel;
    chControlFUAP: TCheckBox;
    cxDBPivotGrid1Field20: TcxDBPivotGridField;
    ExportarCSV: TAction;
    QVista: TFDQuery;
    QVistaID: TIntegerField;
    QVistaVISTA: TBlobField;
    QVistaDESCRIPCION: TStringField;
    DSPVista: TDataSetProvider;
    CDSVista: TClientDataSet;
    CDSVistaID: TIntegerField;
    CDSVistaVISTA: TBlobField;
    CDSVistaDESCRIPCION: TStringField;
    DSVista: TDataSource;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    JvFormStorage1: TJvFormStorage;
    DSStkTrazable: TDataSource;
    DSLotes: TDataSource;
    dxComponentPrinter1Link2: TdxGridReportLink;
    DSPMovLote: TDataSetProvider;
    CDSMovLote: TClientDataSet;
    DSMovLote: TDataSource;
    cxDBPivotGrid1Field21: TcxDBPivotGridField;
    cxDBPivotGrid1Field22: TcxDBPivotGridField;
    CDSStockGralTOTAL_EN_UNID: TFloatField;
    cxDBPivotGrid1Field23: TcxDBPivotGridField;
    N1: TMenuItem;
    MarcarControlado: TAction;
    MarcarStockControlado1: TMenuItem;
    DesmarcarControlado: TAction;
    DesmarcarControlStock1: TMenuItem;
    VerPendientes: TAction;
    N2: TMenuItem;
    VerPendientes1: TMenuItem;
    CDSMovLoteID: TIntegerField;
    CDSMovLoteID_LOTE: TIntegerField;
    CDSMovLoteCODIGO: TStringField;
    CDSMovLoteFECHA: TSQLTimeStampField;
    CDSMovLoteID_COMPROBANTE: TIntegerField;
    CDSMovLoteID_DETALLE_CPBTE: TIntegerField;
    CDSMovLoteTIPO_COMPROBANTE: TStringField;
    CDSMovLoteTIPO: TStringField;
    CDSMovLoteDEPOSITO: TIntegerField;
    CDSMovLoteMUESTRANROCPBTE: TStringField;
    CDSMovLoteMUESTRAOPERACION: TStringField;
    CDSMovLoteMUESTRADEPOSITO: TStringField;
    CDSMovLoteMUESTRANOMBRE: TStringField;
    QMarca: TFDQuery;
    QLotes_: TFDQuery;
    QStkTrazable_: TFDQuery;
    QListaPrecios: TFDQuery;
    QStock: TFDQuery;
    QListaPreciosID_LISTA: TIntegerField;
    QListaPreciosNOMBRE: TStringField;
    QStkTrazable_CODIGO_STK: TStringField;
    QStkTrazable_DETALLE_STK: TStringField;
    QStkTrazable_FIJACION_PRECIO_GRAVADO: TFloatField;
    QStkTrazable_FIJACION_PRECIO_EXENTO: TFloatField;
    QStkTrazable_FIJACION_PRECIO_IVA: TFloatField;
    QStkTrazable_FIJACION_PRECIO_TOTAL: TFloatField;
    QStkTrazable_FIJACION_PRECIO_FINAL: TFloatField;
    QLotes_ID: TIntegerField;
    QLotes_ID_COMPROBANTE: TIntegerField;
    QLotes_CODIGO: TStringField;
    QLotes_ID_DETALLE_CPBTE: TIntegerField;
    QLotes_FECHA_ENTRADA: TSQLTimeStampField;
    QLotes_FECHA_VTO: TSQLTimeStampField;
    QLotes_LOTE: TStringField;
    QLotes_DESPACHO: TStringField;
    QLotes_CANTIDAD: TFloatField;
    QLotes_TIPO_COMPROB: TStringField;
    QLotes_DEPOSITO: TIntegerField;
    QLotes_SALDO: TFloatField;
    QSubRubro: TFDQuery;
    QRubro: TFDQuery;
    QRubroCODIGO_RUBRO: TStringField;
    QRubroDETALLE_RUBRO: TStringField;
    QSubRubroCODIGO_SUBRUBRO: TStringField;
    QSubRubroDETALLE_SUBRUBRO: TStringField;
    QMarcaMARCA_STK: TStringField;
    QMarcaDESCRIPCION_MARCA: TStringField;
    QDepositos: TFDQuery;
    QDepositosID: TIntegerField;
    QDepositosNOMBRE: TStringField;
    QDepositosSUCURSAL: TIntegerField;
    QDepositosCENTRALIZA_STOCK: TStringField;
    QStockGral: TFDQuery;
    CDSStockGralCOSTO_TOTAL_STK: TFloatField;
    CDSStockGralCONTENIDO_COMPRA: TFloatField;
    CDSStockGralFISICO: TFloatField;
    CDSStockGralMINIMO: TFloatField;
    CDSStockGralMEDIO: TFloatField;
    CDSStockGralCOMPROMETIDO: TFloatField;
    CDSStockGralEN_TRANSITO: TFloatField;
    CDSStockGralACOPIO: TFloatField;
    CDSStockGralPRESENTACION: TFloatField;
    chTransito: TCheckBox;
    QMovLote_: TFDQuery;
    CDSMovLoteENTRA: TFloatField;
    CDSMovLoteSALE: TFloatField;
    pnPie: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbStatus: TJvDBStatusLabel;
    Label6: TLabel;
    Label7: TLabel;
    spAplicaCoef: TSpeedButton;
    rxcbMarca: TJvDBLookupCombo;
    rxcbRubro: TJvDBLookupCombo;
    rxcbSubRubro: TJvDBLookupCombo;
    dbfCodigo: TJvDBFindEdit;
    edCoef: TJvCalcEdit;
    chbStockCero: TCheckBox;
    btImprime: TBitBtn;
    btSalir: TBitBtn;
    btBuscar: TBitBtn;
    chbBajodelMinimo: TCheckBox;
    chbMaximo: TCheckBox;
    btExportarXLS: TBitBtn;
    chbMayorCero: TCheckBox;
    btExportarCSV: TBitBtn;
    chbConIVA: TCheckBox;
    chbCodigoAlter: TCheckBox;
    chbWeb: TCheckBox;
    chbOcultarTotal: TCheckBox;
    pnPieGral: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    spVistas: TSpeedButton;
    btBuscarGral: TBitBtn;
    btExportarXLS_gr: TBitBtn;
    btImprimir: TBitBtn;
    chTodosLosDepo: TCheckBox;
    dbcVistas: TJvDBLookupCombo;
    Pag3: TTabSheet;
    cxGridLotes: TcxGrid;
    cxGridLotesDBTableView1: TcxGridDBTableView;
    cxGridLotesDBTableView1CODIGO_STK: TcxGridDBColumn;
    cxGridLotesDBTableView1DETALLE_STK: TcxGridDBColumn;
    cxGridLotesTableView1: TcxGridTableView;
    cxGridLotesDBTableView2: TcxGridDBTableView;
    cxGridLotesDBTableView2LOTE: TcxGridDBColumn;
    cxGridLotesDBTableView2FECHA_ENTRADA: TcxGridDBColumn;
    cxGridLotesDBTableView2FECHA_VTO: TcxGridDBColumn;
    cxGridLotesDBTableView2CODIGO: TcxGridDBColumn;
    cxGridLotesDBTableView2DESPACHO: TcxGridDBColumn;
    cxGridLotesDBTableView2CANTIDAD: TcxGridDBColumn;
    cxGridLotesDBTableView2SALDO: TcxGridDBColumn;
    cxGridLotesDBTableView3: TcxGridDBTableView;
    cxGridLotesDBTableView3ID: TcxGridDBColumn;
    cxGridLotesDBTableView3ID_LOTE: TcxGridDBColumn;
    cxGridLotesDBTableView3CODIGO: TcxGridDBColumn;
    cxGridLotesDBTableView3FECHA: TcxGridDBColumn;
    cxGridLotesDBTableView3ID_COMPROBANTE: TcxGridDBColumn;
    cxGridLotesDBTableView3ID_DETALLE_CPBTE: TcxGridDBColumn;
    cxGridLotesDBTableView3TIPO_COMPROBANTE: TcxGridDBColumn;
    cxGridLotesDBTableView3TIPO: TcxGridDBColumn;
    cxGridLotesDBTableView3MUESTRANOMBRE: TcxGridDBColumn;
    cxGridLotesDBTableView3ENTRA: TcxGridDBColumn;
    cxGridLotesDBTableView3SALE: TcxGridDBColumn;
    cxGridLotesDBTableView3MUESTRANROCPBTE: TcxGridDBColumn;
    cxGridLotesDBTableView3MUESTRAOPERACION: TcxGridDBColumn;
    cxGridLotesDBTableView3MUESTRADEPOSITO: TcxGridDBColumn;
    cxGridLotesLevel1: TcxGridLevel;
    cxGridLotesLevel2: TcxGridLevel;
    cxGridLotesLevel3: TcxGridLevel;
    pnPieArticulos: TPanel;
    btImprimirTraza: TBitBtn;
    btExportarXLS_2: TBitBtn;
    btBuscarTrazables: TBitBtn;
    dbfDetalle_2: TJvDBFindEdit;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockUNIDAD: TStringField;
    CDSStockMARCA_STK: TStringField;
    CDSStockRUBRO_STK: TStringField;
    CDSStockSUBRUBRO_STK: TStringField;
    CDSStockAUXILIAR: TStringField;
    CDSStockCODIGOBARRA: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockPRESENT_UNID: TStringField;
    CDSStockDESCRIP_MARCA: TStringField;
    CDSStockID_MONEDA: TIntegerField;
    CDSStockSIGNO: TStringField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockPUBLICAR_WEB: TStringField;
    CDSStockVTAS_MES_ANTERIOR: TFloatField;
    CDSStockCOSTO_TOTAL_STK: TFloatField;
    CDSStockCONTENIDO_COMPRA: TFloatField;
    CDSStockFISICO: TFloatField;
    CDSStockMINIMO: TFloatField;
    CDSStockMEDIO: TFloatField;
    CDSStockCOMPROMETIDO: TFloatField;
    CDSStockEN_TRANSITO: TFloatField;
    CDSStockPRESENT_CANT: TFloatField;
    CDSStockCOTIZACION: TFloatField;
    CDSStockRECARGO: TFloatField;
    CDSStockACOPIO: TFloatField;
    CDSStockCOSTO_TOTAL_FINAL: TFloatField;
    CDSStockDETALLE_RUBRO: TStringField;
    CDSStockDETALLE_SUBRUBRO: TStringField;
    CDSStockCOSTO_MONEDALEGAL: TFloatField;
    CDSStockFISICO_PRESENTACION: TFloatField;
    CDSStockTOTAL_UNIDADES: TFloatField;
    chbFiltra: TCheckBox;
    CDSStockULTIMO_COSTO_COMPRA: TFloatField;
    CDSStockFUAP: TSQLTimeStampField;
    CDSStockFULTAJUSTE: TSQLTimeStampField;
    CDSStockGralFUAP: TSQLTimeStampField;
    JvDBStatusLabel1: TJvDBStatusLabel;
    N3: TMenuItem;
    LimpiarFiltros: TMenuItem;
    CDSStockCostoTotalNeto: TAggregateField;
    CDSStockCostoTotalFinal: TAggregateField;
    dbeSumaTotal: TDBEdit;
    dbeSumaNeto: TDBEdit;
    Label13: TLabel;
    Label11: TLabel;
    CDSStockRECONTADO: TFloatField;
    CDSStockDIFERENCIA_AJUSTE: TFloatField;
    HacerAjuste: TAction;
    N4: TMenuItem;
    HacerAjuste1: TMenuItem;
    btHacerAjustes: TBitBtn;
    QLimpiarTemporal: TFDQuery;
    btBorrarPikeado: TBitBtn;
    spCorreo: TSpeedButton;
    chRecontados: TCheckBox;
    FDGUIxAsyncExecuteDialog1: TFDGUIxAsyncExecuteDialog;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    CDSStkTrazable: TClientDataSet;
    CDSLotes: TClientDataSet;
    DSPStkTrazable: TDataSetProvider;
    DSPLotes: TDataSetProvider;
    CDSStkTrazableCODIGO_STK: TStringField;
    CDSStkTrazableDETALLE_STK: TStringField;
    CDSStkTrazableFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSStkTrazableFIJACION_PRECIO_EXENTO: TFloatField;
    CDSStkTrazableFIJACION_PRECIO_IVA: TFloatField;
    CDSStkTrazableFIJACION_PRECIO_TOTAL: TFloatField;
    CDSStkTrazableFIJACION_PRECIO_FINAL: TFloatField;
    CDSLotesID: TIntegerField;
    CDSLotesID_COMPROBANTE: TIntegerField;
    CDSLotesCODIGO: TStringField;
    CDSLotesID_DETALLE_CPBTE: TIntegerField;
    CDSLotesFECHA_ENTRADA: TSQLTimeStampField;
    CDSLotesFECHA_VTO: TSQLTimeStampField;
    CDSLotesLOTE: TStringField;
    CDSLotesDESPACHO: TStringField;
    CDSLotesCANTIDAD: TFloatField;
    CDSLotesTIPO_COMPROB: TStringField;
    CDSLotesDEPOSITO: TIntegerField;
    CDSLotesSALDO: TFloatField;
    chActivos: TCheckBox;
    spFiltroCpbte: TSpeedButton;
    AdvCircularProgress: TAdvCircularProgress;
    CDSStockFECHA_ULTIMO_COSTO: TSQLTimeStampField;
    CDSStockIMPORTE_ULTIMO_COSTO: TFloatField;
    DBEdit2: TDBEdit;
    CDSStockCOSTO_UNI_TOTAL_OLD: TFloatField;
    CDSStockCostoTotalOld: TAggregateField;
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure rxcbMarcaChange(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure pnBaseDblClick(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxCDepositosClick(Sender: TObject);
    procedure chbBajodelMinimoClick(Sender: TObject);
    procedure chbMaximoClick(Sender: TObject);
    procedure rgUnidadesClick(Sender: TObject);
    procedure TraerConsultaExecute(Sender: TObject);
    procedure rxcbRubroChange(Sender: TObject);
    procedure rgFormatoClick(Sender: TObject);
    procedure dbclistaPreciosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgstockTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure chbModoClick(Sender: TObject);
    procedure dbfDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgstockDblClick(Sender: TObject);
    procedure chklstColumnasClick(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
    procedure btnSalirColumnaClick(Sender: TObject);
    procedure spAplicaCoefClick(Sender: TObject);
    procedure btBuscarGralClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure CDSStock_OLDFISICOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure chSinComprometidoClick(Sender: TObject);
    procedure chbStockCeroClick(Sender: TObject);
    procedure ColumnasVisibles1Click(Sender: TObject);
    procedure ControlVisualColumnasExecute(Sender: TObject);
    procedure chkColumnasVisiblesClick(Sender: TObject);
    procedure ExportarXLSCrossExecute(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure CDSStock_OLDCalcFields(DataSet: TDataSet);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CDSStockGralCalcFields(DataSet: TDataSet);
    procedure dbgstockDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure seDiasChange(Sender: TObject);
    procedure chControlFUAPClick(Sender: TObject);
    procedure ExportarCSVExecute(Sender: TObject);
    procedure spVistasClick(Sender: TObject);
    procedure dbcVistasChange(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure btExportarXLS_2Click(Sender: TObject);
    procedure btBuscarTrazablesClick(Sender: TObject);
    procedure CDSStkTrazableAfterScroll(DataSet: TDataSet);
    procedure cxGridLotesDBTableView1DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure MarcarControladoExecute(Sender: TObject);
    procedure DesmarcarControladoExecute(Sender: TObject);
    procedure CDSStockGralCODIGO_STKGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure chbCodigoAlterClick(Sender: TObject);
    procedure CDSStock_OLDCODIGO_STKGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSMovLoteTIPOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure VerPendientesExecute(Sender: TObject);
    procedure chbWebClick(Sender: TObject);
    procedure QStkTrazable_AfterScroll(DataSet: TDataSet);
    procedure chTransitoClick(Sender: TObject);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rxcbSubRubroChange(Sender: TObject);
    procedure CDSStockCalcFields(DataSet: TDataSet);
    procedure CDSStockCODIGO_STKGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSStockFISICOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure dbfDetalle_2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LimpiarFiltrosClick(Sender: TObject);
    procedure HacerAjusteExecute(Sender: TObject);
    procedure btBorrarPikeadoClick(Sender: TObject);
    procedure spCorreoClick(Sender: TObject);
    procedure chRecontadosClick(Sender: TObject);
    procedure chActivosClick(Sender: TObject);
    procedure spFiltroCpbteClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  
  private
    procedure ThreadFin(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
    PrListados,PrDefault,Deposito:Integer;
    PrNomListados  :String;
    ColumnasVisble :String;
    ColumnasExpXLS :String;

   // Variables de Correo ******
    DirCorreo,NombreCuenta,CopiaCorreo,
    AsuntoCorreo,NombreServidor,
    PrListadoDefecto,PrNomDefault,
    Clave,Autotenticacion,Remitente:String;
    Puerto:Integer;
    //***************************
    ThExistencia: TThread;
  end;
  TPivotGridAccess = class(TcxDBPivotGrid);
  TPivotGridControllerAccess = class (TcxPivotGridController);
var
  FormExistencias: TFormExistencias;
  FDragDrop : Boolean;
  AMoved    : Boolean;
implementation

uses UAvisoProceso, UStock_2, UVistasGrillas, UStockPendiente,UDMain_FD,
  UAjusteMercaderia, UCorreo, UControlDepositosStock;
{$R *.DFM}
//{$R-}

procedure TFormExistencias.btExportarXLS_2Click(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSStkTrazable.IsEmpty) THEN
    BEGIN
      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
              SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

            if VirtualUI.Active then
              cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid1)
            else
              cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid1);

           Sleep(100); // Le pongo un retardo por si no termino de gravar el archivo
           if VirtualUI.Active then
                VirtualUI.DownloadFile(SaveDialog1.FileName);

          end;
    end
  else
    ShowMessage('No hay datos para exportar');

end;



procedure TFormExistencias.btBuscarTrazablesClick(Sender: TObject);
var i:Integer;
begin
  CDSStkTrazable.Close;
  CDSStkTrazable.Open;
  CDSStkTrazable.First;

  CDSLotes.Close;
  CDSLotes.Params.ParamByName('codigo').Value :='********';//CDSStkTrazableCODIGO_STK.AsString;
  CDSLotes.Open;

  CDSMovLote.Close;
  CDSMovLote.Params.ParamByName('codigo').Value:='********';//CDSStkTrazableCODIGO_STK.AsString;
  CDSMovLote.Open;

 // CDSLotes.Close;
//  CDSLotes.Open;
//  CDSMovLote.Close;
//  CDSMovLote.Open;

 // cxGridLotesDBTableView3.ViewData.Expand(True);
 // cxGridLotesDBTableView2.ViewData.Expand(True);
   //for I := 0 to cxGridLotesDBTableView1.ViewData.RecordCount - 1 do

   cxGridLotesDBTableView1.ViewData.Expand(true);

end;

procedure TFormExistencias.btBorrarPikeadoClick(Sender: TObject);
begin
  if MessageDlg('Borrar Stock Pickeado ?',mtConfirmation,mbYesNo,0,mbYes)=mrYes then
    if DMMain_FD.UsuarioAdministrador then
      begin
        QLimpiarTemporal.Close;
        QLimpiarTemporal.ParamByName('deposito').Value:=RxCDepositos.KeyValue;
        QLimpiarTemporal.ExecSQL;
        QLimpiarTemporal.Close;
        Buscar.Execute
      end;
end;

procedure TFormExistencias.btExportarClick(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  if Not(CDSStock.IsEmpty) then
    begin
      SaveDialog1.DefaultExt:='xls';
      SaveDialog1.FileName  :='Existencias';

      SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
                SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

            if VirtualUI.Active then
              DataToXLS1.SaveToFile(SaveDialog1.FileName)
            else
              DataToXLS1.SaveToFile(SaveDialog1.FileName);
            Sleep(100);
            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog1.FileName);
          end;
    end
  else
    ShowMessage('No hay datos para exportar');
  pnColumnas.Visible:=False;
end;

procedure TFormExistencias.btBuscarGralClick(Sender: TObject);
var i:integer;
begin
  Screen.Cursor:=crHourGlass;
  CDSStockGral.Close;
  CDSStockGral.Params.ParamByName('UNIDAD').Value  :='V';
  if chTodosLosDepo.Checked then
    CDSStockGral.Params.ParamByName('DEPOSITO').Value := -1
  else
    CDSStockGral.Params.ParamByName('deposito').Value := RxCDepositos.KeyValue;
  CDSStockGral.Open;
  Screen.Cursor:=crDefault;

  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
end;

procedure TFormExistencias.BitBtn6Click(Sender: TObject);
begin
  SaveDialog1.FileName:='Existencias';
  SaveDialog1.DefaultExt:='XLS';
  if SaveDialog1.Execute Then
    cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid1)
end;

procedure TFormExistencias.btImprimirClick(Sender: TObject);
begin
  dxComponentPrinter1Link1.Preview(True);
end;

procedure TFormExistencias.BitBtn9Click(Sender: TObject);
begin
  dxComponentPrinter1Link2.Preview(True);
end;

procedure TFormExistencias.btnSalirColumnaClick(Sender: TObject);
begin
  pnColumnas.Visible:=False;
end;

procedure TFormExistencias.ThreadFin(Sender: TObject);
begin
//
  CDSStockCOSTO_TOTAL_STK.Visible:= DMMain_FD.VerCostoFichaStock;
  CDSStockCOSTO_TOTAL_STK.Visible:= DMMain_FD.VerCostoFichaStock;
//  CDSStock.OnCalcFields          := CDSStockCalcFields;
//  CDSStock.Edit;
//  CDSStock.Post;
  dbgstock.SetFocus;
  Screen.Cursor      := crDefault;
  sbEstado.SimpleText:= 'Finalizado....';
  Application.ProcessMessages;
  dbgStock.Width     :=dbgStock.Width-1;
  dbgStock.Width     :=dbgStock.Width+1;

  AdvCircularProgress.Visible:=False;

  //dbgstock.Refresh;
  Buscar.Enabled :=True;
end;

procedure TFormExistencias.BuscarExecute(Sender: TObject);
begin
  Buscar.Enabled      := False;
  sbEstado.SimpleText := 'Generando conteo y estado del stock....';
  Application.ProcessMessages;
  AdvCircularProgress.Visible:=True;
  Application.ProcessMessages;

  ThExistencia    := TThread.CreateAnonymousThread(
    procedure
      begin
        TraerConsulta.Execute;
      end);
  ThExistencia.OnTerminate:= ThreadFin;
  ThExistencia.Start;


end;

procedure TFormExistencias.Button1Click(Sender: TObject);
begin
  pnColumnasVisible.Visible:=False;
end;

procedure TFormExistencias.CDSMovLoteTIPOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if CDSMovLoteTIPO.Value='I' then
    Text:='Ingreso'
  else
  if CDSMovLoteTIPO.Value='E' then
    Text:='Egreso'

end;

procedure TFormExistencias.CDSStkTrazableAfterScroll(DataSet: TDataSet);
begin
 // CDSLotes.Close;
//  CDSLotes.Params.ParamByName('codigo').Value :=CDSStkTrazableCODIGO_STK.AsString;
//  CDSLotes.Open;
//
//  CDSMovLote.Close;
//  CDSMovLote.Params.ParamByName('codigo').Value:=CDSStkTrazableCODIGO_STK.AsString;
//  CDSMovLote.Open;

end;

procedure TFormExistencias.CDSStock_OLDCalcFields(DataSet: TDataSet);
begin
//  CDSStockCOSTO_MONEDALEGAL.AsFloat   := CDSStockCOSTO_TOTAL_STK.ASFloat * CDSStockCOTIZACION.AsFloat;
//  CDSStockFISICO_PRESENTACION.AsFloat := CDSStockFISICO.AsFloat * CDSStockPRESENT_CANT.AsFloat;
//
//  if CDSStockPRESENT_CANT.AsFloat>0 then
//    CDSStockTOTA_UNIDADES.AsFloat:= RoundTo( ( CDSStockFISICO.AsFloat/CDSStockPRESENT_CANT.AsFloat),-1)
//  else
//    CDSStockTOTA_UNIDADES.AsFloat:= CDSStockFISICO.AsFloat;
end;

procedure TFormExistencias.CDSStock_OLDCODIGO_STKGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
//  Text:=CDSStockCODIGO_STK.Value;
//  if chbCodigoAlter.Checked then
//    Text:=CDSStockREEMPLAZO_STK.Value;
end;

procedure TFormExistencias.CDSStock_OLDFISICOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
//  Text:=FormatFloat(',0.00',CDSStockFISICO.AsFloat);
//
//  if (chSinComprometido.Checked) AND (chTransito.Checked) then
//    Text:=FormatFloat(',0.00',CDSStockFISICO.AsFloat - CDSStockCOMPROMETIDO.ASFloat - CDSStockEN_TRANSITO.AsFloat)
//  else
//    if (chSinComprometido.Checked) AND Not(chTransito.Checked) then
//      Text:=FormatFloat(',0.00',CDSStockFISICO.AsFloat - CDSStockCOMPROMETIDO.ASFloat)
//    else
//     if Not(chSinComprometido.Checked) AND (chTransito.Checked) then
//        Text:=FormatFloat(',0.00',CDSStockFISICO.AsFloat - CDSStockEN_TRANSITO.AsFloat)

end;

procedure TFormExistencias.CDSStockCalcFields(DataSet: TDataSet);
begin
  CDSStockCOSTO_MONEDALEGAL.AsFloat   := CDSStockCOSTO_TOTAL_STK.ASFloat * CDSStockCOTIZACION.AsFloat;
  CDSStockFISICO_PRESENTACION.AsFloat := CDSStockFISICO.AsFloat * CDSStockPRESENT_CANT.AsFloat;

  if CDSStockPRESENT_CANT.AsFloat>0 then
    CDSStockTOTAL_UNIDADES.AsFloat:= RoundTo(( CDSStockFISICO.AsFloat/CDSStockPRESENT_CANT.AsFloat),-1)
  else
    CDSStockTOTAL_UNIDADES.AsFloat:= CDSStockFISICO.AsFloat;

  if CDSStockRECONTADO.Value>0 then
    CDSStockDIFERENCIA_AJUSTE.Value := CDSStockRECONTADO.Value - CDSStockFISICO.Value + CDSStockGralCOMPROMETIDO.Value + CDSStockEN_TRANSITO.Value
  else
    CDSStockDIFERENCIA_AJUSTE.Value := 0;

  if CDSStockIMPORTE_ULTIMO_COSTO.AsString<>'' Then
    CDSStockCOSTO_UNI_TOTAL_OLD.Value :=CDSStockIMPORTE_ULTIMO_COSTO.Value * CDSStockFISICO.Value;

end;

procedure TFormExistencias.CDSStockCODIGO_STKGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:=CDSStockCODIGO_STK.Value;
  if chbCodigoAlter.Checked then
    Text:=CDSStockREEMPLAZO_STK.Value;
end;

procedure TFormExistencias.CDSStockFISICOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:=FormatFloat(',0.000;-,0.000;-',CDSStockFISICO.AsFloat);

  if (chSinComprometido.Checked) AND (chTransito.Checked) then
    Text:=FormatFloat(',0.000;-,0.000;-',CDSStockFISICO.AsFloat - CDSStockCOMPROMETIDO.ASFloat - CDSStockEN_TRANSITO.AsFloat)
  else
    if (chSinComprometido.Checked) AND Not(chTransito.Checked) then
      Text:=FormatFloat(',0.000;-,0.000;-',CDSStockFISICO.AsFloat - CDSStockCOMPROMETIDO.ASFloat)
    else
     if Not(chSinComprometido.Checked) AND (chTransito.Checked) then
        Text:=FormatFloat(',0.000;-,0.000;-',CDSStockFISICO.AsFloat - CDSStockEN_TRANSITO.AsFloat)
end;

procedure TFormExistencias.CDSStockGralCalcFields(DataSet: TDataSet);
begin
  CDSStockGralCOSTOTOTAL.Value:=CDSStockGralCOSTO_TOTAL_STK.ASFloat*CDSStockGralFISICO.AsFloat;

  if CDSStockGralPRESENTACION.AsFloat>0 then
    CDSStockGralTOTAL_EN_UNID.AsFloat:= RoundTo( ( CDSStockGralFISICO.AsFloat/CDSStockGralPRESENTACION.AsFloat),-1)
  else
    CDSStockGralTOTAL_EN_UNID.AsFloat:= CDSStockGralTOTAL_EN_UNID.AsFloat;
end;

procedure TFormExistencias.CDSStockGralCODIGO_STKGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
//  Text:=CDSStockCODIGO_STK.Value;
//  if chbCodigoAlter.Checked then
//    Text:=CDSStockREEMPLAZO_STK.Value;

end;

procedure TFormExistencias.FormCreate(Sender: TObject);
VAR ArchivoIni,GeneralIni:TIniFile;
PrNomListados,PrListadoDefecto,PrNomDefault:String;
i:integer;
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  AutoSize   := False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  PrNomListados   := ArchivoIni.ReadString('Impresoras', 'Listados', '');
  PrListadoDefecto:= ArchivoIni.ReadString('Impresoras', 'ListadoDefecto','N');
  Deposito        := ArchivoIni.ReadInteger('Deposito', 'Deposito', 1);

  //*************************************************************
  ColumnasVisble         := ArchivoIni.ReadString('columnas', 'existencia', '111111111111111111111111111111111');
  ColumnasExpXLS         := ArchivoIni.ReadString('columnas', 'xls',        '111111111111111111111111111111111');
  chbCodigoAlter.Checked := ArchivoIni.ReadBool('codigo', 'codalter', False);
  rgFormato.ItemIndex    := ArchivoIni.ReadInteger('formato', 'opcion',0);
  chbFiltra.Checked      := ArchivoIni.ReadBool('filtro', 'filtrar', False);
 // chbModo.Checked        := ArchivoIni.ReadBool('filtro', 'comienza',False);

  ArchivoIni.Free;
  //  GeneralIni.Free;
  // Tomo la Impresora por defecto.
  prNomDefault:=Printer.Printers.Strings[Printer.PrinterIndex];
  // si en algun de los casos uso la impresora por defecto
  // igualo el nro de impresora a la imp. que le corresponde
  if (PrListadoDefecto='S') or (PrListadoDefecto='s') Then
    PrNomListados:=PrNomDefault;

  PrListados:=Printer.Printers.IndexOf(PrNomListados);
  PrDefault :=Printer.Printers.IndexOf(PrNomDefault);

  // para controla el largo de la variable ... nada mas
  if Length(ColumnasVisble)<33 then
    ColumnasVisble:=LeftStr(ColumnasVisble+'111111111',33);

  if Length(ColumnasExpXLS)<33 then
    ColumnasExpXLS:=LeftStr(ColumnasExpXLS+'111111111',33);

  QDepositos.Close;
  if DMMain_FD.NoSi(chActivos.Checked)='N' then
    QDepositos.ParamByName('ACTIVO').AsString:= '*'
  else
    QDepositos.ParamByName('ACTIVO').AsString:= 'S';
  QDepositos.Open;
  QMarca.Open;
  QRubro.Open;
  QSubRubro.Open;
  if DMMain_FD.GetControlaLista then
    begin
      DSlistaprecios.DataSet:=DMMain_FD.CDSListaPreciosUsuarios;
      DMMain_FD.CDSListaPreciosUsuarios.Close;
      DMMain_FD.CDSListaPreciosUsuarios.Params.ParamByName('usuario').Value:=DMMain_FD.UsuarioActivoId;
      DMMain_FD.CDSListaPreciosUsuarios.Open;
    end
  else
    begin
      DSlistaprecios.DataSet := QListaPrecios;
      QListaPrecios.Close;
      QListaPrecios.Open;
     end;

  for i:= 0 to dbgstock.Columns.Count-1 do
    begin
      //NombreCampo.Add(QClientes.Fields[i].FieldName);
      chkColumnasVisibles.Items.Add(dbgstock.Columns[i].Title.Caption);
      chkColumnasVisibles.Checked[i]:=ColumnasVisble[i+1]='1';//   True;
    end;

  for i:= 0 to dbgstock.Columns.Count-1 do
    begin
      //NombreCampo.Add(QClientes.Fields[i].FieldName);
      chklstColumnas.Items.Add(dbgstock.Columns[i].Title.Caption);
      chklstColumnas.Checked[i] :=ColumnasExpXLS[i+1]='1';//   True;
      DataToXLS1.Columns[i].Save:=ColumnasExpXLS[i+1]='1';
    end;

  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='EXISTEARTICULOS';
  CDSVista.Open;

  ControlVisualColumnas.Execute;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);

  PrNomListados       := ArchivoIni.ReadString('Impresoras', 'Listados', '');
  PrListadoDefecto    := ArchivoIni.ReadString('Impresoras', 'ListadoDefecto','N');
  DirCorreo           := ArchivoIni.ReadString('Correo', 'DirCorreo', '');
  NombreCuenta        := ArchivoIni.ReadString('Correo', 'NombreCuenat', '');
  AsuntoCorreo        := ArchivoIni.ReadString('Correo', 'AsuntoCorreo', '');
  NombreServidor      := ArchivoIni.ReadString('Correo', 'NombreServido', '');
  Clave               := ArchivoIni.ReadString('Correo', 'Clave', '');
  Autotenticacion     := ArchivoIni.ReadString('Correo', 'Autenticacion', 'S');
  Remitente           := ArchivoIni.ReadString('Correo', 'Remitente', '');
  Puerto              := ArchivoIni.ReadInteger('Correo', 'puerto', 25);


  ArchivoIni.Free;



  sbEstado.SimpleText          := '';
  pnColumnas.Visible           := False;
  PageControl1.ActivePageIndex := 0;
end;

procedure TFormExistencias.FormClose(Sender: TObject; var Action: TCloseAction);
var ArchivoIni:TIniFile;
 i:byte;
begin
  //if ThExistencia.CheckTerminated then
  //  ThExistencia.Terminate;
  ColumnasVisble:='';
  for i:=0 to chkColumnasVisibles.Items.Count-1 do
    begin
      if chkColumnasVisibles.Checked[i] Then
        ColumnasVisble:=ColumnasVisble+'1'
      else
        ColumnasVisble:=ColumnasVisble+'0'
    end;

  ColumnasExpXLS:='';
  for i:=0 to chklstColumnas.Items.Count-1 do
    begin
      if chklstColumnas.Checked[i] Then
        ColumnasExpXLS:=ColumnasExpXLS+'1'
      else
        ColumnasExpXLS:=ColumnasExpXLS+'0'
    end;

  //*************************************************************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  ArchivoIni.WriteString('columnas', 'existencia', ColumnasVisble);
  ArchivoIni.WriteString('columnas', 'xls', ColumnasExpXLS);
  ArchivoIni.WriteBool('codigo', 'codalter', chbCodigoAlter.Checked);
  ArchivoIni.WriteInteger('formato', 'opcion', rgFormato.ItemIndex);
  ArchivoIni.WriteBool('filtro', 'filtrar', chbFiltra.Checked);
 // ArchivoIni.WriteBool('filtro', 'comienza', chbModo.Checked);



  //*************************************************************

  CDSStock.Close;
  QDepositos.Close;

  //*************************************************************
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaExsitencia');
  //*************************************************************


  Action:=caFree;
end;

procedure TFormExistencias.FormDestroy(Sender: TObject);
begin
  FormExistencias:=nil;
end;


procedure TFormExistencias.FormResize(Sender: TObject);
begin
  if FormExistencias<>nil then
    if FormExistencias.Width<1041 then
      FormExistencias.Width:=1041;


end;

procedure TFormExistencias.rxcbMarcaChange(Sender: TObject);
begin

  Buscar.Execute;
//  QSubRubro.Close;
//  QSubRubro.ParamByName('rubro').Value:=QRubroCODIGO_RUBRO.Value;
//  QSubRubro.Open;
//  Filtrar.Execute;
END;

procedure TFormExistencias.rxcbRubroChange(Sender: TObject);
begin
  QSubRubro.Close;
  QSubRubro.Params.ParamByName('rubro').Value:=QRubroCODIGO_RUBRO.Value;
  QSubRubro.Open;
  rxcbSubRubro.KeyValue:='';
  Buscar.Execute;
//  Filtrar.Execute;
end;

procedure TFormExistencias.rxcbSubRubroChange(Sender: TObject);
begin
  Buscar.Execute;
end;

procedure TFormExistencias.ImprimirExecute(Sender: TObject);
BEGIN
  //CDSStock.DisableControls;

  frStock.PrintOptions.Printer:=PrNomListados;
  frStock.SelectPrinter;

  if rgFormato.ItemIndex=1 Then
    begin
      sbEstado.SimpleText:='Ordenando Informe por RUBRO_STK;SUBRUBRO_STK;DETALLE_STK';
      CDSStock.IndexFieldNames:='RUBRO_STK;SUBRUBRO_STK;DETALLE_STK';

      frStock.LoadFromFile(DMMain_FD.PathReportesLst+'\LstExistenciaStockPuntoPedido.fr3');
      sbEstado.SimpleText:='';
    end
  else
    frStock.LoadFromFile(DMMain_FD.PathReportesLst+'\LstExistenciaStock.fr3');

  frStock.PrintOptions.Printer:=PrNomListados;
  frStock.SelectPrinter;


   frStock.Variables['Deposito']:=''''+RxCDepositos.Text+'''';
 // if rgFormato.ItemIndex in [2,0] Then

  frStock.Variables['Valorizado']:= ((rgFormato.ItemIndex=2) or (rgFormato.ItemIndex=3));
  frStock.Variables['TipoValor'] := rgFormato.ItemIndex;
  if chbConIVA.Checked then
    frStock.Variables['ConIva'] := '''S'''
  else
    frStock.Variables['ConIva'] := '''N''';

   if chbOcultarTotal.Checked then
    frStock.Variables['ConTotal'] := '''S'''
  else
    frStock.Variables['ConTotal'] := '''N''';

  frStock.Variables['Lista']     :=''''+dbclistaPrecios.Text+'''';
  frStock.Variables['FechaStock']:=''''+FormatDateTime('dd/mm/yyyy',deFecha.Date)+'''';
  frStock.ShowReport;
  CDSStock.IndexFieldNames:='';
  //CDSStock.EnableControls;
end;



procedure TFormExistencias.Label9Click(Sender: TObject);
begin
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormExistencias.LimpiarFiltrosClick(Sender: TObject);
var
 APivot: TcxDBPivotGrid;
 I:Integer;
begin    //Limpiar Filtros cxPivotGrid
  // if not (PopupMenu.PopupComponent is TcxDBPivotGrid) then Abort;
   // Limpiar Filtros de cxDBPivot
   APivot:=cxDBPivotGrid1;

   APivot.DataController.BeginUpdate;
   for I := 0 to APivot.FieldCount - 1 do
     APivot.Fields[I].Filter.Clear;
   APivot.DataController.EndUpdate;

   for i:=0 to cxDBPivotGrid1.FieldCount-1 do
     cxDBPivotGrid1.Fields[i].ExpandAll;
end;

procedure TFormExistencias.MarcarControladoExecute(Sender: TObject);
begin
  DMMain_FD.ConfirmaStock(RxCDepositos.KeyValue ,CDSStockCODIGO_STK.ASString,1);
  CDSStock.Edit;
  CDSStockFULTAJUSTE.AsDateTime:=Date;
  CDSStock.Post;

  dbgstock.Refresh;
end;

procedure TFormExistencias.dbgstockDblClick(Sender: TObject);
begin
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(self);
  FormStock_2.DatoNew:=CDSStockCODIGO_STK.Value;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
  FormStock_2.BringToFront;
end;

procedure TFormExistencias.dbgstockDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State Then
    begin
      dbgstock.Canvas.Font.Color:=clWhite;
      dbgstock.Canvas.Brush.Color:=clNavy;
    end
  else
    begin
      if chControlFUAP.Checked then
        begin
          if ((Date-CDSStockFUAP.AsDateTime)>=seDias.Value) Then
            dbgstock.canvas.Font.color := clRed;
        end;

      if (dbgStock.DataSource.DataSet.FieldByName('FULTAJUSTE').AsDateTime)>Date-10 then
        begin
          dbgStock.Canvas.Font.Color:=clBlue;
          dbgStock.Canvas.Font.Style:=[fsBold];
        end;
    end;


  if dbgstock.DataSource.DataSet.FieldByName('RECONTADO').Value>0 then
    begin
      if Trunc(dbgstock.DataSource.DataSet.FieldByName('FISICO').Value*100)<>Trunc(dbgstock.DataSource.DataSet.FieldByName('RECONTADO').Value*100) then
        dbgstock.Canvas.Font.Style:=[TFontStyle.fsBold]
      else
        dbgstock.Canvas.Font.Style:=[];
     end;



  dbgstock.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormExistencias.dbgstockTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:string;
begin
  sbEstado.SimplePanel:=True;
  sbEstado.SimpleText:=Field.DisplayName;// AColumn.Caption;
  // ORDENAR EN FIREDAC
  // sincroniza cxGrid con Datos al ordenar
 // if QStock.IndexFieldNames = Field.FieldName then
//    QStock.IndexFieldNames := Field.FieldName + ':DN'
//  Else
 //   QStock.IndexFieldNames := Field.FieldName;

 try
    Campo := Field.FieldName;
    with dbgstock.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
    except // Para que no salte una excepción si la columna es un campo calculado.
      ShowMessage('No se puede por esta columna');
    end;

end;

procedure TFormExistencias.DesmarcarControladoExecute(Sender: TObject);
begin
  DMMain_FD.ConfirmaStock(RxCDepositos.KeyValue ,CDSStockCODIGO_STK.ASString,0);
  CDSStock.Edit;
  CDSStockFULTAJUSTE.Clear;
  CDSStock.Post;
  dbgstock.Refresh;

end;

procedure TFormExistencias.ExportarCSVExecute(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  if Not(CDSStock.IsEmpty) then
    begin
      SaveDialog1.DefaultExt:='CSV';
      SaveDialog1.FileName  :='StockCSV';

      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.csv', SaveDialog1.FileName )) Then
                SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

            if VirtualUI.Active then
              DataToXLS1.SaveToFile(SaveDialog1.FileName)
            else
              DataToXLS1.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog1.FileName);
          end;
    end
  else
    ShowMessage('No hay datos para exportar');
end;

procedure TFormExistencias.ExportarXLSCrossExecute(Sender: TObject);
begin
  IF NOT (CDSStockGral.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='StockGral';
      SaveDialog1.DefaultExt:='XLS';
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      if SaveDialog1.Execute Then
        cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid1);
      cxDBPivotGrid1.OptionsView.DataFields     :=True;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid1.OptionsView.RowFields      :=True;
      cxDBPivotGrid1.OptionsView.FilterFields   :=True;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormExistencias.ExportarXLSExecute(Sender: TObject);
var i:Byte;
begin
  inherited;
//  chklstColumnas.Clear;
//  for i:= 0 to dbgstock.Columns.Count-1 do
//    begin
//      chklstColumnas.Items.Add(dbgstock.Columns[i].Title.Caption);
//      chklstColumnas.Checked[i]:=True;//   True;
//    end;

  pnColumnas.Visible:=True;
//  For i:= 0 to chklstColumnas.Items.Count-1 do
//    dbgstock.Columns[i].Visible:=chklstColumnas.Checked[i];


 
end;

procedure TFormExistencias.pnBaseDblClick(Sender: TObject);
begin
  frStock.DesignReport;
end;


procedure TFormExistencias.QStkTrazable_AfterScroll(DataSet: TDataSet);
begin
  CDSLotes.Close;
  CDSLotes.Params.ParamByName('codigo').Value:=CDSStkTrazableCODIGO_STK.AsString;
  CDSLotes.Open;

  CDSMovLote.Close;
  CDSMovLote.Params.ParamByName('codigo').Value:=CDSStkTrazableCODIGO_STK.AsString;
  CDSMovLote.Open;
end;



procedure TFormExistencias.SalirExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormExistencias.sbEstadoDblClick(Sender: TObject);
begin
 frStock.DesignReport;
end;

procedure TFormExistencias.seDiasChange(Sender: TObject);
begin
  dbgStock.Refresh;
end;

procedure TFormExistencias.spCorreoClick(Sender: TObject);
begin
if CDSStock.IsEmpty Then
    Raise Exception.Create(' No hay datos para mandar...');
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');

  frStock.PrintOptions.Printer:=PrNomListados;
  frStock.SelectPrinter;

  CDSStock.DisableControls;
  if rgFormato.ItemIndex=1 Then
    begin
      sbEstado.SimpleText:='Ordenando Informe por RUBRO_STK;SUBRUBRO_STK;DETALLE_STK';
      CDSStock.IndexFieldNames:='RUBRO_STK;SUBRUBRO_STK;DETALLE_STK';

      frStock.LoadFromFile(DMMain_FD.PathReportesLst+'\LstExistenciaStockPuntoPedido.fr3');
      sbEstado.SimpleText:='';
    end
  else
    frStock.LoadFromFile(DMMain_FD.PathReportesLst+'\LstExistenciaStock.fr3');


  frStock.PrepareReport;

  frxPDFExport1.ShowDialog    := False;
  frxPDFExport1.FileName      := ExtractFilePath(ParamStr(0))+'Archivos Temporales\Existencias.pdf';
  frxPDFExport1.EmbeddedFonts := True;

  frStock.Export(frxPDFExport1);
  frxPDFExport1.ShowDialog:=True;


  CDSStock.EnableControls;

  if Not(Assigned(FormCorreo)) Then
    FormCorreo:=TFormCorreo.Create(Application);


  FormCorreo.CorreoOrigen        :=DirCorreo;
  FormCorreo.Remitente           :=Remitente;
  FormCorreo.CCopia              :=CopiaCorreo;// '';
  FormCorreo.edDireccion.Text    :=FormCorreo.CorreoDestino;
  FormCorreo.Destinatario        :='';
  FormCorreo.Puerto              :=Puerto;
  FormCorreo.NombreServidorCorreo:=NombreServidor;
  FormCorreo.NombreCuentaCorreo  :=NombreCuenta;
  FormCorreo.Clave               :=Clave;
  FormCorreo.Autenticacion       :=Autotenticacion;
  FormCorreo.Asunto              :='Existencia Stock - al '+ FormatDateTime('dd-mm-yy',deFecha.Date);
  FormCorreo.Adjuntos.Add(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Existencias.pdf');
  FormCorreo.Show;

end;

procedure TFormExistencias.spAplicaCoefClick(Sender: TObject);
begin
  CDSStock.First;
  while not(CDSStock.Eof) do
    begin
      CDSStock.Edit;
      CDSStockCOSTO_TOTAL_STK.AsFloat  := CDSStockCOSTO_TOTAL_STK.AsFloat * (1+edCoef.Value*0.01);
      CDSStockCOSTO_TOTAL_FINAL.AsFloat:= CDSStockCOSTO_TOTAL_FINAL.AsFloat * (1+edCoef.Value*0.01);
      CDSStock.Next;
    end;
end;

procedure TFormExistencias.spFiltroCpbteClick(Sender: TObject);
begin
  if Not(Assigned(FormDepositosControlados)) then
    FormDepositosControlados:=TFormDepositosControlados.Create(self);
  FormDepositosControlados.ShowModal;
  FreeAndNil(FormDepositosControlados);

end;

procedure TFormExistencias.spVistasClick(Sender: TObject);
var
  AStream: TMemoryStream;
begin
  inherited;
  AStream := TMemoryStream.Create;
  cxDBPivotGrid1.StoreToStream(AStream);
  AStream.Position := 0;
  if Not(Assigned(FormVistaGrillas)) then
    FormVistaGrillas:=TFormVistaGrillas.Create(Self);
  FormVistaGrillas.Tipo:='EXISTEARTICULOS';
  FormVistaGrillas.Dato:=AStream;
  FormVistaGrillas.ShowModal;
  FreeAndNil(AStream);


  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='EXISTEARTICULOS';
  CDSVista.Open;


end;

procedure TFormExistencias.TraerConsultaExecute(Sender: TObject);
var medio,minimo,cero:integer;
begin
  minimo:= -1;
  medio := -1;
  cero  :=  0;
  if chbStockCero.Checked then cero       := -1;
  if chbBajodelMinimo.Checked then minimo := 1;
  if chbMaximo.Checked then medio         := 1;

  CDSStock.Close;
  if rgFormato.ItemIndex=2 then
    CDSStock.Params.ParamByName('lista').Value :=-1
  else
    if rgFormato.ItemIndex=3 then
      begin
        CDSStock.Params.ParamByName('lista').Value :=dbclistaPrecios.KeyValue;
      end;
  if VarIsNull(RxCDepositos.KeyValue) Then
    CDSStock.Params.ParamByName('deposito').Value :=-1
  else
    CDSStock.Params.ParamByName('deposito').Value :=RxCDepositos.KeyValue;
  if rgUnidades.ItemIndex=0 Then
    CDSStock.Params.ParamByName('Unidad').Value :='V'
  else
    CDSStock.Params.ParamByName('Unidad').Value :='C';

  CDSStock.Params.ParamByName('fecha').Value       := deFecha.Date;
  CDSStock.Params.ParamByName('rubro').AsString    := rxcbRubro.KeyValue;
  CDSStock.Params.ParamByName('subrubro').AsString := rxcbSubRubro.KeyValue;
  CDSStock.Params.ParamByName('marca').AsString    := rxcbMarca.KeyValue;

  CDSStock.IndexDefs.Clear;
  CDSStock.IndexFieldNames :='';
  CDSStock.IndexName       :='';
//  CDSStock.OnCalcFields    :=nil;
  CDSStock.Open;
end;

procedure TFormExistencias.VerPendientesExecute(Sender: TObject);
begin
 if Not(Assigned(FormStockPendiente)) Then
    FormStockPendiente:=TFormStockPendiente.Create(Self);
  FormStockPendiente.Codigo:=CDSStockCODIGO_STK.Value;
  FormStockPendiente.Show;
end;

procedure TFormExistencias.FormShow(Sender: TObject);
begin
  RxCDepositos.KeyValue                   := Deposito;
  deFecha.Date                            := date;
  CDSStockCOSTO_TOTAL_STK.Visible         := DMMain_FD.VerCostoFichaStock;
  cxDBPivotGrid1.OptionsView.FilterFields := False;
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaExsitencia');
end;

procedure TFormExistencias.HacerAjusteExecute(Sender: TObject);
begin
  if (CDSStock.IsEmpty=False) and DMMain_FD.UsuarioAdministrador then
    begin
      if Not(Assigned(FormAjustesStock)) then
        FormAjustesStock  := TFormAjustesStock.Create(Self);
      FormAjustesStock.Agregar.Execute;
      FormAjustesStock.CDSAjusteCabFECHA.AsDateTime    := deFecha.Date;
      FormAjustesStock.CDSAjusteCabID_INVENTARIO.Value := -1;
      FormAjustesStock.CDSAjusteCabOBS.Value           := 'Ajuste por toma de Inventario Desde Exsitencia.. del '+FormatDateTime('dd/mm/yyyy',defecha.DateTime);
      FormAjustesStock.CDSAjusteCabDEPOSITOSetText(FormAjustesStock.CDSAjusteCabDEPOSITO,IntToStr(RxCDepositos.KeyValue));

      CDSStock.First;
      CDSStock.DisableControls;
      while Not(CDSStock.Eof) do
        begin
          if (Abs(CDSStockDIFERENCIA_AJUSTE.AsFloat)>0) then
            begin
              FormAjustesStock.CDSAjusteDet.Append;
              FormAjustesStock.CDSAjusteDetCODIGOSetText(FormAjustesStock.CDSAjusteDetCODIGO,CDSStockCODIGO_STK.Value);
              FormAjustesStock.CDSAjusteDetCANTIDADSetText(FormAjustesStock.CDSAjusteDetCANTIDAD,CDSStockDIFERENCIA_AJUSTE.AsString);
              FormAjustesStock.CDSAjusteDetID_MOTIVO.Value:=0;
              FormAjustesStock.CDSAjusteDet.Post;
            end;
          CDSStock.Next;
        end;
      CDSStock.EnableControls;
      FormAjustesStock.Show;
    end;
end;

procedure TFormExistencias.RxCDepositosClick(Sender: TObject);
begin
  Buscar.Execute;
end;

procedure TFormExistencias.chActivosClick(Sender: TObject);
begin
  QDepositos.Close;
  if DMMain_FD.NoSi(chActivos.Checked)='N' then
    QDepositos.ParamByName('ACTIVO').AsString:= '*'
  else
    QDepositos.ParamByName('ACTIVO').AsString:= 'S';
  QDepositos.Open;
end;

procedure TFormExistencias.chbBajodelMinimoClick(Sender: TObject);
begin
  CDSStock.Filtered:=False;
  CDSStock.Filter:='';
  if chbBajodelMinimo.Checked then
    chbMaximo.Checked:=False;
  if chbMaximo.Checked then
    chbBajodelMinimo.Checked:=False;
  if Not(chbStockCero.Checked) then
    CDSStock.Filter:= '(fisico <> 0)';

  if (chbMayorCero.Checked) then
    CDSStock.Filter:= '(fisico > 0)';

  if chbBajodelMinimo.Checked then
    if CDSStock.Filter<>'' then
      CDSStock.Filter:= CDSStock.Filter + ' and (fisico < Minimo) '
    else
      CDSStock.Filter:= CDSStock.Filter + ' (fisico < Minimo)';

  if chbMaximo.Checked then
    if CDSStock.Filter<>'' then
      CDSStock.Filter:= CDSStock.Filter + ' and (fisico > Medio)'
     else
      CDSStock.Filter:= CDSStock.Filter + ' (fisico > Medio) ';

  CDSStock.Filtered:= Not(chbStockCero.Checked);
  dbgstock.Refresh;    //  Filtrar.Execute;
end;

procedure TFormExistencias.chbCodigoAlterClick(Sender: TObject);
begin
  dbgstock.Refresh;
  cxGridLotes.Refresh;
end;

procedure TFormExistencias.chbMaximoClick(Sender: TObject);
begin
  CDSStock.Filtered:=False;
  CDSStock.Filter:='';
  if chbBajodelMinimo.Checked then
    chbMaximo.Checked:=False;
  if chbMaximo.Checked then
    chbBajodelMinimo.Checked:=False;
  if Not(chbStockCero.Checked) then
    CDSStock.Filter:= '(fisico <> 0)';

  if (chbMayorCero.Checked) then
    CDSStock.Filter:= '(fisico > 0)';

  if chbBajodelMinimo.Checked then
    if CDSStock.Filter<>'' then
      CDSStock.Filter:= CDSStock.Filter + ' and (fisico < Minimo) '
    else
      CDSStock.Filter:= CDSStock.Filter + ' (fisico < Minimo)';

  if chbMaximo.Checked then
    if CDSStock.Filter<>'' then
      CDSStock.Filter:= CDSStock.Filter + ' and (fisico > Medio)'
     else
      CDSStock.Filter:= CDSStock.Filter + ' (fisico > Medio) ';

  CDSStock.Filtered:= Not(chbStockCero.Checked);
  dbgstock.Refresh;    //  Filtrar.Execute;
end;

procedure TFormExistencias.chbModoClick(Sender: TObject);
begin
 // dbfCodigo.ResetFilter;
 // dbfDetalle.ResetFilter;

 // if Not(chbModo.Checked) then
//    begin
//      dbfDetalle.FindMode:=fmAnyPos;
//      dbfCodigo.FindMode :=fmAnyPos;
//      if chbFiltra.Checked then
//        begin
//          dbfDetalle.FindStyle:=fsFilter;
//          dbfCodigo.FindStyle :=fsFilter;
//        end
//      else
//      if Not(chbFiltra.Checked) then
//        begin
//          dbfDetalle.FindStyle:=fsNavigate;
//          dbfCodigo.FindStyle :=fsNavigate;
//        end;
//    end
//  else
//  if (chbModo.Checked) then
//    begin
//      dbfDetalle.FindMode:=fmFirstPos;
//      dbfCodigo.FindMode :=fmFirstPos;
//      if chbFiltra.Checked then
//        begin
//          dbfDetalle.FindStyle:=fsFilter;
//          dbfCodigo.FindStyle :=fsFilter;
//        end
//      else
//      if Not(chbFiltra.Checked) then
//        begin
//          dbfDetalle.FindStyle:=fsNavigate;
//          dbfCodigo.FindStyle :=fsNavigate;
//        end;
//    end
//

end;

procedure TFormExistencias.chbStockCeroClick(Sender: TObject);
begin
  CDSStock.Filtered:=False;
  CDSStock.Filter:='';
  if chbBajodelMinimo.Checked then
    chbMaximo.Checked:=False;
  if chbMaximo.Checked then
    chbBajodelMinimo.Checked:=False;

  if Not(chbStockCero.Checked) then
    CDSStock.Filter:= '(fisico <> 0)';

  if (chbMayorCero.Checked) then
    CDSStock.Filter:= '(fisico > 0)';

  if chbBajodelMinimo.Checked then
    if CDSStock.Filter<>'' then
      CDSStock.Filter:= CDSStock.Filter + ' and (fisico < Minimo) '
    else
      CDSStock.Filter:= CDSStock.Filter + ' (fisico < Minimo)';

  if chbMaximo.Checked then
    if CDSStock.Filter<>'' then
      CDSStock.Filter:= CDSStock.Filter + ' and (fisico > Medio)'
     else
      CDSStock.Filter:= CDSStock.Filter + ' (fisico > Medio) ';

  CDSStock.Filtered    := Not(chbStockCero.Checked);
  chbMayorCero.Enabled := Not(chbStockCero.Checked);
  dbfCodigo.Clear;
  dbfDetalle_2.Clear;
  dbgstock.Refresh;    //  Filtrar.Execute;
end;

procedure TFormExistencias.chbWebClick(Sender: TObject);
var estadofiltro:boolean;
begin
  //estadofiltro      := CDSStock.Filtered;
  CDSStock.Filtered := False;
  if CDSStock.Filter<>'' then
    begin
      if chbWeb.Checked then
        CDSStock.Filter:= CDSStock.Filter + ' and (publicar_web = ''S'') '
      else
        CDSStock.Filter:= CDSStock.Filter + ' and (publicar_web in [''S'',''N'','''') ';
    end
  else
    begin
      if chbWeb.Checked then
        CDSStock.Filter:= CDSStock.Filter + '(publicar_web = ''S'') '
      else
        CDSStock.Filter:= '';
    end;
  CDSStock.Filtered:=chbWeb.Checked;
  //CDSStock.Filtered:=estadofiltro;
end;

procedure TFormExistencias.chControlFUAPClick(Sender: TObject);
begin
  dbgStock.Refresh;
end;

procedure TFormExistencias.chRecontadosClick(Sender: TObject);
var estadofiltro:boolean;
begin
//  estadofiltro:=CDSStock.Filtered;
   CDSStock.Filtered := False;
  if CDSStock.Filter<>'' then
    begin
      if chRecontados.Checked then
        CDSStock.Filter:= CDSStock.Filter + ' and (recontado <> 0 ) '
    end
  else
    begin
      if chRecontados.Checked then
        CDSStock.Filter:= CDSStock.Filter + ' (recontado <> 0 ) '
    end;

  CDSStock.Filtered:= chRecontados.Checked;
end;

procedure TFormExistencias.chkColumnasVisiblesClick(Sender: TObject);
begin
  ControlVisualColumnas.Execute;
end;

procedure TFormExistencias.chklstColumnasClick(Sender: TObject);
begin
//   ControlVisualColumnas.Execute;
  DataToXLS1.Columns[chklstColumnas.ItemIndex].Save:=chklstColumnas.Checked[chklstColumnas.ItemIndex];
end;

procedure TFormExistencias.chSinComprometidoClick(Sender: TObject);
begin
  dbgstock.Refresh;
end;

procedure TFormExistencias.chTransitoClick(Sender: TObject);
begin
  dbgstock.Refresh;
end;

procedure TFormExistencias.ColumnasVisibles1Click(Sender: TObject);
begin
  if pnColumnasVisible.Visible=False
    then pnColumnasVisible.Visible:=True
  else pnColumnasVisible.Visible:=False;
end;

procedure TFormExistencias.ControlVisualColumnasExecute(Sender: TObject);
var i:Byte;
begin
  For i:= 0 to chkColumnasVisibles.Items.Count-1 do
    dbgstock.Columns[i].Visible:=chkColumnasVisibles.Checked[i];
 end;

procedure TFormExistencias.cxDBPivotGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  P : TPoint;
begin
  FDragDrop := False;
  AMoved := False;
  if (Button = mbLeft) then
  begin
   P := Point(X,Y);
   if TPivotGridControllerAccess(TPivotGridAccess(cxDBPivotGrid1).Controller).StartDragAndDrop(P) then
     FDragDrop := True;
  end;
end;

procedure TFormExistencias.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  AMoved := FDragDrop;
end;

procedure TFormExistencias.cxDBPivotGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var c:Integer;
begin
 if FDragDrop and AMoved then
    begin
      for c:=0 to cxDBPivotGrid1.FieldCount-1 do
        cxDBPivotGrid1.Fields[c].ExpandAll;
   end;
  FDragDrop:=False;
  AMoved   :=False;
end;

procedure TFormExistencias.cxGridLotesDBTableView1DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
   ADataController.CollapseDetails;
end;

procedure TFormExistencias.dbclistaPreciosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      dbclistaPrecios.ClearValue;
    end;

end;

procedure TFormExistencias.dbcVistasChange(Sender: TObject);
var
  AStream: TMemoryStream;
begin
  AStream := TMemoryStream.Create;
  CDSVistaVISTA.SaveToStream(AStream);
  AStream.Position := 0;
  cxDBPivotGrid1.RestoreFromStream(AStream);
  FreeAndNil(AStream)
end;

procedure TFormExistencias.dbfDetalleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_UP) or (Key=VK_DOWN) then
    begin
      if Key=VK_UP then
        dbgstock.DataSource.DataSet.Prior
      else
        if Key=VK_DOWN then
          dbgstock.DataSource.DataSet.Next
    end;
end;

procedure TFormExistencias.dbfDetalle_2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_UP) and (not(CDSStock.IsEmpty)) then
    CDSStock.Prior
  else
    if (Key=VK_DOWN) and (not(CDSStock.IsEmpty)) Then CDSStock.Next;

end;

procedure TFormExistencias.rgFormatoClick(Sender: TObject);
begin
  if (not DMMain_FD.VerCostoFichaStock) then
    if rgFormato.ItemIndex=2 then
      rgFormato.ItemIndex:=1;
 if rgFormato.ItemIndex=3 then
   begin
     dbclistaPrecios.Enabled := True;
     dbclistaPrecios.Color   := clWhite;
     QListaPrecios.Close;
     QListaPrecios.Open;
   end
 else
   begin
     dbclistaPrecios.Enabled := False;
     dbclistaPrecios.Color   := clBtnFace;
     QListaPrecios.Close;
     QListaPrecios.Open;
   end
 end;

procedure TFormExistencias.rgUnidadesClick(Sender: TObject);
begin
  Buscar.Execute;
end;

//procedure TFormExistencias.BitBtn1Click(Sender: TObject);
//var
//  MiThread: TMiThread;
//begin
  // Creamos el thread
//  MiThread:= TMiThread.Create;
  // Mostramos un mensaje
  //Buscar.Execute;
//  MiThread.Execute;
  //ShowMessage('Pulsa aceptar para terminar');
  // Cuando el mensaje se cierra, terminamos el thread
//  Mithread.Terminate;
//end;

end.