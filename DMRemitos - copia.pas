unit DMRemitos;

interface

uses
  Windows, Messages, SysUtils,Classes, Graphics, Controls, Forms, Dialogs,
  IBGenerator, Db, DBClient, Math, Provider, DateUtils,
  Librerias,Variants, FMTBcd, SqlExpr,System.STrUtils, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;


type
  TDatosRemitos = class(TDataModule)
    DSPRtoCab: TDataSetProvider;
    DSPStock: TDataSetProvider;
    DSPCondVenta: TDataSetProvider;
    DSPRtoDet: TDataSetProvider;
    DSPImpuestos: TDataSetProvider;
    DSPClientes: TDataSetProvider;
    DSPInscripcion: TDataSetProvider;
    DSPDeposito: TDataSetProvider;
    DSPIva: TDataSetProvider;
    DSPSucursal: TDataSetProvider;
    DSPLdr: TDataSetProvider;
    IBGRto_Det: TIBGenerator;
    IBGRto_Cab: TIBGenerator;
    IBGImpuesto: TIBGenerator;
    DSListaPrecios: TDataSource;
    DSTransporte: TDataSource;
    DSRtoDet: TDataSource;
    CDSDeposito: TClientDataSet;
    DSImpuestos: TDataSource;
    CDSBuscaDeposito: TClientDataSet;
    CDSBuscaDepositoNOMBRE: TStringField;
    CDSBuscaDepositoID: TIntegerField;
    DSPBuscaDeposito: TDataSetProvider;
    CDSDepositoID: TIntegerField;
    CDSDepositoNOMBRE: TStringField;
    CDSDepositoSUCURSAL: TIntegerField;
    DSExistencia: TDataSource;
    CDSExistencia: TClientDataSet;
    CDSExistenciaCODIGO_STK: TStringField;
    CDSExistenciaDETALLE_STK: TStringField;
    CDSExistenciaFISICO: TFMTBCDField;
    CDSExistenciaCOMPROMETIDO: TFMTBCDField;
    CDSExistenciaSALDO: TFloatField;
    CDSExistenciaDEPOSITO_STK: TIntegerField;
    CDSExistenciaEN_TRANSITO: TFMTBCDField;
    CDSExistenciaDEPOSITO_NOMBRE: TStringField;
    DSPExistencia: TDataSetProvider;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalCOMISION: TFMTBCDField;
    DSPBuscaVendedor: TDataSetProvider;
    CDSBuscaVendedor: TClientDataSet;
    CDSBuscaVendedorCODIGO: TStringField;
    CDSBuscaVendedorNOMBRE: TStringField;
    CDSBuscaVendedorCOMISION: TFMTBCDField;
    DSPBuscaLdr: TDataSetProvider;
    CDSBuscaLdr: TClientDataSet;
    CDSBuscaLdrCODIGO_LDR: TIntegerField;
    CDSBuscaLdrDIRECCION: TStringField;
    CDSBuscaLdrNOMBRE: TStringField;
    CDSBuscaLdrCPOSTAL: TStringField;
    DSPBuscaCondVenta: TDataSetProvider;
    CDSBuscaCondVenta: TClientDataSet;
    CDSBuscaCondVentaCODIGOPAGO: TIntegerField;
    CDSBuscaCondVentaDESCUENTO: TFMTBCDField;
    CDSBuscaCondVentaPOR_DEFECTO: TStringField;
    CDSBuscaCondVentaDETALLE: TStringField;
    CDSClientes: TClientDataSet;
    CDSRtoCab: TClientDataSet;
    CDSRtoCabID_RTO: TIntegerField;
    CDSRtoCabTIPOCPBTE: TStringField;
    CDSRtoCabCLASECPBTE: TStringField;
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
    CDSRtoCabNROFACT: TStringField;
    CDSRtoCabN_OPERACION2: TFMTBCDField;
    CDSRtoCabNETOGRAV1: TFMTBCDField;
    CDSRtoCabNETOGRAV2: TFMTBCDField;
    CDSRtoCabDSTO: TFMTBCDField;
    CDSRtoCabDSTOIMPORTE: TFMTBCDField;
    CDSRtoCabNETOEXEN1: TFMTBCDField;
    CDSRtoCabNETOEXEN2: TFMTBCDField;
    CDSRtoCabTOTAL: TFMTBCDField;
    CDSRtoCabDEBE: TFMTBCDField;
    CDSRtoCabIMPRESO: TStringField;
    CDSRtoCabOBSERVACION1: TStringField;
    CDSRtoCabOBSERVACION2: TStringField;
    CDSRtoCabCPTE_MANUAL: TStringField;
    CDSRtoCabSUCURSAL: TIntegerField;
    CDSRtoCabZONA: TIntegerField;
    CDSRtoCabLDR: TIntegerField;
    CDSRtoCabDEPOSITO: TIntegerField;
    CDSRtoCabCALCULA_SOBRETASA: TStringField;
    CDSRtoCabDESGLOZAIVA: TStringField;
    CDSRtoCabNROENTREGA: TIntegerField;
    CDSRtoCabINGRESA_A_CTACTE: TStringField;
    CDSRtoCabINGRESA_LIBRO_IVA: TStringField;
    CDSRtoCabIDFACTURA: TIntegerField;
    CDSRtoCabCOMISIONVENDEDOR: TFMTBCDField;
    CDSRtoCabVENDEDOR: TStringField;
    CDSRtoCabUSUARIO: TStringField;
    CDSRtoCabNOTAPEDIDO_ID: TIntegerField;
    CDSRtoCabNOTAPEDIDO_NROCPBTE: TStringField;
    CDSRtoCabID_TRANSPORTE: TIntegerField;
    CDSRtoCabFECHA_HORA: TSQLTimeStampField;
    CDSRtoCabTAREAS: TStringField;
    CDSRtoCabPRESUPUESTO_ID: TIntegerField;
    CDSRtoCabPRESUPUESTO_NROCPBTE: TStringField;
    CDSRtoCabNOTAVTA_ID: TIntegerField;
    CDSRtoCabNOTAVTA_NROCPBTE: TStringField;
    CDSRtoCabMUESTRACONDVENTA: TStringField;
    CDSRtoCabMUESTRADEPOSITO: TStringField;
    CDSRtoCabMUESTRASUCURSAL: TStringField;
    CDSRtoCabMUESTRALDR: TStringField;
    CDSRtoCabMUESTRAIVA: TStringField;
    CDSRtoCabMUESTRACOMPROBANTE: TStringField;
    CDSRtoCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSRtoCabMUESTRAVENDEDOR: TStringField;
    CDSRtoDet: TClientDataSet;
    CDSRtoDetID: TIntegerField;
    CDSRtoDetID_CABRTO: TIntegerField;
    CDSRtoDetTIPOCPBTE: TStringField;
    CDSRtoDetCLASECPBTE: TStringField;
    CDSRtoDetNROCPBTE: TStringField;
    CDSRtoDetRENGLON: TFMTBCDField;
    CDSRtoDetFECHAVTA: TSQLTimeStampField;
    CDSRtoDetCODIGOARTICULO: TStringField;
    CDSRtoDetDETALLE: TStringField;
    CDSRtoDetUNIDAD: TStringField;
    CDSRtoDetCANTIDAD: TFMTBCDField;
    CDSRtoDetDESGLOZAIVA: TStringField;
    CDSRtoDetMODO_GRAVAMEN: TStringField;
    CDSRtoDetIVA_TASA: TFMTBCDField;
    CDSRtoDetTIPOIVA_TASA: TIntegerField;
    CDSRtoDetIVA_SOBRETASA: TFMTBCDField;
    CDSRtoDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSRtoDetDESCUENTO: TFMTBCDField;
    CDSRtoDetTOTAL: TFMTBCDField;
    CDSRtoDetDEPOSITO: TIntegerField;
    CDSRtoDetMARGEN: TFMTBCDField;
    CDSRtoDetAFECTA_STOCK: TStringField;
    CDSRtoDetCALCULA_SOBRETASA: TStringField;
    CDSRtoDetGRAVADO_IB: TStringField;
    CDSRtoDetID_MONEDA: TIntegerField;
    CDSRtoDetCOTIZACION: TFMTBCDField;
    CDSRtoDetLOTE: TIntegerField;
    CDSRtoDetOBSERVACION: TStringField;
    CDSRtoDetNOTAVENTA_ID: TIntegerField;
    CDSRtoDetNOTAVENTA_ID_DET: TIntegerField;
    CDSRtoDetNRO: TIntegerField;
    CDSImpuestos: TClientDataSet;
    CDSImpuestosID_IMPUESTO: TIntegerField;
    CDSImpuestosID_RTOCAB: TIntegerField;
    CDSImpuestosCODIGO_GRAVAMEN: TIntegerField;
    CDSImpuestosDETALLE: TStringField;
    CDSImpuestosNETO: TFMTBCDField;
    CDSImpuestosTASA: TFMTBCDField;
    CDSImpuestosIMPORTE: TFMTBCDField;
    CDSCondVenta: TClientDataSet;
    CDSCondVentaCODIGOCLIENTE: TStringField;
    CDSCondVentaCODIGOPAGO: TIntegerField;
    CDSCondVentaDESCUENTO: TFMTBCDField;
    CDSCondVentaPOR_DEFECTO: TStringField;
    CDSCondVentaDETALLE: TStringField;
    CDSCondVentaDIAS: TIntegerField;
    CDSCondVentaDESCUENTO_FPAGO: TFMTBCDField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalRECARGO: TFMTBCDField;
    CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField;
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
    CDSInscripcion: TClientDataSet;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    CDSLdr: TClientDataSet;
    CDSLdrCODIGO_CLIENTE: TStringField;
    CDSLdrCODIGO_LDR: TIntegerField;
    CDSLdrNOMBRE: TStringField;
    CDSLdrDIRECCION: TStringField;
    CDSLdrCPOSTAL: TStringField;
    CDSIva: TClientDataSet;
    CDSIvaCODIGO: TIntegerField;
    CDSIvaDESCRIPCION: TStringField;
    CDSIvaTASA: TFMTBCDField;
    CDSIvaCOLUMNA: TSmallintField;
    QPrimerLdr: TSQLQuery;
    QPrecioEspecial: TSQLQuery;
    QPrimerConVta: TSQLQuery;
    QCondVentaDefecto: TSQLQuery;
    spRestaurarNV: TSQLStoredProc;
    spPasaFiscal: TSQLStoredProc;
    QTraerRecargoDeLista: TSQLQuery;
    QCoefPrecio: TSQLQuery;
    QAnulacion: TSQLQuery;
    QMonedas: TSQLQuery;
    QMonedasID: TIntegerField;
    QMonedasCOTIZACION: TFMTBCDField;
    CDSListaPrecio: TClientDataSet;
    DSPListaPrecio: TDataSetProvider;
    QListaPrecio: TSQLQuery;
    CDSListaPrecioID: TIntegerField;
    CDSListaPrecioNOMBRE: TStringField;
    CDSListaPrecioF_PAGO: TIntegerField;
    CDSTransporte: TClientDataSet;
    DSPTransporte: TDataSetProvider;
    QTransporte: TSQLQuery;
    CDSTransporteID: TIntegerField;
    CDSTransporteNOMBRE: TStringField;
    CDSTransporteDIRECCION: TStringField;
    CDSTransporteTELEFONO: TStringField;
    CDSTransporteLOCALIDAD: TStringField;
    CDSTarea: TClientDataSet;
    DSPTarea: TDataSetProvider;
    QTarea: TSQLQuery;
    CDSTareaID: TIntegerField;
    CDSTareaTAREA: TStringField;
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
    QDepositoStk: TSQLQuery;
    QDepositoStkID_DEPOSITO: TIntegerField;
    QDepositoStkCODIGO_DEPOSITO: TIntegerField;
    QDepositoStkCODIGO_STK: TStringField;
    QDepositoStkINICIAL: TFMTBCDField;
    QDepositoStkMINIMO: TFMTBCDField;
    QDepositoStkMEDIO: TFMTBCDField;
    QDepositoStkRECARGO: TFMTBCDField;
    QTraerRecargoDeListaRECARGO: TFMTBCDField;
    spMarcarImpreso: TSQLStoredProc;
    QPrecioEspecialPRECIOPACTADO: TFMTBCDField;
    QStockPrecio: TSQLQuery;
    QStockPrecioCOSTO_TOTAL: TFMTBCDField;
    QStockPrecioPRECIO: TFMTBCDField;
    QStockPrecioCOSTO_EXENTO: TFMTBCDField;
    QStockPrecioCOSTO_GRAVADO: TFMTBCDField;
    CDSRtoDetTOTAL_GRAVADO: TFMTBCDField;
    CDSRtoDetTOTAL_EXENTO: TFMTBCDField;
    CDSRtoCabCON_GTIA_EXTENDIDA: TStringField;
    CDSRtoCabPOLIZA: TStringField;
    CDSRtoDetCOSTO_GRAVADO: TFloatField;
    CDSRtoDetCOSTO_EXENTO: TFloatField;
    CDSRtoDetCOSTO_TOTAL: TFloatField;
    CDSRtoDetUNITARIO_GRAVADO: TFloatField;
    CDSRtoDetIVA_UNITARIO: TFloatField;
    CDSRtoDetUNITARIO_EXENTO: TFloatField;
    CDSRtoDetUNITARIO_TOTAL: TFloatField;
    CDSRtoDetIVA_TOTAL: TFMTBCDField;
    spRestaurarPres: TSQLStoredProc;
    CDSRtoCabMUESTRATELEFONO1: TStringField;
    CDSRtoCabMUESTRATELEFONO2: TStringField;
    spRestaurarNP: TSQLStoredProc;
    QLimpiarRtosSinFactura: TSQLQuery;
    QMarcarEntregado: TSQLQuery;
    QSaldos: TSQLQuery;
    QSaldosCODIGO: TStringField;
    QSaldosNOMBRE: TStringField;
    QSaldosULTIMOPAGO: TSQLTimeStampField;
    QSaldosIMPORTEULTIMOPAGO: TFMTBCDField;
    QSaldosVENCIDO30: TFMTBCDField;
    QSaldosVENCIDO60: TFMTBCDField;
    QSaldosVENCIDO90: TFMTBCDField;
    QSaldosMUYVENCIDO: TFMTBCDField;
    QSaldosANTICIPOS: TFMTBCDField;
    QSaldosTOTAL: TFloatField;
    QSaldosSALDO: TFloatField;
    CDSRtoDetMUESTRAMONEDA: TStringField;
    CDSRtoDetMUESTRASIGNO: TStringField;
    QMonedasMONEDA: TStringField;
    QMonedasSIGNO: TStringField;
    CDSDetalleXML: TClientDataSet;
    QMoneda: TSQLQuery;
    IntegerField1: TIntegerField;
    FMTBCDField1: TFMTBCDField;
    StringField1: TStringField;
    StringField2: TStringField;
    CDSMoneda: TClientDataSet;
    DSPMoneda: TDataSetProvider;
    DSMoneda: TDataSource;
    CDSMonedaID: TIntegerField;
    CDSMonedaCOTIZACION: TFMTBCDField;
    CDSMonedaMONEDA: TStringField;
    CDSMonedaSIGNO: TStringField;
    spNoFacturable: TSQLStoredProc;
    spRecuperarRto: TSQLStoredProc;
    CDSRtoCabCANT_BULTOS: TIntegerField;
    CDSRtoDetMUESTRACONTENIDO: TFMTBCDField;
    CDSRtoDetMUESTRAPRESENTACION: TFMTBCDField;
    CDSRtoCabMUESTRALDIRECCIONLDR: TStringField;
    CDSRtoDetCODIGOBARRA: TStringField;
    QCodigoBarra: TSQLQuery;
    QCodigoBarraMAX: TStringField;
    CDSRtoDetMUESTRACODALTERNATIVO: TStringField;
    CDSRtoCabMUESTRACUITRANSPORTE: TStringField;
    CDSRtoCabMUESTRACONDIVATRANSPORTE: TStringField;
    CDSRtoDetPRECIO_EDITABLE: TStringField;
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
    CDSRtoCabREMITO_ELECTRONICO: TStringField;
    CDSRtoCabCAE: TStringField;
    CDSRtoCabCAE_VENCIMIENTO: TSQLTimeStampField;
    QComprobFACTURAELECTRONICA: TStringField;
    QComprobEN_USO: TStringField;
    QComprobCODIGO_AFIP: TStringField;
    CDSRtoCabMUESTRACODIGOAFIP: TStringField;
    DSPEmpresa: TDataSetProvider;
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
    CDSEmpresaTASA_PERCEPCION_IB: TFMTBCDField;
    CDSEmpresaMINO_IMP_PERCEP_IB: TFMTBCDField;
    CDSEmpresaPROVINCIA: TIntegerField;
    CDSEmpresaTASA_RET_IIBB: TFMTBCDField;
    CDSEmpresaMINIMO_IMP_RET_IIBB: TFMTBCDField;
    CDSRtoDetCANT_FACTURA: TFMTBCDField;
    CDSClientesOBSERVACIONES1: TStringField;
    CDSClientesOBSERVACIONES2: TStringField;
    CDSRtoCabMUESTRAOBSCLIENTE1: TStringField;
    CDSRtoCabMUESTRAOBSCLIENTE2: TStringField;
    CDSRtoCabDEVOLUCION: TStringField;
    QCompVta: TSQLQuery;
    QCompVtaTIPOCPBTE: TStringField;
    CDSClientesAVISO: TStringField;
    CDSRtoCabMUESTRADIRTRANSPORTE: TStringField;
    CDSRtoCabMUESTRATETRANSPORTE: TStringField;
    CDSRtoCabMUESTRALOCALITRANSPORTE: TStringField;
    CDSRtoCabID_CHOFER: TIntegerField;
    CDSRtoCabMUESTRACHOFER: TStringField;
    CDSChoferes: TClientDataSet;
    CDSChoferesID: TIntegerField;
    CDSChoferesID_TRANSPORTE: TIntegerField;
    CDSChoferesNOMBRE: TStringField;
    CDSChoferesTIPO_DOC: TStringField;
    CDSChoferesNUMERO_DOC: TStringField;
    DSPChoferes: TDataSetProvider;
    CDSRtoCabTRASNPORTE_UNIDAD: TIntegerField;
    CDSRtoCabTRASNPORTE_ADICIONAL: TIntegerField;
    DSPBuscaUnidades: TDataSetProvider;
    CDSBuscaUnidades: TClientDataSet;
    CDSBuscaUnidadesDESCRIPCION: TStringField;
    CDSBuscaUnidadesID: TIntegerField;
    DSPBuscaAnexos: TDataSetProvider;
    CDSBuscaAnexos: TClientDataSet;
    CDSBuscaAnexosDESCRIPCION: TStringField;
    CDSBuscaAnexosID: TIntegerField;
    CDSRtoCabMUESTRANOMBRETRANSPORTE: TStringField;
    CDSRtoCabMUESTRACPOSTALLDR: TStringField;
    CDSRtoCabMUESTRALOCALIDADLDR: TStringField;
    CDSRtoDetPRESENTACION_CANT: TFMTBCDField;
    CDSRtoDetCANTIDAD_UNIDADES: TFMTBCDField;
    CDSRtoCabMUESTRATELE: TStringField;
    CDSRtoCabPEDIDO_ID: TIntegerField;
    CDSRtoDetDETALLE_ADICIONAL: TStringField;
    QTroqueles: TSQLQuery;
    DSPTroqueles: TDataSetProvider;
    CDSTroqueles: TClientDataSet;
    DSTroqueles: TDataSource;
    DSPRtoTroqueles: TDataSetProvider;
    CDSRtoTroqueles: TClientDataSet;
    CDSRtoTroquelesID: TIntegerField;
    CDSRtoTroquelesID_RTO: TIntegerField;
    CDSRtoTroquelesID_TROQUEL: TIntegerField;
    CDSRtoTroquelesNRO_TROQUEL: TStringField;
    ibgRtoTroquel: TIBGenerator;
    DSRtoTroqueles: TDataSource;
    CDSTroquelesID: TIntegerField;
    CDSTroquelesNRO_TROQUEL: TStringField;
    CDSTroquelesFECHA_INGRESO: TSQLTimeStampField;
    CDSTroquelesFECHA_EGRESO: TSQLTimeStampField;
    CDSTroquelesID_REMITO: TIntegerField;
    CDSTroquelesCODIGO: TStringField;
    CDSTroquelesDETALLE: TStringField;
    CDSRtoTroquelesFECHA: TSQLTimeStampField;
    CDSRtoCabMUESTRA_UNI_TRANSPORTE: TStringField;
    CDSRtoCabMUESTRA_AUX_TRANSPORTE: TStringField;
    CDSRtoDetID_MERCA_ACOPIO_DET: TIntegerField;
    CDSRtoCabID_TRANSFERENCIA: TIntegerField;
    QActualizaModifStock: TFDQuery;
    CDSStockPLU_SECCION: TIntegerField;
    CDSRtoCabMUESTRANOTAPEDIDO: TStringField;
    CDSRtoCabMUESTRA_ID_NOTAPEDIDO: TIntegerField;
    CDSRtoDetMUESTRARUBRO: TStringField;
    CDSRtoDetMUESTRADETALLERUBRO: TStringField;
    CDSRtoDetMUESTRASUBRUB: TStringField;
    CDSRtoDetMUESTRADETALLESUBRUB: TStringField;
    CDSRtoCabRENGLONES: TSmallintField;
    CDSBuscaUnidadesCAPACIDAD: TFloatField;
    CDSBuscaUnidadesDOMINIO: TStringField;
    QBuscaUnidades: TFDQuery;
    QChoferes: TFDQuery;
    QBuscaAnexos: TFDQuery;
    CDSRtoCabFECHA_DEVOLUCION_ALQ: TSQLTimeStampField;
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSRtoCabLDRSetText(Sender: TField; const Text: String);
    procedure CDSRtoCabDepositoSetText(Sender: TField;
      const Text: String);
    procedure CDSRtoCabNETOGRAV1GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CDSRtoCabDSTOSetText(Sender: TField; const Text: String);
    procedure CDSRtoCabDESGLOZAIVAChange(Sender: TField);
    procedure CDSRtoCabCODIGOSetText(Sender: TField; const Text: String);
    procedure CDSRtoCabSUCRTOSetText(Sender: TField; const Text: String);
    procedure CDSRtoCabNUMERORTOSetText(Sender: TField;
      const Text: String);
    procedure CDSRtoCabSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure CDSRtoCabCONDICIONVTASetText(Sender: TField;
      const Text: String);
    procedure CDSRtoDetCodigoArticuloSetText(Sender: TField;
      const Text: String);
    procedure CDSRtoDetUnitario_TotalSetText(Sender: TField;
      const Text: String);
    procedure CDSRtoCabNewRecord(DataSet: TDataSet);
    procedure CDSRtoCabBeforePost(DataSet: TDataSet);
    procedure CDSRtoDetAfterDelete(DataSet: TDataSet);
    procedure CDSRtoDetAfterInsert(DataSet: TDataSet);
    procedure CDSRtoDetAfterPost(DataSet: TDataSet);
    procedure CDSRtoDetBeforePost(DataSet: TDataSet);
    procedure CDSRtoDetNewRecord(DataSet: TDataSet);
    procedure CDSRtoDetCantidadSetText(Sender: TField;
      const Text: String);
    procedure CDSRtoDetUnitario_TotalGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CDSRtoDetIVA_TasaSetText(Sender: TField;
      const Text: String);
    procedure CDSRtoDetTotalGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CDSImpuestosNewRecord(DataSet: TDataSet);
    procedure CDSRtoCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSRtoCabNETOGRAV2GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CDSRtoCabVENDEDORSetText(Sender: TField;
      const Text: String);
    procedure CDSRtoDetDescuentoSetText(Sender: TField;
      const Text: String);
    procedure CDSRtoDetCalcFields(DataSet: TDataSet);
    procedure CDSRtoDetBeforeInsert(DataSet: TDataSet);
    procedure CDSRtoDetCODIGOARTICULOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSRtoTroquelesNewRecord(DataSet: TDataSet);
    procedure CDSRtoDetAFECTA_STOCKGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    Var_TasaIva:Real;
    Renglones:Integer;
    MascaraDetalleUnitario :String;
    MascaraDetalleCantidad :String;
    MascaraDetalleTotal    :String;
    MascaraDetalleDescuento:String;
    MascaraIvaImporte      :String;
    MascaraIvaTasa         :String;
    MascaraCabecera        :String;
    CorreoDestino          :String;
    ArticuloGtia           :String;
