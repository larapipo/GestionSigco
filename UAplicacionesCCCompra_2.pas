unit UAplicacionesCCCompra_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ComCtrls,  frxDBSet, frxClass, IBGenerator,
  Db, DBClient,  Provider, Grids, StdCtrls, Mask, Math, ActnList, ImgList,
  Buttons, ToolWin, ExtCtrls,shellapi, Menus, DBCtrls, JvExControls, JvGradient,
  JvComponentBase, frxExportRTF,  frxExportText, Strutils,
  frxExportXLS, frxExportPDF, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr,DBXCommon, JvExMask, JvToolEdit, JvBaseEdits, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBLookup, System.Actions, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  JvAppStorage, JvAppIniStorage, cxCalc, cxMaskEdit, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue,cxGridExportLink, VirtualUI_SDK, frxExportBaseDialog,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, frCoreClasses,
  AdvSmoothButton;

type
  TFormAplicacionesCCCompra_2 = class(TFormABMBase)
    edMuestraProveedor: TEdit;
    chbSaldoCero: TCheckBox;
    DSMovCC: TDataSource;
    DSPAplicaciones: TDataSetProvider;
    DSPMovCC: TDataSetProvider;
    IBGId_AplicacionCCCompra: TIBGenerator;
    frMovCC: TfrxReport;
    frDBAplicaciones: TfrxDBDataset;
    frDBMovCC: TfrxDBDataset;
    frDBACta: TfrxDBDataset;
    frDetalle: TfrxReport;
    ToolButton1: TToolButton;
    btVer: TBitBtn;
    btExportar: TBitBtn;
    btImprimir: TBitBtn;
    btImprmirDet: TBitBtn;
    ToolButton2: TToolButton;
    Imprimir: TAction;
    Exportar: TAction;
    BuscarProveedor: TAction;
    VerCCte: TAction;
    ImprimirDetalle: TAction;
    VerComprobante: TAction;
    PopupMenu1: TPopupMenu;
    VerComprobante1: TMenuItem;
    VerComprobante2: TAction;
    PopupMenu2: TPopupMenu;
    VerComprobante3: TMenuItem;
    BorrarUnaAplicacion: TAction;
    PopupMenu3: TPopupMenu;
    BorrarlaAplicacin1: TMenuItem;
    ActualizaMovACta: TAction;
    N1: TMenuItem;
    N2: TMenuItem;
    AplicacionAutomatica: TAction;
    spAsignarAuto: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DSSAldoCtaCte: TDataSource;
    frxDBEmpresa: TfrxDBDataset;
    CDSProveedor: TClientDataSet;
    DSPProveedor: TDataSetProvider;
    frDBProveedor: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    DBText2: TDBText;
    DBText1: TDBText;
    edCodigo: TJvComboEdit;
    CDSAplicaciones: TClientDataSet;
    CDSAplicacionesID_MOV: TIntegerField;
    CDSAplicacionesID_MOVCCCOMPRA: TIntegerField;
    CDSAplicacionesPROVEEDOR: TStringField;
    CDSAplicacionesID_CPBTE: TIntegerField;
    CDSAplicacionesTIPOCPBTE: TStringField;
    CDSAplicacionesCLASECPBTE: TStringField;
    CDSAplicacionesNUMEROCPBTE: TStringField;
    CDSAplicacionesAPLICA_ID_CPBTE: TIntegerField;
    CDSAplicacionesAPLICA_TIPOCPBTE: TStringField;
    CDSAplicacionesAPLICA_CLASECPBTE: TStringField;
    CDSAplicacionesAPLICA_NROCPBTE: TStringField;
    CDSAplicacionesDETALLE: TStringField;
    CDSAplicacionesIDMOVACTA: TIntegerField;
    CDSAplicacionesCONCILIADO: TStringField;
    ConciliarUno: TAction;
    N4: TMenuItem;
    ConciliarMovimiento2: TMenuItem;
    ReArmarCtaCte: TAction;
    spRearmarCta: TSpeedButton;
    ConciliarTodos: TAction;
    ConciliarTodos1: TMenuItem;
    ceSaldoACta: TJvCalcEdit;
    lbCliente: TJvLabel;
    lbTitulo: TJvLabel;
    RxLabel1: TJvLabel;
    dbgACta: TJvDBGrid;
    DesconciliarUno: TAction;
    DesconciliarTodos: TAction;
    N3: TMenuItem;
    DesconciliarUno1: TMenuItem;
    DesconciliarTodos1: TMenuItem;
    CDSEmpresa: TClientDataSet;
    DSPEmpresa: TDataSetProvider;
    ReImportarAplicaciones: TAction;
    spStop: TSpeedButton;
    chFiltrar: TCheckBox;
    Label2: TLabel;
    cbbTipo: TComboBox;
    chSumar: TCheckBox;
    CDSProv: TClientDataSet;
    DSPProv: TDataSetProvider;
    CDSProvCODIGO: TStringField;
    pnAplicacionGral: TPanel;
    lbMensajeAutomatico: TLabel;
    spAplicacionGral: TSpeedButton;
    Label3: TLabel;
    pbAplicacionGral: TProgressBar;
    chInicar: TCheckBox;
    DSPAplicaionGral: TDataSetProvider;
    CDSAplicacionGral: TClientDataSet;
    spArmarAplicaciones: TSpeedButton;
    BorrarLasAplicaciones: TAction;
    N5: TMenuItem;
    BorrarLasAplicaciones1: TMenuItem;
    BackUpAplicaciones: TAction;
    CDSAplicacionGralID_MOV: TIntegerField;
    CDSAplicacionGralID_MOVCCCOMPRA: TIntegerField;
    CDSAplicacionGralPROVEEDOR: TStringField;
    CDSAplicacionGralID_CPBTE: TIntegerField;
    CDSAplicacionGralTIPOCPBTE: TStringField;
    CDSAplicacionGralCLASECPBTE: TStringField;
    CDSAplicacionGralNUMEROCPBTE: TStringField;
    CDSAplicacionGralAPLICA_ID_CPBTE: TIntegerField;
    CDSAplicacionGralAPLICA_TIPOCPBTE: TStringField;
    CDSAplicacionGralAPLICA_CLASECPBTE: TStringField;
    CDSAplicacionGralAPLICA_NROCPBTE: TStringField;
    CDSAplicacionGralDETALLE: TStringField;
    CDSAplicacionGralCONCILIADO: TStringField;
    BackUpdeAplicaciones1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    ReHacerMovCC: TAction;
    ReHacerMovCC1: TMenuItem;
    DSPFiltroCab: TDataSetProvider;
    CDSFiltroCab: TClientDataSet;
    CDSFiltroCabID: TIntegerField;
    CDSFiltroCabDETALLE: TStringField;
    DSFiltroCab: TDataSource;
    dbcGrupo: TJvDBLookupCombo;
    chVistaOP: TCheckBox;
    DBText3: TDBText;
    DBText4: TDBText;
    chIngoraGrupo: TCheckBox;
    DbID: TDBText;
    JvLabel1: TJvLabel;
    CDSACta2: TClientDataSet;
    DSPActa2: TDataSetProvider;
    DSACta2: TDataSource;
    CDSACta2ID_MOV: TIntegerField;
    CDSACta2PROVEEDOR: TStringField;
    CDSACta2ID_CPBTE: TIntegerField;
    CDSACta2TIPOCPBTE: TStringField;
    CDSACta2CLASECPBTE: TStringField;
    CDSACta2NUMEROCPBTE: TStringField;
    CDSACta2DETALLE: TStringField;
    CDSACta2MUESTRAGRUPO: TIntegerField;
    CDSACta2MUESTRATOTAL: TFloatField;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    QMovCC: TFDQuery;
    QMovCCID_MOVCCCOMPRA: TIntegerField;
    QMovCCID_CPBTE: TIntegerField;
    QMovCCPROVEEDOR: TStringField;
    QMovCCTIPOCPBTE: TStringField;
    QMovCCCLASECPBTE: TStringField;
    QMovCCNROCPBTE: TStringField;
    QMovCCDEBE: TFloatField;
    QMovCCHABER: TFloatField;
    QMovCCSALDO: TFloatField;
    QMovCCDETALLE: TStringField;
    QMovCCID_MONEDA: TIntegerField;
    QMovCCCOTIZACION: TFloatField;
    QMovCCMUESTRAGRUPO: TIntegerField;
    QMovCCMUESTRATOTAL: TFloatField;
    QAplicaciones: TFDQuery;
    QAplicacionesID_MOV: TIntegerField;
    QAplicacionesID_MOVCCCOMPRA: TIntegerField;
    QAplicacionesPROVEEDOR: TStringField;
    QAplicacionesID_CPBTE: TIntegerField;
    QAplicacionesTIPOCPBTE: TStringField;
    QAplicacionesCLASECPBTE: TStringField;
    QAplicacionesNUMEROCPBTE: TStringField;
    QAplicacionesIMPORTE: TFloatField;
    QAplicacionesAPLICA_ID_CPBTE: TIntegerField;
    QAplicacionesAPLICA_TIPOCPBTE: TStringField;
    QAplicacionesAPLICA_CLASECPBTE: TStringField;
    QAplicacionesAPLICA_NROCPBTE: TStringField;
    QAplicacionesDETALLE: TStringField;
    QAplicacionesAPLICA_NETO: TFloatField;
    QAplicacionesCONCILIADO: TStringField;
    QAplicacionesAPLICA_IVA: TFloatField;
    CDSAplicacionesIMPORTE: TFloatField;
    CDSAplicacionesAPLICA_NETO: TFloatField;
    CDSAplicacionesAPLICA_IVA: TFloatField;
    QActa2: TFDQuery;
    QActa2ID_MOV: TIntegerField;
    QActa2PROVEEDOR: TStringField;
    QActa2ID_CPBTE: TIntegerField;
    QActa2TIPOCPBTE: TStringField;
    QActa2CLASECPBTE: TStringField;
    QActa2NUMEROCPBTE: TStringField;
    QActa2IMPORTE: TFloatField;
    QActa2DETALLE: TStringField;
    CDSACta2IMPORTE: TFloatField;
    QProv: TFDQuery;
    QSaldoCtaCte: TFDQuery;
    QSaldoCtaCteSALDO: TFloatField;
    QBorraAplicacionesFD: TFDQuery;
    QBorraUnAplicacionFD: TFDQuery;
    QDesconciliarTodosFD: TFDQuery;
    QConciliarUnoFD: TFDQuery;
    QDesconcilarUnoFD: TFDQuery;
    QActualizaMovACtaNCFD: TFDQuery;
    spReAsignaSaldosFD: TFDStoredProc;
    QMarcarTodoConciliadoFD: TFDQuery;
    QAPlicacionGral: TFDQuery;
    QAPlicacionGralID_MOV: TIntegerField;
    QAPlicacionGralID_MOVCCCOMPRA: TIntegerField;
    QAPlicacionGralPROVEEDOR: TStringField;
    QAPlicacionGralID_CPBTE: TIntegerField;
    QAPlicacionGralTIPOCPBTE: TStringField;
    QAPlicacionGralCLASECPBTE: TStringField;
    QAPlicacionGralNUMEROCPBTE: TStringField;
    QAPlicacionGralIMPORTE: TFloatField;
    QAPlicacionGralAPLICA_ID_CPBTE: TIntegerField;
    QAPlicacionGralAPLICA_TIPOCPBTE: TStringField;
    QAPlicacionGralAPLICA_CLASECPBTE: TStringField;
    QAPlicacionGralAPLICA_NROCPBTE: TStringField;
    QAPlicacionGralDETALLE: TStringField;
    QAPlicacionGralAPLICA_NETO: TFloatField;
    QAPlicacionGralCONCILIADO: TStringField;
    QAPlicacionGralAPLICA_IVA: TFloatField;
    CDSAplicacionGralIMPORTE: TFloatField;
    CDSAplicacionGralAPLICA_NETO: TFloatField;
    QFiltroC: TFDQuery;
    spReHaceMovFD: TFDStoredProc;
    cxGrid1DBTableView2FECHA: TcxGridDBColumn;
    cxGrid1DBTableView2TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2NUMEROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2ID_MOV: TcxGridDBColumn;
    cxGrid1DBTableView2ID_MOVCCCOMPRA: TcxGridDBColumn;
    cxGrid1DBTableView2DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView2PROVEEDOR: TcxGridDBColumn;
    cxGrid1DBTableView2ID_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2IDMOVACTA: TcxGridDBColumn;
    cxGrid1DBTableView2CONCILIADO: TcxGridDBColumn;
    cxGrid1DBTableView2IMPORTE: TcxGridDBColumn;
    CDSMovCC: TClientDataSet;
    CDSMovCCID_MOVCCCOMPRA: TIntegerField;
    CDSMovCCID_CPBTE: TIntegerField;
    CDSMovCCPROVEEDOR: TStringField;
    CDSMovCCTIPOCPBTE: TStringField;
    CDSMovCCCLASECPBTE: TStringField;
    CDSMovCCNROCPBTE: TStringField;
    CDSMovCCDEBE: TFloatField;
    CDSMovCCHABER: TFloatField;
    CDSMovCCSALDO: TFloatField;
    CDSMovCCDETALLE: TStringField;
    CDSMovCCID_MONEDA: TIntegerField;
    CDSMovCCCOTIZACION: TFloatField;
    CDSMovCCMUESTRAGRUPO: TIntegerField;
    CDSMovCCMUESTRATOTAL: TFloatField;
    cxGrid1DBTableView1FECHACOMPRA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAVTO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    QMovIdMax_Min: TFDQuery;
    QMovIdMax_MinID_MOVCCCOMPRA: TIntegerField;
    SaveDialog1: TSaveDialog;
    QMovCCFECHACOMPRA: TSQLTimeStampField;
    QMovCCFECHAVTO: TSQLTimeStampField;
    CDSMovCCFECHACOMPRA: TSQLTimeStampField;
    CDSMovCCFECHAVTO: TSQLTimeStampField;
    QAplicacionesFECHA: TSQLTimeStampField;
    CDSAplicacionesFECHA: TSQLTimeStampField;
    QActa2FECHA: TSQLTimeStampField;
    CDSACta2FECHA: TSQLTimeStampField;
    QAPlicacionGralFECHA: TSQLTimeStampField;
    CDSAplicacionGralFECHA: TSQLTimeStampField;
    N8: TMenuItem;
    MantieneAplicacion: TMenuItem;
    CDSProveedorCODIGO: TStringField;
    CDSProveedorNOMBRE: TStringField;
    CDSProveedorRAZON_SOCIAL: TStringField;
    CDSProveedorN_DE_CUENTA: TStringField;
    CDSProveedorID_COD_POSTAL: TIntegerField;
    CDSProveedorCOD_POSTAL: TStringField;
    CDSProveedorLOCALIDAD: TStringField;
    CDSProveedorDIRECCION: TStringField;
    CDSProveedorTELEFONO_1: TStringField;
    CDSProveedorTELEFONO_2: TStringField;
    CDSProveedorCONDICION_IVA: TIntegerField;
    CDSProveedorN_DE_CUIT: TStringField;
    CDSProveedorACTIVO: TStringField;
    CDSProveedorRETIENE_IVA: TStringField;
    CDSProveedorRETIENE_IB: TStringField;
    CDSProveedorRETIENE_GANANCIAS: TStringField;
    CDSProveedorIVA_SERVICIOS: TStringField;
    CDSProveedorPRECIOS_CON_IVA: TStringField;
    CDSProveedorOBSERVACIONES: TMemoField;
    CDSProveedorNOMBRE_REPRESENTANTE: TStringField;
    CDSProveedorDIRECCION_REPRESENTANTE: TStringField;
    CDSProveedorTELEFONO_REPRESENTANTE: TStringField;
    CDSProveedorTIPO_PROVEEDOR: TStringField;
    CDSProveedorFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSProveedorFECHAALTA: TSQLTimeStampField;
    CDSProveedorSALDO_INICIAL: TFloatField;
    CDSProveedorID_PERC_IVA: TIntegerField;
    CDSProveedorID_PERC_IBB: TIntegerField;
    CDSProveedorID_PERC_IBB_2: TIntegerField;
    CDSProveedorID_PERC_IBB_3: TIntegerField;
    CDSProveedorRUBRO: TIntegerField;
    CDSProveedorID_FACTURAPORDEFECTO: TIntegerField;
    CDSProveedorID_FACTURACTDODEFECTO: TIntegerField;
    CDSProveedorEXENTO_GANACIA: TStringField;
    CDSProveedorCODIGO_REGIMEN_RET_GANACIA: TIntegerField;
    CDSProveedorEXENTO_RETENCION_IB: TStringField;
    CDSProveedorID_TASA_RETENCION_IB: TIntegerField;
    CDSProveedorNRO_IIBB: TStringField;
    CDSProveedorCORREO: TStringField;
    CDSProveedorCONV_MULTI: TStringField;
    CDSProveedorMONEDA_PRECIOS: TIntegerField;
    CDSProveedorRUBRO_GASTO: TStringField;
    CDSProveedorSUB_RUB_GASTOS: TStringField;
    CDSProveedorCON_OCOMPRA: TStringField;
    CDSProveedorAUTORIZADO_NOMBRE: TStringField;
    CDSProveedorAUTORIZADO_TIPODOC: TStringField;
    CDSProveedorAUTORIZADO_NRODOC: TStringField;
    CDSProveedorRETENCION_IVA: TStringField;
    CDSProveedorCODIGO_RET_IVA: TIntegerField;
    CDSProveedorPORCENTAJE_RET_IVA: TSingleField;
    CDSProveedorTELEDISCADO: TStringField;
    CDSProveedorDESPERIVA: TStringField;
    CDSProveedorDESPERIB: TStringField;
    CDSProveedorDESPERIB2: TStringField;
    CDSProveedorMUESTRADETALLERETIIBB: TStringField;
    CDSProveedorMUESTRATASARETIIBB: TFloatField;
    CDSProveedorMUESTRAMINIMPONIRETIIBB: TFloatField;
    CDSProveedorCBU: TStringField;
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
    CDSEmpresaTASA_RET_IIBB: TFloatField;
    CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    CDSEmpresaPUNITORIOS: TFloatField;
    CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    CDSEmpresaNRO_RENSPA: TStringField;
    CDSEmpresaNRO_RUCA: TIntegerField;
    CDSEmpresaCUIT_AUTORIZADO: TStringField;
    CDSEmpresaNOMBRE_AUTORIZADO: TStringField;
    CDSEmpresaCBU: TStringField;
    CDSEmpresaID_CPOSTAL: TIntegerField;
    CDSEmpresaCOD_ACTIVIDAD: TStringField;
    CDSEmpresaNOMBRE_FANTASIA: TStringField;
    CDSEmpresaCODIGO_COT: TStringField;
    CDSEmpresaDIRECCION_NRO: TStringField;
    CDSEmpresaAG_PERCEPCION_IVA: TStringField;
    CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField;
    CDSEmpresaTASA_LEY15311: TFloatField;
    CDSEmpresaDIRECCION_OPERACION: TStringField;
    procedure ConfirmaExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure VerCCteExecute(Sender: TObject);
    procedure ImprimirDetalleExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure VerComprobanteExecute(Sender: TObject);
    procedure CDSAplicacionesAfterPost(DataSet: TDataSet);
    procedure CDSAplicacionesBeforeCancel(DataSet: TDataSet);
    procedure CDSAplicacionesBeforeDelete(DataSet: TDataSet);
    procedure CDSAplicacionesBeforeEdit(DataSet: TDataSet);
    procedure BorrarExecute(Sender: TObject);
    procedure edCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure DSBaseStateChange(Sender: TObject);
    procedure VerComprobante2Execute(Sender: TObject);
    procedure ToolBar1DblClick(Sender: TObject);
    procedure BorrarUnaAplicacionExecute(Sender: TObject);
    procedure ActualizaMovACtaExecute(Sender: TObject);
    procedure AplicacionAutomaticaExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure CDSAplicacionesBeforePost(DataSet: TDataSet);
    procedure chbSaldoCeroClick(Sender: TObject);
    procedure ConciliarUnoExecute(Sender: TObject);
