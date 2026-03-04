UNIT DMPresupuesto;

INTERFACE

USES
  Windows, Messages, Classes, Db, Math,
  Forms, SysUtils, Dialogs, StrUtils,
  Librerias, Provider, DBClient,  IBGenerator
  ,Variants, FMTBcd, SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;
TYPE
  TDatosPresupuesto = CLASS(TDataModule)
    DSPPresuCab: TDataSetProvider;
    DSPCondVenta: TDataSetProvider;
    DSPSucursal: TDataSetProvider;
    DSPPresuDet: TDataSetProvider;
    DSPEmpresa: TDataSetProvider;
    DSPImpuestos: TDataSetProvider;
    DSPInscripcion: TDataSetProvider;
    DSPIva: TDataSetProvider;
    DSPLdr: TDataSetProvider;
    DSPStock: TDataSetProvider;
    DSPDeposito: TDataSetProvider;
    ibg_PreCab: TIBGenerator;
    ibg_PreDet: TIBGenerator;
    ibg_PreImp: TIBGenerator;
    DSListaPrecios: TDataSource;
    CDSDeposito: TClientDataSet;
    DSImpuestos: TDataSource;
    CDSDepositoID: TIntegerField;
    CDSDepositoNOMBRE: TStringField;
    CDSDepositoSUCURSAL: TIntegerField;
    CDSBuscaDeposito: TClientDataSet;
    DSPBuscaDeposito: TDataSetProvider;
    CDSBuscaDepositoID: TIntegerField;
    CDSBuscaDepositoNOMBRE: TStringField;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    CDSInscripcion: TClientDataSet;
    CDSCondCompra: TClientDataSet;
    DSPCondCompra: TDataSetProvider;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    DSPBuscaVendedor: TDataSetProvider;
    CDSBuscaVendedor: TClientDataSet;
    CDSBuscaVendedorCODIGO: TStringField;
    CDSBuscaVendedorNOMBRE: TStringField;
    CDSBuscaVendedorCOMISION: TFloatField;
    DSPBuscaLdr: TDataSetProvider;
    CDSBuscaLdr: TClientDataSet;
    CDSBuscaLdrCODIGO_CLIENTE: TStringField;
    CDSBuscaLdrCODIGO_LDR: TIntegerField;
    CDSBuscaLdrDIRECCION: TStringField;
    CDSBuscaLdrNOMBRE: TStringField;
    CDSBuscaLdrCPOSTAL: TStringField;
    DSPBuscaCondVenta: TDataSetProvider;
    CDSBuscaCondVenta: TClientDataSet;
    CDSBuscaCondVentaCODIGOCLIENTE: TStringField;
    CDSBuscaCondVentaCODIGOPAGO: TIntegerField;
    CDSBuscaCondVentaDESCUENTO: TFloatField;
    CDSBuscaCondVentaPOR_DEFECTO: TStringField;
    CDSBuscaCondVentaDETALLE: TStringField;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalRECARGO: TFloatField;
    CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    CDSCondCompraCODIGOPROVEE: TStringField;
    CDSCondCompraCODIGOPAGO: TIntegerField;
    CDSCondCompraDESCUENTO: TFloatField;
    CDSCondCompraDETALLE: TStringField;
    CDSCondCompraDIAS: TIntegerField;
    CDSCondCompraDESCUENTO_FPAGO: TFloatField;
    CDSCondVenta: TClientDataSet;
    CDSCondVentaCODIGOCLIENTE: TStringField;
    CDSCondVentaCODIGOPAGO: TIntegerField;
    CDSCondVentaDESCUENTO: TFloatField;
    CDSCondVentaPOR_DEFECTO: TStringField;
    CDSCondVentaDETALLE: TStringField;
    CDSCondVentaDIAS: TIntegerField;
    CDSCondVentaDESCUENTO_FPAGO: TFloatField;
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
    CDSImpuestos: TClientDataSet;
    CDSImpuestosID_IMPUESTO: TIntegerField;
    CDSImpuestosID_PRESCAB: TIntegerField;
    CDSImpuestosCODIGO_GRAVAMEN: TIntegerField;
    CDSImpuestosDETALLE: TStringField;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockDETALLE_STK_ADICIONAL: TStringField;
    CDSStockCODIGO_BARRAS: TStringField;
    CDSStockRUBRO_STK: TStringField;
    CDSStockSUBRUBRO_STK: TStringField;
    CDSStockMARCA_STK: TStringField;
    CDSStockTASA_IVA: TIntegerField;
    CDSStockSOBRETASA_IVA: TIntegerField;
    CDSStockCOSTO_EXENTO_STK: TFloatField;
    CDSStockCOSTO_GRAVADO_STK: TFloatField;
    CDSStockCOSTO_TOTAL_STK: TFloatField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSStockFIJACION_PRECIO_EXENTO: TFloatField;
    CDSStockFIJACION_PRECIO_TOTAL: TFloatField;
    CDSStockFUAP: TSQLTimeStampField;
    CDSStockUNIDAD: TStringField;
    CDSStockCONTROLASTOCK: TStringField;
    CDSStockCODIGO_PROVEEDOR: TStringField;
    CDSStockCLASE_ARTICULO: TIntegerField;
    CDSStockMODO_GRAVAMEN: TStringField;
    CDSStockCON_IMP_INT: TStringField;
    CDSStockIMPUESTO_INTERNOS: TFloatField;
    CDSStockGRAVADO_IB: TStringField;
    CDSStockTASA_IB: TIntegerField;
    CDSStockACTUALIZACOSTO: TStringField;
    CDSStockDEPRODUCCION: TStringField;
    CDSStockPRODUCCIONDIRECTA: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockCONTENIDO_COMPRA: TFloatField;
    CDSStockCONTROL_SERIE: TStringField;
    CDSStockUSA_CODIGOBARRA: TStringField;
    CDSStockUNIDAD_ULTIMAUSADA: TStringField;
    CDSStockID_TABLAPRECIOS: TIntegerField;
    CDSStockID_TABLAPRECIOSDETALLE: TIntegerField;
    CDSStockCODIGO_PRECIO: TIntegerField;
    CDSStockFECHA_ALTA: TSQLTimeStampField;
    CDSStockCOSTO_GRAVADO_SOMBRA: TFloatField;
    CDSStockCOSTO_EXENTO_SOMBRA: TFloatField;
    CDSStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    CDSStockFECHA_ULTIMAVTA: TSQLTimeStampField;
    CDSStockMONEDA: TIntegerField;
    CDSStockCOSTO_GRAVADO_P: TFloatField;
    CDSStockCOSTO_EXENTO_P: TFloatField;
    CDSStockCOSTO_TOTAL_P: TFloatField;
    CDSStockPOSICION: TStringField;
    CDSStockPRESENTACION_UNIDAD: TStringField;
    CDSStockPRESENTACION_CANTIDAD: TFloatField;
    CDSStockEDITAPRECIO: TStringField;
    CDSStockEDITADETALLE: TStringField;
    CDSStockURL: TStringField;
    CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    CDSStockMUESTRARUBRO: TStringField;
    CDSStockMUESTRASUBRUBRO: TStringField;
    CDSStockMUESTRAMARCA: TStringField;
    CDSStockMUESTRATASA: TStringField;
    CDSStockMUESTRATASAPORCENTAJE: TFloatField;
    CDSStockMUESTRASOBRETASA: TStringField;
    CDSStockMUESTRASOBRETASAPROCENTAJE: TFloatField;
    CDSStockMUESTRATASAIB: TFloatField;
    CDSStockMUESTRATABLAPRECIODETALLE: TStringField;
    CDSStockMUESTRATABLAPRECIO1: TFloatField;
    CDSStockMUESTRATABLAPRECIO2: TFloatField;
    CDSPresuCab: TClientDataSet;
    CDSPresuCabID_PR: TIntegerField;
    CDSPresuCabTIPOCPBTE: TStringField;
    CDSPresuCabCLASECPBTE: TStringField;
    CDSPresuCabNROCPBTE: TStringField;
    CDSPresuCabCODIGO: TStringField;
    CDSPresuCabLETRAFAC: TStringField;
    CDSPresuCabSUCFAC: TStringField;
    CDSPresuCabNUMEROFAC: TStringField;
    CDSPresuCabNOMBRE: TStringField;
    CDSPresuCabRAZONSOCIAL: TStringField;
    CDSPresuCabDIRECCION: TStringField;
    CDSPresuCabCPOSTAL: TStringField;
    CDSPresuCabLOCALIDAD: TStringField;
    CDSPresuCabTIPOIVA: TIntegerField;
    CDSPresuCabCUIT: TStringField;
    CDSPresuCabCONDICIONVTA: TIntegerField;
    CDSPresuCabANULADO: TStringField;
    CDSPresuCabLISTAPRECIO: TIntegerField;
    CDSPresuCabNRORTO: TStringField;
    CDSPresuCabIMPRESO: TStringField;
    CDSPresuCabOBSERVACION1: TStringField;
    CDSPresuCabOBSERVACION2: TStringField;
    CDSPresuCabCPTE_MANUAL: TStringField;
    CDSPresuCabSUCURSAL: TIntegerField;
    CDSPresuCabZONA: TIntegerField;
    CDSPresuCabFACTURANRO: TStringField;
    CDSPresuCabLDR: TIntegerField;
    CDSPresuCabDEPOSITO: TIntegerField;
    CDSPresuCabCALCULA_SOBRETASA: TStringField;
    CDSPresuCabDESGLOZAIVA: TStringField;
    CDSPresuCabNROENTREGA: TIntegerField;
    CDSPresuCabVENDEDOR: TStringField;
    CDSPresuCabUSUARIO: TStringField;
    CDSPresuCabNOTAS: TMemoField;
    CDSPresuCabDIAS_VIGENCIA_PRESUPESTO: TIntegerField;
    CDSPresuCabMUESTRACONDVENTA: TStringField;
    CDSPresuCabMUESTRADEPOSITO: TStringField;
    CDSPresuCabMUESTRASUCURSAL: TStringField;
    CDSPresuCabMUESTRALDR: TStringField;
    CDSPresuCabMUESTRAIVA: TStringField;
    CDSPresuCabMUESTRACOMPROBANTE: TStringField;
    CDSPresuCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSPresuCabMUESTRAVENDEDOR: TStringField;
    CDSPresuCabMUESTRANOTAVENTA_ID: TIntegerField;
    CDSPresuCabMUESTRANOTAVENTA_NRO: TStringField;
    CDSPresuDet: TClientDataSet;
    CDSPresuDetCODIGOARTICULO: TStringField;
    CDSPresuDetDETALLE: TStringField;
    CDSPresuDetUNIDAD: TStringField;
    CDSPresuDetID: TIntegerField;
    CDSPresuDetID_CABPRES: TIntegerField;
    CDSPresuDetTIPOCPBTE: TStringField;
    CDSPresuDetNROCPBTE: TStringField;
    CDSPresuDetMODO_GRAVAMEN: TStringField;
    CDSPresuDetAFECTA_STOCK: TStringField;
    CDSPresuDetCLASECPBTE: TStringField;
    CDSPresuDetDESGLOZAIVA: TStringField;
    CDSPresuDetTIPOIVA_TASA: TIntegerField;
    CDSPresuDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSPresuDetSUCURSAL: TIntegerField;
    CDSPresuDetDEPOSITO: TIntegerField;
    CDSPresuDetCALCULA_SOBRETASA: TStringField;
    CDSPresuDetID_MONEDA: TIntegerField;
    CDSPresuDetACEPTADO: TStringField;
    CDSPresuDetNOTAS: TStringField;
    CDSPresuDetCPBTESALIDA_ID: TIntegerField;
    CDSPresuDetCPBTESALIDA_TIPO: TStringField;
    CDSPresuDetCPBTESALIDA_CLASE: TStringField;
    CDSPresuDetCPBTESALIDA_NROCPBTE: TStringField;
    CDSIva: TClientDataSet;
    CDSIvaCODIGO: TIntegerField;
    CDSIvaDESCRIPCION: TStringField;
    CDSIvaTASA: TFloatField;
    CDSLdr: TClientDataSet;
    CDSLdrCODIGO_CLIENTE: TStringField;
    CDSLdrCODIGO_LDR: TIntegerField;
    CDSLdrNOMBRE: TStringField;
    CDSLdrDIRECCION: TStringField;
    CDSLdrCPOSTAL: TStringField;
    DSPresuDet: TDataSource;
    DSPListaPrecios: TDataSetProvider;
    CDSListaPrecios: TClientDataSet;
    CDSListaPreciosID: TIntegerField;
    CDSListaPreciosNOMBRE: TStringField;
    CDSListaPreciosF_PAGO: TIntegerField;
    CDSStockPORCENTAJE_SOBRECOSTO: TFloatField;
    CDSPresuDetCOSTO_EXENTO: TFloatField;
    CDSPresuDetCOSTO_GRAVADO: TFloatField;
    CDSPresuDetCOSTO_TOTAL: TFloatField;
    CDSPresuDetUNITARIO_GRAVADO: TFloatField;
    CDSPresuDetIVA_UNITARIO: TFloatField;
    CDSPresuDetUNITARIO_EXENTO: TFloatField;
    CDSPresuDetUNITARIO_TOTAL: TFloatField;
    CDSPresuDetMUESTRASIGNO: TStringField;
    CDSPresuDetXML: TClientDataSet;
    CDSPresuCabMONEDA_CPBTE: TIntegerField;
    CDSPresuCabMUESTRAMONEDACPBTE: TStringField;
    CDSPresuCabMUESTRASIGNOMONEDACPBTE: TStringField;
    CDSPresuCabPERCIB_IB: TStringField;
    CDSPresuDetTIPOIB_TASA: TIntegerField;
    CDSPresuDetGRAVADO_IB: TStringField;
    CDSPresuDetMUESTRACODALTERNATIVO: TStringField;
    CDSPresuCabID_FACTURA: TIntegerField;
    CDSPresuDetDETALLE_ADICIONAL: TStringField;
    QFcAsociada: TFDQuery;
    QFcAsociadaTIPOCPBTE: TStringField;
    QFcAsociadaCLASECPBTE: TStringField;
    QFcAsociadaID_FC: TIntegerField;
    CDSPresuDetITEM_NRO: TIntegerField;
    CDSPresuDetMUESTRAITEM: TIntegerField;
    CDSPresuCabSUB_NRO: TStringField;
    CDSPresuCabMUESTRAFACTURA: TStringField;
    CDSPresuCabMUESTRAREMITO: TStringField;
    QPrimerLdr: TFDQuery;
    QMonedas: TFDQuery;
    QMonedasID: TIntegerField;
    QMonedasMONEDA: TStringField;
    QMonedasCOTIZACION: TFloatField;
    QMonedasSIGNO: TStringField;
    QMonedasORDEN: TSmallintField;
    QMonedasCOTIZACION_COMPRA: TFloatField;
    QPrimerConVta: TFDQuery;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesNOMBRE_COMPLETO: TStringField;
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
    QClientesLIMITE_CREDITO: TFloatField;
    QClientesSALDOINICIAL: TFloatField;
    QClientesOBSERVACIONES: TMemoField;
    QClientesSUCURSAL: TIntegerField;
    QClientesZONA: TIntegerField;
    QClientesVENDEDOR: TStringField;
    QClientesLISTAPRECIOS: TIntegerField;
    QClientesTIPODOCUMENTO: TSmallintField;
    QClientesNRODOCUMENTO: TStringField;
    QClientesCORREOELECTRONICO: TStringField;
    QClientesCORREOELECTRONICO_2: TStringField;
    QClientesID_FACTURAPORDEFECTO: TIntegerField;
    QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    QClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    QClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    QClientesID_TIKETPORDEFECTO: TIntegerField;
    QClientesID_RECIBOPORDEFECTO: TIntegerField;
    QClientesTIPOABONO: TStringField;
    QClientesID_PLANTILLA: TIntegerField;
    QClientesPERCIBIR_IB: TStringField;
    QClientesINSCRIPTO_MULTICONVENIO: TStringField;
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
    QClientesDIAS_MAYOR_30: TIntegerField;
    QClientesMES_ABONOANUAL: TIntegerField;
    QClientesFRANQUICIA: TStringField;
    QClientesID_DEPOSITO_FRANQUICIA: TIntegerField;
    QClientesID_TRANSPORTE: TIntegerField;
    QClientesIMPRIME_SALDOFACTURA: TStringField;
    QClientesCORTAR_SERVICIO: TStringField;
    QClientesCON_PLANPAGO: TStringField;
    QClientesDIRECCION_POSTAL: TStringField;
    QClientesCALLE_1: TStringField;
    QClientesCALLE_2: TStringField;
    QClientesVENDER_DE_CTDO: TStringField;
    QClientesPRESENTO_F8001: TStringField;
    QClientesID_TARJETACREDITO: TIntegerField;
    QClientesNRO_TARJETA_C: TStringField;
    QClientesNRO_SEG_TC: TStringField;
    QClientesID_BANCO: TIntegerField;
    QClientesNRO_CTA_BCO: TStringField;
    QClientesCODIGO_COORPORATIVO: TStringField;
    QClientesCUENTA_OPERATIVA: TStringField;
    QClientesTARJETA_CLIENTE: TStringField;
    QClientesFOTO: TBlobField;
    QClientesCON_MONITOREO: TStringField;
    QClientesCON_GPRS: TStringField;
    QClientesCON_HOSTING: TStringField;
    QClientesCOMUNITARIO: TStringField;
    QClientesID_PRESTADOR: TIntegerField;
    QClientesMES_ADICIONAL: TIntegerField;
    QClientesMES_SEMESTRAL: TIntegerField;
    QClientesMOROSO: TStringField;
    QClientesPLANTILLA_CIVA: TStringField;
    QClientesOBSERVACIONES1: TStringField;
    QClientesOBSERVACIONES2: TStringField;
    QClientesAVISO: TStringField;
    QClientesRUBRO: TIntegerField;
    QClientesENVIAR_CPTE_MAIL: TStringField;
    QClientesNRO_IP: TStringField;
    QTraerRecargoDeLista: TFDQuery;
    QTraerRecargoDeListaRECARGO: TFloatField;
    QBuscaListaPrecio: TFDQuery;
    QBuscaListaPrecioID: TIntegerField;
    QCoefPrecio: TFDQuery;
    QCoefPrecioMAX: TFloatField;
    QDepositoStk: TFDQuery;
    QDepositoStkID_DEPOSITO: TIntegerField;
    QDepositoStkCODIGO_DEPOSITO: TIntegerField;
    QDepositoStkCODIGO_STK: TStringField;
    QDepositoStkSUCURSAL: TIntegerField;
    QDepositoStkINICIAL: TFloatField;
    QDepositoStkMINIMO: TFloatField;
    QDepositoStkMEDIO: TFloatField;
    QDepositoStkFISICO: TFloatField;
    QDepositoStkRECARGO: TFloatField;
    QDepositoStkFUAPRECIOS: TSQLTimeStampField;
    QDepositoStkSECTOR: TStringField;
    QDepositoStkUBICACION: TStringField;
    QDepositoStkFULTAJUSTE: TSQLTimeStampField;
    QDepositoStkUNIDADES: TFloatField;
    QDepositoStkAVISO_MINIMOSTOCK: TStringField;
    QPrecioEspecial: TFDQuery;
    QPrecioEspecialPRECIOPACTADO: TFloatField;
    QComprob: TFDQuery;
    QComprobID_COMPROBANTE: TIntegerField;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobSUCURSAL: TIntegerField;
    QComprobLETRA: TStringField;
    QComprobPREFIJO: TStringField;
    QComprobNUMERARCION_PROPIA: TStringField;
    QComprobNUMERO: TStringField;
    QComprobTOMA_NRO_DE: TIntegerField;
    QComprobAFECTA_IVA: TStringField;
    QComprobAFECTA_CC: TStringField;
    QComprobDESGLOZA_IVA: TStringField;
    QComprobCOMPRA_VENTA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QComprobIMPRIME: TStringField;
    QComprobFISCAL: TStringField;
    QComprobNOMBREIMPRESORA: TStringField;
    QComprobPENDIENTEIMPRESION: TStringField;
    QComprobLINEAS_DETALLE: TSmallintField;
    QComprobCALCULA_IVA_ARTICULOS: TStringField;
    QComprobDEFECTO: TStringField;
    QComprobCAJA_DEFECTO: TIntegerField;
    QComprobDIVIDE_IVA: TStringField;
    QComprobFACTURAELECTRONICA: TStringField;
    QComprobEN_USO: TStringField;
    QComprobCODIGO_AFIP: TStringField;
    QComprobID_AJUSTECC: TIntegerField;
    QComprobCENTRO_COSTO: TIntegerField;
    QComprobFILTRO_COMPROBANTES: TStringField;
    QComprobDEPOSITO: TIntegerField;
    QComprobULTIMONRO: TIntegerField;
    QComprobEDITAR_NRO: TStringField;
    QNotas: TFDQuery;
    QNotasID: TIntegerField;
    QNotasNOTAS: TMemoField;
    DSPPresuSubDet: TDataSetProvider;
    CDSPresuSubDet: TClientDataSet;
    CDSPresuSubDetID_CAB: TIntegerField;
    CDSPresuSubDetTOTAL_GRAVADO: TFloatField;
    CDSPresuSubDetTOTAL_EXENTO: TFloatField;
    CDSPresuSubDetTOTAL_IVA: TFloatField;
    CDSPresuSubDetTOTAL: TFloatField;
    CDSPresuSubDetITEM_NRO: TIntegerField;
    DSPresuSubDet: TDataSource;
    CDSPresuSubDetDETALLE: TStringField;
    CDSPresuSubDetTOTAL_NETO: TFloatField;
    CDSPresuDetMUESTRA_UNIT_NETO: TFloatField;
    CDSPresuCabN_OPERACION2: TFloatField;
    CDSPresuCabNETOGRAV1: TFloatField;
    CDSPresuCabNETOGRAV2: TFloatField;
    CDSPresuCabDSTO: TFloatField;
    CDSPresuCabDSTOIMPORTE: TFloatField;
    CDSPresuCabNETOEXEN1: TFloatField;
    CDSPresuCabNETOEXEN2: TFloatField;
    CDSPresuCabTOTAL: TFloatField;
    CDSPresuCabDEBE: TFloatField;
    CDSPresuCabCOMISIONVENDEDOR: TFloatField;
    CDSPresuCabMONEDA_CPBTE_COTIZACION: TFloatField;
    CDSPresuCabPERCEPCION_IB_TASA: TFloatField;
    CDSPresuCabPERCECEPION_IB_IMPORTE: TFloatField;
    CDSPresuCabPERCECPION_IB_BASEIMPONIBLE: TFloatField;
    CDSPresuDetCANTIDAD: TFloatField;
    CDSPresuDetTOTAL_EXENTO: TFloatField;
    CDSPresuDetTOTAL_GRAVADO: TFloatField;
    CDSPresuDetIVA_TOTAL: TFloatField;
    CDSPresuDetIVA_TASA: TFloatField;
    CDSPresuDetIVA_SOBRETASA: TFloatField;
    CDSPresuDetDESCUENTO: TFloatField;
    CDSPresuDetTOTAL: TFloatField;
    CDSPresuDetCOTIZACION: TFloatField;
    CDSPresuDetRENGLON: TFloatField;
    CDSPresuDetMARGEN: TFloatField;
    CDSPresuDetIB_TASA: TFloatField;
    CDSPresuSubDetCANTIDAD: TFloatField;
    CDSImpuestosNETO: TFloatField;
    CDSImpuestosTASA: TFloatField;
    CDSImpuestosIMPORTE: TFloatField;
    spCpteDestino: TFDStoredProc;
    spActualizarCotizacionDetalle: TFDStoredProc;
    CDSPresuCabREFERENCIA: TStringField;
    QUltimoSubNro: TFDQuery;
    QVerificaOrdenProduccion: TFDQuery;
    CDSPresuDetMUESTRADEPRODUCC: TStringField;
    CDSPresuCabID_PRESU_NEXT: TIntegerField;
    CDSPresuCabID_PRESU_PREV: TIntegerField;
    CDSPresuCabNRO_PRE_NEXT: TStringField;
    CDSPresuCabNRO_PRE_PREV: TStringField;
    CDSPresuCabPLAZO_ENTREGA: TIntegerField;
    CDSPresuCabCUMPLIO_TECNICA: TStringField;
    CDSPresuCabCUMPLIO_FINANCIERA: TStringField;
    CDSPresuDetITEMCANTIDAD: TFloatField;
    CDSPresuDetITEMGRAVADO: TFloatField;
    CDSPresuDetITEMEXENTO: TFloatField;
    CDSPresuDetITEMIVA: TFloatField;
    CDSPresuDetITEMTOTAL: TFloatField;
    CDSPresuDetITMEDETALLE: TStringField;
    CDSPresuCabNRO_ORDEN_COMP: TStringField;
    CDSPresuDetORDEN_ITEM: TIntegerField;
    CDSPresuDetCANTIDADTOTAL: TFloatField;
    QVerificaOrdenProduccionID: TIntegerField;
    QVerificaOrdenProduccionNROCPBTE: TStringField;
    QVerificaOrdenProduccionFECHA_INICIADA: TSQLTimeStampField;
    CDSPresuDetESPECIFICACION: TStringField;
    CDSPresuDetITEM_CONDETALLE: TStringField;
    QObras: TFDQuery;
    DSPObras: TDataSetProvider;
    CDSObras: TClientDataSet;
    CDSObrasCODIGO: TIntegerField;
    CDSObrasDETALLE: TStringField;
    CDSPresuCabID_OBRA: TIntegerField;
    DSObras: TDataSource;
    CDSPresuCabMUESTRAOPRODUCCION: TStringField;
    CDSPresuCabID_FACT: TIntegerField;
    CDSPresuCabID_RTO: TIntegerField;
    QIncidencias: TFDQuery;
    QContacto: TFDQuery;
    QContactoID: TIntegerField;
    QContactoNOMBRE: TStringField;
    QContactoTELEFONO: TStringField;
    QContactoID_PRESUPUESTO: TIntegerField;
    QContactoASUNTO: TStringField;
    QContactoNOMBRE_2: TStringField;
    QContactoTELEFONO_2: TStringField;
    DSPContacto: TDataSetProvider;
    DSPIncidencias: TDataSetProvider;
    CDSIncidencias: TClientDataSet;
    CDSContacto: TClientDataSet;
    CDSContactoID: TIntegerField;
    CDSContactoNOMBRE: TStringField;
    CDSContactoTELEFONO: TStringField;
    CDSContactoID_PRESUPUESTO: TIntegerField;
    CDSContactoASUNTO: TStringField;
    CDSContactoNOMBRE_2: TStringField;
    CDSContactoTELEFONO_2: TStringField;
    ibgDetalle: TIBGenerator;
    QIncidenciasID: TIntegerField;
    QIncidenciasID_PRESUPUESTO: TIntegerField;
    QIncidenciasDETALLE: TStringField;
    QIncidenciasUSUARIO: TStringField;
    QIncidenciasANIO_MES: TIntegerField;
    QIncidenciasCOLOR_FUENTE: TIntegerField;
    QIncidenciasCOLOR_BRUSH: TIntegerField;
    QIncidenciasBOLD: TSmallintField;
    CDSIncidenciasID: TIntegerField;
    CDSIncidenciasID_PRESUPUESTO: TIntegerField;
    CDSIncidenciasDETALLE: TStringField;
    CDSIncidenciasUSUARIO: TStringField;
    CDSIncidenciasANIO_MES: TIntegerField;
    CDSIncidenciasCOLOR_FUENTE: TIntegerField;
    CDSIncidenciasCOLOR_BRUSH: TIntegerField;
    CDSIncidenciasBOLD: TSmallintField;
    CDSPresuDetTOTAL_FINAL: TFloatField;
    CDSPresuSubDetTOTAL_FINAL: TFloatField;
    CDSPresuSubDetTOTAL_UNIT_FINAL: TFloatField;
    QClientesCHEQUES: TStringField;
    QClientesID_ADMINISTRACION: TIntegerField;
    CDSPresuCabFECHAVTA: TSQLTimeStampField;
    CDSPresuCabFECHAVTO: TSQLTimeStampField;
    CDSPresuCabFECHAVTO_PRESUPUESTO: TSQLTimeStampField;
    CDSPresuCabFECHA_HORA: TSQLTimeStampField;
    CDSPresuCabFECHA_TECNICA: TSQLTimeStampField;
    CDSPresuCabFECHA_FINANCIERA: TSQLTimeStampField;
    CDSPresuCabFECHA_ENTREGA: TSQLTimeStampField;
    CDSPresuCabFECHA_OC: TSQLTimeStampField;
    CDSPresuCabFECHA_REVISION: TSQLTimeStampField;
    CDSPresuDetFECHAVTA: TSQLTimeStampField;
    QClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    QClientesFECHAALTA: TSQLTimeStampField;
    QClientesULTIMOPAGO: TSQLTimeStampField;
    QClientesFECHANACIMIENTO: TSQLTimeStampField;
    QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    QClientesDESDE_F8001: TSQLTimeStampField;
    QClientesHASTA_F8001: TSQLTimeStampField;
    QClientesVENCIMIENTO_TC: TSQLTimeStampField;
    QIncidenciasFECHA_HORA: TSQLTimeStampField;
    QIncidenciasPROX_FECHA_CONTACTO: TSQLTimeStampField;
    QObrasSector: TFDQuery;
    DSPObraSector: TDataSetProvider;
    CDSObrasSector: TClientDataSet;
    DSObrasSector: TDataSource;
    QObrasSectorID_SECTOR: TIntegerField;
    QObrasSectorCOD_OBRA: TIntegerField;
    QObrasSectorSECTOR: TStringField;
    CDSObrasSectorID_SECTOR: TIntegerField;
    CDSObrasSectorCOD_OBRA: TIntegerField;
    CDSObrasSectorSECTOR: TStringField;
    CDSPresuCabID_OBRA_SECTOR: TIntegerField;
    CDSPresuCabID_OPRODUCC: TIntegerField;
    CDSPresuCabNROCPBTE2: TStringField;
    CDSPresuCabTIPO_OBRA: TIntegerField;
    QTipoObra: TFDQuery;
    DSPTipoObra: TDataSetProvider;
    CDSTipoObra: TClientDataSet;
    DSTipoObra: TDataSource;
    CDSTipoObraID: TIntegerField;
    CDSTipoObraDETALLE: TStringField;
    CDSPresuCabFECHA_ENTREGA_2: TSQLTimeStampField;
    CDSPresuCabTIENE_PLANO: TStringField;
    CDSPresuCabID_FACTURA_ANTICIPO: TIntegerField;
    CDSPresuCabMUESTRAFACTURAANTICIPO: TStringField;
    CDSPresuCabMUESTRAOBRA: TStringField;
    QDatosObra: TFDQuery;
    QDatosObraCODIGO: TIntegerField;
    QDatosObraDETALLE: TStringField;
    CDSPresuCabMUESTRACONTACO: TStringField;
    CDSPresuCabMUESTRACORREOCONTACTO: TStringField;
    CDSPersonalCOMISION: TFloatField;
    CDSEmpresaCBU: TStringField;
    CDSEmpresaID_CPOSTAL: TIntegerField;
    CDSEmpresaCOD_ACTIVIDAD: TStringField;
    CDSEmpresaNOMBRE_FANTASIA: TStringField;
    CDSEmpresaTASA_RET_IIBB: TFloatField;
    CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    CDSEmpresaCODIGO_COT: TStringField;
    CDSEmpresaDIRECCION_NRO: TStringField;
    CDSPresuCabPARA_ACOPIO: TStringField;
    CDSBuscaSucursalDIRECCION: TStringField;
    CDSBuscaSucursalLOCALIDAD: TStringField;
    CDSBuscaSucursalRECARGO: TFloatField;
    CDSPresuCabMUESTRADIRECCIONSUC: TStringField;
    CDSPresuCabMUESTRARAZONSSUC: TStringField;
    CDSPresuCabMUESTRALOCALIDADSUC: TStringField;
    CDSPresuCabNETO_ACUMULADO: TFloatField;
    CDSPresuCabMARGEN_GENERAL: TFloatField;
    CDSPresuCabMUESTRALDRDIRECCION: TStringField;
    CDSPresuCabMUESTRANOMBREUSUARIOREAL: TStringField;
    IBGPercepcionIVA: TIBGenerator;
    DSPPercepcionIVA: TDataSetProvider;
    CDSPercepcionIVA: TClientDataSet;
    DSPercepcionIVA: TDataSource;
    CDSPercepcionIVAID_PERCEPCION: TIntegerField;
    CDSPercepcionIVACODIGO_PERCEPCION: TIntegerField;
    CDSPercepcionIVADETALLE: TStringField;
    CDSPercepcionIVAID_PR: TIntegerField;
    CDSPercepcionIVANETO: TFloatField;
    CDSPercepcionIVATASA: TFloatField;
    CDSPercepcionIVAIMPORTE: TFloatField;
    CDSPercepcionIVACODIGOREGIMEN: TIntegerField;
    QLstMonedas: TFDQuery;
    DSLstMonedas: TDataSource;
    QLstMonedasID: TIntegerField;
    QLstMonedasMONEDA: TStringField;
    QLstMonedasCOTIZACION: TFloatField;
    QLstMonedasSIGNO: TStringField;
    QLstMonedasORDEN: TSmallintField;
    QLstMonedasCOTIZACION_COMPRA: TFloatField;
    CDSPresuCabPERCIBE_IVA: TStringField;
    CDSPresuDetPERCIBE_IVA: TStringField;
    CDSPresuDetTASA_PERCEP_IVA: TFloatField;
    CDSPresuDetID_TASA_PERCEPCION_IVA: TIntegerField;
    CDSPresuDetPERCEPCION_IVA_DIFERENCIAL: TStringField;
    CDSStockPERCIBE_IVA: TStringField;
    CDSStockID_TASA_PERCEP_IVA: TIntegerField;
    CDSStockAPLICA_TASA_DIF: TStringField;
    CDSPresuCabA_COBRAR: TStringField;
    CDSPresuCabMINIMO_PERC_IVA: TFloatField;
    CDSPresuDetMUESTRAPRODUCIDOS: TFloatField;
    PROCEDURE DataModuleDestroy(Sender: TObject);
    PROCEDURE CDSPresuCabCODIGOSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSPresuCabSUCFACSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSPresuCabNUMEROFACSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSPresuCabNETOGRAV2GetText(Sender: TField;
      VAR Text: STRING; DisplayText: Boolean);
    PROCEDURE CDSPresuCabLDRSetText(Sender: TField; CONST Text: STRING);
    PROCEDURE CDSPresuCabDEPOSITOSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSPresuCabSUCURSALSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSPresuCabCONDICIONVTASetText(Sender: TField;
      CONST Text: STRING);
     PROCEDURE CDSPresuDetUNITARIO_TOTALGetText(Sender: TField;
      VAR Text: STRING; DisplayText: Boolean);
    PROCEDURE CDSPresuDetTOTALGetText(Sender: TField; VAR Text: STRING;
      DisplayText: Boolean);
    PROCEDURE CDSPresuCabNewRecord(DataSet: TDataSet);
    PROCEDURE CDSPresuCabBeforePost(DataSet: TDataSet);
    PROCEDURE CDSPresuCabAfterEdit(DataSet: TDataSet);
    procedure CDSPresuDetCODIGOARTICULOSetText(Sender: TField;
      const Text: String);
    procedure CDSPresuDetCANTIDADSetText(Sender: TField;
      const Text: String);
    procedure CDSPresuDetUNITARIO_TOTALSetText(Sender: TField;
      const Text: String);
    procedure CDSPresuDetBeforePost(DataSet: TDataSet);
    procedure CDSPresuDetNewRecord(DataSet: TDataSet);
    procedure CDSImpuestosNewRecord(DataSet: TDataSet);
    procedure CDSPresuDetIVA_TASASetText(Sender: TField;
      const Text: String);
    procedure CDSPresuCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSPresuCabVENDEDORSetText(Sender: TField;
      const Text: String);
    procedure CDSPresuCabDSTOSetText(Sender: TField; const Text: String);
    procedure CDSPresuDetAfterPost(DataSet: TDataSet);
    procedure CDSPresuDetAfterScroll(DataSet: TDataSet);
    procedure CDSPresuDetDESCUENTOSetText(Sender: TField; const Text: string);
    procedure CDSPresuCabDIAS_VIGENCIA_PRESUPESTOSetText(Sender: TField;
      const Text: string);
    procedure CDSPresuCabDSTOIMPORTESetText(Sender: TField; const Text: string);
    procedure CDSPresuCabDSTOIMPORTEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSPresuCabNETOGRAV1GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSPresuDetCODIGOARTICULOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSPresuDetCalcFields(DataSet: TDataSet);
    procedure CDSPresuSubDetNewRecord(DataSet: TDataSet);
    procedure CDSPresuSubDetCANTIDADSetText(Sender: TField; const Text: string);
    procedure CDSPresuSubDetCalcFields(DataSet: TDataSet);
    procedure CDSPresuCabPLAZO_ENTREGASetText(Sender: TField;
      const Text: string);
    procedure CDSPresuCabFECHA_TECNICASetText(Sender: TField;
      const Text: string);
    procedure CDSPresuCabFECHA_FINANCIERASetText(Sender: TField;
      const Text: string);
    procedure CDSPresuCabDESGLOZAIVAChange(Sender: TField);
    procedure CDSPresuCabReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CDSIncidenciasNewRecord(DataSet: TDataSet);
    procedure CDSContactoNewRecord(DataSet: TDataSet);
    procedure CDSPresuSubDetTOTAL_GRAVADOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CDSPresuSubDetTOTALGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSPresuCabID_OBRASetText(Sender: TField; const Text: string);
    procedure CDSPercepcionIVANewRecord(DataSet: TDataSet);
    procedure CDSPresuDetBeforeEdit(DataSet: TDataSet);
    procedure CDSPresuDetBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    Var_TasaIva            : Real;
    Importe                : String;
    MascaraDetalleUnitario : String;
    MascaraDetalleCantidad : String;
    MascaraDetalleTotal    : String;
    MascaraDetalleDescuento: String;
    MascaraIvaImporte      : String;
    MascaraIvaTasa         : String;
    MascaraCabecera        : String;
    CorreoDestino          : String;
    F8001                  : Boolean;
    FlagSumaDetalle        : Boolean;
    DesdeF8001,HastaF8001  : TDateTime;
    SucursalPercibeIIBB    : String;
    MargenUtilidad         : Extended;
    PROCEDURE HabilitarLabel;
   // PROCEDURE SumarDetalle;
    PROCEDURE SumarDetalleClon;
    PROCEDURE SumarSubDetalle;
    PROCEDURE CalcularTotales;
    PROCEDURE AplicarMascarasNumericas;
    procedure CalcularDetalles;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    FUNCTION AsignarArticulo(Dato: STRING): Boolean;
    FUNCTION AsignarCliente(Dato: STRING): Boolean;
    FUNCTION AsignarLdr(Cliente: STRING; Dato: integer): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarCondVenta(Cliente: STRING; Dato: Integer): Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION AsignarVendedor(Dato: String): Boolean;
    procedure SumaFinal;
    { Public declarations }
  END;

