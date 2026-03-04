unit DMRemitos;

interface

uses
  Windows, Messages, SysUtils,Classes, Graphics, Controls, Forms, Dialogs,
  IBGenerator, Db, DBClient, Math, Provider, DateUtils,System.Types,
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
    CDSExistenciaFISICO: TFloatField;
    CDSExistenciaCOMPROMETIDO: TFloatField;
    CDSExistenciaSALDO: TFloatField;
    CDSExistenciaDEPOSITO_STK: TIntegerField;
    CDSExistenciaEN_TRANSITO: TFloatField;
    CDSExistenciaDEPOSITO_NOMBRE: TStringField;
    DSPExistencia: TDataSetProvider;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
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
    CDSBuscaLdrCODIGO_LDR: TIntegerField;
    CDSBuscaLdrDIRECCION: TStringField;
    CDSBuscaLdrNOMBRE: TStringField;
    CDSBuscaLdrCPOSTAL: TStringField;
    DSPBuscaCondVenta: TDataSetProvider;
    CDSBuscaCondVenta: TClientDataSet;
    CDSBuscaCondVentaCODIGOPAGO: TIntegerField;
    CDSBuscaCondVentaDESCUENTO: TFloatField;
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
    CDSRtoCabN_OPERACION2: TFloatField;
    CDSRtoCabNETOGRAV1: TFloatField;
    CDSRtoCabNETOGRAV2: TFloatField;
    CDSRtoCabDSTO: TFloatField;
    CDSRtoCabDSTOIMPORTE: TFloatField;
    CDSRtoCabNETOEXEN1: TFloatField;
    CDSRtoCabNETOEXEN2: TFloatField;
    CDSRtoCabTOTAL: TFloatField;
    CDSRtoCabDEBE: TFloatField;
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
    CDSRtoCabCOMISIONVENDEDOR: TFloatField;
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
    CDSRtoDetRENGLON: TFloatField;
    CDSRtoDetFECHAVTA: TSQLTimeStampField;
    CDSRtoDetCODIGOARTICULO: TStringField;
    CDSRtoDetDETALLE: TStringField;
    CDSRtoDetUNIDAD: TStringField;
    CDSRtoDetCANTIDAD: TFloatField;
    CDSRtoDetDESGLOZAIVA: TStringField;
    CDSRtoDetMODO_GRAVAMEN: TStringField;
    CDSRtoDetIVA_TASA: TFloatField;
    CDSRtoDetTIPOIVA_TASA: TIntegerField;
    CDSRtoDetIVA_SOBRETASA: TFloatField;
    CDSRtoDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSRtoDetDESCUENTO: TFloatField;
    CDSRtoDetTOTAL: TFloatField;
    CDSRtoDetDEPOSITO: TIntegerField;
    CDSRtoDetMARGEN: TFloatField;
    CDSRtoDetAFECTA_STOCK: TStringField;
    CDSRtoDetCALCULA_SOBRETASA: TStringField;
    CDSRtoDetGRAVADO_IB: TStringField;
    CDSRtoDetID_MONEDA: TIntegerField;
    CDSRtoDetCOTIZACION: TFloatField;
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
    CDSImpuestosNETO: TFloatField;
    CDSImpuestosTASA: TFloatField;
    CDSImpuestosIMPORTE: TFloatField;
    CDSCondVenta: TClientDataSet;
    CDSCondVentaCODIGOCLIENTE: TStringField;
    CDSCondVentaCODIGOPAGO: TIntegerField;
    CDSCondVentaDESCUENTO: TFloatField;
    CDSCondVentaPOR_DEFECTO: TStringField;
    CDSCondVentaDETALLE: TStringField;
    CDSCondVentaDIAS: TIntegerField;
    CDSCondVentaDESCUENTO_FPAGO: TFloatField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalRECARGO: TFloatField;
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
    CDSIvaTASA: TFloatField;
    CDSIvaCOLUMNA: TSmallintField;
    spRestaurarNV: TFDStoredProc;
    spPasaFiscal: TFDStoredProc;
    QAnulacion: TFDQuery;
    CDSListaPrecio: TClientDataSet;
    DSPListaPrecio: TDataSetProvider;
    CDSListaPrecioID: TIntegerField;
    CDSListaPrecioNOMBRE: TStringField;
    CDSListaPrecioF_PAGO: TIntegerField;
    CDSTransporte: TClientDataSet;
    DSPTransporte: TDataSetProvider;
    CDSTransporteID: TIntegerField;
    CDSTransporteNOMBRE: TStringField;
    CDSTransporteDIRECCION: TStringField;
    CDSTransporteTELEFONO: TStringField;
    CDSTransporteLOCALIDAD: TStringField;
    CDSTarea: TClientDataSet;
    DSPTarea: TDataSetProvider;
    CDSTareaID: TIntegerField;
    CDSTareaTAREA: TStringField;
    spMarcarImpreso: TFDStoredProc;
    CDSRtoDetTOTAL_GRAVADO: TFloatField;
    CDSRtoDetTOTAL_EXENTO: TFloatField;
    CDSRtoCabCON_GTIA_EXTENDIDA: TStringField;
    CDSRtoCabPOLIZA: TStringField;
    CDSRtoDetCOSTO_GRAVADO: TFloatField;
    CDSRtoDetCOSTO_EXENTO: TFloatField;
    CDSRtoDetCOSTO_TOTAL: TFloatField;
    CDSRtoDetUNITARIO_GRAVADO: TFloatField;
    CDSRtoDetIVA_UNITARIO: TFloatField;
    CDSRtoDetUNITARIO_EXENTO: TFloatField;
    CDSRtoDetUNITARIO_TOTAL: TFloatField;
    CDSRtoDetIVA_TOTAL: TFloatField;
    spRestaurarPres: TFDStoredProc;
    CDSRtoCabMUESTRATELEFONO1: TStringField;
    CDSRtoCabMUESTRATELEFONO2: TStringField;
    spRestaurarNP: TFDStoredProc;
    QLimpiarRtosSinFactura: TFDQuery;
    QMarcarEntregado: TFDQuery;
    CDSRtoDetMUESTRAMONEDA: TStringField;
    CDSRtoDetMUESTRASIGNO: TStringField;
    CDSDetalleXML: TClientDataSet;
    CDSMoneda: TClientDataSet;
    DSPMoneda: TDataSetProvider;
    DSMoneda: TDataSource;
    spNoFacturable: TFDStoredProc;
    spRecuperarRto: TFDStoredProc;
    CDSRtoCabCANT_BULTOS: TIntegerField;
    CDSRtoDetMUESTRACONTENIDO: TFloatField;
    CDSRtoDetMUESTRAPRESENTACION: TFloatField;
    CDSRtoCabMUESTRALDIRECCIONLDR: TStringField;
    CDSRtoDetCODIGOBARRA: TStringField;
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
    CDSClientesLIMITE_CREDITO: TFloatField;
    CDSClientesSALDOINICIAL: TFloatField;
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
    CDSEmpresaTASA_PERCEPCION_IB: TFloatField;
    CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField;
    CDSEmpresaPROVINCIA: TIntegerField;
    CDSEmpresaTASA_RET_IIBB: TFloatField;
    CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    CDSRtoDetCANT_FACTURA: TFloatField;
    CDSClientesOBSERVACIONES1: TStringField;
    CDSClientesOBSERVACIONES2: TStringField;
    CDSRtoCabMUESTRAOBSCLIENTE1: TStringField;
    CDSRtoCabMUESTRAOBSCLIENTE2: TStringField;
    CDSRtoCabDEVOLUCION: TStringField;
    CDSClientesAVISO: TStringField;
    CDSRtoCabMUESTRADIRTRANSPORTE: TStringField;
    CDSRtoCabMUESTRATETRANSPORTE: TStringField;
    CDSRtoCabMUESTRALOCALITRANSPORTE: TStringField;
    CDSRtoCabID_CHOFER: TIntegerField;
    CDSRtoCabMUESTRACHOFER: TStringField;
    CDSRtoCabTRASNPORTE_UNIDAD: TIntegerField;
    CDSRtoCabTRASNPORTE_ADICIONAL: TIntegerField;
    CDSRtoCabMUESTRANOMBRETRANSPORTE: TStringField;
    CDSRtoCabMUESTRACPOSTALLDR: TStringField;
    CDSRtoCabMUESTRALOCALIDADLDR: TStringField;
    CDSRtoDetPRESENTACION_CANT: TFloatField;
    CDSRtoDetCANTIDAD_UNIDADES: TFloatField;
    CDSRtoCabMUESTRATELE: TStringField;
    CDSRtoCabPEDIDO_ID: TIntegerField;
    CDSRtoDetDETALLE_ADICIONAL: TStringField;
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
    CDSRtoCabMUESTRANOTAPEDIDO: TStringField;
    CDSRtoCabMUESTRA_ID_NOTAPEDIDO: TIntegerField;
    CDSRtoDetMUESTRARUBRO: TStringField;
    CDSRtoDetMUESTRADETALLERUBRO: TStringField;
    CDSRtoDetMUESTRASUBRUB: TStringField;
    CDSRtoDetMUESTRADETALLESUBRUB: TStringField;
    CDSRtoCabRENGLONES: TSmallintField;
    CDSRtoCabFECHA_DEVOLUCION_ALQ: TSQLTimeStampField;
    CDSRtoCabDIASALQ: TFloatField;
    CDSRtoCabFECHA_ENTREGA: TSQLTimeStampField;
    CDSRtoDetPRESENTACION_UNIDAD: TStringField;
    QMonedas: TFDQuery;
    QMonedasID: TIntegerField;
    QMonedasMONEDA: TStringField;
    QMonedasCOTIZACION: TFloatField;
    QMonedasSIGNO: TStringField;
    QMonedasORDEN: TSmallintField;
    QMonedasCOTIZACION_COMPRA: TFloatField;
    QSaldos: TFDQuery;
    QSaldosCODIGO: TStringField;
    QSaldosNOMBRE: TStringField;
    QSaldosULTIMOPAGO: TSQLTimeStampField;
    QSaldosIMPORTEULTIMOPAGO: TFloatField;
    QSaldosVENCIDO30: TFloatField;
    QSaldosVENCIDO60: TFloatField;
    QSaldosVENCIDO90: TFloatField;
    QSaldosMUYVENCIDO: TFloatField;
    QSaldosANTICIPOS: TFloatField;
    QSaldosTOTAL: TFloatField;
    QSaldosSALDO: TFloatField;
    QCoefPrecio: TFDQuery;
    QListaPrecio: TFDQuery;
    QTransporte: TFDQuery;
    QTarea: TFDQuery;
    QTroqueles: TFDQuery;
    QCoefPrecioMAX: TFloatField;
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
    QComprobCONTROLADOR_NROREG: TStringField;
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
    QMoneda: TFDQuery;
    CDSMonedaID: TIntegerField;
    CDSMonedaMONEDA: TStringField;
    CDSMonedaCOTIZACION: TFloatField;
    CDSMonedaSIGNO: TStringField;
    CDSMonedaORDEN: TSmallintField;
    CDSMonedaCOTIZACION_COMPRA: TFloatField;
    QCodigoBarra: TFDQuery;
    QCodigoBarraMAX: TStringField;
    QUnidades: TFDQuery;
    QTraerRecargoDeLista: TFDQuery;
    QTraerRecargoDeListaRECARGO: TFloatField;
    QPrimerLdr: TFDQuery;
    QPrimerLdrMIN: TIntegerField;
    QPrimerConVta: TFDQuery;
    QPrimerConVtaMIN: TIntegerField;
    QPrecioEspecial: TFDQuery;
    QPrecioEspecialPRECIOPACTADO: TFloatField;
    QCondVentaDefecto: TFDQuery;
    CDSRtoDetID_FACTURA: TIntegerField;
    CDSRtoDetMUESTRAFACTURA: TStringField;
    CDSRtoDetCODIGO: TStringField;
    CDSSucursalCUIT: TStringField;
    CDSSucursalRAZONSOCIAL: TStringField;
    CDSRtoDetID_DET_OPRODUCCION: TIntegerField;
    CDSRtoDetMUESTRALISTAPRECIO: TIntegerField;
    CDSRtoDetSUCURSAL: TIntegerField;
    CDSPersonalCOMISION: TFloatField;
    CDSPersonalMUESTRADEPOSITO: TIntegerField;
    CDSRtoCabMUESTRAPROVINCIA: TStringField;
    CDSRtoCabLETRACOT: TStringField;
    CDSEmpresaNOMBRE_FANTASIA: TStringField;
    CDSEmpresaID_CPOSTAL: TIntegerField;
    CDSTransporteCONDICION_IVA: TIntegerField;
    CDSTransporteCUIT: TStringField;
    CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    CDSEmpresaCODIGO_COT: TStringField;
    CDSEmpresaCOD_ACTIVIDAD: TStringField;
    CDSEmpresaDIRECCION_NRO: TStringField;
    CDSRtoCabMUESTRADOMINIOUNIDTR: TStringField;
    CDSRtoCabCOT: TStringField;
    CDSRtoCabMUESTRADIRECCION_CALLE: TStringField;
    CDSRtoCabMUESTRADIRECCION_NRO: TStringField;
    CDSRtoCabMUESTRADIRECCION_PISO: TStringField;
    CDSRtoCabMUESTRADIRECCION_DEPTO: TStringField;
    CDSStockPLU_SECCION: TStringField;
    CDSRtoCabMUESTRANOMBREUSUARIOREAL: TStringField;
    CDSEmpresaPUNITORIOS: TFloatField;
    CDSEmpresaNRO_RENSPA: TStringField;
    CDSEmpresaNRO_RUCA: TIntegerField;
    CDSEmpresaCUIT_AUTORIZADO: TStringField;
    CDSEmpresaNOMBRE_AUTORIZADO: TStringField;
    CDSEmpresaCBU: TStringField;
    CDSEmpresaAG_PERCEPCION_IVA: TStringField;
    CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField;
    CDSEmpresaTASA_LEY15311: TFloatField;
    DSPBuscaLotes: TDataSetProvider;
    IBGRtoLote: TIBGenerator;
    CDSBuscaLotes: TClientDataSet;
    CDSBuscaLotesLOTE: TStringField;
    CDSBuscaLotesDESPACHO: TStringField;
    CDSBuscaLotesSALDO: TFloatField;
    CDSBuscaLotesID: TIntegerField;
    CDSBuscaLotesCODIGO: TStringField;
    CDSBuscaLotesFECHA_ENTRADA: TSQLTimeStampField;
    CDSBuscaLotesFECHA_VTO: TSQLTimeStampField;
    CDSBuscaLotesCANTIDAD: TFloatField;
    CDSBuscaLotesDEPOSITO: TIntegerField;
    QRtoLote: TFDQuery;
    DSPRtoLote: TDataSetProvider;
    CDSRtoLote: TClientDataSet;
    DSRtoLote: TDataSource;
    QRtoLoteID: TIntegerField;
    QRtoLoteID_DET: TIntegerField;
    QRtoLoteID_RTO: TIntegerField;
    QRtoLoteID_LOTE: TIntegerField;
    QRtoLoteCODIGO: TStringField;
    QRtoLoteLOTE: TStringField;
    QRtoLoteDESPACHO: TStringField;
    QRtoLoteCANTIDAD: TFloatField;
    QRtoLoteFECHA: TSQLTimeStampField;
    QRtoLoteFECHAVTO: TSQLTimeStampField;
    QRtoLoteTIPO_COMPROB: TStringField;
    QRtoLoteDEPOSITO: TIntegerField;
    CDSRtoLoteID: TIntegerField;
    CDSRtoLoteID_DET: TIntegerField;
    CDSRtoLoteID_RTO: TIntegerField;
    CDSRtoLoteID_LOTE: TIntegerField;
    CDSRtoLoteCODIGO: TStringField;
    CDSRtoLoteLOTE: TStringField;
    CDSRtoLoteDESPACHO: TStringField;
    CDSRtoLoteCANTIDAD: TFloatField;
    CDSRtoLoteFECHA: TSQLTimeStampField;
    CDSRtoLoteFECHAVTO: TSQLTimeStampField;
    CDSRtoLoteTIPO_COMPROB: TStringField;
    CDSRtoLoteDEPOSITO: TIntegerField;
    CDSRtoDetCONTROLA_TRAZABILIDAD: TStringField;
    CDSStockCONTROL_TRAZABILIDAD: TStringField;
    CDSRtoCabREMITO_IMPRENTA: TStringField;
    CDSRtoCabREMITO_FECHA_RANGO: TStringField;
    CDSRtoCabREMITO_DIRECCION: TStringField;
    CDSRtoCabREMITO_CAI: TStringField;
    CDSRtoCabREMITO_VENCIMIENTO_CAI: TStringField;
    QComprobREMITO_IMPRENTA: TStringField;
    QComprobREMITO_FECHA_RANGO: TStringField;
    QComprobREMITO_DIRECCION: TStringField;
    QComprobREMITO_CAI: TStringField;
    QComprobREMITO_VENCIMIENTO_CAI: TStringField;
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
    procedure CDSRtoDetCantidadALQSetText(Sender: TField;
      const Text: String);
    procedure CDSRtoCabDEVOLUCIONChange(Sender: TField);
    procedure CDSRtoCabFECHA_DEVOLUCION_ALQChange(Sender: TField);
    procedure CDSRtoCabDiasAlqChange(Sender: TField);
    procedure CDSRtoCabFECHA_ENTREGAChange(Sender: TField);
    procedure CDSRtoCabFECHAVTAChange(Sender: TField);
    procedure CDSRtoDetID_FACTURAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CDSRtoDetCANTIDAD_UNIDADESSetText(Sender: TField;
      const Text: string);
    procedure CDSRtoCabDSTOIMPORTEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSRtoLoteID_LOTESetText(Sender: TField; const Text: string);
    procedure CDSRtoLoteNewRecord(DataSet: TDataSet);

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
    procedure ActualizaCPBTEDet(Sender: TField);

    { Public declarations }
  end;

