unit UAplicacionesCCVta_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ShellApi, UABMBase, ComCtrls,  frxDBSet, frxClass, IBGenerator,  JvComponentBase, JvExControls, JvGradient,
  frxExportXLS, frxExportPDF, frxExportText, JvFormPlacement,Math, StrUtils,
  JvLabel, JvDBControls, FMTBcd, SqlExpr, DBXCommon, JvExMask, JvToolEdit, JvExStdCtrls,
  JvEdit, JvValidateEdit, DB, DBClient, Provider, Menus, Mask, DBCtrls,System.Variants,
  Grids, StdCtrls, ImgList, ActnList, Buttons, ToolWin, ExtCtrls, DBGrids, JvExDBGrids, JvDBGrid,
  JvDBLookup, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinscxPCPainter, dxSkinsDefaultPainters, cxNavigator, System.Actions,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, JvAppStorage, JvAppIniStorage, CompBuscador, dxSkinBlack,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridExportLink,VirtualUi_SDK,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxPScxPivotGridLnk, frxExportBaseDialog,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, dxSkinWXI,
  frCoreClasses;

type
  TFormAplicacionesCCVta_2 = class(TFormABMBase)
    PopupMenu1: TPopupMenu;
    VerComprpbante1: TMenuItem;
    DSMovCC: TDataSource;
    DSACta: TDataSource;
    DSPACta: TDataSetProvider;
    DSPAplicaciones: TDataSetProvider;
    DSPMovCC: TDataSetProvider;
    IBGId_AplicacionCCVta: TIBGenerator;
    frMovCC: TfrxReport;
    frDBAplicaciones: TfrxDBDataset;
    frDBMovCC: TfrxDBDataset;
    frDBACta: TfrxDBDataset;
    ToolButton1: TToolButton;
    BitBtn2: TBitBtn;
    btExportar: TBitBtn;
    btImprimir: TBitBtn;
    ToolButton2: TToolButton;
    BitBtn3: TBitBtn;
    BuscarCliente: TAction;
    Imprimir: TAction;
    Exportar: TAction;
    VerCCte: TAction;
    ImprimirDetalle: TAction;
    VerComprobante: TAction;
    RpDetalle: TAction;
    RpMovCC: TAction;
    VerComprobante2: TAction;
    PopupMenu2: TPopupMenu;
    VerComprobante21: TMenuItem;
    lbMensaje: TLabel;
    BorrarUnaAplicacion: TAction;
    PopupMenu3: TPopupMenu;
    BorraAplicacion1: TMenuItem;
    ActualizaMovACta: TAction;
    N1: TMenuItem;
    ActualizaMovACtaImporte1: TMenuItem;
    AplicacioAutomatica: TAction;
    AplicacionGral: TAction;
    DSSAldoCtaCte: TDataSource;
    frDBDSEmpresa: TfrxDBDataset;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    frDBClientes: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesDIRECCION_PARTICULAR: TStringField;
    CDSMovCC: TClientDataSet;
    CDSMovCCCLIENTE: TStringField;
    CDSMovCCDETALLE: TStringField;
    CDSMovCCTIPOCPBTE: TStringField;
    CDSMovCCNROCPBTE: TStringField;
    CDSMovCCID_CPBTE: TIntegerField;
    CDSMovCCID_MOVCCVTA: TIntegerField;
    CDSMovCCCLASECPBTE: TStringField;
    CDSAplicaciones: TClientDataSet;
    CDSAplicacionesID_MOV: TIntegerField;
    CDSAplicacionesID_MOVCCVTA: TIntegerField;
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
    CDSACta: TClientDataSet;
    CDSACtaTIPOCPBTE: TStringField;
    CDSACtaDETALLE: TStringField;
    CDSACtaCLASECPBTE: TStringField;
    CDSACtaNUMEROCPBTE: TStringField;
    CDSACtaID_MOV: TIntegerField;
    CDSACtaCLIENTE: TStringField;
    CDSACtaID_CPBTE: TIntegerField;
    CDSAplicacionesIDMOVACTA: TIntegerField;
    ConciliarTodos: TAction;
    ConciliarUnMov: TAction;
    N2: TMenuItem;
    ConciliarUnMov1: TMenuItem;
    ConciliarTodoslosMov1: TMenuItem;
    ReArmarCtaCte: TAction;
    spRearnaCtaCte: TSpeedButton;
    CDSEmpresa: TClientDataSet;
    DSPEmpresa: TDataSetProvider;
    DesconciliarUno: TAction;
    DesconciliarTodos: TAction;
    N3: TMenuItem;
    ConciliarMov1: TMenuItem;
    DesconciliarTodos1: TMenuItem;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesTELEFONO_PARTICULAR: TStringField;
    CDSClientesTELEFONO_COMERCIAL_1: TStringField;
    CDSClientesTELEFONO_COMERCIAL_2: TStringField;
    CDSClientesTELEFONO_CELULAR: TStringField;
    CDSClientesID_COD_POSTAL: TIntegerField;
    CDSClientesCPOSTAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesOBSERVACIONES: TMemoField;
    CDSClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSClientesFECHAALTA: TSQLTimeStampField;
    CDSClientesSUCURSAL: TIntegerField;
    CDSClientesZONA: TIntegerField;
    CDSClientesVENDEDOR: TStringField;
    DSPCli: TDataSetProvider;
    CDSCli: TClientDataSet;
    CDSCliCODIGO: TStringField;
    CDSCliNOMBRE: TStringField;
    N4: TMenuItem;
    LimpiaraCero1: TMenuItem;
    DSPAplicaionGral: TDataSetProvider;
    CDSAplicacionGral: TClientDataSet;
    CDSAplicacionGralID_MOV: TIntegerField;
    CDSAplicacionGralID_MOVCCVTA: TIntegerField;
    CDSAplicacionGralFECHA: TSQLTimeStampField;
    CDSAplicacionGralCLIENTE: TStringField;
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
    BackUpAplicaciones: TAction;
    N5: TMenuItem;
    BackUpAplicaciones1: TMenuItem;
    spArmarAplicaciones: TSpeedButton;
    DSPFiltroCab: TDataSetProvider;
    CDSFiltroCab: TClientDataSet;
    CDSFiltroCabID: TIntegerField;
    CDSFiltroCabDETALLE: TStringField;
    DSFiltroCab: TDataSource;
    CDSACtaMUESTRATOTAL: TFMTBCDField;
    AplicacionGeneral: TAction;
    N6: TMenuItem;
    AplicacionGeneral1: TMenuItem;
    N7: TMenuItem;
    AplicacionGeneral2: TMenuItem;
    N8: TMenuItem;
    AplicacionGeneral3: TMenuItem;
    N9: TMenuItem;
    CorregirMovCtaCte: TAction;
    CorregirSaldoMovCtaCte1: TMenuItem;
    FiltrarTipoServicio: TAction;
    pcMovimientos: TPageControl;
    Pag1: TTabSheet;
    spAplicacionAuto: TSpeedButton;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    lbCliente: TJvLabel;
    lbTitulo: TJvLabel;
    RxLabel1: TJvLabel;
    spStop: TSpeedButton;
    edMuestraCliente: TEdit;
    chbSaldoCero: TCheckBox;
    pnAplicacionGral: TPanel;
    lbMensajeAutomatico: TLabel;
    spAplicacionGral: TSpeedButton;
    Label2: TLabel;
    pbAplicacionGral: TProgressBar;
    DBEdit1: TDBEdit;
    edCodigo: TJvComboEdit;
    ceSaldoACta: TJvValidateEdit;
    chFiltrar: TCheckBox;
    cbbTipo: TComboBox;
    chSumar: TCheckBox;
    dbcGrupo: TJvDBLookupCombo;
    chTipoVta: TCheckBox;
    CDSMovCCNRO_CUOTA: TIntegerField;
    chIngoraGrupo: TCheckBox;
    CDSACtaMUESTRAGRUPO: TIntegerField;
    CDSMovGeneral: TClientDataSet;
    DSPMovGeneral: TDataSetProvider;
    DSMovGeneral: TDataSource;
    CDSMovGeneralID_MOVCCVTA: TIntegerField;
    CDSMovGeneralID_CPBTE: TIntegerField;
    CDSMovGeneralFECHAVTA: TSQLTimeStampField;
    CDSMovGeneralFECHAVTO: TSQLTimeStampField;
    CDSMovGeneralTIPOCPBTE: TStringField;
    CDSMovGeneralCLASECPBTE: TStringField;
    CDSMovGeneralDETALLE: TStringField;
    CDSMovGeneralID_MOV: TIntegerField;
    CDSMovGeneralID_MOVCCVTA_1: TIntegerField;
    CDSMovGeneralFECHA: TSQLTimeStampField;
    CDSMovGeneralCLIENTE: TStringField;
    CDSMovGeneralID_CPBTE_1: TIntegerField;
    CDSMovGeneralTIPOCPBTE_1: TStringField;
    CDSMovGeneralCLASECPBTE_1: TStringField;
    CDSMovGeneralNUMEROCPBTE: TStringField;
    CDSMovGeneralAPLICA_ID_CPBTE: TIntegerField;
    CDSMovGeneralAPLICA_TIPOCPBTE: TStringField;
    CDSMovGeneralAPLICA_CLASECPBTE: TStringField;
    CDSMovGeneralAPLICA_NROCPBTE: TStringField;
    CDSMovGeneralDETALLE_1: TStringField;
    CDSMovGeneralCONCILIADO: TStringField;
    CDSMovCCMUESTRAGRUPO: TIntegerField;
    CDSMovCCMUESTRATIPOVTA: TStringField;
    QMovCC: TFDQuery;
    QMovCCID_MOVCCVTA: TIntegerField;
    QMovCCID_CPBTE: TIntegerField;
    QMovCCCLIENTE: TStringField;
    QMovCCTIPOCPBTE: TStringField;
    QMovCCCLASECPBTE: TStringField;
    QMovCCNROCPBTE: TStringField;
    QMovCCDEBE: TFloatField;
    QMovCCHABER: TFloatField;
    QMovCCSALDO: TFloatField;
    QMovCCDETALLE: TStringField;
    QMovCCNRO_CUOTA: TIntegerField;
    QMovCCID_MONEDA: TIntegerField;
    QMovCCCOTIZACION: TFloatField;
    QMovCCMUESTRAGRUPO: TIntegerField;
    QMovCCMUESTRATOTAL: TFloatField;
    QMovCCMUESTRATIPOVTA: TStringField;
    CDSMovCCDEBE: TFloatField;
    CDSMovCCHABER: TFloatField;
    CDSMovCCSALDO: TFloatField;
    CDSMovCCMUESTRATOTAL: TFloatField;
    QAplicaciones: TFDQuery;
    QAplicacionesID_MOV: TIntegerField;
    QAplicacionesID_MOVCCVTA: TIntegerField;
    QAplicacionesCLIENTE: TStringField;
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
    QAplicacionesCONCILIADO: TStringField;
    CDSAplicacionesIMPORTE: TFloatField;
    QACta: TFDQuery;
    CDSACtaIMPORTE: TFloatField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    QBorraUnAplicacion: TFDQuery;
    QImporteFC: TFDQuery;
    QImporteAjustes: TFDQuery;
    QImporteAjustesHABER: TFloatField;
    QImporteAjustesDEBE: TFloatField;
    QFiltroC: TFDQuery;
    QSaldoCtaCte: TFDQuery;
    QSaldoCtaCteSALDO: TFloatField;
    QImporteRC: TFDQuery;
    QImporteRCTOTAL: TFloatField;
    QMarcarTodoConciliado: TFDQuery;
    QConciliarUno: TFDQuery;
    QMovGeneral: TFDQuery;
    CDSMovGeneralDEBE: TFloatField;
    CDSMovGeneralHABER: TFloatField;
    CDSMovGeneralSALDO: TFloatField;
    CDSMovGeneralIMPORTE: TFloatField;
    QCli: TFDQuery;
    QAPlicacionGral: TFDQuery;
    CDSAplicacionGralIMPORTE: TFloatField;
    spReAsignaSaldosFD: TFDStoredProc;
    QBorraAplicaciones: TFDQuery;
    QDesconciliarTodos: TFDQuery;
    QDesconciliarUnoFD: TFDQuery;
    QInactivaTriggerBorradoApliciones: TFDQuery;
    QActivaTriggerBorradoApliciones: TFDQuery;
    AutoContraer: TMenuItem;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2FECHA: TcxGridDBColumn;
    cxGrid1DBTableView2TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2NUMEROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView2ID_MOVCCVTA: TcxGridDBColumn;
    cxGrid1DBTableView2CLIENTE: TcxGridDBColumn;
    cxGrid1DBTableView2ID_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2APLICA_ID_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2ID_MOV: TcxGridDBColumn;
    cxGrid1DBTableView2APLICA_TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2APLICA_CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2APLICA_NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView2CONCILIADO: TcxGridDBColumn;
    cxGrid1DBTableView2IDMOVACTA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    dbgACta: TJvDBGrid;
    QActualizaMovActaRecFD: TFDQuery;
    QActualizaMovACtaNcFD: TFDQuery;
    SaveDialog1: TSaveDialog;
    cxGrid1DBTableView1FECHAVTA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAVTO: TcxGridDBColumn;
    cxGrid1DBTableView1NRO_CUOTA: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    cxGrid1DBTableView1ID_MOVCCVTA: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRAGRUPO: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRATIPOVTA: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRATOTAL: TcxGridDBColumn;
    QActualizaMovActaAj: TFDQuery;
    QMaxMin: TFDQuery;
    QMaxMinMIN: TIntegerField;
    QMaxMinMAX: TIntegerField;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    QMovCCFECHAVTA: TSQLTimeStampField;
    QMovCCFECHAVTO: TSQLTimeStampField;
    CDSMovCCFECHAVTA: TSQLTimeStampField;
    CDSMovCCFECHAVTO: TSQLTimeStampField;
    QAplicacionesFECHA: TSQLTimeStampField;
    CDSAplicacionesFECHA: TSQLTimeStampField;
    CDSACtaFECHA: TSQLTimeStampField;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    QMovCCNROREMITOS: TStringField;
    CDSMovCCNROREMITOS: TStringField;
    DBText3: TDBText;
    JvLabel1: TJvLabel;
    pag2: TTabSheet;
    QFacDet: TFDQuery;
    DSPFacDet: TDataSetProvider;
    CDSFacDet: TClientDataSet;
    DSFacDet: TDataSource;
    QNcDet: TFDQuery;
    DSPNcDet: TDataSetProvider;
    CDSNcDet: TClientDataSet;
    DSNcDet: TDataSource;
    CDSFacDetID: TIntegerField;
    CDSFacDetID_CABFAC: TIntegerField;
    CDSFacDetTIPOCPBTE: TStringField;
    CDSFacDetCLASECPBTE: TStringField;
    CDSFacDetNROCPBTE: TStringField;
    CDSFacDetCODIGOARTICULO: TStringField;
    CDSFacDetDETALLE: TStringField;
    CDSFacDetCANTIDAD: TFloatField;
    CDSFacDetUNITARIO_TOTAL: TFloatField;
    cxGridFCDBTableView1: TcxGridDBTableView;
    cxGridFCLevel1: TcxGridLevel;
    cxGridFC: TcxGrid;
    cxGridNCDBTableView1: TcxGridDBTableView;
    cxGridNCLevel1: TcxGridLevel;
    cxGridNC: TcxGrid;
    CDSNcDetID: TIntegerField;
    CDSNcDetID_CABFAC: TIntegerField;
    CDSNcDetTIPOCPBTE: TStringField;
    CDSNcDetCLASECPBTE: TStringField;
    CDSNcDetNROCPBTE: TStringField;
    CDSNcDetCODIGOARTICULO: TStringField;
    CDSNcDetDETALLE: TStringField;
    CDSNcDetCANTIDAD: TFloatField;
    CDSNcDetUNITARIO_TOTAL: TFloatField;
    CDSNcDetANULADO: TStringField;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    CDSNcDetFECHAVTA: TSQLTimeStampField;
    CDSFacDetFECHAVTA: TSQLTimeStampField;
    cxGridFCDBTableView1CABECERA: TcxGridDBColumn;
    cxGridFCDBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGridFCDBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGridFCDBTableView1NROCPBTE: TcxGridDBColumn;
    cxGridFCDBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGridFCDBTableView1DETALLE: TcxGridDBColumn;
    cxGridFCDBTableView1CANTIDAD: TcxGridDBColumn;
    cxGridFCDBTableView1UNITARIO_TOTAL: TcxGridDBColumn;
    cxGridFCDBTableView1CONCATENATION: TcxGridDBColumn;
    cxGridNCDBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGridNCDBTableView1DETALLE: TcxGridDBColumn;
    cxGridNCDBTableView1CANTIDAD: TcxGridDBColumn;
    cxGridNCDBTableView1UNITARIO_TOTAL: TcxGridDBColumn;
    CDSFacDetCABECERA: TStringField;
    CDSNcDetCABECERA: TStringField;
    cxGridNCDBTableView1CABECERA: TcxGridDBColumn;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    NoRefrescarActivar: TMenuItem;
    CDSClientesSALDOINICIAL: TFloatField;
    CDSACtaASOCIADO_ID_CPBTE: TIntegerField;
    CDSACtaASOCIADO_TIPO: TIntegerField;
    CDSACtaASOCIADO_PTOVTA: TIntegerField;
    CDSACtaASOCIADO_NRO: TFloatField;
    CDSACtaMUESTRATIPOASOCIADO: TStringField;
    CDSACtaMUESTRANROASOCIADO: TStringField;
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
    procedure BuscarClienteExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure ExportarExecute(Sender: TObject);
    procedure VerCCteExecute(Sender: TObject);
    procedure ImprimirDetalleExecute(Sender: TObject);
    procedure VerComprobanteExecute(Sender: TObject);
