
unit DMMainForm_2;

interface

uses
  SysUtils,Classes, WideStrings, DB, FMTBcd,SqlExpr,DBXCommon, Dialogs, Windows,
  Provider, DBClient, Variants, Math, Forms,ShellApi,Controls,IniFiles, ADODB,
  Data.DBXInterBase,DateUtils,System.StrUtils, Data.DBXFirebird,ComObj;

type
  TDMMain_2 = class(TDataModule)
    SQLConectionMain: TSQLConnection;
    QSubRubro: TSQLQuery;
    QSubRubroCODIGO_SUBRUBRO: TStringField;
    QSubRubroCODIGO_RUBRO: TStringField;
    QSubRubroCONTROL_SUBRUBRO: TStringField;
    QSubRubroMUESTRARUBRO: TStringField;
    QSubRubroDETALLE_SUBRUBRO: TStringField;
    QStock: TSQLQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    QStockCODIGO_BARRAS: TStringField;
    QStockRUBRO_STK: TStringField;
    QStockSUBRUBRO_STK: TStringField;
    QStockMARCA_STK: TStringField;
    QStockTASA_IVA: TIntegerField;
    QStockSOBRETASA_IVA: TIntegerField;
    QStockCOSTO_EXENTO_STK: TFMTBCDField;
    QStockCOSTO_GRAVADO_STK: TFMTBCDField;
    QStockCOSTO_TOTAL_STK: TFMTBCDField;
    QStockREEMPLAZO_STK: TStringField;
    QStockFIJACION_PRECIO_GRAVADO: TFMTBCDField;
    QStockFIJACION_PRECIO_EXENTO: TFMTBCDField;
    QStockFIJACION_PRECIO_TOTAL: TFMTBCDField;
    QStockFUAP: TSQLTimeStampField;
    QStockUNIDAD: TStringField;
    QStockCONTROLASTOCK: TStringField;
    QStockCODIGO_PROVEEDOR: TStringField;
    QStockCLASE_ARTICULO: TIntegerField;
    QStockMODO_GRAVAMEN: TStringField;
    QStockCON_IMP_INT: TStringField;
    QStockIMPUESTO_INTERNOS: TFMTBCDField;
    QStockGRAVADO_IB: TStringField;
    QStockTASA_IB: TIntegerField;
    QStockACTUALIZACOSTO: TStringField;
    QStockDEPRODUCCION: TStringField;
    QStockPRODUCCIONDIRECTA: TStringField;
    QStockUNIDAD_COMPRA: TStringField;
    QStockCONTROL_SERIE: TStringField;
    QStockUSA_CODIGOBARRA: TStringField;
    QStockUNIDAD_ULTIMAUSADA: TStringField;
    QStockID_TABLAPRECIOS: TIntegerField;
    QStockID_TABLAPRECIOSDETALLE: TIntegerField;
    QStockCODIGO_PRECIO: TIntegerField;
    QStockFECHA_ALTA: TSQLTimeStampField;
    QStockCOSTO_GRAVADO_SOMBRA: TFMTBCDField;
    QStockCOSTO_EXENTO_SOMBRA: TFMTBCDField;
    QStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    QStockFECHA_ULTIMAVTA: TSQLTimeStampField;
    QStockMONEDA: TIntegerField;
    QStockCOSTO_GRAVADO_P: TFMTBCDField;
    QStockCOSTO_EXENTO_P: TFMTBCDField;
    QStockCOSTO_TOTAL_P: TFMTBCDField;
    QStockPOSICION: TStringField;
    QStockPRESENTACION_UNIDAD: TStringField;
    QStockPRESENTACION_CANTIDAD: TFMTBCDField;
    QStockEDITAPRECIO: TStringField;
    QStockEDITADETALLE: TStringField;
    QStockURL: TStringField;
    QStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    QStockMUESTRARUBRO: TStringField;
    QStockMUESTRASUBRUBRO: TStringField;
    QStockMUESTRAMARCA: TStringField;
    QStockMUESTRATASA: TStringField;
    QStockMUESTRATASAPORCENTAJE: TFMTBCDField;
    QStockMUESTRASOBRETASA: TStringField;
    QStockMUESTRASOBRETASAPROCENTAJE: TFMTBCDField;
    QStockMUESTRATASAIB: TFMTBCDField;
    QStockMUESTRATABLAPRECIODETALLE: TStringField;
    QStockMUESTRATABLAPRECIO1: TFMTBCDField;
    QStockMUESTRATABLAPRECIO2: TFMTBCDField;
    QDepositoStk: TSQLQuery;
    QDepositoStkID_DEPOSITO: TIntegerField;
    QDepositoStkCODIGO_DEPOSITO: TIntegerField;
    QDepositoStkCODIGO_STK: TStringField;
    QDepositoStkSUCURSAL: TIntegerField;
    QDepositoStkINICIAL: TFMTBCDField;
    QDepositoStkMINIMO: TFMTBCDField;
    QDepositoStkMEDIO: TFMTBCDField;
    QDepositoStkFISICO: TFMTBCDField;
    QDepositoStkRECARGO: TFMTBCDField;
    QDepositoStkFUAPRECIOS: TSQLTimeStampField;
    QDepositoStkMUESTRADEPOSITO: TStringField;
    QOpciones: TSQLQuery;
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
    QVtaDetalleConsig: TSQLQuery;
    QVtaDetalleConsigID: TIntegerField;
    QVtaDetalleConsigID_CABFAC: TIntegerField;
    QVtaDetalleConsigID_DETFAC: TIntegerField;
    QVtaDetalleConsigCODIGO: TStringField;
    QVtaDetalleConsigDETALLE: TStringField;
    QVtaDetalleConsigCANTIDAD: TFMTBCDField;
    QVtaDetalleConsigID_MOV_RECEPCION_CAB: TIntegerField;
    QVtaDetalleConsigID_MOV_RECEPCION_DET: TIntegerField;
    QVtaDetalleConsigLIQUIDADA: TStringField;
    QVtaDetalleConsigPRECIO_VTA: TFMTBCDField;
    QVtaDetalleConsigPRECIO_COMPRA: TFMTBCDField;
    QVtaDetalleConsigCODIGO_PROVEEDOR: TStringField;
    QVtaDetalleConsigMUESTRARECEPCIONNRO: TStringField;
    QCondVenta: TSQLQuery;
    QSucursal: TSQLQuery;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QSucursalDIRECCION: TStringField;
    QSucursalLOCALIDAD: TStringField;
    QSucursalTELEFONO1: TStringField;
    QSucursalTELEFONO2: TStringField;
    QSucursalRECARGO: TFMTBCDField;
    QSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    QLdr: TSQLQuery;
    QLdrCODIGO_CLIENTE: TStringField;
    QLdrCODIGO_LDR: TIntegerField;
    QLdrNOMBRE: TStringField;
    QLdrDIRECCION: TStringField;
    QLdrCPOSTAL: TStringField;
    QIva: TSQLQuery;
    QProveedores: TSQLQuery;
    QAjusteCab: TSQLQuery;
    QAjusteDet: TSQLQuery;
    QAjusteCabID_RTO: TIntegerField;
    QAjusteCabLETRA: TStringField;
    QAjusteCabSUCRTO: TStringField;
    QAjusteCabNUMRTO: TStringField;
    QAjusteCabSUCURSAL: TIntegerField;
    QAjusteCabNROCPBTE: TStringField;
    QAjusteCabTIPOCPBTE: TStringField;
    QAjusteCabCLASECPBTE: TStringField;
    QAjusteCabOBS: TStringField;
    QAjusteCabDEPOSITO: TIntegerField;
    QAjusteCabAJUSTE_CERO_STOCK: TStringField;
    QAjusteCabUSUARIO: TStringField;
    QAjusteCabFECHA_HORA: TSQLTimeStampField;
    QAjusteCabTOTAL: TFMTBCDField;
    QAjusteCabMUESTRACOMPROBANTE: TStringField;
    QAjusteCabID_TIPOCOMPROBANTE: TIntegerField;
    QAjusteCabMUESTRASUCURSAL: TStringField;
    QAjusteCabMUESTRADEPOSITO: TStringField;
    QAjusteDetID_RTO_DET: TIntegerField;
    QAjusteDetID_RTO_CAB: TIntegerField;
    QAjusteDetFECHA: TSQLTimeStampField;
    QAjusteDetCODIGO: TStringField;
    QAjusteDetDETALLE: TStringField;
    QAjusteDetUNIDAD: TStringField;
    QAjusteDetCANTIDAD: TFMTBCDField;
    QAjusteDetNROCPBTE: TStringField;
    QAjusteDetDEPOSITO: TIntegerField;
    QAjusteDetCLASECPBTE: TStringField;
    QAjusteDetTIPOCPBTE: TStringField;
    QAjusteDetAFECTASTOCK: TStringField;
    QAjusteDetSTOCK_ACTUAL_COMPRA: TFMTBCDField;
    QAjusteDetSTOCK_ACTUAL_VTA: TFMTBCDField;
    QAjusteDetCON_NRO_SERIE: TStringField;
    QAjusteDetCOSTO_UNITARIO: TFMTBCDField;
    QAjusteDetCOSTO_TOTAL: TFMTBCDField;
    QAjusteSubDetalle: TSQLQuery;
    QAjusteSubDetalleID: TIntegerField;
    QAjusteSubDetalleID_RTODET: TIntegerField;
    QAjusteSubDetalleID_RTOCAB: TIntegerField;
    QAjusteSubDetalleTIPOCPBTE: TStringField;
    QAjusteSubDetalleCLASECPBTE: TStringField;
    QAjusteSubDetalleFECHA: TSQLTimeStampField;
    QAjusteSubDetalleNROCPBTE: TStringField;
    QAjusteSubDetalleCODIGOARTICULO: TStringField;
    QAjusteSubDetalleSERIE: TStringField;
    QAjusteSubDetalleDEPOSITO: TIntegerField;
    QAjusteSubDetalleTIPO: TStringField;
    QEmpresa: TSQLQuery;
    QCondCompra: TSQLQuery;
    QProveedoresCODIGO: TStringField;
    QProveedoresNOMBRE: TStringField;
    QProveedoresRAZON_SOCIAL: TStringField;
    QProveedoresN_DE_CUENTA: TStringField;
    QProveedoresID_COD_POSTAL: TIntegerField;
    QProveedoresCOD_POSTAL: TStringField;
    QProveedoresLOCALIDAD: TStringField;
    QProveedoresDIRECCION: TStringField;
    QProveedoresTELEFONO_1: TStringField;
    QProveedoresTELEFONO_2: TStringField;
    QProveedoresCONDICION_IVA: TIntegerField;
    QProveedoresN_DE_CUIT: TStringField;
    QProveedoresACTIVO: TStringField;
    QProveedoresRETIENE_IVA: TStringField;
    QProveedoresRETIENE_IB: TStringField;
    QProveedoresRETIENE_GANANCIAS: TStringField;
    QProveedoresIVA_SERVICIOS: TStringField;
    QProveedoresPRECIOS_CON_IVA: TStringField;
    QProveedoresOBSERVACIONES: TMemoField;
    QProveedoresNOMBRE_REPRESENTANTE: TStringField;
    QProveedoresDIRECCION_REPRESENTANTE: TStringField;
    QProveedoresTELEFONO_REPRESENTANTE: TStringField;
    QProveedoresTIPO_PROVEEDOR: TStringField;
    QProveedoresFECHAULTIMACOMPRA: TSQLTimeStampField;
    QProveedoresFECHAALTA: TSQLTimeStampField;
    QProveedoresSALDO_INICIAL: TFMTBCDField;
    QProveedoresID_PERC_IVA: TIntegerField;
    QProveedoresID_PERC_IBB: TIntegerField;
    QProveedoresID_PERC_IBB_2: TIntegerField;
    QProveedoresRUBRO: TIntegerField;
    QProveedoresID_FACTURAPORDEFECTO: TIntegerField;
    QProveedoresEXENTO_GANACIA: TStringField;
    QProveedoresCODIGO_REGIMEN_RET_GANACIA: TIntegerField;
    QProveedoresEXENTO_RETENCION_IB: TStringField;
    QProveedoresID_TASA_RETENCION_IB: TIntegerField;
    QProveedoresNRO_IIBB: TStringField;
    QProveedoresCORREO: TStringField;
    QProveedoresCONV_MULTI: TStringField;
    QProveedoresMONEDA_PRECIOS: TIntegerField;
    QProveedoresTELEDISCADO: TStringField;
    QProveedoresDESPERIVA: TStringField;
    QProveedoresDESPERIB: TStringField;
    QProveedoresDESPERIB2: TStringField;
    QProveedoresMUESTRADETALLERETIIBB: TStringField;
    QProveedoresMUESTRATASARETIIBB: TFMTBCDField;
    QProveedoresMUESTRAMINIMPONIRETIIBB: TFMTBCDField;
    QPostal: TSQLQuery;
    QTasaPercepcioIva: TSQLQuery;
    QTasaPercepcioIvaCODIGO: TIntegerField;
    QTasaPercepcioIvaDESCRIPCION: TStringField;
    QTasaPercepcioIvaTASA: TFMTBCDField;
    QTasaPercepcioIvaMINIMOAPLICABLE: TFMTBCDField;
    QTasaPercepcioIvaCOLUMNA: TSmallintField;
    QTasaPercepcioIvaCODIGOREGIMEN: TIntegerField;
    QTasaPercepcioIB: TSQLQuery;
    QFPago: TSQLQuery;
    QFPagoCODIGO: TIntegerField;
    QFPagoDETALLE: TStringField;
    QFPagoDIAS: TIntegerField;
    QFPagoDESCUENTO: TFMTBCDField;
    QPersonal: TSQLQuery;
    QPersonalCARGO: TIntegerField;
    QPersonalCATEGORIA: TIntegerField;
    QPersonalCTACONTABLE: TIntegerField;
    QPersonalDOMICILIO: TStringField;
    QPersonalESTADO_CIVIL: TStringField;
    QPersonalNOMBRE: TStringField;
    QPersonalTELEFONO_2: TStringField;
    QPersonalMUESTRACARGO: TStringField;
    QPersonalMUESTRACATEGORIA: TStringField;
    QPersonalTELEFONO_1: TStringField;
    QPersonalLOCALIDAD: TIntegerField;
    QPersonalMUESTRALOCALIDAD: TStringField;
    QPersonalMUESTRACPOSTAL: TStringField;
    QPersonalCODIGO: TStringField;
    QPersonalAUTORIZAOC: TStringField;
    QPersonalSECTORDECOMPRA: TStringField;
    QPersonalCORREO: TStringField;
    QPersonalPOLITICACOMISION: TIntegerField;
    QPersonalMODODEPENDENCIA: TStringField;
    QPersonalVENDEDOR: TStringField;
    QPersonalCOBRADOR: TStringField;
    QPersonalACTIVO: TStringField;
    QPersonalFECHA_INGRESO: TSQLTimeStampField;
    QPersonalFECHA_NACIMIENTO: TSQLTimeStampField;
    QPersonalVALORHORA: TFMTBCDField;
    QPersonalCOMISION: TFMTBCDField;
    QCajaCab: TSQLQuery;
    QCajaCabID_CAJA: TIntegerField;
    QCajaCabID_CUENTA_CAJA: TIntegerField;
    QCajaCabFECHA_INCIO: TSQLTimeStampField;
    QCajaCabFECHA_CIERRE: TSQLTimeStampField;
    QCajaCabSALDO_INCIAL: TFMTBCDField;
    QCajaCabESTADO: TIntegerField;
    QCajaCabOBS: TMemoField;
    QCajaCabNUMEROCAJA: TIntegerField;
    QCajaCabMUESTRACTACAJA: TStringField;
    QFormaPago: TSQLQuery;
    QFormaPagoID_FPAGO: TIntegerField;
    QFormaPagoID_TPAGO: TIntegerField;
    QFormaPagoDESCRIPCION: TStringField;
    QFormaPagoCOTIZACION: TFMTBCDField;
    QFormaPagoSIGNO: TStringField;
    QFormaPagoMONEDA: TIntegerField;
    QChequera: TSQLQuery;
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
    QTarjetacredito_comp_borrar: TSQLQuery;
    QTarjetacredito_comp_borrarID: TIntegerField;
    QTarjetacredito_comp_borrarNRO_TARJETA: TStringField;
    QTarjetacredito_comp_borrarNOMBRE: TStringField;
    QTarjetacredito_comp_borrarID_BANCO: TIntegerField;
    QTarjetacredito_comp_borrarMONEDA: TIntegerField;
    QTarjetacredito_comp_borrarID_TCREDITO: TIntegerField;
    QTarjetacredito_comp_borrarMUESTRATARJETACREDITO: TStringField;
    QTarjetacredito_comp_borrarMUESTRACUIT: TStringField;
    QTarjetacredito_comp_borrarMUESTRABANCO: TStringField;
    QTarjetacredito_comp_borrarMUESTRARAZONSOCIAL: TStringField;
    QClientes: TSQLQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesDIRECCION_PARTICULAR: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesTELEFONO_PARTICULAR: TStringField;
    QClientesTELEFONO_COMERCIAL_1: TStringField;
    QClientesTELEFONO_COMERCIAL_2: TStringField;
    QClientesTELEFONO_CELULAR: TStringField;
    QClientesID_COD_POSTAL: TIntegerField;
    QClientesCPOSTAL: TStringField;
    QClientesLOCALIDAD: TStringField;
    QClientesCONDICION_IVA: TIntegerField;
    QClientesEMITE_REMITO: TStringField;
    QClientesEMITE_FACTURA: TStringField;
    QClientesNRO_DE_CUIT: TStringField;
    QClientesACTIVO: TStringField;
    QClientesLIMITE_CREDITO: TFMTBCDField;
    QClientesSALDOINICIAL: TFMTBCDField;
    QClientesOBSERVACIONES: TMemoField;
    QClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    QClientesFECHAALTA: TSQLTimeStampField;
    QClientesSUCURSAL: TIntegerField;
    QClientesZONA: TIntegerField;
    QClientesVENDEDOR: TStringField;
    QClientesULTIMOPAGO: TSQLTimeStampField;
    QClientesLISTAPRECIOS: TIntegerField;
    QClientesFECHANACIMIENTO: TSQLTimeStampField;
    QClientesTIPODOCUMENTO: TSmallintField;
    QClientesNRODOCUMENTO: TStringField;
    QClientesCORREOELECTRONICO: TStringField;
    QClientesID_FACTURAPORDEFECTO: TIntegerField;
    QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    QClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    QClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    QClientesID_TIKETPORDEFECTO: TIntegerField;
    QClientesPERCIBIR_IB: TStringField;
    QClientesINSCRIPTO_MULTICONVENIO: TStringField;
    QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    QClientesCONTACTO: TStringField;
    QClientesTELEFONO_CONTACTO: TStringField;
    QClientesCOBRADOR: TStringField;
    QClientesCATEGORIA: TIntegerField;
    QClientesLONGITUD: TStringField;
    QClientesLATITUD: TStringField;
    QClientesDIRECCION_CALLE: TStringField;
    QClientesDIRECCION_NUMERO: TStringField;
    QClientesDIRECCION_PISO: TStringField;
    QClientesDIRECCION_DEPTO: TStringField;
    QClientesDEUDAMAYOR30: TStringField;
    QClientesMUESTRATELEDISCADO: TStringField;
    QClientesMUESTRAVENDEDOR: TStringField;
    QClientesMUESTRACOBRADOR: TStringField;
    QPostalID_POSTAL: TIntegerField;
    QPostalCODIGO_POSTAL: TStringField;
    QPostalDETALLE_POSTAL: TStringField;
    QPostalTELEDISCADO: TStringField;
    QPostalPROVINCIA: TIntegerField;
    QPostalMUESTRAPROVINCIA: TStringField;
    QCompraCab: TSQLQuery;
    QCompraCabID_FC: TIntegerField;
    QCompraCabTIPOCPBTE: TStringField;
    QCompraCabCLASECPBTE: TStringField;
    QCompraCabNROCPBTE: TStringField;
    QCompraCabCODIGO: TStringField;
    QCompraCabLETRAFAC: TStringField;
    QCompraCabSUCFAC: TStringField;
    QCompraCabNUMEROFAC: TStringField;
    QCompraCabNOMBRE: TStringField;
    QCompraCabRAZONSOCIAL: TStringField;
    QCompraCabDIRECCION: TStringField;
    QCompraCabCPOSTAL: TStringField;
    QCompraCabLOCALIDAD: TStringField;
    QCompraCabTIPOIVA: TIntegerField;
    QCompraCabCUIT: TStringField;
    QCompraCabFECHACOMPRA: TSQLTimeStampField;
    QCompraCabFECHAVTO: TSQLTimeStampField;
    QCompraCabCONDICIONCOMPRA: TIntegerField;
    QCompraCabANULADO: TStringField;
    QCompraCabORDENCOMPRA: TStringField;
    QCompraCabN_OPERACION2: TFMTBCDField;
    QCompraCabNETOGRAV1: TFMTBCDField;
    QCompraCabDSTO: TFMTBCDField;
    QCompraCabDSTOIMPORTE: TFMTBCDField;
    QCompraCabNETOGRAV2: TFMTBCDField;
    QCompraCabNETOEXEN1: TFMTBCDField;
    QCompraCabNETOEXEN2: TFMTBCDField;
    QCompraCabIMPORTEEXCLUIDO2: TFMTBCDField;
    QCompraCabIMPORTEEXCLUIDO1: TFMTBCDField;
    QCompraCabTOTAL: TFMTBCDField;
    QCompraCabDEBE: TFMTBCDField;
    QCompraCabAPLICA: TStringField;
    QCompraCabOBSERVACION1: TStringField;
    QCompraCabOBSERVACION2: TStringField;
    QCompraCabSUCURSALCOMPRA: TIntegerField;
    QCompraCabZONA: TIntegerField;
    QCompraCabDEPOSITO: TIntegerField;
    QCompraCabDESGLOZAIVA: TStringField;
    QCompraCabCALCULA_SOBRETASA: TStringField;
    QCompraCabFECHAFISCAL: TSQLTimeStampField;
    QCompraCabNETOMONOTRIBUTO1: TFMTBCDField;
    QCompraCabNETOMONOTRIBUTO2: TFMTBCDField;
    QCompraCabCPBTE_INTERNO: TStringField;
    QCompraCabINGRESA_A_CTACTE: TStringField;
    QCompraCabINGRESA_LIBRO_IVA: TStringField;
    QCompraCabREDUCIDA: TStringField;
    QCompraCabTIPO_PROVEEDOR: TStringField;
    QCompraCabJURIDICCION: TIntegerField;
    QCompraCabPERCEPCION_IB_BASEIMPONIBLE: TFMTBCDField;
    QCompraCabFECHA_HORA: TSQLTimeStampField;
    QCompraCabUSUARIO: TStringField;
    QCompraCabTOTAL_UNIDADES: TFMTBCDField;
    QCompraCabMONEDA_CPBTE: TIntegerField;
    QCompraCabMONEDA_CPBTE_COTIZACION: TFMTBCDField;
    QCompraCabMUESTRACONDCOMPRA: TStringField;
    QCompraCabMUESTRADEPOSITO: TStringField;
    QCompraCabMUESTRASUCURSAL: TStringField;
    QCompraCabMUESTRACOMPROBANTE: TStringField;
    QCompraCabID_TIPOCOMPROBANTE: TIntegerField;
    QCompraCabMUESTRAMONEDACPBTE: TStringField;
    QCompraCabMUESTRASIGNOMONEDACPBTE: TStringField;
    QComprobantePorDefecto: TSQLQuery;
    QComprobantePorDefectoID_COMPROBANTE: TIntegerField;
    QCompraDet: TSQLQuery;
    QCompraDetID: TIntegerField;
    QCompraDetID_CABFAC: TIntegerField;
    QCompraDetTIPOCPBTE: TStringField;
    QCompraDetCLASECPBTE: TStringField;
    QCompraDetNROCPBTE: TStringField;
    QCompraDetCODIGOPROVEEDOR: TStringField;
    QCompraDetRENGLON: TFMTBCDField;
    QCompraDetFECHACOMPRA: TSQLTimeStampField;
    QCompraDetCODIGOARTICULO: TStringField;
    QCompraDetDETALLE: TStringField;
    QCompraDetUNIDAD: TStringField;
    QCompraDetCANTIDAD: TFMTBCDField;
    QCompraDetDESGLOZAIVA: TStringField;
    QCompraDetMODO_GRAVAMEN: TStringField;
    QCompraDetIVA_TASA: TFMTBCDField;
    QCompraDetTIPOIVA_TASA: TIntegerField;
    QCompraDetIVA_SOBRETASA: TFMTBCDField;
    QCompraDetTIPOIVA_SOBRETASA: TIntegerField;
    QCompraDetDESCUENTO: TFMTBCDField;
    QCompraDetTOTAL: TFMTBCDField;
    QCompraDetDEPOSITO: TIntegerField;
    QCompraDetMARGEN: TFMTBCDField;
    QCompraDetAFECTA_STOCK: TStringField;
    QCompraDetCALCULA_SOBRETASA: TStringField;
    QCompraDetCOSTO_IMP_INTERNO: TFMTBCDField;
    QCompraDetUNIDADES_IMP_INTERNOS: TFMTBCDField;
    QCompraDetUNITARIO_IMP_INTERNO: TFMTBCDField;
    QCompraDetCON_NRO_SERIE: TStringField;
    QCompraDetID_RECEPCION_CAB: TIntegerField;
    QCompraDetID_RECEPCION_DET: TIntegerField;
    QCompraDetNRORECEPCION: TStringField;
    QCompraDetGRAVADO_IB: TStringField;
    QCompraDetID_MONEDA: TIntegerField;
    QCompraDetCOTIZACION: TFMTBCDField;
    QCompraDetMUESTRAMONEDA: TStringField;
    QCondPago: TSQLQuery;
    QCondPagoID: TIntegerField;
    QCondPagoID_FC: TIntegerField;
    QCondPagoTIPOCPBTE: TStringField;
    QCondPagoNROCPBTE: TStringField;
    QCondPagoCODIGO: TStringField;
    QCondPagoITEM: TIntegerField;
    QCondPagoFECHA: TSQLTimeStampField;
    QCondPagoDSCTO: TFMTBCDField;
    QCondPagoIMPORTE: TFMTBCDField;
    QCondPagoCLASECPBTE: TStringField;
    QImpuestosComp: TSQLQuery;
    QImpuestosCompID_IMPUESTO: TIntegerField;
    QImpuestosCompCODIGO_GRAVAMEN: TIntegerField;
    QImpuestosCompDETALLE: TStringField;
    QImpuestosCompID_FCCOMPCAB: TIntegerField;
    QImpuestosCompNETO: TFMTBCDField;
    QImpuestosCompTASA: TFMTBCDField;
    QImpuestosCompIMPORTE: TFMTBCDField;
    QPercepcionIva: TSQLQuery;
    QPercepcionIB: TSQLQuery;
    QPercepcionIvaID_PERCEPCION: TIntegerField;
    QPercepcionIvaCODIGO_PERCEPCION: TIntegerField;
    QPercepcionIvaDETALLE: TStringField;
    QPercepcionIvaID_FCCOMPCAB: TIntegerField;
    QPercepcionIvaNETO: TFMTBCDField;
    QPercepcionIvaTASA: TFMTBCDField;
    QPercepcionIvaIMPORTE: TFMTBCDField;
    QPercepcionIvaCODIGOREGIMEN: TIntegerField;
    QPercepcionIBID_PERCEPCION: TIntegerField;
    QPercepcionIBCODIGO_PERCEPCION: TIntegerField;
    QPercepcionIBDETALLE: TStringField;
    QPercepcionIBID_FCCOMPCAB: TIntegerField;
    QPercepcionIBNETO: TFMTBCDField;
    QPercepcionIBTASA: TFMTBCDField;
    QPercepcionIBIMPORTE: TFMTBCDField;
    QPercepcionIBJURIDICION: TIntegerField;
    QCompSubDetalle: TSQLQuery;
    QDepositoPorSucursal: TSQLQuery;
    QDepositoPorSucursalDEPOSITO: TIntegerField;
    QLdrCliente: TSQLQuery;
    QLdrClienteCODIGO_CLIENTE: TStringField;
    QLdrClienteCODIGO_LDR: TIntegerField;
    QLdrClienteNOMBRE: TStringField;
    QLdrClienteDIRECCION: TStringField;
    QLdrClienteCPOSTAL: TStringField;
    QClientesTIPOABONO: TStringField;
    QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    QClientesMES_ABONOANUAL: TIntegerField;
    QRecibo: TSQLQuery;
    QReciboID_RC: TIntegerField;
    QReciboTIPOCPBTE: TStringField;
    QReciboCLASECPBTE: TStringField;
    QReciboNROCPBTE: TStringField;
    QReciboCODIGO: TStringField;
    QReciboLETRARC: TStringField;
    QReciboSUCRC: TStringField;
    QReciboNUMERORC: TStringField;
    QReciboNOMBRE: TStringField;
    QReciboRAZONSOCIAL: TStringField;
    QReciboDIRECCION: TStringField;
    QReciboCPOSTAL: TStringField;
    QReciboLOCALIDAD: TStringField;
    QReciboTIPOIVA: TIntegerField;
    QReciboCUIT: TStringField;
    QReciboFECHA: TSQLTimeStampField;
    QReciboANULADO: TStringField;
    QReciboVENDEDOR: TStringField;
    QReciboSALDO_APLICAR: TFMTBCDField;
    QReciboIMPRESO: TStringField;
    QReciboOBSERVACION1: TStringField;
    QReciboOBSERVACION2: TStringField;
    QReciboSUCURSAL: TIntegerField;
    QReciboZONA: TIntegerField;
    QReciboTOTAL_NETO: TFMTBCDField;
    QReciboPORCENTAJE_DSCTO: TFMTBCDField;
    QReciboIMPORTE_DSCTO: TFMTBCDField;
    QReciboTOTAL: TFMTBCDField;
    QReciboUSUARIO: TStringField;
    QReciboFECHA_HORA: TSQLTimeStampField;
    QReciboCPBTE_MANUAL: TStringField;
    QReciboNC_ID: TIntegerField;
    QReciboNC_TIPOCPBTE: TStringField;
    QReciboNC_CLASECPBTE: TStringField;
    QReciboNC_NROCOMPROB: TStringField;
    QReciboN_OPERACION2: TFMTBCDField;
    QReciboMUESTRASUCURSAL: TStringField;
    QReciboMUESTRACOMPROBANTE: TStringField;
    QReciboID_TIPOCOMPROBANTE: TIntegerField;
    QReciboMUESTRAVENDEDOR: TStringField;
    QReciboMUESTRAIVA: TStringField;
    QMovAplicaCCVta: TSQLQuery;
    QMovAplicaCCVtaID_MOV: TIntegerField;
    QMovAplicaCCVtaID_MOVCCVTA: TIntegerField;
    QMovAplicaCCVtaFECHA: TSQLTimeStampField;
    QMovAplicaCCVtaCLIENTE: TStringField;
    QMovAplicaCCVtaID_CPBTE: TIntegerField;
    QMovAplicaCCVtaTIPOCPBTE: TStringField;
    QMovAplicaCCVtaCLASECPBTE: TStringField;
    QMovAplicaCCVtaNUMEROCPBTE: TStringField;
    QMovAplicaCCVtaIMPORTE: TFMTBCDField;
    QMovAplicaCCVtaAPLICA_ID_CPBTE: TIntegerField;
    QMovAplicaCCVtaAPLICA_TIPOCPBTE: TStringField;
    QMovAplicaCCVtaAPLICA_CLASECPBTE: TStringField;
    QMovAplicaCCVtaAPLICA_NROCPBTE: TStringField;
    QMovAplicaCCVtaDETALLE: TStringField;
    QMovAplicaCCVtaCONCILIADO: TStringField;
    QMovAplicaCCVtaMUESTRAFECHACPBTE: TSQLTimeStampField;
    QMovAplicaCCVtaMUESTRATOTALFC: TFMTBCDField;
    QMovCCVta: TSQLQuery;
    QMovCCVtaID_MOVCCVTA: TIntegerField;
    QMovCCVtaID_CPBTE: TIntegerField;
    QMovCCVtaCLIENTE: TStringField;
    QMovCCVtaFECHAVTA: TSQLTimeStampField;
    QMovCCVtaFECHAVTO: TSQLTimeStampField;
    QMovCCVtaTIPOCPBTE: TStringField;
    QMovCCVtaCLASECPBTE: TStringField;
    QMovCCVtaNROCPBTE: TStringField;
    QMovCCVtaDEBE: TFMTBCDField;
    QMovCCVtaHABER: TFMTBCDField;
    QMovCCVtaSALDO: TFMTBCDField;
    QMovCCVtaDETALLE: TStringField;
    QMovCCVtaMUESTRAAPAGAR: TFMTBCDField;
    QTRetencion: TSQLQuery;
    QTRetencionID_RETENCION: TIntegerField;
    QTRetencionDETALLE: TStringField;
    QTRetencionTIPO: TSmallintField;
    QStock_EditDetalle: TSQLQuery;
    QTasaPercep_Retencion_IIBB: TSQLQuery;
    QTasaPercep_Retencion_IIBBCUIT: TStringField;
    QTasaPercep_Retencion_IIBBTASA_PERCEPCION: TFMTBCDField;
    QTasaPercep_Retencion_IIBBTASA_RETENCION: TFMTBCDField;
    QGrupoCpbteComp: TSQLQuery;
    QGrupoCpbteCompID_CAB: TIntegerField;
    QOrdenCompCab: TSQLQuery;
    QOrdenCompCabID_OC: TIntegerField;
    QOrdenCompCabTIPOCPBTE: TStringField;
    QOrdenCompCabCLASECPBTE: TStringField;
    QOrdenCompCabNROCPBTE: TStringField;
    QOrdenCompCabCODIGO: TStringField;
    QOrdenCompCabLETRA: TStringField;
    QOrdenCompCabSUC: TStringField;
    QOrdenCompCabNUMERO: TStringField;
    QOrdenCompCabNOMBRE: TStringField;
    QOrdenCompCabRAZONSOCIAL: TStringField;
    QOrdenCompCabDIRECCION: TStringField;
    QOrdenCompCabCPOSTAL: TStringField;
    QOrdenCompCabLOCALIDAD: TStringField;
    QOrdenCompCabTIPOIVA: TIntegerField;
    QOrdenCompCabCUIT: TStringField;
    QOrdenCompCabFECHA: TSQLTimeStampField;
    QOrdenCompCabFECHAVTO: TSQLTimeStampField;
    QOrdenCompCabCONDICIONCOMPRA: TIntegerField;
    QOrdenCompCabANULADO: TStringField;
    QOrdenCompCabN_OPERACION2: TFMTBCDField;
    QOrdenCompCabNETOGRAV1: TFMTBCDField;
    QOrdenCompCabNETOGRAV2: TFMTBCDField;
    QOrdenCompCabDSTO: TFMTBCDField;
    QOrdenCompCabDSTOIMPORTE: TFMTBCDField;
    QOrdenCompCabNETOEXEN1: TFMTBCDField;
    QOrdenCompCabNETOEXEN2: TFMTBCDField;
    QOrdenCompCabIMPORTEEXCLUIDO1: TFMTBCDField;
    QOrdenCompCabIMPORTEEXCLUIDO2: TFMTBCDField;
    QOrdenCompCabNETOMONOTRIBUTO1: TFMTBCDField;
    QOrdenCompCabNETOMONOTRIBUTO2: TFMTBCDField;
    QOrdenCompCabTOTAL: TFMTBCDField;
    QOrdenCompCabIMPRESO: TStringField;
    QOrdenCompCabSUCURSAL: TIntegerField;
    QOrdenCompCabDEPOSITO: TIntegerField;
    QOrdenCompCabAUTORIZO: TStringField;
    QOrdenCompCabREALIZO: TStringField;
    QOrdenCompCabCALCULA_SOBRETASA: TStringField;
    QOrdenCompCabDESGLOZAIVA: TStringField;
    QOrdenCompCabESTADO: TStringField;
    QOrdenCompCabFECHAAUTORIZACION: TSQLTimeStampField;
    QOrdenCompCabFECHACUMPLIDA: TSQLTimeStampField;
    QOrdenCompCabOBSERVACIONES: TMemoField;
    QOrdenCompCabNOTAS: TStringField;
    QOrdenCompCabUSUARIO: TStringField;
    QOrdenCompCabTRANSPORTE: TIntegerField;
    QOrdenCompCabTIPO: TSmallintField;
    QOrdenCompCabTIPO_PROVEEDOR: TStringField;
    QOrdenCompCabID_PRESUPUESTO_OC: TIntegerField;
    QOrdenCompCabTELEFONOS: TStringField;
    QOrdenCompCabMUESTRACONDCOMPRA: TStringField;
    QOrdenCompCabMUESTRADEPOSITO: TStringField;
    QOrdenCompCabMUESTRASUCURSAL: TStringField;
    QOrdenCompCabMUESTRACOMPROBANTE: TStringField;
    QOrdenCompCabID_TIPOCOMPROBANTE: TIntegerField;
    QOrdenCompCabMUESTRAREALIZO: TStringField;
    QOrdenCompCabMUESTRAAUTORIZO: TStringField;
    QOrdenCompCabMUESTRANUMEROPRESOC: TStringField;
    QOrdenCompCabMUESTRAID_PRESOC: TIntegerField;
    QOrdenCompDet: TSQLQuery;
    QOrdenCompDetID: TIntegerField;
    QOrdenCompDetID_CABOC: TIntegerField;
    QOrdenCompDetTIPOCPBTE: TStringField;
    QOrdenCompDetCLASECPBTE: TStringField;
    QOrdenCompDetNROCPBTE: TStringField;
    QOrdenCompDetRENGLON: TFMTBCDField;
    QOrdenCompDetFECHA: TSQLTimeStampField;
    QOrdenCompDetCODIGOARTICULO: TStringField;
    QOrdenCompDetDETALLE: TStringField;
    QOrdenCompDetUNIDAD: TStringField;
    QOrdenCompDetCANTIDADPEDIDA: TFMTBCDField;
    QOrdenCompDetCANTIDADAUTORIZADA: TFMTBCDField;
    QOrdenCompDetCANTIDADRECIBIDA: TFMTBCDField;
    QOrdenCompDetUNITARIO_TOTAL: TFMTBCDField;
    QOrdenCompDetUNITARIO_GRAVADO: TFMTBCDField;
    QOrdenCompDetUNITARIO_EXENTO: TFMTBCDField;
    QOrdenCompDetDESGLOZAIVA: TStringField;
    QOrdenCompDetIVA_TASA: TFMTBCDField;
    QOrdenCompDetTIPOIVA_TASA: TIntegerField;
    QOrdenCompDetIVA_SOBRETASA: TFMTBCDField;
    QOrdenCompDetTIPOIVA_SOBRETASA: TIntegerField;
    QOrdenCompDetSUCURSAL: TIntegerField;
    QOrdenCompDetDEPOSITO: TIntegerField;
    QOrdenCompDetCALCULA_SOBRETASA: TStringField;
    QOrdenCompDetMODO_GRAVAMEN: TStringField;
    QOrdenCompDetTOTAL: TFMTBCDField;
    QOrdenCompDetID_COMP_REC: TIntegerField;
    QOrdenCompDetTIPO_COMP_REC: TStringField;
    QOrdenCompDetCLASE_COMP_REC: TStringField;
    QOrdenCompDetNRO_COMP_REC: TStringField;
    QImpuestoOrdenComp: TSQLQuery;
    QImpuestoOrdenCompID_IMPUESTO: TIntegerField;
    QImpuestoOrdenCompCODIGO_GRAVAMEN: TIntegerField;
    QImpuestoOrdenCompDETALLE: TStringField;
    QImpuestoOrdenCompID_OCCAB: TIntegerField;
    QImpuestoOrdenCompNETO: TFMTBCDField;
    QImpuestoOrdenCompTASA: TFMTBCDField;
    QImpuestoOrdenCompIMPORTE: TFMTBCDField;
    QOrdenCompVtos: TSQLQuery;
    QOrdenCompVtosID: TIntegerField;
    QOrdenCompVtosID_OCCAB: TIntegerField;
    QOrdenCompVtosDIAS: TSmallintField;
    QOrdenCompVtosFECHA_VENCIMIEMTO: TSQLTimeStampField;
    QOrdenCompVtosIMPORTE: TFMTBCDField;
    QCondCompraCODIGOPROVEE: TStringField;
    QCondCompraCODIGOPAGO: TIntegerField;
    QCondCompraDESCUENTO: TFMTBCDField;
    QCondCompraDETALLE: TStringField;
    QCondCompraDIAS: TIntegerField;
    QCondCompraDESCUENTO_FPAGO: TFMTBCDField;
    QCondVentaCli: TSQLQuery;
    QCondCompraProv: TSQLQuery;
    QCondCompraProvCODIGOPROVEE: TStringField;
    QCondCompraProvCODIGOPAGO: TIntegerField;
    QCondCompraProvDESCUENTO: TFMTBCDField;
    QCondCompraProvDETALLE: TStringField;
    QCondCompraProvDIAS: TIntegerField;
    QCondCompraProvDESCUENTO_FPAGO: TFMTBCDField;
    QCondVentaCliCODIGOCLIENTE: TStringField;
    QCondVentaCliCODIGOPAGO: TIntegerField;
    QCondVentaCliDESCUENTO: TFMTBCDField;
    QCondVentaCliPOR_DEFECTO: TStringField;
    QCondVentaCliDETALLE: TStringField;
    QCondVentaCliDIAS: TIntegerField;
    QCondVentaCliDESCUENTO_FPAGO: TFMTBCDField;
    QRtoObraDet: TSQLQuery;
    QRtoObraDetID: TIntegerField;
    QRtoObraDetID_CABRTO: TIntegerField;
    QRtoObraDetTIPOCPBTE: TStringField;
    QRtoObraDetCLASECPBTE: TStringField;
    QRtoObraDetNROCPBTE: TStringField;
    QRtoObraDetRENGLON: TFMTBCDField;
    QRtoObraDetFECHA: TSQLTimeStampField;
    QRtoObraDetCODIGO: TStringField;
    QRtoObraDetDETALLE: TStringField;
    QRtoObraDetUNIDAD: TStringField;
    QRtoObraDetCANTIDAD: TFMTBCDField;
    QRtoObraDetUNITARIO_TOTAL: TFMTBCDField;
    QRtoObraDetUNITARIO_GRAVADO: TFMTBCDField;
    QRtoObraDetUNITARIO_EXENTO: TFMTBCDField;
    QRtoObraDetDESGLOZAIVA: TStringField;
    QRtoObraDetMODO_GRAVAMEN: TStringField;
    QRtoObraDetIVA_TASA: TFMTBCDField;
    QRtoObraDetTIPOIVA_TASA: TIntegerField;
    QRtoObraDetIVA_SOBRETASA: TFMTBCDField;
    QRtoObraDetTIPOIVA_SOBRETASA: TIntegerField;
    QRtoObraDetCOSTO_GRAVADO: TFMTBCDField;
    QRtoObraDetCOSTO_EXENTO: TFMTBCDField;
    QRtoObraDetCOSTO_TOTAL: TFMTBCDField;
    QRtoObraDetTOTAL: TFMTBCDField;
    QRtoObraDetDEPOSITO: TIntegerField;
    QRtoObraDetAFECTA_STOCK: TStringField;
    QRtoObraDetCON_NRO_SERIE: TStringField;
    QRtoObraDetCON_CODIGO_BARRA: TStringField;
    QRtoObraCab: TSQLQuery;
    QRtoObraCabID_RTO: TIntegerField;
    QRtoObraCabTIPOCPBTE: TStringField;
    QRtoObraCabCLASECPBTE: TStringField;
    QRtoObraCabNROCPBTE: TStringField;
    QRtoObraCabCODIGO: TIntegerField;
    QRtoObraCabLETRARTO: TStringField;
    QRtoObraCabSUCRTO: TStringField;
    QRtoObraCabNUMERORTO: TStringField;
    QRtoObraCabLISTAPRECIO: TIntegerField;
    QRtoObraCabFECHA: TSQLTimeStampField;
    QRtoObraCabFECHAVTO: TSQLTimeStampField;
    QRtoObraCabESTADO: TStringField;
    QRtoObraCabANULADO: TStringField;
    QRtoObraCabNROFACT: TStringField;
    QRtoObraCabN_OPERACION2: TFMTBCDField;
    QRtoObraCabTOTAL: TFMTBCDField;
    QRtoObraCabIMPRESO: TStringField;
    QRtoObraCabOBSERVACION1: TStringField;
    QRtoObraCabOBSERVACION2: TStringField;
    QRtoObraCabSUCURSAL: TIntegerField;
    QRtoObraCabDEPOSITO: TIntegerField;
    QRtoObraCabNROENTREGA: TIntegerField;
    QRtoObraCabUSUARIO: TStringField;
    QRtoObraCabRENGLONES: TSmallintField;
    QRtoObraCabMUESTRADEPOSITO: TStringField;
    QRtoObraCabMUESTRASUCURSAL: TStringField;
    QRtoObraCabMUESTRACOMPROBANTE: TStringField;
    QRtoObraCabID_TIPOCOMPROBANTE: TIntegerField;
    QRtoObraCabMUESTRAOBRA: TStringField;
    QRtoObraSubDet: TSQLQuery;
    QRtoObraSubDetID: TIntegerField;
    QRtoObraSubDetID_RTODET: TIntegerField;
    QRtoObraSubDetID_RTOCAB: TIntegerField;
    QRtoObraSubDetTIPOCPBTE: TStringField;
    QRtoObraSubDetCLASECPBTE: TStringField;
    QRtoObraSubDetFECHA: TSQLTimeStampField;
    QRtoObraSubDetNROCPBTE: TStringField;
    QRtoObraSubDetCODIGO: TStringField;
    QRtoObraSubDetSERIE: TStringField;
    QRtoObraSubDetDEPOSITO: TIntegerField;
    QRtoObraSubDetTIPO: TStringField;
    QEstadoCaja: TSQLQuery;
    QEstadoCajaESTADO: TIntegerField;
    QCompSubDetalleID: TIntegerField;
    QCompSubDetalleID_DETFAC: TIntegerField;
    QCompSubDetalleID_CABFAC: TIntegerField;
    QCompSubDetalleTIPOCPBTE: TStringField;
    QCompSubDetalleCLASECPBTE: TStringField;
    QCompSubDetalleFECHA: TSQLTimeStampField;
    QCompSubDetalleNROCPBTE: TStringField;
    QCompSubDetalleCODIGOARTICULO: TStringField;
    QCompSubDetalleSERIE: TStringField;
    QCompSubDetalleDEPOSITO: TIntegerField;
    QOPago: TSQLQuery;
    QOPagoID_OP: TIntegerField;
    QOPagoTIPOCPBTE: TStringField;
    QOPagoCLASECPBTE: TStringField;
    QOPagoNROCPBTE: TStringField;
    QOPagoCODIGO: TStringField;
    QOPagoLETRAOP: TStringField;
    QOPagoSUCOP: TStringField;
    QOPagoNUMEROOP: TStringField;
    QOPagoNOMBRE: TStringField;
    QOPagoRAZONSOCIAL: TStringField;
    QOPagoDIRECCION: TStringField;
    QOPagoCPOSTAL: TStringField;
    QOPagoLOCALIDAD: TStringField;
    QOPagoTIPOIVA: TIntegerField;
    QOPagoCUIT: TStringField;
    QOPagoNRO_IIBB: TStringField;
    QOPagoFECHA: TSQLTimeStampField;
    QOPagoANULADO: TStringField;
    QOPagoN_OPERACION2: TFMTBCDField;
    QOPagoTOTAL: TFMTBCDField;
    QOPagoSALDO_APLICAR: TFMTBCDField;
    QOPagoOBSERVACION1: TStringField;
    QOPagoOBSERVACION2: TStringField;
    QOPagoSUCURSAL: TIntegerField;
    QOPagoDESCUENTO: TFMTBCDField;
    QOPagoDESGLOZAIVA: TStringField;
    QOPagoNC_ID_FC: TIntegerField;
    QOPagoNC_LETRAFAC: TStringField;
    QOPagoNC_SUCFAC: TStringField;
    QOPagoNC_NUMEROFAC: TStringField;
    QOPagoTASA_PERCEPCIONIVA: TFMTBCDField;
    QOPagoTASA_PERCEPCIONIB: TFMTBCDField;
    QOPagoUSUARIO: TStringField;
    QOPagoTOTAL_NETO_GRAVADO: TFMTBCDField;
    QOPagoTOTAL_PAGOS_DEL_MES: TFMTBCDField;
    QOPagoTOTAL_RETENIDO_MES: TFMTBCDField;
    QOPagoTASA_RETENCION_GANACIA: TFMTBCDField;
    QOPagoMINIMO_NO_IMPONIBLE_GANANCIA: TFMTBCDField;
    QOPagoRETIENE_GANACIAS: TStringField;
    QOPagoRETENCION_GANACIA_GENERADO: TStringField;
    QOPagoCODIGO_REGIMENA_GANANCIA: TIntegerField;
    QOPagoCONCEPTO_RETENCION_GANACIA: TStringField;
    QOPagoIMPUESTO_MINIMO_GANANCIA: TFMTBCDField;
    QOPagoRETIENE_IIBB: TStringField;
    QOPagoTASA_RETENCION_IIBB: TFMTBCDField;
    QOPagoMINIMO_IMPONIBLE_RET_IIBB: TFMTBCDField;
    QOPagoFECHA_HORA: TSQLTimeStampField;
    QOPagoMUESTRASUCURSAL: TStringField;
    QOPagoMUESTRACOMPROBANTE: TStringField;
    QOPagoID_TIPOCOMPROBANTE: TIntegerField;
    QMovAplicaCCCompra: TSQLQuery;
    QMovAplicaCCCompraID_MOV: TIntegerField;
    QMovAplicaCCCompraID_MOVCCCOMPRA: TIntegerField;
    QMovAplicaCCCompraFECHA: TSQLTimeStampField;
    QMovAplicaCCCompraPROVEEDOR: TStringField;
    QMovAplicaCCCompraID_CPBTE: TIntegerField;
    QMovAplicaCCCompraTIPOCPBTE: TStringField;
    QMovAplicaCCCompraCLASECPBTE: TStringField;
    QMovAplicaCCCompraNUMEROCPBTE: TStringField;
    QMovAplicaCCCompraIMPORTE: TFMTBCDField;
    QMovAplicaCCCompraAPLICA_ID_CPBTE: TIntegerField;
    QMovAplicaCCCompraAPLICA_TIPOCPBTE: TStringField;
    QMovAplicaCCCompraAPLICA_CLASECPBTE: TStringField;
    QMovAplicaCCCompraAPLICA_NROCPBTE: TStringField;
    QMovAplicaCCCompraAPLICA_NETO: TFMTBCDField;
    QMovAplicaCCCompraDETALLE: TStringField;
    QMovAplicaCCCompraMUESTRAFECHACPBTE: TSQLTimeStampField;
    QMovAplicaCCCompraMUESTRATOTALFACTURA: TFMTBCDField;
    QMovCCCompra: TSQLQuery;
    QMovCCCompraID_MOVCCCOMPRA: TIntegerField;
    QMovCCCompraID_CPBTE: TIntegerField;
    QMovCCCompraPROVEEDOR: TStringField;
    QMovCCCompraFECHACOMPRA: TSQLTimeStampField;
    QMovCCCompraFECHAVTO: TSQLTimeStampField;
    QMovCCCompraTIPOCPBTE: TStringField;
    QMovCCCompraCLASECPBTE: TStringField;
    QMovCCCompraNROCPBTE: TStringField;
    QMovCCCompraDEBE: TFMTBCDField;
    QMovCCCompraHABER: TFMTBCDField;
    QMovCCCompraSALDO: TFMTBCDField;
    QMovCCCompraDETALLE: TStringField;
    QMovCCCompraMUESTRAAPAGAR: TFMTBCDField;
    QOPagoDESCUENTO_PORCENTAJE: TFMTBCDField;
    QOPagoTOTAL_NETO: TFMTBCDField;
    QEgresoCajaDetalle: TSQLQuery;
    QEgresoCajaDetalleID: TIntegerField;
    QEgresoCajaDetalleID_CPBTE: TIntegerField;
    QEgresoCajaDetalleTIPOCPBTE: TStringField;
    QEgresoCajaDetalleCLASECPBTE: TStringField;
    QEgresoCajaDetalleNROCPBTE: TStringField;
    QEgresoCajaDetalleFECHACPBTE: TSQLTimeStampField;
    QEgresoCajaDetalleFECHAGASTO: TSQLTimeStampField;
    QEgresoCajaDetalleRUBROGASTO: TStringField;
    QEgresoCajaDetalleCODIGOGASTO: TStringField;
    QEgresoCajaDetalleDETALLE: TStringField;
    QEgresoCajaDetalleIMPORTE: TFMTBCDField;
    QEgresoCajaDetalleSUCURSALVENTA: TIntegerField;
    QEgresoCajaDetalleMUESTRARUBRO: TStringField;
    QEgresoCajaDetalleMUESTRACUENTA: TStringField;
    QEgresoCaja: TSQLQuery;
    QEgresoCajaID_EGRESO: TIntegerField;
    QEgresoCajaTIPOCPBTE: TStringField;
    QEgresoCajaCLASECPBTE: TStringField;
    QEgresoCajaLETRA: TStringField;
    QEgresoCajaSUC: TStringField;
    QEgresoCajaNUMERO: TStringField;
    QEgresoCajaSUCURSALVENTA: TIntegerField;
    QEgresoCajaFECHA: TSQLTimeStampField;
    QEgresoCajaCODIGO_GASTO: TStringField;
    QEgresoCajaRUBRO_GASTO: TStringField;
    QEgresoCajaIMPORTE: TFMTBCDField;
    QEgresoCajaDETALLE2: TStringField;
    QEgresoCajaNROCPBTE: TStringField;
    QEgresoCajaOBS: TMemoField;
    QEgresoCajaUSUARIO: TStringField;
    QEgresoCajaFECHA_HORA: TSQLTimeStampField;
    QEgresoCajaMUESTRASUCURSAL: TStringField;
    QEgresoCajaMUESTRACOMPROBANTE: TStringField;
    QEgresoCajaID_TIPOCOMPROBANTE: TIntegerField;
    QCondVentaCODIGOCLIENTE: TStringField;
    QCondVentaCODIGOPAGO: TIntegerField;
    QCondVentaDESCUENTO: TFMTBCDField;
    QCondVentaPOR_DEFECTO: TStringField;
    QCondVentaDETALLE: TStringField;
    QCondVentaDIAS: TIntegerField;
    QCondVentaDESCUENTO_FPAGO: TFMTBCDField;
    QMovAplicaCCCompraCONCILIADO: TStringField;
    QObras: TSQLQuery;
    QObrasCODIGO: TIntegerField;
    QObrasDETALLE: TStringField;
    QObrasFEHCHAINCIO: TSQLTimeStampField;
    QObrasFECHAFINAL: TSQLTimeStampField;
    QObrasESTADO: TStringField;
    QObrasRESPONSABLE: TStringField;
    QObrasDIREECION: TStringField;
    QProvincia: TSQLQuery;
    QProvinciaID_PRO: TIntegerField;
    QProvinciaNOMBRE: TStringField;
    QAnulacionOPago: TSQLQuery;
    QAnulacionOPagoID_ANULACION: TIntegerField;
    QAnulacionOPagoTIPOCPBTE: TStringField;
    QAnulacionOPagoCLASECPBTE: TStringField;
    QAnulacionOPagoNROCPBTE: TStringField;
    QAnulacionOPagoCODIGO: TStringField;
    QAnulacionOPagoLETRA: TStringField;
    QAnulacionOPagoSUC: TStringField;
    QAnulacionOPagoNUMERO: TStringField;
    QAnulacionOPagoNOMBRE: TStringField;
    QAnulacionOPagoRAZONSOCIAL: TStringField;
    QAnulacionOPagoCPOSTAL: TStringField;
    QAnulacionOPagoLOCALIDAD: TStringField;
    QAnulacionOPagoTIPOIVA: TIntegerField;
    QAnulacionOPagoCUIT: TStringField;
    QAnulacionOPagoFECHA: TSQLTimeStampField;
    QAnulacionOPagoTOTAL: TFMTBCDField;
    QAnulacionOPagoOBSERVACIONES1: TStringField;
    QAnulacionOPagoOBSERVACIONES2: TStringField;
    QAnulacionOPagoSUCURSAL: TIntegerField;
    QAnulacionOPagoUSUARIO: TStringField;
    QAnulacionOPagoMUESTRASUCURSAL: TStringField;
    QAnulacionOPagoMUESTRACOMPROBANTE: TStringField;
    QAnulacionOPagoID_TIPOCOMPROBANTE: TIntegerField;
    QComprobantes: TSQLQuery;
    QComprobantesID_COMPROBANTE: TIntegerField;
    QComprobantesTIPO_COMPROB: TStringField;
    QComprobantesCLASE_COMPROB: TStringField;
    QComprobantesDENOMINACION: TStringField;
    QComprobantesSUCURSAL: TIntegerField;
    QComprobantesLETRA: TStringField;
    QComprobantesPREFIJO: TStringField;
    QComprobantesNUMERARCION_PROPIA: TStringField;
    QComprobantesNUMERO: TStringField;
    QComprobantesTOMA_NRO_DE: TIntegerField;
    QComprobantesAFECTA_IVA: TStringField;
    QComprobantesAFECTA_CC: TStringField;
    QComprobantesDESGLOZA_IVA: TStringField;
    QComprobantesCOMPRA_VENTA: TStringField;
    QComprobantesCOPIAS: TIntegerField;
    QComprobantesREPORTE: TStringField;
    QComprobantesIMPRIME: TStringField;
    QComprobantesFISCAL: TStringField;
    QComprobantesNOMBREIMPRESORA: TStringField;
    QComprobantesPENDIENTEIMPRESION: TStringField;
    QComprobantesLINEAS_DETALLE: TSmallintField;
    QComprobantesCALCULA_IVA_ARTICULOS: TStringField;
    QComprobantesDEFECTO: TStringField;
    QComprobantesMUESTRADENOMINACION: TStringField;
    QListaPrecioPorDefecto: TSQLQuery;
    QListaPrecioPorDefectoID: TIntegerField;
    QListaPrecioPorDefectoF_PAGO: TIntegerField;
    QPrimeraListaPrecios: TSQLQuery;
    QJuridiccionPorSucursal: TSQLQuery;
    QJuridiccionPorSucursalSUCURSAL: TIntegerField;
    QJuridiccionPorSucursalID_JURIDICION_LOCALIDAD: TIntegerField;
    QJuridiccionPorSucursalMUESTRAJURIDICCION: TIntegerField;
    QOrdenTrabajoCab: TSQLQuery;
    QOrdenTrabajoCabID_OT: TIntegerField;
    QOrdenTrabajoCabCLASECPBTE: TStringField;
    QOrdenTrabajoCabNROCPBTE: TStringField;
    QOrdenTrabajoCabDESCRIPCION: TMemoField;
    QOrdenTrabajoCabPRODUCTO: TIntegerField;
    QOrdenTrabajoCabLETRAOT: TStringField;
    QOrdenTrabajoCabSUCOT: TStringField;
    QOrdenTrabajoCabNUMEROOT: TStringField;
    QOrdenTrabajoCabFECHAINICIO: TSQLTimeStampField;
    QOrdenTrabajoCabFECHAESTIMADA: TSQLTimeStampField;
    QOrdenTrabajoCabFECHAFINAL: TSQLTimeStampField;
    QOrdenTrabajoCabCONDICIONVTA: TIntegerField;
    QOrdenTrabajoCabANULADO: TStringField;
    QOrdenTrabajoCabNRORTO: TStringField;
    QOrdenTrabajoCabNETOGRAV1: TFMTBCDField;
    QOrdenTrabajoCabNETOGRAV2: TFMTBCDField;
    QOrdenTrabajoCabDSTO: TFMTBCDField;
    QOrdenTrabajoCabDSTOIMPORTE: TFMTBCDField;
    QOrdenTrabajoCabNETOEXEN1: TFMTBCDField;
    QOrdenTrabajoCabNETOEXEN2: TFMTBCDField;
    QOrdenTrabajoCabTOTAL: TFMTBCDField;
    QOrdenTrabajoCabDEBE: TFMTBCDField;
    QOrdenTrabajoCabIMPRESO: TStringField;
    QOrdenTrabajoCabSUCURSAL: TIntegerField;
    QOrdenTrabajoCabDEPOSITO: TIntegerField;
    QOrdenTrabajoCabCALCULA_SOBRETASA: TStringField;
    QOrdenTrabajoCabDESGLOZAIVA: TStringField;
    QOrdenTrabajoCabRESPONSABLE_OT: TStringField;
    QOrdenTrabajoCabUSUARIO: TStringField;
    QOrdenTrabajoCabESTADO: TIntegerField;
    QOrdenTrabajoCabPRIORIDAD_INICIAL: TSmallintField;
    QOrdenTrabajoCabDELTA_PRIORIDAD: TSmallintField;
    QOrdenTrabajoCabPRIORIDAD: TSmallintField;
    QOrdenTrabajoCabENTREGADO: TStringField;
    QOrdenTrabajoCabCODIGO: TStringField;
    QOrdenTrabajoCabLDR: TIntegerField;
    QOrdenTrabajoCabNOMBRE: TStringField;
    QOrdenTrabajoCabRAZONSOCIAL: TStringField;
    QOrdenTrabajoCabDIRECCION: TStringField;
    QOrdenTrabajoCabTIPOIVA: TIntegerField;
    QOrdenTrabajoCabCUIT: TStringField;
    QOrdenTrabajoCabCPOSTAL: TStringField;
    QOrdenTrabajoCabLOCALIDAD: TStringField;
    QOrdenTrabajoCabZONA: TIntegerField;
    QOrdenTrabajoCabFACTURA_ID_COMPROBANTE: TIntegerField;
    QOrdenTrabajoCabFACTURANRO: TStringField;
    QOrdenTrabajoCabFACTURA_ID: TIntegerField;
    QOrdenTrabajoCabFACTURA_TIPO: TStringField;
    QOrdenTrabajoCabFACTURA_CLASE: TStringField;
    QOrdenTrabajoCabFECHAFACTURA: TSQLTimeStampField;
    QOrdenTrabajoCabRESPONSABLE_TURNO: TStringField;
    QOrdenTrabajoCabARCHIVADA: TStringField;
    QOrdenTrabajoCabRECLAMADA: TStringField;
    QOrdenTrabajoCabTOTALHORAS: TSQLTimeStampField;
    QOrdenTrabajoCabPUNTOS: TFMTBCDField;
    QOrdenTrabajoCabOBSERVACION1: TMemoField;
    QOrdenTrabajoCabLISTAPRECIO: TIntegerField;
    QOrdenTrabajoCabMAILENVIADO: TStringField;
    QOrdenTrabajoCabSENIA: TFMTBCDField;
    QOrdenTrabajoCabMUESTRACONDVENTA: TStringField;
    QOrdenTrabajoCabMUESTRADEPOSITO: TStringField;
    QOrdenTrabajoCabMUESTRASUCURSAL: TStringField;
    QOrdenTrabajoCabMUESTRALDR: TStringField;
    QOrdenTrabajoCabMUESTRAIVA: TStringField;
    QOrdenTrabajoCabMUESTRACOMPROBANTE: TStringField;
    QOrdenTrabajoCabID_TIPOCOMPROBANTE: TIntegerField;
    QOrdenTrabajoCabMUESTRARESPONSABLEOT: TStringField;
    QOrdenTrabajoCabMUESTRARESPONSABLETURNO: TStringField;
    QOrdenTrabajoCabMUESTRATIPOFACTURA: TStringField;
    QOrdenTrabajoCabMUESTRATELEFONO1: TStringField;
    QOrdenTrabajoCabMUESTRATELEFONO2: TStringField;
    QOrdenTrabajoDet: TSQLQuery;
    QOrdenTrabajoDetID: TIntegerField;
    QOrdenTrabajoDetID_CABOT: TIntegerField;
    QOrdenTrabajoDetTIPOCPBTE: TStringField;
    QOrdenTrabajoDetCLASECPBTE: TStringField;
    QOrdenTrabajoDetNROCPBTE: TStringField;
    QOrdenTrabajoDetRENGLON: TFMTBCDField;
    QOrdenTrabajoDetFECHAVTA: TSQLTimeStampField;
    QOrdenTrabajoDetCODIGOARTICULO: TStringField;
    QOrdenTrabajoDetDETALLE: TStringField;
    QOrdenTrabajoDetUNIDAD: TStringField;
    QOrdenTrabajoDetCANTIDAD: TFMTBCDField;
    QOrdenTrabajoDetDESGLOZAIVA: TStringField;
    QOrdenTrabajoDetMODO_GRAVAMEN: TStringField;
    QOrdenTrabajoDetIVA_TASA: TFMTBCDField;
    QOrdenTrabajoDetTIPOIVA_TASA: TIntegerField;
    QOrdenTrabajoDetIVA_SOBRETASA: TFMTBCDField;
    QOrdenTrabajoDetTIPOIVA_SOBRETASA: TIntegerField;
    QOrdenTrabajoDetDESCUENTO: TFMTBCDField;
    QOrdenTrabajoDetTOTAL: TFMTBCDField;
    QOrdenTrabajoDetDEPOSITO: TIntegerField;
    QOrdenTrabajoDetMARGEN: TFMTBCDField;
    QOrdenTrabajoDetAFECTA_STOCK: TStringField;
    QOrdenTrabajoDetCALCULA_SOBRETASA: TStringField;
    QOrdenTrabajoDetGRAVADO_IB: TStringField;
    QImpuestoOrdenTabajo: TSQLQuery;
    QImpuestoOrdenTabajoID_OTCAB: TIntegerField;
    QImpuestoOrdenTabajoID_IMPUESTO: TIntegerField;
    QImpuestoOrdenTabajoCODIGO_GRAVAMEN: TIntegerField;
    QImpuestoOrdenTabajoDETALLE: TStringField;
    QImpuestoOrdenTabajoNETO: TFMTBCDField;
    QImpuestoOrdenTabajoTASA: TFMTBCDField;
    QImpuestoOrdenTabajoIMPORTE: TFMTBCDField;
    QOrdenTrabajoMovimientos: TSQLQuery;
    QOrdenTrabajoMovimientosID: TIntegerField;
    QOrdenTrabajoMovimientosID_OTCAB: TIntegerField;
    QOrdenTrabajoMovimientosFECHA: TSQLTimeStampField;
    QOrdenTrabajoMovimientosDETALLE: TMemoField;
    QOrdenTrabajoMovimientosHORAINICIO: TSQLTimeStampField;
    QOrdenTrabajoMovimientosHORAFINAL: TSQLTimeStampField;
    QOrdenTrabajoMovimientosPRUDUCTO: TIntegerField;
    QOrdenTrabajoMovimientosTOTALTIEMPO: TSQLTimeStampField;
    QOrdenTrabajoMovimientosCLIENTE: TStringField;
    QOrdenTrabajoMovimientosOPERARIO: TStringField;
    QOrdenTrabajoMovimientosMAILENVIADO: TStringField;
    QProductos: TSQLQuery;
    QProductosID: TIntegerField;
    QProductosID_CATEGORIA: TIntegerField;
    QProductosIDENTIFICADOR: TStringField;
    QProductosDESCRIPCION: TStringField;
    QProductosPROPIETARIO: TStringField;
    QProductosOBS: TStringField;
    QProductosMUESTRACATEGORIA: TStringField;
    QProductosMUESTRAPROPIETARIO: TStringField;
    QStockCONTENIDO_COMPRA: TFMTBCDField;
    QStockCOSTO_IVA: TFMTBCDField;
    QStockCOSTO_FINAL: TFMTBCDField;
    QStockFIJACION_PRECIO_IVA: TFMTBCDField;
    QStockFIJACION_PRECIO_FINAL: TFMTBCDField;
    QStockPORCENTAJE_SOBRECOSTO: TFMTBCDField;
    QCompraDetUNIDADES_TOTAL: TFloatField;
    QCompraDetUNIDADES_EXENTO: TFloatField;
    QCompraDetUNIDADES_GRAVADO: TFloatField;
    QCompraDetUNITARIO_TOTAL: TFloatField;
    QCompraDetUNITARIO_EXENTO: TFloatField;
    QCompraDetUNITARIO_GRAVADO: TFloatField;
    QCompraDetCOSTO_TOTAL: TFloatField;
    QCompraDetCOSTO_EXENTO: TFloatField;
    QCompraDetCOSTO_GRAVADO: TFloatField;
    QOrdenTrabajoDetUNITARIO_TOTAL: TFloatField;
    QOrdenTrabajoDetUNITARIO_GRAVADO: TFloatField;
    QOrdenTrabajoDetUNITARIO_EXENTO: TFloatField;
    QOrdenTrabajoDetCOSTO_GRAVADO: TFloatField;
    QOrdenTrabajoDetCOSTO_EXENTO: TFloatField;
    QOrdenTrabajoDetCOSTO_TOTAL: TFloatField;
    QClientesFRANQUICIA: TStringField;
    QClientesDIAS_MAYOR_30: TIntegerField;
    QOPagoNUMERO_OPERACION: TStringField;
    QOrdenTrabajoCabTIPOCPBTE: TStringField;
    QStockCOMANDA: TStringField;
    QOrdenTrabajoCabOT_ANTERIOR_ID: TIntegerField;
    QOrdenTrabajoCabOT_ANTERIOR_NROCPBTE: TStringField;
    QEgresoCajaNUMERO_OPERACION: TStringField;
    QReciboNUMERO_OPERACION: TStringField;
    QCompraCabNUMERO_OPERACION: TStringField;
    QClientesID_DEPOSITO_FRANQUICIA: TIntegerField;
    QClientesID_TRANSPORTE: TIntegerField;
    QReciboNRO_RECIBO_INTERMO: TIntegerField;
    QPersonalSUCURSAL: TIntegerField;
    QClientesIMPRIME_SALDOFACTURA: TStringField;
    CDSPrecioXCant: TClientDataSet;
    DSPPrecioXCant: TDataSetProvider;
    QPrecioXCant: TSQLQuery;
    DSPrecioXCant: TDataSource;
    CDSPrecioXCantCANTIDAD: TFMTBCDField;
    CDSPrecioXCantPRECIO_SINIVA: TFloatField;
    CDSPrecioXCantPRECIO: TFloatField;
    QCotizacionCliente: TSQLQuery;
    QCotizacionClienteCOTIZACION: TFMTBCDField;
    QOrdenCompCabFECHA_HORA: TSQLTimeStampField;
    QListaDefectoSuc: TSQLQuery;
    QListaDefectoSucLISTA: TIntegerField;
    QListaDefectoSucSUCURSAL: TIntegerField;
    QOrdenCompDetMUESTRAPRESCANT: TFMTBCDField;
    QOrdenCompDetMUESTRAPRESUNI: TStringField;
    QClientesCORTAR_SERVICIO: TStringField;
    QClientesCON_PLANPAGO: TStringField;
    QReciboID_REC_CUPON: TIntegerField;
    QComprobantesCAJA_DEFECTO: TIntegerField;
    QComprobantesDIVIDE_IVA: TStringField;
    QClientesDIRECCION_POSTAL: TStringField;
    QClientesCALLE_1: TStringField;
    QClientesCALLE_2: TStringField;
    QRevNroRto: TSQLQuery;
    QOrdenTrabajoCabTELEFONO1: TStringField;
    QOrdenTrabajoCabTELEFONO2: TStringField;
    QOrdenTrabajoCabCORREOELECTRONICO: TStringField;
    QClienteContrato: TSQLQuery;
    QClienteContratoCODIGO: TStringField;
    QClienteContratoNRO_CONTRATO: TStringField;
    QClienteContratoTIPO_SERVICIO: TIntegerField;
    QClienteContratoFECHA_SOLICITUD: TSQLTimeStampField;
    QClienteContratoFECHA_INSTALACION: TSQLTimeStampField;
    QClienteContratoINCIO_SERVICIO: TSQLTimeStampField;
    QClienteContratoLUGAR_INSTALACION: TStringField;
    QClienteContratoCOSTO_INICAL: TFMTBCDField;
    QClienteContratoOBS: TMemoField;
    QClientesAnexos: TSQLQuery;
    QClientesAnexosID: TIntegerField;
    QClientesAnexosCLIENTE: TStringField;
    QClientesAnexosARCHIVO: TStringField;
    QProveedoresRUBRO_GASTO: TStringField;
    QProveedoresSUB_RUB_GASTOS: TStringField;
    QAjusteCabMOTIVO: TIntegerField;
    SPAplicarLibroIva: TSQLStoredProc;
    QOrdenCompDetID_MONEDA: TIntegerField;
    QOrdenCompDetCOTIZACION: TFMTBCDField;
    QOrdenCompDetMUESTRAMONEDA: TStringField;
    QDepositoStkSECTOR: TStringField;
    QDepositoStkUBICACION: TStringField;
    QOrdenTrabajoCabMUESTRACELULAR: TStringField;
    QOrdenTrabajoCabMUESTRANRODOC: TStringField;
    QClientesVENDER_DE_CTDO: TStringField;
    QStockRUBRO_GASTO: TStringField;
    QStockRUBRO_CTA_GASTO: TStringField;
    QMov_Carnes: TSQLQuery;
    QMov_CarnesID: TIntegerField;
    QMov_CarnesID_DET: TIntegerField;
    QMov_CarnesID_CAB: TIntegerField;
    QMov_CarnesCLASIFICACION: TStringField;
    QMov_CarnesNRO_TROPA: TStringField;
    QMov_CarnesT_KILOS: TIntegerField;
    QMov_CarnesT_MEDIAS: TIntegerField;
    QMov_CarnesMEDIA_1: TIntegerField;
    QMov_CarnesMEDIA_2: TIntegerField;
    QMov_CarnesMEDIA_3: TIntegerField;
    QMov_CarnesMEDIA_4: TIntegerField;
    QMov_CarnesMEDIA_5: TIntegerField;
    QMov_CarnesMEDIA_6: TIntegerField;
    QMov_CarnesMEDIA_7: TIntegerField;
    QMov_CarnesMEDIA_8: TIntegerField;
    QOrdenCompCabID_OCOMPRA_PREV: TIntegerField;
    QBuscaNroFac_borrar: TSQLQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    FMTBCDField1: TFMTBCDField;
    QOrdenCompCabNRO_OC_ANTERIOR: TStringField;
    QOrdenCompCabID_OCOMPRA_NEXT: TIntegerField;
    QOrdenCompCabNRO_OC_SIGUIEN: TStringField;
    QProveedoresCON_OCOMPRA: TStringField;
    QComprobantesFACTURAELECTRONICA: TStringField;
    QStockPUBLICAR_WEB: TStringField;
    QBuscaFac_x_Nro: TSQLQuery;
    IntegerField2: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    SQLTimeStampField3: TSQLTimeStampField;
    FMTBCDField3: TFMTBCDField;
    QSucursalGENERA_XML_COMUN: TStringField;
    QObrasLISTAPRECIOS: TIntegerField;
    QCompPorTipoUsuario: TSQLQuery;
    DSPCompPorTipoUsuario: TDataSetProvider;
    CDSCompPorTipoUsuario: TClientDataSet;
    QIvaCODIGO: TIntegerField;
    QIvaDESCRIPCION: TStringField;
    QIvaTASA: TFMTBCDField;
    QIvaCOLUMNA: TSmallintField;
    QClientesCORREOELECTRONICO_2: TStringField;
    QComprobantesEN_USO: TStringField;
    QOPagoMUESTRACORREO: TStringField;
    QAjusteDetMUESTRACODALTERNATIVO: TStringField;
    QAbrir_CerrarCaja: TSQLQuery;
    QBuscaOP_PorFc: TSQLQuery;
    QOrdenTrabajoCabDESCRIPCIONPRODUCTO: TStringField;
    QOrdenTrabajoCabIDENTIFICADORPRODUCTO: TStringField;
    QClientesPRESENTO_F8001: TStringField;
    QClientesDESDE_F8001: TSQLTimeStampField;
    QClientesHASTA_F8001: TSQLTimeStampField;
    QStockGTIA_MESES: TIntegerField;
    QSucursalHOST: TStringField;
    QClientesID_TARJETACREDITO: TIntegerField;
    QClientesNRO_TARJETA_C: TStringField;
    QClientesNRO_SEG_TC: TStringField;
    QClientesID_BANCO: TIntegerField;
    QClientesNRO_CTA_BCO: TStringField;
    QStockGARANTIAOFICIAL: TStringField;
    QClientesCODIGO_COORPORATIVO: TStringField;
    QClientesMUESTRACTACOORPORATIVA: TStringField;
    QCompraDetMUESTRACODALTERNATIVO: TStringField;
    QOPagoPERMITIR_MODIF_TOTAL: TStringField;
    QOrdenCompDetMUESTRACODALTERNATIVO: TStringField;
    QClientesCUENTA_OPERATIVA: TStringField;
    QClientesTARJETA_CLIENTE: TStringField;
    QClientesVENCIMIENTO_TC: TSQLTimeStampField;
    spAgregarPedidoBorrador: TSQLStoredProc;
    QClientesFOTO: TBlobField;
    QClientesCON_MONITOREO: TStringField;
    QClientesCON_GPRS: TStringField;
    QClientesCON_HOSTING: TStringField;
    QClientesCOMUNITARIO: TStringField;
    QCodRipsa: TSQLQuery;
    QCodRipsaCODIGO: TStringField;
    QCodRipsaCODIGO_RIPSA: TStringField;
    QClientesID_PRESTADOR: TIntegerField;
    QComprobantesCODIGO_AFIP: TStringField;
    QClientesID_RECIBOPORDEFECTO: TIntegerField;
    QClientesNOMBRE_COMPLETO: TStringField;
    QOPagoRET_GAN_X_ESCALA: TStringField;
    QOPagoID_ESCALA_RET: TIntegerField;
    QOPagoGANC_ESCALA_DESDE: TFMTBCDField;
    QOPagoGANC_ESCALA_HASTA: TFMTBCDField;
    QOPagoGANC_ESCALA_VARIAC: TFMTBCDField;
    QOPagoGANC_ESCALA_FIJO: TFMTBCDField;
    QOPagoGANC_ESCALA_EXCED: TFMTBCDField;
    QStockIMPRIMIR_LSTPRECIOS: TStringField;
    QCompraCabCAE: TStringField;
    QCompraCabCAE_VENCIMIENTO: TSQLTimeStampField;
    QCompraCabFACTURA_ELECTRONICA: TStringField;
    QClientesMES_ADICIONAL: TIntegerField;
    ADOConnection1: TADOConnection;
    QClientesMES_SEMESTRAL: TIntegerField;
    QReciboIMPORTE_RECARGO: TFMTBCDField;
    QClientesGarantes: TSQLQuery;
    QClientesGarantesID: TIntegerField;
    QClientesGarantesCODIGOCLIENTE: TStringField;
    QClientesGarantesNOMBRE: TStringField;
    QClientesGarantesDIRECCION: TStringField;
    QClientesGarantesLOCALIDAD: TStringField;
    QClientesGarantesCPOSTAL: TStringField;
    QClientesGarantesTELEFONO1: TStringField;
    QClientesGarantesTELEFONO2: TStringField;
    QClientesGarantesCELULAR: TStringField;
    QClientesGarantesEMAIL: TStringField;
    QClientesGarantesPOR_DEFECTO: TStringField;
    QClientesMUESTRAIDGARANTE: TIntegerField;
    QClientesMOROSO: TStringField;
    QClientesPLANTILLA_CIVA: TStringField;
    QComprobantesID_AJUSTECC: TIntegerField;
    QComprobantesCENTRO_COSTO: TIntegerField;
    QCompLotes: TSQLQuery;
    QCompLotesID: TIntegerField;
    QCompLotesID_DET: TIntegerField;
    QCompLotesID_FC: TIntegerField;
    QCompLotesCODIGO: TStringField;
    QCompLotesLOTE: TStringField;
    QCompLotesCANTIDAD: TFMTBCDField;
    QCompLotesFECHA: TSQLTimeStampField;
    QCompLotesFECHAVTO: TSQLTimeStampField;
    QCompLotesDEPOSITO: TIntegerField;
    QCompLotesTIPO_COMPROB: TStringField;
    QStockCONTROL_TRAZABILIDAD: TStringField;
    QClientesOBSERVACIONES1: TStringField;
    QClientesOBSERVACIONES2: TStringField;
    QCompraDetCONTROL_TRAZABILIDAD: TStringField;
    QVentaLote: TSQLQuery;
    QVentaLoteID: TIntegerField;
    QVentaLoteID_DET: TIntegerField;
    QVentaLoteID_FC: TIntegerField;
    QVentaLoteCODIGO: TStringField;
    QVentaLoteLOTE: TStringField;
    QVentaLoteCANTIDAD: TFMTBCDField;
    QVentaLoteFECHA: TSQLTimeStampField;
    QVentaLoteFECHAVTO: TSQLTimeStampField;
    QVentaLoteDEPOSITO: TIntegerField;
    QVentaLoteTIPO_COMPROB: TStringField;
    QVentaLoteID_LOTE: TIntegerField;
    QCompLotesID_LOTE: TIntegerField;
    QStockLote: TSQLQuery;
    QStockLoteID: TIntegerField;
    QStockLoteID_COMPROBANTE: TIntegerField;
    QStockLoteCODIGO: TStringField;
    QStockLoteID_DETALLE_CPBTE: TIntegerField;
    QStockLoteFECHA_ENTRADA: TSQLTimeStampField;
    QStockLoteFECHA_VTO: TSQLTimeStampField;
    QStockLoteLOTE: TStringField;
    QStockLoteDESPACHO: TStringField;
    QStockLoteCANTIDAD: TFMTBCDField;
    QStockLoteTIPO_COMPROB: TStringField;
    QStockLoteDEPOSITO: TIntegerField;
    QStockLoteSALDO: TFMTBCDField;
    QOPagoRETIENE_IVA: TStringField;
    QOPagoIVA_ACUMULADO: TFMTBCDField;
    QOPagoTASA_RET_IVA: TFMTBCDField;
    QMovAplicaCCCompraAPLICA_IVA: TFMTBCDField;
    QClientesAVISO: TStringField;
    QReciboLOTE_COBRO_TC: TStringField;
    QMovCCCompraGRUPO: TIntegerField;
    QMovCCVtaNRO_CUOTA: TIntegerField;
    QOrdenTrabajoDetCOTIZACION: TFMTBCDField;
    QOrdenTrabajoDetID_MONEDA: TIntegerField;
    QTasaPercep_Retencion_IIBBDESDE: TSQLTimeStampField;
    QTasaPercep_Retencion_IIBBHASTA: TSQLTimeStampField;
    QFormaPagoACUMULABLE: TStringField;
    QOrdenTrabajoCabMOTIVO_OTRABAJO: TIntegerField;
    QClientesRUBRO: TIntegerField;
    QOrdenTrabajoCabFECHA_HORA: TSQLTimeStampField;
    QReciboMUESTRANCREDITO: TStringField;
    QCompLotesDESPACHO: TStringField;
    QVentaLoteDESPACHO: TStringField;
    QOrdenTrabajoCabFECHAESTIMADAFIN: TSQLTimeStampField;
    QAjustesLote: TSQLQuery;
    QAjustesLoteID: TIntegerField;
    QAjustesLoteID_DET: TIntegerField;
    QAjustesLoteID_FC: TIntegerField;
    QAjustesLoteID_LOTE: TIntegerField;
    QAjustesLoteCODIGO: TStringField;
    QAjustesLoteLOTE: TStringField;
    QAjustesLoteDESPACHO: TStringField;
    QAjustesLoteCANTIDAD: TFMTBCDField;
    QAjustesLoteFECHA: TSQLTimeStampField;
    QAjustesLoteFECHAVTO: TSQLTimeStampField;
    QAjustesLoteDEPOSITO: TIntegerField;
    QAjustesLoteTIPO_COMPROB: TStringField;
    QAjusteDetCONTROL_TRAZABILIDAD: TStringField;
    QComprobantesDEPOSITO: TIntegerField;
    QCompraCabMUESTRACODIGOAFIP: TStringField;
    QExistencia: TSQLQuery;
    QExistenciaCODIGO_STK: TStringField;
    QExistenciaDETALLE_STK: TStringField;
    QExistenciaFISICO: TFMTBCDField;
    QExistenciaCOMPROMETIDO: TFMTBCDField;
    QExistenciaSALDO: TFloatField;
    QExistenciaDEPOSITO_STK: TIntegerField;
    QExistenciaEN_TRANSITO: TFMTBCDField;
    QExistenciaDEPOSITO_NOMBRE: TStringField;
    QExistenciaFULTAJUSTE: TSQLTimeStampField;
    QExistenciaSEC: TStringField;
    QExistenciaUBIC: TStringField;
    QLdrClienteLOCALIDAD: TStringField;
    QLdrLOCALIDAD: TStringField;
    QCompraCabMUESTRAINSCRIPCIONIVA: TStringField;
    QOrdenTrabajoCabTELEFONO_CELULAR: TStringField;
    QStockIVA_MODIFICADO: TStringField;
    QUpRto: TSQLQuery;
    QCompraDetCANTIDAD_UNIDADES: TFMTBCDField;
    QCompraDetPRESENTACION_CANT: TFMTBCDField;
    QDepositoStkFULTAJUSTE: TSQLTimeStampField;
    QDepositoStkUNIDADES: TFMTBCDField;
    QAjusteDetUNIDADES_STK: TFMTBCDField;
    QAjusteDetPRESENT_CANTIDAD: TFMTBCDField;
    QStockSIGLAS: TStringField;
    QOrdenCompCabMUESTRACORREO: TStringField;
    QPersonalCUIL: TStringField;
    QComprobantesULTIMONRO: TIntegerField;
    QComprobantesEDITAR_NRO: TStringField;
    QStockPRESENTACION_2_CANT: TFMTBCDField;
    QMovCCVtaMUESTRAGRUPO: TIntegerField;
    QMovCCVtaMUESTRATOTAL: TFMTBCDField;
    QMovCCVtaMUESTRATIPOVTA: TStringField;
    QStockTASA_MANUFACTURA: TStringField;
    QStockDETALLE_STK_ADICIONAL: TStringField;
    QOrdenCompDetDETALLE_ADICIONAL: TStringField;
    QRemitoTroqueles: TSQLQuery;
    QRemitoTroquelesID: TIntegerField;
    QRemitoTroquelesID_RTO: TIntegerField;
    QRemitoTroquelesID_TROQUEL: TIntegerField;
    QRemitoTroquelesNRO_TROQUEL: TStringField;
    QRemitoTroquelesFECHA: TSQLTimeStampField;
    QCompraCabCOD_OPERACION_AFIP: TSingleField;
    QCompraCabTIPOCOMP_AFIP: TStringField;
    QCompraCabFECHA_OPERACION: TSQLTimeStampField;
    QCompraCabLUGAR_REALIZA_AFIP: TStringField;
    QCompraCabCOD_MOTIVO_AFIP: TIntegerField;
    QCompraCabFECHA_FAENA_AFIP: TSQLTimeStampField;
    QCompraCabFECHA_RECEP_AFIP: TSQLTimeStampField;
    QCompraCabDATOS_ADIC_AFIP: TStringField;
    QCompraCabFECHA_INCIO_ACTIV: TSQLTimeStampField;
    QCompraDetDETALLE_ADICIONAL: TStringField;
    QCompraDetTIPO_LIQUI: TIntegerField;
    QCompraDetCODIGO_RAZA: TIntegerField;
    QCompraDetDETALLE_RAZA: TStringField;
    QCompraCabCOD_CARACT_RECP_AFIP: TIntegerField;
    QCompraCabCOD_CARACT_EMIS_AFIP: TIntegerField;
    QCompraCabNRO_IIBB_RECEP: TStringField;
    QCompraCabNRO_RENSPA_RECEP: TStringField;
    QCompraCabNRO_RUCA_EMISOR_AFIP: TSingleField;
    QCompraCabNRO_RUCA_RECEPTOR_AFIP: TSingleField;
    QCompraCabNRO_RENSPA_EMISOR: TStringField;
    QCompraTributos: TSQLQuery;
    QCompraTributosID: TIntegerField;
    QCompraTributosID_FC: TIntegerField;
    QCompraTributosCODTRIBUTO: TIntegerField;
    QCompraTributosDESCRIPCION: TStringField;
    QCompraTributosBASEIMPONIBLE: TFloatField;
    QCompraTributosALICUOTA: TFloatField;
    QCompraTributosIMPORTE: TFloatField;
    QCompraGastos: TSQLQuery;
    QCompraGastosID: TIntegerField;
    QCompraGastosID_FC: TIntegerField;
    QCompraGastosCODGASTO: TIntegerField;
    QCompraGastosDESCRIPCION: TStringField;
    QCompraGastosBASEIMPONIBLE: TFloatField;
    QCompraGastosALICUOTA: TFloatField;
    QCompraGastosALICUOTAIVA: TFloatField;
    QCompraGastosIMPORTE: TFloatField;
    QCompraDetTROPA: TIntegerField;
    QCompraDetCABEZAS: TIntegerField;
    QCompraCabCODIGOBARRA_AFIP: TStringField;
    QCompraCabCUIT_AUTORIZADO: TStringField;
    QCompraCabNOMBRE_AUTORIZADO: TStringField;
    QComp_DET: TSQLQuery;
    QComp_DETID: TIntegerField;
    QComp_DETID_FC: TIntegerField;
    QComp_DETNRO_DET: TStringField;
    QComp_DETNRO_RENSPA: TStringField;
    QCompraCabTIPO_LIQUIDACION: TStringField;
    QRtoObraDetID_MONEDA: TIntegerField;
    QRtoObraDetCOTIZACION: TFMTBCDField;
    QRtoObraDetMUESTRAMONEDA: TStringField;
    QRtoObraDetMUESTRASIGNO: TStringField;
    QCompraCabCUIT_AUTORIZADO_RECEP: TStringField;
    QStockPLU: TStringField;
    QDepositoStkAVISO_MINIMOSTOCK: TStringField;
    QSucursalCERTIFICADO_ELEC: TStringField;
    QSucursalCUIT: TStringField;
    QSucursalRAZONSOCIAL: TStringField;
    QProveedoresID_FACTURACTDODEFECTO: TIntegerField;
    QClientesID_PLANTILLA: TIntegerField;
    QCompraCabID_CPBTE_ANULADO_LIQ: TIntegerField;
    QCompraCabRETENCION_IVA: TFloatField;
    QClientesENVIAR_CPTE_MAIL: TStringField;
    QClientesNRO_IP: TStringField;
    QAjusteCabFECHA: TSQLTimeStampField;
    QAjusteCabLISTAPRECIO: TIntegerField;
    QAjusteCabID_INVENTARIO: TIntegerField;
    QProveedoresID_PERC_IBB_3: TIntegerField;
    QProveedoresAUTORIZADO_NOMBRE: TStringField;
    QProveedoresAUTORIZADO_TIPODOC: TStringField;
    QProveedoresAUTORIZADO_NRODOC: TStringField;
    QStockACOPIABLE: TStringField;
    QClientesCHEQUES: TStringField;
    QReciboMUESTRACHEQUES: TStringField;
    QStockCIKO_TIPO: TIntegerField;
    QStockLARGO_1: TFloatField;
    QStockLARGO_2: TFloatField;
    QStockLARGO_3: TFloatField;
    QStockROTURA_1: TFloatField;
    QStockROTURA_2: TFloatField;
    QStockCIMA: TFloatField;
    QStockBASE: TFloatField;
    QStockVOLUMEN: TFloatField;
    QStockPESO: TFloatField;
    QStockDIAMETRO_OLLA: TFloatField;
    QStockALTO_ACC: TFloatField;
    QAjusteCabPERSONAL_RETIRA: TStringField;
    QAjusteCabMUESTRAPERSONAL: TStringField;
    QLdrPROVINCIA: TIntegerField;
    QMovCCCompraFISCAL: TStringField;
    QStockMODO_IVA: TStringField;
    QClientesID_ADMINISTRACION: TIntegerField;
    QStockTIPOADICIONAL: TStringField;
    QComprobantesCONTROLADOR_NROREG: TStringField;
    QStockPESO_CALCULADO: TFloatField;
    QStockPLU_SECCION: TIntegerField;
    QOrdenTrabajoDetCON_NROSERIE: TStringField;
    QOrdenTrabajoCabID_AJUSTE_STOCK: TIntegerField;
    QOrdenTrabajoCabMUESTRANROAJUSTE: TStringField;
    QProveedoresRETENCION_IVA: TStringField;
    QProveedoresCODIGO_RET_IVA: TIntegerField;
    QProveedoresPORCENTAJE_RET_IVA: TSingleField;
    QOPagoCOD_RET_IVA: TIntegerField;
    QOPagoCONCEPTO_RET_IVA: TStringField;
    QClientesNICKNAME_MERCADOPAGO: TStringField;
    QAjusteDetPRECIO_UNITARIO: TFloatField;
    QAjusteDetPRECIO_TOTAL: TFloatField;
    QAjusteDetID_MOTIVO: TIntegerField;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }

  public
    ControlaLineaCero    : Boolean;

    DescuentaStockRto    : Boolean;

    Facturado            : Boolean;
    EncontroCodigoBarra  : Boolean;
    EncontroCodigoSerie  : Boolean;

    NombreIni            : String;
    UsarPathCpbte,
    UsarPathLst          : Boolean;
    UsuarioActivoId      : Integer;///guardo e nombre real del chavon
    UsuarioActivo        : String;///guardo e nombre real del chavon

    VerCtaCtePersonal    : Boolean; // la uso para bloquear o no el buscar en vales/adelantos en funcion si ve la cta cte de personal
    HayProduccion        : Boolean;


    CodigoBarraSerie      :String;
    AgenteRetencionGanacia:String;
    AgentePerepcionIB     :String;
    AgenteRetencionIB     :String;
    TopeDsctoGral         :Real;  // si puede hacer descuento cargo el maximo posible por user
    TopeDsctoLinea        :Real;  // si puede hacer descuento cargo el maximo posible por user
    DsctoLineaTemp        :Real;  // si puede hacer descuento por un articulo determiando segun la tabla de Desct x Articulo
                                  // para usar en Fc CtaCte, Ctdo y Tiket.-

     // esta variable me indica si cuando hago NC, traslado el descto asignado desde la ficha del cliente o no..
    MargenUtilidad        :Real;
    TasaPercepcionIB      :Real;
    TasaRetencionIB       :Real;
    Minim_Imp_IB_Perc     :Real;
    Minim_Imp_IB_Rete     :Real;


    FechaUltimaActulizacionPrecio     :TDateTime; // este dato se carga con la llamda del articulo
     // Este biene de Opciones--
    //***************************
    // esta variable la uso como global para cargar el valor
    // en la del ABM Base ....

    //***************************
    //***** Modo de Justificacion de codigo de Stock y con que caracter
    JustificaCodigo,
    FiltraCpbteCondIva:String;
    VerStock,
    ControlaLista     : Boolean;
    HayFiltros        : Boolean; // este se usa para saber si hay filtros de
                        // comporbantes, y controlar las imputaciones
                        // en las ctas ctes.

    FacturaPorCtaOrden : Boolean;
    // Variable para el Uso de Balanza PLU **************
    DesdePLU  :Boolean;
    PrecioPLU :String;
    ModoPLU   :Integer;
    CodInicioPLU,CodLongPLU,PesoInioPLU,PesoLongPLU:Integer;
    // Variables para guardar las sucursales que tiene un certificado Electronico Diferente
    Certificado_SUCURSAL,Cuit_SUCURSAL:String;
    //****** Usa Control de Che BCRA ***********
    UsaBCRA:Boolean;
    // **************************************************

    PresupSinStock: Boolean; // Permite agregar al presupuesto ítems sin stock ('S' por def.)

 //   RedondeoEnVta:Integer;


    //*** Variable de Transacciones ****
    // * Td:TTransactionDesc;
    DBXt              : TDBXTransaction;
    AutorizadoHacerNC : Boolean;
    //*** ******************************