var
  DatosRemitos: TDatosRemitos;

implementation

uses URemitos,DMBuscadoresForm,UDMain_FD,
    UBuscadorArticulos, UMuestraListaCodBarra, DMStoreProcedureForm,
  UMuestraSaldoCliente, UClaveVerificada, UMuestraUltimoNroCpbte;
{$R *.DFM}
procedure TDatosRemitos.ActualizaCPBTEDet(Sender: TField);
var   DetAct:String; CantAct, DescAct: Double;
begin
  //////ERIK 13/01/2021
  ///

  if (CDSRtoDet.Active) and (not CDSRtoDet.IsEmpty) then
    begin
      CDSImpuestos.DisableControls;
      try
        CDSImpuestos.EmptyDataSet;
      finally
        CDSImpuestos.EnableControls;
      end;

      CDSRtoDet.DisableControls;
      if CDSRtoDet.State in [dsInsert,dsEdit] then CDSRtoDet.Post;
      CDSRtoDet.First;
      while Not CDSRtoDet.EoF do
        begin
          CDSRtoDet.Edit;
          if Sender=CDSRtoCabFECHAVTA then
            CDSRtoDetFECHAVTA.AsDateTime  :=  CDSRtoCabFECHAVTA.AsDateTime
          else
            if Sender=CDSRtoCabNroCpbte then
              CDSRtoDetNroCpbte.AsString    :=  CDSRtoCabNroCpbte.AsString
            else
              begin
                DetAct                        :=  CDSRtoDetDETALLE.AsString;
                DescAct                       :=  CDSRtoDetDESCUENTO.AsFloat;
                CantAct                       :=  CDSRtoDetCANTIDAD.AsFloat;
                CDSRtoDetTIPOCPBTE.Value      :=  CDSRtoCabTIPOCPBTE.Value;
                CDSRtoDetCLASECPBTE.Value     :=  CDSRtoCabCLASECPBTE.Value;
                CDSRtoDetNroCpbte.AsString    :=  CDSRtoCabNroCpbte.AsString;
                CDSRtoDetDEPOSITO.AsInteger   :=  CDSRtoCabDEPOSITO.AsInteger;
                CDSRtoDetCODIGOARTICULO.Text  :=  CDSRtoDetCODIGOARTICULO.AsString;
                CDSRtoDetDETALLE.AsString     :=  DetAct;
                CDSRtoDetCantidad.Text        :=  FloatToStr(CantAct);
                CDSRtoDetDESCUENTO.Text       :=  FloatToStr(DescAct);
              end;
          CDSRtoDet.Post;
          CDSRtoDet.Next;
        end;
      CDSRtoDet.EnableControls;
    end;

