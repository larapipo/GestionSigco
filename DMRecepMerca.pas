unit DMRecepMerca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBGenerator, DB, Provider, DBClient, Librerias,Variants, FMTBcd, SqlExpr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDatosRecepMerca = class(TDataModule)
    DSPRecepCab: TDataSetProvider;
    DSPRecepDet: TDataSetProvider;
    DSPProveedor: TDataSetProvider;
    DSPStock: TDataSetProvider;
    DSPIva: TDataSetProvider;
    DSPSucursal: TDataSetProvider;
    DSPImpuestos: TDataSetProvider;
    DSPDeposito: TDataSetProvider;
    IBGRecepCab: TIBGenerator;
    IBGRecepDet: TIBGenerator;
    IBGImpuestos: TIBGenerator;
    DSPInscripcion: TDataSetProvider;
    DSPRecepSubDet: TDataSetProvider;
    CDSRecepSubDetalle: TClientDataSet;
    IBGRecepSubDet: TIBGenerator;
    DSRecepSubDetalle: TDataSource;
    CDSDeposito: TClientDataSet;
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
    CDSStockUNIDAD: TStringField;
    CDSStockCONTROLASTOCK: TStringField;
    CDSStockCODIGO_PROVEEDOR: TStringField;
    CDSStockCLASE_ARTICULO: TIntegerField;
    CDSStockMODO_GRAVAMEN: TStringField;
    CDSStockCON_IMP_INT: TStringField;
    CDSStockGRAVADO_IB: TStringField;
    CDSStockTASA_IB: TIntegerField;
    CDSStockACTUALIZACOSTO: TStringField;
    CDSStockDEPRODUCCION: TStringField;
    CDSStockPRODUCCIONDIRECTA: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockCONTROL_SERIE: TStringField;
    CDSStockUSA_CODIGOBARRA: TStringField;
    CDSStockUNIDAD_ULTIMAUSADA: TStringField;
    CDSStockID_TABLAPRECIOS: TIntegerField;
    CDSStockID_TABLAPRECIOSDETALLE: TIntegerField;
    CDSStockCODIGO_PRECIO: TIntegerField;
    CDSStockPRESENTACION_UNIDAD: TStringField;
    CDSStockEDITAPRECIO: TStringField;
    CDSStockEDITADETALLE: TStringField;
    CDSStockURL: TStringField;
    CDSStockMUESTRARUBRO: TStringField;
    CDSStockMUESTRASUBRUBRO: TStringField;
    CDSStockMUESTRAMARCA: TStringField;
    CDSStockMUESTRATASA: TStringField;
    CDSStockMUESTRASOBRETASA: TStringField;
    DSRecepDet: TDataSource;
    CDSInscripcion: TClientDataSet;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    DSImpuestos: TDataSource;
    CDSRecepCab: TClientDataSet;
    CDSRecepCabID_RECMER: TIntegerField;
    CDSRecepCabTIPOCPBTE: TStringField;
    CDSRecepCabCLASECPBTE: TStringField;
    CDSRecepCabNROCPBTE: TStringField;
    CDSRecepCabCODIGO: TStringField;
    CDSRecepCabLETRARECMER: TStringField;
    CDSRecepCabSUCRECMER: TStringField;
    CDSRecepCabNUMERORECMER: TStringField;
    CDSRecepCabNOMBRE: TStringField;
    CDSRecepCabRAZONSOCIAL: TStringField;
    CDSRecepCabDIRECCION: TStringField;
    CDSRecepCabCPOSTAL: TStringField;
    CDSRecepCabLOCALIDAD: TStringField;
    CDSRecepCabTIPOIVA: TIntegerField;
    CDSRecepCabCUIT: TStringField;
    CDSRecepCabANULADO: TStringField;
    CDSRecepCabORDENCOMPRA: TStringField;
    CDSRecepCabREMITOS: TStringField;
    CDSRecepCabOBSERVACION1: TStringField;
    CDSRecepCabOBSERVACION2: TStringField;
    CDSRecepCabSUCURSALCOMPRA: TIntegerField;
    CDSRecepCabZONA: TIntegerField;
    CDSRecepCabDEPOSITO: TIntegerField;
    CDSRecepCabDESGLOZAIVA: TStringField;
    CDSRecepCabCALCULA_SOBRETASA: TStringField;
    CDSRecepCabUSUARIO: TStringField;
    CDSRecepCabMUESTRADEPOSITO: TStringField;
    CDSRecepCabMUESTRASUCURSAL: TStringField;
    CDSRecepCabMUESTRACOMPROBANTE: TStringField;
    CDSRecepCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSRecepCabPROCESADA: TStringField;
    CDSRecepCabMERCADERIA_CONSIGNACION: TStringField;
    CDSRecepCabFECHARECEPCION: TSQLTimeStampField;
    CDSRecepCabID_FACTURA: TIntegerField;
    CDSRecepCabNROFACTURA: TStringField;
    CDSRecepCabFECHA_HORA: TSQLTimeStampField;
    CDSRecepDet: TClientDataSet;
    CDSRecepDetID: TIntegerField;
    CDSRecepDetID_CABREC: TIntegerField;
    CDSRecepDetTIPOCPBTE: TStringField;
    CDSRecepDetCLASECPBTE: TStringField;
    CDSRecepDetNROCPBTE: TStringField;
    CDSRecepDetCODIGOPROVEEDOR: TStringField;
    CDSRecepDetCODIGOARTICULO: TStringField;
    CDSRecepDetDETALLE: TStringField;
    CDSRecepDetUNIDAD: TStringField;
    CDSRecepDetDESGLOZAIVA: TStringField;
    CDSRecepDetMODO_GRAVAMEN: TStringField;
    CDSRecepDetTIPOIVA_TASA: TIntegerField;
    CDSRecepDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSRecepDetDEPOSITO: TIntegerField;
    CDSRecepDetAFECTA_STOCK: TStringField;
    CDSRecepDetCALCULA_SOBRETASA: TStringField;
    CDSRecepDetCON_NRO_SERIE: TStringField;
    CDSRecepDetID_FACTURA: TIntegerField;
    CDSRecepDetNROFACTURA: TStringField;
    CDSRecepDetMERCADERIA_CONSIGNACION: TStringField;
    CDSRecepDetFECHARECEPCION: TSQLTimeStampField;
    CDSProveedor: TClientDataSet;
    CDSProveedorCODIGO: TStringField;
    CDSProveedorNOMBRE: TStringField;
    CDSProveedorRAZON_SOCIAL: TStringField;
    CDSProveedorN_DE_CUENTA: TStringField;
    CDSProveedorID_COD_POSTAL: TIntegerField;
    CDSProveedorCOD_POSTAL: TStringField;
    CDSProveedorLOCALIDAD: TStringField;
    CDSProveedorDIRECCION: TStringField;
    CDSProveedorTELEFONO_1: TStringField;
    CDSProveedorTELEFONO_2: TStringField;
    CDSProveedorCONDICION_IVA: TIntegerField;
    CDSProveedorN_DE_CUIT: TStringField;
    CDSProveedorACTIVO: TStringField;
    CDSIva: TClientDataSet;
    CDSIvaCODIGO: TIntegerField;
    CDSIvaDESCRIPCION: TStringField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField;
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
    CDSImpuestos: TClientDataSet;
    CDSImpuestosID_IMPUESTO: TIntegerField;
    CDSImpuestosID_CABREC: TIntegerField;
    CDSImpuestosCODIGO_GRAVAMEN: TIntegerField;
    CDSImpuestosDETALLE: TStringField;
    CDSRecepSubDetalleID: TIntegerField;
    CDSRecepSubDetalleID_DETREC: TIntegerField;
    CDSRecepSubDetalleID_CABREC: TIntegerField;
    CDSRecepSubDetalleTIPOCPBTE: TStringField;
    CDSRecepSubDetalleCLASECPBTE: TStringField;
    CDSRecepSubDetalleFECHA: TSQLTimeStampField;
    CDSRecepSubDetalleNROCPBTE: TStringField;
    CDSRecepSubDetalleCODIGOARTICULO: TStringField;
    CDSRecepSubDetalleSERIE: TStringField;
    CDSRecepSubDetalleDEPOSITO: TIntegerField;
    CDSRecepCabID_ORDENCOMPRA: TIntegerField;
    QRecepCab: TFDQuery;
    QRecepCabID_RECMER: TIntegerField;
    QRecepCabTIPOCPBTE: TStringField;
    QRecepCabCLASECPBTE: TStringField;
    QRecepCabNROCPBTE: TStringField;
    QRecepCabCODIGO: TStringField;
    QRecepCabLETRARECMER: TStringField;
    QRecepCabSUCRECMER: TStringField;
    QRecepCabNUMERORECMER: TStringField;
    QRecepCabNOMBRE: TStringField;
    QRecepCabRAZONSOCIAL: TStringField;
    QRecepCabDIRECCION: TStringField;
    QRecepCabCPOSTAL: TStringField;
    QRecepCabLOCALIDAD: TStringField;
    QRecepCabTIPOIVA: TIntegerField;
    QRecepCabCUIT: TStringField;
    QRecepCabFECHARECEPCION: TSQLTimeStampField;
    QRecepCabANULADO: TStringField;
    QRecepCabORDENCOMPRA: TStringField;
    QRecepCabREMITOS: TStringField;
    QRecepCabNETOGRAV1: TFloatField;
    QRecepCabDSTO: TFloatField;
    QRecepCabDSTOIMPORTE: TFloatField;
    QRecepCabNETOGRAV2: TFloatField;
    QRecepCabNETOEXEN1: TFloatField;
    QRecepCabNETOEXEN2: TFloatField;
    QRecepCabIMPORTEEXCLUIDO2: TFloatField;
    QRecepCabIMPORTEEXCLUIDO1: TFloatField;
    QRecepCabTOTAL: TFloatField;
    QRecepCabOBSERVACION1: TStringField;
    QRecepCabOBSERVACION2: TStringField;
    QRecepCabSUCURSALCOMPRA: TIntegerField;
    QRecepCabZONA: TIntegerField;
    QRecepCabDEPOSITO: TIntegerField;
    QRecepCabDESGLOZAIVA: TStringField;
    QRecepCabCALCULA_SOBRETASA: TStringField;
    QRecepCabNETOMONOTRIBUTO1: TFloatField;
    QRecepCabNETOMONOTRIBUTO2: TFloatField;
    QRecepCabUSUARIO: TStringField;
    QRecepCabPROCESADA: TStringField;
    QRecepCabID_FACTURA: TIntegerField;
    QRecepCabNROFACTURA: TStringField;
    QRecepCabMERCADERIA_CONSIGNACION: TStringField;
    QRecepCabFECHA_HORA: TSQLTimeStampField;
    QRecepCabID_ORDENCOMPRA: TIntegerField;
    QRecepCabMUESTRADEPOSITO: TStringField;
    QRecepCabMUESTRASUCURSAL: TStringField;
    QRecepCabMUESTRACOMPROBANTE: TStringField;
    QRecepCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSRecepCabNETOGRAV1: TFloatField;
    CDSRecepCabDSTO: TFloatField;
    CDSRecepCabDSTOIMPORTE: TFloatField;
    CDSRecepCabNETOGRAV2: TFloatField;
    CDSRecepCabNETOEXEN1: TFloatField;
    CDSRecepCabNETOEXEN2: TFloatField;
    CDSRecepCabIMPORTEEXCLUIDO2: TFloatField;
    CDSRecepCabIMPORTEEXCLUIDO1: TFloatField;
    CDSRecepCabTOTAL: TFloatField;
    CDSRecepCabNETOMONOTRIBUTO1: TFloatField;
    CDSRecepCabNETOMONOTRIBUTO2: TFloatField;
    QRecepDet: TFDQuery;
    QRecepDetID: TIntegerField;
    QRecepDetID_CABREC: TIntegerField;
    QRecepDetTIPOCPBTE: TStringField;
    QRecepDetCLASECPBTE: TStringField;
    QRecepDetNROCPBTE: TStringField;
    QRecepDetCODIGOPROVEEDOR: TStringField;
    QRecepDetRENGLON: TFloatField;
    QRecepDetFECHARECEPCION: TSQLTimeStampField;
    QRecepDetCODIGOARTICULO: TStringField;
    QRecepDetDETALLE: TStringField;
    QRecepDetUNIDAD: TStringField;
    QRecepDetCANTIDAD: TFloatField;
    QRecepDetUNITARIO_TOTAL: TFloatField;
    QRecepDetUNITARIO_EXENTO: TFloatField;
    QRecepDetUNITARIO_GRAVADO: TFloatField;
    QRecepDetDESGLOZAIVA: TStringField;
    QRecepDetMODO_GRAVAMEN: TStringField;
    QRecepDetIVA_TASA: TFloatField;
    QRecepDetTIPOIVA_TASA: TIntegerField;
    QRecepDetIVA_SOBRETASA: TFloatField;
    QRecepDetTIPOIVA_SOBRETASA: TIntegerField;
    QRecepDetCOSTO_TOTAL: TFloatField;
    QRecepDetCOSTO_EXENTO: TFloatField;
    QRecepDetCOSTO_GRAVADO: TFloatField;
    QRecepDetDESCUENTO: TFloatField;
    QRecepDetTOTAL: TFloatField;
    QRecepDetDEPOSITO: TIntegerField;
    QRecepDetMARGEN: TFloatField;
    QRecepDetAFECTA_STOCK: TStringField;
    QRecepDetCALCULA_SOBRETASA: TStringField;
    QRecepDetCOSTO_IMP_INTERNO: TFloatField;
    QRecepDetUNITARIO_IMP_INTERNO: TFloatField;
    QRecepDetCON_NRO_SERIE: TStringField;
    QRecepDetID_FACTURA: TIntegerField;
    QRecepDetNROFACTURA: TStringField;
    QRecepDetMERCADERIA_CONSIGNACION: TStringField;
    QRecepDetCANTIDAD_SALDO: TFloatField;
    QRecepDetPRESENTACION_CANT: TFloatField;
    QRecepDetCANTIDAD_UNIDADES: TFloatField;
    CDSRecepDetCANTIDAD: TFloatField;
    CDSRecepDetCANTIDAD_SALDO: TFloatField;
    CDSRecepDetRENGLON: TFloatField;
    CDSRecepDetIVA_TASA: TFloatField;
    CDSRecepDetIVA_SOBRETASA: TFloatField;
    CDSRecepDetDESCUENTO: TFloatField;
    CDSRecepDetTOTAL: TFloatField;
    CDSRecepDetMARGEN: TFloatField;
    CDSRecepDetCOSTO_IMP_INTERNO: TFloatField;
    CDSRecepDetUNITARIO_IMP_INTERNO: TFloatField;
    CDSRecepDetUNITARIO_TOTAL: TFloatField;
    CDSRecepDetUNITARIO_EXENTO: TFloatField;
    CDSRecepDetUNITARIO_GRAVADO: TFloatField;
    CDSRecepDetCOSTO_TOTAL: TFloatField;
    CDSRecepDetCOSTO_EXENTO: TFloatField;
    CDSRecepDetCOSTO_GRAVADO: TFloatField;
    CDSRecepDetCANTIDAD_UNIDADES: TFloatField;
    CDSRecepDetPRESENTACION_CANT: TFloatField;
    QRecepSubDetalle: TFDQuery;
    QRecepSubDetalleID: TIntegerField;
    QRecepSubDetalleID_DETREC: TIntegerField;
    QRecepSubDetalleID_CABREC: TIntegerField;
    QRecepSubDetalleTIPOCPBTE: TStringField;
    QRecepSubDetalleCLASECPBTE: TStringField;
    QRecepSubDetalleFECHA: TSQLTimeStampField;
    QRecepSubDetalleNROCPBTE: TStringField;
    QRecepSubDetalleCODIGOARTICULO: TStringField;
    QRecepSubDetalleSERIE: TStringField;
    QRecepSubDetalleDEPOSITO: TIntegerField;
    QRecepImpuesto: TFDQuery;
    QRecepImpuestoID_IMPUESTO: TIntegerField;
    QRecepImpuestoID_CABREC: TIntegerField;
    QRecepImpuestoCODIGO_GRAVAMEN: TIntegerField;
    QRecepImpuestoDETALLE: TStringField;
    QRecepImpuestoNETO: TFloatField;
    QRecepImpuestoTASA: TFloatField;
    QRecepImpuestoIMPORTE: TFloatField;
    CDSImpuestosNETO: TFloatField;
    CDSImpuestosTASA: TFloatField;
    CDSImpuestosIMPORTE: TFloatField;
    QComprob: TFDQuery;
    QComprobID_COMPROBANTE: TIntegerField;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobSUCURSAL: TIntegerField;
    QComprobLETRA: TStringField;
    QBuscaComprob: TFDQuery;
    QNroSerie: TFDQuery;
    QNroSerieID: TIntegerField;
    QNroSerieCODIGO_STK: TStringField;
    QNroSerieCODIGOSERIE: TStringField;
    QNroSerieFECHAINGRESO: TSQLTimeStampField;
    QNroSerieFECHAEGRESO: TSQLTimeStampField;
    DSPRecepLote: TDataSetProvider;
    CDSRecepLote: TClientDataSet;
    DSRecepLote: TDataSource;
    IBGRecepLotes: TIBGenerator;
    QRecepDetCONTROL_TRAZABILIDAD: TStringField;
    CDSRecepDetCONTROL_TRAZABILIDAD: TStringField;
    CDSStockCONTROL_TRAZABILIDAD: TStringField;
    CDSRecepLoteID: TIntegerField;
    CDSRecepLoteID_DETRECP: TIntegerField;
    CDSRecepLoteID_CABRECP: TIntegerField;
    CDSRecepLoteID_LOTE: TIntegerField;
    CDSRecepLoteCODIGO: TStringField;
    CDSRecepLoteLOTE: TStringField;
    CDSRecepLoteDESPACHO: TStringField;
    CDSRecepLoteCANTIDAD: TFloatField;
    CDSRecepLoteDEPOSITO: TIntegerField;
    CDSRecepLoteTIPO_COMPROB: TStringField;
    CDSRecepLoteFECHA: TSQLTimeStampField;
    CDSRecepLoteFECHAVTO: TSQLTimeStampField;
    CDSStockFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSStockFIJACION_PRECIO_IVA: TFloatField;
    CDSStockFIJACION_PRECIO_FINAL: TFloatField;
    CDSStockFIJACION_PRECIO_EXENTO: TFloatField;
    CDSStockFIJACION_PRECIO_TOTAL: TFloatField;
    CDSStockCONTENIDO_COMPRA: TFloatField;
    CDSStockCOSTO_GRAVADO_STK: TFloatField;
    CDSStockCOSTO_IVA: TFloatField;
    CDSStockCOSTO_FINAL: TFloatField;
    CDSStockCOSTO_EXENTO_STK: TFloatField;
    CDSStockCOSTO_TOTAL_STK: TFloatField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockIMPUESTO_INTERNOS: TFloatField;
    CDSStockCOSTO_GRAVADO_SOMBRA: TFloatField;
    CDSStockCOSTO_EXENTO_SOMBRA: TFloatField;
    CDSStockMONEDA: TIntegerField;
    CDSStockCOSTO_GRAVADO_P: TFloatField;
    CDSStockCOSTO_EXENTO_P: TFloatField;
    CDSStockCOSTO_TOTAL_P: TFloatField;
    CDSStockPOSICION: TStringField;
    CDSStockPRESENTACION_CANTIDAD: TFloatField;
    CDSStockCOMANDA: TStringField;
    CDSStockPORCENTAJE_SOBRECOSTO: TFloatField;
    CDSStockRUBRO_GASTO: TStringField;
    CDSStockRUBRO_CTA_GASTO: TStringField;
    CDSStockPUBLICAR_WEB: TStringField;
    CDSStockGTIA_MESES: TIntegerField;
    CDSStockGARANTIAOFICIAL: TStringField;
    CDSStockADICIONAL_SOBRECOSTO: TFloatField;
    CDSStockIMPRIMIR_LSTPRECIOS: TStringField;
    CDSStockIVA_MODIFICADO: TStringField;
    CDSStockSIGLAS: TStringField;
    CDSStockPRESENTACION_2_CANT: TFloatField;
    CDSStockTASA_MANUFACTURA: TStringField;
    CDSStockPLU: TStringField;
    CDSStockACOPIABLE: TStringField;
    CDSStockCIKO_TIPO: TIntegerField;
    CDSStockTIPOADICIONAL: TStringField;
    CDSStockLARGO_1: TFloatField;
    CDSStockLARGO_2: TFloatField;
    CDSStockLARGO_3: TFloatField;
    CDSStockROTURA_1: TFloatField;
    CDSStockROTURA_2: TFloatField;
    CDSStockCIMA: TFloatField;
    CDSStockBASE: TFloatField;
    CDSStockVOLUMEN: TFloatField;
    CDSStockPESO_CALCULADO: TFloatField;
    CDSStockPESO: TFloatField;
    CDSStockDIAMETRO_OLLA: TFloatField;
    CDSStockALTO_ACC: TFloatField;
    CDSStockMODO_IVA: TStringField;
    CDSStockMUESTRATASAPORCENTAJE: TFloatField;
    CDSStockMUESTRASOBRETASAPROCENTAJE: TFloatField;
    CDSStockMUESTRATASAIB: TFloatField;
    CDSStockMUESTRATABLAPRECIODETALLE: TStringField;
    CDSStockMUESTRATABLAPRECIO1: TFloatField;
    CDSStockMUESTRATABLAPRECIO2: TFloatField;
    CDSStockFUAP: TSQLTimeStampField;
    CDSStockFECHA_ALTA: TSQLTimeStampField;
    CDSStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    CDSStockFECHA_ULTIMAVTA: TSQLTimeStampField;
    CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    CDSStockMUESTRACTAGASTO: TStringField;
    CDSStockMUESTRARUBROGASTO: TStringField;
    CDSStockPERCIBE_IVA: TStringField;
    CDSStockID_TASA_PERCEP_IVA: TIntegerField;
    CDSStockAPLICA_TASA_DIF: TStringField;
    CDSStockDISPONIBLE: TStringField;
    CDSStockPLU_SECCION: TStringField;
    QRecepDetMUESTRACODIGOBARRA: TStringField;
    QRecepDetMUESTRAPRECIOVTA: TFloatField;
    CDSRecepDetMUESTRACODIGOBARRA: TStringField;
    CDSRecepDetMUESTRAPRECIOVTA: TFloatField;
    CDSSucursalRECARGO: TFloatField;
    CDSIvaTASA: TFloatField;
    CDSIvaCOLUMNA: TSmallintField;
    procedure CDSRecepCabCODIGOSetText(Sender: TField;
      const Text: String);
    procedure CDSRecepCabSUCRECMERSetText(Sender: TField;
      const Text: String);
    procedure CDSRecepCabNUMERORECMERSetText(Sender: TField;
      const Text: String);
    procedure CDSRecepCabDEPOSITOSetText(Sender: TField;
      const Text: String);
    procedure CDSRecepCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSRecepCabSUCURSALCOMPRASetText(Sender: TField;
      const Text: String);
    procedure CDSRecepDetCODIGOARTICULOSetText(Sender: TField;
      const Text: String);
    procedure CDSRecepSubDetalleSERIESetText(Sender: TField;
      const Text: String);
    procedure CDSRecepCabBeforePost(DataSet: TDataSet);
    procedure CDSRecepCabNewRecord(DataSet: TDataSet);
    procedure CDSRecepDetBeforePost(DataSet: TDataSet);
    procedure CDSRecepDetAfterDelete(DataSet: TDataSet);
    procedure CDSRecepDetAfterInsert(DataSet: TDataSet);
    procedure CDSRecepDetAfterPost(DataSet: TDataSet);
    procedure CDSRecepDetNewRecord(DataSet: TDataSet);
    procedure CDSRecepSubDetalleAfterPost(DataSet: TDataSet);
    procedure CDSRecepSubDetalleBeforeDelete(DataSet: TDataSet);
    procedure CDSRecepSubDetalleBeforeEdit(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSRecepDetCANTIDADSetText(Sender: TField;
      const Text: String);
    procedure CDSRecepDetUNITARIO_TOTALSetText(Sender: TField;
      const Text: String);
    procedure CDSRecepSubDetalleNewRecord(DataSet: TDataSet);
    procedure CDSRecepSubDetalleBeforePost(DataSet: TDataSet);
    procedure CDSRecepSubDetalleBeforeInsert(DataSet: TDataSet);
    procedure CDSRecepDetBeforeDelete(DataSet: TDataSet);
    procedure CDSImpuestosNewRecord(DataSet: TDataSet);
    procedure CDSRecepLoteBeforePost(DataSet: TDataSet);
    procedure CDSRecepLoteNewRecord(DataSet: TDataSet);
    procedure CDSRecepDetAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    MascaraDetalleUnitario :String;
    MascaraDetalleCantidad :String;
    MascaraDetalleTotal    :String;
    MascaraDetalleDescuento:String;
    MascaraIvaImporte      :String;
    MascaraIvaTasa         :String;
    MascaraCabecera        :String;
    ListaPrecios           :Integer;
    PROCEDURE HabilitarLabel;
    procedure ReAsignaDetalle;
    FUNCTION AsignaProveedor(Dato: STRING): Boolean;
    FUNCTION AsignarArticulo(Dato: STRING): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION AsignarComprpobante(Dato: Integer): Boolean;
    PROCEDURE SumarDetalle;
    PROCEDURE CalcularTotales;
    procedure AplicarMascarasNumericas;
    procedure ControlDetalleConsignacion;
    function SumaSaldosMercaderia:Boolean;
  end;

var
  DatosRecepMerca: TDatosRecepMerca;

implementation

uses UDMain_FD, DMBuscadoresForm,
     URecepcionMercaderia, UBuscadorArticulos, UMuestraListaCodBarra;

{$R *.DFM}

PROCEDURE TDatosRecepMerca.HabilitarLabel;
BEGIN
  {Si la Factura no discrimina IVA}
   FormRecepcionMercaderia.dbgIva.Visible          :=CDSRecepCabDESGLOZAIVA.Value = 'S';
   FormRecepcionMercaderia.RxLabel4.Visible        :=CDSRecepCabDESGLOZAIVA.Value = 'S';
END;

PROCEDURE TDatosRecepMerca.ReAsignaDetalle;
VAR P:TBookmark;
begin
  if not(CDSRecepDet.IsEmpty) then
    begin
      p := CDSRecepDet.GetBookmark;
      CDSRecepDet.AfterPost  :=nil;
      CDSRecepDet.DisableControls;
      CDSRecepDet.First;
      if CDSRecepDet.RecordCount>0 Then
        begin
          while Not(CDSRecepDet.Eof) Do
            begin
              CDSRecepDet.Edit;
              CDSRecepDetDESGLOZAIVA.Value    :=CDSRecepCabDESGLOZAIVA.Value;
              CDSRecepDetNROCPBTE.Value       :=CDSRecepCabNROCPBTE.Value;
              CDSRecepDetCODIGOPROVEEDOR.Value:=CDSRecepCabCodigo.Value;
              CDSRecepDetFECHARECEPCION.Value :=CDSRecepCabFECHARECEPCION.Value;
              CDSRecepDetDEPOSITO.Value       :=CDSRecepCabDeposito.Value;
              CDSRecepDetTIPOCPBTE.Value      :=CDSRecepCabTIPOCPBTE.Value;
              CDSRecepDetCLASECPBTE.Value     :=CDSRecepCabCLASECPBTE.Value;
              CDSRecepDetNROCPBTE.Value       :=CDSRecepCabNROCPBTE.Value;
              CDSRecepDet.Next;
            end;
        end;
      CDSRecepDet.GotoBookmark(p);
      CDSRecepDet.FreeBookmark(p);
      CDSRecepDet.EnableControls;
      //    SumarDetalle;
      //    CalcularTotales;
      CDSRecepDet.AfterPost:= DatosRecepMerca.CDSRecepDetAfterPost;
      CDSRecepDet.Edit;
      if CDSRecepDet.State<>dsBrowse Then
        CDSRecepDet.Post;
    end;
end;

PROCEDURE TDatosRecepMerca.ControlDetalleConsignacion;
VAR P:TBookmark;
begin
  if CDSRecepCabMERCADERIA_CONSIGNACION.Value='S' Then
    begin
      p:=CDSRecepDet.GetBookmark;
      CDSRecepDet.DisableControls;
      CDSRecepDet.First;
      while Not(CDSRecepDet.Eof) Do
        begin
          CDSRecepDet.Edit;
          CDSRecepDetMERCADERIA_CONSIGNACION.Value    :='S';
          CDSRecepDet.Next;
        end;
      CDSRecepDet.GotoBookmark(p);
      CDSRecepDet.FreeBookmark(p);
      CDSRecepDet.EnableControls;
    end;
end;

function TDatosRecepMerca.SumaSaldosMercaderia:Boolean;
VAR P:TBookmark;
Total1,Total2:Integer;
begin
  if CDSRecepCabMERCADERIA_CONSIGNACION.Value='S' Then
    begin
      p:=CDSRecepDet.GetBookmark;
      CDSRecepDet.DisableControls;
      CDSRecepDet.First;
      while Not(CDSRecepDet.Eof) Do
        begin
          Total1:= Trunc(CDSRecepDetCANTIDAD.Asfloat * 1000);
          Total2:= Trunc(CDSRecepDetCANTIDAD_SALDO.Asfloat * 1000);
          CDSRecepDet.Next;
        end;
      CDSRecepDet.GotoBookmark(p);
      CDSRecepDet.FreeBookmark(p);
      CDSRecepDet.EnableControls ;
      if Total1=Total2 then Result:=True
      else
      Result:=False;

    end;
end;


FUNCTION TDatosRecepMerca.AsignaProveedor(Dato: STRING): Boolean;
BEGIN
  CDSProveedor.Close;
  CDSProveedor.Params.ParamByName('Codigo').Value := Dato;
  CDSProveedor.Open;
  IF NOT (CDSProveedor.Eof) THEN
    BEGIN
      CDSRecepCabNombre.AsString      := CDSProveedorNombre.AsString;
      CDSRecepCabRazonSocial.AsString := CDSProveedorRazon_Social.ASString;
      CDSRecepCabCuit.AsString        := CDSProveedorN_de_CUIT.AsString;
      CDSRecepCabDireccion.AsString   := CDSProveedorDireccion.AsString;
      CDSRecepCabTipoIVA.Value        := CDSProveedorCondicion_IVA.Value;
      CDSRecepCabCPostal.AsString     := CDSProveedorCod_Postal.AsString;
      CDSRecepCabLocalidad.AsString   := CDSProveedorLocalidad.AsString;
      CDSInscripcion.Close;
      CDSInscripcion.Params.ParamByName('Codigo').Value := CDSRecepCabTipoIva.Value;
      CDSInscripcion.Open;
      IF NOT (CDSInscripcion.Eof) THEN
        begin
          CDSRecepCabCALCULA_SOBRETASA.Value :=CDSInscripcionCobraSobretasa.Value;
          CDSRecepCabDESGLOZAIVA.Value       :=CDSInscripcionDISCRIMINAIVA.Value;
        end;
      CDSInscripcion.Close;
      //asigno el comprobante segun condicoin de Inscripcion
      // si el cliente no tiene asignado un comprobante traigo el que le
      // corresponde por el tipo de Iva
      Result := True;
    END
  ELSE
    Result := False;
END;

FUNCTION TDatosRecepMerca.AsignarArticulo(Dato: STRING): Boolean;
BEGIN
  IF CDSRecepDet.State = dsBrowse THEN
    CDSRecepDet.Edit;
  CDSStock.Close;
  CDSStock.Params.ParamByName('Codigo').Value := Dato;
  CDSStock.Open;
  IF (NOT (CDSStock.IsEmpty)) and (CDSStockCLASE_ARTICULO.Value<>0) THEN
    BEGIN
      //vacio todo los importes por si hay un cambio de codigo y no queden cargados los valores
      CDSRecepDetCantidad.AsFloat        :=0;
      CDSRecepDetUnitario_Total.AsFloat  :=0;
      CDSRecepDetUnitario_Gravado.AsFloat:=0;
      CDSRecepDetUnitario_Exento.AsFloat :=0;
      CDSRecepDetTotal.AsFloat           :=0;

      CDSRecepDetCON_NRO_SERIE.Value         := CDSStockCONTROL_SERIE.Value;
      CDSRecepDetDetalle.AsString            := CDSStockDetalle_Stk.AsString;
      CDSRecepDetUnidad.Value                := CDSStockUNIDAD_COMPRA.Value;
      CDSRecepDetCosto_Gravado.AsFloat       := CDSStockFijacion_Precio_Gravado.AsFloat;
      CDSRecepDetCosto_Exento.AsFloat        := CDSStockFijacion_Precio_Exento.AsFloat;
      CDSRecepDetCosto_Total.AsFloat         := CDSStockFijacion_Precio_Total.AsFloat;
      IF CDSStockCON_IMP_INT.Value = 'S' THEN
        CDSRecepDetCOSTO_IMP_INTERNO.AsFloat := CDSStockIMPUESTO_INTERNOS.AsFloat
      ELSE
        CDSRecepDetCOSTO_IMP_INTERNO.AsFloat := 0;
      CDSRecepDetAfecta_Stock.Value          := CDSStockControlaStock.Value;
      CDSRecepDetModo_Gravamen.Value         := CDSStockModo_Gravamen.Value;
      CDSRecepDetTipoIva_Tasa.Value          := CDSStockTasa_Iva.Value;
      CDSRecepDetTipoIva_SobreTasa.Value     := CDSStockSobreTasa_Iva.Value;
      CDSRecepDetCONTROL_TRAZABILIDAD.Value  := CDSStockCONTROL_TRAZABILIDAD.Value;
      //Asigno el deposito que tengo en el encabezado...
      CDSRecepDetDeposito.Value    := CDSRecepCabDeposito.Value;
      //segun el tipo de inscripcion verifico si descrimina o no iva y si cobra Sobre tasa
      CDSRecepDetDesglozaIVA.Value := CDSRecepCabDesglozaIva.Value;
      CDSRecepDetCalcula_SobreTasa.Value     := CDSRecepCabCalcula_SobreTasa.Value;

      if (CDSStockPRESENTACION_CANTIDAD.AsString<>'') and (CDSStockPRESENTACION_CANTIDAD.AsFloat>0) then
        CDSRecepDetPRESENTACION_CANT.AsFloat :=CDSStockPRESENTACION_CANTIDAD.AsFloat
      else
        CDSRecepDetPRESENTACION_CANT.AsFloat:=1;

      // traigo los porcentajes de Iva
      CDSIva.Close;
      CDSIva.Params.ParamByName('id').Value := CDSRecepDetTipoIva_Tasa.Value;
      CDSIva.Open;
      IF NOT (CDSIva.IsEmpty) THEN
        CDSRecepDetIVA_Tasa.Value := CDSIvaTasa.AsFloat;
      CDSIva.Close;
      CDSIva.Params.ParamByName('id').Value := CDSRecepDetTipoIva_SobreTasa.Value;
      CDSIva.Open;
      IF NOT (CDSIva.IsEmpty) THEN
        CDSRecepDetIVA_SobreTasa.Value  := CDSIvaTasa.AsFloat;
      CDSIva.Close;
      CDSRecepDetUnitario_Gravado.Value := CDSRecepDetCosto_Gravado.Value;
      CDSRecepDetUnitario_Exento.Value  := CDSRecepDetCosto_Exento.Value;
      CDSRecepDetUnitario_Total.Value   := CDSRecepDetCOSTO_TOTAL.Value;
      Result := True;
    END
  ELSE
    Result := False;
END;

FUNCTION TDatosRecepMerca.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value:=dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      CDSBuscaComprob.Open;
      ListaPrecios:= DMMain_FD.ListaPorDefecto(DatosRecepMerca.CDSRecepCabSUCURSALCOMPRA.Value);
      CDSRecepCabID_TIPOCOMPROBANTE.Clear;
      CDSRecepCabMUESTRACOMPROBANTE.Clear;
      if CDSBuscaComprob.RecordCount=1 Then
        begin
          DatosRecepMerca.CDSRecepCabID_TIPOCOMPROBANTESetText(DatosRecepMerca.CDSRecepCabID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          FormRecepcionMercaderia.RxDBECodigo.SetFocus;
        end;
      CDSBuscaComprob.Close;
      Result:=True;
      CDSRecepCabMuestraSucursal.Value:=CDSSucursalDetalle.Value;
    END
  ELSE
    BEGIN
      Result:=False;
      CDSRecepCabMuestraSucursal.Value:= '';
      ListaPrecios := 1;
    END;
  CDSSucursal.Close;
END;

FUNCTION TDatosRecepMerca.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value := Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.Eof) THEN
    BEGIN
      Result := True;
      CDSRecepCabMuestraDeposito.Value := CDSDepositoNombre.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSRecepCabMuestraDeposito.Value := '';
    END;
  CDSDeposito.Close;
END;

FUNCTION TDatosRecepMerca.AsignarComprpobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSRecepCabSucursalCOMPRA.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSRecepCabMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSRecepCabLetraRecMer.Value        := QComprobLETRA.Value;
      CDSRecepCabTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSRecepCabCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSRecepCabMUESTRACOMPROBANTE.Value := '';
      CDSRecepCabLetraRecMer.Value        := '';
      CDSRecepCabTIPOCPBTE.Value          := '';
      CDSRecepCabCLASECPBTE.Value         := '';
    END;
  //
END;

PROCEDURE TDatosRecepMerca.SumarDetalle;
VAR
  Dscto: Real;
  Puntero:TBookmark;
  CDSClone:TClientDataSet;
BEGIN
  Puntero:=CDSRecepDet.GetBookmark;

  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSRecepDet,True);
  CDSClone.First;