//    function SearchCodigo(Text: String;var Datos:TDataSource;CodigoAlternativo:Boolean):String;
    function AsignarListaPrecio(Sucursal:integer):Integer;

    procedure SetTextPrecioUnitario(PRECIO,DESGLOZAIVA,DISCRIMINAIVA,MASCARA,MODOGRAVAMEN:String;
                                    COSTOTOTAL:Real;
                                   var DSDATOS:TDataSource;
                                       UNITARIOGRAVADO,
                                       UNITARIOEXENTO,
                                       UNITARIOTOTAL,
                                       IVAUNITARIO,
                                       TOTALGRAVADO,
                                       TOTALEXENTO,
                                       IVATOTAL,
                                       TOTAL,
                                       MARGEN,
                                       CANTIDAD,
                                       DSCTO,
                                       IVATASA:Double);

{    procedure CalculaPrecioVta(ModoIva,Lista,Sucursal,Deposito:Integer;
                                     CodigoArticulo,CodigoCliente:String;
                                     Costo_Gravado,Costo_Exento,Tasa_Iva,Cotizacion,CotizacionCpbte: Extended; ModoGravamen:String;Cpbte:String;
      VAR P_Gravado,P_Exento,P_Total,Iva_Unitario,Margen,Dscto,P_Final: Extended);
}
    procedure CorrigeIvaDetVta(Id:Integer);
    function Autoriza_Comprobante(Dato:Integer):boolean;
    function GetOSVersion:string;
 //   function VerificaNro(Letra: string; SucFac: string; NumFac: string; Tipo: string; Clase: string; Sucursal: Integer):Boolean;
    function CajaCerrada(Dato:integer):boolean;