end;


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
//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='LTECREDITO';
//  DMMain_FD.QOpciones.Open;

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
//          DMMain_FD.QOpciones.Close;
//          DMMain_FD.QOpciones.ParamByName('Opcion').Value:='CTRDEUDA';
//          DMMain_FD.QOpciones.Open;
//          if DMMain_FD.QOpciones.Fields[0].AsString[1]='S' then
          if DMMain_FD.ControlaDeuda then
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
          CDSRtoDetCOSTO_EXENTO.AsFloat  := RoundTo( UnitarioExento * ( TasaCosto * 0.01),DMMain_FD.DecRedondeo);
          CDSRtoDetCOSTO_GRAVADO.AsFloat := RoundTo( UnitarioGravado * ( TasaCosto * 0.01),DMMain_FD.DecRedondeo);
          CDSRtoDetCOSTO_TOTAL.AsFloat   := CDSRtoDetCOSTO_EXENTO.AsFloat +
                                            CDSRtoDetCOSTO_GRAVADO.AsFloat;

          CDSRtoDetUNITARIO_EXENTO.AsFloat  := RoundTo( UnitarioExento * ( TasaVta * 0.01),DMMain_FD.DecRedondeo);
          CDSRtoDetUNITARIO_GRAVADO.AsFloat := RoundTo( (UnitarioGravado + UnitarioIva) * ( TasaVta * 0.01),DMMain_FD.DecRedondeo);
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
      CDSRtoDetCOSTO_EXENTO.AsFloat  := RoundTo( UnitarioExento * ( TasaCosto * 0.01),DMMain_FD.DecRedondeo);
      CDSRtoDetCOSTO_GRAVADO.AsFloat := RoundTo( UnitarioGravado * ( TasaCosto * 0.01),DMMain_FD.DecRedondeo);
      CDSRtoDetCOSTO_TOTAL.AsFloat   := CDSRtoDetCOSTO_EXENTO.AsFloat +
                                        CDSRtoDetCOSTO_GRAVADO.AsFloat;

      CDSRtoDetUNITARIO_EXENTO.AsFloat  := RoundTo( UnitarioExento * ( TasaVta * 0.01),DMMain_FD.DecRedondeo);
      CDSRtoDetUNITARIO_GRAVADO.AsFloat := RoundTo( (UnitarioGravado + UnitarioIva) * ( TasaVta * 0.01),DMMain_FD.DecRedondeo);
      CDSRtoDetUnitario_TotalSetText( CDSRtoDetUNITARIO_TOTAL,FloatToStr( CDSRtoDetUNITARIO_GRAVADO.AsFloat+CDSRtoDetUNITARIO_EXENTO.AsFloat));

    end;

end;

procedure TDatosRemitos.AplicarMascarasNumericas;
VAR I:Byte;
begin
//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETUNITARI';
//  DMMain_FD.QOpciones.Open;
  MascaraDetalleUnitario:=DMMain_FD.MascaraDetalleUnitario; //QOpciones.Fields[0].AsString;
  TFloatField(CDSRtoDetUnitario_Total).EditFormat    :=MascaraDetalleUnitario;
  TFloatField(CDSRtoDetUnitario_Total).DisplayFormat :=MascaraDetalleUnitario;

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETCANTIDA';
//  DMMain_FD.QOpciones.Open;
  MascaraDetalleCantidad:=DMMain_FD.MascaraDetalleCantidad;//QOpciones.Fields[0].AsString;
  TFloatField(CDSRtoDetCantidad).EditFormat    :=MascaraDetalleCantidad;
  TFloatField(CDSRtoDetCantidad).DisplayFormat :=MascaraDetalleCantidad;
  DMMain_FD.QOpciones.Close;

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETDESCUEN';
//  DMMain_FD.QOpciones.Open;
  MascaraDetalleDescuento:=',0.00';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSRtoDetDescuento).EditFormat    :=',0.00';//MascaraDetalleDescuento;
  TFloatField(CDSRtoDetDescuento).DisplayFormat :=',0.00';//MascaraDetalleDescuento;

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETTOTAL';
//  DMMain_FD.QOpciones.Open;
  MascaraDetalleTotal:=',0.00';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSRtoDetTotal).EditFormat        := ',0.00';//MascaraDetalleTotal;
  TFloatField(CDSRtoDetTotal).DisplayFormat     := ',0.00';//MascaraDetalleTotal;