//    procedure wwDBGAplicacionesDrawDataCell(Sender: TObject; const Rect: TRect;
//      Field: TField; State: TGridDrawState);
    procedure CDSAplicacionesAfterScroll(DataSet: TDataSet);
    procedure ReArmarCtaCteExecute(Sender: TObject);
    procedure ConciliarTodosExecute(Sender: TObject);
    procedure dbgACtaEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure DesconciliarUnoExecute(Sender: TObject);
    procedure DesconciliarTodosExecute(Sender: TObject);
    procedure spStopClick(Sender: TObject);
    procedure dbgACtaTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure chFiltrarClick(Sender: TObject);
//    procedure wwDBGMovCCDrawDataCell(Sender: TObject; const Rect: TRect;
//      Field: TField; State: TGridDrawState);
    procedure spAplicacionGralClick(Sender: TObject);
    procedure edCodigoChange(Sender: TObject);
    procedure ReImportarAplicacionesExecute(Sender: TObject);
    procedure BorrarLasAplicacionesExecute(Sender: TObject);
    procedure BackUpAplicacionesExecute(Sender: TObject);
    procedure ReHacerMovCCExecute(Sender: TObject);
    procedure CDSMovCCAfterScroll(DataSet: TDataSet);
    procedure dbcGrupoClick(Sender: TObject);
    procedure cxGrid1DBTableView1DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