VAR
  DatosPresupuesto: TDatosPresupuesto;

IMPLEMENTATION

USES UPresupuesto_2, ComposicionPrecio, UDMain_FD,
     DMBuscadoresForm,UBuscadorArticulos, UMuestraListaCodBarra, DMStoreProcedureForm;

{$R *.DFM}


PROCEDURE TDatosPresupuesto.HabilitarLabel;
BEGIN
  {Si  no discrimina IVA}
  FormPresupuesto_2.DBGrillaIva.Visible := CDSPresuCabDesglozaIva.Value = 'S';
  WITH FormPresupuesto_2 DO
    BEGIN
      IF CDSPresuCab.State = dsBrowse THEN
        btModificar.Enabled := ( CDSPresuCabAnulado.Value = 'N' );
    END;
END;

procedure TDatosPresupuesto.CalcularDetalles;
var Aux,AuxCIva:Extended;
EstadoDet,EstadoCab:Boolean;
begin
  EstadoCab:=CDSPresuCab.ReadOnly;
  EstadoDet:=CDSPresuDet.ReadOnly;

  if CDSPresuCab.ReadOnly=True then
    CDSPresuCab.ReadOnly:=False;

  if CDSPresuDet.ReadOnly=True then
    CDSPresuDet.ReadOnly:=False;

  CDSPresuDet.First;
  while Not(CDSPresuDet.Eof) do
    begin

      if (FormPresupuesto_2.Calcula_iva_articulo=False) then
        begin
          // traigo los porcentajes de Iva
          CDSPresuDet.Edit;
          CDSPresuDetIVA_Tasa.AsFloat      := 0;
          CDSPresuDetIVA_SobreTasa.AsFloat := 0;

          Aux    :=CDSPresuDetUNITARIO_TOTAL.AsFloat;
          AuxCIva:=CDSPresuDetUNITARIO_TOTAL.AsFloat*(1+CDSPresuDetIVA_TASA.AsFloat*0.01);

          if (FormPresupuesto_2.Calcula_iva_articulo=True) and (FormPresupuesto_2.Divide_iva=True) then
            CDSPresuDetIVA_Tasa.AsFloat:=CDSPresuDetIVA_Tasa.AsFloat * 0.5;

           CDSPresuDetUNITARIO_TOTALSetText(CDSPresuDetUNITARIO_TOTAL,FloatToStr(AuxCIva));
        end
      else
        begin
          // traigo los porcentajes de Iva
          CDSPresuDet.Edit;
          CDSIva.Close;
          CDSIva.Params.ParamByName('id').Value := CDSPresuDetTipoIva_Tasa.Value;
          CDSIva.Open;
          IF NOT (CDSIva.IsEmpty) THEN
            CDSPresuDetIVA_Tasa.AsFloat := CDSIvaTasa.AsFloat;
          CDSIva.Close;
          CDSIva.Params.ParamByName('id').Value := CDSPresuDetTipoIva_SobreTasa.Value;
          CDSIva.Open;
          IF NOT (CDSIva.IsEmpty) THEN
            CDSPresuDetIVA_SobreTasa.AsFloat := CDSIvaTasa.AsFloat;

          Aux    :=CDSPresuDetUNITARIO_TOTAL.AsFloat;
          AuxCIva:=CDSPresuDetUNITARIO_TOTAL.AsFloat*(1+CDSPresuDetIVA_TASA.AsFloat*0.01);

          if (FormPresupuesto_2.Calcula_iva_articulo=True) and (FormPresupuesto_2.Divide_iva=True) then
            CDSPresuDetIVA_Tasa.AsFloat:=CDSPresuDetIVA_Tasa.AsFloat * 0.5;

          if  CDSPresuCabDesglozaIva.Value='N' then
           CDSPresuDetUNITARIO_TOTALSetText(CDSPresuDetUNITARIO_TOTAL,FloatToStr(AuxCIva));
        end;


      CDSPresuDet.Next;
    end;
  CDSPresuCab.ReadOnly:=EstadoCab;
  CDSPresuDet.ReadOnly:=EstadoDet;
