unit UAjusteMercaderia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBCtrls, StdCtrls, Mask, Db,
  Math, ExtCtrls, Grids, DBGrids, Provider, DBClient,  IBGenerator, frxClass,
  frxDBSet, frxExportRTF, JvExControls, JvGradient, JvComponentBase, ADODB, Menus,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, DBXCommon, JvExMask,
  JvToolEdit, IniFiles, DataExport, DataToXLS, JvExStdCtrls,
  JvCombobox, JvDBCombobox,StrUtils, System.Actions, JvAppStorage,
  JvAppIniStorage, Vcl.ComCtrls, Vcl.ImgList, Vcl.ActnList, Vcl.Buttons,
  Vcl.ToolWin,System.types, CompBuscador,VirtualUI_SDK, AdvDBLookupComboBox,
  JvDBLookup, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList,Librerias, frCoreClasses;

type
  TFormAjustesStock = class(TFormABMBase)
    DBGrillaDetalle: TDBGrid;
    DBMemo1: TDBMemo;
    DSPAjusteCab: TDataSetProvider;
    DSPAjusteDet: TDataSetProvider;
    DSAjusteDet: TDataSource;
    BuscaSucursal: TAction;
    BuscarArticulo: TAction;
    BuscarDeposito: TAction;
    BuscarTipoCpbte: TAction;
    ibgAjusteCab: TIBGenerator;
    ibgAjusteDet: TIBGenerator;
    DSPDeposito: TDataSetProvider;
    DSPSucursal: TDataSetProvider;
    pnCabecera: TPanel;
    DBText1: TDBText;
    dbtMuestraComprobante: TDBText;
    dbeMuestraDeposito: TDBEdit;
    dbePrefijo: TDBEdit;
    dbeNum: TDBEdit;
    dbeSucursal: TDBEdit;
    ToolButton2: TToolButton;
    BitBtn1: TBitBtn;
    Imprimir: TAction;
    frAjustes: TfrxReport;
    frDSAjusteCab: TfrxDBDataset;
    frDSAjusteDet: TfrxDBDataset;
    Label1: TLabel;
    dbgSeries: TDBGrid;
    DSPAjusteSubDet: TDataSetProvider;
    CDSAjusteSubDetalle: TClientDataSet;
    DSAjusteSubDetalle: TDataSource;
    IBGAjusteSubDet: TIBGenerator;
    BuscarSerie: TAction;
    CDSAjusteSubDetalleID: TIntegerField;
    CDSAjusteSubDetalleID_RTODET: TIntegerField;
    CDSAjusteSubDetalleID_RTOCAB: TIntegerField;
    CDSAjusteSubDetalleTIPOCPBTE: TStringField;
    CDSAjusteSubDetalleCLASECPBTE: TStringField;
    CDSAjusteSubDetalleNROCPBTE: TStringField;
    CDSAjusteSubDetalleCODIGOARTICULO: TStringField;
    CDSAjusteSubDetalleSERIE: TStringField;
    CDSAjusteSubDetalleDEPOSITO: TIntegerField;
    CDSAjusteSubDetalleTIPO: TStringField;
    lbCantidad: TLabel;
    Label2: TLabel;
    DBText2: TDBText;
    btGenerarDetalle: TBitBtn;
    ADOConnection: TADOConnection;
    ADODSDetalelleXLS: TADODataSet;
    OpenDialog: TOpenDialog;
    DSCDetalleXLS: TDataSource;
    ImportarDetalle: TAction;
    PopupMenu1: TPopupMenu;
    ImportarDetalledesdeExcel1: TMenuItem;
    lb1: TLabel;
    dbeTOTAL: TDBEdit;
    Sumar: TAction;
    btVerNovedades: TBitBtn;
    Recalcular: TAction;
    CDSDeposito: TClientDataSet;
    CDSDepositoID: TIntegerField;
    CDSDepositoNOMBRE: TStringField;
    CDSDepositoSUCURSAL: TIntegerField;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    DSPBuscaSucursal: TDataSetProvider;
    dbeFecha: TJvDBDateEdit;
    RxCDeposito: TJvDBComboEdit;
    RxCSucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    RxLabel7: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel2: TJvLabel;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalRECARGO: TFloatField;
    CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    CDSAjusteCab: TClientDataSet;
    CDSAjusteCabID_RTO: TIntegerField;
    CDSAjusteCabLETRA: TStringField;
    CDSAjusteCabSUCRTO: TStringField;
    CDSAjusteCabNUMRTO: TStringField;
    CDSAjusteCabSUCURSAL: TIntegerField;
    CDSAjusteCabNROCPBTE: TStringField;
    CDSAjusteCabTIPOCPBTE: TStringField;
    CDSAjusteCabCLASECPBTE: TStringField;
    CDSAjusteCabOBS: TStringField;
    CDSAjusteCabDEPOSITO: TIntegerField;
    CDSAjusteCabMUESTRACOMPROBANTE: TStringField;
    CDSAjusteCabMUESTRASUCURSAL: TStringField;
    CDSAjusteCabMUESTRADEPOSITO: TStringField;
    CDSAjusteCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSAjusteCabAJUSTE_CERO_STOCK: TStringField;
    CDSAjusteCabUSUARIO: TStringField;
    CDSAjusteCabFECHA: TSQLTimeStampField;
    CDSAjusteCabFECHA_HORA: TSQLTimeStampField;
    CDSAjusteCabTOTAL: TFloatField;
    CDSAjusteDet: TClientDataSet;
    CDSAjusteDetID_RTO_DET: TIntegerField;
    CDSAjusteDetID_RTO_CAB: TIntegerField;
    CDSAjusteDetCODIGO: TStringField;
    CDSAjusteDetDETALLE: TStringField;
    CDSAjusteDetUNIDAD: TStringField;
    CDSAjusteDetNROCPBTE: TStringField;
    CDSAjusteDetDEPOSITO: TIntegerField;
    CDSAjusteDetCLASECPBTE: TStringField;
    CDSAjusteDetTIPOCPBTE: TStringField;
    CDSAjusteDetAFECTASTOCK: TStringField;
    CDSAjusteDetCON_NRO_SERIE: TStringField;
    CDSAjusteDetCOSTO_UNITARIO: TFloatField;
    CDSAjusteDetCOSTO_TOTAL: TFloatField;
    CDSAjusteDetFECHA: TSQLTimeStampField;
    CDSAjusteDetSTOCK_ACTUAL_VTA: TFloatField;
    CDSAjusteDetSTOCK_ACTUAL_COMPRA: TFloatField;
    CDSAjusteDetCANTIDAD: TFloatField;
    CDSAjusteSubDetalleFECHA: TSQLTimeStampField;
    spRecaculaCostos: TFDStoredProc;
    DBStatusLabel2: TJvDBStatusLabel;
    chSalteDetalle: TCheckBox;
    DataToXLS1: TDataToXLS;
    ExportarXLS: TAction;
    SaveDialog1: TSaveDialog;
    ExportarDetalleaExcel1: TMenuItem;
    VerNovedades: TAction;
    btRecalculaCosto: TBitBtn;
    sbCambiarFecha: TSpeedButton;
    CambiarFecha: TAction;
    DSPExistencia: TDataSetProvider;
    CDSExistencia: TClientDataSet;
    CDSExistenciaCODIGO_STK: TStringField;
    CDSExistenciaDETALLE_STK: TStringField;
    CDSExistenciaSALDO: TFloatField;
    CDSExistenciaDEPOSITO_STK: TIntegerField;
    CDSExistenciaDEPOSITO_NOMBRE: TStringField;
    DSExistencia: TDataSource;
    dbgExitencias: TDBGrid;
    CDSAjusteCabMOTIVO: TIntegerField;
    ImportarExcelCompensado: TAction;
    N1: TMenuItem;
    ImportardesdeExcelCompensado1: TMenuItem;
    JvDBStatusLabel1: TJvDBStatusLabel;
    EnviarArchivoXML: TAction;
    spEnviaXML: TSpeedButton;
    spLeerTx: TSpeedButton;
    LeerAjustes: TAction;
    DBText3: TDBText;
    CDSAjusteDetMUESTRACODALTERNATIVO: TStringField;
    N2: TMenuItem;
    VerCodigoAlternativo1: TMenuItem;
    ImportarExcelCompFecha: TAction;
    ImportardesdeExcelCompensadoaFechadeIngreso1: TMenuItem;
    lbCargaLote: TLabel;
    pcLotesSeries: TPageControl;
    pagSeries: TTabSheet;
    pagLotes: TTabSheet;
    pnLote: TPanel;
    JvLabel1: TJvLabel;
    JvDBComboEdit1: TJvDBComboEdit;
    JvLabel2: TJvLabel;
    DBEdit1: TDBEdit;
    JvLabel3: TJvLabel;
    dbeCantidadLote: TDBEdit;
    DBEdit2: TDBEdit;
    JvLabel4: TJvLabel;
    DSPAjuteLote: TDataSetProvider;
    CDSAjusteLote: TClientDataSet;
    DSAjustesLote: TDataSource;
    IBGAjusteLote: TIBGenerator;
    CDSAjusteLoteID: TIntegerField;
    CDSAjusteLoteID_DET: TIntegerField;
    CDSAjusteLoteID_FC: TIntegerField;
    CDSAjusteLoteID_LOTE: TIntegerField;
    CDSAjusteLoteCODIGO: TStringField;
    CDSAjusteLoteDESPACHO: TStringField;
    CDSAjusteLoteCANTIDAD: TFloatField;
    CDSAjusteLoteDEPOSITO: TIntegerField;
    CDSAjusteLoteTIPO_COMPROB: TStringField;
    CDSAjusteDetCONTROL_TRAZABILIDAD: TStringField;
    CDSBuscaLotes: TClientDataSet;
    CDSBuscaLotesLOTE: TStringField;
    CDSBuscaLotesDESPACHO: TStringField;
    CDSBuscaLotesSALDO: TFloatField;
    CDSBuscaLotesID: TIntegerField;
    CDSBuscaLotesCODIGO: TStringField;
    CDSBuscaLotesFECHA_ENTRADA: TSQLTimeStampField;
    CDSBuscaLotesFECHA_VTO: TSQLTimeStampField;
    CDSBuscaLotesCANTIDAD: TFloatField;
    CDSBuscaLotesDEPOSITO: TIntegerField;
    DSPBuscaLotes: TDataSetProvider;
    BuscaLotes: TAction;
    PagLotesIng: TTabSheet;
    Panel2: TPanel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    CDSAjusteLoteLOTE: TStringField;
    ComBuscadorDeposito: TComBuscador;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorSerie: TComBuscador;
    ComBuscadorLote: TComBuscador;
    CDSAjusteDetUNIDADES_STK: TFloatField;
    CDSAjusteDetPRESENT_CANTIDAD: TFloatField;
    DSMotivos: TDataSource;
    dbcMotivo: TJvDBLookupCombo;
    frDSAjusteLote: TfrxDBDataset;
    SaltarUnidades1: TMenuItem;
    N3: TMenuItem;
    CDSAjusteCabLISTAPRECIO: TIntegerField;
    CDSAjusteCabID_INVENTARIO: TIntegerField;
    QStock_: TFDQuery;
    QBuscaXAlternativo: TFDQuery;
    QBuscaXAlternativoCODIGO_STK: TStringField;
    QComprob: TFDQuery;
    QComprobID_COMPROBANTE: TIntegerField;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobSUCURSAL: TIntegerField;
    QComprobLETRA: TStringField;
    QComprobPREFIJO: TStringField;
    QComprobNUMERARCION_PROPIA: TStringField;
    QComprobNUMERO: TStringField;
    QComprobTOMA_NRO_DE: TIntegerField;
    QComprobAFECTA_IVA: TStringField;
    QComprobAFECTA_CC: TStringField;
    QComprobDESGLOZA_IVA: TStringField;
    QComprobCOMPRA_VENTA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QComprobIMPRIME: TStringField;
    QComprobFISCAL: TStringField;
    QComprobNOMBREIMPRESORA: TStringField;
    QComprobPENDIENTEIMPRESION: TStringField;
    QComprobLINEAS_DETALLE: TSmallintField;
    QComprobCALCULA_IVA_ARTICULOS: TStringField;
    QComprobDEFECTO: TStringField;
    QComprobCAJA_DEFECTO: TIntegerField;
    QComprobDIVIDE_IVA: TStringField;
    QComprobFACTURAELECTRONICA: TStringField;
    QComprobEN_USO: TStringField;
    QComprobCODIGO_AFIP: TStringField;
    QComprobID_AJUSTECC: TIntegerField;
    QComprobCENTRO_COSTO: TIntegerField;
    QComprobFILTRO_COMPROBANTES: TStringField;
    QComprobDEPOSITO: TIntegerField;
    QComprobULTIMONRO: TIntegerField;
    QComprobEDITAR_NRO: TStringField;
    QBuscaNroSerie: TFDQuery;
    QBuscaNroSerieID: TIntegerField;
    QBuscaNroSerieCODIGO_STK: TStringField;
    QBuscaNroSerieCODIGOSERIE: TStringField;
    QBuscaNroSerieFECHAINGRESO: TSQLTimeStampField;
    QBuscaNroSerieFECHAEGRESO: TSQLTimeStampField;
    QNroSerie: TFDQuery;
    QNroSerieID: TIntegerField;
    QNroSerieCODIGO_STK: TStringField;
    QNroSerieCODIGOSERIE: TStringField;
    QNroSerieFECHAINGRESO: TSQLTimeStampField;
    QNroSerieFECHAEGRESO: TSQLTimeStampField;
    QBuscaStock: TFDQuery;
    QBuscaStockCODIGO_STK: TStringField;
    QBuscaStockDETALLE_STK: TStringField;
    QBuscaDeposito: TFDQuery;
    QBuscaDepositoID: TIntegerField;
    QBuscaDepositoNOMBRE: TStringField;
    QBuscaDepositoSUCURSAL: TIntegerField;
    QBuscaDepositoCENTRALIZA_STOCK: TStringField;
    QMotivos: TFDQuery;
    QMotivosID: TIntegerField;
    QMotivosDETALLE: TStringField;
    QControlCpbteExistente: TFDQuery;
    QControlCpbteExistenteID_RTO: TIntegerField;
    QStkUnit_al: TFDQuery;
    QStkUnit_alCODIGO_STK: TStringField;
    QStkUnit_alFISICO: TFloatField;
    QCambiarFecha: TFDQuery;
    JvLabel5: TJvLabel;
    RxDBCodigo: TJvDBComboEdit;
    dbeNombre: TDBEdit;
    CDSAjusteCabPERSONAL_RETIRA: TStringField;
    CDSAjusteCabMUESTRAPERSONAL: TStringField;
    QEmpleado: TFDQuery;
    QEmpleadoNOMBRE: TStringField;
    QBuscaEmpleados: TFDQuery;
    QBuscaEmpleadosNOMBRE: TStringField;
    QBuscaEmpleadosCODIGO: TStringField;
    ComBuscadorEmpleado: TComBuscador;
    BuscaEmpleado: TAction;
    QNroSerie_enStock: TFDQuery;
    QNroSerie_enStockID: TIntegerField;
    QNroSerie_enStockCODIGO_STK: TStringField;
    QNroSerie_enStockCODIGOSERIE: TStringField;
    QNroSerie_enStockFECHAINGRESO: TSQLTimeStampField;
    QNroSerie_enStockFECHAEGRESO: TSQLTimeStampField;
    QDepo_GeneraXML: TFDQuery;
    QDepo_GeneraXMLID: TIntegerField;
    QDepo_GeneraXMLGENERA_XML_COMUN: TStringField;
    CDSExistenciaFISICO: TFloatField;
    CDSExistenciaCOMPROMETIDO: TFloatField;
    CDSExistenciaEN_TRANSITO: TFloatField;
    CDSAjusteDetID_MOTIVO: TIntegerField;
    CDSAjusteDetPRECIO_UNITARIO: TFloatField;
    CDSAjusteDetPRECIO_TOTAL: TFloatField;
    CDSAjusteCabTOTAL_VTA: TFloatField;
    CDSAjusteLoteFECHA: TDateField;
    CDSAjusteLoteFECHAVTO: TDateField;
    CopiaPapeleraAjuste: TAction;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockUNIDAD: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockCONTROLASTOCK: TStringField;
    CDSStockCONTROL_SERIE: TStringField;
    CDSStockCOSTO_TOTAL_STK: TFloatField;
    CDSStockCONTENIDO_COMPRA: TFloatField;
    CDSStockMUESTRAFISICO: TFloatField;
    CDSStockCLASE_ARTICULO: TIntegerField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockCONTROL_TRAZABILIDAD: TStringField;
    CDSStockPRESENTACION_CANTIDAD: TFloatField;
    RestaurarDePapelera: TAction;
    ToolButton1: TToolButton;
    spPapelera: TSpeedButton;
    BorraDePapelera: TAction;
    N4: TMenuItem;
    BuscarDeposito1: TMenuItem;
    N5: TMenuItem;
    CopiaBkAjuste1: TMenuItem;
    procedure BuscaSucursalExecute(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure DBGrillaDetalleEditButtonClick(Sender: TObject);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure CDSAjusteCabSUCRTOSetText(Sender: TField;
      const Text: String);
    procedure CDSAjusteCabNUMRTOSetText(Sender: TField;
      const Text: String);
    procedure CDSAjusteCabSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure CDSAjusteDetCODIGOSetText(Sender: TField;
      const Text: String);
    procedure CDSAjusteCabDEPOSITOSetText(Sender: TField;
      const Text: String);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSAjusteCabNewRecord(DataSet: TDataSet);
    procedure CDSAjusteDetNewRecord(DataSet: TDataSet);
    procedure AgregarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DBGrillaDetalleEnter(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure CDSAjusteCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure RxCSucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSBaseStateChange(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure DBGrillaDetalleCellClick(Column: TColumn);
    procedure BuscarSerieExecute(Sender: TObject);
    procedure CDSAjusteSubDetalleSERIESetText(Sender: TField;
      const Text: String);
    procedure CDSAjusteSubDetalleNewRecord(DataSet: TDataSet);
    procedure dbgSeriesKeyPress(Sender: TObject; var Key: Char);
    procedure CDSAjusteSubDetalleBeforeInsert(DataSet: TDataSet);
    procedure CDSAjusteSubDetalleBeforePost(DataSet: TDataSet);
    procedure CDSAjusteSubDetalleAfterPost(DataSet: TDataSet);
    procedure CDSAjusteSubDetalleAfterDelete(DataSet: TDataSet);
    procedure CDSAjusteSubDetalleBeforeDelete(DataSet: TDataSet);
    procedure btGenerarDetalleClick(Sender: TObject);
    procedure CDSAjusteDetBeforeDelete(DataSet: TDataSet);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure CDSAjusteDetBeforePost(DataSet: TDataSet);
    procedure ImportarDetalleExecute(Sender: TObject);
    procedure CDSAjusteDetCANTIDADSetText(Sender: TField; const Text: string);
    procedure SumarExecute(Sender: TObject);
    procedure CDSAjusteDetAfterPost(DataSet: TDataSet);
    procedure CDSAjusteDetAfterDelete(DataSet: TDataSet);
    procedure RecalcularExecute(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure VerNovedadesExecute(Sender: TObject);
    procedure CambiarFechaExecute(Sender: TObject);
    procedure ImportarExcelCompensadoExecute(Sender: TObject);
    procedure EnviarArchivoXMLExecute(Sender: TObject);
    procedure LeerAjustesExecute(Sender: TObject);
    procedure CDSAjusteDetCODIGOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure VerCodigoAlternativo1Click(Sender: TObject);
    procedure ImportarExcelCompFechaExecute(Sender: TObject);
    procedure lbCargaLoteClick(Sender: TObject);
    procedure BuscaLotesExecute(Sender: TObject);
    procedure CDSAjusteLoteID_LOTESetText(Sender: TField; const Text: string);
    procedure ModificarExecute(Sender: TObject);
    procedure DBGrillaDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CDSAjusteLoteNewRecord(DataSet: TDataSet);
    procedure CDSAjusteDetAfterScroll(DataSet: TDataSet);
    procedure CDSAjusteDetUNIDADES_STKSetText(Sender: TField;
      const Text: string);
    procedure NextExecute(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure SaltarUnidades1Click(Sender: TObject);
    procedure BuscaEmpleadoExecute(Sender: TObject);
    procedure CDSAjusteCabPERSONAL_RETIRASetText(Sender: TField;
      const Text: string);
    procedure FormResize(Sender: TObject);
    procedure DBGrillaDetalleDblClick(Sender: TObject);
    procedure CopiaPapeleraAjusteExecute(Sender: TObject);
    procedure dbeFechaExit(Sender: TObject);
    procedure RestaurarDePapeleraExecute(Sender: TObject);
    procedure BorraDePapeleraExecute(Sender: TObject);
  private
    { Private declarations }
  public
    DatoControl  :String;
    CodigosSeries:TStringList;
    ArchivoINI   :TIniFile;
    CpbteNuevo    : Char;
    lista        :TStringList;
    ArchCabecera,
    ArchDetalle,
    ArchSubDet   :String;
    Importado,Cancelado:Boolean;
    ListaDePrecio:Integer;
    function ControlSerie:Boolean;
    procedure VerificadorDetalle;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION ASignarArticulo(Dato: STRING): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    function ControlLotes:Boolean;
    function AsignarEmpleado(Dato:String):Boolean;

    { Public declarations }
  end;

var
  FormAjustesStock: TFormAjustesStock;
  copias:integer;

  PROCEDURE UltimoComprobante;

implementation

uses UDMain_FD, DMBuscadoresForm,UBuscadorCpbte, UBuscadorArticulos,
     DMStoreProcedureForm, UListCpbteNoImportados, UFecha, UImportarAjustesStk,
     UMuestraListaCodBarra, ULoteSeriales, UBuscadorComprobantes, UStock_2;

{$R *.DFM}

function TFormAjustesStock.ControlLotes:Boolean;
VAR Aux:Boolean;
begin
  aux:=True;
  CDSAjusteDet.First;
  while not(CDSAjusteDet.Eof) and aux=True do
    begin
      if CDSAjusteDetCONTROL_TRAZABILIDAD.Value='S' Then
        begin
          if (Int(CDSAjusteDetCantidad.AsFloat)=Int(CDSAjusteLoteCANTIDAD.AsFloat)) then
            Aux:=True
          else
           Aux:=False;
        end;
      CDSAjusteDet.Next;
    end;
  Result:=Aux;
end;


function TFormAjustesStock.ControlSerie:Boolean;
VAR Aux:Boolean;
begin
  aux:=True;
  CDSAjusteDet.First;
  while not(CDSAjusteDet.Eof) and aux=True do
    begin
      aux:=True;
      if (CDSAjusteDetCON_NRO_SERIE.Value='S') then
        begin
          if (Abs(Int(CDSAjusteDetCantidad.AsFloat))=CDSAjusteSubDetalle.RecordCount) then
            Aux:=True
          else
           Aux:=False;
        end;
      CDSAjusteDet.Next;
    end;
  CDSAjusteDet.First;
  Result:=Aux;
end;

procedure TFormAjustesStock.CopiaPapeleraAjusteExecute(Sender: TObject);
var Cadena:String;
PathBk:string;
begin
  inherited;
  if Not(CDSAjusteCab.IsEmpty)  Then
    begin
      if not DirectoryExists(ExtractFilePath(ParamStr(0))+'ArchivosAjustesStkBk') then
        CreateDir(ExtractFilePath(ParamStr(0))+'ArchivosAjustesStkBk');
      PathBk :=(ExtractFilePath(ParamStr(0))+'ArchivosAjustesStkBk');
     // BorrarDirectorio(PathBk);

      Cadena :='AJ-['+Trim(RxCDeposito.Text)+']'+dbeMuestraDeposito.Text +'-'+CDSAjusteCabNROCPBTE.Value;
      CDSAjusteCab.SaveToFile(PathBk+'\'+Cadena+'-Cab.XML');
      CDSAjusteDet.SaveToFile(PathBk+'\'+Cadena+'-Det.XM_');
      CDSAjusteSubDetalle.SaveToFile(PathBk+'\'+Cadena+'-Sub.XM_');
    end;
end;

procedure TFormAjustesStock.dbeFechaExit(Sender: TObject);
var a,m,d:Word;
begin
  inherited;
  try
    DecodeDate(StrToDate(CDSAjusteCabFECHA.Text),a,m,d);
  except
    ShowMessage('Fecha no Valida');
    dbeFecha.SetFocus;
  end;

end;

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DMStoreProcedure,FormAjustesStock DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
       IF (CDSAjusteCabLETRA.AsString <> '') AND (CDSAjusteCabCLASECPBTE.Value <> '') THEN
         BEGIN
           spNumeroCpbte.Close;
           spNumeroCpbte.ParamByName('Letra_Ing').AsString   := CDSAjusteCabLETRA.AsString;
           spNumeroCpbte.ParamByName('Sucursal').AsInteger   := CDSAjusteCabSUCURSAL.Value;
           spNumeroCpbte.ParamByName('ClaseComp').AsString   := CDSAjusteCabCLASECPBTE.Value;
           spNumeroCpbte.ParamByName('TipoComp').AsString    := CDSAjusteCabTIPOCPBTE.AsString;
           spNumeroCpbte.ParamByName('CompraVenta').AsString := 'V';
           spNumeroCpbte.ExecProc;
           IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
             BEGIN
               IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                 Numero :=StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
               ELSE
                 Numero := 1;
               CDSAjusteCabSUCRTOSetText(CDSAjusteCabSUCRTO,IntToStr(Numero));
               IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                 Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
               ELSE
                 Numero := 1;
               CDSAjusteCabNUMRTOSetText(CDSAjusteCabNUMRTO,IntToStr(Numero));
             END;
           CDSAjusteCabTIPOCPBTE.Value  :=spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
           CDSAjusteCabCLASECPBTE.Value :=spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
           Copias := spNumeroCpbte.ParamByName('Copias').AsInteger;
           Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
           spNumeroCpbte.Close;
         END;
       CDSAjusteCabNROCPBTE.AsString := CDSAjusteCabLETRA.AsString +
                                        CDSAjusteCabSUCRTO.AsString +
                                        CDSAjusteCabNUMRTO.AsString;
    end;
END;

procedure TFormAjustesStock.VerCodigoAlternativo1Click(Sender: TObject);
begin
  inherited;
  VerCodigoAlternativo1.Checked:=Not(VerCodigoAlternativo1.Checked);
  DBGrillaDetalle.Refresh;
end;

procedure TFormAjustesStock.VerificadorDetalle;
var puntero:TBookMark;
begin
  if CDSAjusteDet.RecordCount>0 Then
    begin
      CDSAjusteDet.AfterPost:=nil;
      puntero:=CDSAjusteDet.GetBookmark;
      CDSAjusteDet.First;
      CDSAjusteDet.DisableControls;
      while not(CDSAjusteDet.eof) do
        begin
          CDSAjusteDet.edit;
          CDSAjusteDetDEPOSITO.Value     :=CDSAjusteCabDEPOSITO.Value;
          CDSAjusteDetFECHA.Value        :=CDSAjusteCabFECHA.Value;
          CDSAjusteDetNROCPBTE.Value     :=CDSAjusteCabNROCPBTE.Value;
          CDSAjusteDet.Next;
        end;
      CDSAjusteDet.GotoBookmark(Puntero);
      CDSAjusteDet.FreeBookmark(puntero);
      CDSAjusteDet.EnableControls;
      CDSAjusteDet.AfterPost:=CDSAjusteDetAfterPost;
    end;

   if CDSAjusteSubDetalle.RecordCount>0 Then
    begin
      puntero:=CDSAjusteSubDetalle.GetBookmark;
      CDSAjusteSubDetalle.First;
      CDSAjusteSubDetalle.DisableControls;
      while not(CDSAjusteSubDetalle.eof) do
        begin
          CDSAjusteSubDetalle.edit;
          CDSAjusteSubDetalleFECHA.Value          :=CDSAjusteCabFECHA.Value;
          CDSAjusteSubDetalleNROCPBTE.Value       :=CDSAjusteCabNROCPBTE.Value;
          CDSAjusteSubDetalleCODIGOARTICULO.Value :=CDSAjusteDetCODIGO.Value;
          CDSAjusteSubDetalleDEPOSITO.Value       :=CDSAjusteCabDEPOSITO.Value;
          CDSAjusteSubDetalleNROCPBTE.Value       :=CDSAjusteCabNROCPBTE.Value;
          CDSAjusteSubDetalle.Next;
        end;
      CDSAjusteSubDetalle.GotoBookmark(Puntero);
      CDSAjusteSubDetalle.FreeBookmark(puntero);
      CDSAjusteSubDetalle.EnableControls;
    end;
end;


procedure TFormAjustesStock.VerNovedadesExecute(Sender: TObject);
begin
  inherited;
  if (lista<>nil) and (lista.Count>0) then
    begin
      if Not(Assigned(FormListaNoImportados)) then
        FormListaNoImportados:=TFormListaNoImportados.Create(Application);
      FormListaNoImportados.mLista.Lines:=lista;
      FormListaNoImportados.Show;
    end
  else
    ShowMessage('No hay Novedades');
end;

FUNCTION TFormAjustesStock.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value := Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.Eof) THEN
    BEGIN
      Result := True;
      CDSAjusteCabMUESTRADEPOSITO.Value := CDSDepositoNOMBRE.Value ;
      if ((FormAjustesStock<>nil) and (FormAjustesStock.Visible)) then
        DBGrillaDetalle.SetFocus;
    END
  ELSE
    begin
      Result := False;
      CDSAjusteCabMUESTRADEPOSITO.Value := '';
    end;
  CDSDeposito.Close;
END;


function TFormAjustesStock.AsignarEmpleado(Dato: String): Boolean;
begin
  QEmpleado.Close;
  QEmpleado.ParamByName('Codigo').Value:=Dato;
  QEmpleado.Open;
  if Not(QEmpleado.IsEmpty) Then
    begin
      Result:=True;
      CDSAjusteCabMUESTRAPERSONAL.Value:= QEmpleadoNOMBRE.Value;
      end
    else
      begin
        Result:=False;
        CDSAjusteCabMUESTRAPERSONAL.Value:='';
      end;
  QEmpleado.Close;
end;

FUNCTION TFormAjustesStock.ASignarArticulo(Dato: STRING): Boolean;
var Enter:Char;
BEGIN
  Enter:=#13;
  IF CDSAjusteDet.State = dsBrowse THEN
    CDSAjusteDet.Edit;
    BEGIN
      CDSStock.Close;
      CDSStock.Params.ParamByName('Codigo').Value   := Dato;
      CDSStock.Params.ParamByName('Deposito').Value := CDSAjusteCabDEPOSITO.Value;
      CDSStock.Open;
      IF (( NOT(CDSStock.IsEmpty)) and (CDSStockCLASE_ARTICULO.Value<>0)) THEN
        BEGIN
          CDSAjusteDetMUESTRACODALTERNATIVO.Value:= CDSStockREEMPLAZO_STK.AsString;
          CDSAjusteDetDETALLE.AsString           := CDSStockDetalle_Stk.AsString;
          CDSAjusteDetUNIDAD.Value               := CDSStockUnidad.Value;
          CDSAjusteDetSTOCK_ACTUAL_VTA.AsFloat   := CDSStockMUESTRAFISICO.AsFloat;
          CDSAjusteDetSTOCK_ACTUAL_COMPRA.AsFloat:= CDSStockMUESTRAFISICO.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat;
          CDSAjusteDetAFECTASTOCK.AsString       := CDSStockCONTROLASTOCK.AsString;
          CDSAjusteDetCON_NRO_SERIE.Value        := CDSStockCONTROL_SERIE.Value;
          CDSAjusteDetCOSTO_UNITARIO.AsFloat     := CDSStockCOSTO_TOTAL_STK.AsFloat;
          CDSAjusteDetFECHA.Value                := CDSAjusteCabFECHA.Value;
          CDSAjusteDetCONTROL_TRAZABILIDAD.Value := CDSStockCONTROL_TRAZABILIDAD.Value;
          CDSAjusteDetPRECIO_UNITARIO.AsFloat    := CDSStockCOSTO_TOTAL_STK.AsFloat;
          CDSAjusteDetPRECIO_TOTAL.AsFloat       := CDSStockCOSTO_TOTAL_STK.AsFloat;


          if CDSStockPRESENTACION_CANTIDAD.AsString<>'' then
            if CDSStockPRESENTACION_CANTIDAD.AsFloat>0 then
              CDSAjusteDetPRESENT_CANTIDAD.AsFloat   := CDSStockPRESENTACION_CANTIDAD.AsFloat
            else
              CDSAjusteDetPRESENT_CANTIDAD.AsFloat   := 1;

          // si es un codigo de PLU y traigo la Cantidad... asigo lo leido en el Cod.Barra
          ////   UnivPesca............
          if DMMain_FD.DesdePLU then
            if DMMain_FD.ModoPLU=1 then //Cantidad
              begin
                 CDSAjusteDetCantidadSetText(CDSAjusteDetCantidad,FLoatToStr(StrToFloat(DMMain_FD.PrecioPLU)*0.001));
                DBGrillaDetalle.SelectedIndex:=2;
                DBGrillaDetalleKeyPress(FormAjustesStock.DBGrillaDetalle,Enter);
                Enter:=#0;
              end;
          // **** Fin desde PLU *********************************
          // ****************************************************

          Result := True;
          if chSalteDetalle.Checked then
            DBGrillaDetalle.SelectedIndex:=2;
          if SaltarUnidades1.Checked then
            DBGrillaDetalle.SelectedIndex:=2;


          if CDSAjusteDetCONTROL_TRAZABILIDAD.Value='S' then
            begin
              if CDSAjusteDetCANTIDAD.Value<0 Then
                begin
                  pcLotesSeries.ActivePage:=pagLotes;
                  pagLotes.TabVisible   :=True;
                  PagLotesIng.TabVisible:=False;
                end
              else
                begin
                  pcLotesSeries.ActivePage:=PagLotesIng;
                  pagLotes.TabVisible   :=False;
                  PagLotesIng.TabVisible:=True;
                end;
            end;

        END
      ELSE
        Result := False;
    END;
END;

FUNCTION TFormAjustesStock.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSAjusteCabSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSAjusteCabMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSAjusteCabLETRA.Value              := QComprobLETRA.Value;
      CDSAjusteCabTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSAjusteCabCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
      if (FormAjustesStock.Visible=True) and (FormAjustesStock.RxCDeposito.Enabled) Then
        FormAjustesStock.RxCDeposito.SetFocus;
    END
  ELSE
    BEGIN
      Result := False;
      CDSAjusteCabMUESTRACOMPROBANTE.Value := '';
      CDSAjusteCabLETRA.Value              := '';
      CDSAjusteCabTIPOCPBTE.Value          := '';
      CDSAjusteCabCLASECPBTE.Value         := '';
    END;
END;

FUNCTION TFormAjustesStock.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.IsEmpty) THEN
    BEGIN
      CDSAjusteCabID_TIPOCOMPROBANTE.Clear;
      CDSAjusteCabMUESTRACOMPROBANTE.Clear;

      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal = :suc and ' +
                                                ' compra_venta = ''V'' and (tipo_comprob= ''AS'') ';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      DMBuscadores.CDSBuscaComprob.Open;
      if DMBuscadores.CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSAjusteCabID_TIPOCOMPROBANTESetText(CDSAjusteCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
          if (FormAjustesStock.Visible) and (FormAjustesStock.RxCDeposito.Visible) and (FormAjustesStock.RxCDeposito.Enabled) then
            FormAjustesStock.RxCDeposito.SetFocus;
        end
      else
        if DMBuscadores.CDSBuscaComprob.RecordCount>1 Then
          begin
            DMBuscadores.CDSBuscaComprob.Filtered:=False;
            DMBuscadores.CDSBuscaComprob.Filter  :='(DEFECTO = ''S'' ) and ( EN_USO = ''S'' )';
            DMBuscadores.CDSBuscaComprob.Filtered:=True;
            if DMBuscadores.CDSBuscaComprob.RecordCount>0 then
              begin
                DMBuscadores.CDSBuscaComprob.First;
                if DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString<>'' then
                  begin
                    CDSAjusteCabID_TIPOCOMPROBANTESetText(CDSAjusteCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
                    if (FormAjustesStock.Visible) and (FormAjustesStock.RxCDeposito.Visible) and (FormAjustesStock.RxCDeposito.Enabled) then
                      FormAjustesStock.RxCDeposito.SetFocus;
                  end;
              end
            else
              begin
                DMBuscadores.CDSBuscaComprob.Filtered:=False;
                DMBuscadores.CDSBuscaComprob.Filter  :='( EN_USO = ''S'' )';
                DMBuscadores.CDSBuscaComprob.Filtered:=True;
                if DMBuscadores.CDSBuscaComprob.RecordCount>0 then
                  begin
                    DMBuscadores.CDSBuscaComprob.First;
                    if DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString<>'' then
                      begin
                        CDSAjusteCabID_TIPOCOMPROBANTESetText(CDSAjusteCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
                        if (FormAjustesStock.Visible) and (FormAjustesStock.RxCDeposito.Visible) and (FormAjustesStock.RxCDeposito.Enabled) then
                          FormAjustesStock.RxCDeposito.SetFocus;
                      end;
                 end;
              end;
          end;
      DMBuscadores.CDSBuscaComprob.Filtered:=False;
      DMBuscadores.CDSBuscaComprob.Filter  :='';
      DMBuscadores.CDSBuscaComprob.close;
      Result := True;
      CDSAjusteCabMUESTRASUCURSAL.Value := CDSSucursalDetalle.Value;
    END
  ELSE
    Result := False;
  CDSSucursal.Close;
END;

procedure TFormAjustesStock.BorraDePapeleraExecute(Sender: TObject);
var Cadena:String;
PathBk, cab, Det, sub:string;
begin
  inherited;
  if Not(CDSAjusteCab.IsEmpty)  Then
    begin
      PathBk :=(ExtractFilePath(ParamStr(0))+'ArchivosAjustesStkBk');
      Cadena :='AJ-['+Trim(RxCDeposito.Text)+']'+dbeMuestraDeposito.Text +'-'+CDSAjusteCabNROCPBTE.Value;
      cab:=PathBk+'\'+Cadena+'-Cab.XML';
      Det:=PathBk+'\'+Cadena+'-Det.XM_';
      sub:=PathBk+'\'+Cadena+'-Sub.XM_';
      DeleteFile(cab);
      DeleteFile(det);
      DeleteFile(Sub);


    end;

end;

procedure TFormAjustesStock.BorrarExecute(Sender: TObject);
begin
  if DMMain_FD.UsuarioAdministrador=True then
    begin
      if (MessageDlg('Está por hacer una opreación de borrado.. Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes) Then
        if Not(CDSAjusteCab.IsEmpty) Then
          begin
            DMMain_FD.fdcGestion.StartTransaction;
            try
             // **** Ingreso en el Log File  **************
              CopiaPapeleraAjuste.Execute;
              DMMain_FD.LogFileFD(0,4,'Borrado Ajuste Stock: '+ CDSAjusteCabNROCPBTE.Value+'('+CDSAjusteCabID_RTO.AsString+')'+
                                      ' Origne: '+ 'Ajuste',
                                      'AJUSTE');
             // ******************************************


              CDSAjusteCab.Delete;
              CDSAjusteCab.ApplyUpdates(0);

              DMMain_FD.fdcGestion.Commit;

              CDSAjusteCab.close;
              CDSAjusteCab.Params.ParamByName('id').Clear;
              CDSAjusteCab.Open;

              CDSAjusteDet.Close;
              CDSAjusteDet.Params.ParamByName('id_cab').Clear;
              CDSAjusteDet.Open;

              CDSAjusteSubDetalle.Close;
              CDSAjusteSubDetalle.Params.ParamByName('id').Clear;
              CDSAjusteSubDetalle.Open;
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
  //inherited;

end;

procedure TFormAjustesStock.BuscaSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    CDSAjusteCabSUCURSALSetText(CDSAjusteCabSUCURSAL, IntToStr(comBuscadorSucursal.id));
  CDSBuscaSucursal.Close;

end;

procedure TFormAjustesStock.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  FormBuscadorArticulos.Param1      := 1;
  FormBuscadorArticulos.Param2      := 3;
  FormBuscadorArticulos.Param3      := 3;
  FormBuscadorArticulos.Esquema     := -1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  if FormBuscadorArticulos.Visible = False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
  begin
    IF CDSAjusteDet.State = dsBrowse THEN
      CDSAjusteDet.Edit;
    CDSAjusteDetCodigoSetText(CDSAjusteDetCodigo, FormBuscadorArticulos.Codigo);
  end;
end;

procedure TFormAjustesStock.DBGrillaDetalleEditButtonClick(
  Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormAjustesStock.DBGrillaDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (DBGrillaDetalle.SelectedIndex < 3) THEN
        DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF (DBGrillaDetalle.DataSource.DataSet.Eof) and (Not(DSBase.State in [dsBrowse])) THEN
            DBGrillaDetalle.DataSource.DataSet.Append;
          DBGrillaDetalle.SelectedIndex := 0;
        END;
    END
  ELSE IF (Key = #10) THEN
    BEGIN
      Key := #0;
    //  DBGrillaDetalle.DataSource.DataSet.Edit;
      IF DBGrillaDetalle.SelectedField = CDSAjusteDetCODIGO
        THEN
        BuscarArticulo.Execute;
    END;

end;

procedure TFormAjustesStock.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  QBuscaDeposito.Close;
  QBuscaDeposito.Open;
  comBuscadorDeposito.Execute;
  if comBuscadorDeposito.rOk  Then
    CDSAjusteCabDEPOSITOSetText(CDSAjusteCabDEPOSITO,IntToStr(comBuscadorDeposito.Id));
  QBuscaDeposito.Close;
end;

procedure TFormAjustesStock.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  DMBuscadores.CDSBuscaComprob.Close;
  DMBuscadores.CDSBuscaComprob.CommandText:='';
  DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal = :suc and ' +
                                            ' compra_venta = ''V'' and (tipo_comprob= ''AS'') ';

  DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value         := CDSAjusteCabSUCURSAL.Value;

  DMBuscadores.CDSBuscaComprob.Open;

  if Not(Assigned(FormBuscaComprobantes)) then
    FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;

  if FormBuscaComprobantes.ModalResult=mrOk Then
    BEGIN
      CDSAjusteCabID_TIPOCOMPROBANTESetText(CDSAjusteCabID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
    END;

  DMBuscadores.CDSBuscaComprob.Close;

end;

procedure TFormAjustesStock.CDSAjusteCabSUCRTOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-(length(text)))+Text;
  CDSAjusteCabNroCpbte.AsString := CDSAjusteCabLETRA.AsString +
                                   CDSAjusteCabSUCRTO.AsString +
                                   CDSAjusteCabNUMRTO.AsString;

end;

procedure TFormAjustesStock.CDSAjusteCabNUMRTOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-(length(text)))+Text;
  CDSAjusteCabNroCpbte.AsString := CDSAjusteCabLETRA.AsString +
                                   CDSAjusteCabSUCRTO.AsString +
                                   CDSAjusteCabNUMRTO.AsString;
end;

procedure TFormAjustesStock.CDSAjusteCabPERSONAL_RETIRASetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=copy('000000',1,Sender.Size-Length(Text))+Text;;
      if not(AsignarEmpleado(Sender.AsString)) Then
        begin
          Sender.AsString := '';
          ShowMessage('Codigo No Valido');
          RxDBCodigo.SetFocus;
        end;
    end;
end;

procedure TFormAjustesStock.CDSAjusteCabSUCURSALSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if (text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarSucursal(Sender.AsInteger)) Then
        begin
          Sender.AsString:='';
          ShowMessage('Dato no Valido');
        end;
    end;
end;

procedure TFormAjustesStock.CDSAjusteDetCANTIDADSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=text;
  CDSAjusteDetCOSTO_TOTAL.AsFloat  := CDSAjusteDetCOSTO_UNITARIO.AsFloat * Sender.AsFloat;
  CDSAjusteDetPRECIO_TOTAL.AsFloat := CDSAjusteDetPRECIO_TOTAL.AsFloat * Sender.AsFloat;

  if (Abs(CDSAjusteDetPRESENT_CANTIDAD.AsFloat)>0) then
    CDSAjusteDetUNIDADES_STK.AsFloat:=Sender.AsFloat/CDSAjusteDetPRESENT_CANTIDAD.AsFloat;
  //if CDSAjusteDetCosto then
  
end;

procedure TFormAjustesStock.CDSAjusteDetCODIGOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if ((FormAjustesStock<>nil) and (FormAjustesStock.VerCodigoAlternativo1.Checked=True)) then
    Text:=Trim(CDSAjusteDetMUESTRACODALTERNATIVO.Value)
  else
    Text:=Trim(CDSAjusteDetCODIGO.Value);
end;

procedure TFormAjustesStock.CDSAjusteDetCODIGOSetText(Sender: TField;
  const Text: String);
VAR S,CodTxt,Aux: STRING;
Enter:Char;
begin
  Enter:=#13;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin

      AnsiReplaceStr(Text, #13, '');
      Sender.AsString := DMMain_FD.SearchCodigo(Text,DSAjusteDet,FormAjustesStock.VerCodigoAlternativo1.Checked);
      S:= Sender.AsString;

      IF AsignarArticulo(s) = False THEN
        BEGIN
         // Busqueda por codigo
          IF (Assigned(FormBuscadorArticulos)) THEN
            FreeAndNil(FormBuscadorArticulos);
          IF Not(Assigned(FormBuscadorArticulos)) THEN
            FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
          FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
          FormBuscadorArticulos.CampoNro          := 0;
          FormBuscadorArticulos.Param1            := 1;
          FormBuscadorArticulos.Param2            := 3;
          FormBuscadorArticulos.ListaPrecio       := ListaDePrecio;
          FormBuscadorArticulos.Esquema           := -1;
          FormBuscadorArticulos.Dato              := s;
          if FormBuscadorArticulos.Visible=False Then
            FormBuscadorArticulos.ShowModal;
          if FormBuscadorArticulos.Codigo<>'' Then
            begin
              IF CDSAjusteDet.State = dsBrowse THEN
                CDSAjusteDet.Edit;
              CDSAjusteDetCODIGOSetText(CDSAjusteDetCodigo,FormBuscadorArticulos.Codigo);
            end
          else
            Sender.AsString:='';
        END;
      if DMMain_FD.EncontroCodigoBarra Then
        begin
          if chSalteDetalle.Checked=False then
            DBGrillaDetalle.OnKeyPress(DBGrillaDetalle,Enter);
        end;
  end;
end;

procedure TFormAjustesStock.CDSAjusteCabDEPOSITOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo depósito no Válido');
        END;
     end;
end;

procedure TFormAjustesStock.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AutoSize:=False;
  CodigosSeries:=TStringList.Create;
  CodigosSeries.Clear;
  ArchivoIni                    := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_AjusteStock.ini');
  chSalteDetalle.Checked        := ArchivoIni.ReadBool('Modo', 'Modo', False);
  VerCodigoAlternativo1.Checked := ArchivoIni.ReadBool('codigo', 'codigo', False);
  SaltarUnidades1.Checked       := ArchivoIni.ReadBool('Modo', 'unidades', False);

  ArchivoIni.Free;


  AddClientDataSet(CDSAjusteCab,DSPAjusteCab);
  AddClientDataSet(CDSAjusteDet,DSPAjusteDet);
  AddClientDataSet(CDSAjusteSubDetalle,DSPAjusteSubDet);
  AddClientDataSet(CDSAjusteLote,DSPAjuteLote);

  QMotivos.Open;
  CDSAjusteCab.Open;
  CDSAjusteDet.Open;
  CDSAjusteSubDetalle.Open;
  CDSAjusteLote.Open;

  Tabla:='RTOMERCACAB';
  Campo:='id_rto';
  // Verifico la Opcion de Ver Stock y si vendo con stock cero
//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='VERSTOCK';
//  DMMain_FD.QOpciones.Open;
//  DMMain_FD.VerStock :=Copy(DMMain_FD.QOpciones.Fields[0].Value,1,1)='S';
//  DMMain_FD.QOpciones.Close;
 //**************************************************************************
  //****Asigno la Lista Por defecto o la lista asignada **********************
  //**************************************************************************
//  DMMain_FD.QListaPrecioPorDefecto.CLose;
//  DMMain_FD.QListaPrecioPorDefecto.Open;
//  if DMMain_FD.QListaPrecioPorDefecto.Fields[0].AsString<>'' Then
//    ListaDePrecio:=DMMain_FD.QListaPrecioPorDefecto.Fields[0].Value
//  else
//    begin
//      DMMain_FD.QPrimeraListaPrecios.Close;
//      DMMain_FD.QPrimeraListaPrecios.Open;
//      if DMMain_FD.QPrimeraListaPrecios.Fields[0].AsString<>'' Then
//         ListaDePrecio:=DMMain_FD.QPrimeraListaPrecios.Fields[0].Value;
//      DMMain_FD.QPrimeraListaPrecios.Close;
//    end;
//  DMMain_FD.QListaPrecioPorDefecto.CLose;

  ListaDePrecio                 := DMMain_FD.ListaPorDefecto;
  pcLotesSeries.ActivePageIndex := 0;
  pagLotes.TabVisible           := False;
  PagLotesIng.TabVisible        := False;
  var sDirectorio:string;
  sDirectorio      := ExtractFilePath(ParamStr(0))+'ArchivosAjustesStkBk';

  if IsDirEmpty(sDirectorio) then
    RestaurarDePapelera.ImageIndex:=11
  else
    RestaurarDePapelera.ImageIndex:=10;

end;

procedure TFormAjustesStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSAjusteCab.Close;
  CDSAjusteDet.Close;
  CDSAjusteSubDetalle.Close;
  CDSAjusteLote.Close;
  ArchivoIni             := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_AjusteStock.ini');
  ArchivoIni.WriteBool('Modo', 'Modo', chSalteDetalle.Checked);
  ArchivoIni.WriteBool('codigo', 'codigo', VerCodigoAlternativo1.Checked);
  ArchivoIni.WriteBool('Modo', 'unidades', SaltarUnidades1.Checked);
  ArchivoIni.Free;
  Action:=cafree;
end;

procedure TFormAjustesStock.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAjustesStock:=nil;
end;

procedure TFormAjustesStock.FormResize(Sender: TObject);
begin
  inherited;
  if FormAjustesStock<>nil then
    if FormAjustesStock.Width<>928 then
      FormAjustesStock.Width:=928;

end;

procedure TFormAjustesStock.CDSAjusteCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSAjusteCabID_RTO.Value         :=ibgAjusteCab.IncrementFD(1);
  CDSAjusteCabFECHA.AsDateTime     :=Date;
  CDSAjusteCabSUCURSALSetText(CDSAjusteCabSUCURSAL,IntToStr(SucursalPorDefecto));
  CDSAjusteCabDEPOSITOSetText(CDSAjusteCabDEPOSITO,IntToStr(DepositoPorDefecto));
  CDSAjusteCabAJUSTE_CERO_STOCK.Value:= 'N';
  CDSAjusteCabUSUARIO.Value          := DMMain_FD.UsuarioActivo;
  CDSAjusteCabFECHA_HORA.AsDateTime  := now;
  CDSAjusteCabMOTIVO.Value           := 0;
  CDSAjusteCabID_INVENTARIO.Value    := -1;
  CDSAjusteCabMUESTRAPERSONAL.Value  := '';
  CDSAjusteCabPERSONAL_RETIRA.Value  := '';
  CDSAjusteCabTOTAL.AsFloat          := 0;
  CDSAjusteCabTOTAL_VTA.AsFloat      := 0;
end;

procedure TFormAjustesStock.CDSAjusteDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSAjusteDetID_RTO_DET.Value           := ibgAjusteDet.IncrementFD(1);
  CDSAjusteDetID_RTO_CAB.Value           := CDSAjusteCabID_RTO.Value;
  CDSAjusteDetFECHA.Value                := CDSAjusteCabFECHA.Value;
  CDSAjusteDetDEPOSITO.value             := CDSAjusteCabDEPOSITO.Value;
  CDSAjusteDetTIPOCPBTE.Value            := CDSAjusteCabTIPOCPBTE.Value;
  CDSAjusteDetCLASECPBTE.Value           := CDSAjusteCabCLASECPBTE.Value;
  CDSAjusteDetNROCPBTE.Value             := CDSAjusteCabNROCPBTE.Value;
  CDSAjusteDetCANTIDAD.AsFloat           := 0;
  CDSAjusteDetCOSTO_UNITARIO.AsFloat     := 0;
  CDSAjusteDetCOSTO_TOTAL.AsFloat        := 0;
  CDSAjusteDetPRESENT_CANTIDAD.AsFloat   := 1;
  CDSAjusteDetUNIDADES_STK.AsFloat       := 0;
  CDSAjusteDetCONTROL_TRAZABILIDAD.Value := 'N';
  CDSAjusteDetID_MOTIVO.Value            := CDSAjusteCabMOTIVO.Value;
end;

procedure TFormAjustesStock.CDSAjusteDetUNIDADES_STKSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if (Sender.AsFloat>0) and (CDSAjusteDetCANTIDAD.AsFloat<0) then
    Sender.AsFloat:=Sender.AsFloat*-1;
end;

procedure TFormAjustesStock.CDSAjusteLoteID_LOTESetText(Sender: TField;
  const Text: string);
var Estado: TValueRelationship;
begin
  if (Text<>'') and (Text<>#13) then
    BEGIN
      if CDSAjusteLote.State=dsBrowse then
        CDSAjusteLote.Edit;
      Sender.AsString:=Text;
      DMMain_FD.QStockLote.Close;
      DMMain_FD.QStockLote.ParamByName('idlote').Value:=Sender.AsInteger;
      DMMain_FD.QStockLote.Open;
      CDSAjusteLoteID_LOTE.Value  := Sender.AsInteger;
      CDSAjusteLoteDEPOSITO.Value := CDSAjusteCabDEPOSITO.Value;
      CDSAjusteLoteLOTE.Value     := DMMain_FD.QStockLoteLote.Value;
      CDSAjusteLoteDESPACHO.Value := DMMain_FD.QStockLoteDESPACHO.Value;
      CDSAjusteLoteFECHA.Value    := DMMain_FD.QStockLoteFECHA_ENTRADA.AsDateTime;
      CDSAjusteLoteFECHAVTO.Value := DMMain_FD.QStockLoteFECHA_VTO.AsDateTime;

      if CDSAjusteDetCANTIDAD.Value>0 then
        begin
          Estado:= Math.CompareValue(CDSAjusteDetCANTIDAD.AsFloat,DMMain_FD.QStockLoteSALDO.AsFloat,0.02);
          if (Estado=EqualsValue) then
            CDSAjusteLoteCANTIDAD.AsFloat:=DMMain_FD.QStockLoteSALDO.AsFloat
          else
            if (estado=GreaterThanValue) then
              begin
                CDSAjusteLoteCANTIDAD.AsFloat:=DMMain_FD.QStockLoteSALDO.AsFloat;
                if CDSAjusteDet.State=dsBrowse Then CDSAjusteDet.Edit;
                CDSAjusteDetCantidadSetText(CDSAjusteDetCantidad,FloatToStr(DMMain_FD.QStockLoteSALDO.AsFloat));
              end
            else
              if (estado=LessThanValue) then
                CDSAjusteLoteCANTIDAD.AsFloat:=CDSAjusteDetCANTIDAD.AsFloat;
        end
      ELSE
        if CDSAjusteDetCANTIDAD.Value<0 then
          begin
            CDSAjusteLoteCANTIDAD.AsFloat:=CDSAjusteDetCANTIDAD.AsFloat;
          end
    END;
end;

procedure TFormAjustesStock.CDSAjusteLoteNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSAjusteLoteID.Value           := IBGAjusteLote.IncrementFD(1);
  CDSAjusteLoteID_DET.Value       := CDSAjusteDetID_RTO_DET.Value;
  CDSAjusteLoteID_FC.Value        := CDSAjusteDetID_RTO_CAB.Value;
  CDSAjusteLoteCODIGO.Value       := CDSAjusteDetCODIGO.Value;
  CDSAjusteLoteLOTE.Value         := '';
  CDSAjusteLoteDESPACHO.Value     := '';
  CDSAjusteLoteCANTIDAD.Value     := CDSAjusteDetCANTIDAD.Value;
  CDSAjusteLoteFECHA.Value        := CDSAjusteDetFECHA.AsDateTime;
  CDSAjusteLoteFECHAVTO.Value     := CDSAjusteDetFECHA.AsDateTime;
  CDSAjusteLoteDEPOSITO.Value     := CDSAjusteDetDEPOSITO.Value;
  CDSAjusteLoteTIPO_COMPROB.Value := CDSAjusteDetTIPOCPBTE.Value;
  CDSAjusteLoteID_LOTE.Value      := -1;
end;

procedure TFormAjustesStock.BuscaEmpleadoExecute(Sender: TObject);
begin
  inherited;
  QBuscaEmpleados.Close;
  QBuscaEmpleados.Open;
  comBuscadorEmpleado.Execute;
    if comBuscadorEmpleado.rOk Then
      CDSAjusteCabPERSONAL_RETIRASetText(CDSAjusteCabPERSONAL_RETIRA,comBuscadorEmpleado.id);
  QBuscaEmpleados.Close;
end;

procedure TFormAjustesStock.BuscaLotesExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaLotes.Close;
  CDSBuscaLotes.Params.ParamByName('Codigo').Value:=CDSAjusteDetCODIGO.Value;
  CDSBuscaLotes.Open;
  if (CDSAjusteDetCONTROL_TRAZABILIDAD.Value='S') Then
    begin
      comBuscadorLote.Execute;
      if comBuscadorLote.rOk Then
        CDSAjusteLoteID_LOTESetText(CDSAjusteLoteID_LOTE,IntToStr(comBuscadorLote.Id));
    end;
  CDSBuscaLotes.Close;
end;

procedure TFormAjustesStock.AgregarExecute(Sender: TObject);
begin
  CDSAjusteCab.Close;
  CDSAjusteCab.Params.ParamByName('id').Clear;
  CDSAjusteCab.Open;
  CDSAjusteDet.Close;
  CDSAjusteDet.Params.ParamByName('id_cab').Clear;
  CDSAjusteDet.OPen;
  CDSAjusteSubDetalle.Close;
  CDSAjusteSubDetalle.Params.ParamByName('id').Clear;
  CDSAjusteSubDetalle.Open;
  if Lista<>nil then
    FreeAndNil(lista);
  inherited;
  Importado:=False;
  CpbteNuevo               :='S';
  CodigosSeries.Clear;
  if FormAjustesStock.Visible then
    dbeFecha.SetFocus;
end;

procedure TFormAjustesStock.ConfirmaExecute(Sender: TObject);
VAR Control:String;
begin
  if CDSAjusteDet.IsEmpty then
    RAISE Exception.Create('No hay detalle......!!!!');

  if dbgExitencias.Visible=True Then
    dbgExitencias.Visible:=False;

  if (dbeFecha.Text<>'') and (RxCSucursal.Text<>'') and
   (dbePrefijo.Text<>'') and
   (dbeNum.Text<>'') and
   (RxCDeposito.Text<>'') then
      begin
        try
          if (DMMain_FD.ControlaSerie) and (Not(ControlSerie))  then
            RAISE Exception.Create('La cantidad de Items debe ser igual a la cantidad de codigo barras.....!!!!');
       // CDSAjusteCab.Post;
          if CDSAjusteDet.State<>dsBrowse Then
            CDSAjusteDet.Post;
          if CDSAjusteSubDetalle.State<>dsBrowse Then
            CDSAjusteSubDetalle.Post;
          VerificadorDetalle;
          if CDSAjusteLote.State<>dsBrowse Then
            CDSAjusteLote.Post;

          if (CpbteNuevo='S') and (Not(ControlLotes)) Then
            RAISE Exception.Create('Hay Lotes sin Asignar.....!!!!');
        finally
        end;

        DatoNew   := IntToStr(CDSAjusteCabID_RTO.Value);
        TipoCpbte := CDSAjusteCabTIPOCPBTE.Value;

        CopiaPapeleraAjuste.Execute;
        inherited;

        Recuperar.Execute;

        IF (DSBase.DataSet.IsEmpty) then
          begin
              // **** Ingreso en el Log File  **************
             DMMain_FD.LogFileFD(1,4,'Ajuste Stock - Transaccion No FINALIZADA'+ CDSAjusteCabNROCPBTE.Value+'('+CDSAjusteCabID_RTO.AsString+')'+
                                     'Fecha:'+DateToStr(CDSAjusteCabFECHA.AsDateTime)+
                                     ' Origen: '+ 'Ajuste',
                                     'AJUSTE');
             // ******************************************

            ShowMessage('No se Gravo la Operacion... ver copias...');
          end
        else
          BorraDePapelera.Execute;

      // Borrardo de Archivos de Transferencias .....
          if ArchCabecera<>'' then
            begin
              DeleteFile(ArchCabecera);
              DeleteFile(ArchDetalle);
              DeleteFile(ArchSubDet);
            end;
      //*********************************

        if TForm(Self.Owner).Name='FormNotas_Cambio' then
         Imprime:='N';
        if TForm(Self.Owner).Name='FormPanelImportacionAjustesStock' then
         Imprime:='N';

        IF (Imprime='S') and Not(DSBase.DataSet.IsEmpty) then
          if (MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0)= mrYes) THEN
            Imprimir.Execute;// ShowMessage('hacer impresion');//   Imprimir.Execute;
        if FormAjustesStock.Visible then
          btNuevo.SetFocus;
        if (GenerarArchivoAjStk) and
           (Not(CDSAjusteCab.IsEmpty)) and (Importado=False) then
            EnviarArchivoXML.Execute;

      end
   else
     BEGIN
       ShowMessage('Datos en la Cabecera Incompletos o depósitos mal cargados....');
       pnCabecera.Enabled := True;
       dbeFecha.SetFocus;
     END;

end;

procedure TFormAjustesStock.DBGrillaDetalleColEnter(Sender: TObject);
begin
  inherited;
  IF DBGrillaDetalle.SelectedIndex = 2 THEN
    begin
      if DBGrillaDetalle.DataSource.DataSet.FieldByName('Codigo').AsString<>'' Then
        begin
          CDSStock.Close;
          CDSStock.Params.ParamByName('Codigo').Value := DBGrillaDetalle.DataSource.DataSet.FieldByName('Codigo').Value;
          CDSStock.Params.ParamByName('Deposito').Value := CDSAjusteCabDEPOSITO.Value;
          CDSStock.Open;
          DBGrillaDetalle.Columns[2].PickList.Clear;
          DBGrillaDetalle.Columns[2].PickList.Add(CDSStockUNIDAD.Value);
          DBGrillaDetalle.Columns[2].PickList.Add(CDSStockUNIDAD_COMPRA.Value);
          CDSStock.Close;
      end;
    end
  ELSE
    IF DBGrillaDetalle.SelectedIndex = 4 THEN
       DBGrillaDetalle.SelectedIndex := 3;

   if DBGrillaDetalle.SelectedIndex=3 Then
    begin
      if (DMMain_FD.VerStock) and (CDSAjusteDetAFECTASTOCK.Value='S') and (Not(DSBase.State in [dsBrowse])) Then
        begin
          CDSExistencia.Close;
          CDSExistencia.Params.ParamByName('Unidad').Value   := 'V';
          CDSExistencia.Params.ParamByName('Codigo').Value   := CDSAjusteDetCODIGO.Value;
          CDSExistencia.Params.ParamByName('fisico').Value   := 1;
          CDSExistencia.Params.ParamByName('usuario').AsFloat:= DMMain_FD.UsuarioActivoId;
          CDSExistencia.Open;
          dbgExitencias.Visible := True;
        end;
    end
  else
    dbgExitencias.Visible:=False;
 
end;

procedure TFormAjustesStock.DBGrillaDetalleDblClick(Sender: TObject);
begin
  inherited;
  if Trim(CDSAjusteDetCODIGO.Value)<>'' then
    if DSBase.State=dsBrowse then
      begin
        if Not(Assigned(FormStock_2)) then
          FormStock_2:=TFormStock_2.Create(self);
        FormStock_2.DatoNew:=Trim(CDSAjusteDetCODIGO.AsString);
        FormStock_2.Recuperar.Execute;
        FormStock_2.Show;
      end;
end;

procedure TFormAjustesStock.DBGrillaDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  DBGrillaDetalle.Canvas.Font.Style:=[];
  if DBGrillaDetalle.DataSource.DataSet.FieldByName('CONTROL_TRAZABILIDAD').Value='S' Then
    DBGrillaDetalle.Canvas.Font.Style:=[fsBold]
  else
    DBGrillaDetalle.Canvas.Font.Style:=[];
 // DBGrillaDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormAjustesStock.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.Tag := 12;
  FormBuscaCpbte.TipoCpbte1:='AS';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    begin
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    end;  
end;

procedure TFormAjustesStock.DBGrillaDetalleEnter(Sender: TObject);
begin
  inherited;
  if (dbeFecha.Text='') or (dbeSucursal.Text='') or
     (CDSAjusteCabMUESTRACOMPROBANTE.AsString='') or
     (dbePrefijo.Text='') or
     (dbeNum.Text='') or (dbeMuestraDeposito.Text='') or
     (Trim(copy(dbeFecha.Text,1,2)) = '') then
  begin
    ShowMessage('Faltan datos en la cabecera.....!!!');
    dbeFecha.SetFocus;
  end
  else
  DBGrillaDetalle.SelectedIndex:=0;


end;

procedure TFormAjustesStock.ImportarDetalleExecute(Sender: TObject);
var i:Integer;
Cant,CantidadStr,Codigo:String;
Cantidad,Ajuste: extended;
begin
  inherited;
   if DSBase.State in [dsInsert] then
    begin
      lista:=TStringList.Create;
      if MessageDlg('el archivo debe tener las columnas codigo,fisico y el nombre de la hoja debe ser hoja1...',mtConfirmation,mbYesNo,0)=mrYes then
      if OpenDialog.Execute then
        if OpenDialog.FileName<>'' then
          begin
            Screen.Cursor:=crHourGlass;
            ADOConnection.Connected:=False;
            ADODSDetalelleXLS.Active:=False;
            ADOConnection.ConnectionString:='';
            //ADODataSet1.CommandText:='';
            ADOConnection.ConnectionString:=
            'Provider=Microsoft.Jet.OLEDB.4.0; '+
            'User ID=Admin; '+
            'Data Source='+OpenDialog.FileName+'; '+
            'Mode=Share Deny None;Extended Properties=Excel 8.0; '+
            'Persist Security Info=False; '+
            'Jet OLEDB:System database=""; '+
            'Jet OLEDB:Registry Path=""; '+
            'Jet OLEDB:Database Password=""; '+
            'Jet OLEDB:Engine Type=35; '+
            'Jet OLEDB:Database Locking Mode=0; '+
            'Jet OLEDB:Global Partial Bulk Ops=2; '+
            'Jet OLEDB:Global Bulk Transactions=1; '+
            'Jet OLEDB:New Database Password=""; '+
            'Jet OLEDB:Create System Database=False; '+
            'Jet OLEDB:Encrypt Database=False; '+
            'Jet OLEDB:Don''t Copy Locale on Compact=False; '+
            'Jet OLEDB:Compact Without Replica Repair=False; '+
            'Jet OLEDB:SFP=False ';

            ADODSDetalelleXLS.Connection  := ADOConnection;
            ADODSDetalelleXLS.CommandType := cmdTableDirect;
            ADODSDetalelleXLS.CommandText := DMMain_FD.NombreHojaExcel(OpenDialog.FileName);
            ADOConnection.Connected       := True;
            ADODSDetalelleXLS.Active      := True;
            ADODSDetalelleXLS.First;
            Cancelado:=False;
            i:=0;cant:=IntToStr(ADODSDetalelleXLS.RecordCount-1);
            while not(ADODSDetalelleXLS.Eof) and (cancelado=False) do
              begin
                sbEstado.SimpleText:='Procesando Reg:'+IntToStr(i)+'/'+cant;
                i:=i+1;
                Application.ProcessMessages;
                CantidadStr := ADODSDetalelleXLS.FieldByName('fisico').AsString;
                StringReplace(CantidadStr,',','',[rfReplaceAll]);
                if CantidadStr<>'' then
                  Cantidad := StrToFloat(CantidadStr)
                else
                  cantidad:=0;
                Cantidad:=RoundTo(Cantidad,-3);
                if Not(IsZero(Cantidad)) then
                  begin
                    if VerCodigoAlternativo1.Checked then
                      begin
                        QBuscaXAlternativo.Close;
                        QBuscaXAlternativo.ParamByName('codigo').Value:=Trim(ADODSDetalelleXLS.FieldByName('codigo').AsString);
                        QBuscaXAlternativo.Open;
                        if QBuscaXAlternativoCODIGO_STK.AsString<>'' then
                          codigo:= QBuscaXAlternativoCODIGO_STK.AsString;
                      end
                    else
                      Codigo:= Trim(ADODSDetalelleXLS.FieldByName('codigo').AsString);


                    Codigo:= Copy('00000000',1,8-Length(Codigo))+Codigo;

                    CDSStock.Close;
                    CDSStock.Params.ParamByName('Codigo').Value   := Codigo;
                    CDSStock.Params.ParamByName('Deposito').Value := CDSAjusteCabDEPOSITO.Value;
                    CDSStock.Open;
                    if CDSStockCODIGO_STK.AsString<>'' then
                      begin
                        CDSAjusteDet.Append;
                        CDSAjusteDetCODIGOSetText(CDSAjusteDetCODIGO,ADODSDetalelleXLS.FieldByName('codigo').AsString);
                        CDSAjusteDetCANTIDADSetText(CDSAjusteDetCANTIDAD,FormatFloat('0.000', Cantidad));
                      end
                    else
                      begin
                        lista.Add(ADODSDetalelleXLS.FieldByName('codigo').AsString+'-'+
                                  FormatFloat('0,00',ADODSDetalelleXLS.FieldByName('fisico').AsFloat) );
                      end;
                    CDSStock.Close;
                  end;
                ADODSDetalelleXLS.Next;
              end;
            if cancelado=True then
              begin
                CDSAjusteDet.Close;
                CDSAjusteDet.Params.ParamByName('id_cab').Clear;
                CDSAjusteDet.OPen;
                CDSAjusteSubDetalle.Close;
                CDSAjusteSubDetalle.Params.ParamByName('id').Clear;
                CDSAjusteSubDetalle.Open;
              end;
            Application.ProcessMessages;
            ADODSDetalelleXLS.Close;
            ADOConnection.Connected:=False;
          end;
    end;
  Screen.Cursor:=crDefault;

end;

procedure TFormAjustesStock.ImportarExcelCompensadoExecute(Sender: TObject);
var i:Integer;
Cant,CantidadStr,Codigo:String;
Cantidad,Ajuste: extended;
Estado: TValueRelationship;
begin
  inherited;
  if DSBase.State in [dsInsert] then
    begin
      lista:=TStringList.Create;
      if MessageDlg('el archivo debe tener las columnas codigo,fisico y el nombre de la hoja debe ser hoja1...',mtConfirmation,mbYesNo,0)=mrYes then
      if OpenDialog.Execute then
        if OpenDialog.FileName<>'' then
          begin
            Screen.Cursor:=crHourGlass;
            ADOConnection.Connected:=False;
            ADODSDetalelleXLS.Active:=False;
            ADOConnection.ConnectionString:='';
            //ADODataSet1.CommandText:='';
            ADOConnection.ConnectionString:=
            'Provider=Microsoft.Jet.OLEDB.4.0; '+
            'User ID=Admin; '+
            'Data Source='+OpenDialog.FileName+'; '+
            'Mode=Share Deny None;Extended Properties=Excel 8.0; '+
            'Persist Security Info=False; '+
            'Jet OLEDB:System database=""; '+
            'Jet OLEDB:Registry Path=""; '+
            'Jet OLEDB:Database Password=""; '+
            'Jet OLEDB:Engine Type=35; '+
            'Jet OLEDB:Database Locking Mode=0; '+
            'Jet OLEDB:Global Partial Bulk Ops=2; '+
            'Jet OLEDB:Global Bulk Transactions=1; '+
            'Jet OLEDB:New Database Password=""; '+
            'Jet OLEDB:Create System Database=False; '+
            'Jet OLEDB:Encrypt Database=False; '+
            'Jet OLEDB:Don''t Copy Locale on Compact=False; '+
            'Jet OLEDB:Compact Without Replica Repair=False; '+
            'Jet OLEDB:SFP=False ';
            ADODSDetalelleXLS.Connection  := ADOConnection;
            ADODSDetalelleXLS.CommandType := cmdTableDirect;
            ADODSDetalelleXLS.CommandText := 'Hoja1$';
            ADOConnection.Connected       := true;
            ADODSDetalelleXLS.Active      := True;
            ADODSDetalelleXLS.First;
            CDSAjusteCabMOTIVO.Value      := 3;
            i:=0;cant:=IntToStr(ADODSDetalelleXLS.RecordCount-1);
            Cancelado:=False;
            while not(ADODSDetalelleXLS.Eof) and (cancelado=False) do
              begin
                sbEstado.SimpleText:='Procesando Reg:'+IntToStr(i)+'/'+cant;
                i:=i+1;
                Application.ProcessMessages;
                CantidadStr := Trim(ADODSDetalelleXLS.FieldByName('fisico').AsString);
                if CantidadStr='' Then CantidadStr:='0';
                if VerCodigoAlternativo1.Checked then
                  begin
                    QBuscaXAlternativo.Close;
                    QBuscaXAlternativo.ParamByName('codigo').Value:=Trim(ADODSDetalelleXLS.FieldByName('codigo').AsString);
                    QBuscaXAlternativo.Open;
                    if QBuscaXAlternativoCODIGO_STK.AsString<>'' then
                      codigo:= QBuscaXAlternativoCODIGO_STK.AsString;
                   end
                else
                  Codigo:= Trim(ADODSDetalelleXLS.FieldByName('codigo').AsString);
                Codigo:= Copy('00000000',1,8-Length(Codigo))+Codigo;

                CDSStock.Close;
                CDSStock.Params.ParamByName('Codigo').Value   := Codigo;
                CDSStock.Params.ParamByName('Deposito').Value := CDSAjusteCabDEPOSITO.Value;
                CDSStock.Open;

                if CDSStockCODIGO_STK.AsString<>'' then
                  begin
                    StringReplace(CantidadStr,',','',[rfReplaceAll]);
                    if CantidadStr<>'' then
                      Cantidad := StrToFloat(CantidadStr)
                    else
                    cantidad:=0;
                    if (Cantidad > CDSStockMUESTRAFISICO.AsFloat) then
                      Ajuste:= Cantidad - CDSStockMUESTRAFISICO.AsFloat
                    else
                      if (Cantidad < CDSStockMUESTRAFISICO.AsFloat) then
                        Ajuste := cantidad - CDSStockMUESTRAFISICO.AsFloat
                      else
                        begin
                          Estado:=CompareValue(Cantidad,CDSStockMUESTRAFISICO.AsFloat);
                          if (Estado=EqualsValue) Then Ajuste := 0;
                        end;
                    Ajuste:=RoundTo(Ajuste,-3);
                    if Not(IsZero(Ajuste)) then
                      begin
                        CDSAjusteDet.Append;
                        CDSAjusteDetCODIGOSetText(CDSAjusteDetCODIGO,codigo);
                        CDSAjusteDetCANTIDADSetText(CDSAjusteDetCANTIDAD,FormatFloat('0.000', Ajuste));
                      end
                    else
                      begin
                        lista.Add(codigo+'-'+ FormatFloat('0,00',ADODSDetalelleXLS.FieldByName('fisico').AsFloat) );
                      end;
                  end
                else
                  begin
                    lista.Add(codigo+'-'+FormatFloat('0,00',ADODSDetalelleXLS.FieldByName('fisico').AsFloat) );
                  end;

                CDSStock.Close;
                ADODSDetalelleXLS.Next;
              end;
            if cancelado=True then
              begin
                CDSAjusteDet.Close;
                CDSAjusteDet.Params.ParamByName('id_cab').Clear;
                CDSAjusteDet.OPen;
                CDSAjusteSubDetalle.Close;
                CDSAjusteSubDetalle.Params.ParamByName('id').Clear;
                CDSAjusteSubDetalle.Open;
              end;

            Application.ProcessMessages;
            ADODSDetalelleXLS.Close;
            ADOConnection.Connected:=False;
          end;
    end;
  Screen.Cursor:=crDefault;

end;

procedure TFormAjustesStock.ImportarExcelCompFechaExecute(Sender: TObject);
var i:Integer;
Cant,CantidadStr,Codigo:String;
Cantidad,Ajuste: extended;
Estado: TValueRelationship;
begin
  inherited;
  if DSBase.State in [dsInsert] then
    begin
      lista:=TStringList.Create;
      if MessageDlg('el archivo debe tener las columnas codigo,fisico y el nombre de la hoja debe ser hoja1...',mtConfirmation,mbYesNo,0)=mrYes then
      if OpenDialog.Execute then
        if OpenDialog.FileName<>'' then
          begin
            Screen.Cursor:=crHourGlass;
            ADOConnection.Connected:=False;
            ADODSDetalelleXLS.Active:=False;
            ADOConnection.ConnectionString:='';
            //ADODataSet1.CommandText:='';
            ADOConnection.ConnectionString:=
            'Provider=Microsoft.Jet.OLEDB.4.0; '+
            'User ID=Admin; '+
            'Data Source='+OpenDialog.FileName+'; '+
            'Mode=Share Deny None;Extended Properties=Excel 8.0; '+
            'Persist Security Info=False; '+
            'Jet OLEDB:System database=""; '+
            'Jet OLEDB:Registry Path=""; '+
            'Jet OLEDB:Database Password=""; '+
            'Jet OLEDB:Engine Type=35; '+
            'Jet OLEDB:Database Locking Mode=0; '+
            'Jet OLEDB:Global Partial Bulk Ops=2; '+
            'Jet OLEDB:Global Bulk Transactions=1; '+
            'Jet OLEDB:New Database Password=""; '+
            'Jet OLEDB:Create System Database=False; '+
            'Jet OLEDB:Encrypt Database=False; '+
            'Jet OLEDB:Don''t Copy Locale on Compact=False; '+
            'Jet OLEDB:Compact Without Replica Repair=False; '+
            'Jet OLEDB:SFP=False ';
            ADODSDetalelleXLS.Connection:=ADOConnection;
            ADODSDetalelleXLS.CommandType:=cmdTableDirect;
            ADODSDetalelleXLS.CommandText:='Hoja1$';
            ADOConnection.Connected:=true;
            ADODSDetalelleXLS.Active:=True;
            ADODSDetalelleXLS.First;
            CDSAjusteCabMOTIVO.Value:=3;
            i:=0;cant:=IntToStr(ADODSDetalelleXLS.RecordCount-1);
            Cancelado:=False;
            while not(ADODSDetalelleXLS.Eof) and (cancelado=False) do
              begin
                sbEstado.SimpleText:='Procesando Reg:'+IntToStr(i)+'/'+cant;
                i:=i+1;
                Application.ProcessMessages;
                CantidadStr := Trim(ADODSDetalelleXLS.FieldByName('fisico').AsString);
                if CantidadStr='' Then CantidadStr:='0';

                if VerCodigoAlternativo1.Checked then
                  begin
                    QBuscaXAlternativo.Close;
                    QBuscaXAlternativo.ParamByName('codigo').Value:=Trim(ADODSDetalelleXLS.FieldByName('codigo').AsString);
                    QBuscaXAlternativo.Open;
                    if QBuscaXAlternativoCODIGO_STK.AsString<>'' then
                      codigo:= QBuscaXAlternativoCODIGO_STK.AsString;
                  end
                else
                  Codigo:= Trim(ADODSDetalelleXLS.FieldByName('codigo').AsString);

                Codigo:= Copy('00000000',1,8-Length(Codigo))+Codigo;

                QStkUnit_al.Close;
                QStkUnit_al.ParamByName('Codigo').Value   := Codigo;
                QStkUnit_al.ParamByName('Fecha').AsDate   := CDSAjusteCabFECHA.AsDateTime;
                QStkUnit_al.ParamByName('Deposito').Value := CDSAjusteCabDEPOSITO.Value;
                QStkUnit_al.Open;

                if QStkUnit_alCODIGO_STK.AsString<>'' then
                  begin
                    StringReplace(CantidadStr,',','',[rfReplaceAll]);
                    if CantidadStr<>'' then
                      Cantidad := StrToFloat(CantidadStr)
                    else
                    cantidad:=0;
                    if (Cantidad > QStkUnit_alFISICO.AsFloat) then
                      Ajuste:= Cantidad - QStkUnit_alFISICO.AsFloat
                    else
                      if (Cantidad < QStkUnit_alFISICO.AsFloat) then
                        Ajuste := cantidad - QStkUnit_alFISICO.AsFloat
                      else
                        begin
                          Estado:=CompareValue(Cantidad,QStkUnit_alFISICO.AsFloat);
                          if (Estado=EqualsValue) Then Ajuste := 0;
                        end;
                    Ajuste:=RoundTo(Ajuste,-3);
                    if Not(IsZero(Ajuste)) then
                      begin
                        CDSAjusteDet.Append;
                        CDSAjusteDetCODIGOSetText(CDSAjusteDetCODIGO,codigo);
                        CDSAjusteDetCANTIDADSetText(CDSAjusteDetCANTIDAD,FormatFloat('0.000', Ajuste));
                      end
                    else
                      begin
                        lista.Add(codigo+'-'+ FormatFloat('0,00',ADODSDetalelleXLS.FieldByName('fisico').AsFloat) );
                      end;
                  end
                else
                  begin
                    lista.Add(codigo+'-'+FormatFloat('0,00',ADODSDetalelleXLS.FieldByName('fisico').AsFloat) );
                  end;

                QStkUnit_al.Close;
                ADODSDetalelleXLS.Next;
              end;
            if cancelado=True then
              begin
                CDSAjusteDet.Close;
                CDSAjusteDet.Params.ParamByName('id_cab').Clear;
                CDSAjusteDet.OPen;
                CDSAjusteSubDetalle.Close;
                CDSAjusteSubDetalle.Params.ParamByName('id').Clear;
                CDSAjusteSubDetalle.Open;
              end;

            Application.ProcessMessages;
            ADODSDetalelleXLS.Close;
            ADOConnection.Connected:=False;
          end;
    end;
  Screen.Cursor:=crDefault;

end;

procedure TFormAjustesStock.ImprimirExecute(Sender: TObject);
BEGIN

  QComprob.Close;
  QComprob.ParamByName('id').Value  := CDSAjusteCabID_TIPOCOMPROBANTE.Value;
  QComprob.ParamByName('suc').Value := CDSAjusteCabSUCURSAL.Value;
  QComprob.Open;

  frAjustes.PrintOptions.Printer:=PrNomListados;
  frAjustes.SelectPrinter;

  frAjustes.LoadFromFile(DMMain_FD.PathReportesCpbte + '\'+QComprobREPORTE.AsString);
  frAjustes.PrintOptions.Copies := QComprobCOPIAS.Value;

  QComprob.Close;

  //  frFactura.PrepareReport;
  frAjustes.ShowReport;
  btNuevo.SetFocus;
end;

procedure TFormAjustesStock.lbCargaLoteClick(Sender: TObject);
var Contador:Integer;
  I: Integer;
Sufijo,Prefijo:String;
begin
  inherited;
  if Not(Assigned(FormLoteSeriales)) then
    FormLoteSeriales:=TFormLoteSeriales.Create(Self);
  FormLoteSeriales.edCantidad.Text:=CDSAjusteDetCANTIDAD.AsString;
  FormLoteSeriales.ShowModal;
  if (FormLoteSeriales.ModalResult=mrOk) and (CDSAjusteDetCON_NRO_SERIE.AsString='S') then
    begin
      Sufijo := AnsiRightStr(FormLoteSeriales.Serial,4);
      Prefijo:= Copy(FormLoteSeriales.Serial,1,Length(FormLoteSeriales.Serial)-4);
      Contador:=FormLoteSeriales.Cantidad;
      for I := 0 to Contador do
        begin
          CDSAjusteSubDetalle.Append;
          if I=0 then
            CDSAjusteSubDetalleSERIESetText(CDSAjusteSubDetalleSERIE,FormLoteSeriales.Serial)
          else
            begin
              Sufijo:=IntToStr(StrToInt(Sufijo)+1);
              Sufijo:=Copy('000000',1,4-Length(Sufijo))+Sufijo;
              CDSAjusteSubDetalleSERIESetText(CDSAjusteSubDetalleSERIE,Prefijo+Sufijo)
            end;
        end;
    end;
end;

procedure TFormAjustesStock.LeerAjustesExecute(Sender: TObject);
var Nombre:String;
I,Origen,Destino:Integer;
P_Gravado,P_Exento,Importe_Iva,P_Total,P_ConIVA:Extended;
begin
  inherited;
  ArchCabecera:='';
  ArchDetalle :='';
  ArchSubDet  :='';

//  if DSBase.State in [dsInsert] then
    begin
      if Not(Assigned(FormImportacionAjustesStk)) then
        FormImportacionAjustesStk:=TFormImportacionAjustesStk.Create(self);
      FormImportacionAjustesStk.Directorio:=PathAjStock;// 'Ajustes';
      FormImportacionAjustesStk.ShowModal;
      if (FormImportacionAjustesStk.ModalResult=mrOk) then
        begin
          ArchCabecera:=FormImportacionAjustesStk.NombreArchivoCab;
          ArchDetalle :=FormImportacionAjustesStk.NombreArchivoDet;
          ArchSubDet  :=FormImportacionAjustesStk.NombreArchivoSub;

          // controlo si existe....
          QControlCpbteExistente.Close;
          QControlCpbteExistente.ParamByName('tipo').Value    :=FormImportacionAjustesStk.CDSCabecera.FieldByName('TIPOCPBTE').Value;
          QControlCpbteExistente.ParamByName('clase').Value   :=FormImportacionAjustesStk.CDSCabecera.FieldByName('CLASECPBTE').Value;
          QControlCpbteExistente.ParamByName('letra').Value   :=FormImportacionAjustesStk.CDSCabecera.FieldByName('LETRA').Value;
          QControlCpbteExistente.ParamByName('suc').Value     :=FormImportacionAjustesStk.CDSCabecera.FieldByName('SUCRTO').Value;
          QControlCpbteExistente.ParamByName('numero').Value  :=FormImportacionAjustesStk.CDSCabecera.FieldByName('NUMRTO').Value;
          QControlCpbteExistente.ParamByName('sucursal').Value:=FormImportacionAjustesStk.CDSCabecera.FieldByName('SUCURSAL').Value;

          QControlCpbteExistente.Open;

         // if QControlCpbteExistente.Fields[0].AsString<>'' then
         //   ShowMessage('Comprobante existente.... se cancela la Operacion...')
         // ELSE

          if QControlCpbteExistente.Fields[0].AsString<>'' then
            if MessageDlg('Comprobante existente.... Procesa igual?',TMsgDlgType.mtConfirmation,mbYesNo,0,mbNo)=mrYes Then
              begin
                Agregar.Execute;
                For i:=0 to FormImportacionAjustesStk.CDSCabecera.FieldCount-1 do
                  begin
                    if CDSAjusteCab.FindField(CDSAjusteCab.Fields[i].FieldName)<>nil Then
                      begin
                        Nombre:=FormImportacionAjustesStk.CDSCabecera.Fields[i].FieldName;
                        if Nombre='ID_TIPOCOMPROBANTE' then
                          CDSAjusteCabID_TIPOCOMPROBANTESetText(CDSAjusteCabID_TIPOCOMPROBANTE,FormImportacionAjustesStk.CDSCabecera.FieldByName(Nombre).AsString);
                        if (Nombre<>'ID_RTO') then
                          CDSAjusteCab.FieldByName(Nombre).Value:=FormImportacionAjustesStk.CDSCabecera.FieldByName(Nombre).Value;
                      end;
                  end;
                CDSAjusteCabNUMRTOSetText(CDSAjusteCabNUMRTO,FormImportacionAjustesStk.CDSCabecera.FieldByName('NUMRTO').AsString);
                CDSAjusteCabFECHA.AsDateTime := FormImportacionAjustesStk.CDSCabecera.FieldByName('FECHA').AsDateTime;

                FormImportacionAjustesStk.CDSDetalle.First;
                while not(FormImportacionAjustesStk.CDSDetalle.Eof) do
                  begin
                    CDSAjusteDet.Append;
                    For i:=0 to FormImportacionAjustesStk.CDSDetalle.FieldCount-1 do
                      begin
                        if CDSAjusteDet.FindField(FormImportacionAjustesStk.CDSDetalle.Fields[i].FieldName)<>nil Then
                          begin
                            Nombre:=FormImportacionAjustesStk.CDSDetalle.Fields[i].FieldName;
                            if (Nombre<>'ID_RTO_CAB') and (Nombre<>'ID_RTO_DET') Then
                            CDSAjusteDet.FieldByName(Nombre).Value:=FormImportacionAjustesStk.CDSDetalle.FieldByName(Nombre).Value;
                          end;
                      end;
                    CDSAjusteDet.Post;
                    FormImportacionAjustesStk.CDSSubDetalle.First;
                    while not(FormImportacionAjustesStk.CDSSubDetalle.Eof) do
                      begin
                        CDSAjusteSubDetalle.Append;
                        For i:=0 to FormImportacionAjustesStk.CDSSubDetalle.FieldCount-1 do
                          begin
                            if CDSAjusteSubDetalle.FindField(FormImportacionAjustesStk.CDSSubDetalle.Fields[i].FieldName)<>nil Then
                              begin
                                Nombre:=FormImportacionAjustesStk.CDSSubDetalle.Fields[i].FieldName;
                                if (Nombre<>'ID_RTOCAB') and (Nombre<>'ID_RTODET') then
                                CDSAjusteSubDetalle.FieldByName(Nombre).Value:=FormImportacionAjustesStk.CDSSubDet.FieldByName(Nombre).Value;
                              end;
                          end;
                        CDSAjusteSubDetalle.Post;
                      end;
                    FormImportacionAjustesStk.CDSDetalle.Next;
                  end;
                DBGrillaDetalle.SetFocus;
                Importado:=True;
              end;
        end;
      FreeAndNil(FormImportacionAjustesStk);
    end;
end;

procedure TFormAjustesStock.ModificarExecute(Sender: TObject);
begin
  if DMMain_FD.UsuarioAdministrador Then
    begin
      inherited;
      CpbteNuevo    :='N';
    end;
end;

procedure TFormAjustesStock.NextExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursal  ='+DSBase.DataSet.FieldByName('SUCURSAL').AsString +
             ' and letra     = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRA').AsString,'''');
  inherited;

end;

procedure TFormAjustesStock.Panel1DblClick(Sender: TObject);
begin
  inherited;
  frAjustes.DesignReport;
end;

procedure TFormAjustesStock.PrevExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursal  ='+DSBase.DataSet.FieldByName('SUCURSAL').AsString +
             ' and letra     = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRA').AsString,'''');

  inherited;

end;

procedure TFormAjustesStock.CDSAjusteCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if Text[1]<>#13 Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarComprobante(Sender.AsInteger)) Then
        begin
           ShowMessage('Dato no Valido');
           Sender.AsString:='';
        end;
      IF CDSAjusteCab.State=dsInsert Then
        UltimoComprobante;
     end;
end;

procedure TFormAjustesStock.RxCSucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSAjusteCabSUCURSAL.Clear;
      CDSAjusteCabID_TIPOCOMPROBANTE.Clear;
      CDSAjusteCabMUESTRASUCURSAL.Clear;
      CDSAjusteCabMUESTRACOMPROBANTE.Clear;
      CDSAjusteCabLETRA.Clear;
      CDSAjusteCabSUCRTO.Clear;
      CDSAjusteCabNUMRTO.Clear;
    end;
end;

procedure TFormAjustesStock.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSAjusteCabSUCURSAL.Clear;
      CDSAjusteCabID_TIPOCOMPROBANTE.Clear;
      CDSAjusteCabMUESTRASUCURSAL.Clear;
      CDSAjusteCabMUESTRACOMPROBANTE.Clear;
      CDSAjusteCabLETRA.Clear;
      CDSAjusteCabSUCRTO.Clear;
      CDSAjusteCabNUMRTO.Clear;
    end;
end;

procedure TFormAjustesStock.SaltarUnidades1Click(Sender: TObject);
begin
  inherited;
  SaltarUnidades1.Checked:=Not(SaltarUnidades1.Checked);
end;

procedure TFormAjustesStock.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frAjustes.DesignReport;
end;

procedure TFormAjustesStock.SumarExecute(Sender: TObject);
var p:TBookmark;
begin
  if CDSAjusteCab.State=dsBrowse then
    CDSAjusteCab.Edit;
  CDSAjusteCabTOTAL.AsFloat := 0;
  p:=CDSAjusteDet.GetBookmark;
  CDSAjusteDet.First;
  CDSAjusteDet.DisableControls;
  while not(CDSAjusteDet.Eof) do
    begin
      CDSAjusteCabTOTAL.AsFloat := CDSAjusteCabTOTAL.AsFloat +
                                   CDSAjusteDetCOSTO_TOTAL.AsFloat;
      CDSAjusteDet.Next;
    end;
  CDSAjusteDet.GotoBookmark(p);
  CDSAjusteDet.FreeBookmark(p);
  CDSAjusteDet.EnableControls;
end;

procedure TFormAjustesStock.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  Imprimir.Enabled          := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  EnviarArchivoXML.Enabled  := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  LeerAjustes.Enabled       := (DSBase.DataSet.State IN [dsBrowse]);
  Recalcular.Enabled        := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  CambiarFecha.Enabled      := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  DBGrillaDetalle.ReadOnly  := DSBase.DataSet.State IN [dsBrowse];
  dbgSeries.ReadOnly        := DSBase.DataSet.State IN [dsBrowse];
  Borrar.Enabled            := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  //pnPrincipal.Enabled       :=True;
  if (DSBase.State in [dsBrowse]) and (Not(DSbase.DataSet.IsEmpty)) Then
    begin
      pnPrincipal.Enabled       := True;
    end;
//  pnPrincipal.Enabled       :=(DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty))
  pnCabecera.Enabled        :=DSBase.DataSet.State=dsInsert;
  btGenerarDetalle.Enabled  :=DSBase.DataSet.State=dsInsert;
  RxCDeposito.Enabled       :=DMMain_FD.ModificaDeposito;
  DBGrillaDetalle.ReadOnly  :=DSBase.DataSet.State IN [dsBrowse];
 // if DMMain_FD.UsuarioAdministrador then
//    begin
//      Modificar.Enabled  :=DMMain_FD.UsuarioAdministrador;
//      Borrar.Enabled     :=DMMain_FD.UsuarioAdministrador;
//    end;

end;

procedure TFormAjustesStock.EnviarArchivoXMLExecute(Sender: TObject);
var Cadena:String;
begin
  inherited;
  if Not(CDSAjusteCab.IsEmpty)  Then
    begin
       if PathAjStock='' then
        begin
          PathAjStock:='C:\';
          if not DirectoryExists(ExtractFilePath(ParamStr(0))+'ArchivosAjustesStk') then
            CreateDir(ExtractFilePath(ParamStr(0))+'ArchivosAjustesStk');
          PathAjStock:=(ExtractFilePath(ParamStr(0))+'ArchivosAjustesStk');

        end;

      Cadena:='AJ-['+Trim(RxCDeposito.Text)+']'+dbeMuestraDeposito.Text +'-'+CDSAjusteCabNROCPBTE.AsString;
      QDepo_GeneraXML.Close;
      QDepo_GeneraXML.ParamByName('id').Value:=StrToInt(Trim(RxCDeposito.Text));
      QDepo_GeneraXML.Open;
      if QDepo_GeneraXMLGENERA_XML_COMUN.Value='S' then
        begin
         // *******  a la carpeta comun de Ajustes..... ***************
         CDSAjusteCab.SaveToFile(PathAjStock+'\'+Cadena+'-Cab.XML');
         CDSAjusteDet.SaveToFile(PathAjStock+'\'+Cadena+'-Det.XM_');
         CDSAjusteSubDetalle.SaveToFile(PathAjStock+'\'+Cadena+'-Sub.XM_');
         // *****************************************************************
        end;
      QDepo_GeneraXML.Close;
    end
  else
    ShowMessage('No Hay datos para exportar....');
  ShowMessage('Datos exportados....en '+PathAjStock);
end;

procedure TFormAjustesStock.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if Not(CDSAjusteDet.IsEmpty) then
    begin
      SaveDialog1.DefaultExt:='xls';
      SaveDialog1.FileName  :='DetalleAjustes';

      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
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

procedure TFormAjustesStock.RecalcularExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  DatoNew := CDSAjusteCabID_RTO.AsString;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    sbEstado.SimpleText:='Actualizando Costos';
    Application.ProcessMessages;
    spRecaculaCostos.Close;
    spRecaculaCostos.ParamByName('id').Value := CDSAjusteCabID_RTO.Value;
    spRecaculaCostos.ExecProc;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo actualizar los costos...');
  end;
  sbEstado.SimpleText:='';
  Application.ProcessMessages;
  Recuperar.Execute;
  Screen.Cursor:=crDefault;
end;

procedure TFormAjustesStock.RecuperarExecute(Sender: TObject);
var sDirectorio:String;
begin
  inherited;
  CDSAjusteCab.Close;
  CDSAjusteCab.Params.ParamByName('id').Value        := StrToInt(DatoNew);
  CDSAjusteCab.Open;
  CDSAjusteDet.Close;
  CDSAjusteDet.Params.ParamByName('id_cab').Value    := StrToInt(DatoNew);
  CDSAjusteDet.OPen;
  CDSAjusteSubDetalle.Close;
  CDSAjusteSubDetalle.Params.ParamByName('id').Value := StrToInt(DatoNew);
  CDSAjusteSubDetalle.Open;

//  CDSAjusteLote.IndexDefs.Clear;
//  CDSAjusteLote.MasterSource    := nil;
//  CDSAjusteLote.MasterFields    := '';
//  CDSAjusteLote.IndexFieldNames := '';

  CDSAjusteLote.Close;
  CDSAjusteLote.Params.ParamByName('id').Value       := StrToInt(DatoNew);//CDSAjusteDetID_RTO_DET.AsInteger;//
  CDSAjusteLote.Open;

  if Not(CDSAjusteLote.IsEmpty) then
    CDSAjusteLote.First;

  CDSAjusteLote.IndexFieldNames := 'ID_DET';
  CDSAjusteLote.MasterSource    := DSAjusteDet;
  CDSAjusteLote.MasterFields    := 'ID_RTO_DET';


  if CDSAjusteDetCONTROL_TRAZABILIDAD.Value='S' then
    begin
      if CDSAjusteDetCANTIDAD.Value<0 Then
        begin
          pagLotes.TabVisible   :=True;
          PagLotesIng.TabVisible:=False;
        end
      else
         begin
           pagLotes.TabVisible   :=False;
           PagLotesIng.TabVisible:=True;
         end;
    end;


  if dbgExitencias.Visible=True Then
    dbgExitencias.Visible:=False;
  //  wwCDSAjusteDet.First;
//  while not(wwCDSAjusteDet.Eof) do
//    begin
//      CDSAjusteSubDetalle.First;
//      while Not(CDSAjusteSubDetalle.Eof) do
//        begin
//           CodigosSeries.Add(CDSAjusteSubDetalleSERIE.Value);
//           CDSAjusteSubDetalle.Next;
//        end;
//      wwCDSAjusteDet.Next;
//    end;
//  wwCDSAjusteDet.First;

  pnPrincipal.Enabled:=true;
 // pnDetalle.Enabled:=true;
  FormAjustesStock.Caption:='Ajustes de Stock -- '+ CDSAjusteCabFECHA_HORA.AsString+'//'+Copy(CDSAjusteCabUSUARIO.AsString,1,15);
  pnCabecera.Enabled:=False;
  DatoNew:=''+DatoNew+'';

  sDirectorio      := ExtractFilePath(ParamStr(0))+'ArchivosAjustesStkBk';

  if IsDirEmpty(sDirectorio) then
    RestaurarDePapelera.ImageIndex:=11
  else
    RestaurarDePapelera.ImageIndex:=10;


end;

procedure TFormAjustesStock.RestaurarDePapeleraExecute(Sender: TObject);
var Nombre:String;
I,Origen,Destino:Integer;
P_Gravado,P_Exento,Importe_Iva,P_Total,P_ConIVA:Extended;
begin
  inherited;
  ArchCabecera:='';
  ArchDetalle :='';
  ArchSubDet  :='';

//  if DSBase.State in [dsInsert] then
    begin
      if Not(Assigned(FormImportacionAjustesStk)) then
        FormImportacionAjustesStk:=TFormImportacionAjustesStk.Create(self);
      FormImportacionAjustesStk.Directorio:=(ExtractFilePath(ParamStr(0))+'ArchivosAjustesStkBk');// 'Ajustes';
      FormImportacionAjustesStk.ShowModal;
      if (FormImportacionAjustesStk.ModalResult=mrOk) then
        begin
          ArchCabecera:=FormImportacionAjustesStk.NombreArchivoCab;
          ArchDetalle :=FormImportacionAjustesStk.NombreArchivoDet;
          ArchSubDet  :=FormImportacionAjustesStk.NombreArchivoSub;

          // controlo si existe....
          QControlCpbteExistente.Close;
          QControlCpbteExistente.ParamByName('tipo').Value    :=FormImportacionAjustesStk.CDSCabecera.FieldByName('TIPOCPBTE').Value;
          QControlCpbteExistente.ParamByName('clase').Value   :=FormImportacionAjustesStk.CDSCabecera.FieldByName('CLASECPBTE').Value;
          QControlCpbteExistente.ParamByName('letra').Value   :=FormImportacionAjustesStk.CDSCabecera.FieldByName('LETRA').Value;
          QControlCpbteExistente.ParamByName('suc').Value     :=FormImportacionAjustesStk.CDSCabecera.FieldByName('SUCRTO').Value;
          QControlCpbteExistente.ParamByName('numero').Value  :=FormImportacionAjustesStk.CDSCabecera.FieldByName('NUMRTO').Value;
          QControlCpbteExistente.ParamByName('sucursal').Value:=FormImportacionAjustesStk.CDSCabecera.FieldByName('SUCURSAL').Value;
          QControlCpbteExistente.Open;

         // if QControlCpbteExistente.Fields[0].AsString<>'' then
         //   ShowMessage('Comprobante existente.... se cancela la Operacion...')
         // ELSE

          if QControlCpbteExistente.Fields[0].AsString='' then
            if MessageDlg('.... Procesa Comprobante?',TMsgDlgType.mtConfirmation,mbYesNo,0,mbNo)=mrYes Then
              begin
                Agregar.Execute;
                For i:=0 to FormImportacionAjustesStk.CDSCabecera.FieldCount-1 do
                  begin
                    if CDSAjusteCab.FindField(CDSAjusteCab.Fields[i].FieldName)<>nil Then
                      begin
                        Nombre:=FormImportacionAjustesStk.CDSCabecera.Fields[i].FieldName;
                        if Nombre='ID_TIPOCOMPROBANTE' then
                          CDSAjusteCabID_TIPOCOMPROBANTESetText(CDSAjusteCabID_TIPOCOMPROBANTE,FormImportacionAjustesStk.CDSCabecera.FieldByName(Nombre).AsString);
                        if (Nombre<>'ID_RTO') then
                          CDSAjusteCab.FieldByName(Nombre).Value:=FormImportacionAjustesStk.CDSCabecera.FieldByName(Nombre).Value;
                      end;
                  end;
                CDSAjusteCabNUMRTOSetText(CDSAjusteCabNUMRTO,FormImportacionAjustesStk.CDSCabecera.FieldByName('NUMRTO').AsString);
                CDSAjusteCabFECHA.AsDateTime := FormImportacionAjustesStk.CDSCabecera.FieldByName('FECHA').AsDateTime;

                FormImportacionAjustesStk.CDSDetalle.First;
                while not(FormImportacionAjustesStk.CDSDetalle.Eof) do
                  begin
                    CDSAjusteDet.Append;
                    For i:=0 to FormImportacionAjustesStk.CDSDetalle.FieldCount-1 do
                      begin
                        if CDSAjusteDet.FindField(FormImportacionAjustesStk.CDSDetalle.Fields[i].FieldName)<>nil Then
                          begin
                            Nombre:=FormImportacionAjustesStk.CDSDetalle.Fields[i].FieldName;
                            if (Nombre<>'ID_RTO_CAB') and (Nombre<>'ID_RTO_DET') Then
                            CDSAjusteDet.FieldByName(Nombre).Value:=FormImportacionAjustesStk.CDSDetalle.FieldByName(Nombre).Value;
                          end;
                      end;
                    CDSAjusteDet.Post;
                    FormImportacionAjustesStk.CDSSubDetalle.First;
                    while not(FormImportacionAjustesStk.CDSSubDetalle.Eof) do
                      begin
                        CDSAjusteSubDetalle.Append;
                        For i:=0 to FormImportacionAjustesStk.CDSSubDetalle.FieldCount-1 do
                          begin
                            if CDSAjusteSubDetalle.FindField(FormImportacionAjustesStk.CDSSubDetalle.Fields[i].FieldName)<>nil Then
                              begin
                                Nombre:=FormImportacionAjustesStk.CDSSubDetalle.Fields[i].FieldName;
                                if (Nombre<>'ID_RTOCAB') and (Nombre<>'ID_RTODET') then
                                CDSAjusteSubDetalle.FieldByName(Nombre).Value:=FormImportacionAjustesStk.CDSSubDet.FieldByName(Nombre).Value;
                              end;
                          end;
                        CDSAjusteSubDetalle.Post;
                      end;
                    FormImportacionAjustesStk.CDSDetalle.Next;
                  end;
                DBGrillaDetalle.SetFocus;
                Importado:=True;
              end;
        end;
      FreeAndNil(FormImportacionAjustesStk);


    end;  //

  var sDirectorio      := ExtractFilePath(ParamStr(0))+'ArchivosAjustesStkBk';

  if IsDirEmpty(sDirectorio) then
    RestaurarDePapelera.ImageIndex:=11
  else
    RestaurarDePapelera.ImageIndex:=10;
end;

procedure TFormAjustesStock.FormShow(Sender: TObject);
begin
  inherited;
//  Modificar.Enabled  :=DMMain_FD.UsuarioAdministrador;
//  btModificar.Enabled:=DMMain_FD.UsuarioAdministrador;
//  Borrar.Enabled     :=DMMain_FD.UsuarioAdministrador;
//  btBorrar.Enabled   :=DMMain_FD.UsuarioAdministrador;
//  if FormAjustesStock.Visible then
//    btNuevo.SetFocus;
end;

procedure TFormAjustesStock.CambiarFechaExecute(Sender: TObject);
begin
 inherited;
 if not(CDSAjusteCab.IsEmpty) and (DMMain_FD.UsuarioAdministrador) then
    begin
      if not(Assigned(FormFecha)) Then
        FormFecha:=TFormFecha.Create(Self);
      formFecha.fecha := CDSAjusteCabFECHA.AsDateTime;
      formFecha.dbcCtaBco.Visible:=False;
      FormFecha.Cta   := -1;
      formFecha.ShowModal;
      if formFecha.ModalResult=mrok then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            QCambiarFecha.Close;
            QCambiarFecha.ParamByName('FechaNueva').Value := FormFecha.fecha;
            QCambiarFecha.ParamByName('id').Value         := CDSAjusteCabID_RTO.Value;
            QCambiarFecha.ExecSQL;
            DMMain_FD.fdcGestion.Commit;
          except
             DMMain_FD.fdcGestion.Rollback;
             ShowMessage('NO se Modifico la fecha....!');
        end;
        FreeAndNil(FormFecha);
      end;
    end
  else
    ShowMessage('No esta autorizado solo administradores, o no hay datos para modifica....!');
  Recuperar.Execute;

end;

procedure TFormAjustesStock.CancelarExecute(Sender: TObject);
begin
  Cancelado:=True;
  CDSAjusteCab.Close;
  CDSAjusteCab.Params.ParamByName('id').Clear;
  CDSAjusteCab.Open;
  CDSAjusteDet.Close;
  CDSAjusteDet.Params.ParamByName('id_cab').Clear;
  CDSAjusteDet.OPen;
  CDSAjusteSubDetalle.Close;
  CDSAjusteSubDetalle.Params.ParamByName('id').Clear;
  CDSAjusteSubDetalle.Open;
  FreeAndNil(lista);
  sbEstado.SimpleText:='';
  inherited;
  CodigosSeries.Clear;
  btNuevo.SetFocus;
  if dbgExitencias.Visible=True Then
    dbgExitencias.Visible:=False;  
end;

procedure TFormAjustesStock.DBGrillaDetalleCellClick(Column: TColumn);
begin
  inherited;
  IF DBGrillaDetalle.SelectedIndex = 2 THEN
    begin
//      DBGrillaDetalle.SelectedIndex := 3;
      if DBGrillaDetalle.DataSource.DataSet.FieldByName('Codigo').AsString<>'' Then
        begin
          CDSStock.Close;
          CDSStock.Params.ParamByName('Codigo').Value   := DBGrillaDetalle.DataSource.DataSet.FieldByName('Codigo').Value;
          CDSStock.Params.ParamByName('Deposito').Value := CDSAjusteCabDEPOSITO.Value;
          CDSStock.Open;
          DBGrillaDetalle.Columns[2].PickList.Clear;
          DBGrillaDetalle.Columns[2].PickList.Add(CDSStockUNIDAD.Value);
          DBGrillaDetalle.Columns[2].PickList.Add(CDSStockUNIDAD_COMPRA.Value);
          CDSStock.Close;
        end;
     end;   
end;

procedure TFormAjustesStock.BuscarSerieExecute(Sender: TObject);
begin
  inherited;
  if ((DSBase.State in [dsInsert,dsEdit]) and (Trunc(CDSAjusteDetCANTIDAD.AsFloat*1000)<0)) then
    begin
      QBuscaNroSerie.Close;
      QBuscaNroSerie.ParamByName('codigo').Value  := CDSAjusteDetCODIGO.Value;
      QBuscaNroSerie.ParamByName('deposito').Value:= CDSAjusteDetDEPOSITO.Value;
      QBuscaNroSerie.Open;
      comBuscadorSerie.Execute;
      if comBuscadorSerie.rOk Then
        CDSAjusteSubDetalleSERIESetText(CDSAjusteSubDetalleSERIE,comBuscadorSerie.Id);
      QBuscaNroSerie.Close;
    end;
end;

procedure TFormAjustesStock.CDSAjusteSubDetalleSERIESetText(Sender: TField;
  const Text: String);
var i:Integer;
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      //UpperCase(Text);
      i:=CodigosSeries.IndexOf(UpperCase(Text));
      if i>=0 Then
        begin
          Sender.Clear;
          showmessage('Codigo de Serie Ingresado ...... ');
          SysUtils.Abort;
        end;
      if CDSAjusteSubDetalle.State=dsBrowse Then
        CDSAjusteSubDetalle.Append;
      Sender.AsString:=UpperCase(Text);
      if CDSAjusteDetCON_NRO_SERIE.Value='S' Then
        begin
          if (CDSAjusteSubDetalleTIPO.Value='I') Then  // si es de ingreso
            begin
              QNroSerie.Close;
              QNroSerie.ParamByName('codigo').Value      := CDSAjusteDetCODIGO.Value;
              QNroSerie.ParamByName('codigoserie').Value := Sender.AsString;
              QNroSerie.ParamByName('deposito').Value    := CDSAjusteDetDEPOSITO.Value;
              QNroSerie.Open;
              IF (QNroSerie.Fields[0].AsString<>'')  THEN
                BEGIN
                  ShowMessage('Codigo Serie existente ya fué CARGADO...');
                  Sender.AsString:= '';
                  CDSAjusteSubDetalle.Cancel;
                  CDSAjusteSubDetalle.Append;
                END;
              QNroSerie.Close;
            end
          else
            if (CDSAjusteSubDetalleTIPO.Value='E') Then  // si es de ingreso
              begin
                QNroSerie_enStock.Close;
                QNroSerie_enStock.ParamByName('codigo').Value      := CDSAjusteDetCODIGO.Value;
                QNroSerie_enStock.ParamByName('codigoserie').Value := Sender.AsString;
                QNroSerie_enStock.Open;
                IF (QNroSerie_enStock.Fields[0].AsString='')  THEN
                  BEGIN
                    ShowMessage('Codigo Serie Inexistente...');
                    Sender.AsString:= '';
                    CDSAjusteSubDetalle.Cancel;
                    CDSAjusteSubDetalle.Append;
                  END;
                QNroSerie_enStock.Close;
              end;
        end;
    end;

end;

procedure TFormAjustesStock.CDSAjusteSubDetalleNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  CDSAjusteSubDetalleID.Value         := IBGAjusteSubDet.IncrementFD(1);
  CDSAjusteSubDetalleID_RTODET.Value  := CDSAjusteDetID_RTO_DET.Value;
  CDSAjusteSubDetalleID_RTOCAB.Value  := CDSAjusteCabID_RTO.Value;
  CDSAjusteSubDetalleTIPOCPBTE.Value  := CDSAjusteCabTIPOCPBTE.Value;
  CDSAjusteSubDetalleCLASECPBTE.Value := CDSAjusteCabCLASECPBTE.Value;
  CDSAjusteSubDetalleFECHA.Value      := CDSAjusteCabFECHA.Value;
  CDSAjusteSubDetalleNROCPBTE.Value   := CDSAjusteCabNROCPBTE.Value;
  CDSAjusteSubDetalleCODIGOARTICULO.Value:= CDSAjusteDetCODIGO.Value;
  CDSAjusteSubDetalleDEPOSITO.Value      := CDSAjusteCabDEPOSITO.Value;
  if (Trunc(CDSAjusteDetCANTIDAD.AsFloat*1000)>0) Then
    CDSAjusteSubDetalleTIPO.Value:='I'
  ELSE
    CDSAjusteSubDetalleTIPO.Value:='E';
end;

procedure TFormAjustesStock.dbgSeriesKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      DBGSeries.DataSource.DataSet.Append;
    END;

end;

procedure TFormAjustesStock.CDSAjusteSubDetalleBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if ((CDSAjusteSubDetalle.RecordCount+1)> Abs(CDSAjusteDetCantidad.AsFloat))
  or (CDSAjusteDetCON_NRO_SERIE.Value='N') Then
    begin
      sysutils.Abort;
      RAISE Exception.Create('No se pueden cargara mas items de los Ingresados ...')
    end;

end;

procedure TFormAjustesStock.CDSAjusteSubDetalleBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DatoControl:=CDSAjusteSubDetalleSERIE.Value;
  if CDSAjusteSubDetalleSERIE.AsString='' Then
    begin
      CDSAjusteSubDetalle.Cancel;
      SysUtils.Abort;
    end;
end;

procedure TFormAjustesStock.CDSAjusteSubDetalleAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  lbCantidad.Caption:=IntToStr(CDSAjusteSubDetalle.RecordCount);
  CodigosSeries.Add(CDSAjusteSubDetalleSERIE.Value);
end;

procedure TFormAjustesStock.CDSAjusteSubDetalleAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  lbCantidad.Caption:=IntToStr(CDSAjusteSubDetalle.RecordCount);
end;

procedure TFormAjustesStock.CDSAjusteSubDetalleBeforeDelete(
  DataSet: TDataSet);
var i:integer;
begin
  inherited;
  i:=CodigosSeries.IndexOf(CDSAjusteSubDetalleSERIE.AsString);
  CodigosSeries.Delete(I);
end;

procedure TFormAjustesStock.btGenerarDetalleClick(Sender: TObject);
begin
  inherited;
  QBuscaStock.Close;
  QBuscaStock.Open;
  QBuscaStock.First;
  while not(QBuscaStock.Eof) Do
    begin
      CDSAjusteDet.Append;
      CDSAjusteDetCODIGOSetText(CDSAjusteDetCODIGO,QBuscaStockCODIGO_STK.Value);
      CDSAjusteDetCANTIDADSetText(CDSAjusteDetCANTIDAD,'1');
      CDSAjusteDet.Post;
      QBuscaStock.Next;
    end;
  if CDSAjusteDet.State <>dsBrowse then
    CDSAjusteDet.Post;

  QBuscaStock.Close;

end;

procedure TFormAjustesStock.CDSAjusteDetAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Sumar.Execute;
end;

procedure TFormAjustesStock.CDSAjusteDetAfterPost(DataSet: TDataSet);
begin
  inherited;
  Sumar.Execute;
end;

procedure TFormAjustesStock.CDSAjusteDetAfterScroll(DataSet: TDataSet);
begin
  inherited;
  pagLotes.TabVisible   :=False;
  PagLotesIng.TabVisible:=False;

 // CDSAjusteLote.Close;
 // CDSAjusteLote.Params.ParamByName('id').Value       := CDSAjusteDet(DatoNew);//CDSAjusteDetID_RTO_DET.AsInteger;//
 // CDSAjusteLote.Open;


  if CDSAjusteDetCONTROL_TRAZABILIDAD.Value='S' then
    begin
      if CDSAjusteDetCANTIDAD.Value<0 Then
        begin
          pcLotesSeries.ActivePage:=pagLotes;
          pagLotes.TabVisible   :=True;
          PagLotesIng.TabVisible:=False;
        end
      else
        begin
          pcLotesSeries.ActivePage:=PagLotesIng;
          pagLotes.TabVisible   :=False;
          PagLotesIng.TabVisible:=True;
        end;
    end;

end;

procedure TFormAjustesStock.CDSAjusteDetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CDSAjusteSubDetalle.First;
  while Not(CDSAjusteSubDetalle.Eof) do
    begin
      CDSAjusteSubDetalle.Delete;
      CDSAjusteSubDetalle.Next;
    end;
end;

procedure TFormAjustesStock.CDSAjusteDetBeforePost(DataSet: TDataSet);
begin
//  inherited;
  if {(Trunc(CDSAjusteDetCANTIDAD.AsFloat*1000)=0) or} (CDSAjusteDetCODIGO.AsString='') then
    begin
      ShowMessage('Cantidad 0(cero) o falta el codigo de artículo... no se valida el registro');
      CDSAjusteDet.Cancel;
      SysUtils.Abort;
    end;
end;

end.