//    procedure wwExpandButton1BeforeExpand(Sender: TObject);
    procedure CDSACta2CalcFields(DataSet: TDataSet);
    procedure CDSACta2AfterScroll(DataSet: TDataSet);
    procedure cxGrid1DBTableView1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGrid1DBTableView1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid1DBTableView2DblClick(Sender: TObject);
    procedure cxGrid1DBTableView2CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure ExportarExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MantieneAplicacionClick(Sender: TObject);
  private
    { Private declarations }
  public
    Stop:Boolean;
    SumaSaldoCC:Extended;
    SumaSaldoACta:Extended;
    MascaraGral:String;
    GrupoApl,GrupoMov:Integer;  // estos los uso para saber de que grupo es el recibo y luego
                                // lo comparo con el de spMovCtaCte_Grupo

    procedure TraeCC(Dato:String);
    procedure SumarSaldos;
    { Public declarations }

  end;
  type TcxGridHack=class(TcxGrid);

var
  FormAplicacionesCCCompra_2: TFormAplicacionesCCCompra_2;

implementation

uses Librerias, UMuestraOPago,UDMain_FD,
  UAjustesCCProveedores, UAnulacionOPago, UBuscadorProveedor,
  DMStoreProcedureForm, UCompra_2, UReImportacionAplicacionesCompra, UOPago_2;

{$R *.DFM}

procedure TFormAplicacionesCCCompra_2.TraeCC(dato:String);
var IdDesde,IdHasta:Integer;
begin
  Screen.Cursor     := crHourGlass;
  CDSMovCC.Filtered := False;
  CDSACta2.Filtered := False;

  CDSMovCC.Close;
  CDSMovCC.Params.ParamByName('Codigo').Clear;
  CDSMovCC.Open;

  CDSAplicaciones.Close;
  CDSAplicaciones.Params.ParamByName('Id_Desde').Clear;
  CDSAplicaciones.Params.ParamByName('Id_Hasta').Clear;
  CDSAplicaciones.Open;

  CDSACta2.Close;
  CDSACta2.IndexFieldNames:='';
  CDSACta2.IndexDefs.Clear;
  CDSACta2.Params.ParamByName('Codigo').Clear;
  CDSACta2.Open;

  CDSProveedor.Close;
  CDSProveedor.Params.ParamByName('Codigo').Value:=Dato;
  CDSProveedor.Open;
  IF Not(CDSProveedor.IsEmpty) then
    begin
      edMuestraProveedor.Text:=CDSProveedorRAZON_SOCIAL.Value;
      CDSMovCC.Close;
      IF chbSaldoCero.Checked = True Then
        CDSMovCC.CommandText:= 'select m.*, ( select g.MuestraGrupo from mov_ctacte_comp_grupo ( m.id_movcccompra ) g ) as MuestraGrupo,'+
                               '            ( select g.MuestraTotal from mov_ctacte_comp_grupo ( m.id_movcccompra ) g ) as MuestraTotal '+
                               'from movcccompra m where '+
                               '( m.proveedor=:codigo) and ( (m.tipoCpbte=''FC'') or (m.TipoCpbte=''ND'') '+
                               'or (m.TipoCpbte=''AJ'') or (m.TipoCpbte=''XP'')) and (m.Debe=0 ) '+
                               ' ' +
                               'order by m.fechacompra,m.id_movcccompra ,m.NroCpbte '
      else
        CDSMovCC.CommandText:= 'select m.*, ( select g.MuestraGrupo from mov_ctacte_comp_grupo ( m.id_movcccompra ) g ) as MuestraGrupo,'+
                               '            ( select g.MuestraTotal from mov_ctacte_comp_grupo ( m.id_movcccompra ) g ) as MuestraTotal '+
                               'from movcccompra m where '+
                               '( m.proveedor=:codigo) and ( (m.tipoCpbte=''FC'') or (m.TipoCpbte=''ND'') '+
                               'or (m.TipoCpbte=''AJ'') or (m.TipoCpbte=''XP'')) and (m.Debe=0 ) '+
                               'and (m.Saldo<>0) ' +
                               'order by m.fechacompra,m.id_movcccompra ,m.NroCpbte ';

      CDSMovCC.Params.ParamByName('Codigo').Value:=Dato;
      CDSMovCC.Open;


      QMovIdMax_Min.Close;
      IF chbSaldoCero.Checked = True Then
        QMovIdMax_Min.SQL.Text:= 'select m.id_MOVCCCOMPRA  from movcccompra m where '+
                               '( m.proveedor=:codigo) and ( (m.tipoCpbte=''FC'') or (m.TipoCpbte=''ND'') '+
                               'or (m.TipoCpbte=''AJ'') or (m.TipoCpbte=''RC'') or (m.TipoCpbte=''XP'')) and (m.Debe=0 ) '+
                               'order by m.ID_MOVCCCOMPRA '
      else
        QMovIdMax_Min.SQL.Text:= 'select m.id_MOVCCCOMPRA  from movcccompra m where '+
                               '( m.proveedor=:codigo) and ( (m.tipoCpbte=''FC'') or (m.TipoCpbte=''ND'') '+
                               'or (m.TipoCpbte=''AJ'') or (m.TipoCpbte=''RC'') or (m.TipoCpbte=''XP'')) and (m.Debe=0 ) '+
                               'and (m.Saldo<>0) ' +
                               'order by m.ID_MOVCCCOMPRA ';

//      CDSMovCC.Params.ParamByName('Codigo').Value:=Dato;
//      CDSMovCC.Open;

      QMovIdMax_Min.ParamByName('codigo').Value:=Dato;
      QMovIdMax_Min.Open;

      QMovIdMax_Min.First;
      IdDesde:=QMovIdMax_MinID_MOVCCCOMPRA.Value;

      QMovIdMax_Min.Last;
      IdHasta:=QMovIdMax_MinID_MOVCCCOMPRA.Value;

      QMovIdMax_Min.Close;

      CDSAplicaciones.Close;
      CDSAplicaciones.Params.ParamByName('CODIGO').AsString := Dato;
      CDSAplicaciones.Params.ParamByName('Id_Desde').Value  := IdDesde;
      CDSAplicaciones.Params.ParamByName('Id_Hasta').Value  := IdHasta;
      CDSAplicaciones.Open;

      CDSACta2.Close;