//    function TraerNro(Letra: string; SucFac: string; Tipo: string; Clase: string; Sucursal: Integer):String;
    function Ingresa_NroOP:boolean;
    function Ingresa_NroInterno:boolean;  // solo para recibos
 //   procedure Guardar_a_Papelera(Tipo:String;Archivo:String;CDS:TClientDataSet);
    function EjecutaFic(fic: string; mute: boolean = false): boolean;
    procedure Abrir_Cerrar_Caja(id_caja:Integer;Estado:Integer);
    procedure Agregar_Pedido_Borrador(codigo,detalle:string;Cantidad:Extended);
    function CodigoBarraFcElectronica(Numero:String):String;
//    procedure ConfirmaStock(Deposito:Integer;Codigo:String;Fecha:Integer);
    function NombreHojaExcel(Archivo:String):String;
//    procedure CopyClientDataset(Origen, Destino: TClientDataset);
    // path de Reportes

//    property PathReportesCpbte: string          read GetPathReportesCpbte         write SetPathReportesCpbte;
//    property PathReportesLst  : String          read GetPathReportesLst           write SetPathReportesLst;

//    function Busca_x_Plu(CodgioPlu:String):String;
     { Public declarations }
  end;

//  type
//      TRtos=class
//        Id_Rto   :Integer;
//        Id_Fac   :Integer;
//        NroFact  :String;
//        NroRemito:String;
//      end;

