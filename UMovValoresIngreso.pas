UNIT UMovValoresIngreso;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, StdCtrls,
  Buttons, Mask, ComCtrls, Grids, DBGrids, Db, IBGenerator, Math, FMTBcd,
  DBClient, SqlExpr, ActnList, Provider, JvToolEdit, JvExMask,
  JvDBControls, JvExControls, JvLabel,Librerias,Variants, JvDBLookup,
  System.Actions, CompBuscador,UConsultaPadronCuit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,IniFiles,StrUtils, Vcl.Menus;


 TYPE
  TFrameMovValoresIngreso = CLASS(TFrame)
    lbTotalValores: TLabel;
    Label25: TLabel;
    dbgMovimientos: TDBGrid;
    pcValores: TPageControl;
    tsEfectivo: TTabSheet;
    dbeUnidades: TDBEdit;
    dbeCotizacion: TDBEdit;
    dbeImporte: TDBEdit;
    BitBtn7: TBitBtn;
    BitBtn1: TBitBtn;
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
    DSPChe3: TDataSetProvider;
    DSPMovEfectivo: TDataSetProvider;
    DSPCajaMov: TDataSetProvider;
    IBGId_Che3: TIBGenerator;
    IBGId_Efectivo: TIBGenerator;
    IBGId_Caja_Mov: TIBGenerator;
    ActionList1: TActionList;
    PostChe3: TAction;
    CancelChe3: TAction;
    PostEfectivo: TAction;
    CancelEfectivo: TAction;
    BuscarFormaPago: TAction;
    PostCheque: TAction;
    CancelCheque: TAction;
    edMuestraCaja: TEdit;
    tsTCredito: TTabSheet;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBText4: TDBText;
    Label26: TLabel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DSPMovTCredito: TDataSetProvider;
    IBGId_TCredito: TIBGenerator;
    PostTCredito: TAction;
    CancelTCredito: TAction;
    BuscarBanco: TAction;
    BuscarTCredito: TAction;
    Label27: TLabel;
    Bevel1: TBevel;
    tsTransf: TTabSheet;
    DSPTransBco: TDataSetProvider;
    Label2: TLabel;
    dbeNumero: TDBEdit;
    Label3: TLabel;
    dbeMuestraCta: TDBEdit;
    Label5: TLabel;
    dbeUnidadesTx: TDBEdit;
    Label6: TLabel;
    dbeImporteTx: TDBEdit;
    Label17: TLabel;
    dbeOrigenTx: TDBEdit;
    BuscarCtaBco: TAction;
    BitBtn4: TBitBtn;
    BitBtn8: TBitBtn;
    PostTrans: TAction;
    CancelTrans: TAction;
    Label31: TLabel;
    IBGId_Trans: TIBGenerator;
    tsCheques: TTabSheet;
    Label4: TLabel;
    Label18: TLabel;
    Label24: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    dbNI: TDBText;
    dbNF: TDBText;
    btCancel: TBitBtn;
    btPost: TBitBtn;
    DSPAnulacionChe: TDataSetProvider;
    tsDebito: TTabSheet;
    Label33: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    dbeNroDebito: TDBEdit;
    dbeMuestraCtaDebito: TDBEdit;
    dbeUnidadesDebito: TDBEdit;
    ImporteDebito: TDBEdit;
    dbeOriginadoDebito: TDBEdit;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    DSPDebitos: TDataSetProvider;
    IBGIdDebito: TIBGenerator;
    DBText2: TDBText;
    DBText1: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    ibg_id_mov_anula_chePro: TIBGenerator;
    Label29: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBTCoef: TDBText;
    Label41: TLabel;
    Label42: TLabel;
    DBTValorCuota: TDBText;
    Label43: TLabel;
    DBTRecargo: TDBText;
    Label44: TLabel;
    DBText12: TDBText;
    Label45: TLabel;
    Label46: TLabel;
    DBText13: TDBText;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    lbResto: TLabel;
    dbt1: TDBText;
    dbtID_Che3: TDBText;
    dbtID_EFECTIVO1: TDBText;
    dbtID_EFECTIVO2: TDBText;
    dbtID_EFECTIVO4: TDBText;
    RxLabel4: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    cbTCredito: TJvDBComboEdit;
    ceCtaBco: TJvDBComboEdit;
    rcdcIdCtaBcoDebito: TJvDBComboEdit;
    ceCaja: TJvComboEdit;
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
    DSTransBco: TDataSource;
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
    DSChe3: TDataSource;
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
    DSMovEfectivo: TDataSource;
    QAnulacionChe: TFDQuery;
    QAnulacionCheID_ANULACION: TIntegerField;
    QAnulacionCheID_CAJA: TIntegerField;
    QAnulacionCheID_CAJA_MOV: TIntegerField;
    QAnulacionCheID_FPAGO: TIntegerField;
    QAnulacionCheFECHA: TSQLTimeStampField;
    QAnulacionCheUNIDADES: TFloatField;
    QAnulacionCheIMPORTE: TFloatField;
    QAnulacionCheID_CHE_ANULADO: TIntegerField;
    QAnulacionCheID_CHEQUERA: TIntegerField;
    QAnulacionCheMUESTRACHEQUERA: TStringField;
    QAnulacionCheMUESTRANI: TIntegerField;
    QAnulacionCheMUESTRANF: TIntegerField;
    QAnulacionCheMUESTRANUMEROCHE: TIntegerField;
    QAnulacionCheMUESTRAEMISION: TSQLTimeStampField;
    QAnulacionCheMUESTRACOBRO: TSQLTimeStampField;
    QAnulacionCheMUESTRAORDENDE: TStringField;
    CDSAnulacionChe: TClientDataSet;
    CDSAnulacionCheID_ANULACION: TIntegerField;
    CDSAnulacionCheID_CAJA: TIntegerField;
    CDSAnulacionCheID_CAJA_MOV: TIntegerField;
    CDSAnulacionCheID_FPAGO: TIntegerField;
    CDSAnulacionCheFECHA: TSQLTimeStampField;
    CDSAnulacionCheUNIDADES: TFloatField;
    CDSAnulacionCheIMPORTE: TFloatField;
    CDSAnulacionCheID_CHE_ANULADO: TIntegerField;
    CDSAnulacionCheID_CHEQUERA: TIntegerField;
    CDSAnulacionCheMUESTRACHEQUERA: TStringField;
    CDSAnulacionCheMUESTRANI: TIntegerField;
    CDSAnulacionCheMUESTRANF: TIntegerField;
    CDSAnulacionCheMUESTRANUMEROCHE: TIntegerField;
    CDSAnulacionCheMUESTRAEMISION: TSQLTimeStampField;
    CDSAnulacionCheMUESTRACOBRO: TSQLTimeStampField;
    CDSAnulacionCheMUESTRAORDENDE: TStringField;
    DSAnulacioChe: TDataSource;
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
    DSCajaMov: TDataSource;
    QMovTCredito: TFDQuery;
    QMovTCreditoID_MOV_TC: TIntegerField;
    QMovTCreditoID_CAJA: TIntegerField;
    QMovTCreditoID_MOV_CAJA: TIntegerField;
    QMovTCreditoID_FPAGO: TIntegerField;
    QMovTCreditoID_TC: TIntegerField;
    QMovTCreditoFECHA: TSQLTimeStampField;
    QMovTCreditoTITULAR: TStringField;
    QMovTCreditoCAN_CUOTAS: TIntegerField;
    QMovTCreditoN_DOCU: TStringField;
    QMovTCreditoUNIDADES: TFloatField;
    QMovTCreditoCOTIZACION: TFloatField;
    QMovTCreditoIMPORTE: TFloatField;
    QMovTCreditoOTROS: TStringField;
    QMovTCreditoMONEDA: TIntegerField;
    QMovTCreditoID_CUENTA_CAJA: TIntegerField;
    QMovTCreditoUNIDADES_NETO: TFloatField;
    QMovTCreditoIMPORTE_NETO: TFloatField;
    QMovTCreditoCOEFICIENTE: TFloatField;
    QMovTCreditoVALORCUOTA: TFloatField;
    QMovTCreditoIMPORTE_RECARGO: TFloatField;
    QMovTCreditoID_CUENTA_BANCO: TIntegerField;
    QMovTCreditoNRO_CUPON: TIntegerField;
    QMovTCreditoFECHA_ACREDITACION: TSQLTimeStampField;
    QMovTCreditoACREDITADA: TStringField;
    QMovTCreditoLOTE: TStringField;
    QMovTCreditoTERMINAL: TStringField;
    QMovTCreditoMUESTRATC: TStringField;
    CDSMovTCredito: TClientDataSet;
    CDSMovTCreditoID_MOV_TC: TIntegerField;
    CDSMovTCreditoID_CAJA: TIntegerField;
    CDSMovTCreditoID_MOV_CAJA: TIntegerField;
    CDSMovTCreditoID_FPAGO: TIntegerField;
    CDSMovTCreditoID_TC: TIntegerField;
    CDSMovTCreditoFECHA: TSQLTimeStampField;
    CDSMovTCreditoTITULAR: TStringField;
    CDSMovTCreditoCAN_CUOTAS: TIntegerField;
    CDSMovTCreditoN_DOCU: TStringField;
    CDSMovTCreditoUNIDADES: TFloatField;
    CDSMovTCreditoCOTIZACION: TFloatField;
    CDSMovTCreditoIMPORTE: TFloatField;
    CDSMovTCreditoOTROS: TStringField;
    CDSMovTCreditoMONEDA: TIntegerField;
    CDSMovTCreditoID_CUENTA_CAJA: TIntegerField;
    CDSMovTCreditoUNIDADES_NETO: TFloatField;
    CDSMovTCreditoIMPORTE_NETO: TFloatField;
    CDSMovTCreditoCOEFICIENTE: TFloatField;
    CDSMovTCreditoVALORCUOTA: TFloatField;
    CDSMovTCreditoIMPORTE_RECARGO: TFloatField;
    CDSMovTCreditoID_CUENTA_BANCO: TIntegerField;
    CDSMovTCreditoNRO_CUPON: TIntegerField;
    CDSMovTCreditoFECHA_ACREDITACION: TSQLTimeStampField;
    CDSMovTCreditoACREDITADA: TStringField;
    CDSMovTCreditoLOTE: TStringField;
    CDSMovTCreditoTERMINAL: TStringField;
    CDSMovTCreditoMUESTRATC: TStringField;
    CDSBuscaBanco: TClientDataSet;
    DSPBuscaBanco: TDataSetProvider;
    CDSBuscaBancoID_BANCO: TIntegerField;
    CDSBuscaBancoNOMBRE: TStringField;
    CDSBuscaTCredito: TClientDataSet;
    DSPBuscaTCredito: TDataSetProvider;
    CDSBuscaTCreditoID_TC: TIntegerField;
    CDSBuscaTCreditoDESCRIPCION: TStringField;
    CDSBuscaCtaCajaBco: TClientDataSet;
    DSPBuscaCtaCajaBco: TDataSetProvider;
    CDSBuscaCtaCajaBcoID_CUENTA: TIntegerField;
    CDSBuscaCtaCajaBcoNOMBRE: TStringField;
    CDSBuscaCtaCajaBcoNRO_CUENTA: TStringField;
    CDSBuscaFormaPago: TClientDataSet;
    DSPBuscaFormaPago: TDataSetProvider;
    CDSBuscaFormaPagoID_FPAGO: TIntegerField;
    CDSBuscaFormaPagoID_TPAGO: TIntegerField;
    CDSBuscaFormaPagoDESCRIPCION: TStringField;
    CDSBuscaFormaPagoCOTIZACION: TFloatField;
    CDSBuscaFormaPagoSIGNO: TStringField;
    CDSBuscaFormaPagoMONEDA: TIntegerField;
    CDSBuscaCajaCab: TClientDataSet;
    DSPBuscaCajaCab: TDataSetProvider;
    CDSBuscaCajaCabID_CAJA: TIntegerField;
    CDSBuscaCajaCabID_CUENTA_CAJA: TIntegerField;
    CDSBuscaCajaCabFECHA_INCIO: TSQLTimeStampField;
    CDSBuscaCajaCabFECHA_CIERRE: TSQLTimeStampField;
    CDSBuscaCajaCabNUMEROCAJA: TIntegerField;
    CDSBuscaCajaCabMUESTRACAJA: TStringField;
    QChequePropio: TFDQuery;
    QChequePropioID_CHEQUE_PRO: TIntegerField;
    QChequePropioID_CAJA: TIntegerField;
    QChequePropioID_MOV_CAJA: TIntegerField;
    QChequePropioID_FPAGO: TIntegerField;
    QChequePropioID_CHEQUERA: TIntegerField;
    QChequePropioID_BANCO: TIntegerField;
    QChequePropioFECHA_EMISION: TSQLTimeStampField;
    QChequePropioFECHA_COBRO: TSQLTimeStampField;
    QChequePropioORDEN_DE: TStringField;
    QChequePropioNUMERO: TIntegerField;
    QChequePropioUNIDADES: TFloatField;
    QChequePropioIMPORTE: TFloatField;
    QChequePropioCOTIZACION: TFloatField;
    QChequePropioID_CUENTA_CAJA: TIntegerField;
    QChequePropioID_CUENTA_BANCO: TIntegerField;
    QChequePropioMONEDA: TIntegerField;
    QChequePropioOBSERVACIONES: TStringField;
    QChequePropioANULADO: TStringField;
    QChequePropioID_CPBTE_ANULACION_REEMP: TIntegerField;
    QChequePropioID_CAJA_MOV_ANULACION: TIntegerField;
    QChequePropioDEBITADO: TStringField;
    QChequePropioFECHA_DEBITO: TSQLTimeStampField;
    QChequePropioMUESTRACHEQUERA: TStringField;
    QChequePropioMUESTRANI: TIntegerField;
    QChequePropioMUESTRANF: TIntegerField;
    DSMovTCredito: TDataSource;
    QFPefectivo: TFDQuery;
    CDSFormaPagoEfec: TClientDataSet;
    DSPFormaPagoEfec: TDataSetProvider;
    CDSFormaPagoEfecID_FPAGO: TIntegerField;
    CDSFormaPagoEfecID_TPAGO: TIntegerField;
    CDSFormaPagoEfecDESCRIPCION: TStringField;
    CDSFormaPagoEfecCOTIZACION: TFloatField;
    CDSFormaPagoEfecSIGNO: TStringField;
    CDSFormaPagoEfecMONEDA: TIntegerField;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText22: TDBText;
    DBText23: TDBText;
    QMovValoresComp: TFDQuery;
    QMovValoresCompID_VALOR: TIntegerField;
    QMovValoresCompID_CAJA: TIntegerField;
    QMovValoresCompID_CHEQUE: TIntegerField;
    QMovValoresCompID_CUENTA_CAJA: TIntegerField;
    QMovValoresCompID_FPAGO: TIntegerField;
    QMovValoresCompID_MOV_CAJA: TIntegerField;
    QMovValoresCompIMPORTE: TFloatField;
    QMovValoresCompCOTIZACION: TFloatField;
    QMovValoresCompMONEDA: TIntegerField;
    QMovValoresCompMUESTRAFECHACOBRO: TSQLTimeStampField;
    QMovValoresCompMUESTRAFECHAEMISION: TSQLTimeStampField;
    QMovValoresCompMUESTRAFECHAENTRADA: TSQLTimeStampField;
    QMovValoresCompMUESTRAFECHASALIDA: TSQLTimeStampField;
    QMovValoresCompMUESTRAFIRMANTE: TStringField;
    QMovValoresCompMUESTRAIMPORTE: TFloatField;
    CDSMovValoresComp: TClientDataSet;
    DSPMovValoresComp: TDataSetProvider;
    CDSMovValoresCompID_VALOR: TIntegerField;
    CDSMovValoresCompID_CAJA: TIntegerField;
    CDSMovValoresCompID_CHEQUE: TIntegerField;
    CDSMovValoresCompID_CUENTA_CAJA: TIntegerField;
    CDSMovValoresCompID_FPAGO: TIntegerField;
    CDSMovValoresCompID_MOV_CAJA: TIntegerField;
    CDSMovValoresCompIMPORTE: TFloatField;
    CDSMovValoresCompCOTIZACION: TFloatField;
    CDSMovValoresCompMONEDA: TIntegerField;
    CDSMovValoresCompMUESTRAFECHACOBRO: TSQLTimeStampField;
    CDSMovValoresCompMUESTRAFECHAEMISION: TSQLTimeStampField;
    CDSMovValoresCompMUESTRAFECHAENTRADA: TSQLTimeStampField;
    CDSMovValoresCompMUESTRAFECHASALIDA: TSQLTimeStampField;
    CDSMovValoresCompMUESTRAFIRMANTE: TStringField;
    CDSMovValoresCompMUESTRAIMPORTE: TFloatField;
    IBGMovValComp: TIBGenerator;
    DSMovValoresComp: TDataSource;
    tsValoresCompartidos: TTabSheet;
    btCancelValores: TBitBtn;
    DBText24: TDBText;
    btOkValores: TBitBtn;
    DBText25: TDBText;
    DBText26: TDBText;
    QMovValoresCompID_CHEQUE_COMPARTIDO: TIntegerField;
    CDSMovValoresCompID_CHEQUE_COMPARTIDO: TIntegerField;
    QMovValoresCompUNIDADES: TFloatField;
    CDSMovValoresCompUNIDADES: TFloatField;
    JvLabel1: TJvLabel;
    dbeUnidadesValoresComp: TDBEdit;
    JvLabel2: TJvLabel;
    DBEdit2: TDBEdit;
    Label52: TLabel;
    PostValoresCompartidos: TAction;
    CancelValoresCompartidos: TAction;
    DBText27: TDBText;
    DBText28: TDBText;
    DBText29: TDBText;
    DBText30: TDBText;
    DBText31: TDBText;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    DBText32: TDBText;
    QMovValoresCompMUESTRANROCHE: TIntegerField;
    CDSMovValoresCompMUESTRANROCHE: TIntegerField;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    QMovTCreditoSALDO_IMPORTE: TFloatField;
    CDSMovTCreditoSALDO_IMPORTE: TFloatField;
    tsCtaCte: TTabSheet;
    dbeDetalleCta: TDBEdit;
    dbeImporteCta: TDBEdit;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    CDSCompAjuste: TClientDataSet;
    DSCompAjuste: TDataSource;
    DSPCompAjuste: TDataSetProvider;
    dbcAjuste: TJvDBLookupCombo;
    Label59: TLabel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    Label60: TLabel;
    Label61: TLabel;
    DSAjustes: TDataSource;
    CDSAjustes: TClientDataSet;
    DSPAjustes: TDataSetProvider;
    QAjustes: TFDQuery;
    ibgAjuste: TIBGenerator;
    QAjustesID: TIntegerField;
    QAjustesID_MOV_CAJA: TIntegerField;
    QAjustesDETALLE: TStringField;
    QAjustesIMPORTE: TFloatField;
    QAjustesFECHA: TSQLTimeStampField;
    QAjustesID_AJUSTE_CC: TIntegerField;
    QAjustesID_COMPROB_AJUSTE: TIntegerField;
    CDSAjustesID: TIntegerField;
    CDSAjustesID_MOV_CAJA: TIntegerField;
    CDSAjustesDETALLE: TStringField;
    CDSAjustesIMPORTE: TFloatField;
    CDSAjustesFECHA: TSQLTimeStampField;
    CDSAjustesID_AJUSTE_CC: TIntegerField;
    CDSAjustesID_COMPROB_AJUSTE: TIntegerField;
    CDSBuscaCliente: TClientDataSet;
    DSPBuscaCliente: TDataSetProvider;
    CDSBuscaClienteCODIGO: TStringField;
    CDSBuscaClienteNOMBRE: TStringField;
    CDSBuscaClienteRAZON_SOCIAL: TStringField;
    BuscarCliente: TAction;
    QAjustesCODIGO: TStringField;
    CDSAjustesCODIGO: TStringField;
    QAjustesNOMBRE: TStringField;
    CDSAjustesNOMBRE: TStringField;
    edNombreCliente: TDBEdit;
    posAjustes: TAction;
    CancelAjuste: TAction;
    ceCliente: TJvDBComboEdit;
    DBText33: TDBText;
    DBText34: TDBText;
    DBText35: TDBText;
    DBText36: TDBText;
    Label62: TLabel;
    ComBuscadorCaja: TComBuscador;
    ComBuscadorBanco: TComBuscador;
    ComBuscadorTC: TComBuscador;
    ComBuscadorCtaBco: TComBuscador;
    ComBuscadorFormaPago: TComBuscador;
    ComBuscadorCliente: TComBuscador;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QEmpresa: TFDQuery;
    QEmpresaCUIT: TStringField;
    QCoeficienteTC: TFDQuery;
    QCoeficienteTCMAX: TFloatField;
    QCajaCab: TFDQuery;
    QTc: TFDQuery;
    QFormaPago: TFDQuery;
    QBanco: TFDQuery;
    QChequera: TFDQuery;
    QCtaCajaBco: TFDQuery;
    QCajaCabID_CAJA: TIntegerField;
    QCajaCabID_CUENTA_CAJA: TIntegerField;
    QCajaCabSALDO_INCIAL: TFloatField;
    QCajaCabOBS: TMemoField;
    QCajaCabNUMEROCAJA: TIntegerField;
    QCajaCabMUESTRACTACAJA: TStringField;
    QTcID_TC: TIntegerField;
    QTcDESCRIPCION: TStringField;
    QTcMONEDA: TIntegerField;
    QTcCODIGOARTICULO: TStringField;
    QTcID_CUENTA_BANCO: TIntegerField;
    QTcDIAS_ACREDITACION: TSmallintField;
    QTcCUIT: TStringField;
    QTcRAZONSOCIAL: TStringField;
    QTcMUESTRAARTICULO: TStringField;
    QTcMUESTRACTABCO: TStringField;
    QTcMUESTRANROCTABCO: TStringField;
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
    QCtaCajaBcoID_CUENTA: TIntegerField;
    QCtaCajaBcoID_TIPO_CTA: TIntegerField;
    QCtaCajaBcoNOMBRE: TStringField;
    QCtaCajaBcoNRO_CUENTA: TStringField;
    QCtaCajaBcoID_BANCO: TIntegerField;
    QCtaCajaBcoCUIT: TStringField;
    QCtaCajaBcoRAZONSOCIAL: TStringField;
    QCtaCajaBcoMUESTRABANCO: TStringField;
    QCliente: TFDQuery;
    QClienteCODIGO: TStringField;
    QClienteNOMBRE: TStringField;
    QClienteNOMBRE_COMPLETO: TStringField;
    QClienteRAZON_SOCIAL: TStringField;
    QClienteDIRECCION_PARTICULAR: TStringField;
    QClienteTIPODOCUMENTO: TSmallintField;
    QClienteNRODOCUMENTO: TStringField;
    QClienteCORREOELECTRONICO: TStringField;
    QClienteCORREOELECTRONICO_2: TStringField;
    QClienteID_FACTURAPORDEFECTO: TIntegerField;
    QClienteID_FACTURACONTADOPORDEFECTO: TIntegerField;
    QClienteID_NOTADEBITOPORDEFECTO: TIntegerField;
    QClienteID_NOTACREDITOPORDEFECTO: TIntegerField;
    QClienteID_TIKETPORDEFECTO: TIntegerField;
    QClienteID_RECIBOPORDEFECTO: TIntegerField;
    QClienteTIPOABONO: TStringField;
    QClienteID_PLANTILLA: TIntegerField;
    QClientePERCIBIR_IB: TStringField;
    QClienteINSCRIPTO_MULTICONVENIO: TStringField;
    QClienteFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    QClienteCONTACTO: TStringField;
    QClienteTELEFONO_CONTACTO: TStringField;
    QClienteCOBRADOR: TStringField;
    QClienteCATEGORIA: TIntegerField;
    QClienteLONGITUD: TStringField;
    QClienteLATITUD: TStringField;
    QClienteDIRECCION_CALLE: TStringField;
    QClienteDIRECCION_NUMERO: TStringField;
    QClienteDIRECCION_PISO: TStringField;
    QClienteDIRECCION_DEPTO: TStringField;
    QClienteDEUDAMAYOR30: TStringField;
    QClienteMES_ADICIONAL: TIntegerField;
    QClienteMES_SEMESTRAL: TIntegerField;
    QClienteMOROSO: TStringField;
    QClientePLANTILLA_CIVA: TStringField;
    QClienteOBSERVACIONES1: TStringField;
    QClienteOBSERVACIONES2: TStringField;
    QClienteAVISO: TStringField;
    QClienteRUBRO: TIntegerField;
    QClienteENVIAR_CPTE_MAIL: TStringField;
    QClienteNRO_IP: TStringField;
    QClienteCHEQUES: TStringField;
    QClienteCPOSTAL: TStringField;
    QClienteLOCALIDAD: TStringField;
    QClienteCONDICION_IVA: TIntegerField;
    QClienteEMITE_REMITO: TStringField;
    QClienteEMITE_FACTURA: TStringField;
    QClienteNRO_DE_CUIT: TStringField;
    QClienteACTIVO: TStringField;
    QClienteLIMITE_CREDITO: TFloatField;
    QClienteSALDOINICIAL: TFloatField;
    QClienteOBSERVACIONES: TMemoField;
    QClienteFECHAULTIMACOMPRA: TSQLTimeStampField;
    QClienteFECHAALTA: TSQLTimeStampField;
    QClienteSUCURSAL: TIntegerField;
    QClienteZONA: TIntegerField;
    QClienteVENDEDOR: TStringField;
    QClienteULTIMOPAGO: TSQLTimeStampField;
    QClienteLISTAPRECIOS: TIntegerField;
    QClienteFECHANACIMIENTO: TSQLTimeStampField;
    DBEdit4: TDBEdit;
    DBEBancoChe3: TDBEdit;
    DBEEntregadoPorChe3: TDBEdit;
    DBENroChe3: TDBEdit;
    DBEEntregadoAChe3: TDBEdit;
    dbeunidadesChe3: TDBEdit;
    DBEFirmante: TDBEdit;
    dbeImporteChe3: TDBEdit;
    DBECuit: TDBEdit;
    DBEdit1: TDBEdit;
    DBETc_Cuotas: TDBEdit;
    DBETc_Titular: TDBEdit;
    DBETc_Documento: TDBEdit;
    dbeimporteTc: TDBEdit;
    dbeUnidadesTc: TDBEdit;
    DBEUnidadesNeto: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBDFechaEmisionChe3: TJvDBDateEdit;
    DBDFechaCobroChe3: TJvDBDateEdit;
    DBDFechaIngresoChe3: TJvDBDateEdit;
    DBDFechaEgresoChe3: TJvDBDateEdit;
    DBTcFecha: TJvDBDateEdit;
    QChe3E_CHECK: TStringField;
    QChe3ID_CTA_CAJA_BCO: TIntegerField;
    CDSChe3E_CHECK: TStringField;
    CDSChe3ID_CTA_CAJA_BCO: TIntegerField;
    dbchE_check: TDBCheckBox;
    QCtasBancarias: TFDQuery;
    DSCtasBancarias: TDataSource;
    DSPCtaBancarias: TDataSetProvider;
    CDSCtasBancarias: TClientDataSet;
    dbcE_Check: TJvDBLookupCombo;
    QCajaCabESTADO: TIntegerField;
    QCajaCabFECHA_INCIO: TSQLTimeStampField;
    QCajaCabFECHA_CIERRE: TSQLTimeStampField;
    Label63: TLabel;
    Label64: TLabel;
    DBText37: TDBText;
    CDSCompAjusteSUCURSAL: TStringField;
    CDSCompAjusteID_COMPROBANTE: TIntegerField;
    CDSCompAjusteDENOMINACION: TStringField;
    QCompAjuste: TFDQuery;
    DBText38: TDBText;
    lbAvisoChe3: TLabel;
    QTransBcoDETALLE: TStringField;
    CDSTransBcoDETALLE: TStringField;
    Label65: TLabel;
    DBEdit7: TDBEdit;
    ImportarCheques: TAction;
    PopupMenu1: TPopupMenu;
    ImportarCheques1: TMenuItem;
    PROCEDURE dbgMovimientosColEnter(Sender: TObject);
    PROCEDURE dbgMovimientosEditButtonClick(Sender: TObject);
    PROCEDURE dbgMovimientosKeyPress(Sender: TObject; VAR Key: Char);
    PROCEDURE PostChe3Execute(Sender: TObject);
    PROCEDURE CancelChe3Execute(Sender: TObject);
    PROCEDURE PostEfectivoExecute(Sender: TObject);
    PROCEDURE CancelEfectivoExecute(Sender: TObject);
    PROCEDURE BuscarFormaPagoExecute(Sender: TObject);
    PROCEDURE DSChe3StateChange(Sender: TObject);
    PROCEDURE DSMovEfectivoStateChange(Sender: TObject);
    PROCEDURE CDSChe3AfterPost(DataSet: TDataSet);
    PROCEDURE CDSChe3NewRecord(DataSet: TDataSet);
    PROCEDURE CDSMovEfectivoAfterPost(DataSet: TDataSet);
    PROCEDURE CDSMovEfectivoNewRecord(DataSet: TDataSet);
    PROCEDURE CDSCajaMovAfterDelete(DataSet: TDataSet);
    PROCEDURE CDSCajaMovAfterPost(DataSet: TDataSet);
    PROCEDURE CDSCajaMovAfterScroll(DataSet: TDataSet);
    PROCEDURE CDSCajaMovBeforeDelete(DataSet: TDataSet);
    PROCEDURE CDSCajaMovBeforeInsert(DataSet: TDataSet);
    PROCEDURE CDSCajaMovNewRecord(DataSet: TDataSet);
    PROCEDURE ceCajaButtonClick(Sender: TObject);
    PROCEDURE CancelTCreditoExecute(Sender: TObject);
    PROCEDURE PostTCreditoExecute(Sender: TObject);
    PROCEDURE BuscarBancoExecute(Sender: TObject);
    PROCEDURE BuscarTCreditoExecute(Sender: TObject);
    PROCEDURE ceCajaKeyDown(Sender: TObject; VAR Key: Word;
      Shift: TShiftState);
    PROCEDURE CDSCajaMovBeforePost(DataSet: TDataSet);
    PROCEDURE CDSMovTCreditoNewRecord(DataSet: TDataSet);
    PROCEDURE DSMovTCreditoStateChange(Sender: TObject);
    PROCEDURE dbeunidadesChe3KeyDown(Sender: TObject; VAR Key: Word;
      Shift: TShiftState);
    PROCEDURE CDSMovTCreditoAfterPost(DataSet: TDataSet);
    PROCEDURE DBEBancoChe3KeyPress(Sender: TObject; VAR Key: Char);
    PROCEDURE wwDBETc_IdKeyPress(Sender: TObject; VAR Key: Char);
    procedure CDSTransBcoAfterPost(DataSet: TDataSet);
    procedure CDSTransBcoNewRecord(DataSet: TDataSet);
    procedure BuscarCtaBcoExecute(Sender: TObject);
 //   procedure wwCDSTransBcoID_CUENTA_BANCOSetText(Sender: TField;
 //     const Text: String);
    procedure PostTransExecute(Sender: TObject);
    procedure CancelTransExecute(Sender: TObject);
    procedure DSTransBcoStateChange(Sender: TObject);
    procedure pcValoresChanging(Sender: TObject; var AllowChange: Boolean);
    procedure CDSTransBcoBeforePost(DataSet: TDataSet);
    procedure CDSChe3BeforePost(DataSet: TDataSet);
    procedure CDSMovEfectivoBeforePost(DataSet: TDataSet);
    procedure CDSMovTCreditoBeforePost(DataSet: TDataSet);
    procedure ceCajaExit(Sender: TObject);
    procedure CDSCajaMovBeforeEdit(DataSet: TDataSet);
    procedure DSCajaMovStateChange(Sender: TObject);
    procedure CDSDebitosAfterPost(DataSet: TDataSet);
    procedure CDSDebitosBeforePost(DataSet: TDataSet);
    procedure CDSDebitosNewRecord(DataSet: TDataSet);
    procedure CDSAnulacionCheBeforePost(DataSet: TDataSet);
    procedure CDSAnulacionCheAfterPost(DataSet: TDataSet);
    procedure CDSAnulacionCheNewRecord(DataSet: TDataSet);
    procedure PostChequeExecute(Sender: TObject);
    procedure CancelChequeExecute(Sender: TObject);
    procedure DBEUnidadesNetoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbTCreditoKeyPress(Sender: TObject; var Key: Char);
    procedure ceCajaEnter(Sender: TObject);
    procedure ceCajaKeyPress(Sender: TObject; var Key: Char);
    procedure ceCajaChange(Sender: TObject);
    procedure CDSCajaMovAfterOpen(DataSet: TDataSet);
    procedure FrameExit(Sender: TObject);
    procedure CDSTransBcoID_CUENTA_BANCOSetText(Sender: TField;
      const Text: string);
    procedure CDSTransBcoUNIDADESSetText(Sender: TField; const Text: string);
    procedure CDSChe3ID_BANCOSetText(Sender: TField; const Text: string);
    procedure CDSChe3UNIDADESSetText(Sender: TField; const Text: string);
    procedure CDSMovEfectivoUNIDADESSetText(Sender: TField; const Text: string);
    procedure CDSCajaMovID_FPAGOSetText(Sender: TField; const Text: string);
    procedure CDSMovTCreditoID_TCSetText(Sender: TField; const Text: string);
    procedure CDSMovTCreditoCAN_CUOTASSetText(Sender: TField;
      const Text: string);
    procedure CDSMovTCreditoUNIDADES_NETOSetText(Sender: TField;
      const Text: string);
    procedure CDSMovTCreditoLOTESetText(Sender: TField; const Text: string);
    procedure CDSMovTCreditoTERMINALSetText(Sender: TField; const Text: string);
    procedure CDSMovValoresCompAfterPost(DataSet: TDataSet);
    procedure CDSMovValoresCompUNIDADESSetText(Sender: TField;
      const Text: string);
    procedure PostValoresCompartidosExecute(Sender: TObject);
    procedure CancelValoresCompartidosExecute(Sender: TObject);
    procedure CDSMovValoresCompNewRecord(DataSet: TDataSet);
    procedure CDSMovValoresCompBeforeDelete(DataSet: TDataSet);
    procedure DSMovValoresCompStateChange(Sender: TObject);
    procedure dbgMovimientosDblClick(Sender: TObject);
    procedure CDSAjustesNewRecord(DataSet: TDataSet);
    procedure CDSAjustesAfterPost(DataSet: TDataSet);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure CDSAjustesCODIGOSetText(Sender: TField; const Text: string);
    procedure BitBtn12Click(Sender: TObject);
    procedure DSAjustesStateChange(Sender: TObject);
    procedure posAjustesExecute(Sender: TObject);
    procedure CancelAjusteExecute(Sender: TObject);
    procedure DSPAnulacionCheUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure DSPMovEfectivoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure DSPDebitosUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure DSPTransBcoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure DSPChe3UpdateError(Sender: TObject; DataSet: TCustomClientDataSet;
      E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure DSPMovTCreditoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure DSPMovValoresCompUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
      var Response: TResolverResponse);
    procedure DBText12MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBText12Click(Sender: TObject);
    procedure CDSChe3CUITSetText(Sender: TField; const Text: string);
    procedure dbchE_checkClick(Sender: TObject);
    procedure CDSChe3AfterRefresh(DataSet: TDataSet);
    procedure DBText13Click(Sender: TObject);
    procedure RxLabel4Click(Sender: TObject);
    procedure RxLabel4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn10Click(Sender: TObject);
    procedure ImportarChequesExecute(Sender: TObject);
  private
    { Private declarations }
  public
    Id_Caja         : Integer;
    id_Cuenta_caja  : Integer;
    IdCpbte         : Integer;
    TipoCpbte       : STRING;
    ClaseCpbte      : STRING;
    NroCpbte        : STRING;
    Origen          : STRING;
    Documento       : String;
    Cuit            : String;
    FechaCaja       : TDateTime;
    FechaOperacion  : TDateTime;
    TipoOperacion   : STRING;
    SumaValores     : Real;
    SumaEfectivo,SumaChe3,SumaTC,SumaTx,SumaCheAnulado,SumaAjustes:Real;
    MascaraImportes :String;
    CajaOld:String;
    ArchivoIni      :TIniFile;
    PROCEDURE CalcularValores;
    FUNCTION AsignaFormaPago(Dato: Integer): Boolean;
    FUNCTION AsignaBanco(Dato: Integer): Boolean;
    FUNCTION AsignaTC(Dato: Integer): Boolean;
    FUNCTION AsignaCtaBco(Dato: Integer): Boolean;

    procedure InicicalizaMascarasNumericas;
    procedure ActulizaCajaMovimientos;

    { Public declarations }
  END;



