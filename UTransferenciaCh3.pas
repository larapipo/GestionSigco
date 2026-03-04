unit UTransferenciaCh3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBClient, Provider, Data.FMTBcd, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxNavigator, Data.DB, cxDBData, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, frxClass, frxDMPExport, frxDBSet, IBGenerator, Vcl.ComCtrls,
  JvToolEdit, JvDBControls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, JvExMask, JvBaseEdits, JvLabel, JvAppStorage, JvAppIniStorage,
  Data.SqlExpr, System.Actions, Vcl.ActnList, JvExControls, JvGradient, Vcl.Buttons,
  Vcl.ToolWin, Vcl.ExtCtrls, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  CompBuscador, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList,
  dxSkinWXI, frCoreClasses, Vcl.Menus;

type
  TFormTransferenciaChe3 = class(TFormABMBase)
    DSPChe3: TDataSetProvider;
    BuscarCaja: TAction;
    DSPCajaCab: TDataSetProvider;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    Listar: TAction;
    DSChe3: TDataSource;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SellAll: TAction;
    Unselectall: TAction;
    DSPCajaMov: TDataSetProvider;
    IBGId_Caja_Mov: TIBGenerator;
    Panel2: TPanel;
    dbtMuestraComprobante: TDBText;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeLetra: TDBEdit;
    dbeSucursal: TDBEdit;
    DSPTrans: TDataSetProvider;
    edMuestraCajaOrigen: TDBEdit;
    edMuestraCajaDestino: TDBEdit;
    BuscarSucursal: TAction;
    BuscarTipoCpbte: TAction;
    DSPSucrusal: TDataSetProvider;
    DSPTransDetalle: TDataSetProvider;
    DSTransDetalle: TDataSource;
    ibg_Id_TransDet: TIBGenerator;
    Label1: TLabel;
    Label2: TLabel;
    dbeImporte: TDBEdit;
    BitBtn2: TBitBtn;
    Imprimir: TAction;
    frTransferencia: TfrxReport;
    frDBTransDet: TfrxDBDataset;
    DSPEmpresa: TDataSetProvider;
    DSMov: TDataSource;
    dbgMov: TDBGrid;
    dbeObs: TDBEdit;
    ibgIdTransferencia: TIBGenerator;
    frDBEmpresa: TfrxDBDataset;
    frDBTarnsCab: TfrxDBDataset;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    CDSEmpresa: TClientDataSet;
    CDSEmpresaNombre: TStringField;
    CDSEmpresaActividad: TStringField;
    CDSEmpresaDireccion: TStringField;
    CDSEmpresaLocalidad: TStringField;
    CDSEmpresaCorreo: TStringField;
    CDSEmpresaTelefono1: TStringField;
    CDSEmpresaTelefono2: TStringField;
    CDSEmpresaLogo: TGraphicField;
    CDSEmpresaCuit: TStringField;
    QChe3: TFDQuery;
    QChe3ID_CHEQUE_TER: TIntegerField;
    QChe3ID_CAJA: TIntegerField;
    QChe3ID_MOV_CAJA: TIntegerField;
    QChe3ID_FPAGO: TIntegerField;
    QChe3ID_BANCO: TIntegerField;
    QChe3NUMERO: TIntegerField;
    QChe3FECHA_EMISION: TSQLTimeStampField;
    QChe3FECHA_COBRO: TSQLTimeStampField;
    QChe3FECHA_ENTRADA: TSQLTimeStampField;
    QChe3FECHA_SALIDA: TSQLTimeStampField;
    QChe3ORIGEN: TStringField;
    QChe3DESTINO: TStringField;
    QChe3UNIDADES: TFloatField;
    QChe3IMPORTE: TFloatField;
    QChe3DISPONIBLE: TStringField;
    QChe3FIRMANTE: TStringField;
    QChe3COTIZACION: TFloatField;
    QChe3ID_MOV_CAJA_EGRESOS: TIntegerField;
    QChe3ID_CUENTA_CAJA: TIntegerField;
    QChe3ID_CUENTA_BCO_DEPOSITADO: TIntegerField;
    QChe3MONEDA: TIntegerField;
    QChe3SALDO_UNIDADES: TFloatField;
    QChe3SALDO_IMPORTE: TFloatField;
    QChe3CUIT: TStringField;
    QChe3SUCURSAL_BCO: TStringField;
    QChe3NRO_CTA: TStringField;
    QChe3MUESTRABANCO: TStringField;
    CDSChe3: TClientDataSet;
    CDSChe3Selected: TBooleanField;
    CDSChe3ID_CHEQUE_TER: TIntegerField;
    CDSChe3ID_CAJA: TIntegerField;
    CDSChe3ID_MOV_CAJA: TIntegerField;
    CDSChe3ID_FPAGO: TIntegerField;
    CDSChe3ID_BANCO: TIntegerField;
    CDSChe3NUMERO: TIntegerField;
    CDSChe3FECHA_EMISION: TSQLTimeStampField;
    CDSChe3FECHA_COBRO: TSQLTimeStampField;
    CDSChe3FECHA_ENTRADA: TSQLTimeStampField;
    CDSChe3FECHA_SALIDA: TSQLTimeStampField;
    CDSChe3ORIGEN: TStringField;
    CDSChe3DESTINO: TStringField;
    CDSChe3UNIDADES: TFloatField;
    CDSChe3IMPORTE: TFloatField;
    CDSChe3DISPONIBLE: TStringField;
    CDSChe3FIRMANTE: TStringField;
    CDSChe3COTIZACION: TFloatField;
    CDSChe3ID_MOV_CAJA_EGRESOS: TIntegerField;
    CDSChe3ID_CUENTA_CAJA: TIntegerField;
    CDSChe3ID_CUENTA_BCO_DEPOSITADO: TIntegerField;
    CDSChe3MONEDA: TIntegerField;
    CDSChe3SALDO_UNIDADES: TFloatField;
    CDSChe3SALDO_IMPORTE: TFloatField;
    CDSChe3CUIT: TStringField;
    CDSChe3SUCURSAL_BCO: TStringField;
    CDSChe3NRO_CTA: TStringField;
    CDSChe3MUESTRABANCO: TStringField;
    QCajaMov: TFDQuery;
    QCajaMovID_MOV_CAJA: TIntegerField;
    QCajaMovID_CAJA: TIntegerField;
    QCajaMovFECHA_CAJA: TSQLTimeStampField;
    QCajaMovFECHA_OPERACION: TSQLTimeStampField;
    QCajaMovTIPO_OPERACION: TStringField;
    QCajaMovTIPO_COMPROB: TStringField;
    QCajaMovCLASE_COMPROB: TStringField;
    QCajaMovID_COMPROBANTE: TIntegerField;
    QCajaMovNRO_COMPROBANTE: TStringField;
    QCajaMovHABER: TFloatField;
    QCajaMovDEBE: TFloatField;
    QCajaMovID_TPAGO: TIntegerField;
    QCajaMovID_FPAGO: TIntegerField;
    QCajaMovUNIDADES: TFloatField;
    QCajaMovCOTIZACION: TFloatField;
    QCajaMovID_CUENTA_CAJA: TIntegerField;
    QCajaMovMONEDA: TIntegerField;
    QCajaMovMUESTRAFORMAPAGO: TStringField;
    CDSCajaMov: TClientDataSet;
    CDSCajaMovID_MOV_CAJA: TIntegerField;
    CDSCajaMovID_CAJA: TIntegerField;
    CDSCajaMovFECHA_CAJA: TSQLTimeStampField;
    CDSCajaMovFECHA_OPERACION: TSQLTimeStampField;
    CDSCajaMovTIPO_OPERACION: TStringField;
    CDSCajaMovTIPO_COMPROB: TStringField;
    CDSCajaMovCLASE_COMPROB: TStringField;
    CDSCajaMovID_COMPROBANTE: TIntegerField;
    CDSCajaMovNRO_COMPROBANTE: TStringField;
    CDSCajaMovHABER: TFloatField;
    CDSCajaMovDEBE: TFloatField;
    CDSCajaMovID_TPAGO: TIntegerField;
    CDSCajaMovID_FPAGO: TIntegerField;
    CDSCajaMovUNIDADES: TFloatField;
    CDSCajaMovCOTIZACION: TFloatField;
    CDSCajaMovID_CUENTA_CAJA: TIntegerField;
    CDSCajaMovMONEDA: TIntegerField;
    CDSCajaMovMUESTRAFORMAPAGO: TStringField;
    DSCajaMov: TDataSource;
    QTrans: TFDQuery;
    QTransID: TIntegerField;
    QTransFECHA: TSQLTimeStampField;
    QTransTIPOCPBTE: TStringField;
    QTransCLASECPBTE: TStringField;
    QTransSUCURSAL: TIntegerField;
    QTransLETRA: TStringField;
    QTransSUC: TStringField;
    QTransNUMERO: TStringField;
    QTransCAJA_ORIGEN: TIntegerField;
    QTransCAJA_DESTINO: TIntegerField;
    QTransIMPORTE: TFloatField;
    QTransTIPO_TRANSFERENCIA: TStringField;
    QTransNROCPBTE: TStringField;
    QTransOBSERVACIONES: TStringField;
    QTransUSUARIO: TStringField;
    QTransESTADO: TStringField;
    QTransFECHA_HORA: TSQLTimeStampField;
    QTransMUESTRASUCURSAL: TStringField;
    QTransMUESTRACAJAORIGEN: TStringField;
    QTransMUESTRACAJADESTINO: TStringField;
    QTransMUESTRACOMPROBANTE: TStringField;
    QTransID_TIPOCOMPROBANTE: TIntegerField;
    CDSTrans: TClientDataSet;
    CDSTransID: TIntegerField;
    CDSTransFECHA: TSQLTimeStampField;
    CDSTransTIPOCPBTE: TStringField;
    CDSTransCLASECPBTE: TStringField;
    CDSTransSUCURSAL: TIntegerField;
    CDSTransLETRA: TStringField;
    CDSTransSUC: TStringField;
    CDSTransNUMERO: TStringField;
    CDSTransCAJA_ORIGEN: TIntegerField;
    CDSTransCAJA_DESTINO: TIntegerField;
    CDSTransIMPORTE: TFloatField;
    CDSTransTIPO_TRANSFERENCIA: TStringField;
    CDSTransNROCPBTE: TStringField;
    CDSTransOBSERVACIONES: TStringField;
    CDSTransUSUARIO: TStringField;
    CDSTransESTADO: TStringField;
    CDSTransFECHA_HORA: TSQLTimeStampField;
    CDSTransMUESTRASUCURSAL: TStringField;
    CDSTransMUESTRACAJAORIGEN: TStringField;
    CDSTransMUESTRACAJADESTINO: TStringField;
    CDSTransMUESTRACOMPROBANTE: TStringField;
    CDSTransID_TIPOCOMPROBANTE: TIntegerField;
    QTransDetalle: TFDQuery;
    QTransDetalleID: TIntegerField;
    QTransDetalleID_TRANSFERENCIA: TIntegerField;
    QTransDetalleRENGLON: TIntegerField;
    QTransDetalleID_CHEQUE: TIntegerField;
    QTransDetalleNUMERO: TIntegerField;
    QTransDetalleID_BANCO: TIntegerField;
    QTransDetalleORIGEN: TStringField;
    QTransDetalleFECHA: TSQLTimeStampField;
    QTransDetalleIMPORTE: TFloatField;
    QTransDetalleCTA_CAJA_ORIGEN: TIntegerField;
    QTransDetalleCTA_CAJA_DESTINO: TIntegerField;
    QTransDetalleMUESTRABANCO: TStringField;
    CDSTransDetalle: TClientDataSet;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    QComprob: TFDQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QComprobREPORTE: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobIMPRIME: TStringField;
    QBuscaComprob: TFDQuery;
    CDSBuscaComprob: TClientDataSet;
    DSPBuscaComprob: TDataSetProvider;
    CDSBuscaComprobID_COMPROBANTE: TIntegerField;
    CDSBuscaComprobTIPO_COMPROB: TStringField;
    CDSBuscaComprobCLASE_COMPROB: TStringField;
    CDSBuscaComprobDENOMINACION: TStringField;
    CDSBuscaComprobSUCURSAL: TIntegerField;
    CDSBuscaComprobLETRA: TStringField;
    CDSBuscaComprobPREFIJO: TStringField;
    CDSBuscaComprobNUMERARCION_PROPIA: TStringField;
    CDSBuscaComprobNUMERO: TStringField;
    CDSBuscaComprobTOMA_NRO_DE: TIntegerField;
    CDSBuscaComprobAFECTA_IVA: TStringField;
    CDSBuscaComprobAFECTA_CC: TStringField;
    CDSBuscaComprobDESGLOZA_IVA: TStringField;
    CDSBuscaComprobCOMPRA_VENTA: TStringField;
    CDSBuscaComprobCOPIAS: TIntegerField;
    CDSBuscaComprobREPORTE: TStringField;
    CDSBuscaComprobIMPRIME: TStringField;
    CDSBuscaComprobFISCAL: TStringField;
    CDSBuscaComprobNOMBREIMPRESORA: TStringField;
    CDSBuscaComprobPENDIENTEIMPRESION: TStringField;
    CDSBuscaComprobLINEAS_DETALLE: TSmallintField;
    CDSBuscaComprobCALCULA_IVA_ARTICULOS: TStringField;
    CDSBuscaComprobDEFECTO: TStringField;
    RxLabel2: TJvLabel;
    RxLabel59: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel8: TJvLabel;
    RxDBESucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    ceCajaOrigen: TJvDBComboEdit;
    ceCajaDestino: TJvDBComboEdit;
    dbeFecha: TJvDBDateEdit;
    edTotal: TJvCalcEdit;
    CDSMov: TClientDataSet;
    DSPMov: TDataSetProvider;
    QMov: TFDQuery;
    CDSMovID_MOV_CAJA: TIntegerField;
    CDSMovID_CAJA: TIntegerField;
    CDSMovFECHA_CAJA: TSQLTimeStampField;
    CDSMovFECHA_OPERACION: TSQLTimeStampField;
    CDSMovTIPO_OPERACION: TStringField;
    CDSMovTIPO_COMPROB: TStringField;
    CDSMovCLASE_COMPROB: TStringField;
    CDSMovID_COMPROBANTE: TIntegerField;
    CDSMovNRO_COMPROBANTE: TStringField;
    CDSMovHABER: TFloatField;
    CDSMovDEBE: TFloatField;
    CDSMovID_TPAGO: TIntegerField;
    CDSMovID_FPAGO: TIntegerField;
    CDSMovUNIDADES: TFloatField;
    CDSMovCOTIZACION: TFloatField;
    CDSMovID_CUENTA_CAJA: TIntegerField;
    CDSMovMONEDA: TIntegerField;
    CDSMovMUESTRACAJA: TStringField;
    CDSMovNUMEROCAJA: TIntegerField;
    CDSCajaCab: TClientDataSet;
    CDSCajaCabID_CAJA: TIntegerField;
    CDSCajaCabID_CUENTA_CAJA: TIntegerField;
    CDSCajaCabFECHA_INCIO: TSQLTimeStampField;
    CDSCajaCabFECHA_CIERRE: TSQLTimeStampField;
    CDSCajaCabSALDO_INCIAL: TFloatField;
    CDSCajaCabESTADO: TIntegerField;
    CDSCajaCabOBS: TMemoField;
    CDSCajaCabNUMEROCAJA: TIntegerField;
    CDSCajaCabMUESTRACTACAJA: TStringField;
    CDSBuscaCaja: TClientDataSet;
    DSPBuscaCaja: TDataSetProvider;
    QBuscaCaja: TFDQuery;
    QBuscaCajaID_CAJA: TIntegerField;
    QBuscaCajaID_CUENTA_CAJA: TIntegerField;
    QBuscaCajaFECHA_INCIO: TSQLTimeStampField;
    QBuscaCajaFECHA_CIERRE: TSQLTimeStampField;
    QBuscaCajaSALDO_INCIAL: TFloatField;
    QBuscaCajaESTADO: TIntegerField;
    QBuscaCajaOBS: TMemoField;
    QBuscaCajaNUMEROCAJA: TIntegerField;
    QBuscaCajaMUESTRACAJA: TStringField;
    CDSBuscaCajaID_CAJA: TIntegerField;
    CDSBuscaCajaID_CUENTA_CAJA: TIntegerField;
    CDSBuscaCajaFECHA_INCIO: TSQLTimeStampField;
    CDSBuscaCajaFECHA_CIERRE: TSQLTimeStampField;
    CDSBuscaCajaSALDO_INCIAL: TFloatField;
    CDSBuscaCajaESTADO: TIntegerField;
    CDSBuscaCajaOBS: TMemoField;
    CDSBuscaCajaNUMEROCAJA: TIntegerField;
    CDSBuscaCajaMUESTRACAJA: TStringField;
    QFPago: TFDQuery;
    CDSTransDetalleID: TIntegerField;
    CDSTransDetalleID_TRANSFERENCIA: TIntegerField;
    CDSTransDetalleRENGLON: TIntegerField;
    CDSTransDetalleID_CHEQUE: TIntegerField;
    CDSTransDetalleNUMERO: TIntegerField;
    CDSTransDetalleID_BANCO: TIntegerField;
    CDSTransDetalleORIGEN: TStringField;
    CDSTransDetalleFECHA: TSQLTimeStampField;
    CDSTransDetalleIMPORTE: TFloatField;
    CDSTransDetalleCTA_CAJA_ORIGEN: TIntegerField;
    CDSTransDetalleCTA_CAJA_DESTINO: TIntegerField;
    CDSTransDetalleMUESTRABANCO: TStringField;
    pgCheuqes: TPageControl;
    pagCheDisp: TTabSheet;
    pagCheTx: TTabSheet;
    BusquedaPorReferencia: TAction;
    cxGChe3DBTableView1: TcxGridDBTableView;
    cxGChe3Level1: TcxGridLevel;
    cxGChe3: TcxGrid;
    cxGChe3DBTableView1NUMERO: TcxGridDBColumn;
    cxGChe3DBTableView1ORIGEN: TcxGridDBColumn;
    cxGChe3DBTableView1IMPORTE: TcxGridDBColumn;
    cxGChe3DBTableView1FIRMANTE: TcxGridDBColumn;
    cxGChe3DBTableView1MUESTRABANCO: TcxGridDBColumn;
    cxGChe3DBTableView1Selected: TcxGridDBColumn;
    DBGDetalle: TDBGrid;
    ComBuscadorTipoCpbte: TComBuscador;
    ComBuscadorCaja: TComBuscador;
    ComBuscadorSucursal: TComBuscador;
    cxGChe3DBTableView1Column1: TcxGridDBColumn;
    QChe3E_CHECK: TStringField;
    QChe3ID_CTA_CAJA_BCO: TIntegerField;
    CDSChe3E_CHECK: TStringField;
    CDSChe3ID_CTA_CAJA_BCO: TIntegerField;
    QTransDetalleE_CHECK: TStringField;
    CDSTransDetalleE_CHECK: TStringField;
    DBText1: TDBText;
    CDSMovESTADO: TStringField;
    AplicarCajaDestino: TAction;
    PopupMenu1: TPopupMenu;
    pmCajaCh: TPopupMenu;
    AplicarCajaDestino1: TMenuItem;
    procedure BuscarCajaExecute(Sender: TObject);
    procedure ListarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SellAllExecute(Sender: TObject);
    procedure UnselectallExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ceCajaOrigenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceCajaDestinoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure CDSTransNewRecord(DataSet: TDataSet);
    procedure CDSTransID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure CDSTransSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSTransCAJA_ORIGENSetText(Sender: TField;
      const Text: String);
    procedure CDSTransCAJA_DESTINOSetText(Sender: TField;
      const Text: String);
    procedure CDSTransSUCSetText(Sender: TField; const Text: String);
    procedure CDSTransNUMEROSetText(Sender: TField; const Text: String);
    procedure FormCreate(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
//    procedure wwDBGChequesTitleButtonClick(Sender: TObject;
//      AFieldName: String);
    procedure SalirExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure BusquedaPorReferenciaExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure AplicarCajaDestinoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    id_caja_Origen  :Integer;
    id_caja_destino :Integer;
    id_cuenta_caja_Origen :Integer;
    id_Cuenta_caja_Destino:Integer;
    Fecha_caja_Origen :TDate;
    Fecha_Caja_destino:TDate;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    function AsignarCaja(dato,cual:Integer):Boolean;
    { Public declarations }
  end;

var
  FormTransferenciaChe3: TFormTransferenciaChe3;

PROCEDURE UltimoComprobante;

implementation

uses UBuscadorCpbte, UDMain_FD, DMBuscadoresForm,
  DMStoreProcedureForm, UBuscarPorNroReferencia;

{$R *.DFM}

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DMStoreProcedure,FormTransferenciaChe3 DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSTransLETRA.AsString <> '') AND (CDSTransCLASECPBTE.Value <>'') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSTransLETRA.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value    := CDSTransSUCURSAL.AsInteger;
          spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSTransCLASECPBTE.AsString;
          spNumeroCpbte.ParamByName('TipoComp').Value    := CDSTransTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
            BEGIN
              IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
              ELSE
                Numero := 1;
              CDSTransSUCSetText(CDSTransSUC,IntToStr(Numero));
              IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
              ELSE
                Numero := 1;
              CDSTransNUMEROSetText(CDSTransNUMERO,IntToStr(Numero));
            END;
          CDSTransTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
          CDSTransCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
          Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSTransNROCPBTE.AsString := CDSTransLETRA.AsString +
                                   CDSTransSUC.AsString +
                                   CDSTransNUMERO.AsString;
    END;