end;

PROCEDURE TDatosPresupuesto.CalcularTotales;
VAR
  Modo: TFPURoundingMode;
  Acumulador,AcumuladorPIVA,Descuento,TotalOld,TotalNew,
  TotalGral,NetoTotal,SumaTotal: Extended;
  NetoGrav2,NetoExento2,NetoGrav1,NetoExento1,ImpuestoNeto,ImpuestoImporte:Extended;
BEGIN
  CDSPresuCabTotal.AsFloat      := 0;
  Acumulador                    := 0;
  AcumuladorPIVA                := 0;
  Descuento                     := CDSPresuCabDsto.AsFloat * 0.01;

  NetoGrav2                     := RoundTo( CDSPresuCabNetoGrav1.AsFloat * (1 - Descuento),-4);
  NetoExento2                   := RoundTo( CDSPresuCabNetoExen1.AsFloat * (1 - Descuento),-4);

  NetoGrav2                     := RoundTo(NetoGrav2,-3);
  NetoExento2                   := RoundTo(NetoExento2,-3);

  CDSPresuCabNETOGRAV2.AsFloat  := RoundTo(NetoGrav2,-2);
  CDSPresuCabNETOEXEN2.AsFloat  := RoundTo(NetoExento2,-2);

  // Si percibo IB calculo la percepcion
  if CDSPresuCabPERCIB_IB.Value='S' Then
    CDSPresuCabPERCECPION_IB_BASEIMPONIBLE.AsFloat := RoundTo (CDSPresuCabPERCECPION_IB_BASEIMPONIBLE.AsFloat * (1 - Descuento),-2)
  else
    CDSPresuCabPERCECPION_IB_BASEIMPONIBLE.AsFloat := 0;


  CDSPresuCabDSTOIMPORTE.AsFloat := (CDSPresuCabNetoGrav1.AsFloat + CDSPresuCabNETOEXEN1.AsFloat) -
                                    (CDSPresuCabNetoGrav2.AsFloat + CDSPresuCabNETOEXEN2.AsFloat);

  if IsZero(Descuento) then CDSPresuCabDSTOIMPORTE.AsFloat :=0;

  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
    WHILE NOT (CDSimpuestos.Eof) DO
      BEGIN
        TotalOld                    := Roundto(CDSImpuestosNETO.AsFloat+CDSImpuestosIMPORTE.AsFloat,-3);
        TotalOld                    := RoundTo(TotalOld,-2);
        TotalNew                    := RoundTo(TotalOld * (1 - Descuento),-2);
        CDSImpuestos.Edit;
        CDSImpuestosNETO.AsFloat    := 0;
        CDSImpuestosNETO.AsFloat    := TotalOld - CDSImpuestosIMPORTE.AsFloat;
        Modo:=GetRoundMode;
        SetRoundMode(rmUp);
        CDSImpuestosNETO.AsFloat    := RoundTo(CDSImpuestosNETO.AsFloat,-3);
        SetRoundMode(Modo);

        CDSImpuestosNETO.AsFloat    := RoundTo(CDSImpuestosNETO.AsFloat,-2);

        if Trunc(CDSPresuCabDSTO.AsFloat*100)<>0 then
          begin
            ImpuestoNETO    := RoundTo( TotalNew / (1+CDSImpuestosTASA.AsFloat*0.01),-3);
            ImpuestoNeto    := RoundTo( ImpuestoNeto,-2);
            ImpuestoIMPORTE := TotalNew - ImpuestoNeto ;

            CDSImpuestosNETO.AsFloat    := ImpuestoNeto;
            CDSImpuestosIMPORTE.AsFloat := ImpuestoImporte;
          end;
        Acumulador                  := Acumulador + CDSImpuestosIMPORTE.AsFloat;
        CDSImpuestos.Next;
      END;
  CDSImpuestos.EnableControls;
  FormPresupuesto_2.DBGrillaIva.Refresh;

  CDSPercepcionIVA.First;
  CDSPercepcionIVA.DisableControls;
    WHILE NOT (CDSPercepcionIVA.Eof) DO
      BEGIN
        TotalOld                        := Roundto(CDSPercepcionIVANETO.AsFloat+CDSPercepcionIVAIMPORTE.AsFloat,-3);
        TotalOld                        := RoundTo(TotalOld,-2);
        TotalNew                        := RoundTo(TotalOld * (1 - Descuento),-2);
        CDSPercepcionIVA.Edit;
        CDSPercepcionIVANETO.AsFloat    := 0;
        CDSPercepcionIVANETO.AsFloat    := TotalOld - CDSPercepcionIVAIMPORTE.AsFloat;
        Modo:=GetRoundMode;
        SetRoundMode(rmUp);
        CDSPercepcionIVANETO.AsFloat    := RoundTo(CDSPercepcionIVANETO.AsFloat,-3);
        SetRoundMode(Modo);

        CDSPercepcionIVANETO.AsFloat    := RoundTo(CDSPercepcionIVANETO.AsFloat,-2);

        if Trunc(CDSPresuCabDSTO.AsFloat*100)<>0 then
          begin
            ImpuestoNETO                    := RoundTo( TotalNew / (1+CDSPercepcionIVATASA.AsFloat*0.01),-3);
            ImpuestoNeto                    := RoundTo( ImpuestoNeto,-2);
            ImpuestoIMPORTE                 := TotalNew - ImpuestoNeto ;

            CDSPercepcionIVANETO.AsFloat    := ImpuestoNeto;
            CDSPercepcionIVAIMPORTE.AsFloat := ImpuestoImporte;
          end;
        AcumuladorPIVA                      := AcumuladorPIVA + CDSPercepcionIVAIMPORTE.AsFloat;
        CDSPercepcionIVA.Next;
      END;
  CDSPercepcionIVA.EnableControls;
  // Calculo de Percepcion de IVA....
 // FormPresupuesto_2.LbNetoPercepcion.Caption:='0.00';
  if AcumuladorPIVA<= DMMain_FD.Minim_Imp_Perc_IVA {3000} then
    begin
      CDSPercepcionIVA.first;
      AcumuladorPIVA:=0;
      while not(CDSPercepcionIVA.eof) do
        begin
         CDSPercepcionIVA.Delete;
         CDSPercepcionIVA.Next;
        end;
      CDSPercepcionIVA.Close;
      CDSPercepcionIVA.Open;
    end;

  Modo      :=GetRoundMode;
  SetRoundMode(rmUp);
  Acumulador:=RoundTo(Acumulador,-3);
  SetRoundMode(Modo);

  Acumulador:=RoundTo(Acumulador,-2);

  if (CDSPresuCabPERCIB_IB.Value='S') and
     (CDSPresuCabPERCECPION_IB_BASEIMPONIBLE.AsFloat>DMMain_FD.Minim_Imp_IB_Perc) Then
    CDSPresuCabPERCECEPION_IB_IMPORTE.AsFloat := RoundTo(CDSPresuCabPERCECPION_IB_BASEIMPONIBLE.AsFloat *
                                                        CDSPresuCabPERCEPCION_IB_TASA.AsFloat * 0.01,-2)
  else
    CDSPresuCabPERCECEPION_IB_IMPORTE.AsFloat :=0;

  SumaTotal     := roundTo(CDSPresuCabNETOGRAV2.AsFloat +
                           CDSPresuCabNETOEXEN2.AsFloat +
                           Acumulador + AcumuladorPIVA +
                           CDSPresuCabPERCECEPION_IB_IMPORTE.AsFloat,-3);

  CDSPresuCabTOTAL.AsFloat := RoundTo(SumaTotal,-2);

 // CDSVentaCabTotal.AsFloat := RoundTo(CDSVentaCabNetoGrav2.AsFloat +
//                              CDSVentaCabNetoExen2.AsFloat +
//                              Acumulador +
//                              CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat,-2);

    { DONE -cMensajes :
    TasaReal: esta tasa la uso como multiplicador para cuando el cliente es del tipo
    Monotributo o consumidor final, as'i muestro los importe con el Iva
    incluido.
    No esta con formato para que la cuenta me de bien..... creo...}

//   ( ( Total/ neto )- 1 ) x 100 = Tasa de Iva usada

  TotalGral := CDSPresuCabTOTAL.AsFloat -
               (CDSPresuCabPERCECEPION_IB_IMPORTE.AsFloat + AcumuladorPIVA +
               CDSPresuCabNETOEXEN2.AsFloat);
  NetoTotal := CDSPresuCabNETOGRAV2.AsFloat;// + CDSVentaCabNETOEXEN2.AsFloat;

  TRY
    if CDSPresuCabNETOGRAV2.AsFloat>0 Then
      Var_TasaIVA:= ((TotalGral/NetoTotal)-1)*100
                   //((TotalFinal/TotalNeto)-1)*100
    else
      Var_TasaIva:=0;
  EXCEPT
    ON EZeroDivide DO Var_TasaIva:=0;
  END;

//  CDSVentaCabNETOGRAV2.AsFloat  := StrToFloat( FormatFloat('0.00',(CDSVentaCabNETOGRAV1.AsFloat * (1 - Descuento))));  //RoundTo(CDSVentaCabNetoGrav1.AsFloat * (1 - Descuento), -2);
//  CDSVentaCabNETOGRAV1.AsFloat  := CDSVentaCabNETOGRAV1.AsFloat;

  // Para que se refresca el OnGetTex de Descuento.... lo reasgino de nuevo

  CDSPresuCabDSTOIMPORTE.AsFloat := (CDSpresuCabNETOGRAV1.AsFloat  +
                                     CDSPresuCabNETOEXEN1.AsFloat) -
                                    (CDSPresuCabNETOGRAV2.AsFloat  +
                                     CDSPresuCabNETOEXEN2.AsFloat);

  if IsZero(Descuento) then CDSPresuCabDSTOIMPORTE.AsFloat :=0;

  if CDSPresuCabNETOGRAV2.Value>0 then
    CDSPresuCabMARGEN_GENERAL.Value:= ((CDSPresuCabNETOGRAV2.Value - CDSPresuCabNETO_ACUMULADO.Value)/
                                               CDSPresuCabNETOGRAV2.Value)*100;

                                    //  CDSVentaCabDSTOIMPORTE.AsFloat := (CDSVentaCabNetoGrav1.AsFloat + CDSVentaCabNETOEXEN1.AsFloat) -
//                                    (CDSVentaCabNetoGrav2.AsFloat + CDSVentaCabNETOEXEN2.AsFloat);

END;

procedure TDatosPresupuesto.AplicarMascarasNumericas;
VAR I:Byte;
begin
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETUNITARI';
  DMMain_FD.QOpciones.Open;
  MascaraDetalleUnitario:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSPresuDetUnitario_Total).EditFormat    :='0.000';//MascaraDetalleUnitario;
  TFloatField(CDSPresuDetUnitario_Total).DisplayFormat :=MascaraDetalleUnitario;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETCANTIDA';
  DMMain_FD.QOpciones.Open;
  MascaraDetalleCantidad:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSPresuDetCantidad).EditFormat    :='0.000';//MascaraDetalleCantidad;
  TFloatField(CDSPresuDetCantidad).DisplayFormat :=MascaraDetalleCantidad;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETDESCUEN';
  DMMain_FD.QOpciones.Open;
  MascaraDetalleDescuento:=',0.00';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSPresuDetDescuento).EditFormat    :='0.000';//MascaraDetalleDescuento;
  TFloatField(CDSPresuDetDescuento).DisplayFormat :=MascaraDetalleDescuento;


  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETTOTAL';
  DMMain_FD.QOpciones.Open;
  MascaraDetalleTotal:=',0.00';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSPresuDetTotal).EditFormat        := '0.000';//MascaraDetalleTotal;
  TFloatField(CDSPresuDetTotal).DisplayFormat     := MascaraDetalleTotal;


  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='IVATASA';
  DMMain_FD.QOpciones.Open;
  MascaraIvaTasa:='0.0';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSPresuDetIVA_Tasa).EditFormat        := '0.000';//MascaraIvaTasa;
  TFloatField(CDSPresuDetIVA_Tasa).DisplayFormat     := MascaraIvaTasa;
  TFloatField(CDSPresuDetIVA_SobreTasa).EditFormat   := '0.000';//MascaraIvaTasa;
  TFloatField(CDSPresuDetIVA_SobreTasa).DisplayFormat:= MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).EditFormat           := '0.000';//MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).DisplayFormat        := MascaraIvaTasa;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='IVAIMPORTES';
  DMMain_FD.QOpciones.Open;
  MascaraIvaImporte:=',0.00';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSImpuestosIMPORTE).EditFormat        := '0.000';//MascaraIvaImporte;
  TFloatField(CDSImpuestosIMPORTE).DisplayFormat     := MascaraIvaImporte;
  TFloatField(CDSImpuestosNETO).EditFormat           := '0.000';//MascaraIvaImporte;
  TFloatField(CDSImpuestosNETO).DisplayFormat        := MascaraIvaImporte;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTACABECERA';
  DMMain_FD.QOpciones.Open;
  MascaraCabecera:=',0.00';//DMMain_FD.QOpciones.Fields[0].AsString;
  For i:=0 to CDSPresuCab.FieldCount-1 do
    begin
      if (CDSPresuCab.Fields[i].DataType=ftFMTBcd) Then
        begin
         // No respeto mas lo que venga de opciones fuerzo todo a dos decimales;
          TFloatField(CDSPresuCab.Fields[i]).EditFormat   :='0.000';//MascaraCabecera;
          TFloatField(CDSPresuCab.fields[i]).DisplayFormat:=MascaraCabecera;//MascaraCabecera;
        end
      else
        if (CDSPresuCab.Fields[i].DataType=ftFloat) Then
           begin
             // No respeto mas lo que venga de opciones fuerzo todo a dos decimales;
             TFloatField(CDSPresuCab.Fields[i]).EditFormat   :='0.000';//MascaraCabecera;
             TFloatField(CDSPresuCab.fields[i]).DisplayFormat:=MascaraCabecera;//MascaraCabecera;
          end;
    end;
  CDSPresuCabMONEDA_CPBTE_COTIZACION.EditFormat   :='0.000';
  CDSPresuCabMONEDA_CPBTE_COTIZACION.DisplayFormat:='0.000';

  DMMain_FD.QOpciones.Close;
end;



