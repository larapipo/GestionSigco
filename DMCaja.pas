unit DMCaja;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDatosCaja = class(TDataModule)
    DSPCajaCab: TDataSetProvider;
    CDSCajaCab: TClientDataSet;
    CDSCajaCabID_CAJA: TIntegerField;
    CDSCajaCabID_CUENTA_CAJA: TIntegerField;
    CDSCajaCabESTADO: TIntegerField;
    CDSCajaCabOBS: TMemoField;
    CDSCajaCabNUMEROCAJA: TIntegerField;
    CDSCajaCabMUESTRACTACAJA: TStringField;
    DSCajaCab: TDataSource;
    DSRetenciones: TDataSource;
    DSDepositos: TDataSource;
    DSSaldosTC: TDataSource;
    DSSaldoFinal: TDataSource;
    DSChe3Recibidos: TDataSource;
    DSPCheques: TDataSetProvider;
    DSPCajaDetIngresos: TDataSetProvider;
    DSPCajaDetEgresos: TDataSetProvider;
    DSPChe3Recibidos: TDataSetProvider;
    DSFPago: TDataSource;
    DSEfectivo: TDataSource;
    DSValores: TDataSource;
    DSTxGeneradas: TDataSource;
    DSTxRecibidas: TDataSource;
    DSChe3Entregado: TDataSource;
    DSCheques: TDataSource;
    DSPChe3Entregado: TDataSetProvider;
    DSDebitos: TDataSource;
    DSMovTCCompra: TDataSource;
    DSMovTCVenta: TDataSource;
    CDSDepositos: TClientDataSet;
    DSPDepositos: TDataSetProvider;
    CDSDepositosID_MOV_CAJA: TIntegerField;
    CDSDepositosID_CAJA: TIntegerField;
    CDSDepositosTIPO_OPERACION: TStringField;
    CDSDepositosTIPO_COMPROB: TStringField;
    CDSDepositosCLASE_COMPROB: TStringField;
    CDSDepositosID_COMPROBANTE: TIntegerField;
    CDSDepositosNRO_COMPROBANTE: TStringField;
    CDSDepositosID_TPAGO: TIntegerField;
    CDSDepositosID_FPAGO: TIntegerField;
    CDSDepositosID_CUENTA_CAJA: TIntegerField;
    CDSDepositosMONEDA: TIntegerField;
    CDSDepositosID: TIntegerField;
    CDSDepositosID_CTA_CAJA: TIntegerField;
    CDSDepositosNUMERO: TStringField;
    CDSDepositosEFEC_CHEQ: TStringField;
    CDSDepositosOBS: TStringField;
    CDSDepositosMUESTRACTA: TStringField;
    CDSDepositosNUEMROCHE: TIntegerField;
    CDSDepositosMUESTRAORIGEN: TStringField;
    CDSRetenciones: TClientDataSet;
    DSPRetenciones: TDataSetProvider;
    CDSSaldosTC: TClientDataSet;
    DSPSaldosTC: TDataSetProvider;
    CDSSaldosTCMONEDA: TIntegerField;
    CDSSaldosTCSALDO: TFloatField;
    CDSSaldosTCDEBE: TFloatField;
    CDSSaldosTCHABER: TFloatField;
    CDSSaldosTCFPAGO: TSmallintField;
    CDSSaldosTCTPAGO: TSmallintField;
    CDSSaldosTCCOTIZACION: TFloatField;
    CDSSaldosTCDETALLE: TStringField;
    CDSSaldoFinal: TClientDataSet;
    DSPSaldoFinal: TDataSetProvider;
    CDSSaldoFinalMONEDA: TIntegerField;
    CDSSaldoFinalSALDO: TFloatField;
    CDSSaldoFinalDEBE: TFloatField;
    CDSSaldoFinalHABER: TFloatField;
    CDSSaldoFinalFPAGO: TSmallintField;
    CDSSaldoFinalTPAGO: TSmallintField;
    CDSSaldoFinalCOTIZACION: TFloatField;
    CDSSaldoFinalDETALLE: TStringField;
    CDSChe3Recibidos: TClientDataSet;
    CDSChe3RecibidosID_MOV_CAJA: TIntegerField;
    CDSChe3RecibidosNUMERO: TIntegerField;
    CDSChe3RecibidosMUESTRABANCO: TStringField;
    CDSChe3RecibidosORIGEN: TStringField;
    CDSChe3RecibidosDESTINO: TStringField;
    CDSTxRecibidas: TClientDataSet;
    DSPTxRecibidas: TDataSetProvider;
    CDSTxRecibidasORIGEN: TStringField;
    CDSTxRecibidasMUESTRABANCO: TStringField;
    CDSTxGeneradas: TClientDataSet;
    DSPTxGeneradas: TDataSetProvider;
    CDSTxGeneradasNUMERO: TIntegerField;
    CDSTxGeneradasORIGEN: TStringField;
    CDSTxGeneradasMUESTRABANCO: TStringField;
    CDSDebitos: TClientDataSet;
    DSPDebitos: TDataSetProvider;
    CDSDebitosNUMERO: TIntegerField;
    CDSDebitosORIGEN: TStringField;
    CDSDebitosMUESTRABANCO: TStringField;
    CDSFPago: TClientDataSet;
    DSPFPago: TDataSetProvider;
    CDSFPagoID_FPAGO: TIntegerField;
    CDSFPagoID_TPAGO: TIntegerField;
    CDSFPagoDESCRIPCION: TStringField;
    CDSFPagoSIGNO: TStringField;
    CDSFPagoMONEDA: TIntegerField;
    CDSValores: TClientDataSet;
    DSPValores: TDataSetProvider;
    CDSValoresTIPO_CPBTE: TStringField;
    CDSValoresNRO_CPBTE: TStringField;
    CDSValoresDEBE: TFloatField;
    CDSValoresHABER: TFloatField;
    CDSValoresSALDO: TFloatField;
    CDSEfectivo: TClientDataSet;
    DSPEfectivo: TDataSetProvider;
    CDSEfectivoTIPO_COMPROB: TStringField;
    CDSEfectivoCLASE_COMPRO: TStringField;
    CDSEfectivoNROCOMPROB: TStringField;
    CDSEfectivoID_TPAGO: TIntegerField;
    CDSEfectivoID_FPAGO: TIntegerField;
    CDSEfectivoMUESTRAFPAGO: TStringField;
    CDSEfectivoDESCRIPCION: TStringField;
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
    DSCajaDetIngresos: TDataSource;
    CDSCheques: TClientDataSet;
    CDSChequesNUMERO: TIntegerField;
    CDSChequesMUESTRABANCO: TStringField;
    CDSChequesORDEN_DE: TStringField;
    CDSChe3Entrgado: TClientDataSet;
    CDSChe3EntrgadoID_MOV_CAJA: TIntegerField;
    CDSChe3EntrgadoNUMERO: TIntegerField;
    CDSChe3EntrgadoMUESTRABANCO: TStringField;
    CDSChe3EntrgadoORIGEN: TStringField;
    CDSChe3EntrgadoDESTINO: TStringField;
    CDSMovTCCompra: TClientDataSet;
    DSPMovTCCompra: TDataSetProvider;
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
    DSPMovTCVenta: TDataSetProvider;
    CDSMovTCVentaID_CAJA: TIntegerField;
    CDSMovTCVentaID_TC: TIntegerField;
    CDSMovTCVentaMUESTRATARJETA: TStringField;
    CDSMovTCVentaCAN_CUOTAS: TIntegerField;
    CDSMovTCVentaTIPO_COMPROB: TStringField;
    CDSMovTCVentaCLASE_COMPROB: TStringField;
    CDSMovTCVentaNRO_COMPROBANTE: TStringField;
    CDSMovTCVentaNRO_CUPON: TIntegerField;
    CDSMovTCVentaTITULAR: TStringField;
    CDSCajas: TClientDataSet;
    DSPCajas: TDataSetProvider;
    CDSCajasID_CAJA: TIntegerField;
    CDSCajasID_CUENTA_CAJA: TIntegerField;
    CDSCajasESTADO: TIntegerField;
    CDSCajasOBS: TMemoField;
    CDSCajasNUMEROCAJA: TIntegerField;
    CDSCajasMUESTRACTACAJA: TStringField;
    DSCajaDetEgresos: TDataSource;
    CDSSaldoInicial: TClientDataSet;
    DSPSaldoInicial: TDataSetProvider;
    CDSSaldoInicialID_CAJA_SALDO: TIntegerField;
    CDSSaldoInicialID_CAJA_CAB: TIntegerField;
    CDSSaldoInicialID_TPAGO: TIntegerField;
    CDSSaldoInicialID_FPAGO: TIntegerField;
    CDSSaldoInicialESTADO_CAJA: TSmallintField;
    CDSSaldoInicialOBSERVACIONES: TStringField;
    CDSSaldoInicialMUESTRAFORMAPAGO: TStringField;
    DSSaldoInicial: TDataSource;
    CDSRetencionesIDRETENCION: TIntegerField;
    CDSRetencionesDETALLE: TStringField;
    CDSRetencionesTIPOCPBTE: TStringField;
    CDSRetencionesCLASECPBTE: TStringField;
    CDSRetencionesNROCPBTE: TStringField;
    CDSRetencionesNRO_RETENCION: TStringField;
    CDSRetencionesIMPORTE: TFloatField;
    CDSRetencionesCLIENTE: TStringField;
    CDSAnuladas: TClientDataSet;
    DSPAnuladas: TDataSetProvider;
    CDSAnuladasID_MOV_CAJA: TIntegerField;
    CDSAnuladasID_CAJA: TIntegerField;
    CDSAnuladasTIPO_OPERACION: TStringField;
    CDSAnuladasCLASE_COMPROB: TStringField;
    CDSAnuladasID_COMPROBANTE: TIntegerField;
    CDSAnuladasNRO_COMPROBANTE: TStringField;
    CDSAnuladasID_TPAGO: TIntegerField;
    CDSAnuladasID_FPAGO: TIntegerField;
    CDSAnuladasID_CUENTA_CAJA: TIntegerField;
    CDSAnuladasMONEDA: TIntegerField;
    CDSAnuladasMUESTRANOMBRE: TStringField;
    DSAnuladas: TDataSource;
    CDSAnuladasTIPO_COMPROB: TStringField;
    DSPResumenVta: TDataSetProvider;
    CDSResumentVta: TClientDataSet;
    CDSResumentVtaTOTAL_CIVA: TFloatField;
    CDSResumentVtaTOTAL_REC: TFMTBCDField;
    CDSResumentVtaTOTALCIVA_REC: TFMTBCDField;
    DSResumenVta: TDataSource;
    CDSResumentVtaCANTIDAD_REC: TFMTBCDField;
    CDSResumentVtaTIPOCPBTE: TStringField;
    CDSResumentVtaCODIGOARTICULO: TStringField;
    CDSResumentVtaDETALLE: TStringField;
    CDSMovTCVentaID_COMPROBANTE: TIntegerField;
    CDSEfectivoNOMBRE: TStringField;
    CDSValoresSIGNO: TStringField;
    CDSValoresNOMBRE: TStringField;
    CDSEfectivoSIGNO: TStringField;
    QCajaCab: TFDQuery;
    CDSCajaCabSALDO_INCIAL: TFloatField;
    QCajadet: TFDQuery;
    QDepositos: TFDQuery;
    CDSDepositosHABER: TFloatField;
    CDSDepositosDEBE: TFloatField;
    CDSDepositosSUCURSAL: TIntegerField;
    CDSDepositosUNIDADES: TFloatField;
    CDSDepositosCOTIZACION: TFloatField;
    CDSDepositosIMPORTE: TFloatField;
    QRetenciones: TFDQuery;
    QSaldosTC: TFDQuery;
    CDSSaldosTCDISPONIBILIDAD: TFloatField;
    QSaldoFinal: TFDQuery;
    CDSSaldoFinalDISPONIBILIDAD: TFloatField;
    QChe3Recibidos: TFDQuery;
    CDSChe3RecibidosIMPORTE: TFloatField;
    QTxRecibidas: TFDQuery;
    CDSTxRecibidasNUMERO: TIntegerField;
    CDSTxRecibidasIMPORTE: TFloatField;
    QTxGeneradas: TFDQuery;
    CDSTxGeneradasIMPORTE: TFloatField;
    QDebitos: TFDQuery;
    CDSDebitosIMPORTE: TFloatField;
    QSaldoInic: TFDQuery;
    CDSSaldoInicialIMPORTE: TFloatField;
    QAnuladas: TFDQuery;
    CDSAnuladasHABER: TFloatField;
    CDSAnuladasDEBE: TFloatField;
    CDSAnuladasUNIDADES: TFloatField;
    CDSAnuladasCOTIZACION: TFloatField;
    QCajaPorDefecto: TFDQuery;
    QFPago: TFDQuery;
    CDSFPagoCOTIZACION: TFloatField;
    CDSFPagoACUMULABLE: TStringField;
    QValores: TFDQuery;
    QEfectivo: TFDQuery;
    CDSEfectivoDEBE: TFloatField;
    CDSEfectivoHABER: TFloatField;
    CDSEfectivoCOTIZACION: TFloatField;
    CDSEfectivoUNIDADES: TFloatField;
    QCheques: TFDQuery;
    CDSChequesIMPORTE: TFloatField;
    QChe3Entregado: TFDQuery;
    CDSChe3EntrgadoIMPORTE: TFloatField;
    QMovTCCompra: TFDQuery;
    CDSMovTCCompraIMPORTE: TFloatField;
    QMovTCVenta: TFDQuery;
    CDSMovTCVentaIMPORTE: TFloatField;
    QCajas: TFDQuery;
    CDSCajasSALDO_INCIAL: TFloatField;
    QResumenvta: TFDQuery;
    CDSResumentVtaCANTIDAD: TFloatField;
    CDSResumentVtaTOTAL: TFloatField;
    QTxPendientes: TFDQuery;
    spCerrar_Caja: TFDStoredProc;
    CDSCajaDetEgresosID_ARQUEO_CAJA: TIntegerField;
    CDSCajaDetIngresosID_ARQUEO_CAJA: TIntegerField;
    QArqueoCab: TFDQuery;
    DSPArqueoCab: TDataSetProvider;
    CDSArqueoCab: TClientDataSet;
    DSArqueoCab: TDataSource;
    QArqueoDet: TFDQuery;
    DSPArqueoDet: TDataSetProvider;
    CDSArqueoDet: TClientDataSet;
    DSArqueoDet: TDataSource;
    CDSArqueoCabID: TIntegerField;
    CDSArqueoCabID_CAJA: TIntegerField;
    CDSArqueoCabID_CTA_CAJA: TIntegerField;
    CDSArqueoCabID_MOV_CAJA: TIntegerField;
    CDSArqueoCabSALDO_EFECTIVO: TFloatField;
    CDSArqueoCabSALDO_OTROS: TFloatField;
    CDSArqueoCabTOTAL_ARQUEO: TFloatField;
    CDSArqueoDetID_CAJA: TIntegerField;
    CDSArqueoDetID: TIntegerField;
    CDSArqueoDetID_CAB: TIntegerField;
    CDSArqueoDetID_TPAGO: TIntegerField;
    CDSArqueoDetDENOMINACIO: TIntegerField;
    CDSArqueoDetCANTIDAD: TIntegerField;
    CDSArqueoDetIMPORTE: TFloatField;
    CDSCajaCabFECHA_INCIO: TSQLTimeStampField;
    CDSCajaCabFECHA_CIERRE: TSQLTimeStampField;
    CDSDepositosFECHA_CAJA: TSQLTimeStampField;
    CDSDepositosFECHA_OPERACION: TSQLTimeStampField;
    CDSDepositosFECHA: TSQLTimeStampField;
    CDSRetencionesFECHA: TSQLTimeStampField;
    CDSRetencionesFECHARETENCION: TSQLTimeStampField;
    CDSChe3RecibidosFECHA_COBRO: TSQLTimeStampField;
    CDSTxRecibidasFECHA: TSQLTimeStampField;
    CDSTxGeneradasFECHA: TSQLTimeStampField;
    CDSDebitosFECHA: TSQLTimeStampField;
    CDSAnuladasFECHA_CAJA: TSQLTimeStampField;
    CDSAnuladasFECHA_OPERACION: TSQLTimeStampField;
    CDSArqueoCabFECHA_HORA: TSQLTimeStampField;
    CDSValoresFECHA: TSQLTimeStampField;
    CDSEfectivoFECHA: TSQLTimeStampField;
    CDSCajaDetEgresosFECHA: TSQLTimeStampField;
    CDSCajaDetIngresosFECHA: TSQLTimeStampField;
    CDSChequesFECHA_EMISION: TSQLTimeStampField;
    CDSChequesFECHA_COBRO: TSQLTimeStampField;
    CDSChe3EntrgadoFECHA_COBRO: TSQLTimeStampField;
    CDSMovTCCompraFECHA_COMPRA: TSQLTimeStampField;
    CDSMovTCCompraFECHA_CUPON: TSQLTimeStampField;
    CDSMovTCVentaFECHA: TSQLTimeStampField;
    CDSCajasFECHA_INCIO: TSQLTimeStampField;
    CDSCajasFECHA_CIERRE: TSQLTimeStampField;
    CDSResumentVtaFECHAVTA: TSQLTimeStampField;
    QEmitidosVta: TFDQuery;
    DSEmitidosVta: TDataSource;
    CDSEmitidosVta: TClientDataSet;
    DSPEmitidosVta: TDataSetProvider;
    CDSEmitidosVtaID_MOV_CAJA: TIntegerField;
    CDSEmitidosVtaFECHA_CAJA: TSQLTimeStampField;
    CDSEmitidosVtaFECHA_OPERACION: TSQLTimeStampField;
    CDSEmitidosVtaTIPO_COMPROB: TStringField;
    CDSEmitidosVtaCLASE_COMPROB: TStringField;
    CDSEmitidosVtaNRO_COMPROBANTE: TStringField;
    CDSEmitidosVtaDEBE: TFloatField;
    CDSEmitidosVtaHABER: TFloatField;
    CDSEmitidosVtaNROCPBTE: TStringField;
    CDSEmitidosVtaTOTAL: TFloatField;
    CDSEmitidosVtaNETO: TFloatField;
    CDSEmitidosVtaCOMANDA: TIntegerField;
    CDSCajaDetIngresosCODIGO_VC: TStringField;
    CDSCajaDetIngresosNOMBRE_VC: TStringField;
    DSPREcibos: TDataSetProvider;
    CDSRecibos: TClientDataSet;
    DSRecibos: TDataSource;
    CDSRecibosFECHA: TSQLTimeStampField;
    CDSRecibosID_COMPROBANTE: TIntegerField;
    CDSRecibosNRO_CPBTE: TStringField;
    CDSRecibosTIPO_CPBTE: TStringField;
    CDSRecibosCLASE_CPBTE: TStringField;
    CDSRecibosDETALLE: TStringField;
    CDSRecibosDEBE: TFloatField;
    CDSRecibosHABER: TFloatField;
    CDSRecibosTIPO_OPERACION: TStringField;
    CDSRecibosMUESTRA_TIPOOPERACION: TStringField;
    CDSRecibosID_ARQUEO_CAJA: TIntegerField;
    CDSRecibosCODIGO_VC: TStringField;
    CDSRecibosNOMBRE_VC: TStringField;
    spBorrarMov_Cpbte: TFDStoredProc;
    QBorrarCaja: TFDQuery;
    CDSResumentVtaDETALLE_RUBRO: TStringField;
    QFacturasVsCobro: TFDQuery;
    QFacturasVsCobroID_FC: TIntegerField;
    QFacturasVsCobroFECHAVTA: TSQLTimeStampField;
    QFacturasVsCobroNROCPBTE: TStringField;
    QFacturasVsCobroCODIGO: TStringField;
    QFacturasVsCobroNOMBRE: TStringField;
    QFacturasVsCobroTOTAL: TFloatField;
    QFacturasVsCobroPAGADO: TFloatField;
    DSFacVsCobro: TDataSource;
    DSpresuACobrar: TDataSource;
    CDSpresuACobrar: TClientDataSet;
    CDSpresuACobrarFECHAVTA: TSQLTimeStampField;
    CDSpresuACobrarNROCPBTE: TStringField;
    CDSpresuACobrarCODIGO: TStringField;
    CDSpresuACobrarCUIT: TStringField;
    CDSpresuACobrarTOTAL: TFloatField;
    CDSpresuACobrarANULADO: TStringField;
    CDSpresuACobrarTIPOCPBTE: TStringField;
    CDSpresuACobrarID_PR: TIntegerField;
    CDSpresuACobrarNOMBRE: TStringField;
    CDSpresuACobrarFACTURANRO: TStringField;
    CDSpresuACobrarNOMBRE_CUENTA: TStringField;
    DSPpresuACobrar: TDataSetProvider;
    QpresuACobrar: TFDQuery;
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSResumentVtaCalcFields(DataSet: TDataSet);
    procedure CDSCajaDetEgresosID_ARQUEO_CAJAGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CDSCajaDetIngresosID_ARQUEO_CAJAGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CDSEmitidosVtaCOMANDAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSpresuACobrarANULADOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DatosCaja: TDatosCaja;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TDatosCaja.CDSCajaDetEgresosID_ARQUEO_CAJAGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if CDSCajaDetEgresosID_ARQUEO_CAJA.Value>0 then
    Text:='*';