var
  DMMain_2: TDMMain_2;
//  ListadoRtosFacturados:TStringList;
//  Rtos:TRtos;

const
  Enter:char=#13;

implementation

uses DMStoreProcedureForm,FEAFIPLib_TLB,DMBuscadoresForm, UMuestraListaCodBarra;
{$R *.dfm}


//function  TDMMain_2.GetPathReportesCpbte: string;
//begin
//  Result  :=  FPathReportesCpbte;
//end;
//
//function  TDMMain_2.GetPathReportesLst: string;
//begin
//  Result  :=  FPathReportesLst;
//end;
//
//procedure TDMMain_2.SetPathReportesCpbte(Value: string);
//begin
//  if Trim(Value)<>'' then
//    FPathReportesCpbte  :=  Value
//  else
//    FPathReportesCpbte  :=  ExtractFileDir(ParamStr(0))+'\Reportes';
//end;
//
//
//procedure TDMMain_2.SetPathReportesLst(Value: string);
//begin
//  if Trim(Value)<>'' then
//    FPathReportesLst  :=  Value
//  else
//    FPathReportesLst  :=  ExtractFileDir(ParamStr(0))+'\Reportes';
//end;

{
function TDMMain_2.SearchCodigo(Text: String;var Datos:TDataSource;CodigoAlternativo:Boolean):String;
var
  CodTxt,AUx,S,CodAlternativo:String;
begin
  If Datos.State=dsBrowse Then
    Datos.edit;
  DMMain_2.EncontroCodigoBarra := False;
  DMMain_2.EncontroCodigoSerie := False;

  CodTxt:=copy(Text,1,8);

  if CodigoAlternativo then
    CodTxt:='********';

  DMBuscadores.QBuscaStock.Close;

  if (Length(Trim(Text))<=8) and (CodigoAlternativo=False) then
    begin
      if DMMain_2.JustificaCodigo='D' Then
        CodTxt:=Copy(DMMain_2.CharCodigo, 1, 8 - Length(CodTxt)) + CodTxt
      else
        if DMMain_2.JustificaCodigo='I' Then
          CodTxt:=CodTxt+Copy(DMMain_2.CharCodigo, 1, 8 - Length(CodTxt));
      DMBuscadores.QBuscaStock.ParamByName('Codigo').Value:=CodTxt;
      DMbuscadores.QBuscaStock.Open;
      if Trim(DMBuscadores.QbuscaStockCODIGO_STK.AsString)<>'' then
        Result:=DMBuscadores.QbuscaStockCODIGO_STK.AsString;
    end
  else
    begin
      DMbuscadores.QBuscaStock.Close;
      DMBuscadores.QBuscaStock.ParamByName('Codigo').Clear;
      DMbuscadores.QBuscaStock.Open;
    end;

  if Trim(DMBuscadores.QbuscaStockCODIGO_STK.AsString)='' then
    begin
      DMMain_2.CDSCodigoBarra.Close;
      DMMain_2.CDSCodigoBarra.Params.ParamByName('CodigoBarra').AsString:=Text;
      DMMain_2.CDSCodigoBarra.Open;
      If DMMain_2.CDSCodigoBarra.Fields[0].AsString<>'' Then
        begin
          if DMMain_2.CDSCodigoBarra.RecordCount>1 Then
            begin
              if Not(Assigned(FormMuestraListaCodigoBarra)) Then
                FormMuestraListaCodigoBarra:=TFormMuestraListaCodigoBarra.Create(application);
              FormMuestraListaCodigoBarra.CodigoBarra:=UpperCase(Text);
              FormMuestraListaCodigoBarra.ShowModal;
              Result:=FormMuestraListaCodigoBarra.Codigo;
            end
          else
            Result:=DMMain_2.CDSCodigoBarra.Fields[0].AsString;
          DMMain_2.EncontroCodigoBarra:=True;
        end;
    end;
    //**************************************
    // Busqueda por PLU Balanza
    //**************************************
    DMMain_2.DesdePLU:=False;
    If (DMMain_2.CDSCodigoBarra.Fields[0].AsString='') and (Result='') Then
      begin
        DMMain_2.DesdePLU:=False;
        //Busca PLU Agregado para los chinos
        if Length(Trim(Text))>8 then
          CodTxt:= Copy(Trim(Text),DMMain_FD.CodInicioPlu,DMMain_2.CodLongPlu)
        else
          CodTxt:='';
        if CodTxt<>'' then
          begin
            CodTxt:= '00000000'+CodTxt;
            CodTxt:= AnsiRightStr(CodTxt,5);
            DMbuscadores.QBuscaStockPLU.Close;
            DMBuscadores.QBuscaStockPLU.ParamByName('Codigo').Value:=CodTxt;
            DMbuscadores.QBuscaStockPLU.Open;
            if Not(DMbuscadores.QBuscaStockPLU.IsEmpty) then
              begin
                DMMain_2.DesdePLU := True;
                Result            := DMbuscadores.QBuscaStockPLUCODIGO_STK.AsString;
                Aux               := Copy(Trim(Text),DMMain_2.PesoInioPLU,DMMain_2.PesoLongPLU);
                if Aux='' then Aux:='0';
                DMMain_2.PrecioPlu:= Aux;
              end
            else
              Result:='';
          end
        else
          Result:='';
      end;
    //********* fin Busqueda PLU ********************
    //***********************************************
    if (DMMain_2.DesdePLU=False) and (Result='') Then
      begin
        // BUsco por el serie ...
        DMBuscadores.QConsultaCodigoSerie.Close;
        DMBuscadores.QConsultaCodigoSerie.ParamByName('CodigoSerie').AsString:=UpperCase(Text);
        DMBuscadores.QConsultaCodigoSerie.Open;
        If DMBuscadores.QConsultaCodigoSerieCODIGO_STK.AsString='' Then
          begin
            // Sender.AsString:=Text;
            DMMain_2.EncontroCodigoBarra := False;
            DMMain_2.EncontroCodigoSerie := False;
            // **** BUsco por Alternativo **************************...
            if Pos(' ',Text)>0 then
              CodAlternativo:=Trim(COPY(Text,1,Pos(' ',Text)))
            else
              CodAlternativo:=Trim(Text);
            CodAlternativo:=Trim(Text);// ESTA LINEA LA AGREGUE POR QUE NO ME TOMABA EL COD ESTO ANULA LO DE ARRIBA

            if Length(CodAlternativo)<=20 then
              begin
                DMBuscadores.QConsultaPorCodAlt.Close;
                DMBuscadores.QConsultaPorCodAlt.ParamByName('Codigo').AsString:=Trim(CodAlternativo);
                DMBuscadores.QConsultaPorCodAlt.Open;

                if (not DMBuscadores.QConsultaPorCodAlt.IsEmpty) and (DMBuscadores.QConsultaPorCodAlt.RecordCount>1) then
                  begin
                    if Not Assigned(FormMuestraListaCodigoBarra) then
                      FormMuestraListaCodigoBarra :=  TFormMuestraListaCodigoBarra.Create(Self);
                    FormMuestraListaCodigoBarra.dbgArticulos.Columns.Clear;
                    FormMuestraListaCodigoBarra.DSArticulos.DataSet :=  DMBuscadores.QConsultaPorCodAlt;
                    FormMuestraListaCodigoBarra.ShowModal;

                  end;

                If DMBuscadores.QConsultaPorCodAltCODIGO_STK.AsString='' Then
                  begin
                    Result                       := Text;
                    DMMain_2.EncontroCodigoBarra := False;
                    DMMain_2.EncontroCodigoSerie := False;
                  end
                else
                  begin
                    Result  :=DMBuscadores.QConsultaPorCodAltCODIGO_STK.AsString;
                    DMMain_2.EncontroCodigoBarra := False;
                    DMMain_2.EncontroCodigoSerie := False;
                  end;
              end
            else
              Result  :=  Text;
            //***************************************************
          end
        else
          begin
            Result :=DMBuscadores.QConsultaCodigoSerieCODIGO_STK.AsString;
            DMMain_2.EncontroCodigoBarra := True;
            DMMain_2.EncontroCodigoSerie := True;
          end;
        DMBuscadores.QConsultaCodigoSerie.Close;
      end;

  DMMain_2.CDSCodigoBarra.Close;
    ///*************

  S:=Result;

  if DMMain_2.JustificaCodigo='D' Then
    S:=Copy(DMMain_2.CharCodigo, 1, 8 - Length(S)) + S
  else
    if DMMain_2.JustificaCodigo='I' Then
      S:=S+Copy(DMMain_2.CharCodigo, 1, 8 - Length(S));
  Result:=S;
end;
}