//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='IVATASA';
//  DMMain_FD.QOpciones.Open;
  MascaraIvaTasa:='0.0';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSRtoDetIVA_Tasa).EditFormat          := '0.0';//MascaraIvaTasa;
  TFloatField(CDSRtoDetIVA_Tasa).DisplayFormat       := '0.0';//MascaraIvaTasa;
  TFloatField(CDSRtoDetIVA_SobreTasa).EditFormat     := '0.0';//MascaraIvaTasa;
  TFloatField(CDSRtoDetIVA_SobreTasa).DisplayFormat  := '0.0';//MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).EditFormat           := '0.0';//MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).DisplayFormat        := '0.0';//MascaraIvaTasa;

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='IVAIMPORTES';
//  DMMain_FD.QOpciones.Open;
  MascaraIvaImporte:=',0.00';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSImpuestosIMPORTE).EditFormat        := ',0.00';//MascaraIvaImporte;
  TFloatField(CDSImpuestosIMPORTE).DisplayFormat     := ',0.00';//MascaraIvaImporte;
  TFloatField(CDSImpuestosNETO).EditFormat           := ',0.00';//MascaraIvaImporte;
  TFloatField(CDSImpuestosNETO).DisplayFormat        := ',0.00';//MascaraIvaImporte;

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTACABECERA';
//  DMMain_FD.QOpciones.Open;
  MascaraCabecera:=',0.00';//DMMain_FD.QOpciones.Fields[0].AsString;
  For i:=0 to CDSRtoCab.FieldCount-1 do
    begin
      if (CDSRtoCab.Fields[i].DataType=ftBCD) or
         (CDSRtoCab.Fields[i].DataType=ftFMTBcd) or
         (CDSRtoCab.Fields[i].DataType=ftFloat) Then
       begin
         // TFloatField(wwCDSRtoDet.Fields[i]).EditMask:='###,##0.0';
          TFloatField(CDSRtoCab.Fields[i]).EditFormat   :=',0.00';//MascaraCabecera;
          TFloatField(CDSRtoCab.fields[i]).DisplayFormat:=',0.00';//MascaraCabecera;
       end;
    end;
  CDSRtoDetCOSTO_GRAVADO.DisplayFormat:=',0.00';
  CDSRtoDetCOSTO_EXENTO.DisplayFormat :=',0.00';
  CDSRtoDetCOSTO_TOTAL.DisplayFormat  :=',0.00';

//  DMMain_FD.QOpciones.Close;
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
              CDSImpuestosNeto.AsFloat    := CDSImpuestosNeto.AsFloat + CDSRtoDetTOTAL_GRAVADO.AsFloat ;
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
      CDSRtoCabMUESTRACOMPROBANTE.Value      := QComprobDENOMINACION.Value;
      CDSRtoCabLETRARTO.Value                := QComprobLETRA.Value;
      CDSRtoCabTIPOCPBTE.Value               := QComprobTIPO_COMPROB.Value;
      CDSRtoCabCLASECPBTE.Value              := QComprobCLASE_COMPROB.Value;
      FormRemitos.Calcula_iva_articulo       := QComprobCALCULA_IVA_ARTICULOS.Value='S';
      CDSRtoCabREMITO_ELECTRONICO.Value      := QComprobFACTURAELECTRONICA.Value;
      CDSRtoCabMUESTRACODIGOAFIP.Value       := QComprobCODIGO_AFIP.Value;
      Renglones                              := QComprobLINEAS_DETALLE.Value;
      CDSRtoCabREMITO_IMPRENTA.Value         := QComprobREMITO_IMPRENTA.Value;
      CDSRtoCabREMITO_FECHA_RANGO.Value      := QComprobREMITO_FECHA_RANGO.Value;
      CDSRtoCabREMITO_DIRECCION.Value        := QComprobREMITO_DIRECCION.Value;
      CDSRtoCabREMITO_CAI.Value              := QComprobREMITO_CAI.Value;
      CDSRtoCabREMITO_VENCIMIENTO_CAI.Value  := QComprobREMITO_VENCIMIENTO_CAI.Value;
    END
  ELSE
    BEGIN
      Result:=False;
      CDSRtoCabMUESTRACOMPROBANTE.Value      := '';
      CDSRtoCabLETRARTO.Value                := '';
      CDSRtoCabCLASECPBTE.Value              := '';
      CDSRtoCabTIPOCPBTE.Value               := '';
      CDSRtoCabREMITO_ELECTRONICO.Value      := 'N';
      CDSRtoCabMUESTRACODIGOAFIP.Value       := '';
      FormRemitos.Calcula_iva_articulo       := True;
      Renglones                              := 0;
      CDSRtoCabREMITO_IMPRENTA.Value         := '';
      CDSRtoCabREMITO_FECHA_RANGO.Value      := '';
      CDSRtoCabREMITO_DIRECCION.Value        := '';
      CDSRtoCabREMITO_CAI.Value              := '';
      CDSRtoCabREMITO_VENCIMIENTO_CAI.Value  := '';
    END;
END;

FUNCTION TDatosRemitos.ASignarArticulo(Dato: STRING): Boolean;
var Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
 Decimales:String;
 PrecioPLU  :Extended;
 PrecioFinal:Extended;
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
              DMMain_FD.DsctoLineaTemp:=DMMain_FD.TopeDsctoLinea;
              DMMain_FD.TopeDsctoLinea:=DMBuscadores.QDesctoArticuloDESCUENTO.AsFloat;
            end;
          DMBuscadores.QDesctoArticulo.Close;

          CDSRtoDetDETALLE.AsString        := CDSStockDETALLE_STK.AsString;
          CDSRtoDetUNIDAD.Value            := CDSStockUNIDAD.Value;
          CDSRtoDetCOSTO_GRAVADO.AsFloat   := RoundTo((CDSStockFIJACION_PRECIO_GRAVADO.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat),DMMain_FD.DecRedondeo);
          CDSRtoDetCOSTO_EXENTO.AsFloat    := RoundTo((CDSStockFIJACION_PRECIO_EXENTO.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat),DMMain_FD.DecRedondeo);
          CDSRtoDetCOSTO_TOTAL.AsFloat     := RoundTo((CDSStockFIJACION_PRECIO_TOTAL.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat),DMMain_FD.DecRedondeo);
          CDSRtoDetAFECTA_STOCK.Value      := CDSStockCONTROLASTOCK.Value;
          {
          if CDSRtoCabDEVOLUCION.Value='S' then
            CDSRtoDetAFECTA_STOCK.Value      := 'N';
          }
          CDSRtoDetMODO_GRAVAMEN.Value     := CDSStockMODO_GRAVAMEN.Value;
          CDSRtoDetTIPOIVA_TASA.Value      := CDSStockTASA_IVA.Value;
          CDSRtoDetTIPOIVA_SOBRETASA.Value := CDSStockSOBRETASA_IVA.Value;
          CDSRtoDetMUESTRACODALTERNATIVO.AsString := CDSStockREEMPLAZO_STK.Value;
          //Asigno el deposito que tengo en el encabezado...
          CDSRtoDetDeposito.Value := CDSRtoCabDeposito.Value;
          //segun el tipo de inscripcion verifico si descrimina o no iva y si cobra Sobre tasa
          CDSRtoDetDesglozaIVA.Value      := CDSRtoCabDesglozaIva.Value;
          CDSRtoDetCalcula_SobreTasa.Value:= CDSRtoCabCalcula_SobreTasa.Value;

          if CDSStockPRESENTACION_CANTIDAD.ASFloat>0 then
            CDSRtoDetPRESENTACION_CANT.AsFloat   := CDSStockPRESENTACION_CANTIDAD.AsFloat
          else
            CDSRtoDetPRESENTACION_CANT.AsFloat   := 1;

          if CDSStockPRESENTACION_UNIDAD.AsString<>'' then
            CDSRtoDetPRESENTACION_UNIDAD.AsString   := CDSStockPRESENTACION_UNIDAD.AsString
          else
            CDSRtoDetPRESENTACION_UNIDAD.AsString   := CDSStockUNIDAD.AsString;

          CDSRtoDetCONTROLA_TRAZABILIDAD.Value      := CDSStockCONTROL_TRAZABILIDAD.AsString;
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

          DMMain_FD.CalculaPrecioVta_FD('N',DMMain_FD.IdListaProveedor,CDSRtoCabLISTAPRECIO.Value,CDSRtoCabSUCURSAL.Value,CDSRtoCabDEPOSITO.Value,
                                        CDSRtoDetCODIGOARTICULO.AsString,CDSRtoCabCODIGO.AsString,CDSRtoCabTIPOCPBTE.Value,
                                        CDSRtoDetCOTIZACION.AsFloat,
                                        CDSRtoDetCOTIZACION.AsFloat,
                                        Gravado,exento,Total,Iva,Margen,dscto,PFinal);


           if (FormRemitos.Calcula_iva_articulo=False) then
            IVA      := 0;

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

          if (CDSRtoCabDEVOLUCION.AsString='A') or (CDSRtoCabDEVOLUCION.AsString='D') then
            begin