end;

procedure TDatosCaja.CDSCajaDetIngresosID_ARQUEO_CAJAGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if CDSCajaDetIngresosID_ARQUEO_CAJA.Value>0 then
    Text:='*';

end;

procedure TDatosCaja.CDSEmitidosVtaCOMANDAGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.AsInteger>0 then
    Text:='*'
  else
    Text:='';
end;

procedure TDatosCaja.CDSpresuACobrarANULADOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.AsString='A' then Text:='Acpetado'
  else
  if Sender.AsString='R' then Text:='Revision'
  else
  if Sender.AsString='V' then Text:='Vencido'
  else
  if Sender.AsString='S' then Text:='Anulado'
  else
  if Sender.AsString='C' then Text:='Cobrado';

end;

procedure TDatosCaja.CDSResumentVtaCalcFields(DataSet: TDataSet);
begin

  CDSResumentVtaTOTALCIVA_REC.AsFloat :=0;
  CDSResumentVtaTOTAL_REC.AsFloat     :=0;
  CDSResumentVtaCANTIDAD_REC.AsFloat  :=0;

  CDSResumentVtaTOTALCIVA_REC.AsFloat :=CDSResumentVtaTOTAL_CIVA.AsFloat;
  CDSResumentVtaTOTAL_REC.AsFloat     :=CDSResumentVtaTOTAL.AsFloat;
  if CDSResumentVtaCANTIDAD.AsString<>'' then
    CDSResumentVtaCANTIDAD_REC.AsFloat  :=CDSResumentVtaCANTIDAD.AsFloat
  else
    CDSResumentVtaCANTIDAD_REC.AsFloat  :=0;

  if CDSResumentVtaTIPOCPBTE.Value='NC' then
    begin
      CDSResumentVtaTOTALCIVA_REC.AsFloat := CDSResumentVtaTOTAL_CIVA.AsFloat*-1;
      CDSResumentVtaTOTAL_REC.AsFloat     := CDSResumentVtaTOTAL.AsFloat*-1;
      CDSResumentVtaCANTIDAD_REC.AsFloat  := CDSResumentVtaCANTIDAD.AsFloat*-1;
    end;

end;

procedure TDatosCaja.DataModuleDestroy(Sender: TObject);
begin
  DatosCaja:=nil;
end;

end.