function TDMMain_2.NombreHojaExcel(Archivo:String):String;
var  Excel: OleVariant;
     Libro: OleVariant;
begin
  Excel := CreateOleObject('Excel.Application');
  Libro := Excel.WorkBooks.Open(Archivo);
  Result:= Trim(Libro.Worksheets.Item[1].Name)+'$';
  Libro.Close;
  //FreeAndNil(Excel);
end;


//procedure TDMMain_2.ConfirmaStock(Deposito: Integer; Codigo: string;Fecha:Integer);
//begin
//  DMStoreProcedure.QConfirmaExistencia.Close;
//  DMStoreProcedure.QConfirmaExistencia.ParamByName('deposito').Value:=Deposito;
//  DMStoreProcedure.QConfirmaExistencia.ParamByName('codigo').Value  :=Codigo;
//  if Fecha=0 then
//    DMStoreProcedure.QConfirmaExistencia.ParamByName('Fecha').Clear
//  else
//    DMStoreProcedure.QConfirmaExistencia.ParamByName('Fecha').AsDateTime :=Date;
//  DMStoreProcedure.QConfirmaExistencia.ExecSQL();
//  DMStoreProcedure.QConfirmaExistencia.Close;
//end;


procedure TDMMain_2.Agregar_Pedido_Borrador(codigo,detalle:string;Cantidad:Extended);
begin

  DMMain_2.DBXt:=DMMain_2.SQLConectionMain.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    spAgregarPedidoBorrador.Close;
    spAgregarPedidoBorrador.ParamByName('codigo').Value        := Codigo;
    spAgregarPedidoBorrador.ParamByName('Detalle').AsString    := Detalle;
    spAgregarPedidoBorrador.ParamByName('cantidad').AsFloat    := Cantidad;

    spAgregarPedidoBorrador.ExecProc;
    spAgregarPedidoBorrador.Close;
    DMMain_2.SQLConectionMain.CommitFreeAndNil(DMMain_2.DBXt);
  //  ShowMessage('Ingresado a Borraro de Pedido....!');    
  except
    DMMain_2.SQLConectionMain.RollbackFreeAndNil(DMMain_2.DBXt);
    ShowMessage('NO se ingreso registro en el LogFile....!');
  end;