//              CDSRtoDetCantidadSetText(CDSRtoDetCantidad, CDSRtoCabDiasAlq.AsString);
            end;

          // ****************************************************
          // **** Cantidad desde PLU ****************************
          if DMMain_FD.DesdePLU then
            begin
              Enter:=#13;

              if DMMain_FD.ModoPLU=0 then  //Precio
                begin
                  FormRemitos.DBGrillaDetalle.SelectedIndex:=5;
                  CDSRtoDetUnitario_TotalSetText(CDSRtoDetUNITARIO_TOTAL,FLoatToStr(StrToFloat(DMMain_FD.PrecioPLU)*DMMain_FD.PluCoeficiente {0.01}));
                  FormRemitos.DBGrillaDetalleKeyPress(FormRemitos.DBGrillaDetalle,Enter);
                end
              else
                if DMMain_FD.ModoPLU=1 then //Cantidad
                  begin
                    FormRemitos.DBGrillaDetalle.SelectedIndex:=5;
                    CDSRtoDetCantidadSetText(CDSRtoDetCantidad,FLoatToStr(StrToFloat(DMMain_FD.PrecioPLU)*0.001));
                    FormRemitos.DBGrillaDetalleKeyPress(FormRemitos.DBGrillaDetalle,Enter);
                    Enter:=#0;
                  end;

               Enter:=#0;
               if DMMain_FD.DesdePLU then
                 begin
                   PrecioPLU   := StrToFloat(DMMain_FD.PrecioPLU)*DMMain_FD.PluCoeficiente{ 0.01};
                   PrecioFinal := CDSRtoDetUNITARIO_TOTAL.AsFloat+CDSRtoDetIVA_UNITARIO.AsFloat;
                   if PrecioFinal>0 then
                     CDSRtoDetCantidadSetText(CDSRtoDetCantidad,FLoatToStr(PrecioPlu/PrecioFinal))
                   else
                     begin
                       CDSRtoDetCantidadSetText(CDSRtoDetCantidad,'1');
                       CDSRtoDetUnitario_TotalSetText(CDSRtoDetUNITARIO_TOTAL,FLoatToStr(StrToFloat(DMMain_FD.PrecioPLU)*DMMain_FD.PluCoeficiente {0.01}));
                     end;
                   FormRemitos.DBGrillaDetalle.SelectedIndex:=5;
                 // FormTicketVta.DBGrillaDetalleKeyPress(FormTicketVta.DBGrillaDetalle,Enter);
                   Enter:=#0;
                 end
                else
                  if DMMain_FD.ModoPLU=1 then //Cantidad
                    begin
                     // FormTicketVta.DBGrillaDetalle.SelectedIndex:=4;
                      CDSRtoDetCantidadSetText(CDSRtoDetCantidad,FLoatToStr(StrToFloat(DMMain_FD.PrecioPLU)*0.001));
                      FormRemitos.DBGrillaDetalle.SelectedIndex:=5;
                    //  FormTicketVta.DBGrillaDetalleKeyPress(FormTicketVta.DBGrillaDetalle,Enter);
                    end;



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
//          DMMain_FD.QOpciones.Close;
//          DMMain_FD.QOpciones.ParamByName('Opcion').Value:='LTECREDITO';
//          DMMain_FD.QOpciones.Open;

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

          if (not DMMain_FD.ControlaLteCredito) and     // DMMain_FD.QOpciones.Fields[0].AsString[1]='N'
             (DMStoreProcedure.QSaldoCtaCte.Fields[0].AsFloat > ( CDSClientesLIMITE_CREDITO.AsFloat + DMMain_FD.ToleranciaDeuda ) ) and
             (DMMain_FD.UsuarioAdministrador=False)
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

          if CDSRtoCabTIPOIVA.Value<>3 then
            begin
              if ValidarCuit(CDSRtoCabCUIT.AsString) Then
                CDSRtoCabCUIT.AsString        := CDSClientesNRO_DE_CUIT.AsString
              else
                begin
                  ShowMessage('El numero de Cuit no es Valido... Verificar en la Ficha del Cliente...');
                  CDSRtoCabCODIGO.Clear;
                  CDSRtoCabNOMBRE.Clear;
                  CDSRtoCabRAZONSOCIAL.Clear;
                end;
            end;