//    procedure CalculaPrecioVta;
    procedure CreditoExedido;
    PROCEDURE AplicarMascarasNumericas;
    PROCEDURE HabilitarLabel;
    PROCEDURE CalcularTotales;
    PROCEDURE SumarDetalle;
    FUNCTION ControlCantidades:Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    FUNCTION AsignarArticulo(Dato: STRING): Boolean;
    FUNCTION AsignarCliente(Dato: STRING): Boolean;
    FUNCTION AsignarLdr(Cliente: STRING; Dato: integer): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarCondVenta(Cliente: STRING; Dato: Integer): Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION AsignarVendedor(Dato: String): Boolean;
    procedure VerificaGtiaExtendida(Articulo:String;Cliente:String);
    procedure HayGtia;
    procedure ReCalculaGtia(Articulo:String;Cliente:String);
    function SumaPesificada:Extended;
    { Public declarations }
  end;

var
  DatosRemitos: TDatosRemitos;

implementation

uses DMMainForm_2,URemitos,DMBuscadoresForm,UDMain_FD,
    UBuscadorArticulos, UMuestraListaCodBarra, DMStoreProcedureForm,
  UMuestraSaldoCliente, UClaveVerificada, UMuestraUltimoNroCpbte;
{$R *.DFM}

function TDatosRemitos.SumaPesificada:Extended;
var CDSClone:TClientDataSet;
Aux:Extended;
SubTotal:Extended;
begin
  SubTotal:=0;
  CDSClone:=TClientDataSet.Create(self);
  CDSClone.CloneCursor(CDSRtoDet,True);
  CDSClone.First;
  while Not(CDSClone.Eof) do
    begin
      Aux:= 0;
      aux:= (CDSClone.FieldByName('UNITARIO_TOTAL').AsFloat + CDSClone.FieldByName('IVA_UNITARIO').AsFloat) * CDSClone.FieldByName('COTIZACION').AsFloat;
      Aux:= Aux * CDSClone.FieldByName('CANTIDAD').AsFloat;
      SubTotal := SubTotal + Aux;
      CDSClone.Next;
    end;
  Result:=SubTotal;
  FreeAndNil(CDSClone);
end;


procedure TDatosRemitos.CreditoExedido;
var DateTem,desde1,desde2,Desde3,Desde4:TDateTime;
Escape:char;
begin
  Escape:=#27;
  DMMain_2.QOpciones.Close;
  DMMain_2.QOpciones.ParamByName('Opcion').Value:='LTECREDITO';
  DMMain_2.QOpciones.Open;

  if CDSClientesDEUDAMAYOR30.Value='S' then
    begin
      DateTem:= Date;
      DateTem:= IncDay(DateTem, CDSClientesDIAS_MAYOR_30.Value * -1);
      //  DecodeDate(DateTem,a,m,d);
      //  desde1:=EncodeDate(a,m,DaysInMonth(DateTem));
      desde1:=DateTem;
      desde2:=IncMonth(desde1,-1);
      desde3:=IncMonth(desde2,-1);
      desde4:=IncMonth(Desde3,-1);

      QSaldos.Close;
      QSaldos.ParamByName('codigo').AsString := CDSRtoCabCODIGO.Value;
      QSaldos.ParamByName('Desde1').AsDate:=Desde1;
      QSaldos.ParamByName('Desde2').AsDate:=Desde2;
      QSaldos.ParamByName('DESDE3').AsDate:=Desde3;
      QSaldos.ParamByName('DESDE4').AsDate:=Desde3;
      QSaldos.Open;

      if ((Trunc(QSaldosSALDO.AsFloat*100))>0) Then
        begin
          if Not(Assigned(FormSaldoUnCLiente)) then
            FormSaldoUnCLiente:=TFormSaldoUnCLiente.Create(Self);
          FormSaldoUnCLiente.Codigo := CDSRtoCabCODIGO.AsString;
          FormSaldoUnCLiente.Dias   := CDSClientesDIAS_MAYOR_30.Value;
          FormSaldoUnCLiente.showModal;
          DMMain_2.QOpciones.Close;
          DMMain_2.QOpciones.ParamByName('Opcion').Value:='CTRDEUDA';
          DMMain_2.QOpciones.Open;
          if DMMain_2.QOpciones.Fields[0].AsString[1]='S' then
            begin
              ShowMessage('... No se puede remitar...necesita clave autorizada...');

              if not (Assigned(FormClaveVerificada)) then
                FormClaveVerificada := TFormClaveVerificada.Create(Self);
              FormClaveVerificada.ShowModal;
              if FormClaveVerificada.ModalResult=mrCancel then
                begin
                  if DatosRemitos.CDSRtoDet.State in [dsInsert,dsEdit] Then
                    DatosRemitos.CDSRtoDet.Cancel;
                  if DatosRemitos.CDSImpuestos.State in [dsInsert,dsEdit] Then
                    DatosRemitos.CDSImpuestos.Cancel;
                  if DatosRemitos.CDSRtoCab.State in [dsInsert,dsEdit] Then
                    DatosRemitos.CDSRtoCab.Cancel;
                  sysUtils.Abort;
                  FormRemitos.OnKeyPress(FormRemitos,Escape);
                end;
            end;
        end;
    end;
end;

