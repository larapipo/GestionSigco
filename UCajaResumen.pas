unit UCajaResumen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Grids, DBGrids, JvExControls, JvGradient,
  StdCtrls, Buttons, FMTBcd, DBCtrls, DB, DBClient, Provider, SqlExpr,
  JvDBLookup, Mask, JvExMask, JvToolEdit, JvBaseEdits, JvDBGridFooter,IniFiles,
  JvExDBGrids, JvDBGrid, JvComponentBase, JvFormPlacement, JvAppStorage,
  JvAppIniStorage, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, frxClass,
  frxDBSet, dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, frCoreClasses;

type
  TFormCajaResumen = class(TForm)
    pcCaja: TPageControl;
    tsMovimientos: TTabSheet;
    pnPie: TPanel;
    Splitter1: TSplitter;
    pnEgresos: TPanel;
    tsConfiguracion: TTabSheet;
    pncabEgresos: TPanel;
    Splitter2: TSplitter;
    Panel3: TPanel;
    pnIngresos: TPanel;
    pncabIngreso: TPanel;
    DSCaja: TDataSource;
    DSPCajaDetEgresos: TDataSetProvider;
    DSPCajaDetIngresos: TDataSetProvider;
    CDSCajaDetIngresos: TClientDataSet;
    CDSCajaDetIngresosID_COMPROBANTE: TIntegerField;
    CDSCajaDetIngresosNRO_CPBTE: TStringField;
    CDSCajaDetIngresosTIPO_CPBTE: TStringField;
    CDSCajaDetIngresosCLASE_CPBTE: TStringField;
    CDSCajaDetIngresosDETALLE: TStringField;
    CDSCajaDetIngresosDEBE: TFloatField;
    CDSCajaDetIngresosHABER: TFloatField;
    CDSCajaDetIngresosTIPO_OPERACION: TStringField;
    CDSCajaDetIngresosMUESTRA_TIPOOPERACION: TStringField;
    CDSCajaDetEgresos: TClientDataSet;
    CDSCajaDetEgresosID_COMPROBANTE: TIntegerField;
    CDSCajaDetEgresosNRO_CPBTE: TStringField;
    CDSCajaDetEgresosTIPO_CPBTE: TStringField;
    CDSCajaDetEgresosCLASE_CPBTE: TStringField;
    CDSCajaDetEgresosDETALLE: TStringField;
    CDSCajaDetEgresosDEBE: TFloatField;
    CDSCajaDetEgresosHABER: TFloatField;
    CDSCajaDetEgresosTIPO_OPERACION: TStringField;
    CDSCajaDetEgresosMUESTRA_TIPOOPERACION: TStringField;
    DSCajaDetEgresos: TDataSource;
    DSCajaDetIngresos: TDataSource;
    DSCajaCab: TDataSource;
    DSFPago: TDataSource;
    CDSFPago: TClientDataSet;
    CDSFPagoID_FPAGO: TIntegerField;
    CDSFPagoID_TPAGO: TIntegerField;
    CDSFPagoDESCRIPCION: TStringField;
    CDSFPagoSIGNO: TStringField;
    CDSFPagoMONEDA: TIntegerField;
    DSPFPago: TDataSetProvider;
    DSValores: TDataSource;
    DSEfectivo: TDataSource;
    DSCheques: TDataSource;
    DSDebitos: TDataSource;
    DSTxGeneradas: TDataSource;
    DSTxRecibidas: TDataSource;
    DSChe3Recibidos: TDataSource;
    DSSaldosTC: TDataSource;
    DSRetenciones: TDataSource;
    DSDepositos: TDataSource;
    DSPMovTCVenta: TDataSetProvider;
    DSPMovTCCompra: TDataSetProvider;
    CDSMovTCCompra: TClientDataSet;
    CDSMovTCCompraID_CAJA: TIntegerField;
    CDSMovTCCompraID_TARJETA: TIntegerField;
    CDSMovTCCompraMUESTRATARJETA: TStringField;
    CDSMovTCCompraCUOTAS: TIntegerField;
    CDSMovTCCompraTIPOCPBTE: TStringField;
    CDSMovTCCompraCLASECPBTE: TStringField;
    CDSMovTCCompraNROCPBTE: TStringField;
    CDSMovTCCompraNUMERO_CUPON: TIntegerField;
    CDSMovTCCompraPROVEEDOR: TStringField;
    CDSMovTCVenta: TClientDataSet;
    CDSMovTCVentaID_CAJA: TIntegerField;
    CDSMovTCVentaID_TC: TIntegerField;
    CDSMovTCVentaMUESTRATARJETA: TStringField;
    CDSMovTCVentaCAN_CUOTAS: TIntegerField;
    CDSMovTCVentaTIPO_COMPROB: TStringField;
    CDSMovTCVentaCLASE_COMPROB: TStringField;
    CDSMovTCVentaNRO_COMPROBANTE: TStringField;
    CDSMovTCVentaNRO_CUPON: TIntegerField;
    CDSMovTCVentaTITULAR: TStringField;
    CDSMovTCVentaID_COMPROBANTE: TIntegerField;
    DSMovTCCompra: TDataSource;
    DSMovTCVenta: TDataSource;
    DSChe3Entregado: TDataSource;
    Label1: TLabel;
    dbcCtas: TJvDBLookupCombo;
    btAbrirCaja: TBitBtn;
    Splitter3: TSplitter;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    dbgIngresos: TDBGrid;
    Panel1: TPanel;
    Panel6: TPanel;
    dbgEgresos: TDBGrid;
    edIngresos: TJvCalcEdit;
    edEgresos: TJvCalcEdit;
    Panel8: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    btCompCtdo: TButton;
    btOPago: TButton;
    btContado: TButton;
    btTicket: TButton;
    btRecibo: TButton;
    pcValores: TPageControl;
    tsEgfectivo: TTabSheet;
    tsTarjtea: TTabSheet;
    tsCheques: TTabSheet;
    dbgEfectivo: TJvDBGrid;
    edHaberEfectivo: TJvCalcEdit;
    edDebeEfectivo: TJvCalcEdit;
    edTotalEfectivo: TJvCalcEdit;
    dbgTarjetas: TJvDBGrid;
    edTotalTarjetas: TJvCalcEdit;
    dbgTotalChe3: TJvDBGrid;
    edTotalChe3: TJvCalcEdit;
    edEfectivo: TJvCalcEdit;
    Label2: TLabel;
    Label3: TLabel;
    edTarjeta: TJvCalcEdit;
    Label4: TLabel;
    edCheques: TJvCalcEdit;
    btEgresos: TButton;
    edFecha: TJvDateEdit;
    UpDown1: TUpDown;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    dbgAcumualdos: TDBGrid;
    DSAcumulados: TDataSource;
    btRefresh: TBitBtn;
    btDepo: TButton;
    rgEstadosCaja: TRadioGroup;
    btPersonal: TButton;
    btIngCaja: TButton;
    JvFormStorage: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    tsCheques3roRec: TTabSheet;
    cxGCheques3DBTableView1: TcxGridDBTableView;
    cxGCheques3Level1: TcxGridLevel;
    cxGCheques3: TcxGrid;
    cxGCheques3DBTableView1ID_MOV_CAJA: TcxGridDBColumn;
    cxGCheques3DBTableView1NUMERO: TcxGridDBColumn;
    cxGCheques3DBTableView1MUESTRABANCO: TcxGridDBColumn;
    cxGCheques3DBTableView1ORIGEN: TcxGridDBColumn;
    cxGCheques3DBTableView1DESTINO: TcxGridDBColumn;
    cxGCheques3DBTableView1FECHA_COBRO: TcxGridDBColumn;
    cxGCheques3DBTableView1IMPORTE: TcxGridDBColumn;
    cxGCheques3DBTableView2: TcxGridDBTableView;
    cxGCheques3DBTableView2ID_MOV_CAJA: TcxGridDBColumn;
    cxGCheques3DBTableView2NUMERO: TcxGridDBColumn;
    cxGCheques3DBTableView2MUESTRABANCO: TcxGridDBColumn;
    cxGCheques3DBTableView2ORIGEN: TcxGridDBColumn;
    cxGCheques3DBTableView2DESTINO: TcxGridDBColumn;
    cxGCheques3DBTableView2FECHA_COBRO: TcxGridDBColumn;
    cxGCheques3DBTableView2IMPORTE: TcxGridDBColumn;
    DBText1: TDBText;
    Label12: TLabel;
    frxReport: TfrxReport;
    frIngresos: TfrxDBDataset;
    frEgresos: TfrxDBDataset;
    frAcumulados: TfrxDBDataset;
    frEfectivo: TfrxDBDataset;
    frTCredito: TfrxDBDataset;
    frCheques: TfrxDBDataset;
    BitBtn1: TBitBtn;
    btNc: TButton;
    tbEfectivo: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1FECHA: TcxGridDBColumn;
    cxGridDBTableView1TIPO_COMPROB: TcxGridDBColumn;
    cxGridDBTableView1CLASE_COMPRO: TcxGridDBColumn;
    cxGridDBTableView1NROCOMPROB: TcxGridDBColumn;
    cxGridDBTableView1DEBE: TcxGridDBColumn;
    cxGridDBTableView1HABER: TcxGridDBColumn;
    cxGridDBTableView1ID_TPAGO: TcxGridDBColumn;
    cxGridDBTableView1ID_FPAGO: TcxGridDBColumn;
    cxGridDBTableView1MUESTRAFPAGO: TcxGridDBColumn;
    cxGridDBTableView1DESCRIPCION: TcxGridDBColumn;
    tsCheuque3roEnt: TTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView3ID_MOV_CAJA: TcxGridDBColumn;
    cxGridDBTableView3NUMERO: TcxGridDBColumn;
    cxGridDBTableView3MUESTRABANCO: TcxGridDBColumn;
    cxGridDBTableView3ORIGEN: TcxGridDBColumn;
    cxGridDBTableView3DESTINO: TcxGridDBColumn;
    cxGridDBTableView3FECHA_COBRO: TcxGridDBColumn;
    cxGridDBTableView3IMPORTE: TcxGridDBColumn;
    btRecAbono: TButton;
    Label13: TLabel;
    sbReporte: TSpeedButton;
    OpenDialog: TOpenDialog;
    dbeReporte: TEdit;
    Label14: TLabel;
    DBText2: TDBText;
    QDepositos: TFDQuery;
    QCaja_Estado: TFDQuery;
    QValores: TFDQuery;
    QChe3Recibidos: TFDQuery;
    QSaldosTC: TFDQuery;
    QRetenciones: TFDQuery;
    QDebitos: TFDQuery;
    QTxGeneradas: TFDQuery;
    QTxRecibidas: TFDQuery;
    QEfectivo: TFDQuery;
    QCajadet: TFDQuery;
    QFPago: TFDQuery;
    QMovTCVenta: TFDQuery;
    QMovTCCompra: TFDQuery;
    QChe3Entregado: TFDQuery;
    QCheques: TFDQuery;
    CDSMovTCCompraIMPORTE: TFloatField;
    CDSMovTCVentaIMPORTE: TFloatField;
    QCajaCab: TFDQuery;
    QAcumulados: TFDQuery;
    QCajas: TFDQuery;
    QCaja_EstadoID_CAJA: TIntegerField;
    CDSFPagoCOTIZACION: TFloatField;
    QCajasID_CAJA: TIntegerField;
    QCajasID_CUENTA_CAJA: TIntegerField;
    QCajasSALDO_INCIAL: TFloatField;
    QCajasESTADO: TIntegerField;
    QCajasOBS: TMemoField;
    QCajasNUMEROCAJA: TIntegerField;
    QCajasMUESTRACTACAJA: TStringField;
    QDepositosID_MOV_CAJA: TIntegerField;
    QDepositosID_CAJA: TIntegerField;
    QDepositosTIPO_OPERACION: TStringField;
    QDepositosTIPO_COMPROB: TStringField;
    QDepositosCLASE_COMPROB: TStringField;
    QDepositosID_COMPROBANTE: TIntegerField;
    QDepositosNRO_COMPROBANTE: TStringField;
    QDepositosHABER: TFloatField;
    QDepositosDEBE: TFloatField;
    QDepositosID_TPAGO: TIntegerField;
    QDepositosID_FPAGO: TIntegerField;
    QDepositosUNIDADES: TFloatField;
    QDepositosCOTIZACION: TFloatField;
    QDepositosID_CUENTA_CAJA: TIntegerField;
    QDepositosMONEDA: TIntegerField;
    QDepositosID: TIntegerField;
    QDepositosID_CTA_CAJA: TIntegerField;
    QDepositosNUMERO: TStringField;
    QDepositosIMPORTE: TFloatField;
    QDepositosEFEC_CHEQ: TStringField;
    QDepositosOBS: TStringField;
    QDepositosSUCURSAL: TIntegerField;
    QDepositosMUESTRACTA: TStringField;
    QDepositosNUEMROCHE: TIntegerField;
    QDepositosMUESTRAORIGEN: TStringField;
    QRetencionesIDRETENCION: TIntegerField;
    QRetencionesDETALLE: TStringField;
    QRetencionesTIPOCPBTE: TStringField;
    QRetencionesCLASECPBTE: TStringField;
    QRetencionesNROCPBTE: TStringField;
    QRetencionesNRO_RETENCION: TStringField;
    QRetencionesIMPORTE: TFloatField;
    QRetencionesCLIENTE: TStringField;
    QSaldosTCMONEDA: TIntegerField;
    QSaldosTCSALDO: TFloatField;
    QSaldosTCDEBE: TFloatField;
    QSaldosTCHABER: TFloatField;
    QSaldosTCFPAGO: TSmallintField;
    QSaldosTCTPAGO: TSmallintField;
    QSaldosTCCOTIZACION: TFloatField;
    QSaldosTCDISPONIBILIDAD: TFloatField;
    QSaldosTCDETALLE: TStringField;
    QChe3RecibidosID_MOV_CAJA: TIntegerField;
    QChe3RecibidosNUMERO: TIntegerField;
    QChe3RecibidosMUESTRABANCO: TStringField;
    QChe3RecibidosORIGEN: TStringField;
    QChe3RecibidosDESTINO: TStringField;
    QChe3RecibidosIMPORTE: TFloatField;
    QTxRecibidasNUMERO: TIntegerField;
    QTxRecibidasIMPORTE: TFloatField;
    QTxRecibidasORIGEN: TStringField;
    QTxRecibidasMUESTRABANCO: TStringField;
    QValoresTIPO_CPBTE: TStringField;
    QValoresNRO_CPBTE: TStringField;
    QValoresDEBE: TFloatField;
    QValoresHABER: TFloatField;
    QValoresSALDO: TFloatField;
    QValoresSIGNO: TStringField;
    QValoresNOMBRE: TStringField;
    QValoresIDCAJA: TIntegerField;
    QValoresIDCTACAJA: TIntegerField;
    QValoresNOMBRECTACAJA: TStringField;
    QEfectivoTIPO_COMPROB: TStringField;
    QEfectivoCLASE_COMPRO: TStringField;
    QEfectivoNROCOMPROB: TStringField;
    QEfectivoDEBE: TFloatField;
    QEfectivoHABER: TFloatField;
    QEfectivoID_TPAGO: TIntegerField;
    QEfectivoID_FPAGO: TIntegerField;
    QEfectivoMUESTRAFPAGO: TStringField;
    QEfectivoCOTIZACION: TFloatField;
    QEfectivoUNIDADES: TFloatField;
    QEfectivoDESCRIPCION: TStringField;
    QEfectivoNOMBRE: TStringField;
    QEfectivoSIGNO: TStringField;
    QCajaCabID_CAJA: TIntegerField;
    QCajaCabID_CUENTA_CAJA: TIntegerField;
    QCajaCabSALDO_INCIAL: TFloatField;
    QCajaCabESTADO: TIntegerField;
    QCajaCabOBS: TMemoField;
    QCajaCabNUMEROCAJA: TIntegerField;
    QCajaCabMUESTRACTACAJA: TStringField;
    QAcumuladosTIPO_OPERACION: TStringField;
    QAcumuladosMUESTRA_TIPOOPERACION: TStringField;
    QAcumuladosDEBE: TFloatField;
    QAcumuladosHABER: TFloatField;
    QFPagoID_FPAGO: TIntegerField;
    QFPagoID_TPAGO: TIntegerField;
    QFPagoDESCRIPCION: TStringField;
    QFPagoCOTIZACION: TFloatField;
    QFPagoSIGNO: TStringField;
    QFPagoMONEDA: TIntegerField;
    QFPagoACUMULABLE: TStringField;
    QChe3EntregadoID_MOV_CAJA: TIntegerField;
    QChe3EntregadoNUMERO: TIntegerField;
    QChe3EntregadoMUESTRABANCO: TStringField;
    QChe3EntregadoORIGEN: TStringField;
    QChe3EntregadoDESTINO: TStringField;
    QChe3EntregadoIMPORTE: TFloatField;
    QChequesMUESTRABANCO: TStringField;
    QChequesNUMERO: TIntegerField;
    QChequesORDEN_DE: TStringField;
    QChequesIMPORTE: TFloatField;
    QTxGeneradasNUMERO: TIntegerField;
    QTxGeneradasIMPORTE: TFloatField;
    QTxGeneradasORIGEN: TStringField;
    QTxGeneradasMUESTRABANCO: TStringField;
    QDebitosNUMERO: TIntegerField;
    QDebitosIMPORTE: TFloatField;
    QDebitosORIGEN: TStringField;
    QDebitosMUESTRABANCO: TStringField;
    pnPieDetalle: TPanel;
    QDepositosFECHA_OPERACION: TSQLTimeStampField;
    QDepositosFECHA: TSQLTimeStampField;
    QRetencionesFECHA: TSQLTimeStampField;
    QRetencionesFECHARETENCION: TSQLTimeStampField;
    QDebitosFECHA: TSQLTimeStampField;
    QCajasFECHA_INCIO: TSQLTimeStampField;
    QCajasFECHA_CIERRE: TSQLTimeStampField;
    QValoresFECHA: TSQLTimeStampField;
    CDSCajaDetEgresosFECHA: TSQLTimeStampField;
    CDSCajaDetIngresosFECHA: TSQLTimeStampField;
    CDSMovTCCompraFECHA_COMPRA: TSQLTimeStampField;
    CDSMovTCCompraFECHA_CUPON: TSQLTimeStampField;
    CDSMovTCVentaFECHA: TSQLTimeStampField;
    QCajaCabFECHA_INCIO: TSQLTimeStampField;
    QCajaCabFECHA_CIERRE: TSQLTimeStampField;
    QChe3EntregadoFECHA_COBRO: TSQLTimeStampField;
    QChe3RecibidosFECHA_COBRO: TSQLTimeStampField;
    QTxRecibidasFECHA: TSQLTimeStampField;
    QTxGeneradasFECHA: TSQLTimeStampField;
    QEfectivoFECHA: TSQLTimeStampField;
    QChequesFECHA_EMISION: TSQLTimeStampField;
    QChequesFECHA_COBRO: TSQLTimeStampField;
    QDepositosFECHA_CAJA: TSQLTimeStampField;
    TabSheet1: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    TabSheet2: TTabSheet;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1MUESTRABANCO: TcxGridDBColumn;
    cxGrid3DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid3DBTableView1ORDEN_DE: TcxGridDBColumn;
    cxGrid3DBTableView1IMPORTE: TcxGridDBColumn;
    cxGrid3DBTableView1FECHA_COBRO: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btContadoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbcCtasClick(Sender: TObject);
    procedure btAbrirCajaClick(Sender: TObject);
    procedure btTicketClick(Sender: TObject);
    procedure edFechaChange(Sender: TObject);
    procedure btReciboClick(Sender: TObject);
    procedure CDSMovTCVentaAfterOpen(DataSet: TDataSet);
    procedure CDSChe3RecibidosAfterOpen(DataSet: TDataSet);
    procedure btCompCtdoClick(Sender: TObject);
    procedure btOPagoClick(Sender: TObject);
    procedure btEgresosClick(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure dbgAcumualdosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btRefreshClick(Sender: TObject);
    procedure dbgIngresosDblClick(Sender: TObject);
    procedure dbgEgresosDblClick(Sender: TObject);
    procedure btDepoClick(Sender: TObject);
    procedure rgEstadosCajaClick(Sender: TObject);
    procedure btPersonalClick(Sender: TObject);
    procedure btIngCajaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure JvGradient7DblClick(Sender: TObject);
    procedure btNcClick(Sender: TObject);
    procedure btRecAbonoClick(Sender: TObject);
    procedure sbReporteClick(Sender: TObject);
    procedure QChe3RecibidosAfterOpen(DataSet: TDataSet);
    procedure QEfectivoAfterOpen(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    SucursalPorDefecto:Integer;
    CDSClone:TClientDataSet;
    procedure SumaIngresos_Egresos;
    procedure Recuperar(dato:Integer);


  end;

var
  FormCajaResumen: TFormCajaResumen;

implementation

uses UDMain_FD, UFacturaCtdo_2, UAperturaCaja, UTiketVta, URecibo_2,
  UCompraCtdo_2, UOPago_2, UEgresoCaja, UTransferenciaEfectivo,
  UTransferenciaCh3, UAnulacionOPago, UIngresoCaja, UDepositosBancarios,
  UAdelantosSueldos, UFactura_2, UBuscadorTipoCpbte, UReciboAbonos;

{$R *.dfm}

procedure TFormCajaResumen.SumaIngresos_Egresos;
var CDSClone:TClientDataSet;
Aux:Extended;
begin
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSCajaDetIngresos,True);
  CDSClone.First;

  Aux := 0;
  WHILE NOT (CDSClone.Eof) DO
    BEGIN
      Aux := Aux + CDSClone.FieldByName('Debe').AsFloat;
      CDSClone.Next;
    END;
  edIngresos.Value := Aux;

  FreeAndNil(CDSClone);

  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSCajaDetEgresos,True);
  CDSClone.First;

  Aux := 0;
  WHILE NOT (CDSClone.Eof) DO
    BEGIN
      Aux := Aux + CDSClone.FieldByName('Haber').AsFloat;
      CDSClone.Next;
    END;
  edEgresos.Value := Aux;

  FreeAndNil(CDSClone);