FUNCTION TDatosPresupuesto.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('Id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSPresuCabSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      DatosPresupuesto.CDSPresuCabMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.AsString;
      DatosPresupuesto.CDSPresuCabLETRAFAC.Value           := QComprobLETRA.AsString;
      DatosPresupuesto.CDSPresuCabTIPOCPBTE.Value          := QComprobTIPO_COMPROB.AsString;
      DatosPresupuesto.CDSPresuCabCLASECPBTE.Value         := QComprobCLASE_COMPROB.AsString;
      FormPresupuesto_2.Calcula_iva_articulo               := QComprobCALCULA_IVA_ARTICULOS.Value='S';
      FormPresupuesto_2.Divide_iva                         := QComprobDIVIDE_IVA.Value='S';

      FormPresupuesto_2.sbEstado.Panels[2].Text:='';

      if FormPresupuesto_2.Calcula_iva_articulo then
        FormPresupuesto_2.sbEstado.Panels[2].Text:='C/Iva';
      if FormPresupuesto_2.Divide_iva then
        FormPresupuesto_2.sbEstado.Panels[2].Text:='-/2';
    END
  ELSE
    BEGIN
      Result := False;
      DatosPresupuesto.CDSPresuCabMUESTRACOMPROBANTE.Value := '';
      DatosPresupuesto.CDSPresuCabLETRAFAC.Value           := '';
      DatosPresupuesto.CDSPresuCabTIPOCPBTE.Value          := '';
      DatosPresupuesto.CDSPresuCabCLASECPBTE.Value         := '';
    END;
END;

FUNCTION TDatosPresupuesto.AsignarArticulo(Dato: STRING): Boolean;
var Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
 Decimales:String;
 Enter:Char;
 i,Nx:Integer;

BEGIN
  IF DatosPresupuesto.CDSPresuDet.State = dsBrowse THEN
    DatosPresupuesto.CDSPresuDet.Edit;
  WITH DatosPresupuesto DO
    BEGIN
      CDSStock.Close;
      CDSStock.Params.ParamByName('Codigo').Value := Dato;
      CDSStock.Open;
      IF ((NOT (CDSStock.IsEmpty)) and (CDSStockCLASE_ARTICULO.Value<>0) and
          (CDSStockCLASE_ARTICULO.Value<>0) and (CDSStockCLASE_ARTICULO.Value<>2) and
         (CDSStockCLASE_ARTICULO.Value<>4))   THEN
        BEGIN
          //vacio todo los importes por si hay un cambio de codigo y no queden cargados los valores
          CDSPresuDetCANTIDAD.AsFloat                 := 0;
          CDSPresuDetUNITARIO_TOTAL.AsFloat           := 0;
          CDSPresuDetUNITARIO_GRAVADO.AsFloat         := 0;
          CDSPresuDetUNITARIO_EXENTO.AsFloat          := 0;
          CDSPresuDetTOTAL.AsFloat                    := 0;
          CDSPresuDetMUESTRACODALTERNATIVO.Value      := CDSStockREEMPLAZO_STK.Value;
          DMMain_FD.FechaUltimaActulizacionPrecio     := CDSStockFUAP.AsDAteTime;
          CDSPresuDetDETALLE.AsString                 := CDSStockDetalle_Stk.AsString;
          CDSPresuDetIB_TASA.AsFloat                  := CDSStockMUESTRATASAIB.AsFloat;  // el codigo de Tasa
          CDSPresuDetTIPOIB_TASA.Value                := CDSStockTASA_IB.Value;          // Codigo de IB
          CDSPresuDetGRAVADO_IB.Value                 := CDSStockGRAVADO_IB.Value;

          CDSPresuDetUNIDAD.Value                     := CDSStockUnidad.Value;
          CDSPresuDetCOSTO_GRAVADO.AsFloat            := CDSStockFijacion_Precio_Gravado.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat;;
          CDSPresuDetCOSTO_EXENTO.AsFloat             := CDSStockFijacion_Precio_Exento.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat;
          CDSPresuDetCOSTO_TOTAL.AsFloat              := CDSStockFijacion_Precio_Total.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat;
          CDSPresuDetAFECTA_STOCK.Value               := CDSStockControlaStock.Value;
          CDSPresuDetMODO_GRAVAMEN.Value              := CDSStockModo_Gravamen.Value;
          CDSPresuDetTIPOIVA_TASA.Value               := CDSStockTasa_Iva.Value;
          CDSPresuDetTIPOIVA_SOBRETASA.Value          := CDSStockSobreTasa_Iva.Value;
          //Asigno el deposito que tengo en el encabezado...
          CDSPresuDetDEPOSITO.Value                   := CDSPresuCabDeposito.Value;
          //segun el tipo de inscripcion verifico si descrimina o no iva y si cobra Sobre tasa
          CDSPresuDetDESGLOZAIVA.Value                := CDSPresuCabDesglozaIva.Value;
          CDSPresuDetCALCULA_SOBRETASA.Value          := CDSPresuCabCalcula_SobreTasa.Value;

          CDSPresuDetPERCIBE_IVA.AsString             := CDSStockPERCIBE_IVA.AsString;
          CDSPresuDetID_TASA_PERCEPCION_IVA.Value     := CDSStockID_TASA_PERCEP_IVA.Value;
          CDSPresuDetTASA_PERCEP_IVA.Value            := DMMain_FD.GetTasaPercepcionIVA(CDSStockID_TASA_PERCEP_IVA.Value);
          CDSPresuDetPERCEPCION_IVA_DIFERENCIAL.Value := CDSStockAPLICA_TASA_DIF.Value;


          if (CDSPresuCabDESGLOZAIVA.Value='S') then
            begin
              DMMain_FD.CDSVerifRes3886.Close;
              DMMain_FD.CDSVerifRes3886.Params.ParamByName('Rubro').Value   :=CDSStockRUBRO_STK.Value;
              DMMain_FD.CDSVerifRes3886.Params.ParamByName('SubRubro').Value:=CDSStockSUBRUBRO_STK.Value;
              DMMain_FD.CDSVerifRes3886.Open;
              if ((DMMain_FD.CDSVerifRes3886.Fields[0].AsString<>'') and  (DMMain_FD.CDSVerifRes3886.Fields[0].Value>0)) then
              if DMMain_FD.VerifRes3886(CDSStockSUBRUBRO_STK.AsString) then
                begin
                  if Not( (F8001) and ( (CDSPresuCabFECHAVTA.AsDateTime <= HastaF8001) and
                                        (CDSPresuCabFECHAVTA.AsDateTime >= DesdeF8001) ) ) then
                  ShowMessage('Para este rubro de Articulo debe presentar F 8001 Segun Res.AFIP 3668... Verifique esto... o genere el Formulario..');
                end;
              DMMain_FD.CDSVerifRes3886.Close;
            end;

          // traigo los porcentajes de Iva
          CDSIva.Close;
          CDSIva.Params.ParamByName('id').Value := CDSPresuDetTipoIva_Tasa.Value;
          CDSIva.Open;
          IF NOT (CDSIva.IsEmpty) THEN
            CDSPresuDetIVA_Tasa.AsFloat := CDSIvaTasa.AsFloat;
          CDSIva.Close;
          CDSIva.Params.ParamByName('id').Value := CDSPresuDetTipoIva_SobreTasa.Value;
          CDSIva.Open;
          IF NOT (CDSIva.IsEmpty) THEN
            CDSPresuDetIVA_SobreTasa.AsFloat := CDSIvaTasa.AsFloat;

          if (FormPresupuesto_2.Calcula_iva_articulo=False) then
            CDSPresuDetIVA_Tasa.AsFloat:=0;

          if (FormPresupuesto_2.Calcula_iva_articulo=True) and (FormPresupuesto_2.Divide_iva=True) then
            CDSPresuDetIVA_Tasa.AsFloat:=CDSPresuDetIVA_Tasa.AsFloat * 0.5;

          CDSPresuDetID_MONEDA.Value:= CDSStockMONEDA.Value;
          QMonedas.Close;
          QMonedas.ParamByName('id').Value:= CDSStockMONEDA.Value;
          QMonedas.Open;
          if QMonedasCOTIZACION.AsString<>'' then
            CDSPresuDetCOTIZACION.AsFloat := QMonedasCOTIZACION.AsFloat
          else
            CDSPresuDetCOTIZACION.AsFloat := 1;
          CDSPresuDetMUESTRASIGNO.Value:= QMonedasSIGNO.Value;
          QMonedas.Close;

          CDSPresuDetCosto_Gravado.AsFloat   := (CDSPresuDetCosto_Gravado.AsFloat/CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSPresuDetCOTIZACION.AsFloat;
          CDSPresuDetCosto_Exento.AsFloat    := (CDSPresuDetCosto_Exento.AsFloat/CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSPresuDetCOTIZACION.AsFloat;
          CDSPresuDetCosto_Total.AsFloat     := (CDSPresuDetCosto_Total.AsFloat/CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSPresuDetCOTIZACION.AsFloat;


          DMMain_FD.CalculaPrecioVta_FD('N',DMMain_FD.IdListaProveedor, CDSPresuCabLISTAPRECIO.Value,CDSPresuCabSUCURSAL.Value,CDSPresuCabDEPOSITO.Value,
                                        CDSPresuDetCODIGOARTICULO.AsString,CDSPresuCabCODIGO.AsString,CDSPresuCabTIPOCPBTE.Value,
                                        CDSPresuDetCOTIZACION.AsFloat,
                                        CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat,
                                        Gravado,exento,Total,Iva,Margen,dscto,PFinal);


          if (FormPresupuesto_2.Divide_iva=True) then
              Iva:=Iva/2;
          if (FormPresupuesto_2.Calcula_iva_articulo=False) then
              Iva:=0;


          CDSPresuDetUNITARIO_GRAVADO.AsFloat:= Gravado;
          CDSPresuDetUNITARIO_EXENTO.AsFloat := Exento;
          CDSPresuDetUNITARIO_TOTAL.AsFloat  := Total;
          CDSPresuDetIVA_UNITARIO.AsFloat    := Iva;
          CDSPresuDetMARGEN.ASFloat          := Margen;
          CDSPresuDetDESCUENTO.AsFloat       := Dscto;

          // para probar los decimales ....
          Decimales:=(Copy(MascaraDetalleUnitario,pos('.',MascaraDetalleUnitario)+1,length(MascaraDetalleUnitario)));

          if Length(Decimales)=2 then
            begin
              CDSPresuDetUNITARIO_GRAVADO.AsFloat:= RoundTo(Gravado,-3);
              CDSPresuDetUNITARIO_EXENTO.AsFloat := RoundTo(Exento,-3);
              CDSPresuDetUNITARIO_TOTAL.AsFloat  := RoundTo(Total,-3);
              CDSPresuDetIVA_UNITARIO.AsFloat    := RoundTo(Iva,-3);

              CDSPresuDetUNITARIO_GRAVADO.AsFloat:= RoundTo(CDSPresuDetUNITARIO_GRAVADO.AsFloat,-2);
              CDSPresuDetUNITARIO_EXENTO.AsFloat := RoundTo(CDSPresuDetUNITARIO_EXENTO.AsFloat,-2);
              CDSPresuDetUNITARIO_TOTAL.AsFloat  := RoundTo(CDSPresuDetUNITARIO_TOTAL.AsFloat,-2);
              CDSPresuDetIVA_UNITARIO.AsFloat    := RoundTo(CDSPresuDetIVA_UNITARIO.AsFloat,-2);

            end
          else
          if Length(Decimales)=3 then
            begin
              CDSPresuDetUNITARIO_GRAVADO.AsFloat:= RoundTo(Gravado,-4);
              CDSPresuDetUNITARIO_EXENTO.AsFloat := RoundTo(Exento,-4);
              CDSPresuDetUNITARIO_TOTAL.AsFloat  := RoundTo(Total,-4);
              CDSPresuDetIVA_UNITARIO.AsFloat    := RoundTo(Iva,-4);

              CDSPresuDetUNITARIO_GRAVADO.AsFloat:= RoundTo(CDSPresuDetUNITARIO_GRAVADO.AsFloat,-3);
              CDSPresuDetUNITARIO_EXENTO.AsFloat := RoundTo(CDSPresuDetUNITARIO_EXENTO.AsFloat,-3);
              CDSPresuDetUNITARIO_TOTAL.AsFloat  := RoundTo(CDSPresuDetUNITARIO_TOTAL.AsFloat,-3);
              CDSPresuDetIVA_UNITARIO.AsFloat    := RoundTo(CDSPresuDetIVA_UNITARIO.AsFloat,-3);

            end;

          // ****************************************************
          // **** Cantidad desde PLU ****************************
          // ****************************************************
                    // control de Ingreso PLU
          if (FormPresupuesto_2.IngresoAutomatico='S'){ or (DMMain_FD.DesdePLU)}  Then
            begin
              Enter:=#13;
              {if CantidadItem>0 then
                CDSPresuDetCantidad.Text      := FloatToStr(CantidadItem))
              else                                                  }
              CDSPresuDetCantidad.Text      := '1';
             //Cantidad   Posicionar Columna x Nombre de Campo
              for i:= 0 to FormPresupuesto_2.DBGrillaDetalle.Columns.Count-1 do
                begin
                  if FormPresupuesto_2.DBGrillaDetalle.Columns[I].FieldName='CANTIDAD' Then
                    Nx:=i;
                end;

              FormPresupuesto_2.DBGrillaDetalle.SelectedIndex:= Nx;
              FormPresupuesto_2.DBGrillaDetalleKeyPress(FormPresupuesto_2.DBGrillaDetalle,Enter);
              Enter:=#0;
            end;

          if DMMain_FD.DesdePLU then
            begin
              Enter:=#13;
              if DMMain_FD.ModoPLU=0 then  //Precio
                begin
                  CDSPresuDetUnitario_TotalSetText(CDSPresuDetUNITARIO_TOTAL,FLoatToStr(StrToFloat(DMMain_FD.PrecioPLU)*DMMain_FD.PluCoeficiente {0.01}));
                  FormPresupuesto_2.DBGrillaDetalle.SelectedIndex:=4;
                  FormPresupuesto_2.DBGrillaDetalleKeyPress(FormPresupuesto_2.DBGrillaDetalle,Enter);
                end
              else
                if DMMain_FD.ModoPLU=1 then //Cantidad
                  begin
                    CDSPresuDetCantidadSetText(CDSPresuDetCantidad,FLoatToStr(StrToFloat(DMMain_FD.PrecioPLU)*0.001));
                    FormPresupuesto_2.DBGrillaDetalle.SelectedIndex:=4;
                    FormPresupuesto_2.DBGrillaDetalleKeyPress(FormPresupuesto_2.DBGrillaDetalle,Enter);
                    Enter:=#0;
                  end;
              Enter:=#0;
            end;
          // **** Fin desde PLU *********************************
          // ****************************************************
//
          Result := True;

        END
      ELSE
        Result := False;
    END;
END;

FUNCTION TDatosPresupuesto.AsignarCliente(Dato: STRING): Boolean;
var
Ret,Perc:Extended;     IBDesde, IBHasta: TDateTime;
BEGIN
  WITH FormPresupuesto_2 DO
    BEGIN
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := Dato;
      QClientes.Open;
      IF NOT (QClientes.IsEmpty) THEN
        BEGIN
          CDSPresuCabNombre.AsString            := QClientesNOMBRE.AsString;
          CDSPresuCabRazonSocial.AsString       := QClientesRAZON_SOCIAL.ASString;
          CDSPresuCabCuit.AsString              := QClientesNRO_DE_CUIT.AsString;
          CDSPresuCabDireccion.AsString         := QClientesDIRECCION_COMERCIAL.AsString;
          CDSPresuCabTipoIVA.AsString           := QClientesCONDICION_IVA.AsString;
          CDSPresuCabCPostal.AsString           := QClientesCPOSTAL.AsString;
          CDSPresuCabLocalidad.AsString         := QClientesLOCALIDAD.AsString;
          CDSPresuCabZona.AsInteger             := QClientesZONA.AsInteger;
          CDSPresuCabLdr.Clear; //Value            :=0;
          CDSPresuCabREFERENCIA.Value           := QClientesTELEFONO_CONTACTO.Value;
          //**********************************************************
          //**********************************************************
          // aca le pongo la tasa de percepcion de IIBB  General
          CDSPresuCabPERCIB_IB.AsString         := BoolToStr(DMMain_FD.AgentePercepcionIB,True);
          CDSPresuCabPERCEPCION_IB_TASA.AsFloat := DMMain_FD.TasaPercepcionIB;
          // ******************************************************
          CorreoDestino                     :=QClientesCORREOELECTRONICO.Value;
          {Buscar Condicion de Inscripciion en  IVA}
          CDSInscripcion.Close;
          CDSInscripcion.Params.ParamByName('Codigo').Value := CDSPresuCabTipoIva.Value;
          CDSInscripcion.Open;
          IF NOT CDSInscripcion.IsEmpty THEN
            BEGIN
              CDSPresuCabCalcula_SobreTasa.Value := CDSInscripcionCobraSobretasa.Value;
              CDSPresuCabDesglozaIva.Value       := CDSInscripcionDISCRIMINAIVA.Value;
              CDSPresuCabMUESTRAIVA.Value        := CDSInscripcionDETALLE.Value;
              CDSPresuCabPERCIB_IB.Value         := CDSInscripcionAPLICAPERCEPCIONIIBB.Value;
              CDSPresuCabPERCIBE_IVA.Value       := CDSInscripcionAPLICAPERCEPCIONIVA.Value;
              if (DMMain_FD.AgentePercepcionIVA='N') then
                CDSPresuCabPERCIBE_IVA.Value  := 'N';
              if Not(DMMain_FD.AgentePercepcionIB) then
                CDSPresuCabPERCIB_IB.Value   :='N';

                 //***(1)****
            END;
          CDSInscripcion.Close;

          if CDSPresuCabTipoIva.Value=3 then
             CDSPresuCabPERCIB_IB.Value           := 'N';

          cxGrid1DBTableView1TOTAL_FINAL.Visible := (CDSPresuCabDESGLOZAIVA.Value='N');
          cxGrid1DBTableView1TOTAL.Visible       := (CDSPresuCabDESGLOZAIVA.Value='S');

          //*****************************************
          // aca controlo si percibe I.Brutos o No
          //*****************************************
          if CDSPresuCabPERCIB_IB.AsString[1]='S' Then
            begin
              // Verifico si esta en el listado de Tasa Percepcion..
              // el valor de la tasa se carga al hacer un nuevo comprobante
              Perc := CDSPresuCabPERCEPCION_IB_TASA.AsFloat;
              Ret  := 0;
//              DMMain_FD.QTasaPercep_Retencion_IIBB.Close;
//              DMMain_FD.QTasaPercep_Retencion_IIBB.ParamByName('cuit').Value:= QClientesNRO_DE_CUIT.AsString;
//              DMMain_FD.QTasaPercep_Retencion_IIBB.Open;
//              if DMMain_FD.QTasaPercep_Retencion_IIBBCUIT.AsString<>'' Then
              if DMMain_FD.TasaPerRetIIBB_CUIT(QClientesNRO_DE_CUIT.AsString,Perc,Ret,IBDesde,IBHasta) and
                  (CDSPresuCabFECHAVTA.AsDateTime>= IBHasta) and             //DMMain_FD.QTasaPercep_Retencion_IIBBHASTA.AsDateTime) and
                  (CDSPresuCabFECHAVTA.AsDAteTime<= IBDesde)                 // DMMain_FD.QTasaPercep_Retencion_IIBBDESDE.AsDateTime))
              then
                CDSPresuCabPERCEPCION_IB_TASA.AsFloat   :=  Perc            //DMMain_FD.QTasaPercep_Retencion_IIBBTASA_PERCEPCION.AsFloat
              else
                begin
                  DMMain_FD.Consulta_PadronIIBB(QClientesNRO_DE_CUIT.AsString,CDSPresuCabFECHAVTA.AsDateTime,Perc,Ret);
                  CDSPresuCabPERCEPCION_IB_TASA.AsFloat:=Perc;
                end;
//                end
//              else
//                begin
//                  DMMain_FD.Consulta_PadronIIBB(QClientesNRO_DE_CUIT.AsString,CDSPresuCabFECHAVTA.AsDateTime,Perc,Ret);
//                  CDSPresuCabPERCEPCION_IB_TASA.AsFloat:=Perc;
//                end;

              if SucursalPercibeIIBB='N' Then
                CDSPresuCabPERCIB_IB.Value := 'N'
              else
                CDSPresuCabPERCIB_IB.Value := 'S';

//              DMMain_FD.QTasaPercep_Retencion_IIBB.Close;
              //**************************************************
              if QClientesPERCIBIR_IB.Value='N' Then
                CDSPresuCabPERCIB_IB.Value:='N';
              if (QClientesINSCRIPTO_MULTICONVENIO.Value='S') and
                 (CDSPresuCabFECHAVTA.AsDateTime <= QClientesFECHA_VENCIMI_DDJJ_MULTI.AsDateTime) Then
                   CDSPresuCabPERCIB_IB.Value    := 'N'
              else
                if (QClientesINSCRIPTO_MULTICONVENIO.Value='S') and
                   (CDSPresuCabFECHAVTA.AsDateTime>QClientesFECHA_VENCIMI_DDJJ_MULTI.AsDateTime) Then
                   Begin
                     ShowMessage('Fecha de DDJJ Fuera de Termino..... Se aplica percepciones...');
                     CDSPresuCabPERCIB_IB.Value    := 'S'
                   end;
            end
          else
            begin
              // aca le pongo la tasa de percepcion de IIBB  General
//              CDSVentaCabPERCIBE_IB.Value          := 0;
              CDSPresuCabPERCEPCION_IB_TASA.AsFloat:= 0;
              // ******************************************************
            end;

          HabilitarLabel;
          //asigno el comprobante segun condicion de Inscripcion

//          DMMain_FD.CDSCompPorTipo.Close;                                  // el cliente es que determina si el compr. desicrimina o no iva ***(1)***
//          DMMain_FD.CDSCompPorTipo.Params.ParamByName('desglozaIva').Value:='N'; // para este tipo de Comprobante va Siempre 'N' para la busqueda
//          DMMain_FD.CDSCompPorTipo.Params.ParamByName('sucursal').Value   :=SucursalPorDefecto;
//          DMMain_FD.CDSCompPorTipo.Params.ParamByName('compraventa').Value:='V';
//          DMMain_FD.CDSCompPorTipo.Params.ParamByName('tipo').Value       :='PR';
//          DMMain_FD.CDSCompPorTipo.Open;
//          DMMain_FD.CDSCompPorTipo.First;
//          if DMMain_FD.CDSCompPorTipo.Fields[0].AsString<>'' Then
//            CDSPresuCabID_TIPOCOMPROBANTESetText(CDSPresuCabID_TIPOCOMPROBANTE,DMMain_FD.CDSCompPorTipo.Fields[0].AsString);
          if DMMain_FD.CpbtePorTipo('PR','V',SucursalPorDefecto,'N')<>'' then
            CDSPresuCabID_TIPOCOMPROBANTESetText(CDSPresuCabID_TIPOCOMPROBANTE,DMMain_FD.CpbtePorTipo('PR','V',SucursalPorDefecto,'N'));

          //Traingo el Primer LDR

          QPrimerLdr.CLose;
          QPrimerLdr.ParamByName('codigo').AsString:=Dato;
          QPrimerLdr.Open;
          if Not(QPrimerLdr.IsEmpty) Then
            if QPrimerLdr.Fields[0].AsString<>'' Then
              CDSPresuCabLDRSetText(CDSPresuCabLDR,QPrimerLdr.Fields[0].AsString)
            else
              begin
                ShowMessage('No tiene Ldr cargado.....');
                CDSPresuCabLDR.Clear;
                CDSPresuCabMUESTRALDR.Clear;
              end;
          QPrimerLdr.CLose;
          //Traingo la primer con. de vta
          QPrimerConVta.CLose;
          QPrimerConVta.ParamByName('codigo').AsString:=Dato;
          QPrimerConVta.Open;
          if Not(QPrimerConVta.IsEmpty) Then
            if QPrimerConVta.Fields[0].AsString<>'' Then
              CDSPresuCabCONDICIONVTASetText(CDSPresuCabCONDICIONVTA,QPrimerConVta.Fields[0].AsString)
            else
              begin
                ShowMessage('No tiene Condiciones de Vta. cargadas....');
                CDSPresuCabCONDICIONVTA.Clear;
                CDSPresuCabMUESTRACONDVENTA.Clear;
              end;
          QPrimerConVta.CLose;

          if QClientesVENDEDOR.AsString<>'' Then
            begin
              CDSPersonal.Close;
              CDSPersonal.Params.ParamByName('Codigo').Value:=QClientesVENDEDOR.AsString;
              CDSPersonal.Open;
              IF NOT (CDSPersonal.IsEmpty) THEN
                CDSPresuCabVENDEDORSetText(CDSPresuCabVENDEDOR,QClientesVENDEDOR.AsString)
              else
                CDSPresuCabVENDEDORSetText(CDSPresuCabVENDEDOR,DMMain_FD.EmpleadoPorDefecto);
              CDSPersonal.Close;
            end
          else
            begin
              if (DMMain_FD.EmpleadoPorDefecto<>'') and (DMMain_FD.EmpleadoPorDefecto<>'-1')  then
                CDSPresuCabVENDEDORSetText(CDSPresuCabVENDEDOR,DMMain_FD.EmpleadoPorDefecto);
            end;

          // aca tomo la lista de precio del cliente si no dejo la que esta
          CDSPresuCabLISTAPRECIO.Value:=DMMain_FD.ListaPorDefecto(CDSPresuCabSUCURSAL.Value);
          QBuscaListaPrecio.Close;
          QBuscaListaPrecio.ParamByName('id').Value:=QClientesLISTAPRECIOS.Value;
          QBuscaListaPrecio.Open;
          if QBuscaListaPrecioID.AsString<>'' then
            begin
              if QClientesLISTAPRECIOS.AsString<>'' Then
                BEGIN
                  CDSPresuCabLISTAPRECIO.Value:=QClientesLISTAPRECIOS.Value;
                  if (FormPresupuesto_2.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString<>'') and
                     (FormPresupuesto_2.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsInteger>-1)  Then
                    CDSPresuCabCondicionVtaSetText(CDSPresuCabCondicionVta,FormPresupuesto_2.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString);
                END
              else
                if (CDSPresuCabLISTAPRECIO.AsString<>'') and
                   (FormPresupuesto_2.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsInteger>-1) Then
                  CDSPresuCabCondicionVtaSetText(CDSPresuCabCONDICIONVTA,FormPresupuesto_2.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString);
            end;
          QBuscaListaPrecio.Close;

          if (CDSPresuCabTIPOIVA.Value = 3) and ((CDSPresuCabCUIT.AsString='') or (CDSPresuCabCUIT.AsString='00-00000000-0')) Then  // si es consumidor final
            CDSPresuCabCUIT.AsString     := QClientesNRODOCUMENTO.AsString;
          if CDSPresuCabTIPOIVA.Value=3 Then  // si es consumidor final
            CDSPresuCabPERCIB_IB.Value    := 'N';

          F8001     := QClientesPRESENTO_F8001.Value='S';
          DesdeF8001:= Trunc(QClientesDESDE_F8001.AsDateTime);
          HastaF8001:= Trunc(QClientesHASTA_F8001.AsDateTime);


   //     RxDBEDeposito.SetFocus;
          Result := True;
        END
      ELSE
        Result := False;
    END;
END;

FUNCTION TDatosPresupuesto.AsignarLdr(Cliente: STRING; Dato: integer): Boolean;
BEGIN
  CDSLdr.Close;
  CDSLdr.Params.ParamByName('Codigo').Value := Cliente;
  CDSLdr.Params.ParamByName('Ldr').Value := Dato;
  CDSLdr.Open;
  IF NOT (CDSLdr.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSPresuCabMuestraLdr.Value := CDSLdrNOMBRE.Value;
    END
  ELSE
    Result := False;
  CDSLdr.Close;
END;

FUNCTION TDatosPresupuesto.AsignarSucursal(Dato: Integer): Boolean;
var
  Perc, Ret:  Extended;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      CDSPresuCabID_TIPOCOMPROBANTE.Clear;
      CDSPresuCabMUESTRACOMPROBANTE.Clear;
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:= 'select * from comprobantes where sucursal = :suc and '+
                                                 ' compra_venta = ''V'' and (tipo_comprob = ''PR'' ) ';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value  := DatosPresupuesto.CDSPresuCabSUCURSAL.Value;
      DMBuscadores.CDSBuscaComprob.Open;

      if DMBuscadores.CDSBuscaComprob.RecordCount=1 Then
        begin
          DatosPresupuesto.CDSPresuCabID_TIPOCOMPROBANTESetText(DatosPresupuesto.CDSPresuCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
        end
      else
        if DMBuscadores.CDSBuscaComprob.RecordCount>1 Then
          begin
            DMBuscadores.CDSBuscaComprob.Filtered:=False;
            DMBuscadores.CDSBuscaComprob.Filter  :='(DEFECTO = ''S'' ) and ( EN_USO = ''S'' )';
            DMBuscadores.CDSBuscaComprob.Filtered:=True;
            if DMBuscadores.CDSBuscaComprob.RecordCount>0 then
              begin
                DMBuscadores.CDSBuscaComprob.First;
                if DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString<>'' then
                  begin
                    CDSPresuCabID_TIPOCOMPROBANTESetText(CDSPresuCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
                    FormPresupuesto_2.RxDBECodigo.SetFocus;
                  end;
              end
            else
              begin
                DMBuscadores.CDSBuscaComprob.Filtered:=False;
                DMBuscadores.CDSBuscaComprob.Filter  :='( EN_USO = ''S'' )';
                DMBuscadores.CDSBuscaComprob.Filtered:=True;
                if DMBuscadores.CDSBuscaComprob.RecordCount>0 then
                  begin
                    DMBuscadores.CDSBuscaComprob.First;
                    if DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString<>'' then
                      begin
                        CDSPresuCabID_TIPOCOMPROBANTESetText(CDSPresuCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
                        FormPresupuesto_2.RxDBECodigo.SetFocus;
                      end;
                 end;
              end;
          end;
      DMBuscadores.CDSBuscaComprob.Filtered:=False;
      DMBuscadores.CDSBuscaComprob.Filter  :='';
      DMBuscadores.CDSBuscaComprob.close;

      SucursalPercibeIIBB := CDSSucursalAPLICA_PERCEPCION_IIBB.AsString;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value:=CDSPresuCabCODIGO.AsString;
      QClientes.Open;
//      DMMain_FD.QTasaPercep_Retencion_IIBB.Close;
//      DMMain_FD.QTasaPercep_Retencion_IIBB.ParamByName('cuit').Value:= QClientesNRO_DE_CUIT.AsString;
//      DMMain_FD.QTasaPercep_Retencion_IIBB.Open;
//      if DMMain_FD.QTasaPercep_Retencion_IIBBCUIT.AsString<>'' Then
//        CDSPresuCabPERCEPCION_IB_TASA.AsFloat := DMMain_FD.QTasaPercep_Retencion_IIBBTASA_PERCEPCION.AsFloat
      if DMMain_FD.TasaPerRetIIBB_CUIT(QClientesNRO_DE_CUIT.AsString, Perc, Ret) then
        CDSPresuCabPERCEPCION_IB_TASA.AsFloat :=  Perc
      else
        if SucursalPercibeIIBB='N' Then
          CDSPresuCabPERCIB_IB.AsString := 'N'
        else
          CDSPresuCabPERCIB_IB.AsString := 'S';
//     DMMain_FD.QTasaPercep_Retencion_IIBB.Close;
      QClientes.Close;

      DMBuscadores.CDSBuscaComprob.Close;
      Result := True;
      CDSPresuCabMuestraSucursal.AsString := CDSSucursalDetalle.AsString;
    END
  ELSE
    Result := False;
  CDSSucursal.Close;
END;

FUNCTION TDatosPresupuesto.AsignarCondVenta(Cliente: STRING; Dato: Integer):
  Boolean;
BEGIN
  CDSCondVenta.Close;
  CDSCondVenta.Params.ParamByName('Codigo').Value := Cliente;
  CDSCondVenta.Params.ParamByName('CodigoPago').Value := Dato;
  CDSCondVenta.Open;
  IF NOT (CDSCondVenta.Eof) THEN
    BEGIN
      Result := True;
      CDSPresuCabMuestraCondVenta.Value := CDSCondVentaDetalle.Value;
    END
  ELSE
    Result := False;
  CDSCondVenta.Close;
END;

FUNCTION TDatosPresupuesto.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value := Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.Eof) THEN
    BEGIN
      Result := True;
      CDSPresuCabMuestraDeposito.Value := CDSDepositoNOMBRE.Value;
    END
  ELSE
    Result := False;
  CDSDeposito.Close;
END;

FUNCTION TDatosPresupuesto.AsignarVendedor(Dato: String): Boolean;
BEGIN
  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('Codigo').Value:=Dato;
  CDSPersonal.Open;
  IF NOT (CDSPersonal.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSPresuCabMUESTRAVENDEDOR.Value    := CDSPersonalNOMBRE.Value;
      CDSPresuCabCOMISIONVENDEDOR.AsFloat := CDSPersonalCOMISION.AsFloat;
    END
  ELSE
    begin
      Result:=False;
      CDSPresuCabMUESTRAVENDEDOR.Clear;
      CDSPresuCabCOMISIONVENDEDOR.Clear;
    end;
  CDSPersonal.Close;
END;


PROCEDURE TDatosPresupuesto.CDSPresuCabNewRecord(DataSet: TDataSet);
BEGIN
  CDSPresuCabID_PR.Value               := ibg_PreCab.IncrementFD(1);
  CDSPresuCabNOMBRE.AsString           := '';
  CDSPresuCabRAZONSOCIAL.AsString      := '';
  CDSPresuCabCUIT.AsString             := '';
  CDSPresuCabDIRECCION.AsString        := '';
  CDSPresuCabTIPOIVA.AsString          := '';
  CDSPresuCabCPOSTAL.AsString          := '';
  CDSPresuCabLETRAFAC.AsString         := 'O';
  CDSPresuCabTIPOCPBTE.AsString        := 'PR';
  CDSPresuCabIMPRESO.AsString          := 'N';
  CDSPresuCabANULADO.AsString          := 'N';
  CDSPresuCabPERCIBE_IVA.AsString      := 'N';
  CDSPresuCabSUCFAC.AsString           := '0000';
  CDSPresuCabNUMEROFAC.AsString        := '00000000';
  CDSPresuCabSUB_NRO.AsString          := '00';
  CDSPresuCabDSTO.ASFloat              := 0;
  CDSPresuCabNETOEXEN1.AsFloat         := 0;
  CDSPresuCabNETOEXEN2.AsFloat         := 0;
  CDSPresuCabDSTOIMPORTE.AsFloat       := 0;
  CDSPresuCabFECHAVTA.AsDateTime       := Date;
  CDSPresuCabNRORTO.AsString           := '';
  CDSPresuCabID_FACTURA.Value          := -1;
  CDSPresuCabSucursalSetText(CDSPresuCabSUCURSAL,IntToStr(FormPresupuesto_2.SucursalPorDefecto));
  CDSPresuCabDEPOSITOSetText(CDSPresuCabDEPOSITO,IntToStr(FormPresupuesto_2.DepositoPorDefecto));
  CDSPresuCabUSUARIO.Value             := DMMain_FD.UsuarioActivo;
  CDSPresuCabID_PRESU_NEXT.Value       := -1;
  CDSPresuCabID_PRESU_PREV.Value       := -1;
  CDSPresuCabTIPO_OBRA.Value           := -1;
  CDSPresuCabFECHA_TECNICA.Clear;
  CDSPresuCabFECHA_FINANCIERA.Clear;
  CDSPresuCabFECHA_ENTREGA.Clear;
  CDSPresuCabPLAZO_ENTREGA.Value       := 1;
  CDSPresuCabCUMPLIO_TECNICA.Value     := 'N';
  CDSPresuCabCUMPLIO_FINANCIERA.Value  := 'N';
  CDSPresuCabFECHA_REVISION.AsDateTime := Date;
  CDSPresuCabID_OBRA.Value             := 0;
  CDSPresuCabNROCPBTE2.AsString        := '000000000000000';
  CDSPresuCabTIENE_PLANO.AsString      := 'N';
  CDSPresuCabID_FACTURA_ANTICIPO.Value := -1;
  CDSPresuCabPARA_ACOPIO.Value         :='N';
  CDSPresuCabA_COBRAR.Value            :='N';

  //  DMMain_FD.QListaPrecioPorDefecto.CLose;
//  DMMain_FD.QListaPrecioPorDefecto.Open;
//  if DMMain_FD.QListaPrecioPorDefecto.Fields[0].AsString<>'' Then
//    CDSPresuCabLISTAPRECIO.Value:=DMMain_FD.QListaPrecioPorDefecto.Fields[0].Value;
//  DMMain_FD.QListaPrecioPorDefecto.CLose;

  CDSPresuCabNOTAS.Clear;
  QNotas.Close;
  QNotas.Open;
  CDSPresuCabNOTAS.Value  := QNotasNOTAS.Value;
  QNotas.Close;
  CDSPresuCabDIAS_VIGENCIA_PRESUPESTO.Value  := FormPresupuesto_2.Dias;
  CDSPresuCabFECHAVTO_PRESUPUESTO.AsDateTime := CDSPresuCabFECHAVTO_PRESUPUESTO.AsDateTime+FormPresupuesto_2.Dias;
  // pongo la cotizacion y el tipo de moneda del comprobante
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='MONEDAVTA';
  DMMain_FD.QOpciones.Open;
  if DMMain_FD.QOpciones.Fields[0].AsString<>'' then
    CDSPresuCabMONEDA_CPBTE.Value           :=DMMain_FD.QOpciones.Fields[0].AsInteger
  else
    CDSPresuCabMONEDA_CPBTE.Value := 1;
  DMMain_FD.QOpciones.Close;

  QMonedas.Close;
  QMonedas.ParamByName('id').Value:=CDSPresuCabMONEDA_CPBTE.Value;
  QMonedas.Open;

  if QMonedasCOTIZACION.AsString<>'' Then
    CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFloat := QMonedasCOTIZACION.AsFloat
  else
    CDSPresuCabMONEDA_CPBTE_COTIZACION.AsFLoat := 1;

  CDSPresuCabMUESTRAMONEDACPBTE.Value        := QMonedasMONEDA.Value;
  CDSPresuCabMUESTRASIGNOMONEDACPBTE.Value   := QMonedasSIGNO.Value;
  QMonedas.Close;


  if FormPresupuesto_2.ClientePorDefecto<>'' Then
    CDSPresuCabCodigo.Text    :=  FormPresupuesto_2.ClientePorDefecto;

 //**************************************************************************
  //****Asigno la Lista Por defecto o la lista asignada **********************
  //**************************************************************************
  CDSPresuCabLISTAPRECIO.Value     := DMMain_FD.ListaPorDefecto(CDSPresuCabSUCURSAL.Value);
  //***********************************************************
  //***********************************************************
  CDSPresuCabFECHA_HORA.AsDateTime := date+Time;

  CDSPresuCabPERCIBE_IVA.Value              := DMMain_FD.AgentePercepcionIVA;
  CDSPresuCabMINIMO_PERC_IVA.Value          := DMMain_FD.Minim_Imp_Perc_IVA;


  FormPresupuesto_2.dbeDias.Value  := FormPresupuesto_2.Dias;
  //wwCDSPresuCabDeposito.Clear;
END;

PROCEDURE TDatosPresupuesto.CDSPresuCabBeforePost(DataSet: TDataSet);
BEGIN
  IF (CDSPresuCab.State IN [dsInsert, dsEdit]) and (CDSPresuCabNROCPBTE.ReadOnly=False) THEN
    CDSPresuCabNROCPBTE.AsString := CDSPresuCabLETRAFAC.Value + CDSPresuCabSUCFAC.AsString + CDSPresuCabNUMEROFAC.AsString;
END;


PROCEDURE TDatosPresupuesto.CDSPresuCabSUCFACSetText(Sender: TField;
  CONST Text: STRING);
VAR
  Aux: STRING;
BEGIN
  Aux             := Text;
  Aux             := Copy('0000', 1, 4 - Length(Aux)) + Aux;
  Sender.AsString := Aux;
  CDSPresuCabNROCPBTE.AsString := CDSPresuCabLETRAFAC.AsString + CDSPresuCabSUCFAC.AsString +
                               CDSPresuCabNUMEROFAC.AsString;

END;

PROCEDURE TDatosPresupuesto.CDSPresuCabNUMEROFACSetText(Sender: TField;
  CONST Text: STRING);
VAR
  Aux: STRING;
BEGIN
  Aux             := Text;
  Aux             := Copy('00000000', 1, 8 - Length(Aux)) + Aux;
  Sender.AsString := Aux;
  CDSPresuCabNROCPBTE.AsString := CDSPresuCabLETRAFAC.AsString + CDSPresuCabSUCFAC.AsString + CDSPresuCabNUMEROFAC.AsString;
END;


procedure TDatosPresupuesto.CDSPresuCabPLAZO_ENTREGASetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  if (Not(VarIsNull(CDSPresuCabFECHA_TECNICA.AsDateTime))) and (Not(VarIsNull(CDSPresuCabFECHA_FINANCIERA.AsDateTime))) Then
    begin
      if (CDSPresuCabFECHA_TECNICA.AsDateTime<CDSPresuCabFECHA_FINANCIERA.AsDateTime) Then
        CDSPresuCabFECHA_ENTREGA.AsDateTime:= CDSPresuCabFECHA_FINANCIERA.AsDateTime+CDSPresuCabPLAZO_ENTREGA.Value
      else
        if (CDSPresuCabFECHA_TECNICA.AsDateTime>CDSPresuCabFECHA_FINANCIERA.AsDAteTime) Then
           CDSPresuCabFECHA_ENTREGA.AsDateTime:= CDSPresuCabFECHA_TECNICA.AsDateTime+CDSPresuCabPLAZO_ENTREGA.Value
        else
          CDSPresuCabFECHA_ENTREGA.AsDateTime:= CDSPresuCabFECHA_FINANCIERA.AsDateTime+CDSPresuCabPLAZO_ENTREGA.Value;
     end;
  CDSPresuCabFECHA_ENTREGA_2.Value:=CDSPresuCabFECHA_ENTREGA.Value;
end;

procedure TDatosPresupuesto.CDSPresuCabReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  ShowMessage(E.Message);
end;


procedure TDatosPresupuesto.CDSPercepcionIVANewRecord(DataSet: TDataSet);
begin
  CDSPercepcionIVAID_Percepcion.Value     := IBGPercepcionIVA.IncrementFD(1);
  CDSPercepcionIVAID_PR.Value             := CDSPresuCabID_PR.Value;
  CDSPercepcionIVACODIGOREGIMEN.Value     := -1;
  CDSPercepcionIVANETO.AsFloat            := 0;
  CDSPercepcionIVATASA.AsFloat            := 0;
  CDSPercepcionIVAIMPORTE.AsFloat         := 0;
  CDSPercepcionIVACODIGO_PERCEPCION.Value := -1;
end;

PROCEDURE TDatosPresupuesto.CDSPresuCabAfterEdit(DataSet: TDataSet);
BEGIN
  IF (CDSPresuCabImpreso.Value = 'S') THEN
    BEGIN
      ShowMessage('No se puede modificar'#13'un comprobante ya impreso');
      IF CDSPresuDet.State IN [dsEdit, dsInsert] THEN
        CDSPresuDet.Cancel;
      IF CDSPresuCab.State IN [dsEdit, dsInsert] THEN
        CDSPresuCab.Cancel;
      IF CDSPresuSubDet.State IN [dsEdit, dsInsert] THEN
        CDSPresuSubDet.Cancel;

    END;

END;

PROCEDURE TDatosPresupuesto.CDSPresuCabCODIGOSetText(Sender: TField;
  CONST Text: STRING);
VAR
  Aux: STRING;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Aux := Text;
      Aux := Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString := Aux;
      IF NOT (AsignarCliente(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Cliente No válido');
          Sender.AsString := '';
          FormPresupuesto_2.RxDBECodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      FormPresupuesto_2.RxDBECodigo.Text := Aux;
  end;
END;


procedure TDatosPresupuesto.CDSPresuCabDIAS_VIGENCIA_PRESUPESTOSetText(
  Sender: TField; const Text: string);
begin
  Sender.AsString:=Text;
  CDSPresuCabFECHAVTO_PRESUPUESTO.AsDateTime := CDSPresuCabFECHAVTA.AsDateTime+Sender.AsInteger;

end;

PROCEDURE TDatosPresupuesto.CDSPresuDetUNITARIO_TOTALGetText(Sender: TField;
  VAR Text: STRING; DisplayText: Boolean);
VAR
  Aux1: Extended;
BEGIN
  Aux1:=CDSPresuDetUNITARIO_TOTAL.AsFloat;
  if (CDSPresuDetMODO_GRAVAMEN.Value<>'') and (CDSPresuDetMODO_GRAVAMEN.Value[1] in ['G','M','I','Y']) Then
    if (CDSPresuCabDESGLOZAIVA.Value='S') and (FormPresupuesto_2.DiscriminaIva='N') then
      Aux1:= CDSPresuDetUNITARIO_TOTAL.AsFloat + CDSPresuDetIVA_UNITARIO.AsFloat
    else
      if (CDSPresuCabDESGLOZAIVA.Value='N')then
        Aux1:= CDSPresuDetUNITARIO_TOTAL.AsFloat + CDSPresuDetIVA_UNITARIO.AsFloat;
  Text:= FormatFloat(MascaraDetalleUnitario,Aux1);
  Importe:=Text;
END;

PROCEDURE TDatosPresupuesto.CDSPresuDetTOTALGetText(Sender: TField;
  VAR Text: STRING; DisplayText: Boolean);
VAR
  Aux1: Extended;
BEGIN
  Aux1:=CDSPresuDetTOTAL.AsFloat;
  if (CDSPresuDetMODO_GRAVAMEN.Value<>'') and (CDSPresuDetMODO_GRAVAMEN.Value[1] in ['G','M','I','Y']) Then
    if (CDSPresuCabDESGLOZAIVA.Value='S') and (FormPresupuesto_2.DiscriminaIva='N') then
      Aux1:= CDSPresuDetTOTAL.AsFloat + CDSPresuDetIVA_TOTAL.AsFloat
    else
      if (CDSPresuCabDESGLOZAIVA.Value='N')then
        Aux1:= CDSPresuDetTOTAL.AsFloat + CDSPresuDetIVA_TOTAL.AsFloat;
  Text := FormatFloat(',0.00', Aux1);
END;

procedure TDatosPresupuesto.CDSPresuCabNETOGRAV1GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR TotalGral,NetoTotal,Aux:Currency;//Extended;
begin
  if (FormPresupuesto_2<>Nil) and (CDSPresuCabNetoGrav1.AsFloat>0) Then
    begin
      TotalGral := CDSPresuCabTotal.AsFloat -
                   CDSPresuCabPERCECEPION_IB_IMPORTE.AsFloat -
                   CDSPresuCabNETOEXEN2.AsFloat;
      NetoTotal := CDSPresuCabNetoGrav2.AsFloat;

     // if CDSPresuCabNETOGRAV2.AsFloat>0 Then
     //   Var_TasaIVA:= ((TotalGral / NetoTotal)-1)*100
     // else
     //   Var_TasaIva:=0;

     // if Var_TasaIva<0 then Var_TasaIva :=0;

      Aux:=Sender.AsFloat;
      if (CDSPresuCabDESGLOZAIVA.Value='N') or (FormPresupuesto_2.DiscriminaIva='N') Then
        Aux:= (Aux * (1+Var_TasaIva * 0.01));

      Aux:= RoundTo(Aux ,-4);
      Aux:= RoundTo(Aux ,-3);
      Aux:= RoundTo(Aux ,-2);

      Text:=FormatFloat(MascaraCabecera,Aux);
    end;
end;


PROCEDURE TDatosPresupuesto.CDSPresuCabNETOGRAV2GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR TotalGral,NetoTotal,Aux:currency;// Extended;
begin
  if (FormPresupuesto_2<>Nil) and (CDSPresuCabNetoGrav1.AsFloat>0) Then
    begin
      TotalGral := CDSPresuCabTotal.AsFloat -
                   CDSPresuCabPERCECEPION_IB_IMPORTE.AsFloat -
                   CDSPresuCabNETOEXEN2.AsFloat;
      NetoTotal := CDSPresuCabNetoGrav2.AsFloat;

     // if CDSPresuCabNETOGRAV2.AsFloat>0 Then
     //   Var_TasaIVA:= ((TotalGral/NetoTotal)-1)*100
     // else
     //   Var_TasaIva:=0;

      Aux:=Sender.AsFloat;
      if (CDSPresuCabDESGLOZAIVA.Value='N') or (FormPresupuesto_2.DiscriminaIva='N') Then
        Aux:= Aux * (1+(Var_TasaIva * 0.01));

      Aux:= RoundTo(Aux ,-3);
      Aux:= RoundTo(Aux ,-2);
      Text:=FormatFloat(MascaraCabecera,Aux);
    end;
END;

PROCEDURE TDatosPresupuesto.CDSPresuCabDEPOSITOSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo depósito no Válido');
          FormPresupuesto_2.RxDBEDeposito.SetFocus;
        END;
    end;
END;

procedure TDatosPresupuesto.CDSPresuCabDESGLOZAIVAChange(Sender: TField);
begin
  FormPresupuesto_2.DbGrillaIva.Visible := CDSPresuCabDesglozaIva.Value = 'S';
end;

PROCEDURE TDatosPresupuesto.CDSPresuCabSUCURSALSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  if (Text[1]<>#13) and(text<>'') Then
    begin
      Sender.AsString := Text;
      { TODO -cVarios : Asignacion de Sucursal }
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Sucursal No Valido');
          FormPresupuesto_2.RxDBESucursal.SetFocus;
        END;
    end;
END;

PROCEDURE TDatosPresupuesto.CDSPresuCabLDRSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarLdr(CDSPresuCabCodigo.Value, Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo L.D.R no Válido');
          FormPresupuesto_2.RxDBELdr.SetFocus;
        END;
    end;
END;

PROCEDURE TDatosPresupuesto.CDSPresuCabCONDICIONVTASetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarCondVenta(CDSPresuCabCodigo.Value, Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Cond.Vta no Válido');
          FormPresupuesto_2.RxDBEConVta.SetFocus;
        END;
    end;
END;

PROCEDURE TDatosPresupuesto.DataModuleDestroy(Sender: TObject);
BEGIN
  DatosPresupuesto := NIL;
END;

procedure TDatosPresupuesto.CDSPresuDetCODIGOARTICULOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 if FormPresupuesto_2<>nil then
    begin
      if FormPresupuesto_2.VerporCodigoAlternativo1.Checked=True then
        Text:=Trim(CDSPresuDetMUESTRACODALTERNATIVO.Value)
      else
        Text:=Trim(CDSPresuDetCODIGOARTICULO.Value);
    end;
end;

procedure TDatosPresupuesto.CDSPresuDetCODIGOARTICULOSetText(Sender: TField; const Text: String);
VAR S,CodTxt,Aux,CodAlternativo: STRING;
Enter:Char;
BEGIN
  Enter:=#13;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      AnsiReplaceStr(Text, #13, '');
      Sender.AsString := DMMain_FD.SearchCodigo(Text,DSPresuDet,FormPresupuesto_2.VerporCodigoAlternativo1.Checked);
      S:= Sender.AsString;
      IF AsignarArticulo(Sender.AsString) = False THEN
        BEGIN
       // Busqueda por codigo
          IF (Assigned(FormBuscadorArticulos)) THEN
            FreeAndNil(FormBuscadorArticulos);
          IF Not(Assigned(FormBuscadorArticulos)) THEN
            FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
          FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
          FormBuscadorArticulos.CampoNro          := 0;
          FormBuscadorArticulos.Param1:=1;
          FormBuscadorArticulos.Param2:=3;
          FormBuscadorArticulos.ListaPrecio:= DatosPresupuesto.CDSPresuCabLISTAPRECIO.Value;
          FormBuscadorArticulos.Esquema    := -1;
          FormBuscadorArticulos.Dato       := S;
          if FormBuscadorArticulos.Visible=False Then
            FormBuscadorArticulos.ShowModal;
          if FormBuscadorArticulos.Codigo<>'' Then
            begin
              IF CDSPresuDet.State = dsBrowse THEN
                CDSPresuDet.Edit;
              CDSPresuDetCodigoArticuloSetText(CDSPresuDetCodigoArticulo,FormBuscadorArticulos.Codigo);
            end
          else
            Sender.AsString:='';
        END;
      if DMMain_FD.EncontroCodigoBarra Then
        FormPresupuesto_2.DBGrillaDetalle.OnKeyPress(FormPresupuesto_2.DBGrillaDetalle,Enter);
    end;
END;

procedure TDatosPresupuesto.CDSPresuDetDESCUENTOSetText(Sender: TField;
  const Text: string);
VAR
  PrecioUnitario: Extended;
BEGIN
  if Text<>'' Then
    begin
      Sender.AsString := Text;
      if (Sender.AsFloat > DMMain_FD.TopeDsctoLinea) then
        Sender.AsFloat:=DMMain_FD.TopeDsctoLinea;
      Sender.AsFloat  := RoundTo(Sender.AsFloat,-2);
      PrecioUnitario  := CDSPresuDetUNITARIO_TOTAL.AsFloat;
      if (CDSPresuDetModo_Gravamen.Value<>'') and (CDSPresuDetModo_Gravamen.Value[1] in ['G','M']) then
        if ((CDSPresuCabDesglozaIva.Value = 'S') and (FormPresupuesto_2.DiscriminaIva='N')) Then
          PrecioUnitario := CDSPresuDetUNITARIO_GRAVADO.AsFloat + CDSPresuDetIVA_UNITARIO.AsFloat
        else
          if (CDSPresuCabDesglozaIva.Value = 'N')  Then
            PrecioUnitario := CDSPresuDetUNITARIO_GRAVADO.AsFloat + CDSPresuDetIVA_UNITARIO.AsFloat;
      CDSPresuDetUnitario_TotalSetText(CDSPresuDetUNITARIO_TOTAL,FloatToStr(PrecioUnitario));
      SumaFinal; // <<<<< agregado por Manuel por que no recalculaba el total al pner el descuento o ponerlo en cero
                 // <<<<< 5/6/2024 ... ver si se soluciona con esto lo de Pili ...
    end;
END;

procedure TDatosPresupuesto.CDSPresuDetCalcFields(DataSet: TDataSet);
var HStack:String;
begin
  CDSPresuDetMUESTRAITEM.Value:=CDSPresuDetITEM_NRO.Value;
  if ABs(CDSPresuDetCANTIDAD.AsFloat)>0 then
    CDSPresuDetMUESTRA_UNIT_NETO.Value:=CDSPresuDetTOTAL.AsFloat/CDSPresuDetCANTIDAD.AsFloat
  else
    CDSPresuDetMUESTRA_UNIT_NETO.Value:=0;
  CDSPresuDetORDEN_ITEM.Value:=100;
  if AnsiStartsText('P', Trim(UpperCase(CDSPresuDetDETALLE.Value))) then
    CDSPresuDetORDEN_ITEM.Value:=1
  else
    if AnsiStartsText('K', Trim(UpperCase(CDSPresuDetDETALLE.Value))) then
      CDSPresuDetORDEN_ITEM.Value:=2
    else
      if AnsiStartsText('Z', Trim(UpperCase(CDSPresuDetDETALLE.Value))) then
        CDSPresuDetORDEN_ITEM.Value:=3
      else
        if AnsiStartsText('D', Trim(UpperCase(CDSPresuDetDETALLE.Value))) then
          CDSPresuDetORDEN_ITEM.Value:=4;
  CDSPresuDetITEM_CONDETALLE.Value := CDSPresuDetITEM_NRO.AsString+'-'+CDSPresuDetITMEDETALLE.AsString;
  CDSPresuDetTOTAL_FINAL.Value     := CDSPresuDetTOTAL.Value+CDSPresuDetIVA_TOTAL.Value;
end;

procedure TDatosPresupuesto.CDSPresuDetCANTIDADSetText(Sender: TField;const Text: String);
VAR
  Decim:Integer;
  Aux1, Aux2, Aux3,UD: Extended;
  TextAux,NroStr,UltimoDig:String;
begin
  if Text<>'' Then
    begin
      TextAux:=Text;

      if ((TextAux[1]='-') and (FormPresupuesto_2.CantidadNegativaPresupuesto=False))
        Then Delete(TextAux,1,1);

      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);
      Sender.AsString := TextAux;


      if (Not DMMain_FD.PresupuestarSinStock) and (CDSPresuDetAfecta_Stock.Value='S') Then
       begin
         DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
         DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('codigo').AsString    :=CDSPresuDetCODIGOARTICULO.AsString;
         DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('deposito').AsInteger :=CDSPresuCabDEPOSITO.AsInteger;
         DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('unidad').AsString    :='V';
         DMStoreProcedure.QExistenciaStockArticuloDepo.Open;
         if (DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat<=0) or
            (Moneda3D(' ','0.00',DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat)<
             Moneda3D(' ','0.00',Sender.AsFloat)) Then
           begin
             Sender.AsFloat:=0;
             ShowMessage('No Hay stock Suficiente para esta operación......');
           end;
         DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
       end;

      Aux1:= CDSPresuDetUNITARIO_EXENTO.AsFloat;
      Aux2:= CDSPresuDetUNITARIO_GRAVADO.AsFloat;

      if (CDSPresuDetModo_Gravamen.Value<>'') then
        if ((CDSPresuCabDesglozaIva.Value = 'S') and (FormPresupuesto_2.DiscriminaIva='N')) and (CDSPresuDetModo_Gravamen.Value[1] in ['G','M']) THEN
          Aux2:= Aux2 + CDSPresuDetIVA_UNITARIO.AsFloat
        else
          if (CDSPresuCabDesglozaIva.Value = 'N') and (CDSPresuDetModo_Gravamen.Value[1] in ['G','M']) THEN
            Aux2:= Aux2 + CDSPresuDetIVA_UNITARIO.AsFloat;

      Aux3      := Aux1 + Aux2;

//      Decim     := Length(FloatToStr(Frac(Aux3)));
//      NroStr    := FloatToStr(Aux3);
//      UltimoDig := AnsiRightStr(NroStr,1);
//      ud        := StrToFloat(UltimoDig);
//      if (10-UD)<=5 then
//        Aux3:= Aux3+( (10-UD) * 0.001)
//      else
//        Aux3:= Aux3-( (UD) * 0.001);

      Importe:=FLoatToStr(Aux3);
      while pos(',',Importe)<>0 Do
        delete(Importe,pos(',',Importe),1);
      Aux3:=StrToFloat(Importe);



      CDSPresuDetUNITARIO_TOTALSetText(CDSPresuDetUNITARIO_TOTAL,FloatToStr(Aux3));
    end;
END;

procedure TDatosPresupuesto.CDSPresuDetUNITARIO_TOTALSetText(Sender: TField; const Text: String);
VAR Num, P_Exento, P_Gravado,Pt_Exento,
    Pt_Gravado,Pt_Final, Descuento,Cantidad,TasaIva,Aux3,ImporteIva:  Extended;
    TextAux,Decimales:String;
    Modo: TFPURoundingMode;
BEGIN
  if ((Text<>'') and (CDSPresuDetCODIGOARTICULO.AsString<>'')) Then
    begin
      TextAux:=Text;

      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);
      if CDSPresuDet.State=dsBrowse Then CDSPresuDet.Edit;

      Num:=StrToFloat(TextAux);

      IF CDSPresuDetMODO_GRAVAMEN.Value <> '' THEN
        CASE CDSPresuDetMODO_GRAVAMEN.Value[1] OF
          'E','N'    : CDSPresuDetUNITARIO_EXENTO.AsFloat := Num;
          'G'        : CDSPresuDetUNITARIO_GRAVADO.AsFloat:= Num;
          'M','I','Y': CDSPresuDetUNITARIO_GRAVADO.AsFloat:= Num-CDSPresuDetUNITARIO_EXENTO.AsFloat
        END;
      Cantidad  := CDSPresuDetCANTIDAD.AsFloat;
      Descuento := 1 - CDSPresuDetDESCUENTO.AsFloat * 0.01;
      TasaIva   := 1 + CDSPresuDetIVA_TASA.AsFloat * 0.01;

      P_Exento  := CDSPresuDetUNITARIO_EXENTO.AsFloat ;
      P_Gravado := CDSPresuDetUNITARIO_GRAVADO.AsFloat;

      // calculo el total de la linea
      Pt_Gravado :=  P_Gravado * Cantidad * Descuento;
      Pt_Exento  :=  P_Exento * Cantidad * Descuento;
      // calculo de IVA
      ImporteIva :=  (Pt_gravado * TasaIva)- Pt_Gravado;

      CDSPresuDetIVA_UNITARIO.AsFloat := (P_Gravado * TasaIva) - P_Gravado;

      if ((CDSPresuCabDESGLOZAIVA.Value='N') or (FormPresupuesto_2.DiscriminaIva='N')) and (CDSPresuDetMODO_GRAVAMEN.AsString[1] in ['G','M','I','Y']) Then
        begin
          P_Gravado                       := CDSPresuDetUNITARIO_GRAVADO.AsFloat / TasaIva;
          CDSPresuDetIVA_UNITARIO.AsFloat := CDSPresuDetUNITARIO_GRAVADO.AsFloat - P_Gravado;
          // *** Calculo el total de la linea
          Pt_Final   :=  (P_Gravado + CDSPresuDetIVA_UNITARIO.ASFloat) * Cantidad * Descuento;

          Modo:=GetRoundMode;
          SetRoundMode(rmUp);
// antes SimpleRounTo
          Pt_Final   := RoundTo(Pt_Final,-3);
          Pt_Final   := RoundTo(Pt_Final,-2);

          Pt_Gravado :=  Pt_Final  / TasaIva;

          Pt_Gravado :=  RoundTo(Pt_Gravado,-3);
          Pt_Gravado :=  RoundTo(Pt_Gravado,-2);


          Pt_Exento  :=  P_Exento * Cantidad * Descuento;
          // Calculo de IVA
          ImporteIva :=  Pt_Final - Pt_gravado;
        end;

      CDSPresuDetUNITARIO_GRAVADO.AsFloat := P_Gravado;

      CDSPresuDetTOTAL_GRAVADO.AsFloat    := RoundTo(Pt_Gravado,-3);
      CDSPresuDetTOTAL_GRAVADO.AsFloat    := RoundTo(CDSPresuDetTOTAL_GRAVADO.AsFloat,-2);

      CDSPresuDetTOTAL_EXENTO.AsFloat     := RoundTo(Pt_Exento,-3);
      CDSPresuDetTOTAL_EXENTO.AsFloat     := RoundTo(CDSPresuDetTOTAL_EXENTO.AsFloat,-2);

      ImporteIva                          := RoundTo(ImporteIva,-3);
      CDSPresuDetIVA_TOTAL.AsFloat        := RoundTo(ImporteIva,-3);

      // esto pisa las 2 lineas anteriores no las borro para probar

      if ((CDSPresuCabDESGLOZAIVA.Value='N') or (FormPresupuesto_2.DiscriminaIva='N')) and (CDSPresuDetMODO_GRAVAMEN.AsString[1] in ['G','M']) Then
        CDSPresuDetIVA_TOTAL.AsFloat     := (Pt_Final)-Pt_Gravado;

      CDSPresuDetTOTAL.AsFloat         := RoundTo((Pt_Gravado+Pt_Exento),-2);

      CDSPresuDetUNITARIO_TOTAL.Value:=CDSPresuDetUNITARIO_GRAVADO.Value+CDSPresuDetUNITARIO_EXENTO.Value;
      // Final SimpleRoundTo()
      SetRoundMode(Modo);

      // **************** Calculo el Margen ******************
      if (CDSPresuDetCOSTO_TOTAL.AsFloat>0) and (CDSPresuDetUNITARIO_TOTAL.AsFloat>0) then
          CDSPresuDetMARGEN.AsFloat := RoundTo((((CDSPresuDetUNITARIO_TOTAL.AsFloat * (1-CDSPresuDetDESCUENTO.AsFloat*0.01)) - CDSPresuDetCosto_Total.AsFloat)/
                                                 (CDSPresuDetUNITARIO_TOTAL.AsFloat * (1-CDSPresuDetDESCUENTO.AsFloat*0.01)) )*100,-2)
      else
        CDSPresuDetMARGEN.AsFloat:= 100;
      // *****************************************************

      Aux3            := P_Gravado + P_Exento;
      Sender.AsString := FloatToStr(Aux3);

      if (CDSPresuDetMODO_GRAVAMEN.Value[1] in['E','N']) and (CDSPresuDetUNITARIO_GRAVADO.AsFloat>0) Then
        begin
          Sender.AsString:='0';
          CDSPresuDetUNITARIO_GRAVADO.AsFloat:=0;
          CDSPresuDetUNITARIO_EXENTO.AsFloat :=0;
          CDSPresuDetUNITARIO_TOTAL.AsFloat  :=0;
          CDSPresuDetTOTAL.AsFloat           :=0;
          raise Exception.Create('El artículo Figura Como Exento y tiene Costo Gravado....('+CDSPresuDetCODIGOARTICULO.AsString+')');
        end
      else
        if (CDSPresuDetMODO_GRAVAMEN.Value[1]='G') and (CDSPresuDetUNITARIO_EXENTO.AsFloat>0) Then
          begin
            Sender.AsString:='0';
            CDSPresuDetUNITARIO_GRAVADO.AsFloat:=0;
            CDSPresuDetUNITARIO_EXENTO.AsFloat :=0;
            CDSPresuDetUNITARIO_TOTAL.AsFloat  :=0;
            CDSPresuDetTOTAL.AsFloat           :=0;
            raise Exception.Create('El artículo Figura Como Gravado y tiene Costo exento...('+CDSPresuDetCODIGOARTICULO.AsString+')');
          end;
   end;

  Decimales:=(Copy(MascaraDetalleUnitario,pos('.',MascaraDetalleUnitario)+1,length(MascaraDetalleUnitario)));
  if Length(Decimales)=2 then
    begin
      //Primero con 3 decimales y despues 2
      CDSPresuDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSPresuDetUNITARIO_GRAVADO.AsFloat,-3);
      CDSPresuDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSPresuDetUNITARIO_EXENTO.AsFloat,-3);
      CDSPresuDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSPresuDetUNITARIO_TOTAL.AsFloat,-3);
      Modo:=GetRoundMode;
      SetRoundMode(rmUp);
      CDSPresuDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSPresuDetIVA_UNITARIO.AsFloat,-3);
      SetRoundMode(Modo);

      CDSPresuDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSPresuDetUNITARIO_GRAVADO.AsFloat,-2);
      CDSPresuDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSPresuDetUNITARIO_EXENTO.AsFloat,-2);
      CDSPresuDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSPresuDetUNITARIO_TOTAL.AsFloat,-2);
      CDSPresuDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSPresuDetIVA_UNITARIO.AsFloat,-2);
    end
  else
    if Length(Decimales)=3 then
      begin
        CDSPresuDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSPresuDetUNITARIO_GRAVADO.AsFloat,-4);
        CDSPresuDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSPresuDetUNITARIO_EXENTO.AsFloat,-4);
        CDSPresuDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSPresuDetUNITARIO_TOTAL.AsFloat,-4);
        Modo:=GetRoundMode;
        SetRoundMode(rmUp);
        CDSPresuDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSPresuDetIVA_UNITARIO.AsFloat,-4);
        SetRoundMode(Modo);

        CDSPresuDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSPresuDetUNITARIO_GRAVADO.AsFloat,-3);
        CDSPresuDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSPresuDetUNITARIO_EXENTO.AsFloat,-3);
        CDSPresuDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSPresuDetUNITARIO_TOTAL.AsFloat,-3);
        CDSPresuDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSPresuDetIVA_UNITARIO.AsFloat,-3);
      end;