//  CDSRecepDet.DisableControls;
//  CDSRecepDet.First;
//  IF CDSRecepCab.State = dsBrowse THEN
//  CDSRecepCab.Edit;

  CDSRecepCabNetoGrav1.AsFloat        := 0;
  CDSRecepCabNetoExen1.AsFloat        := 0;
  CDSRecepCabNETOMONOTRIBUTO1.AsFloat := 0;
  CDSRecepCabIMPORTEEXCLUIDO1.AsFloat := 0;
  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
  WHILE NOT (CDSImpuestos.Eof) DO
    BEGIN
      CDSImpuestos.Edit;
      CDSImpuestosNeto.AsFloat := 0;
      CDSImpuestos.Next;
    END;
//  WHILE (NOT CDSRecepDet.Eof) DO
  WHILE (NOT CDSClone.Eof) DO
    BEGIN
      Dscto := 0.01 * (100 - CDSClone.FieldByName('Descuento').AsFloat);
      IF (CDSClone.FieldByName('TipoIva_Tasa').Value <> 0) AND (NOT (VarIsNull(CDSClone.FieldByName('TipoIva_Tasa').Value))) AND
        (CDSClone.FieldByName('Modo_Gravamen').Value <> 'E') AND (CDSRecepCabDESGLOZAIVA.Value = 'S') THEN
        BEGIN
          IF CDSImpuestos.Locate('Codigo_Gravamen',CDSClone.FieldByName('TipoIva_Tasa').Value, []) THEN
            BEGIN
              CDSImpuestos.Edit;
              CDSImpuestosNeto.AsFloat    :=CDSClone.FieldByName('Unitario_Gravado').AsFloat * Dscto * CDSClone.FieldByName('Cantidad').AsFloat + CDSImpuestosNeto.AsFloat;
              CDSImpuestosTasa.AsFloat    :=CDSClone.FieldByName('IVA_Tasa').Value;
              CDSImpuestosImporte.AsFloat :=CDSImpuestosNeto.AsFloat * (CDSImpuestosTasa.AsFloat /100);
              CDSImpuestos.Post;
            END
          ELSE
            BEGIN
              CDSImpuestos.Append;
              CDSImpuestosCodigo_Gravamen.Value     := CDSClone.FieldByName('TipoIva_Tasa').AsInteger;
              CDSIva.Close;
              CDSIva.Params.ParamByName('id').Value := CDSClone.FieldByName('TipoIva_Tasa').AsInteger;
              CDSIva.Open;
              CDSImpuestosDetalle.Value      := CDSIvaDescripcion.Value;
              CDSImpuestosId_Cabrec.Value    := CDSClone.FieldByName('Id_CabRec').Value;
              CDSImpuestosNeto.AsFloat       := CDSClone.FieldByName('Unitario_Gravado').AsFloat * Dscto * CDSClone.FieldByName('Cantidad').AsFloat + CDSImpuestosNeto.AsFloat;
              CDSImpuestosTasa.AsFloat       := CDSClone.FieldByName('IVA_Tasa').Value;
              CDSImpuestosImporte.AsFloat    := CDSImpuestosNeto.AsFloat * (CDSImpuestosTasa.AsFloat /100);
              CDSImpuestos.Post;
              CDSIva.Close;
            END;
          IF CDSClone.FieldByName('Calcula_SobreTasa').Value = 'S' THEN
            BEGIN
              IF CDSImpuestos.Locate('Codigo_Gravamen', CDSClone.FieldByName('TipoIva_SobreTasa').Value, []) THEN
                BEGIN
                  CDSImpuestos.Edit;
                  CDSImpuestosNeto.AsFloat    := CDSClone.FieldByName('Unitario_Gravado').AsFloat * Dscto * CDSClone.FieldByName('Cantidad').AsFloat + CDSImpuestosNeto.AsFloat;
                  CDSImpuestosTasa.AsFloat    := CDSClone.FieldByName('IVA_Tasa').Value;
                  CDSImpuestosImporte.AsFloat := CDSImpuestosNeto.AsFloat * (CDSImpuestosTasa.AsFloat /100);
                  CDSImpuestos.Post;
                END
              ELSE
                BEGIN
                  CDSImpuestos.Append;
                  CDSImpuestosCodigo_Gravamen.Value     := CDSClone.FieldByName('TipoIva_SobreTasa').AsInteger;
                  CDSIva.Close;
                  CDSIva.Params.ParamByName('id').Value := CDSClone.FieldByName('TipoIva_SobreTasa').AsInteger;
                  CDSIva.Open;
                  CDSImpuestosDetalle.Value        := CDSIvaDescripcion.Value;
                  CDSImpuestosId_CabRec.Value      := CDSClone.FieldByName('Id_CabRec').Value;
                  CDSImpuestosNeto.AsFloat         := CDSClone.FieldByName('Unitario_Gravado').AsFloat * Dscto * CDSClone.FieldByName('Cantidad').AsFloat + CDSImpuestosNeto.AsFloat;
                  CDSImpuestosTasa.AsFloat         := CDSClone.FieldByName('IVA_Tasa').AsFloat;
                  CDSImpuestosImporte.AsFloat      := CDSImpuestosNeto.AsFloat * ( CDSImpuestosTasa.AsFloat /100);
                  CDSImpuestos.Post;
                  CDSIva.Close;
                END;
            END;
        END;
      IF CDSRecepCabDESGLOZAIVA.Value = 'S' THEN
        BEGIN
          CDSRecepCabNetoGrav1.AsFloat := CDSClone.FieldByName('Unitario_Gravado').AsFloat * Dscto * CDSClone.FieldByName('Cantidad').AsFloat + CDSRecepCabNetoGrav1.AsFloat;
          CDSRecepCabNetoExen1.AsFloat := CDSClone.FieldByName('Unitario_Exento').AsFloat * Dscto * CDSClone.FieldByName('Cantidad').AsFloat + CDSRecepCabNetoExen1.AsFloat;
        END
      ELSE IF CDSRecepCabDESGLOZAIVA.Value = 'N' THEN
        BEGIN
          CDSRecepCabNETOMONOTRIBUTO1.AsFloat := CDSClone.FieldByName('Unitario_Gravado').AsFloat * Dscto * CDSClone.FieldByName('Cantidad').AsFloat + CDSRecepCabNETOMONOTRIBUTO1.AsFloat;
          CDSRecepCabNetoExen1.AsFloat        := CDSClone.FieldByName('Unitario_Exento').AsFloat * Dscto * CDSClone.FieldByName('Cantidad').AsFloat + CDSRecepCabNETOEXEN1.AsFloat;
        END;
      CDSRecepCabIMPORTEEXCLUIDO1.AsFloat := CDSClone.FieldByName('UNITARIO_IMP_INTERNO').AsFloat * Dscto * CDSClone.FieldByName('Cantidad').AsFloat + CDSRecepCabIMPORTEEXCLUIDO1.AsFloat;