end;


procedure TFormCajaResumen.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  if Button=btNext then
    edFecha.Date:=edFecha.Date+1
  else
  if Button=btPrev then
    edFecha.Date:=edFecha.Date-1;
  Recuperar(dbcCtas.LookupSource.DataSet.FieldByName('ID_CAJA').Value);
 
end;

procedure TFormCajaResumen.rgEstadosCajaClick(Sender: TObject);
begin
  QCajas.Close;
  QCajas.ParamByName('Estado').Value := rgEstadosCaja.ItemIndex;
  QCajas.Open;

  edFecha.Date     := Date;
  dbcCtas.KeyValue := DMMain_FD.CajaSeleccionada;
  if Not(VarIsNull(dbcCtas.LookupSource.DataSet.FieldByName('ID_CAJA').Value)) then
    Recuperar(dbcCtas.LookupSource.DataSet.FieldByName('ID_CAJA').Value)
  else
    Recuperar(-1);
  Panel5.Enabled:=rgEstadosCaja.ItemIndex=0;
  Panel6.Enabled:=rgEstadosCaja.ItemIndex=0;

end;

procedure TFormCajaResumen.sbReporteClick(Sender: TObject);
VAR Lon1,Lon2:integer;
begin
 if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        dbeReporte.Text:= OpenDialog.FileName;
        Lon1:=Length(OpenDialog.InitialDir);
        Lon2:=Length(OpenDialog.FileName);
        dbeReporte.Text:=Copy(OpenDialog.FileName,Lon1+2,Lon2-Lon1-1);
      end
    else
      dbeReporte.Text:='';