procedure TDatosRemitos.ReCalculaGtia(Articulo:String;Cliente:String);
var CDSDetClon:TClientDataSet;
TasaCosto,TasaVta:Extended;
UnitarioGravado,UnitarioExento,UnitarioIva:Extended;
begin
  DMBuscadores.QBuscaArticuloGtiaExt.Close;
  DMBuscadores.QBuscaArticuloGtiaExt.ParamByName('codigo').AsString:=Articulo;
  DMBuscadores.QBuscaArticuloGtiaExt.Open;
  if DMBuscadores.QBuscaArticuloGtiaExtID.AsString<>'' then
    begin
      CDSRtoCabCON_GTIA_EXTENDIDA.Value := 'S';
      CDSDetClon:=TClientDataSet.Create(Self);
      CDSDetClon.CloneCursor(CDSRtoDet,True);
      CDSDetClon.First;
      UnitarioGravado := CDSDetClon.FieldByName('UNITARIO_GRAVADO').AsFloat;
      UnitarioExento  := CDSDetClon.FieldByName('UNITARIO_EXENTO').AsFloat;
      UnitarioIva     := 0;
         //*** Si biene con iva incluido Calculo el Neto gravado
      if (CDSRtoDetMODO_GRAVAMEN.Value<>'') and ((CDSRtoCabDESGLOZAIVA.Value = 'N') or (FormRemitos.DiscriminaIva='N')) and
         (CDSRtoDetMODO_GRAVAMEN.Value[1] in ['G','E']) THEN
         UnitarioIva:=CDSDetClon.FieldByName('iva_unitario').AsFloat;


      FreeAndNil(CDSDetClon);

      TasaCosto := DMBuscadores.QBuscaArticuloGtiaExtTASA_COSTO.AsFloat;
      TasaVta   := DMBuscadores.QBuscaArticuloGtiaExtTASA_VTA.AsFloat;

      DMBuscadores.QGtia_Ext_Excepciones.Close;
      DMBuscadores.QGtia_Ext_Excepciones.ParamByName('id').Value    :=DMBuscadores.QBuscaArticuloGtiaExtID.Value;
      DMBuscadores.QGtia_Ext_Excepciones.ParamByName('codigo').Value:=cliente;
      DMBuscadores.QGtia_Ext_Excepciones.Open;
      if Not(DMBuscadores.QGtia_Ext_Excepciones.IsEmpty) then
        begin
          TasaCosto := DMBuscadores.QGtia_Ext_ExcepcionesTASA_COSTO.AsFloat;
          TasaVta   := DMBuscadores.QGtia_Ext_ExcepcionesTASA_VTA.AsFloat;
        end;


      if CDSRtoDet.Locate('CodigoArticulo',Articulo,[]) then
        begin
          if CDSRtoDet.State=dsBrowse then
            CDSRtoDet.Edit;
          CDSRtoDetCOSTO_EXENTO.AsFloat  := RoundTo( UnitarioExento * ( TasaCosto * 0.01),DMMain_2.DecRedondeo);
          CDSRtoDetCOSTO_GRAVADO.AsFloat := RoundTo( UnitarioGravado * ( TasaCosto * 0.01),DMMain_2.DecRedondeo);
          CDSRtoDetCOSTO_TOTAL.AsFloat   := CDSRtoDetCOSTO_EXENTO.AsFloat +
                                            CDSRtoDetCOSTO_GRAVADO.AsFloat;

          CDSRtoDetUNITARIO_EXENTO.AsFloat  := RoundTo( UnitarioExento * ( TasaVta * 0.01),DMMain_2.DecRedondeo);
          CDSRtoDetUNITARIO_GRAVADO.AsFloat := RoundTo( (UnitarioGravado + UnitarioIva) * ( TasaVta * 0.01),DMMain_2.DecRedondeo);
          CDSRtoDetUnitario_TotalSetText( CDSRtoDetUNITARIO_TOTAL,FloatToStr( CDSRtoDetUNITARIO_GRAVADO.AsFloat+CDSRtoDetUNITARIO_EXENTO.AsFloat));
        end;
    end;
end;



procedure TDatosRemitos.HayGtia;
var CDSDetClon:TClientDataSet;
begin
  ArticuloGtia:='';
  CDSRtoCabCON_GTIA_EXTENDIDA.Value := 'N';
  CDSRtoCabPOLIZA.AsString          := '';
  CDSDetClon:=TClientDataSet.Create(Self);
  CDSDetClon.CloneCursor(CDSRtoDet,True);
  CDSDetClon.First;
  if CDSDetClon.RecordCount>1 then
    while Not(CDSDetClon.Eof) do
      begin
        DMBuscadores.QBuscaArticuloGtiaExt.Close;
        DMBuscadores.QBuscaArticuloGtiaExt.ParamByName('codigo').AsString:=CDSDetClon.FieldByName('codigoarticulo').Value;
        DMBuscadores.QBuscaArticuloGtiaExt.Open;
        if DMBuscadores.QBuscaArticuloGtiaExtID.AsString<>'' then
          begin
            CDSRtoCabCON_GTIA_EXTENDIDA.Value := 'S';
            CDSRtoCabPOLIZA.AsString:=DMBuscadores.QBuscaArticuloGtiaExtPOLIZA.Value;
            ArticuloGtia:=DMBuscadores.QBuscaArticuloGtiaExtCODIGO.AsString;
            CDSDetClon.Last;
          end;
        CDSDetClon.Next;
      end
  else
    begin
      if CDSDetClon.FieldByName('codigoarticulo').AsString<>'' then
        begin
          DMBuscadores.QBuscaArticuloGtiaExt.Close;
          DMBuscadores.QBuscaArticuloGtiaExt.ParamByName('codigo').AsString:=CDSDetClon.FieldByName('codigoarticulo').Value;
          DMBuscadores.QBuscaArticuloGtiaExt.Open;
          if DMBuscadores.QBuscaArticuloGtiaExtID.AsString<>'' then
            begin
              ArticuloGtia  := DMBuscadores.QBuscaArticuloGtiaExtCODIGO.AsString;
              CDSRtoCabCON_GTIA_EXTENDIDA.Value := 'S';
            end;
        end;
    end;
  FreeAndNil(CDSDetClon);
end;

procedure TDatosRemitos.VerificaGtiaExtendida(Articulo:String;Cliente:String);
var CDSDetClon:TClientDataSet;
TasaCosto,TasaVta:Extended;
UnitarioGravado,UnitarioExento,UnitarioIva:Extended;
begin
  CDSRtoCabCON_GTIA_EXTENDIDA.Value:='N';
  CDSRtoCabPOLIZA.AsString         :='';
  DMBuscadores.QBuscaArticuloGtiaExt.Close;
  DMBuscadores.QBuscaArticuloGtiaExt.ParamByName('codigo').AsString:=Articulo;
  DMBuscadores.QBuscaArticuloGtiaExt.Open;
  if (DMBuscadores.QBuscaArticuloGtiaExtID.AsString<>'') then
    begin
      CDSRtoCabCON_GTIA_EXTENDIDA.Value := 'S';
      CDSRtoCabPOLIZA.AsString          := DMBuscadores.QBuscaArticuloGtiaExtPOLIZA.AsString;
      CDSDetClon:=TClientDataSet.Create(Self);
      CDSDetClon.CloneCursor(CDSRtoDet,True);
      CDSDetClon.First;
      UnitarioGravado := CDSDetClon.FieldByName('UNITARIO_GRAVADO').AsFloat;
      UnitarioExento  := CDSDetClon.FieldByName('UNITARIO_EXENTO').AsFloat;
      UnitarioIva     := 0;
         //*** Si biene con iva incluido Calculo el Neto gravado
      if (CDSRtoDetMODO_GRAVAMEN.Value<>'') and ((CDSRtoCabDESGLOZAIVA.Value = 'N') or (FormRemitos.DiscriminaIva='N')) and
         (CDSRtoDetMODO_GRAVAMEN.Value[1] in ['G','E']) THEN
         UnitarioIva:=CDSDetClon.FieldByName('iva_unitario').AsFloat;

      FreeAndNil(CDSDetClon);

      TasaCosto := DMBuscadores.QBuscaArticuloGtiaExtTASA_COSTO.AsFloat;
      TasaVta   := DMBuscadores.QBuscaArticuloGtiaExtTASA_VTA.AsFloat;

      DMBuscadores.QGtia_Ext_Excepciones.Close;
      DMBuscadores.QGtia_Ext_Excepciones.ParamByName('id').Value    :=DMBuscadores.QBuscaArticuloGtiaExtID.Value;
      DMBuscadores.QGtia_Ext_Excepciones.ParamByName('codigo').Value:=cliente;
      DMBuscadores.QGtia_Ext_Excepciones.Open;
      if Not(DMBuscadores.QGtia_Ext_Excepciones.IsEmpty) then
        begin
          TasaCosto := DMBuscadores.QGtia_Ext_ExcepcionesTASA_COSTO.AsFloat;
          TasaVta   := DMBuscadores.QGtia_Ext_ExcepcionesTASA_VTA.AsFloat;
        end;
      CDSRtoDetCOSTO_EXENTO.AsFloat  := RoundTo( UnitarioExento * ( TasaCosto * 0.01),DMMain_2.DecRedondeo);
      CDSRtoDetCOSTO_GRAVADO.AsFloat := RoundTo( UnitarioGravado * ( TasaCosto * 0.01),DMMain_2.DecRedondeo);
      CDSRtoDetCOSTO_TOTAL.AsFloat   := CDSRtoDetCOSTO_EXENTO.AsFloat +
                                        CDSRtoDetCOSTO_GRAVADO.AsFloat;

      CDSRtoDetUNITARIO_EXENTO.AsFloat  := RoundTo( UnitarioExento * ( TasaVta * 0.01),DMMain_2.DecRedondeo);
      CDSRtoDetUNITARIO_GRAVADO.AsFloat := RoundTo( (UnitarioGravado + UnitarioIva) * ( TasaVta * 0.01),DMMain_2.DecRedondeo);
      CDSRtoDetUnitario_TotalSetText( CDSRtoDetUNITARIO_TOTAL,FloatToStr( CDSRtoDetUNITARIO_GRAVADO.AsFloat+CDSRtoDetUNITARIO_EXENTO.AsFloat));

    end;

end;

procedure TDatosRemitos.AplicarMascarasNumericas;
VAR I:Byte;
begin
  DMMain_2.QOpciones.Close;
  DMMain_2.QOpciones.ParamByName('Opcion').AsString:='VTADETUNITARI';
  DMMain_2.QOpciones.Open;
  MascaraDetalleUnitario:=DMMain_2.QOpciones.Fields[0].AsString;
  TFMTBCDField(CDSRtoDetUnitario_Total).EditFormat    :=MascaraDetalleUnitario;
  TFMTBCDField(CDSRtoDetUnitario_Total).DisplayFormat :=MascaraDetalleUnitario;

  DMMain_2.QOpciones.Close;
  DMMain_2.QOpciones.ParamByName('Opcion').AsString:='VTADETCANTIDA';
  DMMain_2.QOpciones.Open;
  MascaraDetalleCantidad:=DMMain_2.QOpciones.Fields[0].AsString;
  TFMTBCDField(CDSRtoDetCantidad).EditFormat    :=MascaraDetalleCantidad;
  TFMTBCDField(CDSRtoDetCantidad).DisplayFormat :=MascaraDetalleCantidad;
  DMMain_2.QOpciones.Close;

  DMMain_2.QOpciones.Close;
  DMMain_2.QOpciones.ParamByName('Opcion').AsString:='VTADETDESCUEN';
  DMMain_2.QOpciones.Open;
  MascaraDetalleDescuento:=',0.00';//DMMain_2.QOpciones.Fields[0].AsString;
  TFMTBCDField(CDSRtoDetDescuento).EditFormat    :=',0.00';//MascaraDetalleDescuento;
  TFMTBCDField(CDSRtoDetDescuento).DisplayFormat :=',0.00';//MascaraDetalleDescuento;

  DMMain_2.QOpciones.Close;
  DMMain_2.QOpciones.ParamByName('Opcion').AsString:='VTADETTOTAL';
  DMMain_2.QOpciones.Open;
  MascaraDetalleTotal:=',0.00';//DMMain_2.QOpciones.Fields[0].AsString;
  TFMTBCDField(CDSRtoDetTotal).EditFormat        := ',0.00';//MascaraDetalleTotal;
  TFMTBCDField(CDSRtoDetTotal).DisplayFormat     := ',0.00';//MascaraDetalleTotal;


  DMMain_2.QOpciones.Close;
  DMMain_2.QOpciones.ParamByName('Opcion').AsString:='IVATASA';
  DMMain_2.QOpciones.Open;
  MascaraIvaTasa:='0.0';//DMMain_2.QOpciones.Fields[0].AsString;
  TFMTBCDField(CDSRtoDetIVA_Tasa).EditFormat          := '0.0';//MascaraIvaTasa;
  TFMTBCDField(CDSRtoDetIVA_Tasa).DisplayFormat       := '0.0';//MascaraIvaTasa;
  TFMTBCDField(CDSRtoDetIVA_SobreTasa).EditFormat     := '0.0';//MascaraIvaTasa;
  TFMTBCDField(CDSRtoDetIVA_SobreTasa).DisplayFormat  := '0.0';//MascaraIvaTasa;
  TFMTBCDField(CDSImpuestosTASA).EditFormat           := '0.0';//MascaraIvaTasa;
  TFMTBCDField(CDSImpuestosTASA).DisplayFormat        := '0.0';//MascaraIvaTasa;

  DMMain_2.QOpciones.Close;
  DMMain_2.QOpciones.ParamByName('Opcion').AsString:='IVAIMPORTES';
  DMMain_2.QOpciones.Open;
  MascaraIvaImporte:=',0.00';//DMMain_2.QOpciones.Fields[0].AsString;
  TFMTBCDField(CDSImpuestosIMPORTE).EditFormat        := ',0.00';//MascaraIvaImporte;
  TFMTBCDField(CDSImpuestosIMPORTE).DisplayFormat     := ',0.00';//MascaraIvaImporte;
  TFMTBCDField(CDSImpuestosNETO).EditFormat           := ',0.00';//MascaraIvaImporte;
  TFMTBCDField(CDSImpuestosNETO).DisplayFormat        := ',0.00';//MascaraIvaImporte;

  DMMain_2.QOpciones.Close;
  DMMain_2.QOpciones.ParamByName('Opcion').AsString:='VTACABECERA';
  DMMain_2.QOpciones.Open;
  MascaraCabecera:=',0.00';//DMMain_2.QOpciones.Fields[0].AsString;
  For i:=0 to CDSRtoCab.FieldCount-1 do
    begin
      if (CDSRtoCab.Fields[i].DataType=ftBCD) or
         (CDSRtoCab.Fields[i].DataType=ftFMTBcd) or
         (CDSRtoCab.Fields[i].DataType=ftFloat) Then
       begin
         // TFloatField(wwCDSRtoDet.Fields[i]).EditMask:='###,##0.0';
          TFMTBCDField(CDSRtoCab.Fields[i]).EditFormat   :=',0.00';//MascaraCabecera;
          TFMTBCDField(CDSRtoCab.fields[i]).DisplayFormat:=',0.00';//MascaraCabecera;
       end;
    end;
  CDSRtoDetCOSTO_GRAVADO.DisplayFormat:=',0.00';
  CDSRtoDetCOSTO_EXENTO.DisplayFormat :=',0.00';
  CDSRtoDetCOSTO_TOTAL.DisplayFormat  :=',0.00';

  DMMain_2.QOpciones.Close;
end;

PROCEDURE TDatosRemitos.HabilitarLabel;
BEGIN
  {Si la Factura no discrimina IVA}
  FormRemitos.DBGrillaIva.Visible:=DatosRemitos.CDSRtoCabDesglozaIva.Value = 'S';
  WITH FormRemitos DO
    BEGIN
      dbeSuc.Enabled:=DBCheckManual.Checked;
      dbeNumero.Enabled:=DBCheckManual.Checked;
      IF CDSRtoCab.State = dsBrowse THEN
        BEGIN
          BtAnular.Enabled    :=(CDSRtoCabAnulado.Value = 'N');
          btModificar.Enabled :=(CDSRtoCabAnulado.Value = 'N');
     //     btModificar.Enabled :=(wwCDSRtoCabIMPRESO.Value = 'N');
        END;
    END;
