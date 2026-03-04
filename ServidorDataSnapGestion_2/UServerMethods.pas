unit UServerMethods;

interface

uses System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth, Midas,
  Data.FMTBcd, Data.DBXInterBase, Data.DB, Data.SqlExpr, IBGenerator, DBClient,
  Datasnap.Provider, IniFiles, VCL.Dialogs, DBXCommon, Variants, Contnrs,
  System.TypInfo;

type
  TServerMethods = class(TDSServerModule)
    QDeposito: TSQLQuery;
    QDepositoID: TIntegerField;
    QDepositoNOMBRE: TStringField;
    QDepositoSUCURSAL: TIntegerField;
    QDepositoCENTRALIZA_STOCK: TStringField;
    QCajaCab: TSQLQuery;
    QCajaCabID_CAJA: TIntegerField;
    DSPStock: TDataSetProvider;
    DSPDeposito: TDataSetProvider;
    QBuscaComprob: TSQLQuery;
    DSPBuscaComprob: TDataSetProvider;
    QListaPrecios: TSQLQuery;
    DSPBuscaDeposito: TDataSetProvider;
    QBuscaSucursal: TSQLQuery;
    QBuscaDeposito: TSQLQuery;
    DSPBuscaSucursal: TDataSetProvider;
    QStock: TSQLQuery;
    QPersonal: TSQLQuery;
    QPersonalCODIGO: TStringField;
    QPersonalNOMBRE: TStringField;
    QPersonalDOMICILIO: TStringField;
    QBuscaVendedores: TSQLQuery;
    QBuscaVendedoresCODIGO: TStringField;
    QBuscaVendedoresNOMBRE: TStringField;
    QBuscaVendedoresCOMISION: TFMTBCDField;
    DSPBuscaVendedor: TDataSetProvider;
    DSPListaPrecio: TDataSetProvider;
    QEmpleadoDefecto: TSQLQuery;
    DSPEmpleadoDefecto: TDataSetProvider;
    QListaCaja: TSQLQuery;
    DSPListaCaja: TDataSetProvider;
    spCerrarCaja: TSQLStoredProc;
    QFcVtaCab: TSQLQuery;
    QFcVtaCabID_FC: TIntegerField;
    QFcVtaCabTIPOCPBTE: TStringField;
    QFcVtaCabCLASECPBTE: TStringField;
    QFcVtaCabCODIGO: TStringField;
    QFcVtaCabNROCPBTE: TStringField;
    QFcVtaCabLETRAFAC: TStringField;
    QFcVtaCabSUCFAC: TStringField;
    QFcVtaCabNUMEROFAC: TStringField;
    QFcVtaCabNOMBRE: TStringField;
    QFcVtaCabRAZONSOCIAL: TStringField;
    QFcVtaCabDIRECCION: TStringField;
    QFcVtaCabCPOSTAL: TStringField;
    QFcVtaCabLOCALIDAD: TStringField;
    QFcVtaCabTIPOIVA: TIntegerField;
    QFcVtaCabCUIT: TStringField;
    QFcVtaCabLISTAPRECIO: TIntegerField;
    QFcVtaCabFECHAVTA: TSQLTimeStampField;
    QFcVtaCabFECHAVTO: TSQLTimeStampField;
    QFcVtaCabCONDICIONVTA: TIntegerField;
    QFcVtaCabANULADO: TStringField;
    QFcVtaCabNRORTO: TStringField;
    QFcVtaCabN_OPERACION2: TFMTBCDField;
    QFcVtaCabNETOGRAV1: TFMTBCDField;
    QFcVtaCabNETOGRAV2: TFMTBCDField;
    QFcVtaCabDSTO: TFMTBCDField;
    QFcVtaCabDSTOIMPORTE: TFMTBCDField;
    QFcVtaCabNETOEXEN1: TFMTBCDField;
    QFcVtaCabNETOEXEN2: TFMTBCDField;
    QFcVtaCabTOTAL: TFMTBCDField;
    QFcVtaCabDEBE: TFMTBCDField;
    QFcVtaCabIMPRESO: TStringField;
    QFcVtaCabOBSERVACION1: TStringField;
    QFcVtaCabOBSERVACION2: TStringField;
    QFcVtaCabCPTE_MANUAL: TStringField;
    QFcVtaCabSUCURSAL: TIntegerField;
    QFcVtaCabFACTURANRO: TStringField;
    QFcVtaCabZONA: TIntegerField;
    QFcVtaCabLDR: TIntegerField;
    QFcVtaCabDEPOSITO: TIntegerField;
    QFcVtaCabCALCULA_SOBRETASA: TStringField;
    QFcVtaCabDESGLOZAIVA: TStringField;
    QFcVtaCabNROENTREGA: TIntegerField;
    QFcVtaCabINGRESA_A_CTACTE: TStringField;
    QFcVtaCabINGRESA_LIBRO_IVA: TStringField;
    QFcVtaCabTIPO_REMITO: TStringField;
    QFcVtaCabIDREMITO: TIntegerField;
    QFcVtaCabREDUCIDA: TStringField;
    QFcVtaCabCOMSIONVENDEDOR: TFMTBCDField;
    QFcVtaCabLIQUIDADA: TStringField;
    QFcVtaCabFECHA_LIQUIDACION: TSQLTimeStampField;
    QFcVtaCabVENDEDOR: TStringField;
    QFcVtaCabUSUARIO: TStringField;
    QFcVtaCabNC_CONTADO: TStringField;
    QFcVtaCabCAJA_POR_DEFECTO: TIntegerField;
    QFcVtaCabNRO_Z: TIntegerField;
    QFcVtaCabVALORES_RECIBIDOS: TFMTBCDField;
    QFcVtaCabPERCEPCION_IB_TASA: TFMTBCDField;
    QFcVtaCabPERCEPCION_IB_IMPORTE: TFMTBCDField;
    QFcVtaCabPERCIBE_IB: TStringField;
    QFcVtaCabPERCEPCION_IB_BASEIMPONIBLE: TFMTBCDField;
    QFcVtaCabRENGLONES: TSmallintField;
    QFcVtaCabFECHA_HORA: TSQLTimeStampField;
    QFcVtaCabNOTAPEDIDO_ID: TIntegerField;
    QFcVtaCabNOTAPEDIDO_NROCPBTE: TStringField;
    QFcVtaCabID_FC_CLON: TIntegerField;
    QFcVtaCabPRESUPUESTO_ID: TIntegerField;
    QFcVtaCabPRESUPUESTO_NROCPBTE: TStringField;
    QFcVtaCabMONEDA_CPBTE: TIntegerField;
    QFcVtaCabMONEDA_CPBTE_COTIZACION: TFMTBCDField;
    QFcVtaCabPOR_CTA_Y_ORDEN: TStringField;
    QFcVtaCabPROVEEDOR: TStringField;
    QFcVtaCabTIPO_VTA: TStringField;
    QFcVtaCabID_RECEPCION_GTIA: TIntegerField;
    QFcVtaCabJURIDICION: TIntegerField;
    QFcVtaCabJURIDICION_LOCALIDAD: TIntegerField;
    QFcVtaCabID_TIPOCOMPROBANTE: TIntegerField;
    QFcVtaCabNUMERO_OPERACION: TStringField;
    QFcVtaCabMUESTRACONDVENTA: TStringField;
    QFcVtaCabMUESTRADEPOSITO: TStringField;
    QFcVtaCabMUESTRASUCURSAL: TStringField;
    QFcVtaCabMUESTRALDR: TStringField;
    QFcVtaCabMUESTRADIRECCIONLDR: TStringField;
    QFcVtaCabMUESTRAIVA: TStringField;
    QFcVtaCabMUESTRACOMPROBANTE: TStringField;
    QFcVtaCabMUESTRAVENDEDOR: TStringField;
    QFcVtaCabMUESTRAPROVEEDOR: TStringField;
    QFcVtaDet: TSQLQuery;
    QFcVtaDetID: TIntegerField;
    QFcVtaDetID_CABFAC: TIntegerField;
    QFcVtaDetTIPOCPBTE: TStringField;
    QFcVtaDetCLASECPBTE: TStringField;
    QFcVtaDetNROCPBTE: TStringField;
    QFcVtaDetRENGLON: TFMTBCDField;
    QFcVtaDetFECHAVTA: TSQLTimeStampField;
    QFcVtaDetCODIGOARTICULO: TStringField;
    QFcVtaDetDETALLE: TStringField;
    QFcVtaDetUNIDAD: TStringField;
    QFcVtaDetCANTIDAD: TFMTBCDField;
    QFcVtaDetDESGLOZAIVA: TStringField;
    QFcVtaDetMODO_GRAVAMEN: TStringField;
    QFcVtaDetIVA_TASA: TFMTBCDField;
    QFcVtaDetTIPOIVA_TASA: TIntegerField;
    QFcVtaDetIVA_SOBRETASA: TFMTBCDField;
    QFcVtaDetTIPOIVA_SOBRETASA: TIntegerField;
    QFcVtaDetDESCUENTO: TFMTBCDField;
    QFcVtaDetTOTAL: TFMTBCDField;
    QFcVtaDetDEPOSITO: TIntegerField;
    QFcVtaDetMARGEN: TFMTBCDField;
    QFcVtaDetAFECTA_STOCK: TStringField;
    QFcVtaDetCALCULA_SOBRETASA: TStringField;
    QFcVtaDetGRAVADO_IB: TStringField;
    QFcVtaDetCON_NRO_SERIE: TStringField;
    QFcVtaDetCON_CODIGO_BARRA: TStringField;
    QFcVtaDetIB_TASA: TFMTBCDField;
    QFcVtaDetTIPOIB_TASA: TIntegerField;
    QFcVtaDetLOTE: TIntegerField;
    QFcVtaDetPRECIO_EDITABLE: TStringField;
    QFcVtaDetID_MONEDA: TIntegerField;
    QFcVtaDetCOTIZACION: TFMTBCDField;
    QFcVtaDetDETALLE_ADICIONAL: TStringField;
    QFcVtaDetGRUPO_DETALLE: TIntegerField;
    QFcVtaDetCTA_ORDEN_ID_RECEPCION: TIntegerField;
    QFcVtaDetCTA_ORDEN_NROCPBTE: TStringField;
    QFcVtaDetCTA_ORDEN_TIPOCPBTE: TStringField;
    QFcVtaDetCTA_ORDEN_CALSECPBTE: TStringField;
    QFcVtaDetTOTAL_GRAVADO: TFMTBCDField;
    QFcVtaDetTOTAL_EXENTO: TFMTBCDField;
    QFcVtaDetUNIDADES_GRAVADO: TFloatField;
    QFcVtaDetUNIDADES_EXENTO: TFloatField;
    QFcVtaDetUNIDADES_TOTAL: TFloatField;
    QFcVtaDetMESES_GTIA: TIntegerField;
    QFcVtaDetCOSTO_GRAVADO: TFloatField;
    QFcVtaDetCOSTO_EXENTO: TFloatField;
    QFcVtaDetCOSTO_TOTAL: TFloatField;
    QFcVtaDetUNITARIO_GRAVADO: TFloatField;
    QFcVtaDetIVA_UNITARIO: TFloatField;
    QFcVtaDetUNITARIO_EXENTO: TFloatField;
    QFcVtaDetUNITARIO_TOTAL: TFloatField;
    QFcVtaDetIVA_TOTAL: TFMTBCDField;
    DSPFcVtaCab: TDataSetProvider;
    DSPFcVtaDet: TDataSetProvider;
    QFcVtaImp: TSQLQuery;
    QFcVtaImpID_IMPUESTO: TIntegerField;
    QFcVtaImpID_FCVTACAB: TIntegerField;
    QFcVtaImpCODIGO_GRAVAMEN: TIntegerField;
    QFcVtaImpDETALLE: TStringField;
    QFcVtaImpNETO: TFMTBCDField;
    QFcVtaImpTASA: TFMTBCDField;
    QFcVtaImpIMPORTE: TFMTBCDField;
    DSPFcVtaImp: TDataSetProvider;
    IBCabFac: TIBGenerator;
    IBGDetFac: TIBGenerator;
    IBGImpFac: TIBGenerator;
    QClientes: TSQLQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesCPOSTAL: TStringField;
    QClientesLOCALIDAD: TStringField;
    QClientesCONDICION_IVA: TIntegerField;
    QClientesNRO_DE_CUIT: TStringField;
    QClientesZONA: TIntegerField;
    QClientesNRODOCUMENTO: TStringField;
    QClientesID_FACTURAPORDEFECTO: TIntegerField;
    QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    QClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    QClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    QClientesID_TIKETPORDEFECTO: TIntegerField;
    QClientesSUCURSAL: TIntegerField;
    QClientesLISTAPRECIOS: TIntegerField;
    QIva: TSQLQuery;
    QIvaCODIGO: TIntegerField;
    QIvaDESCRIPCION: TStringField;
    QIvaTASA: TFMTBCDField;
    QIvaCOLUMNA: TSmallintField;
    spAgregaMovEfectivo: TSQLStoredProc;
    QBuscaStockCodigo: TSQLQuery;
    QBuscaCodigoBarra: TSQLQuery;
    QTraerRecargoDeLista: TSQLQuery;
    QTraerRecargoDeListaRECARGO: TFMTBCDField;
    QTraerRecargoDeListaPRECIO_GRAVADO: TFMTBCDField;
    QTraerRecargoDeListaPRECIO_EXENTO: TFMTBCDField;
    QTraerRecargoDeListaPRECIO: TFMTBCDField;
    QTraerRecargoDeListaIVA_IMPORTE: TFMTBCDField;
    QInscripcion: TSQLQuery;
    QInscripcionCODIGO: TIntegerField;
    QInscripcionDETALLE: TStringField;
    QInscripcionAPLICAPERCEPCIONIVA: TStringField;
    QInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    QInscripcionCOBRASOBRETASA: TStringField;
    QInscripcionDISCRIMINAIVA: TStringField;
    DSPInscripcion: TDataSetProvider;
    QComprob: TSQLQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QComprobREPORTE: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobFISCAL: TStringField;
    QComprobNOMBREIMPRESORA: TStringField;
    QComprobDESGLOZA_IVA: TStringField;
    QComprobLINEAS_DETALLE: TSmallintField;
    QComprobCALCULA_IVA_ARTICULOS: TStringField;
    QComprobNUMERARCION_PROPIA: TStringField;
    QComprobAFECTA_IVA: TStringField;
    QComprobAFECTA_CC: TStringField;
    QComprobantePorDefecto: TSQLQuery;
    QComprobantePorDefectoID_COMPROBANTE: TIntegerField;
    QCondVentaDefecto: TSQLQuery;
    QPrimerConVta: TSQLQuery;
    QCajadet: TSQLQuery;
    DSPCajaDetIngresos: TDataSetProvider;
    spAnular: TSQLStoredProc;
    QOpciones: TSQLQuery;
    QOpcionesVALOR: TStringField;
    spMarcarImpreso: TSQLStoredProc;
    QComprobanteReporte: TSQLQuery;
    QComprobanteReporteREPORTE: TStringField;
    DSPVtaSubDet: TDataSetProvider;
    QVtaSubDetalle: TSQLQuery;
    QVtaSubDetalleID: TIntegerField;
    QVtaSubDetalleID_DETFAC: TIntegerField;
    QVtaSubDetalleID_CABFAC: TIntegerField;
    QVtaSubDetalleTIPOCPBTE: TStringField;
    QVtaSubDetalleCLASECPBTE: TStringField;
    QVtaSubDetalleFECHA: TSQLTimeStampField;
    QVtaSubDetalleNROCPBTE: TStringField;
    QVtaSubDetalleCODIGOARTICULO: TStringField;
    QVtaSubDetalleSERIE: TStringField;
    QVtaSubDetalleDEPOSITO: TIntegerField;
    QVtaSubDetalleTIPO: TStringField;
    QTCredito: TSQLQuery;
    DSPTCredito: TDataSetProvider;
    QTCreditoCoef: TSQLQuery;
    DSPTCreditoCoef: TDataSetProvider;
    spAgregaMovTC: TSQLStoredProc;
    QClaseTC: TSQLQuery;
    DSPClaseTC: TDataSetProvider;
    DSPMovEfectivo: TDataSetProvider;
    QMovEfectivo: TSQLQuery;
    QMovEfectivoID_EFECTIVO: TIntegerField;
    QMovEfectivoID_CAJA: TIntegerField;
    QMovEfectivoID_MOV_CAJA: TIntegerField;
    QMovEfectivoID_FPAGO: TIntegerField;
    QMovEfectivoCOTIZACION: TFMTBCDField;
    QMovEfectivoUNIDADES: TFMTBCDField;
    QMovEfectivoIMPORTE: TFMTBCDField;
    QMovEfectivoID_CUENTA_CAJA: TIntegerField;
    QMovEfectivoMONEDA: TIntegerField;
    QMovTCredito: TSQLQuery;
    QMovTCreditoID_MOV_TC: TIntegerField;
    QMovTCreditoID_CAJA: TIntegerField;
    QMovTCreditoID_MOV_CAJA: TIntegerField;
    QMovTCreditoID_FPAGO: TIntegerField;
    QMovTCreditoID_TC: TIntegerField;
    QMovTCreditoFECHA: TSQLTimeStampField;
    QMovTCreditoTITULAR: TStringField;
    QMovTCreditoCAN_CUOTAS: TIntegerField;
    QMovTCreditoN_DOCU: TStringField;
    QMovTCreditoUNIDADES: TFMTBCDField;
    QMovTCreditoCOTIZACION: TFMTBCDField;
    QMovTCreditoIMPORTE: TFMTBCDField;
    QMovTCreditoOTROS: TStringField;
    QMovTCreditoMONEDA: TIntegerField;
    QMovTCreditoID_CUENTA_CAJA: TIntegerField;
    QMovTCreditoUNIDADES_NETO: TFMTBCDField;
    QMovTCreditoIMPORTE_NETO: TFMTBCDField;
    QMovTCreditoCOEFICIENTE: TFloatField;
    QMovTCreditoVALORCUOTA: TFMTBCDField;
    QMovTCreditoIMPORTE_RECARGO: TFMTBCDField;
    QMovTCreditoID_CUENTA_BANCO: TIntegerField;
    QMovTCreditoNRO_CUPON: TIntegerField;
    QMovTCreditoFECHA_ACREDITACION: TSQLTimeStampField;
    QMovTCreditoACREDITADA: TStringField;
    QMovTCreditoLOTE: TStringField;
    QMovTCreditoTERMINAL: TStringField;
    QMovTCreditoMUESTRATC: TStringField;
    DSPMovTCredito: TDataSetProvider;
    DSPCajaMov: TDataSetProvider;
    QCajaMov: TSQLQuery;
    QCajaMovID_MOV_CAJA: TIntegerField;
    QCajaMovID_CAJA: TIntegerField;
    QCajaMovFECHA_CAJA: TSQLTimeStampField;
    QCajaMovFECHA_OPERACION: TSQLTimeStampField;
    QCajaMovTIPO_OPERACION: TStringField;
    QCajaMovTIPO_COMPROB: TStringField;
    QCajaMovCLASE_COMPROB: TStringField;
    QCajaMovID_COMPROBANTE: TIntegerField;
    QCajaMovNRO_COMPROBANTE: TStringField;
    QCajaMovHABER: TFMTBCDField;
    QCajaMovDEBE: TFMTBCDField;
    QCajaMovID_TPAGO: TIntegerField;
    QCajaMovID_FPAGO: TIntegerField;
    QCajaMovUNIDADES: TFMTBCDField;
    QCajaMovCOTIZACION: TFMTBCDField;
    QCajaMovID_CUENTA_CAJA: TIntegerField;
    QCajaMovMONEDA: TIntegerField;
    QCajaMovID_FPAGOOLD: TIntegerField;
    QCajaMovMUESTRAFORMAPAGO: TStringField;
    QCajaMovMUESTRAIDCTACAJA: TIntegerField;
    QCajaMovMUESTRACAJA: TStringField;
    QCajaMovMUESTRANROCAJA: TIntegerField;
    QBuscaPLU: TSQLQuery;
    DSPPersonal: TDataSetProvider;
    DSPPrimerConVta: TDataSetProvider;
    DSPComprobantePorDefecto: TDataSetProvider;
    DSPCondVtaPorDefecto: TDataSetProvider;
    DSPBuscaCodgioBarra: TDataSetProvider;
    DSPBuscaStockCodigo: TDataSetProvider;
    DSPBuscaPLU: TDataSetProvider;
    DSPIva: TDataSetProvider;
    DSPOpciones: TDataSetProvider;
    DSPCajaCab: TDataSetProvider;
    DSPClientes: TDataSetProvider;
    DSPComprob: TDataSetProvider;
    DSPComprobanteReporte: TDataSetProvider;
    DSPTrarRecgoDeLista: TDataSetProvider;
    QExistencia: TSQLQuery;
    QArticulos: TSQLQuery;
    QRubro: TSQLQuery;
    DSPRubro: TDataSetProvider;
    DSPArticulos: TDataSetProvider;
    DSPExistencia: TDataSetProvider;
    spAperturaCaja: TSQLStoredProc;
    QBuscadorClientes: TSQLQuery;
    QBuscadorClientesCODIGO: TStringField;
    QBuscadorClientesNOMBRE: TStringField;
    QBuscadorClientesRAZON_SOCIAL: TStringField;
    DSPBuscadorClientes: TDataSetProvider;
    QNroComprobante: TSQLQuery;
    QNroComprobanteLETRA: TStringField;
    QNroComprobantePREFIJO: TStringField;
    QNroComprobanteDESGLOZA_IVA: TStringField;
    QNroComprobanteNUMERO: TStringField;
    QNroComprobanteVA_LIBRO_IVA: TStringField;
    QNroComprobanteCLASE_COMPROB: TStringField;
    QNroComprobanteTIPO_COMPROB: TStringField;
    QNroComprobanteCON_NUMERACION: TStringField;
    QNroComprobanteCOPIAS: TIntegerField;
    QNroComprobanteVA_CTACTE: TStringField;
    QNroComprobanteIMPRIME: TStringField;
    DSPNroComprobante: TDataSetProvider;
    DSPListaPrecioCab: TDataSetProvider;
    QListaPrecioCab: TSQLQuery;
    QListaPrecioCabID: TIntegerField;
    QListaPrecioCabNOMBRE: TStringField;
    QCajaMovMUESTRATARJETA: TStringField;
    spBorrarFc: TSQLStoredProc;
    QStock_Red: TSQLQuery;
    DSPStock_Reduc: TDataSetProvider;
    QStock_RedCODIGO_STK: TStringField;
    QStock_RedDETALLE_STK: TStringField;
    QStock_RedDETALLE_STK_ADICIONAL: TStringField;
    QStock_RedUNIDAD: TStringField;
    QStock_RedCOSTO_EXENTO_STK: TFMTBCDField;
    QStock_RedCOSTO_GRAVADO_STK: TFMTBCDField;
    QStock_RedCOSTO_TOTAL_STK: TFMTBCDField;
    QStock_RedMODO_GRAVAMEN: TStringField;
    QStock_RedTASA_IVA: TIntegerField;
    QStock_RedSOBRETASA_IVA: TIntegerField;
    QStock_RedCONTROLASTOCK: TStringField;
    QStock_RedGRAVADO_IB: TStringField;
    QStock_RedCONTROL_SERIE: TStringField;
    QStock_RedUSA_CODIGOBARRA: TStringField;
    QStock_RedEDITAPRECIO: TStringField;
    QStock_RedMONEDA: TIntegerField;
    QStock_RedMUESTRATASA: TStringField;
    QStock_RedMUESTRATASAPORCENTAJE: TFMTBCDField;
    QStock_RedMUESTRASOBRETASA: TStringField;
    QStock_RedMUESTRASOBRETASAPROCENTAJE: TFMTBCDField;
    QStock_RedMUESTRAPRECIO: TFloatField;
    QStock_RedMUESTRAPRECIOIVA: TFloatField;
    QStock_RedMUESTRATASAIIBB: TFMTBCDField;
    QStock_RedTASA_IB: TIntegerField;
    IBGId_Efectivo: TIBGenerator;
    IBGId_Caja_Mov: TIBGenerator;
    IBGId_TCredito: TIBGenerator;
    QCajaCabFECHA_INCIO: TSQLTimeStampField;
    QComprob_old: TSQLQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField1: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    SmallintField1: TSmallintField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    procedure DSServerModuleCreate(Sender: TObject);
    procedure DSServerModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Transaction: TDBXTransaction;
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function NextIdCabFac: Integer;
    function NextIdDetFac: Integer;
    function NextIdImpFac: Integer;
    function NextIdCajaMov: Integer;
    function NextIdMovEfec: Integer;
    function NextIdMovTc: Integer;

    function AperturaCaja(IdCaja: Integer; Fecha: TDateTime): Boolean;
    function CerrarCaja(IdCaja: Integer; Fecha: TDateTime): Boolean;
    // tuve que poner double , ya que no  me aceptaba Float,Real,Extneded...no da error pero no se publica el metodo... no se por que 20/10/2014
    function AgregaMovEfectivo(ID_CPBTE, ID_CUENTA_CAJA: Integer;
      TIPO_COMPROB, CLASE_COMPROB, NROCPBTE: string; Fecha: TDateTime;
      debe, haber: double; tipoop: String): Boolean;
    function AgregaMovTcredito(ID_CPBTE, ID_CUENTA_CAJA: Integer;
      TIPO_COMPROB, CLASE_COMPROB, NROCPBTE: string; Fecha: TDateTime;
      debe, haber: double; FPAGO, ID_TC, CUOTAS: Integer;
      TCredito, TCreditoNeto, TCuotaValor, TCCoeficiente,
      TCRecargo: double): Boolean;

    function Anular(id: Integer): Boolean;
    function Borrar(id: Integer): Boolean;
    function MarcarImpresa(id: Integer): Boolean;

    procedure IniciarTransaccion;
    procedure CommitTransaccion;
    procedure RollBackTransaccion;

    // procedure AplicarDelta(AProvider: OleVariant; var Delta : OleVariant; Local: Boolean);
    // function AplicarUpdates(var vDeltaArray, vProviderArray: OleVariant ;Local: Boolean):Boolean;

    function AllApplyUpdates(Delta: OleVariant): Boolean;
    // procedure AllapplyUpdates(Delta: OleVariant);
  end;