end;

procedure TFormCajaResumen.Recuperar(dato:Integer);
VAR id_caja:integer;
begin

 // if (dato>-1) then
  begin
    Screen.Cursor:=crHourGlass;
    id_Caja:=Dato;

    QCajaCab.Close;
    QCajaCab.ParamByName('id').Value         := Dato;
    QCajaCab.Open;

    CDSCajaDetIngresos.Close;
    CDSCajaDetIngresos.IndexDefs.Clear;
    CDSCajaDetIngresos.IndexName:='';
    CDSCajaDetIngresos.Params.ParamByName('id').Value := Dato;
    CDSCajaDetIngresos.Params.ParamByName('desde').AsDate:=edFecha.Date;
    CDSCajaDetIngresos.Params.ParamByName('Hasta').AsDate:=edFecha.Date;
    CDSCajaDetIngresos.Open;

    CDSCajaDetEgresos.Close;
    CDSCajaDetEgresos.IndexDefs.Clear;
    CDSCajaDetEgresos.IndexName:='';
    CDSCajaDetEgresos.Params.ParamByName('id').Value  := Dato;
    CDSCajaDetEgresos.Params.ParamByName('desde').AsDate:=edFecha.Date;
    CDSCajaDetEgresos.Params.ParamByName('Hasta').AsDate:=edFecha.Date;
    CDSCajaDetEgresos.Open;

    SumaIngresos_Egresos;

    QSaldosTC.Close;
    QSaldosTC.ParamByName('id').Value   := Dato;
    QSaldosTC.Open;

    CDSFPago.Close;
    CDSFPago.Open;
    CDSFPago.First;

    QValores.close;
    QValores.ParamByName('id').Value      := Dato;
    QValores.ParamByName('id_fpago').Value:= CDSFPago.Fields[1].Value;
    QValores.ParamByName('desde').Value   := edFecha.Date;
    QValores.ParamByName('hasta').Value   := edFecha.Date;

    QValores.Open;

    QChe3Recibidos.Close;
    QChe3Recibidos.ParamByName('id_caja').value:= Dato;
    QChe3Recibidos.ParamByName('fecha').value  := edFecha.Date;
    QChe3Recibidos.OPen;

    QChe3Entregado.Close;
    QChe3Entregado.ParamByName('id_caja').value:= Dato;
    QChe3Entregado.OPen;

    QCheques.Close;
    QCheques.ParamByName('id_caja').value:= Dato;
    QCheques.ParamByName('desde').AsDate:=edFecha.Date;
    QCheques.ParamByName('Hasta').AsDate:=edFecha.Date;
    QCheques.OPen;

    QTxGeneradas.Close;
    QTxGeneradas.ParamByName('id_caja').Value:= Dato;
    QTxGeneradas.ParamByName('desde').AsDate:=edFecha.Date;
    QTxGeneradas.ParamByName('Hasta').AsDate:=edFecha.Date;
    QTxGeneradas.Open;

    QTxRecibidas.Close;
    QTxRecibidas.ParamByName('id_caja').Value:= Dato;
    QTxRecibidas.Open;

    QDebitos.Close;
    QDebitos.ParamByName('id_caja').Value  := Dato;
    QDebitos.Open;

    QRetenciones.Close;
    QRetenciones.ParamByName('idcaja').Value:= Dato;
    QRetenciones.Open;

    QDepositos.Close;
    QDepositos.ParamByName('idcaja').Value:= Dato;
    QDepositos.Open;

    QEfectivo.Close;
    QEfectivo.ParamByName('idcaja').Value := Dato;
    QEfectivo.ParamByName('desde').AsDate:=edFecha.Date;
    QEfectivo.ParamByName('Hasta').AsDate:=edFecha.Date;
    QEfectivo.Open;

 

    CDSMovTCCompra.Close;
    CDSMovTCCompra.Params.ParamByName('id').Value := Dato;
    CDSMovTCCompra.Open;

    CDSMovTCVenta.Close;
    CDSMovTCVenta.Params.ParamByName('id').Value := Dato;
    CDSMovTCVenta.Params.ParamByName('desde').AsDate:=edFecha.Date;
    CDSMovTCVenta.Params.ParamByName('Hasta').AsDate:=edFecha.Date;

    CDSMovTCVenta.Open;
  end;
  Screen.Cursor    := crDefault;
  edEfectivo.Value := edTotalEfectivo.Value;

  edCheques.Value  := edTotalChe3.Value;

  edTarjeta.Value  := edTotalTarjetas.Value;

  QAcumulados.Close;
  QAcumulados.ParamByName('id').Value := Dato;
  QAcumulados.ParamByName('desde').AsDate:=edFecha.Date;
  QAcumulados.ParamByName('Hasta').AsDate:=edFecha.Date;
  QAcumulados.Open;