END;

FUNCTION TFormTransferenciaChe3.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      Result := True;
      CDSTransID_TIPOCOMPROBANTE.Clear;
      CDSTransMUESTRACOMPROBANTE.Clear;
      CDSTransMuestraSucursal.Value := CDSSucursalDetalle.Value;
      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      CDSBuscaComprob.Open;
      if CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSTransID_TIPOCOMPROBANTESetText(CDSTransID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          //RxDBECodigo.SetFocus;
        end;
      CDSBuscaComprob.Close;
    END
  ELSE
    BEGIN
      Result := False;
      CDSTransMuestraSucursal.Value := '';
    END;
  CDSSucursal.Close;
END;

FUNCTION TFormTransferenciaChe3.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('Id').Value := dato;
  QComprob.ParamByName('suc').Value:=CDSTransSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSTransMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSTransLETRA.Value              := QComprobLETRA.Value;
      CDSTransTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSTransCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSTransMUESTRACOMPROBANTE.Value := '';
      CDSTransLETRA.Value              := '';
      CDSTransTIPOCPBTE.Value          := '';
      CDSTransCLASECPBTE.Value         := '';
    END;
END;

procedure TFormTransferenciaChe3.AplicarCajaDestinoExecute(Sender: TObject);
var q:TFDQuery;
begin
  inherited;
  Q:=TFDQuery.Create(nil);
  q.Connection:=DMMain_FD.fdcGestion;
  q.ExecSQL('update cheque_tercero ch set ch.id_cuenta_caja='+ceCajaDestino.Text+' where ch.id_cheque_ter='+CDSTransDetalleID_CHEQUE.AsString);
  q.Close;
  FreeAndNil(q);
end;

FUNCTION TFormTransferenciaChe3.AsignarCaja(Dato,Cual: Integer): Boolean;
BEGIN
  CDSCajaCab.Close;
  CDSCajaCab.Params.ParamByName('Id').Value := Dato;
  CDSCajaCab.Open;
  IF NOT (CDSCajaCab.IsEmpty) THEN
      BEGIN
        Result:=True;
        if cual=1 Then //'ceCajaOrigen'
          begin
            CDSTransCAJA_ORIGEN.AsInteger   := CDSCajaCabID_CUENTA_CAJA.AsInteger;
            CDSTransMUESTRACAJAORIGEN.Value := CDSCajaCabMUESTRACTACAJA.Value;
            id_caja_Origen                  := CDSCajaCabID_CAJA.Value;
            Id_cuenta_caja_origen           := CDSCajaCabID_CUENTA_CAJA.Value;
            fecha_caja_Origen               := CDSCajaCabFECHA_INCIO.AsDateTime;
            Listar.Execute;
          end
        else
          if cual=2 Then //'ceCajaDestino'
            begin
              CDSTransCAJA_DESTINO.AsInteger  := CDSCajaCabID_CUENTA_CAJA.Asinteger;
              CDSTransMUESTRACAJADESTINO.Value:= CDSCajaCabMUESTRACTACAJA.Value;
              id_caja_destino                 := CDSCajaCabID_CAJA.Value;
              id_Cuenta_caja_Destino          := CDSCajaCabID_CUENTA_CAJA.Value;
              Fecha_Caja_destino              := CDSCajaCabFECHA_INCIO.AsDateTime;
            end;
      END
    ELSE
      BEGIN
        Result:=False;
        //ShowMessage('Dato no encontrado');
      END;
END;

procedure TFormTransferenciaChe3.BorrarExecute(Sender: TObject);
var CajaCerrada:Boolean;
begin
   if( DMMain_FD.UsuarioActivo='master' ) Then
     begin
       CDSMov.First;
       CDSMov.DisableControls;
       CajaCerrada:=False;
       while Not(CDSMov.Eof) and (CajaCerrada=True) do
         begin
           CajaCerrada := DMMain_fD.CajaCerrada(CDSMovID_CAJA.Value);
           CDSMov.Next;
         end;
       CDSMov.First;
       CDSMov.EnableControls;

       if ( CajaCerrada=False) then
         begin
           inherited;
           CDSMov.Close;
           CDSMov.Open;
         end
       else
          ShowMessage('Cajas Cerradas...');
     end
  else
    ShowMessage('No está Autorizado para esta Operación...')

end;

procedure TFormTransferenciaChe3.BuscarCajaExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaCaja.Close;
  CDSBuscaCaja.CommandText:='select ca.*, cta.Nombre as MuestraCaja from Caja_Cab ca '+
                            'inner join cuenta_caja cta on cta.id_cuenta=ca.id_cuenta_caja '+
                            'where ca.Estado=0 and cta.id_tipo_cta=1';

  if ((Sender as TJvDBComboEdit).Name='ceCajaOrigen') Then
    begin
      if ((DMMain_FD.FiltraCajaUser) and (DMMain_FD.ModificaCaja)) then
        begin
          CDSBuscaCaja.CommandText:='select ca.*, cta.Nombre as MuestraCaja from Caja_Cab ca '+
                                    'inner join cuenta_caja cta on cta.id_cuenta=ca.id_cuenta_caja '+
                                    'where ca.Estado=0 and cta.id_tipo_cta=1 and '+
                                    '(ca.id_cuenta_caja in (select u.caja from cajausuario u where u.usuario = :usuario)) ';

          CDSBuscaCaja.Params.ParamByName('usuario').Value:=DMMain_FD.UsuarioActivo;
        end;
    end;

  CDSBuscaCaja.Open;
  comBuscadorCaja.Execute;
  if comBuscadorCaja.rOk Then
    begin
      if (Sender as TJvDBComboEdit).Name='ceCajaOrigen' Then
        CDSTransCAJA_ORIGENSetText(CDSTransCAJA_ORIGEN,IntToStr(comBuscadorCaja.Id));
      if (Sender as TJvDBComboEdit).Name='ceCajaDestino' Then
        CDSTransCAJA_DESTINOSetText(CDSTransCAJA_DESTINO,IntToStr(comBuscadorCaja.Id));
      end;
  CDSBuscaCaja.Close;
end;

procedure TFormTransferenciaChe3.ListarExecute(Sender: TObject);
VAR Acum:real;
begin
  inherited;
  CDSChe3.IndexName:='';
  CDSChe3.IndexDefs.Clear;
  if ceCajaOrigen.Text<>'' Then
    begin
      Acum:=0;
      CDSChe3.Close;
      CDSChe3.Params.ParamByName('id_cuenta_caja').Value:=StrToInt(ceCajaOrigen.Text);
      CDSChe3.Open;
      CDSChe3.DisableControls;
      CDSChe3.First;
      while Not(CDSChe3.Eof) do
        begin
          acum:=acum+CDSChe3IMPORTE.AsFloat;
          CDSChe3.Next;
        end;
      CDSChe3.First;
      CDSChe3.EnableControls;
    //  if Not(CDSChe3.IsEmpty) Then
    //    wwDBGCheques.UnselectAll;
      edTotal.Value:=Acum;
   end;
end;

procedure TFormTransferenciaChe3.ConfirmaExecute(Sender: TObject);
var i:integer;
begin
  if (dbeSuc.Text='') or (dbeFecha.text='') or (dbeSuc.Text='') or
     (dbeLetra.Text='') or (dbeNumero.Text='') Then
    RAISE Exception.Create('Falta algun dato en el encabezado...');

  if (ceCajaOrigen.Text='') or (ceCajaDestino.Text='') Then
    RAISE Exception.Create('Falta Indicar la caja...');

 // if  trunc(CDSTransIMPORTE.AsFloat *100)<=0 then
 //   RAISE Exception.Create('No Hay Importe de Transferecia...');

  if (ceCajaOrigen.Text<>'') and (ceCajaDestino.Text<>'') Then
    if ceCajaOrigen.Text<>ceCajaDestino.Text Then
      begin
        CDSCajaMov.Close;
        CDSCajaMov.Open;
        CDSTransIMPORTE.AsFloat:=0;
        if Not(CDSChe3.IsEmpty) Then
          begin
            IF Copy(dbeFecha.Text,1,2)<>'  ' Then
              begin
                DatoNew:=IntToStr(CDSTransID.Value);
                TipoCpbte:=CDSTransTIPOCPBTE.Value;
                //FOR I:=0 To  DBGCheques.RowCount -1 DO
                CDSChe3.First;
                while Not(CDSChe3.Eof) do
                   BEGIN
                    if CDSChe3Selected.Value=True then
                      begin
                        CDSChe3.Edit;
                        CDSChe3ID_CUENTA_CAJA.Value:=StrToInt(ceCajaDestino.Text);

                        CDSTransIMPORTE.AsFloat              := CDSTransIMPORTE.AsFloat + CDSChe3IMPORTE.AsFloat;

                        CDSTransDetalle.Insert;
                        CDSTransDetalleID.Value              := ibg_Id_TransDet.IncrementFD(1);
                        CDSTransDetalleID_TRANSFERENCIA.Value:= CDSTransID.Value;
                        CDSTransDetalleRENGLON.Value         := CDSTransDetalle.RecordCount;
                        CDSTransDetalleID_CHEQUE.Value       := CDSChe3ID_CHEQUE_TER.Value;
                        CDSTransDetalleNUMERO.Value          := CDSChe3NUMERO.Value;
                        CDSTransDetalleORIGEN.Value          := CDSChe3ORIGEN.Value;
                        CDSTransDetalleFECHA.AsDateTime      := CDSChe3FECHA_EMISION.AsDateTime;
                        CDSTransDetalleIMPORTE.Value         := CDSChe3IMPORTE.Value;
                        CDSTransDetalleCTA_CAJA_ORIGEN.Value := StrToInt(ceCajaOrigen.Text);
                        CDSTransDetalleCTA_CAJA_DESTINO.Value:= StrToInt(ceCajaDestino.Text);
                        CDSTransDetalleMUESTRABANCO.Value    := CDSChe3MUESTRABANCO.Value;
                        CDSTransDetalleID_BANCO.Value        := CDSChe3ID_BANCO.Value;
                        CDSTransDetalle.Post;

                        CDSCajaMov.Insert;
                        CDSCajaMovID_CAJA.Value              := id_caja_Origen;
                        CDSCajaMovID_CUENTA_CAJA.Value       := id_cuenta_caja_Origen;
                        CDSCajaMovID_MOV_CAJA.Value          := IBGId_Caja_Mov.IncrementFD(1);
                        CDSCajaMovFECHA_CAJA.AsDateTime      := Fecha_caja_Origen;
                        CDSCajaMovFECHA_OPERACION.AsDateTime := dbeFecha.Date;
                        CDSCajaMovTIPO_OPERACION.Value       := 'E';
                        CDSCajaMovID_COMPROBANTE.Value       := CDSTransID.Value;
                        CDSCajaMovTIPO_COMPROB.Value         := CDSTransTIPOCPBTE.Value;
                        CDSCajaMovCLASE_COMPROB.Value        := CDSTransCLASECPBTE.Value;
                        CDSCajaMovNRO_COMPROBANTE.Value      := CDSTransNROCPBTE.Value;
                        CDSCajaMovDEBE.AsFloat               := 0;
                        CDSCajaMovHABER.AsFloat              := CDSChe3IMPORTE.AsFloat;
                        CDSCajaMovID_FPAGO.Value             := CDSChe3ID_FPAGO.Value;
                        QFPago.Close;
                        QFPago.ParamByName('id').Value       := CDSChe3ID_FPAGO.Value;
                        QFPago.Open;
                        CDSCajaMovID_TPAGO.Value             := QFPago.Fields[0].AsInteger;
                        QFPago.Close;
                        CDSCajaMovUNIDADES.Value             := CDSChe3UNIDADES.Value;
                        CDSCajaMovCOTIZACION.Value           := CDSChe3COTIZACION.Value;
                        CDSCajaMovMONEDA.Value               := CDSChe3MONEDA.Value;
                        CDSCajaMov.post;

                        CDSCajaMov.Insert;
                        CDSCajaMovID_CAJA.Value              := id_caja_Destino;
                        CDSCajaMovID_CUENTA_CAJA.Value       := id_cuenta_caja_Destino;
                        CDSCajaMovID_MOV_CAJA.Value          := IBGId_Caja_Mov.IncrementFD(1);
                        CDSCajaMovFECHA_CAJA.AsDateTime      := Fecha_caja_Destino;
                        CDSCajaMovFECHA_OPERACION.AsDateTime := dbeFecha.Date;
                        CDSCajaMovTIPO_OPERACION.Value       := 'I';
                        CDSCajaMovID_COMPROBANTE.Value       := CDSTransID.Value;
                        CDSCajaMovTIPO_COMPROB.Value         := CDSTransTIPOCPBTE.Value;
                        CDSCajaMovCLASE_COMPROB.Value        := CDSTransCLASECPBTE.Value;
                        CDSCajaMovNRO_COMPROBANTE.Value      := CDSTransNROCPBTE.Value;
                        CDSCajaMovDEBE.Value                 := CDSChe3IMPORTE.Value;
                        CDSCajaMovHABER.AsFloat              := 0;
                        CDSCajaMovID_FPAGO.Value             := CDSChe3ID_FPAGO.Value;
                        QFPago.Close;
                        QFPago.ParamByName('id').Value       := CDSChe3ID_FPAGO.Value;
                        QFPago.Open;
                        CDSCajaMovID_TPAGO.Value             := QFPago.Fields[0].AsInteger;
                        QFPago.Close;
                        CDSCajaMovUNIDADES.Value             := CDSChe3UNIDADES.Value;
                        CDSCajaMovCOTIZACION.Value           := CDSChe3COTIZACION.Value;
                        CDSCajaMovMONEDA.Value               := CDSChe3MONEDA.Value;
                        CDSCajaMov.post;
                        CDSChe3.Post;
                      end;
                    CDSChe3.Next;
                  end;
                inherited;
                Recuperar.Execute;
        //        if Imprime='S' Then
        //          if (MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0,[mbYes]) = mrYes) Then
        //            Imprimir.Execute;
              end
            else
              ShowMessage('Falta ingresa la fecha de operación');
          end
        else
          ShowMessage('No hay cheques para procesar...');
      end
    else
      ShowMessage('El Origne y destino no puede ser el mismo...')
  else
    ShowMessage('Falta Indicar la caja ...');

end;

procedure TFormTransferenciaChe3.FormDestroy(Sender: TObject);
begin
  inherited;
  FormTransferenciaChe3:=nil;
end;

procedure TFormTransferenciaChe3.FormResize(Sender: TObject);
begin
  inherited;
  if FormTransferenciaChe3<>nil then
    if FormTransferenciaChe3.Width<>803 Then
      FormTransferenciaChe3.Width:=803;


end;

procedure TFormTransferenciaChe3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormTransferenciaChe3.SellAllExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSChe3.IsEmpty) Then
    begin
      CDSChe3.First;
      CDSChe3.DisableControls;
      WHILE NOT (CDSChe3.Eof) DO
        BEGIN
          CDSChe3.Edit;
          CDSChe3Selected.Value := True;
          CDSChe3.Next;
        END;
      CDSChe3.First;
      CDSChe3.EnableControls;
     // dbgCheques.SelectAllClick(Sender);
      //wwDBGCheques.SelectAll
    end
  else
    ShowMessage('No hay cheques para seleccionar....');
