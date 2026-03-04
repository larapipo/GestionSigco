UNIT UMovValoresEgresos;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, StdCtrls,
  Buttons, Mask, ComCtrls, Grids, DBGrids, Db, IBGenerator,
  Provider, DBClient, ActnList,StrUtils, Librerias, Variants, JvExComCtrls,
  JvDateTimePicker, JvDBDateTimePicker, JvExMask, JvToolEdit, JvDBControls,
  JvExControls, JvLabel, FMTBcd, SqlExpr, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Menus;
TYPE
  TFrameMovValoresEgresos = CLASS(TFrame)
    lbTotalValores: TLabel;
    Label25: TLabel;
    dbgMovimientos: TDBGrid;
    pcValores: TPageControl;
    tsEfectivo: TTabSheet;
    dbeUnidades: TDBEdit;
    dbeCotizacion: TDBEdit;
    dbeImporte: TDBEdit;
    btOkEfectivo: TBitBtn;
    btCancelarEfectivo: TBitBtn;
    tsChe3: TTabSheet;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBText3: TDBText;
    Label7: TLabel;
    Label1: TLabel;
    Button2: TButton;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    tsCheques: TTabSheet;
    DBText1: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Button1: TButton;
    btCancel: TBitBtn;
    btPost: TBitBtn;
    DSPChe3: TDataSetProvider;
    DSPMovEfectivo: TDataSetProvider;
    DSPCajaMov: TDataSetProvider;
    IBGId_Che3Mov: TIBGenerator;
    IBGId_Efectivo: TIBGenerator;
    IBGId_Caja_Mov: TIBGenerator;
    DSPCheques: TDataSetProvider;
    IBGId_Che_Propio: TIBGenerator;
    ActionList1: TActionList;
    PostChe3: TAction;
    CancelChe3: TAction;
    PostEfectivo: TAction;
    CancelEfectivo: TAction;
    BuscarFormaPago: TAction;
    BuscarChequera: TAction;
    PostCheque: TAction;
    CancelCheque: TAction;
    edMuestraCaja: TEdit;
    BuscarBanco: TAction;
    BuscarTCredito: TAction;
    tsTransf: TTabSheet;
    DSPTransBco: TDataSetProvider;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    dbeNumero: TDBEdit;
    dbeMuestraCta: TDBEdit;
    dbeUnidadesTx: TDBEdit;
    dbeImporteTx: TDBEdit;
    dbeOrigenTx: TDBEdit;
    BitBtn4: TBitBtn;
    BitBtn8: TBitBtn;
    BuscarCtaBco: TAction;
    PostTrans: TAction;
    CancelTrans: TAction;
    tsDebito: TTabSheet;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    dbeNroDebito: TDBEdit;
    dbeMuestraCtaDebito: TDBEdit;
    dbeUnidadesDebito: TDBEdit;
    ImporteDebito: TDBEdit;
    dbeOriginadoDebito: TDBEdit;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DSPDebitos: TDataSetProvider;
    PosDebito: TAction;
    CancelDebito: TAction;
    Label30: TLabel;
    Label31: TLabel;
    IBGId_Trans: TIBGenerator;
    IBGIdDebito: TIBGenerator;
    Label34: TLabel;
    Label35: TLabel;
    dbNI: TDBText;
    dbNF: TDBText;
    pnAnulado: TPanel;
    dbAnulado: TDBCheckBox;
    dbObs: TDBMemo;
    DBText12: TDBText;
    tsTarjeta: TTabSheet;
    IBId_MovTCCompra: TIBGenerator;
    CDSMovTCCompra: TClientDataSet;
    DSPMovTCCompra: TDataSetProvider;
    DSMovTCCompra: TDataSource;
    pnTarjeta: TPanel;
    Bevel1: TBevel;
    Label32: TLabel;
    Label33: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit4: TDBEdit;
    Label38: TLabel;
    dbeUniTC: TDBEdit;
    Label39: TLabel;
    DBEdit6: TDBEdit;
    dbeMuestraTarjeta: TDBEdit;
    Label40: TLabel;
    dbeNumeroCupon: TDBEdit;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    CancelaTC: TAction;
    PostTC: TAction;
    Label45: TLabel;
    DBText2: TDBText;
    Label41: TLabel;
    DSPMovTCCuota: TDataSetProvider;
    CDSMovTCCuota: TClientDataSet;
    ibgId_MovCuotas: TIBGenerator;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    Label42: TLabel;
    DBText17: TDBText;
    dbtID_EFECTIVO: TDBText;
    lb1: TLabel;
    lbResto: TLabel;
    dbeFechaEmision: TJvDBDateEdit;
    dbeFechaCobro: TJvDBDateEdit;
    dbdFechaCupon: TJvDBDateEdit;
    dbdFechaCompra: TJvDBDateEdit;
    ceCaja: TJvComboEdit;
    rcdcIdCtaBcoDebito: TJvDBComboEdit;
    rxdcCtaBco: TJvDBComboEdit;
    RxLabel4: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    dbcTC: TJvDBComboEdit;
    DSChe3: TDataSource;
    DSMovEfectivo: TDataSource;
    DSCajaMov: TDataSource;
    DSCheques: TDataSource;
    DSTransBco: TDataSource;
    DSDebitos: TDataSource;
    QDebitos: TFDQuery;
    QDebitosID: TIntegerField;
    QDebitosID_MOV_CAJA: TIntegerField;
    QDebitosID_CAJA: TIntegerField;
    QDebitosID_FPAGO: TIntegerField;
    QDebitosNUMERO: TIntegerField;
    QDebitosID_CUENTA_CAJA: TIntegerField;
    QDebitosID_CUENTA_BANCO: TIntegerField;
    QDebitosMONEDA: TIntegerField;
    QDebitosUNIDADES: TFloatField;
    QDebitosIMPORTE: TFloatField;
    QDebitosORIGEN: TStringField;
    QDebitosFECHA: TSQLTimeStampField;
    QDebitosCOTIZACION: TFloatField;
    QDebitosMUESTRACTACAJA: TStringField;
    CDSDebitos: TClientDataSet;
    CDSDebitosID: TIntegerField;
    CDSDebitosID_MOV_CAJA: TIntegerField;
    CDSDebitosID_CAJA: TIntegerField;
    CDSDebitosID_FPAGO: TIntegerField;
    CDSDebitosNUMERO: TIntegerField;
    CDSDebitosID_CUENTA_CAJA: TIntegerField;
    CDSDebitosID_CUENTA_BANCO: TIntegerField;
    CDSDebitosMONEDA: TIntegerField;
    CDSDebitosUNIDADES: TFloatField;
    CDSDebitosIMPORTE: TFloatField;
    CDSDebitosORIGEN: TStringField;
    CDSDebitosFECHA: TSQLTimeStampField;
    CDSDebitosCOTIZACION: TFloatField;
    CDSDebitosMUESTRACTACAJA: TStringField;
    QTransBco: TFDQuery;
    QTransBcoID: TIntegerField;
    QTransBcoID_MOV_CAJA: TIntegerField;
    QTransBcoID_CAJA: TIntegerField;
    QTransBcoID_FPAGO: TIntegerField;
    QTransBcoNUMERO: TIntegerField;
    QTransBcoID_CUENTA_CAJA: TIntegerField;
    QTransBcoID_CUENTA_BANCO: TIntegerField;
    QTransBcoMONEDA: TIntegerField;
    QTransBcoUNIDADES: TFloatField;
    QTransBcoIMPORTE: TFloatField;
    QTransBcoORIGEN: TStringField;
    QTransBcoFECHA: TSQLTimeStampField;
    QTransBcoCOTIZACION: TFloatField;
    QTransBcoMUESTRACTACAJA: TStringField;
    CDSTransBco: TClientDataSet;
    CDSTransBcoID: TIntegerField;
    CDSTransBcoID_MOV_CAJA: TIntegerField;
    CDSTransBcoID_CAJA: TIntegerField;
    CDSTransBcoID_FPAGO: TIntegerField;
    CDSTransBcoNUMERO: TIntegerField;
    CDSTransBcoID_CUENTA_CAJA: TIntegerField;
    CDSTransBcoID_CUENTA_BANCO: TIntegerField;
    CDSTransBcoMONEDA: TIntegerField;
    CDSTransBcoUNIDADES: TFloatField;
    CDSTransBcoIMPORTE: TFloatField;
    CDSTransBcoORIGEN: TStringField;
    CDSTransBcoFECHA: TSQLTimeStampField;
    CDSTransBcoCOTIZACION: TFloatField;
    CDSTransBcoMUESTRACTACAJA: TStringField;
    QChe3: TFDQuery;
    QChe3ID_MOV: TIntegerField;
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
    QChe3FIRMANTE: TStringField;
    QChe3COTIZACION: TFloatField;
    QChe3ID_MOV_CAJA_EGRESOS: TIntegerField;
    QChe3ID_CUENTA_CAJA: TIntegerField;
    QChe3ID_CUENTA_BCO_DEPOSITADO: TIntegerField;
    QChe3MONEDA: TIntegerField;
    QChe3CUIT: TStringField;
    QChe3SUCURSAL_BCO: TStringField;
    QChe3NRO_CTA: TStringField;
    QChe3MUESTRABANCO: TStringField;
    CDSChe3: TClientDataSet;
    CDSChe3ID_MOV: TIntegerField;
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
    CDSChe3FIRMANTE: TStringField;
    CDSChe3COTIZACION: TFloatField;
    CDSChe3ID_MOV_CAJA_EGRESOS: TIntegerField;
    CDSChe3ID_CUENTA_CAJA: TIntegerField;
    CDSChe3ID_CUENTA_BCO_DEPOSITADO: TIntegerField;
    CDSChe3MONEDA: TIntegerField;
    CDSChe3CUIT: TStringField;
    CDSChe3SUCURSAL_BCO: TStringField;
    CDSChe3NRO_CTA: TStringField;
    CDSChe3MUESTRABANCO: TStringField;
    QMovEfectivo: TFDQuery;
    QMovEfectivoID_EFECTIVO: TIntegerField;
    QMovEfectivoID_CAJA: TIntegerField;
    QMovEfectivoID_MOV_CAJA: TIntegerField;
    QMovEfectivoID_FPAGO: TIntegerField;
    QMovEfectivoCOTIZACION: TFloatField;
    QMovEfectivoUNIDADES: TFloatField;
    QMovEfectivoIMPORTE: TFloatField;
    QMovEfectivoID_CUENTA_CAJA: TIntegerField;
    QMovEfectivoMONEDA: TIntegerField;
    CDSMovEfectivo: TClientDataSet;
    CDSMovEfectivoID_EFECTIVO: TIntegerField;
    CDSMovEfectivoID_CAJA: TIntegerField;
    CDSMovEfectivoID_MOV_CAJA: TIntegerField;
    CDSMovEfectivoID_FPAGO: TIntegerField;
    CDSMovEfectivoCOTIZACION: TFloatField;
    CDSMovEfectivoUNIDADES: TFloatField;
    CDSMovEfectivoIMPORTE: TFloatField;
    CDSMovEfectivoID_CUENTA_CAJA: TIntegerField;
    CDSMovEfectivoMONEDA: TIntegerField;
    QCheques: TFDQuery;
    QChequesID_CHEQUE_PRO: TIntegerField;
    QChequesID_CAJA: TIntegerField;
    QChequesID_MOV_CAJA: TIntegerField;
    QChequesID_FPAGO: TIntegerField;
    QChequesID_CHEQUERA: TIntegerField;
    QChequesID_BANCO: TIntegerField;
    QChequesFECHA_EMISION: TSQLTimeStampField;
    QChequesFECHA_COBRO: TSQLTimeStampField;
    QChequesORDEN_DE: TStringField;
    QChequesNUMERO: TIntegerField;
    QChequesUNIDADES: TFloatField;
    QChequesIMPORTE: TFloatField;
    QChequesCOTIZACION: TFloatField;
    QChequesID_CUENTA_CAJA: TIntegerField;
    QChequesID_CUENTA_BANCO: TIntegerField;
    QChequesMONEDA: TIntegerField;
    QChequesOBSERVACIONES: TStringField;
    QChequesANULADO: TStringField;
    QChequesID_CPBTE_ANULACION_REEMP: TIntegerField;
    QChequesID_CAJA_MOV_ANULACION: TIntegerField;
    QChequesDEBITADO: TStringField;
    QChequesFECHA_DEBITO: TSQLTimeStampField;
    QChequesMUESTRACHEQUERA: TStringField;
    QChequesMUESTRANI: TIntegerField;
    QChequesMUESTRANF: TIntegerField;
    CDSCheques: TClientDataSet;
    CDSChequesID_CHEQUE_PRO: TIntegerField;
    CDSChequesID_CAJA: TIntegerField;
    CDSChequesID_MOV_CAJA: TIntegerField;
    CDSChequesID_FPAGO: TIntegerField;
    CDSChequesID_CHEQUERA: TIntegerField;
    CDSChequesID_BANCO: TIntegerField;
    CDSChequesFECHA_EMISION: TSQLTimeStampField;
    CDSChequesFECHA_COBRO: TSQLTimeStampField;
    CDSChequesORDEN_DE: TStringField;
    CDSChequesNUMERO: TIntegerField;
    CDSChequesUNIDADES: TFloatField;
    CDSChequesIMPORTE: TFloatField;
    CDSChequesCOTIZACION: TFloatField;
    CDSChequesID_CUENTA_CAJA: TIntegerField;
    CDSChequesID_CUENTA_BANCO: TIntegerField;
    CDSChequesMONEDA: TIntegerField;
    CDSChequesOBSERVACIONES: TStringField;
    CDSChequesANULADO: TStringField;
    CDSChequesID_CPBTE_ANULACION_REEMP: TIntegerField;
    CDSChequesID_CAJA_MOV_ANULACION: TIntegerField;
    CDSChequesDEBITADO: TStringField;
    CDSChequesFECHA_DEBITO: TSQLTimeStampField;
    CDSChequesMUESTRACHEQUERA: TStringField;
    CDSChequesMUESTRANI: TIntegerField;
    CDSChequesMUESTRANF: TIntegerField;
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
    QCajaMovID_FPAGOOLD: TIntegerField;
    QCajaMovMUESTRAFORMAPAGO: TStringField;
    QCajaMovMUESTRAIDCTACAJA: TIntegerField;
    QCajaMovMUESTRACAJA: TStringField;
    QCajaMovMUESTRANROCAJA: TIntegerField;
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
    CDSCajaMovID_FPAGOOLD: TIntegerField;
    CDSCajaMovMUESTRAFORMAPAGO: TStringField;
    CDSCajaMovMUESTRAIDCTACAJA: TIntegerField;
    CDSCajaMovMUESTRACAJA: TStringField;
    CDSCajaMovMUESTRANROCAJA: TIntegerField;
    QMovTCCompra: TFDQuery;
    QMovTCCompraID_CUPON: TIntegerField;
    QMovTCCompraID_CAJA: TIntegerField;
    QMovTCCompraID_MOV_CAJA: TIntegerField;
    QMovTCCompraID_FPAGO: TIntegerField;
    QMovTCCompraID_TARJETA: TIntegerField;
    QMovTCCompraFECHA_COMPRA: TSQLTimeStampField;
    QMovTCCompraFECHA_CUPON: TSQLTimeStampField;
    QMovTCCompraCUOTAS: TIntegerField;
    QMovTCCompraNUMERO_CUPON: TIntegerField;
    QMovTCCompraUNIDADES: TFloatField;
    QMovTCCompraIMPORTE: TFloatField;
    QMovTCCompraCOTIZACION: TFloatField;
    QMovTCCompraMONEDA: TIntegerField;
    QMovTCCompraOBSERVACIONES: TStringField;
    QMovTCCompraID_CPBTE: TIntegerField;
    QMovTCCompraTIPOCPBTE: TStringField;
    QMovTCCompraCLASECPBTE: TStringField;
    QMovTCCompraNROCPBTE: TStringField;
    QMovTCCompraPROVEEDOR: TStringField;
    QMovTCCompraID_CPBTE_ANULACION_TC: TIntegerField;
    QMovTCCompraID_CAJA_MOV_ANULACION: TIntegerField;
    QMovTCCompraANULADO: TStringField;
    QMovTCCompraID_CUENTA_CAJA: TIntegerField;
    QMovTCCompraMUESTRATC: TStringField;
    CDSMovTCCompraID_CUPON: TIntegerField;
    CDSMovTCCompraID_CAJA: TIntegerField;
    CDSMovTCCompraID_MOV_CAJA: TIntegerField;
    CDSMovTCCompraID_FPAGO: TIntegerField;
    CDSMovTCCompraID_TARJETA: TIntegerField;
    CDSMovTCCompraFECHA_COMPRA: TSQLTimeStampField;
    CDSMovTCCompraFECHA_CUPON: TSQLTimeStampField;
    CDSMovTCCompraCUOTAS: TIntegerField;
    CDSMovTCCompraNUMERO_CUPON: TIntegerField;
    CDSMovTCCompraUNIDADES: TFloatField;
    CDSMovTCCompraIMPORTE: TFloatField;
    CDSMovTCCompraCOTIZACION: TFloatField;
    CDSMovTCCompraMONEDA: TIntegerField;
    CDSMovTCCompraOBSERVACIONES: TStringField;
    CDSMovTCCompraID_CPBTE: TIntegerField;
    CDSMovTCCompraTIPOCPBTE: TStringField;
    CDSMovTCCompraCLASECPBTE: TStringField;
    CDSMovTCCompraNROCPBTE: TStringField;
    CDSMovTCCompraPROVEEDOR: TStringField;
    CDSMovTCCompraID_CPBTE_ANULACION_TC: TIntegerField;
    CDSMovTCCompraID_CAJA_MOV_ANULACION: TIntegerField;
    CDSMovTCCompraANULADO: TStringField;
    CDSMovTCCompraID_CUENTA_CAJA: TIntegerField;
    CDSMovTCCompraMUESTRATC: TStringField;
    QMovTCCuota: TFDQuery;
    QMovTCCuotaID: TIntegerField;
    QMovTCCuotaID_CUPON: TIntegerField;
    QMovTCCuotaID_TARJEA: TIntegerField;
    QMovTCCuotaFECHA_COMPRA: TSQLTimeStampField;
    QMovTCCuotaTOTAL_CUOTAS: TIntegerField;
    QMovTCCuotaCUOTA: TIntegerField;
    QMovTCCuotaIMPORTE: TFloatField;
    QMovTCCuotaNUMERO_CUPON: TIntegerField;
    QMovTCCuotaIMPORTE_TOTAL_COMPRA: TFloatField;
    QMovTCCuotaLIQUIDADA: TStringField;
    CDSMovTCCuotaID: TIntegerField;
    CDSMovTCCuotaID_CUPON: TIntegerField;
    CDSMovTCCuotaID_TARJEA: TIntegerField;
    CDSMovTCCuotaFECHA_COMPRA: TSQLTimeStampField;
    CDSMovTCCuotaTOTAL_CUOTAS: TIntegerField;
    CDSMovTCCuotaCUOTA: TIntegerField;
    CDSMovTCCuotaIMPORTE: TFloatField;
    CDSMovTCCuotaNUMERO_CUPON: TIntegerField;
    CDSMovTCCuotaIMPORTE_TOTAL_COMPRA: TFloatField;
    CDSMovTCCuotaLIQUIDADA: TStringField;
    CDSBuscaCaja: TClientDataSet;
    DSPBuscaCaja: TDataSetProvider;
    CDSBuscaTCredito: TClientDataSet;
    DSPBuscaTCredito: TDataSetProvider;
    CDSBuscaTCreditoID: TIntegerField;
    CDSBuscaTCreditoID_TCREDITO: TIntegerField;
    CDSBuscaTCreditoNOMBRE: TStringField;
    CDSBuscaTCreditoNRO_TARJETA: TStringField;
    CDSBuscaTCreditoMUESTRABANCO: TStringField;
    CDSBuscaTCreditoMUESTRATC: TStringField;
    CDSBuscaCajaID_CAJA: TIntegerField;
    CDSBuscaCajaID_CUENTA_CAJA: TIntegerField;
    CDSBuscaCajaFECHA_INCIO: TSQLTimeStampField;
    CDSBuscaCajaFECHA_CIERRE: TSQLTimeStampField;
    CDSBuscaCajaNUMEROCAJA: TIntegerField;
    CDSBuscaCajaMUESTRACAJA: TStringField;
    CDSBuscaBanco: TClientDataSet;
    DSPBuscaBanco: TDataSetProvider;
    CDSBuscaBancoID_BANCO: TIntegerField;
    CDSBuscaBancoNOMBRE: TStringField;
    CDSBuscaBancoDIRECCION: TStringField;
    CDSBuscaFormPago: TClientDataSet;
    DSPBuscaFormaPago: TDataSetProvider;
    CDSBuscaFormPagoID_FPAGO: TIntegerField;
    CDSBuscaFormPagoID_TPAGO: TIntegerField;
    CDSBuscaFormPagoDESCRIPCION: TStringField;
    CDSBuscaFormPagoCOTIZACION: TFloatField;
    CDSBuscaFormPagoSIGNO: TStringField;
    CDSBuscaFormPagoMONEDA: TIntegerField;
    CDSBuscaCtaBco: TClientDataSet;
    DSPBuscaCtaBco: TDataSetProvider;
    CDSBuscaCtaBcoID_CUENTA: TIntegerField;
    CDSBuscaCtaBcoNOMBRE: TStringField;
    CDSBuscaCtaBcoNRO_CUENTA: TStringField;
    CDSFormaPagoEfec: TClientDataSet;
    DSPFormaPagoEfec: TDataSetProvider;
    CDSFormaPagoEfecID_FPAGO: TIntegerField;
    CDSFormaPagoEfecID_TPAGO: TIntegerField;
    CDSFormaPagoEfecDESCRIPCION: TStringField;
    CDSFormaPagoEfecCOTIZACION: TFloatField;
    CDSFormaPagoEfecSIGNO: TStringField;
    CDSFormaPagoEfecMONEDA: TIntegerField;
    QMovTCCompraMUESTRANROTC: TStringField;
    CDSMovTCCompraMUESTRANROTC: TStringField;
    DBText18: TDBText;
    Label43: TLabel;
    DBEdit1: TJvDBDateEdit;
    Label44: TLabel;
    DBEdit2: TJvDBDateEdit;
    Label46: TLabel;
    lbMuestraSaldo: TJvLabel;
    lbSaldoCaja: TJvLabel;
    Label62: TLabel;
    DBText36: TDBText;
    ComBuscadorCaja: TComBuscador;
    ComBuscadorTC: TComBuscador;
    ComBuscadorBanco: TComBuscador;
    ComBuscadorFormaPago: TComBuscador;
    ComBuscadorCtaBco: TComBuscador;
    Label47: TLabel;
    DBText19: TDBText;
    QCajaCab: TFDQuery;
    QFormaPago: TFDQuery;
    QBanco: TFDQuery;
    QChequera: TFDQuery;
    QCtaCajaBco: TFDQuery;
    QFormaPagoID_FPAGO: TIntegerField;
    QFormaPagoID_TPAGO: TIntegerField;
    QFormaPagoDESCRIPCION: TStringField;
    QFormaPagoCOTIZACION: TFloatField;
    QFormaPagoSIGNO: TStringField;
    QFormaPagoMONEDA: TIntegerField;
    QFormaPagoACUMULABLE: TStringField;
    QBancoID_BANCO: TIntegerField;
    QBancoNOMBRE: TStringField;
    QBancoDIRECCION: TStringField;
    QBancoTELEFONOS: TStringField;
    QBancoSUCURSAL: TStringField;
    QBancoLOCALIDAD: TStringField;
    QBancoNOTAS: TMemoField;
    QBancoID_POSTAL: TIntegerField;
    QBancoMUESTRALOCALIDAD: TStringField;
    QBancoMUESTRATELEDISCADO: TStringField;
    QCtaCajaBcoID_CUENTA: TIntegerField;
    QCtaCajaBcoID_TIPO_CTA: TIntegerField;
    QCtaCajaBcoNOMBRE: TStringField;
    QCtaCajaBcoNRO_CUENTA: TStringField;
    QCtaCajaBcoID_BANCO: TIntegerField;
    QCtaCajaBcoCUIT: TStringField;
    QCtaCajaBcoRAZONSOCIAL: TStringField;
    QCtaCajaBcoMUESTRABANCO: TStringField;
    QChequeraID_CHEQUERA: TIntegerField;
    QChequeraID_CUENTA: TIntegerField;
    QChequeraNRO_CUENTA: TStringField;
    QChequeraNUMERO_INCIAL: TIntegerField;
    QChequeraNUMERO_FINAL: TIntegerField;
    QChequeraULTIMO_NUMERO: TIntegerField;
    QChequeraDIFERIDO: TSmallintField;
    QChequeraNOMBRE: TStringField;
    QChequeraID_BANCO: TIntegerField;
    QChequeraMONEDA: TIntegerField;
    QChequeraCANT_CHE_EMITIDOS: TIntegerField;
    QChequeraCHEQUERA_TERMINADA: TStringField;
    QChequeraMUESTRABANCO: TStringField;
    QChequeraMUESTRACUENTA: TStringField;
    QSaldoFinal: TFDQuery;
    QSaldoFinalMONEDA: TIntegerField;
    QSaldoFinalSALDO: TFloatField;
    QSaldoFinalDEBE: TFloatField;
    QSaldoFinalHABER: TFloatField;
    QSaldoFinalFPAGO: TSmallintField;
    QSaldoFinalTPAGO: TSmallintField;
    QSaldoFinalCOTIZACION: TFloatField;
    QSaldoFinalDISPONIBILIDAD: TFloatField;
    QSaldoFinalDETALLE: TStringField;
    QCajaCabID_CAJA: TIntegerField;
    QCajaCabID_CUENTA_CAJA: TIntegerField;
    QCajaCabSALDO_INCIAL: TFloatField;
    QCajaCabESTADO: TIntegerField;
    QCajaCabOBS: TMemoField;
    QCajaCabNUMEROCAJA: TIntegerField;
    QCajaCabMUESTRACTACAJA: TStringField;
    QTCreditoFD: TFDQuery;
    QTCreditoFDID: TIntegerField;
    QTCreditoFDNRO_TARJETA: TStringField;
    QTCreditoFDNOMBRE: TStringField;
    QTCreditoFDID_BANCO: TIntegerField;
    QTCreditoFDMONEDA: TIntegerField;
    QTCreditoFDID_TCREDITO: TIntegerField;
    QBuscaTCredito: TFDQuery;
    QControlCheque: TFDQuery;
    QControlChequeID_CHEQUERA: TIntegerField;
    QControlChequeNUMERO_INCIAL: TIntegerField;
    QControlChequeNUMERO_FINAL: TIntegerField;
    QBuscaChe: TFDQuery;
    QBuscaCheID_CHEQUE_PRO: TIntegerField;
    spLoteCheques: TSpeedButton;
    QFormaPEfec: TFDQuery;
    QFormaPCHe3: TFDQuery;
    QFormaPCHe3ID_FPAGO: TIntegerField;
    QFormaPCHe3ID_TPAGO: TIntegerField;
    DBEBancoChe3: TDBEdit;
    DBEEntregadoPorChe3: TDBEdit;
    DBENroChe3: TDBEdit;
    DBEEntregadoAChe3: TDBEdit;
    dbeunidadesChe3: TDBEdit;
    DBEdit12: TDBEdit;
    dbeImporteChe3: TDBEdit;
    DBEdit22: TDBEdit;
    DBEChequera: TDBEdit;
    DBENroChe: TDBEdit;
    DBEOrdenDe: TDBEdit;
    dbeUnidadesCheque: TDBEdit;
    DBEImporteLetras: TDBEdit;
    dbeImporteCheque: TDBEdit;
    DBDFechaEmisionChe3: TJvDBDateEdit;
    DBDFechaCobroChe3: TJvDBDateEdit;
    DBDFechaIngresoChe3: TJvDBDateEdit;
    DBDFechaEgresoChe3: TJvDBDateEdit;
    QChe3MUESTRACTABANCARIA: TStringField;
    CDSChe3MUESTRACTABANCARIA: TStringField;
    DBText20: TDBText;
    QCajaCabFECHA_INCIO: TSQLTimeStampField;
    QCajaCabFECHA_CIERRE: TSQLTimeStampField;
    CargaLoteChePropio: TAction;
    PopupMenu1: TPopupMenu;
    CargaLotedeChePropio1: TMenuItem;
    QFormaPChe: TFDQuery;
    QFormaPCheID_FPAGO: TIntegerField;
    QFormaPCheID_TPAGO: TIntegerField;
    JvDBStatusLabel1: TJvDBStatusLabel;
    DBText22: TDBText;
    QTransBcoMUESTRANROCTA: TStringField;
    CDSTransBcoMUESTRANROCTA: TStringField;
    Label48: TLabel;
    N1: TMenuItem;
    SincronizaChe3: TAction;
    spSincronizaChe3: TFDStoredProc;
    SincronizaChe31: TMenuItem;
    PROCEDURE dbgMovimientosColEnter(Sender: TObject);
    PROCEDURE dbgMovimientosEditButtonClick(Sender: TObject);
    PROCEDURE dbgMovimientosKeyPress(Sender: TObject; VAR Key: Char);
    PROCEDURE PostChe3Execute(Sender: TObject);
    PROCEDURE CancelChe3Execute(Sender: TObject);
    PROCEDURE PostEfectivoExecute(Sender: TObject);
    PROCEDURE CancelEfectivoExecute(Sender: TObject);
    PROCEDURE BuscarFormaPagoExecute(Sender: TObject);
    PROCEDURE BuscarChequeraExecute(Sender: TObject);
    PROCEDURE PostChequeExecute(Sender: TObject);
    PROCEDURE CancelChequeExecute(Sender: TObject);
    PROCEDURE DSChe3StateChange(Sender: TObject);
    PROCEDURE DSMovEfectivoStateChange(Sender: TObject);
    PROCEDURE DSChequesStateChange(Sender: TObject);
    PROCEDURE CDSChe3AfterPost(DataSet: TDataSet);
    PROCEDURE CDSChe3NewRecord(DataSet: TDataSet);
    PROCEDURE CDSMovEfectivoAfterPost(DataSet: TDataSet);
    PROCEDURE CDSMovEfectivoNewRecord(DataSet: TDataSet);
    PROCEDURE CDSChequesAfterPost(DataSet: TDataSet);
    PROCEDURE CDSChequesNewRecord(DataSet: TDataSet);
    PROCEDURE CDSCajaMovAfterDelete(DataSet: TDataSet);
    PROCEDURE CDSCajaMovAfterPost(DataSet: TDataSet);
    PROCEDURE CDSCajaMovAfterScroll(DataSet: TDataSet);
    PROCEDURE CDSCajaMovBeforeDelete(DataSet: TDataSet);
    PROCEDURE CDSCajaMovBeforeInsert(DataSet: TDataSet);
    PROCEDURE CDSCajaMovNewRecord(DataSet: TDataSet);
    PROCEDURE CDSMovEfectivoUNIDADESSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSChequesID_CHEQUERASetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSChequesUNIDADESSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSCajaMovID_FPAGOSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE ceCajaButtonClick(Sender: TObject);
    PROCEDURE BuscarBancoExecute(Sender: TObject);
    PROCEDURE CDSChe3ID_BANCOSetText(Sender: TField; CONST Text: STRING);
    PROCEDURE CDSChe3UNIDADESSetText(Sender: TField; CONST Text: STRING);
    PROCEDURE ceCajaKeyDown(Sender: TObject; VAR Key: Word;
      Shift: TShiftState);
    PROCEDURE CDSCajaMovBeforePost(DataSet: TDataSet);
    PROCEDURE dbeunidadesChe3KeyDown(Sender: TObject; VAR Key: Word;
      Shift: TShiftState);
    PROCEDURE dbeUnidadesChequeKeyDown(Sender: TObject; VAR Key: Word;
      Shift: TShiftState);
    PROCEDURE DBEBancoChe3KeyPress(Sender: TObject; VAR Key: Char);
    PROCEDURE DBEChequeraKeyPress(Sender: TObject; VAR Key: Char);