IMPLEMENTATION

USES UCarteraCheques, UBuscadorChePropios, UDMain_FD,DMBuscadoresForm,
     UBuscadorCheCompartido, UMovSalidaChe3, UControlAperturaCaja, ULstChequesBCRA,
     UClientModuleBCRA, UCaja, UCargaCheRc;
{$R *.DFM}


PROCEDURE TFrameMovValoresIngreso.ActulizaCajaMovimientos;
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
          END
        else
          if CDSCajaMovID_TPAGO.Value=3 Then
            BEGIN // cheques de tercero
              CDSChe3.edit;
              CDSChe3ID_CAJA.Value       :=Id_Caja;
              CDSChe3ID_CUENTA_CAJA.Value:=id_cuenta_caja;
            END
          else
            if CDSCajaMovID_TPAGO.Value=4 Then
              BEGIN // Trans.de Banco
                CDSMovTCredito.edit;
                CDSMovTCreditoID_CAJA.Value       :=Id_Caja;
                CDSMovTCreditoID_CUENTA_CAJA.Value:=id_cuenta_caja;
              END
            else
              if CDSCajaMovID_TPAGO.Value=5 Then
                BEGIN // debitos de Banco
                  CDSTransBco.edit;
                  CDSTransBcoID_CAJA.Value        := Id_Caja;
                  CDSTransBcoID_CUENTA_CAJA.Value := id_cuenta_caja;
                END
              else
                if CDSCajaMovID_TPAGO.Value=2 Then
                  BEGIN // Cheques Propios
                    CDSAnulacionChe.edit;
                    CDSAnulacionCheID_CAJA.Value       :=Id_Caja;
                    CDSAnulacionCheID_CAJA.Value:=id_cuenta_caja;
                  END;

      CDSCajaMov.Next;
    end;