//      CDSACta2.CommandText:= ' select m.*, ( select g.MuestraGrupo from movactacccompra_grupo ( m.id_mov ) g ) as MuestraGrupo, '+
//                            '             ( select g.MuestraTotal from movactacccompra_grupo ( m.id_mov ) g ) as MuestraTotal '+
//                            'from MovACtaCCCompra m where m.Proveedor = :codigo and m.Importe<>0 '+
//                            'order by m.fecha,m.numerocpbte';
      CDSACta2.Params.ParamByName('Codigo').Value:=Dato;
      CDSACta2.Open;
      SumarSaldos;
      QSaldoCtaCte.Close;
      QSaldoCtaCte.ParamByName('Codigo').Value:=Dato;
      QSaldoCtaCte.Open;
      edCodigo.SetFocus;
      edCodigo.SelectAll;
    end;
  dbgACta.Width     := dbgACta.Width+1;
  dbgACta.Width     := dbgACta.Width-1;
  dbcGrupo.KeyValue := -1;
  Screen.Cursor     := crDefault;

end;

procedure TFormAplicacionesCCCompra_2.SumarSaldos;
VAR Puntero2,Puntero3:TBookmark;
SumaAplicaciones:Extended;
begin
//  CDSMovCC.DisableControls;
  CDSACta2.DisableControls;
  Puntero2 := CDSACta2.GetBookmark;
//  Puntero3 := CDSAplicaciones.GetBookmark;
 // CDSMovCC.First;
//  CDSAplicaciones.First;
  SumaSaldoCC      := 0;
  SumaSaldoACta    := 0;
  SumaAplicaciones := 0;
  while Not(CDSACta2.Eof) DO
    begin
      SumaSaldoACta := SumaSaldoACta + RoundTo(CDSACta2IMPORTE.AsFloat,-2);
      CDSACta2.Next;
    end;
 // while Not(CDSAplicaciones.Eof) DO
//    begin
//      SumaAplicaciones := SumaAplicaciones + CDSAplicacionesIMPORTE.AsFloat;
//      CDSAplicaciones.Next;
//    end;
//  CDSAplicaciones.GotoBookmark(Puntero3);
//  CDSAplicaciones.FreeBookmark(Puntero3);

  CDSACta2.GotoBookmark(Puntero2);
  CDSACta2.FreeBookmark(Puntero2);
  CDSACta2.EnableControls;
//  CDSMovCC.EnableControls;
//  CDSAplicaciones.EnableConstraints;
  ceSaldoACta.Value  :=SumaSaldoACta;
 // ceSAldoCtaCte.Value:=SumaSAldoCC;
end;


procedure TFormAplicacionesCCCompra_2.ConciliarTodosExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    QMarcarTodoConciliadoFD.Close;
    QMarcarTodoConciliadoFD.ParamByName('codigo').Value:=edCodigo.Text;
    QMarcarTodoConciliadoFD.ExecSQL;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo conciliar los mov...');
  end;
  QMarcarTodoConciliadoFD.Close;
  TraeCC(edCodigo.Text);
end;

procedure TFormAplicacionesCCCompra_2.ConciliarUnoExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    QConciliarUnoFD.Close;
    QConciliarUnoFD.ParamByName('id_mov').Value:=CDSAplicacionesID_MOV.Value;
    QConciliarUnoFD.ExecSQL;
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo realizar la operación de conciliación....');
  end;
  TraeCC(edCodigo.Text);
  QConciliarUnoFD.Close;

end;

procedure TFormAplicacionesCCCompra_2.ConfirmaExecute(Sender: TObject);
begin
  inherited;
//  CDSMovCC.ApplyUpdates(0);
//  CDSAplicaciones.ApplyUpdates(0);
//  CDSACta.ApplyUpdates(0);

  if pnPrincipal.Enabled Then
    begin
      edCodigo.SetFocus;
      edCodigo.SelectAll;
    end;
  Borrar.Enabled:=True;
  VerCCte.Execute;
end;

procedure TFormAplicacionesCCCompra_2.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  colSaldo,colHaber: integer;
  Valor   : Extended;
begin
  inherited;
 // Para Dibujar renglon en cxGrid
  colSaldo := cxGrid1DBTableView1SALDO.Index;
  colHaber := cxGrid1DBTableView1HABER.Index;
  if AViewInfo.Selected then
    begin
       ACanvas.Font.Color  := clWhite;
       ACanvas.Brush.Color := clBlue;
     end
  else
    begin
      if (RoundTo(AviewInfo.GridRecord.Values[colSaldo],-2))<>(RoundTo(AviewInfo.GridRecord.Values[colHaber],-2)) then
        ACanvas.Font.Color:=clMaroon;
      if (IsZero(AviewInfo.GridRecord.Values[colSaldo])) then
        ACanvas.Font.Color:=clGreen;
    end;
end;

procedure TFormAplicacionesCCCompra_2.cxGrid1DBTableView1DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
  inherited;
  if MantieneAplicacion.Checked=False then

  ADataController.CollapseDetails;
end;

procedure TFormAplicacionesCCCompra_2.cxGrid1DBTableView1DragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  inherited;
  GrupoApl:=-1;
  GrupoMov:=-1;
  // aca se verifica el grupo del movimiento si existen filtros.
  if (DMMain_FD.HayFiltros=True) and (chIngoraGrupo.Checked=False) then
    begin
      GrupoMov := CDSMovCCMUESTRAGRUPO.AsInteger;
      GrupoApl := CDSACta2MUESTRAGRUPO.AsInteger;
    end;
  //**************************************************************
  if (GrupoApl=GrupoMov) then
    if (Trunc((Source as TJvDBGrid).DataSource.DataSet.FieldByName('IMPORTE').AsFloat * 1000)> 0) Then
      IF ((Trunc(CDSMovCCSALDO.AsFloat * 1000)) > 0) Then
        begin
          CDSAplicaciones.Insert;
          CDSAplicacionesID_MOV.Value           := IBGId_AplicacionCCCompra.IncrementFD(1);
          CDSAplicacionesID_MOVCCCOMPRA.Value   := CDSMovCCID_MOVCCCOMPRA.Value;
          CDSAplicacionesAPLICA_ID_CPBTE.Value  := CDSMovCCID_CPBTE.Value;
          CDSAplicacionesAPLICA_TIPOCPBTE.Value := CDSMovCCTIPOCPBTE.Value;
          CDSAplicacionesAPLICA_CLASECPBTE.Value:= CDSMovCCCLASECPBTE.Value;
          CDSAplicacionesAPLICA_NROCPBTE.Value  := CDSMovCCNROCPBTE.Value;
          CDSAplicacionesAPLICA_IVA.AsFloat     := 0;
          CDSAplicacionesDETALLE.Value          := CDSMovCCDETALLE.Value;
          CDSAplicacionesCONCILIADO.Value       :='N';
          with (Source as TJvDBGrid).DataSource.DataSet DO
            begin
              CDSAplicacionesIDMOVACTA.Value   := CDSACta2ID_MOV.Value;
              CDSAplicacionesFECHA.AsDateTime  := FieldByName('Fecha').AsDateTime;
              CDSAplicacionesPROVEEDOR.Value   := FieldByName('Proveedor').Value;
              CDSAplicacionesID_CPBTE.Value    := FieldByName('Id_Cpbte').Value;
              CDSAplicacionesTIPOCPBTE.Value   := FieldByName('TipoCpbte').Value;
              CDSAplicacionesCLASECPBTE.Value  := FieldByName('ClaseCpbte').Value;
              CDSAplicacionesNUMEROCPBTE.Value := FieldByName('NumeroCpbte').Value;
              IF Moneda3d(' ',MascaraGral, FieldByName('Importe').Value)<=Moneda3d(' ',MascaraGral, CDSMovCCSALDO.AsFloat) Then
                CDSAplicacionesIMPORTE.AsFloat := FieldByName('Importe').AsFloat
              else
                CDSAplicacionesIMPORTE.AsFloat := CDSMovCCSALDO.AsFloat;
            end;
          CDSAplicaciones.Post;
        end
      else
        ShowMessage('Comprobante con saldo 0(cero), no se pude aplicar pagos')
    else
      ShowMessage('No Hay saldo para aplicar... !!!')
  else
    ShowMessage('Los Movimientos No pertenecen al mismo grupo que está en el filtro... '+#13+
                'Verifique el filtro o el movimento... !!!');

end;

procedure TFormAplicacionesCCCompra_2.cxGrid1DBTableView1DragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
Var
  HT: TcxCustomGridHitTest;
  ARecordIndex, ARowIndex:  Integer;
begin
  with TcxGridSite(Sender) do
  begin
    HT           := ViewInfo.GetHitTest(X, Y);
    Accept       := (HT is TcxGridRecordCellHitTest);// and
// (TcxGridRecordCellHitTest(HT).GridRecord.RecordIndex <> GridView.DataController.FocusedRecordIndex);
//    ARecordIndex := cxGrid1DBTableView1.DataController.FindRecordIndexByKey(AKeyValue);
    if accept Then
      begin
        ARowIndex    := (TcxGridRecordCellHitTest(HT).GridRecord.RecordIndex);
        //cxGrid1DBTableView1.DataController.SetFocus SelectRows(ARowIndex,ARowIndex);
        cxGrid1DBTableView1.Controller.FocusedRowIndex := ARowIndex ;
      end;
  end;
end;

procedure TFormAplicacionesCCCompra_2.cxGrid1DBTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  colConciliado: integer;
  Valor   : Extended;
begin
  inherited;
 // Para Dibujar renglon en cxGrid
  colConciliado := cxGrid1DBTableView2CONCILIADO.Index;
  if AViewInfo.Selected then
    begin
       ACanvas.Font.Color  := clWhite;
       ACanvas.Brush.Color := clBlue;
     end
  else
    begin
      if (AviewInfo.GridRecord.Values[colConciliado])='S' then
        ACanvas.Font.Color:=clBlue;
    end;
end;