//      CDSRecepDet.Next;
      CDSClone.Next;
    END;

  CDSRecepDet.GotoBookmark(Puntero);
  CDSRecepDet.FreeBookmark(Puntero);
  CDSRecepDet.EnableControls;
  CDSClone.Free;

END;

PROCEDURE TDatosRecepMerca.CalcularTotales;
VAR
  Acumulador: Real;
  Neto: Real;
BEGIN
  CDSRecepCabTotal.AsFloat := 0;
  Acumulador := 0;
  CDSRecepCabNetoGrav2.AsFloat        := CDSRecepCabNetoGrav1.AsFloat * (1-CDSRecepCabDsto.AsFloat/100);
  CDSRecepCabNetoExen2.AsFloat        := CDSRecepCabNetoExen1.AsFloat * (1-CDSRecepCabDsto.AsFloat/100);
  CDSRecepCabNETOMONOTRIBUTO2.AsFloat := CDSRecepCabNETOMONOTRIBUTO1.AsFloat * (1-CDSRecepCabDsto.AsFloat/100);
  CDSRecepCabIMPORTEEXCLUIDO2.AsFloat := CDSRecepCabIMPORTEEXCLUIDO1.AsFloat * (1-CDSRecepCabDsto.AsFloat/100);
  CDSRecepCabDstoImporte.AsFloat      := (CDSRecepCabNetoGrav1.AsFloat + CDSRecepCabNetoExen1.AsFloat + CDSRecepCabNETOMONOTRIBUTO1.AsFloat + CDSRecepCabIMPORTEEXCLUIDO1.AsFloat) * CDSRecepCabDsto.AsFloat * 0.01;
  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
  WHILE NOT (CDSImpuestos.Eof) DO
    BEGIN
      CDSImpuestos.Edit;
      Neto                        := CDSImpuestosNeto.AsFloat;
      CDSImpuestosNeto.AsFloat    := 0;
      CDSImpuestosNeto.AsFloat    := Neto * (1-CDSRecepCabDsto.AsFloat/100);
      CDSImpuestosImporte.AsFloat := 0;
      CDSImpuestosImporte.AsFloat := Moneda3D(' ',MascaraIvaImporte,CDSImpuestosNeto.AsFloat *(CDSimpuestosTasa.AsFloat /100));
      Acumulador                  := Acumulador + CDSImpuestosImporte.AsFloat;
      CDSImpuestos.Next;
    END;
  CDSImpuestos.EnableControls;
  FormRecepcionMercaderia.dbgIva.Refresh;
  CDSRecepCabTotal.AsFloat  := Moneda3D(' ',MascaraCabecera, CDSRecepCabNetoGrav2.AsFloat + CDSRecepCabNETOMONOTRIBUTO2.AsFloat + CDSRecepCabNetoExen2.AsFloat + CDSRecepCabIMPORTEEXCLUIDO2.AsFloat + Acumulador);