END;

procedure TDatosPresupuesto.CDSPresuSubDetCalcFields(DataSet: TDataSet);
begin
  CDSPresuSubDetTOTAL_NETO.Value := (CDSPresuSubDetTOTAL_GRAVADO.AsFloat +
                                     CDSPresuSubDetTOTAL_EXENTO.AsFloat ) * CDSPresuSubDetCANTIDAD.ASFLoat;
  CDSPresuSubDetTOTAL_FINAL.Value:= (CDSPresuSubDetTOTAL_GRAVADO.AsFloat + CDSPresuSubDetTOTAL_IVA.AsFloat +
                                     CDSPresuSubDetTOTAL_EXENTO.AsFloat ) * CDSPresuSubDetCANTIDAD.ASFLoat;

  CDSPresuSubDetTOTAL_UNIT_FINAL.Value:= (CDSPresuSubDetTOTAL_GRAVADO.AsFloat + CDSPresuSubDetTOTAL_IVA.AsFloat +
                                          CDSPresuSubDetTOTAL_EXENTO.AsFloat );


end;

procedure TDatosPresupuesto.CDSPresuSubDetCANTIDADSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSPresuSubDetTOTAL.AsFloat := (CDSPresuSubDetTOTAL_GRAVADO.AsFloat +
                                  CDSPresuSubDetTOTAL_EXENTO.AsFloat) * Sender.AsFloat;