end;

procedure TFormTransferenciaChe3.UnselectallExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSChe3.IsEmpty) Then
    begin
      CDSChe3.First;
      CDSChe3.DisableControls;
      WHILE NOT (CDSChe3.Eof) DO
        BEGIN
          CDSChe3.Edit;
          CDSChe3Selected.Value := False;
          CDSChe3.Next;
        END;
      CDSChe3.First;
      CDSChe3.EnableControls;
     // dbgCheques.SelectAllClick(Sender);
      //wwDBGCheques.SelectAll
    end
  else
    ShowMessage('No hay cheques para deseleccionar....');

end;

procedure TFormTransferenciaChe3.CancelarExecute(Sender: TObject);
begin
 if MessageDlg('Cancelar los cambios..?',mtConfirmation,mbYesNo,0)=mrNo then
    Exit;
  CDSTrans.close;
  CDSTrans.Params.ParamByName('id').Clear;
  CDSTrans.Params.ParamByName('tipo').Clear;
  CDSTrans.Open;
  CDSTransDetalle.CLose;
  CDSTransDetalle.Params.ParamByName('id').Clear;
  CDSTransDetalle.Open;
  inherited;
  CDSChe3.Close;
end;

procedure TFormTransferenciaChe3.ceCajaOrigenKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSTransCAJA_ORIGEN.Clear;
      CDSTransMUESTRACAJAORIGEN.Clear;
    end;