procedure TFormAplicacionesCCCompra_2.cxGrid1DBTableView2DblClick(
  Sender: TObject);
begin
  inherited;
 IF (CDSAplicacionesTIPOCPBTE.AsString='NC') Then
    begin
      IF NOT (Assigned(FormCompra_2)) THEN
        FormCompra_2:= TFormCompra_2.Create(Application);
      FormCompra_2.DatoNew   := CDSAplicacionesID_CPBTE.AsString;
      FormCompra_2.TipoCpbte := CDSAplicacionesTIPOCPBTE.AsString;
      FormCompra_2.Recuperar.Execute;
      FormCompra_2.Show;
    end
  else
    IF (CDSAplicacionesTIPOCPBTE.AsString='OP') Then
      begin
        IF NOT (Assigned(FormOPago_2)) THEN
          FormOPago_2:= TFormOPago_2.Create(Application);
        FormOPago_2.DatoNew   := CDSAplicacionesID_CPBTE.AsString;
        FormOPago_2.TipoCpbte := CDSAplicacionesTIPOCPBTE.Value;
        FormOPago_2.Recuperar.Execute;
        FormOPago_2.Show;
      END
    else
      if (CDSAplicacionesTIPOCPBTE.AsString='AJ') Then
        begin
          IF NOT (Assigned(FormAjusteCCProveedores)) THEN
            FormAjusteCCProveedores:= TFormAjusteCCProveedores.Create(Application);
          FormAjusteCCProveedores.DatoNew  := CDSAplicacionesID_CPBTE.AsString;
          FormAjusteCCProveedores.TipoCpbte:= CDSAplicacionesTIPOCPBTE.AsString;
          FormAjusteCCProveedores.Recuperar.Execute;
        end;
end;

procedure TFormAplicacionesCCCompra_2.dbcGrupoClick(Sender: TObject);
begin
  inherited;
  CDSMovCC.Filter   := 'MUESTRAGRUPO = '+''+dbcGrupo.KeyValue+'';
  CDSACta2.Filter   := 'MUESTRAGRUPO = '+''+dbcGrupo.KeyValue+'';
  CDSMovCC.Filtered := dbcGrupo.KeyValue>-1;
  CDSACta2.Filtered := dbcGrupo.KeyValue>-1;
  SumarSaldos;
end;

procedure TFormAplicacionesCCCompra_2.dbgACtaEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  inherited;
 IF (CDSMovCC.Active) and Not(CDSMovCC.State in [dsBrowse])  Then CDSMovCC.Post;
end;

procedure TFormAplicacionesCCCompra_2.dbgACtaTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
  inherited;
  try
    Campo := Field.FieldName;
    with dbgACta.DataSource.DataSet as TClientDataSet do
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

procedure TFormAplicacionesCCCompra_2.CancelarExecute(Sender: TObject);
begin
  inherited;
  if pnPrincipal.Enabled Then
    begin
      edCodigo.SetFocus;
      edCodigo.SelectAll;
    end;
  Borrar.Enabled:=True;    
end;

procedure TFormAplicacionesCCCompra_2.ImprimirExecute(Sender: TObject);
BEGIn
  CDSEmpresa.Close;
  CDSEmpresa.Open;

  frMovCC.PrintOptions.Printer:=PrNomListados;
  frMovCC.SelectPrinter;

  frMovCC.LoadFromFile(DMMain_FD.PathReportesLst+'\LstPendientesProveedores.fr3');

  frMovCC.ShowReport;
end;

procedure TFormAplicacionesCCCompra_2.MantieneAplicacionClick(Sender: TObject);
begin
  inherited;
  MantieneAplicacion.Checked:=Not(MantieneAplicacion.Checked);
end;

procedure TFormAplicacionesCCCompra_2.BuscarProveedorExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
    begin
      edCodigo.Text:=FormBuscadorProveedor.Codigo;
      TraeCC(Trim(edCodigo.Text));
    end;
end;

procedure TFormAplicacionesCCCompra_2.VerCCteExecute(Sender: TObject);
begin
  inherited;
  TraeCC(Trim(edCodigo.Text));
end;

procedure TFormAplicacionesCCCompra_2.ImprimirDetalleExecute(Sender: TObject);
var CDSMovCC_Clone,CDSAplic_Clone:TClientDataSet;
DSClone:TDataSource;
BEGIN
  CDSMovCC_Clone:=TClientDataSet.Create(self);
  CDSAplic_Clone:=TClientDataSet.Create(self);
  CDSMovCC_Clone.CloneCursor(CDSMovCC,True);
  CDSAplic_Clone.CloneCursor(CDSAplicaciones,True);
  DSClone        := TDataSource.Create(self);
  DSClone.DataSet:= CDSMovCC_Clone;

  CDSAplic_Clone.MasterSource    := DSClone;
  CDSAplic_Clone.MasterFields    := 'ID_MOVCCCOMPRA';
  CDSAplic_Clone.IndexFieldNames := 'ID_MOVCCCOMPRA';

  frDBMovCC.DataSet              := CDSMovCC_Clone;
  frDBAplicaciones.DataSet       := CDSAplic_Clone;

  CDSEmpresa.Close;
  CDSEmpresa.Open;

  frDetalle.PrintOptions.Printer:=PrNomListados;
  frDetalle.SelectPrinter;
  frDetalle.LoadFromFile(DMMain_FD.PathReportesLst+'\DetalleMovAplicadosCCCompra.fr3');
 // frCtaCte.PrepareReport;
  frDetalle.ShowReport;
end;


procedure TFormAplicacionesCCCompra_2.FormActivate(Sender: TObject);
begin
  inherited;
  if (Trim(edCodigo.Text))<>'' then
    TraeCC(Trim(edCodigo.Text));
end;

procedure TFormAplicacionesCCCompra_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAplicacionesCCCompra_2.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AutoSize := False;
//  AddClientDataSet(CDSMovCC,DSPMovCC);
  AddClientDataSet(CDSAplicaciones,DSPAplicaciones);
  AddClientDataSet(CDSACta2,DSPACta2);
  MascaraGral := ',0.00;-,0.00;-';

  TFloatField(CDSMovCCDEBE).EditFormat              :='0.00';
  TFloatField(CDSMovCCHABER).EditFormat             :='0.00';
  TFloatField(CDSMovCCSALDO).EditFormat             :='0.00';
  TFloatField(CDSAplicacionesIMPORTE).EditFormat    :='0.00';
  TFloatField(CDSACta2IMPORTE).EditFormat           :='0.00';

  TFloatField(CDSMovCCDEBE).DisplayFormat           :=MascaraGral;
  TFloatField(CDSMovCCHABER).DisplayFormat          :=MascaraGral;
  TFloatField(CDSMovCCSALDO).DisplayFormat          :=MascaraGral;
  TFloatField(CDSAplicacionesIMPORTE).DisplayFormat :=MascaraGral;
  TFloatField(CDSACta2IMPORTE).DisplayFormat        :=MascaraGral;

  TFloatField(QSaldoCtaCteSALDO).DisplayFormat      :=MascaraGral;

  CDSFiltroCab.Close;
  CDSFiltroCab.Open;
end;

procedure TFormAplicacionesCCCompra_2.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 // inherited;
  IF Key=#27 Then Key:=#0;
end;

procedure TFormAplicacionesCCCompra_2.FormResize(Sender: TObject);
begin
  inherited;
  if (FormAplicacionesCCCompra_2<>nil) Then
    if (FormAplicacionesCCCompra_2.Width<>1075) then
      FormAplicacionesCCCompra_2.Width:=1075;

end;

procedure TFormAplicacionesCCCompra_2.FormShow(Sender: TObject);
begin
  inherited;
  edCodigo.SetFocus;
  edCodigo.SelectAll;
  Borrar.Enabled              := DMMain_FD.BorrarAplCCComp;
  BorrarUnaAplicacion.Enabled := Borrar.Enabled;

  Borrar.Visible              := Borrar.Enabled;
  BorrarUnaAplicacion.Visible := Borrar.Enabled;

  ReArmarCtaCte.Visible       := DMMain_FD.UsuarioAdministrador;
  ReArmarCtaCte.Enabled       := DMMain_FD.UsuarioAdministrador;

  pnAplicacionGral.Visible    := DMMain_FD.UsuarioActivo='master';
  ReArmarCtaCte.Enabled       := DMMain_FD.UsuarioActivo='master';
  spArmarAplicaciones.Enabled := DMMain_FD.UsuarioActivo='master';
  chIngoraGrupo.Enabled       := DMMain_FD.UsuarioActivo='master';
  Borrar.Enabled              := DMMain_FD.UsuarioActivo='master';

end;

procedure TFormAplicacionesCCCompra_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAplicacionesCCCompra_2:=nil;
end;