end;

procedure TDatosPresupuesto.CDSPresuSubDetNewRecord(DataSet: TDataSet);
begin
  CDSPresuSubDetITEM_NRO.Value := CDSPresuDetITEM_NRO.Value;
  CDSPresuSubDetID_CAB.Value   := CDSPresuCabID_PR.Value;
  CDSPresuSubDetCANTIDAD.Value := 1;
end;

procedure TDatosPresupuesto.CDSPresuSubDetTOTALGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var Aux1:Extended;
begin
  Aux1:=CDSPresuSubDetTOTAL.AsFloat;
  if ((CDSPresuCabDESGLOZAIVA.Value='S') and (FormPresupuesto_2.DiscriminaIva='N')) then
    Aux1:= CDSPresuSubDetTOTAL_FINAL.Value
  else
    if (CDSPresuCabDESGLOZAIVA.Value='N')then
      Aux1:= CDSPresuSubDetTOTAL_FINAL.value;
  Text:= FormatFloat(MascaraDetalleUnitario,Aux1);
end;

procedure TDatosPresupuesto.CDSPresuSubDetTOTAL_GRAVADOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var Aux1:Extended;
begin
  Aux1:=CDSPresuSubDetTOTAL_GRAVADO.AsFloat;
  if (CDSPresuCabDESGLOZAIVA.Value='S') and (FormPresupuesto_2.DiscriminaIva='N') then
    Aux1:= CDSPresuSubDetTOTAL_UNIT_FINAL.AsFloat
  else
    if (CDSPresuCabDESGLOZAIVA.Value='N')then
      Aux1:= CDSPresuSubDetTOTAL_UNIT_FINAL.AsFloat;
  Text:= FormatFloat(MascaraDetalleUnitario,Aux1);