END;

PROCEDURE TDatosRemitos.CalcularTotales;
VAR
  Acumulador,Descuento,TotalOld,TotalNew,
   TotalGral,NetoTotal,Neto: Extended;
BEGIN
  CDSRtoCabTotal.Asfloat:= 0;
  Acumulador            := 0;
  Descuento             := CDSRtoCabDsto.AsFloat * 0.01;
//  CDSRtoCabNETOGRAV2.AsFloat  := RoundTo(CDSRtoCabNetoGrav1.AsFloat * (1 - Descuento), -2);
//  CDSRtoCabNETOEXEN2.AsFloat  := RoundTo(CDSRtoCabNetoExen1.AsFloat * (1 - Descuento), -2);

  CDSRtoCabNETOGRAV2.AsFloat  := CDSRtoCabNetoGrav1.AsFloat * (1 - Descuento);
  CDSRtoCabNETOEXEN2.AsFloat  := CDSRtoCabNetoExen1.AsFloat * (1 - Descuento);

  CDSRtoCabDSTOIMPORTE.AsFloat := (CDSRtoCabNetoGrav1.AsFloat + CDSRtoCabNETOEXEN1.AsFloat) -
                                  (CDSRtoCabNetoGrav2.AsFloat + CDSRtoCabNETOEXEN2.AsFloat);

  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
  WHILE NOT (CDSimpuestos.Eof) DO
    BEGIN
      TotalOld := CDSImpuestosNETO.AsFloat+CDSImpuestosIMPORTE.AsFloat;
      TotalNew := RoundTo(TotalOld * (1 - Descuento),-2);
      CDSImpuestos.Edit;
      CDSImpuestosNETO.AsFloat    := 0;
      CDSImpuestosNETO.AsFloat    := TotalOld - CDSImpuestosIMPORTE.AsFloat;
      if Trunc(CDSRtoCabDSTO.AsFloat*100)<>0 then
        begin
          CDSImpuestosNETO.AsFloat    := TotalNew / (1+CDSImpuestosTASA.AsFloat*0.01);
          CDSImpuestosIMPORTE.AsFloat := TotalNew - CDSImpuestosNETO.AsFloat ;
        end;
      Acumulador                  := Acumulador + CDSImpuestosIMPORTE.AsFloat;
      CDSImpuestos.Next;
    END;
  CDSImpuestos.EnableControls;

  CDSRtoCabTotal.AsFloat := RoundTo(CDSRtoCabNetoGrav2.AsFloat +
                                    CDSRtoCabNetoExen2.AsFloat +
                                    Acumulador,-2);
  TotalGral := CDSRtoCabTotal.AsFloat - CDSRtoCabNETOEXEN2.AsFloat;
  NetoTotal := CDSRtoCabNetoGrav2.AsFloat ;

  TRY
    if CDSRtoCabNetoGrav2.AsFloat>0 Then
//      Var_TasaIVA:=(((wwCDSVentaCabTotal.Value-wwCDSVentaCabPERCEPCION_IB_IMPORTE.Value )- wwCDSVentaCabNetoGrav2.Value) / wwCDSVentaCabNetoGrav2.Value)*100
      Var_TasaIVA:= RoundTo(((TotalGral/NetoTotal)-1) * 100,-2)
    else
      Var_TasaIva:=0;
  EXCEPT
    ON EZeroDivide DO
      Var_TasaIva:=0;
  END;
  CDSRtoCabNETOGRAV2.AsFloat  := RoundTo(CDSRtoCabNetoGrav1.AsFloat * (1 - Descuento), -2);
  CDSRtoCabNetoGrav1.AsFloat  := CDSRtoCabNetoGrav1.AsFloat;
  // Para que se refresca el OnGetTex de Descuento.... lo reasgino de nuevo
  CDSRtoCabDSTOIMPORTE.AsFloat := (CDSRtoCabNetoGrav1.AsFloat + CDSRtoCabNETOEXEN1.AsFloat) -
                                  (CDSRtoCabNetoGrav2.AsFloat + CDSRtoCabNETOEXEN2.AsFloat);
END;

PROCEDURE TDatosRemitos.SumarDetalle;
VAR
  Dscto: Real;
  Puntero:TBookmark;
BEGIN
  Puntero := CDSRtoDet.GetBookmark;
  CDSRtoDet.DisableControls;
  CDSRtoDet.First;
  IF CDSRtoCab.State = dsBrowse THEN
    CDSRtoCab.Edit;
  CDSRtoCabNetoGrav1.ASFloat:=0;
  CDSRtoCabNetoExen1.ASFloat:=0;
  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
  WHILE NOT (CDSImpuestos.Eof) DO
    BEGIN
      CDSImpuestos.Edit;
      CDSImpuestosNETO.AsFloat := 0;
      CDSImpuestosIMPORTE.AsFloat:=0;
      CDSImpuestos.Next;
    END;
  WHILE (NOT CDSRtoDet.Eof) DO
    BEGIN
      Dscto := 1 - CDSRtoDetDESCUENTO.AsFloat * 0.01;
      IF (CDSRtoDetTipoIva_Tasa.AsFloat <> 0) AND (NOT (VarIsNull(CDSRtoDetTipoIva_Tasa.AsFloat))) AND (CDSRtoDetModo_Gravamen.Value <> 'E') THEN
        BEGIN
          IF CDSImpuestos.Locate('Codigo_Gravamen',CDSRtoDetTipoIva_Tasa.Value, []) THEN
            BEGIN
              CDSImpuestos.Edit;
              CDSImpuestosNeto.AsFloat    := CDSImpuestosNeto.AsFloat +CDSRtoDetTOTAL_GRAVADO.AsFloat ;
              CDSImpuestosTasa.AsFloat    := CDSRtoDetIVA_Tasa.AsFloat;
              CDSImpuestosImporte.AsFloat := CDSImpuestosIMPORTE.AsFloat + CDSRtoDetIVA_TOTAL.AsFloat;
              CDSImpuestos.Post;
            END
          ELSE
            BEGIN
              CDSImpuestos.Insert;
              CDSImpuestosCODIGO_GRAVAMEN.Value   := CDSRtoDetTIPOIVA_TASA.AsInteger;
              CDSIva.Close;
              CDSIva.Params.ParamByName('id').Value := CDSRtoDetTIPOIVA_TASA.AsInteger;
              CDSIva.Open;
              CDSImpuestosDETALLE.Value     := CDSIvaDESCRIPCION.Value;
              CDSImpuestosID_RTOCAB.Value   := CDSRtoDetID_CABRTO.Value;
              CDSImpuestosNETO.AsFloat      := CDSImpuestosNeto.AsFloat + CDSRtoDetTOTAL_GRAVADO.AsFloat ;
              CDSImpuestosTASA.AsFloat      := CDSRtoDetIVA_TASA.AsFLoat;
              CDSImpuestosIMPORTE.AsFloat   := CDSImpuestosIMPORTE.AsFloat + CDSRtoDetIVA_TOTAL.AsFloat;
              CDSImpuestos.Post;
            END;
          // por ahora lo dejo no lo modifico por que no se usa mas......
//        IF (CDSVentaDetCalcula_SobreTasa.Value = 'S') and (CDSVentaDetDesglozaIVA.Value ='S') THEN
//          BEGIN
//            IF CDSImpuestos.Locate('Codigo_Gravamen', CDSVentaDetTipoIva_SobreTasa.Value, []) THEN
//              BEGIN
//                CDSImpuestos.Edit;
//                CDSImpuestosNeto.AsFloat    := CDSVentaDetUnitario_Gravado.AsFloat * Dscto * CDSVentaDetCantidad.AsFloat + CDSImpuestosNeto.AsFloat;
//                CDSImpuestosTasa.AsFloat    := CDSVentaDetIVA_Tasa.AsFloat;
//                CDSImpuestosImporte.AsFloat := CDSImpuestosNeto.AsFloat * CDSImpuestosTasa.AsFloat * 0.01;
//                CDSImpuestos.Post;
//              END
//            ELSE
//              BEGIN
//                CDSImpuestos.Insert;
//                CDSImpuestosCodigo_Gravamen.Value     := CDSVentaDetTipoIva_SobreTasa.AsInteger;
//                CDSIva.Close;
//                CDSIva.Params.ParamByName('id').Value := CDSVentaDetTipoIva_SobreTasa.AsInteger;
//                CDSIva.Open;
//                CDSImpuestosDetalle.Value            := CDSIvaDescripcion.Value;
//                CDSImpuestosId_FcVtaCab.Value        := CDSVentaDetId_CabFac.Value;
//                CDSImpuestosNeto.AsFloat             := CDSVentaDetUnitario_Gravado.AsFloat * Dscto * CDSVentaDetCantidad.AsFloat + CDSImpuestosNeto.AsFloat;
//                CDSImpuestosTasa.AsFloat             := CDSVentaDetIVA_Tasa.AsFloat;
//                CDSImpuestosImporte.AsFloat          := CDSImpuestosNeto.AsFloat * CDSImpuestosTasa.AsFloat * 0.01;
//                CDSImpuestos.Post;
//              END;
//          END;
        END;
      CDSRtoCabNETOGRAV1.AsFloat := CDSRtoDetTOTAL_GRAVADO.AsFloat + CDSRtoCabNETOGRAV1.AsFloat;
      CDSRtoCabNETOEXEN1.AsFloat := CDSRtoDetTOTAL_EXENTO.AsFloat  + CDSRtoCabNetoExen1.AsFloat;

      CDSRtoDet.Next;
    END;
  CDSRtoDet.GotoBookmark(Puntero);
  CDSRtoDet.FreeBookmark(Puntero);
  CDSRtoDet.EnableControls;
  { aca voy a los calculos de los totoales de la factura }
END;

FUNCTION tDatosRemitos.ControlCantidades:Boolean;
begin
  Result:=False;
  CDSRtoDet.First;
  CDSRtoDet.DisableControls;
  while Not(CDSRtoDet.Eof) DO
    begin
 //     DMStoreProcedure.spExistenciaStockArticuloDepo.Close;
 //     DMStoreProcedure.spExistenciaStockArticuloDepo.ParamByName('codigo').Value   := CDSRtoDetCodigoArticulo.Value;
 //     DMStoreProcedure.spExistenciaStockArticuloDepo.ParamByName('deposito').Value := CDSRtoDetDeposito.Value;
 //     DMStoreProcedure.spExistenciaStockArticuloDepo.ParamByName('unidad').Value   := 'V';
 //     DMStoreProcedure.spExistenciaStockArticuloDepo.ExecProc;

      DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
      DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('codigo').AsString    :=CDSRtoDetCodigoArticulo.Value;
      DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('deposito').AsInteger :=CDSRtoCabDeposito.Value;
      DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('unidad').AsString    :='V';
      DMStoreProcedure.QExistenciaStockArticuloDepo.Open;

 //     if (DMStoreProcedure.spExistenciaStockArticuloDepo.ParamByName('cantidad').Value<=0) or
 //         (Moneda3D(' ','0.00',DMStoreProcedure.spExistenciaStockArticuloDepo.ParamByName('cantidad').AsFloat)<
 //          Moneda3D(' ','0.00',CDSRtoDetCantidad.AsFloat)) Then
      if (DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat<=0) or
         (Moneda3D(' ','0.00',DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat)<
          Moneda3D(' ','0.00',CDSRtoDetCantidad.AsFloat)) Then

        begin
          ShowMessage('No Hay stock Suficiente de '+ CDSRtoDetDetalle.Value);
          Result:=True;
        end;
      CDSRtoDet.Next;
      DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
    end;
  CDSRtoDet.First;
  CDSRtoDet.EnableControls;
end;

FUNCTION TDatosRemitos.AsignarComprobante(Dato: Integer): Boolean;
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
      FormRemitos.Calcula_iva_articulo  := QComprobCALCULA_IVA_ARTICULOS.Value='S';
      CDSRtoCabREMITO_ELECTRONICO.Value := QComprobFACTURAELECTRONICA.Value;
      CDSRtoCabMUESTRACODIGOAFIP.Value  := QComprobCODIGO_AFIP.Value;
      Renglones                         := QComprobLINEAS_DETALLE.Value;
    END
  ELSE
    BEGIN
      Result:=False;
      CDSRtoCabMUESTRACOMPROBANTE.Value  := '';
      CDSRtoCabLETRARTO.Value            := '';
      CDSRtoCabCLASECPBTE.Value          := '';
      CDSRtoCabTIPOCPBTE.Value           := '';
      CDSRtoCabREMITO_ELECTRONICO.Value  := 'N';
      CDSRtoCabMUESTRACODIGOAFIP.Value   := '';

      FormRemitos.Calcula_iva_articulo   := True;
      Renglones                          := 0;
    END;
END;

FUNCTION TDatosRemitos.ASignarArticulo(Dato: STRING): Boolean;
var Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
 Decimales:String;
 Enter:Char;
