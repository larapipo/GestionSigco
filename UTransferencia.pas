unit UTransferencia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs,UABMBase, DBClient, Provider, SqlExpr, DBXCommon, FMTBcd, DB, frxExportPDF, frxDMPExport,
  frxClass, frxExportRTF, frxDBSet, IBGenerator, ComCtrls, Grids, DBGrids,
  JvExMask, JvToolEdit, JvDBControls, DBCtrls, StdCtrls, Mask, JvLabel,
  JvComponentBase, JvFormPlacement, ImgList, ActnList, JvExControls, JvGradient,
  Buttons, ToolWin, ExtCtrls,Variants,IniFiles, Menus, JvArrowButton,StrUtils,Math,
  JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportBaseDialog,
  System.ImageList, frCoreClasses, AdvSmoothButton;

type
  TFormTransferencias = class(TFormABMBase)
    DSPTranCab: TDataSetProvider;
    DSPTranDet: TDataSetProvider;
    DSTranDet: TDataSource;
    pnCabecera: TPanel;
    dbeOrigen: TDBEdit;
    dbeDestino: TDBEdit;
    dbePrefijo: TDBEdit;
    dbeNum: TDBEdit;
    DBText1: TDBText;
    pnDetalle: TPanel;
    BuscarTipoCpbte: TAction;
    dbeSucursal: TDBEdit;
    dbtMuestraComprobante: TDBText;
    DSPSucursal: TDataSetProvider;
    BuscarSucursal: TAction;
    ibgTranCab: TIBGenerator;
    ibgTranDet: TIBGenerator;
    BuscarArticulo: TAction;
    DSPStock: TDataSetProvider;
    BuscarDeposito: TAction;
    DSPDeposito: TDataSetProvider;
    dbeObs1: TDBEdit;
    dbeObs2: TDBEdit;
    ToolButton1: TToolButton;
    BitBtn1: TBitBtn;
    Imprimir: TAction;
    frTransferencia: TfrxReport;
    frDBTranCab: TfrxDBDataset;
    frDBTranDet: TfrxDBDataset;
    frDBEmpresa: TfrxDBDataset;
    pcDetalle: TPageControl;
    PagDetalle: TTabSheet;
    DBGrillaDetalle: TDBGrid;
    pagSeries: TTabSheet;
    dbgDetalle: TDBGrid;
    dbgSeries: TDBGrid;
    DSPTranSubDet: TDataSetProvider;
    CDSTranSubDetalle: TClientDataSet;
    DSTranSubDetalle: TDataSource;
    IBGTranSubDet: TIBGenerator;
    CDSTranSubDetalleID: TIntegerField;
    CDSTranSubDetalleID_DETTRA: TIntegerField;
    CDSTranSubDetalleID_CABTRA: TIntegerField;
    CDSTranSubDetalleTIPOCPBTE: TStringField;
    CDSTranSubDetalleCLASECPBTE: TStringField;
    CDSTranSubDetalleNROCPBTE: TStringField;
    CDSTranSubDetalleCODIGOARTICULO: TStringField;
    CDSTranSubDetalleSERIE: TStringField;
    CDSTranSubDetalleDEPOSITO: TIntegerField;
    BuscarSerie: TAction;
    Label24: TLabel;
    dbtCantidad: TDBText;
    Label25: TLabel;
    frDBTranSubDetalle: TfrxDBDataset;
    CDSTranSubDetalleDEPOSITOORIGEN: TIntegerField;
    lbEstado: TLabel;
    RecibeTx: TAction;
    BitBtn3: TBitBtn;
    AnulaRechaza: TAction;
    pnRecibido: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    DSListaPrecios: TDataSource;
    Recalcular: TAction;
    pnCostos: TPanel;
    dbeCostoTotal: TDBEdit;
    dbeTotal: TDBEdit;
    frxPDFExport1: TfrxPDFExport;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    lbTipoComprob: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel8: TJvLabel;
    RxLabel9: TJvLabel;
    RxCOrigen: TJvDBComboEdit;
    RxCDestino: TJvDBComboEdit;
    RxCSucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    CDSBuscaDeposito: TClientDataSet;
    DSPBuscaDeposito: TDataSetProvider;
    CDSBuscaDepositoID: TIntegerField;
    CDSBuscaDepositoNOMBRE: TStringField;
    CDSDeposito: TClientDataSet;
    CDSDepositoID: TIntegerField;
    CDSDepositoNOMBRE: TStringField;
    CDSDepositoSUCURSAL: TIntegerField;
    CDSExistencia: TClientDataSet;
    DSPExistencia: TDataSetProvider;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    QComprob: TFDQuery;
    QComprobID_COMPROBANTE: TIntegerField;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobSUCURSAL: TIntegerField;
    QComprobLETRA: TStringField;
    QComprobPREFIJO: TStringField;
    QComprobNUMERO: TStringField;
    QComprobNUMERARCION_PROPIA: TStringField;
    QComprobTOMA_NRO_DE: TIntegerField;
    QComprobAFECTA_IVA: TStringField;
    QComprobAFECTA_CC: TStringField;
    QComprobDESGLOZA_IVA: TStringField;
    QComprobCOMPRA_VENTA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QComprobIMPRIME: TStringField;
    QComprobLINEAS_DETALLE: TSmallintField;
    QTranCab: TFDQuery;
    QTranCabID_TRCAB: TIntegerField;
    QTranCabTIPOCPBTE: TStringField;
    QTranCabCLASECPBTE: TStringField;
    QTranCabDEPOSITO_ORIGEN: TIntegerField;
    QTranCabDEPOSITO_DESTINO: TIntegerField;
    QTranCabLETRATR: TStringField;
    QTranCabSUCTR: TStringField;
    QTranCabNUMEROTR: TStringField;
    QTranCabNROCPBTE: TStringField;
    QTranCabSUCURSAL: TIntegerField;
    QTranCabMUESTRACOMPROBANTE: TStringField;
    QTranCabMUESTRASUCURSAL: TStringField;
    QTranCabNOMBRE_DEPOSITO_ORIGEN: TStringField;
    QTranCabNOMBRE_DEPOSITO_DESTINO: TStringField;
    QTranCabOBS1: TStringField;
    QTranCabOBS2: TStringField;
    QTranCabID_TIPOCOMPROBANTE: TIntegerField;
    QTranCabUSUARIO: TStringField;
    QTranCabESTADO: TStringField;
    QTranCabRECIBIDO_POR: TStringField;
    QTranCabLISTAPRECIO: TIntegerField;
    QTranCabNOTA_TX_ID: TIntegerField;
    QTranCabNOTA_TX_NUMERO: TStringField;
    QTranCabFECHA: TSQLTimeStampField;
    QTranCabTOTAL: TFloatField;
    QTranCabCOSTO_TOTAL: TFloatField;
    QTranCabFECHA_HORA: TSQLTimeStampField;
    QTranCabFECHA_RECECION: TSQLTimeStampField;
    CDSTranCab: TClientDataSet;
    CDSTranCabID_TRCAB: TIntegerField;
    CDSTranCabTIPOCPBTE: TStringField;
    CDSTranCabCLASECPBTE: TStringField;
    CDSTranCabDEPOSITO_ORIGEN: TIntegerField;
    CDSTranCabDEPOSITO_DESTINO: TIntegerField;
    CDSTranCabLETRATR: TStringField;
    CDSTranCabSUCTR: TStringField;
    CDSTranCabNUMEROTR: TStringField;
    CDSTranCabNROCPBTE: TStringField;
    CDSTranCabSUCURSAL: TIntegerField;
    CDSTranCabMUESTRACOMPROBANTE: TStringField;
    CDSTranCabMUESTRASUCURSAL: TStringField;
    CDSTranCabNOMBRE_DEPOSITO_ORIGEN: TStringField;
    CDSTranCabNOMBRE_DEPOSITO_DESTINO: TStringField;
    CDSTranCabOBS1: TStringField;
    CDSTranCabOBS2: TStringField;
    CDSTranCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSTranCabUSUARIO: TStringField;
    CDSTranCabESTADO: TStringField;
    CDSTranCabRECIBIDO_POR: TStringField;
    CDSTranCabLISTAPRECIO: TIntegerField;
    CDSTranCabNOTA_TX_ID: TIntegerField;
    CDSTranCabNOTA_TX_NUMERO: TStringField;
    CDSTranCabFECHA: TSQLTimeStampField;
    CDSTranCabTOTAL: TFloatField;
    CDSTranCabCOSTO_TOTAL: TFloatField;
    CDSTranCabFECHA_HORA: TSQLTimeStampField;
    CDSTranCabFECHA_RECECION: TSQLTimeStampField;
    QTranDet: TFDQuery;
    QTranDetID_TRANDET: TIntegerField;
    QTranDetID_TRANCAB: TIntegerField;
    QTranDetDETALLE: TStringField;
    QTranDetUNIDAD: TStringField;
    QTranDetDEPOSITO_ORIGEN: TIntegerField;
    QTranDetDEPOSITO_DESTINO: TIntegerField;
    QTranDetSUCURSAL: TIntegerField;
    QTranDetCODIGO: TStringField;
    QTranDetNROCPBTE: TStringField;
    QTranDetTIPOCPBTE: TStringField;
    QTranDetCLASECPBTE: TStringField;
    QTranDetAFECTA_STOCK: TStringField;
    QTranDetCON_NRO_SERIE: TStringField;
    QTranDetESTADO: TStringField;
    QTranDetCANTIDAD: TFloatField;
    QTranDetPRECIO: TFloatField;
    QTranDetFECHA: TSQLTimeStampField;
    QTranDetPRECIO_TOTAL: TFloatField;
    QTranDetCOSTO: TFloatField;
    QTranDetCOSTO_TOTAL: TFloatField;
    CDSTranDet: TClientDataSet;
    CDSTranDetID_TRANDET: TIntegerField;
    CDSTranDetID_TRANCAB: TIntegerField;
    CDSTranDetCODIGO: TStringField;
    CDSTranDetDETALLE: TStringField;
    CDSTranDetUNIDAD: TStringField;
    CDSTranDetDEPOSITO_ORIGEN: TIntegerField;
    CDSTranDetDEPOSITO_DESTINO: TIntegerField;
    CDSTranDetSUCURSAL: TIntegerField;
    CDSTranDetNROCPBTE: TStringField;
    CDSTranDetTIPOCPBTE: TStringField;
    CDSTranDetCLASECPBTE: TStringField;
    CDSTranDetAFECTA_STOCK: TStringField;
    CDSTranDetCON_NRO_SERIE: TStringField;
    CDSTranDetESTADO: TStringField;
    CDSTranDetCANTIDAD: TFloatField;
    CDSTranDetFECHA: TSQLTimeStampField;
    CDSTranDetPRECIO_TOTAL: TFloatField;
    CDSTranDetCOSTO: TFloatField;
    CDSTranDetCOSTO_TOTAL: TFloatField;
    QTranSubDetalle: TFDQuery;
    QTranSubDetalleID: TIntegerField;
    QTranSubDetalleID_DETTRA: TIntegerField;
    QTranSubDetalleID_CABTRA: TIntegerField;
    QTranSubDetalleTIPOCPBTE: TStringField;
    QTranSubDetalleCLASECPBTE: TStringField;
    QTranSubDetalleNROCPBTE: TStringField;
    QTranSubDetalleCODIGOARTICULO: TStringField;
    QTranSubDetalleSERIE: TStringField;
    QTranSubDetalleDEPOSITO: TIntegerField;
    QTranSubDetalleDEPOSITOORIGEN: TIntegerField;
    QTranSubDetalleFECHA: TSQLTimeStampField;
    CDSTranSubDetalleFECHA: TSQLTimeStampField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalRECARGO: TFloatField;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockCOSTO_EXENTO_STK: TFloatField;
    CDSStockCOSTO_GRAVADO_STK: TFloatField;
    CDSStockCOSTO_TOTAL_STK: TFloatField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSStockFIJACION_PRECIO_EXENTO: TFloatField;
    CDSStockFIJACION_PRECIO_TOTAL: TFloatField;
    CDSStockFUAP: TSQLTimeStampField;
    CDSStockUNIDAD: TStringField;
    CDSStockCONTROLASTOCK: TStringField;
    CDSStockCODIGO_PROVEEDOR: TStringField;
    CDSStockUNIDAD_ULTIMAUSADA: TStringField;
    CDSStockCONTROL_SERIE: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockCONTENIDO_COMPRA: TFloatField;
    CDSStockUSA_CODIGOBARRA: TStringField;
    spUltimaUnidad: TFDStoredProc;
    CDSBuscaNroSerie: TClientDataSet;
    DSPBuscaNroSerie: TDataSetProvider;
    CDSBuscaNroSerieID: TIntegerField;
    CDSBuscaNroSerieCODIGO_STK: TStringField;
    CDSBuscaNroSerieCODIGOSERIE: TStringField;
    QNroSerie: TFDQuery;
    QNroSerieID: TIntegerField;
    QNroSerieCODIGO_STK: TStringField;
    QNroSerieCODIGOSERIE: TStringField;
    QTraerRecargoDeLista: TFDQuery;
    CDSTranDetPRECIO: TFloatField;
    QDepositoStk: TFDQuery;
    QDepositoStkID_DEPOSITO: TIntegerField;
    QDepositoStkCODIGO_DEPOSITO: TIntegerField;
    QDepositoStkCODIGO_STK: TStringField;
    QDepositoStkSUCURSAL: TIntegerField;
    QDepositoStkINICIAL: TFloatField;
    QDepositoStkMINIMO: TFloatField;
    QDepositoStkMEDIO: TFloatField;
    QDepositoStkFISICO: TFloatField;
    QDepositoStkRECARGO: TFloatField;
    QDepositoStkFUAPRECIOS: TSQLTimeStampField;
    CDSListaPrecios: TClientDataSet;
    DSPListaPrecios: TDataSetProvider;
    QListaPrecios: TFDQuery;
    QListaPreciosID: TIntegerField;
    QListaPreciosNOMBRE: TStringField;
    QListaPreciosF_PAGO: TIntegerField;
    CDSListaPreciosID: TIntegerField;
    CDSListaPreciosNOMBRE: TStringField;
    QTraerRecargoDeListaRECARGO: TFloatField;
    QPrimerLista: TFDQuery;
    CDSExistenciaCODIGO_STK: TStringField;
    CDSExistenciaDETALLE_STK: TStringField;
    CDSExistenciaFISICO: TFloatField;
    CDSExistenciaCOMPROMETIDO: TFloatField;
    CDSExistenciaSALDO: TFloatField;
    CDSExistenciaDEPOSITO_STK: TIntegerField;
    CDSExistenciaEN_TRANSITO: TFloatField;
    CDSExistenciaDEPOSITO_NOMBRE: TStringField;
    gbLista: TGroupBox;
    dbcLista: TDBLookupComboBox;
    QNroSerieFECHAINGRESO: TSQLTimeStampField;
    QNroSerieFECHAEGRESO: TSQLTimeStampField;
    CDSBuscaNroSerieFECHAINGRESO: TSQLTimeStampField;
    CDSBuscaNroSerieFECHAEGRESO: TSQLTimeStampField;
    QCompDefecto: TFDQuery;
    QCompDefectoID_COMPROBANTE: TIntegerField;
    QCompPrimero: TFDQuery;
    dbeFecha: TJvDBDateEdit;
    DBStatusLabel2: TJvDBStatusLabel;
    QTraerPrecio: TFDQuery;
    QTraerPrecioPRECIOCONIVA: TFloatField;
    QTraerPrecioPRECIO_GRAVADO: TFloatField;
    QTraerPrecioRECARGO: TFloatField;
    chPrecioConIva: TCheckBox;
    QTranCabID_FACTURA_FRANQUICIA: TIntegerField;
    CDSTranCabID_FACTURA_FRANQUICIA: TIntegerField;
    QTranCabMUESTRAFACTURA: TStringField;
    QTranCabMUESTRATIPOFC: TStringField;
    QTranCabMUESTRACLASEFC: TStringField;
    CDSTranCabMUESTRAFACTURA: TStringField;
    CDSTranCabMUESTRATIPOFC: TStringField;
    CDSTranCabMUESTRACLASEFC: TStringField;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    JvLabel1: TJvLabel;
    ReCalcularCosto: TAction;
    spRecalc: TSpeedButton;
    chFechaRecepcion: TCheckBox;
    EnviarTx: TAction;
    spEnviar: TSpeedButton;
    spLeerTx: TSpeedButton;
    LeerTx: TAction;
    CambiarFecha: TAction;
    QCambiarFecha: TFDQuery;
    btFechas: TJvArrowButton;
    PopupMenu1: TPopupMenu;
    CambiarFecha1: TMenuItem;
    QCambiarFechaRec: TFDQuery;
    CambiarFechaRecp: TAction;
    CambiarFechadeRecepcin1: TMenuItem;
    QDepo_GeneraXML: TFDQuery;
    QDepo_GeneraXMLID: TIntegerField;
    QDepo_GeneraXMLGENERA_XML_COMUN: TStringField;
    QControlCpbteExistente: TFDQuery;
    QTranCabMUESTRASUCDESTINO: TIntegerField;
    CDSTranCabMUESTRASUCDESTINO: TIntegerField;
    DBText5: TDBText;
    CambiarNro: TAction;
    N1: TMenuItem;
    CambiarNro1: TMenuItem;
    ComBuscadorDeposito: TComBuscador;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorSerie: TComBuscador;
    QTranDetCANTIDAD_UNIDADES: TFloatField;
    QTranDetPRESENTACION_CANT: TFloatField;
    CDSTranDetCANTIDAD_UNIDADES: TFloatField;
    CDSTranDetPRESENTACION_CANT: TFloatField;
    CDSStockPRESENTACION_CANTIDAD: TFloatField;
    PopupMenu2: TPopupMenu;
    VerCodigoALternativo1: TMenuItem;
    QTranDetFECHA_CONFIRMACION: TSQLTimeStampField;
    QTranDetMUESTRACODALTERNATIVO: TStringField;
    CDSTranDetMUESTRACODALTERNATIVO: TStringField;
    QTranCabID_RTO: TIntegerField;
    CDSTranCabID_RTO: TIntegerField;
    GenerarRto: TAction;
    spGenerarRto: TSpeedButton;
    QTranDetMUESTRARUBRO: TStringField;
    QTranDetMUESTRASUBRUB: TStringField;
    CDSTranDetMUESTRARUBRO: TStringField;
    CDSTranDetMUESTRASUBRUB: TStringField;
    btImprimir: TJvArrowButton;
    PopupMenu3: TPopupMenu;
    OrdenarxRubSUbRub1: TMenuItem;
    spConfirmar: TFDStoredProc;
    N2: TMenuItem;
    AutoCompletarUno: TMenuItem;
    CambiaListaPrecio: TAction;
    CambiaListadePrecio1: TMenuItem;
    DBText7: TDBText;
    BusquedaPorReferencia: TAction;
    N3: TMenuItem;
    SaltearUnidadesdeStock1: TMenuItem;
    N4: TMenuItem;
    IgnorarControlDepositoDestino: TMenuItem;
    Pikeo: TAction;
    SpeedButton1: TSpeedButton;
    procedure BuscarTipoCpbteExecute(Sender: TObject);