implementation

{$R *.dfm}
{$D+}

uses System.StrUtils,UserverContainer,
  generics.collections,uExceptions, uTDataSetHelper, uResourceString,
  uBasicLog;

type
  TArrayData = array [1 .. 10] of OleVariant;
  PArrayData = ^TArrayData;

procedure TServerMethods.DSServerModuleCreate(Sender: TObject);
var
  ArchivoIni: TIniFile;
  edPathBase: String;
  ConFirb: Boolean;
begin
  DebugLog('TServerMethods.DSServerModuleCreate');
  if Not(ConFirb) then
  BEGIN
    try
      ServerContainer.GestionPtoVta.Connected := True;
    except
      on e: Exception do
      begin
        ShowMessage('Verificar el Alias de la Base de Datos.....' + e.Message);
        ServerContainer.GestionPtoVta.Connected := False;
      end;
    end;
  END;
end;

procedure TServerMethods.DSServerModuleDestroy(Sender: TObject);
begin
  DebugLog('TServerMethods.DSServerModuleDestroy');
end;

function TServerMethods.NextIdCabFac: Integer;
begin
  Result := IBCabFac.IncrementIBX(1);
end;

function TServerMethods.NextIdDetFac: Integer;
begin
  Result := IBGDetFac.IncrementIBX(1);