END;

procedure TDatosRecepMerca.AplicarMascarasNumericas;
VAR I:Byte;
begin
  MascaraDetalleUnitario:=DMMain_FD.MascaraDetalleUnitarioComp;
  TFloatField(CDSRecepDetUnitario_Total).EditFormat    :=MascaraDetalleUnitario;
  TFloatField(CDSRecepDetUnitario_Total).DisplayFormat :=MascaraDetalleUnitario;

  MascaraDetalleCantidad:=DMMain_FD.MascaraDetalleCantidadComp;
  TFloatField(CDSRecepDetCantidad).EditFormat    :=MascaraDetalleCantidad;
  TFloatField(CDSRecepDetCantidad).DisplayFormat :=MascaraDetalleCantidad;

  MascaraDetalleDescuento:=DMMain_FD.MascaraDetalleDescuentoComp;
  TFloatField(CDSRecepDetDescuento).EditFormat    :=MascaraDetalleDescuento;
  TFloatField(CDSRecepDetDescuento).DisplayFormat :=MascaraDetalleDescuento;


  MascaraDetalleTotal:=DMMain_FD.MascaraDetalleTotalComp;
  TFloatField(CDSRecepDetTotal).EditFormat        := MascaraDetalleTotal;
  TFloatField(CDSRecepDetTotal).DisplayFormat     := MascaraDetalleTotal;

  MascaraIvaTasa:=DMMain_FD.MascaraIvaTasa;
  TFloatField(CDSRecepDetIVA_Tasa).EditFormat          := MascaraIvaTasa;
  TFloatField(CDSRecepDetIVA_Tasa).DisplayFormat       := MascaraIvaTasa;
  TFloatField(CDSRecepDetIVA_SobreTasa).EditFormat     := MascaraIvaTasa;
  TFloatField(CDSRecepDetIVA_SobreTasa).DisplayFormat  := MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).EditFormat             := MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).DisplayFormat          := MascaraIvaTasa;

  MascaraIvaImporte:=DMMain_FD.MascaraIvaImporte;
  TFloatField(CDSImpuestosIMPORTE).EditFormat        := MascaraIvaImporte;
  TFloatField(CDSImpuestosIMPORTE).DisplayFormat     := MascaraIvaImporte;


  MascaraCabecera:=DMMain_FD.MascaraCabeceraComp;
  For i:=0 to CDSRecepCab.FieldCount-1 do
    begin
      if (CDSRecepCab.Fields[i].DataType=ftFloat) Then
       begin
          TFMTBCDField(CDSRecepCab.Fields[i]).EditFormat    := MascaraCabecera;
          TFMTBCDField(CDSRecepCab.fields[i]).DisplayFormat := MascaraCabecera;
          TFloatField(CDSRecepCab.Fields[i]).EditFormat     := MascaraCabecera;
          TFloatField(CDSRecepCab.fields[i]).DisplayFormat  := MascaraCabecera;

       end;
    end;