end;

procedure TDatosPresupuesto.SumaFinal;
var
  AIndex, ARowIndex: Integer;
  AValue : Variant;
begin
  SumarDetalleClon;
  SumarSubDetalle;
  CalcularTotales;
  // Borrar Los renglones con valor 0 (cero)....
  CDSImpuestos.EnableControls;
  CDSImpuestos.First;
  WHILE NOT (CDSimpuestos.Eof) DO
    BEGIN
      IF (CDSImpuestosImporte.AsFloat <= 0) OR (CDSImpuestosTasa.AsFloat <= 0) THEN
        begin
          CDSImpuestos.Delete;
          CDSImpuestos.First;
        end
      else
        CDSImpuestos.Next;
    END;
  FormPresupuesto_2.pnAvisoFUAP.Visible:=False;
  FormPresupuesto_2.cxGrid1DBTableView1.DataController.Groups.FullExpand;

  CDSPresuSubDet.EnableControls;
  CDSPresuSubDet.First;
  WHILE NOT (CDSPresuSubDet.Eof) DO
    BEGIN
      IF (Trunc(CDSPresuSubDetTOTAL.AsFloat) <= 0)  THEN
        begin
          CDSPresuSubDet.Delete;
          CDSPresuSubDet.First;
        end
      else
        CDSPresuSubDet.Next;
    END;

//  AIndex    := FormPresupuesto_2.cxGrid2DBTableView1.DataController.Summary.DefaultGroupSummaryItems.IndexOfItemLink(FormPresupuesto_2.cxGrid2DBTableView1TOTAL_NETO);
//  ARowIndex := FormPresupuesto_2.cxGrid2DBTableView1.DataController.FocusedRowIndex;
//  AValue    := FormPresupuesto_2.cxGrid2DBTableView1.DataController.Summary.GroupSummaryDisplayValues[ARowIndex, 0, AIndex];
//
//  FormPresupuesto_2.jvMaskEdit1.Text:=VarToStr(AValue);

   with FormPresupuesto_2.cxGrid2DBTableView1.DataController.Summary do
    begin
      AIndex :=  FooterSummaryItems.IndexOfItemLink(FormPresupuesto_2.cxGrid2DBTableView1TOTAL_NETO);
      AValue :=  FooterSummaryValues[AIndex]
    end;
  if Not(VarIsNull(AValue)) and (AValue>=0) then
    FormPresupuesto_2.edTotalNeto.Text:=FormatFloat(',0.00',AValue);
 end;



procedure TDatosPresupuesto.SumarDetalleClon;
VAR
  Dscto,NetoPercep    : Real;
//  Puntero  : TBookmark;
  CDSClone : TClientDataSet;
  TotalNeto,TotalFinal: Extended;
begin
  //Ingreso Movimiento de Stock;
//  Puntero    := CDSPresuDet.GetBookmark;
  TotalNeto  := 0;
  TotalFinal := 0;
  NetoPercep := 0;
  CDSClone   := TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSPresuDet,True);
  CDSClone.First;

  IF CDSPresuCab.State = dsBrowse THEN
    CDSPresuCab.Edit;
  CDSPresuCabNetoGrav1.ASFloat                   := 0;
  CDSPresuCabNetoExen1.ASFloat                   := 0;
  CDSPresuCabNetoGrav2.ASFloat                   := 0;
  CDSPresuCabNetoExen2.ASFloat                   := 0;

  CDSPresuCabNETO_ACUMULADO.Value                := 0;
  CDSPresuCabMARGEN_GENERAL.Value                := 0;
  CDSPresuCabPERCECPION_IB_BASEIMPONIBLE.AsFloat := 0;
  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
  WHILE NOT (CDSImpuestos.Eof) DO
    BEGIN
      CDSImpuestos.Edit;
      CDSImpuestosNeto.AsFloat   := 0;
      CDSImpuestosIMPORTE.ASFloat:= 0;
      CDSImpuestos.Next;
    END;
  CDSImpuestos.First;
  CDSImpuestos.EnableControls;

  CDSPercepcionIVA.First;
  CDSPercepcionIVA.DisableControls;

  WHILE NOT (CDSPercepcionIVA.Eof) DO
    BEGIN
      CDSPercepcionIVA.Edit;
      CDSPercepcionIVANETO.AsFloat   :=0;
      CDSPercepcionIVAIMPORTE.AsFloat:=0;
      CDSPercepcionIVA.Next;
    END;

  WHILE (NOT CDSClone.Eof) DO
    BEGIN
      if CDSClone.FieldByName('ACEPTADO').Value='S' then
        begin
          Dscto := (100 - CDSClone.FieldByName('DESCUENTO').AsFloat) * 0.01;
          IF (CDSClone.FieldByName('TipoIva_Tasa').AsFloat <> 0) AND (NOT (VarIsNull(CDSClone.FieldByName('TipoIva_Tasa').AsFloat)))  AND (CDSClone.FieldByName('Modo_Gravamen').Value <> 'E') THEN
            BEGIN
              IF CDSImpuestos.Locate('Codigo_Gravamen',CDSClone.FieldByName('TipoIva_Tasa').Value, []) THEN
                BEGIN
                  CDSImpuestos.Edit;
                  CDSImpuestosNeto.AsFloat    := CDSImpuestosNeto.AsFloat + CDSClone.FieldByName('TOTAL_GRAVADO').AsFloat ;
                  CDSImpuestosTasa.AsFloat    := CDSClone.FieldByName('IVA_Tasa').AsFloat;
                  CDSImpuestosImporte.AsFloat := CDSImpuestosIMPORTE.AsFloat + CDSClone.FieldByName('IVA_TOTAL').AsFloat;
                  CDSImpuestos.Post;
                END
              ELSE
                BEGIN
                  CDSImpuestos.Append;
                  CDSImpuestosCODIGO_GRAVAMEN.Value     := CDSClone.FieldByName('TIPOIVA_TASA').AsInteger;
                  CDSIva.Close;
                  CDSIva.Params.ParamByName('id').Value := CDSClone.FieldByName('TIPOIVA_TASA').AsInteger;
                  CDSIva.Open;
                  CDSImpuestosDETALLE.Value     := CDSIvaDESCRIPCION.Value;
                  CDSImpuestosID_PRESCAB.Value  := CDSClone.FieldByName('ID_CABPRES').Value;
                  CDSImpuestosNETO.AsFloat      := CDSImpuestosNeto.AsFloat + CDSClone.FieldByName('TOTAL_GRAVADO').AsFloat ;
                  CDSImpuestosTASA.AsFloat      := CDSClone.FieldByName('IVA_TASA').AsFLoat;
                  CDSImpuestosIMPORTE.AsFloat   := CDSImpuestosIMPORTE.AsFloat + CDSClone.FieldByName('IVA_TOTAL').AsFloat;
                  CDSImpuestos.Post;
                END;

              // Suma Percepcion IVA ************************************************
              IF (CDSPresuCabPERCIBE_IVA.Value='S') and (CDSPresuCabPERCIBE_IVA.Value='S') Then
                begin
                  IF (CDSClone.FieldByName('PERCIBE_IVA').Value='S') then
                    begin
                      if CDSPercepcionIVA.Locate('Codigo_percepcion',CDSClone.FieldByName('ID_TASA_PERCEPCION_IVA').Value, []) THEN
                        BEGIN
                          CDSPercepcionIVA.Edit;
                          CDSPercepcionIVANETO.AsFloat    := CDSPercepcionIVANETO.AsFloat + CDSClone.FieldByName('TOTAL_GRAVADO').AsFloat;
                          CDSPercepcionIVAIMPORTE.AsFloat := CDSPercepcionIVANETO.AsFloat * CDSClone.FieldByName('TASA_PERCEP_IVA').AsFloat * 0.01;
                          CDSPercepcionIVA.Post;
                        END
                      ELSE
                        BEGIN
                          CDSPercepcionIVA.Insert;
                          CDSPercepcionIVACODIGO_PERCEPCION.Value := CDSClone.FieldByName('ID_TASA_PERCEPCION_IVA').AsInteger;
                          CDSPercepcionIVADETALLE.Value           := 'Percep IVA %'+FormatFloat('0.00',CDSClone.FieldByName('TASA_PERCEP_IVA').AsFloat);
                          CDSPercepcionIVAID_PR.Value             := CDSClone.FieldByName('ID_CABPRES').Value;
                          CDSPercepcionIVANETO.AsFloat            := CDSClone.FieldByName('TOTAL_GRAVADO').AsFloat;
                          CDSPercepcionIVATASA.AsFloat            := CDSClone.FieldByName('TASA_PERCEP_IVA').AsFLoat;
                          CDSPercepcionIVAIMPORTE.AsFloat         := CDSClone.FieldByName('TOTAL_GRAVADO').AsFloat * CDSClone.FieldByName('TASA_PERCEP_IVA').AsFloat * 0.01;
                          CDSPercepcionIVA.Post;
                        END;
                      NetoPercep:=NetoPercep+CDSClone.FieldByName('TOTAL_GRAVADO').Value;

                    end;
                end;
            END;

          TotalFinal:= TotalFinal + CDSClone.FieldByName('TOTAL_GRAVADO').AsFloat + CDSClone.FieldByName('IVA_TOTAL').AsFloat;

          TotalNeto := TotalNeto  + CDSClone.FieldByName('TOTAL_GRAVADO').AsFloat;

          //CDSPresuCabNETOGRAV1.AsFloat := CDSClone.FieldByName('TOTAL_GRAVADO').AsFloat + CDSPresuCabNETOGRAV1.AsFloat;

          CDSPresuCabNETOEXEN1.AsFloat := CDSClone.FieldByName('TOTAL_EXENTO').AsFloat  + CDSPresuCabNetoExen1.AsFloat;
          if ((CDSClone.FieldByName('GRAVADO_IB').Value='S') and (CDSPresuCabDESGLOZAIVA.Value='S')) Then
            CDSPresuCabPERCECPION_IB_BASEIMPONIBLE.AsFloat := CDSClone.FieldByName('TOTAL').AsFloat +
                                                              CDSPresuCabPERCECPION_IB_BASEIMPONIBLE.AsFloat
          else
            if ((CDSClone.FieldByName('GRAVADO_IB').Value='S') and (CDSPresuCabDESGLOZAIVA.Value='N')) Then
              CDSPresuCabPERCECPION_IB_BASEIMPONIBLE.AsFloat := CDSClone.FieldByName('TOTAL').AsFloat +
                                                                CDSClone.FieldByName('IVA_TOTAL').AsFloat +
                                                                CDSPresuCabPERCECPION_IB_BASEIMPONIBLE.AsFloat;

          CDSPresuCabNETO_ACUMULADO.Value     := CDSPresuCabNETO_ACUMULADO.Value + (CDSClone.FieldByName('COSTO_TOTAL').Value * CDSClone.FieldByName('CANTIDAD').Value );
         end;
      CDSClone.Next;
    END;
  // Calculo de Tasa promedio de IVA
  Var_TasaIva:=   ((TotalFinal/TotalNeto)-1)*100;

  CDSPresuCabNETOGRAV1.AsFloat := TotalNeto;

  CDSPresuDet.EnableControls;
 // CDSPresuDet.GotoBookmark(Puntero);
 // CDSPresuDet.FreeBookmark(puntero);
  { aca voy a los calculos de los totoales de la factura }
  CDSClone.Free;
  FormPresupuesto_2.LbNetoPercepcion.Caption:=FormatFloat(',0.00',NetoPercep);