end;

PROCEDURE TFrameMovValoresIngreso.CalcularValores;
VAR
  CDSClon: TClientDataSet;
BEGIN
  CDSClon :=TClientDataSet.Create(self);
  CDSClon.CloneCursor(CDSCajaMov,True);
  CDSClon.First;
  SumaValores   := 0;
  SumaEfectivo  := 0;
  SumaChe3      := 0;
  SumaTC        := 0;
  SumaTx        := 0;
  SumaCheAnulado:= 0;
  SumaAjustes   := 0;

  WHILE NOT (CDSClon.Eof) DO
    BEGIN
      IF TipoOperacion = 'E' THEN
        SumaValores := SumaValores + CDSClon.FieldByName('HABER').AsFloat
      ELSE IF TipoOperacion = 'I' THEN
        SumaValores := SumaValores + CDSClon.FieldByName('DEBE').AsFloat;

      if CDSClon.FieldByName('ID_TPAGO').AsInteger=1 Then
        SumaEfectivo:=SumaEfectivo+CDSClon.FieldByName('DEBE').AsFloat;
      if CDSClon.FieldByName('ID_TPAGO').AsInteger=3 Then
        SumaChe3:=SumaChe3+CDSClon.FieldByName('DEBE').AsFloat;
      if CDSClon.FieldByName('ID_TPAGO').AsInteger=4 Then
        SumaTC:=SumaTC+CDSClon.FieldByName('DEBE').AsFloat;
      if CDSClon.FieldByName('ID_TPAGO').AsInteger=5 Then
        SumaTx:=SumaTx+CDSClon.FieldByName('DEBE').AsFloat;
      if CDSClon.FieldByName('ID_TPAGO').AsInteger=2 Then
        sumacheAnulado:=SumaCheAnulado+CDSClon.FieldByName('DEBE').AsFloat;
      if CDSClon.FieldByName('ID_TPAGO').AsInteger=8 Then
        sumaAjustes:=SumaAjustes+CDSClon.FieldByName('DEBE').AsFloat;

      CDSClon.Next;
    END;
  lbTotalValores.Caption := FormatFloat(MascaraImportes, SumaValores);
  FreeAndNil(CDSClon);
  //lbResto.Caption:=
END;

FUNCTION TFrameMovValoresIngreso.AsignaFormaPago(Dato: Integer): Boolean;
BEGIN
  QFormaPago.Close;
  QFormaPago.ParamByName('id').Value := Dato;
  QFormaPago.Open;
  IF NOT (QFormaPago.Eof) THEN
    BEGIN
      Result := True;
      CDSCajaMovMUESTRAFORMAPAGO.Value := QFormaPagoDESCRIPCION.Value;
      CDSCajaMovCOTIZACION.Value       := QFormaPagoCOTIZACION.Value;
      CDSCajaMovID_TPAGO.Value         := QFormaPagoID_TPAGO.Value;
      CDSCajaMovMONEDA.Value           := QFormaPagoMONEDA.Value;
      CDSCajaMovID_FPAGOOLD.Value      := Dato;
    END
  ELSE
    begin
      Result := False;
      CDSCajaMovMUESTRAFORMAPAGO.Value := '';
      CDSCajaMovCOTIZACION.Clear;
      CDSCajaMovID_TPAGO.Clear;
      CDSCajaMovMONEDA.Clear;
      CDSCajaMovID_FPAGOOLD.Clear;
    end;
  QFormaPago.Close;
END;


FUNCTION TFrameMovValoresIngreso.AsignaBanco(Dato: Integer): Boolean;
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
    BEGIN
      Result := False;
      CDSChe3MUESTRABANCO.Value := '';
    END;
  QBanco.Close;
END;

FUNCTION TFrameMovValoresIngreso.AsignaTC(Dato: Integer): Boolean;
BEGIN
  QTc.Close;
  QTc.Params.ParamByName('id').Value := dato;
  QTc.Open;
  IF (QTcID_TC.AsString<>'') THEN
    BEGIN
      Result := True;
      CDSMovTCreditoMUESTRATC.Value       := QTcDESCRIPCION.Value;
      CDSMovTCreditoID_CUENTA_BANCO.Value := QTcID_CUENTA_BANCO.Value;
      QCoeficienteTC.Close;
      QCoeficienteTC.ParamByName('id_tc').Value :=Dato;
      QCoeficienteTC.ParamByName('cuotas').Value:=CDSMovTCreditoCAN_CUOTAS.Value;
      QCoeficienteTC.Open;
      if QCoeficienteTC.Fields[0].AsString<>'' Then
        CDSMovTCreditoCOEFICIENTE.AsFloat := QCoeficienteTC.Fields[0].AsFloat
      else
        CDSMovTCreditoCOEFICIENTE.AsFloat :=1;
      QCoeficienteTC.Close;
      if (CDSCajaMovTIPO_COMPROB.Value<>'FO') and (CDSCajaMovTIPO_COMPROB.Value<>'TK') then
        CDSMovTCreditoCOEFICIENTE.AsFloat:=1;
      //CDSMovTCredito
    END
  ELSE
    BEGIN
      Result := False;
      CDSMovTCreditoMUESTRATC.Value      := '';
      CDSMovTCreditoID_CUENTA_BANCO.Clear;
      CDSMovTCreditoCOEFICIENTE.Value:=0;
    END;
  QTc.Close;
END;

FUNCTION TFrameMovValoresIngreso.AsignaCtaBco(Dato: Integer): Boolean;
BEGIN
  QCtaCajaBco.Close;
  QCtaCajaBco.ParamByName('id').Value := dato;
  QCtaCajaBco.Open;
  IF NOT(QCtaCajaBco.IsEmpty) and (QCtaCajaBcoID_TIPO_CTA.Value=2) THEN
    BEGIN
      Result := True;
      CDSTransBcoMUESTRACTACAJA.Value := QCtaCajaBcoNOMBRE.Value;
    END
  ELSE
    begin
      Result := False;
      CDSTransBcoMUESTRACTACAJA.Value := '';
    end;
  QCtaCajaBco.Close;
END;