end;

function TServerMethods.NextIdImpFac: Integer;
begin
  Result := IBGImpFac.IncrementIBX(1);
end;

function TServerMethods.NextIdCajaMov: Integer;
begin
  Result := IBGId_Caja_Mov.IncrementIBX(1);
end;

function TServerMethods.NextIdMovEfec: Integer;
begin
  Result := IBGId_Efectivo.IncrementIBX(1);
end;

function TServerMethods.NextIdMovTc: Integer;
begin
  Result := IBGId_TCredito.IncrementIBX(1);
end;

function TServerMethods.AperturaCaja(IdCaja: Integer; Fecha: TDateTime)
  : Boolean;
begin
  spAperturaCaja.Close;
  spAperturaCaja.Params.ParamByName('Fecha_Apertura').Value := Fecha;
  spAperturaCaja.Params.ParamByName('id_cta_caja').Value := IdCaja;
  Result := spAperturaCaja.ExecProc = 0;
  spAperturaCaja.Close;

end;

function TServerMethods.CerrarCaja(IdCaja: Integer; Fecha: TDateTime): Boolean;
begin
  spCerrarCaja.Close;
  spCerrarCaja.Params.ParamByName('Fecha').Value := Fecha;
  spCerrarCaja.Params.ParamByName('id_caja').Value := IdCaja;
  Result := spCerrarCaja.ExecProc = 0;
  spCerrarCaja.Close;