//    procedure wwDBGMovCCDragDrop(Sender, Source: TObject; X, Y: Integer);
//    procedure wwDBGMovCCDragOver(Sender, Source: TObject; X, Y: Integer;
//      State: TDragState; var Accept: Boolean);
    procedure edCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CDSAplicacionesAfterPost(DataSet: TDataSet);
    procedure CDSAplicacionesBeforeCancel(DataSet: TDataSet);
    procedure CDSAplicacionesBeforeDelete(DataSet: TDataSet);
    procedure CDSAplicacionesBeforeEdit(DataSet: TDataSet);
    procedure DSBaseStateChange(Sender: TObject);
    procedure RpDetalleExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure VerComprobante2Execute(Sender: TObject);
    procedure pnPrincipalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BorrarUnaAplicacionExecute(Sender: TObject);
    procedure ActualizaMovACtaExecute(Sender: TObject);
    procedure AplicacioAutomaticaExecute(Sender: TObject);
    procedure AplicacionGralExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure pnAplicacionGralDblClick(Sender: TObject);
 //   procedure wwDBGAplicacionesColEnter(Sender: TObject);
    procedure CDSAplicacionesBeforePost(DataSet: TDataSet);
    procedure CDSMovCCCalcFields(DataSet: TDataSet);
    procedure CDSACtaCalcFields(DataSet: TDataSet);
//    procedure wwDBGAplicacionesDrawDataCell(Sender: TObject; const Rect: TRect;
//      Field: TField; State: TGridDrawState);
    procedure ConciliarTodosExecute(Sender: TObject);
    procedure ConciliarUnMovExecute(Sender: TObject);
    procedure ReArmarCtaCteExecute(Sender: TObject);
    procedure chbSaldoCeroClick(Sender: TObject);
    procedure CDSAplicacionesAfterScroll(DataSet: TDataSet);
    procedure dbgACtaEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure dbgACtaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DesconciliarUnoExecute(Sender: TObject);
    procedure DesconciliarTodosExecute(Sender: TObject);
    procedure CDSMovCCAfterScroll(DataSet: TDataSet);
    procedure spStopClick(Sender: TObject);
    procedure LimpiaraCero1Click(Sender: TObject);
//    procedure wwDBGMovCCKeyDown(Sender: TObject; var Key: Word;
//      Shift: TShiftState);
//    procedure wwDBGMovCCDrawDataCell(Sender: TObject; const Rect: TRect;
//      Field: TField; State: TGridDrawState);
    procedure chFiltrarClick(Sender: TObject);
    procedure BackUpAplicacionesExecute(Sender: TObject);
    procedure spArmarAplicacionesClick(Sender: TObject);
    procedure dbcGrupoClick(Sender: TObject);
    procedure CDSACtaAfterScroll(DataSet: TDataSet);
    procedure AplicacionGeneralExecute(Sender: TObject);
    procedure CorregirMovCtaCteExecute(Sender: TObject);
    procedure FiltrarTipoServicioExecute(Sender: TObject);
 //   procedure CDSMovCCAfterPost(DataSet: TDataSet);