function DetectarDelimitador(const Linea: string): Char;
begin
  if Linea.Contains(#9) then
    Result := #9  // Tabulador
  else if Linea.Contains(';') then
    Result := ';' // Punto y coma
  else
    Result := ','; // Coma como predeterminado
end;


procedure TFrameMovValoresIngreso.ImportarChequesExecute(Sender: TObject);
var ListaChe:TStringList;
 Campos: TArray<string>;
 I:Integer;
 Delimitador: Char;
begin
  ListaChe:=TStringList.Create;
  if Not(Assigned(FormCargaChe3)) then
    FormCargaChe3:=TFormCargaChe3.create(self);
  FormCargaChe3.Lista:=ListaChe;
  FormCargaChe3.showModal;
  if formcargaChe3.ModalResult=mrOk then
    begin
      I:=0;
      if ListaChe.Count>0 Then
        begin
          Delimitador:=DetectarDelimitador(ListaChe[1]);
          for i :=0 to ListaChe.Count-1 do
          begin
            Campos:=ListaChe[i].Split([Delimitador]);
            CDSCajaMov.Append;
            CDSCajaMovID_FPAGOSetText(CDSCajaMovID_FPAGO,'2');
            CDSChe3ID_CAJA.Value             := CDSCajaMovID_CAJA.Value;
            CDSChe3ID_MOV_CAJA.Value         := CDSCajaMovID_MOV_CAJA.Value;
            CDSChe3ID_FPAGO.Value            := CDSCajaMovID_FPAGO.Value;
            CDSChe3NUMERO.Value              := StrToInt(Trim(campos[2]));
            CDSChe3ID_BANCOSetText(CDSChe3ID_BANCO,Campos[1]);
            CDSChe3FECHA_EMISION.AsDateTime  := strtodatetime(Trim(campos[0]));
            CDSChe3FECHA_COBRO.AsDateTime    := strtodatetime(Trim(campos[0]));
            CDSChe3UNIDADESSetText(CDSChe3UNIDADES,Trim(Campos[3]));
            CDSChe3.Post;
          end;
        end;
    end;
  FreeAndNil(FormCargaChe3);
  FreeAndNil(ListaChe);
end;

procedure TFrameMovValoresIngreso.InicicalizaMascarasNumericas;
begin
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VALORES';
  DMMain_FD.QOpciones.Open;
  MascaraImportes:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSCajaMovHABER).EditFormat                  := MascaraImportes;
  TFloatField(CDSCajaMovDEBE).EditFormat                   := MascaraImportes;
  TFloatField(CDSCajaMovUNIDADES).EditFormat               := MascaraImportes;
  TFloatField(CDSCajaMovHABER).DisplayFormat               := MascaraImportes;
  TFloatField(CDSCajaMovDEBE).DisplayFormat                := MascaraImportes;
  TFloatField(CDSCajaMovUNIDADES).DisplayFormat            := MascaraImportes;

  //Efectivo
  TFloatField(CDSMovEfectivoCOTIZACION).EditFormat         := MascaraImportes;
  TFloatField(CDSMovEfectivoUNIDADES).EditFormat           := MascaraImportes;
  TFloatField(CDSMovEfectivoIMPORTE).EditFormat            := MascaraImportes;
  //Cheques de Tercero
  TFloatField(CDSChe3UNIDADES).EditFormat                  := MascaraImportes;
  TFloatField(CDSChe3COTIZACION).EditFormat                := MascaraImportes;
  TFloatField(CDSChe3IMPORTE).EditFormat                   := MascaraImportes;
  //Tarjetas de Credito
  TFloatField(CDSMovTCreditoUNIDADES).EditFormat           := MascaraImportes;
  TFloatField(CDSMovTCreditoCOTIZACION).EditFormat         := MascaraImportes;
  TFloatField(CDSMovTCreditoIMPORTE).EditFormat            := MascaraImportes;
  TFloatField(CDSMovTCreditoUNIDADES_NETO).EditFormat      := MascaraImportes;
  TFloatField(CDSMovTCreditoIMPORTE_NETO).EditFormat       := MascaraImportes;
  TFloatField(CDSMovTCreditoIMPORTE_RECARGO).EditFormat    := MascaraImportes;
  TFloatField(CDSMovTCreditoVALORCUOTA).EditFormat         := MascaraImportes;

  //Transferencias Bancarias
  TFloatField(CDSTransBcoUNIDADES).EditFormat              := MascaraImportes;
  TFloatField(CDSTransBcoCOTIZACION).EditFormat            := MascaraImportes;
  TFloatField(CDSTransBcoIMPORTE).EditFormat               := MascaraImportes;
  //Movimientos de Caja
  TFloatField(CDSCajaMovHABER).DisplayFormat               := MascaraImportes;
  TFloatField(CDSCajaMovDEBE).DisplayFormat                := MascaraImportes;
  TFloatField(CDSCajaMovUNIDADES).DisplayFormat            := MascaraImportes;
  //Efectivo
  TFloatField(CDSMovEfectivoCOTIZACION).DisplayFormat      := MascaraImportes;
  TFloatField(CDSMovEfectivoUNIDADES).DisplayFormat        := MascaraImportes;
  TFloatField(CDSMovEfectivoIMPORTE).DisplayFormat         := MascaraImportes;
  //Cheques de tercero
  TFloatField(CDSChe3UNIDADES).DisplayFormat               := MascaraImportes;
  TFloatField(CDSChe3COTIZACION).DisplayFormat             := MascaraImportes;
  TFloatField(CDSChe3IMPORTE).DisplayFormat                := MascaraImportes;
  //Tarjetas de Credito
  TFloatField(CDSMovTCreditoUNIDADES).DisplayFormat        := MascaraImportes;
  TFloatField(CDSMovTCreditoCOTIZACION).DisplayFormat      := MascaraImportes;
  TFloatField(CDSMovTCreditoIMPORTE).DisplayFormat         := MascaraImportes;
  TFloatField(CDSMovTCreditoUNIDADES_NETO).DisplayFormat   := MascaraImportes;
  TFloatField(CDSMovTCreditoIMPORTE_NETO).DisplayFormat    := MascaraImportes;
  TFloatField(CDSMovTCreditoIMPORTE_RECARGO).DisplayFormat := MascaraImportes;
  TFloatField(CDSMovTCreditoVALORCUOTA).DisplayFormat      := MascaraImportes;

  //Transferencias Bancarias
  TFloatField(CDSTransBcoUNIDADES).DisplayFormat           := MascaraImportes;
  TFloatField(CDSTransBcoCOTIZACION).DisplayFormat         := MascaraImportes;
  TFloatField(CDSTransBcoIMPORTE).DisplayFormat            := MascaraImportes;

  DMMain_FD.QOpciones.Close;
end;


PROCEDURE TFrameMovValoresIngreso.dbgMovimientosColEnter(Sender: TObject);
BEGIN
  IF dbgMovimientos.SelectedIndex = 1 THEN
    dbgMovimientos.SelectedIndex := 0
  ELSE IF dbgMovimientos.SelectedIndex = 2 THEN
    dbgMovimientos.SelectedIndex := 0
      ELSE IF dbgMovimientos.SelectedIndex = 3 THEN
    dbgMovimientos.SelectedIndex := 0;

END;

procedure TFrameMovValoresIngreso.dbgMovimientosDblClick(Sender: TObject);
begin
  if CDSCajaMovID_TPAGO.Value=3 then
    begin
      if FormMovSalidaChe3<>nil then
        FreeAndNil(FormMovSalidaChe3);
      if Not(Assigned(FormMovSalidaChe3)) then
        FormMovSalidaChe3:=TFormMovSalidaChe3.Create(self);
      FormMovSalidaChe3.IdChe3:=CDSChe3ID_CHEQUE_TER.Value;
     FormMovSalidaChe3.ShowModal;   

    end;
end;

PROCEDURE TFrameMovValoresIngreso.dbgMovimientosEditButtonClick(Sender:
  TObject);
BEGIN
  BuscarFormaPago.Execute;
END;

PROCEDURE TFrameMovValoresIngreso.dbgMovimientosKeyPress(Sender: TObject;
  VAR Key: Char);