end;

function TServerMethods.AgregaMovEfectivo(ID_CPBTE, ID_CUENTA_CAJA: Integer;
  TIPO_COMPROB, CLASE_COMPROB, NROCPBTE: string; Fecha: TDateTime;
  debe, haber: double; tipoop: string): Boolean;
begin
  spAgregaMovEfectivo.Close;
  spAgregaMovEfectivo.Params.ParamByName('id_cpbte').AsInteger := ID_CPBTE;
  spAgregaMovEfectivo.Params.ParamByName('Tipo_Comprob').AsString :=
    TIPO_COMPROB;
  spAgregaMovEfectivo.Params.ParamByName('clase_comprob').AsString :=
    CLASE_COMPROB;
  spAgregaMovEfectivo.Params.ParamByName('NroCpbte').AsString := NROCPBTE;
  spAgregaMovEfectivo.Params.ParamByName('id_cuenta_caja').AsInteger :=
    ID_CUENTA_CAJA;
  spAgregaMovEfectivo.Params.ParamByName('Fecha_movimiento').AsDate := Fecha;
  spAgregaMovEfectivo.Params.ParamByName('haber').AsFloat := haber;
  spAgregaMovEfectivo.Params.ParamByName('debe').AsFloat := debe;
  spAgregaMovEfectivo.Params.ParamByName('tipooperacion').AsString := tipoop;
  Result := spAgregaMovEfectivo.ExecProc = 0;
  spAgregaMovEfectivo.Close;