//  TFMTBCDField(dbgTxGeneradas.Fields[4]).DisplayFormat := ',0.00';
//  TFMTBCDField(dbgTxRecibidas.Fields[4]).DisplayFormat := ',0.00';
//  TFMTBCDField(dbgDebitos.Fields[4]).DisplayFormat     := ',0.00';
//  TFMTBCDField(dbgDepositos.Fields[3]).DisplayFormat   := ',0.00';
//
//  TFMTBCDField(dbgEfectivo.Fields[4]).DisplayFormat    := ',0.00';
//  TFMTBCDField(dbgEfectivo.Fields[5]).DisplayFormat    := ',0.00';
//
//  TFMTBCDField(DBGCheEmitidos.Fields[3]).DisplayFormat := ',0.00';
//
//  TStringField(DBGCheEmitidos.Fields[0]).Alignment:=taRightJustify;
//  CerrarCaja.Enabled := (DatosCaja.CDSCajaCabESTADO.Value = 0) and (Dato<>0); ;
//  edtSaldo.Value     := edtIngresos.Value-edtEgresos.Value;
//  lbCerrada.Visible  := (DatosCaja.CDSCajaCabESTADO.Value = 1);
//  jvProgressCalc.Hide;
end;


procedure TFormCajaResumen.BitBtn1Click(Sender: TObject);
begin
  if Trim(dbeReporte.Text)='' then
    frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\CajaResumen.fr3') else
  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\'+dbeReporte.Text); // '\CajaResumen.fr3'

  // frCtaCte.PrepareReport;
  frxReport.Variables['Caja']:=''''+dbcCtas.Text+'''';
  frxReport.Variables['Fecha']:=''''+edFecha.Text+'''';
  frxReport.ShowReport;
end;