end;

function TDMMain_2.AsignarListaPrecio(Sucursal:integer):Integer;
begin
  //**************************************************************************
  //****Asigno la Lista Por defecto o la lista asignada **********************
  //**************************************************************************
  DMMain_2.QListaPrecioPorDefecto.CLose;
  DMMain_2.QListaPrecioPorDefecto.Open;
  if DMMain_2.QListaPrecioPorDefecto.Fields[0].AsString<>'' Then
    result:=DMMain_2.QListaPrecioPorDefecto.Fields[0].Value
  else
    begin
      DMMain_2.QPrimeraListaPrecios.Close;
      DMMain_2.QPrimeraListaPrecios.Open;
      if DMMain_2.QPrimeraListaPrecios.Fields[0].AsString<>'' Then
         result:=DMMain_2.QPrimeraListaPrecios.Fields[0].Value;
      DMMain_2.QPrimeraListaPrecios.Close;
    end;
  DMMain_2.QListaPrecioPorDefecto.CLose;
  //***********************************************************
  // Asigno la lista por sucursal
  //***********************************************************
  DMMain_2.QListaDefectoSuc.Close;
  DMMain_2.QListaDefectoSuc.ParamByName('sucursal').Value:= sucursal;
  DMMain_2.QListaDefectoSuc.Open;
  if (DMMain_2.QListaDefectoSuc.Fields[0].AsString<>'') then
    begin
      result:= DMMain_2.QListaDefectoSuc.Fields[0].AsInteger;
    end;
  DMMain_2.QListaDefectoSuc.Close;
  //***********************************************************
  //***********************************************************