end;

function TServerMethods.AgregaMovTcredito(ID_CPBTE, ID_CUENTA_CAJA: Integer;
  TIPO_COMPROB, CLASE_COMPROB, NROCPBTE: string; Fecha: TDateTime;
  debe, haber: double; FPAGO, ID_TC, CUOTAS: Integer;
  TCredito, TCreditoNeto, TCuotaValor, TCCoeficiente,
  TCRecargo: double): Boolean;
begin
  spAgregaMovTC.Close;
  spAgregaMovTC.Params.ParamByName('id_cpbte').AsInteger := ID_CPBTE;
  spAgregaMovTC.Params.ParamByName('Tipo_Comprob').AsString := TIPO_COMPROB;
  spAgregaMovTC.Params.ParamByName('clase_comprob').AsString := CLASE_COMPROB;
  spAgregaMovTC.Params.ParamByName('NroCpbte').AsString := NROCPBTE;
  spAgregaMovTC.Params.ParamByName('id_cuenta_caja').AsInteger :=
    ID_CUENTA_CAJA;
  spAgregaMovTC.Params.ParamByName('Fecha_movimiento').AsDate := Fecha;
  spAgregaMovTC.Params.ParamByName('debe').AsFloat := debe;
  spAgregaMovTC.Params.ParamByName('haber').AsFloat := haber;
  spAgregaMovTC.Params.ParamByName('tipooperacion').AsString := 'I';

  spAgregaMovTC.Params.ParamByName('FPago').AsInteger := FPAGO;
  spAgregaMovTC.Params.ParamByName('IDTC').AsInteger := ID_TC;
  spAgregaMovTC.Params.ParamByName('Cuotas').Value := CUOTAS;
  spAgregaMovTC.Params.ParamByName('Documento').AsString := '';
  spAgregaMovTC.Params.ParamByName('Unidades').AsFloat := TCredito;
  spAgregaMovTC.Params.ParamByName('Cotizacion').AsFloat := 1;
  spAgregaMovTC.Params.ParamByName('Moneda').Value := 1;
  spAgregaMovTC.Params.ParamByName('UnidadesNeto').AsFloat := TCreditoNeto;
  spAgregaMovTC.Params.ParamByName('ImporteNeto').AsFloat := TCreditoNeto;
  spAgregaMovTC.Params.ParamByName('Coeficiente').AsFloat := TCCoeficiente;
  spAgregaMovTC.Params.ParamByName('ValorCuota').AsFloat := TCuotaValor;
  spAgregaMovTC.Params.ParamByName('ImporteRecargo').AsFloat := TCRecargo;
  spAgregaMovTC.Params.ParamByName('Lote').AsString := '00000';
  spAgregaMovTC.Params.ParamByName('Terminal').AsString := '00000000';

  Result := spAgregaMovTC.ExecProc = 0;
  spAgregaMovTC.Close;