end;

procedure TFormTransferenciaChe3.ceCajaDestinoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSTransCAJA_DESTINO.Clear;
      CDSTransMUESTRACAJADESTINO.Clear;
    end;

end;

procedure TFormTransferenciaChe3.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormTransferenciaChe3.CDSTransNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSTransFECHA.AsDateTime:=Date;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if (ibgIdTransferencia.IncrementFD(0)=0) or
     (ibgIdTransferencia.IncrementFD(0)<QUltimoCodigo2.Fields[0].AsInteger) Then
    begin
      //este codigo se ejecuta la primera vez luego toma del Generador
      if QUltimoCodigo2.Fields[0].AsString='' Then
        CDSTransID.Value:=1
      else
        CDSTransID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1;
      ibgIdTransferencia.IncrementFD(QUltimoCodigo2.Fields[0].AsInteger+1);
    end
  else
    CDSTransID.Value:=ibgIdTransferencia.IncrementFD(1);
  CDSTransSUCURSALSetText(CDSTransSUCURSAL,IntToStr(SucursalPorDefecto));
  CDSTransCAJA_ORIGENSetText(CDSTransCAJA_ORIGEN,IntToStr(CajaPorDefecto));
  CDSTransTIPO_TRANSFERENCIA.Value:= 'C';
  CDSTransUSUARIO.Value           := DMMain_FD.UsuarioActivo;
  CDSTransFECHA_HORA.AsDateTime   := Now;
  CDSTransESTADO.Value            := 'C';//Confirmada;
  listar.Execute;
  QUltimoCodigo2.Close;