//    procedure wwExpandButton1BeforeExpand(Sender: TObject);
    procedure cxGrid1DBTableView1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGrid1DBTableView1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGrid1DBTableView2DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure AutoContraerClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CDSAplicacionesReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure FormResize(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CDSFacDetFECHAVTAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CDSNcDetFECHAVTAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CDSFacDetCalcFields(DataSet: TDataSet);
    procedure CDSFacDetCABECERAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CDSNcDetCalcFields(DataSet: TDataSet);
    procedure CDSNcDetCABECERAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure NoRefrescarActivarClick(Sender: TObject);
  private
    { Private declarations }
    FMovAplicado:Boolean;
  public
    Stop:Boolean;
    SumaSaldoCC  : Extended;
    SumaSaldoACta: Extended;
    MascaraGral  :String;
    GrupoApl,GrupoMov:Integer;  // estos los uso para saber de que grupo es el recibo y luego
                                // lo comparo con el de spMovCtaCte_Grupo

    PROCEDURE TraeCC(Dato: STRING);
    PROCEDURE SumarSaldos;
   published
     property MovAplicado:boolean read FMovAplicado write FMovAplicado;
    { Public declarations }
  end;

var
  FormAplicacionesCCVta_2: TFormAplicacionesCCVta_2;


implementation

USES Librerias, UAjustesCCClientes_2, UBuscadorClientes, UAnulacionRecibos,
     URecibo_2, DMStoreProcedureForm, UFactura_2,UReImportacionAplicacionesVta,
     UDMain_FD;
{$R *.DFM}

PROCEDURE TFormAplicacionesCCVta_2.TraeCC(dato: STRING);
var First_ID,Last_ID:Integer;
BEGIN
  Screen.Cursor     := crHourGlass;
  CDSMovCC.Filtered := False;
  CDSACta.Filtered  := False;
  Dato              := Copy(Trim(Dato),1,6);
  CDSMovCC.Close;
  CDSMovCC.Params.ParamByName('Codigo').Clear;
  CDSMovCC.Open;

  CDSAplicaciones.Close;
  CDSAplicaciones.Params.ParamByName('Id_Desde').Clear;
  CDSAplicaciones.Params.ParamByName('Id_Hasta').Clear;
  CDSAplicaciones.Open;

  CDSACta.Close;
  CDSACta.Params.ParamByName('Codigo').Clear;
  CDSACta.Open;

  CDSClientes.Close;
  CDSClientes.Params.ParamByName('Codigo').Value := Dato;
  CDSClientes.Open;
  IF NOT (CDSClientes.IsEmpty) THEN
    BEGIN
      edMuestraCliente.Text := CDSClientesNOMBRE.Value;
      CDSMovCC.Close;
      QMaxMin.Close;

      IF chbSaldoCero.Checked = True THEN
        CDSMovCC.CommandText :=
        'select m.*, ( select g.MuestraGrupo from mov_ctacte_vta_grupo ( m.id_movccvta ) g ) as MuestraGrupo, '+
                    '( select g.MuestraTotal from mov_ctacte_vta_grupo ( m.id_movccvta ) g ) as MuestraTotal , '+
                    '( select g.MuestraTipoVta from mov_ctacte_vta_grupo ( m.id_movccvta ) g ) As MuestraTipoVta,'+
                    '( select fc.nrorto from fcvtacab fc where fc.id_fc=m.id_cpbte and fc.tipocpbte=m.tipocpbte) as NroRemitos '+
        'from MovCCVta m where '+
        ' ( m.cliente=:codigo) and '+
        ' ((m.tipoCpbte=''FC'') or (m.TipoCpbte=''ND'') or (m.TipoCpbte=''AJ'') or (m.TipoCpbte=''XR'')) and (m.haber=0 ) '+
        ' order by m.ID_MOVCCVTA'
      ELSE
        CDSMovCC.CommandText :=
        'select m.*, ( select g.MuestraGrupo from mov_ctacte_vta_grupo ( m.id_movccvta ) g ) as MuestraGrupo, '+
                    '( select g.MuestraTotal from mov_ctacte_vta_grupo ( m.id_movccvta ) g ) as MuestraTotal , '+
                    '( select g.MuestraTipoVta from mov_ctacte_vta_grupo ( m.id_movccvta ) g ) As MuestraTipoVta, '+
                    '( select fc.nrorto from fcvtacab fc where fc.id_fc=m.id_cpbte and fc.tipocpbte=m.tipocpbte) as NroRemitos '+

        'from MovCCVta m where '+
        ' ( m.cliente=:codigo) and '+
        ' ((m.tipoCpbte=''FC'') or (m.TipoCpbte=''ND'') or (m.TipoCpbte=''AJ'') or (m.TipoCpbte=''XR'')) and (m.haber=0 ) '+
        ' and (m.Saldo>0) '+
        ' order by m.ID_MOVCCVTA';

      CDSMovCC.Params.ParamByName('Codigo').Value := Dato;
      CDSMovCC.Open;

      IF chbSaldoCero.Checked THEN
        QMaxMin.ParamByName('saldo').Value:=-1
      else
       QMaxMin.ParamByName('saldo').Value:=0;
      QMaxMin.ParamByName('codigo').Value:=Dato;
      QMaxMin.Open;

{      IF chbSaldoCero.Checked = True THEN
        CDSMovCC.CommandText :=
          'select m.* from MovCCVta m '+
          'where (m.cliente=:codigo) and ((m.tipoCpbte=''XR'') or (m.tipoCpbte=''FC'') or (m.TipoCpbte=''ND'') or (m.TipoCpbte=''AJ'')) ' +
          'and (m.haber=0) order by m.FechaVta,m.NroCpbte'
      ELSE
        CDSMovCC.CommandText :=
          'select m.* from MovCCVta m ' +
          'where (m.cliente=:codigo) and ((m.tipoCpbte=''XR'') or (m.tipoCpbte=''FC'') or (m.TipoCpbte=''ND'') or (m.TipoCpbte=''AJ''))' +
          'and (m.Saldo<>0)  order by m.FechaVta,m.NroCpbte';
 }

      First_ID:=QMaxMinMIN.Value;
      Last_ID :=QMaxMinMAX.Value;
      QMaxMin.Close;

      CDSMovCC.IndexFieldNames:='FechaVta;ID_MovCCVta;NroCpbte';
      CDSAplicaciones.Close;
      CDSAplicaciones.Params.ParamByName('CODIGO').Value   := Dato;
      CDSAplicaciones.Params.ParamByName('Id_Desde').Value := First_ID;
      CDSAplicaciones.Params.ParamByName('Id_Hasta').Value := Last_ID;
      CDSAplicaciones.Open;

      CDSACta.Close;
      CDSACta.Params.ParamByName('Codigo').Value := Dato;
      CDSACta.Open;

      CDSACta.Filter:=' TIPOCPBTE = '''+cbbTipo.Text+''' ';
      CDSACta.Filtered:=chFiltrar.Checked ;

      SumarSaldos;
      QSaldoCtaCte.Close;
      QSaldoCtaCte.ParamByName('Codigo').Value:=Dato;
      QSaldoCtaCte.Open;
      if (edCodigo.Visible) and (FormAplicacionesCCVta_2.Visible=True) and (pcMovimientos.ActivePageIndex=0) then
        begin
          edCodigo.SetFocus;
          edCodigo.SelectAll;
        end;
    END;
  dbcGrupo.KeyValue:=-1;
  dbgACta.Width    :=dbgACta.Width+1;
  dbgACta.Width    :=dbgACta.Width-1;
  Screen.Cursor    :=crDefault;

//  CDSMovGeneral.Close;
//  CDSMovGeneral.Params.ParamByName('codigo').Value := Dato;
//  CDSMovGeneral.Open;


END;

PROCEDURE TFormAplicacionesCCVta_2.SumarSaldos;
VAR Puntero1, Puntero2: TBookmark;
  CDSCloneMov,CDSCloneActa:TClientDataSet;
  AIndex: integer;
  AValue: variant;

BEGIN
  SumaSaldoCC   := 0;
  SumaSaldoACta := 0;

//  CDSCloneMov :=TClientDataSet.Create(Self);
  CDSCloneActa:=TClientDataSet.Create(Self);

//  CDSCloneMov.CloneCursor(CDSMovCC,True);
  CDSCloneActa.CloneCursor(CDSACta,True);

  with cxGrid1DBTableView1.DataController.Summary do
    begin
      AIndex :=  FooterSummaryItems.IndexOfItemLink(cxGrid1DBTableView1SALDO);
      AValue :=  FooterSummaryValues[AIndex]
    end;
  if Not(VarIsNull(AValue)) then
    sumaSaldoCC := AValue;

//  CDSMovCC.DisableControls;
//  CDSACta.DisableControls;
//  Puntero2 := CDSACta.GetBookmark;
//  Puntero1 := CDSMovCC.GetBookmark;

 // CDSCloneMov.First;
  CDSCloneActa.First;

//  WHILE NOT (CDSCloneMov.Eof) DO
//    BEGIN
//      SumaSaldoCC   := SumaSaldoCC + CDSCloneMov.FieldByName('SALDO').AsFloat;
//      CDSCloneMov.Next;
//    END;

  WHILE NOT (CDSCloneActa.Eof) DO
    BEGIN
      SumaSaldoACta := SumaSaldoACta + CDSCloneActa.FieldByName('IMPORTE').AsFloat;
      CDSCloneActa.Next;
    END;
  //CDSACta.GotoBookmark(Puntero2);
  //CDSACta.FreeBookmark(Puntero2);
  //CDSMovCC.GotoBookmark(Puntero1);
  //CDSMovCC.FreeBookmark(Puntero1);
  //CDSACta.EnableControls;
  //CDSMovCC.EnableControls;
  ceSaldoACta.Value   := SumaSaldoACta;
 // ceSAldoCtaCte.Value := SumaSAldoCC;
 // FreeAndNil(CDSCloneMov);
  FreeAndNil(CDSCloneActa);
END;

procedure TFormAplicacionesCCVta_2.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
    FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      edCodigo.Text := FormBuscadorClientes.Codigo;
      TraeCC(edCodigo.Text);
    END;

end;

procedure TFormAplicacionesCCVta_2.ConciliarTodosExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    QMarcarTodoConciliado.Close;
    QMarcarTodoConciliado.ParamByName('codigo').Value:=edCodigo.Text;
    QMarcarTodoConciliado.ExecSQL;
    QMarcarTodoConciliado.Close;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo conciliar los mov...');
  end;
  TraeCC(edCodigo.Text);
end;

procedure TFormAplicacionesCCVta_2.ConciliarUnMovExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    QConciliarUno.Close;
    QConciliarUno.ParamByName('id_mov').Value:=CDSAplicacionesID_MOV.Value;
    QConciliarUno.ExecSQL;
    DMMain_FD.fdcGestion.Commit;
    QConciliarUno.Close;
  Except
    QConciliarUno.Close;
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo realizar la operación de conciliación....');
  end;
  TraeCC(edCodigo.Text);
  QConciliarUno.Close;
end;

procedure TFormAplicacionesCCVta_2.ConfirmaExecute(Sender: TObject);
begin
  inherited;
   if FormAplicacionesCCVta_2.Visible=true then
     begin
      if (pnPrincipal.Enabled) and (pcMovimientos.ActivePageIndex=0) Then
        begin
          edCodigo.SetFocus;
          edCodigo.SelectAll;
        end;
      Borrar.Enabled:=True;
     end;
  VerCCte.Execute;
end;

procedure TFormAplicacionesCCVta_2.CorregirMovCtaCteExecute(Sender: TObject);
begin
  inherited;
  begin
    CDSMovCC.Edit;
    if CDSMovCCTIPOCPBTE.Value<>'NC' then
      CDSMovCCSALDO.AsFloat:=CDSMovCCDEBE.AsFloat;
    CDSMovCC.Post;
    CDSMovCC.ApplyUpdates(0);
  end;

end;

procedure TFormAplicacionesCCVta_2.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  colSaldo,colDebe: integer;
  Valor   : Extended;
begin
  inherited;
 // Para Dibujar renglon en cxGrid
  colSaldo := cxGrid1DBTableView1SALDO.Index;
  colDebe  := cxGrid1DBTableView1DEBE.Index;
  if AViewInfo.Selected then
    begin
       ACanvas.Font.Color  := clWhite;
       ACanvas.Brush.Color := clBlue;
     end
  else
    begin
      if (RoundTo(AviewInfo.GridRecord.Values[colSaldo],-2))<>(RoundTo(AviewInfo.GridRecord.Values[colDebe],-2)) then
        ACanvas.Font.Color:=clMaroon;
      if (IsZero(AviewInfo.GridRecord.Values[colSaldo])) then
        ACanvas.Font.Color:=clGreen;
      if CDSMovCCMUESTRATIPOVTA.Value='S' then
        ACanvas.Font.Color:=clBlue;
    end;

 end;

procedure TFormAplicacionesCCVta_2.cxGrid1DBTableView1DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
  inherited;
  if AutoContraer.Checked then
    ADataController.CollapseDetails;
end;

procedure TFormAplicacionesCCVta_2.cxGrid1DBTableView1DragDrop(Sender,Source: TObject; X, Y: Integer);
var
 aGridView, aRealGridView: TcxCustomGridView;
begin
  inherited;
  FMovAplicado := False;
  GrupoApl     := -1;
  GrupoMov     := -1;
  // aca se verifica el grupo del movimiento si existen filtros.
  if (DMMain_FD.HayFiltros=True) and (chIngoraGrupo.Checked=False) then
    begin
      GrupoMov := CDSMovCCMUESTRAGRUPO.Value;
      GrupoApl := CDSACtaMUESTRAGRUPO.Value;
    end;
  //**************************************************************
  if (GrupoApl=GrupoMov) then
    if (Trunc((Source as TJvDBGrid).DataSource.DataSet.FieldByName('IMPORTE').AsFloat * 1000)> 0) Then
      IF (Trunc(CDSMovCCSALDO.AsFloat * 1000)) > 0 THEN
        BEGIN
          CDSAplicaciones.Append;
          CDSAplicacionesID_MOV.Value            := IBGId_AplicacionCCVta.IncrementFD(1);
          CDSAplicacionesID_MOVCCVTA.Value       := CDSMovCCID_MOVCCVTA.Value;
          CDSAplicacionesAPLICA_ID_CPBTE.Value   := CDSMovCCID_CPBTE.Value;
          CDSAplicacionesAPLICA_TIPOCPBTE.Value  := CDSMovCCTIPOCPBTE.Value;
          CDSAplicacionesAPLICA_NROCPBTE.Value   := CDSMovCCNROCPBTE.Value;
          CDSAplicacionesAPLICA_CLASECPBTE.Value := CDSMovCCCLASECPBTE.Value;
          CDSAplicacionesDETALLE.Value           := CDSMovCCDETALLE.Value;
          CDSAplicacionesCONCILIADO.Value        := 'N';
          WITH (Source AS TJvDBGrid).DataSource.DataSet DO
            BEGIN
              CDSAplicacionesIDMOVACTA.Value   := CDSACtaID_MOV.Value;
              CDSAplicacionesFECHA.AsDateTime  := FieldByName('Fecha').AsDateTime;
              CDSAplicacionesCLIENTE.Value     := FieldByName('Cliente').Value;
              CDSAplicacionesID_CPBTE.Value    := FieldByName('Id_Cpbte').Value;
              CDSAplicacionesTIPOCPBTE.Value   := FieldByName('TipoCpbte').Value;
              CDSAplicacionesNUMEROCPBTE.Value := FieldByName('NumeroCpbte').Value;
              CDSAplicacionesCLASECPBTE.Value  := FieldByName('ClaseCpbte').Value;
             // IF Moneda3d(' ',MascaraGral,FieldByName('Importe').AsFloat) <= Moneda3d(' ',MascaraGral,CDSMovCCSALDO.AsFloat) THEN
              IF (RoundTo(FieldByName('Importe').AsFloat,-2)) <= (RoundTo(CDSMovCCSALDO.AsFloat,-2)) THEN
                CDSAplicacionesIMPORTE.AsFloat := RoundTo(FieldByName('Importe').AsFloat,-2)
              ELSE
                CDSAplicacionesIMPORTE.AsFloat := CDSMovCCSALDO.AsFloat;
              FMovAplicado:=True;
            END;
          CDSAplicaciones.Post;

        END
      ELSE
        begin
          if (TForm(Self.Owner).Name<>'FormRecibo_2') then
            ShowMessage('Comprobante con saldo 0(cero), no se pude aplicar pagos');
          if (TForm(Self.Owner).Name='FormRecibo_2') then
            Close;
        end
    else
      begin
        if (TForm(Self.Owner).Name<>'FormRecibo_2') then
          ShowMessage('No Hay saldo para aplicar... !!!');
        if (TForm(Self.Owner).Name='FormRecibo_2') then
          Close;
      end
  else
    begin
      if (TForm(Self.Owner).Name<>'FormRecibo_2') then
        ShowMessage('Los Movimientos No pertenecen al mismo grupo que está en el filtro... '+#13+
                    'Verifique el filtro o el movimento... !!!');
      if (TForm(Self.Owner).Name='FormRecibo_2') then
        Close;
    end;
 end;

procedure TFormAplicacionesCCVta_2.cxGrid1DBTableView1DragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
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


procedure TFormAplicacionesCCVta_2.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key=VK_F2) then
    begin
      if (CDSMovCCSALDO.AsFloat >= -0.02 ) and (CDSMovCCSALDO.AsFloat<= 0.02) then
        begin
          CDSMovCC.Edit;
          CDSMovCCSALDO.AsFloat:=0;
          CDSMovCC.Post;
        end;
    end;
end;

procedure TFormAplicacionesCCVta_2.cxGrid1DBTableView2DblClick(Sender: TObject);
begin
  inherited;
  if (CDSAplicacionesTIPOCPBTE.Value='NC') Then
    begin
      IF NOT (Assigned(FormCpbte_2)) THEN
        FormCpbte_2    := TFormCpbte_2.Create(self);
      FormCpbte_2.DatoNew   := CDSAplicacionesID_CPBTE.AsString;
      FormCpbte_2.TipoCpbte := CDSAplicacionesTIPOCPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (CDSAplicacionesTIPOCPBTE.AsString='RC') Then
      begin
       IF NOT (Assigned(FormRecibo_2)) THEN
          FormRecibo_2:= TFormRecibo_2.Create(self);
        FormRecibo_2.DatoNew    := CDSAplicacionesID_CPBTE.AsString;
        FormRecibo_2.TipoCpbte  := CDSAplicacionesTIPOCPBTE.AsString;
        FormRecibo_2.Recuperar.Execute;
        FormRecibo_2.Show;
      end
    else
      if (CDSAplicacionesTIPOCPBTE.AsString='AJ') Then
        begin
          IF NOT (Assigned(FormAjustesCCVenta_2)) THEN
            FormAjustesCCVenta_2:= TFormAjustesCCVenta_2.Create(Application);
          FormAjustesCCVenta_2.DatoNew  := CDSAplicacionesID_CPBTE.AsString;
          FormAjustesCCVenta_2.TipoCpbte:= CDSAplicacionesTIPOCPBTE.AsString;
          FormAjustesCCVenta_2.Recuperar.Execute;
          FormAjustesCCVenta_2.Show;
        end;
end;

procedure TFormAplicacionesCCVta_2.CancelarExecute(Sender: TObject);
begin
  inherited;
  if pnPrincipal.Enabled Then
    begin
      edCodigo.SetFocus;
      edCodigo.SelectAll;
    end;
end;

procedure TFormAplicacionesCCVta_2.ImprimirExecute(Sender: TObject);
BEGIN
  CDSEmpresa.Close;
  CDSEmpresa.Open;
  frDBAplicaciones.DataSet := CDSAplicaciones;
  frDBMovCC.DataSet        := CDSMovCC;
  frMovCC.PrintOptions.Printer:=PrNomListados;
  frMovCC.SelectPrinter;
  frMovCC.LoadFromFile(DMMain_FD.PathReportesLst+'\LstPendientes.fr3');
  frMovCC.ShowReport;
END;

procedure TFormAplicacionesCCVta_2.LimpiaraCero1Click(Sender: TObject);
begin
  inherited;
  if (CDSMovCCSALDO.AsFloat >= -0.02 ) and (CDSMovCCSALDO.AsFloat<= 0.02) then
    begin
      CDSMovCC.Edit;
      CDSMovCCSALDO.AsFloat:=0;
      CDSMovCC.Post;
    end;
end;

procedure TFormAplicacionesCCVta_2.dbcGrupoClick(Sender: TObject);
begin
  inherited;
  CDSMovCC.Filter:='muestragrupo = '+''+dbcGrupo.KeyValue+'';
  CDSACta.Filter :='muestragrupo = '+''+dbcGrupo.KeyValue+'';
  CDSMovCC.Filtered:= dbcGrupo.KeyValue>-1;
  CDSACta.Filtered := dbcGrupo.KeyValue>-1;
  SumarSaldos;
end;

procedure TFormAplicacionesCCVta_2.dbgACtaEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  inherited;
  IF (CDSMovCC.Active) and (CDSMovCC.State <> dsBrowse) THEN CDSMovCC.Post;
end;

procedure TFormAplicacionesCCVta_2.dbgACtaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  lbMensaje.Caption:='Con Boton Izquierdo presionado del Mouse y arrastras sobre los comprobantes';
end;

procedure TFormAplicacionesCCVta_2.ExportarExecute(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.DataController.OnDetailExpanding:=Nil; //<<<<<<<<  para expandir cxGrid

  cxGrid1DBTableView1.ViewData.Expand(True); //<<<<<<<<  para expandir cxGrid

  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  SaveDialog1.FileName:='Movimientos_'+Trim(edMuestraCliente.text);
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

procedure TFormAplicacionesCCVta_2.VerCCteExecute(Sender: TObject);
begin
  inherited;
  TraeCC(Trim(edCodigo.Text));
end;

procedure TFormAplicacionesCCVta_2.ImprimirDetalleExecute(Sender: TObject);
var CDSMovCC_Clone,CDSAplic_Clone:TClientDataSet;
DSClone:TDataSource;
op:Boolean;
BEGIN
  op:=True;
  CDSMovCC_Clone:=TClientDataSet.Create(self);
  CDSAplic_Clone:=TClientDataSet.Create(self);
  CDSMovCC_Clone.CloneCursor(CDSMovCC,True);
  CDSAplic_Clone.CloneCursor(CDSAplicaciones,True);
  DSClone:=TDataSource.Create(self);
  DSClone.DataSet:=CDSMovCC_Clone;

  CDSAplic_Clone.MasterSource    := DSClone;
  CDSAplic_Clone.MasterFields    := 'ID_MOVCCVTA';
  CDSAplic_Clone.IndexFieldNames := 'ID_MOVCCVTA';

  frDBMovCC.DataSet       := CDSMovCC_Clone;
  frDBAplicaciones.DataSet:= CDSAplic_Clone;

  CDSEmpresa.Close;
  CDSEmpresa.Open;

  if not(op) then
    begin
      cxGrid1DBTableView1.DataController.OnDetailExpanding:=nil;
      cxGrid1DBTableView1.ViewData.Expand(True); // Expandir cxGrid
      dxComponentPrinter1Link1.Preview(True);

      cxGrid1DBTableView1.DataController.OnDetailExpanding:=cxGrid1DBTableView1DataControllerDetailExpanding;
      cxGrid1DBTableView1.ViewData.Collapse(True); // Expandir cxGrid
    end
  else
    begin
      frMovCC.PrintOptions.Printer:=PrNomListados;
      frMovCC.SelectPrinter;

      frMovCC.LoadFromFile(DMMain_FD.PathReportesLst+ '\DetalleMovAplicadosCCVta.fr3');
      frMovCC.ShowReport;
    end;

  FreeAndNil(CDSMovCC_Clone);
  FreeAndNil(CDSAplic_Clone);
  FreeAndNil(DSClone);
END;

procedure TFormAplicacionesCCVta_2.VerComprobanteExecute(Sender: TObject);
begin
  inherited;
  if (CDSMovCCTIPOCPBTE.AsString='FC') or
     (CDSMovCCTIPOCPBTE.AsString='NC') or
     (CDSMovCCTIPOCPBTE.AsString='ND') Then
    begin
      IF NOT (Assigned(FormCpbte_2)) THEN
        FormCpbte_2    := TFormCpbte_2.Create(Application);
      FormCpbte_2.DatoNew   := CDSMovCCID_CPBTE.AsString;
      FormCpbte_2.TipoCpbte := CDSMovCCTIPOCPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (CDSMovCCTIPOCPBTE.AsString='RC') Then
      begin
       IF NOT (Assigned(FormRecibo_2)) THEN
          FormRecibo_2:= TFormRecibo_2.Create(Application);
        FormRecibo_2.DatoNew    := CDSMovCCID_CPBTE.AsString;
        FormRecibo_2.TipoCpbte  := CDSMovCCTIPOCPBTE.AsString;
        FormRecibo_2.Recuperar.Execute;
        FormRecibo_2.Show;
      end
    else
      if (CDSMovCCTIPOCPBTE.AsString='AJ') Then
        begin
          IF NOT (Assigned(FormAjustesCCVenta_2)) THEN
            FormAjustesCCVenta_2:= TFormAjustesCCVenta_2.Create(Application);
          FormAjustesCCVenta_2.DatoNew  := CDSMovCCID_CPBTE.AsString;
          FormAjustesCCVenta_2.TipoCpbte:= CDSMovCCTIPOCPBTE.AsString;
          FormAjustesCCVenta_2.Recuperar.Execute;
          FormAjustesCCVenta_2.Show;
        end
      else
        if (CDSMovCCTIPOCPBTE.AsString='XR') Then
          begin
            IF NOT (Assigned(FormAnulacionRecibos)) THEN
              FormAnulacionRecibos:= TFormAnulacionRecibos.Create(Application);
            FormAnulacionRecibos.DatoNew  := CDSMovCCID_CPBTE.AsString;
            FormAnulacionRecibos.TipoCpbte:= CDSMovCCTIPOCPBTE.AsString;
            FormAnulacionRecibos.Recuperar.Execute;
            FormAnulacionRecibos.Show;
        end;

end;


procedure TFormAplicacionesCCVta_2.edCodigoKeyPress(Sender: TObject; var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(edCodigo.Text))) +
        edCodigo.Text;
      TraeCC(Dato);
      edCodigo.Text := Dato;
      if FormAplicacionesCCVta_2.Visible=True then
        edCodigo.SelectAll;
    END
END;

procedure TFormAplicacionesCCVta_2.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AutoSize := False;
//  AddClientDataSet(CDSMovCC, DSPMovCC);
  AddClientDataSet(CDSAplicaciones, DSPAplicaciones);
  AddClientDataSet(CDSACta, DSPACta);
  MascaraGral := ',0.00;-,0.00;-';

  TFloatField(CDSMovCCDEBE).EditFormat              := '0.00';
  TFloatField(CDSMovCCHABER).EditFormat             := '0.00';
  TFloatField(CDSMovCCSALDO).EditFormat             := '0.00';
  TFloatField(CDSAplicacionesIMPORTE).EditFormat    := '0.00';
  TFloatField(CDSACtaIMPORTE).EditFormat            := '0.00';

  TFloatField(CDSMovCCDEBE).DisplayFormat           := MascaraGral;
  TFloatField(CDSMovCCHABER).DisplayFormat          := MascaraGral;
  TFloatField(CDSMovCCSALDO).DisplayFormat          := MascaraGral;
  TFloatField(CDSAplicacionesIMPORTE).DisplayFormat := MascaraGral;
  TFloatField(CDSACtaIMPORTE).DisplayFormat         := MascaraGral;

  TFloatField(QSaldoCtaCteSALDO).DisplayFormat      := MascaraGral;

  CDSFiltroCab.Close;
  CDSFiltroCab.Open;

  pcMovimientos.ActivePageIndex:=0;

  lbMensajeAutomatico.Caption     := 'Sin Iniciar....';
  pnAplicacionGral.Visible        := DMMain_FD.UsuarioAdministrador;
  ReArmarCtaCte.Enabled           := DMMain_FD.UsuarioAdministrador;
  spArmarAplicaciones.Enabled     := DMMain_FD.UsuarioAdministrador;
  CorregirSaldoMovCtaCte1.Enabled := DMMain_FD.UsuarioAdministrador;

  Borrar.Enabled                  := DMMain_FD.UsuarioActivo='master';

end;

procedure TFormAplicacionesCCVta_2.FiltrarTipoServicioExecute(Sender: TObject);
begin
  inherited;
  CDSMovCC.Filtered:=False;
  if chTipoVta.Checked then
    begin
      CDSMovCC.Filter:='MUESTRATIPOVTA = ''S''';
      CDSMovCC.Filtered:=chTipoVta.Checked;
    end;
end;

procedure TFormAplicacionesCCVta_2.FormActivate(Sender: TObject);
begin
  inherited;
  if (Trim(edCodigo.Text))<>'' then
    if not(NoRefrescarActivar.Checked) then
      TraeCC(Trim(edCodigo.Text));
end;

procedure TFormAplicacionesCCVta_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  QSaldoCtaCte.Close;
  CDSClientes.Close;
  Action:=caFree;
end;

procedure TFormAplicacionesCCVta_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAplicacionesCCVta_2:=nil;
end;

procedure TFormAplicacionesCCVta_2.FormShow(Sender: TObject);
begin
  inherited;
  edCodigo.SetFocus;
  edCodigo.SelectAll;
  Borrar.Enabled              := DMMain_FD.BorrarAplCCVTA;
  BorrarUnaAplicacion.Enabled := DMMain_FD.BorrarAplCCVTA;

  Borrar.Visible              := DMMain_FD.BorrarAplCCVTA;
  BorrarUnaAplicacion.Visible := DMMain_FD.BorrarAplCCVTA;

  ReArmarCtaCte.Visible       := DMMain_FD.UsuarioAdministrador;
  ReArmarCtaCte.Enabled       := DMMain_FD.UsuarioAdministrador;

  pnAplicacionGral.Visible    := DMMain_FD.UsuarioAdministrador;

  pnAplicacionGral.Visible    := DMMain_FD.UsuarioActivo='master';
  ReArmarCtaCte.Enabled       := DMMain_FD.UsuarioActivo='master';
  spArmarAplicaciones.Enabled := DMMain_FD.UsuarioActivo='master';
  Borrar.Enabled              := DMMain_FD.UsuarioActivo='master';
  chIngoraGrupo.Enabled       := DMMain_FD.UsuarioActivo='master';
end;

procedure TFormAplicacionesCCVta_2.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
//  inherited;
  IF Key = #27 THEN
    Key := #0;
end;

procedure TFormAplicacionesCCVta_2.FormResize(Sender: TObject);
begin
  inherited;
  if (FormAplicacionesCCVta_2<>nil) Then
    if (FormAplicacionesCCVta_2.Width>1048) or (FormAplicacionesCCVta_2.Width<1048) then
      FormAplicacionesCCVta_2.Width:=1048;

end;

procedure TFormAplicacionesCCVta_2.CDSACtaAfterScroll(DataSet: TDataSet);
var Aux:string;
begin
  inherited;
  Aux:='';
  if (CDSACtaASOCIADO_ID_CPBTE.AsString<>'') and (CDSACtaASOCIADO_ID_CPBTE.Value>0) then
    Aux:= 'Aplicada a >>'+CDSACtaMUESTRATIPOASOCIADO.AsString+'-'+CDSACtaMUESTRANROASOCIADO.AsString+' -   ';
  sbEstado.Panels[2].Text:= Aux + FormatFloat(',0.00', CDSACtaMUESTRATOTAL.AsFloat);

end;

procedure TFormAplicacionesCCVta_2.CDSACtaCalcFields(DataSet: TDataSet);
begin
  inherited;
//  DMStoreProcedure.spMovACtaCCVta_Grupo.Close;
//  DMStoreProcedure.spMovACtaCCVta_Grupo.ParamByName('Id_Mov').Value:= CDSACtaID_MOV.Value;
//  DMStoreProcedure.spMovACtaCCVta_Grupo.ExecProc;
//  if DMStoreProcedure.spMovACtaCCVta_Grupo.ParamByName('id_grupo').AsString<>'' then
//    CDSACtaMUESTRAGRUPO.Value:=DMStoreProcedure.spMovACtaCCVta_Grupo.ParamByName('id_grupo').Value
//  else
//    CDSACtaMUESTRAGRUPO.Value:=-1;
//  DMStoreProcedure.spMovACtaCCVta_Grupo.Close;

  CDSACtaMUESTRAGRUPO.Value := DMStoreProcedure.CCVtaActa_Grupo(CDSACtaID_MOV.Value);

  if (CDSACtaTIPOCPBTE.Value='RC')  then
    begin
      QImporteRC.Close;
      QImporteRC.ParamByName('id').Value:=CDSACtaID_CPBTE.Value;
      QImporteRC.Open;
      if QImporteRC.Fields[0].AsString<>'' then
        CDSACtaMUESTRATOTAL.AsFloat:=QImporteRC.Fields[0].AsFloat;
      QImporteRC.Close;
    end
  else
    if (CDSACtaTIPOCPBTE.Value='AJ') then
      begin
        QImporteAjustes.Close;
        QImporteAjustes.ParamByName('id').Value:=CDSACtaID_CPBTE.Value;
        QImporteAjustes.Open;
        if QImporteAjustesHABER.AsString<>'' then
          CDSACtaMUESTRATOTAL.AsFloat:=QImporteAjustesHABER.AsFloat;
        QImporteAjustes.Close;
      end
    else
      if (CDSACtaTIPOCPBTE.Value='NC') then
        begin
          QImporteFC.Close;
          QImporteFC.ParamByName('id').Value:=CDSACtaID_CPBTE.Value;
          QImporteFC.Open;
          if QImporteFC.Fields[0].AsString<>'' then
            CDSACtaMUESTRATOTAL.AsFloat:=QImporteFC.Fields[0].AsFloat;
          QImporteFC.Close;
        end

end;

procedure TFormAplicacionesCCVta_2.CDSAplicacionesAfterPost(DataSet: TDataSet);
var i:Integer;
begin
  inherited;
//  i:=CDSAplicaciones.ApplyUpdates(0);

  CDSACta.Edit;
  CDSACtaIMPORTE.AsFloat := CDSACtaIMPORTE.AsFloat - CDSAplicacionesIMPORTE.AsFloat;
  IF RoundTo(CDSACtaIMPORTE.AsFloat,-2) <= 0 THEN
    CDSACtaIMPORTE.AsFloat := 0;
  IF RoundTo(CDSACtaIMPORTE.AsFloat,-2) <= 0.01 THEN
    CDSACtaIMPORTE.AsFloat := 0;
  CDSACta.Post;

  IF CDSMovCC.State = dsBrowse THEN
    CDSMovCC.Edit;
  CDSMovCCSALDO.AsFloat   := CDSMovCCSALDO.AsFloat - CDSAplicacionesIMPORTE.AsFloat;
  IF (TRUNC(CDSMovCCSALDO.AsFloat*100) <= 1) THEN
    CDSMovCCSALDO.AsFloat := 0;
  if chSumar.Checked then
    SumarSaldos;

  if FormAplicacionesCCVta_2.Visible then
    pcMovimientos.ActivePageIndex:=0;

end;

procedure TFormAplicacionesCCVta_2.CDSAplicacionesAfterScroll( DataSet: TDataSet);
begin
  inherited;
  ConciliarUnMov.Enabled        := CDSAplicacionesCONCILIADO.Value='N';
  BorrarUnaAplicacion.Enabled   := CDSAplicacionesCONCILIADO.Value='N';
end;

procedure TFormAplicacionesCCVta_2.CDSAplicacionesBeforeCancel(
  DataSet: TDataSet);
begin
  inherited;
  IF CDSMovCC.State = dsBrowse THEN
    CDSMovCC.Edit;
  IF CDSACta.State = dsBrowse THEN
    CDSACta.Edit;
  CDSACtaIMPORTE.AsFloat := CDSACtaIMPORTE.AsFloat + CDSAplicacionesIMPORTE.AsFloat;
  CDSMovCCSALDO.AsFloat  := CDSMovCCSALDO.AsFloat - CDSAplicacionesIMPORTE.AsFloat;
  CDSACta.Post;

end;

procedure TFormAplicacionesCCVta_2.CDSAplicacionesBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  // revisar con lo viejo.......(01/01/2010)
  IF CDSACta.Locate('Id_Mov', CDSAplicacionesIDMOVACTA.value, []) THEN
    BEGIN
      IF CDSACta.state = dsBrowse THEN
        CDSACta.Edit;
      CDSACtaIMPORTE.AsFloat := CDSACtaIMPORTE.AsFloat + CDSAplicacionesIMPORTE.AsFloat;
      CDSACta.Post;
      IF CDSMovCC.state = dsBrowse THEN
        CDSMovCC.Edit;
      CDSMovCCSALDO.AsFloat := CDSMovCCSALDO.AsFloat + CDSAplicacionesIMPORTE.AsFloat;
      IF CDSMovCCSALDO.AsFloat > CDSMovCCDEBE.AsFloat THEN
        CDSMovCCSALDO.AsFloat := CDSMovCCDEBE.AsFloat;
      CDSMovCC.Post;
      SumarSaldos;
    END
  ELSE
    BEGIN
      ShowMessage('Operación no permitida, por que se trata de una asignación,'
        + #13 +
        'anterior a la actual..... Solo se permite a las operaciones' + #13 +
        'que se realizan en la actual transacción' + #13 +
        'Para el borrado hagalo desde los Recibos');
      SysUtils.Abort;
    END;

end;

procedure TFormAplicacionesCCVta_2.CDSAplicacionesBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  IF CDSACta.Locate('Id_Mov', CDSAplicacionesIDMOVACTA.value, []) THEN
    BEGIN
      IF CDSMovCC.state = dsBrowse THEN
        CDSMovCC.Edit;
      CDSMovCCSALDO.AsFloat := CDSMovCCSALDO.AsFloat + CDSAplicacionesIMPORTE.AsFloat;
      IF CDSMovCCSALDO.AsFloat > CDSMovCCDEBE.AsFloat THEN
        CDSMovCCSALDO.AsFloat := CDSMovCCDEBE.AsFloat;
      //wwCDSMovCC.Post; // esto se agrega el 21/02/2010
      CDSACta.Edit;
      CDSACtaIMPORTE.AsFloat := CDSACtaIMPORTE.AsFloat + CDSAplicacionesIMPORTE.AsFloat;
      CDSACta.Post;
     // SumarSaldos; // esto se agrega el 21/02/2010
    END
  ELSE
    BEGIN
      ShowMessage('Operación no permitida, por que se trata de una asignación,'+ #13 +
        'anterior a la actual..... Solo se permite a las operaciones' + #13 +
        'que se realizan en la actual transacción');
      SysUtils.Abort;
    END;

end;

procedure TFormAplicacionesCCVta_2.CDSAplicacionesBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if CDSAplicacionesIMPORTE.AsFloat > CDSACtaIMPORTE.AsFloat then
    CDSAplicacionesIMPORTE.AsFloat := CDSACtaIMPORTE.AsFloat;
end;



procedure TFormAplicacionesCCVta_2.CDSAplicacionesReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(e.Message);
end;

procedure TFormAplicacionesCCVta_2.CDSFacDetCABECERAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:=FormatDateTime('dd/mm/yyyy',CDSFacDetFECHAVTA.AsDateTime)+' : '+
                               CDSFacDetTIPOCPBTE.Value+'-'+CDSFacDetCLASECPBTE.Value+'-'+CDSFacDetNROCPBTE.Value;
end;

procedure TFormAplicacionesCCVta_2.CDSFacDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSFacDetCABECERA.AsString:= FormatDateTime('yyyy/mm/dd',CDSFacDetFECHAVTA.AsDateTime)+' : '+
                               CDSFacDetTIPOCPBTE.Value+'-'+CDSFacDetCLASECPBTE.Value+'-'+CDSFacDetNROCPBTE.Value;
end;

procedure TFormAplicacionesCCVta_2.CDSFacDetFECHAVTAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:= FormatDateTime('dd/mm/yyyy',CDSFacDetFECHAVTA.AsDateTime)+' : '+
         CDSFacDetTIPOCPBTE.Value+'-'+CDSFacDetCLASECPBTE.Value+'-'+CDSFacDetNROCPBTE.Value;
end;

procedure TFormAplicacionesCCVta_2.CDSMovCCAfterScroll(DataSet: TDataSet);
begin
  inherited;
  sbEstado.Panels[1].Text:=FormatFloat(',0.00', CDSMovCCMUESTRATOTAL.AsFloat);

 // CDSAplicaciones.Close;
//  CDSAplicaciones.Params.ParamByName('id').Value:=CDSMovCCID_MOVCCVTA.Value;
//  CDSAplicaciones.Open;
end;

procedure TFormAplicacionesCCVta_2.CDSMovCCCalcFields(DataSet: TDataSet);
begin
  inherited;
//  CDSMovCCMUESTRATIPOVTA.Value:='X';

 // DMStoreProcedure.spMovCtaCteVta_Grupo.Close;
//  DMStoreProcedure.spMovCtaCteVta_Grupo.ParamByName('Id_Mov').Value:= CDSMovCCID_MOVCCVTA.Value;
//  DMStoreProcedure.spMovCtaCteVta_Grupo.ExecProc;
//
//  if DMStoreProcedure.spMovCtaCteVta_Grupo.ParamByName('id_grupo').AsString<>'' then
//    CDSMovCCMUESTRAGRUPO.Value:=DMStoreProcedure.spMovCtaCteVta_Grupo.ParamByName('id_grupo').Value
//  else
//    CDSMovCCMUESTRAGRUPO.Value:=-1;
//
//  DMStoreProcedure.spMovCtaCteVta_Grupo.Close;


// if ((CDSMovCCTIPOCPBTE.Value='FC') or (CDSMovCCTIPOCPBTE.Value='ND')) and (isZero( CDSMovCCMUESTRATOTAL.AsFloat)) then
//    begin
//      QImporteFC.Close;
//      QImporteFC.ParamByName('id').Value:=CDSMovCCID_CPBTE.Value;
//      QImporteFC.Open;
//      if QImporteFC.Fields[0].AsString<>'' then
//        CDSMovCCMUESTRATOTAL.AsFloat:=QImporteFC.Fields[0].AsFloat;
//      CDSMovCCMUESTRATIPOVTA.Value  :=QImporteFC.Fields[1].AsString;
//      QImporteFC.Close;
//    end
//  else
//    if (CDSMovCCTIPOCPBTE.Value='AJ') and (IsZero(CDSMovCCMUESTRATOTAL.AsFloat)) then
//      begin
//        QImporteAjustes.Close;
//        QImporteAjustes.ParamByName('id').Value:=CDSMovCCID_CPBTE.Value;
//        QImporteAjustes.Open;
//        if QImporteAjustesDEBE.AsString<>'' then
//          CDSMovCCMUESTRATOTAL.AsFloat:=QImporteAjustesDEBE.AsFloat;
//        QImporteAjustes.Close;
//      end;

end;

procedure TFormAplicacionesCCVta_2.CDSNcDetCABECERAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := FormatDateTime('dd/mm/yyyy',CDSNcDetFECHAVTA.AsDateTime)+' : '+
           CDSNcDetTIPOCPBTE.Value+'-'+CDSNcDetCLASECPBTE.Value+'-'+CDSNcDetNROCPBTE.Value;

end;

procedure TFormAplicacionesCCVta_2.CDSNcDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSNcDetCABECERA.AsString:= FormatDateTime('yyyy/mm/dd',CDSNcDetFECHAVTA.AsDateTime)+' : '+
                              CDSNcDetTIPOCPBTE.Value+'-'+CDSNcDetCLASECPBTE.Value+'-'+CDSNcDetNROCPBTE.Value;

end;

procedure TFormAplicacionesCCVta_2.CDSNcDetFECHAVTAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  text := FormatDateTime('dd/mm/yyyy',CDSNcDetFECHAVTA.AsDateTime)+':'+
          CDSNcDetTIPOCPBTE.Value+'-'+CDSNcDetCLASECPBTE.Value+'-'+CDSNcDetNROCPBTE.Value;

end;

procedure TFormAplicacionesCCVta_2.chbSaldoCeroClick(Sender: TObject);
begin
  inherited;
  VerCCte.Execute;
end;

procedure TFormAplicacionesCCVta_2.chFiltrarClick(Sender: TObject);
begin
  inherited;
  CDSACta.Filter:=' TIPOCPBTE = '''+cbbTipo.Text+''' ';
  CDSACta.Filtered:=chFiltrar.Checked ;
  SumarSaldos;
end;

procedure TFormAplicacionesCCVta_2.DesconciliarTodosExecute(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador=True then
     begin
       DMMain_FD.fdcGestion.StartTransaction;
       try
         QDesconciliarTodos.Close;
         QDesconciliarTodos.ParamByName('codigo').Value:=edCodigo.Text;
         QDesconciliarTodos.ExecSQL;
         QDesconciliarTodos.Close;
         DMMain_FD.fdcGestion.Commit;
       except
         DMMain_FD.fdcGestion.Rollback;
         QDesconciliarTodos.Close;
         ShowMessage('No se pudo conciliar los mov...');
       end;
       TraeCC(edCodigo.Text);
     end
   else
     ShowMessage('No esta autorizado para realizar la operación ....');
end;

procedure TFormAplicacionesCCVta_2.DesconciliarUnoExecute(Sender: TObject);
begin
  inherited;
   if DMMain_FD.UsuarioAdministrador=True then
     begin
       DMMain_FD.fdcGestion.StartTransaction;
       try
         QDesconciliarUnoFD.Close;
         QDesconciliarUnoFD.ParamByName('id_mov').Value:=CDSAplicacionesID_MOV.Value;
         QDesconciliarUnoFD.ExecSQL;
         DMMain_FD.fdcGestion.Commit;
         QDesconciliarUnoFD.Close;

       Except
         DMMain_FD.fdcGestion.Rollback;
         QDesconciliarUnoFD.Close;
         ShowMessage('No se pudo realizar la operación ....');
       end;
       TraeCC(edCodigo.Text);
       QDesconciliarUnoFD.Close;
     end
   else
     ShowMessage('No esta autorizado para realizar la operación ....');
end;

procedure TFormAplicacionesCCVta_2.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormAplicacionesCCVta_2.ReArmarCtaCteExecute(Sender: TObject);
Var Detalle:String;
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador then
    begin
      IF MessageDlg('Está por hacer una opreación de borrado de Aplicaciones'+ #13 +
                    'Se ignoran los movimientos conciliados .Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes THEN
        begin
          IF MessageDlg('Hacer Copia de las Aplicaciones?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
            BackUpAplicaciones.Execute;
          DMMain_FD.fdcGestion.StartTransaction;
          try
            QBorraAplicaciones.Close;
            QBorraAplicaciones.ParamByName('codigo').Value:=edCodigo.Text;
            QBorraAplicaciones.ExecSQL;
            QBorraAplicaciones.Close;

            Detalle:= 'Borrado General Aplicaciones Ventas..'+
                      'Cliente: ' + edMuestraCliente.Text;
            DMMain_FD.LogFileFD(0,4,Detalle,'IMPU VTA');
            spReAsignaSaldosFD.Close;
            spReAsignaSaldosFD.ParamByName('codigocliente').AsString:=edCodigo.Text;
            spReAsignaSaldosFD.ExecProc;
            spReAsignaSaldosFD.Close;
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            spReAsignaSaldosFD.Close;
            ShowMessage('No se pudo borrar las aplicaciones...');
          end;
          TraeCC(edCodigo.Text);
        end;
    end
  else
    ShowMessage('No está autorizado hacer esta operación, solo administradores..');
end;

procedure TFormAplicacionesCCVta_2.NoRefrescarActivarClick(Sender: TObject);
begin
  inherited;
  NoRefrescarActivar.Checked:=not(NoRefrescarActivar.Checked);
end;

procedure TFormAplicacionesCCVta_2.RpDetalleExecute(Sender: TObject);
begin
  inherited;
  frMovCC.DesignReport;
end;

procedure TFormAplicacionesCCVta_2.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frMovCC.DesignReport;
end;

procedure TFormAplicacionesCCVta_2.spArmarAplicacionesClick(Sender: TObject);
begin
  inherited;
  if (DMMain_FD.UsuarioAdministrador=True) and (Not(CDSMovCC.IsEmpty)) Then
    begin
      if Not(Assigned(FormReImpAplicacionesVta)) then
        FormReImpAplicacionesVta:=TFormReImpAplicacionesVta.Create(self);
      FormReImpAplicacionesVta.codigo:=edCodigo.Text;
      FormReImpAplicacionesVta.ShowMOdal;
    end;
end;

procedure TFormAplicacionesCCVta_2.spStopClick(Sender: TObject);
begin
  inherited;
  Stop:=True;
end;

procedure TFormAplicacionesCCVta_2.BackUpAplicacionesExecute(Sender: TObject);
var path,Path_Archivo:String;
begin
  inherited;
  path:=ExtractFilePath(ParamStr(0));
  sbEstado.Panels[0].Text:='Guardando Copia....';
  CDSAplicacionGral.Close;
  CDSAplicacionGral.Params.ParamByName('codigo').Value:=edCodigo.Text;
  CDSAplicacionGral.Open;
  if not DirectoryExists(Path+'Arch_AplicacionVta') then
    CreateDir(path+'Arch_AplicacionVta');
  path_Archivo:=path+'Arch_AplicacionVta\'+'Aplicaciones_'+edCodigo.Text+'.XML';
  CDSAplicacionGral.SaveToFile(Path_Archivo);
  CDSAplicacionGral.Close;
  sbEstado.Panels[0].Text:='';
end;

procedure TFormAplicacionesCCVta_2.BitBtn1Click(Sender: TObject);
begin
  inherited;
  CDSFacDet.Close;
  CDSFacDet.Params.ParamByName('codigo').Value:=edCodigo.Text;
  CDSFacDet.Open;

  CDSNcDet.Close;
  CDSNcDet.Params.ParamByName('codigo').Value:=edCodigo.Text;
  CDSNcDet.Open;

  CDSFacDet.IndexFieldNames:='FECHAVTA;TIPOCPBTE;NROCPBTE';
  CDSNcDet.IndexFieldNames :='FECHAVTA';

  cxGridFCDBTableView1.ViewData.Expand(True);
  cxGridNCDBTableView1.ViewData.Expand(True);

end;

procedure TFormAplicacionesCCVta_2.BorrarExecute(Sender: TObject);
var Detalle:String;
begin
//  inherited;
  if Not(CDSMovCC.IsEmpty) then
    if DMMain_FD.UsuarioAdministrador then
      begin
        IF MessageDlg('Está por hacer una opreación de borrado de Aplicaciones'
                       + #13 +'Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes THEN
          begin
            IF MessageDlg('Hacer Copia de las Aplicaciones?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
              BackUpAplicaciones.Execute;
            DMMain_FD.fdcGestion.StartTransaction;
            try
              Detalle:= 'Borrado Aplicaciones Ventas..'+ 'Cliente: ' + edMuestraCliente.Text;

              DMMain_FD.LogFileFD(0,4,Detalle,'IMPU VTA');

              {
              DMStoreProcedure.spGravarLogDBX.Close;
              DMStoreProcedure.spGravarLogDBX.ParamByName('Tipo').Value      := 4;
              DMStoreProcedure.spGravarLogDBX.ParamByName('Detalle').AsString:= 'Borrado Aplicaciones Ventas..'+
                                                                             'Cliente: ' + edMuestraCliente.Text;
              DMStoreProcedure.spGravarLogDBX.ParamByName('Origen').AsString  :='IMPU VTA';
              DMStoreProcedure.spGravarLogDBX.ParamByName('Usuario').AsString :=DMMain_FD.UsuarioActivo;
              DMStoreProcedure.spGravarLogDBX.ExecProc;
              DMStoreProcedure.spGravarLogDBX.Close;
            }
              QBorraAplicaciones.Close;
              QBorraAplicaciones.ParamByName('codigo').Value:=edCodigo.Text;
              QBorraAplicaciones.ExecSQL;
              QBorraAplicaciones.Close;

              DMMain_FD.fdcGestion.Commit;
            except
              DMMain_FD.fdcGestion.Rollback;
              ShowMessage('No se pudo borrar las aplicaciones...');
            end;
            TraeCC(edCodigo.Text);
          end;
      end
    else
      ShowMessage('No está autorizado hacer esta operación, solo administradores..')
  else
    ShowMessage('No hya datos para procesar....')

end;

procedure TFormAplicacionesCCVta_2.VerComprobante2Execute(Sender: TObject);
begin
  inherited;
  if (CDSACtaTIPOCPBTE.AsString='NC') Then
    begin
      IF NOT (Assigned(FormCpbte_2)) THEN
        FormCpbte_2    := TFormCpbte_2.Create(self);
      FormCpbte_2.DatoNew   := CDSACtaID_CPBTE.AsString;
      FormCpbte_2.TipoCpbte := CDSACtaTIPOCPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (CDSACtaTIPOCPBTE.AsString='RC') Then
      begin

       IF NOT (Assigned(FormRecibo_2)) THEN
          FormRecibo_2:= TFormRecibo_2.Create(self);
        FormRecibo_2.DatoNew    := CDSACtaID_CPBTE.AsString;
        FormRecibo_2.TipoCpbte  := CDSACtaTIPOCPBTE.AsString;
        FormRecibo_2.Recuperar.Execute;
        FormRecibo_2.Show;
      end
    else
      if (CDSACtaTIPOCPBTE.AsString='AJ') Then
        begin
          IF NOT (Assigned(FormAjustesCCVenta_2)) THEN
            FormAjustesCCVenta_2:= TFormAjustesCCVenta_2.Create(Application);
          FormAjustesCCVenta_2.DatoNew  := CDSACtaID_CPBTE.AsString;
          FormAjustesCCVenta_2.TipoCpbte:= CDSACtaTIPOCPBTE.AsString;
          FormAjustesCCVenta_2.Recuperar.Execute;
        end;

end;

//procedure TFormAplicacionesCCVta_2.wwDBGAplicacionesColEnter(Sender: TObject);
//begin
//  inherited;
//  if wwDBGAplicaciones.SelectedIndex<2 then
//    wwDBGAplicaciones.SelectedIndex:=2;
//end;


//procedure TFormAplicacionesCCVta_2.wwDBGAplicacionesDrawDataCell(
//  Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
//begin
//  inherited;
//   if gdSelected in State Then
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

procedure TFormAplicacionesCCVta_2.pnPrincipalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  lbMensaje.Caption:='';
end;

procedure TFormAplicacionesCCVta_2.pnAplicacionGralDblClick(Sender: TObject);
begin
  inherited;
  frMovCC.DesignReport;
end;

procedure TFormAplicacionesCCVta_2.BorrarUnaAplicacionExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    QBorraUnAplicacion.Close;
    QBorraUnAplicacion.ParamByName('id_mov').Value:=CDSAplicacionesID_MOV.Value;
    QBorraUnAplicacion.ExecSQL;
    DMMain_FD.fdcGestion.Commit;
   Except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo realizar la operación de borrado....');
  end;
  TraeCC(edCodigo.Text);
  QBorraUnAplicacion.Close;

end;

procedure TFormAplicacionesCCVta_2.ActualizaMovACtaExecute(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador then
    begin
      if (CDSACtaTIPOCPBTE.Value='NC') and (Trunc(CDSACtaIMPORTE.AsFloat*100)>0) Then
        begin
          QActualizaMovACtaNcFD.Close;
          QActualizaMovACtaNcFD.ParamByName('idmov').Value :=CDSACtaID_MOV.Value;
          QActualizaMovACtaNcFD.ExecSQL;
          CDSACta.Close;
          CDSACta.Params.ParamByName('Codigo').Value := edCodigo.Text;
          CDSACta.Open;
          SumarSaldos;
        end
      else
        if (CDSACtaTIPOCPBTE.Value='RC') and (Trunc(CDSACtaIMPORTE.AsFloat*100)>0) Then
          begin
            QActualizaMovActaRecFD.Close;
            QActualizaMovACtaRecFD.ParamByName('idmov').Value :=CDSACtaID_MOV.Value;
            QActualizaMovACtaRecFD.ExecSQL;
            CDSACta.Close;
            CDSACta.Params.ParamByName('Codigo').Value := edCodigo.Text;
            CDSACta.Open;
            SumarSaldos;
          end
        else
          if (CDSACtaTIPOCPBTE.Value='AJ') and (Trunc(CDSACtaIMPORTE.AsFloat*100)>0) Then
            begin
              QActualizaMovActaAj.Close;
              QActualizaMovActaAj.ParamByName('idmov').Value :=CDSACtaID_MOV.Value;
              QActualizaMovActaAj.ExecSQL;
              CDSACta.Close;
              CDSACta.Params.ParamByName('Codigo').Value := edCodigo.Text;
              CDSACta.Open;
              SumarSaldos;
          end;


    end;
 end;

procedure TFormAplicacionesCCVta_2.AplicacioAutomaticaExecute(
  Sender: TObject);
begin
  inherited;
  sbEstado.Panels[0].Text:='Imputando Pagos......';
  Stop:=False;
  CDSACta.First;
  CDSMovCC.First;
  while ((Not(CDSACta.Eof)) and (Not(CDSMovCC.Eof))) and (Stop=False) do
    begin
      Application.ProcessMessages;
      if CDSMovCCSALDO.AsFloat>0 Then
        begin
          while ((CDSACtaIMPORTE.AsFloat>0) and (Not(CDSMovCC.Eof))) and (Stop=False) do
            begin
              Application.ProcessMessages;
              GrupoApl:=-1;
              GrupoMov:=-1;

              // aca se verifica el grupo del movimiento si existen filtros.

              if (DMMain_FD.HayFiltros=True) and (chIngoraGrupo.Checked=False) then
                begin
                  GrupoApl:=CDSACtaMUESTRAGRUPO.Value;
                  GrupoMov:=CDSMovCCMUESTRAGRUPO.Value;
                end;
             //**************************************************************
               if (CDSMovCCSALDO.AsFloat>0) and (GrupoApl=GrupoMov) Then
                 cxGrid1DBTableView1DragDrop( Sender, DBGActa,10,10)
               else
                 CDSMovCC.Next;
              application.ProcessMessages;
            end;
          CDSACta.Next;
        end
      else
        CDSMovCC.Next;
    end;
  SumarSaldos;
  sbEstado.Panels[0].Text:='';
  application.ProcessMessages;

end;

procedure TFormAplicacionesCCVta_2.AplicacionGeneralExecute(Sender: TObject);
begin
  inherited;
  if (DMMain_FD.UsuarioAdministrador) and (MessageDlg('Está por hacer una Aplicacion General de las cta.cte.. esta seguro?',
             mtInformation, [mbYes, mbNo], 0) = mrYes) Then
  begin
    CDSCli.close;
    CDSCli.Open;
    CDSCli.First;

    pbAplicacionGral.Min:=0;
    pbAplicacionGral.Max:=CDSCli.RecordCount-1;
    pbAplicacionGral.Position:=0;
    while not(CDSCli.Eof) do
      begin
        lbMensajeAutomatico.Caption:= 'Procesando Cliente '+CDSCliNOMBRE.Value;
        Application.ProcessMessages;

        edCodigo.Text:=CDSCliCODIGO.AsString;
        pbAplicacionGral.Position:=pbAplicacionGral.Position+1;

        TraeCC(edCodigo.Text);

        Application.ProcessMessages;
        AplicacioAutomatica.Execute;
        Confirma.Execute;
        CDSCli.Next;
      end;
    lbMensajeAutomatico.Caption:= '';
    CDSCli.close;
    pbAplicacionGral.Position:=0;
    ShowMessage('Operaciòn Finalizada.....');
  end;
end;

procedure TFormAplicacionesCCVta_2.AplicacionGralExecute(Sender: TObject);
begin
  inherited;
  if (DMMain_FD.HayFiltros=True) then
    raise Exception.Create('No se puede hacer esta operacion por existir filtros de Comprobantes...');
  if MessageDlg('Está por hacer una reasignación general de cta.cte.. esta seguro?',
             mtInformation, [mbYes, mbNo], 0) = mrYes Then
  begin
    CDSCli.close;
    CDSCli.Open;
    CDSCli.First;

    QInactivaTriggerBorradoApliciones.Close;
    QInactivaTriggerBorradoApliciones.SQL.Clear;
    QInactivaTriggerBorradoApliciones.SQL.Add('ALTER TRIGGER TBD_MOVAPLICACCVTA INACTIVE');
    QInactivaTriggerBorradoApliciones.ExecSQL;

    pbAplicacionGral.Min:=0;
    pbAplicacionGral.Max:=CDSCli.RecordCount-1;
    pbAplicacionGral.Position:=0;
    while not(CDSCli.Eof) do
      begin

        lbMensajeAutomatico.Caption:= 'Procesando Cliente '+CDSCliNOMBRE.Value;
        Application.ProcessMessages;

        edCodigo.Text:=CDSCliCODIGO.AsString;
        pbAplicacionGral.Position:=pbAplicacionGral.Position+1;

        lbMensajeAutomatico.Caption:= 'Trayendo movimientos';
        Sleep(1);
        Application.ProcessMessages;

        TraeCC(edCodigo.Text);

  //      lbMensajeAutomatico.Caption:= 'Borrando aplicaciones';
  //      delay(1);

  //      QInactivaTriggerBorradoApliciones.Close;
  //      QInactivaTriggerBorradoApliciones.ExecSQL;

        QBorraAplicaciones.Close;
        QBorraAplicaciones.ParamByName('codigo').Value:=edCodigo.Text;
        QBorraAplicaciones.ExecSQL;
        QBorraAplicaciones.Close;

   //     QActivaTriggerBorradoApliciones.Close;
   //     QActivaTriggerBorradoApliciones.ExecSQL;

        spReAsignaSaldosFD.Close;
        spReAsignaSaldosFD.ParamByName('codigocliente').AsString:=edCodigo.Text;
        spReAsignaSaldosFD.ExecProc;
        spReAsignaSaldosFD.Close;

  //      QInactivaTriggerBorradoApliciones.Close;
  //      QInactivaTriggerBorradoApliciones.ExecSQL;

        QBorraAplicaciones.Close;
        QBorraAplicaciones.ParamByName('codigo').Value:=edCodigo.Text;
        QBorraAplicaciones.ExecSQL;
        QBorraAplicaciones.Close;

  //      QActivaTriggerBorradoApliciones.Close;
  //      QActivaTriggerBorradoApliciones.ExecSQL;

        spReAsignaSaldosFD.Close;
        spReAsignaSaldosFD.ParamByName('codigocliente').AsString:=edCodigo.Text;
        spReAsignaSaldosFD.ExecProc;
        spReAsignaSaldosFD.Close;

        lbMensajeAutomatico.Caption:= 'Trayendo movimientos';
        Sleep(1);
        Application.ProcessMessages;

        TraeCC(edCodigo.Text);

        lbMensajeAutomatico.Caption:= 'Aplicando movimientos';
        Sleep(1);
        Application.ProcessMessages;

        AplicacioAutomatica.Execute;

        lbMensajeAutomatico.Caption:= 'Gravando movimientos';
        Sleep(1);
        Application.ProcessMessages;

        Confirma.Execute;
        CDSCli.Next;
      end;

    QActivaTriggerBorradoApliciones.Close;
    QActivaTriggerBorradoApliciones.SQL.Clear;
    QActivaTriggerBorradoApliciones.SQL.Add('ALTER TRIGGER TBD_MOVAPLICACCVTA ACTIVE');
    QActivaTriggerBorradoApliciones.ExecSQL;

    lbMensajeAutomatico.Caption:= '';
    CDSCli.close;
    pbAplicacionGral.Position:=0;
    ShowMessage('Operaciòn Finalizada.....');
  end;
end;

procedure TFormAplicacionesCCVta_2.AutoContraerClick(Sender: TObject);
begin
  inherited;
  AutoContraer.Checked:=Not(AutoContraer.Checked);
end;

end.