end;

procedure TDMMain_2.Abrir_Cerrar_Caja(id_caja:Integer;Estado:integer);
begin
  // 0 abrir
  // 1 cerrar
  QAbrir_CerrarCaja.Close;
  QAbrir_CerrarCaja.ParamByName('id_caja').Value:= id_caja;
  QAbrir_CerrarCaja.ParamByName('estado').Value := Estado;
  QAbrir_CerrarCaja.ExecSQL;
end;

function TDMMain_2.EjecutaFic(fic: string; mute: boolean = false): boolean;
var
  code: integer;
  txt: string;
begin
  Result:= false;
  //Pruebo a abrir el fichero...
  code:= ShellExecute(Application.Handle,'', PChar(fic), nil,nil,SW_SHOW);

  if (code<0) or (code>32) then
    Result:= true  //Todo ha ido bien
  else begin
    case code of //Algo ha ocurrido
       0: txt := 'El sistema operativo se ha quedado sin memoria o recursos.';
       2: txt := 'El archivo especificado no se ha encontrado.';
       3: txt := 'La ruta especificada no es válida.';
       5: txt := 'El sistema operativo denegó el '+
                 'acceso al fichero especificado.';
       8: txt := 'No hay suficiente memoria para completar la operación';
      10: txt := 'Versión de Windows errónea.';
      11: txt := 'El fichero .EXE es inválido (non-Win32 .EXE or '
                          + 'error in .EXE image).';
      12: txt := 'La aplicación se diseñó para un sistema operativo distinto.';
      13: txt := 'La aplicación se diseño para MS-DOS 4.0';
      15: txt := 'Intento de carga de un programa real-mode.';
      16: txt := 'Intento de cargar una segunda instancia de una aplicación '+
                 'sin segmentos de datos non-readonly.';
      19: txt := 'Intento de carga de un fichero de aplicación comprimido.';
      20: txt := 'Fallo en el fichero DLL (Dynamic-link library).';
      26: txt := 'Violación de compartición.';
      27: txt := 'El nombre de fichero asociado es incompleto o no es válido.';
      28: txt := 'La transacción DDE no se pudo completar debido a que la petición expiró.';
      29: txt := 'La transacción DDE falló.';
      30: txt := 'La transacción DDE no se pudo completar debido a que otras '+
                'transacciones DDE estaban siendo procesadas.';
      31: begin  //No hay programa asociado, abro formulario de abrir con...
            shellexecute(Application.handle,'open','RUNDLL32.EXE',PChar('shell32.dll,OpenAs_RunDLL '+fic),nil,sw_shownormal);
            Result:= true;
            exit;
          end;
      32: txt := 'No se pudo encontrar la DLL especificada.';
      else
        txt := 'Error inesperado';
    end;
    //Si no estamos en mute, lanzo un mensaje con el error encontrado
    if not mute then
      ShowMessage('Error '+IntToStr(code)+': '+txt);
  end;
end;
// proyecto papelera......
//procedure TDMMain_2.Guardar_a_Papelera(Tipo:String;Archivo:String;CDS:TClientDataSet);
//begin
//  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Papelera') then
//    CreateDir(ExtractFilePath(ParamStr(0))+'Papelera');
//  if Tipo='FCVTA' then
//    begin
//      if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Papelera\FacturaVta') then
//        CreateDir(ExtractFilePath(ParamStr(0))+'Papelera\FacturaVta');
//       CDS.SaveToFile(ExtractFilePath(ParamStr(0))+'Papelera\FacturaVta\'+Archivo+'.XML');
//    end;
//end;


procedure TDMMain_2.SetTextPrecioUnitario(PRECIO,DESGLOZAIVA,DISCRIMINAIVA,MASCARA,MODOGRAVAMEN:String;
                                         COSTOTOTAL:Real;
                                         var DSDatos:TDataSource;
                                             UNITARIOGRAVADO,
                                             UNITARIOEXENTO,
                                             UNITARIOTOTAL,
                                             IVAUNITARIO,
                                             TOTALGRAVADO,
                                             TOTALEXENTO,
                                             IVATOTAL,
                                             TOTAL,
                                             MARGEN,
                                             CANTIDAD,
                                             DSCTO,
                                             IVATASA:double);
var Num,P_Exento, P_Gravado,Pt_Exento, Pt_Gravado,Pt_Final,
    Descuento,TasaIva,Aux3,ImporteIva:  Extended;
    Decimales:String;
    Modo: TFPURoundingMode;
begin
  while pos(',',PRECIO)<>0 Do
    delete(PRECIO,pos(',',PRECIO),1);
  if DSDATOS.DataSet.State=dsBrowse Then DSDATOS.DataSet.Edit;

  Num:=StrToFloat(PRECIO);

  IF MODOGRAVAMEN <> '' THEN
    CASE MODOGRAVAMEN[1] OF
      'E','N'    : UNITARIOEXENTO  := Num;
      'G'        : UNITARIOGRAVADO := Num;
      'M','I','Y': UNITARIOGRAVADO := Num-UNITARIOEXENTO;
    END;
  Descuento := 1 - DSCTO * 0.01;
  TasaIva   := 1 + IVATASA * 0.01;

  P_Exento  := UNITARIOEXENTO ;
  P_Gravado := UNITARIOGRAVADO;

  // calculo el total de la linea
  Pt_Gravado :=  P_Gravado * CANTIDAD * Descuento;
  Pt_Exento  :=  P_Exento * CANTIDAD * Descuento;
  // calculo de IVA
  ImporteIva :=  (Pt_gravado * TasaIva)- Pt_Gravado;

  IVAUNITARIO:= (P_Gravado * TasaIva) - P_Gravado;

  if ((DESGLOZAIVA='N') or (DISCRIMINAIVA='N')) and (MODOGRAVAMEN[1] in ['G','M']) Then
    begin
      P_Gravado     := UNITARIOGRAVADO / TasaIva;
      IVAUNITARIO   := UNITARIOGRAVADO - P_Gravado;
      // *** Calculo el total de la linea
      Pt_Final   :=  (P_Gravado + IVAUNITARIO) * CANTIDAD * Descuento;

      Modo:=GetRoundMode;
      SetRoundMode(rmUp);

      Pt_Final   := SimpleRoundTo(Pt_Final,-3);
      Pt_Final   := SimpleRoundTo(Pt_Final,-2);

      Pt_Gravado :=  Pt_Final  / TasaIva;

      Pt_Gravado :=  SimpleRoundTo(Pt_Gravado,-3);
      Pt_Gravado :=  SimpleRoundTo(Pt_Gravado,-2);


      Pt_Exento  :=  P_Exento * CANTIDAD * Descuento;
      // Calculo de IVA
      ImporteIva :=  Pt_Final - Pt_gravado;
    end;

  UNITARIOGRAVADO := P_Gravado;

  TOTALGRAVADO    := SimpleRoundTo(Pt_Gravado,-3);
  TOTALGRAVADO    := SimpleRoundTo(TOTALGRAVADO,-2);

  TOTALEXENTO     := SimpleRoundTo(Pt_Exento,-3);
  TOTALEXENTO     := SimpleRoundTo(TOTALEXENTO,-2);

  ImporteIva      := SimpleRoundTo(ImporteIva,-3);
  IVATOTAL        := SimpleRoundTo(ImporteIva,-3);

  // esto pisa las 2 lineas anteriores no las borro para probar

  if ((DESGLOZAIVA='N') or (DiscriminaIva='N')) and (MODOGRAVAMEN[1] in ['G','M']) Then
    IVATOTAL     := (Pt_Final)-Pt_Gravado;

  TOTAL          := RoundTo((Pt_Gravado+Pt_Exento),-2);

  SetRoundMode(Modo);

  // **************** Calculo el Margen ******************
      if (COSTOTOTAL>0) and (UNITARIOTOTAL>0) then
          MARGEN  := RoundTo(((UNITARIOTOTAL - COSTOTOTAL)/ UNITARIOTOTAL)*100,-2)
      else
        MARGEN:= 100;
  //******************************************************************************

  Aux3            := P_Gravado + P_Exento;
  UNITARIOTOTAL   := Aux3;//FloatToStr(Aux3);

  if (MODOGRAVAMEN[1] in['E','N']) and (UNITARIOGRAVADO>0) Then
    begin
      UNITARIOGRAVADO :=0;
      UNITARIOEXENTO  :=0;
      UNITARIOTOTAL   :=0;
      TOTAL           :=0;
      raise Exception.Create('El artículo Figura Como Exento y tiene Costo Gravado...');
    end
  else
    if (MODOGRAVAMEN[1]='G') and (UNITARIOEXENTO>0) Then
      begin
        UNITARIOGRAVADO:=0;
        UNITARIOEXENTO :=0;
        UNITARIOTOTAL  :=0;
        TOTAL          :=0;
        raise Exception.Create('El artículo Figura Como Gravado y tiene Costo exento...');
      end;

  Decimales:=(Copy(MASCARA,pos('.',MASCARA)+1,length(MASCARA)));
  if Length(Decimales)=2 then
    begin
      //Primero con 3 decimales y despues 2
      UNITARIOGRAVADO  :=RoundTo(UNITARIOGRAVADO,-3);
      UNITARIOEXENTO   :=RoundTo(UNITARIOEXENTO,-3);
      UNITARIOTOTAL    :=RoundTo(UNITARIOTOTAL,-3);
      Modo:=GetRoundMode;
      SetRoundMode(rmUp);
      IVAUNITARIO      :=RoundTo(IVAUNITARIO,-3);
      SetRoundMode(Modo);

      UNITARIOGRAVADO:=RoundTo(UNITARIOGRAVADO,-2);
      UNITARIOEXENTO :=RoundTo(UNITARIOEXENTO,-2);
      UNITARIOTOTAL  :=RoundTo(UNITARIOTOTAL,-2);
      IVAUNITARIO    :=RoundTo(IVAUNITARIO,-2);
    end
  else
    if Length(Decimales)=3 then
      begin
        UNITARIOGRAVADO  :=RoundTo(UNITARIOGRAVADO,-4);
        UNITARIOEXENTO   :=RoundTo(UNITARIOEXENTO,-4);
        UNITARIOTOTAL    :=RoundTo(UNITARIOTOTAL,-4);
        Modo:=GetRoundMode;
        SetRoundMode(rmUp);
        IVAUNITARIO      :=RoundTo(IVAUNITARIO,-4);
        SetRoundMode(Modo);

        UNITARIOGRAVADO :=RoundTo(UNITARIOGRAVADO,-3);
        UNITARIOEXENTO  :=RoundTo(UNITARIOEXENTO,-3);
        UNITARIOTOTAL   :=RoundTo(UNITARIOTOTAL,-3);
        IVAUNITARIO     :=RoundTo(IVAUNITARIO,-3);
      end;
//******************************************************************************
end;