end;

procedure TFormTransferenciaChe3.CDSTransID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  inherited;
  IF text[1] <> #13 THEN
    BEGIN
      Sender.AsString := Text;
      IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
        BEGIN
          ShowMessage('Dato no válido');
          Sender.AsString := '';
        END;
      IF CDSTrans.State = dsInsert THEN
        UltimoComprobante;
    END;

end;

procedure TFormTransferenciaChe3.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    CDSTransSucursalSetText(CDSTransSUCURSAL, IntToStr(comBuscadorSucursal.Id));
  CDSBuscaSucursal.Close;

end;

procedure TFormTransferenciaChe3.CDSTransSUCURSALSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  IF (Text<>'') and (Text[1] <> #13) THEN
    BEGIN
      Sender.AsString := Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Sucursal No Valido');
          SysUtils.Abort;
        END
      ELSE
        IF CDSTrans.State = dsInsert THEN
          UltimoComprobante;
    END;
end;

procedure TFormTransferenciaChe3.RxDBESucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSTransSUCURSAL.Clear;
      CDSTransMUESTRASUCURSAL.Clear;
      CDSTransID_TIPOCOMPROBANTE.Clear;
      CDSTransMUESTRACOMPROBANTE.Clear;
      CDSTransLETRA.Clear;
      CDSTransSUC.Clear;
      CDSTransNUMERO.Clear;
    end;
end;

procedure TFormTransferenciaChe3.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaComprob.Close;
  CDSBuscaComprob.Params.ParamByName('Suc').Value := CDSTransSUCURSAL.Value;
  CDSBuscaComprob.Open;
  IF NOT (CDSBuscaComprob.IsEmpty) THEN
    BEGIN
      comBuscadorTipoCpbte.Execute;
      if comBuscadorTipoCpbte.rOk Then
        CDSTransID_TIPOCOMPROBANTESetText(CDSTransID_TIPOCOMPROBANTE, IntToStr(comBuscadorTipoCpbte.Id));
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  CDSBuscaComprob.Close;

end;

procedure TFormTransferenciaChe3.BusquedaPorReferenciaExecute(Sender: TObject);
begin
  inherited;
 IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(Application);
  FormBuscarPorNroReferenica.CompraVta:='X';
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

procedure TFormTransferenciaChe3.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSTransID_TIPOCOMPROBANTE.Clear;
      CDSTransMUESTRACOMPROBANTE.Clear;
      CDSTransLETRA.Clear;
      CDSTransSUC.Clear;
      CDSTransNUMERO.Clear;
    end;

end;

procedure TFormTransferenciaChe3.CDSTransCAJA_ORIGENSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  IF text[1] <> #13 THEN
    BEGIN
      Sender.AsString := Text;
      If Not(AsignarCaja(Sender.AsInteger,1)) Then
        BEGIN
          ShowMessage('Dato no válido o Caja Cerrada');
          Sender.AsString := '';
        END;
    end;

end;

procedure TFormTransferenciaChe3.CDSTransCAJA_DESTINOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  IF text[1] <> #13 THEN
    BEGIN
      Sender.AsString := Text;
      If Not(AsignarCaja(Sender.AsInteger,2)) Then
        BEGIN
          ShowMessage('Dato no válido');
          Sender.AsString := '';
        END;
    end;

end;

procedure TFormTransferenciaChe3.CDSTransSUCSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString := Copy('000000000', 1, Sender.Size - Length(Text)) + Text;
  CDSTransNROCPBTE.Value := CDSTransLETRA.Value +
                            CDSTransSUC.Value +
                            CDSTransNUMERO.Value;
end;

procedure TFormTransferenciaChe3.CDSTransNUMEROSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString := Copy('000000000', 1, Sender.Size - Length(Text)) + Text;
  CDSTransNROCPBTE.Value := CDSTransLETRA.Value +
                            CDSTransSUC.Value +
                            CDSTransNUMERO.Value;
end;

procedure TFormTransferenciaChe3.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AutoSize:=False;
  DSBase.DataSet := CDSTrans;
  AddClientDataSet(CDSTrans,DSPTrans);
  AddClientDataSet(CDSTransDetalle,DSPTransDetalle);
  AddClientDataSet(CDSChe3,DSPChe3);
  AddClientDataSet(CDSCajaMov,DSPCajaMov);
  CDSTrans.Open;
  Campo:='id';
  Tabla:='transferencias_caja';
  CDSTransDetalle.Open;
  ceCajaOrigen.Enabled     :=DMMain_FD.ModificaCaja;
  pgCheuqes.ActivePageIndex:=0;
  AplicarCajaDestino.Enabled:=DMMain_FD.UsuarioActivo='master';
end;

procedure TFormTransferenciaChe3.AgregarExecute(Sender: TObject);
begin
  CDSTrans.close;
  CDSTrans.Params.ParamByName('id').Clear;
  CDSTrans.Params.ParamByName('tipo').Clear;
  CDSTrans.Open;
  CDSTransDetalle.CLose;
  CDSTransDetalle.Params.ParamByName('id').Clear;
  CDSTransDetalle.Open;
  CDSMov.Close;
  inherited;
  if ceCajaOrigen.Enabled Then
    ceCajaOrigen.SetFocus
  else
    ceCajaDestino.SetFocus;
end;

procedure TFormTransferenciaChe3.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.TipoCpbte1:='QX';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.Tag := 11;
  if DMMain_FD.ModificaCaja Then
    FormBuscaCpbte.ModificaCaja:='S'
  else
    FormBuscaCpbte.ModificaCaja:='N';
  FormBuscaCpbte.CuentaCaja  :=CajaPorDefecto;
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;
end;

procedure TFormTransferenciaChe3.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  Listar.Enabled:=DSBase.DataSet.State=dsInsert;
  Imprimir.Enabled:=(DSBase.DataSet.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty));
  if (DSBase.DataSet.State=dsBrowse) then
    pgCheuqes.ActivePageIndex:=1
  else
    if (DSBase.DataSet.State<>dsBrowse) then
      pgCheuqes.ActivePageIndex:=0;
  if pgCheuqes.ActivePageIndex=0 then
    begin
      pagCheTx.Visible  :=False;
      pagCheDisp.Visible:=True;

    end
  else
    if pgCheuqes.ActivePageIndex=1 then
      begin
        pagCheTx.Visible  :=True;
        pagCheDisp.Visible:=False;
      end;