procedure TFormCajaResumen.btAbrirCajaClick(Sender: TObject);
begin
  QCaja_Estado.Close;
  QCaja_Estado.ParamByName('id').AsInteger:= dbcCtas.KeyValue;
  QCaja_Estado.Open;

  if QCaja_EstadoID_CAJA.AsString='' Then
    begin
      if Not(Assigned(FormAperturaCaja)) then
        FormAperturaCaja:=TFormAperturaCaja.Create(Self);
      FormAperturaCaja.Agregar.Execute;
      FormAperturaCaja.CDSCajaCabID_CUENTA_CAJASetText( FormAperturaCaja.CDSCajaCabID_CUENTA_CAJA,(dbcCtas.KeyValue));
      FormAperturaCaja.Show;
    end
  else
    begin
      ShowMessage('La caja esta Abierta......');
      if (Assigned(FormAperturaCaja)) then
        begin
          FormAperturaCaja.Close;
          FreeAndNil(FormAperturaCaja);
        end;
    end;

end;

procedure TFormCajaResumen.btContadoClick(Sender: TObject);
begin
  if (dbcCtas.KeyValue > -1 ) and (rgEstadosCaja.ItemIndex=0) Then
    begin
     if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
      FormBuscadorTipoCpbte.TipoCpbte1:='FO';
      FormBuscadorTipoCpbte.TipoCpbte2:='';
      FormBuscadorTipoCpbte.TipoCpbte3:='';
      FormBuscadorTipoCpbte.CV        :='V';
      FormBuscadorTipoCpbte.Sucursal  := SucursalPorDefecto;
      FormBuscadorTipoCpbte.DiscriminaIVA:= '*';
      FormBuscadorTipoCpbte.Position:=poOwnerFormCenter;
      FormBuscadorTipoCpbte.ShowModal;
      if FormBuscadorTipoCpbte.ModalResult=mrOk Then
        begin
          if Not(Assigned(FormCpbteCtdo_2)) then
            FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
          FormCpbteCtdo_2.Show;
          FormCpbteCtdo_2.CajaPorDefecto:=dbcCtas.LookupSource.DataSet.FieldByName('ID_CUENTA_CAJA').Value;
          FormCpbteCtdo_2.SucursalPorDefecto:= FormBuscadorTipoCpbte.Sucursal;
          formCpbteCtdo_2.Agregar.execute;
          FormCpbteCtdo_2.DSBase.DataSet.FieldByName('FECHAVTA').AsDateTime:=edFecha.Date;
          FormCpbteCtdo_2.DSBase.DataSet.FieldByName('ID_TIPOCOMPROBANTE').Text:=IntToStr(FormBuscadorTipoCpbte.Id_Cpbte);
        end;
    end
  else
    showMessage(' No Hay caja Seleccioanda...')
end;

procedure TFormCajaResumen.btRecAbonoClick(Sender: TObject);
begin
if (dbcCtas.KeyValue > -1 ) and (rgEstadosCaja.ItemIndex=0) Then
    begin
      if Not(Assigned(FormReciboAbonos)) then
        FormReciboAbonos:=TFormReciboAbonos.Create(Self);
      FormReciboAbonos.CajaPorDefecto:=dbcCtas.LookupSource.DataSet.FieldByName('ID_CUENTA_CAJA').Value;
      FormReciboAbonos.Show;
      FormReciboAbonos.dbcCtaCaja.KeyValue:=dbcCtas.LookupSource.DataSet.FieldByName('ID_CUENTA_CAJA').Value;
      FormReciboAbonos.CajaPorDefecto     :=dbcCtas.LookupSource.DataSet.FieldByName('ID_CUENTA_CAJA').Value;

      FormReciboAbonos.Agregar.execute;
      FormReciboAbonos.DSBase.DataSet.FieldByName('FECHA').AsDateTime:=edFecha.Date;

    end
  else
    showMessage(' No Hay caja Seleccioanda...')
end;

procedure TFormCajaResumen.btReciboClick(Sender: TObject);
begin
 if (dbcCtas.KeyValue > -1 ) and (rgEstadosCaja.ItemIndex=0) Then
    begin
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
      FormBuscadorTipoCpbte.TipoCpbte1:='RC';
      FormBuscadorTipoCpbte.TipoCpbte2:='';
      FormBuscadorTipoCpbte.TipoCpbte3:='';
      FormBuscadorTipoCpbte.CV        :='V';
      FormBuscadorTipoCpbte.Sucursal  := SucursalPorDefecto;
      FormBuscadorTipoCpbte.DiscriminaIVA:= '*';
      FormBuscadorTipoCpbte.Position:=poOwnerFormCenter;
      FormBuscadorTipoCpbte.ShowModal;
      if FormBuscadorTipoCpbte.ModalResult=mrOk Then
        begin
          if Not(Assigned(FormRecibo_2)) then
            FormRecibo_2:=TFormRecibo_2.Create(Self);
          FormRecibo_2.Show;
          FormRecibo_2.SucursalPorDefecto:= FormBuscadorTipoCpbte.Sucursal;
          FormRecibo_2.CajaPorDefecto:=dbcCtas.LookupSource.DataSet.FieldByName('ID_CUENTA_CAJA').Value;
          FormRecibo_2.Agregar.execute;
          FormRecibo_2.DSBase.DataSet.FieldByName('FECHA').AsDateTime:=edFecha.Date;
          FormRecibo_2.DSBase.DataSet.FieldByName('ID_TIPOCOMPROBANTE').Text:=IntToStr(FormBuscadorTipoCpbte.Id_Cpbte);

        end;
    end
  else
    showMessage(' No Hay caja Seleccioanda...')
end;

procedure TFormCajaResumen.btRefreshClick(Sender: TObject);
begin
  Recuperar(dbcCtas.LookupSource.DataSet.FieldByName('ID_CAJA').Value);
end;

procedure TFormCajaResumen.btTicketClick(Sender: TObject);
begin
  if (dbcCtas.KeyValue > -1 ) and (rgEstadosCaja.ItemIndex=0) Then
    begin
     if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
      FormBuscadorTipoCpbte.TipoCpbte1:='TK';
      FormBuscadorTipoCpbte.TipoCpbte2:='';
      FormBuscadorTipoCpbte.TipoCpbte3:='';
      FormBuscadorTipoCpbte.CV        :='V';
      FormBuscadorTipoCpbte.Sucursal  := SucursalPorDefecto;
      FormBuscadorTipoCpbte.DiscriminaIVA:= '*';
      FormBuscadorTipoCpbte.Position:=poOwnerFormCenter;
      FormBuscadorTipoCpbte.ShowModal;
      if FormBuscadorTipoCpbte.ModalResult=mrOk Then
        begin
          if Not(Assigned(FormTicketVta)) then
            FormTicketVta:=TFormTicketVta.Create(Self);
          FormTicketVta.CajaPorDefecto:=dbcCtas.LookupSource.DataSet.FieldByName('ID_CUENTA_CAJA').Value;
          FormTicketVta.SucursalPorDefecto:= FormBuscadorTipoCpbte.Sucursal;
          FormTicketVta.Agregar.execute;
          FormTicketVta.DSBase.DataSet.FieldByName('FECHAVTA').AsDateTime:=edFecha.Date;
          FormTicketVta.DSBase.DataSet.FieldByName('ID_TIPOCOMPROBANTE').Text:=IntToStr(FormBuscadorTipoCpbte.Id_Cpbte);
        end;
    end
  else
    showMessage(' No Hay caja Seleccioanda...')
end;