end;

procedure TDatosPresupuesto.SumarSubDetalle;
VAR
  Dscto: Real;
  Puntero:TBookmark;

  CDSPresuDetClone:TClientDataSet;

begin
  Puntero:= CDSPresuDet.GetBookmark;

  CDSPresuDetClone   := TClientDataSet.Create(Self);
  CDSPresuDetClone.CloneCursor(CDSPresuDet,True);
  CDSPresuDetClone.First;

  CDSPresuDetClone.DisableControls;
  CDSPresuDetClone.First;

  CDSPresuSubDet.First;

  WHILE NOT (CDSPresuSubDet.Eof) DO
    BEGIN
      CDSPresuSubDet.Edit;
      CDSPresuSubDetTOTAL_GRAVADO.Value := 0;
      CDSPresuSubDetTOTAL_EXENTO.Value  := 0;
      CDSPresuSubDetTOTAL_IVA.Value     := 0;
      CDSPresuSubDetTOTAL.Value         := 0;
      CDSPresuSubDet.Next;
    END;
  CDSPresuSubDet.First;
  WHILE (NOT CDSPresuDetClone.Eof) DO
    BEGIN
      if CDSPresuDetClone.FieldByName('ACEPTADO').Value='S' then
        begin
          if CDSPresuSubDet.Locate('ITEM_NRO',CDSPresuDetClone.FieldByName('ITEM_NRO').Value,[]) Then
             begin
               CDSPresuSubDet.Edit;
               if Trim(CDSPresuSubDetDETALLE.AsString)='' then
                 CDSPresuSubDetDETALLE.AsString := 'ITEM NRO '+CDSPresuDetClone.FieldByName('ITEM_NRO').AsString;
               CDSPresuSubDetTOTAL_GRAVADO.AsFloat := CDSPresuSubDetTOTAL_GRAVADO.AsFloat + CDSPresuDetClone.FieldByName('TOTAL_GRAVADO').AsFloat;
               CDSPresuSubDetTOTAL_EXENTO.AsFloat  := CDSPresuSubDetTOTAL_EXENTO.AsFloat + CDSPresuDetClone.FieldByName('TOTAL_EXENTO').AsFloat;
               CDSPresuSubDetTOTAL_IVA.AsFloat     := CDSPresuSubDetTOTAL_IVA.AsFloat + CDSPresuDetClone.FieldByName('IVA_TOTAL').AsFloat;
               CDSPresuSubDetTOTAL.AsFloat         := (CDSPresuSubDetTOTAL_GRAVADO.AsFloat + CDSPresuSubDetTOTAL_EXENTO.AsFloat ) * CDSPresuSubDetCANTIDAD.AsFloat;
               CDSPresuSubDet.Post;
             end
          else
             begin
               CDSPresuSubDet.Append;
               CDSPresuSubDetDETALLE.AsString      := 'ITEM NRO '+CDSPresuDetClone.FieldByName('ITEM_NRO').AsString;
               CDSPresuSubDetTOTAL_GRAVADO.AsFloat := CDSPresuDetClone.FieldByName('TOTAL_GRAVADO').AsFloat;
               CDSPresuSubDetTOTAL_EXENTO.AsFloat  := CDSPresuDetClone.FieldByName('TOTAL_EXENTO').AsFloat;
               CDSPresuSubDetTOTAL_IVA.AsFloat     := CDSPresuDetClone.FieldByName('IVA_TOTAL').AsFloat;
               CDSPresuSubDetITEM_NRO.Value        := CDSPresuDetClone.FieldByName('ITEM_NRO').AsInteger;
               CDSPresuSubDetTOTAL.AsFloat         := (CDSPresuSubDetTOTAL_GRAVADO.AsFloat + CDSPresuSubDetTOTAL_EXENTO.AsFloat ) * CDSPresuSubDetCANTIDAD.AsFloat;
               CDSPresuSubDet.Post;
             end;
        END;
      CDSPresuDetClone.Next;
    END;

  CDSPresuDet.EnableControls;
  //CDSPresuDet.GotoBookmark(Puntero);
  //CDSPresuDet.FreeBookmark(puntero);
  CDSPresuDetClone.Free;

end;

procedure TDatosPresupuesto.CDSPresuDetBeforeDelete(DataSet: TDataSet);
begin
  if CDSPresuDetMUESTRAPRODUCIDOS.Value>0 then
    begin
      SysUtils.Abort;
      CDSPresuDet.Cancel;
    end;
end;

procedure TDatosPresupuesto.CDSPresuDetBeforeEdit(DataSet: TDataSet);
begin
  if CDSPresuDetMUESTRAPRODUCIDOS.Value>0 then
    begin
      SysUtils.Abort;
      CDSPresuDet.Cancel;
    end;
end;

procedure TDatosPresupuesto.CDSPresuDetBeforePost(DataSet: TDataSet);
begin
  IF CDSPresuDet.State IN [dsInsert, dsEdit] THEN
    CDSPresuDetNroCpbte.Value := CDSPresuCabLetraFac.Value + CDSPresuCabSucFac.Value + CDSPresuCabNumeroFac.Value;
  IF (CDSPresuDetCodigoArticulo.AsString = '') THEN
    BEGIN
      SysUtils.Abort;
      CDSPresuDet.Cancel;
    END;
// Controlo el Marge de ganancia...
  if (CDSPresuDetMargen.AsFloat<DMMain_FD.GetMargenUtilidad) and
     (CDSPresuCabTIPOCPBTE.AsString='PR')  then
      begin
//        ShowMessage('El precio de Presu esta por debajo de la renta Minima');
        if DMMain_FD.VenderDebajoMinimo=False then
          begin
            ShowMessage('No está Autorizado a vender por debajo de la renta Minima...');
            CDSPresuDet.Cancel;
            SysUtils.Abort;
          end;
      end;
 
end;

procedure TDatosPresupuesto.CDSPresuDetNewRecord(DataSet: TDataSet);
begin
  CDSPresuDetId.Value                         := ibg_PreDet.IncrementFD(1);
  CDSPresuDetRenglon.AsInteger                := CDSPresuDet.RecordCount + 1;
  CDSPresuDetDetalle.Value                    := '';
  CDSPresuDetDETALLE_ADICIONAL.Value          := '';
  CDSPresuDetUnidad.Value                     := '';
  CDSPresuDetCantidad.AsFloat                 := 0;
  CDSPresuDetCosto_Exento.AsFloat             := 0;
  CDSPresuDetCosto_Gravado.AsFloat            := 0;
  CDSPresuDetCosto_Total.AsFloat              := 0;
  CDSPresuDetUnitario_Exento.AsFloat          := 0;
  CDSPresuDetUnitario_Gravado.AsFloat         := 0;
  CDSPresuDetUnitario_Total.AsFloat           := 0;
  CDSPresuDetTotal.AsFloat                    := 0;
  CDSPresuDetDescuento.AsFloat                := 0;
  CDSPresuDetIva_Tasa.AsFloat                 := 0;
  CDSPresuDetIva_SobreTasa.AsFloat            := 0;
  CDSPresuDetDesglozaIva.Value                := '';
  CDSPresuDetModo_Gravamen.Value              := '';
  CDSPresuDetTipoIva_Tasa.Value               := 0;
  CDSPresuDetID_CabPres.Value                 := CDSPresuCabId_pr.Value;
  CDSPresuDetNroCpbte.AsString                := CDSPresuCabNroCpbte.AsString;
  CDSPresuDetFechaVta.AsDateTime              := CDSPresuCabFechaVta.AsDateTime;
  CDSPresudetTipoCpbte.AsString               := CDSPresuCabTipoCpbte.AsString;
  CDSPresuDetCLASECPBTE.AsString              := CDSPresuCabCLASECPBTE.AsString;
  CDSPresuDetSUCURSAL.Value                   := CDSPresuCabSUCURSAL.Value;
  CDSPresuDetMARGEN.AsFloat                   := 100;
  CDSPresuDetACEPTADO.Value                   := 'S';
  CDSPresuDetTOTAL.AsFloat                    := 0;
  CDSPresuDetTOTAL_GRAVADO.AsFloat            := 0;
  CDSPresuDetTOTAL_EXENTO.AsFloat             := 0;
  CDSPresuDetIVA_UNITARIO.AsFloat             := 0;
  CDSPresuDetIVA_TOTAL.AsFloat                := 0;
  CDSPresuDetITEM_NRO.Value                   := 1;
  CDSPresuDetPERCIBE_IVA.Value                := 'N';
  CDSPresuDetTASA_PERCEP_IVA.Value            := 0;
  CDSPresuDetID_TASA_PERCEPCION_IVA.Value     := -1;
  CDSPresuDetPERCEPCION_IVA_DIFERENCIAL.Value := 'N';

end;

procedure TDatosPresupuesto.CDSContactoNewRecord(DataSet: TDataSet);
begin
   CDSContactoID.Value              := CDSContacto.RecordCount+1;
   CDSContactoID_PRESUPUESTO.Value  := CDSPresuCabID_PR.Value;
end;

procedure TDatosPresupuesto.CDSImpuestosNewRecord(DataSet: TDataSet);
begin
  CDSImpuestosId_Impuesto.Value := ibg_PreImp.IncrementFD(1);
  CDSImpuestosID_PresCab.Value  := CDSPresuCabID_PR.Value;
end;

procedure TDatosPresupuesto.CDSIncidenciasNewRecord(DataSet: TDataSet);
begin
  CDSIncidenciasID_PRESUPUESTO.Value  := CDSPresuCabID_PR.Value;
  CDSIncidenciasID.Value              := ibgDetalle.IncrementFD(1);
end;

procedure TDatosPresupuesto.CDSPresuDetIVA_TASASetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=Text;
  CDSPresuDetIVA_SobreTasa.AsFloat := Sender.AsFloat*0.05;

end;

procedure TDatosPresupuesto.CDSPresuCabID_OBRASetText(Sender: TField;
  const Text: string);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString := Text;
      QDatosObra.Close;
      QDatosObra.ParamByName('codigo').Value:=Sender.AsInteger;
      QDatosObra.Open;
      IF (QDatosObraCODIGO.AsString<>'') THEN
        CDSPresuCabMUESTRAOBRA.AsString := QDatosObraDETALLE.ASString
      else
        CDSPresuCabMUESTRAOBRA.AsString := '';
    END;

end;

procedure TDatosPresupuesto.CDSPresuCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString := Text;
      IF NOT (AsignarComprobante(sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Dato no Valido');
          FormPresupuesto_2.RxCTipoCpbte.SetFocus;
        END;
      IF CDSPresuCab.State = dsInsert THEN
        UltimoComprobante;
    END;
end;

procedure TDatosPresupuesto.CDSPresuCabVENDEDORSetText(Sender: TField;
  const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=copy('000000',1,Sender.Size-Length(Text))+Text;
      IF (NOT (AsignarVendedor(Sender.AsString))) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Vendedor no Válido');
          //FormCpbte_2.RxCConVta.SetFocus;
        END;
    END;

end;
{
VAR TotalGral,NetoTotal,Aux:currency;// Extended;
begin
  if (FormPresupuesto_2<>Nil) and (CDSPresuCabNetoGrav1.AsFloat>0) Then
    begin
      TotalGral := CDSPresuCabTotal.AsFloat -
                   CDSPresuCabPERCECEPION_IB_IMPORTE.AsFloat -
                   CDSPresuCabNETOEXEN2.AsFloat;
      NetoTotal := CDSPresuCabNetoGrav2.AsFloat;

     // if CDSPresuCabNETOGRAV2.AsFloat>0 Then
     //   Var_TasaIVA:= ((TotalGral/NetoTotal)-1)*100
     // else
     //   Var_TasaIva:=0;

      Aux:=Sender.AsFloat;
      if (CDSPresuCabDESGLOZAIVA.Value='N') or (FormPresupuesto_2.DiscriminaIva='N') Then
        Aux:= Aux * (1+Var_TasaIva * 0.01);

      Aux:= RoundTo(Aux ,-3);
      Aux:= RoundTo(Aux ,-2);
      Text:=FormatFloat(MascaraCabecera,Aux);
    end;
END;
}


procedure TDatosPresupuesto.CDSPresuCabDSTOIMPORTEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
VAR Aux,TotalGral,NetoTotal:Extended;
begin
  if FormPresupuesto_2<>Nil Then
    begin
//     ((Total / neto) -1) x 100 = Tasa de Iva usada
//      TotalGral  := CDSPresuCabTOTAL.AsFloat ;//- CDSPresuCabPERCEPCION_IB_IMPORTE.AsFloat;
//      NetoTotal  := CDSPresuCabNETOGRAV2.AsFloat + CDSPresuCabNETOEXEN2.AsFloat;
//      if NetoTotal>0 Then
//        Var_TasaIVA:= RoundTo(((TotalGral/NetoTotal)-1) * 100,-2)
//      else
//        Var_TasaIva:=0;
//
//      Var_TasaIVA:= RoundTo(Var_TasaIVA,-1);



      Aux:= Sender.AsFloat;
      if (CDSPresuCabDESGLOZAIVA.Value='N') or (FormPresupuesto_2.DiscriminaIva='N') Then
         Aux:= Aux * (1+Var_TasaIva * 0.01);

      aux:=RoundTo(Aux,-3);
      aux:=RoundTo(Aux,-2);

      Text:= FormatFloat(',0.00',Aux);
    end;
end;

procedure TDatosPresupuesto.CDSPresuCabDSTOIMPORTESetText(Sender: TField;
  const Text: string);
var Aux1,Aux2,Importe:Extended;
begin
  Sender.AsString:=Text;
  Aux1:=(CDSPresuCabNETOGRAV1.AsFloat+CDSPresuCabNETOEXEN1.AsFloat);
  Aux2:=(CDSPresuCabNETOGRAV1.AsFloat+CDSPresuCabNETOEXEN1.AsFloat)-CDSPresuCabDSTOIMPORTE.AsFloat;
  if Aux1<>0 then
    Importe:=((Aux1-Aux2)/Aux1)*100
  else
    Importe:= 0;
  if (CDSPresuCabDESGLOZAIVA.Value='N') or (FormPresupuesto_2.DiscriminaIva='N') Then
    Importe:= RoundTo((Importe/(1+(Var_TasaIva * 0.01))),-2);

  CDSPresuCabDSTOSetText(CDSPresuCabDSTO,FloatToStr(Importe));


end;

procedure TDatosPresupuesto.CDSPresuCabDSTOSetText(Sender: TField;
  const Text: String);
begin

  Sender.AsString:= FormatFloat(MascaraCabecera,StrToFloatDef(Text,0));
  if (Sender.AsFloat > DMMain_FD.TopeDsctoGral) then
    Sender.AsFloat:=DMMain_FD.TopeDsctoGral;
  if Sender.AsFloat<0 Then Sender.AsString:='0.00';
  SumarDetalleClon;
  CalcularTotales;
end;

procedure TDatosPresupuesto.CDSPresuCabFECHA_FINANCIERASetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  if (CDSPresuCabFECHA_TECNICA.AsDateTime<CDSPresuCabFECHA_FINANCIERA.AsDateTime) Then
    CDSPresuCabFECHA_ENTREGA.AsDateTime:= CDSPresuCabFECHA_FINANCIERA.AsDateTime+CDSPresuCabPLAZO_ENTREGA.Value
  else
    if (CDSPresuCabFECHA_TECNICA.AsDateTime>CDSPresuCabFECHA_FINANCIERA.AsDAteTime) Then
      CDSPresuCabFECHA_ENTREGA.AsDateTime:= CDSPresuCabFECHA_TECNICA.AsDateTime+CDSPresuCabPLAZO_ENTREGA.Value
end;

procedure TDatosPresupuesto.CDSPresuCabFECHA_TECNICASetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  if (CDSPresuCabFECHA_TECNICA.AsDateTime<CDSPresuCabFECHA_FINANCIERA.AsDateTime) Then
    CDSPresuCabFECHA_ENTREGA.AsDateTime:= CDSPresuCabFECHA_FINANCIERA.AsDateTime+CDSPresuCabPLAZO_ENTREGA.Value
  else
    if (CDSPresuCabFECHA_TECNICA.AsDateTime>CDSPresuCabFECHA_FINANCIERA.AsDAteTime) Then
      CDSPresuCabFECHA_ENTREGA.AsDateTime:= CDSPresuCabFECHA_TECNICA.AsDateTime+CDSPresuCabPLAZO_ENTREGA.Value
end;

procedure TDatosPresupuesto.CDSPresuDetAfterPost(DataSet: TDataSet);
begin
  SumaFinal;
end;


procedure TDatosPresupuesto.CDSPresuDetAfterScroll(DataSet: TDataSet);
begin
  if FormPresupuesto_2 <> nil Then
    begin
      FormPresupuesto_2.sbEstado.Panels[1].Text:='';
        if CDSPresuDetUnitario_Total.AsFloat<CDSPresuDetCosto_Total.AsFloat Then
          FormPresupuesto_2.sbEstado.Panels[1].Text:='P.debajo del costo';
    end;
end;

END.
