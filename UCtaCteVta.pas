UNIT UCtaCteVta;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBClient, Provider,
  ExtCtrls, ActnList, StdCtrls, Mask,
  ShellApi, Buttons, frxClass,System.Variants,
  frxDBSet, Menus,IniFiles,Printers, Librerias, ComCtrls,
  frxExportHTML, FileCtrl, DataExport, DataToXLS,
  CheckLst,   JvExControls, JvGradient,  JvDBLookup,
  frxExportPDF, JvComponentBase, JvFormPlacement, JvExMask,
  JvToolEdit, FMTBcd, SqlExpr, JvExDBGrids, JvDBGrid, JvComCtrls, JvExComCtrls,
  DateUtils, DBCtrls, JvBaseEdits, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinOffice2007Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxCheckBox, System.Actions,DBXCommon,VirtualUI_sdk, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxNavigator, JvAppStorage,
  JvAppIniStorage, dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,cxGridExportLink,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,StrUtils, frxExportBaseDialog, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  System.ImageList, Vcl.ImgList, dxSkinWXI, frCoreClasses;

TYPE
  TFormCtaCteVta = CLASS(TForm)
    ActionList1: TActionList;
    TraerCtaCte: TAction;
    frCtaCte: TfrxReport;
    Imprimir: TAction;
    frDBDSCtaCte: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    VerComprobante: TAction;
    VerComprobante1: TMenuItem;
    DSPEmpresa: TDataSetProvider;
    BuscarCliente: TAction;
    FiltraDebe: TAction;
    FiltraDebe1: TMenuItem;
    FiltraHaber: TAction;
    TodoLosMovimientos: TAction;
    SlolosCreditos1: TMenuItem;
    TodoslosMovimientos1: TMenuItem;
    EnviarCorreo: TAction;
    DataToXLS: TDataToXLS;
    SaveDialog: TSaveDialog;
    Comprobantes: TAction;
    DSValoresACobrar: TDataSource;
    VerChe3: TAction;
    frDBEmpresa: TfrxDBDataset;
    frDBClientes: TfrxDBDataset;
    DSFiltroDet: TDataSource;
    DSFiltroCab: TDataSource;
    frxPDFExport1: TfrxPDFExport;
    Incidencias: TAction;
    JvFormStorage: TJvFormStorage;
    CDSEmpresa: TClientDataSet;
    CDSEmpresaNOMBRE: TStringField;
    CDSEmpresaACTIVIDAD: TStringField;
    CDSEmpresaDIRECCION: TStringField;
    CDSEmpresaLOCALIDAD: TStringField;
    CDSEmpresaCORREO: TStringField;
    CDSEmpresaTELEFONO1: TStringField;
    CDSEmpresaTELEFONO2: TStringField;
    CDSEmpresaCUIT: TStringField;
    CDSEmpresaCONDICIONIVA: TStringField;
    CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    CDSEmpresaLOGO: TBlobField;
    CDSEmpresaCPOSTAL: TStringField;
    CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_ING_BRUTOS: TStringField;
    CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    CDSEmpresaTASA_PERCEPCION_IB: TFloatField;
    CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField;
    CDSEmpresaPROVINCIA: TIntegerField;
    CDSAplicaciones: TClientDataSet;
    DSPAplicaciones: TDataSetProvider;
    CDSAplicacionesID_MOV: TIntegerField;
    CDSAplicacionesID_MOVCCVTA: TIntegerField;
    CDSAplicacionesFECHA: TSQLTimeStampField;
    CDSAplicacionesCLIENTE: TStringField;
    CDSAplicacionesID_CPBTE: TIntegerField;
    CDSAplicacionesTIPOCPBTE: TStringField;
    CDSAplicacionesCLASECPBTE: TStringField;
    CDSAplicacionesNUMEROCPBTE: TStringField;
    CDSAplicacionesAPLICA_ID_CPBTE: TIntegerField;
    CDSAplicacionesAPLICA_TIPOCPBTE: TStringField;
    CDSAplicacionesAPLICA_CLASECPBTE: TStringField;
    CDSAplicacionesAPLICA_NROCPBTE: TStringField;
    CDSAplicacionesDETALLE: TStringField;
    CDSAplicacionesCONCILIADO: TStringField;
    CDSRtos: TClientDataSet;
    DSPRtos: TDataSetProvider;
    CDSRtosFECHAVTA: TSQLTimeStampField;
    CDSRtosNROCPBTE: TStringField;
    CDSRtosTOTAL: TFloatField;
    DSRtos: TDataSource;
    CDSRtosID_RTO: TIntegerField;
    VerRtos: TAction;
    pnRtos: TPanel;
    dbgRtos: TJvDBGrid;
    pcCtaCte: TJvPageControl;
    Pag1: TTabSheet;
    pag2: TTabSheet;
    pnCtaCte: TPanel;
    SpeedButton2: TSpeedButton;
    Label6: TLabel;
    lbMensaje: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    btImprimir: TBitBtn;
    btVerCC: TBitBtn;
    btExcel: TBitBtn;
    BitBtn2: TBitBtn;
    dbgMovimientos: TDBGrid;
    dbgValores: TDBGrid;
    dbcGrupo: TJvDBLookupCombo;
    chbUsaFiltro: TCheckBox;
    DSPFacCab: TDataSetProvider;
    CDSFacCab: TClientDataSet;
    CDSFacCabID_FC: TIntegerField;
    CDSFacCabTIPOCPBTE: TStringField;
    CDSFacCabCLASECPBTE: TStringField;
    CDSFacCabCODIGO: TStringField;
    CDSFacCabNROCPBTE: TStringField;
    CDSFacCabLETRAFAC: TStringField;
    CDSFacCabSUCFAC: TStringField;
    CDSFacCabNUMEROFAC: TStringField;
    CDSFacCabCONDICIONVTA: TIntegerField;
    CDSFacCabANULADO: TStringField;
    CDSFacCabNRORTO: TStringField;
    CDSFacCabIMPRESO: TStringField;
    CDSFacCabINGRESA_A_CTACTE: TStringField;
    CDSFacCabINGRESA_LIBRO_IVA: TStringField;
    CDSFacCabPOR_CTA_Y_ORDEN: TStringField;
    CDSFacCabPROVEEDOR: TStringField;
    CDSFacCabTIPO_VTA: TStringField;
    CDSFacCabID_RECEPCION_GTIA: TIntegerField;
    CDSFacCabJURIDICION: TIntegerField;
    CDSFacCabJURIDICION_LOCALIDAD: TIntegerField;
    CDSFacCabMUESTRASUCURSAL: TStringField;
    DSFacCab: TDataSource;
    dbgNC_Ctdo: TJvDBGrid;
    pgResumen: TTabSheet;
    dbgListadoMov: TDBGrid;
    Label8: TLabel;
    btListarClientes: TButton;
    btImprimeListado: TBitBtn;
    frDBListado: TfrxDBDataset;
    StatusBar1: TStatusBar;
    frDBCListaClientes: TfrxDBDataset;
    btSeleccion: TButton;
    DSCtaCte: TDataSource;
    Label10: TLabel;
    Desde_2: TJvDateEdit;
    Label11: TLabel;
    UpDown2: TUpDown;
    Hasta_2: TJvDateEdit;
    pcCheques: TTabSheet;
    DBGrid1: TDBGrid;
    PopupMenu2: TPopupMenu;
    ExportaraExcel1: TMenuItem;
    btRefresh: TBitBtn;
    DBText1: TDBText;
    chVerOriginal: TCheckBox;
    VerRegistroAjustes: TAction;
    N1: TMenuItem;
    VerRegistroAjustes1: TMenuItem;
    edTotalRto: TJvCalcEdit;
    BitBtn4: TBitBtn;
    Recalcular: TAction;
    btImpRtos: TBitBtn;
    ImpRtos: TAction;
    frDbRtos: TfrxDBDataset;
    chbMoneda: TCheckBox;
    Label12: TLabel;
    BorrarConsolidaciones: TAction;
    N2: TMenuItem;
    BorrarConsolidaciones1: TMenuItem;
    DSCtasAsociadas: TDataSource;
    Consolidar: TAction;
    Consolidar1: TMenuItem;
    DSCtasFiltro: TDataSource;
    edDebe: TJvCalcEdit;
    edHaber: TJvCalcEdit;
    N3: TMenuItem;
    ConsolidarTodo: TAction;
    ConsolidarTodo1: TMenuItem;
    chOcultaAjustesConciliacion: TCheckBox;
    cxGClientesDBTableView1: TcxGridDBTableView;
    cxGClientesLevel1: TcxGridLevel;
    cxGClientes: TcxGrid;
    DBText2: TDBText;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    pagAgrupado: TTabSheet;
    cxGAgrupadoDBTableView1: TcxGridDBTableView;
    cxGAgrupadoLevel1: TcxGridLevel;
    cxGAgrupado: TcxGrid;
    PopupMenu3: TPopupMenu;
    ExportaraExcel2: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    SpeedButton4: TSpeedButton;
    AplicacionesCC: TAction;
    DSMovCC: TDataSource;
    cxGClientesDBTableView1CODIGO: TcxGridDBColumn;
    cxGClientesDBTableView1NOMBRE: TcxGridDBColumn;
    cxGClientesDBTableView1Seleccion: TcxGridDBColumn;
    cxGClientesDBTableView1SALDO: TcxGridDBColumn;
    cxGAgrupadoDBTableView1FECHAVTA: TcxGridDBColumn;
    cxGAgrupadoDBTableView1FECHAVTO: TcxGridDBColumn;
    cxGAgrupadoDBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGAgrupadoDBTableView1DETALLE: TcxGridDBColumn;
    cxGAgrupadoDBTableView1DEBE: TcxGridDBColumn;
    cxGAgrupadoDBTableView1HABER: TcxGridDBColumn;
    cxGAgrupadoDBTableView1SALDO: TcxGridDBColumn;
    cxGAgrupadoDBTableView1SaldoCC: TcxGridDBColumn;
    cxGAgrupadoDBTableView1CLIENTE: TcxGridDBColumn;
    cxGAgrupadoDBTableView1NROCPBTE: TcxGridDBColumn;
    cxGAgrupadoDBTableView1ID_CPBTE: TcxGridDBColumn;
    cxGAgrupadoDBTableView1ID_MOVCCVTA: TcxGridDBColumn;
    cxGAgrupadoDBTableView1CUOTA: TcxGridDBColumn;
    cxGAgrupadoDBTableView1SIGNOMONEDA: TcxGridDBColumn;
    cxGAgrupadoDBTableView1ANIOMES: TcxGridDBColumn;
    cxGAgrupadoDBTableView1FC_CONSOLIDAD: TcxGridDBColumn;
    cxGAgrupadoDBTableView1CTA_ASOCIADA: TcxGridDBColumn;
    QFacC: TFDQuery;
    QValoresACobrar: TFDQuery;
    QFiltroD: TFDQuery;
    QRtos: TFDQuery;
    CDSFacCabNOMBRE: TStringField;
    CDSFacCabRAZONSOCIAL: TStringField;
    CDSFacCabDIRECCION: TStringField;
    CDSFacCabCPOSTAL: TStringField;
    CDSFacCabLOCALIDAD: TStringField;
    CDSFacCabTIPOIVA: TIntegerField;
    CDSFacCabCUIT: TStringField;
    CDSFacCabLISTAPRECIO: TIntegerField;
    CDSFacCabN_OPERACION2: TFloatField;
    CDSFacCabNETOGRAV1: TFloatField;
    CDSFacCabNETOGRAV2: TFloatField;
    CDSFacCabNETONOGRAV1: TFloatField;
    CDSFacCabNETONOGRAV2: TFloatField;
    CDSFacCabDSTO: TFloatField;
    CDSFacCabDSTOIMPORTE: TFloatField;
    CDSFacCabNETOEXEN1: TFloatField;
    CDSFacCabNETOEXEN2: TFloatField;
    CDSFacCabTOTAL: TFloatField;
    CDSFacCabDEBE: TFloatField;
    CDSFacCabOBSERVACION1: TStringField;
    CDSFacCabOBSERVACION2: TStringField;
    CDSFacCabCPTE_MANUAL: TStringField;
    CDSFacCabSUCURSAL: TIntegerField;
    CDSFacCabFACTURANRO: TStringField;
    CDSFacCabZONA: TIntegerField;
    CDSFacCabLDR: TIntegerField;
    CDSFacCabDEPOSITO: TIntegerField;
    CDSFacCabCALCULA_SOBRETASA: TStringField;
    CDSFacCabDESGLOZAIVA: TStringField;
    CDSFacCabNROENTREGA: TIntegerField;
    CDSFacCabTIPO_REMITO: TStringField;
    CDSFacCabIDREMITO: TIntegerField;
    CDSFacCabREDUCIDA: TStringField;
    CDSFacCabCOMSIONVENDEDOR: TFloatField;
    CDSFacCabLIQUIDADA: TStringField;
    CDSFacCabVENDEDOR: TStringField;
    CDSFacCabUSUARIO: TStringField;
    CDSFacCabNC_CONTADO: TStringField;
    CDSFacCabCAJA_POR_DEFECTO: TIntegerField;
    CDSFacCabNRO_Z: TIntegerField;
    CDSFacCabVALORES_RECIBIDOS: TFloatField;
    CDSFacCabPERCEPCION_IB_TASA: TFloatField;
    CDSFacCabPERCEPCION_IB_IMPORTE: TFloatField;
    CDSFacCabPERCIBE_IB: TStringField;
    CDSFacCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField;
    CDSFacCabRENGLONES: TSmallintField;
    CDSFacCabNOTAPEDIDO_ID: TIntegerField;
    CDSFacCabNOTAPEDIDO_NROCPBTE: TStringField;
    CDSFacCabID_FC_CLON: TIntegerField;
    CDSFacCabPRESUPUESTO_ID: TIntegerField;
    CDSFacCabPRESUPUESTO_NROCPBTE: TStringField;
    CDSFacCabMONEDA_CPBTE: TIntegerField;
    CDSFacCabMONEDA_CPBTE_COTIZACION: TFloatField;
    CDSFacCabCON_GTIA_EXTENDIDA: TStringField;
    CDSFacCabMESES_DE_GARANTIA: TIntegerField;
    CDSFacCabPOLIZA: TStringField;
    CDSFacCabVALOR_ASEGURADO: TFloatField;
    CDSFacCabABONO_PERIODO: TStringField;
    CDSFacCabNUMERO_OPERACION: TStringField;
    CDSFacCabSALDO_ACTUAL_CC: TFloatField;
    CDSFacCabID_NOTA_CAMBIO: TIntegerField;
    CDSFacCabCAE: TStringField;
    CDSFacCabFACTURA_ELECTRONICA: TStringField;
    CDSFacCabCANT_BULTOS: TIntegerField;
    CDSFacCabCUOTAS_CC: TIntegerField;
    CDSFacCabINTERVALO_CUOTA: TIntegerField;
    CDSFacCabID_GARANTE: TIntegerField;
    CDSFacCabPAGO_A_CTA: TFloatField;
    CDSFacCabID_FC_CON_ADEL: TIntegerField;
    CDSFacCabCENTRO_COSTO: TIntegerField;
    CDSFacCabID_PEDIDO_MORPHI: TIntegerField;
    QFiltroC: TFDQuery;
    QCtasAsociadas: TFDQuery;
    QApl: TFDQuery;
    QCtasAsociadasCODIGO: TStringField;
    QCtasAsociadasNOMBRE: TStringField;
    QFiltroCID: TIntegerField;
    QFiltroCDETALLE: TStringField;
    QFiltroCGRUPO: TSmallintField;
    QFiltroDID: TIntegerField;
    QFiltroDID_CAB: TIntegerField;
    QFiltroDID_CPBTE: TIntegerField;
    QFiltroDMUESTRACOMPROBANTE: TStringField;
    QFiltroDMUESTRATIPO: TStringField;
    QFiltroDMUESTRACLASE: TStringField;
    QFiltroDMUESTRASUC: TStringField;
    QValoresACobrarID_CHEQUE_TER: TIntegerField;
    QValoresACobrarID_BANCO: TIntegerField;
    QValoresACobrarMUESTRABANCO: TStringField;
    QValoresACobrarMUESTRACLIENTE: TStringField;
    QValoresACobrarFIRMANTE: TStringField;
    QValoresACobrarCUIT: TStringField;
    QValoresACobrarDESTINO: TStringField;
    QValoresACobrarIMPORTE: TFloatField;
    QValoresACobrarNUMERO: TIntegerField;
    QValoresACobrarMUESTRAIDREC: TIntegerField;
    QValoresACobrarMUESTRATIPORC: TStringField;
    QValoresACobrarMUESTRACLASEREC: TStringField;
    QValoresACobrarMUESTRANROREC: TStringField;
    QCtasFiltro: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    QInsertarRegistro: TFDQuery;
    QBorrarConsolidacion: TFDQuery;
    spConsolidarCoorporativa: TFDStoredProc;
    lbSaldoGral: TLabel;
    edSaldo: TJvCalcEdit;
    edTotalChe: TJvCalcEdit;
    frxDBCheques: TfrxDBDataset;
    CDSFacCabCUIT_PAIS: TStringField;
    CDSFacCabFECHAVTA: TSQLTimeStampField;
    CDSFacCabFECHAVTO: TSQLTimeStampField;
    CDSFacCabFECHA_FISCAL: TSQLTimeStampField;
    CDSFacCabFECHA_LIQUIDACION: TSQLTimeStampField;
    CDSFacCabFECHA_HORA: TSQLTimeStampField;
    CDSFacCabCAE_VENCIMIENTO: TSQLTimeStampField;
    QValoresACobrarFECHA_ENTRADA: TSQLTimeStampField;
    QValoresACobrarFECHA_SALIDA: TSQLTimeStampField;
    QValoresACobrarFECHA_EMISION: TSQLTimeStampField;
    QValoresACobrarFECHA_COBRO: TSQLTimeStampField;
    CDSEmpresaTASA_RET_IIBB: TFloatField;
    CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    CDSEmpresaPUNITORIOS: TFloatField;
    CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    CDSEmpresaNRO_RENSPA: TStringField;
    CDSEmpresaNRO_RUCA: TIntegerField;
    CDSEmpresaCUIT_AUTORIZADO: TStringField;
    CDSEmpresaNOMBRE_AUTORIZADO: TStringField;
    CDSEmpresaCBU: TStringField;
    chPreview: TCheckBox;
    frxDBCtaCte: TfrxDBDataset;
    Label13: TLabel;
    edReporte: TEdit;
    sbReporte: TSpeedButton;
    OpenDialog: TOpenDialog;
    SpeedButton5: TSpeedButton;
    Panel1: TPanel;
    Label1: TLabel;
    lbEstado: TLabel;
    lbCtasAsociadas: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edNombreCliente: TEdit;
    UpDown1: TUpDown;
    ceCliente: TJvComboEdit;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    dbcCtaAsociada: TJvDBLookupCombo;
    lbSaldoInicial: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lbTituloCoorp: TLabel;
    lbCodigo: TLabel;
    lbNombre: TLabel;
    Label9: TLabel;
    DBText3: TDBText;
    FechaActual: TJvDateEdit;
    dbcFiltros: TJvDBLookupCombo;
    lbFiltroCtas: TLabel;
    Panel2: TPanel;
    Label7: TLabel;
    CDSAplicacionesIMPORTE: TFloatField;
    N4: TMenuItem;
    OrdenPorIngresodeMovimimiento1: TMenuItem;
    BitBtn1: TBitBtn;
    ImageList1: TImageList;
    DashBoard: TAction;
    RecibosObra: TTabSheet;
    cxGridRcObras: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    DSMovObras: TDataSource;
    cxGridDBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGridDBTableView1DETALLE: TcxGridDBColumn;
    cxGridDBTableView1NROCPBTE: TcxGridDBColumn;
    cxGridDBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGridDBTableView1TIPO: TcxGridDBColumn;
    cxGridDBTableView1DEBE: TcxGridDBColumn;
    cxGridDBTableView1HABER: TcxGridDBColumn;
    cxGridDBTableView1SALDO: TcxGridDBColumn;
    cxGridDBTableView1FECHAVTA: TcxGridDBColumn;
    cxGridDBTableView1MUESTRAOBRA: TcxGridDBColumn;
    cxGClientesDBTableView1SALDOINICIAL: TcxGridDBColumn;
    CambiarClienteRecibo: TAction;
    spCambiaClienteFecha: TFDStoredProc;
    spReHaceMov: TFDStoredProc;
    RehacerMovCtaCte: TAction;
    N5: TMenuItem;
    RehacerMovCtaCte1: TMenuItem;
    PROCEDURE BuscarClienteExecute(Sender: TObject);
    PROCEDURE TraerCtaCteExecute(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE ceClienteKeyPress(Sender: TObject; VAR Key: Char);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE ImprimirExecute(Sender: TObject);
    PROCEDURE pnCtaCteDblClick(Sender: TObject);
    PROCEDURE FormShow(Sender: TObject);
    PROCEDURE btExcelClick(Sender: TObject);
    procedure VerComprobanteExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FiltraDebeExecute(Sender: TObject);
    procedure FiltraHaberExecute(Sender: TObject);
    procedure TodoLosMovimientosExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure EnviarCorreoExecute(Sender: TObject);
    procedure dbgMovimientosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgMovimientosCellClick(Column: TColumn);
    procedure dbgValoresDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure VerChe3Execute(Sender: TObject);
    procedure dbgValoresMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnCtaCteMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbcGrupoChange(Sender: TObject);
    procedure chbUsaFiltroClick(Sender: TObject);
    procedure IncidenciasExecute(Sender: TObject);
    procedure dbgRtosDblClick(Sender: TObject);
    procedure VerRtosExecute(Sender: TObject);
    procedure btListarClientesClick(Sender: TObject);
    procedure pcCtaCteChanging(Sender: TObject; var AllowChange: Boolean);
    procedure btImprimeListadoClick(Sender: TObject);
    procedure StatusBar1DblClick(Sender: TObject);
    procedure btSeleccionClick(Sender: TObject);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure dbgNC_CtdoDblClick(Sender: TObject);
    procedure ExportaraExcel1Click(Sender: TObject);
    procedure dbgRtosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure btRefreshClick(Sender: TObject);
    procedure VerRegistroAjustesExecute(Sender: TObject);
    procedure RecalcularExecute(Sender: TObject);
    procedure ImpRtosExecute(Sender: TObject);
    procedure chbMonedaClick(Sender: TObject);
    procedure lbTituloCoorpClick(Sender: TObject);
    procedure lbTituloCoorpMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BorrarConsolidacionesExecute(Sender: TObject);
    procedure dbcCtaAsociadaClick(Sender: TObject);
    procedure ConsolidarExecute(Sender: TObject);
    procedure ConsolidarTodoExecute(Sender: TObject);
    procedure chOcultaAjustesConciliacionClick(Sender: TObject);
    procedure dbcFiltrosChange(Sender: TObject);
    procedure desdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure hastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure ExportaraExcel2Click(Sender: TObject);
    procedure AplicacionesCCExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Desde_2Click(Sender: TObject);
    procedure sbReporteClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure OrdenPorIngresodeMovimimiento1Click(Sender: TObject);
    procedure cxGClientesDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure DashBoardExecute(Sender: TObject);
    procedure CambiarClienteReciboExecute(Sender: TObject);
    procedure RehacerMovCtaCteExecute(Sender: TObject);
  private
    { Private declarations }
  public

    ArchivoIni:TIniFile;
    SucursalPorDefecto :Integer;
    PrListados,PrDefault,RangoFechas:Integer;
    Mascara:String;
    Condiciones:String;
    // Variables de Correo ******
    NombreCuenta,
    AsuntoCorreo,NombreServidor,DirCorreo,
    PrNomListados,PrListadoDefecto,PrNomDefault,
    Clave,Autotenticacion,Remitente:String;
    Puerto:Integer;
    //***************************
    Color:TColor;
    PROCEDURE TraeCC(Dato: STRING; VAR SaldoInicial:Real);
    procedure ArmarCondiciones;
    procedure Sumar;
    procedure ListarCtaCte;

    { Public declarations }
  END;


VAR
  FormCtaCteVta: TFormCtaCteVta;

IMPLEMENTATION

USES DMCtaCteVta,UAjustesCCClientes_2, UCorreo, UBuscadorClientes, UChequesTercero,
     UAnulacionRecibos, UFactura_2, URecibo_2, UClientesIncidencias,
     UMuestraCpbteCtaCteVta, DMBuscadoresForm, URemitos,UDMain_FD,
     UFacturaCtdo_2, UDetalleRegConsolidacion, UAplicacionesCCVta_2,
     UDashBoardCliente;


{$R *.DFM}


procedure TFormCtaCteVta.Sumar;
begin
  edDebe.Value :=0;
  edHaber.Value:=0;
  DatosCCVta.CDSMovCC.DisableControls;
  DatosCCVta.CDSMovCC.First;
  while Not(DatosCCVta.CDSMovCC.Eof) do
    begin
      edDebe.Value :=edDebe.Value+DatosCCVta.CDSMovCCDEBE.AsFloat;
      edHaber.Value:=edHaber.Value+DatosCCVta.CDSMovCCHABER.AsFloat;
      DatosCCVta.CDSMovCC.Next;
    end;
  DatosCCVta.CDSMovCC.EnableControls;
  //CDSMovCC.First;

end;

procedure TFormCtaCteVta.AplicacionesCCExecute(Sender: TObject);
begin
  if Not(Assigned(FormAplicacionesCCVta_2)) then
    FormAplicacionesCCVta_2:=TFormAplicacionesCCVta_2.Create(self);
  FormAplicacionesCCVta_2.edCodigo.Text := ceCliente.Text;//entas.CDSVentaCabCODIGO.AsString;;
  FormAplicacionesCCVta_2.VerCCte.Execute;
  FormAplicacionesCCVTa_2.Show;
end;

procedure TFormCtaCteVta.ArmarCondiciones;
begin
  Condiciones:='';
  if chbUsaFiltro.Checked=True Then
    begin
      QFiltroD.First;
      while Not(QFiltroD.Eof) do
        begin
          if Condiciones='' Then
            condiciones:=' where (id_comprobante='+''+QFiltroDID_CPBTE.AsString+''+') '
          else
            condiciones:=Condiciones+' or (id_comprobante='+''+QFiltroDID_CPBTE.AsString+''+') ';
          QFiltroD.Next;
        end;
    end;
   //Condiciones:=' and ('+condiciones+')';
end;


PROCEDURE TFormCtaCteVta.TraeCC(dato: STRING; VAR SaldoInicial:Real);
var Condicion_01:String;
BEGIN
  ArmarCondiciones;

  Condicion_01:='';
  if Condiciones<>'' then
    begin
      Condicion_01:= ' and ('+ReplaceText(Condiciones,'where','')+')';
    end;

  DatosCCVta.CDSSaldoInicial.Close;
  DatosCCVta.CDSSaldoInicial.Params.paramByName('Codigo').Clear;
  DatosCCVta.CDSSaldoInicial.Params.ParamByName('Desde').Clear;
  DatosCCVta.CDSSaldoInicial.CommandText:= 'select sum(debe)as debe, sum(haber) as haber from SALDO_INICIAL_CTACTE_VTA (:codigo,:desde ) '+Condiciones;
  DatosCCVta.CDSSaldoInicial.Open;

  DatosCCVta.CDSMovCC.Close;
  DatosCCVta.CDSMovCC.CommandText:= 'select m.*,o.detalle as MuestraObra from MOV_CTACTE_VTA (:codigo,:desde,:hasta ) m '+
                                    ' left join obras o on o.codigo=m.id_obra '+
                                     Condiciones +
                                    ' order by m.fechavta,m.tipocpbte,m.nrocpbte ';
  DatosCCVta.CDSMovCC.Params.ParamByName('Codigo').Clear;
  DatosCCVta.CDSMovCC.Params.ParamByName('Desde').Clear;
  DatosCCVta.CDSMovCC.Params.ParamByName('Hasta').Clear;
  DatosCCVta.CDSMovCC.Open;


  DatosCCVta.CDSMovObra.Close;
  DatosCCVta.CDSMovObra.CommandText:= 'select m.*,o.detalle as MuestraObra from MOV_CTACTE_VTA (:codigo,:desde,:hasta ) m '+
                                      ' left join obras o on o.codigo=m.id_obra ' +
                                      ' where ( m.tipocpbte = ''RC'' ) '+Condicion_01+
                                      ' order by m.fechavta,m.tipocpbte,m.nrocpbte ';
  DatosCCVta.CDSMovObra.Params.ParamByName('Codigo').Clear;
  DatosCCVta.CDSMovObra.Params.ParamByName('Desde').Clear;
  DatosCCVta.CDSMovObra.Params.ParamByName('Hasta').Clear;
  DatosCCVta.CDSMovObra.Open;

  DatosCCVta.QClientes.Close;
  DatosCCVta.QClientes.ParamByName('Codigo').Value := Dato;
  DatosCCVta.QClientes.Open;
  IF NOT (DatosCCVta.QClientes.eof) THEN
    BEGIN
      DatosCCVta.CDSSaldoInicial.Close;
      DatosCCVta.CDSSaldoInicial.Params.ParamByName('Codigo').Value := Dato;
      DatosCCVta.CDSSaldoInicial.Params.ParamByName('Desde').Value  := Desde.Date;
      DatosCCVta.CDSSaldoInicial.CommandText:= 'select sum(debe)as debe, sum(haber) as haber from SALDO_INICIAL_CTACTE_VTA (:codigo,:desde ) '+Condiciones;
      DatosCCVta.CDSSaldoInicial.Open;
      SaldoInicial:=0;

      DatosCCVta.CDSSaldoInicial.First;
      while not(DatosCCVta.CDSSaldoInicial.Eof) do
        begin
          SaldoInicial:=SaldoInicial+DatosCCVta.CDSSaldoInicialDEBE.AsFloat - DatosCCVta.CDSSaldoInicialHaber.AsFloat;
          DatosCCVta.CDSSaldoInicial.Next;
        end;

      DatosCCVta.CDSSaldoInicial.Close;

      lbSaldoInicial.Caption := FormatFloat(Mascara,SaldoInicial);
      edNombreCliente.Text   := DatosCCVta.QClientesNOMBRE.Value;

      DatosCCVta.CDSMovCC.Close;
      DatosCCVta.CDSMovCC.CommandText:= 'select m.*,o.detalle as MuestraObra from MOV_CTACTE_VTA (:codigo,:desde,:hasta ) m '+
                                        ' left join obras o on o.codigo=m.id_obra '+
                                          Condiciones +
                                        ' order by m.fechavta,m.tipocpbte,m.nrocpbte ';
      DatosCCVta.CDSMovCC.Params.ParamByName('Codigo').Value := Dato;
      DatosCCVta.CDSMovCC.Params.ParamByName('Desde').Value  := Desde.Date;
      DatosCCVta.CDSMovCC.Params.ParamByName('Hasta').Value  := Hasta.Date;
      DatosCCVta.CDSMovCC.Open;

      DatosCCVta.CDSMovObra.Close;
      DatosCCVta.CDSMovObra.CommandText:= 'select m.*,o.detalle as MuestraObra from MOV_CTACTE_VTA (:codigo,:desde,:hasta ) m '+
                                          ' left join obras o on o.codigo=m.id_obra '+
                                          ' where ( m.tipocpbte = ''RC'' ) '+Condicion_01+
                                          ' order by m.fechavta,m.tipocpbte,m.nrocpbte ';
      DatosCCVta.CDSMovObra.Params.ParamByName('Codigo').Value := Dato;
      DatosCCVta.CDSMovObra.Params.ParamByName('Desde').Value  := Desde.Date;
      DatosCCVta.CDSMovObra.Params.ParamByName('Hasta').Value  := Hasta.Date;
      DatosCCVta.CDSMovObra.Open;

      sumar;

      CDSFacCab.Close;
      CDSFacCab.Params.ParamByName('Codigo').Value    :=Dato;
      CDSFacCab.Params.ParamByName('Desde').AsDate:=Desde.Date;
      CDSFacCab.Params.ParamByName('Hasta').AsDate:=Hasta.Date;
      CDSFacCab.Open;
    END;
  DatosCCVta.QClientes.Close;
END;

PROCEDURE TFormCtaCteVta.BuscarClienteExecute(Sender: TObject);
var aux:Real;
BEGIN
  lbCodigo.Caption:='';
  lbNombre.Caption:='';

  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
  //QClientes.Close;
  //QClientes.Open;
  //IF wwBuscadorCliente.Execute THEN
    BEGIN
      ceCliente.Text :=FormBuscadorClientes.Codigo;
      DatosCCVta.QClientes.Close;
      DatosCCVta.QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      DatosCCVta.QClientes.Open;
      if DMMain_FD.ModificaSucursal=False Then
        begin
          if DatosCCVta.QClientesSUCURSAL.Value<>SucursalPorDefecto Then
            begin
              DatosCCVta.QClientes.Close;
              ceCliente.Text := '';
            end;
        end;
      IF NOT (DatosCCVta.QClientes.IsEmpty) THEN
        BEGIN
          edNombreCliente.Text := DatosCCVta.QClientesNOMBRE.Value;
          if DatosCCVta.QClientesACTIVO.Value='S' Then
            lbEstado.caption:='Cliente Activo'
          else
            if DatosCCVta.QClientesACTIVO.Value='N' Then
              lbEstado.caption:='Cliente Inactivo'
            else
              if DatosCCVta.QClientesACTIVO.Value='G' Then
                lbEstado.caption:='Gestion Judicial'
              else
                if DatosCCVta.QClientesACTIVO.Value='I' Then
                  lbEstado.caption:='Incobrables';

          lbCodigo.Caption:=DatosCCVta.QClientesCODIGO_COORPORATIVO.Value;
          lbNombre.Caption:=DatosCCVta.QClientesMUESTRACOORPORATIVO.Value;

          TraerCtaCte.Execute;

          QValoresACobrar.Close;
          QValoresACobrar.ParamByName('Codigo').Value:=ceCliente.Text;
          QValoresACobrar.ParamByName('Fecha').Value :=FechaActual.Date;
          QValoresACobrar.Open;

          DatosCCVta.CDSCheRec.Close;
          DatosCCVta.CDSCheRec.Params.ParamByName('Codigo').Value:=ceCliente.Text;
          DatosCCVta.CDSCheRec.Open;

          QCtasAsociadas.Close;
          QCtasAsociadas.ParamByName('codigo').Value:= Trim(ceCliente.Text);
          QCtasAsociadas.Open;

          dbcCtaAsociada.Enabled:= Not(QCtasAsociadas.IsEmpty);
          dbcFiltros.Enabled    := Not(QCtasAsociadas.IsEmpty);

          lbCtasAsociadas.Visible:=Not(QCtasAsociadas.IsEmpty);;
          lbFiltroCtas.Visible   :=Not(QCtasAsociadas.IsEmpty);;
          dbcCtaAsociada.Visible :=Not(QCtasAsociadas.IsEmpty);;
          dbcFiltros.Visible     :=Not(QCtasAsociadas.IsEmpty);;
          chOcultaAjustesConciliacion.Visible:=QCtasAsociadas.IsEmpty;

          QCtasFiltro.Close;
          QCtasFiltro.ParamByName('codigo').Value:= Trim(ceCliente.Text);
          QCtasFiltro.Open;

          Aux:=0;
          QValoresACobrar.First;
          while Not(QValoresACobrar.Eof) do
            begin
              Aux :=Aux + QValoresACobrarIMPORTE.AsFloat;
              QValoresACobrar.Next;
            end;

          edTotalChe.Value:=Aux;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
        END;

    END;
END;

procedure TFormCtaCteVta.CambiarClienteReciboExecute(Sender: TObject);
begin
  datosccvta.CDSMovCC.DisableControls;
  datosccvta.CDSMovCC.First;
  DMMain_FD.fdcGestion.StartTransaction;
  while datosccvta.CDSMovCC.Eof do
    begin
      try
        spCambiaClienteFecha.Close;
        spCambiaClienteFecha.ParamByName('id').Value         := datosccvta.CDSMovCCID_CPBTE.Value;
        spCambiaClienteFecha.ParamByName('Cliente').AsString := lbCodigo.Caption;
        spCambiaClienteFecha.ParamByName('Fecha').AsDate     := datosccvta.CDSMovCCFECHAVTA.AsDateTime;
        spCambiaClienteFecha.ParamByName('suc').AsString     := datosccvta.CDSMovCCNROCPBTE.AsString;
        spCambiaClienteFecha.ParamByName('Numero').AsString  := datosccvta.CDSMovCCNROCPBTE.AsString;
        spCambiaClienteFecha.ExecProc;
        DMMain_FD.LogFileFD(0,5,'Cambio Cliente/Fecha Recibo: Nro Cpbte:'+datosccvta.CDSMovCCNROCPBTE.AsString+
                                ' Id :'+IntToStr(datosccvta.CDSMovCCID_CPBTE.Value)+' - Fecha '+ DateToStr(datosccvta.CDSMovCCFECHAVTA.AsDateTime),'RECIBO');


        DMMain_FD.fdcGestion.Commit;
        spCambiaClienteFecha.Close;
        datosccvta.CDSMovCC.Next;

      except
        DMMain_FD.fdcGestion.Rollback;
        spCambiaClienteFecha.Close;
      end;
    end;

end;

procedure TFormCtaCteVta.btListarClientesClick(Sender: TObject);
var SaldoInicial:Extended;
begin
  Screen.Cursor  := crHourGlass;
  ListarCtaCte;
  Screen.Cursor  := crDefault;
end;


procedure TFormCtaCteVta.ExportaraExcel2Click(Sender: TObject);
begin
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (DatosCCVta.CDSMovCC.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:=edNombreCliente.Text;
      SaveDialog.DefaultExt:='XLS';

      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

            if VirtualUI.Active then
              cxGridExportLink.ExportGridToExcel(SaveDialog.FileName,cxGAgrupado )
            else
              cxGridExportLink.ExportGridToExcel(SaveDialog.FileName,cxGAgrupado);
           if VirtualUI.Active then
            begin
              VirtualUI.StdDialogs:=False;
              VirtualUI.DownloadFile(SaveDialog.FileName);
            end;
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

PROCEDURE TFormCtaCteVta.TraerCtaCteExecute(Sender: TObject);
VAR
  Debe, Haber,Saldo: Real;
BEGIN
  edSaldo.Value:=0;
  if (Hasta.Date>=Desde.Date) Then
    begin
      TraeCC(ceCliente.Text,Saldo);
      Debe  := Saldo;
      Haber := 0;
      if OrdenPorIngresodeMovimimiento1.Checked then
        begin
          DatosCCVta.CDSMovCC.IndexFieldNames:='FECHAVTA;ID_MOVCCVTA';
        end
      else
        DatosCCVta.CDSMovCC.IndexFieldNames:='cliente;fechavta;tipocpbte;nrocpbte';


      DatosCCVta.CDSMovCC.DisableControls;
      DatosCCVta.CDSMovCC.First;
      WHILE NOT (DatosCCVta.CDSMovCC.Eof) DO
        BEGIN
          Debe  := DatosCCVta.CDSMovCCDEBE.AsFloat + Debe;
          Haber := DatosCCVta.CDSMovCCHABER.AsFloat + Haber;
          DatosCCVta.CDSMovCC.Edit;
          DatosCCVta.CDSMovCCSaldoCC.Value := Debe - Haber;
          DatosCCVta.CDSMovCC.Next;
        END;
      DatosCCVta.CDSMovCC.EnableControls;
      edSaldo.Value := DatosCCVta.CDSMovCCSaldoCC.Value ;
    end
  else
    ShowMessage('La fecha HASTA debe ser mayor o igual a DESDE');

  lbSaldoGral.Caption  := FormatFloat(',0.00',edSaldo.Value+edTotalChe.Value);
  dbgMovimientos.Width := dbgMovimientos.Width + 1;
  dbgMovimientos.Width := dbgMovimientos.Width - 1;
  cxGAgrupadoDBTableView1.ViewData.Expand(True)
END;

procedure TFormCtaCteVta.FormActivate(Sender: TObject);
begin
  if (Trim(ceCliente.Text)<>'') and (Trim(edNombreCliente.Text)<>'') then
    TraerCtaCte.Execute;
 end;

PROCEDURE TFormCtaCteVta.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_CtaCteVta.Ini');
  ArchivoIni.WriteBool('Modo', 'cpbte', chVerOriginal.Checked);
  ArchivoIni.WriteString('Reporte', 'Listado', edReporte.text);
  ArchivoIni.WriteBool('Orden', 'PorId', OrdenPorIngresodeMovimimiento1.Checked);

  ArchivoIni.Free;
  DatosCCVta.CDSMovCC.Close;
  DatosCCVta.CDSListaClientes.Close;
  CDSEmpresa.Close;
  if Assigned(DatosCCVta) then
    FreeAndNil(DatosCCVta);

  Action := CaFree;
END;

PROCEDURE TFormCtaCteVta.ceClienteKeyPress(Sender: TObject; VAR Key: Char);
VAR
  Dato: STRING;
  Aux:Real;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato:='';
      lbCodigo.Caption:='';
      lbNombre.Caption:='';
      if (Trim(ceCliente.Text)<>'') then
        Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      DatosCCVta.QClientes.Close;
      DatosCCVta.QClientes.ParamByName('Codigo').Value := Dato;
      DatosCCVta.QClientes.Open;
      if DMMain_FD.ModificaSucursal=False Then
        begin
        //  ceCliente.Text := '';
          if DatosCCVta.QClientesSUCURSAL.Value<>SucursalPorDefecto Then
            begin
              DatosCCVta.QClientes.Close;
              ceCliente.Text := '';
            end;
        end;
      IF NOT(DatosCCVta.QClientes.IsEmpty) THEN
        begin
          edNombreCliente.Text := DatosCCVta.QClientesNOMBRE.Value;
          if DatosCCVta.QClientesACTIVO.Value='S' Then
            lbEstado.caption:=''
          else
            if DatosCCVta.QClientesACTIVO.Value='N' Then
              lbEstado.caption:='Cliente Inactivo'
            else
              if DatosCCVta.QClientesACTIVO.Value='G' Then
                lbEstado.caption:='Gestion Judicial'
              else
                if DatosCCVta.QClientesACTIVO.Value='I' Then
                  lbEstado.caption:='Incobrables';
          lbCodigo.Caption := DatosCCVta.QClientesCODIGO_COORPORATIVO.Value;
          lbNombre.Caption := DatosCCVta.QClientesMUESTRACOORPORATIVO.Value;
          TraerCtaCte.Execute;

          QCtasAsociadas.Close;
          QCtasAsociadas.ParamByName('codigo').Value:=Trim(ceCliente.Text);
          QCtasAsociadas.Open;

          dbcCtaAsociada.Enabled:= Not(QCtasAsociadas.IsEmpty);
          dbcFiltros.Enabled    := Not(QCtasAsociadas.IsEmpty);

          lbCtasAsociadas.Visible:=Not(QCtasAsociadas.IsEmpty);
          lbFiltroCtas.Visible   :=Not(QCtasAsociadas.IsEmpty);
          dbcCtaAsociada.Visible :=Not(QCtasAsociadas.IsEmpty);
          dbcFiltros.Visible     :=Not(QCtasAsociadas.IsEmpty);
          chOcultaAjustesConciliacion.Visible:=QCtasAsociadas.IsEmpty;


          QCtasFiltro.Close;
          QCtasFiltro.ParamByName('codigo').Value:= Trim(ceCliente.Text);
          QCtasFiltro.Open;

          QValoresACobrar.Close;
          QValoresACobrar.ParamByName('Codigo').Value:= ceCliente.Text;
          QValoresACobrar.ParamByName('Fecha').Value := FechaActual.Date;
          QValoresACobrar.Open;
          Aux:=0;
          QValoresACobrar.First;
          while Not(QValoresACobrar.Eof) do
            begin
              Aux:=Aux+QValoresACobrarIMPORTE.AsFloat;
              QValoresACobrar.Next;
            end;
          edTotalChe.Value:=Aux;
        end
      else
        begin
          TraerCtaCte.Execute;
        end;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
    END;
END;

PROCEDURE TFormCtaCteVta.FormCreate(Sender: TObject);
VAR ArchivoIni,GeneralIni:TIniFile;
ClaveAux,Cadena:String;
d,m,y:word;
I:Integer;
BEGIN
  Color    := clInfoBk;
  AutoSize := False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  IF NOT (Assigned(DatosCCVta)) THEN
    DatosCCVta := TDatosCCVta.Create(Self);

  DatosCCVta.CDSMovCC.Open;
  CDSEmpresa.Open;
  lbEstado.Caption:='';
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('OPCION').AsString:='APLICACIONES';
  DMMain_FD.QOpciones.Open;
  Mascara:=DMMain_FD.QOpciones.fields[0].AsString;
  TFloatField(DatosCCVta.CDSMovCCDEBE).EditFormat          :=Mascara+';-'+Mascara+';'+'-';
  TFloatField(DatosCCVta.CDSMovCCHABER).EditFormat         :=Mascara+';-'+Mascara+';'+'-';
  TFloatField(DatosCCVta.CDSMovCCSaldoCC).EditFormat       :=Mascara+';-'+Mascara+';'+'-';
  TFloatField(DatosCCVta.CDSMovCCSaldo).EditFormat         :=Mascara+';-'+Mascara+';'+'-';

  TFloatField(DatosCCVta.CDSMovCCDEBE).DisplayFormat       :=Mascara+';-'+Mascara+';'+'-';
  TFloatField(DatosCCVta.CDSMovCCHABER).DisplayFormat      :=Mascara+';-'+Mascara+';'+'-';
  TFloatField(DatosCCVta.CDSMovCCSaldoCC).DisplayFormat    :=Mascara+';-'+Mascara+';'+'-';
  TFloatField(DatosCCVta.CDSMovCCSaldo).DisplayFormat      :=Mascara+';-'+Mascara+';'+'-';

  DMMain_FD.QOpciones.Close;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  GeneralIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'General.Ini');

  //Impresoras
  PrNomListados       := ArchivoIni.ReadString('Impresoras', 'Listados', '');
  PrListadoDefecto    := ArchivoIni.ReadString('Impresoras', 'ListadoDefecto','N');
  // Rango de Fechas
  RangoFechas         := ArchivoIni.ReadInteger('RangoFechas', 'CtaCteVta', 30);
  // Opciones de Correo ***********
  DirCorreo           := ArchivoIni.ReadString('Correo', 'DirCorreo', '');
  NombreCuenta        := ArchivoIni.ReadString('Correo', 'NombreCuenat', '');
  AsuntoCorreo        := ArchivoIni.ReadString('Correo', 'AsuntoCorreo', '');
  NombreServidor      := ArchivoIni.ReadString('Correo', 'NombreServido', '');
  Clave               := ArchivoIni.ReadString('Correo', 'Clave', '');
  Autotenticacion     := ArchivoIni.ReadString('Correo', 'Autenticacion', 'S');
  Remitente           := ArchivoIni.ReadString('Correo', 'Remitente', '');
  Puerto              := ArchivoIni.ReadInteger('Correo', 'puerto', 25);
  SucursalPorDefecto  := ArchivoIni.ReadInteger('Sucursal', 'Sucursal',1);

  pcCtaCte.ActivePageIndex:=0;
  // Desencripto la clave
  claveAux:='';
  //if clave<>'' Then
//  for I :=2 to length(Clave) do
//    begin
//      ClaveAux:=ClaveAux+Chr(255-Ord(clave[i]));
//    end;
//  Clave:=ClaveAux;

  ArchivoIni.Free;
  GeneralIni.Free;
  // Tomo la Impresora por defecto.
  prNomDefault:=Printer.Printers.Strings[Printer.PrinterIndex];
  // si en algun de los casos uso la impresora por defecto
  // igualo el nro de impresora a la imp. que le corresponde
  if (PrListadoDefecto='S') or (PrListadoDefecto='s') Then
    PrNomListados:=PrNomDefault;

  PrListados := Printer.Printers.IndexOf(PrNomListados);
  PrDefault  := Printer.Printers.IndexOf(PrNomDefault);

  OpenDialog.InitialDir:=DMMain_FD.PathReportesLst;

  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(Desde.Date))+1;

  QFiltroC.Open;
  QFiltroD.Open;
  if DMMain_FD.UsuarioActivo='' Then
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_FiltroCpbte.ini')
  else
    ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_FiltroCpbte.ini');
  Cadena:= ArchivoIni.ReadString('Opciones', 'Opciones','');

  //  if Cadena='' Then
  ArchivoIni.Free;

  ArchivoIni            := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_CtaCteVta.Ini');
  chVerOriginal.Checked := ArchivoIni.ReadBool('Modo', 'cpbte', False);
  edReporte.Text        := ArchivoIni.ReadString('Reporte', 'Listado', 'c:\');
  OrdenPorIngresodeMovimimiento1.Checked := ArchivoIni.ReadBool('Orden', 'PorId', False);

  ArchivoIni.Free;

  pnRtos.Visible      :=False;

  Width :=883;

  desde_2.Date := desde.Date;
  Hasta_2.Date := hasta.Date;

  if OrdenPorIngresodeMovimimiento1.Checked then
    begin
      DatosCCVta.CDSMovCC.IndexFieldNames:='FECHAVTA;ID_MOVCCVTA';
    end
  else
    DatosCCVta.CDSMovCC.IndexFieldNames:='cliente;fechavta;tipocpbte;nrocpbte';

  // IncMonth: Incrementa la canitdad de meses lo multiplico x -1 para que decremnte
END;

PROCEDURE TFormCtaCteVta.ImprimirExecute(Sender: TObject);
BEGIN

  frCtaCte.PrintOptions.Printer:=PrNomListados;
  frCtaCte.SelectPrinter;

  frCtaCte.LoadFromFile(DMMain_FD.PathReportesLst+'\CtaCteVta.fr3');
  frCtaCte.Variables['SaldoAnterior']:=''''+lbSaldoInicial.Caption+'''';
  DMMain_FD.QOpciones.Close;

  if OrdenPorIngresodeMovimimiento1.Checked then
    DatosCCVta.CDSMovCC.IndexFieldNames:='FECHAVTA;ID_MOVCCVTA'
  else
    DatosCCVta.CDSMovCC.IndexFieldNames:='FECHAVTA;TIPOCPBTE;NROCPBTE';
  // frCtaCte.PrepareReport;
  frCtaCte.ShowReport;
  ceCliente.SetFocus;
  ceCliente.SelectAll;
END;

procedure TFormCtaCteVta.ImpRtosExecute(Sender: TObject);
begin

  frCtaCte.PrintOptions.Printer:=PrNomListados;
  frCtaCte.SelectPrinter;

  frCtaCte.LoadFromFile(DMMain_FD.PathReportesLst+'\CtaCteVtaRtos.fr3');
  DMMain_FD.QOpciones.Close;

  // frCtaCte.PrepareReport;
  frCtaCte.ShowReport;
  ceCliente.SetFocus;
  ceCliente.SelectAll;
end;

procedure TFormCtaCteVta.IncidenciasExecute(Sender: TObject);
begin
  if Not(Assigned(formClientesIncidencias)) then
    FormClientesIncidencias:=TFormClientesIncidencias.Create(Self);
  FormClientesIncidencias.Codigo:=Trim(ceCliente.Text);
  FormClientesIncidencias.ShowModal ;

end;

procedure TFormCtaCteVta.dbcFiltrosChange(Sender: TObject);
begin
  DatosCCVta.CDSMovCC.Filtered:=False;
  DatosCCVta.CDSMovCC.Filter  :='';
  if Not(DatosCCVta.CDSMovCC.IsEmpty) then
    begin
      if Trim(dbcFiltros.Text)<>'' then
        begin
          DatosCCVta.CDSMovCC.Filter:='CTA_ASOCIADA='+''+dbcFiltros.Text+'';
          DatosCCVta.CDSMovCC.Filtered:=True;
        end;
    end;
  sumar;
end;

procedure TFormCtaCteVta.dbcCtaAsociadaClick(Sender: TObject);
var Enter:Char;
begin
  Enter:=#13;
  if Trim(dbcCtaAsociada.KeyValue)<>'' Then
    begin
      ceCliente.Text:=dbcCtaAsociada.KeyValue;
      ceClienteKeyPress(Sender,Enter);
    end;
end;

procedure TFormCtaCteVta.lbTituloCoorpClick(Sender: TObject);
var Enter:Char;
begin
  Enter:=#13;
  if lbCodigo.Caption<>'' then
    Begin
      ceCliente.Text:=lbCodigo.Caption;
      ceClienteKeyPress(sender,Enter);
    End;
end;

procedure TFormCtaCteVta.lbTituloCoorpMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if lbCodigo.Caption='' then
    lbTituloCoorp.Cursor:=crDefault
  else
    lbTituloCoorp.Cursor:=crHandPoint;
end;


procedure TFormCtaCteVta.ListarCtaCte;
var debe,haber:Extended;
begin

  DatosCCVta.CDSListaClientes.AfterScroll:=nil;
  DatosCCVta.CDSListaClientes.Close;
  DatosCCVta.CDSListaClientes.IndexFieldNames:='';
  DatosCCVta.CDSListaClientes.IndexDefs.Clear;

  DatosCCVta.CDSListaClientes.Params.ParamByName('hasta').AsDateTime:=Hasta_2.Date;;
  DatosCCVta.CDSListaClientes.Params.ParamByName('desde').AsDateTime:=Desde_2.Date;;

  DatosCCVta.CDSListaClientes.Open;
  DatosCCVta.CDSListaClientes.IndexFieldNames:='CODIGO';


  DatosCCVta.CDSCtaCte.MasterSource    := Nil;
  DatosCCVta.CDSCtaCte.MasterFields    := '';
  DatosCCVta.CDSCtaCte.IndexFieldNames := '';

  DatosCCVta.CDSCtaCte.Close;
  DatosCCVta.CDSCtaCte.Params.ParamByName('Desde').Value  := Desde_2.Date;
  DatosCCVta.CDSCtaCte.Params.ParamByName('Hasta').Value  := Hasta_2.Date;
  DatosCCVta.CDSCtaCte.Open;

  DatosCCVta.CDSCtaCte.MasterSource    := DatosCCVta.DSListaClientes;
  DatosCCVta.CDSCtaCte.IndexFieldNames := 'CLIENTE';
  DatosCCVta.CDSCtaCte.MasterFields    := 'CODIGO';

  Debe  := 0;//Saldo;
  Haber := 0;

  if  DatosCCVta.CDSListaClientesSALDO.Value>0 then
    debe  := DatosCCVta.CDSListaClientesSALDO.Value
  else
    Haber := DatosCCVta.CDSListaClientesSALDO.Value;

  DatosCCVta.CDSCtaCte.First;
  DatosCCVta.CDSCtaCte.DisableControls;
  WHILE NOT (DatosCCVta.CDSCtaCte.Eof) DO
    BEGIN
      Debe  := DatosCCVta.CDSCtaCteDEBE.AsFloat + Debe;
      Haber := DatosCCVta.CDSCtaCteHABER.AsFloat + Haber;
      DatosCCVta.CDSCtaCte.Edit;
      DatosCCVta.CDSCtaCteSALDOCC.Value := Debe - Haber;
      DatosCCVta.CDSCtaCte.Next;
    END;
  DatosCCVta.CDSCtaCte.EnableControls;
end;


procedure TFormCtaCteVta.OrdenPorIngresodeMovimimiento1Click(Sender: TObject);
begin
  OrdenPorIngresodeMovimimiento1.Checked:=Not(OrdenPorIngresodeMovimimiento1.Checked);
  if OrdenPorIngresodeMovimimiento1.Checked then
    begin
      DatosCCVta.CDSMovCC.IndexFieldNames:='FECHAVTA;ID_MOVCCVTA';
    end
  else
    DatosCCVta.CDSMovCC.IndexFieldNames:='cliente;fechavta;tipocpbte;nrocpbte';
  dbgMovimientos.Refresh;
end;

procedure TFormCtaCteVta.dbgNC_CtdoDblClick(Sender: TObject);
begin
  if (CDSFacCabTIPOCPBTE.AsString='FC') or
     (CDSFacCabTIPOCPBTE.AsString='NC') or
     (CDSFacCabTIPOCPBTE.AsString='ND') Then
    begin
      IF NOT (Assigned(FormCpbte_2)) THEN
        FormCpbte_2    := TFormCpbte_2.Create(self);
      FormCpbte_2.DatoNew   := CDSFacCabID_FC.AsString;
      FormCpbte_2.TipoCpbte := CDSFacCabTIPOCPBTE.Value;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (CDSFacCabTIPOCPBTE.AsString='FO') Then
      begin
        IF NOT (Assigned(FormCpbteCtdo_2)) THEN
          FormCpbteCtdo_2    := TFormCpbteCtdo_2.Create(self);
        FormCpbteCtdo_2.DatoNew   := CDSFacCabID_FC.AsString;
        FormCpbteCtdo_2.TipoCpbte := CDSFacCabTIPOCPBTE.Value;
        FormCpbteCtdo_2.Recuperar.Execute;
        FormCpbteCtdo_2.Show;
      end;

end;

procedure TFormCtaCteVta.pcCtaCteChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  if DatosCCVta.CDSListaClientes.Active then
    DatosCCVta.CDSListaClientes.Close;
end;

PROCEDURE TFormCtaCteVta.pnCtaCteDblClick(Sender: TObject);
BEGIN
  frCtaCte.DesignReport;
END;

PROCEDURE TFormCtaCteVta.FormShow(Sender: TObject);
BEGIN
  FechaActual.Date := date;
  if FormCtaCteVta<>nil then
    FormCtaCteVta.Width :=917;

  RehacerMovCtaCte.Enabled:=DMMain_FD.UsuarioActivo='master';

  ceCliente.SetFocus;
END;

procedure TFormCtaCteVta.hastaAcceptDate(Sender: TObject; var ADate: TDateTime;
  var Action: Boolean);
begin
  TraerCtaCte.Execute;//  btVerCC.Click;//  TraerCtaCte.Execute;
end;

PROCEDURE TFormCtaCteVta.btExcelClick(Sender: TObject);
BEGIN
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (DatosCCVta.CDSMovCC.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:=edNombreCliente.Text;
      SaveDialog.DefaultExt:='XLS';

      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

            if VirtualUI.Active then
              DataToXLS.SaveToFile(SaveDialog.FileName)
            else
              DataToXLS.SaveToFile(SaveDialog.FileName);
           if VirtualUI.Active then
            begin
              VirtualUI.StdDialogs:=False;
              VirtualUI.DownloadFile(SaveDialog.FileName);
            end;
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');

  ceCliente.SetFocus;
  ceCliente.SelectAll;

END;

procedure TFormCtaCteVta.btSeleccionClick(Sender: TObject);
var SaldoInicial:Extended;
BEGIN
  IF NOT (DatosCCVta.CDSListaClientes.IsEmpty) THEN
    BEGIN
   //   dbgClientes.SelectAllClick(sender);

      IF btSeleccion.tag = 0 THEN
        BEGIN
          btSeleccion.Tag := 1;
          btSeleccion.Caption := 'Deselccionar';
        END
      ELSE
        BEGIN
          btSeleccion.Tag := 0;
          btSeleccion.Caption := 'Selccionar';
        END;
      DatosCCVta.CDSListaClientes.First;
      DatosCCVta.CDSListaClientes.DisableControls;
      WHILE NOT (DatosCCVta.CDSListaClientes.Eof) DO
        BEGIN
          DatosCCVta.CDSListaClientes.Edit;
          DatosCCVta.CDSListaClientesSeleccion.Value     := 1=btSeleccion.Tag;
          DatosCCVta.CDSListaClientes.Next;
        END;
      DatosCCVta.CDSListaClientes.First;
      DatosCCVta.CDSListaClientes.EnableControls;
    END
  ELSE
    ShowMessage('No hay datos a Selecionar');
end;

procedure TFormCtaCteVta.VerComprobanteExecute(Sender: TObject);
begin
  if (DatosCCVta.CDSMovCCTIPOCPBTE.AsString='FC') or
     (DatosCCVta.CDSMovCCTIPOCPBTE.AsString='NC') or
     (DatosCCVta.CDSMovCCTIPOCPBTE.AsString='ND') Then
    begin
      if (chVerOriginal.Checked=False) then
        begin
          IF NOT (Assigned(FormMuestraCpbteCtaCteVta)) THEN
            FormMuestraCpbteCtaCteVta  := TFormMuestraCpbteCtaCteVta.Create(self);
          FormMuestraCpbteCtaCteVta.id   := DatosCCVta.CDSMovCCID_CPBTE.Value;
          FormMuestraCpbteCtaCteVta.Tipo := DatosCCVta.CDSMovCCTIPOCPBTE.Value;
          FormMuestraCpbteCtaCteVta.ShowModal;

        end
      else
        if (chVerOriginal.Checked=True) then
          begin
            IF NOT (Assigned(FormCpbte_2)) THEN
              FormCpbte_2    := TFormCpbte_2.Create(self);
            FormCpbte_2.DatoNew   := DatosCCVta.CDSMovCCID_CPBTE.AsString;
            FormCpbte_2.TipoCpbte := DatosCCVta.CDSMovCCTIPOCPBTE.Value;
            FormCpbte_2.Recuperar.Execute;
            FormCpbte_2.Show;
            FormCpbte_2.BringToFront;
          end;

    end
  else
    if (DatosCCVta.CDSMovCCTIPOCPBTE.AsString='RC') Then
      begin
        IF NOT (Assigned(FormRecibo_2)) THEN
          FormRecibo_2:= TFormRecibo_2.Create(self);
        FormRecibo_2.DatoNew    := DatosCCVta.CDSMovCCID_CPBTE.AsString;
        FormRecibo_2.TipoCpbte  := DatosCCVta.CDSMovCCTIPOCPBTE.AsString;
        FormRecibo_2.Recuperar.Execute;
        FormRecibo_2.Show;
        FormRecibo_2.BringToFront;
      end
    else
      if (DatosCCVta.CDSMovCCTIPOCPBTE.AsString='AJ') Then
        begin
          IF NOT (Assigned(FormAjustesCCVenta_2)) THEN
            FormAjustesCCVenta_2:= TFormAjustesCCVenta_2.Create(Application);
          FormAjustesCCVenta_2.DatoNew  := DatosCCVta.CDSMovCCID_CPBTE.AsString;
          FormAjustesCCVenta_2.TipoCpbte:= DatosCCVta.CDSMovCCTIPOCPBTE.AsString;
          FormAjustesCCVenta_2.Recuperar.Execute;
          formAjustesCCVenta_2.Show;
          formAjustesCCVenta_2.BringToFront;
        //FormMuestraRecibo.ShowModal;
        end
      else
        if (DatosCCVta.CDSMovCCTIPOCPBTE.AsString='XR') Then
          begin
            IF NOT (Assigned(FormAnulacionRecibos)) THEN
              FormAnulacionRecibos:= TFormAnulacionRecibos.Create(Application);
            FormAnulacionRecibos.DatoNew  := DatosCCVta.CDSMovCCID_CPBTE.AsString;
            FormAnulacionRecibos.TipoCpbte:= DatosCCVta.CDSMovCCTIPOCPBTE.AsString;
            FormAnulacionRecibos.Recuperar.Execute;
            FormAnulacionRecibos.Show;
            FormAnulacionRecibos.BringToFront;

          end;
end;

procedure TFormCtaCteVta.VerRegistroAjustesExecute(Sender: TObject);
begin
  if DatosCCVta.CDSMovCCTIPOCPBTE.Value='AJ' then
    begin
      if Not(Assigned(FormRegConsolidacion)) then
        FormRegConsolidacion:=TFormRegConsolidacion.Create(Self);
      FormRegConsolidacion.id:=DatosCCVta.CDSMovCCID_CPBTE.Value;
      FormRegConsolidacion.showModal;
      FormRegConsolidacion.BringToFront;
    end;

end;

procedure TFormCtaCteVta.VerRtosExecute(Sender: TObject);
begin
  if pnRtos.Visible=False then
    begin
      pnRtos.Visible     :=True;
      FormCtaCteVta.Width:=FormCtaCteVta.Width+pnRtos.Width;
      CDSRtos.Close;
      CDSRtos.IndexName:='';
      CDSRtos.IndexDefs.Clear;
      CDSRtos.Params.ParamByName('codigo').Value:=ceCliente.Text;
      CDSRtos.Open;
      edTotalRto.Value:=0;
      CDSRtos.First;
      CDSRtos.DisableControls;
      while Not(CDSRtos.Eof) do
        begin
          edTotalRto.Value:=edTotalRto.Value+CDSRtosTOTAL.ASFloat;
          CDSRtos.Next;
        end;
      CDSRtos.First;
      CDSRtos.EnableControls;
    end
  else
    if pnRtos.Visible=True then
      begin
        pnRtos.Visible:=False;
        FormCtaCteVta.Width:=FormCtaCteVta.Width-pnRtos.Width;
        CDSRtos.Close;
      end;
  //FormCtaCteVta.Position:=poScreenCenter;

end;

procedure TFormCtaCteVta.FormDestroy(Sender: TObject);
begin
  FormCtaCteVta:=nil;
end;

procedure TFormCtaCteVta.FormResize(Sender: TObject);
begin
  if FormCtaCteVta<>nil then
    if FormCtaCteVta.Height<489 then
      FormCtaCteVta.Height:=489;
end;

procedure TFormCtaCteVta.btImprimeListadoClick(Sender: TObject);
var
  I: Integer;
  aux1,aux2:String;
  Fe1,Fe2:String;
  Numero:Integer;
begin
   inherited;
  if DatosCCVta.CDSListaClientes.IsEmpty then
     Raise Exception.Create('No hay clientes..');

   DatosCCVta.CDSCtaCte.DisableControls;

   frCtaCte.PrintOptions.Printer:=PrNomListados;
   frCtaCte.SelectPrinter;


   DatosCCVta.CDSListaClientes.First;
  // DatosCCVta.CDSListaClientes.DisableControls;

   DatosCCVta.CDSCtaCte.First;

   frCtaCte.LoadFromFile(DMMain_FD.PathReportesLst+'\'+edReporte.Text);

  // while Not(DatosCCVta.CDSListaClientes.Eof) do
  //   begin
  //     if DatosCCVta.CDSListaClientesSeleccion.Value=True then
         begin
          // if (Not(CDSMovCC.IsEmpty)) then
             begin
             //  frCtaCte.Variables['SaldoAnterior'] := ''''+lbSaldoInicial.Caption+'''';
               frCtaCte.Variables['SaldoAnterior'] :=''''+DBText2.Caption+'''';
               frCtaCte.Variables['Desde']         := ''''+DateToStr(Desde_2.date)+'''';
               frCtaCte.Variables['Hasta']         := ''''+DateToStr(Hasta_2.date)+'''';
               //frCtaCte.Variables['SaldoAnterior'] := ''''+Label9.Caption+'''';
               if chPreview.Checked then frCtaCte.ShowReport
               else frCtaCte.Print;
             end;
         end;
    //   DatosCCVta.CDSListaClientes.Next;
    // end;//
  //DatosCCVta.CDSListaClientes.EnableControls;

  //DMMain_FD.QOpciones.Close;
  DatosCCVta.CDSCtaCte.EnableControls;

end;

procedure TFormCtaCteVta.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCtaCteVta.BorrarConsolidacionesExecute(Sender: TObject);
begin
  DatosCCVta.CDSMovCC.First;
  while not(DatosCCVta.CDSMovCC.Eof) do
    begin
      if DatosCCVta.CDSMovCCID_CPBTE.AsString<>'' then
        if DatosCCVta.CDSMovCCID_CPBTE.AsInteger>0 then
        begin
          QBorrarConsolidacion.Close;
          QBorrarConsolidacion.ParamByName('id').Value:=DatosCCVta.CDSMovCCID_CPBTE.AsInteger;
          QBorrarConsolidacion.ExecSQL();
          QBorrarConsolidacion.Close;
        end;
     DatosCCVta.CDSMovCC.Next;
   end;
  TraerCtaCte.Execute;

end;

procedure TFormCtaCteVta.btRefreshClick(Sender: TObject);
begin
  CDSRtos.Close;
  CDSRtos.IndexName:='';
  CDSRtos.IndexDefs.Clear;
  CDSRtos.Params.ParamByName('codigo').Value:=ceCliente.Text;
  CDSRtos.Open;
  edTotalRto.Value:=0;
  CDSRtos.First;
  CDSRtos.DisableControls;
  while Not(CDSRtos.Eof) do
    begin
      edTotalRto.Value:=edTotalRto.Value+CDSRtosTOTAL.ASFloat;
      CDSRtos.Next;
    end;
  CDSRtos.First;
  CDSRtos.EnableControls;
end;

procedure TFormCtaCteVta.FiltraDebeExecute(Sender: TObject);
begin
  DatosCCVta.CDSMovCC.Filtered:=False;
  DatosCCVta.CDSMovCC.Filter:='(debe>0)';
  DatosCCVta.CDSMovCC.Filtered:=True;
  TraerCtaCte.Execute;
end;

procedure TFormCtaCteVta.FiltraHaberExecute(Sender: TObject);
begin
  DatosCCVta.CDSMovCC.Filtered:=False;
  DatosCCVta.CDSMovCC.Filter:='(haber>0)';
  DatosCCVta.CDSMovCC.Filtered:=True;
  TraerCtaCte.Execute;
end;

procedure TFormCtaCteVta.TodoLosMovimientosExecute(Sender: TObject);
begin
  DatosCCVta.CDSMovCC.Filtered:=False;
  DatosCCVta.CDSMovCC.Filter:='';
  TraerCtaCte.Execute;
end;

procedure TFormCtaCteVta.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  if Button=btnext Then
    Desde.Date := IncMonth(Desde.Date,(1))
  else
    if Button=btPrev Then
      Desde.Date := IncMonth(Desde.Date,(-1));
  TraerCtaCte.Execute;
end;

procedure TFormCtaCteVta.UpDown2Click(Sender: TObject; Button: TUDBtnType);
var debe,haber:Extended;
begin
  if Button=btNext then
    begin
      desde_2.Date:=IncMonth(Desde_2.Date,1);
      hasta_2.Date:=IncMonth(Desde_2.Date,1);
    end
  else
    if Button=btPrev then
      begin
        hasta_2.Date:=IncMonth(Hasta_2.Date,-1);
        Desde_2.Date:=IncMonth(Hasta_2.Date,-1);
      end;

  ListarCtaCte;
//  DatosCCVta.CDSListaClientes.Close;
//  DatosCCVta.CDSListaClientes.Params.ParamByName('hasta').AsDateTime:=Desde_2.Date;;
//  DatosCCVta.CDSListaClientes.Open;
//  DatosCCVta.CDSListaClientes.IndexFieldNames:='CODIGO';
//
//  DatosCCVta.CDSCtaCte.Close;
//  DatosCCVta.CDSCtaCte.Params.ParamByName('Desde').Value  := Desde_2.Date;
//  DatosCCVta.CDSCtaCte.Params.ParamByName('Hasta').Value  := Hasta_2.Date;
//  DatosCCVta.CDSCtaCte.Open;
//
//  Debe  := 0;//Saldo;
//  Haber := 0;
//
//  if  DatosCCVta.CDSListaClientesSALDO.Value>0 then
//    debe:=DatosCCVta.CDSListaClientesSALDO.Value
//  else
//    Haber:=DatosCCVta.CDSListaClientesSALDO.Value;
//
//  DatosCCVta.CDSCtaCte.First;
//  DatosCCVta.CDSCtaCte.DisableControls;
//  WHILE NOT (DatosCCVta.CDSCtaCte.Eof) DO
//    BEGIN
//      Debe  := DatosCCVta.CDSCtaCteDEBE.AsFloat + Debe;
//      Haber := DatosCCVta.CDSCtaCteHABER.AsFloat + Haber;
//      DatosCCVta.CDSCtaCte.Edit;
//      DatosCCVta.CDSCtaCteSALDOCC.Value := Debe - Haber;
//      DatosCCVta.CDSCtaCte.Next;
//    END;
//  DatosCCVta.CDSCtaCte.EnableControls;
end;

procedure TFormCtaCteVta.EnviarCorreoExecute(Sender: TObject);
begin
  if DatosCCVta.CDSMovCC.IsEmpty Then
    Raise Exception.Create(' No hay datos para mandar...');
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');

  frCtaCte.PrintOptions.Printer:=PrNomListados;
  frCtaCte.SelectPrinter;

  frCtaCte.LoadFromFile(DMMain_FD.PathReportesLst+'\CtaCteVta.fr3');
  DMMain_FD.QOpciones.Close;
  frCtaCte.Variables['Mascara']:=''''+Mascara+'''';

  frCtaCte.PrepareReport;

  frxPDFExport1.ShowDialog    := False;
  frxPDFExport1.FileName      := ExtractFilePath(ParamStr(0))+'Archivos Temporales\Resumen_'+edNombreCliente.Text+'.pdf';
  frxPDFExport1.EmbeddedFonts := True;

  frCtaCte.Export(frxPDFExport1);
  frxPDFExport1.ShowDialog:=True;

  if Not(Assigned(FormCorreo)) Then
    FormCorreo:=TFormCorreo.Create(Application);

  FormCorreo.CorreoDestino       := DMMain_FD.GetCorreoCliente_1(Trim(ceCliente.Text));
  FormCorreo.CCopia              := DMMain_FD.GetCorreoCliente_2(Trim(ceCliente.Text));

  FormCorreo.CorreoOrigen        :=DirCorreo;
  FormCorreo.Remitente           :=Remitente;
  FormCorreo.edDireccion.Text    :=FormCorreo.CorreoDestino;
  FormCorreo.Destinatario        :=edNombreCliente.Text;
  FormCorreo.Puerto              :=Puerto;
  FormCorreo.NombreServidorCorreo:=NombreServidor;
  FormCorreo.NombreCuentaCorreo  :=NombreCuenta;
  FormCorreo.Clave               :=Clave;
  FormCorreo.Autenticacion       :=Autotenticacion;
 // FormCorreo.Asunto              :='Resumen Cta.Cte - al '+ FormatDateTime('dd-mm-yy',hasta.Date);
  FormCorreo.Adjuntos.Add(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Resumen_'+edNombreCliente.Text+'.pdf');
  FormCorreo.Show;

end;

procedure TFormCtaCteVta.ExportaraExcel1Click(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (DatosCCVta.CDSCheRec.IsEmpty) THEN
    BEGIN
      DataToXLS.DataSet:=DatosCCVta.CDSCheRec;
      SaveDialog.FileName:='Cheques';
      SaveDialog.DefaultExt:='XLS';

      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        DataToXLS.SaveToFile(SaveDialog.FileName) ;

      if VirtualUI.Active then
          VirtualUI.DownloadFile(SaveDialog.FileName);
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormCtaCteVta.dbgMovimientosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (DatosCCVta.CDSMovCCSaldo.AsFloat>0) and (DatosCCVta.CDSMovCCDEBE.AsFloat>0) then
    dbgMovimientos.Canvas.Font.Style := [fsbold]
  else
    dbgMovimientos.Canvas.Font.Style := [];

  dbgMovimientos.Canvas.Brush.Color:= Color;

  if DatosCCVta.CDSMovCCTIPO.Value='S' Then  // es de servicio
    dbgMovimientos.Canvas.Font.Color :=clBlue;

  if DatosCCVta.CDSMovCCID_COMPROBANTE.Value=null Then  // es de servicio
    dbgMovimientos.Canvas.Font.Color :=clRed;

  if gdSelected	in state Then
    begin
      dbgMovimientos.Canvas.brush.Color :=clBlue;
      dbgMovimientos.Canvas.Font.Color  :=clWhite;
    end;

  if (color=clInfoBk) and (Column.Index=7) Then
    color:=clWindow
  else
    if (color=clWindow) and (Column.Index=7) Then
    color:=clInfoBk;
  if (Column.Index in [10]) and (State = []) then
    begin
      if (dbgMovimientos.Columns[Datacol].Field.AsString)='S' then
        begin
          dbgMovimientos.Canvas.Brush.Color := clYellow;
          dbgMovimientos.DefaultDrawColumnCell(rect,DataCol,Column,State);
        end;
    end;

  dbgMovimientos.DefaultDrawColumnCell(Rect,DataCol,Column,State);

//  if (color=clInfoBk) and (Column.Index=7) Then
//    color:=clWindow
//  else
//    if (color=clWindow) and (Column.Index=7) Then
//    color:=clInfoBk;
end;

procedure TFormCtaCteVta.dbgRtosDblClick(Sender: TObject);
begin
  if Not(Assigned(FormRemitos)) then
    FormRemitos:=TformRemitos.Create(Application);
  FormRemitos.DatoNew:=CDSRtosID_RTO.AsString;
  FormRemitos.TipoCpbte:='RE';
  FormRemitos.Recuperar.Execute;
  FormRemitos.Show;

end;

procedure TFormCtaCteVta.dbgRtosTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
var campo:string;
begin
 try
    Campo := Field.FieldName;
    with dbgRtos.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;

end;

procedure TFormCtaCteVta.dbcGrupoChange(Sender: TObject);
begin
  QFiltroD.Close;

  if dbcGrupo.KeyValue<>-1 then
    QFiltroD.ParamByName('id').Value:=QFiltroCID.Value
  else
    QFiltroD.ParamByName('id').Value:=-1;
  QFiltroD.Open;
  TraerCtaCte.Execute;
end;

procedure TFormCtaCteVta.dbgMovimientosCellClick(Column: TColumn);
var
Lista:TStringList;
Aux:Real;
AuxStr:String;
begin
  dbgMovimientos.ShowHint:=False;
  dbgMovimientos.Hint    := '';
//  if Button = mbLeft Then
    begin
      Lista:= TStringList.create;
      Lista.Clear;
      //coord:=dbgMovimientos.MouseCoord(x,y);
      if ((DatosCCVta.CDSMovCCSaldo.AsFloat<=0) or (DatosCCVta.CDSMovCCSaldo.AsFloat<DatosCCVta.CDSMovCCDEBE.AsFloat ) ) and (DatosCCVta.CDSMovCCDEBE.AsFloat>0) Then
        begin
          CDSAplicaciones.Close;
          CDSAplicaciones.Params.ParamByName('id').Value:=DatosCCVta.CDSMovCCID_MOVCCVTA.Value;
          CDSAplicaciones.Open;
          CDSAplicaciones.DisableControls;
          CDSAplicaciones.First;
          Lista.Add('Aplicaciones ');
          Aux:=0;
          while Not(CDSAplicaciones.Eof) Do
            begin
              AuxStr:= FormatFloat(Mascara,CDSAplicacionesIMPORTE.AsFloat);
              AuxStr:= Copy('                ',1,16-length(AuxStr))+AuxStr;
              Aux   := Aux + CDSAplicacionesIMPORTE.AsFloat;
              Lista.Add(' - '+CDSAplicacionesFECHA.AsString+' ......... '+ CDSAplicacionesNUMEROCPBTE.AsString+' ...... '+ AuxStr);
              CDSAplicaciones.Next;
            end;
          if aux>0 Then
            begin
              Lista.Add('---- >>> ');
              Lista.Add('---------------------- Total >>>> '+FormatFloat(Mascara,Aux));
            end;
          CDSAplicaciones.Close;
          CDSAplicaciones.EnableControls;
          dbgMovimientos.Hint    := Lista.Text;

          if Lista.Text<>'' Then
            dbgMovimientos.ShowHint:=True
          else
            dbgMovimientos.ShowHint:=False;
        end;
      FreeAndNil(Lista)
   end;
end;


procedure TFormCtaCteVta.chbMonedaClick(Sender: TObject);
begin
  dbgMovimientos.Refresh;
end;

procedure TFormCtaCteVta.chbUsaFiltroClick(Sender: TObject);
begin
  if chbUsaFiltro.Checked Then
    begin
      dbcGrupo.Enabled:=True;
      dbcGrupo.Color:=clWindow;
    end
  else
    begin
      dbcGrupo.Enabled:=False;
      dbcGrupo.Color:=clBtnFace;
    end;
  TraerCtaCte.Execute;
end;

procedure TFormCtaCteVta.chOcultaAjustesConciliacionClick(Sender: TObject);
begin
 DatosCCVta.CDSMovCC.Filtered:=False;
 DatosCCVta.CDSMovCC.Filter  :='';
 if Not(DatosCCVta.CDSMovCC.IsEmpty) then
    begin
      if chOcultaAjustesConciliacion.Checked then
        begin
          DatosCCVta.CDSMovCC.Filter:='CTA_ASOCIADA = '''' ';
          DatosCCVta.CDSMovCC.Filtered:=True;
        end;
    end;
  sumar;
end;

procedure TFormCtaCteVta.ConsolidarExecute(Sender: TObject);
var Consolidado:boolean;
begin
  Consolidado:=False;
  if lbCodigo.Caption='' then
    raise Exception.Create('No Hay Cta. Coorporativa');

  if DatosCCVta.CDSMovCCTIPOCPBTE.Value='AJ' then
    raise Exception.Create('No se Puede Consolidar un Ajuste');

  if DatosCCVta.CDSMovCCFC_CONSOLIDAD.Value='S' then
    raise Exception.Create('Movimientos Consolidado');

  if (DatosCCVta.CDSMovCCTIPOCPBTE.Value='FC') or (DatosCCVta.CDSMovCCTIPOCPBTE.Value='ND')  or (DatosCCVta.CDSMovCCTIPOCPBTE.Value='NC')
    or (DatosCCVta.CDSMovCCTIPOCPBTE.Value='RC') then
  begin
  //  Pos:=CDSMovCC.GetBookmark;
    DMMain_FD.fdcGestion.StartTransaction;
    try
      spConsolidarCoorporativa.Close;
      spConsolidarCoorporativa.ParamByName('Cliente').AsString    := ceCliente.Text;
      spConsolidarCoorporativa.ParamByName('Cta_Coorp').AsString  := lbCodigo.Caption;
      if (DatosCCVta.CDSMovCCTIPOCPBTE.Value='FC') or (DatosCCVta.CDSMovCCTIPOCPBTE.Value='ND') then
        spConsolidarCoorporativa.ParamByName('Importe').AsFloat     := DatosCCVta.CDSMovCCDEBE.AsFloat
      else
        spConsolidarCoorporativa.ParamByName('Importe').AsFloat     := DatosCCVta.CDSMovCCHABER.AsFloat;
      spConsolidarCoorporativa.ParamByName('Detalle_Fc').AsString := DatosCCVta.CDSMovCCDETALLE.ASString;
      spConsolidarCoorporativa.ParamByName('Fecha_Op').AsDate     := DatosCCVta.CDSMovCCFECHAVTA.AsDateTime;
      spConsolidarCoorporativa.ParamByName('Sucursal').AsInteger  := DatosCCVta.CDSMovCCSUCURSAL.AsInteger;
      spConsolidarCoorporativa.ParamByName('Usuario').AsString    := DMMain_FD.UsuarioActivo;
      spConsolidarCoorporativa.ParamByName('id_factura').AsInteger:= DatosCCVta.CDSMovCCID_CPBTE.AsInteger;
      spConsolidarCoorporativa.ParamByName('tipo_comp').AsString  := DatosCCVta.CDSMovCCTIPOCPBTE.AsString;

      spConsolidarCoorporativa.ExecProc;
      spConsolidarCoorporativa.Close;

      QInsertarRegistro.Close;
      QInsertarRegistro.ParamByName('ctadestino').Value      := lbCodigo.Caption;
      QInsertarRegistro.ParamByName('ctaorigen').Value       := ceCliente.Text;
      if (DatosCCVta.CDSMovCCTIPOCPBTE.Value='FC') or (DatosCCVta.CDSMovCCTIPOCPBTE.Value='ND') then
        QInsertarRegistro.ParamByName('importe').Value       := DatosCCVta.CDSMovCCDEBE.AsFloat
      else
        QInsertarRegistro.ParamByName('importe').Value       := DatosCCVta.CDSMovCCHABER.AsFloat;
      QInsertarRegistro.ParamByName('idajustedestino').Value := spConsolidarCoorporativa.ParamByName('id_cta_destino').AsInteger;
      QInsertarRegistro.ExecSQL();

      DMMain_FD.fdcGestion.Commit;
      Consolidado:=True;
    except
      Consolidado:=False;
      DMMain_FD.fdcGestion.Rollback;
      ShowMessage('NO se Ajustaron las Ctas Coorporativas...!');
    end;

    if Consolidado then
      begin
         if (DatosCCVta.CDSMovCCTIPOCPBTE.Value='FC') or (DatosCCVta.CDSMovCCTIPOCPBTE.Value='ND') then
          begin
            DMMain_FD.APlicarAJ_Venta(DatosCCVta.CDSMovCCCLIENTE.AsString,DatosCCVta.CDSMovCCID_CPBTE.Value);
          end
        else
          if (DatosCCVta.CDSMovCCTIPOCPBTE.Value='NC') or (DatosCCVta.CDSMovCCTIPOCPBTE.Value='RC') then
            begin
            end;

      end;
    TraerCtaCte.Execute;
  end;
end;

procedure TFormCtaCteVta.ConsolidarTodoExecute(Sender: TObject);
var Consolidado:Boolean;
begin
  if lbCodigo.Caption='' then
    raise Exception.Create('No Hay Cta. Coorporativa');

  if Not(DatosCCVta.CDSMovCC.IsEmpty) then
    begin
      DatosCCVta.CDSMovCC.First;
      while Not(DatosCCVta.CDSMovCC.Eof) do
        begin
          if (DatosCCVta.CDSMovCCTIPOCPBTE.Value='FC') or (DatosCCVta.CDSMovCCTIPOCPBTE.Value='ND')  or (DatosCCVta.CDSMovCCTIPOCPBTE.Value='NC')
            or (DatosCCVta.CDSMovCCTIPOCPBTE.Value='RC') then
            begin
              DMMain_FD.fdcGestion.StartTransaction;
              try
                spConsolidarCoorporativa.Close;
                spConsolidarCoorporativa.ParamByName('Cliente').AsString    := ceCliente.Text;
                spConsolidarCoorporativa.ParamByName('Cta_Coorp').AsString  := lbCodigo.Caption;
                if (DatosCCVta.CDSMovCCTIPOCPBTE.Value='FC') or (DatosCCVta.CDSMovCCTIPOCPBTE.Value='ND') then
                  spConsolidarCoorporativa.ParamByName('Importe').AsFloat     := DatosCCVta.CDSMovCCDEBE.AsFloat
                else
                  spConsolidarCoorporativa.ParamByName('Importe').AsFloat     := DatosCCVta.CDSMovCCHABER.AsFloat;
                spConsolidarCoorporativa.ParamByName('Detalle_Fc').AsString := DatosCCVta.CDSMovCCDETALLE.ASString;
                spConsolidarCoorporativa.ParamByName('Fecha_Op').AsDate     := DatosCCVta.CDSMovCCFECHAVTA.AsDateTime;
                spConsolidarCoorporativa.ParamByName('Sucursal').AsInteger  := DatosCCVta.CDSMovCCSUCURSAL.AsInteger;
                spConsolidarCoorporativa.ParamByName('Usuario').AsString    := DMMain_FD.UsuarioActivo;
                spConsolidarCoorporativa.ParamByName('id_factura').AsInteger:= DatosCCVta.CDSMovCCID_CPBTE.AsInteger;
                spConsolidarCoorporativa.ParamByName('tipo_comp').AsString  := DatosCCVta.CDSMovCCTIPOCPBTE.AsString;

                spConsolidarCoorporativa.ExecProc;
                spConsolidarCoorporativa.Close;

                QInsertarRegistro.Close;
                QInsertarRegistro.ParamByName('ctadestino').Value := lbCodigo.Caption;
                QInsertarRegistro.ParamByName('ctaorigen').Value  := ceCliente.Text;
                if (DatosCCVta.CDSMovCCTIPOCPBTE.Value='FC') or (DatosCCVta.CDSMovCCTIPOCPBTE.Value='ND') then
                  QInsertarRegistro.ParamByName('importe').Value    := DatosCCVta.CDSMovCCDEBE.AsFloat
                else
                  QInsertarRegistro.ParamByName('importe').Value    := DatosCCVta.CDSMovCCHABER.AsFloat;
                QInsertarRegistro.ParamByName('importe').Value    := DatosCCVta.CDSMovCCDEBE.AsFloat;
                QInsertarRegistro.ParamByName('idajustedestino').Value:= spConsolidarCoorporativa.ParamByName('id_cta_destino').AsInteger;
                QInsertarRegistro.ExecSQL();

                DMMain_FD.fdcGestion.Commit;
                Consolidado:=True;
              except
                Consolidado:=False;
                DMMain_FD.fdcGestion.Rollback;
               // ShowMessage('NO se Ajustaron las Ctas Coorporativas...!');
              end;
              if Consolidado then
                begin

                  if (DatosCCVta.CDSMovCCTIPOCPBTE.Value='FC') or (DatosCCVta.CDSMovCCTIPOCPBTE.Value='ND') then
                    begin
                      DMMain_FD.APlicarAJ_Venta(DatosCCVta.CDSMovCCCLIENTE.AsString,DatosCCVta.CDSMovCCID_CPBTE.Value);

 //                     IF Not(FormAplicacionesCCVta_2.CDSMovCC.Locate('ID_CPBTE ; TIPOCPBTE', VarArrayOf([DatosCCVta.CDSMovCCID_CPBTE.Value,DatosCCVta.CDSMovCCTIPOCPBTE.Value]), [])) tHEN
//                        FormAplicacionesCCVta_2.CDSMovCC.Last;
//                      IF Not(FormAplicacionesCCVta_2.CDSACta.Locate('ID_CPBTE ; TIPOCPBTE', VarArrayOf([spConsolidarCoorporativa.ParamByName('ID_AJUSTE_CTA_AJUSTADA').Value,'AJ']), [])) tHEN
//                        FormAplicacionesCCVta_2.CDSACta.Last;
//                      if (Trunc(FormAplicacionesCCVta_2.CDSMovCCSALDO.AsFloat*100)>0) then
//                        begin
//                          FormAplicacionesCCVta_2.cxGrid1DBTableView1DragDrop(FormCpbte_2, FormAplicacionesCCVta_2.DBGActa,10,10);
//
//                          if FormAplicacionesCCVta_2.MovAplicado=False then Exit;
//                        end;
                    end
                  else
                    if (DatosCCVta.CDSMovCCTIPOCPBTE.Value='NC') or (DatosCCVta.CDSMovCCTIPOCPBTE.Value='RC') then
                      begin
                        if (DatosCCVta.CDSMovCCTIPOCPBTE.Value='NC') then
                          DMMain_FD.APlicarNC_Venta(DatosCCVta.CDSMovCCCLIENTE.AsString,DatosCCVta.CDSMovCCID_CPBTE.Value,DatosCCVta.CDSMovCCID_COMPROBANTE.Value)
                        else
                          if (DatosCCVta.CDSMovCCTIPOCPBTE.Value='RC') then
                            DMMain_FD.APlicarNC_Recibos(DatosCCVta.CDSMovCCCLIENTE.AsString,DatosCCVta.CDSMovCCID_CPBTE.Value,DatosCCVta.CDSMovCCID_MOVCCVTA.Value);


//                        IF Not(FormAplicacionesCCVta_2.CDSMovCC.Locate('ID_CPBTE ; TIPOCPBTE',  VarArrayOf([spConsolidarCoorporativa.ParamByName('ID_AJUSTE_CTA_AJUSTADA').Value,'AJ']), [])) tHEN
//                          FormAplicacionesCCVta_2.CDSMovCC.Last;
//                        IF Not(FormAplicacionesCCVta_2.CDSACta.Locate('ID_CPBTE ; TIPOCPBTE', VarArrayOf([DatosCCVta.CDSMovCCID_CPBTE.Value,DatosCCVta.CDSMovCCTIPOCPBTE.Value]), [])) tHEN
//                          FormAplicacionesCCVta_2.CDSACta.Last;
//                        if (Trunc(FormAplicacionesCCVta_2.CDSMovCCSALDO.AsFloat*100)>0) then
//                          begin
//                            FormAplicacionesCCVta_2.cxGrid1DBTableView1DragDrop(FormCpbte_2, FormAplicacionesCCVta_2.DBGActa,10,10);
//                            if FormAplicacionesCCVta_2.MovAplicado=False then Exit;
//                          end;
                      end;


                //  FormAplicacionesCCVta_2.Confirma.Execute;
//                  FormAplicacionesCCVta_2.Close;
//                  FreeAndNil(FormAplicacionesCCVta_2);
                end;
            end;
          DatosCCVta.CDSMovCC.Next;
        end;
    end;
 // FormAplicacionesCCVta_2.Close;
 // FreeAndNil(FormAplicacionesCCVta_2);

  TraerCtaCte.Execute;
end;

procedure TFormCtaCteVta.cxGClientesDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
var Campo:String;
begin
  //Obtener el campo que se clikea en cxGrid
  try
    Campo:= TcxGridDBColumn(AColumn).DataBinding.FieldName;
    with cxGClientesDBTableView1.DataController.DataSet as TClientDataSet do
     if IndexFieldNames <> Campo then
       IndexFieldNames := Campo // Ascendente
     else
       begin
         AddIndex(Campo, Campo, [], Campo); // Descendente
         IndexName := Campo;
       end;
  except // Para que no salte una excepción si la columna es un campo calculado.
   // ShowMessage(Campo);
  end;
end;

procedure TFormCtaCteVta.DashBoardExecute(Sender: TObject);
begin
  if (DMMain_FD.UsuarioAdministrador) or (DMMain_FD.UsuarioActivo='master') then
    begin
      if Not(Assigned(FormDashBoardCliente)) then
        FormDashBoardCliente:= TFormDashBoardCliente.Create(self);
      FormDashBoardCliente.codigo := ceCliente.Text;
      FormDashBoardCliente.Anio   := Trunc( YearOf(Date));
      FormDashBoardCliente.ShowModal;
    end;
end;

procedure TFormCtaCteVta.dbgValoresDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (QValoresACobrarFECHA_SALIDA.AsString='') then
    dbgValores.Canvas.Font.Style := [fsbold]
  else
    dbgValores.Canvas.Font.Style := [];

  //dbgMovimientos.Canvas.Brush.Color:= Color;

  if gdSelected	in state Then
    begin
      dbgValores.Canvas.brush.Color :=clBlue;
      dbgValores.Canvas.Font.Color  :=clWhite;
    end;

  dbgValores.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  if (color=clInfoBk) and (Column.Index=7) Then
    color:=clWindow
  else
    if (color=clWindow) and (Column.Index=7) Then
    color:=clInfoBk;

end;

procedure TFormCtaCteVta.VerChe3Execute(Sender: TObject);
begin
  if QValoresACobrarID_CHEQUE_TER.AsString<>'' Then
    begin
      if Not(Assigned(FormCheTercero)) Then
        FormCheTercero:=TFormCheTercero.Create(Application);
      FormCheTercero.IdChe:=QValoresACobrarID_CHEQUE_TER.Value;
      FormCheTercero.ShowModal;
    end;
end;

procedure TFormCtaCteVta.dbgValoresMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if Not(QValoresACobrar.IsEmpty) Then
    lbMensaje.Caption:='Dbl.Click sobre el che muestra la ficha del mismo....';
end;

procedure TFormCtaCteVta.desdeAcceptDate(Sender: TObject; var ADate: TDateTime;
  var Action: Boolean);
begin
  action:=True;
  desde.Date:=ADate;
  TraerCtaCte.Execute;//  btVerCC.Click;//  TraerCtaCte.Execute;
end;

procedure TFormCtaCteVta.Desde_2Click(Sender: TObject);
var debe,haber:Extended;
BEGIN
     //ArmarCondiciones;
    // DatosCCVta.CDSCtaCte.Close;
//     DatosCCVta.CDSCtaCte.Params.ParamByName('Desde').Value  := Desde_2.Date;
//     DatosCCVta.CDSCtaCte.Params.ParamByName('Hasta').Value  := Hasta_2.Date;
//     DatosCCVta.CDSCtaCte.Open;
//
//     Debe  := 0;//Saldo;
//     Haber := 0;
//     DatosCCVta.CDSCtaCte.First;
//     DatosCCVta.CDSCtaCte.DisableControls;
//     WHILE NOT (DatosCCVta.CDSCtaCte.Eof) DO
//       BEGIN
//         Debe  := DatosCCVta.CDSCtaCteDEBE.AsFloat + Debe;
//         Haber := DatosCCVta.CDSCtaCteHABER.AsFloat + Haber;
//         DatosCCVta.CDSCtaCte.Edit;
//         DatosCCVta.CDSCtaCteSALDOCC.Value := Debe - Haber;
//         DatosCCVta.CDSCtaCte.Next;
//       END;
//     DatosCCVta.CDSCtaCte.EnableControls;
//   END;

end;

procedure TFormCtaCteVta.pnCtaCteMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  lbMensaje.Caption:='';

end;

procedure TFormCtaCteVta.RecalcularExecute(Sender: TObject);
begin
    begin
      if Not(Assigned(FormRemitos)) then
        FormRemitos:=TFormRemitos.Create(self);
      FormRemitos.Show;
      CDSRtos.First;
      while Not(CDSRtos.Eof) do
        begin
          FormRemitos.DatoNew   :=CDSRtosID_RTO.AsString;
          FormRemitos.TipoCpbte :='RE';
          FormRemitos.Recuperar.Execute;
          FormRemitos.RecalcuoPrecios.Execute;
          FormRemitos.Confirma.Execute;
          CDSRtos.Next;
        end;
       FormRemitos.Salir.Execute;
    end;
  btRefresh.Click;  
end;

procedure TFormCtaCteVta.RehacerMovCtaCteExecute(Sender: TObject);
begin
  spReHaceMov.Close;
  spReHaceMov.ParamByName('CPBTE_ID').Value    := DatosCCVta.CDSMovCCID_CPBTE.Value;
  spReHaceMov.ParamByName('CPBTE_TIPO').Value  := DatosCCVta.CDSMovCCTIPOCPBTE.Value;
  spReHaceMov.ParamByName('CPBTE_CLASE').Value := DatosCCVta.CDSMovCCCLASECPBTE.Value;
  spReHaceMov.ExecProc;
  spReHaceMov.Close;
  TraerCtaCte.Execute;
end;

procedure TFormCtaCteVta.sbReporteClick(Sender: TObject);
VAR Lon1,Lon2:integer;
begin
  inherited;
  if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        edReporte.Text := OpenDialog.FileName;
        Lon1           := Length(OpenDialog.InitialDir);
        Lon2           := Length(OpenDialog.FileName);
        edReporte.Text := Copy(OpenDialog.FileName,Lon1+2,Lon2-Lon1-1);
      end
    else
      edReporte.Text:='';
end;

procedure TFormCtaCteVta.SpeedButton5Click(Sender: TObject);
begin
  ListarCtaCte;
end;

procedure TFormCtaCteVta.StatusBar1DblClick(Sender: TObject);
begin
  frCtaCte.DesignReport;
end;

end.