procedure TFormCajaResumen.btCompCtdoClick(Sender: TObject);
begin
  if (dbcCtas.KeyValue > -1 ) and (rgEstadosCaja.ItemIndex=0) Then
    begin
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
      FormBuscadorTipoCpbte.TipoCpbte1:='FO';
      FormBuscadorTipoCpbte.TipoCpbte2:='';
      FormBuscadorTipoCpbte.TipoCpbte3:='';
      FormBuscadorTipoCpbte.CV        :='C';
      FormBuscadorTipoCpbte.Sucursal  := SucursalPorDefecto;
      FormBuscadorTipoCpbte.DiscriminaIVA:= '*';
      FormBuscadorTipoCpbte.Position:=poOwnerFormCenter;
      FormBuscadorTipoCpbte.ShowModal;
      if FormBuscadorTipoCpbte.ModalResult=mrOk Then
        begin
          if Not(Assigned(FormCompraCtdo_2)) then
            FormCompraCtdo_2:=TFormCompraCtdo_2.Create(Self);
          FormCompraCtdo_2.Show;
          FormCompraCtdo_2.CajaPorDefecto:=dbcCtas.LookupSource.DataSet.FieldByName('ID_CUENTA_CAJA').Value;
          FormCompraCtdo_2.SucursalPorDefecto:= FormBuscadorTipoCpbte.Sucursal;
          FormCompraCtdo_2.Agregar.execute;
          FormCompraCtdo_2.DSBase.DataSet.FieldByName('FECHACOMPRA').AsDateTime:=edFecha.Date;
          FormCompraCtdo_2.DSBase.DataSet.FieldByName('ID_TIPOCOMPROBANTE').Text:=IntToStr(FormBuscadorTipoCpbte.Id_Cpbte);

        end;

    end
  else
    showMessage(' No Hay caja Seleccioanda...')
end;

procedure TFormCajaResumen.btDepoClick(Sender: TObject);
begin
if (dbcCtas.KeyValue > -1 ) and (rgEstadosCaja.ItemIndex=0) Then
    begin
      if Not(Assigned(FormDepositosBancarios)) then
        FormDepositosBancarios:=TFormDepositosBancarios.Create(Self);
      FormDepositosBancarios.Show;
      FormDepositosBancarios.CajaPorDefecto:=dbcCtas.LookupSource.DataSet.FieldByName('ID_CUENTA_CAJA').Value;
      FormDepositosBancarios.Agregar.execute;
      FormDepositosBancarios.DSBase.DataSet.FieldByName('FECHA').AsDateTime:=edFecha.Date;
    end
  else
    showMessage(' No Hay caja Seleccioanda...')
end;

procedure TFormCajaResumen.btOPagoClick(Sender: TObject);
begin
 if (dbcCtas.KeyValue > -1 ) and (rgEstadosCaja.ItemIndex=0) Then
    begin
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
      FormBuscadorTipoCpbte.TipoCpbte1:='OP';
      FormBuscadorTipoCpbte.TipoCpbte2:='';
      FormBuscadorTipoCpbte.TipoCpbte3:='';
      FormBuscadorTipoCpbte.CV        :='C';
      FormBuscadorTipoCpbte.Sucursal  := SucursalPorDefecto;
      FormBuscadorTipoCpbte.DiscriminaIVA:= '*';
      FormBuscadorTipoCpbte.Position:=poOwnerFormCenter;
      FormBuscadorTipoCpbte.ShowModal;
      if FormBuscadorTipoCpbte.ModalResult=mrOk Then
        begin
          if Not(Assigned(FormOPago_2)) then
            FormOPago_2:=TFormOPago_2.Create(Self);
          FormOPago_2.Show;
          FormOPago_2.CajaPorDefecto:=dbcCtas.LookupSource.DataSet.FieldByName('ID_CUENTA_CAJA').Value;
          FormOPago_2.SucursalPorDefecto:= FormBuscadorTipoCpbte.Sucursal;
          FormOPago_2.Agregar.execute;
          FormOPago_2.DSBase.DataSet.FieldByName('FECHA').AsDateTime:=edFecha.Date;
          FormOPago_2.DSBase.DataSet.FieldByName('ID_TIPOCOMPROBANTE').Text:=IntToStr(FormBuscadorTipoCpbte.Id_Cpbte);

        end;
    end
  else
    showMessage(' No Hay caja Seleccioanda...')
end;

procedure TFormCajaResumen.btPersonalClick(Sender: TObject);
begin
if (dbcCtas.KeyValue > -1 ) and (rgEstadosCaja.ItemIndex=0) Then
    begin
      if Not(Assigned(FormAdelantosSueldo)) then
        FormAdelantosSueldo:=TFormAdelantosSueldo.Create(Self);
      FormAdelantosSueldo.Show;
      FormAdelantosSueldo.CajaPorDefecto:=dbcCtas.LookupSource.DataSet.FieldByName('ID_CUENTA_CAJA').Value;
      FormAdelantosSueldo.Agregar.execute;
      FormAdelantosSueldo.DSBase.DataSet.FieldByName('FECHA').AsDateTime:=edFecha.Date;
    end
  else
    showMessage(' No Hay caja Seleccioanda...')
end;

procedure TFormCajaResumen.btEgresosClick(Sender: TObject);
begin
  if (dbcCtas.KeyValue > -1 ) and (rgEstadosCaja.ItemIndex=0) Then
    begin
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
      FormBuscadorTipoCpbte.TipoCpbte1:='EC';
      FormBuscadorTipoCpbte.TipoCpbte2:='';
      FormBuscadorTipoCpbte.TipoCpbte3:='';
      FormBuscadorTipoCpbte.CV        :='C';
      FormBuscadorTipoCpbte.Sucursal  := SucursalPorDefecto;
      FormBuscadorTipoCpbte.DiscriminaIVA:= '*';
      FormBuscadorTipoCpbte.Position:=poOwnerFormCenter;
      FormBuscadorTipoCpbte.ShowModal;
      if FormBuscadorTipoCpbte.ModalResult=mrOk Then
        begin
          if Not(Assigned(FormEgresoCaja)) then
            FormEgresoCaja:=TFormEgresoCaja.Create(Self);
          FormEgresoCaja.Show;
          FormEgresoCaja.CajaPorDefecto    := dbcCtas.LookupSource.DataSet.FieldByName('ID_CUENTA_CAJA').Value;
          FormEgresoCaja.SucursalPorDefecto:= FormBuscadorTipoCpbte.Sucursal;
          FormEgresoCaja.Agregar.execute;
          FormEgresoCaja.DSBase.DataSet.FieldByName('FECHA').AsDateTime:=edFecha.Date;
          FormEgresoCaja.DSBase.DataSet.FieldByName('ID_TIPOCOMPROBANTE').Text:=IntToStr(FormBuscadorTipoCpbte.Id_Cpbte);
        end;
    end
  else
    showMessage(' No Hay caja Seleccioanda...')
end;

procedure TFormCajaResumen.btIngCajaClick(Sender: TObject);
begin
  if (dbcCtas.KeyValue > -1 ) and (rgEstadosCaja.ItemIndex=0) Then
    begin
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
      FormBuscadorTipoCpbte.TipoCpbte1:='IC';
      FormBuscadorTipoCpbte.TipoCpbte2:='';
      FormBuscadorTipoCpbte.TipoCpbte3:='';
      FormBuscadorTipoCpbte.CV        :='V';
      FormBuscadorTipoCpbte.Sucursal  := SucursalPorDefecto;
      FormBuscadorTipoCpbte.DiscriminaIVA:= '*';
      FormBuscadorTipoCpbte.Position:=poOwnerFormCenter;
      FormBuscadorTipoCpbte.ShowModal;
      if FormBuscadorTipoCpbte.ModalResult=mrOk Then
        begin
          if Not(Assigned(FormIngresoCaja)) then
            FormIngresoCaja:=TFormIngresoCaja.Create(Self);
          FormIngresoCaja.Show;
          FormIngresoCaja.CajaPorDefecto:=dbcCtas.LookupSource.DataSet.FieldByName('ID_CUENTA_CAJA').Value;
          FormIngresoCaja.SucursalPorDefecto:= FormBuscadorTipoCpbte.Sucursal;
          FormIngresoCaja.Agregar.execute;
          FormIngresoCaja.DSBase.DataSet.FieldByName('FECHA').AsDateTime:=edFecha.Date;
          FormIngresoCaja.DSBase.DataSet.FieldByName('ID_TIPOCOMPROBANTE').Text:=IntToStr(FormBuscadorTipoCpbte.Id_Cpbte);
        end
    end
  else
    showMessage(' No Hay caja Seleccioanda...')