BEGIN
  IF (Key = #10) AND (dbgMovimientos.SelectedIndex = 0) THEN
    BEGIN
      Key := #0;
      BuscarFormaPago.Execute;
    END;
END;

procedure TFrameMovValoresIngreso.FrameExit(Sender: TObject);
begin
 { if wwCDSCajaMov.State in [dsInsert,dsEdit] then
     begin
       if wwCDSMovEfectivo.State in [dsEdit,dsInsert] then
         wwCDSMovEfectivo.Post;
       if wwCDSChe3.State in [dsEdit,dsInsert] then
         wwCDSChe3.Post;
       if wwCDSMovTCredito.State in [dsEdit,dsInsert] then
         wwCDSMovTCredito.Post;
       if wwCDSTransBco.State in [dsEdit,dsInsert] then
         wwCDSTransBco.Post;
       if wwCDSDebitos.State in [dsEdit,dsInsert] then
         wwCDSDebitos.Post;
       if wwCDSAnulacionChe.State in [dsEdit,dsInsert] then
         wwCDSAnulacionChe.Post;

     end;
     wwCDSCajaMov.Post;
  }
       //ShowMessage('Salio del PageControl');
end;

PROCEDURE TFrameMovValoresIngreso.PostChe3Execute(Sender: TObject);
BEGIN
  CDSChe3UNIDADESSetText(CDSChe3UNIDADES,dbeunidadesChe3.Text);
  IF TipoOperacion = 'I' THEN
    BEGIN
      IF (Trunc(CDSChe3UNIDADES.AsFloat * 1000) <> 0) and
         (CDSChe3ID_BANCO.AsString<>'') and
         (CDSChe3FECHA_EMISION.AsString<>'') and
         (CDSChe3FECHA_COBRO.AsString<>'') and
         (CDSChe3NUMERO.AsString<>'') THEN
        begin
          CDSChe3.Post;
          if dbgMovimientos.Enabled Then
            dbgMovimientos.SetFocus;
        end
      ELSE
        BEGIN
          ShowMessage('No se ingreso importe o el Banco o La fecha de Emision/Cobro o Numero');
          dbeunidadesChe3.SetFocus;
        END;
    END;
END;

procedure TFrameMovValoresIngreso.CancelAjusteExecute(Sender: TObject);
begin
  CDSAjustes.Cancel;
  CDSCajaMov.Cancel;
end;

PROCEDURE TFrameMovValoresIngreso.CancelChe3Execute(Sender: TObject);
BEGIN
  CDSChe3.Cancel;
  CDSCajaMov.Cancel;
END;

PROCEDURE TFrameMovValoresIngreso.PostEfectivoExecute(Sender: TObject);
BEGIN
  IF (Trunc(CDSMovEfectivoUNIDADES.AsFloat * 1000) <> 0) THEN
    begin
      CDSMovEfectivo.Post;
      if ((Owner as TForm).Visible=True) and (dbgMovimientos.Visible) and
       (dbgMovimientos.Enabled) and
       (pcValores.ActivePageIndex=0)  Then
         dbgMovimientos.SetFocus;
    end
  ELSE
    BEGIN
      ShowMessage('No se ingreso importe');
      dbeUnidades.SetFocus;
    END;
END;

PROCEDURE TFrameMovValoresIngreso.CancelEfectivoExecute(Sender: TObject);
BEGIN
  CDSMovEfectivo.Cancel;
  CDSCajaMov.Cancel;
END;

PROCEDURE TFrameMovValoresIngreso.BuscarFormaPagoExecute(Sender: TObject);
BEGIN
  CDSBuscaFormaPago.Close;
  CDSBuscaFormaPago.Open;
  comBuscadorFormaPago.Execute;
  if comBuscadorFormaPago.rOk Then
      BEGIN
        IF CDSCajaMov.State = dsBrowse THEN
          CDSCajaMov.Edit;
        CDSCajaMovID_FPAGOSetText(CDSCajaMovID_FPAGO, IntToStr(comBuscadorFormaPago.Id));
       END;
  CDSBuscaFormaPago.Close;
END;


PROCEDURE TFrameMovValoresIngreso.DSChe3StateChange(Sender: TObject);
BEGIN
  PostChe3.Enabled       := DSChe3.State IN [dsInsert, dsEdit];
  CancelChe3.Enabled     := DSChe3.State IN [dsInsert, dsEdit];
  dbgMovimientos.Enabled := DSChe3.State IN [dsBrowse];
  if (CDSCajaMovID_TPAGO.Value<>3) and (DSChe3.State in [dsEdit,dsInsert])
   Then
     begin
        DSChe3.DataSet.Cancel;
        sysutils.Abort;
     end;

END;

PROCEDURE TFrameMovValoresIngreso.DSMovEfectivoStateChange(Sender: TObject);
BEGIN
  PostEfectivo.Enabled   := DSMovEfectivo.State IN [dsInsert, dsEdit];
  CancelEfectivo.Enabled := DSMovEfectivo.State IN [dsInsert, dsEdit];
  dbgMovimientos.Enabled := DSMovEfectivo.State in [dsBrowse];
  if (CDSCajaMovID_TPAGO.Value<>1) and (DSMovEfectivo.State in [dsEdit,dsInsert])
   Then
     begin
        DSMovEfectivo.DataSet.Cancel;
        sysutils.Abort;
     end;
 
END;


PROCEDURE TFrameMovValoresIngreso.CDSChe3AfterPost(DataSet: TDataSet);
BEGIN
  IF TipoOperacion = 'E' THEN
    BEGIN
      FormCarteraCheques.CDSCarteraChe.Edit;
      FormCarteraCheques.CDSCarteraCheFECHA_SALIDA.AsDateTime   := CDSChe3FECHA_SALIDA.AsDateTime;
      FormCarteraCheques.CDSCarteraCheDESTINO.Value             := CDSChe3DESTINO.Value;
      FormCarteraCheques.CDSCarteraCheDISPONIBLE.Value          := 'N';
      FormCarteraCheques.CDSCarteraCheID_MOV_CAJA_EGRESOS.Value := CDSCajaMovID_MOV_CAJA.Value;
      FormCarteraCheques.CDSCarteraChe.Post;
      IF CDSCajaMov.State in [dsBrowse] THEN
        CDSCajaMov.Edit;
      CDSCajaMovHABER.AsFloat    := CDSChe3IMPORTE.AsFloat;
      CDSCajaMovUNIDADES.AsFloat := CDSChe3UNIDADES.AsFloat;
      CDSCajaMov.Post;
    END
  ELSE IF TipoOperacion = 'I' THEN
    BEGIN
      IF CDSCajaMov.State = dsBrowse THEN
        CDSCajaMov.Edit;
      CDSCajaMovDEBE.AsFloat     := CDSChe3IMPORTE.AsFloat;
      CDSCajaMovUNIDADES.AsFloat := CDSChe3UNIDADES.AsFloat;
      CDSCajaMov.Post;
    END;
END;

procedure TFrameMovValoresIngreso.CDSChe3AfterRefresh(DataSet: TDataSet);
begin
  dbcE_Check.Visible:=dbchE_check.Checked;
end;

PROCEDURE TFrameMovValoresIngreso.CDSChe3NewRecord(DataSet: TDataSet);
BEGIN
  IF TipoOperacion = 'I' THEN
    BEGIN
      CDSChe3ID_CHEQUE_TER.Value      := IBGId_Che3.IncrementFD(1);
      CDSChe3ID_CAJA.Value            := CDSCajaMovID_CAJA.Value;
      CDSChe3ID_MOV_CAJA.Value        := CDSCajaMovID_MOV_CAJA.Value;
      CDSChe3FECHA_ENTRADA.AsDateTime := FechaOperacion;
      CDSChe3ORIGEN.Value             := Origen;
      CDSChe3FIRMANTE.Value           := Origen;
      if (Cuit='') or (Length(trim(cuit))<13) Then
        Cuit:='00-00000000-0';
      CDSChe3CUITSetText(CDSChe3CUIT,Cuit);     // va a control de Cuit a la AFIP
      CDSChe3COTIZACION.AsFloat       := CDSCajaMovCOTIZACION.AsFloat;
      CDSChe3ID_FPAGO.Value           := CDSCajaMovID_FPAGO.Value;
      CDSChe3DISPONIBLE.Value         := 'S';
      CDSChe3ID_CUENTA_CAJA.Value     := CDSCajaMovID_CUENTA_CAJA.Value;
      CDSChe3MONEDA.Value             := CDSCajaMovMONEDA.Value;
      CDSChe3SUCURSAL_BCO.Value       := '000000';
      CDSChe3NRO_CTA.Value            := '00000000000000';
      CDSChe3ID_CUENTA_CAJA.Value     := -1;
      CDSChe3ID_CTA_CAJA_BCO.Value    := -1;

      CDSChe3E_CHECK.Value            := 'N';
      CDSChe3FECHA_EMISION.AsDateTime := FechaOperacion;
    END;
END;

procedure TFrameMovValoresIngreso.CDSChe3UNIDADESSetText(Sender: TField;
  const Text: string);
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
      CDSChe3IMPORTE.AsFloat := Moneda3D(' ',MascaraImportes,Sender.AsFloat * CDSChe3COTIZACION.AsFloat);
      CDSChe3SALDO_IMPORTE.AsFloat := CDSChe3IMPORTE.AsFloat;
      CDSChe3SALDO_UNIDADES.AsFloat:= Sender.AsFloat;
    end;
end;

PROCEDURE TFrameMovValoresIngreso.CDSMovEfectivoAfterPost(DataSet: TDataSet);
BEGIN
  IF CDSCajaMov.State = dsBrowse THEN
    CDSCajaMov.Edit;
  CDSCajaMovUNIDADES.AsFloat := CDSMovEfectivoUNIDADES.AsFloat;
  IF TipoOperacion = 'E' THEN
    CDSCajaMovHABER.AsFloat := CDSMovEfectivoIMPORTE.AsFloat
  ELSE IF TipoOperacion = 'I' THEN
    CDSCajaMovDEBE.AsFloat := CDSMovEfectivoIMPORTE.AsFloat;
  CDSCajaMov.Post;

END;

PROCEDURE TFrameMovValoresIngreso.CDSMovEfectivoNewRecord(DataSet: TDataSet);
BEGIN
  CDSMovEfectivoID_EFECTIVO.Value    := IBGId_Efectivo.IncrementFD(1);
  CDSMovEfectivoID_MOV_CAJA.Value    := CDSCajaMovID_MOV_CAJA.Value;
  CDSMovEfectivoID_CAJA.Value        := CDSCajaMovID_CAJA.Value;
  CDSMovEfectivoCOTIZACION.Value     := CDSCajaMovCOTIZACION.Value;
  CDSMovEfectivoID_FPAGO.Value       := CDSCajaMovID_FPAGO.Value;
  CDSMovEfectivoID_CUENTA_CAJA.Value := CDSCajaMovID_CUENTA_CAJA.Value;
  CDSMovEfectivoMONEDA.Value         := CDSCajaMovMONEDA.Value;
END;



procedure TFrameMovValoresIngreso.CDSMovEfectivoUNIDADESSetText(Sender: TField;
  const Text: string);
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
end;

PROCEDURE TFrameMovValoresIngreso.CDSCajaMovAfterDelete(DataSet: TDataSet);
BEGIN
  CalcularValores;
END;

procedure TFrameMovValoresIngreso.CDSCajaMovAfterOpen(DataSet: TDataSet);
begin
  //es una prueba
  if CDSCajaMovMUESTRAIDCTACAJA.AsString<>'' Then
    CajaOld:=CDSCajaMovMUESTRAIDCTACAJA.AsString
  else
    CajaOld:='';
end;

PROCEDURE TFrameMovValoresIngreso.CDSCajaMovAfterPost(DataSet: TDataSet);
BEGIN
  CalcularValores;
  CDSCajaMov.Append;
END;

PROCEDURE TFrameMovValoresIngreso.CDSCajaMovAfterScroll(DataSet: TDataSet);
BEGIN
  IF TipoOperacion = 'I' THEN
    BEGIN
      IF CDSCajaMovID_TPAGO.Value = 1 THEN
        pcValores.ActivePage := tsEfectivo
      ELSE IF CDSCajaMovID_TPAGO.Value = 3 THEN
        pcValores.ActivePage := tsChe3
      ELSE IF CDSCajaMovID_TPAGO.Value = 4 THEN
        pcValores.ActivePage := tsTCredito
      ELSE IF CDSCajaMovID_TPAGO.Value = 5 THEN
        pcValores.ActivePage := tsTransf
      ELSE IF CDSCajaMovID_TPAGO.Value = 2 THEN
        pcValores.ActivePage := tsCheques
      ELSE IF CDSCajaMovID_TPAGO.Value = 7 THEN
        pcValores.ActivePage := tsValoresCompartidos
      ELSE IF CDSCajaMovID_TPAGO.Value = 8 THEN
        pcValores.ActivePage := tsCtaCte;

      //CDSChe3.Close;
//      CDSChe3.Params.ParamByName('id').Value         := CDSCajaMovID_MOV_CAJA.Value;
//      CDSChe3.Open;
//
//      CDSDebitos.Close;
//      CDSDebitos.Params.ParamByName('id').Value      := CDSCajaMovID_MOV_CAJA.Value;
//      CDSDebitos.Open;
//
//      CDSMovEfectivo.Close;
//      CDSMovEfectivo.Params.ParamByName('id').Value  := CDSCajaMovID_MOV_CAJA.Value;
//      CDSMovEfectivo.Open;
//
//      CDSMovTCredito.Close;
//      CDSMovTCredito.Params.ParamByName('id').Value  := CDSCajaMovID_MOV_CAJA.Value;
//      CDSMovTCredito.Open;
//
//      CDSTransBco.Close;
//      CDSTransBco.Params.ParamByName('id').Value     := CDSCajaMovID_MOV_CAJA.Value;
//      CDSTransBco.Open;
//
//      CDSAjustes.Close;
//      CDSAjustes.Params.ParamByName('id').Value      := CDSCajaMovID_MOV_CAJA.Value;
//      CDSAjustes.Open;
//
//      CDSAnulacionChe.Close;
//      CDSAnulacionChe.Params.ParamByName('id').Value := CDSCajaMovID_MOV_CAJA.Value;
//      CDSAnulacionChe.Open;
//
//      CDSMovValoresComp.Close;
//      CDSMovValoresComp.Params.ParamByName('id').Value := CDSCajaMovID_MOV_CAJA.Value;
//      CDSMovValoresComp.Open;

    END;
  lbAvisoChe3.Visible:=pcValores.ActivePage=tsChe3;
END;

PROCEDURE TFrameMovValoresIngreso.CDSCajaMovBeforeDelete(DataSet: TDataSet);
BEGIN
  IF TipoOperacion = 'I' THEN
    BEGIN
      IF (CDSCajaMovID_TPAGO.Value = 1) and (Not(CDSMovEfectivo.IsEmpty)) THEN
        CDSMovEfectivo.Delete
      ELSE
        IF (CDSCajaMovID_TPAGO.Value = 3) and (Not(CDSChe3.IsEmpty)) THEN
          CDSChe3.delete
        ELSE
          IF (CDSCajaMovID_TPAGO.Value = 4) and (Not(CDSMovTCredito.IsEmpty)) THEN
            CDSMovTCredito.Delete
          ELSE
            IF (CDSCajaMovID_TPAGO.Value = 5) and (Not(CDSTransBco.IsEmpty)) THEN
              CDSTransBco.Delete
            ELSE
              IF (CDSCajaMovID_TPAGO.Value = 7) and (Not(CDSMovValoresComp.IsEmpty)) THEN
                CDSMovValoresComp.Delete;
    END;
END;

PROCEDURE TFrameMovValoresIngreso.CDSCajaMovBeforeInsert(DataSet: TDataSet);
BEGIN
  IF (Id_Caja = 0) or ( (Trim (ceCaja.Text)) = '' )  THEN
    BEGIN
      ShowMessage('Falta asignar la caja');
      SysUtils.Abort;
    END;
END;

PROCEDURE TFrameMovValoresIngreso.CDSCajaMovNewRecord(DataSet: TDataSet);
BEGIN
  CDSCajaMovID_CAJA.Value              := Id_Caja;
  CDSCajaMovID_CUENTA_CAJA.Value       := id_Cuenta_caja;
  CDSCajaMovID_MOV_CAJA.Value          := IBGId_Caja_Mov.IncrementFD(1);
  CDSCajaMovTIPO_COMPROB.Value         := TipoCpbte;
  CDSCajaMovCLASE_COMPROB.Value        := ClaseCpbte;
  CDSCajaMovNRO_COMPROBANTE.Value      := NroCpbte;
  CDSCajaMovID_COMPROBANTE.Value       := IdCpbte;
  CDSCajaMovFECHA_OPERACION.AsDateTime := FechaOperacion;
  CDSCajaMovTIPO_OPERACION.Value       := TipoOperacion;
  CDSCajaMovDEBE.AsFloat               := 0;
  CDSCajaMovHABER.AsFloat              := 0;
  CDSCajaMovUNIDADES.AsFloat           := 0;
  CDSCajaMovFECHA_CAJA.AsDateTime      := FechaCaja;
END;

PROCEDURE TFrameMovValoresIngreso.ceCajaButtonClick(Sender: TObject);
BEGIN
  CDSBuscaCajaCab.Close;

  if ((DMMain_FD.FiltraCajaUser) and (DMMain_FD.ModificaCaja)) then
    begin
      CDSBuscaCajaCab.CommandText:='select ca.*, cta.Nombre as MuestraCaja from Caja_Cab ca '+
                                   'join cuenta_caja cta on cta.id_cuenta=ca.id_cuenta_caja '+
                                   'where  (ca.id_cuenta_caja in (select u.caja from cajausuario u where u.usuario = :usuario)) and (ca.Estado = 0)';
      CDSBuscaCajaCab.Params.ParamByName('usuario').Value:=DMMain_FD.UsuarioActivo;
    end;

  CDSBuscaCajaCab.Open;
  comBuscadorCaja.Execute;
  IF comBuscadorCaja.rOk THEN
    BEGIN
      QCajaCab.Close;
      QCajaCab.ParamByName('Id').Value := IntToStr(comBuscadorCaja.Id);
      QCajaCab.Open;
      IF NOT (QCajaCab.IsEmpty) THEN
        BEGIN
          ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
          edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
          Id_Caja            := QCajaCabID_CAJA.Value;
          Id_Cuenta_Caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
          FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
          if dbgMovimientos.Enabled=True Then
            dbgMovimientos.SetFocus;
        END
      ELSE
        BEGIN
          ShowMessage('Caja no Válida.....');
          Id_Caja            := -1;
          Id_Cuenta_Caja     := -1;
          edMuestraCaja.Text := '';
          ceCaja.Text:='';
          ceCaja.SetFocus;
          ceCaja.SelectAll;
        END;
    END;
  QCajaCab.Close;
  CDSBuscaCajaCab.Close;
END;

procedure TFrameMovValoresIngreso.ceCajaChange(Sender: TObject);
begin
  if (CajaOld<>'')  then
    begin
      if (CajaOld<>Trim(ceCaja.Text)) Then //pasa ao Onchange
        ActulizaCajaMovimientos;
    end;
end;

PROCEDURE TFrameMovValoresIngreso.CancelTCreditoExecute(Sender: TObject);
BEGIN
  CDSMovTCredito.Cancel;
  CDSCajaMov.Cancel;
END;

PROCEDURE TFrameMovValoresIngreso.PostTCreditoExecute(Sender: TObject);
BEGIN
  IF TipoOperacion = 'I' THEN
    IF (Trunc(CDSMovTCreditoUNIDADES.AsFloat * 1000) <> 0) and (CDSMovTCreditoID_TC.AsString<>'') THEN
      begin
        CDSMovTCredito.Post;
        if (dbgMovimientos.Visible) and (dbgMovimientos.Enabled) Then
          dbgMovimientos.SetFocus;
      end
    else
      begin
        ShowMessage('No se ingreso importe o T. de C.');
        DBEUnidadesNeto.SetFocus;
      end;
END;

procedure TFrameMovValoresIngreso.BitBtn10Click(Sender: TObject);
begin
  if dbgMovimientos.Enabled Then
    dbgMovimientos.SetFocus;
end;

procedure TFrameMovValoresIngreso.BitBtn12Click(Sender: TObject);
begin
  if (Trim(ceCliente.Text)='') then
    Raise Exception.create('Falta el cliente')
  else
  if ((CDSAjustesID_COMPROB_AJUSTE.AsString)='') then
    Raise Exception.create('Falta el Comprobante')
  else
    begin
      IF (Trunc(CDSAjustesIMPORTE.AsFloat * 1000) <> 0) THEN
        CDSAjustes.Post
      ELSE
        BEGIN
          ShowMessage('No se ingreso importe');
          dbeImporteCta.SetFocus;
        END;
    end

end;

PROCEDURE TFrameMovValoresIngreso.BuscarBancoExecute(Sender: TObject);
BEGIN
  CDSBuscaBanco.Close;
  CDSBuscaBanco.Open;
  comBuscadorBanco.Execute;
  if comBuscadorBanco.rOk Then
    CDSChe3ID_BANCOSetText(CDSChe3ID_BANCO,IntToStr(comBuscadorBanco.Id));
  CDSBuscaBanco.Close;
END;

PROCEDURE TFrameMovValoresIngreso.BuscarTCreditoExecute(Sender: TObject);
BEGIN
  CDSBuscaTCredito.Close;
  CDSBuscaTCredito.Open;
  comBuscadorTc.Execute;
  if comBuscadorTc.rOk Then
    CDSMovTCreditoID_TCSetText(CDSMovTCreditoID_TC,IntToStr(comBuscadorTc.Id));
  CDSBuscaTCredito.Close;

END;

PROCEDURE TFrameMovValoresIngreso.ceCajaKeyDown(Sender: TObject;
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
          CDSBuscaCajaCab.Close;
          CDSBuscaCajaCab.CommandText:='select ca.*, cta.Nombre as MuestraCaja from Caja_Cab ca '+
                                       'join cuenta_caja cta on cta.id_cuenta=ca.id_cuenta_caja '+
                                       'where  (ca.id_cuenta_caja in (select u.caja from cajausuario u where u.usuario = :usuario)) and (ca.Estado = 0) '+
                                       ' and ca.id_cuenta_caja= :idcta ';
          CDSBuscaCajaCab.Params.ParamByName('usuario').Value:=DMMain_FD.UsuarioActivo;
          CDSBuscaCajaCab.Params.ParamByName('idcta').Value  :=StrToInt(Trim(ceCaja.Text));

          CDSBuscaCajaCab.Open;
          if CDSBuscaCajaCab.IsEmpty then
            QCajaCab.EmptyDataSet;
        end;
      IF NOT (QCajaCab.IsEmpty) THEN
        BEGIN
          ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
          edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
          Id_Caja            := QCajaCabID_CAJA.Value;
          Id_Cuenta_Caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
          FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
          if dbgMovimientos.Enabled=True Then
            dbgMovimientos.SetFocus;
        END
      ELSE
        BEGIN
          ShowMessage('Caja no Válida.....');
          edMuestraCaja.Text := '';
          ceCaja.Text:='';
          if ceCaja.Enabled then
            begin
              ceCaja.SetFocus;
              ceCaja.SelectAll;
            end;
          Id_Caja:=0;
          id_Cuenta_caja:=-1;
        END;
    END;
END;


procedure TFrameMovValoresIngreso.ceCajaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#10 Then
    ceCaja.Button.Click;
end;


procedure TFrameMovValoresIngreso.dbchE_checkClick(Sender: TObject);
begin
  dbcE_Check.Visible:=dbchE_check.Checked;
end;

PROCEDURE TFrameMovValoresIngreso.CDSCajaMovBeforePost(DataSet: TDataSet);
var Valor:Int64;
BEGIN
  CDSCajaMovID_CAJA.Value         := Id_Caja;
  CDSCajaMovID_CUENTA_CAJA.Value  := id_Cuenta_caja;
  Valor:= Trunc((CDSCajaMovDEBE.AsFloat + CDSCajaMovHABER.AsFloat)*100);
  IF VarIsNull(CDSCajaMovID_FPAGO.Value) OR VarIsNull(CDSCajaMovID_TPAGO.Value) OR
    ( Valor = 0) THEN
  begin
    CDSCajaMov.Cancel;
    SysUtils.Abort;
    ShowMessage('Hay un error en el ingreso de los valores o tienen valor cero');
  end;
END;

procedure TFrameMovValoresIngreso.CDSCajaMovID_FPAGOSetText(Sender: TField;
  const Text: string);
begin
  if Text<>'' Then
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      if (CDSCajaMovID_FPAGOOLD.AsString<>'') and  (CDSCajaMovID_FPAGO.Value<>CDSCajaMovID_FPAGOOLD.Value)  Then
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
      ELSE
        IF TipoOperacion = 'I' THEN
          BEGIN
            IF (CDSCajaMovID_TPAGO.Value = 1) and (tsEfectivo.TabVisible=True) THEN
              BEGIN
                CDSMovEfectivo.Append;
                pcValores.ActivePage := tsEfectivo;
                if (dbeUnidades.Visible) and (dbeUnidades.Enabled) then
                  dbeUnidades.SetFocus;
              END
            ELSE IF (CDSCajaMovID_TPAGO.Value = 3) and (tsChe3.TabVisible=True) THEN {che de Tercero}
              BEGIN
                CDSChe3.Append;
                pcValores.ActivePage := tsChe3;
                if (DBEBancoChe3.Visible) and (DBEBancoChe3.enabled) then
                  DBEBancoChe3.SetFocus;
              END
            ELSE IF (CDSCajaMovID_TPAGO.Value = 4) and (tsTCredito.TabVisible=True) THEN {T.de Credito}
              BEGIN
                CDSMovTCredito.Append;
                pcValores.ActivePage := tsTCredito;
                if (cbTCredito.Visible) and (cbTCredito.enabled) then
                  cbTCredito.SetFocus;
              END
            ELSE IF (CDSCajaMovID_TPAGO.Value = 5) and (tsTransf.TabVisible=True) THEN {Transf}
              BEGIN
                CDSTransBco.Append;
                pcValores.ActivePage := tsTransf;
                if (dbeNumero.Visible) and (dbeNumero.Enabled) then
                  dbeNumero.SetFocus;
              END
            ELSE IF (CDSCajaMovID_TPAGO.Value = 7) and (tsValoresCompartidos.TabVisible=True) THEN {Transf}
              BEGIN
                 pcValores.ActivePage := tsValoresCompartidos;
                if Not(Assigned(FormBuscadoCheCompartido)) then
                  FormBuscadoCheCompartido:=TFormBuscadoCheCompartido.Create(Self);
                FormBuscadoCheCompartido.ShowModal;
                if FormBuscadoCheCompartido.Aceptado=True then
                  begin
                    CDSMovValoresComp.Append;
                    if (dbeUnidadesValoresComp.visible) and (dbeUnidadesValoresComp.enabled) then
                      dbeUnidadesValoresComp.SetFocus;
                  end;
              END
            ELSE IF (CDSCajaMovID_TPAGO.Value = 2) and (tsCheques.TabVisible=True) THEN {Anulacion Cheques Propios}
              BEGIN
                if Not(Assigned(FormBuscadorChePropios)) Then
                  FormBuscadorChePropios:=TFormBuscadorChePropios.Create(Application);
                FormBuscadorChePropios.Estado:='N';
                FormBuscadorChePropios.ShowModal;
                if FormBuscadorChePropios.IdCheque<>-1 Then
                  begin
                    QChequePropio.Close;
                    QChequePropio.ParamByName('id').value:=FormBuscadorChePropios.IdCheque;
                    QChequePropio.Open;
                    CDSAnulacionChe.Insert;
                    CDSAnulacionCheID_CHE_ANULADO.Value   := QChequePropioID_CHEQUE_PRO.Value;
                    CDSAnulacionCheID_CAJA.Value          := CDSCajaMovID_CAJA.Value;
                    CDSAnulacionCheID_CAJA_MOV.Value      := CDSCajaMovID_MOV_CAJA.Value;
                    CDSAnulacionCheMUESTRACHEQUERA.Value  := QChequePropioMUESTRACHEQUERA.Value;
                    CDSAnulacionCheMUESTRANUMEROCHE.Value := QChequePropioNUMERO.Value;
                    CDSAnulacionCheMUESTRAORDENDE.Value   := QChequePropioORDEN_DE.Value;
                    CDSAnulacionCheMUESTRACOBRO.Value     := QChequePropioFECHA_COBRO.Value;
                    CDSAnulacionCheIMPORTE.AsFloat        := QChequePropioIMPORTE.AsFloat;
                    CDSAnulacionCheUNIDADES.AsFloat       := QChequePropioUNIDADES.AsFloat;
                    CDSAnulacionCheID_CHEQUERA.Value      := QChequePropioID_CHEQUERA.Value;
                    pcValores.ActivePage := tsCheques;
                    QChequePropio.Close;
                  end;
                //dbeNumero.SetFocus;
              END
            else
              IF (CDSCajaMovID_TPAGO.Value = 8) and (tsCtaCte.TabVisible=True) THEN {Transf}
                BEGIN
                  CDSCompAjuste.Close;

                  CDSCompAjuste.Open;
                  CDSAjustes.Append;
                  pcValores.ActivePage := tsCtaCte;
                  if (ceCliente.Visible) and (ceCliente.Enabled) then
                    ceCliente.SetFocus;
                END

            ELSE
              BEGIN
                ShowMessage('Dato no Válido');
                CDSCajaMovMUESTRAFORMAPAGO.Value := '';
                CDSCajaMovDEBE.Clear;
                CDSCajaMovHABER.Clear;
                Sender.ASString := '';
                CDSCajaMov.Cancel;
              END;
          END;
    end;

end;

PROCEDURE TFrameMovValoresIngreso.CDSMovTCreditoNewRecord(
  DataSet: TDataSet);
BEGIN
  CDSMovTCreditoID_MOV_TC.Value     := IBGId_TCredito.IncrementFD(1);
  CDSMovTCreditoID_MOV_CAJA.Value   := CDSCajaMovID_MOV_CAJA.Value;
  CDSMovTCreditoID_CAJA.Value       := CDSCajaMovID_CAJA.Value;
  CDSMovTCreditoID_CUENTA_CAJA.Value:= CDSCajaMovID_CUENTA_CAJA.Value;
  CDSMovTCreditoID_FPAGO.Value      := CDSCajaMovID_FPAGO.Value;
  CDSMovTCreditoFECHA.AsDateTime    := FechaOperacion;
  CDSMovTCreditoTITULAR.Value       := Origen;
  CDSMovTCreditoCAN_CUOTAS.Value    := 1;
  CDSMovTCreditoCOTIZACION.AsFloat  := CDSCajaMovCOTIZACION.AsFloat;
  CDSMovTCreditoMONEDA.Value        := CDSCajaMovMONEDA.Value;
  CDSMovTCreditoLOTESetText(CDSMovTCreditoLOTE,'0');
  CDSMovTCreditoTERMINALSetText(CDSMovTCreditoTERMINAL,'0');
  CDSMovTCreditoACREDITADA.Value      :='N';
  CDSMovTCreditoSALDO_IMPORTE.AsFloat :=0;
  CDSMovTCreditoIMPORTE.AsFloat       :=0;
  CDSMovTCreditoN_DOCU.AsString       :=Documento;

END;


procedure TFrameMovValoresIngreso.CDSMovTCreditoTERMINALSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Copy('00000000',1,Sender.Size-Length(Text))+Text;
end;

procedure TFrameMovValoresIngreso.CDSMovTCreditoUNIDADES_NETOSetText(
  Sender: TField; const Text: string);
VAR i:byte;
dato:String;
Valor:Extended;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Dato:=Text;     // para correjir el problema de que cuando toma el numero lo pueda converti a Float
      while Pos(SysUtils.FormatSettings.ThousandSeparator,Dato) <>0 Do
        begin
          i:=Pos(SysUtils.FormatSettings.ThousandSeparator,Dato);
          Delete(Dato,I,1);
        end;
      Valor:=StrToFloat(Dato);
      Valor:=RoundTo(Valor,-2);
      if (CDSCajaMovTIPO_COMPROB.Value<>'FO') and (CDSCajaMovTIPO_COMPROB.Value<>'TK') then
        CDSMovTCreditoCOEFICIENTE.AsFloat:=1;
      Sender.AsString := FloatToStr(Valor);
      CDSMovTCreditoIMPORTE_NETO.AsFloat    := RoundTo((Sender.Asfloat * CDSMovTCreditoCOTIZACION.AsFloat),-2);
      CDSMovTCreditoUNIDADES.AsFloat        := RoundTo((CDSMovTCreditoUNIDADES_NETO.AsFloat * CDSMovTCreditoCOEFICIENTE.AsFloat),-2);
      CDSMovTCreditoIMPORTE.AsFloat         := RoundTo((CDSMovTCreditoUNIDADES.Asfloat * CDSMovTCreditoCOTIZACION.AsFloat),-2);
      CDSMovTCreditoSALDO_IMPORTE.AsFloat   := CDSMovTCreditoIMPORTE.AsFloat;
      CDSMovTCreditoVALORCUOTA.AsFloat      := RoundTo((CDSMovTCreditoIMPORTE.AsFloat/CDSMovTCreditoCAN_CUOTAS.AsFloat),-2);
      CDSMovTCreditoIMPORTE_RECARGO.AsFloat := CDSMovTCreditoIMPORTE.AsFloat-CDSMovTCreditoIMPORTE_NETO.AsFloat;
    end;
end;

procedure TFrameMovValoresIngreso.CDSMovValoresCompAfterPost(DataSet: TDataSet);
begin
 IF TipoOperacion = 'E' THEN
    BEGIN
      IF CDSCajaMov.State in [dsBrowse] THEN
        CDSCajaMov.Edit;
      CDSCajaMovHABER.AsFloat    := CDSChe3IMPORTE.AsFloat;
      CDSCajaMovUNIDADES.AsFloat := CDSChe3UNIDADES.AsFloat;
      CDSCajaMov.Post;
    END
  ELSE IF TipoOperacion = 'I' THEN
    BEGIN
      FormBuscadoCheCompartido.CDSCheComp.Edit;
      FormBuscadoCheCompartido.CDSCheCompSALDO.AsFloat:= FormBuscadoCheCompartido.CDSCheCompSaLDO.AsFloat-CDSMovValoresCompIMPORTE.AsFloat;
      if (Trunc(FormBuscadoCheCompartido.CDSCheCompSALDO.AsFloat*1000)=0) Then
        FormBuscadoCheCompartido.CDSCheCompDISPONIBLE.Value:= 'N';
      IF CDSCajaMov.State = dsBrowse THEN
        CDSCajaMov.Edit;
      CDSCajaMovDEBE.AsFloat     := CDSMovValoresCompIMPORTE.AsFloat;
      CDSCajaMovUNIDADES.AsFloat := CDSMovValoresCompUNIDADES.AsFloat;
      CDSCajaMov.Post;
    END;
end;

procedure TFrameMovValoresIngreso.CDSMovValoresCompBeforeDelete(
  DataSet: TDataSet);
begin
 IF FormBuscadoCheCompartido.CDSCheComp.Locate('id',CDSMovValoresCompID_VALOR.Value, []) THEN
    BEGIN
      FormBuscadoCheCompartido.CDSCheComp.edit;
      FormBuscadoCheCompartido.CDSCheCompDISPONIBLE.Value := 'S';
      FormBuscadoCheCompartido.CDSCheCompSALDO.AsFloat :=FormBuscadoCheCompartido.CDSCheCompSALDO.AsFloat+CDSMovValoresCompUNIDADES.AsFloat;
      FormBuscadoCheCompartido.CDSCheComp.post;
      Showmessage('Cheque restituido...');
    END;

end;

procedure TFrameMovValoresIngreso.CDSMovValoresCompNewRecord(DataSet: TDataSet);
begin
  CDSMovValoresCompID_VALOR.Value                := IBGMovValComp.IncrementFD(1);
  CDSMovValoresCompID_CAJA.Value                 := Id_Caja;
  CDSMovValoresCompID_CUENTA_CAJA.Value          := id_Cuenta_caja;
  CDSMovValoresCompID_CHEQUE.Value               := FormBuscadoCheCompartido.CDSCheCompMUESTRACH_ID_CHE_TECERO.Value;
  CDSMovValoresCompID_FPAGO.Value                := CDSCajaMovID_FPAGO.Value;
  CDSMovValoresCompID_MOV_CAJA.Value             := CDSCajaMovID_MOV_CAJA.Value;
  CDSMovValoresCompCOTIZACION.AsFloat            := FormBuscadoCheCompartido.CDSCheCompMUESTRACH_COTIZACION.AsFloat;
  CDSMovValoresCompMONEDA.AsFloat                := FormBuscadoCheCompartido.CDSCheCompMUESTRACH_MONEDA.AsFloat;
  CDSMovValoresCompUNIDADESSetText(CDSMovValoresCompUNIDADES,FormBuscadoCheCompartido.CDSCheCompSALDO.AsString);
  CDSMovValoresCompID_CHEQUE_COMPARTIDO.Value    := FormBuscadoCheCompartido.CDSCheCompID.Value;
  CDSMovValoresCompMUESTRAFECHACOBRO.AsDateTime  := FormBuscadoCheCompartido.CDSCheCompMUESTRACH_FECHACOBRO.AsDateTime;
  CDSMovValoresCompMUESTRAFECHAEMISION.AsDateTime:= FormBuscadoCheCompartido.CDSCheCompMUESTRACH_FECHAEMISION.AsDateTime;
  CDSMovValoresCompMUESTRAFECHAENTRADA.AsDateTime:= FormBuscadoCheCompartido.CDSCheCompMUESTRACH_FECHAENTRADA.AsDateTime;
  CDSMovValoresCompMUESTRAIMPORTE.AsFloat        := FormBuscadoCheCompartido.CDSCheCompMUESTRACH_IMPORTE.AsFloat;
  CDSMovValoresCompMUESTRAFIRMANTE.AsString      := FormBuscadoCheCompartido.CDSCheCompMUESTRACH_FIRMANTE.AsString;
  CDSMovValoresCompMUESTRANROCHE.AsString        := FormBuscadoCheCompartido.CDSCheCompMUESTRACH_NUMERO.AsString;
end;

procedure TFrameMovValoresIngreso.CDSMovValoresCompUNIDADESSetText(
  Sender: TField; const Text: string);
begin
  Sender.AsString:=Text;
  CDSMovValoresCompIMPORTE.AsFloat:=Sender.AsFloat;
  if (Trunc(Sender.AsFloat*100)>Trunc(FormBuscadoCheCompartido.CDSCheCompSALDO.AsFloat*100)) then
    begin
      Sender.AsFloat:=FormBuscadoCheCompartido.CDSCheCompSALDO.AsFloat;
      CDSMovValoresCompIMPORTE.AsFloat:=Sender.AsFloat;
    end;
end;

PROCEDURE TFrameMovValoresIngreso.DSMovTCreditoStateChange(
  Sender: TObject);
BEGIN
  PostTCredito.Enabled   := DSMovTCredito.State IN [dsInsert, dsEdit];
  CancelTCredito.Enabled := DSMovTCredito.State IN [dsInsert, dsEdit];
  dbgMovimientos.Enabled := DSMovTCredito.State in [dsBrowse];
  if (CDSCajaMovID_TPAGO.Value<>4) and (DSMovTCredito.State in [dsEdit,dsInsert])
   Then
     begin
        DSMovTCredito.DataSet.Cancel;
        sysutils.Abort;
     end;

END;

procedure TFrameMovValoresIngreso.DSMovValoresCompStateChange(Sender: TObject);
begin
  PostValoresCompartidos.Enabled   := DSMovValoresComp.State IN [dsInsert, dsEdit];
  CancelValoresCompartidos.Enabled := DSMovValoresComp.State IN [dsInsert, dsEdit];
  dbgMovimientos.Enabled := DSMovValoresComp.State in [dsBrowse];
  if (CDSCajaMovID_TPAGO.Value<>7) and (DSMovValoresComp.State in [dsEdit,dsInsert])
   Then
     begin
        DSMovValoresComp.DataSet.Cancel;
        sysutils.Abort;
     end;


end;

procedure TFrameMovValoresIngreso.DSPAnulacionCheUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
//  if UpdateKind in [ukModify, ukDelete] then
//    begin
//      Response := rrIgnore;
//    end;
end;

procedure TFrameMovValoresIngreso.DSPChe3UpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  if UpdateKind in [ukDelete] then
    begin
      Response := rrIgnore;
    end;
end;

procedure TFrameMovValoresIngreso.DSPDebitosUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  if UpdateKind in [ukDelete] then
    begin
      Response := rrIgnore;
    end;
end;

procedure TFrameMovValoresIngreso.DSPMovEfectivoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  if UpdateKind in [ukDelete] then
    begin
      Response := rrIgnore;
    end;
end;

procedure TFrameMovValoresIngreso.DSPMovTCreditoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  if UpdateKind in [ukDelete] then
    begin
      Response := rrIgnore;
    end;

end;

procedure TFrameMovValoresIngreso.DSPMovValoresCompUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  if UpdateKind in [ukDelete] then
    begin
      Response := rrIgnore;
    end;
end;

procedure TFrameMovValoresIngreso.DSPTransBcoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  if UpdateKind in [ukDelete] then
    begin
      Response := rrIgnore;
    end;
end;

PROCEDURE TFrameMovValoresIngreso.dbeunidadesChe3KeyDown(Sender: TObject;
  VAR Key: Word; Shift: TShiftState);
BEGIN
  IF (key = vk_return) THEN
    if dbeunidadesChe3.Text<>'' Then
      CDSChe3UNIDADESSetText(CDSChe3UNIDADES, dbeunidadesChe3.Text);
END;


PROCEDURE TFrameMovValoresIngreso.CDSMovTCreditoAfterPost(DataSet: TDataSet);
BEGIN
  IF TipoOperacion = 'I' THEN
    BEGIN
      IF CDSCajaMov.State = dsBrowse THEN
        CDSCajaMov.Edit;
      CDSCajaMovDEBE.AsFloat    := CDSMovTCreditoIMPORTE.AsFloat;
      CDSCajaMovUNIDADES.AsFloat:= CDSMovTCreditoUNIDADES.AsFloat;
      CDSCajaMov.Post;
    END;
END;

PROCEDURE TFrameMovValoresIngreso.DBEBancoChe3KeyPress(Sender: TObject;
  VAR Key: Char);
BEGIN
  IF key = #10 THEN
    BEGIN
      key := #0;
      BuscarBanco.Execute;
    END;
END;


PROCEDURE TFrameMovValoresIngreso.wwDBETc_IdKeyPress(Sender: TObject;
  VAR Key: Char);
BEGIN
  IF Key = #10 THEN
    BEGIN
      Key := #0;
      BuscarTCredito.Execute;
    END;
END;

procedure TFrameMovValoresIngreso.CDSTransBcoAfterPost(DataSet: TDataSet);
begin
  IF TipoOperacion = 'I' THEN
    BEGIN
      IF CDSCajaMov.State = dsBrowse THEN
        CDSCajaMov.Edit;
      CDSCajaMovDEBE.AsFloat     := CDSTransBcoIMPORTE.AsFloat;
      CDSCajaMovUNIDADES.AsFloat := CDSTransBcoUNIDADES.AsFloat;
      CDSCajaMov.Post;
    END;

end;

procedure TFrameMovValoresIngreso.CDSTransBcoNewRecord(DataSet: TDataSet);
begin
  IF TipoOperacion = 'I' THEN
    BEGIN
      CDSTransBcoID.Value            := IBGId_Trans.IncrementFD(1);
      CDSTransBcoID_CAJA.Value       := CDSCajaMovID_CAJA.Value;
      CDSTransBcoID_MOV_CAJA.Value   := CDSCajaMovID_MOV_CAJA.Value;
      CDSTransBcoFECHA.AsDateTime    := FechaOperacion;
      CDSTransBcoORIGEN.Value        := Origen;
      CDSTransBcoID_FPAGO.Value      := CDSCajaMovID_FPAGO.Value;
      CDSTransBcoID_CUENTA_CAJA.Value:= CDSCajaMovID_CUENTA_CAJA.Value;
      CDSTransBcoCOTIZACION.AsFloat  := CDSCajaMovCOTIZACION.AsFloat;
      CDSTransBcoMONEDA.Value        := CDSCajaMovMONEDA.Value;
      CDSTransBcoNUMERO.Value        := 0;
    END;

end;

procedure TFrameMovValoresIngreso.CDSTransBcoUNIDADESSetText(Sender: TField;
  const Text: string);
var i:byte;
dato:String;
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Dato:=Text;     // para correjir el problema de que cuando toma el numero lo pueda converti a Float
      while Pos(SysUtils.FormatSettings.ThousandSeparator,Dato) <>0 Do
        begin
          i:=Pos(SysUtils.FormatSettings.ThousandSeparator,Dato);
          Delete(Dato,I,1);
        end;
      Sender.AsString            := FloatToStr(Moneda3D(' ',MascaraImportes,StrToFloat(Dato)));
      CDSTransBcoIMPORTE.AsFloat := Moneda3D(' ',MascaraImportes,CDSTransBcoCOTIZACION.AsFloat * Sender.AsFloat);
    end;

end;

procedure TFrameMovValoresIngreso.BuscarClienteExecute(Sender: TObject);
begin
  CDSBuscaCliente.Close;
  CDSBuscaCliente.Open;
  comBuscadorCliente.Execute;
  if comBuscadorCliente.rOk Then
      begin
        QClientes.Close;
        QClientes.ParamByName('codigo').Value:=ComBuscadorCliente.Id;
        QClientes.Open;
        if QClientesCODIGO.AsString<>'' then
          begin
            CDSAjustesCODIGO.AsString:= QClientesCODIGO.AsString;
            CDSAjustesNOMBRE.AsString:= QClientesNOMBRE.AsString;
          end
        else
          begin
            CDSAjustesCODIGO.AsString:= '';
            CDSAjustesNOMBRE.AsString:= '';
          end;
        QClientes.Close;
      end;
  CDSBuscaCliente.Close;
end;

procedure TFrameMovValoresIngreso.BuscarCtaBcoExecute(Sender: TObject);
begin
  CDSBuscaCtaCajaBco.Close;
  CDSBuscaCtaCajaBco.Open;
  comBuscadorCtaBco.Execute;
  if comBuscadorCtaBco.rOk Then
    CDSTransBcoID_CUENTA_BANCOSetText(CDSTransBcoID_CUENTA_BANCO,IntToStr(comBuscadorCtaBco.Id));
  CDSBuscaCtaCajaBco.Close;
end;

//procedure TFrameMovValoresIngreso.wwCDSTransBcoID_CUENTA_BANCOSetText(
//  Sender: TField; const Text: String);
//begin
//  if  (Text<>'') and (Text[1]<>#13) Then
//    begin
//      Sender.AsString:=Text;
//      if Not(AsignaCtaBco(Sender.AsInteger)) Then
//        begin
//          Sender.AsString:='';
//          ShowMessage('Dato no Valido');
//        end;
//     end;
//end;

procedure TFrameMovValoresIngreso.PostTransExecute(Sender: TObject);
begin
  IF (Trunc(CDSTransBcoUNIDADES.AsFloat*1000) <> 0) and (CDSTransBcoID_CUENTA_BANCO.AsString<>'') THEN
    begin
      CDSTransBco.Post;
      if dbgMovimientos.Enabled Then
        dbgMovimientos.SetFocus;
    end
  ELSE
    BEGIN
      if (Trunc(CDSTransBcoUNIDADES.AsFloat * 1000) = 0) Then
        begin
          ShowMessage('No se ingreso importe');
          dbeUnidadesTx.SetFocus;
        end
      else
        if CDSTransBcoID_CUENTA_BANCO.AsString='' Then
          begin
            ShowMessage('No se Cta.de Banco');
            ceCtaBco.SetFocus;
          end;
    END;
end;

procedure TFrameMovValoresIngreso.PostValoresCompartidosExecute(Sender: TObject);
begin
  CDSMovValoresComp.Post;
  if dbgMovimientos.Enabled Then
    dbgMovimientos.SetFocus;
end;

procedure TFrameMovValoresIngreso.RxLabel4Click(Sender: TObject);
begin
  if Not(Assigned(FormCaja)) then
    FormCaja:=TFormCaja.Create(Self);
  FormCaja.Recuperar(DBText12.DataSource.DataSet.FieldByName('ID_CAJA').AsInteger);
  FormCaja.pcMovimientos.ActivePageIndex:=0;
  FormCaja.dbgIngresos.DataSource.DataSet.Locate('TIPO_CPBTE;ID_COMPROBANTE',VararrayOf([CDSCajaMovTIPO_COMPROB.AsString,CDSCajaMovID_COMPROBANTE.AsString]),[]);
  FormCaja.Show;
end;

procedure TFrameMovValoresIngreso.RxLabel4MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  RxLabel4.Cursor:=crHandPoint;
end;

procedure TFrameMovValoresIngreso.CancelTransExecute(Sender: TObject);
begin
  CDSTransBco.Cancel;
  CDSCajaMov.Cancel;
end;

procedure TFrameMovValoresIngreso.CancelValoresCompartidosExecute(
  Sender: TObject);
begin
  CDSMovValoresComp.Cancel;
  CDSCajaMov.Cancel;
end;

procedure TFrameMovValoresIngreso.DSTransBcoStateChange(Sender: TObject);
begin
  PostTrans.Enabled      := DSTransBco.State IN [dsInsert, dsEdit];
  CancelTrans.Enabled    := DSTransBco.State IN [dsInsert, dsEdit];
  dbgMovimientos.Enabled := DSTransBco.State =dsBrowse;
  if (CDSCajaMovID_TPAGO.Value<>5) and (DSTransBco.State in [dsEdit,dsInsert])
   Then
     begin
        DSTransBco.DataSet.Cancel;
        sysutils.Abort;
     end;
end;



procedure TFrameMovValoresIngreso.pcValoresChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  AllowChange:= DSCajaMov.DataSet.State=dsBrowse;
  if (DSTransBco.DataSet.State<>dsBrowse) or
     (DSChe3.DataSet.State<>dsBrowse) or
     (DSMovEfectivo.DataSet.State<>dsBrowse) or
     (DSMovTCredito.DataSet.State<>dsBrowse) or
     (DSAjustes.DataSet.State<>dsBrowse)

  then
    AllowChange:=False
  else
    AllowChange:=True;

end;

procedure TFrameMovValoresIngreso.posAjustesExecute(Sender: TObject);
begin
  IF (Trunc(CDSAjustesIMPORTE.AsFloat * 1000) <> 0) and (CDSAjustesID_COMPROB_AJUSTE.Value>-1) and
     (Trim(CDSAjustesCODIGO.AsString)<>'') and (Trim(CDSAjustesNOMBRE.AsString)<>'') THEN
    begin
      CDSAjustes.Post;
      if ((Owner as TForm).Visible=True) and (dbgMovimientos.Visible) and
         (dbgMovimientos.Enabled) and
         (pcValores.ActivePageIndex=0)  Then
         try
           dbgMovimientos.SetFocus;
         except
         end;
    end
  ELSE
    BEGIN
      ShowMessage('Datos Incompletos....');
      dbeImporteCta.SetFocus;
    END;
end;

procedure TFrameMovValoresIngreso.CDSTransBcoBeforePost(DataSet: TDataSet);
begin
  CDSTransBcoID_CAJA.Value       := CDSCajaMovID_CAJA.Value;
  CDSTransBcoID_CUENTA_CAJA.Value:= CDSCajaMovID_CUENTA_CAJA.Value;
end;

procedure TFrameMovValoresIngreso.CDSTransBcoID_CUENTA_BANCOSetText(
  Sender: TField; const Text: string);
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

procedure TFrameMovValoresIngreso.CDSChe3BeforePost(DataSet: TDataSet);
begin
  CDSChe3ID_CAJA.Value       := CDSCajaMovID_CAJA.Value;
  CDSChe3ID_CUENTA_CAJA.Value:= CDSCajaMovID_CUENTA_CAJA.Value;
end;

procedure TFrameMovValoresIngreso.CDSChe3CUITSetText(Sender: TField;
  const Text: string);
var
  VerificaCheBCRA,VerificaCuitRc:Boolean;
  Suma:Integer;
  NroValidacion:Integer;
  VCuit:String;
  ClaveElectronica,CertificadoElectronico,URLWSAA,URLWSW,URLWSW_EX,CuitAux,URLBcra:String;
  ModoFcElectronica:Integer;
  CuitEmpresa:Real;
  Nombre,tipo,Estado,domicilio,localidad,provincia,condicionIVA:String;

begin
  if (text[1]<>'') and (Text[1]<>' ') and (Text[2]<>' ') and (Text[4]<>' ') and (Text[5]<>' ') and
     (Text[6]<>' ') and (Text[7]<>' ') and (Text[7]<>' ') and (Text[9]<>' ') and (text[10]<>' ') and
     (Text[11]<>' ') and (Text[13]<>' ') Then
    begin
      suma:=StrToInt(Copy(text,1,1))*5+StrToInt(Copy(text,2,1))*4+
            StrToInt(Copy(text,4,1))*3+StrToInt(Copy(text,5,1))*2+
            StrToInt(Copy(text,6,1))*7+StrToInt(Copy(text,7,1))*6+
            StrToInt(Copy(text,8,1))*5+StrToInt(Copy(text,9,1))*4+
            StrToInt(Copy(text,10,1))*3+StrToInt(Copy(text,11,1))*2;
      if ((suma mod 11)<>0) then
        begin
          if ((11-(suma mod 11))<>StrToInt(Copy(text,13,1))) and ((suma mod 11)<10) Then
            begin
              NroValidacion:=11-(suma mod 11);
              ShowMessage('Numero de cuit no valido....');
              Sender.ASString:='00-00000000-0';
              DBEFirmante.SetFocus;
            end
          else
            Sender.AsString:=Text;
        end
      else
        if ((suma mod 11)=0) then
          begin
            if StrToInt(Copy(text,13,1))<>0 Then
             begin
                ShowMessage('Numero de cuit no valido....');
                Sender.ASString:='00-00000000-0';
                DBEFirmante.SetFocus;
              end
            else
              Sender.AsString:=Text;
          end;
      if (Copy(Text,1,2)<>'00') and
         (Copy(Text,1,2)<>'20') and
         (Copy(Text,1,2)<>'23') and
         (Copy(Text,1,2)<>'27') and
         (Copy(Text,1,2)<>'24') and
         (Copy(Text,1,2)<>'30') and
         (Copy(Text,1,2)<>'33') and
         (Copy(Text,1,2)<>'50') and
         (Copy(Text,1,2)<>'55') and
         (Copy(Text,1,2)<>'34') Then

       begin
         Sender.ASString:='00-00000000-0';
         ShowMessage('El prefijo no se corresponde con las opciones 20/23/27/30/33/34....');
       end;

    end;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  // ***** Ubicacione de archivos Factura Electronica ...*****************
  ClaveElectronica       := ArchivoIni.ReadString('FacturaEelectronica', 'Clave', '');
  CertificadoElectronico := ArchivoIni.ReadString('FacturaEelectronica', 'Certificado', '');
  URLWSAA                := ArchivoIni.ReadString('FacturaEelectronica', 'URLWSAA','https://wsaahomo.afip.gov.ar/ws/services/LoginCms');
  URLWSW                 := ArchivoIni.ReadString('FacturaEelectronica', 'URLWSW','https://wswhomo.afip.gov.ar/wsfev1/service.asmx');
  URLWSW_EX              := ArchivoIni.ReadString('FacturaEelectronica', 'URLWSW_EX','https://wswhomo.afip.gov.ar/wsfexv1/service.asmx');
  ModoFcElectronica      := ArchivoIni.ReadInteger('FacturaEelectronica', 'Modo',0);//Modo de Prueba.... por defecto

  ArchivoIni.Free;

  ArchivoIni             := TIniFile.Create(ExtractFilePath(ParamStr(0))+'General.Ini');
  VerificaCheBCRA        := ArchivoIni.ReadBool('BCRA','VerificaRc',False);
  VerificaCuitRc         := ArchivoIni.ReadBool('CUIT','VerificaCuit',False);
  URLBcra                := ArchivoIni.ReadString('BCRA', 'URL', 'http://sigcom.dnsalias.com:8080/datos/');

  ArchivoIni.Free;

  QEmpresa.Close;
  QEmpresa.Open;
 // procedure ConsultarPadronCuit(CuitEmpresa,ClaveElectronica,CertificadoElectronico,URLWSAA,
 //                               URLWSW:String;ModoFcElectronica:Integer;
 //                               var cuit,Nombre,tipo,Estado,domicilio,localidad,provincia,condicionIVA:String);


  CuitAux:=QEmpresaCUIT.Value;
  while Pos('-',CuitAux)>0 do
    delete(CuitAux,Pos('-',CuitAux),1);
  if Trim(CuitAux)='' then
    CuitAux:='00000000000';

  CuitEmpresa:=StrToFLoat(CuitAux);

  VCuit:=Sender.ASString;
  while Pos('-',VCuit)<>0 do
    delete(VCuit,Pos('-',VCuit),1);


  if ((VerificaCuitRc) or (VerificaCheBCRA)) and (Copy(VCuit,1,3)<>'000') then
 //   if WebIng('https://wswhomo.afip.gov.ar')  then
      begin
        if  VerificaCuitRc then
          if ConsultarPadronCuit(CuitEmpresa,ClaveElectronica,CertificadoElectronico, URLWSAA, URLWSW,ModoFcElectronica,
                                 VCuit,Nombre,tipo,Estado,domicilio,localidad,provincia,condicionIVA)=True Then
            CDSChe3FIRMANTE.Value := Nombre;

        if DMMain_FD.GetusaBCRA then
          begin
            if VerificaCheBCRA then
              begin
                IF NOT (Assigned(CModuleBCRA)) THEN
                  CModuleBCRA := TCModuleBCRA.Create(Self);

                CModuleBCRA.RESTClient.BaseURL := URLBcra+':8080/datasnap/rest/TServerMethods/GetChequesBCRA';;
                CModuleBCRA.RESTRequest.Params.ParameterByName('cuit').Value := VCuit;
                CModuleBCRA.RESTRequest.Execute;
                if (CModuleBCRA.RESTRequest.Response.StatusCode=200) and (CModuleBCRA.mtCheque.RecordCount>0) then
                  begin
                    CModuleBCRA.mtCheque.First;
                    if (Trim(CModuleBCRA.mtCheque.FieldByName('NRO_CHEQUE').AsString)<>'')  Then
                      begin
                        if Not(Assigned(FormLstCheRechazados)) Then
                          FormLstCheRechazados:=TFormLstCheRechazados.Create(Self);
                        FormLstCheRechazados.mtTabla := CModuleBCRA.mtCheque;
                        FormLstCheRechazados. ShowModal;
                      end;
                  end
                else ShowMessage(CModuleBCRA.RESTRequest.Response.ErrorMessage);
              end;
          end;
      end;
end;



procedure TFrameMovValoresIngreso.CDSChe3ID_BANCOSetText(Sender: TField;
  const Text: string);
begin
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
end;

procedure TFrameMovValoresIngreso.CDSMovEfectivoBeforePost(
  DataSet: TDataSet);
begin
  CDSMovEfectivoID_CAJA.Value        := CDSCajaMovID_CAJA.Value;
  CDSMovEfectivoID_CUENTA_CAJA.Value := CDSCajaMovID_CUENTA_CAJA.Value;
end;

procedure TFrameMovValoresIngreso.CDSMovTCreditoBeforePost(
  DataSet: TDataSet);
begin
  CDSMovTCreditoID_CAJA.Value       := CDSCajaMovID_CAJA.Value;
  CDSMovTCreditoID_CUENTA_CAJA.Value:= CDSCajaMovID_CUENTA_CAJA.Value;
end;

procedure TFrameMovValoresIngreso.CDSMovTCreditoCAN_CUOTASSetText(
  Sender: TField; const Text: string);
begin
  Sender.AsString:=Text;
  QCoeficienteTC.Close;
  QCoeficienteTC.ParamByName('id_tc').Value :=CDSMovTCreditoID_TC.Value;
  QCoeficienteTC.ParamByName('cuotas').Value:=Sender.AsInteger;
  QCoeficienteTC.Open;
  if QCoeficienteTC.Fields[0].AsString<>'' Then
    CDSMovTCreditoCOEFICIENTE.AsFloat := QCoeficienteTC.Fields[0].AsFloat
  else
    CDSMovTCreditoCOEFICIENTE.AsFloat :=1;
  QCoeficienteTC.Close;
  if (CDSCajaMovTIPO_COMPROB.Value<>'FO') and (CDSCajaMovTIPO_COMPROB.Value<>'TK') then
     CDSMovTCreditoCOEFICIENTE.AsFloat :=1;
  CDSMovTCreditoIMPORTE_NETO.AsFloat    := Moneda3D(' ',MascaraImportes, CDSMovTCreditoUNIDADES_NETO.Asfloat * CDSMovTCreditoCOTIZACION.AsFloat);
  CDSMovTCreditoUNIDADES.AsFloat        := Moneda3D(' ',MascaraImportes, CDSMovTCreditoUNIDADES_NETO.AsFloat * CDSMovTCreditoCOEFICIENTE.AsFloat);
  CDSMovTCreditoIMPORTE.AsFloat         := Moneda3D(' ',MascaraImportes, CDSMovTCreditoUNIDADES.Asfloat * CDSMovTCreditoCOTIZACION.AsFloat);
  CDSMovTCreditoVALORCUOTA.AsFloat      := Moneda3D(' ',MascaraImportes, CDSMovTCreditoIMPORTE.AsFloat/ CDSMovTCreditoCAN_CUOTAS.AsFloat);
  CDSMovTCreditoIMPORTE_RECARGO.AsFloat := Moneda3D(' ',MascaraImportes, CDSMovTCreditoIMPORTE.AsFloat - CDSMovTCreditoIMPORTE_NETO.AsFloat);
end;

procedure TFrameMovValoresIngreso.CDSMovTCreditoID_TCSetText(Sender: TField;
  const Text: string);
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

procedure TFrameMovValoresIngreso.CDSMovTCreditoLOTESetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Copy('00000',1,5-Length(Text))+Text;
end;

procedure TFrameMovValoresIngreso.ceCajaEnter(Sender: TObject);
begin
  CajaOld:=Trim(ceCaja.Text);
end;

procedure TFrameMovValoresIngreso.ceCajaExit(Sender: TObject);
begin
  QCajaCab.Close;
  if (Trim(ceCaja.Text)='') Then
    QCajaCab.Params.ParamByName('Id').Value := -1
  else
    QCajaCab.Params.ParamByName('Id').Value := StrToInt(Trim(ceCaja.Text));
  QCajaCab.Open;
  IF NOT (QCajaCab.IsEmpty) THEN
    BEGIN
      ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
      edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
      Id_Caja            := QCajaCabID_CAJA.Value;
      Id_Cuenta_Caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
      FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
      if (dbgMovimientos.Enabled=True) and (Parent.Parent.Enabled=True)  Then
        dbgMovimientos.SetFocus;
    END
  ELSE
    BEGIN
      ShowMessage('Caja no Válida.....');
      edMuestraCaja.Text := '';
      ceCaja.Text:='';
      if (ceCaja.Enabled=True) and (ceCaja.Visible=True) then
        begin
          ceCaja.SetFocus;
          ceCaja.SelectAll;
        end;
    END;
end;

procedure TFrameMovValoresIngreso.CDSCajaMovBeforeEdit(
  DataSet: TDataSet);
begin
//  SysUtils.Abort;
//  IF (wwCDSCajaMovID_TPAGO.Value = 1) and (Not(wwCDSMovEfectivo.IsEmpty)) THEN
//    wwCDSMovEfectivo.Delete
//   ELSE
//     IF (wwCDSCajaMovID_TPAGO.Value = 3) and (Not(wwCDSChe3.IsEmpty))  THEN
//       wwCDSChe3.delete
//     ELSE
//       IF (wwCDSCajaMovID_TPAGO.Value = 4)and (Not(wwCDSMovTCredito.IsEmpty)) THEN
//         wwCDSMovTCredito.Delete
//       ELSE
//         IF (wwCDSCajaMovID_TPAGO.Value = 5) and (Not(wwCDSTransBco.IsEmpty)) THEN
//            wwCDSTransBco.Delete;

end;

procedure TFrameMovValoresIngreso.DBText12Click(Sender: TObject);
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

procedure TFrameMovValoresIngreso.DBText12MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if DMMain_FD.UsuarioAdministrador then
    DBText12.Cursor:=crHandPoint
  else
    DBText12.Cursor:=crDefault;
end;

procedure TFrameMovValoresIngreso.DBText13Click(Sender: TObject);
begin
  if Not(Assigned(FormCaja)) then
    FormCaja:=TFormCaja.Create(Self);
  FormCaja.Recuperar(StrToInt(DBText12.DataSource.DataSet.FieldByName('ID_CAJA').AsString));
  FormCaja.Show;
end;

procedure TFrameMovValoresIngreso.DSAjustesStateChange(Sender: TObject);
begin
  PostEfectivo.Enabled   := DSMovEfectivo.State IN [dsInsert, dsEdit];
  CancelEfectivo.Enabled := DSMovEfectivo.State IN [dsInsert, dsEdit];
  dbgMovimientos.Enabled := DSMovEfectivo.State in [dsBrowse];
  if (CDSCajaMovID_TPAGO.Value<>1) and (DSMovEfectivo.State in [dsEdit,dsInsert])
   Then
     begin
        DSMovEfectivo.DataSet.Cancel;
        sysutils.Abort;
     end;
end;

procedure TFrameMovValoresIngreso.DSCajaMovStateChange(Sender: TObject);
begin
  //ShowMessage('edit');
  pcValores.Enabled:= DSCajaMov.State<>dsBrowse;

end;

procedure TFrameMovValoresIngreso.CDSDebitosAfterPost(DataSet: TDataSet);
begin
 IF TipoOperacion = 'I' THEN
    BEGIN
      IF CDSCajaMov.State = dsBrowse THEN
        CDSCajaMov.Edit;
      CDSCajaMovDEBE.AsFloat      := CDSDebitosIMPORTE.AsFloat;
      CDSCajaMovUNIDADES.AsFloat  := CDSDebitosUNIDADES.AsFloat;
      CDSCajaMov.Post;
    END;
end;

procedure TFrameMovValoresIngreso.CDSDebitosBeforePost(
  DataSet: TDataSet);
begin
  CDSDebitosID_CAJA.Value       := CDSCajaMovID_CAJA.Value;
  CDSDebitosID_CUENTA_CAJA.Value:= CDSCajaMovID_CUENTA_CAJA.Value;
end;

procedure TFrameMovValoresIngreso.CDSDebitosNewRecord(DataSet: TDataSet);
begin
  IF TipoOperacion = 'I' THEN
    BEGIN
      CDSDebitosID.Value            := IBGIdDebito.IncrementFD(1);
      CDSDebitosID_CAJA.Value       := CDSCajaMovID_CAJA.Value;
      CDSDebitosID_MOV_CAJA.Value   := CDSCajaMovID_MOV_CAJA.Value;
      CDSDebitosFECHA.AsDateTime    := FechaOperacion;
      CDSDebitosORIGEN.Value        := Origen;
      CDSDebitosID_FPAGO.Value      := CDSCajaMovID_FPAGO.Value;
      CDSDebitosID_CUENTA_CAJA.Value:= CDSCajaMovID_CUENTA_CAJA.Value;
      CDSDebitosCOTIZACION.AsFloat  := CDSCajaMovCOTIZACION.AsFloat;
      CDSDebitosMONEDA.Value        := CDSCajaMovMONEDA.Value
    END;
end;

procedure TFrameMovValoresIngreso.CDSAnulacionCheBeforePost(
  DataSet: TDataSet);
begin
  //wwCDSChequesID_CAJA.Value       := wwCDSCajaMovID_CAJA.Value;
  CDSAnulacionCheID_CAJA_MOV.Value := CDSCajaMovID_MOV_CAJA.Value;
end;

procedure TFrameMovValoresIngreso.CDSAjustesAfterPost(DataSet: TDataSet);
begin
  IF CDSCajaMov.State = dsBrowse THEN
    CDSCajaMov.Edit;

  CDSCajaMovUNIDADES.AsFloat := CDSAjustesIMPORTE.AsFloat;
  CDSCajaMovDEBE.AsFloat     := CDSAjustesIMPORTE.AsFloat;
  CDSCajaMov.Post;

end;

procedure TFrameMovValoresIngreso.CDSAjustesCODIGOSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Trim(Text);
  Sender.ASString:= Copy('000000',1,6-Length(Sender.AsString))+Sender.AsString;
  if Sender.AsString<>'' then
    begin
      QCliente.Close;
      QCliente.params.paramByName('Codigo').Value:=Sender.AsString;
      QCliente.Open;
      if Not(QCliente.IsEmpty) then
        begin
          CDSAjustesNOMBRE.AsString:=QClienteNOMBRE.Value;
        end
      else
        begin
          Sender.Clear;
          CDSAjustesNOMBRE.AsString:='';
        end;
      QCliente.Close;
    end;
  
end;

procedure TFrameMovValoresIngreso.CDSAjustesNewRecord(DataSet: TDataSet);
begin
  CDSAjustesID.Value               :=ibgAjuste.IncrementFD(1);
  CDSAjustesID_MOV_CAJA.Value      :=CDSCajaMovID_MOV_CAJA.Value;
  CDSAjustesID_COMPROB_AJUSTE.Value:=-1;
  CDSAjustesID_AJUSTE_CC.Value     :=-1;
  CDSAjustesFECHA.Value            :=CDSCajaMovFECHA_OPERACION.Value;
  CDSAjustesIMPORTE.AsFloat        :=0;
  CDSAjustesDETALLE.Value          :='Aj.Cta'+NroCpbte;
end;

procedure TFrameMovValoresIngreso.CDSAnulacionCheAfterPost(DataSet: TDataSet);
begin
  if TipoOperacion='I' Then
  BEGIN
    IF CDSCajaMov.State = dsBrowse THEN
      CDSCajaMov.Edit;
    CDSCajaMovDEBE.AsFloat     := CDSAnulacionCheIMPORTE.AsFloat;
    CDSCajaMovUNIDADES.AsFloat := CDSAnulacionCheUNIDADES.AsFloat;
    CDSCajaMov.Post;
  END;

end;

procedure TFrameMovValoresIngreso.CDSAnulacionCheNewRecord(DataSet: TDataSet);
begin
  CDSAnulacionCheID_ANULACION.Value  := ibg_id_mov_anula_chePro.IncrementFD(1);
  CDSAnulacionCheID_CAJA_MOV.Value   := CDSCajaMovID_MOV_CAJA.value;
  CDSAnulacionCheID_CAJA.Value       := CDSCajaMovID_CAJA.Value;
  CDSAnulacionCheFECHA.AsDateTime    := CDSCajaMovFECHA_OPERACION.AsDateTime;
  CDSAnulacionCheID_FPAGO.Value      := CDSCajaMovID_FPAGO.Value;
end;

procedure TFrameMovValoresIngreso.PostChequeExecute(Sender: TObject);
begin
  CDSAnulacionChe.Post;
end;

procedure TFrameMovValoresIngreso.CancelChequeExecute(Sender: TObject);
begin
  CDSAnulacionChe.Cancel;
  CDSCajaMov.Cancel;
end;


procedure TFrameMovValoresIngreso.DBEUnidadesNetoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  IF key = vk_return THEN
    if DBEUnidadesNeto.Text<>'' Then
    CDSMovTCreditoUNIDADES_NETOSetText(CDSMovTCreditoUNIDADES_NETO,DBEUnidadesNeto.Text);
end;

procedure TFrameMovValoresIngreso.cbTCreditoKeyPress(Sender: TObject;
  var Key: Char);
begin
 IF Key = #10 THEN
    BEGIN
      Key := #0;
      BuscarTCredito.Execute;
    END;
end;

END.