end;

procedure TDatosRecepMerca.CDSRecepCabCODIGOSetText(Sender: TField;
  const Text: String);
VAR
  Aux: STRING;
BEGIN
  if (Text<>#13) and (Text<>'') Then
    begin
      Aux := Text;
      Aux := Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString := Aux;
      IF NOT (AsignaProveedor(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Proveedor No válido');
          Sender.AsString := '';
          //SysUtils.Abort;
          FormRecepcionMercaderia.RxDBECodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      HabilitarLabel;
      FormRecepcionMercaderia.RxDBECodigo.Text := Aux;
    end;
END;

procedure TDatosRecepMerca.CDSRecepCabSUCRECMERSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString := Copy('00000000', 1, Sender.Size - Length(Text)) + Text;
  CDSRecepCabNROCPBTE.Value:=CDSRecepCabLetraRecMer.Value+CDSRecepCabSucRecMer.Value+CDSRecepCabNumeroRecMer.Value;
end;

procedure TDatosRecepMerca.CDSRecepCabNUMERORECMERSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString := Copy('00000000', 1, Sender.Size - Length(Text)) + Text;
  CDSRecepCabNROCPBTE.Value:=CDSRecepCabLetraRecMer.Value+CDSRecepCabSucRecMer.Value+CDSRecepCabNumeroRecMer.Value;
end;

procedure TDatosRecepMerca.CDSRecepCabDEPOSITOSetText(Sender: TField;
  const Text: String);
begin
  if (Text[1]<>#13) and (Text<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Depósito No Vólido');
          FormRecepcionMercaderia.RxDBEDeposito.SetFocus;
        END;
    end;

end;

procedure TDatosRecepMerca.CDSRecepCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarComprpobante(Sender.AsInteger)) THEN
        BEGIN
          ShowMessage('Dato no Valido');
          Sender.AsString := '';
          //FormRecep_2.RxCTipoCpbte.SetFocus;
        END
      ELSE
        begin
          FormRecepcionMercaderia.UltimoComprobante;
          ReAsignaDetalle;
          HabilitarLabel;
        end;  
    end;

end;

procedure TDatosRecepMerca.CDSRecepCabSUCURSALCOMPRASetText(
  Sender: TField; const Text: String);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Sucursal No Valido');
          FormRecepcionMercaderia.RxDBESucursal.SetFocus;
        END;
    end;

end;

procedure TDatosRecepMerca.CDSRecepDetCODIGOARTICULOSetText(
  Sender: TField; const Text: String);
VAR S,CodTxt: STRING;
Enter:Char;
BEGIN
   Enter:=#13;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      If CDSRecepDet.State=dsBrowse Then
        CDSRecepDet.edit;

//      if FormRecepcionMercaderia.VerCodigoAlternativo1.Checked then
//        CodTxt:='********';
      S :=  DMMain_FD.SearchCodigo(Text,DSRecepDet,FormRecepcionMercaderia.VerCodigoAlternativo1.Checked );

      Sender.AsString:=s;
      IF AsignarArticulo(s) = False THEN
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
          FormBuscadorArticulos.ListaPrecio:= DatosRecepMerca.ListaPrecios;//FormRecepcionMercaderia. DatosVentas.CDSVentaCabLISTAPRECIO.Value;
          FormBuscadorArticulos.Esquema    :=-1;
          FormBuscadorArticulos.Dato       := s;//Text;
          if FormBuscadorArticulos.Visible=False Then
            FormBuscadorArticulos.ShowModal;
          if FormBuscadorArticulos.Codigo<>'' Then
            begin
              IF CDSRecepDet.State = dsBrowse THEN
                CDSRecepDet.Edit;
              CDSRecepDetCODIGOARTICULO.Text  :=  FormBuscadorArticulos.Codigo;
            end
          else
            Sender.AsString:='';
        END;
      if DMMain_FD.EncontroCodigoBarra Then
        begin
          FormRecepcionMercaderia.DBGrillaDetalle.OnKeyPress(FormRecepcionMercaderia.DBGrillaDetalle,Enter);
//         FormCpbte_2.DBGrillaDetalle.OnKeyPress(FormCpbte_2.DBGrillaDetalle,Enter);
        end;
  END;
end;


procedure TDatosRecepMerca.CDSRecepSubDetalleSERIESetText(Sender: TField;
  const Text: String);
var i:integer;
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
     i:=FormRecepcionMercaderia.CodigosSeries.IndexOf(UpperCase(Text));
      if i>=0 Then
        begin
          Sender.Clear;
          showmessage('Codigo de Serie Ingresado ...... ');
          SysUtils.Abort;
        end;
      if CDSRecepSubDetalle.State=dsBrowse Then
       CDSRecepSubDetalle.edit;
      Sender.AsString:=UpperCase(Text);
      if CDSRecepDetCON_NRO_SERIE.Value='S' Then
        begin
          QNroSerie.Close;
          QNroSerie.ParamByName('codigo').Value     := CDSRecepDetCODIGOARTICULO.Value;
          QNroSerie.ParamByName('codigoserie').Value:= Sender.AsString;
          QNroSerie.Open;
          IF (QNroSerie.Fields[0].AsString<>'')  THEN
            BEGIN
              ShowMessage('Codigo Existente, ya fué ingresado...');
              Sender.Clear;
            END;
          QNroSerie.Close;
        end
     end;

end;

procedure TDatosRecepMerca.CDSRecepLoteBeforePost(DataSet: TDataSet);
begin
  if (CDSRecepLoteLOTE.Value='') or (Trim(CDSRecepLoteDESPACHO.Value)='') Then
      begin
        SysUtils.Abort;
      end;
end;

procedure TDatosRecepMerca.CDSRecepLoteNewRecord(DataSet: TDataSet);
begin
  CDSRecepLoteID.Value           := IBGRecepLotes.IncrementFD(1);
  CDSRecepLoteID_DETRECP.Value   := CDSRecepDetID.Value;
  CDSRecepLoteID_CABRECP.Value   := CDSRecepDetID_CABREC.Value;
  CDSRecepLoteCODIGO.Value       := CDSRecepDetCODIGOARTICULO.Value;
  CDSRecepLoteLOTE.Value         := '';
  CDSRecepLoteDESPACHO.Value     := '';
  CDSRecepLoteCANTIDAD.Value     := CDSRecepDetCANTIDAD.Value;
  CDSRecepLoteFECHA.AsDateTime   := CDSRecepDetFECHARECEPCION.AsDateTime;
  CDSRecepLoteFECHAVTO.AsDateTime:= CDSRecepDetFECHARECEPCION.AsDateTime;
  CDSRecepLoteDEPOSITO.Value     := CDSRecepDetDEPOSITO.Value;
  CDSRecepLoteTIPO_COMPROB.Value := CDSRecepDetTIPOCPBTE.Value;
  CDSRecepLoteID_LOTE.Value      := -1;
end;

procedure TDatosRecepMerca.CDSImpuestosNewRecord(DataSet: TDataSet);
begin
  CDSImpuestosId_Impuesto.Value := IBGImpuestos.IncrementFD(1);
  CDSImpuestosID_CABREC.Value   := CDSRecepCabID_RECMER.Value;
  CDSImpuestosNETO.AsFloat      := 0;
  CDSImpuestosTASA.AsFloat      := 0;
  CDSImpuestosIMPORTE.AsFloat   := 0;
end;

procedure TDatosRecepMerca.CDSRecepCabBeforePost(DataSet: TDataSet);
begin
  CDSRecepCabNroCpbte.AsString := CDSRecepCabLETRARECMER.AsString + CDSRecepCabSUCRECMER.AsString + CDSRecepCabNUMERORECMER.AsString;

end;

procedure TDatosRecepMerca.CDSRecepCabNewRecord(DataSet: TDataSet);
begin
  CDSRecepCabID_RECMER.Value               := IBGRecepCab.IncrementFD(1);
  CDSRecepCabFECHARECEPCION.AsDateTime     := Date;
  CDSRecepCabCodigo.Value                  := '';
  CDSRecepCabAnulado.Value                 := 'N';
  CDSRecepCabTipoIVA.AsString              := '';
  CDSRecepCabLETRARECMER.AsString          := '';
  CDSRecepCabDstoImporte.AsFloat           := 0;
  CDSRecepCabDsto.AsFloat                  := 0;
  CDSRecepCabNetoGrav1.AsFloat             := 0;
  CDSRecepCabNetoGrav2.AsFloat             := 0;
  CDSRecepCabNETOEXEN1.AsFloat             := 0;
  CDSRecepCabNETOEXEN2.AsFloat             := 0;
  CDSRecepCabNETOMONOTRIBUTO1.AsFloat      := 0;
  CDSRecepCabNETOMONOTRIBUTO2.AsFloat      := 0;
  CDSRecepCabDSTO.AsFloat                  := 0;
  CDSRecepCabDSTOIMPORTE.AsFloat           := 0;
  CDSRecepCabIMPORTEEXCLUIDO1.AsFloat      := 0;
  CDSRecepCabIMPORTEEXCLUIDO2.AsFloat      := 0;
  CDSRecepCabPROCESADA.Value               := 'N';
  CDSRecepCabMERCADERIA_CONSIGNACION.Value := 'N';
  CDSRecepCabSucursalCompraSetText(CDSRecepCabSucursalCompra,IntToStr(FormRecepcionMercaderia.SucursalPorDefecto));
  CDSRecepCabDepositoSetText(CDSRecepCabDeposito,IntToStr(FormRecepcionMercaderia.DepositoPorDefecto));
  CDSRecepCabUSUARIO.Value:=DMMain_FD.UsuarioActivo;
  CDSRecepCabFECHA_HORA.AsDateTime  :=Now;

end;

procedure TDatosRecepMerca.CDSRecepDetBeforePost(DataSet: TDataSet);
begin
  IF CDSRecepDet.State IN [dsInsert, dsEdit] THEN
    CDSRecepDetNroCpbte.Value := CDSRecepCabLETRARECMER.Value + CDSRecepCabSUCRECMER.Value + CDSRecepCabNUMERORECMER.Value;
  IF (CDSRecepDetCodigoArticulo.AsString = '') AND (CDSRecepDet.State IN [dsInsert, dsEdit]) THEN
    BEGIN
      SysUtils.Abort;
      CDSRecepDet.Cancel;
    END;

end;

procedure TDatosRecepMerca.CDSRecepDetAfterDelete(DataSet: TDataSet);
begin
  { aca voy a los calculos de los totoales de la factura }
  SumarDetalle;
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
end;

procedure TDatosRecepMerca.CDSRecepDetAfterInsert(DataSet: TDataSet);
begin
  IF (CDSRecepCabCodigo.AsString = '') OR (CDSRecepCabNUMERORECMER.AsString ='') THEN
    begin
      SysUtils.Abort;
      CDSRecepDet.Cancel;
    end;

end;

procedure TDatosRecepMerca.CDSRecepDetAfterPost(DataSet: TDataSet);
begin
  { aca voy a los calculos de los totoales de la factura }
  SumarDetalle;
  CalcularTotales;
  // Borrar Los renglones con valor 0 (cero)....
  CDSImpuestos.EnableControls;
  CDSImpuestos.First;
  WHILE NOT (CDSimpuestos.Eof) DO
    BEGIN
      IF (CDSImpuestosImporte.AsFloat<= 0) OR (CDSImpuestosTasa.AsFloat <= 0) THEN
        begin
          CDSImpuestos.Delete;
          CDSImpuestos.First;
        end
      else
        CDSImpuestos.Next;
    END;

end;

procedure TDatosRecepMerca.CDSRecepDetAfterScroll(DataSet: TDataSet);
begin
 FormRecepcionMercaderia.pnLote.Enabled := CDSRecepDetCONTROL_TRAZABILIDAD.Value='S';
end;

procedure TDatosRecepMerca.CDSRecepDetNewRecord(DataSet: TDataSet);
begin
  CDSRecepDetId.Value                      := IBGRecepDet.IncrementFD(1);
  CDSRecepDetRenglon.AsInteger             := CDSRecepDet.RecordCount + 1;
  CDSRecepDetCodigoArticulo.AsString       := '';
  CDSRecepDetDetalle.AsString              := '';
  CDSRecepDetUnidad.ASString               := '';
  CDSRecepDetCantidad.ASFloat              := 0;
  CDSRecepDetUnitario_Total.AsFloat        := 0;
  CDSRecepDetDescuento.ASFloat             := 0;
  CDSRecepDetDesglozaIVA.AsString          := CDSRecepCabDESGLOZAIVA.Value;
  CDSRecepDetTipoIva_Tasa.AsFloat          := 0;
  CDSRecepDetTipoIva_Sobretasa.AsFloat     := 0;
  CDSRecepDetIVA_Tasa.AsFloat              := 0;
  CDSRecepDetIVA_SobreTasa.AsFloat         := 0;
  CDSRecepDetTotal.AsFloat                 := 0;
  CDSRecepDetCodigoProveedor.AsString      := CDSRecepCabCodigo.AsString;
  CDSRecepDetDeposito.Value                := CDSRecepCabDeposito.Value;
  CDSRecepDetTIPOCPBTE.Value               := CDSRecepCabTIPOCPBTE.Value;
  CDSRecepDetNroCpbte.AsString             := CDSRecepCabLETRARECMER.Value + CDSRecepCabSUCRECMER.Value + CDSRecepCabNUMERORECMER.Value;
  CDSRecepDetFECHARECEPCION.AsDateTime     := CDSRecepCabFECHARECEPCION.AsDateTime;
  CDSRecepDetCLASECPBTE.AsString           := CDSRecepCabCLASECPBTE.AsString;
  CDSRecepDetID_CABREC.Value               := CDSRecepCabID_RECMER.Value;
  CDSRecepDetID_FACTURA.Clear;
  CDSRecepDetNROFACTURA.Clear;
  CDSRecepDetMERCADERIA_CONSIGNACION.Value := CDSRecepCabMERCADERIA_CONSIGNACION.Value;
  CDSRecepDetPRESENTACION_CANT.AsFloat     := 1;
  CDSRecepDetCONTROL_TRAZABILIDAD.Value    :='N';

end;

procedure TDatosRecepMerca.CDSRecepSubDetalleAfterPost(DataSet: TDataSet);
begin
  FormRecepcionMercaderia.CodigosSeries.Add(CDSRecepSubDetalleSERIE.Value);
end;

procedure TDatosRecepMerca.CDSRecepSubDetalleBeforeDelete(DataSet: TDataSet);
VAR i:Integer;
begin
  i:=FormRecepcionMercaderia.CodigosSeries.IndexOf(CDSRecepSubDetalleSERIE.AsString);
  FormRecepcionMercaderia.CodigosSeries.Delete(I);
end;

procedure TDatosRecepMerca.CDSRecepSubDetalleBeforeEdit(DataSet: TDataSet);
VAR I:Integer;
begin
  QNroSerie.Close;
  QNroSerie.ParamByName('codigo').Value     :=CDSRecepSubDetalleCODIGOARTICULO.Value;
  QNroSerie.ParamByName('codigoserie').Value:=CDSRecepSubDetalleSERIE.Value;
  QNroSerie.Open;
  IF (QNroSerie.Fields[0].AsString<>'') and (QNroSerieFECHAEGRESO.AsString<>'' )  THEN
    BEGIN
      ShowMessage('No se puede Modificar el Nro de serie por que ya fué entregado...');
      CDSRecepSubDetalle.Cancel;
      SysUtils.Abort;
    END
  else
    begin
      i:=FormRecepcionMercaderia.CodigosSeries.IndexOf(CDSRecepSubDetalleSERIE.AsString);
      FormRecepcionMercaderia.CodigosSeries.Delete(I);
    end;
  QNroSerie.Close;
end;


procedure TDatosRecepMerca.DataModuleDestroy(Sender: TObject);
begin
  DatosRecepMerca:=nil;
end;

procedure TDatosRecepMerca.CDSRecepDetCANTIDADSetText(Sender: TField;
  const Text: String);
VAR
  Aux3: Real;
BEGIN
  if Text<>'' Then
    begin
      Sender.AsString := Text;
      Sender.AsFloat:=Moneda3D(' ',MascaraDetalleCantidad,Sender.AsFloat);
      Aux3 := CDSRecepDetUnitario_Total.AsFloat;
      CDSRecepDetTotal.AsFloat             := Sender.AsFloat * Aux3 * (1 - CDSRecepDetDescuento.AsFloat * 0.01);
      CDSRecepDetCANTIDAD_UNIDADES.AsFloat := Sender.AsFloat/CDSRecepDetPRESENTACION_CANT.AsFloat;
    end;
END;

procedure TDatosRecepMerca.CDSRecepDetUNITARIO_TOTALSetText(
  Sender: TField; const Text: String);
VAR
  Num, AuxGravado, AuxExento, AuxExcluido, AuxTotal: real;
  TextAux:String;
BEGIN
  if Text<>'' Then
    begin
      TextAux:=Text;
      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);
      TextAux:=FormatFloat(MascaraDetalleUnitario,StrToFloat(TextAux));
      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);

       Num:=StrToFloat(TextAux);
       
      IF CDSRecepDetModo_Gravamen.Value <> '' THEN
        CASE CDSRecepDetModo_Gravamen.Value[1] OF
          'E': CDSRecepDetUnitario_Exento.AsFloat  := Num;
          'G': CDSRecepDetUnitario_Gravado.AsFloat := Num;
        END;
      AuxGravado  := CDSRecepDetUnitario_Gravado.AsFloat;
      AuxExento   := CDSRecepDetUnitario_Exento.AsFloat;
      AuxExcluido := CDSRecepDetUNITARIO_IMP_INTERNO.AsFloat;
      //AuxTotal    := Moneda3D(MascaraDetalleUnitario,wwCDSCompraDetUnitario_Total.Value);
      // IF wwCDSCompraCabDesglozaIva.Value = 'N' THEN
      //    AuxGravado := (AuxGravado / (1 + (wwCDSCompraDetIVA_Tasa.Value /100)));
     //   wwCDSCompraDetUnitario_Gravado.Value := AuxGravado;
      AuxTotal                  := AuxGravado + AuxExento + AuxExcluido;
      CDSRecepDetTotal.AsFloat  := CDSRecepDetCantidad.AsFloat * AuxTotal *( 1 - CDSRecepDetDescuento.AsFloat * 0.01);
      Sender.AsString           := FloatToStr(AuxTotal);
     // IF wwCDSCompraDet.State in [dsEdit,dsInsert] Then wwCDSCompraDet.Post;
    end;
END;

procedure TDatosRecepMerca.CDSRecepSubDetalleNewRecord(DataSet: TDataSet);
begin
  CDSRecepSubDetalleID.Value             := IBGRecepSubDet.IncrementFD(1);
  CDSRecepSubDetalleID_DETREC.Value      := CDSRecepDetID.Value;
  CDSRecepSubDetalleID_CABREC.Value      := CDSRecepCabID_RECMER.Value;
  CDSRecepSubDetalleTIPOCPBTE.Value      := CDSRecepCabTIPOCPBTE.Value;
  CDSRecepSubDetalleCLASECPBTE.Value     := CDSRecepCabCLASECPBTE.Value;
  CDSRecepSubDetalleFECHA.AsDateTime     := CDSRecepCabFECHARECEPCION.AsDateTime;
  CDSRecepSubDetalleNROCPBTE.Value       := CDSRecepCabNROCPBTE.Value;
  CDSRecepSubDetalleCODIGOARTICULO.Value := CDSRecepDetCODIGOARTICULO.Value;
  CDSRecepSubDetalleDEPOSITO.Value       := CDSRecepCabDeposito.Value;
end;

procedure TDatosRecepMerca.CDSRecepSubDetalleBeforePost(DataSet: TDataSet);
begin
   if CDSRecepSubDetalleSERIE.Value='' Then
      begin
        SysUtils.Abort;
      end;

end;

procedure TDatosRecepMerca.CDSRecepSubDetalleBeforeInsert(
  DataSet: TDataSet);
begin
  if ((CDSRecepSubDetalle.RecordCount+1)> CDSRecepDetCantidad.AsFloat)
  or (CDSRecepDetCON_NRO_SERIE.Value='N') Then
    begin
      sysutils.Abort;
      RAISE Exception.Create('No se pueden cargara mas items de los comprados...')
    end;

end;

procedure TDatosRecepMerca.CDSRecepDetBeforeDelete(DataSet: TDataSet);
begin
  CDSRecepSubDetalle.First;
  while Not(CDSRecepSubDetalle.Eof) do
    begin
      CDSRecepSubDetalle.Delete;
      CDSRecepSubDetalle.Next;
    end;
end;

end.