BEGIN
  IF DatosRemitos.CDSRtoDet.State = dsBrowse THEN
    DatosRemitos.CDSRtoDet.Edit;
  WITH DatosRemitos DO
    BEGIN
      CDSStock.Close;
      CDSStock.Params.ParamByName('Codigo').Value:=Dato;
      CDSStock.Open;
      IF (( NOT (CDSStock.IsEmpty)) and (CDSStockCLASE_ARTICULO.Value<>0)) THEN
        BEGIN
          //vacio todo los importes por si hay un cambio de codigo y no queden cargados los valores
          CDSRtoDetCantidad.AsFloat          :=0;
          CDSRtoDetUnitario_Total.AsFloat    :=0;
          CDSRtoDetUnitario_Gravado.AsFloat  :=0;
          CDSRtoDetUnitario_Exento.AsFloat   :=0;
          CDSRtoDetTotal.AsFloat             :=0;

          CDSRtoDetDETALLE_ADICIONAL.Value :=CDSStockDETALLE_STK_ADICIONAL.Value;
          DMBuscadores.QDesctoArticulo.Close;
          DMBuscadores.QDesctoArticulo.ParamByName('Codigo').AsString:=Dato;
          DMBuscadores.QDesctoArticulo.ParamByName('Fecha').AsDate   :=CDSRtoCabFECHAVTA.AsDateTime;
          DMBuscadores.QDesctoArticulo.Open;
          if DMBuscadores.QDesctoArticuloDESCUENTO.AsString<>'' then
            begin
              DMMain_2.DsctoLineaTemp:=DMMain_2.TopeDsctoLinea;
              DMMain_2.TopeDsctoLinea:=DMBuscadores.QDesctoArticuloDESCUENTO.AsFloat;
            end;
          DMBuscadores.QDesctoArticulo.Close;

          CDSRtoDetDETALLE.AsString        := CDSStockDETALLE_STK.AsString;
          CDSRtoDetUNIDAD.Value            := CDSStockUNIDAD.Value;
          CDSRtoDetCOSTO_GRAVADO.AsFloat   := RoundTo((CDSStockFIJACION_PRECIO_GRAVADO.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat),DMMain_2.DecRedondeo);
          CDSRtoDetCOSTO_EXENTO.AsFloat    := RoundTo((CDSStockFIJACION_PRECIO_EXENTO.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat),DMMain_2.DecRedondeo);
          CDSRtoDetCOSTO_TOTAL.AsFloat     := RoundTo((CDSStockFIJACION_PRECIO_TOTAL.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat),DMMain_2.DecRedondeo);
          CDSRtoDetAFECTA_STOCK.Value      := CDSStockCONTROLASTOCK.Value;
          if CDSRtoCabDEVOLUCION.Value='S' then
            CDSRtoDetAFECTA_STOCK.Value      := 'N';
          CDSRtoDetMODO_GRAVAMEN.Value     := CDSStockMODO_GRAVAMEN.Value;
          CDSRtoDetTIPOIVA_TASA.Value      := CDSStockTASA_IVA.Value;
          CDSRtoDetTIPOIVA_SOBRETASA.Value := CDSStockSOBRETASA_IVA.Value;
          CDSRtoDetMUESTRACODALTERNATIVO.AsString := CDSStockREEMPLAZO_STK.Value;
          //Asigno el deposito que tengo en el encabezado...
          CDSRtoDetDeposito.Value := CDSRtoCabDeposito.Value;
          //segun el tipo de inscripcion verifico si descrimina o no iva y si cobra Sobre tasa
          CDSRtoDetDesglozaIVA.Value      := CDSRtoCabDesglozaIva.Value;
          CDSRtoDetCalcula_SobreTasa.Value:= CDSRtoCabCalcula_SobreTasa.Value;
          CDSRtoDetPRESENTACION_CANT.Value:= CDSStockPRESENTACION_CANTIDAD.Value;

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

          if (FormRemitos.Calcula_iva_articulo=False) then
            begin
              CDSRtoDetIVA_TASA.AsFloat      := 0;
              CDSRtoDetIVA_SobreTasa.AsFloat := 0;
            end;

          CDSRtoDetPRECIO_EDITABLE.Value       := CDSStockEDITAPRECIO.Value;
          if VarIsNull(CDSStockEDITAPRECIO.Value) then
            CDSRtoDetPRECIO_EDITABLE.Value:='S';


          CDSRtoDetID_MONEDA.Value := CDSStockMONEDA.Value;
          QMonedas.Close;
          QMonedas.ParamByName('id').Value:= CDSStockMONEDA.Value;
          QMonedas.Open;
          if QMonedasCOTIZACION.AsString<>'' then
            CDSRtoDetCOTIZACION.AsFloat := QMonedasCOTIZACION.AsFloat
          else
            CDSRtoDetCOTIZACION.AsFloat := 1;
          CDSRtoDetMUESTRAMONEDA.AsString:=QMonedasMONEDA.Value;
          CDSRtoDetMUESTRASIGNO.AsString :=QMonedasSIGNO.Value;
          QMonedas.Close;

          QCodigoBarra.Close;
          QCodigoBarra.ParamByName('codigo').Value := CDSStockCODIGO_STK.Value;
          QCodigoBarra.Open;
          CDSRtoDetCODIGOBARRA.Value   := QCodigoBarraMAX.Value;
          QCodigoBarra.Close;

          DMMain_2.CalculaPrecioVta(0,CDSRtoCabLISTAPRECIO.Value,CDSRtoCabSUCURSAL.Value,CDSRtoCabDEPOSITO.Value,
                                    CDSRtoDetCODIGOARTICULO.AsString,CDSRtoCabCODIGO.AsString,
                                    CDSRtoDetCOSTO_GRAVADO.AsFloat,CDSRtoDetCOSTO_EXENTO.AsFloat,CDSRtoDetIVA_TASA.AsFloat,
                                    CDSRtoDetCOTIZACION.AsFloat,
                                    CDSRtoDetCOTIZACION.AsFloat,// aca pongo en uno como valor del comprobante
                                    CDSRtoDetMODO_GRAVAMEN.AsString,
                                    Gravado,
                                    Exento,
                                    Total,
                                    Iva,
                                    Margen,
                                    Dscto,PFinal);

          CDSRtoDetUNITARIO_GRAVADO.AsFloat:=Gravado;
          CDSRtoDetUNITARIO_EXENTO.AsFloat :=Exento;
          CDSRtoDetUNITARIO_TOTAL.AsFloat  :=Total;
          CDSRtoDetIVA_UNITARIO.AsFloat    :=Iva;
          CDSRtoDetMARGEN.ASFloat          :=Margen;
          CDSRtoDetDESCUENTO.ASFloat       :=Dscto;

          // para probar los decimales ....
          Decimales:=(Copy(MascaraDetalleUnitario,pos('.',MascaraDetalleUnitario)+1,length(MascaraDetalleUnitario)));

          if Length(Decimales)=2 then
            begin
              CDSRtoDetUNITARIO_GRAVADO.AsFloat:= RoundTo(Gravado,-3);
              CDSRtoDetUNITARIO_EXENTO.AsFloat := RoundTo(Exento,-3);
              CDSRtoDetUNITARIO_TOTAL.AsFloat  := RoundTo(Total,-3);

              CDSRtoDetUNITARIO_GRAVADO.AsFloat:= RoundTo(CDSRtoDetUNITARIO_GRAVADO.AsFloat,-2);
              CDSRtoDetUNITARIO_EXENTO.AsFloat := RoundTo(CDSRtoDetUNITARIO_EXENTO.AsFloat,-2);
              CDSRtoDetUNITARIO_TOTAL.AsFloat  := RoundTo(CDSRtoDetUNITARIO_TOTAL.AsFloat,-2);

            end
          else
          if Length(Decimales)=3 then
            begin
              CDSRtoDetUNITARIO_GRAVADO.AsFloat:= RoundTo(Gravado,-4);
              CDSRtoDetUNITARIO_EXENTO.AsFloat := RoundTo(Exento,-4);
              CDSRtoDetUNITARIO_TOTAL.AsFloat  := RoundTo(Total,-4);

              CDSRtoDetUNITARIO_GRAVADO.AsFloat:= RoundTo(CDSRtoDetUNITARIO_GRAVADO.AsFloat,-3);
              CDSRtoDetUNITARIO_EXENTO.AsFloat := RoundTo(CDSRtoDetUNITARIO_EXENTO.AsFloat,-3);
              CDSRtoDetUNITARIO_TOTAL.AsFloat  := RoundTo(CDSRtoDetUNITARIO_TOTAL.AsFloat,-3);
            end;

          // ****************************************************
          // **** Cantidad desde PLU ****************************
          if DMMain_2.DesdePLU then
            begin
              Enter:=#13;
              if DMMain_2.ModoPLU=0 then  //Precio
                begin
              //    CDSVentaDetCantidadSetText(CDSVentaDetCantidad,FLoatToStr((StrToFloat(DMMain_2.PrecioPLU)*0.01)/CDSVentaDetUNITARIO_TOTAL.AsFloat));
                  FormRemitos.DBGrillaDetalle.SelectedIndex:=5;
                  CDSRtoDetUnitario_TotalSetText(CDSRtoDetUNITARIO_TOTAL,FLoatToStr(StrToFloat(DMMain_2.PrecioPLU)*0.01));
                  FormRemitos.DBGrillaDetalleKeyPress(FormRemitos.DBGrillaDetalle,Enter);
                end
              else
                if DMMain_2.ModoPLU=1 then //Cantidad
                  begin
                    FormRemitos.DBGrillaDetalle.SelectedIndex:=5;
                    CDSRtoDetCantidadSetText(CDSRtoDetCantidad,FLoatToStr(StrToFloat(DMMain_2.PrecioPLU)*0.001));
                    FormRemitos.DBGrillaDetalleKeyPress(FormRemitos.DBGrillaDetalle,Enter);
                    Enter:=#0;
                  end;
              Enter:=#0;
            end;
          // **** Fin desde PLU *********************************
          // ****************************************************



//          CalculaPrecioVta;

          VerificaGtiaExtendida(CDSRtoDetCODIGOARTICULO.AsString,CDSRtoCabCODIGO.AsString);

          Result:=True;
        END
      ELSE
        Result:=False;
    END;
END;

FUNCTION TDatosRemitos.AsignarCliente(Dato: STRING): Boolean;
Var Escape:Char;
DateTem,desde1,desde2,desde3,desde4:TDateTime;
BEGIN
  Escape:=#27;
  WITH FormRemitos DO
    BEGIN
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value:=Dato;
      CDSClientes.Open;
      IF NOT (CDSClientes.Eof) THEN
        BEGIN
          if CDSClientesEMITE_REMITO.Value='N' then
            begin
              ShowMessage('El Cliente no admite generación de Remitos...');
              sysUtils.Abort;
              FormRemitos.OnKeyPress(FormRemitos,Escape);
            end;

          if CDSClientesACTIVO.Value<>'S' Then
            begin
              ShowMessage('Cliente Inactivo ... No se puede Generar Operación...');
              sysUtils.Abort;
              FormRemitos.OnKeyPress(FormRemitos,Escape);
            end;
          DMMain_2.QOpciones.Close;
          DMMain_2.QOpciones.ParamByName('Opcion').Value:='LTECREDITO';
          DMMain_2.QOpciones.Open;

          if CDSClientesDEUDAMAYOR30.Value='S' then
            begin
              DateTem:= Date;
              DateTem:= IncDay(DateTem, CDSClientesDIAS_MAYOR_30.Value * -1);
            //  DecodeDate(DateTem,a,m,d);
            //  desde1:=EncodeDate(a,m,DaysInMonth(DateTem));
              desde1:=DateTem;
              desde2:=IncMonth(desde1,-1);
              desde3:=IncMonth(desde2,-1);
              desde4:=IncMonth(Desde3,-1);

              QSaldos.Close;
              QSaldos.ParamByName('codigo').AsString := CDSRtoCabCODIGO.Value;
              QSaldos.ParamByName('Desde1').AsDate:=Desde1;
              QSaldos.ParamByName('Desde2').AsDate:=Desde2;
              QSaldos.ParamByName('DESDE3').AsDate:=Desde3;
              QSaldos.ParamByName('DESDE4').AsDate:=Desde4;
              QSaldos.Open;

              if ((Trunc(QSaldosSALDO.AsFloat*100))>0) Then
                FormRemitos.jvAlerta.Execute;
             end;

          DMStoreProcedure.QSaldoCtaCte.Close;
          DMStoreProcedure.QSaldoCtaCte.ParamByName('codigo').Value:=Dato;
          DMStoreProcedure.QSaldoCtaCte.Open;

          DMStoreProcedure.QSaldoRtos.Close;
          DMStoreProcedure.QSaldoRtos.ParamByName('codigo').Value:=Dato;
          DMStoreProcedure.QSaldoRtos.Open;

          FormRemitos.Saldo.Caption:=FormatFloat('0.00',0);
          FormRemitos.Lte.Caption  :=FormatFloat('0.00',0);
          FormRemitos.SaldoRto.Caption       := FormatFloat('0.00',0);

          if DMStoreProcedure.QSaldoCtaCte.Fields[0].AsString<>'' Then
            FormRemitos.Saldo.Caption:=FormatFloat('0.00',DMStoreProcedure.QSaldoCtaCte.Fields[0].AsFloat);
          if CDSClientesLIMITE_CREDITO.AsString<>'' Then
            FormRemitos.Lte.Caption  :=FormatFloat('0.00',CDSClientesLIMITE_CREDITO.AsFloat);
          if DMStoreProcedure.QSaldoRtos.Fields[0].AsString<>'' Then
            FormRemitos.SaldoRto.Caption:=FormatFloat('0.00',DMStoreProcedure.QSaldoRtos.Fields[0].AsFloat);

          FormRemitos.pnLimiteCto.Visible:=(CDSClientesLIMITE_CREDITO.AsString<>'');

          if (DMMain_2.QOpciones.Fields[0].AsString[1]='N') and
             (DMStoreProcedure.QSaldoCtaCte.Fields[0].AsFloat > CDSClientesLIMITE_CREDITO.AsFloat) and
             (DMMain_2.UsuarioAdministrador=False)
               then
              begin
                ShowMessage('Cliente con saldo de '+ FormatFloat('0.00',DMStoreProcedure.QSaldoCtaCte.Fields[0].AsFloat) +' que supera el credito premitido ... No se permiten Operaciones...');
                sysUtils.Abort;
                FormRemitos.OnKeyPress(FormRemitos,Escape);
                //FormCpbte_2.cancelar.Execute;
              end;

          CorreoDestino                := CDSClientesCORREOELECTRONICO.Value;

          CDSRtoCabNombre.AsString     := CDSClientesNombre.AsString;
          CDSRtoCabRazonSocial.AsString:= CDSClientesRazon_Social.ASString;
          CDSRtoCabCuit.AsString       := CDSClientesNro_de_Cuit.AsString;
          CDSRtoCabDireccion.AsString  := CDSClientesDireccion_Comercial.AsString;
          CDSRtoCabTipoIVA.AsInteger   := CDSClientesCondicion_Iva.Value;
          CDSRtoCabCPostal.AsString    := CDSClientesCPostal.AsString;
          CDSRtoCabLocalidad.AsString  := CDSClientesLocalidad.AsString;
          CDSRtoCabZona.AsInteger      := CDSClientesZona.AsInteger;

          if Trim(CDSClientesAVISO.AsString)<>'' then
            begin
              FormRemitos.dskAviso.MessageText:=CDSClientesAVISO.AsString;
              dskAviso.Execute;
            end;

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

         // IF wwCDSClientesSUCURSAL.Value <> wwCDSRtoCabSucursal.Value THEN
         //   wwCDSRtoCabSucursalSetText(wwCDSRtoCabSucursal,wwCDSClientesSucursal.AsString);
          CDSRtoCabLdr.Clear;
          CDSInscripcion.Close;
          CDSInscripcion.Params.ParamByName('Codigo').Value:= CDSRtoCabTipoIva.Value;
          CDSInscripcion.Open;
          IF NOT (CDSInscripcion.Eof) THEN
            BEGIN
              CDSRtoCabCALCULA_SOBRETASA.Value:= CDSInscripcionCOBRASOBRETASA.Value;
              CDSRtoCabDESGLOZAIVA.Value      := CDSInscripcionDISCRIMINAIVA.Value;
              CDSRtoCabMUESTRAIVA.Value       := CDSInscripcionDETALLE.Value;
          //*********
            END;
          //asigno el comprobante segun condicoin de Inscripcion
          // esto me parece que esta al pedo aca... (8/11/05) no lo saco por que anda
          // pero no se.. tengo que revisarlo.......

          // comento esto no creo que tenga uso .... 22/09/2014