end;

function TServerMethods.Anular(id: Integer): Boolean;
begin
  spAnular.Close;
  spAnular.ParamByName('id').Value := id;
  Result := spAnular.ExecProc = 0;
  spAnular.Close;
end;

function TServerMethods.Borrar(id: Integer): Boolean;
begin
  spBorrarFc.Close;
  spBorrarFc.ParamByName('id').Value := id;
  Result := spBorrarFc.ExecProc = 0;
  spBorrarFc.Close;
end;

function TServerMethods.MarcarImpresa(id: Integer): Boolean;
begin
  IniciarTransaccion;
  Result:=False;
  try
    spMarcarImpreso.Close;
    spMarcarImpreso.ParamByName('id').Value := id;
    Result := spMarcarImpreso.ExecProc = 0;
    spMarcarImpreso.Close;
    CommitTransaccion;
  except
    RollBackTransaccion;
  end;

end;

function TServerMethods.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

procedure TServerMethods.IniciarTransaccion;
begin
  Transaction := ServerContainer.GestionPtoVta.BeginTransaction
    (TDBXIsolations.ReadCommitted);
end;

procedure TServerMethods.CommitTransaccion;
begin
  ServerContainer.GestionPtoVta.CommitFreeAndNil(Transaction);
end;

procedure TServerMethods.RollBackTransaccion;
begin
  ServerContainer.GestionPtoVta.RollbackFreeAndNil(Transaction);