end;

procedure TFormCajaResumen.btNcClick(Sender: TObject);
var
  SucursalComprobante,
  IDComprobante      :Integer;
begin
  if (dbcCtas.KeyValue > -1 ) and (rgEstadosCaja.ItemIndex=0) Then
    begin

      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
      FormBuscadorTipoCpbte.TipoCpbte1:='NC';
      FormBuscadorTipoCpbte.TipoCpbte2:='';
      FormBuscadorTipoCpbte.TipoCpbte3:='';
      FormBuscadorTipoCpbte.CV        :='V';
      FormBuscadorTipoCpbte.Sucursal  :=  SucursalPorDefecto;
      FormBuscadorTipoCpbte.DiscriminaIVA:= '*';
      FormBuscadorTipoCpbte.ShowModal;
      SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
      IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;

      if FormBuscadorTipoCpbte.ModalResult=mrOk then
        begin
          if Not(Assigned(FormCpbte_2)) then
            FormCpbte_2:=TFormCpbte_2.Create(Self);
          FormCpbte_2.Show;
          FormCpbte_2.CajaPorDefecto         := dbcCtas.LookupSource.DataSet.FieldByName('ID_CUENTA_CAJA').Value;
          FormCpbte_2.SucursalPorDefecto     := SucursalComprobante;
          FormCpbte_2.Agregar.execute;
          FormCpbte_2.DSBase.DataSet.FieldByName('FECHAVTA').AsDateTime          := edFecha.Date;
          FormCpbte_2.DSBase.DataSet.FieldByName('ID_TIPOCOMPROBANTE').AsInteger := IDComprobante;
          FormCpbte_2.DSBase.DataSet.FieldByName('NC_CONTADO').AsString          := 'S';

        end;
    end
  else
    showMessage(' No Hay caja Seleccioanda...')
end;

procedure TFormCajaResumen.CDSChe3RecibidosAfterOpen(DataSet: TDataSet);
begin
  edTotalChe3.Value :=0;
  if Not(QChe3Recibidos.IsEmpty) then
    begin
      QChe3Recibidos.First;
      while Not(QChe3Recibidos.Eof) do
        begin
          edTotalChe3.Value := edTotalChe3.Value + QChe3RecibidosIMPORTE.AsFloat;
          QChe3Recibidos.Next;
        end;
    end;


end;

procedure TFormCajaResumen.CDSMovTCVentaAfterOpen(DataSet: TDataSet);
begin
  edTotalTarjetas.Value :=0;
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSMovTCVenta,True);
  CDSClone.First;
  while Not(CDSClone.Eof) do
    begin
      edTotalTarjetas.Value :=edTotalTarjetas.Value+CDSClone.FieldByName('IMPORTE').AsFloat;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);
end;

procedure TFormCajaResumen.dbcCtasClick(Sender: TObject);
begin
   Recuperar(dbcCtas.LookupSource.DataSet.FieldByName('ID_CAJA').Value);
end;

procedure TFormCajaResumen.dbgAcumualdosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if (QAcumuladosTIPO_OPERACION.Value='I') Then
   dbgAcumualdos.canvas.Font.color := clBlue
  else
   dbgAcumualdos.canvas.Font.color := clRed;
  dbgAcumualdos.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormCajaResumen.dbgEgresosDblClick(Sender: TObject);
begin
  if CDSCajaDetEgresosTIPO_CPBTE.Value='EC' then
    begin
      IF NOT (Assigned(FormEgresoCaja)) THEN
        FormEgresoCaja:= TFormEgresoCaja.Create(self);
      FormEgresoCaja.DatoNew    := CDSCajaDetEgresosID_COMPROBANTE.AsString;
      FormEgresoCaja.TipoCpbte  := CDSCajaDetEgresosTIPO_CPBTE.AsString;
      FormEgresoCaja.Recuperar.Execute;
      FormEgresoCaja.Show;
    end
  else
    if CDSCajaDetEgresosTIPO_CPBTE.Value='OP' then
      begin
        IF NOT (Assigned(FormOPago_2)) THEN
          FormOPago_2:= TFormOPago_2.Create(self);
        FormOPago_2.DatoNew    := CDSCajaDetEgresosID_COMPROBANTE.AsString;
        FormOPago_2.TipoCpbte  := CDSCajaDetEgresosTIPO_CPBTE.AsString;
        FormOPago_2.Recuperar.Execute;
        FormOPago_2.Show;
      end
    else
     if CDSCajaDetEgresosTIPO_CPBTE.Value='FO' then
        begin
          IF NOT (Assigned(FormCompraCtdo_2)) THEN
            FormCompraCtdo_2:= TFormCompraCtdo_2.Create(self);
          FormCompraCtdo_2.DatoNew    := CDSCajaDetEgresosID_COMPROBANTE.AsString;
          FormCompraCtdo_2.TipoCpbte  := CDSCajaDetEgresosTIPO_CPBTE.AsString;
          FormCompraCtdo_2.Recuperar.Execute;
          FormCompraCtdo_2.Show;
        end
     else
       if CDSCajaDetEgresosTIPO_CPBTE.Value='DP' then
          begin
            IF NOT (Assigned(FormDepositosBancarios)) THEN
              FormDepositosBancarios:= TFormDepositosBancarios.Create(self);
            FormDepositosBancarios.DatoNew    := CDSCajaDetEgresosID_COMPROBANTE.AsString;
            FormDepositosBancarios.TipoCpbte  := CDSCajaDetEgresosTIPO_CPBTE.AsString;
            FormDepositosBancarios.Recuperar.Execute;
            FormDepositosBancarios.Show;
        end
      else
        if CDSCajaDetEgresosTIPO_CPBTE.Value='NC' then
          begin
            IF NOT (Assigned(FormCpbte_2)) THEN
              FormCpbte_2:= TFormCpbte_2.Create(self);
            FormCpbte_2.DatoNew    := CDSCajaDetEgresosID_COMPROBANTE.AsString;
            FormCpbte_2.TipoCpbte  := CDSCajaDetEgresosTIPO_CPBTE.AsString;
            FormCpbte_2.Recuperar.Execute;
            FormCpbte_2.Show;
        end;



end;