//          DMMain_2.CDSCompPorTipo.Close;
//          DMMain_2.CDSCompPorTipo.Params.ParamByName('desglozaIva').Value:='N';// esto es va de acuerdo al cliente;
//          DMMain_2.CDSCompPorTipo.Params.ParamByName('sucursal').Value   :=CDSRtoCabSUCURSAL.Value;
//          DMMain_2.CDSCompPorTipo.Params.ParamByName('compraventa').Value:='V';
//          DMMain_2.CDSCompPorTipo.Params.ParamByName('tipo').Value       :='RE';
//          DMMain_2.CDSCompPorTipo.Open;
//          DMMain_2.CDSCompPorTipo.First;
//          if DMMain_2.CDSCompPorTipo.Fields[0].AsString<>'' Then
//            CDSRtoCabID_TIPOCOMPROBANTESetText(CDSRtoCabID_TIPOCOMPROBANTE,DMMain_2.CDSCompPorTipo.Fields[0].AsString);
//          ****************************************************************************************
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
                CDSRtoCabVENDEDORSetText(CDSRtoCabVENDEDOR,EmpleadoPorDefecto);
              CDSPersonal.Close;
            end
          else
            begin
              if (EmpleadoPorDefecto<>'') and (EmpleadoPorDefecto<>'-1')  then
                CDSRtoCabVENDEDORSetText(CDSRtoCabVENDEDOR,EmpleadoPorDefecto);
            end;

          // aca tomo la lista de precio del cliente si no dejo la que esta
          CDSRtoCabLISTAPRECIO.Value:=DMMain_2.AsignarListaPrecio(CDSRtoCabSUCURSAL.Value);
          if CDSClientesLISTAPRECIOS.AsString<>'' Then
            begin
              CDSRtoCabLISTAPRECIO.Value := CDSClientesLISTAPRECIOS.Value;
              if FormRemitos.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsInteger>-1 then
                CDSRtoCabCondicionVtaSetText(CDSRtoCabCONDICIONVTA,FormRemitos.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString);
            end
          else
            begin
              if (CDSRtoCabLISTAPRECIO.AsString<>'') and (FormRemitos.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsInteger>-1) Then
                CDSRtoCabCondicionVtaSetText(CDSRtoCabCONDICIONVTA,FormRemitos.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString);
              // aca tomo la lista del archivo ini
              if Trim(FormRemitos.ListaRto)<>'' then
                CDSRtoCabLISTAPRECIO.Value:=StrToInt(FormRemitos.ListaRto);
            end;
          CDSRtoCabID_TRANSPORTE.Value:=CDSClientesID_TRANSPORTE.Value;

          result:=True;
        END
      ELSE
        Result:=False;
    END;
  DMStoreProcedure.QSaldoCtaCte.Close;
  DMMain_2.QOpciones.Close;
END;

FUNCTION TDatosRemitos.AsignarLdr(Cliente: STRING; Dato: integer): Boolean;
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

FUNCTION TDatosRemitos.AsignarSucursal(Dato: Integer): Boolean;
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
      DMMain_2.QDepositoPorSucursal.Close;
      DMMain_2.QDepositoPorSucursal.ParamByName('sucursal').Value:=CDSRtoCabSUCURSAL.Value;
      DMMain_2.QDepositoPorSucursal.Open;
      if DMMain_2.QDepositoPorSucursalDEPOSITO.AsString<>'' then
        CDSRtoCabDepositoSetText(CDSRtoCabDeposito,DMMain_2.QDepositoPorSucursalDEPOSITO.AsString);
      DMMain_2.QDepositoPorSucursal.Close;

      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal = :suc and ' +
                                                ' compra_venta = ''V'' and (tipo_comprob= ''RE'') ';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      DMBuscadores.CDSBuscaComprob.Open;
      if DMBuscadores.CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSRtoCabID_TIPOCOMPROBANTESetText(CDSRtoCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
          if (FormRemitos<>nil) and (FormRemitos.Visible=True) Then
            FormRemitos.RxCCodigo.SetFocus;
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
                    if (FormRemitos<>nil) and (FormRemitos.Visible=True) Then
                      FormRemitos.RxCCodigo.SetFocus;
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
                        if (FormRemitos<>nil) and (FormRemitos.Visible=True) Then
                          FormRemitos.RxCCodigo.SetFocus;
                      end;
                 end;
              end;
          end;
      DMBuscadores.CDSBuscaComprob.Filtered :=False;
      DMBuscadores.CDSBuscaComprob.Filter   :='';
      DMBuscadores.CDSBuscaComprob.close;

      Result:=True;
      CDSRtoCabMuestraSucursal.Value:= CDSSucursalDETALLE.Value;

      //**************************************************************************
      //****Asigno la Lsta Por defecto  o la primera *****************************
      //**************************************************************************
      DMMain_2.QListaPrecioPorDefecto.CLose;
      DMMain_2.QListaPrecioPorDefecto.Open;
      if DMMain_2.QListaPrecioPorDefecto.Fields[0].AsString<>'' Then
        CDSRtoCabLISTAPRECIO.Value:=DMMain_2.QListaPrecioPorDefecto.Fields[0].Value
      else
        begin
          DMMain_2.QPrimeraListaPrecios.Close;
          DMMain_2.QPrimeraListaPrecios.Open;
          if DMMain_2.QPrimeraListaPrecios.Fields[0].AsString<>'' Then
            CDSRtoCabLISTAPRECIO.Value:=DMMain_2.QPrimeraListaPrecios.Fields[0].Value;
          DMMain_2.QPrimeraListaPrecios.Close;
       end;
      DMMain_2.QListaPrecioPorDefecto.CLose;

      //***********************************************************
      // Asigno la lista por sucursal
      //***********************************************************
      DMMain_2.QListaDefectoSuc.Close;
      DMMain_2.QListaDefectoSuc.ParamByName('sucursal').Value:= CDSRtoCabSUCURSAL.Value;
      DMMain_2.QListaDefectoSuc.Open;
      if (DMMain_2.QListaDefectoSuc.Fields[0].AsString<>'') then
        begin
          CDSRtoCabLISTAPRECIO.Value:= DMMain_2.QListaDefectoSuc.Fields[0].AsInteger;
        end;
       DMMain_2.QListaDefectoSuc.Close;
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
              if (FormRemitos.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString<>'') and
                 (FormRemitos.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsInteger>-1)  Then
              CDSRtoCabCondicionVtaSetText(CDSRtoCabCONDICIONVTA,FormRemitos.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString);
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

FUNCTION TDatosRemitos.AsignarCondVenta(Cliente: STRING; Dato: Integer): Boolean;
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
      CDSRtoCabDSTO.AsFloat           := CDSCondVentaDESCUENTO.AsFloat;
    END
  ELSE
    Result:=False;
  CDSCondVenta.Close;
END;

FUNCTION TDatosRemitos.AsignarDeposito(Dato: Integer): Boolean;
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

FUNCTION TDatosRemitos.AsignarVendedor(Dato: String): Boolean;
BEGIN
  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('codigo').Value:=Dato;
  CDSPersonal.Open;
  IF NOT (CDSPersonal.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSRtoCabMUESTRAVENDEDOR.Value   := CDSPersonalNOMBRE.Value;
      CDSRtoCabCOMISIONVENDEDOR.AsFloat:= CDSPersonalCOMISION.AsFloat;
    END
  ELSE
    begin
      Result:=False;
      CDSRtoCabMUESTRAVENDEDOR.Clear;
      CDSRtoCabCOMISIONVENDEDOR.Clear;
    end;
  CDSPersonal.Close;
END;


procedure TDatosRemitos.DataModuleDestroy(Sender: TObject);
begin
  DatosRemitos:=nil;
end;

procedure TDatosRemitos.CDSRtoCabLDRSetText(Sender: TField;
  const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarLdr(CDSRtoCabCodigo.Value, Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo L.D.R no Válido');
          FormRemitos.RxCLdr.SetFocus;
        END;
    END;

end;

procedure TDatosRemitos.CDSRtoCabDepositoSetText(Sender: TField;
  const Text: String);
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

procedure TDatosRemitos.CDSRtoCabNETOGRAV1GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR
  Aux: real;
BEGIN
  Aux:=(Sender.AsFloat);
  IF CDSRtoCabDesglozaIva.Value = 'N' THEN
    Aux:=(Aux + (Aux * Var_TasaIva * 0.01));

  Aux:= RoundTo(Aux ,-3);
  Aux:= RoundTo(Aux ,-2);

  Text:=FormatFloat(MascaraCabecera,Aux);
END;


procedure TDatosRemitos.CDSRtoCabDSTOSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:= FormatFloat(MascaraCabecera,StrToFloat(Text));
  if (Sender.AsFloat > DMMain_2.TopeDsctoGral) then
    Sender.AsFloat:=DMMain_2.TopeDsctoGral;
  if Sender.AsFloat<0 Then Sender.AsString:='0.00';
  SumarDetalle;
  CalcularTotales;
end;

procedure TDatosRemitos.CDSRtoCabDESGLOZAIVAChange(Sender: TField);
begin
  FormRemitos.DBGrillaIva.Visible:=CDSRtoCabDESGLOZAIVA.Value = 'S';
end;


procedure TDatosRemitos.CDSRtoCabCODIGOSetText(Sender: TField;
  const Text: String);
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
          FormRemitos.RxCCodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      FormRemitos.RxCCodigo.Text:=Aux;
    end;
END;

procedure TDatosRemitos.CDSRtoCabSUCRTOSetText(Sender: TField;
  const Text: String);
VAR
  Aux: STRING;
BEGIN
  Aux:=Text;
  Aux:=Copy('0000', 1, 4 - Length(Aux)) + Aux;
  Sender.AsString:=Aux;
  CDSRtoCabNROCPBTE.Value := CDSRtoCabLETRARTO.Value + CDSRtoCabSUCRTO.Value + CDSRtoCabNUMERORTO.Value;
  if ((CDSRtoCabNUMERORTO.AsString<>'') and (CDSRtoCabNUMERORTO.AsInteger>0)) and ( DMMain_2.VerificaNroRto(CDSRtoCabLETRARTO.Value,CDSRtoCabSUCRTO.Value,
                             CDSRtoCabNUMERORTO.Value,CDSRtoCabTIPOCPBTE.Value,
                             CDSRtoCabCLASECPBTE.Value,CDSRtoCabSUCURSAL.Value)) Then
      begin
        if Not(Assigned(FormMuestraUltimoProximoNroCpbte)) then
          FormMuestraUltimoProximoNroCpbte :=TFormMuestraUltimoProximoNroCpbte.Create(Self);
        FormMuestraUltimoProximoNroCpbte.letra   :=CDSRtoCabLETRARTO.Value;
        FormMuestraUltimoProximoNroCpbte.Suc     :=CDSRtoCabSUCRTO.Value;
        FormMuestraUltimoProximoNroCpbte.Nro     :=CDSRtoCabNUMERORTO.Value;
        FormMuestraUltimoProximoNroCpbte.Tipo    :=CDSRtoCabTIPOCPBTE.Value;
        FormMuestraUltimoProximoNroCpbte.Clase   :=CDSRtoCabCLASECPBTE.Value;
        FormMuestraUltimoProximoNroCpbte.Sucursal:=CDSRtoCabSUCURSAL.Value;
        FormMuestraUltimoProximoNroCpbte.ShowModal;
        if FormMuestraUltimoProximoNroCpbte.ModalResult=mrOk then
          Sender.AsString:=FormMuestraUltimoProximoNroCpbte.Nro
        else
          Sender.Clear;
      end;
//  else
//    Sender.Clear;

//                 Sender.Clear;
  CDSRtoCabNROCPBTE.Value := CDSRtoCabLETRARTO.Value + CDSRtoCabSUCRTO.Value + CDSRtoCabNUMERORTO.Value;

   // Sender.Clear;

end;

procedure TDatosRemitos.CDSRtoCabNUMERORTOSetText(Sender: TField;
  const Text: String);
BEGIN
  Sender.AsString:=Copy('000000000', 1, Sender.Size - Length(Text)) + Text;
  CDSRtoCabNROCPBTE.Value := CDSRtoCabLETRARTO.Value + CDSRtoCabSUCRTO.Value + CDSRtoCabNUMERORTO.Value;
  if (CDSRtoCabSUCRTO.AsString<>'') and  (DMMain_2.VerificaNroRto(CDSRtoCabLETRARTO.Value,CDSRtoCabSUCRTO.Value,
                             CDSRtoCabNUMERORTO.Value,CDSRtoCabTIPOCPBTE.Value,
                             CDSRtoCabCLASECPBTE.Value,CDSRtoCabSUCURSAL.Value)) Then
      begin
        if Not(Assigned(FormMuestraUltimoProximoNroCpbte)) then
          FormMuestraUltimoProximoNroCpbte :=TFormMuestraUltimoProximoNroCpbte.Create(Self);
        FormMuestraUltimoProximoNroCpbte.letra   :=CDSRtoCabLETRARTO.Value;
        FormMuestraUltimoProximoNroCpbte.Suc     :=CDSRtoCabSUCRTO.Value;
        FormMuestraUltimoProximoNroCpbte.Nro     :=CDSRtoCabNUMERORTO.Value;
        FormMuestraUltimoProximoNroCpbte.Tipo    :=CDSRtoCabTIPOCPBTE.Value;
        FormMuestraUltimoProximoNroCpbte.Clase   :=CDSRtoCabCLASECPBTE.Value;
        FormMuestraUltimoProximoNroCpbte.Sucursal:=CDSRtoCabSUCURSAL.Value;
        FormMuestraUltimoProximoNroCpbte.ShowModal;
        if FormMuestraUltimoProximoNroCpbte.ModalResult=mrOk then
          Sender.AsString:=FormMuestraUltimoProximoNroCpbte.Nro
        else
          Sender.Clear;
      end;
//  else
//    Sender.Clear;

//                 Sender.Clear;
  CDSRtoCabNROCPBTE.Value := CDSRtoCabLETRARTO.Value + CDSRtoCabSUCRTO.Value + CDSRtoCabNUMERORTO.Value;

END;

procedure TDatosRemitos.CDSRtoCabSUCURSALSetText(Sender: TField; const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Sucursal No Valido');
          FormRemitos.RxCSucursal.SetFocus;
        END
      ELSE IF CDSRtoCab.State = dsInsert THEN
        UltimoComprobante;
    END;
end;

procedure TDatosRemitos.CDSRtoCabCONDICIONVTASetText(Sender: TField; const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF (NOT (AsignarCondVenta(CDSRtoCabCodigo.Value, Sender.AsInteger))) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Cond.Vta no Válido');
          FormRemitos.RxCConVta.SetFocus;
        END;
    END;
end;

procedure TDatosRemitos.CDSRtoDetCodigoArticuloSetText(Sender: TField; const Text: String);
VAR S,CodTxt,Aux: STRING;
Enter:Char;
BEGIN
  Enter:=#13;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      // Quitar enter de la cadena....
      AnsiReplaceStr(Text, #13, '');
      Sender.AsString := DMMain_2.SearchCodigo(Text,DSRtoDet,FormRemitos.VerCodigoAlternativo1.Checked);

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
          FormBuscadorArticulos.ListaPrecio:=DatosRemitos.CDSRtoCabLISTAPRECIO.Value;
          FormBuscadorArticulos.Dato              := s;//Text;
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
      if DMMain_2.EncontroCodigoBarra Then
        begin
          FormRemitos.DBGrillaDetalle.OnKeyPress(FormRemitos.DBGrillaDetalle,Enter);
//         FormCpbte_2.DBGrillaDetalle.OnKeyPress(FormCpbte_2.DBGrillaDetalle,Enter);
        end;
  END;
END;

procedure TDatosRemitos.CDSRtoDetUnitario_TotalSetText(Sender: TField; const Text: String);
VAR Num, P_Exento, P_Gravado,Pt_Exento,
    Pt_Gravado,Pt_Final, Descuento,Cantidad,TasaIva,Aux3,ImporteIva:  Extended;
    TextAux,Decimales:String;
    Modo: TFPURoundingMode;
BEGIN
   if ((Text<>'') and (CDSRtoDetCODIGOARTICULO.AsString<>'')) Then
    begin
      TextAux:=Text;

      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);
      if CDSRtoDet.State=dsBrowse Then CDSRtoDet.Edit;

      Num:=StrToFloat(TextAux);

      IF CDSRtoDetMODO_GRAVAMEN.Value <> '' THEN
        CASE CDSRtoDetMODO_GRAVAMEN.Value[1] OF
          'E','N'    : CDSRtoDetUNITARIO_EXENTO.AsFloat := Num;
          'G'        : CDSRtoDetUNITARIO_GRAVADO.AsFloat:= Num;
          'M','I','Y': CDSRtoDetUNITARIO_GRAVADO.AsFloat:= Num-CDSRtoDetUNITARIO_EXENTO.AsFloat
        END;
      Cantidad  := CDSRtoDetCANTIDAD.AsFloat;
      Descuento := 1 - CDSRtoDetDESCUENTO.AsFloat * 0.01;
      TasaIva   := 1 + CDSRtoDetIVA_TASA.AsFloat * 0.01;

      P_Exento  := CDSRtoDetUNITARIO_EXENTO.AsFloat ;
      P_Gravado := CDSRtoDetUNITARIO_GRAVADO.AsFloat;

      // calculo el total de la linea
      Pt_Gravado :=  P_Gravado * Cantidad * Descuento;
      Pt_Exento  :=  P_Exento * Cantidad * Descuento;
      // calculo de IVA
      ImporteIva :=  (Pt_gravado * TasaIva)- Pt_Gravado;

      CDSRtoDetIVA_UNITARIO.AsFloat := (P_Gravado * TasaIva) - P_Gravado;

      if ((CDSRtoCabDESGLOZAIVA.Value='N') or (FormRemitos.DiscriminaIva='N')) and (CDSRtoDetMODO_GRAVAMEN.AsString[1] in ['G','M']) Then
        begin
          P_Gravado                       := CDSRtoDetUNITARIO_GRAVADO.AsFloat / TasaIva;
          CDSRtoDetIVA_UNITARIO.AsFloat := CDSRtoDetUNITARIO_GRAVADO.AsFloat - P_Gravado;
          // *** Calculo el total de la linea
          Pt_Final   :=  (P_Gravado + CDSRtoDetIVA_UNITARIO.ASFloat) * Cantidad * Descuento;

          Modo:=GetRoundMode;
          SetRoundMode(rmUp);

          Pt_Final   := SimpleRoundTo(Pt_Final,-3);
          Pt_Final   := SimpleRoundTo(Pt_Final,-2);

          Pt_Gravado :=  Pt_Final  / TasaIva;

          Pt_Gravado :=  SimpleRoundTo(Pt_Gravado,-3);
          Pt_Gravado :=  SimpleRoundTo(Pt_Gravado,-2);


          Pt_Exento  :=  P_Exento * Cantidad * Descuento;
          // Calculo de IVA
          ImporteIva :=  Pt_Final - Pt_gravado;
        end;

      CDSRtoDetUNITARIO_GRAVADO.AsFloat := P_Gravado;

      CDSRtoDetTOTAL_GRAVADO.AsFloat    := SimpleRoundTo(Pt_Gravado,-3);
      CDSRtoDetTOTAL_GRAVADO.AsFloat    := SimpleRoundTo(CDSRtoDetTOTAL_GRAVADO.AsFloat,-2);

      CDSRtoDetTOTAL_EXENTO.AsFloat     := SimpleRoundTo(Pt_Exento,-3);
      CDSRtoDetTOTAL_EXENTO.AsFloat     := SimpleRoundTo(CDSRtoDetTOTAL_EXENTO.AsFloat,-2);

      ImporteIva                          := SimpleRoundTo(ImporteIva,-3);
      CDSRtoDetIVA_TOTAL.AsFloat        := SimpleRoundTo(ImporteIva,-3);

      // esto pisa las 2 lineas anteriores no las borro para probar

      if ((CDSRtoCabDESGLOZAIVA.Value='N') or (FormRemitos.DiscriminaIva='N')) and (CDSRtoDetMODO_GRAVAMEN.AsString[1] in ['G','M']) Then
        CDSRtoDetIVA_TOTAL.AsFloat     := (Pt_Final)-Pt_Gravado;

      CDSRtoDetTOTAL.AsFloat         := RoundTo((Pt_Gravado+Pt_Exento),-2);

      SetRoundMode(Modo);

      // **************** Calculo el Margen ******************
      if (CDSRtoDetCOSTO_TOTAL.AsFloat>0) and (CDSRtoDetUNITARIO_TOTAL.AsFloat>0) then
          CDSRtoDetMARGEN.AsFloat := RoundTo(((CDSRtoDetUNITARIO_TOTAL.AsFloat - CDSRtoDetCosto_Total.AsFloat)/
                                                 CDSRtoDetUNITARIO_TOTAL.AsFloat)*100,-2)
      else
        CDSRtoDetMARGEN.AsFloat:= 100;
      // *****************************************************

      Aux3            := P_Gravado + P_Exento;
      Sender.AsString := FloatToStr(Aux3);

      if (CDSRtoDetMODO_GRAVAMEN.Value[1] in['E','N']) and (CDSRtoDetUNITARIO_GRAVADO.AsFloat>0) Then
        begin
          Sender.AsString:='0';
          CDSRtoDetUNITARIO_GRAVADO.AsFloat:=0;
          CDSRtoDetUNITARIO_EXENTO.AsFloat :=0;
          CDSRtoDetUNITARIO_TOTAL.AsFloat  :=0;
          CDSRtoDetTOTAL.AsFloat           :=0;
          raise Exception.Create('El artículo Figura Como Exento y tiene Costo Gravado...');
        end
      else
        if (CDSRtoDetMODO_GRAVAMEN.Value[1]='G') and (CDSRtoDetUNITARIO_EXENTO.AsFloat>0) Then
          begin
            Sender.AsString:='0';
            CDSRtoDetUNITARIO_GRAVADO.AsFloat:=0;
            CDSRtoDetUNITARIO_EXENTO.AsFloat :=0;
            CDSRtoDetUNITARIO_TOTAL.AsFloat  :=0;
            CDSRtoDetTOTAL.AsFloat           :=0;
            raise Exception.Create('El artículo Figura Como Gravado y tiene Costo exento...');
          end;
   end;

  Decimales:=(Copy(MascaraDetalleUnitario,pos('.',MascaraDetalleUnitario)+1,length(MascaraDetalleUnitario)));
  if Length(Decimales)=2 then
    begin
      //Primero con 3 decimales y despues 2
      CDSRtoDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSRtoDetUNITARIO_GRAVADO.AsFloat,-3);
      CDSRtoDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSRtoDetUNITARIO_EXENTO.AsFloat,-3);
      CDSRtoDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSRtoDetUNITARIO_TOTAL.AsFloat,-3);
      Modo:=GetRoundMode;
      SetRoundMode(rmUp);
      CDSRtoDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSRtoDetIVA_UNITARIO.AsFloat,-3);
      SetRoundMode(Modo);

      CDSRtoDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSRtoDetUNITARIO_GRAVADO.AsFloat,-2);
      CDSRtoDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSRtoDetUNITARIO_EXENTO.AsFloat,-2);
      CDSRtoDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSRtoDetUNITARIO_TOTAL.AsFloat,-2);
      CDSRtoDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSRtoDetIVA_UNITARIO.AsFloat,-2);
    end
  else
    if Length(Decimales)=3 then
      begin
        CDSRtoDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSRtoDetUNITARIO_GRAVADO.AsFloat,-4);
        CDSRtoDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSRtoDetUNITARIO_EXENTO.AsFloat,-4);
        CDSRtoDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSRtoDetUNITARIO_TOTAL.AsFloat,-4);
        Modo:=GetRoundMode;
        SetRoundMode(rmUp);
        CDSRtoDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSRtoDetIVA_UNITARIO.AsFloat,-4);
        SetRoundMode(Modo);

        CDSRtoDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSRtoDetUNITARIO_GRAVADO.AsFloat,-3);
        CDSRtoDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSRtoDetUNITARIO_EXENTO.AsFloat,-3);
        CDSRtoDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSRtoDetUNITARIO_TOTAL.AsFloat,-3);
        CDSRtoDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSRtoDetIVA_UNITARIO.AsFloat,-3);
      end;