end;

// procedure TServerMethods.AplicarDelta(AProvider: OleVariant; var Delta : OleVariant; Local: Boolean);
// var
// ErrCount : integer;
// OwnerData: OleVariant;
// begin
// if not VarIsNull(Delta) then
// begin
// if Local then
// Delta := (IDispatch(AProvider[0]) as IAppServer).AS_ApplyUpdates(AProvider[1], Delta, 0, ErrCount, OwnerData)
// else
// Delta := IAppServerDisp(IDispatch(AProvider[0])).AS_ApplyUpdates(AProvider[1], Delta, 0, ErrCount, OwnerData);
// if ErrCount > 0 then
// System.SysUtils.Abort; // Esto causa un Rollback
// end;
// end;
//
// function TServerMethods.AplicarUpdates(var vDeltaArray, vProviderArray: OleVariant;Local: Boolean):Boolean;
// var
// i : integer;
// LowArr, HighArr: integer;
// P: PArrayData;
// begin
// Result:=False;
// IniciarTransaccion;// MDCDSDB.BeginTrans;
// try
// LowArr:=VarArrayLowBound(vDeltaArray,1);
// HighArr:=VarArrayHighBound(vDeltaArray,1);
// P:=VarArrayLock(vDeltaArray);
// try
// for i:=LowArr to HighArr do
// AplicarDelta(vProviderArray[i], P^[i], Local);
// finally
// VarArrayUnlock(vDeltaArray);
// end;
// CommitTransaccion; //MDCDSDB.CommitTrans;
/// / ************** esto esta fuera del procedure
// Result:=True;
/// / ********************************************
// except
// RollBackTransaccion; //MDCDSDB.RollbackTrans;
// Result:=False;
// end;
// end;