procedure TFormCajaResumen.dbgIngresosDblClick(Sender: TObject);
begin
    begin
      if CDSCajaDetIngresosTIPO_CPBTE.Value='RC' then
        begin
          IF NOT (Assigned(FormRecibo_2)) THEN
            FormRecibo_2:= TFormRecibo_2.Create(self);
          FormRecibo_2.DatoNew    := CDSCajaDetIngresosID_COMPROBANTE.AsString;
          FormRecibo_2.TipoCpbte  := CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormRecibo_2.Recuperar.Execute;
          FormRecibo_2.Show;
        end;
      if CDSCajaDetIngresosTIPO_CPBTE.Value='FO' then
        begin
          IF NOT (Assigned(FormCpbteCtdo_2)) THEN
            FormCpbteCtdo_2   := TFormCpbteCtdo_2.Create(self);
          FormCpbteCtdo_2.DatoNew   := CDSCajaDetIngresosID_COMPROBANTE.AsString;
          FormCpbteCtdo_2.TipoCpbte := CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormCpbteCtdo_2.Recuperar.Execute;
          FormCpbteCtdo_2.Show;
        end;
      if CDSCajaDetIngresosTIPO_CPBTE.Value='TK' then
        begin
          IF NOT (Assigned(FormTicketVta)) THEN
            FormTicketVta   := TFormTicketVta.Create(self);
          FormTicketVta.DatoNew   := CDSCajaDetIngresosID_COMPROBANTE.AsString;
          FormTicketVta.TipoCpbte := CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormTicketVta.Recuperar.Execute;
          FormTicketVta.Show;
        end;

      if CDSCajaDetIngresosTIPO_CPBTE.Value='CX' then
        begin
          IF NOT (Assigned(FormTransferenciaEfectivo)) THEN
            FormTransferenciaEfectivo   := TFormTransferenciaEfectivo.Create(self);
          FormTransferenciaEfectivo.DatoNew   := CDSCajaDetIngresosID_COMPROBANTE.AsString;
          FormTransferenciaEfectivo.TipoCpbte := CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormTransferenciaEfectivo.Recuperar.Execute;
          FormTransferenciaEfectivo.Show;
        end;
      if CDSCajaDetIngresosTIPO_CPBTE.Value='QX' then
        begin
          IF NOT (Assigned(FormTransferenciaChe3)) THEN
            FormTransferenciaChe3   := TFormTransferenciaChe3.Create(self);
          FormTransferenciaChe3.DatoNew   := CDSCajaDetIngresosID_COMPROBANTE.AsString;
          FormTransferenciaChe3.TipoCpbte := CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormTransferenciaChe3.Recuperar.Execute;
          FormTransferenciaChe3.Show;
        end;
      if CDSCajaDetIngresosTIPO_CPBTE.Value='XP' then
        begin
          IF NOT (Assigned(FormAnulacionOPago)) THEN
            FormAnulacionOPago   := TFormAnulacionOPago.Create(self);
          FormAnulacionOPago.DatoNew   := CDSCajaDetIngresosID_COMPROBANTE.AsString;
          FormAnulacionOPago.TipoCpbte := CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormAnulacionOPago.Recuperar.Execute;
          FormAnulacionOPago.Show;
        end;
      if CDSCajaDetIngresosTIPO_CPBTE.Value='IC' then
        begin
          IF NOT (Assigned(FormIngresoCaja)) THEN
            FormIngresoCaja   := TFormIngresoCaja.Create(self);
          FormIngresoCaja.DatoNew   := CDSCajaDetIngresosID_COMPROBANTE.AsString;
          FormIngresoCaja.TipoCpbte := CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormIngresoCaja.Recuperar.Execute;
          FormIngresoCaja.Show;
        end;

    end

end;

procedure TFormCajaResumen.edFechaChange(Sender: TObject);
begin
  Recuperar(dbcCtas.LookupSource.DataSet.FieldByName('ID_CAJA').Value);
end;

procedure TFormCajaResumen.FormActivate(Sender: TObject);
begin
  Recuperar(dbcCtas.LookupSource.DataSet.FieldByName('ID_CAJA').Value);
 // Recuperar(dbcCtas.LookupSource.DataSet.FieldByName('ID_CAJA').Value);
end;

procedure TFormCajaResumen.FormClose(Sender: TObject; var Action: TCloseAction);
var ArchivoIni   :TIniFile;
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  ArchivoIni.WriteString('CajaResumen', 'Reporte',dbeReporte.Text);
  ArchivoIni.Free;

  Action:=caFree;
end;

procedure TFormCajaResumen.FormCreate(Sender: TObject);
var
ArchivoIni   :TIniFile;
begin
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
   //Busco en donde estoy parado dentro del dir. y levanto el ini
  ArchivoIni           := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  SucursalPorDefecto   := ArchivoIni.ReadInteger('Sucursal', 'Sucursal',1);
  dbeReporte.Text      := ArchivoIni.ReadString('CajaResumen', 'Reporte','');
  ArchivoIni.Free;
  pcCaja.ActivePageIndex    := 0;
  pcValores.ActivePageIndex := 0;

  OpenDialog.InitialDir  := DMMain_FD.PathReportesLst;
   //dbgAcumualdos.Options  Self :=False;
end;

procedure TFormCajaResumen.FormDestroy(Sender: TObject);
begin
  FormCajaResumen:=nil;
end;

procedure TFormCajaResumen.FormResize(Sender: TObject);
begin
 if (Width>1006)
    then width:=1006;
  if (Width<1006)
    then width:=10061;
end;

procedure TFormCajaResumen.FormShow(Sender: TObject);
begin
  if ((DMMain_FD.FiltraCajaUser) and (DMMain_FD.ModificaCaja)) then
    begin
      QCajas.Close;
      QCajas.SQL.TExt:='select ca.*, cta.Nombre as MuestraCtaCaja from Caja_Cab ca '+
                            'join cuenta_caja cta on cta.id_cuenta=ca.id_cuenta_caja '+
                            'where ( ca.estado = :estado or :estado = 2 ) and (ca.id_cuenta_caja in (select u.caja from cajausuario u where u.usuario = :usuario)) and (ca.Estado = 0) '+
                            'order by ca.id_caja,ca.estado,ca.fecha_incio desc';
      QCajas.ParamByName('usuario').Value       := DMMain_FD.UsuarioActivo;
      QCajas.Params.ParamByName('Estado').Value := rgEstadosCaja.ItemIndex;
      QCajas.Open;
    end
  else
    begin
      QCajas.Close;
      QCajas.ParamByName('Estado').Value := rgEstadosCaja.ItemIndex;
      QCajas.Open;
    end;

  edFecha.Date     :=date;
  dbcCtas.KeyValue :=DMMain_FD.CajaSeleccionada;
  if dbcCtas.LookupSource.DataSet.FieldByName('ID_CAJA').AsString<>'' then
    Recuperar(dbcCtas.LookupSource.DataSet.FieldByName('ID_CAJA').Value);
end;

procedure TFormCajaResumen.JvGradient7DblClick(Sender: TObject);
begin
  frxReport.DesignReport(True);
end;

procedure TFormCajaResumen.QChe3RecibidosAfterOpen(DataSet: TDataSet);
begin
 edTotalChe3.Value :=0;
  if Not(QChe3Recibidos.IsEmpty) then
    begin
      QChe3Recibidos.First;
      while Not(QChe3Recibidos.Eof) do
        begin
          edTotalChe3.Value := edTotalChe3.Value + QChe3RecibidosIMPORTE.AsFloat;
          QChe3Recibidos.Next;
        end;
    end;
end;

procedure TFormCajaResumen.QEfectivoAfterOpen(DataSet: TDataSet);
begin
  edDebeEfectivo.Value :=0;
  edHaberEfectivo.Value:=0;
  QEfectivo.First;
  QEfectivo.DisableControls;
  while Not(QEfectivo.Eof) do
    begin
      edDebeEfectivo.Value :=edDebeEfectivo.Value + QEfectivo.FieldByName('DEBE').AsFloat;
      edHaberEfectivo.Value:=edHaberEfectivo.Value+ QEfectivo.FieldByName('HABER').AsFloat;
      QEfectivo.Next;
    end;
  QEfectivo.First;
  QEfectivo.EnableControls;
  edTotalEfectivo.Value := edDebeEfectivo.Value - edHaberEfectivo.Value;
end;

end.