END;

procedure TDatosRemitos.CDSRtoTroquelesNewRecord(DataSet: TDataSet);
begin
  CDSRtoTroquelesID.Value          := ibgRtoTroquel.IncrementIBX(1);
  CDSRtoTroquelesID_RTO.Value      := CDSRtoCabID_RTO.Value;
  CDSRtoTroquelesID_TROQUEL.Value  := -1;
  CDSRtoTroquelesFECHA.Value       := CDSRtoCabFECHAVTA.Value;
  CDSRtoTroquelesNRO_TROQUEL.Clear

end;

procedure TDatosRemitos.CDSRtoCabNewRecord(DataSet: TDataSet);
begin
  CDSRtoCabID_RTO.Value         :=IBGRto_Cab.IncrementIBX(1);
  CDSRtoCabNombre.AsString      := '';
  CDSRtoCabRazonSocial.AsString := '';
  CDSRtoCabCuit.AsString        := '';
  CDSRtoCabDireccion.AsString   := '';
  CDSRtoCabTipoIVA.AsString     := '';
  CDSRtoCabCPostal.AsString     := '';
  CDSRtoCabLETRARTO.AsString    := 'X';
  CDSRtoCabCpte_Manual.Value    := 'N';
  CDSRtoCabImpreso.AsString     := 'N';
  CDSRtoCabAnulado.AsString     := 'N';
  CDSRtoCabSUCRTO.AsString      := '0000';
  CDSRtoCabNUMERORTO.AsString   := '00000000';
  CDSRtoCabDsto.ASFloat         := 0;
  CDSRtoCabNetoExen1.AsFloat    := 0;
  CDSRtoCabNetoExen2.AsFloat    := 0;
  CDSRtoCabFechaVta.AsDateTime  := Date;
  CDSRtoCabNroEntrega.Value     := 1;
  CDSRtoCabDEVOLUCION.AsString  := 'N';

  CDSRtoCabDeposito.Clear;
  CDSRtoCabTipoCpbte.AsString       := '';
  CDSRtoCabCOMISIONVENDEDOR.AsFloat := 0;
  CDSRtoCabSUCURSALSetText(CDSRtoCabSUCURSAL,IntToStr(FormRemitos.SucursalPorDefecto));
  CDSRtoCabDEPOSITOSetText(CDSRtoCabDEPOSITO,IntToStr(FormRemitos.DepositoPorDefecto));
  CDSRtoCabUSUARIO.Value           := DMMain_2.UsuarioActivo;
  CDSRtoCabFECHA_HORA.AsDateTime   := now;
  CDSRtoCabTAREAS.Value            := '0000000000';
  CDSRtoCabCANT_BULTOS.AsInteger   := 0;
  CDSRtoCabCAE.Value               := '0';
  CDSRtoCabREMITO_ELECTRONICO.Value:= 'N';

  //**************************************************************************
  //****Asigno la Lista Por defecto o la lista asignada **********************
  //**************************************************************************
   CDSRtoCabLISTAPRECIO.Value        := DMMain_2.AsignarListaPrecio(CDSRtoCabSUCURSAL.Value);
  //***********************************************************
  //***********************************************************

  CDSRtoCabCON_GTIA_EXTENDIDA.Value   := 'N';
  CDSRtoCabPEDIDO_ID.Value            := -1;
  CDSRtoCabID_TRANSFERENCIA.Value     := -1;

  if (FormRemitos<>nil) and (FormRemitos.Visible=True) then
    begin
      FormRemitos.dbeFechaVta.SetFocus;
      FormRemitos.dbeFechaVta.SelectAll;
    end;


end;

procedure TDatosRemitos.CDSRtoCabBeforePost(DataSet: TDataSet);
begin
  CDSRtoCabNroCpbte.Value :=CDSRtoCabLETRARTO.Value + CDSRtoCabSUCRTO.Value +
    CDSRtoCabNUMERORTO.Value;
end;

procedure TDatosRemitos.CDSRtoDetAFECTA_STOCKGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.AsString='S' then
    Text := 'Si'
  else
    Text := '--';

end;

procedure TDatosRemitos.CDSRtoDetAfterDelete(DataSet: TDataSet);
var N:Integer;
begin
  CDSRtoDet.AfterPost:=nil;
  CDSRtoDet.DisableControls;
  CDSRtoDet.First;
  N:=1;
  while not(CDSRtoDet.Eof) do
    begin
      CDSRtoDet.Edit;
      CDSRtoDetNRO.Value:=N;
      CDSRtoDetRENGLON.ASinteger:=CDSRtoDetNRO.Value;
      N:=N+1;
      CDSRtoDet.Next;
    end;
  CDSRtoDet.First;
  CDSRtoDet.EnableControls;
  CDSRtoDet.AfterPost:=CDSRtoDetAfterPost;


  SumarDetalle;
  CalcularTotales;
  // Borrar Los renglones con valor 0 (cero)....
  CDSImpuestos.EnableControls;
  CDSImpuestos.First;
  WHILE NOT (CDSimpuestos.Eof) DO
    BEGIN
      IF (CDSImpuestosIMPORTE.AsFloat <= 0) OR
         (CDSImpuestosTASA.AsFloat <= 0)  THEN
        CDSImpuestos.Delete;
      CDSImpuestos.Next;
    END;
  HayGtia;
end;