end;

procedure TFormTransferenciaChe3.ImprimirExecute(Sender: TObject);
begin
  inherited;
  CDSEmpresa.Open;

  QComprob.Close;
  QComprob.ParamByName('id').Value := CDSTransID_TIPOCOMPROBANTE.Value;
  QComprob.ParamByName('suc').Value:= CDSTransSUCURSAL.Value;
  QComprob.Open;

  frTransferencia.PrintOptions.Printer:=PrNomCpbte;
  frTransferencia.SelectPrinter;

  frTransferencia.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+QComprobREPORTE.AsString);
  frTransferencia.PrintOptions.Copies:=QComprobCOPIAS.Value;

  frTransferencia.ShowReport;
  CDSEmpresa.Close;

end;


//procedure TFormTransferenciaChe3.wwDBGChequesTitleButtonClick(
//  Sender: TObject; AFieldName: String);
//begin
//  inherited;
//  if AFieldName<>'Selected' Then
//    CDSChe3.IndexFieldNames:=AFieldName;
//end;

procedure TFormTransferenciaChe3.SalirExecute(Sender: TObject);
begin
  inherited;
  CDSMov.Close;
end;

procedure TFormTransferenciaChe3.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frTransferencia.DesignReport;
end;

procedure TFormTransferenciaChe3.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSTrans.close;
  CDSTrans.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  CDSTrans.Params.ParamByName('tipo').Value := TipoCpbte;
  CDSTrans.Open;
  CDSTransDetalle.CLose;
  CDSTransDetalle.Params.ParamByName('id').Value := StrToInt(DatoNew);
  CDSTransDetalle.Open;
  CDSMov.Close;
  CDSMov.Params.ParamByName('id').Value  :=StrToInt(DatoNew);
  CDSMov.Params.ParamByName('tipo').Value:=TipoCpbte;
  CDSMov.Open;
  CDSMovDEBE.DisplayFormat  :=',0.00';
  CDSMovHABER.DisplayFormat :=',0.00';
  pnPrincipal.Enabled       :=True;
  DatoNew:=''+DatoNew+'';
  ceCajaOrigen.Enabled := DMMain_FD.ModificaCaja;
  FormTransferenciaChe3.Caption:='Transferencia de Che.de Tercero entre cajas -- ' +
                                  DateTimeToStr(CDSTransFECHA_HORA.AsDateTime)+'//'+Copy(CDSTransUSUARIO.Value,1,15);

