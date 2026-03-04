unit DMRtosMk;

interface

uses
  SysUtils, Classes, IBGenerator, FMTBcd, DBClient, Provider, DB, SqlExpr,
  Math,Dialogs,Librerias;

type
  TDatosRtoMk = class(TDataModule)
    QRtoCab: TSQLQuery;
    SQLQuery2: TSQLQuery;
    SQLQuery3: TSQLQuery;
    SQLQuery4: TSQLQuery;
    QRtoDet: TSQLQuery;
    DSPRtoCab: TDataSetProvider;
    DataSetProvider2: TDataSetProvider;
    DataSetProvider3: TDataSetProvider;
    DataSetProvider4: TDataSetProvider;
    DSPRtoDet: TDataSetProvider;
    CDSRtoCab: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    ClientDataSet3: TClientDataSet;
    ClientDataSet4: TClientDataSet;
    CDSRtoDet: TClientDataSet;
    QRtoCabID_RTO: TIntegerField;
    QRtoCabTIPOCPBTE: TStringField;
    QRtoCabCLASECPBTE: TStringField;
    QRtoCabSUCURSAL: TIntegerField;
    QRtoCabNROCPBTE: TStringField;
    QRtoCabCODIGO: TStringField;
    QRtoCabLETRARTO: TStringField;
    QRtoCabSUCRTO: TStringField;
    QRtoCabNUMERORTO: TStringField;
    QRtoCabNOMBRE: TStringField;
    QRtoCabRAZONSOCIAL: TStringField;
    QRtoCabDIRECCION: TStringField;
    QRtoCabCPOSTAL: TStringField;
    QRtoCabLOCALIDAD: TStringField;
    QRtoCabTIPOIVA: TIntegerField;
    QRtoCabCUIT: TStringField;
    QRtoCabLISTAPRECIO: TIntegerField;
    QRtoCabFECHAVTA: TSQLTimeStampField;
    QRtoCabFECHAVTO: TSQLTimeStampField;
    QRtoCabCONDICIONVTA: TIntegerField;
    QRtoCabANULADO: TStringField;
    QRtoCabIMPRESO: TStringField;
    QRtoCabOBSERVACION1: TStringField;
    QRtoCabOBSERVACION2: TStringField;
    QRtoCabZONA: TIntegerField;
    QRtoCabLDR: TIntegerField;
    QRtoCabDEPOSITO: TIntegerField;
    QRtoCabVENDEDOR: TStringField;
    QRtoCabUSUARIO: TStringField;
    QRtoCabRENGLONES: TSmallintField;
    QRtoCabFECHA_HORA: TSQLTimeStampField;
    QRtoCabMUESTRACONDVENTA: TStringField;
    QRtoCabMUESTRADEPOSITO: TStringField;
    QRtoCabMUESTRASUCURSAL: TStringField;
    QRtoCabMUESTRALDR: TStringField;
    QRtoCabMUESTRALDIRECCIONLDR: TStringField;
    QRtoCabMUESTRAIVA: TStringField;
    QRtoCabMUESTRACOMPROBANTE: TStringField;
    QRtoCabID_TIPOCOMPROBANTE: TIntegerField;
    QRtoCabMUESTRAVENDEDOR: TStringField;
    QRtoCabMUESTRATELEFONO1: TStringField;
    QRtoCabMUESTRATELEFONO2: TStringField;
    CDSRtoCabID_RTO: TIntegerField;
    CDSRtoCabTIPOCPBTE: TStringField;
    CDSRtoCabCLASECPBTE: TStringField;
    CDSRtoCabSUCURSAL: TIntegerField;
    CDSRtoCabNROCPBTE: TStringField;
    CDSRtoCabCODIGO: TStringField;
    CDSRtoCabLETRARTO: TStringField;
    CDSRtoCabSUCRTO: TStringField;
    CDSRtoCabNUMERORTO: TStringField;
    CDSRtoCabNOMBRE: TStringField;
    CDSRtoCabRAZONSOCIAL: TStringField;
    CDSRtoCabDIRECCION: TStringField;
    CDSRtoCabCPOSTAL: TStringField;
    CDSRtoCabLOCALIDAD: TStringField;
    CDSRtoCabTIPOIVA: TIntegerField;
    CDSRtoCabCUIT: TStringField;
    CDSRtoCabLISTAPRECIO: TIntegerField;
    CDSRtoCabFECHAVTA: TSQLTimeStampField;
    CDSRtoCabFECHAVTO: TSQLTimeStampField;
    CDSRtoCabCONDICIONVTA: TIntegerField;
    CDSRtoCabANULADO: TStringField;
    CDSRtoCabIMPRESO: TStringField;
    CDSRtoCabZONA: TIntegerField;
    CDSRtoCabLDR: TIntegerField;
    CDSRtoCabDEPOSITO: TIntegerField;
    CDSRtoCabVENDEDOR: TStringField;
    CDSRtoCabUSUARIO: TStringField;
    CDSRtoCabRENGLONES: TSmallintField;
    CDSRtoCabFECHA_HORA: TSQLTimeStampField;
    CDSRtoCabMUESTRACONDVENTA: TStringField;
    CDSRtoCabMUESTRADEPOSITO: TStringField;
    CDSRtoCabMUESTRASUCURSAL: TStringField;
    CDSRtoCabMUESTRALDR: TStringField;
    CDSRtoCabMUESTRALDIRECCIONLDR: TStringField;
    CDSRtoCabMUESTRAIVA: TStringField;
    CDSRtoCabMUESTRACOMPROBANTE: TStringField;
    CDSRtoCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSRtoCabMUESTRAVENDEDOR: TStringField;
    CDSRtoCabMUESTRATELEFONO1: TStringField;
    CDSRtoCabMUESTRATELEFONO2: TStringField;
    QRtoDetID: TIntegerField;
    QRtoDetID_CABRTO: TIntegerField;
    QRtoDetTIPOCPBTE: TStringField;
    QRtoDetCLASECPBTE: TStringField;
    QRtoDetNROCPBTE: TStringField;
    QRtoDetRENGLON: TFMTBCDField;
    QRtoDetFECHAVTA: TSQLTimeStampField;
    QRtoDetDEPOSITO: TIntegerField;
    QRtoDetCODIGOARTICULO: TStringField;
    QRtoDetDETALLE: TStringField;
    QRtoDetUNIDAD: TStringField;
    QRtoDetCANTIDAD: TFMTBCDField;
    QRtoDetCOSTO_UNITARIO: TFloatField;
    QRtoDetCOSTO_TOTAL: TFloatField;
    QRtoDetUNITARIO: TFloatField;
    QRtoDetUNITARIO_TOTAL: TFloatField;
    QRtoDetCOEFICIENTE: TFloatField;
    QRtoDetMODO_GRAVAMEN: TStringField;
    QRtoDetIVA_TASA: TFMTBCDField;
    QRtoDetIVA_SOBRETASA: TFMTBCDField;
    QRtoDetTIPOIVA_TASA: TIntegerField;
    QRtoDetTIPOIVA_SOBRETASA: TIntegerField;
    QRtoDetUTILIDAD: TFMTBCDField;
    QRtoDetMARGEN: TFMTBCDField;
    QRtoDetCALCULA_SOBRETASA: TStringField;
    QRtoDetGRAVADO_IB: TStringField;
    QRtoDetID_MONEDA: TIntegerField;
    QRtoDetCOTIZACION: TFMTBCDField;
    QRtoDetOBSERVACION: TStringField;
    CDSRtoDetID: TIntegerField;
    CDSRtoDetID_CABRTO: TIntegerField;
    CDSRtoDetTIPOCPBTE: TStringField;
    CDSRtoDetCLASECPBTE: TStringField;
    CDSRtoDetNROCPBTE: TStringField;
    CDSRtoDetRENGLON: TFMTBCDField;
    CDSRtoDetFECHAVTA: TSQLTimeStampField;
    CDSRtoDetDEPOSITO: TIntegerField;
    CDSRtoDetCODIGOARTICULO: TStringField;
    CDSRtoDetDETALLE: TStringField;
    CDSRtoDetUNIDAD: TStringField;
    CDSRtoDetCANTIDAD: TFMTBCDField;
    CDSRtoDetCOSTO_UNITARIO: TFloatField;
    CDSRtoDetCOSTO_TOTAL: TFloatField;
    CDSRtoDetUNITARIO: TFloatField;
    CDSRtoDetUNITARIO_TOTAL: TFloatField;
    CDSRtoDetCOEFICIENTE: TFloatField;
    CDSRtoDetMODO_GRAVAMEN: TStringField;
    CDSRtoDetIVA_TASA: TFMTBCDField;
    CDSRtoDetIVA_SOBRETASA: TFMTBCDField;
    CDSRtoDetTIPOIVA_TASA: TIntegerField;
    CDSRtoDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSRtoDetUTILIDAD: TFMTBCDField;
    CDSRtoDetMARGEN: TFMTBCDField;
    CDSRtoDetCALCULA_SOBRETASA: TStringField;
    CDSRtoDetGRAVADO_IB: TStringField;
    CDSRtoDetID_MONEDA: TIntegerField;
    CDSRtoDetCOTIZACION: TFMTBCDField;
    CDSRtoDetOBSERVACION: TStringField;
    DSRtoDet: TDataSource;
    QComprob: TSQLQuery;
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
    DSPStock: TDataSetProvider;
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
    CDSStockCOSTO_EXENTO_STK: TFMTBCDField;
    CDSStockCOSTO_GRAVADO_STK: TFMTBCDField;
    CDSStockCOSTO_TOTAL_STK: TFMTBCDField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockFIJACION_PRECIO_GRAVADO: TFMTBCDField;
    CDSStockFIJACION_PRECIO_EXENTO: TFMTBCDField;
    CDSStockFIJACION_PRECIO_TOTAL: TFMTBCDField;
    CDSStockFUAP: TSQLTimeStampField;
    CDSStockUNIDAD: TStringField;
    CDSStockCONTROLASTOCK: TStringField;
    CDSStockCODIGO_PROVEEDOR: TStringField;
    CDSStockCLASE_ARTICULO: TIntegerField;
    CDSStockMODO_GRAVAMEN: TStringField;
    CDSStockCON_IMP_INT: TStringField;
    CDSStockIMPUESTO_INTERNOS: TFMTBCDField;
    CDSStockGRAVADO_IB: TStringField;
    CDSStockTASA_IB: TIntegerField;
    CDSStockACTUALIZACOSTO: TStringField;
    CDSStockDEPRODUCCION: TStringField;
    CDSStockPRODUCCIONDIRECTA: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockCONTENIDO_COMPRA: TFMTBCDField;
    CDSStockCONTROL_SERIE: TStringField;
    CDSStockUSA_CODIGOBARRA: TStringField;
    CDSStockUNIDAD_ULTIMAUSADA: TStringField;
    CDSStockID_TABLAPRECIOS: TIntegerField;
    CDSStockID_TABLAPRECIOSDETALLE: TIntegerField;
    CDSStockCODIGO_PRECIO: TIntegerField;
    CDSStockFECHA_ALTA: TSQLTimeStampField;
    CDSStockCOSTO_GRAVADO_SOMBRA: TFMTBCDField;
    CDSStockCOSTO_EXENTO_SOMBRA: TFMTBCDField;
    CDSStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    CDSStockFECHA_ULTIMAVTA: TSQLTimeStampField;
    CDSStockMONEDA: TIntegerField;
    CDSStockCOSTO_GRAVADO_P: TFMTBCDField;
    CDSStockCOSTO_EXENTO_P: TFMTBCDField;
    CDSStockCOSTO_TOTAL_P: TFMTBCDField;
    CDSStockPOSICION: TStringField;
    CDSStockPRESENTACION_UNIDAD: TStringField;
    CDSStockPRESENTACION_CANTIDAD: TFMTBCDField;
    CDSStockEDITAPRECIO: TStringField;
    CDSStockEDITADETALLE: TStringField;
    CDSStockURL: TStringField;
    CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    CDSStockMUESTRARUBRO: TStringField;
    CDSStockMUESTRASUBRUBRO: TStringField;
    CDSStockMUESTRAMARCA: TStringField;
    CDSStockMUESTRATASA: TStringField;
    CDSStockMUESTRATASAPORCENTAJE: TFMTBCDField;
    CDSStockMUESTRASOBRETASA: TStringField;
    CDSStockMUESTRASOBRETASAPROCENTAJE: TFMTBCDField;
    CDSStockMUESTRATASAIB: TFMTBCDField;
    CDSStockMUESTRATABLAPRECIODETALLE: TStringField;
    CDSStockMUESTRATABLAPRECIO1: TFMTBCDField;
    CDSStockMUESTRATABLAPRECIO2: TFMTBCDField;
    DSPDeposito: TDataSetProvider;
    CDSDeposito: TClientDataSet;
    CDSDepositoID: TIntegerField;
    CDSDepositoNOMBRE: TStringField;
    CDSDepositoSUCURSAL: TIntegerField;
    DSPIva: TDataSetProvider;
    CDSIva: TClientDataSet;
    CDSIvaCODIGO: TIntegerField;
    CDSIvaDESCRIPCION: TStringField;
    CDSIvaTASA: TFMTBCDField;
    CDSIvaCOLUMNA: TSmallintField;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalCOMISION: TFMTBCDField;
    DSPInscripcion: TDataSetProvider;
    CDSInscripcion: TClientDataSet;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    DSPLdr: TDataSetProvider;
    CDSLdr: TClientDataSet;
    CDSLdrCODIGO_CLIENTE: TStringField;
    CDSLdrCODIGO_LDR: TIntegerField;
    CDSLdrNOMBRE: TStringField;
    CDSLdrDIRECCION: TStringField;
    CDSLdrCPOSTAL: TStringField;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesDIRECCION_PARTICULAR: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesTELEFONO_PARTICULAR: TStringField;
    CDSClientesTELEFONO_COMERCIAL_1: TStringField;
    CDSClientesTELEFONO_COMERCIAL_2: TStringField;
    CDSClientesTELEFONO_CELULAR: TStringField;
    CDSClientesID_COD_POSTAL: TIntegerField;
    CDSClientesCPOSTAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesCONDICION_IVA: TIntegerField;
    CDSClientesEMITE_REMITO: TStringField;
    CDSClientesEMITE_FACTURA: TStringField;
    CDSClientesNRO_DE_CUIT: TStringField;
    CDSClientesACTIVO: TStringField;
    CDSClientesLIMITE_CREDITO: TFMTBCDField;
    CDSClientesSALDOINICIAL: TFMTBCDField;
    CDSClientesOBSERVACIONES: TMemoField;
    CDSClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSClientesFECHAALTA: TSQLTimeStampField;
    CDSClientesSUCURSAL: TIntegerField;
    CDSClientesZONA: TIntegerField;
    CDSClientesVENDEDOR: TStringField;
    CDSClientesULTIMOPAGO: TSQLTimeStampField;
    CDSClientesLISTAPRECIOS: TIntegerField;
    CDSClientesFECHANACIMIENTO: TSQLTimeStampField;
    CDSClientesTIPODOCUMENTO: TSmallintField;
    CDSClientesNRODOCUMENTO: TStringField;
    CDSClientesCORREOELECTRONICO: TStringField;
    CDSClientesID_FACTURAPORDEFECTO: TIntegerField;
    CDSClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    CDSClientesID_TIKETPORDEFECTO: TIntegerField;
    CDSClientesPERCIBIR_IB: TStringField;
    CDSClientesINSCRIPTO_MULTICONVENIO: TStringField;
    CDSClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    CDSClientesCONTACTO: TStringField;
    CDSClientesTELEFONO_CONTACTO: TStringField;
    CDSClientesCOBRADOR: TStringField;
    CDSClientesCATEGORIA: TIntegerField;
    CDSClientesLONGITUD: TStringField;
    CDSClientesLATITUD: TStringField;
    CDSClientesDIRECCION_CALLE: TStringField;
    CDSClientesDIRECCION_NUMERO: TStringField;
    CDSClientesDIRECCION_PISO: TStringField;
    CDSClientesDIRECCION_DEPTO: TStringField;
    CDSClientesDEUDAMAYOR30: TStringField;
    CDSClientesMUESTRATELEDISCADO: TStringField;
    CDSClientesMUESTRAVENDEDOR: TStringField;
    CDSClientesMUESTRACOBRADOR: TStringField;
    CDSClientesTIPOABONO: TStringField;
    CDSClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    CDSClientesMES_ABONOANUAL: TIntegerField;
    CDSClientesFRANQUICIA: TStringField;
    CDSClientesDIAS_MAYOR_30: TIntegerField;
    CDSClientesID_DEPOSITO_FRANQUICIA: TIntegerField;
    CDSClientesID_TRANSPORTE: TIntegerField;
    CDSClientesIMPRIME_SALDOFACTURA: TStringField;
    CDSClientesCORTAR_SERVICIO: TStringField;
    CDSClientesCON_PLANPAGO: TStringField;
    CDSClientesDIRECCION_POSTAL: TStringField;
    CDSClientesCALLE_1: TStringField;
    CDSClientesCALLE_2: TStringField;
    CDSClientesVENDER_DE_CTDO: TStringField;
    CDSClientesCORREOELECTRONICO_2: TStringField;
    CDSClientesPRESENTO_F8001: TStringField;
    CDSClientesDESDE_F8001: TSQLTimeStampField;
    CDSClientesHASTA_F8001: TSQLTimeStampField;
    CDSClientesID_TARJETACREDITO: TIntegerField;
    CDSClientesNRO_TARJETA_C: TStringField;
    CDSClientesNRO_SEG_TC: TStringField;
    CDSClientesID_BANCO: TIntegerField;
    CDSClientesNRO_CTA_BCO: TStringField;
    QMonedas: TSQLQuery;
    QMonedasID: TIntegerField;
    QMonedasCOTIZACION: TFMTBCDField;
    QMonedasMONEDA: TStringField;
    QMonedasSIGNO: TStringField;
    QPrimerLdr: TSQLQuery;
    IBGRto_Cab: TIBGenerator;
    IBGRto_Det: TIBGenerator;
    QCondVentaDefecto: TSQLQuery;
    QPrimerConVta: TSQLQuery;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalRECARGO: TFMTBCDField;
    CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    DSPCondVenta: TDataSetProvider;
    CDSCondVenta: TClientDataSet;
    CDSCondVentaCODIGOCLIENTE: TStringField;
    CDSCondVentaCODIGOPAGO: TIntegerField;
    CDSCondVentaDESCUENTO: TFMTBCDField;
    CDSCondVentaPOR_DEFECTO: TStringField;
    CDSCondVentaDETALLE: TStringField;
    CDSCondVentaDIAS: TIntegerField;
    CDSCondVentaDESCUENTO_FPAGO: TFMTBCDField;
    DSPBuscaVendedor: TDataSetProvider;
    CDSBuscaVendedor: TClientDataSet;
    CDSBuscaVendedorCODIGO: TStringField;
    CDSBuscaVendedorNOMBRE: TStringField;
    CDSBuscaVendedorCOMISION: TFMTBCDField;
    CDSRtoCabOBSERVACION1: TStringField;
    QRtoDetDIAS: TIntegerField;
    CDSRtoDetDIAS: TIntegerField;
    QRtoDetSALDO: TFMTBCDField;
    CDSRtoDetSALDO: TFMTBCDField;
    QRtoCabVTATOTAL: TFMTBCDField;
    QRtoCabCOSTOTOTAL: TFMTBCDField;
    QRtoCabSALDO_TOTAL: TFMTBCDField;
    CDSRtoCabOBSERVACION2: TStringField;
    CDSRtoCabVTATOTAL: TFMTBCDField;
    CDSRtoCabCOSTOTOTAL: TFMTBCDField;
    CDSRtoCabSALDO_TOTAL: TFMTBCDField;
    DSPBuscaDeposito: TDataSetProvider;
    CDSBuscaDeposito: TClientDataSet;
    CDSBuscaDepositoNOMBRE: TStringField;
    CDSBuscaDepositoID: TIntegerField;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    DSPBuscaCondVenta: TDataSetProvider;
    CDSBuscaCondVenta: TClientDataSet;
    CDSBuscaCondVentaCODIGOCLIENTE: TStringField;
    CDSBuscaCondVentaCODIGOPAGO: TIntegerField;
    CDSBuscaCondVentaDESCUENTO: TFMTBCDField;
    CDSBuscaCondVentaPOR_DEFECTO: TStringField;
    CDSBuscaCondVentaDETALLE: TStringField;
    procedure CDSRtoCabSUCURSALSetText(Sender: TField; const Text: string);
    procedure CDSRtoCabLDRSetText(Sender: TField; const Text: string);
    procedure CDSRtoCabDEPOSITOSetText(Sender: TField; const Text: string);
    procedure CDSRtoCabVENDEDORSetText(Sender: TField; const Text: string);
    procedure CDSRtoCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: string);
    procedure CDSRtoCabNewRecord(DataSet: TDataSet);
    procedure CDSRtoCabCONDICIONVTASetText(Sender: TField; const Text: string);
    procedure CDSRtoDetNewRecord(DataSet: TDataSet);
    procedure CDSRtoCabSUCRTOSetText(Sender: TField; const Text: string);
    procedure CDSRtoCabNUMERORTOSetText(Sender: TField; const Text: string);
    procedure CDSRtoCabCODIGOSetText(Sender: TField; const Text: string);
    procedure CDSRtoDetCODIGOARTICULOSetText(Sender: TField;
      const Text: string);
    procedure CDSRtoDetAfterPost(DataSet: TDataSet);
    procedure CDSRtoCabBeforePost(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSRtoDetCOSTO_UNITARIOSetText(Sender: TField;
      const Text: string);
    procedure CDSRtoDetUNITARIOSetText(Sender: TField; const Text: string);
    procedure CDSRtoDetCANTIDADSetText(Sender: TField; const Text: string);
    procedure CDSRtoDetCOEFICIENTESetText(Sender: TField; const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
    Renglones,SucDefecto,
    DepDefecto:Integer;
    EmpleadoPorDef:String;
    Coeficiente:Double;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    FUNCTION AsignarArticulo(Dato: STRING): Boolean;
    FUNCTION AsignarCliente(Dato: STRING): Boolean;
    FUNCTION AsignarLdr(Cliente: STRING; Dato: integer): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarCondVenta(Cliente: STRING; Dato: Integer): Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION AsignarVendedor(Dato: String): Boolean;
    PROCEDURE UltimoComprobante;
    procedure SumarDetalle;
  end;

var
  DatosRtoMk: TDatosRtoMk;

implementation

uses DMBuscadoresForm, DMStoreProcedureForm,
  UMuestraListaCodBarra, UBuscadorArticulos,UDMain_FD;

{$R *.dfm}

PROCEDURE TDatosRtoMk.UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DMStoreProcedure DO
    BEGIN
        BEGIN
          //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
          IF (CDSRtoCabLETRARTO.AsString <> '') AND (CDSRtoCabCLASECPBTE.Value <> '') THEN
            BEGIN
              spNumeroCpbte.Close;
              spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSRtoCabLETRARTO.AsString;
              spNumeroCpbte.ParamByName('Sucursal').Value    := CDSRtoCabSucursal.Value;
              spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSRtoCabCLASECPBTE.Value;
              spNumeroCpbte.ParamByName('TipoComp').Value    := CDSRtoCabTIPOCPBTE.AsString;
              spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
              spNumeroCpbte.ExecProc;
              IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
                BEGIN
                  IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                    Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
                  ELSE
                    Numero := 1;
                  CDSRtoCabSUCRTOSetText(CDSRtoCabSUCRTO,IntToStr(Numero));
                  IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                    Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
                  ELSE
                    Numero := 1;
                  CDSRtoCabNumeroRtoSetText(CDSRtoCabNumeroRto,IntToStr(Numero));
                END;
            // el desgloza iva lo manejo segun el cliente. cuando levanto los datos del mismo
            //  wwCDSRtoCabDESGLOZAIVA.Value       := spNumeroCpbte.ParamByName('desgloza_Iva').AsString;
            //  wwCDSRtoCabINGRESA_A_CTACTE.Value  := spNumeroCpbte.ParamByName('Va_CtaCte').AsString;
            //  wwCDSRtoCabINGRESA_LIBRO_IVA.Value := spNumeroCpbte.ParamByName('Va_Libro_Iva').AsString;
              CDSRtoCabTIPOCPBTE.AsString       := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
              CDSRtoCabCLASECPBTE.AsString      := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
       //       Imprime                          := spNumeroCpbte.ParamByName('Imprime').AsString;
              spNumeroCpbte.CLose;
            END;
          CDSRtoCabNroCpbte.AsString := CDSRtoCabLetraRto.AsString + CDSRtoCabSucRto.AsString +
            CDSRtoCabNumeroRto.AsString;
        END;
    END;
END;

procedure TDatosRtoMk.SumarDetalle;
VAR
  Dscto: Real;
  Puntero:TBookmark;
BEGIN
  Puntero := CDSRtoDet.GetBookmark;
  CDSRtoDet.DisableControls;
  CDSRtoDet.First;
  IF CDSRtoCab.State = dsBrowse THEN
    CDSRtoCab.Edit;
  CDSRtoCabCOSTOTOTAL.ASFloat:=0;
  CDSRtoCabVTATOTAL.ASFloat  :=0;
  WHILE (NOT CDSRtoDet.Eof) DO
    BEGIN
      CDSRtoCabCOSTOTOTAL.AsFloat := CDSRtoDetCOSTO_TOTAL.AsFloat + CDSRtoCabCOSTOTOTAL.AsFloat;
      CDSRtoCabVTATOTAL.AsFloat   := CDSRtoDetUNITARIO_TOTAL .AsFloat  + CDSRtoCabVTATOTAL.AsFloat;
      CDSRtoDet.Next;
    END;
  CDSRtoDet.GotoBookmark(Puntero);
  CDSRtoDet.FreeBookmark(Puntero);
  CDSRtoDet.EnableControls;
  { aca voy a los calculos de los totoales de la factura }
end;


FUNCTION TDatosRtoMk.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSRtoCabSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSRtoCabMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSRtoCabLETRARTO.Value           := QComprobLETRA.Value;
      CDSRtoCabTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSRtoCabCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
      Renglones                         := QComprobLINEAS_DETALLE.Value;
    END
  ELSE
    BEGIN
      Result:=False;
      CDSRtoCabMUESTRACOMPROBANTE.Value  := '';
      CDSRtoCabLETRARTO.Value            := '';
      CDSRtoCabCLASECPBTE.Value          := '';
      CDSRtoCabTIPOCPBTE.Value           := '';
      Renglones                          := 0;
    END;
END;

FUNCTION TDatosRtoMk.ASignarArticulo(Dato: STRING): Boolean;
var Gravado,Exento,Iva,Total,Margen,Dscto:Extended;
BEGIN
  IF CDSRtoDet.State = dsBrowse THEN
    CDSRtoDet.Edit;
  CDSStock.Close;
  CDSStock.Params.ParamByName('Codigo').Value:=Dato;
  CDSStock.Open;
  IF (( NOT (CDSStock.IsEmpty)) and (CDSStockCLASE_ARTICULO.Value<>0)) THEN
    BEGIN
          //vacio todo los importes por si hay un cambio de codigo y no queden cargados los valores
      CDSRtoDetCantidad.AsFloat        :=0;
      CDSRtoDetUnitario_Total.AsFloat  :=0;
      CDSRtoDetUNITARIO.AsFloat        :=0;
      CDSRtoDetCOSTO_UNITARIO.AsFloat  :=0;

      CDSRtoDetDETALLE.AsString        := CDSStockDETALLE_STK.AsString;
      CDSRtoDetUNIDAD.Value            := CDSStockUNIDAD.Value;
      CDSRtoDetCOSTO_UNITARIOSetText(CDSRtoDetCOSTO_UNITARIO, FloatToStr(RoundTo((CDSStockFIJACION_PRECIO_GRAVADO.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat),DMMain_FD.DecRedondeo)));
      CDSRtoDetMODO_GRAVAMEN.Value     := CDSStockMODO_GRAVAMEN.Value;
      CDSRtoDetTIPOIVA_TASA.Value      := CDSStockTASA_IVA.Value;
      CDSRtoDetTIPOIVA_SOBRETASA.Value := CDSStockSOBRETASA_IVA.Value;
      //Asigno el deposito que tengo en el encabezado...
      CDSRtoDetDeposito.Value := CDSRtoCabDeposito.Value;
      //segun el tipo de inscripcion verifico si descrimina o no iva y si cobra Sobre tasa
      // traigo los porcentajes de Iva
      CDSIva.Close;
      CDSIva.Params.ParamByName('id').Value:= CDSRtoDetTipoIva_Tasa.Value;
      CDSIva.Open;
      IF NOT (CDSIva.IsEmpty) THEN
        CDSRtoDetIVA_Tasa.AsFloat := CDSIvaTASA.AsFloat;
      CDSIva.Close;
      CDSIva.Params.ParamByName('id').Value:= CDSRtoDetTipoIva_SobreTasa.Value;
      CDSIva.Open;
      IF NOT (CDSIva.IsEmpty) THEN
        CDSRtoDetIVA_SobreTasa.AsFloat := CDSIvaTASA.AsFloat;

      CDSRtoDetID_MONEDA.Value := CDSStockMONEDA.Value;
      QMonedas.Close;
      QMonedas.ParamByName('id').Value:= CDSStockMONEDA.Value;
      QMonedas.Open;
      if QMonedasCOTIZACION.AsString<>'' then
        CDSRtoDetCOTIZACION.AsFloat := QMonedasCOTIZACION.AsFloat
      else
        CDSRtoDetCOTIZACION.AsFloat := 1;
      QMonedas.Close;
      Result:=True;
    END
  ELSE
    Result:=False;
END;

FUNCTION TDatosRtoMk.AsignarCliente(Dato: STRING): Boolean;
Var Escape:Char;
BEGIN
  Escape:=#27;
  CDSClientes.Close;
  CDSClientes.Params.ParamByName('Codigo').Value:=Dato;
  CDSClientes.Open;
  IF NOT (CDSClientes.Eof) THEN
    BEGIN
      if CDSClientesACTIVO.Value<>'S' Then
        begin
          ShowMessage('Cliente Inactivo ... No se puede Generar Operación...');
          sysUtils.Abort;
        end;
      CDSRtoCabNombre.AsString      := CDSClientesNombre.AsString;
      CDSRtoCabRazonSocial.AsString := CDSClientesRazon_Social.ASString;
      CDSRtoCabCuit.AsString        := CDSClientesNro_de_Cuit.AsString;
      CDSRtoCabDireccion.AsString   := CDSClientesDireccion_Comercial.AsString;
      CDSRtoCabTipoIVA.AsInteger    := CDSClientesCondicion_Iva.Value;
      CDSRtoCabCPostal.AsString     := CDSClientesCPostal.AsString;
      CDSRtoCabLocalidad.AsString   := CDSClientesLocalidad.AsString;
      CDSRtoCabZona.AsInteger       := CDSClientesZona.AsInteger;
      if (CDSClientesNRO_DE_CUIT.AsString='') or (CDSClientesNRO_DE_CUIT.AsString[1]='-') Then
        CDSRtoCabCUIT.AsString:='00-00000000-0'
      ELSE
        CDSRtoCabCUIT.AsString        := CDSClientesNRO_DE_CUIT.AsString;
      if ValidarCuit(CDSRtoCabCUIT.AsString) Then
        CDSRtoCabCUIT.AsString        := CDSClientesNRO_DE_CUIT.AsString
      else
        begin
          ShowMessage('El numero de Cuit no es Valido... Verificar en la Ficha del Cliente...');
          CDSRtoCabCODIGO.Clear;
          CDSRtoCabNOMBRE.Clear;
          CDSRtoCabRAZONSOCIAL.Clear;
        end;

      CDSRtoCabLdr.Clear;
      //Traigo el Primer LDR
      QPrimerLdr.CLose;
      QPrimerLdr.ParamByName('codigo').AsString:=Dato;
      QPrimerLdr.Open;
      if Not(QPrimerLdr.IsEmpty) Then
        if QPrimerLdr.Fields[0].AsString<>'' Then
          CDSRtoCabLDRSetText(CDSRtoCabLDR,QPrimerLdr.Fields[0].AsString)
        else
          begin
            ShowMessage('No tiene Ldr cargado....');
            CDSRtoCabLDR.Clear;
            CDSRtoCabMUESTRALDR.Clear;
          end;
          QPrimerLdr.CLose;
          //Traigo La condicion de vta por defecto
          QCondVentaDefecto.CLose;
          QCondVentaDefecto.ParamByName('codigo').AsString:=Dato;
          QCondVentaDefecto.Open;
          if Not(QCondVentaDefecto.IsEmpty) Then
            if QCondVentaDefecto.Fields[0].AsString<>'' Then
              CDSRtoCabCONDICIONVTASetText(CDSRtoCabCONDICIONVTA,QCondVentaDefecto.Fields[0].AsString)
            else
              begin
                //Traigo La primera condicion de vta
                QPrimerConVta.CLose;
                QPrimerConVta.ParamByName('codigo').AsString:=Dato;
                QPrimerConVta.Open;
                if Not(QPrimerConVta.IsEmpty) Then
                  if QPrimerConVta.Fields[0].AsString<>'' Then
                    CDSRtoCabCONDICIONVTASetText(CDSRtoCabCONDICIONVTA,QPrimerConVta.Fields[0].AsString)
                  else
                    begin
                      ShowMessage('No tiene Condiciones de Vta. cargadas....');
                      CDSRtoCabCONDICIONVTA.Clear;
                      CDSRtoCabMUESTRACONDVENTA.Clear;
                    end;
                QPrimerConVta.CLose;
              end;
          QPrimerConVta.CLose;

          if CDSClientesVENDEDOR.AsString<>'' Then
            begin
              CDSPersonal.Close;
              CDSPersonal.Params.ParamByName('Codigo').Value:=CDSClientesVENDEDOR.AsString;
              CDSPersonal.Open;
              IF NOT (CDSPersonal.IsEmpty) THEN
                CDSRtoCabVENDEDORSetText(CDSRtoCabVENDEDOR,CDSClientesVENDEDOR.AsString)
              else
                CDSRtoCabVENDEDORSetText(CDSRtoCabVENDEDOR,EmpleadoPorDef);
              CDSPersonal.Close;
            end
          else
            begin
              if (EmpleadoPorDef<>'') and (EmpleadoPorDef<>'-1')  then
                CDSRtoCabVENDEDORSetText(CDSRtoCabVENDEDOR,EmpleadoPorDef);
            end;

          // aca tomo la lista de precio del cliente si no dejo la que esta
          CDSRtoCabLISTAPRECIO.Value:=DMMain_FD.ListaPorDefecto(CDSRtoCabSUCURSAL.Value);
          if CDSClientesLISTAPRECIOS.AsString<>'' Then
            CDSRtoCabLISTAPRECIO.Value := CDSClientesLISTAPRECIOS.Value;
          result:=True;
        END
      ELSE
        Result:=False;
  DMMain_FD.QOpciones.Close;
END;

FUNCTION TDatosRtoMk.AsignarLdr(Cliente: STRING; Dato: integer): Boolean;
BEGIN
  CDSLdr.Close;
  CDSLdr.Params.ParamByName('Codigo').Value:=Cliente;
  CDSLdr.Params.ParamByName('Ldr').Value   :=Dato;
  CDSLdr.Open;
  IF NOT (CDSLdr.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSRtoCabMUESTRALDR.Value:=CDSLdrNOMBRE.Value;
    END
  ELSE
    BEGIN
      CDSRtoCabMUESTRALDR.Value:= '';
      Result:=False;
    END;
  CDSLdr.Close;
END;

FUNCTION TDatosRtoMk.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value:=dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.IsEmpty) THEN
    BEGIN
      CDSRtoCabID_TIPOCOMPROBANTE.Clear;
      CDSRtoCabMUESTRACOMPROBANTE.Clear;
      CDSRtoCabSUCRTO.Value   :='';
      CDSRtoCabNUMERORTO.Value:='';
//      CDSRtoCabDepositoSetText(CDSRtoCabDeposito,IntToStr(DMMain_fd.DepositoPorSucursal));

      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal = :suc and ' +
                                                ' compra_venta = ''V'' and (tipo_comprob= ''RK'') ';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      DMBuscadores.CDSBuscaComprob.Open;
      if DMBuscadores.CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSRtoCabID_TIPOCOMPROBANTESetText(CDSRtoCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
          //FormRemitos.RxCCodigo.SetFocus;
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
                    CDSRtoCabID_TIPOCOMPROBANTESetText(CDSRtoCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
            //        FormRemitos.RxCCodigo.SetFocus;
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
                        CDSRtoCabID_TIPOCOMPROBANTESetText(CDSRtoCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
              //          FormRemitos.RxCCodigo.SetFocus;
                      end;
                 end;
              end;
          end;
      DMBuscadores.CDSBuscaComprob.Filtered:=False;
      DMBuscadores.CDSBuscaComprob.Filter  :='';
      DMBuscadores.CDSBuscaComprob.close;

      Result:=True;
      CDSRtoCabMuestraSucursal.Value:= CDSSucursalDETALLE.Value;

      //**************************************************************************
      //****Asigno la Lsta Por defecto  o la primera *****************************
      //**************************************************************************
      if IntToStr(DMMain_fd.ListaPorDefecto)<>'' Then
        CDSRtoCabLISTAPRECIO.Value:=DMMain_FD.ListaPorDefecto;

       //***************************************************************
      // aca tomo la lista de precio del cliente si no dejo la que esta
      //***************************************************************
      if (CDSRtoCabCODIGO.AsString<>'') then
        begin
          CDSClientes.Close;
          CDSClientes.Params.ParamByName('Codigo').Value:=CDSRtoCabCODIGO.AsString;
          CDSClientes.Open;
          if CDSClientesLISTAPRECIOS.AsString<>'' then
            begin
              CDSRtoCabLISTAPRECIO.Value:=CDSClientesLISTAPRECIOS.Value;
            end;
          CDSClientes.Close;
        end;
      //***************************************************************
      //***************************************************************
     END
  ELSE
    Result:=False;
  CDSSucursal.Close;
END;

FUNCTION TDatosRtoMk.AsignarCondVenta(Cliente: STRING; Dato: Integer): Boolean;
BEGIN
  CDSCondVenta.Close;
  CDSCondVenta.Params.ParamByName('Codigo').Value:=Cliente;
  CDSCondVenta.Params.ParamByName('CodigoPago').Value:=Dato;
  CDSCondVenta.Open;
  IF NOT (CDSCondVenta.Eof) THEN
    BEGIN
      Result:=True;
      CDSRtoCabMuestraCondVenta.Value := CDSCondVentaDETALLE.Value;
      CDSRtoCabFECHAVTO.AsDateTime    := CDSRtoCabFECHAVTA.AsDateTime + CDSCondVentaDIAS.Value;
    END
  ELSE
    Result:=False;
  CDSCondVenta.Close;
END;

FUNCTION TDatosRtoMk.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value:=Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.Eof) THEN
    BEGIN
      Result:=True;
      CDSRtoCabMuestraDeposito.Value:=CDSDepositoNombre.Value;
    END
  ELSE
    Result:=False;
  CDSDeposito.Close;
END;

FUNCTION TDatosRtoMk.AsignarVendedor(Dato: String): Boolean;
BEGIN
  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('codigo').Value:=Dato;
  CDSPersonal.Open;
  IF NOT (CDSPersonal.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSRtoCabMUESTRAVENDEDOR.Value   := CDSPersonalNOMBRE.Value;
    END
  ELSE
    begin
      Result:=False;
      CDSRtoCabMUESTRAVENDEDOR.Clear;
    end;
  CDSPersonal.Close;
END;



procedure TDatosRtoMk.CDSRtoCabBeforePost(DataSet: TDataSet);
begin
  CDSRtoCabNroCpbte.Value :=CDSRtoCabLETRARTO.Value + CDSRtoCabSUCRTO.Value +
    CDSRtoCabNUMERORTO.Value;
end;

procedure TDatosRtoMk.CDSRtoCabCODIGOSetText(Sender: TField;
  const Text: string);
VAR
  Aux: STRING;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Aux:=Text;
      Aux:=Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString:=Aux;
      IF NOT (AsignarCliente(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Cliente No válido');
          Sender.AsString:= '';
        //  FormRemitos.RxCCodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
     // FormRemitos.RxCCodigo.Text:=Aux;
    end;
END;
procedure TDatosRtoMk.CDSRtoCabCONDICIONVTASetText(Sender: TField;
  const Text: string);
begin
 IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF (NOT (AsignarCondVenta(CDSRtoCabCodigo.AsString, Sender.AsInteger))) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Cond.Vta no Válido');
          //FormRemitos.RxCConVta.SetFocus;
        END;
    END;
end;

procedure TDatosRtoMk.CDSRtoCabDEPOSITOSetText(Sender: TField;
  const Text: string);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo depósito no Válido');
        END;
    END;
end;

procedure TDatosRtoMk.CDSRtoCabID_TIPOCOMPROBANTESetText(Sender: TField;
  const Text: string);
begin
 if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Dato no Valido');
        END;
      IF CDSRtoCab.State = dsInsert THEN
        UltimoComprobante;
    end;
end;

procedure TDatosRtoMk.CDSRtoCabLDRSetText(Sender: TField; const Text: string);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarLdr(CDSRtoCabCodigo.AsString, Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo L.D.R no Válido');
          //FormRemitos.RxCLdr.SetFocus;
        END;
    END;
end;

procedure TDatosRtoMk.CDSRtoCabNewRecord(DataSet: TDataSet);
begin
  CDSRtoCabID_RTO.Value          :=IBGRto_Cab.IncrementFD(1);
  CDSRtoCabNombre.AsString      := '';
  CDSRtoCabRazonSocial.AsString := '';
  CDSRtoCabCuit.AsString        := '';
  CDSRtoCabDireccion.AsString   := '';
  CDSRtoCabTipoIVA.AsString     := '';
  CDSRtoCabCPostal.AsString     := '';
  CDSRtoCabLETRARTO.AsString    := 'X';
  CDSRtoCabImpreso.AsString     := 'N';
  CDSRtoCabAnulado.AsString     := 'N';
  CDSRtoCabSUCRTO.AsString      := '0000';
  CDSRtoCabNUMERORTO.AsString   := '00000000';
  CDSRtoCabCOSTOTOTAL.ASFloat   := 0;
  CDSRtoCabVTATOTAL.AsFloat     := 0;
  CDSRtoCabFechaVta.AsDateTime  := Date;
  CDSRtoCabDeposito.Clear;
  CDSRtoCabTipoCpbte.AsString   := '';
  CDSRtoCabSUCURSALSetText(CDSRtoCabSUCURSAL,IntToStr(SucDefecto));
  CDSRtoCabDEPOSITOSetText(CDSRtoCabDEPOSITO,IntToStr(DepDefecto));
  CDSRtoCabUSUARIO.AsString     :=DMMain_FD.UsuarioActivo;
  CDSRtoCabFECHA_HORA.AsDateTime:=now;
  //**************************************************************************
  //****Asigno la Lista Por defecto o la lista asignada **********************
  //**************************************************************************
  //***********************************************************
  //***********************************************************

end;

procedure TDatosRtoMk.CDSRtoCabNUMERORTOSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Copy('000000000', 1, Sender.Size - Length(Text)) + Text;
  CDSRtoCabNROCPBTE.Value := CDSRtoCabLETRARTO.Value + CDSRtoCabSUCRTO.Value + CDSRtoCabNUMERORTO.Value;
end;

procedure TDatosRtoMk.CDSRtoCabSUCRTOSetText(Sender: TField;
  const Text: string);
VAR
  Aux: STRING;
BEGIN
  Aux:=Text;
  Aux:=Copy('0000', 1, 4 - Length(Aux)) + Aux;
  Sender.AsString:=Aux;
  CDSRtoCabNROCPBTE.Value := CDSRtoCabLETRARTO.Value + CDSRtoCabSUCRTO.Value + CDSRtoCabNUMERORTO.Value;
end;

procedure TDatosRtoMk.CDSRtoCabSUCURSALSetText(Sender: TField;
  const Text: string);
begin
IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Sucursal No Valido');
        END
      ELSE IF CDSRtoCab.State = dsInsert THEN
        UltimoComprobante;
    END;
end;

procedure TDatosRtoMk.CDSRtoCabVENDEDORSetText(Sender: TField;
  const Text: string);
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

procedure TDatosRtoMk.CDSRtoDetAfterPost(DataSet: TDataSet);
begin
  SumarDetalle;
  //***************************************************************
  // Si no puede modificar precio el usuario pongo la
  // columna en la grilla como solo lectura
  // Precio Unitario
  // Descuentos
  //***************************************************************
  //************************
end;

procedure TDatosRtoMk.CDSRtoDetCANTIDADSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSRtoDetCOSTO_TOTAL.AsFloat     := CDSRtoDetCOSTO_UNITARIO.AsFloat * CDSRtoDetCANTIDAD.AsFloat;
  CDSRtoDetUNITARIO.ASFloat        := CDSRtoDetCOSTO_UNITARIO.AsFloat * CDSRtoDetCOEFICIENTE.AsFloat;
  CDSRtoDetUNITARIO_TOTAL.ASFloat  := CDSRtoDetCOSTO_TOTAL.AsFloat * CDSRtoDetCOEFICIENTE.AsFloat;
  CDSRtoDetMARGEN.AsFloat          := CDSRtoDetUNITARIO_TOTAL.AsFloat - CDSRtoDetCOSTO_TOTAL.AsFloat;
  CDSRtoDetSALDO.AsFloat           := CDSRtoDetUNITARIO_TOTAL.AsFloat
end;

procedure TDatosRtoMk.CDSRtoDetCODIGOARTICULOSetText(Sender: TField;
  const Text: string);
VAR S: STRING;
Enter:Char;
BEGIN
  Enter:=#13;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      If CDSRtoDet.State=dsBrowse Then
        CDSRtoDet.edit;
      DMMain_FD.CDSCodigoBarra.Close;
      DMMain_FD.CDSCodigoBarra.Params.ParamByName('CodigoBarra').AsString:=Text;
      DMMain_FD.CDSCodigoBarra.Open;
      If DMMain_fd.CDSCodigoBarra.Fields[0].AsString='' Then
        begin
       // BUsco por el serie ...
          DMBuscadores.QConsultaCodigoSerie.Close;
          DMBuscadores.QConsultaCodigoSerie.ParamByName('CodigoSerie').AsString:=Text;
          DMBuscadores.QConsultaCodigoSerie.Open;
          If DMBuscadores.QConsultaCodigoSerie.Fields[0].AsString='' Then
            begin
              Sender.AsString:=Text;
              DMMain_FD.EncontroCodigoBarra:=False;

              // **** BUsco por Alternativo **************************...
              DMBuscadores.QConsultaPorCodAlt.Close;
              DMBuscadores.QConsultaPorCodAlt.ParamByName('Codigo').AsString:=Trim(Text);
              DMBuscadores.QConsultaPorCodAlt.Open;
              If DMBuscadores.QConsultaPorCodAltCODIGO_STK.AsString='' Then
                begin
                  Sender.AsString:=Text;
                  DMMain_FD.EncontroCodigoBarra:=False;
                end
              else
                begin
                  Sender.AsString:=DMBuscadores.QConsultaPorCodAltCODIGO_STK.AsString;
                  DMMain_FD.EncontroCodigoBarra:=False;
                end;
              //***************************************************
            end
          else
            begin
             Sender.AsString:=DMBuscadores.QConsultaCodigoSerie.Fields[0].AsString;
             DMMain_FD.EncontroCodigoBarra:=True;
            end;
          DMBuscadores.QConsultaCodigoSerie.Close;
        end
      else
        begin
          if DMMain_FD.CDSCodigoBarra.RecordCount>1 Then
            begin
              if Not(Assigned(FormMuestraListaCodigoBarra)) Then
                FormMuestraListaCodigoBarra:=TFormMuestraListaCodigoBarra.Create(Self);
              FormMuestraListaCodigoBarra.CodigoBarra:=UpperCase(Text);
              FormMuestraListaCodigoBarra.ShowModal;
              Sender.AsString:=FormMuestraListaCodigoBarra.Codigo;
            end
          else
            Sender.AsString:=DMMain_FD.CDSCodigoBarra.Fields[0].AsString;
          DMMain_FD.EncontroCodigoBarra:=True;
        end;
      DMMain_fd.CDSCodigoBarra.Close;

      S:=Sender.AsString;
      if DMMain_FD.JustificaCodigo='D' Then
        S:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S)) + S
      else
        if DMMain_FD.JustificaCodigo='I' Then
          S:=S+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S));
      Sender.AsString:=S;

      IF AsignarArticulo(Sender.AsString) = False THEN
        BEGIN
         // Busqueda por codigo
          if FormBuscadorArticulos<>nil then
            FreeAndNil(FormBuscadorArticulos);
          IF Not(Assigned(FormBuscadorArticulos)) THEN
            FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
          FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
          FormBuscadorArticulos.CampoNro          := 0;
          FormBuscadorArticulos.Param1:=1;
          FormBuscadorArticulos.Param2:=3;
          FormBuscadorArticulos.ListaPrecio:=DatosRtoMk.CDSRtoCabLISTAPRECIO.Value;
          FormBuscadorArticulos.Esquema     :=-1;

          FormBuscadorArticulos.Dato              := Text;
          if FormBuscadorArticulos.Visible=False Then
            FormBuscadorArticulos.ShowModal;
          if FormBuscadorArticulos.Codigo<>'' Then
            begin
              IF CDSRtoDet.State = dsBrowse THEN
                CDSRtoDet.Edit;
              CDSRtoDetCodigoArticuloSetText(CDSRtoDetCodigoArticulo,FormBuscadorArticulos.Codigo);
            end
          else
            Sender.AsString:='';
        END;
//      if DMMain_FD.EncontroCodigoBarra Then
//        FormRtoMarketing.DBGrillaDetalle.OnKeyPress(FormRtoMarketing.DBGrillaDetalle,Enter);
    end;
end;

procedure TDatosRtoMk.CDSRtoDetCOEFICIENTESetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSRtoDetUNITARIO.ASFloat        := CDSRtoDetCOSTO_UNITARIO.AsFloat * CDSRtoDetCOEFICIENTE.AsFloat;
  CDSRtoDetUNITARIO_TOTAL.ASFloat  := CDSRtoDetCOSTO_TOTAL.AsFloat * CDSRtoDetCOEFICIENTE.AsFloat;
  CDSRtoDetMARGEN.AsFloat          := CDSRtoDetUNITARIO_TOTAL.AsFloat - CDSRtoDetCOSTO_TOTAL.AsFloat;
  CDSRtoDetSALDO.AsFloat           := CDSRtoDetUNITARIO_TOTAL.AsFloat
end;

procedure TDatosRtoMk.CDSRtoDetCOSTO_UNITARIOSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSRtoDetCOSTO_TOTAL.AsFloat     := CDSRtoDetCOSTO_UNITARIO.AsFloat * CDSRtoDetCANTIDAD.AsFloat;
  CDSRtoDetUNITARIO.ASFloat        := CDSRtoDetCOSTO_UNITARIO.AsFloat * CDSRtoDetCOEFICIENTE.AsFloat;
  CDSRtoDetUNITARIO_TOTAL.ASFloat  := CDSRtoDetCOSTO_TOTAL.AsFloat * CDSRtoDetCOEFICIENTE.AsFloat;
  CDSRtoDetMARGEN.AsFloat          := CDSRtoDetUNITARIO_TOTAL.AsFloat - CDSRtoDetCOSTO_TOTAL.AsFloat;
  CDSRtoDetSALDO.AsFloat           := CDSRtoDetUNITARIO_TOTAL.AsFloat
end;

procedure TDatosRtoMk.CDSRtoDetNewRecord(DataSet: TDataSet);
begin
 //IF (CDSRtoDet.RecordCount > Renglones) THEN
 //   CDSRtoDet.Cancel
 // ELSE
    BEGIN
      CDSRtoDetID.Value                 := IBGRto_Det.IncrementFD(1);
      CDSRtoDetID_CABRTO.Value          := CDSRtoCabID_RTO.Value;
      CDSRtoDetRENGLON.AsInteger        := CDSRtoDet.RecordCount + 1;
      CDSRtoDetDETALLE.Value            := '';
      CDSRtoDetUNIDAD.Value             := '';
      CDSRtoDetCANTIDAD.AsFloat         := 0;
      CDSRtoDetCOSTO_UNITARIO.AsFloat   := 0;
      CDSRtoDetCOSTO_TOTAL.AsFloat      := 0;
      CDSRtoDetUNITARIO.AsFloat         := 0;
      CDSRtoDetUNITARIO_TOTAL.AsFloat   := 0;
      CDSRtoDetIVA_TASA.AsFloat         := 0;
      CDSRtoDetIVA_SOBRETASA.AsFloat    := 0;
      CDSRtoDetMODO_GRAVAMEN.Value      := '';
      CDSRtoDetTIPOIVA_TASA.AsFloat     := 0;
      CDSRtoDetNROCPBTE.AsString        := CDSRtoCabNroCpbte.AsString;
      CDSRtoDetFECHAVTA.AsDateTime      := CDSRtoCabFechaVta.AsDateTime;
      CDSRtoDetTIPOCPBTE.AsString       := CDSRtoCabTipoCpbte.AsString;
      CDSRtoDetCLASECPBTE.AsString      := CDSRtoCabCLASECPBTE.AsString;
      CDSRtoDetMARGEN.AsFloat           := 0;
      CDSRtoDetDIAS.AsInteger           := 1;
      CDSRtoDetSALDO.AsFLoat            := 0;
      CDSRtoDetCOEFICIENTE.AsFloat      := Coeficiente;

    END;
end;

procedure TDatosRtoMk.CDSRtoDetUNITARIOSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSRtoDetCOSTO_UNITARIO.AsFloat     := CDSRtoDetUNITARIO.AsFloat / CDSRtoDetCOEFICIENTE.AsFloat;
  CDSRtoDetCOSTO_TOTAL.ASFloat        := CDSRtoDetUNITARIO.AsFloat * CDSRtoDetCANTIDAD.AsFloat;
//  CDSRtoDetUNITARIO_TOTAL.ASFloat  := CDSRtoDetCOSTO_TOTAL.AsFloat * CDSRtoDetCOEFICIENTE.AsFloat;
  CDSRtoDetMARGEN.AsFloat          := CDSRtoDetUNITARIO_TOTAL.AsFloat - CDSRtoDetCOSTO_TOTAL.AsFloat;
  CDSRtoDetSALDO.AsFloat           := CDSRtoDetUNITARIO_TOTAL.AsFloat
end;

procedure TDatosRtoMk.DataModuleDestroy(Sender: TObject);
begin
  DatosRtoMk:=nil;
end;

end.