//    procedure wwCDSTranCabId_TipoCpbteSetText(Sender: TField;
//      const Text: String);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure CDSTranCabSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CDSTranCabSUCTRSetText(Sender: TField; const Text: String);
    procedure CDSTranCabNUMEROTRSetText(Sender: TField;
      const Text: String);
    procedure AgregarExecute(Sender: TObject);
    procedure CDSTranCabNewRecord(DataSet: TDataSet);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure CDSTranDetCODIGOSetText(Sender: TField;
      const Text: String);
    procedure CDSTranDetNewRecord(DataSet: TDataSet);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure CDSTranCabDEPOSITO_ORIGENSetText(Sender: TField;
      const Text: String);
    procedure CDSTranCabDEPOSITO_DESTINOSetText(Sender: TField;
      const Text: String);
    procedure RxCOrigenButtonClick(Sender: TObject);
    procedure RxCDestinoButtonClick(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrillaDetalleEditButtonClick(Sender: TObject);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
    procedure pnDetalleEnter(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CDSTranCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure RxCSucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSBaseStateChange(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrillaDetalleCellClick(Column: TColumn);
    procedure CDSTranSubDetalleNewRecord(DataSet: TDataSet);
    procedure BuscarSerieExecute(Sender: TObject);
    procedure CDSTranSubDetalleSERIESetText(Sender: TField;
      const Text: String);
    procedure dbgSeriesKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CDSTranSubDetalleBeforeInsert(DataSet: TDataSet);
    procedure CDSTranSubDetalleBeforePost(DataSet: TDataSet);
    procedure pcDetalleEnter(Sender: TObject);
    procedure CDSTranDetCANTIDADSetText(Sender: TField;
      const Text: String);
    procedure CDSTranDetAfterPost(DataSet: TDataSet);
    procedure CDSTranDetBeforeDelete(DataSet: TDataSet);
    procedure CDSTranSubDetalleAfterPost(DataSet: TDataSet);
    procedure CDSTranSubDetalleBeforeDelete(DataSet: TDataSet);
    procedure CDSTranDetAfterInsert(DataSet: TDataSet);
    procedure CDSTranDetBeforePost(DataSet: TDataSet);
    procedure RecibeTxExecute(Sender: TObject);
    procedure AnulaRechazaExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbcListaClick(Sender: TObject);
    procedure RecalcularExecute(Sender: TObject);
    procedure dbcListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSTranDetAfterDelete(DataSet: TDataSet);
    procedure sbEstadoClick(Sender: TObject);
    procedure sbEstadoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BorrarExecute(Sender: TObject);
    procedure lbTipoComprobClick(Sender: TObject);
    procedure chPrecioConIvaClick(Sender: TObject);
    procedure ReCalcularCostoExecute(Sender: TObject);
    procedure EnviarTxExecute(Sender: TObject);
    procedure LeerTxExecute(Sender: TObject);
    procedure CambiarFechaExecute(Sender: TObject);
    procedure CambiarFechaRecpExecute(Sender: TObject);
    procedure CambiarNroExecute(Sender: TObject);
    procedure CDSTranDetCODIGOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure VerCodigoALternativo1Click(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure GenerarRtoExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure OrdenarxRubSUbRub1Click(Sender: TObject);
    procedure AutoCompletarUnoClick(Sender: TObject);
    procedure CambiaListaPrecioExecute(Sender: TObject);
    procedure DBGrillaDetalleDblClick(Sender: TObject);
    procedure BusquedaPorReferenciaExecute(Sender: TObject);
    procedure SaltearUnidadesdeStock1Click(Sender: TObject);
    procedure IgnorarControlDepositoDestinoClick(Sender: TObject);
    procedure PikeoExecute(Sender: TObject);
  private
    procedure AgregarPikeo(CDSDatos: TClientDataSet);
    { Private declarations }
  public
    renglones  :Integer;
    ArchivoIni :TIniFile;
    IdTipoCpbte:Integer;
    ModoCosto,ListaPrecios  :Integer; // 1 Costo .. 2 F_Precio
    ArchCabecera,
    ArchDetalle,
    ArchSubDet:String;
    Importado :Boolean;
    procedure Sumar;
    procedure CalculaPrecioVta;
    procedure VerificadorDetalle;
    function ControlSerie:Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION ASignarArticulo(Dato: STRING): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;

    { Public declarations }
  end;

var
  FormTransferencias: TFormTransferencias;
  Copias:Integer;
  Origen:Byte;
  CodigosSeries:TStringList;

PROCEDURE UltimoComprobante;

implementation

{$R *.DFM}

uses UDMain_FD, DMBuscadoresForm, UBuscadorCpbte,
     UBuscadorArticulos, UNotaTransfStock,UCambioListaPrecios,
     DMStoreProcedureForm, URecepcionTxStock, UFecha, UCambiaNumeroCpbte,
     UMuestraListaCodBarra, UBuscadorComprobantes, URemitos,DMRemitos, UEleccionCliente,
     UStock_2, UBuscarPorNroReferencia, UBorradorRegistrPikeo;

{
El procedimiento EmptyKeyQueue ayuda a limpiar la cola de eventos de teclado
para evitar que pulsaciones previas afecten el flujo del programa.
Solo asegúrate de corregir la sintaxis para que funcione correctamente.

Ejemplo de Uso en Delphi
1. Después de cerrar un ShowModal
Cuando cierras un formulario modal, puede que queden pulsaciones en la cola de mensajes.
Usar EmptyKeyQueue evita que esas teclas disparen acciones en el formulario principal.

procedure TFacturasForm.btnAbrirColectorClick(Sender: TObject);
var
  ColectorForm: TColectorForm;
begin
  ColectorForm := TColectorForm.Create(Self);
  try
    if ColectorForm.ShowModal = mrOk then
    begin
      EmptyKeyQueue; // Limpia las teclas presionadas antes de seguir
      AgregarDetallesDesdeColector(ColectorForm.cdsColector);
    end;
  finally
    ColectorForm.Free;
  end;
end;

2. Antes de procesar un evento importante
  Si tienes un botón que se presiona rápidamente varias veces, puedes limpiar la cola de teclas para evitar dobles ejecuciones no deseadas.

procedure TFacturasForm.btnProcesarClick(Sender: TObject);
begin
  EmptyKeyQueue;  // Limpia teclas antes de procesar
  ProcesarFactura;
end;

3. Después de mostrar un MessageBox o ShowMessage
  En algunos casos, cuando cierras un MessageBox, las teclas que el usuario presionó para cerrarlo pueden activarse en otro control. Se puede prevenir con EmptyKeyQueue.

ShowMessage('Operación completada.');
EmptyKeyQueue;  // Evita que ENTER cierre otro formulario o active un botón inesperadamente


}

 procedure EmptyKeyQueue;
 var Msg: TMsg;
  begin
    while PeekMessage(Msg, 0, WM_KEYFIRST,
   WM_KEYLAST, PM_REMOVE or PM_NOYIELD) do;
  end;


procedure TFormTransferencias.AgregarPikeo(CDSDatos: TClientDataSet);
var Lote:Integer;
begin
  if DSBase.DataSet.State=dsInsert then
    begin
      CDSDatos.First;
      while not(CDSDatos.Eof) do
        begin
          if Abs(Trunc(CDSDatos.FieldByName('cantidad').AsFloat*1000))>0 then
            begin
              DBGrillaDetalle.DataSource.DataSet.Append;
              DBGrillaDetalle.DataSource.DataSet.FieldByName('codigo').Text   := CDSDatos.FieldByName('codigo').AsString;
              DBGrillaDetalle.DataSource.DataSet.FieldByName('cantidad').Text := CDSDatos.FieldByName('cantidad').AsString;
              DBGrillaDetalle.DataSource.DataSet.post;
            end;
          CDSDatos.Next;
        end;
    end;
end;


procedure TFormTransferencias.Sumar;
var puntero:TBookMark;
begin
  if CDSTranDet.RecordCount>0 Then
    begin
      CDSTranCabCOSTO_TOTAL.AsFloat:=0;
      CDSTranCabTOTAL.AsFloat      :=0;
      puntero := CDSTranDet.GetBookmark;
      CDSTranDet.First;
      while not(CDSTranDet.eof) do
        begin
          CDSTranCabCOSTO_TOTAL.AsFloat := CDSTranCabCOSTO_TOTAL.AsFloat +  CDSTranDetCOSTO_TOTAL.AsFloat;
          CDSTranCabTOTAL.AsFloat       := CDSTranCabTOTAL.AsFloat +  CDSTranDetPRECIO_TOTAL.AsFloat ;
          CDSTranDet.Next;
        end;
      CDSTranDet.GotoBookmark(Puntero);
      CDSTranDet.FreeBookmark(puntero);
    end;

end;

procedure TFormTransferencias.CalculaPrecioVta;
VAR Recargo: Variant;
begin

  if CDSTranDetCOSTO.AsFloat=0 Then Exit;
  if CDSTranDet.State=dsBrowse Then
    CDSTranDet.Edit;
  // ******* Aplico el Recargo de la Lista de Precios
  QTraerRecargoDeLista.Close;
  QTraerRecargoDeLista.ParamByName('Lista').Value    := CDSTranCabLISTAPRECIO.Value;
  QTraerRecargoDeLista.ParamByName('Articulo').Value := CDSTranDetCODIGO.Value;
  QTraerRecargoDeLista.OPen;
  IF NOT (QTraerRecargoDeLista.IsEmpty) THEN
    BEGIN
      Recargo:=QTraerRecargoDeListaRECARGO.AsFloat;
      if (VarIsNull(Recargo)) then
        Recargo:=0;
      CDSTranDetPRECIO.AsFloat  := CDSTranDetCosto.AsFloat * (1 + (Recargo * 0.01));
    END
  else
    CDSTranDetPRECIO.AsFloat  := CDSTranDetCosto.AsFloat;
  QTraerRecargoDeLista.Close;
//******** Aplico recargo por Deposito de Vta *******

  // ******* Aplico el Precio esto es nuevo saco lo anterior??? 19-07-2012
  QTraerPrecio.Close;
  QTraerPrecio.ParamByName('Lista').Value    := CDSTranCabLISTAPRECIO.Value;
  QTraerPrecio.ParamByName('Articulo').Value := CDSTranDetCODIGO.Value;
  QTraerPrecio.OPen;
  IF NOT (QTraerPrecio.IsEmpty) THEN
    BEGIN
//      Recargo:=QTraerRecargoDeListaRECARGO.AsFloat;
//      if (VarIsNull(Recargo)) then
//        Recargo:=0;
//      CDSTranDetPRECIO.AsFloat  := CDSTranDetCosto.AsFloat * (1 + (Recargo * 0.01));
      if chPrecioConIva.Checked then
        CDSTranDetPRECIO.AsFloat  := QTraerPrecioPRECIOCONIVA.AsFloat
      else
        CDSTranDetPRECIO.AsFloat  := QTraerPrecioPRECIO_GRAVADO.AsFloat
    END;
//  else
//    CDSTranDetPRECIO.AsFloat  := CDSTranDetCosto.AsFloat;
  QTraerPrecio.Close;

  //******** Aplico recargo por Deposito de Vta *******


  QDepositoStk.Close;
  QDepositoStk.ParamByName('Codigo_Deposito').Value := CDSTranDetDEPOSITO_DESTINO.Value;
  QDepositoStk.ParamByName('Codigo').Value          := CDSTranDetCODIGO.Value;
  QDepositoStk.Open;
  IF NOT (QDepositoStk.IsEmpty) THEN
    BEGIN
      Recargo:=QDepositoStkRECARGO.AsFloat;
      IF (NOT (VarIsNull(Recargo))) AND (Recargo <> 0) THEN
        BEGIN
          CDSTranDetPrecio.AsFloat := CDSTranDetPrecio.AsFloat * (1 + (Recargo * 0.01));
        END
    END;
  QDepositoStk.Close;
// ******** Aplico recargo por Sucursal ************
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value:= CDSTranCabSUCURSAL.Value;
  CDSSucursal.Open;
  Recargo:=CDSSucursalRecargo.AsFloat;
  IF (NOT (VarIsNull(Recargo))) AND (Recargo <> 0) THEN
    BEGIN
      CDSTranDetPrecio.AsFloat := CDSTranDetPrecio.AsFloat * (1 + (Recargo * 0.01));
    END;
  CDSSucursal.Close;

end;


procedure TFormTransferencias.CambiaListaPrecioExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State=dsBrowse) and (Not(DSBase.Dataset.IsEmpty)) then
   begin
     if Not(Assigned(FormCambioListaPrecios)) then
       FormCambioListaPrecios:=TFormCambioListaPrecios.Create(self);
     FormCambioListaPrecios.IDListaOld:=dbcLista.KeyValue;
     FormCambioListaPrecios.ListaOld  :=dbcLista.ListSource.DataSet.FieldByName('Nombre').AsString;
     FormCambioListaPrecios.ShowModal;
     if FormCambioListaPrecios.ModalResult=mrOk then
       begin

          DMMain_FD.fdcGestion.StartTransaction;
          try
            CDSTranCab.Edit;
            DSBase.DataSet.FieldByName('LISTAPRECIO').Value:=FormCambioListaPrecios.IDListaNew;
            renglones := CDSTranDet.RecordCount+1;
            Recalcular.Execute;
            CDSTranCab.Post;
            CDSTranCab.ApplyUpdates(0);
            CDSTrandet.ApplyUpdates(0);
            
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No se Cambio Lista....!');
          end;
          DatoNew:=IntToStr(CDSTranCabID_TRCAB.Value);
          TipoCpbte:=CDSTranCabTIPOCPBTE.Value;
          Recuperar.Execute;
       //  Confirma.Execute;
         
       end;
       
   end;
end;

procedure TFormTransferencias.CambiarFechaExecute(Sender: TObject);
begin
 if not(CDSTranCab.IsEmpty) and (DMMain_FD.UsuarioAdministrador) then
    begin
      if not(Assigned(FormFecha)) Then
        FormFecha:=TFormFecha.Create(Self);
      formFecha.fecha              := CDSTranCabFECHA.AsDateTime;
      formFecha.dbcCtaBco.Visible  := False;
      formFecha.dbcSucursal.Visible:= False;
      FormFecha.Sucursal   := -1;
      FormFecha.Cta        := -1;
      formFecha.ShowModal;
      if formFecha.ModalResult=mrok then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            QCambiarFecha.Close;
            QCambiarFecha.ParamByName('FechaNueva').Value   := FormFecha.fecha;
            QCambiarFecha.ParamByName('id').Value           := CDSTranCabID_TRCAB.Value;
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

procedure TFormTransferencias.CambiarFechaRecpExecute(Sender: TObject);
begin
  inherited;
  if  not(CDSTranCab.IsEmpty) and (DMMain_FD.UsuarioAdministrador) and (CDSTranCabESTADO.Value='T') then
    begin
      if not(Assigned(FormFecha)) Then
        FormFecha:=TFormFecha.Create(Self);
      formFecha.fecha := CDSTranCabFECHA_RECECION.AsDateTime;
      formFecha.dbcCtaBco.Visible  :=False;
      formFecha.dbcSucursal.Visible:=False;
      FormFecha.Sucursal   := -1;
      FormFecha.Cta        := -1;
      formFecha.ShowModal;
      if formFecha.ModalResult=mrok then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            QCambiarFechaRec.Close;
            QCambiarFechaRec.ParamByName('FechaNueva').Value    := FormFecha.fecha+Time;
            QCambiarFechaRec.ParamByName('id').Value            := CDSTranCabID_TRCAB.Value;
            QCambiarFechaRec.ExecSQL;
            QCambiarFechaRec.Close;
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            QCambiarFechaRec.Close;
            ShowMessage('NO se Modifico la fecha....!');
        end;
        FreeAndNil(FormFecha);
      end;
    end
  else
    ShowMessage('No esta autorizado solo administradores, o no hay datos para modifica....!');

  Recuperar.Execute;

end;

procedure TFormTransferencias.CambiarNroExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCambiaNroCpbte)) then
    FormCambiaNroCpbte:=TFormCambiaNroCpbte.Create(self);
  FormCambiaNroCpbte.Id     :=DSBase.DataSet.FieldByName('id_trcab').Value;
  FormCambiaNroCpbte.Num    :=DSBase.DataSet.FieldByName('Numerotr').Value;
  FormCambiaNroCpbte.Suc    :=DSBase.DataSet.FieldByName('Suctr').Value;
  FormCambiaNroCpbte.Let    :=DSBase.DataSet.FieldByName('Letratr').Value;
  FormCambiaNroCpbte.Tipo   :=DSBase.DataSet.FieldByName('TipoCpbte').Value;
  FormCambiaNroCpbte.Fecha  :=DSBase.DataSet.FieldByName('Fecha').Value;
  FormCambiaNroCpbte.Fecha2 :=DSBase.DataSet.FieldByName('Fecha').Value;
  FormCambiaNroCpbte.Codigo :=DSBase.DataSet.FieldByName('deposito_origen').Value;

  FormCambiaNroCpbte.CV   :='V';
  FormCambiaNroCpbte.Showmodal;
  Recuperar.Execute;
end;

procedure TFormTransferencias.VerCodigoALternativo1Click(Sender: TObject);
begin
  inherited;
  VerCodigoAlternativo1.Checked:=Not(VerCodigoAlternativo1.Checked);
  DBGrillaDetalle.Refresh;
end;

procedure TFormTransferencias.VerificadorDetalle;
var puntero:TBookMark;
begin
  if CDSTranDet.RecordCount>0 Then
    begin
      puntero:=CDSTranDet.GetBookmark;
      CDSTranDet.First;
//      wwCDSTranDet.DisableControls;
      while not(CDSTranDet.eof) do
        begin
          CDSTranDet.edit;
          CDSTranDetDEPOSITO_ORIGEN.Value  := CDSTranCabDEPOSITO_ORIGEN.Value;
          CDSTranDetDEPOSITO_DESTINO.Value := CDSTranCabDEPOSITO_DESTINO.Value;
          CDSTranDetFECHA.AsDateTime       := CDSTranCabFECHA.AsDateTime;
          CDSTranDetSUCURSAL.Value         := CDSTranDetSUCURSAL.Value;
          CDSTranDetNROCPBTE.Value         := CDSTranCabNROCPBTE.Value;

          if CDSTranSubDetalle.RecordCount>0 Then
            begin
              CDSTranSubDetalle.edit;
              CDSTranSubDetalleFECHA.AsDateTime     := CDSTranCabFECHA.AsDateTime;
              CDSTranSubDetalleNROCPBTE.Value       := CDSTranCabNROCPBTE.Value;
              CDSTranSubDetalleCODIGOARTICULO.Value := CDSTranDetCODIGO.Value;
              CDSTranSubDetalleDEPOSITO.Value       := CDSTranCabDEPOSITO_DESTINO.Value;
              CDSTranSubDetalleDEPOSITOORIGEN.Value := CDSTranCabDEPOSITO_ORIGEN.Value;
              CDSTranSubDetalleNROCPBTE.Value       := CDSTranCabNROCPBTE.Value;
              CDSTranSubDetalle.Post;
            end;
          CDSTranDet.Next;
        end;
      CDSTranDet.GotoBookmark(Puntero);
      CDSTranDet.FreeBookmark(puntero);
//      wwCDSTranDet.EnableControls;
    end;

   if CDSTranSubDetalle.RecordCount>0 Then
    begin
      puntero:=CDSTranSubDetalle.GetBookmark;
      CDSTranSubDetalle.First;
//      CDSTranSubDetalle.DisableControls;
      while not(CDSTranSubDetalle.eof) do
        begin
          CDSTranSubDetalle.edit;
          CDSTranSubDetalleFECHA.AsDateTime     := CDSTranCabFECHA.AsDateTime;
          CDSTranSubDetalleNROCPBTE.Value       := CDSTranCabNROCPBTE.Value;
          CDSTranSubDetalleCODIGOARTICULO.Value := CDSTranDetCODIGO.Value;
          CDSTranSubDetalleDEPOSITO.Value       := CDSTranCabDEPOSITO_DESTINO.Value;
          CDSTranSubDetalleDEPOSITOORIGEN.Value := CDSTranCabDEPOSITO_ORIGEN.Value;
          CDSTranSubDetalleNROCPBTE.Value       := CDSTranCabNROCPBTE.Value;
          CDSTranSubDetalle.Next;
        end;
      CDSTranSubDetalle.GotoBookmark(Puntero);
      CDSTranSubDetalle.FreeBookmark(puntero);
//      CDSTranSubDetalle.EnableControls;
    end;
end;

function TFormTransferencias.ControlSerie:Boolean;
VAR Aux:Boolean;
begin
  aux:=True;
 // wwCDSTranDet.DisableControls;
  CDSTranDet.First;
  while not(CDSTranDet.Eof) and aux=True do
    begin
      aux:=True;
      if (CDSTranDetCON_NRO_SERIE.Value='S') then
        begin
          if (Int(CDSTranDetCANTIDAD.AsFloat)=CDSTranSubDetalle.RecordCount) then
            Aux:=True
          else
           Aux:=False;
        end;
      CDSTranDet.Next;
    end;
  CDSTranDet.First;
  CDSTranDet.EnableControls;
  Result:=Aux;
end;



PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DMStoreProcedure,FormTransferencias DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
       IF (CDSTranCabLETRATR.AsString <> '') AND (CDSTranCabCLASECPBTE.Value <> '') THEN
         BEGIN
           spNumeroCpbte.Close;
           spNumeroCpbte.ParamByName('Letra_Ing').AsString   := CDSTranCabLETRATR.AsString;
           spNumeroCpbte.ParamByName('Sucursal').AsInteger   := CDSTranCabSucursal.Asinteger;
           spNumeroCpbte.ParamByName('ClaseComp').AsString   := CDSTranCabCLASECPBTE.AsString;
           spNumeroCpbte.ParamByName('TipoComp').AsString    := CDSTranCabTIPOCPBTE.AsString;
           spNumeroCpbte.ParamByName('CompraVenta').AsString := 'V';
           spNumeroCpbte.ExecProc;
           IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
             BEGIN
               IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                 Numero :=StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
               ELSE
                 Numero := 1;
               CDSTranCabSUCTRSetText(CDSTranCabSUCTR,IntToStr(Numero));
               IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                 Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
               ELSE
                 Numero := 1;
               CDSTranCabNUMEROTRSetText(CDSTranCabNUMEROTR,IntToStr(Numero));
             END;
           CDSTranCabTIPOCPBTE.Value  :=spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
           CDSTranCabCLASECPBTE.Value :=spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
           Copias := spNumeroCpbte.ParamByName('Copias').AsInteger;
           Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
           spNumeroCpbte.Close;
         END;
       CDSTranCabNroCpbte.AsString := CDSTranCabLETRATR.AsString +
                                      CDSTranCabSUCTR.AsString +
                                      CDSTranCabNUMEROTR.AsString;
    end;
END;

FUNCTION TFormTransferencias.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value := Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.Eof) THEN
    BEGIN
      Result := True;
      if Origen=0 Then
        CDSTranCabNOMBRE_DEPOSITO_ORIGEN.Value    := CDSDepositoNOMBRE.Value
      else
        if Origen=1 Then
          CDSTranCabNOMBRE_DEPOSITO_DESTINO.Value := CDSDepositoNOMBRE.Value;
    END
  ELSE
    begin
      Result := False;
      if Origen=0 Then
        CDSTranCabNOMBRE_DEPOSITO_ORIGEN.Value := ''
      else
        if Origen=1 Then
          CDSTranCabNOMBRE_DEPOSITO_DESTINO.Value := '';

    end;
  CDSDeposito.Close;