procedure TFormAplicacionesCCCompra_2.VerComprobanteExecute(Sender: TObject);
begin
  inherited;
  IF (CDSMovCCTIPOCPBTE.AsString='FC') or
     (CDSMovCCTIPOCPBTE.AsString='NC') or
     (CDSMovCCTIPOCPBTE.AsString='ND') Then
    begin
      IF NOT (Assigned(FormCompra_2)) THEN
        FormCompra_2:= TFormCompra_2.Create(Application);
      FormCompra_2.DatoNew   := CDSMovCCID_CPBTE.AsString;
      FormCompra_2.TipoCpbte := CDSMovCCTIPOCPBTE.AsString;
      FormCompra_2.Recuperar.Execute;
      FormCompra_2.Show;
    end
  else
    IF (CDSMovCCTIPOCPBTE.AsString='OP') Then
      begin
        IF NOT (Assigned(FormMuestraOPago)) THEN
          FormMuestraOPago:= TFormMuestraOPago.Create(Application);
        FormMuestraOPago.Id   := CDSMovCCID_CPBTE.Value;
        FormMuestraOPago.Tipo := CDSMovCCTIPOCPBTE.Value;
        FormMuestraOPago.ShowModal;
      END
    else
      IF (CDSMovCCTIPOCPBTE.AsString='AJ') Then
        begin
          IF NOT (Assigned(FormAjusteCCProveedores)) THEN
            FormAjusteCCProveedores:= TFormAjusteCCProveedores.Create(Application);
          FormAjusteCCProveedores.DatoNew  := CDSMovCCID_CPBTE.AsString;
          FormAjusteCCProveedores.TipoCpbte:= CDSMovCCTIPOCPBTE.AsString;
          FormAjusteCCProveedores.Recuperar.Execute;
        END
      else
        IF (CDSMovCCTIPOCPBTE.AsString='XP') Then
          begin
            IF NOT (Assigned(FormAnulacionOPago)) THEN
              FormAnulacionOPago:= TFormAnulacionOPago.Create(Application);
            FormAnulacionOPago.DatoNew  := CDSMovCCID_CPBTE.AsString;
            FormAnulacionOPago.TipoCpbte:= CDSMovCCTIPOCPBTE.AsString;
            FormAnulacionOPago.Recuperar.Execute;
         END;


end;

procedure TFormAplicacionesCCCompra_2.CDSACta2AfterScroll(DataSet: TDataSet);
begin
  inherited;
  sbEstado.Panels[2].Text:=FormatFloat(',0.00',CDSACta2MUESTRATOTAL.AsFloat);
end;

procedure TFormAplicacionesCCCompra_2.CDSACta2CalcFields(DataSet: TDataSet);
begin
  inherited;

  DMStoreProcedure.spMovACtaCCComp_GrupoFD.Close;
  DMStoreProcedure.spMovACtaCCComp_GrupoFD.Params.ParamByName('ID_Mov').AsInteger:=CDSACta2ID_MOV.AsInteger;
  DMStoreProcedure.spMovACtaCCComp_GrupoFD.ExecProc;


  CDSACta2MUESTRAGRUPO.Value  := DMStoreProcedure.spMovACtaCCComp_GrupoFD.Params.ParamByName('MUESTRAGRUPO').Value;
  CDSACta2MUESTRATOTAL.AsFloat:= DMStoreProcedure.spMovACtaCCComp_GrupoFD.Params.ParamByName('MUESTRATOTAL').AsFloat;

  DMStoreProcedure.spMovACtaCCComp_GrupoFD.Close;
end;

procedure TFormAplicacionesCCCompra_2.CDSAplicacionesAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSACta2.Edit;
  CDSACta2IMPORTE.AsFloat := CDSACta2IMPORTE.AsFloat - CDSAplicacionesIMPORTE.AsFloat;
  IF Moneda3d(' ',MascaraGral, CDSACta2IMPORTE.AsFloat) <= 0 Then
    CDSACta2IMPORTE.AsFloat := 0;
  if RoundTo(CDSACta2IMPORTE.AsFloat,-2) <= 0.01 Then
    CDSACta2IMPORTE.AsFloat := 0;
  CDSACta2.Post;
  IF CDSMovCC.State = dsBrowse Then
    CDSMovCC.Edit;
  CDSMovCCSALDO.AsFloat := CDSMovCCSALDO.AsFloat - CDSAplicacionesIMPORTE.AsFloat;
  IF (TRUNC(CDSMovCCSALDO.AsFloat*100) <= 1) THEN
    CDSMovCCSALDO.AsFloat := 0;
  if chSumar.Checked then
    SumarSaldos;

end;

procedure TFormAplicacionesCCCompra_2.CDSAplicacionesAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  ConciliarUno.Enabled        := CDSAplicacionesCONCILIADO.Value='N';
  BorrarUnaAplicacion.Enabled := CDSAplicacionesCONCILIADO.Value='N';
end;

procedure TFormAplicacionesCCCompra_2.CDSAplicacionesBeforeCancel(
  DataSet: TDataSet);
begin
  inherited;
 IF CDSMovCC.State=dsBrowse Then
    CDSMovCC.Edit;
  IF CDSACta2.State=dsBrowse Then
    CDSACta2.Edit;
  CDSACta2IMPORTE.AsFloat := CDSACta2IMPORTE.AsFloat + CDSAplicacionesIMPORTE.AsFloat;
  CDSMovCCSALDO.AsFloat   := CDSMovCCSALDO.AsFloat - CDSAplicacionesIMPORTE.AsFloat;
  CDSACta2.Post;
end;

procedure TFormAplicacionesCCCompra_2.CDSAplicacionesBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if CDSACta2.Locate('Id_Mov',CDSAplicacionesIDMOVACTA.value,[]) Then
    begin
      IF CDSACta2.state=dsBrowse Then
        CDSACta2.Edit;
      CDSACta2IMPORTE.AsFloat := CDSACta2IMPORTE.AsFloat + CDSAplicacionesIMPORTE.AsFloat;
      CDSACta2.Post;
      IF CDSMovCC.state=dsBrowse Then
        CDSMovCC.Edit;
      CDSMovCCSALDO.AsFloat  := CDSMovCCSALDO.AsFloat + CDSAplicacionesIMPORTE.AsFloat;
      IF CDSMovCCSALDO.AsFloat > CDSMovCCHABER.AsFloat Then
        CDSMovCCSALDO.AsFloat := CDSMovCCHABER.AsFloat;
      CDSMovCC.Post;
      SumarSaldos;
    end
  else
    begin
      ShowMessage('Operación no permitida, por que se trata de una asignación,'+#13+
                  'anterior a la actual..... Solo se permite a las operaciones'+#13+
                  'que se realizan en la actual transacción'+#13+
                  'Para el borrado hagalo desde la O. de Pago');
      SysUtils.Abort;
    end;

end;

procedure TFormAplicacionesCCCompra_2.CDSAplicacionesBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if CDSACta2.Locate('Id_Mov',CDSAplicacionesIDMOVACTA.value,[]) Then
    begin
      IF CDSMovCC.state=dsBrowse Then
        CDSMovCC.Edit;
      CDSMovCCSALDO.AsFloat  := CDSMovCCSALDO.AsFloat + CDSAplicacionesIMPORTE.AsFloat;
      IF CDSMovCCSALDO.AsFloat>CDSMovCCHABER.AsFloat Then
        CDSMovCCSALDO.AsFloat:= CDSMovCCHABER.AsFloat;
      CDSACta2.Edit;
      CDSACta2IMPORTE.AsFloat := CDSACta2IMPORTE.AsFloat + CDSAplicacionesIMPORTE.AsFloat;
      CDSACta2.Post;
      //SumarSaldos;
    end
  else
    begin
      ShowMessage('Operación no permitida, por que se trata de una asignación,'+#13+
                  'anterior a la actual..... Solo se permite a las operaciones'+#13+
                  'que se realizan en la actual transacción');
      SysUtils.Abort;
    end;

end;


procedure TFormAplicacionesCCCompra_2.CDSAplicacionesBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if CDSAplicacionesIMPORTE.AsFloat>CDSACta2IMPORTE.AsFloat then
    CDSAplicacionesIMPORTE.AsFloat := CDSACta2IMPORTE.AsFloat;
end;

procedure TFormAplicacionesCCCompra_2.CDSMovCCAfterScroll(DataSet: TDataSet);
begin
  inherited;
  ReHacerMovCC.Enabled    := CDSAplicaciones.IsEmpty;
  sbEstado.Panels[1].Text := FormatFloat(',0.00', CDSMovCCMUESTRATOTAL.AsFloat);
 end;

procedure TFormAplicacionesCCCompra_2.chbSaldoCeroClick(Sender: TObject);
begin
  inherited;
  VerCCte.Execute;
end;

procedure TFormAplicacionesCCCompra_2.BackUpAplicacionesExecute(
  Sender: TObject);
var path,Path_Archivo:String;
begin
  inherited;
  path:=ExtractFilePath(ParamStr(0));
  sbEstado.SimpleText:='Guardando Copia....';
  CDSAplicacionGral.Close;
  CDSAplicacionGral.Params.ParamByName('codigo').Value:=edCodigo.Text;
  CDSAplicacionGral.Open;
  if not DirectoryExists(Path+'Arch_AplicacionCompra') then
    CreateDir(path+'Arch_AplicacionCompra');
  path_Archivo:=path+'Arch_AplicacionCompra\'+'Aplicaciones_'+edCodigo.Text+'.XML';
  CDSAplicacionGral.SaveToFile(Path_Archivo);
  CDSAplicacionGral.Close;
  sbEstado.SimpleText:='';
end;