end;

procedure TFormTransferenciaChe3.PrevExecute(Sender: TObject);
begin
   if (DMMain_FD.ModificaCaja<>True) Then
    begin
      DatoOld:=DatoNew;
      QBrowse2.Close;
      QBrowse2.SQL.Clear;
      QBrowse2.SQL.Add('select max('+''+campo+''+') from  '+''+tabla+''+
      ' where '+''+campo+''+' < '+''+DatoNew+''+' and caja_origen='+IntToStr(CajaPorDefecto)+' and tipocpbte='+''''+TipoCpbte+'''');
      QBrowse2.Open;
      if QBrowse2.Fields[0].AsString='' Then
        begin
          QBrowse2.Close;
          QBrowse2.SQL.Clear;
          QBrowse2.SQL.Add('select max('+''+campo+''+') from  '+''+tabla+''+
          ' where '+''+campo+''+' > '+''+DatoNew+''+' and caja_origen='+IntToStr(CajaPorDefecto)+' and tipocpbte='+''''+TipoCpbte+'''');
          QBrowse2.Open;
        end;
      DatoNew:=QBrowse2.Fields[0].AsString;
      Recuperar.Execute;
    end
  else
    inherited;
end;

procedure TFormTransferenciaChe3.NextExecute(Sender: TObject);
begin
   if (DMMain_FD.ModificaCaja<>True) Then
    begin
      DatoOld:=DatoNew;
      QBrowse2.Close;
      QBrowse2.SQL.Clear;
      QBrowse2.SQL.Add('select min('+''+campo+''+') from  '+''+tabla+''+
      ' where '+''+campo+''+' > '+''+DatoNew+''+' and caja_origen='+IntToStr(CajaPorDefecto)+' and tipocpbte='+''''+TipoCpbte+'''');
      QBrowse2.Open;
      if QBrowse2.Fields[0].AsString='' Then
        begin
          QBrowse2.Close;
          QBrowse2.SQL.Clear;
          QBrowse2.SQL.Add('select min('+''+campo+''+') from  '+''+tabla+''+
          ' where '+''+campo+''+' < '+''+DatoNew+''+' and caja_origen='+IntToStr(CajaPorDefecto)+' and tipocpbte='+''''+TipoCpbte+'''');
          QBrowse2.Open;
        end;
      DatoNew:=QBrowse2.Fields[0].AsString;
      Recuperar.Execute;
    end
  else
    inherited;
end;

end.