{
procedure TDMMain_2.CalculaPrecioVta(ModoIva,Lista,Sucursal,Deposito:Integer;
                                     CodigoArticulo,CodigoCliente:String;
                                     Costo_Gravado,Costo_Exento,Tasa_Iva,
                                     Cotizacion,CotizacionCpbte: Extended;
                                     ModoGravamen:String;Cpbte:String;
  VAR P_Gravado,P_Exento,P_Total,Iva_Unitario,Margen,Dscto,P_Final: Extended);

VAR Recargo,Contenido,IvaUnitario,PrecioFinal,Corrector:Extended;
    Resto:Integer;
coef:Real;
redondeo:Boolean;
PF,pg ,PE ,IVA,auX :string;
begin
 // Traigo el Contenido...
  DMStoreProcedure.QContendido.Close;
  DMStoreProcedure.QContendido.ParamByName('codigo').Value:=CodigoArticulo;
  DMStoreProcedure.QContendido.Open;
  Contenido:=DMStoreProcedure.QContendidoCONTENIDO_COMPRA.AsFloat;
  DMStoreProcedure.QContendido.Close;
  if (Trunc(Contenido*100)=0) then
    Contenido:=1;
 // ***** Aplico el Recargo de la Lista de Precios
  DMStoreProcedure.QTraerRecargoDeLista.Close;
  DMStoreProcedure.QTraerRecargoDeLista.ParamByName('Lista').Value   := Lista;
  DMStoreProcedure.QTraerRecargoDeLista.ParamByName('Articulo').Value:= CodigoArticulo;
  DMStoreProcedure.QTraerRecargoDeLista.OPen;
  IF NOT (DMStoreProcedure.QTraerRecargoDeLista.IsEmpty) THEN
    begin
      // ***** Aplico el Coefciente de Precios
      DMStoreProcedure.QCoefPrecio.Close;
      DMStoreProcedure.QCoefPrecio.ParamByName('codigo').Value  := CodigoCliente;
      DMStoreProcedure.QCoefPrecio.ParamByName('id_lista').Value:= Lista;
      DMStoreProcedure.QCoefPrecio.Open;
      if DMStoreProcedure.QCoefPrecio.Fields[0].AsString='' Then
        coef:=1
      else
        coef:=DMStoreProcedure.QCoefPrecio.Fields[0].Value;
      DMStoreProcedure.QCoefPrecio.Close;
      if (ModoGravamen='G') or (ModoGravamen='E') or (ModoGravamen='N') then
        begin
          P_Gravado   := ((DMStoreProcedure.QTraerRecargoDeListaPRECIO_GRAVADO.AsFloat/CotizacionCpbte) * Cotizacion * Coef)/Contenido;
          P_Exento    := ((DMStoreProcedure.QTraerRecargoDeListaPRECIO_EXENTO.AsFloat/CotizacionCpbte) * cotizacion * Coef)/Contenido;
          P_Total     := P_Gravado + P_Exento;
          Dscto       := DMStoreProcedure.QTraerRecargoDeListaDESCUENTO.AsFloat;
          PrecioFinal := ((DMStoreProcedure.QTraerRecargoDeListaPRECIO.AsFloat/CotizacionCpbte) * cotizacion * Coef)/Contenido;
          if ModoIva>0 then // or el cambio de la forma de iva
            begin
              P_Exento    := ((DMStoreProcedure.QTraerRecargoDeListaPRECIO_GRAVADO.AsFloat/CotizacionCpbte) * Cotizacion * Coef)/Contenido;
              P_Gravado   := ((DMStoreProcedure.QTraerRecargoDeListaPRECIO_EXENTO.AsFloat/CotizacionCpbte) * cotizacion * Coef)/Contenido;
              P_Total     := P_Gravado + P_Exento;
              Dscto       := DMStoreProcedure.QTraerRecargoDeListaDESCUENTO.AsFloat;
              PrecioFinal := ((P_Total/CotizacionCpbte) * cotizacion * Coef)/Contenido;
            end;
        end
      else
        if (ModoGravamen='M') or (ModoGravamen='I') then
          begin
            P_Gravado   := ((DMStoreProcedure.QTraerRecargoDeListaPRECIO_GRAVADO.AsFloat/CotizacionCpbte) * Cotizacion * Coef)/Contenido;
            P_Exento    := ((DMStoreProcedure.QTraerRecargoDeListaPRECIO_EXENTO.AsFloat/CotizacionCpbte) * cotizacion )/Contenido;
            P_Total     := P_Gravado + P_Exento;
            Dscto       := DMStoreProcedure.QTraerRecargoDeListaDESCUENTO.AsFloat;
            PrecioFinal := ((DMStoreProcedure.QTraerRecargoDeListaPRECIO.AsFloat/CotizacionCpbte) * cotizacion * Coef)/Contenido;
          end;
       if (DMStoreProcedure.QTraerRecargoDeListaEXCLUSIVO_EFECTIVO.Value='S') and (Cpbte='FC')  then
         Dscto:=0;
    end
  else
    BEGIN
      P_Gravado   := Costo_Gravado;
      P_Exento    := Costo_Exento;
      P_Total     := P_Gravado + P_Exento;
      Dscto       := 0;
      PrecioFinal := RoundTo(P_Gravado * (1 + Tasa_Iva * 0.01),-3) + P_Exento;
    END;
  DMStoreProcedure.QTraerRecargoDeLista.Close;
  //******** Aplico recargo por Deposito de Vta *******
  DMStoreProcedure.QDepositoArti.Close;
  DMStoreProcedure.QDepositoArti.ParamByName('Codigo_Deposito').Value:= Deposito;
  DMStoreProcedure.QDepositoArti.ParamByName('Codigo').Value         := CodigoArticulo;
  DMStoreProcedure.QDepositoArti.Open;
  IF NOT (DMStoreProcedure.QDepositoArti.IsEmpty) THEN
    BEGIN
      Recargo:=DMStoreProcedure.QDepositoArtiRECARGO.AsFloat;
      IF (NOT (VarIsNull(Recargo))) AND (Recargo <> 0) THEN
        BEGIN
          if (ModoGravamen='G') or (ModoGravamen='E') then
            begin
              P_Gravado   := (P_Gravado * (1 + (Recargo * 0.01)));
              P_Exento    := (P_Exento * (1 + (Recargo * 0.01)));
              P_Total     := P_Gravado + P_Exento;
              PrecioFinal := RoundTo(PrecioFinal * (1 + (Recargo * 0.01)),DMMain_2.DecRedondeo);
            end
          else
            if (ModoGravamen='M') or (ModoGravamen='I') then
              begin
                P_Gravado := (P_Gravado * (1 + (Recargo * 0.01)));
                //P_Exento  := (P_Exento * (1 + (Recargo * 0.01)));
                P_Total   := P_Gravado + P_Exento;
                PrecioFinal := RoundTo(PrecioFinal * (1 + (Recargo * 0.01)),DMMain_2.DecRedondeo);
              end;
        END
    END;
  DMStoreProcedure.QDepositoArti.Close;
  // ******** Aplico recargo por Sucursal ***
  DMStoreProcedure.QSucursal.Close;
  DMStoreProcedure.QSucursal.ParamByName('Codigo').Value := Sucursal;
  DMStoreProcedure.QSucursal.Open;
  Recargo := DMStoreProcedure.QSucursalRecargo.AsFloat;
  IF (NOT (VarIsNull(Recargo))) AND (Recargo <> 0) THEN
    BEGIN
      if (ModoGravamen='G') or (ModoGravamen='E') then
        begin
          P_Gravado := (P_Gravado * (1 + (Recargo * 0.01)));
          P_Exento  := (P_Exento * (1 + (Recargo * 0.01)));
          P_Total   := P_Gravado + P_Exento;

          PrecioFinal := RoundTo(PrecioFinal * (1 + (Recargo * 0.01)),DMMain_2.DecRedondeo);
        end
      else
        if (ModoGravamen='M') or (ModoGravamen='I') then
          begin
            P_Gravado := (P_Gravado * (1 + (Recargo * 0.01)));
            //P_Exento  := (P_Exento * (1 + (Recargo * 0.01)));
            P_Total   := P_Gravado + P_Exento;
            PrecioFinal := RoundTo(PrecioFinal * (1 + (Recargo * 0.01)),DMMain_2.DecRedondeo);
          end;
    END;
  DMStoreProcedure.QSucursal.Close;
  // ******* Busco y Aplico Precio Especial cliente
  DMStoreProcedure.QPrecioEspecial.CLose;
  DMStoreProcedure.QPrecioEspecial.ParamByName('cliente').AsString  := CodigoCliente;
  DMStoreProcedure.QPrecioEspecial.ParamByName('articulo').AsString := CodigoArticulo;
  DMStoreProcedure.QPrecioEspecial.Open;
  if Not(DMStoreProcedure.QPrecioEspecial.IsEmpty) Then
    begin
      if (IsZero(DMStoreProcedure.QPrecioEspecialDESCUENTO.AsFloat)) then
        begin
          if (ModoGravamen='G') or (ModoGravamen='E') then
            begin
              if ModoGravamen='G' then
                begin
                  P_Gravado:= DMStoreProcedure.QPrecioEspecial.Fields[0].AsFloat / (1 + Tasa_Iva * 0.01);
                  P_Exento :=0;
                end
              else
                if ModoGravamen='E' then
                  begin
                    P_Exento   := DMStoreProcedure.QPrecioEspecial.Fields[0].AsFloat / (1 + Tasa_Iva * 0.01);
                    P_Gravado  :=0;
                  end;
              P_Total  := P_Gravado + P_Exento;
              PrecioFinal :=  RoundTo(P_Gravado * (1 + Tasa_Iva * 0.01),-3) + P_Exento;
            end
          else
            if (ModoGravamen='M') or (ModoGravamen='I')  then
              begin
                P_Gravado:= (DMStoreProcedure.QPrecioEspecial.Fields[0].AsFloat - P_Exento) / (1 + Tasa_Iva * 0.01);
                P_Total  := P_Gravado + P_Exento;
                PrecioFinal :=  RoundTo(P_Gravado * (1 + Tasa_Iva * 0.01),-3) + P_Exento;
              end;
          end
      else
        begin
          Dscto     := DMStoreProcedure.QPrecioEspecialDESCUENTO.AsFloat;
        end;
    end;
  DMStoreProcedure.QPrecioEspecial.CLose;
  // **** Busco - Precio Promocional ****
  DMStoreProcedure.QPrecioPromocion.CLose;
  DMStoreProcedure.QPrecioPromocion.ParamByName('codigo').AsString := CodigoArticulo;
  DMStoreProcedure.QPrecioPromocion.Open;
  if Not(DMStoreProcedure.QPrecioPromocion.IsEmpty) and ((cpbte='FO') or (cpbte='TK') ) Then
    begin
      if (DMStoreProcedure.QPrecioPromocionAPLICA_ALL_DAYS.Value='S') or
         (((DayOfWeek(date)=1) and (DMStoreProcedure.QPrecioPromocionAPLICA_LUNES.Value[1]='S')) or
          ((DayOfWeek(date)=2) and (DMStoreProcedure.QPrecioPromocionAPLICA_MARTES.Value[1]='S')) or
          ((DayOfWeek(date)=3) and (DMStoreProcedure.QPrecioPromocionAPLICA_MIERCOLES.Value[1]='S')) or
          ((DayOfWeek(date)=4) and (DMStoreProcedure.QPrecioPromocionAPLICA_JUEVES.Value[1]='S')) or
          ((DayOfWeek(date)=5) and (DMStoreProcedure.QPrecioPromocionAPLICA_VIERNES.Value[1]='S')) or
          ((DayOfWeek(date)=6) and (DMStoreProcedure.QPrecioPromocionAPLICA_SABADOS.Value[1]='S')) or
          ((DayOfWeek(date)=7) and (DMStoreProcedure.QPrecioPromocionAPLICA_DOMINGO.Value[1]='S'))) then
        begin
          if ((Date >= DMStoreProcedure.QPrecioPromocionDESDE.AsDateTime) and (Date <= DMStoreProcedure.QPrecioPromocionHASTA.AsDateTime)) and
             ((Time >= StrToTime(TimeToStr(DMStoreProcedure.QPrecioPromocionDESDE.AsDateTime))) and
              (Time <= StrToTime(TimeToStr(DMStoreProcedure.QPrecioPromocionHASTA.AsDateTime))))
            then
          begin
            if Not(IsZero(DMStoreProcedure.QPrecioPromocionPRECIO.AsFloat)) then
              begin
                P_Gravado   := DMStoreProcedure.QPrecioPromocionPRECIO.AsFloat / (1 + Tasa_Iva * 0.01);
                P_Exento    := 0;
                P_Total     := P_Gravado + P_Exento;
                PrecioFinal := RoundTo(P_Gravado * (1 + Tasa_Iva * 0.01),-3) + P_Exento;
              end
            else
              begin
                Dscto     := DMStoreProcedure.QPrecioPromocionDESCUENTO.AsFloat ;
              end;
          end;
        end;
    end;
  DMStoreProcedure.QPrecioPromocion.CLose;

 // if redondeo then
//    begin
//      PF:= FormatFloat('0',Trunc(PRECIOFINAL));
//
//      PrecioFinal:=StrToFloat(pf);
//    end;

  P_Final:=PrecioFinal;
  // ********* Calculo el Margen ************
  if ((Costo_Gravado+Costo_Exento)>0) and (P_Total>0) then
    Margen := ((P_Total-(Costo_Gravado+Costo_Exento))/P_Total)*100
  else
    Margen := 100;
  // **************************************************************
  // ****** Aca Calculo el Importe del Iva ** Nueva calculo del Iva
  // **************************************************************
  Iva_Unitario :=  P_Gravado * (1 + Tasa_Iva * 0.01) - P_Gravado;
  Iva_Unitario :=  PrecioFinal - ( P_Exento + P_Gravado) ;
  if ( Trunc(Tasa_iva*100) = 0 ) then
    Iva_Unitario:=0;

//  P_Gravado    := CDSVentaDetUNITARIO_GRAVADO.AsFloat;
//  TasaIva      := 1+CDSVentaDetIVA_TASA.AsFloat*0.01;
//  IvaUnitario  := P_Gravado * CDSVentaDetIVA_TASA.AsFloat * 0.01;
//  PrecioFinal  := P_Gravado+IvaUnitario;
//  Resto := Trunc(PrecioFinal * 1000) mod 10;
//  if Resto=9 then
//    Corrector:=0.001
//  else
//    if resto=1 then
//      Corrector:=-0.001;
//  CDSVentaDetIVA_UNITARIO.AsFloat := RoundTo(( P_Gravado * TasaIva) - P_Gravado,DMMain_2.DecRedondeo)+Corrector;

// **************************************************************
// **************************************************************
//  if (CDSVentaDetDESGLOZAIVA.Value='S') and (FormCpbte_2.DiscriminaIva='N') then
//    CDSVentaDetUNITARIO_GRAVADO.AsFloat:=CDSVentaDetUNITARIO_GRAVADO.AsFloat+CDSVentaDetIVA_UNITARIO.AsFloat
//  else
//    if (CDSVentaDetDESGLOZAIVA.Value='N') Then
//    CDSVentaDetUNITARIO_GRAVADO.AsFloat:=CDSVentaDetUNITARIO_GRAVADO.AsFloat+CDSVentaDetIVA_UNITARIO.AsFloat

end;
}
procedure TDMMain_2.CorrigeIvaDetVta(id:Integer);
begin
   DBXt:=SQLConectionMain.BeginTransaction(TDBXIsolations.ReadCommitted);
  try
    DMStoreProcedure.spCorrigeIVAFacVta.Close;
    DMStoreProcedure.spCorrigeIVAFacVta.Params.ParamByName('id').Value:=Id;
    DMStoreProcedure.spCorrigeIVAFacVta.ExecProc;
    SQLConectionMain.CommitFreeAndNil(DBXt);
    DMStoreProcedure.spCorrigeIVAFacVta.Close;
  Except
    SQLConectionMain.RollbackFreeAndNil(DBXt);
    ShowMessage('No se pudo realizar la correcion de Iva en los detalle...');
  end;
end;

// controla si el usuario esta autorizado a usar este comprobante
function TDMMain_2.Autoriza_Comprobante(Dato:Integer):boolean;
begin
  QOpciones.Close;
  QOpciones.ParamByName('Opcion').Value:='COMPUSER';
  QOpciones.Open;
  if (Copy(QOpciones.Fields[0].AsString,1,1)='S') then
    begin
      DMStoreProcedure.QComprob_User.Close;
      DMStoreProcedure.QComprob_User.ParamByName('Usuario').Value    :=UsuarioActivoId;
      DMStoreProcedure.QComprob_User.ParamByName('Comprobante').Value:=Dato;
      DMStoreProcedure.QComprob_User.Open;
      Result:=DMStoreProcedure.QComprob_User.Fields[0].Value='S';
      if Result=False Then
        ShowMessage('No tiene permiso para usar este comprobante');
      DMStoreProcedure.QComprob_User.Close;
    end
  else
    Result:=True;
  if (UsuarioActivoId=0) or (UsuarioActivo='master') or (UsuarioActivoId=1) Then
    result:=True;
  QOpciones.Close;
end;

function TDMMain_2.Ingresa_NroInterno:boolean;
begin
  QOpciones.Close;
  QOpciones.ParamByName('opcion').Value:='RECINTERNO';
  QOpciones.Open;
  Result:=(Copy(QOpciones.Fields[0].AsString,1,1)='S');
  QOpciones.Close;
end;

function TDMMain_2.Ingresa_NroOP:boolean;
begin
  QOpciones.Close;
  QOpciones.ParamByName('opcion').Value:='INGRESANOP';
  QOpciones.Open;
  Result:=(Copy(QOpciones.Fields[0].AsString,1,1)='S');
  QOpciones.Close;
end;

function TDMMain_2.GetOSVersion:string;
 var
  OSVersion: TOSVersionInfo;
  FVersion,FPlatform,serPack:String;
  FPlatformID: DWord;
begin
   OSVersion.dwOSVersionInfoSize := SizeOf(OSVersion);

   if GetVersionEx(OSVersion) then
      begin
         FVersion := Format('%d.%d (%d.%s)',[OSVersion.dwMajorVersion, OSVersion.dwMinorVersion,(OSVersion.dwBuildNumber and $FFFF), OSVersion.szCSDVersion]);
         FPlatformID:= OSVersion.dwPlatformID;
         case OSVersion.dwPlatformID of
             1:begin
                Case OSVersion.dwMinorVersion  of
                0: FPlatform  := 'Windows 95';
                10: FPlatform := 'Windows 98';
                90: FPlatform := 'Windows Millennium';
                end;
               end;
             2:begin
                Case OSVersion.dwMajorVersion  of
                3:FPlatform := 'Windows NT 3.51';
                4:FPlatform := 'Windows NT 4.0';
                5:begin
                     if OSVersion.dwMinorVersion=0 then
                        FPlatform := 'Windows 2000'
                     else
                        FPlatform := 'Windows XP';
                  end;
                 6:FPlatform := 'Windows Vista';
                 end;
               end;
            else
                FPlatform := '';
         end;  //of case
      end; //of if
      serPack:=OSVersion.szCSDVersion;
   result:=FPlatform+' '+serPack;
end;


//function TDMMain_2.VerificaNro(Letra: string; SucFac: string; NumFac: string; Tipo: string; Clase: string; Sucursal: Integer):Boolean;
//var VerificaNroCpbte:Boolean;
//ArchivoIni:TIniFile;
//begin
//  ArchivoIni       := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_2.NombreIni);
//  VerificaNroCpbte := ArchivoIni.ReadBool('control', 'NumeracionCpbte',False);
//  ArchivoIni.Free;
//
//  Result:=False;
//  QBuscaFc.Close;
//  QBuscaFc.ParamByName('letra').Value    :=Letra;
//  QBuscaFc.ParamByName('sucfac').Value   :=SucFac;
//  QBuscaFc.ParamByName('numfac').Value   :=NumFac;
//  QBuscaFc.ParamByName('sucursal').Value :=Sucursal;
//  QBuscaFc.ParamByName('tipo').Value     :=Tipo;
//  QBuscaFc.ParamByName('clase').Value    :=Clase;
//  QBuscaFc.Open;
//  Result:=QBuscaFc.Fields[0].AsString<>'';
//  QBuscaFc.Close;
//  if Result then
//    ShowMessage('Este Comprobante ya está ingresado....(.)')
//  else
//    if VerificaNroCpbte then
//      begin
//        Result:=False;
//        QBuscaFac_x_Nro.Close;
//        QBuscaFac_x_Nro.ParamByName('letra').Value    :=Letra;
//        QBuscaFac_x_Nro.ParamByName('sucfac').Value   :=SucFac;
//        QBuscaFac_x_Nro.ParamByName('numfac').Value   :=NumFac;
//        if ((tipo='FC') or (Tipo='FO')) then
//          begin
//            QBuscaFac_x_Nro.ParamByName('tipo').Value     :='FC';
//            QBuscaFac_x_Nro.ParamByName('tipo2').Value    :='FO';
//          end
//        else
//          if (tipo='NC') then
//            begin
//              QBuscaFac_x_Nro.ParamByName('tipo').Value     :='NC';
//              QBuscaFac_x_Nro.ParamByName('tipo2').Value    :='NC';
//            end
//          else
//            if (tipo='ND') then
//              begin
//                QBuscaFac_x_Nro.ParamByName('tipo').Value     :='ND';
//                QBuscaFac_x_Nro.ParamByName('tipo2').Value    :='ND';
//              end
//            else
//              if (tipo='TK') then
//                begin
//                  QBuscaFac_x_Nro.ParamByName('tipo').Value     :='TK';
//                  QBuscaFac_x_Nro.ParamByName('tipo2').Value    :='TK';
//                end;
//
//        QBuscaFac_x_Nro.Open;
//        result:=(QBuscaFac_x_Nro.Fields[0].AsString<>'');
//        QBuscaFac_x_Nro.Close;
//
//        if (result) and (MessageDlg('Hay un Comprobante con el mismo Tipo/Letra/Prefijo/Numero .... '+#13+
//                                    'pero puede ser de otra sucursal...ignora la revisión y Continua ???  (..) ',
//                                     mtConfirmation,mbYesNo,0,mbYes) = mrNo) Then
//          begin
//            result:=False;
//            QBuscaNroFac.Close;
//            QBuscaNroFac.ParamByName('letra').Value    :=Letra;
//            QBuscaNroFac.ParamByName('sucfac').Value   :=SucFac;
//            QBuscaNroFac.ParamByName('numfac').Value   :=NumFac;
//            QBuscaNroFac.ParamByName('sucursal').Value :=Sucursal;
//            if ((tipo='FC') or (Tipo='FO') or (Tipo='TK') ) then
//              begin
//                if ((tipo='FC') or (Tipo='FO')) then
//                  begin
//                    QBuscaNroFac.ParamByName('tipo').Value     :='FC';
//                    QBuscaNroFac.ParamByName('tipo2').Value    :='FO';
//                  end
//                else
//                  if (tipo='TK') then
//                    begin
//                      QBuscaNroFac.ParamByName('tipo').Value     :='TK';
//                      QBuscaNroFac.ParamByName('tipo2').Value    :='TK';
//                    end
//              end
//            else
//              if (tipo='NC') then
//                begin
//                  QBuscaNroFac.ParamByName('tipo').Value     :='NC';
//                  QBuscaNroFac.ParamByName('tipo2').Value    :='NC';
//                end
//              else
//                if (tipo='ND') then
//                  begin
//                    QBuscaNroFac.ParamByName('tipo').Value     :='ND';
//                    QBuscaNroFac.ParamByName('tipo2').Value    :='ND';
//                  end;
//            QBuscaNroFac.Open;
//            Result := QBuscaNroFac.Fields[0].AsString<>'';
//            QBuscaNroFac.Close;
//            if Result then
//              ShowMessage('Este numero ya está ingresado para esta sucursal ....(..)');
//          end
//        else
//          Result:=False;
//      end;
//end;


function TDMMain_2.CajaCerrada(Dato:Integer):boolean;
begin
  QEstadoCaja.Close;
  QEstadocaja.ParamByName('id').Value:=Dato;
  QEstadoCaja.Open;
  Result := QEstadoCajaESTADO.Value = 1;
  QEstadoCaja.Close;
end;

//function TDMMain_2.TraerNro(Letra: string; SucFac: string;
//                            Tipo: string; Clase: string; Sucursal: Integer):String;
//var n:integer;
//begin
//
//  DMStoreProcedure.QUltimoNumero.Close;
//  DMStoreProcedure.QUltimoNumero.ParamByName('tipo').AsString      :=Tipo;
//  DMStoreProcedure.QUltimoNumero.ParamByName('letra').AsString     :=Letra;
//  DMStoreProcedure.QUltimoNumero.ParamByName('clase').AsString     :=Clase;
//  DMStoreProcedure.QUltimoNumero.ParamByName('prefijo').AsString   :=SucFac;
//  DMStoreProcedure.QUltimoNumero.ParamByName('sucursal').AsInteger :=Sucursal;
//  DMStoreProcedure.QUltimoNumero.Open;
//  n:=DMStoreProcedure.QUltimoNumeroNUMERO.AsInteger;
//  DMStoreProcedure.QUltimoNumero.Close;
//  result:=Copy('00000000',1,8-length(IntToStr(n)))+IntToStr(n);
//end;

procedure TDMMain_2.DataModuleDestroy(Sender: TObject);
begin
  DMMain_2:=nil;
end;



function TDMMain_2.CodigoBarraFcElectronica(Numero:String):String;
var Longitud:Integer;
  I: Integer;
SumaPares,SumaImpares,SumaTotal:Integer;
verificador:Integer;
begin
  SumaPares   := 0;
  SumaImpares := 0;
  SumaTotal   := 0;
  Longitud    := Length(Trim(NUmero));
  for I := 1 to Longitud  do
    begin
      if ((I mod 2) =0) then SumaPares   := SumaPares+StrToInt(Numero[i])  else
      if ((I mod 2)<>0) then SumaImpares := SumaImpares+StrToInt(Numero[i]);
    end;
  SumaPares   := SumaPares*3;
  SumaTotal   := SumaPares+SumaImpares;
  Verificador := 10-(SumaTotal mod 10);
  result      := Numero+IntToStr(Verificador);
end;


end.