END;


FUNCTION TFormTransferencias.ASignarArticulo(Dato: STRING): Boolean;
var Enter:char;
BEGIN
  IF CDSTranDet.State = dsBrowse THEN
    CDSTranDet.Edit;
  BEGIN
    Enter:= #13;
    CDSStock.Close;
    CDSStock.Params.ParamByName('Codigo').Value := Dato;
    CDSStock.Open;
    IF NOT (CDSStock.IsEmpty) and (CDSStockCONTROLASTOCK.Value='S') THEN
      BEGIN
        CDSTranDetMUESTRACODALTERNATIVO.Value := CDSStockREEMPLAZO_STK.Value;
        CDSTranDetDetalle.AsString     := CDSStockDetalle_Stk.AsString;
        if CDSStockUNIDAD_ULTIMAUSADA.AsString<>'' Then
          CDSTranDetUnidad.Value       := CDSStockUNIDAD_ULTIMAUSADA.Value
        else
          CDSTranDetUnidad.Value       := CDSStockUNIDAD.Value;

        if (CDSStockUNIDAD_ULTIMAUSADA.AsString<>CDSStockUNIDAD_COMPRA.AsString) and
           (CDSStockUNIDAD_ULTIMAUSADA.AsString<>CDSStockUNIDAD.AsString) then
          CDSTranDetUnidad.Value       := CDSStockUNIDAD.Value;

        CDSTranDetAFECTA_STOCK.Value       := CDSStockCONTROLASTOCK.Value;
        CDSTranDetCON_NRO_SERIE.Value      := CDSStockCONTROL_SERIE.Value;

        if (CDSStockPRESENTACION_CANTIDAD.AsString<>'') and (CDSStockPRESENTACION_CANTIDAD.AsFloat>0) then
          CDSTranDetPRESENTACION_CANT.AsFloat:= CDSStockPRESENTACION_CANTIDAD.AsFloat
        else
          CDSTranDetPRESENTACION_CANT.AsFloat:= 1;

        if ModoCosto=0 then
          CDSTranDetCOSTO.AsFloat      := CDSStockCOSTO_TOTAL_STK.AsFloat
        else
          if ModoCosto=1 then
            CDSTranDetCOSTO.AsFloat    := CDSStockFIJACION_PRECIO_TOTAL.AsFloat;
        CalculaPrecioVta;
        // si es un codigo de PLU y traigo la Cantidad... asigno lo leido en el Cod.Barra
        ////   UnivPesca............
        if DMMain_FD.DesdePLU then
          if DMMain_FD.ModoPLU=1 then //Cantidad
            begin
              CDSTranDetCantidadSetText(CDSTranDetCantidad,FLoatToStr(StrToFloat(DMMain_FD.PrecioPLU)*0.001));
              DBGrillaDetalle.SelectedIndex:=3;
           //   DBGrillaDetalleKeyPress(FormTransferencias.DBGrillaDetalle,Enter);
            end;
        //************************************* /
        if (AutoCompletarUno.Checked) Then
            begin
              Enter:=#13;
              FormTransferencias.DBGrillaDetalle.SelectedIndex:=3;
              CDSTranDetCantidadSetText(CDSTranDetCantidad,'1');
              Enter:=#0;
            end;

        Result := True;
      END
    ELSE
      begin
        Result := False;
        if CDSStockCONTROLASTOCK.Value='N' Then
          ShowMessage('Este artículo no controla stock.... No se puede transferir..');
      end;
    // if chSalteDetalle.Checked then
    //     DBGrillaDetalle.SelectedIndex:=2;
  END;
  CDSStock.Close;