//    PROCEDURE wwDBETc_IdKeyPress(Sender: TObject; VAR Key: Char);
    PROCEDURE CDSChe3BeforeDelete(DataSet: TDataSet);
    procedure CDSChequesNUMEROSetText(Sender: TField;
      const Text: String);
    procedure BuscarCtaBcoExecute(Sender: TObject);
    procedure CDSTransBcoID_CUENTA_BANCOSetText(Sender: TField;
      const Text: String);
    procedure CDSTransBcoUNIDADESSetText(Sender: TField;
      const Text: String);
    procedure CDSTransBcoAfterPost(DataSet: TDataSet);
    procedure CDSTransBcoNewRecord(DataSet: TDataSet);
    procedure PostTransExecute(Sender: TObject);
    procedure CancelTransExecute(Sender: TObject);
    procedure CDSDebitosAfterPost(DataSet: TDataSet);
    procedure CDSDebitosNewRecord(DataSet: TDataSet);
    procedure CDSDebitosID_CUENTA_BANCOSetText(Sender: TField;
      const Text: String);
    procedure CDSDebitosUNIDADESSetText(Sender: TField;
      const Text: String);
    procedure PosDebitoExecute(Sender: TObject);
    procedure CancelDebitoExecute(Sender: TObject);
    procedure DSTransBcoStateChange(Sender: TObject);
    procedure DSDebitosStateChange(Sender: TObject);
    procedure pcValoresChanging(Sender: TObject; var AllowChange: Boolean);
    procedure CDSDebitosBeforePost(DataSet: TDataSet);
    procedure CDSTransBcoBeforePost(DataSet: TDataSet);
    procedure CDSChe3BeforePost(DataSet: TDataSet);
    procedure CDSMovEfectivoBeforePost(DataSet: TDataSet);
    procedure CDSChequesBeforePost(DataSet: TDataSet);
    procedure ceCajaExit(Sender: TObject);
    procedure CDSChe3AfterEdit(DataSet: TDataSet);
    procedure CDSChe3BeforeEdit(DataSet: TDataSet);
    procedure DSCajaMovStateChange(Sender: TObject);
    procedure CDSMovTCCompraNewRecord(DataSet: TDataSet);
    procedure BuscarTCreditoExecute(Sender: TObject);
    procedure CDSMovTCCompraID_TARJETASetText(Sender: TField;
      const Text: String);
    procedure CDSMovTCCompraUNIDADESSetText(Sender: TField;
      const Text: String);
    procedure CancelaTCExecute(Sender: TObject);
    procedure PostTCExecute(Sender: TObject);
    procedure DSMovTCCompraStateChange(Sender: TObject);
    procedure CDSMovTCCompraAfterPost(DataSet: TDataSet);
    procedure CDSMovTCCompraBeforePost(DataSet: TDataSet);
    procedure dbcTCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcTCKeyPress(Sender: TObject; var Key: Char);
    procedure CDSMovTCCuotaNewRecord(DataSet: TDataSet);
    procedure CDSMovTCCompraBeforeDelete(DataSet: TDataSet);
    procedure ceCajaEnter(Sender: TObject);
    procedure ceCajaChange(Sender: TObject);
    procedure ceCajaKeyPress(Sender: TObject; var Key: Char);
    procedure CDSCajaMovAfterOpen(DataSet: TDataSet);
    procedure DSPDebitosUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure DSPTransBcoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure DSPChe3UpdateError(Sender: TObject; DataSet: TCustomClientDataSet;
      E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure DSPMovEfectivoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure DSPChequesUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure DSPMovTCCompraUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure DSPMovTCCuotaUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure DBText12Click(Sender: TObject);
    procedure DBText12MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CDSChequesBeforeInsert(DataSet: TDataSet);
    procedure DBENroCheExit(Sender: TObject);
    procedure CDSChequesFECHA_COBROSetText(Sender: TField; const Text: string);
    procedure dbeFechaCobroExit(Sender: TObject);
    procedure dbeFechaEmisionExit(Sender: TObject);
    procedure spLoteChequesClick(Sender: TObject);
    procedure CDSChequesReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure RxLabel4Click(Sender: TObject);
    procedure RxLabel4MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure CargaLoteChePropioExecute(Sender: TObject);
    procedure SincronizaChe3Execute(Sender: TObject);
    procedure pcValoresChange(Sender: TObject);
  private
    { Private declarations }
  public
    Id_Caja         : Integer;
    id_cuenta_caja  : Integer;
    IdCpbte         : Integer;
    TipoCpbte       : STRING;
    ClaseCpbte      : STRING;
    NroCpbte        : STRING;
    Origen          : STRING;
    FechaCaja       : TDateTime;
    FechaOperacion  : TDateTime;
    TipoOperacion   : STRING;
    CtaBcoDepositado: Integer;
    SumaValores     : Extended;
    SumaEfectivo    : Extended;
    MascaraImportes : String;
    CajaOld         : String;
    CDSClone:TClientDataSet;
    PROCEDURE CalcularValores;
    FUNCTION AsignaFormaPago(Dato: Integer): Boolean;
    FUNCTION AsignaChequera(Dato: Integer): Boolean;
    FUNCTION AsignaBanco(Dato: Integer): Boolean;
    FUNCTION AsignaCtaBco(Dato: Integer): Boolean;
    function AsignaTC(dato:Integer):Boolean;
    procedure InicicalizaMascarasNumericas;
    procedure ActulizaCajaMovimientos;
    procedure CargarMovTC;
    { Public declarations }
  END;

IMPLEMENTATION

USES UCarteraCheques, UBuscadorChequeras, DMBuscadoresForm,
     UValorCuotaTC, UControlAperturaCaja, UDMain_FD , UCaja,
  UImportarLoteCheques;
{$R *.DFM}

procedure TFrameMovValoresEgresos.CargaLoteChePropioExecute(Sender: TObject);
var IDFPago:Integer;
begin
  if not(Assigned(FormImportarLoteChePropios)) then
    FormImportarLoteChePropios:=TFormImportarLoteChePropios.Create(Self);
  FormImportarLoteChePropios.ShowModal;
  if ((FormImportarLoteChePropios.ModalResult=mrOk) ) then
    begin
      QFormaPChe.Close;
      QFormaPChe.Open;
      QFormaPChe.First;
      IDFPago:=QFormaPCheID_FPAGO.Value;
      QFormaPChe.Close;

      FormImportarLoteChePropios.mtCheques.First;
      while not(FormImportarLoteChePropios.mtCheques.eof) do
        begin
          CDSCajaMov.Append;
          CDSCajaMovID_FPAGOSetText(CDSCajaMovID_FPAGO,IntToStr(IDfpago));
          if FormImportarLoteChePropios.IDChequera<=-1 then
            CDSChequesID_CHEQUERASetText(CDSChequesID_CHEQUERA,FormImportarLoteChePropios.mtCheques.FieldByName('CodigoChequera').AsString)
          else
            CDSChequesID_CHEQUERASetText(CDSChequesID_CHEQUERA,IntToStr(FormImportarLoteChePropios.IDChequera));


          CDSChequesFECHA_EMISION.AsDateTime := FormImportarLoteChePropios.mtCheques.FieldByName('FechaEmision').AsDateTime;
          CDSChequesFECHA_COBRO.AsDateTime   := FormImportarLoteChePropios.mtCheques.FieldByName('FechaCobro').AsDateTime;
          if Trim(FormImportarLoteChePropios.mtCheques.FieldByName('Numero').AsString)='' then
            CDSChequesNUMEROSetText(CDSChequesNUMERO,FormImportarLoteChePropios.mtCheques.FieldByName('Numero').AsString);
          CDSChequesUNIDADESSetText(CDSChequesUNIDADES,FormImportarLoteChePropios.mtCheques.FieldByName('Importe').AsString);
          CDSCheques.Post;
          FormImportarLoteChePropios.mtCheques.Next;
        end;
    end;
end;

procedure TFrameMovValoresEgresos.CargarMovTC;
begin
//
end;

procedure TFrameMovValoresEgresos.ActulizaCajaMovimientos;
begin
   CDSCajaMov.First;
   while CDSCajaMov.RecordCount>0 do
     begin
       CDSCajaMov.Delete;
       CDSCajaMov.First;
     end;
   CDSCajaMov.EmptyDataSet;
 // wwCDSCajaMov.DisableControls;
  while not(CDSCajaMov.Eof) do
    begin
      CDSCajaMov.edit;
      CDSCajaMovID_CAJA.Value         := Id_Caja;
      CDSCajaMovID_CUENTA_CAJA.Value  := id_cuenta_caja;
        if CDSCajaMovID_TPAGO.Value=1 Then
          BEGIN //Efectivo
            CDSMovEfectivo.edit;
            CDSMovEfectivoID_CAJA.Value       :=Id_Caja;
            CDSMovEfectivoID_CUENTA_CAJA.Value:=id_cuenta_caja;
 //           wwCDSMovEfectivo.Post;
          END
        else
          if CDSCajaMovID_TPAGO.Value=2 Then
            BEGIN //Cheques propios
              CDSCheques.edit;
              CDSChequesID_CAJA.Value       :=Id_Caja;
              CDSChequesID_CUENTA_CAJA.Value:=id_cuenta_caja;
         //     wwCDSCheques.Post;
            END
          else
            if CDSCajaMovID_TPAGO.Value=3 Then
              BEGIN // cheques de tercero
                CDSChe3.edit;
                CDSChe3ID_CAJA.Value       :=Id_Caja;
                CDSChe3ID_CUENTA_CAJA.Value:=id_cuenta_caja;
        //        wwCDSChe3.Post;
              END
            else
              if CDSCajaMovID_TPAGO.Value=5 Then
                BEGIN // Trans.de Banco
                  CDSTransBco.edit;
                  CDSTransBcoID_CAJA.Value       :=Id_Caja;
                  CDSTransBcoID_CUENTA_CAJA.Value:=id_cuenta_caja;
        //          wwCDSTransBco.Post;
                END
              else
                if CDSCajaMovID_TPAGO.Value=6 Then
                  BEGIN // debitos de Banco
                    CDSDebitos.edit;
                    CDSDebitosID_CAJA.Value       :=Id_Caja;
                    CDSDebitosID_CUENTA_CAJA.Value:=id_cuenta_caja;
        //           wwCDSDebitos.Post;
                  END;
      CDSCajaMov.Next;
    end;
//  wwCDSCajaMov.EnableControls;
end;

PROCEDURE TFrameMovValoresEgresos.CalcularValores;
VAR
  Puntero: TBookmark;
BEGIN
  SumaEfectivo := 0;
  Puntero      := CDSCajaMov.GetBookmark;
  CDSCajaMov.First;
  CDSCajaMov.DisableControls;
  SumaValores := 0;
  WHILE NOT (CDSCajaMov.Eof) DO
    BEGIN
      if CDSCajaMovID_TPAGO.Value=1 then
        SumaEfectivo:=SumaEfectivo+CDSCajaMovHABER.AsFloat;
      IF TipoOperacion = 'E' THEN
        SumaValores := SumaValores + CDSCajaMovHABER.AsFloat
      ELSE IF TipoOperacion = 'I' THEN
        SumaValores := SumaValores + CDSCajaMovDEBE.AsFloat;
      CDSCajaMov.Next;
    END;
  CDSCajaMov.GotoBookmark(Puntero);
  CDSCajaMov.FreeBookmark(Puntero);
  CDSCajaMov.EnableControls;
  lbTotalValores.Caption := FormatFloat(MascaraImportes, SumaValores);
END;

FUNCTION TFrameMovValoresEgresos.AsignaFormaPago(Dato: Integer): Boolean;
BEGIN
  QFormaPago.Close;
  QFormaPago.ParamByName('ID').Value := Dato;
  QFormaPago.Open;
  IF NOT (QFormaPago.Eof) THEN
    BEGIN
      Result := True;
      CDSCajaMovMUESTRAFORMAPAGO.Value := QFormaPagoDESCRIPCION.Value;
      CDSCajaMovCOTIZACION.Value       := QFormaPagoCOTIZACION.AsFloat;
      CDSCajaMovID_TPAGO.Value         := QFormaPagoID_TPAGO.Value;
      CDSCajaMovMONEDA.Value           := QFormaPagoMONEDA.Value;
      CDSCajaMovID_FPAGOOLD.Value      := Dato;
    END
  ELSE
    BEGIN
      Result := False;
      CDSCajaMovMUESTRAFORMAPAGO.Clear;
      CDSCajaMovCOTIZACION.Clear;
      CDSCajaMovID_TPAGO.Clear;
      CDSCajaMovMONEDA.Clear;
      CDSCajaMovID_FPAGOOLD.Clear;
    END;
  QFormaPago.Close;
END;

FUNCTION TFrameMovValoresEgresos.AsignaChequera(Dato: Integer): Boolean;
var Terminada:String;
BEGIN
  QChequera.Close;
  QChequera.ParamByName('id').Value := dato;
  QChequera.Open;
  if Not(QChequera.IsEmpty) Then
    begin
      if ((QChequeraCHEQUERA_TERMINADA.Value='N') or (QChequeraCHEQUERA_TERMINADA.AsString='')) Then
        Terminada:='N'
      else
        Terminada:='S';
      if (Terminada='S') and (TipoCpbte='QR') Then
        Terminada:='N';
      if terminada='N' Then
        begin
          Result := True;
          CDSChequesID_BANCO.Value        := QChequeraID_BANCO.Value;
          CDSChequesMUESTRACHEQUERA.Value := QChequeraNOMBRE.Value;
          CDSChequesID_CUENTA_BANCO.Value := QChequeraID_CUENTA.Value;
          CDSChequesMUESTRANI.Value       := QChequeraNUMERO_INCIAL.Value;
          CDSChequesMUESTRANF.Value       := QChequeraNUMERO_FINAL.Value;
          //asigno el nro siguiente segun la chequera
          CDSChequesNUMERO.Value          := QChequeraULTIMO_NUMERO.Value+1;
          if (CDSClone<>nil) and (CDSClone.RecordCount>0) then
            begin
              CDSClone.Filtered        := False;
              CDSClone.Filter          := 'ID_CHEQUERA = '+''+CDSChequesID_CHEQUERA.AsString+'';
              CDSClone.Filtered        := True;
              CDSClone.IndexFieldNames := 'NUMERO';
              CDSClone.Last;
              CDSChequesNUMEROSetText(CDSChequesNUMERO,IntToStr(CDSClone.FieldByName('NUMERO').AsInteger+1));
           end;
        END
      ELSE
        begin
          Result := False;
          CDSChequesID_BANCO.Clear;
          CDSChequesMUESTRACHEQUERA.Clear;
          CDSChequesID_CUENTA_BANCO.Clear;
          CDSChequesMUESTRANI.Clear;
          CDSChequesMUESTRANF.Clear;
          CDSChequesNUMERO.Clear;
          ShowMessage('Chequera terminada......!!!');
        end;
    end
  else
    begin
      Result := False;
      CDSChequesID_BANCO.Clear;
      CDSChequesMUESTRACHEQUERA.Clear;
      CDSChequesID_CUENTA_BANCO.Clear;
      CDSChequesMUESTRANI.Clear;
      CDSChequesMUESTRANF.Clear;
      CDSChequesNUMERO.Clear;
      ShowMessage('Chequera Inexsitente......!!!');
    end;
  QChequera.Close;
END;

FUNCTION TFrameMovValoresEgresos.AsignaBanco(Dato: Integer): Boolean;
BEGIN
  QBanco.Close;
  QBanco.ParamByName('id').Value := dato;
  QBanco.Open;
  IF NOT (QBanco.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSChe3MUESTRABANCO.Value := QBancoNOMBRE.Value;
    END
  ELSE
    Result := False;
  QBanco.Close;
END;

FUNCTION TFrameMovValoresEgresos.AsignaCtaBco(Dato: Integer): Boolean;
BEGIN
  QCtaCajaBco.Close;
  QCtaCajaBco.ParamByName('id').Value := dato;
  QCtaCajaBco.Open;
  IF NOT(QCtaCajaBco.IsEmpty) and (QCtaCajaBcoID_TIPO_CTA.Value=2) THEN
    BEGIN
      Result := True;
      if pcValores.ActivePage=tsTransf Then
        begin
          CDSTransBcoMUESTRACTACAJA.Value := QCtaCajaBcoNOMBRE.Value;
          CDSTransBcoMUESTRANROCTA.Value  := QCtaCajaBcoNRO_CUENTA.Value;
        end
      else
        if pcValores.ActivePage=tsDebito Then
          CDSDebitosMUESTRACTACAJA.Value := QCtaCajaBcoNOMBRE.Value;

    END
  ELSE
    begin
      Result := False;
      if pcValores.ActivePage=tsTransf Then
        begin
          CDSTransBcoMUESTRACTACAJA.Value := '';
          CDSTransBcoMUESTRANROCTA.Value  := '';
        end
      else
        if pcValores.ActivePage=tsDebito Then
          CDSDebitosMUESTRACTACAJA.Value := '';
    end;
  QCtaCajaBco.Close;
END;

FUNCTION TFrameMovValoresEgresos.AsignaTC(Dato: Integer): Boolean;
BEGIN
  QTCreditoFD.Close;
  QTCreditoFD.ParamByName('id').Value := dato;
  QTCreditoFD.Open;
  IF (QTCreditoFDID.AsString<>'') THEN
    BEGIN
      Result := True;
      CDSMovTCCompraMUESTRATC.Value      := QTCreditoFDNOMBRE.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSMovTCCompraMUESTRATC.Value      := '';
    END;
  QTCreditoFD.Close;
END;


procedure TFrameMovValoresEgresos.InicicalizaMascarasNumericas;
begin
   MascaraImportes:= DMMain_FD.MascaraImportes;
  // Movimientos de Caja
  TFloatField(CDSCajaMovHABER).EditFormat             :=MascaraImportes;
  TFloatField(CDSCajaMovDEBE).EditFormat              :=MascaraImportes;
  TFloatField(CDSCajaMovUNIDADES).EditFormat          :=MascaraImportes;
  TFloatField(CDSCajaMovHABER).DisplayFormat          :=MascaraImportes;
  TFloatField(CDSCajaMovDEBE).DisplayFormat           :=MascaraImportes;
  TFloatField(CDSCajaMovUNIDADES).DisplayFormat       :=MascaraImportes;
  //Efectivo
  TFloatField(CDSMovEfectivoCOTIZACION).EditFormat    :=MascaraImportes;
  TFloatField(CDSMovEfectivoUNIDADES).EditFormat      :=MascaraImportes;
  TFloatField(CDSMovEfectivoIMPORTE).EditFormat       :=MascaraImportes;
  //Cheques de Tercero
  TFloatField(CDSChe3UNIDADES).EditFormat             :=MascaraImportes;
  TFloatField(CDSChe3COTIZACION).EditFormat           :=MascaraImportes;
  TFloatField(CDSChe3IMPORTE).EditFormat              :=MascaraImportes;
  //Cheques
  TFloatField(CDSChequesUNIDADES).EditFormat          :=MascaraImportes;
  TFloatField(CDSChequesIMPORTE).EditFormat           :=MascaraImportes;
  //Transferencias Bancarias
  TFloatField(CDSTransBcoUNIDADES).EditFormat         :=MascaraImportes;
  TFloatField(CDSTransBcoCOTIZACION).EditFormat       :=MascaraImportes;
  TFloatField(CDSTransBcoIMPORTE).EditFormat          :=MascaraImportes;
  //Debitos Bancarias
  TFloatField(CDSDebitosUNIDADES).EditFormat          :=MascaraImportes;
  TFloatField(CDSDebitosCOTIZACION).EditFormat        :=MascaraImportes;
  TFloatField(CDSDebitosIMPORTE).EditFormat           :=MascaraImportes;
  //Tarjeta de Crdito
  TFloatField(CDSMovTCCompraUNIDADES).EditFormat      :=MascaraImportes;
  TFloatField(CDSMovTCCompraCOTIZACION).EditFormat    :=MascaraImportes;
  TFloatField(CDSMovTCCompraIMPORTE).EditFormat       :=MascaraImportes;
  //Efectivo
  TFloatField(CDSMovEfectivoCOTIZACION).DisplayFormat :=MascaraImportes;
  TFloatField(CDSMovEfectivoUNIDADES).DisplayFormat   :=MascaraImportes;
  TFloatField(CDSMovEfectivoIMPORTE).DisplayFormat    :=MascaraImportes;
  //Cheques de Tercero
  TFloatField(CDSChe3UNIDADES).DisplayFormat          :=MascaraImportes;
  TFloatField(CDSChe3COTIZACION).DisplayFormat        :=MascaraImportes;
  TFloatField(CDSChe3IMPORTE).DisplayFormat           :=MascaraImportes;
  //Cheques
  TFloatField(CDSChequesUNIDADES).DisplayFormat       :=MascaraImportes;
  TFloatField(CDSChequesIMPORTE).DisplayFormat        :=MascaraImportes;
  //Transferencias Bancarias
  TFloatField(CDSTransBcoUNIDADES).DisplayFormat      :=MascaraImportes;
  TFloatField(CDSTransBcoCOTIZACION).DisplayFormat    :=MascaraImportes;
  TFloatField(CDSTransBcoIMPORTE).DisplayFormat       :=MascaraImportes;
  //Debitos Bancarias
  TFloatField(CDSDebitosUNIDADES).DisplayFormat       :=MascaraImportes;
  TFloatField(CDSDebitosCOTIZACION).DisplayFormat     :=MascaraImportes;
  TFloatField(CDSDebitosIMPORTE).DisplayFormat        :=MascaraImportes;
  //Tarjeta de Crdito
  TFloatField(CDSMovTCCompraUNIDADES).DisplayFormat   :=MascaraImportes;
  TFloatField(CDSMovTCCompraCOTIZACION).DisplayFormat :=MascaraImportes;
  TFloatField(CDSMovTCCompraIMPORTE).DisplayFormat    :=MascaraImportes;
  //*******************

end;


PROCEDURE TFrameMovValoresEgresos.dbgMovimientosColEnter(Sender: TObject);
BEGIN
  IF dbgMovimientos.SelectedIndex = 1 THEN
    dbgMovimientos.SelectedIndex := 0
  ELSE IF dbgMovimientos.SelectedIndex = 2 THEN
    dbgMovimientos.SelectedIndex := 0
      ELSE IF dbgMovimientos.SelectedIndex = 3 THEN
    dbgMovimientos.SelectedIndex := 0;

END;

PROCEDURE TFrameMovValoresEgresos.dbgMovimientosEditButtonClick(Sender:
  TObject);
BEGIN
  if dbgMovimientos.ReadOnly=True Then
    Raise Exception.Create('No se puede modifiar si el comprobante no esta en modo de modificación...');
  BuscarFormaPago.Execute;
END;

PROCEDURE TFrameMovValoresEgresos.dbgMovimientosKeyPress(Sender: TObject;
  VAR Key: Char);
BEGIN
  IF (Key = #10) AND (dbgMovimientos.SelectedIndex = 0) THEN
    BEGIN
      Key := #0;
      BuscarFormaPago.Execute;
    END;
END;

PROCEDURE TFrameMovValoresEgresos.PostChe3Execute(Sender: TObject);
BEGIN
  // IF TipoOperacion='E' Then
  BEGIN
    CDSChe3UNIDADESSetText(CDSChe3UNIDADES,dbeunidadesChe3.Text);
    IF (Trunc(CDSChe3UNIDADES.AsFloat*1000) <> 0) and (Trunc(CDSChe3IMPORTE.AsFloat*1000) <> 0) and
       (CDSChe3UNIDADES.AsString<>'') and (CDSChe3IMPORTE.AsString<>'')
    THEN
      CDSChe3.Post
    ELSE
      BEGIN
        ShowMessage('No se ingreso importe');
        dbeunidadesChe3.SetFocus;
      END;
  END;
END;

PROCEDURE TFrameMovValoresEgresos.CancelChe3Execute(Sender: TObject);
BEGIN
  CDSChe3.Cancel;
  CDSCajaMov.Cancel;
END;

PROCEDURE TFrameMovValoresEgresos.PostEfectivoExecute(Sender: TObject);
BEGIN
  IF (Trunc(CDSMovEfectivoUNIDADES.AsFloat*1000) <> 0 ) THEN
    CDSMovEfectivo.Post
  ELSE
    BEGIN
      ShowMessage('No se ingreso importe');
      dbeUnidades.SetFocus;
    END;
END;

PROCEDURE TFrameMovValoresEgresos.CancelEfectivoExecute(Sender: TObject);
BEGIN
  CDSMovEfectivo.Cancel;
  CDSCajaMov.Cancel;
END;

PROCEDURE TFrameMovValoresEgresos.BuscarFormaPagoExecute(Sender: TObject);
BEGIN
  CDSBuscaFormPago.Close;
  CDSBuscaFormPago.Open;
  ComBuscadorFormaPago.Execute;
  IF comBuscadorFormaPago.rOk THEN
    BEGIN
      IF CDSCajaMov.State = dsBrowse THEN
        CDSCajaMov.Edit;
      CDSCajaMovID_FPAGOSetText(CDSCajaMovID_FPAGO,IntToStr(comBuscadorFormaPago.id));
    END;
  CDSBuscaFormPago.Close;

END;

PROCEDURE TFrameMovValoresEgresos.BuscarChequeraExecute(Sender: TObject);
BEGIN
  if Not(Assigned(FormBuscadorChequeras)) Then
    FormBuscadorChequeras:=TFormBuscadorChequeras.Create(Application);
  FormBuscadorChequeras.ShowModal;
  if FormBuscadorChequeras.IdChequera>=0 Then
    begin
      CDSChequesID_CHEQUERASetText(CDSChequesID_CHEQUERA,IntToStr(FormBuscadorChequeras.IdChequera));
      DBENroChe.SetFocus;
    end;
END;

PROCEDURE TFrameMovValoresEgresos.PostChequeExecute(Sender: TObject);
var fecha1,Fecha2:String;
BEGIN
  fecha1:= dbeFechaEmision.EditText;
  fecha2:= dbeFechaCobro.EditText;
  // if TipoOperacion='E' Then
  IF (Trunc(CDSChequesUNIDADES.AsFloat*10000)<> 0) and
     (CDSChequesUNIDADES.AsString <> '') and
     (Trunc(CDSChequesIMPORTE.AsFloat*1000)<> 0) and (CDSChequesIMPORTE.AsString <> '') and
     (CDSChequesNUMERO.AsString<>'') and (fecha1<>'  /  /    ') and (fecha2<>'  /  /    ') and
     (CDSChequesID_CHEQUERA.AsString<>'') THEN
    CDSCheques.Post
  ELSE
    BEGIN
      if Trunc(CDSChequesIMPORTE.AsFloat*10000)<=0 Then
        ShowMessage('No se ingreso importe')
      else
        if CDSChequesNumero.AsString='' Then
          ShowMessage('No se ingreso numero')
        else
          if CDSChequesID_CHEQUERA.AsString='' Then
            ShowMessage('No se ingreso chequera')
          else
            if Fecha1='  /  /    ' Then
              ShowMessage('Falta Fecha Emision')
            else
              if Fecha2='  /  /    ' Then
                ShowMessage('Falta Fecha Cobro');


      if Trunc(CDSChequesUNIDADES.AsFloat*10000)=0 Then
        dbeUnidadesCheque.SetFocus
      else
        if CDSChequesNUMERO.AsString='' Then
          DBENroChe.SetFocus;
    END;
END;

PROCEDURE TFrameMovValoresEgresos.CancelChequeExecute(Sender: TObject);
BEGIN
  CDSCheques.Cancel;
  CDSCajaMov.Cancel;
END;

PROCEDURE TFrameMovValoresEgresos.DSChe3StateChange(Sender: TObject);
BEGIN
  PostChe3.Enabled       := DSChe3.State IN [dsInsert, dsEdit];
  CancelChe3.Enabled     := DSChe3.State IN [dsInsert, dsEdit];
  dbgMovimientos.Enabled := DSChe3.State In [dsBrowse];
  if (CDSCajaMovID_TPAGO.Value<>3) and (DSChe3.State in [dsEdit,dsInsert]) Then
    begin
      DSChe3.DataSet.Cancel;
      sysutils.Abort;
    end;
END;

PROCEDURE TFrameMovValoresEgresos.DSMovEfectivoStateChange(Sender: TObject);
BEGIN
  PostEfectivo.Enabled   := DSMovEfectivo.State IN [dsInsert, dsEdit];
  CancelEfectivo.Enabled := DSMovEfectivo.State IN [dsInsert, dsEdit];
  dbgMovimientos.Enabled := DSMovEfectivo.State in [dsBrowse];
  if (CDSCajaMovID_TPAGO.Value<>1) and (DSMovEfectivo.State in [dsEdit,dsInsert]) Then
    begin
      DSMovEfectivo.DataSet.Cancel;
      sysutils.Abort;
    end;
  lbMuestraSaldo.Visible := DSMovEfectivo.State IN [dsInsert, dsEdit];
  lbSaldoCaja.Visible    := DSMovEfectivo.State IN [dsInsert, dsEdit];
END;

PROCEDURE TFrameMovValoresEgresos.DSChequesStateChange(Sender: TObject);
BEGIN
  PostCheque.Enabled     := DSCheques.State IN [dsInsert, dsEdit];
  CancelCheque.Enabled   := DSCheques.State IN [dsInsert, dsEdit];
  dbgMovimientos.Enabled := DSCheques.State in [dsBrowse];
  BuscarChequera.Enabled := DSCheques.State IN [dsInsert, dsEdit];
  if (CDSCajaMovID_TPAGO.Value<>2) and (DSCheques.State in [dsEdit,dsInsert]) Then
    begin
      DSCheques.DataSet.Cancel;
      sysutils.Abort;
    end;
END;

PROCEDURE TFrameMovValoresEgresos.CDSChe3AfterPost(DataSet: TDataSet);
BEGIN
  IF TipoOperacion = 'E' THEN
    BEGIN
      FormCarteraCheques.CDSCarteraChe.Edit;
      FormCarteraCheques.CDSCarteraCheFECHA_SALIDA.AsDateTime        := CDSChe3FECHA_SALIDA.AsDateTime;
      FormCarteraCheques.CDSCarteraCheDESTINO.Value                  := CDSChe3DESTINO.Value;
      FormCarteraCheques.CDSCarteraCheID_MOV_CAJA_EGRESOS.Value      := CDSCajaMovID_MOV_CAJA.Value;
      FormCarteraCheques.CDSCarteraCheID_CUENTA_BCO_DEPOSITADO.Value := CtaBcoDepositado;
      FormCarteraCheques.CDSCarteraCheSALDO_UNIDADES.AsFloat         := Moneda3D(' ',MascaraImportes,FormCarteraCheques.CDSCarteraCheSALDO_UNIDADES.AsFloat)-Moneda3D(' ',MascaraImportes,CDSChe3UNIDADES.AsFloat);
      FormCarteraCheques.CDSCarteraCheSALDO_IMPORTE.AsFloat          := Moneda3D(' ',MascaraImportes,FormCarteraCheques.CDSCarteraCheSALDO_IMPORTE.AsFloat)-Moneda3D(' ',MascaraImportes, CDSChe3IMPORTE.AsFloat);
      if (Trunc(FormCarteraCheques.CDSCarteraCheSALDO_IMPORTE.AsFloat*100)=0) Then
        FormCarteraCheques.CDSCarteraCheDISPONIBLE.Value:= 'N';

      FormCarteraCheques.CDSCarteraChe.Post;
      IF (CDSCajaMov.State in [dsBrowse]) THEN
        CDSCajaMov.Edit;
      CDSCajaMovHABER.AsFloat    := CDSChe3IMPORTE.AsFloat;
      CDSCajaMovUNIDADES.AsFloat := CDSChe3UNIDADES.AsFloat;
      CDSCajaMov.Post;
      if dbgMovimientos.Enabled Then
        dbgMovimientos.SetFocus;
    END;
END;

PROCEDURE TFrameMovValoresEgresos.CDSChe3NewRecord(DataSet: TDataSet);
BEGIN
  CDSChe3ID_MOV.Value                  := IBGId_Che3Mov.IncrementFD(1);
  CDSChe3COTIZACION.AsFloat            := FormCarteraCheques.CDSCarteraCheCOTIZACION.AsFloat;
  CDSChe3UNIDADES.AsFloat              := FormCarteraCheques.CDSCarteraCheSALDO_UNIDADES.AsFloat;
  CDSChe3ID_MOV_CAJA.Value             := FormCarteraCheques.CDSCarteraCheID_MOV_CAJA.Value;
  CDSChe3ID_CHEQUE_TER.Value           := FormCarteraCheques.CDSCarteraCheID_CHEQUE_TER.Value;
  CDSChe3ID_BANCO.Value                := FormCarteraCheques.CDSCarteraCheID_BANCO.Value;
  CDSChe3NUMERO.Value                  := FormCarteraCheques.CDSCarteraCheNUMERO.Value;
// estas dos lineas eran viejas
//  wwCDSChe3ID_CAJA.Value                 := FormCarteraCheques.wwCDSCarteraCheID_CAJA.Value;
//  wwCDSChe3ID_CUENTA_CAJA.Value          := FormCarteraCheques.wwCDSCarteraCheID_CUENTA_CAJA.Value;
// las remplace por estas que son las que estan igual cuando re asigno las ctas
  CDSChe3ID_CAJA.Value                 := Id_Caja;
  CDSChe3ID_CUENTA_CAJA.Value          := id_cuenta_caja;

  CDSChe3FECHA_EMISION.AsDateTime      := FormCarteraCheques.CDSCarteraCheFECHA_EMISION.AsDateTime;
  CDSChe3FECHA_COBRO.AsDateTime        := FormCarteraCheques.CDSCarteraCheFECHA_COBRO.AsDateTime;
  CDSChe3FECHA_ENTRADA.AsDateTime      := FormCarteraCheques.CDSCarteraCheFECHA_ENTRADA.AsDateTime;
  CDSChe3FECHA_SALIDA.AsDateTime       := FechaOperacion;
  CDSChe3ORIGEN.Value                  := FormCarteraCheques.CDSCarteraCheORIGEN.Value;
  CDSChe3DESTINO.AsString              := Origen;
  CDSChe3IMPORTE.AsFloat               := FormCarteraCheques.CDSCarteraCheSALDO_IMPORTE.AsFloat;
  CDSChe3MUESTRABANCO.Value            := FormCarteraCheques.CDSCarteraCheMUESTRABANCO.Value;
  CDSChe3FIRMANTE.Value                := FormCarteraCheques.CDSCarteraCheFIRMANTE.Value;
  CDSChe3ID_FPAGO.Value                := FormCarteraCheques.CDSCarteraCheID_FPAGO.Value;
  CDSChe3ID_MOV_CAJA_EGRESOS.Value     := CDSCajaMovID_MOV_CAJA.Value;
  CDSChe3MONEDA.Value                  := FormCarteraCheques.CDSCarteraCheMONEDA.Value;
  CDSChe3CUIT.Value                    := FormCarteraCheques.CDSCarteraCheCUIT.Value;
  CDSChe3ID_CUENTA_BCO_DEPOSITADO.Value:= CtaBcoDepositado;
  CDSChe3SUCURSAL_BCO.Value            := FormCarteraCheques.CDSCarteraCheSUCURSAL_BCO.Value;
  CDSChe3NRO_CTA.Value                 := FormCarteraCheques.CDSCarteraCheNRO_CTA.Value;
END;

PROCEDURE TFrameMovValoresEgresos.CDSMovEfectivoAfterPost(DataSet: TDataSet);
BEGIN
  IF (CDSCajaMov.State in [dsBrowse]) THEN
    CDSCajaMov.Edit;
  CDSCajaMovUNIDADES.Value := CDSMovEfectivoUNIDADES.Value;
  IF TipoOperacion = 'E' THEN
    CDSCajaMovHABER.Value := CDSMovEfectivoIMPORTE.Value;
  CDSCajaMov.Post;
  IF ((dbgMovimientos.Enabled = true) and
      (dbgMovimientos.Visible = True) and
      (pcValores.ActivePageIndex=0)) THEN
     try
       dbgMovimientos.SetFocus;
     except
     end;
END;

PROCEDURE TFrameMovValoresEgresos.CDSMovEfectivoNewRecord(DataSet: TDataSet);
BEGIN
  CDSMovEfectivoID_EFECTIVO.Value    := IBGId_Efectivo.IncrementFD(1);
  CDSMovEfectivoID_MOV_CAJA.Value    := CDSCajaMovID_MOV_CAJA.Value;
  CDSMovEfectivoID_CAJA.Value        := CDSCajaMovID_CAJA.Value;
  CDSMovEfectivoCOTIZACION.AsFloat   := CDSCajaMovCOTIZACION.AsFloat;
  CDSMovEfectivoID_FPAGO.Value       := CDSCajaMovID_FPAGO.Value;
  CDSMovEfectivoID_CUENTA_CAJA.Value := CDSCajaMovID_CUENTA_CAJA.Value;
  CDSMovEfectivoMONEDA.Value         := CDSCajaMovMONEDA.Value;
END;

PROCEDURE TFrameMovValoresEgresos.CDSChequesAfterPost(DataSet: TDataSet);
BEGIN
  if TipoOperacion='E' Then
  BEGIN
    IF CDSCajaMov.State = dsBrowse THEN
      CDSCajaMov.Edit;
    CDSCajaMovHABER.Value    := CDSChequesIMPORTE.Value;
    CDSCajaMovUNIDADES.Value := CDSChequesUNIDADES.Value;
    CDSCajaMov.Post;
    if (dbgMovimientos.Enabled) and (dbgMovimientos.Visible=True) Then
      dbgMovimientos.SetFocus;
    if CDSClone<>nil then
      FreeAndNil(CDSClone);
  END;
END;

PROCEDURE TFrameMovValoresEgresos.CDSChequesNewRecord(DataSet: TDataSet);
BEGIN
  IF TipoOperacion = 'E' THEN
    BEGIN
      CDSChequesID_CHEQUE_PRO.Value            := IBGId_Che_Propio.IncrementFD(1);
      CDSChequesID_CAJA.Value                  := CDSCajaMovID_CAJA.Value;
      CDSChequesID_MOV_CAJA.Value              := CDSCajaMovID_MOV_CAJA.Value;
      CDSChequesCOTIZACION.Value               := CDSCajaMovCOTIZACION.Value;
      CDSChequesFECHA_EMISION.AsDateTime       := FechaOperacion;
      CDSChequesFECHA_COBRO.AsDateTime         := FechaOperacion;
      CDSChequesORDEN_DE.AsString              := Origen;
      CDSChequesID_FPAGO.Value                 := CDSCajaMovID_FPAGO.Value;
      CDSChequesID_CUENTA_CAJA.Value           := CDSCajaMovID_CUENTA_CAJA.Value;
      CDSChequesMONEDA.Value                   := CDSCajaMovMONEDA.Value;
      CDSChequesANULADO.Value                  := 'N';
      CDSChequesDEBITADO.Value                 := 'N';
      CDSChequesID_CPBTE_ANULACION_REEMP.Value := -1;
      CDSChequesID_CAJA_MOV_ANULACION.Value    := -1;
    END;
END;

PROCEDURE TFrameMovValoresEgresos.CDSCajaMovAfterDelete(DataSet: TDataSet);
BEGIN
  CalcularValores;
END;

procedure TFrameMovValoresEgresos.CDSCajaMovAfterOpen(DataSet: TDataSet);
begin
 //es una prueba
  if CDSCajaMovMUESTRAIDCTACAJA.AsString<>'' Then
    CajaOld:=CDSCajaMovMUESTRAIDCTACAJA.AsString
  else
    CajaOld:='';
end;

PROCEDURE TFrameMovValoresEgresos.CDSCajaMovAfterPost(DataSet: TDataSet);
BEGIN
  CalcularValores;
  CDSCajaMov.Append;
END;

PROCEDURE TFrameMovValoresEgresos.CDSCajaMovAfterScroll(DataSet: TDataSet);
BEGIN
  IF TipoOperacion = 'E' THEN
    BEGIN
      IF CDSCajaMovID_TPAGO.Value = 1 THEN
        pcValores.ActivePage := tsEfectivo
      ELSE IF CDSCajaMovID_TPAGO.Value = 3 THEN
        pcValores.ActivePage := tsChe3
      ELSE IF CDSCajaMovID_TPAGO.Value = 2 THEN
        pcValores.ActivePage := tsCheques
      ELSE IF CDSCajaMovID_TPAGO.Value = 5 THEN
        pcValores.ActivePage := tsTransf
      ELSE IF CDSCajaMovID_TPAGO.Value = 6 THEN
        pcValores.ActivePage := tsDebito
      ELSE IF CDSCajaMovID_TPAGO.Value = 4 THEN
        pcValores.ActivePage := tsTarjeta;
    END;
END;

PROCEDURE TFrameMovValoresEgresos.CDSCajaMovBeforeDelete(DataSet: TDataSet);
BEGIN
  IF TipoOperacion = 'E' THEN
    BEGIN
      IF (CDSCajaMovID_TPAGO.Value = 1) and (Not(CDSMovEfectivo.IsEmpty)) THEN
        CDSMovEfectivo.Delete
      ELSE
        IF (CDSCajaMovID_TPAGO.Value = 3) and (Not(CDSChe3.IsEmpty)) THEN
          CDSChe3.delete
        ELSE
          IF (CDSCajaMovID_TPAGO.Value = 2) and (Not(CDSCheques.IsEmpty)) THEN
            CDSCheques.delete
          else
            IF (CDSCajaMovID_TPAGO.Value = 5) and (Not(CDSTransBco.IsEmpty)) THEN
              CDSTransBco.delete
            else
              IF (CDSCajaMovID_TPAGO.Value = 6) and (Not(CDSDebitos.IsEmpty)) THEN
                CDSDebitos.delete;

    END;
END;

PROCEDURE TFrameMovValoresEgresos.CDSCajaMovBeforeInsert(DataSet: TDataSet);
BEGIN
  IF (Id_Caja = 0) or ( (Trim (ceCaja.Text)) = '' )  THEN
    BEGIN
      ShowMessage('Falta asignar la caja');
      SysUtils.Abort;
    END;

END;

PROCEDURE TFrameMovValoresEgresos.CDSCajaMovNewRecord(DataSet: TDataSet);
BEGIN
  CDSCajaMovID_CAJA.AsInteger          := Id_Caja;
  CDSCajaMovID_CUENTA_CAJA.AsInteger   := id_cuenta_caja;
  CDSCajaMovID_MOV_CAJA.Value          := IBGId_Caja_Mov.IncrementFD(1);
  CDSCajaMovTIPO_COMPROB.AsString      := TipoCpbte;
  CDSCajaMovCLASE_COMPROB.AsString     := ClaseCpbte;
  CDSCajaMovNRO_COMPROBANTE.AsString   := NroCpbte;
  CDSCajaMovID_COMPROBANTE.AsInteger   := IdCpbte;
  CDSCajaMovFECHA_OPERACION.AsDateTime := FechaOperacion;
  CDSCajaMovTIPO_OPERACION.AsString    := TipoOperacion;
  CDSCajaMovDEBE.AsFloat               := 0;
  CDSCajaMovHABER.AsFloat              := 0;
  CDSCajaMovFECHA_CAJA.AsDateTime      := FechaCaja;
END;

PROCEDURE TFrameMovValoresEgresos.CDSMovEfectivoUNIDADESSetText(Sender:
  TField;
  CONST Text: STRING);
VAR i:byte;
dato:String;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Dato:=Text;     // para correjir el problema de que cuando toma el numero lo pueda converti a Float
      while Pos(SysUtils.FormatSettings.ThousandSeparator,Dato) <>0 Do
        begin
          i:=Pos(SysUtils.FormatSettings.ThousandSeparator,Dato);
          Delete(Dato,I,1);
        end;
      Sender.AsString := FloatToStr(Moneda3D(' ',MascaraImportes,StrToFloat(Dato)));
      CDSMovEfectivoIMPORTE.AsFloat := Moneda3D(' ',MascaraImportes,CDSMovEfectivoCOTIZACION.AsFloat * Sender.AsFloat);
    end;
END;

PROCEDURE TFrameMovValoresEgresos.CDSChequesID_CHEQUERASetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if CDSCheques.State=dsBrowse Then CDSCheques.Edit;
      Sender.AsString := Text;
      IF NOT (AsignaChequera(Sender.AsInteger)) THEN
        BEGIN
          ShowMessage('dato no válido');
          Sender.AsString := '';
        
        END;
     end;
END;

PROCEDURE TFrameMovValoresEgresos.CDSChequesUNIDADESSetText(Sender: TField;
  CONST Text: STRING);
VAR i:byte;
dato:String;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Dato:=Text;     // para correjir el problema de que cuando toma el numero lo pueda converti a Float
      while Pos(SysUtils.FormatSettings.ThousandSeparator,Dato) <>0 Do
        begin
          i:=Pos(SysUtils.FormatSettings.ThousandSeparator,Dato);
          Delete(Dato,I,1);
        end;
      Sender.AsString := FloatToStr(Moneda3D(' ',MascaraImportes,StrToFloat(Dato)));
      CDSChequesIMPORTE.AsFloat := Moneda3D(' ',MascaraImportes,CDSChequesCOTIZACION.AsFloat * Sender.AsFloat);
    end;
END;

PROCEDURE TFrameMovValoresEgresos.CDSCajaMovID_FPAGOSetText(Sender: TField;
  CONST Text: STRING);
var i:integer;
BEGIN
  if text<>'' Then
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      if (CDSCajaMovID_FPAGO.Value<>CDSCajaMovID_FPAGOOLD.Value) and (CDSCajaMovID_FPAGOOLD.AsString<>'') Then
        begin
          CDSCajaMov.Cancel;
          SysUtils.Abort;
        end;
      IF NOT (AsignaFormaPago(Sender.AsInteger)) THEN
        BEGIN
          ShowMessage('Dato no Válido');
          CDSCajaMovMUESTRAFORMAPAGO.Value := '';
          CDSCajaMovDEBE.Clear;
          CDSCajaMovHABER.Clear;
          Sender.ASString := '';
          CDSCajaMov.Cancel;
        END
      ELSE IF TipoOperacion = 'E' THEN
        BEGIN
          IF (CDSCajaMovID_TPAGO.Value = 1) and (tsEfectivo.TabVisible=True) THEN {efectivo}
            BEGIN
              CDSMovEfectivo.Insert;
              pcValores.ActivePage := tsEfectivo;
              // aca verifico los saldos de efectivo y lo muestro...
              QSaldoFinal.Close;
              QSaldoFinal.ParamByName('id').Value:=CDSCajaMovID_CAJA.Value;
              QSaldoFinal.Open;
              lbSaldoCaja.Caption:=FormatFloat(',0.00',QSaldoFinalSALDO.AsFloat-SumaEfectivo);
              dbeUnidades.SetFocus;
              QSaldoFinal.Close;
            END
          ELSE IF (CDSCajaMovID_TPAGO.Value = 2) and (tsCheques.TabVisible=True) THEN {cheques}
            BEGIN
              CDSCheques.Insert;
              pcValores.ActivePage := tsCheques;
              DBEChequera.SetFocus;
            END
          ELSE IF (CDSCajaMovID_TPAGO.Value = 3) and (tsChe3.TabVisible=True) THEN {Chequers de tercero}
            BEGIN
              pcValores.ActivePage := tsChe3;
              FormCarteraCheques.CDSCarteraChe.Filtered:=False;
              FormCarteraCheques.CDSCarteraChe.Filter  :='id_cuenta_caja ='+ceCaja.Text;// IntToStr(id_cuenta_caja);
              FormCarteraCheques.CDSCarteraChe.Filtered:=True;
              formCarteraCheques.ShowModal;
              IF formCarteraCheques.Aceptado THEN
                BEGIN
                  CDSChe3.Append;
                  dbeunidadesChe3.SetFocus;
                END
              else
                CDSCajaMov.Cancel;

            END
              ELSE IF (CDSCajaMovID_TPAGO.Value = 5) and (tsTransf.TabVisible=True) THEN {Transfer}
                BEGIN
                  CDSTransBco.Insert;
                  pcValores.ActivePage := tsTransf;
                  dbeNumero.SetFocus;
                END
              ELSE IF (CDSCajaMovID_TPAGO.Value = 6) and (tsDebito.TabVisible=True) THEN {Debitos}
                BEGIN
                  CDSDebitos.Insert;
                  pcValores.ActivePage := tsDebito;
                  dbeNroDebito.SetFocus;
                END
             ELSE IF (CDSCajaMovID_TPAGO.Value = 4) and (tsTarjeta.TabVisible=True) THEN {Tarjetas}
                BEGIN
                  pcValores.ActivePage := tsTarjeta;
                  CDSMovTCCompra.Insert;
                  dbcTC.SetFocus;
                END
              ELSE
                BEGIN
                  ShowMessage('Dato no Válido');
                  Sender.ASString := '';
                  CDSCajaMovMUESTRAFORMAPAGO.Value := '';
                  CDSCajaMovDEBE.Clear;
                  CDSCajaMovHABER.Clear;
                  CDSCajaMov.Cancel;
               END;
        END;
    END;

END;

PROCEDURE TFrameMovValoresEgresos.ceCajaButtonClick(Sender: TObject);
BEGIN
  CDSBuscaCaja.Close;

  if ((DMMain_FD.FiltraCajaUser) and (DMMain_FD.ModificaCaja)) then
    begin
      CDSBuscaCaja.CommandText:='select ca.*, cta.Nombre as MuestraCaja from Caja_Cab ca '+
                                'join cuenta_caja cta on cta.id_cuenta=ca.id_cuenta_caja '+
                                'where  (ca.id_cuenta_caja in (select u.caja from cajausuario u where u.usuario = :usuario)) and (ca.Estado = 0)';
      CDSBuscaCaja.Params.ParamByName('usuario').Value:=DMMain_FD.UsuarioActivo;
    end;

  CDSBuscaCaja.Open;

  ComBuscadorCaja.Execute;
  IF ComBuscadorCaja.rOk tHEN
    BEGIN
      QCajaCab.Close;
      QCajaCab.ParamByName('Id').Value := IntToStr(comBuscadorCaja.id);
      QCajaCab.Open;
      IF NOT (QCajaCab.IsEmpty) THEN
        BEGIN
          ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
          edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.AsString;
          Id_Caja            := QCajaCabID_CAJA.Value;
          id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
          FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
          if dbgMovimientos.Enabled=True Then
            dbgMovimientos.SetFocus;
        END
      ELSE
        BEGIN
          ShowMessage('Dato no encontrado');
          edMuestraCaja.Text := '';
          ceCaja.Text        := '';
          ceCaja.SetFocus;
          ceCaja.SelectAll;
        END;
    END;
  CDSBuscaCaja.Close;
END;



procedure TFrameMovValoresEgresos.ceCajaChange(Sender: TObject);
begin
  if (CajaOld<>'') {and (Trim(ceCaja.Text)<>'')} then
    begin
      if (CajaOld<>Trim(ceCaja.Text)) Then //pasa ao Onchange
        ActulizaCajaMovimientos;
    end;
end;

PROCEDURE TFrameMovValoresEgresos.BuscarBancoExecute(Sender: TObject);
BEGIN
  CDSBuscaBanco.Close;
  CDSBuscaBanco.Open;
  ComBuscadorBanco.Execute;
  IF comBuscadorBanco.rOk THEN
    begin
      CDSChe3ID_BANCOSetText(CDSChe3ID_BANCO,IntToStr(comBuscadorBanco.Id));
      DBENroChe.SetFocus;
    end;
  CDSBuscaBanco.Close;
END;


PROCEDURE TFrameMovValoresEgresos.CDSChe3ID_BANCOSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      IF CDSChe3.state = dsBrowse THEN CDSChe3.Edit;
      Sender.AsString := Text;
      IF NOT (AsignaBanco(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Código no válido');
        END;
    end;
END;


PROCEDURE TFrameMovValoresEgresos.CDSChe3UNIDADESSetText(Sender: TField;
  CONST Text: STRING);
VAR i:byte;
dato:String;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) and (CDSChe3.State<>dsBrowse) Then
    begin
      Dato:=Text;     // para correjir el problema de que cuando toma el numero lo pueda converti a Float
      while Pos(SysUtils.FormatSettings.ThousandSeparator,Dato) <>0 Do
        begin
          i:=Pos(SysUtils.FormatSettings.ThousandSeparator,Dato);
          Delete(Dato,I,1);
        end;
      Sender.AsString := FloatToStr(Moneda3D(' ',MascaraImportes,StrToFloat(Dato)));
      if Moneda3D(' ',MascaraImportes,CDSChe3UNIDADES.AsFloat)>Moneda3D(' ',MascaraImportes,FormCarteraCheques.CDSCarteraCheSALDO_UNIDADES.AsFloat) Then
        Sender.AsFloat:= FormCarteraCheques.CDSCarteraCheSALDO_UNIDADES.AsFloat;
      CDSChe3IMPORTE.AsFloat := Moneda3D(' ',MascaraImportes,Sender.AsFloat * CDSChe3COTIZACION.AsFloat)
    end;
END;

PROCEDURE TFrameMovValoresEgresos.ceCajaKeyDown(Sender: TObject;
  VAR Key: Word; Shift: TShiftState);
BEGIN
  IF (Key = vk_return) and (Trim(ceCaja.Text)<>'') THEN
    BEGIN
      key := vk_clear;
      QCajaCab.Close;
      QCajaCab.ParamByName('Id').Value := StrToInt(Trim(ceCaja.Text));
      QCajaCab.Open;
      if ((DMMain_FD.FiltraCajaUser) and (DMMain_FD.ModificaCaja)) then
        begin
          CDSBuscaCaja.Close;
          CDSBuscaCaja.CommandText:='select ca.*, cta.Nombre as MuestraCaja from Caja_Cab ca '+
                                    'join cuenta_caja cta on cta.id_cuenta=ca.id_cuenta_caja '+
                                    'where  (ca.id_cuenta_caja in (select u.caja from cajausuario u where u.usuario = :usuario)) and (ca.Estado = 0) '+
                                    ' and ca.id_cuenta_caja= :idcta ';
          CDSBuscaCaja.Params.ParamByName('usuario').Value:=DMMain_FD.UsuarioActivo;
          CDSBuscaCaja.Params.ParamByName('idcta').Value  :=StrToInt(Trim(ceCaja.Text));

          CDSBuscaCaja.Open;
          if CDSBuscaCaja.IsEmpty then
            QCajaCab.EmptyDataSet;
        end;
      IF NOT (QCajaCab.IsEmpty) THEN
        BEGIN
          ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
          edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.AsString;
          Id_Caja            := QCajaCabID_CAJA.Value;
          id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
          FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
          // actualizo los valores en los movimientos
          // por si se cambia cuando ya se ingresaron
          // Movimientos de caja
          // esta lina la pase al OnChange
          //       ActulizaCajaMovimientos;
          if dbgMovimientos.Enabled=True Then
            dbgMovimientos.SetFocus;
        END
      ELSE
        BEGIN
          ShowMessage('Dato no encontrado');
          edMuestraCaja.Text := '';
          ceCaja.Text:='';
          ceCaja.SetFocus;
          ceCaja.SelectAll;
          Id_Caja:=0;
        END;
    END;
END;

procedure TFrameMovValoresEgresos.ceCajaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#10 Then
    ceCaja.Button.Click;
end;

PROCEDURE TFrameMovValoresEgresos.CDSCajaMovBeforePost(DataSet: TDataSet);
var Valor:Int64;
BEGIN
  CDSCajaMovID_CAJA.Value         := Id_Caja;
  CDSCajaMovID_CUENTA_CAJA.Value  := id_cuenta_caja;
   Valor:= Trunc((CDSCajaMovDEBE.AsFloat + CDSCajaMovHABER.AsFloat)*100);
  IF VarIsNull(CDSCajaMovID_FPAGO.Value) OR VarIsNull(CDSCajaMovID_TPAGO.Value) OR
    (Valor = 0) THEN
  begin
    CDSCajaMov.Cancel;
    SysUtils.Abort;
    ShowMessage('Hay un error en el ingreso de los valores o tienen valor cero');
  end;
END;



PROCEDURE TFrameMovValoresEgresos.dbeunidadesChe3KeyDown(Sender: TObject;
  VAR Key: Word; Shift: TShiftState);
BEGIN
  IF key = vk_return THEN
    if dbeunidadesChe3.Text<>'' Then
      CDSChe3UNIDADESSetText(CDSChe3UNIDADES, dbeunidadesChe3.Text);
END;

PROCEDURE TFrameMovValoresEgresos.dbeUnidadesChequeKeyDown(Sender: TObject; VAR Key: Word; Shift: TShiftState);
BEGIN
  IF key = vk_return THEN
    if dbeUnidadesCheque.Text<>'' Then
      CDSChequesUNIDADESSetText(CDSChequesUNIDADES, dbeUnidadesCheque.Text);
END;


PROCEDURE TFrameMovValoresEgresos.DBEBancoChe3KeyPress(Sender: TObject;
  VAR Key: Char);
BEGIN
  IF key = #10 THEN
    BEGIN
      key := #0;
      BuscarBanco.Execute;
    END;
END;

PROCEDURE TFrameMovValoresEgresos.DBEChequeraKeyPress(Sender: TObject;
  VAR Key: Char);
BEGIN
  IF Key = #10 THEN
    BEGIN
      Key := #0;
      BuscarChequera.Execute;
    END;
END;

procedure TFrameMovValoresEgresos.DBENroCheExit(Sender: TObject);
begin
  if Trim(CDSChequesNUMERO.AsString)<>'' Then
    begin
      QControlCheque.CLose;
      QControlCheque.ParamByName('id').AsInteger:=CDSChequesID_CHEQUERA.Value;
      QControlCheque.Open;
      if Not((CDSChequesNUMERO.AsInteger>=QControlCheque.Fields[1].AsInteger) and (CDSChequesNUMERO.AsInteger<=QControlCheque.Fields[2].AsInteger)) Then
        begin
          CDSChequesNUMERO.AsString:='';
          raise Exception.Create('Numero fuera de rango de chequera....'+
                      QControlCheque.Fields[1].AsString+'-'+QControlCheque.Fields[2].AsString);
          DBENroChe.SetFocus;
        end
      else
        if (CDSClone.Locate('NUMERO',CDSChequesNUMERO.AsString,[])) Then
          begin
            //CDSChequesNUMERO.AsString:='';
//            raise Exception.Create('Numero ya Ingresado....');
            ShowMessage('Numero ya Ingresado....');

            DBENroChe.SetFocus;
           // FreeAndNil(CDSClone);
          end
        else
          begin
            QBuscaChe.CLose;
            QBuscaChe.ParamByName('NUmero').AsString      := CDSChequesNUMERO.AsString;
            QBuscaChe.ParamByName('IdChequera').AsInteger := CDSChequesID_CHEQUERA.Value;
            QBuscaChe.Open;
            if (QBuscaChe.Fields[0].AsString<>'') Then
              begin
                //CDSChequesNUMERO.AsString:='';
//                raise Exception.Create('Numero ya Ingresado....');
                ShowMessage('Numero ya Ingresado....');

                DBENroChe.SetFocus;
              end;
            QBuscaChe.CLose;
          end;
    end;
  QControlCheque.CLose;
end;

//PROCEDURE TFrameMovValoresEgresos.wwDBETc_IdKeyPress(Sender: TObject;
//  VAR Key: Char);
//BEGIN
//  IF Key = #10 THEN
//    BEGIN
//      Key := #0;
//      BuscarTCredito.Execute;
//    END;
//END;

PROCEDURE TFrameMovValoresEgresos.CDSChe3BeforeDelete(DataSet: TDataSet);
BEGIN
  IF FormCarteraCheques.CDSCarteraChe.Locate('id_cheque_ter',CDSChe3ID_CHEQUE_TER.Value, []) THEN
    BEGIN
      FormCarteraCheques.CDSCarteraChe.edit;
      FormCarteraCheques.CDSCarteraCheDISPONIBLE.Value := 'S';
      FormCarteraCheques.CDSCarteraCheFECHA_SALIDA.Clear;
      FormCarteraCheques.CDSCarteraCheDESTINO.Value    := '';
      FormCarteraCheques.CDSCarteraCheSALDO_UNIDADES.AsFloat :=FormCarteraCheques.CDSCarteraCheSALDO_UNIDADES.AsFloat+CDSChe3UNIDADES.AsFloat;
      FormCarteraCheques.CDSCarteraCheSALDO_IMPORTE.AsFloat  :=FormCarteraCheques.CDSCarteraCheSALDO_IMPORTE.AsFloat+CDSChe3IMPORTE.AsFloat;
      FormCarteraCheques.CDSCarteraCheID_CUENTA_BCO_DEPOSITADO.Clear;
      FormCarteraCheques.CDSCarteraChe.post;
      Showmessage('Cheque restituido a la cartera');
    END;
END;

procedure TFrameMovValoresEgresos.CDSChequesNUMEROSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=Text;
// *** Esto lo pase al Exit del Edit
//if Sender.AsString<>'' Then
//    Sender.AsString:=Copy('000000000',1,8-Length(Trim(Text)))+Text;
//
//  QControlCheque.CLose;
//  QControlCheque.ParamByName('id').AsInteger:=CDSChequesID_CHEQUERA.Value;
//  QControlCheque.Open;
//
//  if Not((Sender.AsInteger>=QControlCheque.Fields[1].AsInteger) and (Sender.AsInteger<=QControlCheque.Fields[2].AsInteger)) Then
//    begin
//      ShowMessage('Numero fuera de rango de chequera....'+
//                 QControlCheque.Fields[1].AsString+'-'+QControlCheque.Fields[2].AsString);
//      Sender.AsString:='';
//    end;
//  QControlCheque.CLose;
//
//  if (CDSClone.Locate('NUMERO',Sender.AsString,[])) Then
//    begin
//      Sender.AsString:='';
//      FreeAndNil(CDSClone);
//      ShowMessage('Numero ya Ingresado....');
//    end
//  else
//    begin
//      QBuscaChe.CLose;
//      QBuscaChe.ParamByName('NUmero').AsString      := Sender.AsString;
//      QBuscaChe.ParamByName('IdChequera').AsInteger := CDSChequesID_CHEQUERA.Value;
//      QBuscaChe.Open;
//      if (QBuscaChe.Fields[0].AsString<>'') Then
//        begin
//          ShowMessage('Numero ya Ingresado....');
//          Sender.AsString:='';
//        end;
//      QBuscaChe.CLose;
//    end;

end;

procedure TFrameMovValoresEgresos.CDSChequesReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  ShowMessage(e.Message);
end;

procedure TFrameMovValoresEgresos.BuscarCtaBcoExecute(Sender: TObject);
begin
  CDSBuscaCtaBco.Close;
  CDSBuscaCtaBco.Open;
  comBuscadorCtaBco.Execute;
  if comBuscadorCtaBco.rOk Then
    if pcValores.ActivePage=tsTransf Then
      CDSTransBcoID_CUENTA_BANCOSetText(CDSTransBcoID_CUENTA_BANCO,IntToStr(comBuscadorCtaBco.Id))
    else
      if pcValores.ActivePage=tsDebito Then
        CDSDebitosID_CUENTA_BANCOSetText(CDSDebitosID_CUENTA_BANCO,IntToStr(comBuscadorCtaBco.Id));
  CDSBuscaCtaBco.Close;
end;

procedure TFrameMovValoresEgresos.CDSTransBcoID_CUENTA_BANCOSetText(Sender: TField; const Text: String);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      if Not(AsignaCtaBco(Sender.AsInteger)) Then
        begin
          Sender.AsString:='';
          ShowMessage('Dato no Valido');
        end;
     end;
end;

procedure TFrameMovValoresEgresos.CDSTransBcoUNIDADESSetText(
  Sender: TField; const Text: String);
VAR i:byte;
dato:String;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Dato:=Text;     // para correjir el problema de que cuando toma el numero lo pueda converti a Float
      while Pos(SysUtils.FormatSettings.ThousandSeparator,Dato) <>0 Do
        begin
          i:=Pos(SysUtils.FormatSettings.ThousandSeparator,Dato);
          Delete(Dato,I,1);
        end;
      Sender.AsString := FloatToStr(Moneda3D(' ',MascaraImportes,StrToFloat(Dato)));
      CDSTransBcoIMPORTE.AsFloat := Moneda3D(' ',MascaraImportes,CDSTransBcoCOTIZACION.AsFloat * Sender.AsFloat);
    end;
end;

procedure TFrameMovValoresEgresos.CDSTransBcoAfterPost(
  DataSet: TDataSet);
begin
  IF TipoOperacion = 'E' THEN
    BEGIN
      IF CDSCajaMov.State = dsBrowse THEN
        CDSCajaMov.Edit;
      CDSCajaMovHABER.Value    := CDSTransBcoIMPORTE.Value;
      CDSCajaMovUNIDADES.Value := CDSTransBcoUNIDADES.Value;
      CDSCajaMov.Post;
      if dbgMovimientos.Enabled Then
        dbgMovimientos.SetFocus;
    END;
end;

procedure TFrameMovValoresEgresos.CDSTransBcoNewRecord(
  DataSet: TDataSet);
begin
  IF TipoOperacion = 'E' THEN
    BEGIN
      CDSTransBcoID.Value            := IBGId_Trans.IncrementFD(1);
      CDSTransBcoID_CAJA.Value       := CDSCajaMovID_CAJA.Value;
      CDSTransBcoID_MOV_CAJA.Value   := CDSCajaMovID_MOV_CAJA.Value;
      CDSTransBcoFECHA.AsDateTime    := FechaOperacion;
      CDSTransBcoORIGEN.AsString     := Origen;
      CDSTransBcoID_FPAGO.Value      := CDSCajaMovID_FPAGO.Value;
      CDSTransBcoID_CUENTA_CAJA.Value:= CDSCajaMovID_CUENTA_CAJA.Value;
      CDSTransBcoCOTIZACION.Value    := CDSCajaMovCOTIZACION.Value;
      CDSTransBcoMONEDA.Value        := CDSCajaMovMONEDA.Value;
      CDSTransBcoNUMERO.Value        := 0;
      CDSTransBcoMUESTRANROCTA.Value := '';

    END;
end;

procedure TFrameMovValoresEgresos.PostTransExecute(Sender: TObject);
begin
  IF (Trunc(CDSTransBcoUNIDADES.AsFloat*1000) <> 0) and (CDSTransBcoID_CUENTA_BANCO.AsString<>'') THEN
    CDSTransBco.Post
  ELSE
    BEGIN
      if (Trunc(CDSTransBcoUNIDADES.AsFloat*1000)=0) Then
        begin
          ShowMessage('No se ingreso importe');
          dbeUnidadesTx.SetFocus;
        end
      else
        if CDSTransBcoID_CUENTA_BANCO.AsString='' Then
          begin
            ShowMessage('No se Cta.de Banco');
            rxdcCtaBco.SetFocus;
          end;
    END;
end;

procedure TFrameMovValoresEgresos.RxLabel4Click(Sender: TObject);
begin
 if Not(Assigned(FormCaja)) then
    FormCaja:=TFormCaja.Create(Self);
  FormCaja.Recuperar(DBText12.DataSource.DataSet.FieldByName('ID_CAJA').AsInteger);
  FormCaja.pcMovimientos.ActivePageIndex:=1;
  FormCaja.dbgEgresos.DataSource.DataSet.Locate('TIPO_CPBTE;ID_COMPROBANTE',VararrayOf([CDSCajaMovTIPO_COMPROB.AsString,CDSCajaMovID_COMPROBANTE.AsString]),[]);

  FormCaja.Show;
end;

procedure TFrameMovValoresEgresos.RxLabel4MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  RxLabel4.Cursor:=crHandPoint
end;

procedure TFrameMovValoresEgresos.SincronizaChe3Execute(Sender: TObject);
var Q:TFDQuery;
begin
  if (CDSChe3ID_CHEQUE_TER.AsString<>'') and (CDSChe3ID_CHEQUE_TER.Value>0) then
    begin
      Q:=TFDQuery.Create(nil);
      q.Connection:=DMMain_FD.fdcGestion;
      q.sql.Text:='execute procedure tool_sincronizar_che3('+CDSChe3ID_CHEQUE_TER.AsString+')';
      Q.ExecSQL;
      FreeAndNil(q);
      //spSincronizaChe3.Close;
      //spSincronizaChe3.Params.ParamByName('id_che').Value:=CDSChe3ID_CHEQUE_TER.Value;
      //spSincronizaChe3.ExecProc;
      //spSincronizaChe3.Close;
    end;
end;

procedure TFrameMovValoresEgresos.spLoteChequesClick(Sender: TObject);
var i,id_cta_caja:integer;
RestoAux:String;
IdFormaPago:Integer;
begin
  if CDSCajaMov.State=dsBrowse then
    if ( FormCarteraCheques.CDSCarteraChe.Active=True) and (TryStrToInt(ceCaja.Text,id_cta_caja)) then
      begin
        FormCarteraCheques.CDSCarteraChe.Filtered := False;
        FormCarteraCheques.CDSCarteraChe.Filter   := 'id_cuenta_caja ='+ceCaja.Text;// IntToStr(id_cuenta_caja);
        FormCarteraCheques.CDSCarteraChe.Filtered := True;
        formCarteraCheques.dbgCheques.Options     := formCarteraCheques.dbgCheques.Options + [dgMultiSelect];
        formCarteraCheques.btLoteCheques.Visible  := True;
        formCarteraCheques.btAbortar.Visible      := True;
        QFormaPCHe3.Close;
        QFormaPCHe3.Open;
        QFormaPCHe3.First;
        IdFormaPago:=QFormaPCHe3ID_FPAGO.Value;
        QFormaPCHe3.Close;
       // pcValores.ActivePage := tsChe3;
       // formCarteraCheques.dbgCheques.sUnselectAll;
        formCarteraCheques.ShowModal;

        IF (formCarteraCheques.Aceptado) and (FormCarteraCheques.dbgCheques.SelectedRows.Count>0) THEN
          BEGIN
            RestoAux:=Trim(AnsiReplaceStr(lbResto.Caption,',',''));

            if FormCarteraCheques.dbgCheques.SelectedRows.Count>0 then
              begin
                for I := 0 to FormCarteraCheques.dbgCheques.SelectedRows.Count - 1 do
                  begin
                    if CDSCajaMov.State=dsBrowse then
                      CDSCajaMov.Append;
                    CDSCajaMovID_FPAGO.Value:=IdFormaPago;// QFormaPCHe3ID_FPAGO.Value;
  //                  AsignaFormaPago(QFormaPCHe3ID_FPAGO.Value); antes de la variable IdFormaPago
                    AsignaFormaPago(IdFormaPago);
                    {$IF CompilerVersion < 24}
                      FormCarteraCheques.dbgCheques.DataSource.DataSet.GotoBookmark(Pointer(FormCarteraCheques.dbgCheques.SelectedRows.Items[i]));
                    {$ELSE}
                      FormCarteraCheques.dbgCheques.DataSource.DataSet.GotoBookmark((FormCarteraCheques.dbgCheques.SelectedRows.Items[i]));
                    {$ENDIF}

  //                  RestoAux:=Trim(AnsiReplaceStr(lbResto.Caption,',',''));
                    if ((SumaValores+FormCarteraCheques.CDSCarteraCheIMPORTE.AsFloat)<=StrToFLoat(RestoAux)) then
                      begin
                        CDSChe3.Append;
                        CDSChe3UNIDADESSetText(CDSChe3UNIDADES,FormCarteraCheques.CDSCarteraCheIMPORTE.AsString);
                        CDSChe3.Post;
                      end
                    else
                      begin
                        CDSChe3.Cancel;
                        CDSCajaMov.Cancel;
                      end;
                  end;
              END;
          end;
        formCarteraCheques.btLoteCheques.Visible := False;
        formCarteraCheques.btAbortar.Visible     := False;
        formCarteraCheques.dbgCheques.Options    := formCarteraCheques.dbgCheques.Options - [dgMultiSelect];
      end;
end;

procedure TFrameMovValoresEgresos.CancelTransExecute(Sender: TObject);
begin
  CDSTransBco.Cancel;
  CDSCajaMov.Cancel;
end;

procedure TFrameMovValoresEgresos.CDSDebitosAfterPost(DataSet: TDataSet);
begin
  IF TipoOperacion = 'E' THEN
    BEGIN
      IF CDSCajaMov.State = dsBrowse THEN
        CDSCajaMov.Edit;
      CDSCajaMovHABER.Value     := CDSDebitosIMPORTE.Value;
      CDSCajaMovUNIDADES.Value  := CDSDebitosUNIDADES.Value;
      CDSCajaMov.Post;
      if dbgMovimientos.Enabled Then
        dbgMovimientos.SetFocus;
    END;
end;

procedure TFrameMovValoresEgresos.CDSDebitosNewRecord(DataSet: TDataSet);
begin
  IF TipoOperacion = 'E' THEN
    BEGIN
      CDSDebitosID.Value            := IBGIdDebito.IncrementFD(1);
      CDSDebitosID_CAJA.Value       := CDSCajaMovID_CAJA.Value;
      CDSDebitosID_MOV_CAJA.Value   := CDSCajaMovID_MOV_CAJA.Value;
      CDSDebitosFECHA.AsDateTime    := FechaOperacion;
      CDSDebitosORIGEN.AsString     := Origen;
      CDSDebitosID_FPAGO.Value      := CDSCajaMovID_FPAGO.Value;
      CDSDebitosID_CUENTA_CAJA.Value:= CDSCajaMovID_CUENTA_CAJA.Value;
      CDSDebitosCOTIZACION.Value    := CDSCajaMovCOTIZACION.Value;
      CDSDebitosMONEDA.Value        := CDSCajaMovMONEDA.Value
    END;
end;

procedure TFrameMovValoresEgresos.CDSDebitosID_CUENTA_BANCOSetText(
  Sender: TField; const Text: String);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      if Not(AsignaCtaBco(Sender.AsInteger)) Then
        begin
          Sender.AsString:='';
          ShowMessage('Dato no Valido');
        end;
     end;
end;

procedure TFrameMovValoresEgresos.CDSDebitosUNIDADESSetText( Sender: TField; const Text: String);
VAR i:byte;
dato:String;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Dato:=Text;     // para correjir el problema de que cuando toma el numero lo pueda converti a Float
      while Pos(SysUtils.FormatSettings.ThousandSeparator,Dato) <>0 Do
        begin
          i:=Pos(SysUtils.FormatSettings.ThousandSeparator,Dato);
          Delete(Dato,I,1);
        end;
      Sender.AsString := FloatToStr(Moneda3D(' ',MascaraImportes,StrToFloat(Dato)));
      CDSDebitosIMPORTE.AsFloat := Moneda3D(' ',MascaraImportes,CDSDebitosCOTIZACION.AsFloat * Sender.AsFloat);
    end;
end;

procedure TFrameMovValoresEgresos.PosDebitoExecute(Sender: TObject);
begin
  IF (Trunc(CDSDebitosUNIDADES.AsFloat * 1000) <> 0) and (CDSDebitosID_CUENTA_BANCO.AsString<>'') THEN
    CDSDebitos.Post
  ELSE
    BEGIN
     if (Trunc(CDSDebitosUNIDADES.AsFloat*1000)=0) Then
        begin
          ShowMessage('No se ingreso importe');
          dbeUnidadesTx.SetFocus;
        end
      else
        if CDSDebitosID_CUENTA_BANCO.AsString='' Then
          begin
            ShowMessage('No se Cta.de Banco');
            rcdcIdCtaBcoDebito.SetFocus;
          end;
    END;
end;

procedure TFrameMovValoresEgresos.CancelDebitoExecute(Sender: TObject);
begin
  CDSDebitos.Cancel;
  CDSCajaMov.Cancel;
end;

procedure TFrameMovValoresEgresos.DSTransBcoStateChange(Sender: TObject);
begin
  PostTrans.Enabled      := DSTransBco.State IN [dsInsert, dsEdit];
  CancelTrans.Enabled    := DSTransBco.State IN [dsInsert, dsEdit];
  dbgMovimientos.Enabled := DSTransBco.State =dsBrowse;
  if (CDSCajaMovID_TPAGO.Value<>5) and (DSTransBco.State in [dsEdit,dsInsert]) Then
    begin
      DSTransBco.DataSet.Cancel;
      sysutils.Abort;
    end;
end;

procedure TFrameMovValoresEgresos.DSDebitosStateChange(Sender: TObject);
begin
  PosDebito.Enabled      := DSDebitos.State IN [dsInsert, dsEdit];
  CancelDebito.Enabled   := DSDebitos.State IN [dsInsert, dsEdit];
  dbgMovimientos.Enabled := DSDebitos.State =dsBrowse;
  if (CDSCajaMovID_TPAGO.Value<>6) and (DSDebitos.State in [dsEdit,dsInsert]) Then
    begin
       DSDebitos.DataSet.Cancel;
       sysutils.Abort;
    end;
end;

procedure TFrameMovValoresEgresos.pcValoresChange(Sender: TObject);
begin
 SincronizaChe3.Enabled:=pcValores.ActivePageIndex=1;

end;

procedure TFrameMovValoresEgresos.pcValoresChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  AllowChange := DSCajaMov.DataSet.State=dsBrowse;
  if (DSDebitos.DataSet.State<>dsBrowse) or
     (DSTransBco.DataSet.State<>dsBrowse) or
     (DSChe3.DataSet.State<>dsBrowse) or
     (DSMovEfectivo.DataSet.State<>dsBrowse) or
     (DSCheques.DataSet.State<>dsBrowse)
     then
       AllowChange:=False
  else
    AllowChange:=True;

end;

procedure TFrameMovValoresEgresos.CDSDebitosBeforePost(
  DataSet: TDataSet);
begin
  CDSDebitosID_CAJA.Value       := CDSCajaMovID_CAJA.Value;
  CDSDebitosID_CUENTA_CAJA.Value:= CDSCajaMovID_CUENTA_CAJA.Value;
end;

procedure TFrameMovValoresEgresos.CDSTransBcoBeforePost(
  DataSet: TDataSet);
begin
  CDSTransBcoID_CAJA.Value       := CDSCajaMovID_CAJA.Value;
  CDSTransBcoID_CUENTA_CAJA.Value:= CDSCajaMovID_MOV_CAJA.Value;
end;

procedure TFrameMovValoresEgresos.CDSChe3BeforePost(DataSet: TDataSet);
begin
  CDSChe3ID_MOV_CAJA_EGRESOS.Value := CDSCajaMovID_MOV_CAJA.Value;
end;

procedure TFrameMovValoresEgresos.CDSMovEfectivoBeforePost(
  DataSet: TDataSet);
begin
  CDSMovEfectivoID_CAJA.Value        := CDSCajaMovID_CAJA.Value;
  CDSMovEfectivoID_CUENTA_CAJA.Value := CDSCajaMovID_CUENTA_CAJA.Value;
end;

procedure TFrameMovValoresEgresos.CDSChequesBeforeInsert(DataSet: TDataSet);
begin
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.Data:=CDSCheques.Data;
  CDSClone.First;
end;

procedure TFrameMovValoresEgresos.CDSChequesBeforePost(
  DataSet: TDataSet);
begin
  CDSChequesID_CAJA.Value       := CDSCajaMovID_CAJA.Value;
  CDSChequesID_CUENTA_CAJA.Value:= CDSCajaMovID_CUENTA_CAJA.Value;
end;

procedure TFrameMovValoresEgresos.CDSChequesFECHA_COBROSetText(Sender: TField;
  const Text: string);
begin
  if Sender.AsDateTime<CDSChequesFECHA_EMISION.AsDateTime then
    begin
      if MessageDlg('Fecha Anterior a la de Emision.... Acpeta?',mtConfirmation,mbYesNo,0,mbNo)=mrYes Then
        Sender.AsString:=Text
      else
        Sender.Clear;
    end;
end;

procedure TFrameMovValoresEgresos.ceCajaEnter(Sender: TObject);
begin
  CajaOld:=Trim(ceCaja.Text);
end;

procedure TFrameMovValoresEgresos.ceCajaExit(Sender: TObject);
begin
   QCajaCab.Close;
  if (Trim(ceCaja.Text)='') Then
    QCajaCab.ParamByName('Id').Value := -1
  else
    QCajaCab.ParamByName('Id').Value := StrToInt(Trim(ceCaja.Text));
  QCajaCab.Open;
  IF (QCajaCab.Fields[0].AsString<>'') THEN
    BEGIN
      ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
      edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.AsString;
      Id_Caja            := QCajaCabID_CAJA.Value;
      id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
      FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
      if (dbgMovimientos.Enabled=True) and (Parent.Parent.Enabled=True) Then
        dbgMovimientos.SetFocus;
    END
  ELSE
    BEGIN
      ShowMessage('Caja no Válida.....');
      edMuestraCaja.Text := '';
      ceCaja.Text:='';
      ceCaja.SetFocus;
      ceCaja.SelectAll;
    END;
end;

procedure TFrameMovValoresEgresos.CDSChe3AfterEdit(DataSet: TDataSet);
begin
 // controlar pero parese no tener uso... ver si se puede borrar este evento
//  if wwCDSChe3UNIDADES.OldValue<>null Then
//    begin
 //     FormCarteraCheques.wwCDSCarteraCheSALDO_UNIDADES.Value:=FormCarteraCheques.wwCDSCarteraCheSALDO_UNIDADES.Value+wwCDSChe3UNIDADES.OldValue-wwCDSChe3UNIDADES.NewValue;
 //     FormCarteraCheques.wwCDSCarteraCheSALDO_IMPORTE.Value :=FormCarteraCheques.wwCDSCarteraCheSALDO_IMPORTE.Value+wwCDSChe3IMPORTE.OldValue-wwCDSChe3IMPORTE.NewValue;
 //   end;
end;

procedure TFrameMovValoresEgresos.CDSChe3BeforeEdit(DataSet: TDataSet);
begin
//  wwCDSChe3.Cancel;
//  SysUtils.Abort;
end;

procedure TFrameMovValoresEgresos.DBText12Click(Sender: TObject);
begin
  if DMMain_FD.UsuarioAdministrador then
    begin
      if Not(Assigned(FormControlAperturaCaja)) then
        FormControlAperturaCaja:=TFormControlAperturaCaja.Create(Self);
      FormControlAperturaCaja.Show;
      formControlAperturaCaja.cbCuentas.KeyValue:=StrToInt(Trim(ceCaja.Text));
      FormControlAperturaCaja.CDSCaja.Locate('ID_CAJA',DBText12.DataSource.DataSet.FieldByName('ID_CAJA').AsString,[])
    end;
end;

procedure TFrameMovValoresEgresos.DBText12MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if DMMain_FD.UsuarioAdministrador then
    DBText12.Cursor:=crHandPoint
  else
    DBText12.Cursor:=crDefault;

end;

procedure TFrameMovValoresEgresos.DSCajaMovStateChange(Sender: TObject);
begin
//  ShowMessage('edit');
  pcValores.Enabled     := DSCajaMov.DataSet.State<>dsBrowse;
  spLoteCheques.Enabled := DSCajaMov.DataSet.State=dsBrowse;
end;

procedure TFrameMovValoresEgresos.CDSMovTCCompraNewRecord(
  DataSet: TDataSet);
begin
  CDSMovTCCompraID_CUPON.Value          := IBId_MovTCCompra.IncrementFD(1);
  CDSMovTCCompraCUOTAS.Value            := 1;
  CDSMovTCCompraID_CAJA.Value           := CDSCajaMovID_CAJA.Value;
  CDSMovTCCompraID_MOV_CAJA.Value       := CDSCajaMovID_MOV_CAJA.Value;
  CDSMovTCCompraFECHA_COMPRA.AsDateTime := FechaOperacion;
  CDSMovTCCompraFECHA_CUPON.AsDateTime  := FechaOperacion;
  CDSMovTCCompraPROVEEDOR.AsString      := Origen;
  CDSMovTCCompraID_FPAGO.AsInteger      := CDSCajaMovID_FPAGO.AsInteger;
  CDSMovTCCompraID_CAJA.AsInteger       := CDSCajaMovID_CUENTA_CAJA.AsInteger;
  CDSMovTCCompraCOTIZACION.Value        := CDSCajaMovCOTIZACION.AsFloat;
  CDSMovTCCompraMONEDA.Value            := CDSCajaMovMONEDA.AsInteger;
  CDSMovTCCompraID_CPBTE.Value          := CDSCajaMovID_COMPROBANTE.AsInteger;
  CDSMovTCCompraTIPOCPBTE.Value         := TipoCpbte;
  CDSMovTCCompraCLASECPBTE.AsString     := ClaseCpbte;
  CDSMovTCCompraNROCPBTE.AsString       := NroCpbte;
  CDSMovTCCompraID_CPBTE_ANULACION_TC.AsInteger :=-1;
  CDSMovTCCompraID_CAJA_MOV_ANULACION.AsInteger :=-1;
  CDSMovTCCompraANULADO.AsString                := 'N';
end;

procedure TFrameMovValoresEgresos.BuscarTCreditoExecute(Sender: TObject);
begin
  CDSBuscaTCredito.Close;
  CDSBuscaTCredito.Open;
  comBuscadorTc.Execute;
  IF comBuscadorTc.rOk THEN
    CDSMovTCCompraID_TARJETASetText(CDSMovTCCompraID_TARJETA,IntToStr(comBuscadorTc.Id));
  CDSBuscaTCredito.Close;
end;

procedure TFrameMovValoresEgresos.CDSMovTCCompraID_TARJETASetText(
  Sender: TField; const Text: String);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignaTC(Sender.AsInteger)) THEN
        BEGIN
          ShowMessage('Código no válido');
          Sender.AsString := '';
        END;
     end;
end;

procedure TFrameMovValoresEgresos.CDSMovTCCompraUNIDADESSetText(
  Sender: TField; const Text: String);
VAR i:byte;
dato:String;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Dato:=Text;     // para correjir el problema de que cuando toma el numero lo pueda converti a Float
      while Pos(SysUtils.FormatSettings.ThousandSeparator,Dato) <>0 Do
        begin
          i:=Pos(SysUtils.FormatSettings.ThousandSeparator,Dato);
          Delete(Dato,I,1);
        end;
      Sender.AsString := FloatToStr(Moneda3D(' ',MascaraImportes,StrToFloat(Dato)));
      CDSMovTCCompraIMPORTE.AsFloat := Moneda3D(' ',MascaraImportes,CDSMovTCCompraCOTIZACION.AsFloat * Sender.AsFloat);
    end;
end;

procedure TFrameMovValoresEgresos.CancelaTCExecute(Sender: TObject);
begin
  CDSMovTCCompra.Cancel;
  CDSCajaMov.Cancel;
end;

procedure TFrameMovValoresEgresos.PostTCExecute(Sender: TObject);
begin
  IF (Trunc(CDSMovTCCompraUNIDADES.AsFloat * 10000) <> 0 ) THEN
    CDSMovTCCompra.Post
  ELSE
    BEGIN
      ShowMessage('No se ingreso importe');
      dbeUniTC.SetFocus;
    END;
end;

procedure TFrameMovValoresEgresos.DSMovTCCompraStateChange(
  Sender: TObject);
begin
  PostTC.Enabled         := DSMovTCCompra.State IN [dsInsert, dsEdit];
  CancelaTC.Enabled      := DSMovTCCompra.State IN [dsInsert, dsEdit];
  dbgMovimientos.Enabled := DSMovTCCompra.State =dsBrowse;
  if (CDSCajaMovID_TPAGO.Value<>4) and (DSMovTCCompra.State in [dsEdit,dsInsert])
   Then
     begin
        DSCheques.DataSet.Cancel;
        sysutils.Abort;
     end;
end;

procedure TFrameMovValoresEgresos.DSPChe3UpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  if UpdateKind in [ukDelete] then
    begin
      Response := rrIgnore;
    end;

end;

procedure TFrameMovValoresEgresos.DSPChequesUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  if UpdateKind in [ukDelete] then
    begin
      Response := rrIgnore;
    end;

end;

procedure TFrameMovValoresEgresos.DSPDebitosUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  if UpdateKind in [ukDelete] then
    begin
      Response := rrIgnore;
    end;

end;

procedure TFrameMovValoresEgresos.DSPMovEfectivoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  if UpdateKind in [ukDelete] then
    begin
      Response := rrIgnore;
    end;

end;

procedure TFrameMovValoresEgresos.DSPMovTCCompraUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  if UpdateKind in [ukDelete] then
    begin
      Response := rrIgnore;
    end;

end;

procedure TFrameMovValoresEgresos.DSPMovTCCuotaUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  if UpdateKind in [ukDelete] then
    begin
      Response := rrIgnore;
    end;

end;

procedure TFrameMovValoresEgresos.DSPTransBcoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  if UpdateKind in [ukDelete] then
    begin
      Response := rrIgnore;
    end;

end;

procedure TFrameMovValoresEgresos.CDSMovTCCompraAfterPost(
  DataSet: TDataSet);
begin
  IF CDSCajaMov.State = dsBrowse THEN
    CDSCajaMov.Edit;
  CDSCajaMovUNIDADES.Value := CDSMovTCCompraUNIDADES.Value;
  CDSCajaMovHABER.Value    := CDSMovTCCompraIMPORTE.Value;
  CDSCajaMov.Post;
  IF dbgMovimientos.Enabled = true THEN
    dbgMovimientos.SetFocus;
end;

procedure TFrameMovValoresEgresos.CDSMovTCCompraBeforePost(
  DataSet: TDataSet);
var cont:byte;
valorcuota:Real;
begin
  ValorCuota:=CDSMovTCCompraIMPORTE.AsFloat/CDSMovTCCompraCUOTAS.Value;
  if CDSMovTCCompraCUOTAS.Value>1 then
    begin
      if Not(Assigned(FormValorCuotaTC)) then
        FormValorCuotaTC:=TFormValorCuotaTC.Create(self);
      FormValorCuotaTC.Valor:=valorcuota;
      FormValorCuotaTC.ShowModal;
      if FormValorCuotaTC.ModalResult=mrOk then
        valorcuota:=FormValorCuotaTC.Valor;
     end;

  CDSMovTCCompraID_CAJA.Value        := CDSCajaMovID_CAJA.Value;
  CDSMovTCCompraID_CUENTA_CAJA.Value := CDSCajaMovID_CUENTA_CAJA.Value;
  if (CDSMovTCCompraCUOTAS.Value=0) Or (CDSMovTCCompraCUOTAS.AsString='') then
    CDSMovTCCompraCUOTAS.Value:=1;
  for cont:=1 to CDSMovTCCompraCUOTAS.Value do
    begin
      CDSMovTCCuota.Insert;
      CDSMovTCCuotaCUOTA.Value        :=Cont;
      CDSMovTCCuotaTOTAL_CUOTAS.Value :=CDSMovTCCompraCUOTAS.Value;
      CDSMovTCCuotaIMPORTE.AsFloat    :=ValorCuota;
      CDSMovTCCuotaLIQUIDADA.Value    :='N';
      CDSMovTCCuota.Post;
    end;

end;

procedure TFrameMovValoresEgresos.dbcTCKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSMovTCCompraID_TARJETA.Clear;
      CDSMovTCCompraMUESTRATC.Clear;
    end;
end;

procedure TFrameMovValoresEgresos.dbcTCKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF key = #10 THEN
    BEGIN
      key := #0;
      BuscarTCredito.Execute;
    END;
end;

procedure TFrameMovValoresEgresos.dbeFechaCobroExit(Sender: TObject);
begin
 if CDSChequesFECHA_COBRO.AsDateTime<CDSChequesFECHA_EMISION.AsDateTime then
    begin
      if MessageDlg('Fecha Anterior a la de Emision.... Acpeta?',mtConfirmation,mbYesNo,0,mbNo)=mrNo Then
        CDSChequesFECHA_COBRO.Clear;
    end;
end;

procedure TFrameMovValoresEgresos.dbeFechaEmisionExit(Sender: TObject);
begin
 if CDSChequesFECHA_EMISION.AsDateTime<FechaOperacion then
    begin
      if MessageDlg('Fecha Anterior a la de Operacion... Acpeta?',mtConfirmation,mbYesNo,0,mbNo)=mrNo Then
        CDSChequesFECHA_EMISION.Clear;
    end;
end;

procedure TFrameMovValoresEgresos.CDSMovTCCuotaNewRecord(
  DataSet: TDataSet);
begin
  CDSMovTCCuotaID.Value                  :=ibgId_MovCuotas.IncrementFD(1);
  CDSMovTCCuotaID_CUPON.Value            :=CDSMovTCCompraID_CUPON.Value;
  CDSMovTCCuotaID_TARJEA.Value           :=CDSMovTCCompraID_TARJETA.Value;
  CDSMovTCCuotaFECHA_COMPRA.Value        :=CDSMovTCCompraFECHA_COMPRA.Value;
  CDSMovTCCuotaIMPORTE_TOTAL_COMPRA.Value:=CDSMovTCCompraIMPORTE.Value;
  CDSMovTCCuotaNUMERO_CUPON.Value        :=CDSMovTCCompraNUMERO_CUPON.Value;
end;

procedure TFrameMovValoresEgresos.CDSMovTCCompraBeforeDelete(
  DataSet: TDataSet);
begin
  CDSMovTCCuota.Close;
  CDSMovTCCuota.Params.ParamByName('id').Clear;
  CDSMovTCCuota.Open;

end;

END.