//          CDSRtoCabLdr.Clear;
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
//          DMMain_FD.CDSCompPorTipo.Close;
//          DMMain_FD.CDSCompPorTipo.Params.ParamByName('desglozaIva').Value:='N';// esto es va de acuerdo al cliente;
//          DMMain_FD.CDSCompPorTipo.Params.ParamByName('sucursal').Value   :=CDSRtoCabSUCURSAL.Value;
//          DMMain_FD.CDSCompPorTipo.Params.ParamByName('compraventa').Value:='V';
//          DMMain_FD.CDSCompPorTipo.Params.ParamByName('tipo').Value       :='RE';
//          DMMain_FD.CDSCompPorTipo.Open;
//          DMMain_FD.CDSCompPorTipo.First;
//          if DMMain_FD.CDSCompPorTipo.Fields[0].AsString<>'' Then
//            CDSRtoCabID_TIPOCOMPROBANTESetText(CDSRtoCabID_TIPOCOMPROBANTE,DMMain_FD.CDSCompPorTipo.Fields[0].AsString);
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
                CDSRtoCabVENDEDORSetText(CDSRtoCabVENDEDOR,DMMain_FD.EmpleadoPorDefecto);
              CDSPersonal.Close;
            end
          else
            begin
              if (DMMain_FD.EmpleadoPorDefecto<>'') and (DMMain_FD.EmpleadoPorDefecto<>'-1')  then
                CDSRtoCabVENDEDORSetText(CDSRtoCabVENDEDOR,DMMain_FD.EmpleadoPorDefecto);
            end;

          // aca tomo la lista de precio del cliente si no dejo la que esta
          CDSRtoCabLISTAPRECIO.Value:=DMMain_FD.ListaPorDefecto(CDSRtoCabSUCURSAL.Value);
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
//  DMMain_FD.QOpciones.Close;

  ActualizaCPBTEDet(CDSRtoCabCODIGO);
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
//      DMMain_FD.QDepositoPorSucursal.Close;
//      DMMain_FD.QDepositoPorSucursal.ParamByName('sucursal').Value:=CDSRtoCabSUCURSAL.Value;
//      DMMain_FD.QDepositoPorSucursal.Open;
//      if DMMain_FD.QDepositoPorSucursalDEPOSITO.AsString<>'' then
//        CDSRtoCabDepositoSetText(CDSRtoCabDeposito,DMMain_FD.QDepositoPorSucursalDEPOSITO.AsString);
//      DMMain_FD.QDepositoPorSucursal.Close;
      CDSRtoCabDEPOSITO.Text    := IntToStr( DMMain_FD.DepositoPorSucursal(CDSRtoCabSUCURSAL.AsInteger));
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

      CDSRtoCabLISTAPRECIO.AsInteger  :=  DMMain_FD.ListaPorDefecto(CDSRtoCabSUCURSAL.AsInteger);

    {  DMMain_FD.QListaPrecioPorDefecto.CLose;
      DMMain_FD.QListaPrecioPorDefecto.Open;
      if DMMain_FD.QListaPrecioPorDefecto.Fields[0].AsString<>'' Then
        CDSRtoCabLISTAPRECIO.Value:=DMMain_FD.QListaPrecioPorDefecto.Fields[0].Value
      else
        begin
          DMMain_FD.QPrimeraListaPrecios.Close;
          DMMain_FD.QPrimeraListaPrecios.Open;
          if DMMain_FD.QPrimeraListaPrecios.Fields[0].AsString<>'' Then
            CDSRtoCabLISTAPRECIO.Value:=DMMain_FD.QPrimeraListaPrecios.Fields[0].Value;
          DMMain_FD.QPrimeraListaPrecios.Close;
       end;
      DMMain_FD.QListaPrecioPorDefecto.CLose;

      //***********************************************************
      // Asigno la lista por sucursal
      //***********************************************************
      DMMain_FD.QListaDefectoSuc.Close;
      DMMain_FD.QListaDefectoSuc.ParamByName('sucursal').Value:= CDSRtoCabSUCURSAL.Value;
      DMMain_FD.QListaDefectoSuc.Open;
      if (DMMain_FD.QListaDefectoSuc.Fields[0].AsString<>'') then
        begin
          CDSRtoCabLISTAPRECIO.Value:= DMMain_FD.QListaDefectoSuc.Fields[0].AsInteger;
        end;
      DMMain_FD.QListaDefectoSuc.Close;
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
      //***************************************************************      }

    END
  ELSE
    Result:=False;
  //CDSSucursal.Close;
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

  ActualizaCPBTEDet(CDSRtoCabDEPOSITO);
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
      if CDSPersonalMUESTRADEPOSITO.AsString<>'' then
        CDSRtoCabDEPOSITO.Text:=CDSPersonalMUESTRADEPOSITO.ASString;
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


procedure TDatosRemitos.CDSRtoCabDSTOIMPORTEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
VAR Aux:Real;
begin
  Aux:=(Sender.AsFloat);
  IF CDSRtoCabDesglozaIva.Value = 'N' THEN
    Aux:=(Aux + (Aux * Var_TasaIva * 0.01));

  Aux:= RoundTo(Aux ,-3);
  Aux:= RoundTo(Aux ,-2);

  Text:=FormatFloat(MascaraCabecera,Aux);
end;

procedure TDatosRemitos.CDSRtoCabDSTOSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:= FormatFloat(MascaraCabecera,StrToFloat(Text));
  if (Sender.AsFloat > DMMain_FD.TopeDsctoGral) then
    Sender.AsFloat:=DMMain_FD.TopeDsctoGral;
  if Sender.AsFloat<0 Then Sender.AsString:='0.00';
  SumarDetalle;
  CalcularTotales;
end;

procedure TDatosRemitos.CDSRtoCabFECHAVTAChange(Sender: TField);
begin
  ActualizaCPBTEDet(Sender);
end;

procedure TDatosRemitos.CDSRtoCabFECHA_DEVOLUCION_ALQChange(Sender: TField);
begin
  if Sender.AsDateTime<CDSRtoCabFECHA_ENTREGA.AsDateTime then
    Sender.AsDateTime :=  CDSRtoCabFECHA_ENTREGA.AsDateTime
  else
    if (CDSRtoCabFECHA_DEVOLUCION_ALQ <> nil) and (CDSRtoCabFECHA_DEVOLUCION_ALQ.AsDateTime>CDSRtoCabFECHA_ENTREGA.AsDateTime) then
      CDSRtoCabDiasAlq.AsInteger := DaysBetween(CDSRtoCabFECHA_ENTREGA.AsDateTime,CDSRtoCabFECHA_DEVOLUCION_ALQ.AsDateTime)
    else
      CDSRtoCabDiasAlq.AsInteger  := 0;
end;



procedure TDatosRemitos.CDSRtoCabFECHA_ENTREGAChange(Sender: TField);
begin
  CDSRtoCabFECHA_DEVOLUCION_ALQ.AsDateTime := IncDay(Sender.AsDateTime,CDSRtoCabDiasAlq.AsInteger);
end;

procedure TDatosRemitos.CDSRtoCabDESGLOZAIVAChange(Sender: TField);
begin
  FormRemitos.DBGrillaIva.Visible:=CDSRtoCabDESGLOZAIVA.Value = 'S';
end;


procedure TDatosRemitos.CDSRtoCabDEVOLUCIONChange(Sender: TField);
begin
  if (Sender.AsString = 'A') or (Sender.AsString='D') then
      CDSRtoDetCANTIDAD.OnSetText       :=  CDSRtoDetCantidadALQSetText
  else
      CDSRtoDetCANTIDAD.OnSetText :=  CDSRtoDetCantidadSetText;
end;

procedure TDatosRemitos.CDSRtoCabDiasAlqChange(Sender: TField);
begin
  CDSRtoDetCantidadALQSetText(Sender,Sender.AsString);
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
  if ((CDSRtoCabNUMERORTO.AsString<>'') and (CDSRtoCabNUMERORTO.AsInteger>0)) and
     ( DMMain_FD.VerificaNroRto(CDSRtoCabLETRARTO.AsString,CDSRtoCabSUCRTO.AsString,
                               CDSRtoCabNUMERORTO.AsString,CDSRtoCabTIPOCPBTE.AsString,
                               CDSRtoCabCLASECPBTE.AsString,CDSRtoCabSUCURSAL.AsInteger))
  Then
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

  ActualizaCPBTEDet(CDSRtoCabNroCpbte);

   // Sender.Clear;

end;

procedure TDatosRemitos.CDSRtoCabNUMERORTOSetText(Sender: TField;
  const Text: String);
BEGIN
  Sender.AsString:=Copy('000000000', 1, Sender.Size - Length(Text)) + Text;
  CDSRtoCabNROCPBTE.Value := CDSRtoCabLETRARTO.Value + CDSRtoCabSUCRTO.Value + CDSRtoCabNUMERORTO.Value;
  if (CDSRtoCabSUCRTO.AsString<>'') and  (DMMain_FD.VerificaNroRto(CDSRtoCabLETRARTO.Value,CDSRtoCabSUCRTO.Value,
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
  ActualizaCPBTEDet(CDSRtoCabNroCpbte);

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
      Sender.AsString := DMMain_FD.SearchCodigo(Text,DSRtoDet,FormRemitos.VerCodigoAlternativo1.Checked);
      IF not AsignarArticulo(Sender.AsString) THEN
        BEGIN
         // Busqueda por codigo
          IF (Assigned(FormBuscadorArticulos)) THEN
            FreeAndNil(FormBuscadorArticulos);
          IF Not(Assigned(FormBuscadorArticulos)) THEN
            FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
          FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
          FormBuscadorArticulos.CampoNro          := 0;
          if (CDSRtoCabDEVOLUCION.AsString='A') or (CDSRtoCabDEVOLUCION.AsString='D') then
            begin
              FormBuscadorArticulos.Param1:=9;
              FormBuscadorArticulos.Param2:=9;
              FormBuscadorArticulos.Param3:=9;

            end
          else
            begin
              FormBuscadorArticulos.Param1:=1;
              FormBuscadorArticulos.Param2:=3;
              FormBuscadorArticulos.Param3:=2;

            end;
          FormBuscadorArticulos.ListaPrecio :=DatosRemitos.CDSRtoCabLISTAPRECIO.Value;
          FormBuscadorArticulos.Dato        := s;//Text;
          FormBuscadorArticulos.Esquema     := -1;
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
      if DMMain_FD.EncontroCodigoBarra Then
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

      if ((CDSRtoCabDESGLOZAIVA.Value='N') or (FormRemitos.DiscriminaIva='N')) and (CDSRtoDetMODO_GRAVAMEN.AsString[1] in ['G','M','I','Y']) Then
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

      if ((CDSRtoCabDESGLOZAIVA.Value='N') or (FormRemitos.DiscriminaIva='N')) and (CDSRtoDetMODO_GRAVAMEN.AsString[1] in ['G','M','I','Y']) Then
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

procedure TDatosRemitos.CDSRtoLoteID_LOTESetText(Sender: TField;
  const Text: string);
var Estado: TValueRelationship;
begin
  if (Text<>'') and (Text<>#13) then
    BEGIN
      if CDSRtoLote.State=dsBrowse then
        CDSRtoLote.Edit;
      Sender.AsString:=Text;
      DMMain_FD.QStockLote.Close;
      DMMain_FD.QStockLote.ParamByName('idlote').Value:=Sender.AsInteger;
      DMMain_FD.QStockLote.Open;
      CDSRtoLoteID_LOTE.Value     := Sender.AsInteger;
      CDSRtoLoteDEPOSITO.Value    := CDSRtoCabDEPOSITO.Value;
      CDSRtoLoteLOTE.Value        := DMMain_FD.QStockLoteLote.Value;
      CDSRtoLoteDESPACHO.Value    := DMMain_FD.QStockLoteDESPACHO.Value;
      CDSRtoLoteFECHA.AsDateTime  := CDSRtoCabFECHAVTA.AsDateTime;
      if DMMain_FD.QStockLoteFECHA_VTO.AsString<>'' then
        CDSRtoLoteFECHAVTO.AsDateTime := DMMain_FD.QStockLoteFECHA_VTO.AsDateTime
      else
        CDSRtoLoteFECHAVTO.AsDateTime := Date;

      if CDSRtoCabDEVOLUCION.Value='N' then
        begin
          Estado:= Math.CompareValue(CDSRtoDetCANTIDAD.AsFloat,DMMain_FD.QStockLoteSALDO.AsFloat,0.02);
          if (Estado=EqualsValue) then
            CDSRtoLoteCANTIDAD.AsFloat:=DMMain_FD.QStockLoteSALDO.AsFloat
          else
            if (estado=GreaterThanValue) then
              begin
                if MessageDlg('La cantidad Disponible es Menor a la cargada, se ajusta la cantidad??',TMsgDlgType.mtConfirmation,mbYesNo,0,mbNo )=mrYes Then
                  begin
                    CDSRtoLoteCANTIDAD.AsFloat:=DMMain_FD.QStockLoteSALDO.AsFloat;
                    if CDSRtoDet.State=dsBrowse Then CDSRtoDet.Edit;
                    CDSRtoDetCantidadSetText(CDSRtoDetCantidad,FloatToStr(DMMain_FD.QStockLoteSALDO.AsFloat));
                  end;
              end
            else
              if (estado=LessThanValue) then
                CDSRtoLoteCANTIDAD.AsFloat:=CDSRtoDetCANTIDAD.AsFloat;
        end
      ELSE
        if CDSRtoCabDEVOLUCION.Value='S' then
          begin
            CDSRtoLoteCANTIDAD.AsFloat:=CDSrtoDetCANTIDAD.AsFloat;
          end

    END;

end;

procedure TDatosRemitos.CDSRtoLoteNewRecord(DataSet: TDataSet);
begin
  CDSRtoLoteID_LOTE.Value     := -1;
  CDSRtoLoteID.Value          := IBGRtoLote.incrementFD(1);
  CDSRtoLoteID_DET.Value      := CDSRtoDetID.Value;
  CDSRtoLoteID_RTO.Value      := CDSRtoDetID_CABRTO.Value;
  CDSRtoLoteCODIGO.Value      := CDSRtoDetCODIGOARTICULO.Value;
  CDSRtoLoteTIPO_COMPROB.Value:= CDSRtoCabTIPOCPBTE.Value;
  CDSRtoLoteDEPOSITO.Value    := CDSRtoDetDEPOSITO.Value;
  CDSRtoLoteFECHA.AsDateTime  := CDSRtoCabFECHAVTA.AsDateTime;
end;

procedure TDatosRemitos.CDSRtoTroquelesNewRecord(DataSet: TDataSet);
begin
  CDSRtoTroquelesID.Value          := ibgRtoTroquel.IncrementFD(1);
  CDSRtoTroquelesID_RTO.Value      := CDSRtoCabID_RTO.Value;
  CDSRtoTroquelesID_TROQUEL.Value  := -1;
  CDSRtoTroquelesFECHA.Value       := CDSRtoCabFECHAVTA.Value;
  CDSRtoTroquelesNRO_TROQUEL.Clear

end;

procedure TDatosRemitos.CDSRtoCabNewRecord(DataSet: TDataSet);
begin
  CDSRtoCabID_RTO.Value                    :=IBGRto_Cab.IncrementFD(1);
  CDSRtoCabNombre.AsString                 := '';
  CDSRtoCabRazonSocial.AsString            := '';
  CDSRtoCabCuit.AsString                   := '';
  CDSRtoCabDireccion.AsString              := '';
  CDSRtoCabTipoIVA.AsString                := '';
  CDSRtoCabCPostal.AsString                := '';
  CDSRtoCabLETRARTO.AsString               := 'X';
  CDSRtoCabCpte_Manual.Value               := 'N';
  CDSRtoCabImpreso.AsString                := 'N';
  CDSRtoCabAnulado.AsString                := 'N';
  CDSRtoCabSUCRTO.AsString                 := '0000';
  CDSRtoCabNUMERORTO.AsString              := '00000000';
  CDSRtoCabDsto.ASFloat                    := 0;
  CDSRtoCabNetoExen1.AsFloat               := 0;
  CDSRtoCabNetoExen2.AsFloat               := 0;
  CDSRtoCabFechaVta.AsDateTime             := Date;
  CDSRtoCabFECHA_ENTREGA.ASDATETIME        := Date;
  CDSRtoCabFECHA_DEVOLUCION_ALQ.AsDateTime := Date;
  CDSRtoCabNroEntrega.Value                := 1;
  CDSRtoCabDEVOLUCION.AsString             := 'N';

  CDSRtoCabREMITO_IMPRENTA.Value           := '';
  CDSRtoCabREMITO_FECHA_RANGO.Value        := '';
  CDSRtoCabREMITO_DIRECCION.Value          := '';
  CDSRtoCabREMITO_CAI.Value                := '';
  CDSRtoCabREMITO_VENCIMIENTO_CAI.Value    := '';

  CDSRtoCabDeposito.Clear;
  CDSRtoCabTipoCpbte.AsString              := '';
  CDSRtoCabCOMISIONVENDEDOR.AsFloat        := 0;
  CDSRtoCabSUCURSALSetText(CDSRtoCabSUCURSAL,IntToStr(FormRemitos.SucursalPorDefecto));
  CDSRtoCabDEPOSITOSetText(CDSRtoCabDEPOSITO,IntToStr(FormRemitos.DepositoPorDefecto));
  CDSRtoCabUSUARIO.Value                   := DMMain_FD.UsuarioActivo;
  CDSRtoCabFECHA_HORA.AsDateTime           := now;
  CDSRtoCabTAREAS.Value                    := '0000000000';
  CDSRtoCabCANT_BULTOS.AsInteger           := 0;
  CDSRtoCabCAE.Value                       := '0';
  CDSRtoCabREMITO_ELECTRONICO.Value        := 'N';
  CDSRtoCabFECHA_ENTREGA.Value             := CDSRtoCabFECHAVTA.Value;
  //**************************************************************************
  //****Asigno la Lista Por defecto o la lista asignada **********************
  //**************************************************************************
   CDSRtoCabLISTAPRECIO.Value              := DMMain_FD.ListaPorDefecto(CDSRtoCabSUCURSAL.Value);
  //***********************************************************
  //***********************************************************

  CDSRtoCabCON_GTIA_EXTENDIDA.Value        := 'N';
  CDSRtoCabPEDIDO_ID.Value                 := -1;
  CDSRtoCabID_TRANSFERENCIA.Value          := -1;
  CDSRtoCabID_TRANSPORTE.Value             := -1;
  CDSRtoCabCOT.AsString                    :='';
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
var i:integer;
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
  for I := 0 to formRemitos.DBGrillaDetalle.Columns.Count-1 do
     begin
       if (FormRemitos.DBGrillaDetalle.Columns[I].Field.FieldName = 'UNITARIO_TOTAL') and  (NOt(DMMain_FD.ModificaPrecioVta)) Then
         FormRemitos.DBGrillaDetalle.Columns[I].ReadOnly:=True
       else
         FormRemitos.DBGrillaDetalle.Columns[I].ReadOnly:=False;
     end;
   // Descuento
   //   DBGrillaDetalle.Columns[8].ReadOnly:=Not(DMMain_FD.AplicaDescuento);

   for I := 0 to FormRemitos.DBGrillaDetalle.Columns.Count-1 do
     begin
       if (FormRemitos.DBGrillaDetalle.Columns[I].Field.FieldName = 'DESCUENTO') and  (Not(DMMain_FD.AplicaDescuento)) Then
         FormRemitos.DBGrillaDetalle.Columns[I].ReadOnly:=True
       else
         FormRemitos.DBGrillaDetalle.Columns[I].ReadOnly:=False;
     end;

 //  FormRemitos.DBGrillaDetalle.DataSource.DataSet.FieldByName('UNITARIO_TOTAL').ReadOnly:=Not(DMMain_FD.ModificaPrecioVta);
  // Descuentos
 //  FormRemitos.DBGrillaDetalle.DataSource.DataSet.FieldByName('DESCUENTO').ReadOnly     :=Not(DMMain_FD.AplicaDescuento);

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
  if (CDSRtoDetMargen.AsFloat<DMMain_FD.GetMargenUtilidad) and
     (CDSRtoCabTIPOCPBTE.AsString='RE') then
      begin
       // ShowMessage('El precio de Venta esta por debajo de la renta Minima');
        if DMMain_FD.VenderDebajoMinimo=False then
          begin
            ShowMessage('No está Autorizado a vender por debajo de la renta Minima...');
            CDSRtoDet.Cancel;
            SysUtils.Abort;
          end;
      end;
  if (CDSRtoDetTOTAL.AsFloat<=0)  then
      begin
//        DMMain_FD.QOpciones.Close;
//        DMMain_FD.QOpciones.ParamByName('opcion').Value:='LINEACERO';
//        DMMain_FD.QOpciones.Open;
//        ControlaLineaCero  := UpperCase(Copy(DMMain_FD.QOpciones.Fields[0].AsString,1,1))='S';
//        DMMain_FD.QOpciones.Close;

//		ControlaLineaCero  :=	DMMain_FD.ControlaLineaCero;
        // Importacion desde Morphi
        //if (TForm(Self.Owner)).Owner.Name ='FormImportarVtas_PtoVtaMorphi' Then ControlaLineaCero:=False;
        //**************************
        if  (DMMain_FD.ControlaLineaCero) and (CDSRtoCab.State=dsInsert) then
          begin
            if MessageDlg('Renglon con importe 0(cero), lo acepta??..',mtConfirmation,mbYesNo,0) = mrNo Then
              begin
                CDSRtoDet.Cancel;
                SysUtils.Abort;
              end
            else
              begin
                if (DMMain_FD.AutorizadoLineaConCero=False) then
                  begin
                    ShowMessage('No esta Autorizado para cargar lineas con valor cero...');
                    CDSRtoDet.Cancel;
                    SysUtils.Abort;
                  end;
              end;
          end;
      end;

end;

procedure TDatosRemitos.CDSRtoDetNewRecord(DataSet: TDataSet);
begin
  IF (CDSRtoDet.RecordCount > Renglones) THEN
    CDSRtoDet.Cancel
  ELSE
    BEGIN
      CDSRtoDetID.Value                      := IBGRto_Det.IncrementFD(1);
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
      CDSRtoDetMUESTRAFACTURA.Value          := '';
      CDSRtoDetID_DET_OPRODUCCION.AsInteger  := -1;
      CDSRtoDetMUESTRALISTAPRECIO.AsInteger  := CDSRtoCabLISTAPRECIO.Value;
      CDSRtoDetSUCURSAL.AsInteger            := CDSRtoCabSUCURSAL.Value;
      CDSRtoDetCONTROLA_TRAZABILIDAD.Value   :='N';
      CDSRtoDetID_FACTURA.Clear;
    END;
end;


procedure TDatosRemitos.CDSRtoDetCalcFields(DataSet: TDataSet);
begin
// CDSRtoDetNRO.Value := CDSRtoDet.RecNo;
//  if (CDSRtoDet.State in [dsInsert])  then
//    CDSRtoDetNRO.Value := CDSRtoDet.RecordCount+1;
end;

procedure TDatosRemitos.CDSRtoDetCantidadALQSetText(Sender: TField;
      const Text: String);
var
  CDSAct:TBookmark;  Val:string;
begin

  if Text<>'' then
    begin
      CDSAct  :=   CDSRtoDet.GetBookmark;
      Val     :=   Text;
    //  Sender.AsString :=  Text;
    //  CDSRtoDet.Post;

      if Sender<>CDSRtoCabDiasAlq then CDSRtoCabFECHA_DEVOLUCION_ALQ.AsDateTime  := IncDay(CDSRtoCabFECHA_ENTREGA.AsDateTime,Trunc(StrToFloat(Val)));
      CDSRtoDet.DisableControls;
      CDSRtoDet.First;
      while not CDSRtoDet.EoF do
        begin
          CDSRtoDet.Edit;
          CDSRtoDetCantidadSetText(CDSRtoDetCantidad,Val);
          CDSRtoDet.Post;
          CDSRtoDet.Next;
        end;

      CDSRtoDet.GotoBookmark(CDSAct);
      CDSRtoDet.EnableControls;
    end;

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

      if NOt(DMMain_FD.GetClienteConPrecio(CDSRtoCabCODIGO.AsString, CDSRtoDetCODIGOARTICULO.AsString)) then
        begin
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
        end;

      if ((TForm(Self.Owner)).Owner.Name='FormCpbte_2') then
      begin
      if (DMMain_FD.VenderSinStock=False) and
         (CDSRtoDetAfecta_Stock.Value='S')   Then
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
      end;

      Aux1:= CDSRtoDetUNITARIO_EXENTO.AsFloat;
      Aux2:= CDSRtoDetUNITARIO_GRAVADO.AsFloat;

      if (CDSRtoDetModo_Gravamen.Value<>'') then
        if ((CDSRtoCabDesglozaIva.Value = 'S') and (FormRemitos.DiscriminaIva='N')) and (CDSRtoDetModo_Gravamen.Value[1] in ['G','M','Y','I']) THEN
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
        begin
          if CDSRtoDetPRESENTACION_UNIDAD.Value=CDSRtoDetUNIDAD.Value Then
            CDSRtoDetCANTIDAD_UNIDADES.AsFloat:=Sender.AsFloat/CDSRtoDetPRESENTACION_CANT.AsFloat
          else
            if CDSRtoDetPRESENTACION_UNIDAD.Value<>CDSRtoDetUNIDAD.Value Then
              CDSRtoDetCANTIDAD_UNIDADES.AsFloat:=Sender.AsFloat*CDSRtoDetPRESENTACION_CANT.AsFloat

        end
      else
        CDSRtoDetCANTIDAD_UNIDADES.AsFloat:=Sender.AsFloat;

      if FormRemitos.ExpresarUnidadesenEnteros1.Checked then
        CDSRtoDetCANTIDAD_UNIDADES.ASFloat:= RoundTo(CDSRtoDetCANTIDAD_UNIDADES.ASFloat,0);

      CDSRtoDetUnitario_TotalSetText(CDSRtoDetUNITARIO_TOTAL,FloatToStr(Aux3));

    END;
END;

procedure TDatosRemitos.CDSRtoDetCANTIDAD_UNIDADESSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString := Text;
   if Sender.AsFloat<1 then Sender.AsFloat:=CDSRtoDetCANTIDAD.AsFloat;

end;

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

procedure TDatosRemitos.CDSRtoDetID_FACTURAGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if (Trim(Sender.AsString)<>'') and (Sender.AsInteger>0) then
    Text:='*'
  else
    Text:='';

end;

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
      if (CDSRtoDetMODO_GRAVAMEN.Value<>'') and (CDSRtoDetMODO_GRAVAMEN.Value[1] in ['G','M','I','Y']) Then
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
  CDSImpuestosID_IMPUESTO.Value := IBGImpuesto.IncrementFD(1);
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
      if (Sender.AsFloat > DMMain_FD.TopeDsctoLinea) then
        Sender.AsFloat:=DMMain_FD.TopeDsctoLinea;
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