END;

FUNCTION TFormTransferencias.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSTranCabSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      renglones                          := QComprobLINEAS_DETALLE.Value;
      CDSTranCabMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSTranCabLETRATR.Value            := QComprobLETRA.Value;
      CDSTranCabTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSTranCabCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      renglones                          := 0;
      CDSTranCabMUESTRACOMPROBANTE.Value := '';
      CDSTranCabLETRATR.Value            := '';
      CDSTranCabCLASECPBTE.Value         := '';
      CDSTranCabTIPOCPBTE.Value          := '';
    END;
END;

FUNCTION TFormTransferencias.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := Dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.IsEmpty) THEN
    BEGIN
      CDSTranCabID_TIPOCOMPROBANTE.Clear;
      CDSTranCabMUESTRACOMPROBANTE.Clear;
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:= 'select * from comprobantes where  compra_venta = ''V'' '+
                                                 ' and tipo_comprob = ''TX'' and sucursal = :suc ';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      DMBuscadores.CDSBuscaComprob.Open;
      if DMBuscadores.CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSTranCabID_TIPOCOMPROBANTESetText(CDSTranCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
          if (RxCOrigen.Enabled) and (RxCOrigen.Visible)  Then
            RxCOrigen.SetFocus;
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
                    CDSTranCabID_TIPOCOMPROBANTESetText(CDSTranCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
                    if (RxCOrigen.Enabled) and (RxCOrigen.Visible)  Then
                      RxCOrigen.SetFocus;
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
                        CDSTranCabID_TIPOCOMPROBANTESetText(CDSTranCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
                        if (RxCOrigen.Enabled) and (RxCOrigen.Visible)  Then
                          RxCOrigen.SetFocus;
                      end;
                 end;
              end;
          end;
      DMBuscadores.CDSBuscaComprob.Filtered:=False;
      DMBuscadores.CDSBuscaComprob.Filter  :='';
      DMBuscadores.CDSBuscaComprob.close;
      Result := True;
      CDSTranCabMuestraSucursal.Value := CDSSucursalDetalle.Value;
    END
  ELSE
    Result := False;
  CDSSucursal.Close;
END;


procedure TFormTransferencias.AutoCompletarUnoClick(Sender: TObject);
begin
  inherited;
  AutoCompletarUno.Checked:=Not(AutoCompletarUno.Checked);
end;

procedure TFormTransferencias.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  DMBuscadores.CDSBuscaComprob.Close;
  DMBuscadores.CDSBuscaComprob.CommandText:='';
  DMBuscadores.CDSBuscaComprob.CommandText:= 'select * from comprobantes where  compra_venta = ''V'' '+
                                             ' and tipo_comprob = ''TX'' and sucursal = :suc ';

  DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value         := CDSTranCabSUCURSAL.Value;

  DMBuscadores.CDSBuscaComprob.Open;

  if Not(Assigned(FormBuscaComprobantes)) then
    FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;

  if FormBuscaComprobantes.ModalResult=mrOk Then
    BEGIN
      CDSTranCabID_TIPOCOMPROBANTESetText(CDSTranCabID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
    END;
  DMBuscadores.CDSBuscaComprob.Close;
end;

procedure TFormTransferencias.BusquedaPorReferenciaExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(self);
  FormBuscarPorNroReferenica.CompraVta:='TX';
  FormBuscarPorNroReferenica.ShowModal;
  IF FormBuscarPorNroReferenica.Id > 0 THEN
    BEGIN
      TipoCpbte:= FormBuscarPorNroReferenica.Tipo;
      DatoNew  := IntToStr(FormBuscarPorNroReferenica.id);
      Recuperar.Execute;
    end
  else
    ShowMessage('No Hay Comprobante con ese Nro...');
end;

//procedure TFormTransferencias.wwCDSTranCabId_TipoCpbteSetText(Sender: TField; const Text: String);
//begin
//  inherited;
//  if Text[1]<>#13 Then
//    begin
//      Sender.AsString:=Text;
//      if Not(AsignarComprobante(Sender.AsInteger)) Then
//        begin
//           ShowMessage('Dato no Valido');
//           Sender.AsString:='';
//        end;
//      IF CDSTranCab.State=dsInsert Then
//        UltimoComprobante;
//     end;
//end;

procedure TFormTransferencias.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    CDSTranCabSucursalSetText(CDSTranCabSucursal, IntToStr(comBuscadorSucursal.Id));
  CDSBuscaSucursal.Close;

end;

procedure TFormTransferencias.CDSTranCabSUCURSALSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if Text[1]<>#13 Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarSucursal(Sender.AsInteger)) Then
        begin
          Sender.AsString:='';
          ShowMessage('Dato no Valido');
        end;
    end;
end;

procedure TFormTransferencias.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE   := 2;
  AutoSize := False;

  ArchivoIni                     := TIniFile.Create(ExtractFilePath(ParamStr(0))+'todos'+'_CompTX.ini');
  IdTipoCpbte                    := ArchivoIni.ReadInteger('Tipo', 'id', -1);
  ModoCosto                      := ArchivoIni.ReadInteger('Costo', 'modo', 0);
  chPrecioConIva.Checked         := ArchivoIni.ReadBool('coniva', 'coniva',True);
  chFechaRecepcion.Checked       := ArchivoIni.ReadBool('fecha', 'Fecha',False);
  ListaPrecios                   := ArchivoIni.ReadInteger('Lista', 'lista', DMMain_FD.ListaPorDefecto(-1));
  AutoCompletarUno.Checked       := ArchivoIni.ReadBool('AutoCompletar', 'Estado',False);
  VerCodigoAlternativo1.Checked  := ArchivoIni.ReadBool('codigo', 'codigo', False);
  SaltearUnidadesdeStock1.Checked:= ArchivoIni.ReadBool('SalteaUnidades', 'Estado',False);

  ArchivoIni.Free;

  AddClientDataSet(CDSTranCab,DSPTranCab);
  AddClientDataSet(CDSTranDet,DSPTranDet);
  AddClientDataSet(CDSTranSubDetalle,DSPTranSubDet);
  Tabla:='trancab';
  Campo:='id_trcab';
  pcDetalle.ActivePageIndex := 0;
  pagSeries.TabVisible      := DMMain_FD.ControlaSerie;//DMMain_FD.QOpciones.Fields[0].AsString[1]='S';
  // Lista de Codigos Serie en Memoria
  CodigosSeries:=TStringList.Create;
  CodigosSeries.Clear;

  CDSTranCab.Open;
  CDSTranDet.Open;
  CDSTranSubDetalle.Open;
  CDSListaPrecios.Close;

  if DMMain_FD.UsuarioAdministrador Then
    CDSListaPrecios.Params.ParamByName('uso').Value:='*'
  else
    CDSListaPrecios.Params.ParamByName('uso').Value:='*';
  CDSListaPrecios.OPen;

  if (FormTransferencias<>nil) and (FormTransferencias.Visible) then
    pnCostos.Visible:=DMMain_FD.UsuarioAdministrador;
  CambiaListaPrecio.Enabled:=DMMain_FD.UsuarioAdministrador;  
 end;

procedure TFormTransferencias.FormDestroy(Sender: TObject);
begin
  inherited;
  FormTransferencias:=nil;
end;

procedure TFormTransferencias.CDSTranCabSUCTRSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-(length(text)))+Text;
  CDSTranCabNroCpbte.AsString := CDSTranCabLETRATR.AsString +
                                 CDSTranCabSUCTR.AsString +
                                 CDSTranCabNUMEROTR.AsString;

end;

procedure TFormTransferencias.CDSTranCabNUMEROTRSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-(length(text)))+Text;
  CDSTranCabNroCpbte.AsString := CDSTranCabLETRATR.AsString +
                                 CDSTranCabSUCTR.AsString +
                                 CDSTranCabNUMEROTR.AsString;
end;

procedure TFormTransferencias.AgregarExecute(Sender: TObject);
begin
  CDSTranCab.Close;
  CDSTranCab.Params.ParamByName('id').Clear;
  CDSTranCab.Open;
  CDSTranDet.Close;
  CDSTranDet.Params.ParamByName('id_cab').Clear;
  CDSTranDet.OPen;
  CDSTranSubDetalle.Close;
  CDSTranSubDetalle.Params.ParamByName('id').Clear;
  CDSTranSubDetalle.Open;

  CDSTranDet.ReadOnly := False;
  CDSTranCab.ReadOnly := False;
  pnPrincipal.Enabled := True;
  pnCabecera.Enabled  := True;
  pnDetalle.Enabled   := True;
  inherited;
  Importado:=False;
  CodigosSeries.Clear;
  lbEstado.Caption         :='En Transito';
  pcDetalle.ActivePageIndex:=0;
  dbeFecha.SetFocus;

end;

procedure TFormTransferencias.CDSTranCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSTranCabID_TRCAB.Value              := ibgTranCab.IncrementFD(1);
  CDSTranCabSUCURSALSetText(CDSTranCabSUCURSAL,IntToStr(DMMain_FD.SucursalPorDef));
  CDSTranCabDEPOSITO_ORIGENSetText(CDSTranCabDEPOSITO_ORIGEN,IntToStr(DMMain_FD.DepositoPorSucursal(SucursalPorDefecto)));
  CDSTranCabESTADO.Value                := 'T'; // En transito
  CDSTranCabUSUARIO.Value               := DMMain_FD.UsuarioActivo;
  CDSTranCabFECHA_HORA.AsDateTime       := now;
  CDSTranCabFECHA.AsDateTime            := Date;
  CDSTranCabLISTAPRECIO.Value           := -1;
  CDSTranCabID_FACTURA_FRANQUICIA.Value := -1;
  CDSTranCabID_RTO.Value                := -1;

//  DMMain_FD.QListaPrecioPorDefecto.Close;
//  DMMain_FD.QListaPrecioPorDefecto.Open;
//  if DMMain_FD.QListaPrecioPorDefecto.Fields[0].AsString<>'' Then
   //DMMain_FD.QListaPrecioPorDefecto.Fields[0].Value;
//  DMMain_FD.QListaPrecioPorDefecto.CLose;

//  if CDSTranCabLISTAPRECIO.Value=-1 then
//    begin
//      QPrimerLista.Close;
//      QPrimerLista.Open;
//      if QPrimerLista.Fields[0].AsString<>'' Then
//        CDSTranCabLISTAPRECIO.Value:=QPrimerLista.Fields[0].Value;
//      QPrimerLista.CLose;
////    end;
  if ListaPrecios>-1 then
    CDSTranCabLISTAPRECIO.Value:=ListaPrecios
  else
    CDSTranCabLISTAPRECIO.AsInteger :=  DMMain_FD.ListaPorDefecto(SucursalPorDefecto);

  dbcLista.KeyValue := CDSTranCabLISTAPRECIO.AsInteger;

end;

procedure TFormTransferencias.BorrarExecute(Sender: TObject);
begin
  if Not(DSBase.DataSet.IsEmpty) and DMMain_FD.UsuarioAdministrador then
    begin
      if (MessageDlg('Está por hacer una opreación de borrado.. Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes) Then
        if Not(CDSTranCab.IsEmpty) Then
          begin
            DMMain_FD.fdcGestion.StartTransaction;
            try
              // **** Ingreso en el Log File  **************
              DMMain_FD.LogFileFD(0,4,'Borrado de TX Stock:'+
                                  CDSTranCabNOMBRE_DEPOSITO_ORIGEN.AsString+' >> '+
                                  CDSTranCabNOMBRE_DEPOSITO_DESTINO.AsString+' Nro.: '+
                                  CDSTranCabNROCPBTE.Value,
                                  'TXSTOCK');
              CDSTranCab.Delete;
              CDSTranCab.ApplyUpdates(0);

              DMMain_FD.fdcGestion.Commit;
            Except
              DMMain_FD.fdcGestion.Rollback;
              ShowMessage('Transaccion no finalizada....!');
            end;
          DatoNew  :=IntToStr(CDSTranCabID_TRCAB.Value);
          TipoCpbte:=CDSTranCabTIPOCPBTE.Value;
          Recuperar.Execute;
            //inherited;
          end;
    end
  else
    ShowMessage('Debe ser Administrador para usar esta Opción de borrado....');

end;

procedure TFormTransferencias.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
 // FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
//  FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1      := 3;
  FormBuscadorArticulos.Param2      := 1;
  FormBuscadorArticulos.Param3      := 2;
  FormBuscadorArticulos.Esquema     := -1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    CDSTranDetCodigoSetText(CDSTranDetCodigo,FormBuscadorArticulos.Codigo);
end;


procedure TFormTransferencias.CDSTranDetCODIGOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if FormTransferencias<>nil then
    begin
      if FormTransferencias.VerCodigoAlternativo1.Checked=True then
        Text:=Trim(CDSTranDetMUESTRACODALTERNATIVO.Value)
      else
        Text:=Trim(CDSTranDetCODIGO.Value);
    end;
end;

procedure TFormTransferencias.CDSTranDetCODIGOSetText(Sender: TField;
  const Text: String);
VAR
enter:Char;
begin
   Enter:=#13;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      DMMain_FD.EncontroCodigoBarra:=False;
      If CDSTranDet.State=dsBrowse Then
        CDSTranDet.edit;

      Sender.AsString      :=  DMMain_FD.SearchCodigo(Trim(Text),DSTranDet,VerCodigoAlternativo1.Checked);
      if Length(sender.AsString)>8 then
        Sender.AsString:=LeftStr(Sender.AsString,8);

      IF AsignarArticulo(Trim(Sender.AsString)) = False THEN
        BEGIN
          // Busqueda por codigo
          IF (Assigned(FormBuscadorArticulos)) THEN
            FreeAndNil(FormBuscadorArticulos);
          IF Not(Assigned(FormBuscadorArticulos)) THEN
            FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
          FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
          FormBuscadorArticulos.CampoNro          := 0;
          FormBuscadorArticulos.Param1 :=1;
          FormBuscadorArticulos.Param2 :=3;
          FormBuscadorArticulos.ListaPrecio:=CDSTranCabLISTAPRECIO.Value;
          FormBuscadorArticulos.Esquema    := -1;
          FormBuscadorArticulos.Dato              := Text;
          if FormBuscadorArticulos.Visible=False Then
            FormBuscadorArticulos.ShowModal;
          if FormBuscadorArticulos.Codigo<>'' Then
            begin
              IF CDSTranDet.State = dsBrowse THEN
                CDSTranDet.Edit;
              CDSTranDetCodigo.Text       :=  FormBuscadorArticulos.Codigo;
            end
          else
            Sender.AsString:='';
         // SysUtils.Abort;
        END;
      if DMMain_FD.EncontroCodigoBarra Then
        FormTransferencias.DBGrillaDetalle.OnKeyPress(FormTransferencias.DBGrillaDetalle,Enter);

      DBGrillaDetalle.SelectedIndex:= 2;
      if (AutoCompletarUno.Checked) Then
        DBGrillaDetalle.SelectedIndex:= 3;


    { este codigo era el de antes..................
      Sender.AsString:=copy('00000000',1,8-Length(Text))+Text;
      if Not(ASignarArticulo(Sender.AsString)) Then
        begin
          Sender.AsString:='';
          ShowMessage('Dato no Válido');
        end;
    }
  end;
end;

procedure TFormTransferencias.CDSTranDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSTranDetID_TRANCAB.Value          := CDSTranCabID_TRCAB.Value;
  CDSTranDetID_TRANDET.Value          := ibgTranDet.IncrementFD(1);
  CDSTranDetDEPOSITO_ORIGEN.Value     := CDSTranCabDEPOSITO_ORIGEN.Value;
  CDSTranDetDEPOSITO_DESTINO.Value    := CDSTranCabDEPOSITO_DESTINO.Value;
  CDSTranDetSUCURSAL.Value            := CDSTranCabSUCURSAL.Value;
  CDSTranDetNROCPBTE.Value            := CDSTranCabNROCPBTE.Value;
  CDSTranDetFECHA.AsDateTime          := CDSTranCabFECHA.AsDateTime;
  CDSTranDetTIPOCPBTE.AsString        := CDSTranCabTIPOCPBTE.AsString;
  CDSTranDetCLASECPBTE.AsString       := CDSTranCabCLASECPBTE.AsString;
  CDSTranDetCANTIDAD.AsFloat          := 0;
  CDSTranDetESTADO.Value              := 'T';
  CDSTranDetCANTIDAD_UNIDADES.AsFloat := 0;
  CDSTranDetPRESENTACION_CANT.AsFloat := 1;

end;

procedure TFormTransferencias.DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
begin
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (DBGrillaDetalle.SelectedIndex < 3) THEN
        DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF DBGrillaDetalle.DataSource.DataSet.Eof THEN
            DBGrillaDetalle.DataSource.DataSet.Append;
          DBGrillaDetalle.SelectedIndex := 0;
          key:=#0;
        END;
      Key := #0;
    END
  ELSE IF (Key = #10) THEN
    BEGIN
      Key := #0;
      if Not(Assigned(FormBuscadorArticulos)) then
        begin
          IF DBGrillaDetalle.SelectedField = CDSTranDetCodigo THEN
            BuscarArticulo.Execute;
        end;
      Key:=#0;
    END;
 // if DBGrillaDetalle.SelectedIndex<3 then
 //   DBGrillaDetalle.SelectedIndex:=3;

end;

procedure TFormTransferencias.CDSTranCabDEPOSITO_ORIGENSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if Text[1]<>#13 Then
    begin
      Origen:=0;
      Sender.AsString := Text;
      if Sender.AsInteger=CDSTranCabDEPOSITO_DESTINO.Value then
        begin
          Sender.Clear;
          CDSTranCabNOMBRE_DEPOSITO_ORIGEN.Value:='';
          Raise Exception.Create('Los depósitos deben ser disitintos...');
        end;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo depósito no Válido');
        END
      else
        VerificadorDetalle;
    end;
end;

procedure TFormTransferencias.CDSTranCabDEPOSITO_DESTINOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if Text[1]<>#13 Then
    begin
      Sender.AsString := Text;
      Origen:=1;
      if Sender.AsInteger=CDSTranCabDEPOSITO_ORIGEN.Value then
        begin
          Sender.Clear;
          CDSTranCabNOMBRE_DEPOSITO_DESTINO.Value:='';
          Raise Exception.Create('Los depósitos deben ser disitintos...');
        end;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo depósito no Válido');
        END
      else
        VerificadorDetalle;
    end;
end;

procedure TFormTransferencias.RxCOrigenButtonClick(Sender: TObject);
begin
  inherited;
  Origen:=0;
  BuscarDeposito.Execute;
end;

procedure TFormTransferencias.RxCDestinoButtonClick(Sender: TObject);
begin
  inherited;
  Origen:=1;
  BuscarDeposito.Execute;
end;

procedure TFormTransferencias.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaDeposito.Close;
  CDSBuscaDeposito.Open;
  comBuscadorDeposito.Execute;
    begin
      if Origen=0 Then
        CDSTranCabDEPOSITO_ORIGENSetText(CDSTranCabDEPOSITO_ORIGEN,IntToStr(comBuscadorDeposito.Id))
      else
        if Origen=1 Then
          CDSTranCabDEPOSITO_DESTINOSetText(CDSTranCabDEPOSITO_DESTINO,IntToStr(comBuscadorDeposito.Id));
    end;
  CDSBuscaDeposito.Close;
end;

procedure TFormTransferencias.ConfirmaExecute(Sender: TObject);
//VAR Control:String;
   // AutoConfirmacion:Boolean;
begin
  // aca recorro los detalles y re asigno los depositos
 // AutoConfirmacion:=False;
  VerificadorDetalle;

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='AUTOTX';
//  DMMain_FD.QOpciones.Open;

//  AutoConfirmacion  :=  DMMain_FD.QOpciones.Fields[0].AsString[1]='S';

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='CONTROLSERIE';
//  DMMain_FD.QOpciones.Open;
//
//  Control:=DMMain_FD.QOpciones.Fields[0].AsString[1];

//  DMMain_FD.QOpciones.Close;
  if CDSTranSubDetalle.State in [dsInsert,dsEdit] Then
    CDSTranSubDetalle.Post;
  if Not(ControlSerie) and (DMMain_FD.ControlaSerie){Control='S'} and (DSBase.State=dsInsert) then
    RAISE Exception.Create('La cantidad de Items debe ser igual a la cantidad de codigo barras.....!!!!');
  if CDSTranDet.State in [dsInsert,dsEdit] Then
    CDSTranDet.Post;

  if (dbeFecha.Text<>'') and (RxCSucursal.Text<>'') and
     (dbePrefijo.Text<>'') and
     (dbeNum.Text<>'') and (RxCOrigen.Text<>'') and
     (RxCDestino.Text<>'') and
     (RxCOrigen.Text<>RxCDestino.Text) then
        begin
          DatoNew  := IntToStr(CDSTranCabID_TRCAB.Value);
          TipoCpbte:= CDSTranCabTIPOCPBTE.Value;
          CDSTranCab.Post;
          inherited;
          Recuperar.Execute;

      // Borrardo de Archivos de Transferencias .....
          if ArchCabecera<>'' then
            begin
              DeleteFile(ArchCabecera);
              DeleteFile(ArchDetalle);
              DeleteFile(ArchSubDet);
            end;
      //*********************************

          if DMMain_FD.AutoConfirmaTxStock Then
            begin
              if RecibeTx.Enabled=False Then
                RecibeTx.Enabled:=True;
              RecibeTx.Execute;
              RecibeTx.Enabled:=False;
            end;
          if (Imprime='S') Then
            IF MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
              Imprimir.Execute;
          btNuevo.SetFocus;
       // ***** Exportamos Tx ************
          if (GenerarArchivoTXStk) and
             (CDSTranCabESTADO.Value='C') and
             (Not(CDSTranCab.IsEmpty)) and (Importado=False) then
            EnviarTx.Execute;
          
        end
   else
     BEGIN
       ShowMessage('Datos en la Cabecera Incompletos o depósitos mal cargados....');
       pnCabecera.Enabled := True;
       dbeFecha.SetFocus;
     END;

end;

procedure TFormTransferencias.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;
  IF (Key = #13)
    AND (NOT (ActiveControl IS Tbutton))
    AND (NOT (ActiveControl IS TDBGrid)) THEN
    BEGIN
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    END
  ELSE
    IF Key = #27 THEN
      Cancelar.Execute;
end;

procedure TFormTransferencias.FormResize(Sender: TObject);
begin
  inherited;
  if FormTransferencias<>nil then
   if FormTransferencias.Width<>939 then
     FormTransferencias.Width:=939;

end;

procedure TFormTransferencias.DBGrillaDetalleEditButtonClick(
  Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormTransferencias.DBGrillaDetalleColEnter(Sender: TObject);
var Enter:Char;
begin
  inherited;
  Enter:=#13;
  if (SaltearUnidadesdeStock1.Checked=True) and (DBGrillaDetalle.SelectedIndex=2)  then
    DBGrillaDetalle.OnKeyPress(DBGrillaDetalle,Enter)
  else

  if (SaltearUnidadesdeStock1.Checked=False) and (DBGrillaDetalle.SelectedIndex=2)  Then
    begin
      if DBGrillaDetalle.DataSource.DataSet.FieldByName('Codigo').AsString<>'' Then
        begin
          CDSStock.Close;
          CDSStock.Params.ParamByName('Codigo').Value := DBGrillaDetalle.DataSource.DataSet.FieldByName('Codigo').Value;
          CDSStock.Open;
          DBGrillaDetalle.Columns[2].PickList.Clear;
          DBGrillaDetalle.Columns[2].PickList.Add(CDSStockUNIDAD.Value);
          DBGrillaDetalle.Columns[2].PickList.Add(CDSStockUNIDAD_COMPRA.Value);
          CDSStock.Close;
        end;
    end;



  if DBGrillaDetalle.SelectedIndex>=5 Then
    DBGrillaDetalle.SelectedIndex:=4;

end;

procedure TFormTransferencias.DBGrillaDetalleDblClick(Sender: TObject);
begin
  inherited;
 if (DSBase.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty)) and (not(DBGrillaDetalle.DataSource.DataSet.IsEmpty)) then
    begin
      if not(Assigned(FormStock_2)) then
        FormStock_2:=TFormStock_2.Create(Self);
      FormStock_2.DatoNew:=DBGrillaDetalle.DataSource.DataSet.FieldByName('codigo').Value;
      formstock_2.recuperar.Execute;
      FormStock_2.Show;
    end;
end;

procedure TFormTransferencias.pnDetalleEnter(Sender: TObject);
begin
  inherited;
  if (dbeFecha.Text='') OR (RxCSucursal.Text='') OR
     (dbePrefijo.Text='') OR
     (dbeNum.Text='') OR (RxCOrigen.Text='') OR
     (RxCDestino.Text='') OR
     (RxCOrigen.Text=RxCDestino.Text) or
     (Trim(copy(dbeFecha.Text,1,2)) = '') then
     BEGIN
       ShowMessage('Datos en la Cabecera Incompletos o depósitos mal cargados....');
       pnCabecera.Enabled := True;
       dbeFecha.SetFocus;
     END
   else
     begin
        pnCabecera.Enabled:=False;
      end;
end;

procedure TFormTransferencias.PrevExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr( CDSTranCabTIPOCPBTE.AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(CDSTranCabCLASECPBTE.AsString,'''') +
             ' and sucursal  ='+CDSTranCabSUCURSAL.AsString;

  inherited;

end;

procedure TFormTransferencias.IgnorarControlDepositoDestinoClick(
  Sender: TObject);
begin
  inherited;
  //if Not(RecibeTx.Enabled) then

  IgnorarControlDepositoDestino.Checked:= not(IgnorarControlDepositoDestino.Checked);
  RecibeTx.Enabled                     := IgnorarControlDepositoDestino.Checked;


end;

procedure TFormTransferencias.ImprimirExecute(Sender: TObject);
BEGIN
 
  QComprob.Close;
  QComprob.ParamByName('id').Value  := CDSTranCabID_TIPOCOMPROBANTE.Value;
  QComprob.ParamByName('suc').Value := CDSTranCabSUCURSAL.Value;
  QComprob.Open;

  DMMain_FD.QEmpresa.Close;
  DMMain_FD.QEmpresa.Open;


  frTransferencia.PrintOptions.Printer:=PrNomCpbte;
  frTransferencia.SelectPrinter;

  frTransferencia.LoadFromFile( DMMain_FD.PathReportesCpbte+'\'+QComprobREPORTE.AsString);
  frTransferencia.PrintOptions.Copies := QComprobCOPIAS.AsInteger;

  //DMMain_FD.QOpciones.Close;
  QComprob.Close;
 // frTransferencia.PrepareReport;
  frTransferencia.ShowReport;
end;

procedure TFormTransferencias.LeerTxExecute(Sender: TObject);
var Nombre:String;
I,Origen,Destino:Integer;
P_Gravado,P_Exento,Importe_Iva,P_Total,P_ConIVA:Extended;
begin
  inherited;
  ArchCabecera:='';
  ArchDetalle :='';
  ArchSubDet  :='';
  if SucursalPorDefecto=SucursalAdmin then
    PathTxStock:=PathTxStockCtral;

//  if DSBase.State in [dsInsert] then
    begin
      if (Assigned(FormRecepcionTxStock)) then
        FreeAndNil(FormRecepcionTxStock);

      if Not(Assigned(FormRecepcionTxStock)) then
        FormRecepcionTxStock:=TFormRecepcionTxStock.Create(self);
      FormRecepcionTxStock.Directorio:=PathTxStock;// 'Transferencias';
      FormRecepcionTxStock.ShowModal;
      if (FormRecepcionTxStock.ModalResult=mrOk) then
        begin

          ArchCabecera:=FormRecepcionTxStock.NombreArchivoCab;
          ArchDetalle :=FormRecepcionTxStock.NombreArchivoDet;
          ArchSubDet  :=FormRecepcionTxStock.NombreArchivoSub;
          // controlo si existe....
          QControlCpbteExistente.Close;
          QControlCpbteExistente.ParamByName('tipo').Value    :=FormRecepcionTxStock.CDSCabecera.FieldByName('TIPOCPBTE').AsString;
          QControlCpbteExistente.ParamByName('clase').Value   :=FormRecepcionTxStock.CDSCabecera.FieldByName('CLASECPBTE').Value;
          QControlCpbteExistente.ParamByName('letra').Value   :=FormRecepcionTxStock.CDSCabecera.FieldByName('LETRATR').Value;
          QControlCpbteExistente.ParamByName('suc').Value     :=FormRecepcionTxStock.CDSCabecera.FieldByName('SUCTR').Value;
          QControlCpbteExistente.ParamByName('numero').Value  :=FormRecepcionTxStock.CDSCabecera.FieldByName('NUMEROTR').Value;
          QControlCpbteExistente.ParamByName('sucursal').Value:=FormRecepcionTxStock.CDSCabecera.FieldByName('SUCURSAL').Value;
          QControlCpbteExistente.Open;

          if QControlCpbteExistente.Fields[0].AsString<>'' then
            ShowMessage('Comprobante existente.... se cancela la Operacion...')
          ELSE
            begin
              Agregar.Execute;
              For i:=0 to FormRecepcionTxStock.CDSCabecera.FieldCount-1 do
                begin
                  if CDSTranCab.FindField(CDSTranCab.Fields[i].FieldName)<>nil Then
                    begin
                      Nombre:=FormRecepcionTxStock.CDSCabecera.Fields[i].FieldName;
                      //if Nombre='ID_TIPOCOMPROBANTE' then
                      //  CDSTranCabID_TIPOCOMPROBANTESetText(CDSTranCabID_TIPOCOMPROBANTE,FormRecepcionTxStock.CDSCabecera.FieldByName(Nombre).AsString);
                      if (Nombre<>'ID_TRCAB') and (Nombre<>'DEPOSITO_ORIGEN') and (Nombre<>'DEPOSITO_DESTINO') and (Nombre<>'LETRATR')
                         and (Nombre<>'CLASECPBTE') and (Nombre<>'SUCTR') and (Nombre<>'NUMEROTR') and (Nombre<>'NROCPBTE') then
                        CDSTranCab.FieldByName(Nombre).Value:=FormRecepcionTxStock.CDSCabecera.FieldByName(Nombre).Value;
                      if Nombre='DEPOSITO_ORIGEN' then
                        Origen:=FormRecepcionTxStock.CDSCabecera.FieldByName(Nombre).AsInteger;
                      if Nombre='DEPOSITO_DESTINO' then
                        Destino:=FormRecepcionTxStock.CDSCabecera.FieldByName(Nombre).AsInteger;
                    end;
                end;

              CDSTranCabESTADO.Value     :='T';
              CDSTranCabDEPOSITO_ORIGENSetText(CDSTranCabDEPOSITO_ORIGEN,IntToStr(Origen));
              CDSTranCabDEPOSITO_DESTINOSetText(CDSTranCabDEPOSITO_DESTINO,IntToStr(Destino));
             // CDSTranCabNUMEROTRSetText(CDSTranCabNUMEROTR,FormRecepcionTxStock.CDSCabecera.FieldByName('NUMEROTR').AsString);
              CDSTranCabFECHA.AsDateTime := FormRecepcionTxStock.CDSCabecera.FieldByName('FECHA').AsdateTime;
              CDSTranCabOBS1.AsString:= 'Origen :'+FormRecepcionTxStock.CDSCabecera.FieldByName('CLASECPBTE').AsString+'-'+
                                                  FormRecepcionTxStock.CDSCabecera.FieldByName('LETRATR').AsString+'-'+
                                                  FormRecepcionTxStock.CDSCabecera.FieldByName('SUCTR').AsString+'-'+
                                                  FormRecepcionTxStock.CDSCabecera.FieldByName('NUMEROTR').AsString+'// Suc:'+
                                                  FormRecepcionTxStock.CDSCabecera.FieldByName('SUCURSAL').AsString;

              FormRecepcionTxStock.CDSDetalle.First;
              while not(FormRecepcionTxStock.CDSDetalle.Eof) do
                begin
                  if DMMain_FD.GetCodigoExistente(FormRecepcionTxStock.CDSDetalle.FieldByName('CODIGO').AsString) then
                    begin
                      CDSTranDet.Append;
                      For i:=0 to FormRecepcionTxStock.CDSDetalle.FieldCount-1 do
                        begin
                          if CDSTranDet.FindField(FormRecepcionTxStock.CDSDetalle.Fields[i].FieldName)<>nil Then
                            begin
                              Nombre:=FormRecepcionTxStock.CDSDetalle.Fields[i].FieldName;
                              if (Nombre<>'ID_TRANCAB') and (Nombre<>'ID_TRANDET') and
                                 (Nombre<>'DEPOSITO_ORIGEN') and (Nombre<>'DEPOSITO_DESTINO') and
                                 (Nombre<>'ESTADO') and (Nombre<>'CLASECPBTE') and (Nombre<>'NROCPBTE') and
                                 (Nombre<>'FECHA_CONFIRMACION') then
                              CDSTranDet.FieldByName(Nombre).Value:=FormRecepcionTxStock.CDSDetalle.FieldByName(Nombre).Value;
                            end;
                        end;
                      CDSTranDet.Post;

                      FormRecepcionTxStock.CDSSubDet.First;
                      while not(FormRecepcionTxStock.CDSSubDetalle.Eof) do
                        begin
                          CDSTranSubDetalle.Append;
                          For i:=0 to FormRecepcionTxStock.CDSSubDetalle.FieldCount-1 do
                            begin
                              if CDSTranSubDetalle.FindField(FormRecepcionTxStock.CDSSubDetalle.Fields[i].FieldName)<>nil Then
                                begin
                                  Nombre:=FormRecepcionTxStock.CDSSubDetalle.Fields[i].FieldName;
                                  if (Nombre<>'ID_DETTRA') and (Nombre<>'ID_CABTRA') and
                                   (Nombre<>'DEPOSITOORIGEN')  and (Nombre<>'DEPOSITO') then
                                  CDSTranSubDetalle.FieldByName(Nombre).Value:=FormRecepcionTxStock.CDSSubDetalle.FieldByName(Nombre).Value;
                                end;
                            end;
                          CDSTranSubDetalle.Post;
                        end;
                    end;
                  FormRecepcionTxStock.CDSDetalle.Next;
                end;
              DBGrillaDetalle.SetFocus;
            end;
          Importado:=True;
        end;
      FreeAndNil(FormRecepcionTxStock);
    end;
end;

procedure TFormTransferencias.NextExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr( CDSTranCabTIPOCPBTE.AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(CDSTranCabCLASECPBTE.AsString,'''') +
             ' and sucursal  ='+CDSTranCabSUCURSAL.AsString;

  inherited;

end;

procedure TFormTransferencias.OrdenarxRubSUbRub1Click(Sender: TObject);
begin
  inherited;
  CDSTranDet.IndexFieldNames:='MUESTRARUBRO;MUESTRASUBRUB';
end;

procedure TFormTransferencias.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.TipoCpbte1:='TX';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.Tag := 10;
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
 //     Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
//      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    end;
end;

procedure TFormTransferencias.FormActivate(Sender: TObject);
begin
  inherited;
  if DSBase.DataSet.State = dsBrowse then
    begin
      if (DSBase.DataSet.IsEmpty=False) and (FormTransferencias<>Nil) then
        Recuperar.Execute;
    end;

end;

procedure TFormTransferencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if CodigosSeries<>nil then
    FreeAndNil(CodigosSeries);

  ArchivoIni             := TIniFile.Create(ExtractFilePath(ParamStr(0))+'todos'+'_CompTX.ini');
  ArchivoIni.WriteBool('coniva', 'coniva',chPrecioConIva.Checked );
  ArchivoIni.WriteBool('fecha', 'Fecha',chFechaRecepcion.Checked);
 // ArchivoIni.WriteInteger('Lista', 'lista', ListaPrecios);

  ArchivoIni.WriteBool('codigo', 'codigo', VerCodigoAlternativo1.Checked);
  ArchivoIni.WriteBool('AutoCompletar', 'Estado',AutoCompletarUno.Checked);
  ArchivoIni.WriteBool('SalteaUnidades', 'Estado',SaltearUnidadesdeStock1.Checked);

  ArchivoIni.Free;

  CDSTranCab.Close;
  CDSTranDet.Close;
  CDSTranSubDetalle.Close;


  inherited;
  Action:=caFree;
end;

procedure TFormTransferencias.CDSTranCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if (Text[1]<>#13) and (Text<>'') Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarComprobante(Sender.AsInteger)) Then
        begin
           ShowMessage('Dato no Valido');
           Sender.AsString:='';
        end;
      IF CDSTranCab.State=dsInsert Then
        UltimoComprobante;
     end;
end;

procedure TFormTransferencias.RxCSucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSTranCabSUCURSAL.Clear;
      CDSTranCabID_TIPOCOMPROBANTE.Clear;
      CDSTranCabMUESTRASUCURSAL.Clear;
      CDSTranCabMUESTRACOMPROBANTE.Clear;
      CDSTranCabLETRATR.Clear;
      CDSTranCabSUCTR.Clear;
      CDSTranCabNUMEROTR.Clear;
    end;

end;

procedure TFormTransferencias.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSTranCabSUCURSAL.Clear;
      CDSTranCabID_TIPOCOMPROBANTE.Clear;
      CDSTranCabMUESTRASUCURSAL.Clear;
      CDSTranCabMUESTRACOMPROBANTE.Clear;
      CDSTranCabLETRATR.Clear;
      CDSTranCabSUCTR.Clear;
      CDSTranCabNUMEROTR.Clear;
    end;

end;

procedure TFormTransferencias.SaltearUnidadesdeStock1Click(Sender: TObject);
begin
  inherited;
  SaltearUnidadesdeStock1.Checked:=Not(SaltearUnidadesdeStock1.Checked);
end;

procedure TFormTransferencias.lbTipoComprobClick(Sender: TObject);
var Mensaje:String;
begin
  inherited;
  if (Trim(RxCTipoCpbte.Text)<>'') and (DMMain_FD.UsuarioAdministrador) then
    begin
      IdTipoCpbte := StrToInt(RxCTipoCpbte.Text);
      if ModoCosto=0 then ModoCosto:=1
      else if ModoCosto=1 Then ModoCosto:=0;
      case ModoCosto of
        0:Mensaje:='Por Costo ';
        1:Mensaje:='Por fijacion de Precio';
      end;

      ArchivoIni             := TIniFile.Create(ExtractFilePath(ParamStr(0))+'todos'+'_CompTX.ini');
      ArchivoIni.WriteInteger('Tipo', 'id', IdTipoCpbte);
      ArchivoIni.WriteInteger('Costo', 'modo', ModoCosto);
      ArchivoIni.WriteInteger('Lista', 'lista', dbcLista.KeyValue);

      ArchivoIni.WriteString('repositorio', 'datos', '');

      ArchivoIni.Free;
      ShowMessage('Configurando Comprobante Tipo :' + RxCTipoCpbte.Text + #13 +
                  'por defecto...'+#13+'para el usuario activo '+DMMain_FD.UsuarioActivo+#13+
                  'Modo de Costo:'+Mensaje +#13 +
                  'Lista de Precios: '+dbcLista.Text);
    end;
end;

procedure TFormTransferencias.sbEstadoClick(Sender: TObject);
begin
  inherited;
 if ((CDSTranCabNOTA_TX_ID.AsString<>'') and (CDSTranCabNOTA_TX_ID.AsString<>'0') and (sbEstado.Cursor<>crDefault) ) then
    begin
      if Not(Assigned(FormNota_TransfStock)) then
        FormNota_TransfStock:=TFormNota_TransfStock.Create(Self);
      FormNota_TransfStock.DatoNew := CDSTranCabNOTA_TX_ID.AsString;
//      FormNota_TransfStock.TipoCpbte:='TX';
      FormNota_TransfStock.Recuperar.Execute;
    end;
end;

procedure TFormTransferencias.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frTransferencia.DesignReport;
end;

procedure TFormTransferencias.sbEstadoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
inherited;
 if ((CDSTranCabNOTA_TX_ID.AsString<>'') and (CDSTranCabNOTA_TX_ID.AsString<>'0')) then
    begin
      if x>(sbEstado.Panels[0].Width+10) then
        begin
          sbEstado.Cursor:= crHandPoint;
        end
      else
        sbEstado.Cursor:=crDefault;
    end;
end;

procedure TFormTransferencias.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  Imprimir.Enabled          := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));

  DBGrillaDetalle.ReadOnly  := DSBase.DataSet.State IN [dsBrowse];

  RecibeTx.Enabled        := (DSBase.DataSet.State IN [dsBrowse]) and
                             (Not(DSBase.Dataset.IsEmpty) and (CDSTranCabESTADO.Value='T'));

  if (RecibeTx.Enabled) then
    RecibeTx.Enabled      := CDSTranCabDEPOSITO_DESTINO.Value=DepositoPorDefecto;


  AnulaRechaza.Enabled    := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty) and ( CDSTranCabESTADO.Value='T'));

  if AnulaRechaza.Enabled then
    AnulaRechaza.Enabled  := CDSTranCabDEPOSITO_DESTINO.Value=DepositoPorDefecto;

  ReCalcularCosto.Enabled := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));

  dbcLista.Enabled        := DSBase.DataSet.State IN [dsInsert, dsEdit];
  chPrecioConIva.Enabled  := DSBase.DataSet.State IN [dsInsert, dsEdit];
  EnviarTx.Enabled        := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  LeerTx.Enabled          := (DSBase.DataSet.State IN [dsBrowse]);
  RxCOrigen.Enabled       := DMMain_FD.ModificaDeposito;
  btFechas.Enabled        := Imprimir.Enabled;
  pnCabecera.Enabled      := (Not(DSBase.DataSet.State IN [dsBrowse])) and (Not(DSBase.Dataset.IsEmpty));
  pnPrincipal.Enabled     := (Not(DSBase.DataSet.State IN [dsBrowse])) and (Not(DSBase.Dataset.IsEmpty));
  pnDetalle.Enabled       := (Not(DSBase.DataSet.State IN [dsBrowse])) and (Not(DSBase.Dataset.IsEmpty));
  pcDetalle.Enabled       := (Not(DSBase.DataSet.State IN [dsBrowse])) and (Not(DSBase.Dataset.IsEmpty));
  DBGrillaDetalle.Enabled := (Not(DSBase.Dataset.IsEmpty));
  generarRto.Enabled      := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
end;

procedure TFormTransferencias.EnviarTxExecute(Sender: TObject);
var Cadena:String;
begin
  inherited;
  if Not(CDSTranCab.IsEmpty)  Then
    begin
    //  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    //    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');

      //por si no esta definido los directorios lo mando
      if PathTxStock='' then
        PathTxStock:='C:\';
      if PathTxStockCtral='' then
        PathTxStockCtral:='C:\';

      Cadena:='TX_a_SUC['+CDSTranCabMUESTRASUCDESTINO.AsString+']-de-['+Trim(RxCOrigen.Text)+']'+dbeOrigen.Text + '-a-['+Trim(RxCDestino.Text)+']'+dbeDestino.Text+'-'+CDSTranCabNROCPBTE.Value +'-';
      QDepo_GeneraXML.Close;
      QDepo_GeneraXML.ParamByName('id').Value:=StrToInt(Trim(RxCDestino.Text));
      QDepo_GeneraXML.Open;
      // ***** Administro que Tx se gravan en el directorio comun y del Administrador *******
      if (QDepo_GeneraXMLGENERA_XML_COMUN.Value='S') and
         (CDSTranCabMUESTRASUCDESTINO.Value<>SucursalAdmin) and
         (CDSTranCabMUESTRASUCDESTINO.Value<>CDSTranCabSUCURSAL.Value) then
        begin
          // *******  a la carpeta comun de transferencia..... ***************
          CDSTranCab.SaveToFile(PathTxStock+'\'+Cadena+'TxCab.XML');
          CDSTranDet.SaveToFile(PathTxStock+'\'+Cadena+'TxDet.XM_');
          CDSTranSubDetalle.SaveToFile(PathTxStock+'\'+Cadena+'TxSub.XM_');
          // *****************************************************************
        end;
      QDepo_GeneraXML.Close;
      // *******  a la carpeta de la Sucursal Central ....(Admin) ***************
      if (CDSTranCabSUCURSAL.Value<>SucursalAdmin) Then
        begin
          CDSTranCab.SaveToFile(PathTxStockCtral+'\'+Cadena+'TxCab.XML');
          CDSTranDet.SaveToFile(PathTxStockCtral+'\'+Cadena+'TxDet.XM_');
          CDSTranSubDetalle.SaveToFile(PathTxStockCtral+'\'+Cadena+'TxSub.XM_');
        end;
      // *****************************************************************
    end
  else
    ShowMessage('No Hay datos para exportar....');
  ShowMessage('Datos exportados....en '+PathTxStock);


end;

procedure TFormTransferencias.RecuperarExecute(Sender: TObject);
begin
  inherited;
  sbEstado.Panels[0].Text:='';
  sbEstado.Panels[1].Text:='';
  CDSTranCab.Close;
  CDSTranCab.Params.ParamByName('id').Value    :=StrToInt(DatoNew);
  CDSTranCab.Open;
  CDSTranDet.Close;
  CDSTranDet.Params.ParamByName('id_cab').Value:=StrToInt(DatoNew);
  CDSTranDet.OPen;
  CDSTranSubDetalle.Close;
  CDSTranSubDetalle.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSTranSubDetalle.Open;

  if CDSTranCabESTADO.Value='A' Then
    lbEstado.Caption:='ANULADA/RECHAZADA'
  else
    if CDSTranCabESTADO.Value='C' Then
      lbEstado.Caption:='CONFIRMADA-RECIBIDA'
    else
      if CDSTranCabESTADO.Value='T' Then
        lbEstado.Caption:='EN TRANSITO';

  FormTransferencias.Caption:='Transferencias de Stock -- '+CDSTranCabFECHA_HORA.AsString+'//'+Copy(CDSTranCabUSUARIO.Value,1,15);

  sbEstado.Panels[1].Text   :='Ntx:'+CDSTranCabNOTA_TX_NUMERO.Value;

  pnPrincipal.Enabled   := True;
  pnDetalle.Enabled     := True;
  pcDetalle.Enabled     := True;
  DBGrillaDetalle.Width := DBGrillaDetalle.Width-1;
  DBGrillaDetalle.Width := DBGrillaDetalle.Width+1;

  if btNuevo.Visible and btNuevo.Enabled then
    btNuevo.SetFocus;

  IgnorarControlDepositoDestino.Enabled:=DMMain_FD.UsuarioActivo='master';

  pnCabecera.Enabled    :=False;
  DatoNew               :=''+DatoNew+'';
end;

procedure TFormTransferencias.PikeoExecute(Sender: TObject);
var Lote:Integer;
begin
  inherited;
  if DSBase.DataSet.State=dsInsert then
    begin
      if Not(Assigned(FormBorradoRegistroPikeo)) then
        FormBorradoRegistroPikeo:=TFormBorradoRegistroPikeo.create(Self);
      FormBorradoRegistroPikeo.Cliente:='';
      FormBorradoRegistroPikeo.ShowModal;
      if FormBorradoRegistroPikeo.ModalResult=mrOk then
        begin
          Lote:=-1;
          AgregarPikeo(FormBorradoRegistroPikeo.CDSRegistroPikeo);
          if MessageDlg('Borra registro de Pikeo....??',mtConfirmation,mbYesNo,0)=mryes then
            DMMain_FD.BorrarRegistrPikeo(Lote);
         end;
    end;//
end;

procedure TFormTransferencias.CancelarExecute(Sender: TObject);
begin
  CDSTranCab.Close;
  CDSTranCab.Params.ParamByName('id').Clear;
  CDSTranCab.Open;
  CDSTranDet.Close;
  CDSTranDet.Params.ParamByName('id_cab').Clear;
  CDSTranDet.OPen;
  CDSTranSubDetalle.Close;
  CDSTranSubDetalle.Params.ParamByName('id').Clear;
  CDSTranSubDetalle.Open;
  inherited;
  pcDetalle.ActivePageIndex:=0;
  CodigosSeries.Clear;
  btNuevo.SetFocus;

end;

procedure TFormTransferencias.FormShow(Sender: TObject);
begin
  inherited;
  if (FormTransferencias<>nil) and (FormTransferencias.Visible) then
    btNuevo.SetFocus;
end;

procedure TFormTransferencias.GenerarRtoExecute(Sender: TObject);
begin
  inherited;
  if (CDSTranCabID_RTO.Value<=-1) or (VarIsNull(CDSTranCabID_RTO.Value)) then
    begin
      if Not(Assigned(FormEleccionClientes)) then
        FormEleccionClientes := TFormEleccionClientes.Create(Self);
      FormEleccionClientes.ShowModal;
      if FormEleccionClientes.ModalResult=mrOk then
        begin
          if Not(Assigned(FormRemitos)) then
            FormRemitos:=TFormRemitos.Create(Self);
          FormRemitos.Show;
          FormRemitos.Agregar.Execute;
          DatosRemitos.CDSRtoCabCODIGOSetText(DatosRemitos.CDSRtoCabCODIGO,FormEleccionClientes.Codigo);
          DatosRemitos.CDSRtoCabID_TRANSFERENCIA.Value:=CDSTranCabID_TRCAB.value;
          CDSTranDet.First;
          while not(CDSTranDet.Eof) do
            begin
              DatosRemitos.CDSRtoDet.Append;
              DatosRemitos.CDSRtoDetCodigoArticuloSetText(DatosRemitos.CDSRtoDetCodigoArticulo,CDSTranDetCODIGO.AsString);
              DatosRemitos.CDSRtoDetCantidadSetText(DatosRemitos.CDSRtoDetCANTIDAD,CDSTranDetCANTIDAD.AsString);
              DatosRemitos.CDSRtoDetAFECTA_STOCK.Value:='N';
              DatosRemitos.CDSRtoDet.Post;
              CDSTranDet.Next;
            end;
        end;
    end
  else
    ShowMessage('Hay Un Remito Asociado...')
end;

procedure TFormTransferencias.DBGrillaDetalleCellClick(Column: TColumn);
begin
  inherited;
  if DBGrillaDetalle.SelectedIndex=2 Then
    if DBGrillaDetalle.DataSource.DataSet.FieldByName('Codigo').AsString<>'' Then
      begin
        CDSStock.Close;
        CDSStock.Params.ParamByName('Codigo').Value := DBGrillaDetalle.DataSource.DataSet.FieldByName('Codigo').Value;
        CDSStock.Open;
        DBGrillaDetalle.Columns[2].PickList.Clear;
        DBGrillaDetalle.Columns[2].PickList.Add(CDSStockUNIDAD.Value);
        DBGrillaDetalle.Columns[2].PickList.Add(CDSStockUNIDAD_COMPRA.Value);
        CDSStock.Close;
    end;
end;

procedure TFormTransferencias.CDSTranSubDetalleNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  CDSTranSubDetalleID.Value         := IBGTranSubDet.IncrementFD(1);
  CDSTranSubDetalleID_DETTRA.Value  := CDSTranDetID_TRANDET.Value;
  CDSTranSubDetalleID_CABTRA.Value  := CDSTranCabID_TRCAB.Value;
  CDSTranSubDetalleTIPOCPBTE.Value  := CDSTranCabTIPOCPBTE.Value;
  CDSTranSubDetalleCLASECPBTE.Value := CDSTranCabCLASECPBTE.Value;
  CDSTranSubDetalleFECHA.Value      := CDSTranCabFECHA.Value;
  CDSTranSubDetalleNROCPBTE.Value   := CDSTranCabNROCPBTE.Value;
  CDSTranSubDetalleCODIGOARTICULO.Value := CDSTranDetCODIGO.Value;
  CDSTranSubDetalleDEPOSITO.Value       := CDSTranCabDEPOSITO_DESTINO.Value;
  CDSTranSubDetalleDEPOSITOORIGEN.Value := CDSTranCabDEPOSITO_ORIGEN.Value;
end;

procedure TFormTransferencias.BuscarSerieExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaNroSerie.Close;
  CDSBuscaNroSerie.Params.ParamByName('codigo').Value  := CDSTranDetCODIGO.Value;
  CDSBuscaNroSerie.Params.ParamByName('deposito').Value:= CDSTranDetDEPOSITO_ORIGEN.Value;
  CDSBuscaNroSerie.Open;
  comBuscadorSerie.Execute;
  if comBuscadorSerie.rOk  Then
    CDSTranSubDetalleSERIESetText(CDSTranSubDetalleSERIE,comBuscadorSerie.Id);
  CDSBuscaNroSerie.Close;

end;

procedure TFormTransferencias.CDSTranSubDetalleSERIESetText(Sender: TField;
  const Text: String);
var i:Integer;
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      // verifico si no fue ingresado en el comprobante
      if CDSTranSubDetalle.State=dsBrowse Then
        CDSTranSubDetalle.edit;
      Sender.AsString:=UpperCase(Text);

      i:=CodigosSeries.IndexOf(UpperCase(Text));
      if i>=0 Then
        begin
          Sender.Clear;
          showmessage('Codigo de Serie Ingresado ...... ');
          SysUtils.Abort;
        end
      else
        begin
          DMBuscadores.QBuscaSerieTransito.Close;
          DMBuscadores.QBuscaSerieTransito.ParamByName('codigo').Value := CDSTranDetCODIGO.Value;
          DMBuscadores.QBuscaSerieTransito.ParamByName('Serie').Value  := Sender.AsString;
          DMBuscadores.QBuscaSerieTransito.Open;
          if DMBuscadores.QBuscaSerieTransitoSERIE.Value<>'' Then
            begin
              Sender.Clear;
              showmessage('Codigo de Serie en transito ...... ');
              CDSTranSubDetalle.Cancel;
              //SysUtils.Abort;
    //         Sender.AsString:= '';
            end
          else
            if CDSTranDetCON_NRO_SERIE.Value='S' Then
              begin
                QNroSerie.Close;
                QNroSerie.ParamByName('codigo').Value      := CDSTranDetCODIGO.Value;
                QNroSerie.ParamByName('codigoserie').Value := Sender.AsString;
                QNroSerie.ParamByName('deposito').Value    := CDSTranDetDEPOSITO_ORIGEN.Value;
                QNroSerie.Open;
                IF (QNroSerie.Fields[0].AsString='')  THEN
                  BEGIN
                    ShowMessage('Codigo Serie Inexistente, o en otro depósito, o ya fué entregado...');
                    Sender.AsString:= '';
                    CDSTranSubDetalle.Cancel;
                    //sysutils.Abort;
                  END;
                QNroSerie.Close;
              end;
          DMBuscadores.QBuscaSerieTransito.Close;
        end;
     end;
end;

procedure TFormTransferencias.chPrecioConIvaClick(Sender: TObject);
begin
  inherited;
  if DSBase.State in [dsInsert,dsEdit] then
    Recalcular.Execute;
  
end;

procedure TFormTransferencias.dbgSeriesKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 IF Key = #13 THEN
    BEGIN
      Key := #0;
      DBGSeries.DataSource.DataSet.Append;
    END;
end;

procedure TFormTransferencias.dbcListaClick(Sender: TObject);
begin
  inherited;
  if (dbcLista.KeyValue<>Null) Then
    begin
      ListaPrecios:= dbcLista.KeyValue;
      ArchivoIni             := TIniFile.Create(ExtractFilePath(ParamStr(0))+'todos'+'_CompTX.ini');
      ArchivoIni.WriteInteger('Lista', 'lista', ListaPrecios);
      ArchivoIni.Free;
      Recalcular.Execute;
    end;
end;

procedure TFormTransferencias.dbcListaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=VK_back) or (Key=VK_delete) Then
    begin
      CDSTranCabLISTAPRECIO.Clear;
      Recalcular.Execute;
    end;

end;

procedure TFormTransferencias.dbgDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (State=[gdSelected]) Then
    begin
      dbgDetalle.Canvas.Font.Color:=clWhite;
      dbgDetalle.Canvas.Brush.Color:=clNavy;
    end
  else
    if (dbgDetalle.DataSource.DataSet.FieldByName('Con_Nro_Serie').Value='S') Then
      begin
        dbgDetalle.Canvas.Font.Style:=[fsBold];
        dbgDetalle.Canvas.Font.Color:=clRed;
      end
    else
      begin
        dbgDetalle.Canvas.Font.Color:=clWindowText;
        dbgDetalle.Canvas.Font.Style:=[];
      end;
  dbgDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormTransferencias.CDSTranSubDetalleBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if ((CDSTranSubDetalle.RecordCount+1)> Trunc(CDSTranDetCANTIDAD.AsFloat))
  or (CDSTranDetCON_NRO_SERIE.Value='N') Then
    begin
      sysutils.Abort;
      RAISE Exception.Create('No se pueden cargara mas items de los comprados...')
    end;

end;

procedure TFormTransferencias.CDSTranSubDetalleBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  IF ((CDSTranSubDetalleSERIE.AsString = '') AND
     (CDSTranSubDetalle.State IN [dsInsert, dsEdit]))
    THEN
      BEGIN
        CDSTranSubDetalle.Cancel;
        SysUtils.Abort;
      END;

end;

procedure TFormTransferencias.pcDetalleEnter(Sender: TObject);
begin
  inherited;
  if pcDetalle.ActivePageIndex=0 Then
    DBGrillaDetalle.SetFocus;
end;

procedure TFormTransferencias.CDSTranDetCANTIDADSetText(Sender: TField;
  const Text: String);
var TextAux:String;
begin
  inherited;
  if Text<>'' Then
     begin
       TextAux:=Text;
       while pos(',',TextAux)<>0 do
         delete(TextAux,(Pos(',',textAux)),1);
       Sender.AsString :=TextAux;
       CDSTranDetCOSTO_TOTAL.AsFloat := CDSTranDetCOSTO.AsFloat * Sender.AsFloat;
       CDSTranDetPRECIO_TOTAL.AsFloat:= CDSTranDetPRECIO.AsFloat * Sender.AsFloat;
      // Sender.AsFloat  :=Moneda3D(' ','0.00',Sender.AsFloat);
       if (DMMain_FD.VenderSinStock =False) and (CDSTranDetAFECTA_STOCK.Value='S') Then
         begin
//           CDSExistencia.Close;
//           CDSExistencia.Params.ParamByName('Unidad').Value   := 'V';
//           CDSExistencia.Params.ParamByName('Codigo').Value   := CDSTranDetCODIGO.Value;
//           CDSExistencia.Params.ParamByName('usuario').AsFloat:= DMMain_FD.UsuarioActivoId;
//           CDSExistencia.Params.ParamByName('fisico').AsFloat := 0;
//           CDSExistencia.Open;
//           CDSExistencia.Locate('Codigo_stk;Deposito_stk',VarArrayOf([CDSTranDetCODIGO.Value,CDSTranDetDEPOSITO_ORIGEN.Value]),[]);

           DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
           DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('codigo').AsString    :=CDSTranDetCODIGO.Value;
           DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('deposito').AsInteger :=CDSTranDetDEPOSITO_ORIGEN.Value;
           DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('unidad').AsString    :='V';
           DMStoreProcedure.QExistenciaStockArticuloDepo.Open;

           if (DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat<=0) or (Sender.AsFloat>DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat) Then
             begin
               IF MessageDlg('No Hay stock Suficiente para esta operación....Continua Igual.??',mtConfirmation,mbYesNo,0,mbNo)=mrYes Then
                 Sender.AsFloat:=0;
             end;
           DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
         end;

        CDSTranDetCANTIDAD_UNIDADES.AsFloat:=Sender.AsFloat/CDSTranDetPRESENTACION_CANT.AsFloat;
     end;
end;

procedure TFormTransferencias.CDSTranDetAfterPost(DataSet: TDataSet);
begin
  inherited;

  spUltimaUnidad.Close;
  spUltimaUnidad.ParamByName('Codigo').Value :=CDSTranDetCODIGO.Value;
  spUltimaUnidad.ParamByName('Unidad').Value :=CDSTranDetUNIDAD.Value;
  spUltimaUnidad.ExecProc;
  spUltimaUnidad.Close;
  Sumar;
  DBGrillaDetalle.SelectedIndex:=0;
end;

procedure TFormTransferencias.CDSTranDetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CDSTranSubDetalle.First;
  while Not(CDSTranSubDetalle.eof) do
    begin
      CDSTranSubDetalle.Delete;
      CDSTranSubDetalle.Next;
    end;
end;

procedure TFormTransferencias.CDSTranSubDetalleAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  CodigosSeries.Add(CDSTranSubDetalleSERIE.Value);

end;

procedure TFormTransferencias.CDSTranSubDetalleBeforeDelete(
  DataSet: TDataSet);
VAR I:Integer;
begin
  inherited;
  i:=CodigosSeries.IndexOf(CDSTranSubDetalleSERIE.AsString);
  CodigosSeries.Delete(I);
end;

procedure TFormTransferencias.CDSTranDetAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormTransferencias.CDSTranDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IF (CDSTranDet.RecordCount > Renglones) THEN
    BEGIN
      ShowMessage('No se pueden Ingresar más Items' + #13 +
        'Evento - (AfterInsert)');
      SysUtils.Abort;
      CDSTranDet.Cancel;
    END;
end;

procedure TFormTransferencias.CDSTranDetBeforePost(DataSet: TDataSet);
begin
  inherited;
  IF CDSTranDet.State IN [dsInsert, dsEdit] THEN
    CDSTranDetNroCpbte.Value:=CDSTranCabLETRATR.Value + CDSTranCabSUCTR.Value + CDSTranCabNUMEROTR.Value;
  IF ((CDSTranDetCODIGO.AsString = '') OR (CDSTranDet.RecordCount > Renglones)) AND
    (CDSTranDet.State IN [dsInsert, dsEdit])
    THEN
    BEGIN
      CDSTranDet.Cancel;
      SysUtils.Abort;
    END;
end;

procedure TFormTransferencias.ReCalcularCostoExecute(Sender: TObject);
VAR Puntero:TBookmark;
begin
  inherited;
  Puntero:=CDSTranDet.GetBookmark;
  CDSTranCab.Edit;
  CDSTranDet.First;
  Renglones:=CDSTranDet.RecordCount+1;

  CDSTranDet.DisableControls;
  while Not(CDSTranDet.Eof) DO
    begin
      CDSTranDet.edit;

      CDSStock.Close;
      CDSStock.Params.ParamByName('Codigo').Value := CDSTranDetCODIGO.AsString;
      CDSStock.Open;

      if ModoCosto=0 then
        CDSTranDetCOSTO.AsFloat        := CDSStockCOSTO_TOTAL_STK.AsFloat
      else
        if ModoCosto=1 then
          CDSTranDetCOSTO.AsFloat        := CDSStockFIJACION_PRECIO_TOTAL.AsFloat;

      CDSTranDetCOSTO_TOTAL.AsFloat := CDSTranDetCOSTO.AsFloat * CDSTranDetCANTIDAD.AsFloat;
      CalculaPrecioVta;
      CDSTranDet.Next;
    end;
  CDSTranDet.GotoBookmark(Puntero);
  CDSTranDet.FreeBookmark(Puntero);
  CDSTranDet.EnableControls;
 // Sumar;
  CDSTranCab.Post;
  CDSTranDet.ApplyUpdates(0);
  CDSTranCab.ApplyUpdates(0);

  Recuperar.Execute;
end;


procedure TFormTransferencias.RecalcularExecute(Sender: TObject);
VAR Puntero:TBookmark;
begin
  inherited;
  Puntero:=CDSTranDet.GetBookmark;
  CDSTranDet.First;
  CDSTranDet.DisableControls;
  while Not(CDSTranDet.Eof) DO
    begin
      CDSTranDet.edit;
      CalculaPrecioVta;
      CDSTranDetCANTIDADSetText(CDSTranDetCANTIDAD,CDSTranDetCANTIDAD.AsString);
      CDSTranDet.Next;
    end;
  CDSTranDet.GotoBookmark(Puntero);
  CDSTranDet.FreeBookmark(Puntero);
  CDSTranDet.EnableControls;
  Sumar;
end;

procedure TFormTransferencias.RecibeTxExecute(Sender: TObject);
var Cual:Byte;
begin
  inherited;
  if CDSTranCabESTADO.Value='T' Then
    begin
     DMMain_FD.fdcGestion.StartTransaction;
     try
        spConfirmar.Close;
        spConfirmar.ParamByName('id_transferencia').Value     := CDSTranCabID_TRCAB.Value;
        spConfirmar.ParamByName('estado').Value               := 'C';
        if chFechaRecepcion.Checked=False then
          spConfirmar.ParamByName('Fecha').Value              := Now
        else
          spConfirmar.ParamByName('Fecha').Value              := CDSTranCabFECHA.AsDateTime+Time;
        spConfirmar.ParamByName('usuario').Value              := DMMain_FD.UsuarioActivo;
        spConfirmar.ExecProc;
        spConfirmar.Close;

        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Transaccion no finalizada....!');
      end;
      DatoNew:=IntToStr(CDSTranCabID_TRCAB.Value);
      TipoCpbte:=CDSTranCabTIPOCPBTE.Value;
      Recuperar.Execute;
    end
  else
    ShowMessage(' No se puede confirmar un Tx ya Confirmada/Anulada/Rechazada');
end;

procedure TFormTransferencias.AnulaRechazaExecute(Sender: TObject);
begin
  inherited;
  if CDSTranCabESTADO.Value='T' Then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spConfirmar.Close;
        spConfirmar.ParamByName('id_transferencia').AsInteger:=CDSTranCabID_TRCAB.Value;
        spConfirmar.ParamByName('estado').AsString  := 'A';
        spConfirmar.ParamByName('Fecha').AsDate     := now;
        spConfirmar.ParamByName('usuario').AsString := DMMain_FD.UsuarioActivo;
        spConfirmar.ExecProc;
        spConfirmar.Close;
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Transaccion no finalizada....!');
      end;
      DatoNew:=IntToStr(CDSTranCabID_TRCAB.Value);
      TipoCpbte:=CDSTranCabTIPOCPBTE.Value;
      Recuperar.Execute;
    end
  else
    ShowMessage(' No se puede Anular/Rechazar un Tx ya Confirmada o Anulada');
end;

end.