procedure TFormAplicacionesCCCompra_2.BorrarExecute(Sender: TObject);
var Detalle:String;
begin
  if (DMMain_FD.UsuarioAdministrador = True) then
    begin
      IF MessageDlg('Está por hacer una opreación de borrado de Aplicaciones'+ #13 +
                    'Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes THEN
        begin
          IF MessageDlg('Hacer Copia de las Aplicaciones?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
            BackUpAplicaciones.Execute;
          DMMain_FD.fdcGestion.StartTransaction;
          try

            Detalle:= 'Borrado Aplicaciones Compra..'+'Proveedor: ' + edMuestraProveedor.Text;

            DMMain_FD.LogFileFD(0,4,Detalle,'IMPU COMP');

            {
            DMStoreProcedure.spGravarLogDBX.Close;
            DMStoreProcedure.spGravarLogDBX.ParamByName('Tipo').Value      := 4;
            DMStoreProcedure.spGravarLogDBX.ParamByName('Detalle').AsString:= 'Borrado Aplicaciones Compra..'+
                                                                           'Proveedor: ' + edMuestraProveedor.Text;
            DMStoreProcedure.spGravarLogDBX.ParamByName('Origen').AsString  :='IMPU COMP';
            DMStoreProcedure.spGravarLogDBX.ParamByName('Usuario').AsString :=DMMain_FD.UsuarioActivo;
            DMStoreProcedure.spGravarLogDBX.ExecProc;
            DMStoreProcedure.spGravarLogDBX.Close;
            }
            BorrarLasAplicaciones.Execute;
//            QBorraAplicaciones.Close;
//            QBorraAplicaciones.ParamByName('codigo').Value     :=edCodigo.Text;
//            QBorraAplicaciones.ExecSQL;
//            QBorraAplicaciones.Close;
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No se pudo borrar las aplicaciones...');
          end;
          TraeCC(edCodigo.Text);
        end;
    end
  else
    ShowMessage('No esta autorizado hacer esta Operación. Solo Administradores...');
end;

procedure TFormAplicacionesCCCompra_2.BorrarLasAplicacionesExecute(
  Sender: TObject);
begin
  inherited;
  if MessageDlg('Esta por Borrar todas las Apliaciones del cliente, esta Seguro?',mtConfirmation,mbYesNo,0,mbNo)=mrYes Then
    begin
      CDSAplicacionGral.Close;
      CDSAplicacionGral.Params.ParamByName('codigo').Value:=edCodigo.Text;
      CDSAplicacionGral.Open;
      CDSAplicacionGral.First;

      while Not(CDSAplicacionGral.Eof) do
        begin
          //DMMain_FD.DBXt:=DMMain_FD.SQLConectionMain.BeginTransaction(TDBXIsolations.ReadCommitted);
          DMMain_FD.fdcGestion.StartTransaction;
          try
            QBorraUnAplicacionFD.Close;
            QBorraUnAplicacionFD.ParamByName('id_mov').Value:=CDSAplicacionGralID_MOV.Value;
            QBorraUnAplicacionFD.ExecSQL;
//            DMMain_FD.SQLConectionMain.CommitFreeAndNil(DMMain_FD.DBXt);
            DMMain_FD.fdcGestion.commit;
          Except
            DMMain_FD.fdcGestion.Rollback;
//            DMMain_FD.SQLConectionMain.RollbackFreeAndNil(DMMain_FD.DBXt);
          end;
          CDSAplicacionGral.Next;
        end;
      CDSAplicacionGral.Close;
      TraeCC(edCodigo.Text);
    end;
end;

procedure TFormAplicacionesCCCompra_2.chFiltrarClick(Sender: TObject);
begin
  inherited;
  CDSACta2.Filter  :=' TIPOCPBTE = '''+cbbTipo.Text+''' ';
  CDSACta2.Filtered:=chFiltrar.Checked ;
  SumarSaldos;
end;

procedure TFormAplicacionesCCCompra_2.edCodigoChange(Sender: TObject);
begin
  inherited;
  chInicar.Caption:='Iniciar desde :'+Trim(edCodigo.Text);
end;

procedure TFormAplicacionesCCCompra_2.edCodigoKeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Trim(Copy('000000', 1, 6 - (Length(Trim(edCodigo.Text)))) + Trim(edCodigo.Text));
      TraeCC(Dato);
      edCodigo.Text := Dato;
      edCodigo.SelectAll;
    END;
end;

procedure TFormAplicacionesCCCompra_2.ExportarExecute(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.DataController.OnDetailExpanding:=Nil; //<<<<<<<<  para expandir cxGrid

  cxGrid1DBTableView1.ViewData.Expand(True); //<<<<<<<<  para expandir cxGrid

  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  SaveDialog1.FileName:='Movimientos_'+Trim(edMuestraProveedor.Text);
  SaveDialog1.DefaultExt:='xls';
  if VirtualUI.Active then
    SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  if SaveDialog1.Execute Then
   if SaveDialog1.FileName<>'' Then
     begin
       if VirtualUI.Active then
         if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
           SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

       if VirtualUI.Active then
         cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName , cxGrid1, True, true, False, 'xls')
       else
         cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName , cxGrid1, True, true, False, 'xls');

       if VirtualUI.Active then
         VirtualUI.DownloadFile(SaveDialog1.FileName);
     end;

//   ExportGridDataToExcel('Movimientos_'+edMuestraCliente.text, cxGrid1, True, true, True, 'xls'); //
//   begin
//     if VirtualUI.Active then
//       ExportGridDataToExcel('Movimientos_'+edMuestraCliente.text, cxGrid1, True, true, True, 'xls'); //
//
//     if VirtualUI.Active then
//       VirtualUI.DownloadFile('Movimientos_'+edMuestraCliente.text+'.xls');
//   end;
  cxGrid1DBTableView1.ViewData.Collapse(True); //<<<<<<<<  para expandir cxGrid
  cxGrid1DBTableView1.DataController.OnDetailExpanding:=cxGrid1DBTableView1DataControllerDetailExpanding; //<<<<<<<<  para expandir cxGrid

end;

procedure TFormAplicacionesCCCompra_2.DesconciliarTodosExecute(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador=True then
    begin
      //DMMain_FD.DBXt:=DMMain_FD.SQLConectionMain.BeginTransaction(TDBXIsolations.ReadCommitted);
      DMMain_FD.fdcGestion.StartTransaction;
      try
        QDesconciliarTodosFD.Close;
        QDesconciliarTodosFD.ParamByName('codigo').Value:=edCodigo.Text;
        QDesconciliarTodosFD.ExecSQL;
        QDesconciliarTodosFD.Close;
        //DMMain_FD.SQLConectionMain.CommitFreeAndNil(DMMain_FD.DBXt);
        DMMain_FD.fdcGestion.Commit;
      except
//        DMMain_FD.SQLConectionMain.RollbackFreeAndNil(DMMain_FD.DBXt);
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo desconciliar los mov...');
      end;
      TraeCC(edCodigo.Text);
    end
  else
    ShowMessage('No está autorizádo para esta operación....');
end;

procedure TFormAplicacionesCCCompra_2.DesconciliarUnoExecute(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador=True then
    begin
//     DMMain_FD.DBXt:=DMMain_FD.SQLConectionMain.BeginTransaction(TDBXIsolations.ReadCommitted);
      DMMain_FD.fdcGestion.StartTransaction;
      try
        QDesconcilarUnoFD.Close;
        QDesconcilarUnoFD.ParamByName('id_mov').Value:=CDSAplicacionesID_MOV.Value;
        QDesconcilarUnoFD.ExecSQL;
//      DMMain_FD.SQLConectionMain.CommitFreeAndnil(DMMain_FD.DBXt);
        DMMain_FD.fdcGestion.Commit;
      Except
//      DMMain_FD.SQLConectionMain.RollbackFreeAndNil(DMMain_FD.DBXt);
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo realizar la operación ....');
      end;
      TraeCC(edCodigo.Text);
      QDesconcilarUnoFD.Close;
    end
  else
    ShowMessage('No está autorizádo para esta operación....');
end;

procedure TFormAplicacionesCCCompra_2.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormAplicacionesCCCompra_2.VerComprobante2Execute(
  Sender: TObject);
begin
  inherited;
  IF (CDSACta2TIPOCPBTE.AsString='NC') Then
    begin
      IF NOT (Assigned(FormCompra_2)) THEN
        FormCompra_2:= TFormCompra_2.Create(Application);
      FormCompra_2.DatoNew   := CDSACta2ID_CPBTE.AsString;
      FormCompra_2.TipoCpbte := CDSACta2TIPOCPBTE.AsString;
      FormCompra_2.Recuperar.Execute;
      FormCompra_2.Show;
    end
  else
    IF (CDSACTa2TIPOCPBTE.AsString='OP') Then
      begin
        if chVistaOP.Checked then
          begin
            IF NOT (Assigned(FormMuestraOPago)) THEN
              FormMuestraOPago:= TFormMuestraOPago.Create(Application);
            FormMuestraOPago.Id   := CDSACta2ID_CPBTE.Value;
            FormMuestraOPago.Tipo := CDSACta2TIPOCPBTE.Value;
            FormMuestraOPago.Show;
          end
        else
          begin
            IF NOT (Assigned(FormOPago_2)) THEN
              FormOPago_2:= TFormOPago_2.Create(self);
            FormOPago_2.DatoNew    := CDSACta2ID_CPBTE.AsString;
            FormOPago_2.TipoCpbte  := CDSACta2TIPOCPBTE.Value;
            FormOPago_2.Recuperar.Execute;
            FormOPago_2.Show;
          end

      END
    else
      if (CDSACta2TIPOCPBTE.AsString='AJ') Then
        begin
          IF NOT (Assigned(FormAjusteCCProveedores)) THEN
            FormAjusteCCProveedores:= TFormAjusteCCProveedores.Create(Application);
          FormAjusteCCProveedores.DatoNew  := CDSACta2ID_CPBTE.AsString;
          FormAjusteCCProveedores.TipoCpbte:= CDSACta2TIPOCPBTE.AsString;
          FormAjusteCCProveedores.Recuperar.Execute;
        end;
end;


//procedure TFormAplicacionesCCCompra_2.wwDBGAplicacionesDrawDataCell(
//  Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
//begin
//  inherited;
//  if gdSelected in State Then
//    begin
//      wwDBGAplicaciones.Canvas.Font.Color :=clWhite;
//      wwDBGAplicaciones.Canvas.Brush.Color:=clNavy;
//    end
//  else
//    begin
//      if CDSAplicacionesCONCILIADO.Value='S' then
//        wwDBGAplicaciones.Canvas.Font.Color:=clBlue
//      else
//        wwDBGAplicaciones.Canvas.Font.Color:=clBlack;
//     end;
//   wwDBGAplicaciones.DefaultDrawDataCell(Rect, Field, State);
//end;

procedure TFormAplicacionesCCCompra_2.ReArmarCtaCteExecute(Sender: TObject);
var Detalle:String;
begin
  if (DMMain_FD.UsuarioAdministrador = True) then
    begin
      IF MessageDlg('Está por hacer una opreación de borrado total de Aplicaciones'+ #13 +
                    'Se ignoran los movimientos concilados.Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes THEN
        begin
          IF MessageDlg('Hacer Copia de las Aplicaciones?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
            BackUpAplicaciones.Execute;
//          DMMain_FD.DBXt:=DMMain_FD.SQLConectionMain.BeginTransaction(TDBXIsolations.ReadCommitted);
          DMMain_FD.fdcGestion.StartTransaction;
          try
            Detalle:= 'Borrado General Aplicaciones Compra..'+
                      'Proveedor: ' + edMuestraProveedor.Text;
            DMMain_FD.LogFileFD(0,4,Detalle,'IMPU COMP');
            spReAsignaSaldosFD.Close;
            spReAsignaSaldosFD.ParamByName('codigoprov').AsString:=edCodigo.Text;
            spReAsignaSaldosFD.ExecProc;
            spReAsignaSaldosFD.Close;

            //DMMain_FD.SQLConectionMain.CommitFreeAndNil(DMMain_FD.DBXt);
            DMMain_FD.fdcGestion.Commit;
          except
            //DMMain_FD.SQLConectionMain.RollbackFreeAndNil(DMMain_FD.DBXt);
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No se pudo borrar las aplicaciones...');
          end;
          TraeCC(edCodigo.Text);
        end;
    end
  else
    ShowMessage('No esta autorizado hacer esta Operación. Solo Administradores...');
end;


procedure TFormAplicacionesCCCompra_2.ReHacerMovCCExecute(Sender: TObject);
begin
  inherited;
 // Facturas
//  if pcDatos.ActivePage=Pag1 Then
  if (DMMain_FD.UsuarioAdministrador=True) and (CDSAplicaciones.IsEmpty) Then
    begin
//      DMMain_FD.DBXt:=DMMain_FD.SQLConectionMain.BeginTransaction(TDBXIsolations.ReadCommitted);
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spReHaceMovFD.Close;
        spReHaceMovFD.ParamByName('CPBTE_ID').Value   :=CDSMovCCID_CPBTE.Value;
        spReHaceMovFD.ParamByName('CPBTE_TIPO').Value :=CDSMovCCTIPOCPBTE.Value;
        spReHaceMovFD.ParamByName('CPBTE_CLASE').Value:=CDSMovCCCLASECPBTE.Value;
        spReHaceMovFD.ExecProc;
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
      end;
      spReHaceMovFD.Close;
    end;
end;

procedure TFormAplicacionesCCCompra_2.ReImportarAplicacionesExecute(
  Sender: TObject);
begin
  inherited;
  if (DMMain_FD.UsuarioAdministrador=True) and (Not(CDSMovCC.IsEmpty)) Then
    begin
      if Not(Assigned(FormReImpAplicacionesCompra)) then
        FormReImpAplicacionesCompra:=TFormReImpAplicacionesCompra.Create(self);
      FormReImpAplicacionesCompra.codigo:=edCodigo.Text;
      FormReImpAplicacionesCompra.ShowModal;
    end;
end;

procedure TFormAplicacionesCCCompra_2.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frMovCC.DesignReport;
end;

procedure TFormAplicacionesCCCompra_2.spAplicacionGralClick(Sender: TObject);
var char13:char;
begin
  inherited;
  if MessageDlg('Está por hacer una reasignación general de cta.cte.. esta seguro?',
    mtInformation, [mbYes, mbNo], 0) = mrYes Then
    begin
      lbMensajeAutomatico.Caption:='Procesando...';
      Application.ProcessMessages;

      CDSProv.Close;
      CDSProv.Open;
      pbAplicacionGral.Min:=0;
      pbAplicacionGral.Max:=CDSProv.RecordCount-1;
      pbAplicacionGral.Position:=0;
      CDSProv.First;
      if chInicar.Checked then
        CDSProv.Locate('CODIGO',edCodigo.Text,[]);
      while not(cdsprov.eof) and (Stop=False) do
        begin
          char13:=#13;
          edCodigo.Text:=CDSProvCODIGO.Value;
          edCodigoKeyPress(Sender,char13);
          AplicacionAutomatica.Execute;
          if pbAplicacionGral.Position<pbAplicacionGral.Max then
            pbAplicacionGral.Position:=pbAplicacionGral.Position+1;
          Application.ProcessMessages;
          Confirma.Execute;
          CDSProv.Next;
        end;
    end;
  CDSProv.Close;
  pbAplicacionGral.Position:=0;
  lbMensajeAutomatico.Caption:='..';
  Application.ProcessMessages;
end;

procedure TFormAplicacionesCCCompra_2.spStopClick(Sender: TObject);
begin
  inherited;
  stop:=True;
end;

procedure TFormAplicacionesCCCompra_2.ToolBar1DblClick(Sender: TObject);
begin
  inherited;
  frDetalle.DesignReport;
end;

procedure TFormAplicacionesCCCompra_2.BorrarUnaAplicacionExecute(
  Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    QBorraUnAplicacionFD.Close;
    QBorraUnAplicacionFD.ParamByName('id_mov').Value:=CDSAplicacionesID_MOV.Value;
    QBorraUnAplicacionFD.ExecSQL;
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo realizar la operación de borrado....');
  end;
  QBorraUnAplicacionFD.Close;
  TraeCC(edCodigo.Text);
end;

procedure TFormAplicacionesCCCompra_2.ActualizaMovACtaExecute(
  Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador then
    BEGIN
      if CDSACta2TIPOCPBTE.Value='NC' Then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            QActualizaMovACtaNCFD.Close;
            QActualizaMovACtaNCFD.ParamByName('idmov').Value :=CDSACta2ID_MOV.Value;
            QActualizaMovACtaNCFD.ExecSQL;
            DMMain_FD.fdcGestion.Commit;
          Except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No se pudo realizar la Actualización....');
          end;
          QActualizaMovACtaNCFD.Close;
          CDSACta2.Close;
          CDSACta2.Params.ParamByName('Codigo').Value := edCodigo.Text;
          CDSACta2.Open;
          SumarSaldos;
        end;
    END;
end;

procedure TFormAplicacionesCCCompra_2.AplicacionAutomaticaExecute(
  Sender: TObject);
begin
  inherited;
  Stop:=False;
  btConfirma.Enabled   := False;
  btSalir.Enabled      := False;
  btNuevo.Enabled      := False;
  btBorrar.Enabled     := False;
  btVer.Enabled        := False;
  btExportar.Enabled   := False;
  btImprimir.Enabled   := False;
  btImprmirDet.Enabled := False;


  sbEstado.SimpleText:='Imputando Pagos......';
  CDSACta2.First;
  CDSMovCC.First;
  while ((Not(CDSACta2.Eof)) and (Not(CDSMovCC.Eof))) and (Stop=False) do
    begin
      Application.ProcessMessages;
      if CDSMovCCSALDO.AsFloat>0 Then
        begin
          while ((CDSACta2IMPORTE.AsFloat>0) and (Not(CDSMovCC.Eof))) and (Stop=False) do
            begin
              GrupoApl:=-1;
              GrupoMov:=-1;
              // aca se verifica el grupo del movimiento si existen filtros.
              if (DMMain_FD.HayFiltros=True) and (chIngoraGrupo.Checked=False) then
                begin
                  GrupoMov:=CDSMovCCMUESTRAGRUPO.Value;
                  if CDSACta2MUESTRAGRUPO.AsString<>'' then
                    GrupoApl:=CDSACta2MUESTRAGRUPO.Value
                  else
                    GrupoApl:=-1;
                end;
             //**************************************************************
              if (CDSMovCCSALDO.AsFloat>0) and (GrupoApl=GrupoMov) Then
                cxGrid1DBTableView1DragDrop(Sender, DBGActa,10,10)
                //wwDBGMovCCDragDrop( Sender, DBGActa,10,10)
              else
                CDSMovCC.Next;
              Application.ProcessMessages;
            end;
          CDSMovCC.First;
          CDSACta2.Next;
        end
      else
        CDSMovCC.Next;
    end;
  SumarSaldos;
  sbEstado.SimpleText  := '';
  btConfirma.Enabled   := True;
  btSalir.Enabled      := True;
  btNuevo.Enabled      := True;
  btBorrar.Enabled     := True;
  btVer.Enabled        := True;
  btExportar.Enabled   := True;
  btImprimir.Enabled   := True;
  btImprmirDet.Enabled := True;

  Application.ProcessMessages;
end;

end.