// ********************************************************
// ********************************************************
// de Marcos Salles *************************************/
// ********************************************************
// ********************************************************
function TServerMethods.AllApplyUpdates(Delta: OleVariant): Boolean;
var
  Vtran: TDBXTransaction;
  Lista: TList<TClientDataSet>;
  cds: TClientDataSet;
  i: Integer;
  Arraydelta: array of OleVariant;
  TipoOperacion: String;
begin
  Result := False;
  if VarIsArray(Delta) then
    begin
      Arraydelta := Delta;
      Lista := TList<TClientDataSet>.Create;
      try
        i := 0;

        Vtran := ServerContainer.GestionPtoVta.BeginTransaction(TDBXIsolations.ReadCommitted);

        try
          while i <= High(Arraydelta) do
            begin
              cds := TClientDataSet.Create(self);
              With cds do
                begin
                  ProviderName := Arraydelta[i];
                  open;
                  i := i + 1;
                  Data := Arraydelta[i];
                  if not(ApplyUpdates(0) = 0)  then
                    begin
                      raise TAllApplyUpdatesError.Create(uResourceString.PrefixoErro +
                        ProviderName + sLineBreak + cds.enErro);
                    end;
                  i := i + 1;
                end;
              Lista.Add(cds);
            end;
          ServerContainer.GestionPtoVta.CommitFreeAndNil(Vtran);
          Result := True;
        except
          ServerContainer.GestionPtoVta.RollbackIncompleteFreeAndNil(Vtran);
          raise;
        end;

      finally
        begin
          for cds In Lista do
            cds.Free;
          Lista.Free;
        end;
      end;
    end;
end;

end.