procedure TDatosRemitos.CDSRtoDetAfterInsert(DataSet: TDataSet);
begin
  IF (CDSRtoDet.RecordCount > Renglones) THEN
    BEGIN
      ShowMessage('No se pueden Ingresar más Items' + #13 +
        'Evento - (AfterInsert)');
      SysUtils.Abort;
      CDSRtoDet.Cancel;
    END
  ELSE IF (CDSRtoCabCODIGO.AsString = '') OR (CDSRtoCabNUMERORTO.AsString = '') THEN
    BEGIN
      SysUtils.Abort;
      CDSRtoDet.Cancel;
    END
  ELSE IF (CDSRtoCabImpreso.Value = 'S') THEN
    BEGIN
      ShowMessage('No se puede modificar'#13'un comprobante ya impreso');
      SysUtils.Abort;
      IF CDSRtoDet.State IN [dsEdit, dsInsert] THEN
        CDSRtoDet.Cancel;
      IF CDSRtoCab.State IN [dsEdit, dsInsert] THEN
        CDSRtoCab.Cancel;
    END;
end;

procedure TDatosRemitos.CDSRtoDetAfterPost(DataSet: TDataSet);
begin
  SumarDetalle;
  CalcularTotales;
  // Borrar Los renglones con valor 0 (cero)....
  CDSImpuestos.EnableControls;
  CDSImpuestos.First;
  WHILE NOT (CDSimpuestos.Eof) DO
    BEGIN
      IF (CDSImpuestosIMPORTE.AsFloat <= 0) OR
         (CDSImpuestosTASA.AsFloat <= 0) THEN
        CDSImpuestos.Delete;
      CDSImpuestos.Next;
    END;
  //***************************************************************
  // Si no puede modificar precio el usuario pongo la
  // columna en la grilla como solo lectura
  // Precio Unitario
   FormRemitos.DBGrillaDetalle.Columns[6].ReadOnly:=Not(DMMain_2.ModificaPrecioVta);
  // Descuentos
   FormRemitos.DBGrillaDetalle.Columns[7].ReadOnly:=Not(DMMain_2.AplicaDescuento);
  //***************************************************************
  //***************************************************************
  // Si hay garantia
  HayGtia;
end;

procedure TDatosRemitos.CDSRtoDetBeforeInsert(DataSet: TDataSet);
begin
  IF (CDSRtoDet.RecordCount >= Renglones) or (CDSRtoCabCON_GTIA_EXTENDIDA.Value='S') THEN
    BEGIN
      CDSRtoDet.Cancel;
      showMessage('no se puede ingreasr mas renglones');
      SysUtils.Abort;
    END;
end;

procedure TDatosRemitos.CDSRtoDetBeforePost(DataSet: TDataSet);
begin
  IF CDSRtoDet.State IN [dsInsert, dsEdit] THEN
    CDSRtoDetNroCpbte.Value:=CDSRtoCabLETRARTO.Value + CDSRtoCabSUCRTO.Value + CDSRtoCabNUMERORTO.Value;
  IF ((CDSRtoDetCodigoArticulo.AsString = '') OR (CDSRtoDet.RecordCount - 1 > Renglones)) AND
    (CDSRtoDet.State IN [dsInsert, dsEdit])
    THEN
    BEGIN
      CDSRtoDet.Cancel;
      SysUtils.Abort;
    END;
// Controlo el Marge de ganancia...
  if (CDSRtoDetMargen.AsFloat<DMMain_2.MargenUtilidad) and
     (CDSRtoCabTIPOCPBTE.AsString='RE') then
      begin
       // ShowMessage('El precio de Venta esta por debajo de la renta Minima');
        if DMMain_2.VenderDebajoMinimo=False then
          begin
            ShowMessage('No está Autorizado a vender por debajo de la renta Minima...');
            CDSRtoDet.Cancel;
            SysUtils.Abort;
          end;
      end;

end;

procedure TDatosRemitos.CDSRtoDetNewRecord(DataSet: TDataSet);
begin
  IF (CDSRtoDet.RecordCount > Renglones) THEN
    CDSRtoDet.Cancel
  ELSE
    BEGIN
      CDSRtoDetID.Value                      := IBGRto_Det.IncrementIBX(1);
      CDSRtoDetID_CABRTO.Value               := CDSRtoCabID_RTO.Value;
      CDSRtoDetRENGLON.AsInteger             := CDSRtoDet.RecordCount + 1;
      CDSRtoDetNRO.ASInteger                 := CDSRtoDetRENGLON.AsInteger;
      CDSRtoDetDETALLE.Value                 := '';
      CDSRtoDetDETALLE_ADICIONAL.Value       := '';

      CDSRtoDetUNIDAD.Value                  := '';
      CDSRtoDetCANTIDAD.AsFloat              := 0;
      CDSRtoDetCANT_FACTURA.AsFloat          := 0;
      CDSRtoDetCOSTO_EXENTO.AsFloat          := 0;
      CDSRtoDetCOSTO_GRAVADO.AsFloat         := 0;
      CDSRtoDetCOSTO_TOTAL.AsFloat           := 0;
      CDSRtoDetUNITARIO_EXENTO.AsFloat       := 0;
      CDSRtoDetUNITARIO_GRAVADO.AsFloat      := 0;
      CDSRtoDetUNITARIO_TOTAL.AsFloat        := 0;
      CDSRtoDetTOTAL_GRAVADO.AsFloat         := 0;
      CDSRtoDetTOTAL_EXENTO.AsFloat          := 0;
      CDSRtoDetIVA_UNITARIO.AsFloat          := 0;
      CDSRtoDetIVA_TOTAL.AsFloat             := 0;
      CDSRtoDetTOTAL.AsFloat                 := 0;
      CDSRtoDetDESCUENTO.AsFloat             := 0;
      CDSRtoDetIVA_TASA.AsFloat              := 0;
      CDSRtoDetIVA_SOBRETASA.AsFloat         := 0;
      CDSRtoDetDESGLOZAIVA.Value             := '';
      CDSRtoDetMODO_GRAVAMEN.Value           := '';
      CDSRtoDetTIPOIVA_TASA.AsFloat          := 0;
      CDSRtoDetNROCPBTE.AsString             := CDSRtoCabNroCpbte.AsString;
      CDSRtoDetFECHAVTA.AsDateTime           := CDSRtoCabFechaVta.AsDateTime;
      CDSRtoDetTIPOCPBTE.AsString            := CDSRtoCabTipoCpbte.AsString;
      CDSRtoDetCLASECPBTE.AsString           := CDSRtoCabCLASECPBTE.AsString;
      CDSRtoDetMARGEN.AsFloat                := 100;
      CDSRtoDetLOTE.Value                    := 0;
      CDSRtoDetPRECIO_EDITABLE.Value         := 'S';
      CDSRtoDetPRESENTACION_CANT.AsFloat     := 1;
      CDSRtoDetCANTIDAD_UNIDADES.AsFloat     := 0;
      CDSRtoDetAFECTA_STOCK.Value            := 'N';
      CDSRtoDetID_MERCA_ACOPIO_DET.AsInteger := -1;

    END;
end;


procedure TDatosRemitos.CDSRtoDetCalcFields(DataSet: TDataSet);
begin
// CDSRtoDetNRO.Value := CDSRtoDet.RecNo;
//  if (CDSRtoDet.State in [dsInsert])  then
//    CDSRtoDetNRO.Value := CDSRtoDet.RecordCount+1;
end;

procedure TDatosRemitos.CDSRtoDetCantidadSetText(Sender: TField;
  const Text: String);
VAR
  Aux1, Aux2, Aux3: Extended;
  TextAux,MascaraAux:String;
BEGIN
  if (Text<>'') and (CDSRtoDetCODIGOARTICULO.AsString<>'') Then
    begin
      TextAux:=Text;
 //     if (TextAux[1]='-') Then Delete(TextAux,1,1);

      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);
      Sender.AsString := TextAux;

      DMStoreProcedure.QPrecioPorCantidad.Close;
      DMStoreProcedure.QPrecioPorCantidad.ParamByName('codigo').Value:=CDSRtoDetCODIGOARTICULO.Value;
      DMStoreProcedure.QPrecioPorCantidad.ParamByName('cant').Value  :=Sender.AsFloat;
      DMStoreProcedure.QPrecioPorCantidad.ParamByName('Lista').Value :=CDSRtoCabLISTAPRECIO.Value;

      DMStoreProcedure.QPrecioPorCantidad.Open;
      if (DMStoreProcedure.QPrecioPorCantidadCANTIDAD.AsFloat<>0) then
        begin
          CDSRtoDetUNITARIO_GRAVADO.AsFloat := DMStoreProcedure.QPrecioPorCantidadPRECIO_GRAVADO.AsFloat;
          CDSRtoDetUNITARIO_EXENTO.AsFloat  := DMStoreProcedure.QPrecioPorCantidadPRECIO_EXENTO.AsFloat;
          CDSRtoDetUNITARIO_TOTAL.AsFloat   := DMStoreProcedure.QPrecioPorCantidadPRECIO_GRAVADO.AsFloat+
                                                 DMStoreProcedure.QPrecioPorCantidadPRECIO_EXENTO.AsFloat;
          CDSRtoDetIVA_UNITARIO.AsFloat     := DMStoreProcedure.QPrecioPorCantidadIVA_IMPORTE.AsFloat;
        end;


      if (DMMain_2.VenderSinStock=False) and (CDSRtoDetAfecta_Stock.Value='S') Then
        begin
          DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
          DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('codigo').AsString    :=CDSRtoDetCodigoArticulo.Value;
          DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('deposito').AsInteger :=CDSRtoCabDeposito.Value;
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

      Aux1:= CDSRtoDetUNITARIO_EXENTO.AsFloat;
      Aux2:= CDSRtoDetUNITARIO_GRAVADO.AsFloat;

      if (CDSRtoDetModo_Gravamen.Value<>'') then
        if ((CDSRtoCabDesglozaIva.Value = 'S') and (FormRemitos.DiscriminaIva='N')) and (CDSRtoDetModo_Gravamen.Value[1] in ['G','M']) THEN
          Aux2:= Aux2 + CDSRtoDetIVA_UNITARIO.AsFloat
        else
          if (CDSRtoCabDesglozaIva.Value = 'N') and (CDSRtoDetModo_Gravamen.Value[1] in ['G','M']) THEN
            Aux2:= Aux2 + CDSRtoDetIVA_UNITARIO.AsFloat;

      MascaraAux:=MascaraDetalleUnitario;

      while pos(',',MascaraAux)<>0 Do
        delete(MascaraAux,pos(',',MascaraAux),1);

      // cantidad a Facturar se iguala a la cantidad
      CDSRtoDetCANT_FACTURA.AsFloat := CDSRtoDetCANTIDAD.AsFloat;

      Aux3:= StrToFloat(FormatFloat(MascaraAux, (Aux1 + Aux2)));
      if CDSRtoDetPRESENTACION_CANT.AsFloat>0 then
        CDSRtoDetCANTIDAD_UNIDADES.AsFloat:=Sender.AsFloat/CDSRtoDetPRESENTACION_CANT.AsFloat
      else
        CDSRtoDetCANTIDAD_UNIDADES.AsFloat:=Sender.AsFloat;

      CDSRtoDetUnitario_TotalSetText(CDSRtoDetUNITARIO_TOTAL,FloatToStr(Aux3));

    END;
END;

procedure TDatosRemitos.CDSRtoDetCODIGOARTICULOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if FormRemitos<>nil then
    begin
      if FormRemitos.VerCodigoAlternativo1.Checked=True then
        Text:=Trim(CDSRtoDetMUESTRACODALTERNATIVO.Value)
      else
        Text:=Trim(CDSRtoDetCODIGOARTICULO.Value);
    end;
end;

procedure TDatosRemitos.CDSRtoDetUnitario_TotalGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR
  Aux1: Extended;
BEGIN
  if FormRemitos<>nil then
    begin
      Aux1:=CDSRtoDetUNITARIO_TOTAL.AsFloat;
      if (CDSRtoDetMODO_GRAVAMEN.Value<>'') and (CDSRtoDetMODO_GRAVAMEN.Value[1] in ['G','M']) Then
        if (CDSRtoCabDESGLOZAIVA.Value='S') and (FormRemitos.DiscriminaIva='N') then
          Aux1:= CDSRtoDetUNITARIO_TOTAL.AsFloat + CDSRtoDetIVA_UNITARIO.AsFloat + CDSRtoDetUNITARIO_EXENTO.ASFloat
        else
          if (CDSRtoCabDESGLOZAIVA.Value='N')then
            Aux1:= CDSRtoDetUNITARIO_TOTAL.AsFloat + CDSRtoDetIVA_UNITARIO.AsFloat + CDSRtoDetUNITARIO_EXENTO.AsFloat;

      if FormRemitos.dbcMoneda.KeyValue>-1 then
        begin
          QMonedas.Close;
          QMonedas.ParamByName('id').Value:=CDSRtoDetID_MONEDA.Value;
          QMonedas.Open;
          if Not(QMonedas.IsEmpty) then
            Aux1 := Aux1 * QMonedasCOTIZACION.AsFloat;
          QMonedas.Close;
          QMonedas.ParamByName('id').Value:=FormRemitos.dbcMoneda.Value;
          QMonedas.Open;
          if Not(QMonedas.IsEmpty) then
            Aux1 := Aux1 / QMonedasCOTIZACION.AsFloat;
          QMonedas.Close;
        end;

      Text:= FormatFloat(MascaraDetalleUnitario,Aux1);
    end;
END;

procedure TDatosRemitos.CDSRtoDetIVA_TasaSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=Text;
  CDSRtoDetIVA_SobreTasa.AsFloat := Sender.AsFloat*0.5;
end;

procedure TDatosRemitos.CDSRtoDetTotalGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
var
  Aux1: Extended;
BEGIN
  if FormRemitos<>nil then
    begin
      Aux1:=CDSRtoDetTOTAL.AsFloat;
      if (CDSRtoDetMODO_GRAVAMEN.Value<>'') and (CDSRtoDetMODO_GRAVAMEN.Value[1] in ['G','M']) Then
        if (CDSRtoCabDESGLOZAIVA.Value='S') and (FormRemitos.DiscriminaIva='N') then
          Aux1:= CDSRtoDetTOTAL.AsFloat + CDSRtoDetIVA_TOTAL.AsFloat
        else
          if (CDSRtoCabDESGLOZAIVA.Value='N')then
            Aux1:= CDSRtoDetTOTAL.AsFloat + CDSRtoDetIVA_TOTAL.AsFloat;

      if FormRemitos.dbcMoneda.KeyValue>-1 then
        begin
          QMonedas.Close;
          QMonedas.ParamByName('id').Value:=CDSRtoDetID_MONEDA.Value;
          QMonedas.Open;
          if Not(QMonedas.IsEmpty) then
            Aux1 := Aux1 * QMonedasCOTIZACION.AsFloat;
          QMonedas.Close;
          QMonedas.ParamByName('id').Value:=FormRemitos.dbcMoneda.Value;
          QMonedas.Open;
          if Not(QMonedas.IsEmpty) then
            Aux1 := Aux1 / QMonedasCOTIZACION.AsFloat;
          QMonedas.Close;
        end;

      Text := FormatFloat(',0.00', Aux1);
    end;
end;

procedure TDatosRemitos.CDSImpuestosNewRecord(DataSet: TDataSet);
begin
  CDSImpuestosID_IMPUESTO.Value := IBGImpuesto.IncrementIBX(1);
  CDSImpuestosID_RTOCAB.Value   := CDSRtoCabID_RTO.Value;
end;

procedure TDatosRemitos.CDSRtoCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Dato no Valido');
          FormRemitos.RxCTipoCpbte.SetFocus;
        END;
      IF CDSRtoCab.State = dsInsert THEN
        UltimoComprobante;
    end;
end;

procedure TDatosRemitos.CDSRtoCabNETOGRAV2GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR Aux:Real;
begin
  Aux:=(Sender.AsFloat);
  IF CDSRtoCabDesglozaIva.Value = 'N' THEN
    Aux:=(Aux + (Aux * Var_TasaIva * 0.01));

  Aux:= RoundTo(Aux ,-3);
  Aux:= RoundTo(Aux ,-2);

  Text:=FormatFloat(MascaraCabecera,Aux);

end;

procedure TDatosRemitos.CDSRtoCabVENDEDORSetText(Sender: TField;
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

procedure TDatosRemitos.CDSRtoDetDescuentoSetText(Sender: TField;
  const Text: String);
VAR
  PrecioUnitario: Extended;
BEGIN
  if Text<>'' Then
    begin
      Sender.AsString := Text;
      if (Sender.AsFloat > DMMain_2.TopeDsctoLinea) then
        Sender.AsFloat:=DMMain_2.TopeDsctoLinea;
      Sender.AsFloat  := RoundTo(Sender.AsFloat,-2);
      PrecioUnitario  := CDSRtoDetUNITARIO_TOTAL.AsFloat;
      if (CDSRtoDetModo_Gravamen.Value<>'') and (CDSRtoDetModo_Gravamen.Value[1] in ['G','M']) then
        if ((CDSRtoCabDesglozaIva.Value = 'S') and (FormRemitos.DiscriminaIva='N')) Then
          PrecioUnitario := CDSRtoDetUNITARIO_GRAVADO.AsFloat + CDSRtoDetIVA_UNITARIO.AsFloat
        else
          if (CDSRtoCabDesglozaIva.Value = 'N')  Then
            PrecioUnitario := CDSRtoDetUNITARIO_GRAVADO.AsFloat + CDSRtoDetIVA_UNITARIO.AsFloat;
      CDSRtoDetUnitario_TotalSetText(CDSRtoDetUNITARIO_TOTAL,FloatToStr(PrecioUnitario));
    end;
END;

end.
