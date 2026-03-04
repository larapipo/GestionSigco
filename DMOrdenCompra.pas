unit DMOrdenCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBGenerator, Db, Provider, DBClient,Librerias,System.StrUtils,
  Variants, FMTBcd, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  FireDAC.DBX.Migrate;

type
  TDatosOrdenCompra = class(TDataModule)
    DSPOrdenCompraCab: TDataSetProvider;
    DSPOrdenCompraDet: TDataSetProvider;
    DSPProveedor: TDataSetProvider;
    DSPBuscaCondCompra: TDataSetProvider;
    DSPStock: TDataSetProvider;
    DSPIva: TDataSetProvider;
    DSPSucursal: TDataSetProvider;
    DSPImpuestos: TDataSetProvider;
    DSPDeposito: TDataSetProvider;
    IBGOrdenCompCab: TIBGenerator;
    IBGOrdenCompDet: TIBGenerator;
    IBGImpuestos: TIBGenerator;
    DSPInscripcion: TDataSetProvider;
    DSPEmpresa: TDataSetProvider;
    DSPOrdenCompraVtos: TDataSetProvider;
    IBGOrdenCompVtos: TIBGenerator;
    DSTransportes: TDataSource;
    DSImpuestos: TDataSource;
    CDSDeposito: TClientDataSet;
    CDSDepositoID: TIntegerField;
    CDSDepositoNOMBRE: TStringField;
    CDSDepositoSUCURSAL: TIntegerField;
    DSOrdenCompraDet: TDataSource;
    DSOrdenCompraVtos: TDataSource;
    CDSBuscaDeposito: TClientDataSet;
    DSPBuscaDeposito: TDataSetProvider;
    CDSBuscaDepositoNOMBRE: TStringField;
    CDSBuscaDepositoID: TIntegerField;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    CDSBuscaCondCompra: TClientDataSet;
    CDSBuscaCondCompraCODIGOPAGO: TIntegerField;
    CDSBuscaCondCompraCODIGOPROVEE: TStringField;
    CDSBuscaCondCompraDETALLE: TStringField;
    CDSBuscaCondCompraDIAS: TIntegerField;
    CDSBuscaCondCompraDESCUENTO: TFloatField;
    CDSBuscaCondCompraDESCUENTO_FPAGO: TFloatField;
    DSPCondCompra: TDataSetProvider;
    CDSCondCompra: TClientDataSet;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalCOMISION: TFloatField;
    CDSPersonalCARGO: TIntegerField;
    CDSPersonalCATEGORIA: TIntegerField;
    CDSPersonalAUTORIZAOC: TStringField;
    CDSPersonalSECTORDECOMPRA: TStringField;
    DSPBuscaVendedor: TDataSetProvider;
    CDSBuscaVendedor: TClientDataSet;
    CDSBuscaVendedorCODIGO: TStringField;
    CDSBuscaVendedorNOMBRE: TStringField;
    CDSBuscaVendedorCOMISION: TFloatField;
    CDSOrdenCompCab: TClientDataSet;
    CDSOrdenCompCabID_OC: TIntegerField;
    CDSOrdenCompCabTIPOCPBTE: TStringField;
    CDSOrdenCompCabCLASECPBTE: TStringField;
    CDSOrdenCompCabNROCPBTE: TStringField;
    CDSOrdenCompCabCODIGO: TStringField;
    CDSOrdenCompCabLETRA: TStringField;
    CDSOrdenCompCabSUC: TStringField;
    CDSOrdenCompCabNUMERO: TStringField;
    CDSOrdenCompCabNOMBRE: TStringField;
    CDSOrdenCompCabRAZONSOCIAL: TStringField;
    CDSOrdenCompCabDIRECCION: TStringField;
    CDSOrdenCompCabCPOSTAL: TStringField;
    CDSOrdenCompCabLOCALIDAD: TStringField;
    CDSOrdenCompCabTIPOIVA: TIntegerField;
    CDSOrdenCompCabCUIT: TStringField;
    CDSOrdenCompCabFECHA: TSQLTimeStampField;
    CDSOrdenCompCabFECHAVTO: TSQLTimeStampField;
    CDSOrdenCompCabCONDICIONCOMPRA: TIntegerField;
    CDSOrdenCompCabANULADO: TStringField;
    CDSOrdenCompCabN_OPERACION2: TFloatField;
    CDSOrdenCompCabNETOGRAV1: TFloatField;
    CDSOrdenCompCabNETOGRAV2: TFloatField;
    CDSOrdenCompCabDSTO: TFloatField;
    CDSOrdenCompCabDSTOIMPORTE: TFloatField;
    CDSOrdenCompCabNETOEXEN1: TFloatField;
    CDSOrdenCompCabNETOEXEN2: TFloatField;
    CDSOrdenCompCabIMPORTEEXCLUIDO1: TFloatField;
    CDSOrdenCompCabIMPORTEEXCLUIDO2: TFloatField;
    CDSOrdenCompCabNETOMONOTRIBUTO1: TFloatField;
    CDSOrdenCompCabNETOMONOTRIBUTO2: TFloatField;
    CDSOrdenCompCabTOTAL: TFloatField;
    CDSOrdenCompCabIMPRESO: TStringField;
    CDSOrdenCompCabSUCURSAL: TIntegerField;
    CDSOrdenCompCabDEPOSITO: TIntegerField;
    CDSOrdenCompCabAUTORIZO: TStringField;
    CDSOrdenCompCabREALIZO: TStringField;
    CDSOrdenCompCabCALCULA_SOBRETASA: TStringField;
    CDSOrdenCompCabDESGLOZAIVA: TStringField;
    CDSOrdenCompCabESTADO: TStringField;
    CDSOrdenCompCabFECHAAUTORIZACION: TSQLTimeStampField;
    CDSOrdenCompCabFECHACUMPLIDA: TSQLTimeStampField;
    CDSOrdenCompCabOBSERVACIONES: TMemoField;
    CDSOrdenCompCabNOTAS: TStringField;
    CDSOrdenCompCabUSUARIO: TStringField;
    CDSOrdenCompCabTRANSPORTE: TIntegerField;
    CDSOrdenCompCabTIPO: TSmallintField;
    CDSOrdenCompCabTIPO_PROVEEDOR: TStringField;
    CDSOrdenCompCabID_PRESUPUESTO_OC: TIntegerField;
    CDSOrdenCompCabTELEFONOS: TStringField;
    CDSOrdenCompCabMUESTRACONDCOMPRA: TStringField;
    CDSOrdenCompCabMUESTRADEPOSITO: TStringField;
    CDSOrdenCompCabMUESTRASUCURSAL: TStringField;
    CDSOrdenCompCabMUESTRACOMPROBANTE: TStringField;
    CDSOrdenCompCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSOrdenCompCabMUESTRAREALIZO: TStringField;
    CDSOrdenCompCabMUESTRAAUTORIZO: TStringField;
    CDSOrdenCompCabMUESTRANUMEROPRESOC: TStringField;
    CDSOrdenCompCabMUESTRAID_PRESOC: TIntegerField;
    CDSOrdenCompraDet: TClientDataSet;
    CDSOrdenCompraDetID: TIntegerField;
    CDSOrdenCompraDetID_CABOC: TIntegerField;
    CDSOrdenCompraDetTIPOCPBTE: TStringField;
    CDSOrdenCompraDetCLASECPBTE: TStringField;
    CDSOrdenCompraDetNROCPBTE: TStringField;
    CDSOrdenCompraDetRENGLON: TFloatField;
    CDSOrdenCompraDetFECHA: TSQLTimeStampField;
    CDSOrdenCompraDetCODIGOARTICULO: TStringField;
    CDSOrdenCompraDetDETALLE: TStringField;
    CDSOrdenCompraDetUNIDAD: TStringField;
    CDSOrdenCompraDetCANTIDADPEDIDA: TFloatField;
    CDSOrdenCompraDetCANTIDADAUTORIZADA: TFloatField;
    CDSOrdenCompraDetCANTIDADRECIBIDA: TFloatField;
    CDSOrdenCompraDetUNITARIO_TOTAL: TFloatField;
    CDSOrdenCompraDetUNITARIO_GRAVADO: TFloatField;
    CDSOrdenCompraDetUNITARIO_EXENTO: TFloatField;
    CDSOrdenCompraDetDESGLOZAIVA: TStringField;
    CDSOrdenCompraDetIVA_TASA: TFloatField;
    CDSOrdenCompraDetTIPOIVA_TASA: TIntegerField;
    CDSOrdenCompraDetIVA_SOBRETASA: TFloatField;
    CDSOrdenCompraDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSOrdenCompraDetSUCURSAL: TIntegerField;
    CDSOrdenCompraDetDEPOSITO: TIntegerField;
    CDSOrdenCompraDetCALCULA_SOBRETASA: TStringField;
    CDSOrdenCompraDetMODO_GRAVAMEN: TStringField;
    CDSOrdenCompraDetTOTAL: TFloatField;
    CDSOrdenCompraDetID_COMP_REC: TIntegerField;
    CDSOrdenCompraDetTIPO_COMP_REC: TStringField;
    CDSOrdenCompraDetCLASE_COMP_REC: TStringField;
    CDSOrdenCompraDetNRO_COMP_REC: TStringField;
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
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalRECARGO: TFloatField;
    CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    QVerifiComprob: TFDQuery;
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
    CDSProveedorRETIENE_IVA: TStringField;
    CDSProveedorRETIENE_IB: TStringField;
    CDSProveedorRETIENE_GANANCIAS: TStringField;
    CDSProveedorIVA_SERVICIOS: TStringField;
    CDSProveedorPRECIOS_CON_IVA: TStringField;
    CDSProveedorOBSERVACIONES: TMemoField;
    CDSProveedorNOMBRE_REPRESENTANTE: TStringField;
    CDSProveedorDIRECCION_REPRESENTANTE: TStringField;
    CDSProveedorTELEFONO_REPRESENTANTE: TStringField;
    CDSProveedorTIPO_PROVEEDOR: TStringField;
    CDSProveedorFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSProveedorFECHAALTA: TSQLTimeStampField;
    CDSProveedorSALDO_INICIAL: TFloatField;
    CDSProveedorID_PERC_IVA: TIntegerField;
    CDSProveedorID_PERC_IBB: TIntegerField;
    CDSProveedorID_PERC_IBB_2: TIntegerField;
    CDSProveedorRUBRO: TIntegerField;
    CDSProveedorID_FACTURAPORDEFECTO: TIntegerField;
    CDSProveedorEXENTO_GANACIA: TStringField;
    CDSProveedorCODIGO_REGIMEN_RET_GANACIA: TIntegerField;
    CDSProveedorEXENTO_RETENCION_IB: TStringField;
    CDSProveedorID_TASA_RETENCION_IB: TIntegerField;
    CDSProveedorNRO_IIBB: TStringField;
    CDSProveedorCORREO: TStringField;
    CDSIva: TClientDataSet;
    CDSIvaCODIGO: TIntegerField;
    CDSIvaDESCRIPCION: TStringField;
    CDSIvaTASA: TFloatField;
    CDSIvaCOLUMNA: TSmallintField;
    CDSImpuestos: TClientDataSet;
    CDSImpuestosID_IMPUESTO: TIntegerField;
    CDSImpuestosCODIGO_GRAVAMEN: TIntegerField;
    CDSImpuestosDETALLE: TStringField;
    CDSImpuestosID_OCCAB: TIntegerField;
    CDSImpuestosNETO: TFloatField;
    CDSImpuestosTASA: TFloatField;
    CDSImpuestosIMPORTE: TFloatField;
    CDSEmpresa: TClientDataSet;
    QSumaOCNuevas: TFDQuery;
    QSumaOC: TFDQuery;
    CDSOrdenCompraVtos: TClientDataSet;
    CDSOrdenCompraVtosID: TIntegerField;
    CDSOrdenCompraVtosID_OCCAB: TIntegerField;
    CDSOrdenCompraVtosDIAS: TSmallintField;
    CDSOrdenCompraVtosFECHA_VENCIMIEMTO: TSQLTimeStampField;
    CDSOrdenCompraVtosIMPORTE: TFloatField;
    QPrimerConComp: TFDQuery;
    CDSInscripcion: TClientDataSet;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    QSumaTotal: TFDQuery;
    QComprob: TFDQuery;
    QBuscaCompr: TFDQuery;
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
    CDSTransportes: TClientDataSet;
    DSPTransportes: TDataSetProvider;
    QTransport: TFDQuery;
    CDSTransportesID: TIntegerField;
    CDSTransportesNOMBRE: TStringField;
    CDSTransportesDIRECCION: TStringField;
    CDSTransportesTELEFONO: TStringField;
    CDSTransportesLOCALIDAD: TStringField;
    QDarCumplidaOC: TFDQuery;
    CDSCondCompraCODIGOPROVEE: TStringField;
    CDSCondCompraCODIGOPAGO: TIntegerField;
    CDSCondCompraDESCUENTO: TFloatField;
    CDSCondCompraDETALLE: TStringField;
    CDSCondCompraDIAS: TIntegerField;
    CDSCondCompraDESCUENTO_FPAGO: TFloatField;
    CDSBuscaAutoriza: TClientDataSet;
    DSPBuscaAutoriza: TDataSetProvider;
    CDSBuscaAutorizaCODIGO: TStringField;
    CDSBuscaAutorizaNOMBRE: TStringField;
    CDSBuscaAutorizaCOMISION: TFloatField;
    CDSBuscaAutorizaMAX_OC_AUTORIZAR: TFloatField;
    CDSOrdenCompCabFECHA_HORA: TSQLTimeStampField;
    CDSOrdenCompraDetMUESTRAPRESCANT: TFloatField;
    CDSOrdenCompraDetMUESTRAPRESUNI: TStringField;
    CDSOrdenCompraDetID_MONEDA: TIntegerField;
    CDSOrdenCompraDetCOTIZACION: TFloatField;
    QMonedas: TFDQuery;
    QMonedasID: TIntegerField;
    QMonedasMONEDA: TStringField;
    QMonedasCOTIZACION: TFloatField;
    QMonedasSIGNO: TStringField;
    QMonedasORDEN: TSmallintField;
    QMonedasCOTIZACION_COMPRA: TFloatField;
    CDSOrdenCompraDetMUESTRAMONEDA: TStringField;
    QStockArticulo: TFDQuery;
    QStockArticuloCODIGO_STK: TStringField;
    QStockArticuloACTUALIZACOSTO: TStringField;
    QStockArticuloFIJACION_PRECIO_GRAVADO: TFloatField;
    QStockArticuloFIJACION_PRECIO_EXENTO: TFloatField;
    QStockArticuloCOSTO_GRAVADO_STK: TFloatField;
    QStockArticuloCOSTO_EXENTO_STK: TFloatField;
    QStockArticuloMONEDA: TIntegerField;
    QStockArticuloDETALLE_STK: TStringField;
    QStockArticuloMONEDA_COTIZACION: TFloatField;
    QStockArticuloMONEDA_SIGNO: TStringField;
    QStockArticuloMONEDA_DETALLE: TStringField;
    QStockArticuloMODO_GRAVAMEN: TStringField;
    QStockArticuloFISICO: TFloatField;
    spCambiaPrecio: TFDStoredProc;
    spInformaCambioPrecio: TFDStoredProc;
    CDSOCDetXML: TClientDataSet;
    CDSOCCabXML: TClientDataSet;
    CDSOrdenCompCabID_OCOMPRA_PREV: TIntegerField;
    CDSOrdenCompCabNRO_OC_ANTERIOR: TStringField;
    CDSOrdenCompCabID_OCOMPRA_NEXT: TIntegerField;
    CDSOrdenCompCabNRO_OC_SIGUIEN: TStringField;
    QAutorizarOC: TFDQuery;
    QPrimerComprador: TFDQuery;
    QRecepciones: TFDQuery;
    QFacturaComp: TFDQuery;
    DSPRecepciones: TDataSetProvider;
    CDSRecepciones: TClientDataSet;
    CDSRecepcionesID_RECMER: TIntegerField;
    CDSRecepcionesTIPOCPBTE: TStringField;
    CDSRecepcionesCLASECPBTE: TStringField;
    CDSRecepcionesNROCPBTE: TStringField;
    CDSRecepcionesFECHARECEPCION: TSQLTimeStampField;
    DSPFacturaComp: TDataSetProvider;
    CDSFacturaComp: TClientDataSet;
    CDSFacturaCompID_FC: TIntegerField;
    CDSFacturaCompTIPOCPBTE: TStringField;
    CDSFacturaCompCLASECPBTE: TStringField;
    CDSFacturaCompNROCPBTE: TStringField;
    CDSFacturaCompFECHACOMPRA: TSQLTimeStampField;
    DSRecepciones: TDataSource;
    DSFacturaComp: TDataSource;
    CDSOrdenCompraDetMUESTRACODALTERNATIVO: TStringField;
    CDSOrdenCompCabMUESTRACORREO: TStringField;
    CDSOrdenCompraDetDETALLE_ADICIONAL: TStringField;
    QCambiaFechaCumplida: TFDQuery;
    QRecibirOC: TFDQuery;
    QVolverAutorizada: TFDQuery;
    CDSOrdenCompraDetID_DET_NOTAPEDIDO: TIntegerField;
    QLimpiarBorradorOC: TFDQuery;
    CDSOrdenCompraDetMUESTRAPRECIOVTA: TFloatField;
    CDSOrdenCompraDetCANTIDAD: TFloatField;
    CDSOrdenCompraDetMUESTRACODIGOBARRA: TStringField;
    CDSOrdenCompraDetMUESTRACODARTIPROVEE: TStringField;
    procedure CDSOrdenCompCabCODIGOSetText(Sender: TField;
      const Text: String);
    procedure CDSOrdenCompCabSUCSetText(Sender: TField;
      const Text: String);
    procedure CDSOrdenCompCabNUMEROSetText(Sender: TField;
      const Text: String);
    procedure CDSOrdenCompCabDEPOSITOSetText(Sender: TField;
      const Text: String);
    procedure CDSOrdenCompCabCONDICIONCOMPRASetText(Sender: TField;
      const Text: String);
    procedure CDSOrdenCompCabDSTOSetText(Sender: TField;
      const Text: String);
    procedure CDSOrdenCompCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSOrdenCompCabSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure CDSOrdenCompraDetCODIGOARTICULOSetText(Sender: TField;
      const Text: String);
    procedure CDSOrdenCompraDetCANTIDADPEDIDASetText(Sender: TField;
      const Text: String);
    procedure CDSOrdenCompraDetUNITARIO_TOTALSetText(Sender: TField;
      const Text: String);
    procedure CDSOrdenCompCabNewRecord(DataSet: TDataSet);
    procedure CDSOrdenCompCabREALIZOSetText(Sender: TField;
      const Text: String);
    procedure CDSOrdenCompCabAUTORIZOSetText(Sender: TField;
      const Text: String);
    procedure CDSOrdenCompraDetNewRecord(DataSet: TDataSet);
    procedure CDSOrdenCompraDetBeforePost(DataSet: TDataSet);
    procedure CDSOrdenCompraDetAfterPost(DataSet: TDataSet);
    procedure CDSImpuestosNewRecord(DataSet: TDataSet);
    procedure CDSOrdenCompraDetCANTIDADAUTORIZADASetText(Sender: TField;
      const Text: String);
    procedure CDSOrdenCompraDetBeforeInsert(DataSet: TDataSet);
    procedure CDSOrdenCompraDetCANTIDADRECIBIDASetText(Sender: TField;
      const Text: String);
    procedure DSOrdenCompraDetStateChange(Sender: TObject);
    procedure CDSOrdenCompraVtosNewRecord(DataSet: TDataSet);
    procedure CDSOrdenCompraVtosDIASSetText(Sender: TField;
      const Text: String);
    procedure DSOrdenCompraVtosStateChange(Sender: TObject);
    procedure CDSOrdenCompraVtosAfterDelete(DataSet: TDataSet);
    procedure CDSOrdenCompCabBeforeEdit(DataSet: TDataSet);
    procedure CDSOrdenCompCabFECHASetText(Sender: TField;
      const Text: string);
    procedure CDSOrdenCompraDetAfterScroll(DataSet: TDataSet);
    procedure CDSOrdenCompCabBeforePost(DataSet: TDataSet);
    procedure CDSOrdenCompraDetCODIGOARTICULOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSOrdenCompraDetCalcFields(DataSet: TDataSet);
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
    PROCEDURE HabilitarLabel;
    FUNCTION AsignaProveedor(Dato: STRING): Boolean;
    FUNCTION AsignarArticulo(Dato: STRING): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION AsignarCondCompra(Proveedor: STRING; Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    FUNCTION AsignarEmpleado(tipo:byte;Dato: String): Boolean;//tipo...0 = realizo, 1 = autoriza
    PROCEDURE SumarDetalle;
    PROCEDURE CalcularTotales;
    PROCEDURE CalcularVtos;
    procedure SumarCantidades;
    procedure AplicarMascarasNumericas;
    procedure LimpiaCondiciones;
    procedure InformarCambioPrecioHistorial;
    procedure RecotizarPrecios;

  end;

var
  DatosOrdenCompra: TDatosOrdenCompra;

implementation
uses UDMain_FD,DMBuscadoresForm,UOrdenCOmpra, UAvisoCambioPrecioCompra,
  UMuestraListaCodBarra, UBuscadorArticulos;
{$R *.DFM}



procedure TDatosOrdenCompra.RecotizarPrecios;
var p:TBookmark;
AuxGravado,AuxExento,AuxExcluido,AuxTotal:Real;
begin
   // Recalcular tdos los precios
  if ( CDSOrdenCompCab.State<>dsBrowse ) then
    begin
      p:=CDSOrdenCompraDet.GetBookmark;
      CDSOrdenCompraDet.DisableControls;
      CDSOrdenCompraDet.First;
      while Not(CDSOrdenCompraDet.Eof) do
        begin
          CDSOrdenCompraDet.Edit;

          QMonedas.Close;
          QMonedas.ParamByName('id').Value:=CDSOrdenCompraDetID_MONEDA.Value;
          QMonedas.Open;
          CDSOrdenCompraDetCOTIZACION.AsFloat  :=QMonedasCOTIZACION_COMPRA.AsFloat;
          QMonedas.Close;


          CDSOrdenCompraDetUnitario_Exento.AsFloat      :=CDSOrdenCompraDetUNITARIO_EXENTO.AsFloat * CDSOrdenCompraDetCOTIZACION.AsFloat;
          CDSOrdenCompraDetUNITARIO_GRAVADO.AsFloat     :=CDSOrdenCompraDetUNITARIO_GRAVADO.AsFloat * CDSOrdenCompraDetCOTIZACION.AsFloat;
          CDSOrdenCompraDetUnitario_Total.AsFloat       :=CDSOrdenCompraDetUNITARIO_TOTAL.aSfLOAT * CDSOrdenCompraDetCOTIZACION.AsFloat;

          AuxGravado  := CDSOrdenCompraDetUNITARIO_GRAVADO.AsFloat;
          AuxExento   := CDSOrdenCompraDetUNITARIO_EXENTO.AsFloat;

          AuxTotal                  := AuxGravado + AuxExento ;
          CDSOrdenCompraDetTotal.AsFloat := CDSOrdenCompraDetCANTIDADPEDIDA.AsFloat * AuxTotal ;
            //Sender.AsString           := FloatToStr(AuxTotal);
          CDSOrdenCompraDet.Next;
        end;
      SumarDetalle;
      CDSOrdenCompraDet.GotoBookmark(p);
      CDSOrdenCompraDet.FreeBookmark(p);
      CDSOrdenCompraDet.EnableControls;

    end;
end;


procedure TDatosOrdenCompra.InformarCambioPrecioHistorial;
VAR Puntero:TBookmark;
aux:real;
Cambia: boolean;
PrecioStock,PrecioFactura:Integer;
Exento,Gravado,ExentoPonderado,GravadoPonderado,TotalPonderado,CantidadTotal:Extended;
ActualizaPorPonderado,MostrarCotizacion:Boolean;
ChoiceControlPrecio    : Byte;

begin
  MostrarCotizacion    :=True;
  ActualizaPorPonderado:=False;
  ChoiceControlPrecio   :=  mrNone;

  if DMMain_FD.ActualizaCosto then
    begin
      Puntero:=CDSOrdenCompraDet.GetBookmark;
      CDSOrdenCompraDet.First;
      CDSOrdenCompraDet.DisableControls;
      while Not(CDSOrdenCompraDet.Eof) do
        begin
          QStockArticulo.Close;
          QStockArticulo.ParamByName('codigo').AsString:=CDSOrdenCompraDetCODIGOARTICULO.Value;
          QStockArticulo.Open;

          Cambia       := QStockArticuloACTUALIZACOSTO.Value='S';
          if Cambia then
            begin
              PrecioStock  := Trunc((QStockArticuloFIJACION_PRECIO_GRAVADO.AsFloat+QStockArticuloFIJACION_PRECIO_EXENTO.AsFloat)*1000);

              aux           := CDSOrdenCompraDetUNITARIO_TOTAL.AsFloat;
              PrecioFactura := Trunc(aux *1000);
              Exento        := CDSOrdenCompraDetUNITARIO_EXENTO.AsFloat;
              Gravado       := CDSOrdenCompraDetUNITARIO_GRAVADO.AsFloat;


              if ((PrecioFactura<>PrecioStock) and ((not DMMain_FD.ActualizaCostoMayor) or (PrecioFactura>PrecioStock))) and
                 (DMMain_FD.VerificaCambioPrecioCompra) and (ChoiceControlPrecio <> mrNoToAll) then
                 begin
                   if  (ChoiceControlPrecio <> mrYesToAll) then
                     begin
                       if not(Assigned(FormAvisoCambioPrecioCompra)) then
                         FormAvisoCambioPrecioCompra:=TFormAvisoCambioPrecioCompra.Create(self);
                       FormAvisoCambioPrecioCompra.PrecioOld       := (PrecioStock * 0.001);
                       FormAvisoCambioPrecioCompra.PrecioNew       := (PrecioFactura * 0.001);
                       FormAvisoCambioPrecioCompra.Stock           := QStockArticuloFISICO.AsFloat;
                       FormAvisoCambioPrecioCompra.CostoPonderado  := TotalPonderado;
                       FormAvisoCambioPrecioCompra.Monedastock     := CDSOrdenCompraDetMUESTRAMONEDA.Value;
                       FormAvisoCambioPrecioCompra.Detalle         := QStockArticuloCODIGO_STK.Value+':'+
                                                                      QStockArticuloDETALLE_STK.Value;
                       FormAvisoCambioPrecioCompra.MonedaCompra    := CDSOrdenCompraDetMUESTRAMONEDA.Value;
                       QMonedas.Close;
                       FormAvisoCambioPrecioCompra.showModal;
                       ChoiceControlPrecio  := FormAvisoCambioPrecioCompra.ModalResult;
                       ActualizaPorPonderado:= FormAvisoCambioPrecioCompra.PorCostoPonderado='S';
                       FreeAndNil(FormAvisoCambioPrecioCompra);
                     end;
                 end;

              if ChoiceControlPrecio IN [mrYes,mrYesToAll] Then
                begin
                  DMMain_FD.fdcGestion.StartTransaction;
                  try
                    if ActualizaPorPonderado=True  then
                      begin
                        Exento :=ExentoPonderado;
                        Gravado:=GravadoPonderado;
                      end;
                    // ******* Cambia el precio **************
                    spCambiaPrecio.close;
                    spCambiaPrecio.ParamByName('Codigo').Value        := CDSOrdenCompraDetCODIGOARTICULO.Value;
                    spCambiaPrecio.ParamByName('FPEXENTO').Value      := EXENTO;
                    spCambiaPrecio.ParamByName('FPGRAVADO').Value     := GRAVADO;
                    spCambiaPrecio.ParamByName('COSTOEXENTO').Value   := EXENTO;
                    spCambiaPrecio.ParamByName('COSTOGRAVADO').Value  := GRAVADO;
                    spCambiaPrecio.ParamByName('ID_LISTA').Value      := -1;
                    spCambiaPrecio.ParamByName('RECARGO').Value       := 0;
                    spCambiaPrecio.ParamByName('FECHA').Value         := Date;
                  //  spCambiaPrecio.ParamByName('ACTUALIZA_COST').AsString := 'S';
                    spCambiaPrecio.ParamByName('DETALLE').Value       := '';

                    spCambiaPrecio.ExecProc;

                    // **** Ingreso en el Historial de Precios **************
                    spInformaCambioPrecio.Close;
                    spInformaCambioPrecio.ParamByName('codigo').Value               :=CDSOrdenCompraDetCODIGOARTICULO.Value;

                    spInformaCambioPrecio.ParamByName('costo_old').Value            :=QStockArticuloCOSTO_GRAVADO_STK.AsFloat+QStockArticuloCOSTO_EXENTO_STK.AsFloat ;
                    spInformaCambioPrecio.ParamByName('costo_old_gravado').Value    :=QStockArticuloCOSTO_GRAVADO_STK.AsFloat;
                    spInformaCambioPrecio.ParamByName('costo_old_exento').Value     :=QStockArticuloCOSTO_EXENTO_STK.AsFloat;

                    spInformaCambioPrecio.ParamByName('fprecio_old').Value          :=QStockArticuloFIJACION_PRECIO_GRAVADO.AsFloat + QStockArticuloFIJACION_PRECIO_EXENTO.AsFloat;
                    spInformaCambioPrecio.ParamByName('fprecio_old_gravado').Value  :=QStockArticuloFIJACION_PRECIO_GRAVADO.AsFloat;
                    spInformaCambioPrecio.ParamByName('fprecio_old_exento').Value   :=QStockArticuloFIJACION_PRECIO_EXENTO.AsFloat;


                    spInformaCambioPrecio.ParamByName('costo_new').Value            :=PrecioFactura*0.001;
                    spInformaCambioPrecio.ParamByName('fprecio_new').Value          :=PrecioFactura*0.001;

                    spInformaCambioPrecio.ParamByName('costo_new_gravado').Value    :=Gravado;
                    spInformaCambioPrecio.ParamByName('costo_new_exento').Value     :=Exento;

                    spInformaCambioPrecio.ParamByName('fprecio_new_gravado').Value  :=Gravado;
                    spInformaCambioPrecio.ParamByName('fprecio_new_exento').Value   :=Exento;

                    spInformaCambioPrecio.ParamByName('id_fc_compra').Value         := CDSOrdenCompCabID_OC.Value;

                    spInformaCambioPrecio.ParamByName('usuario').Value              :=DMMain_FD.UsuarioActivo;
                    spInformaCambioPrecio.ParamByName('fecha').Value                :=Now;
                    spInformaCambioPrecio.ParamByName('motivo').Value               :='Cambio de precio O.Compra:'+ CDSOrdenCompCabNROCPBTE.Value;
                    spInformaCambioPrecio.ExecProc;
                    // ******************************************
                    DMMain_FD.fdcGestion.Commit;
                  except
                    DMMain_FD.fdcGestion.Rollback;
                    ShowMessage('No se aplico el cambio de precio....');
                  end;
                end;
            end;
          QStockArticulo.Close;
          spInformaCambioPrecio.Close;
          spCambiaPrecio.close;
          CDSOrdenCompraDet.Next;
        end;
      CDSOrdenCompraDet.GotoBookmark(Puntero);
      CDSOrdenCompraDet.FreeBookmark(Puntero);
      CDSOrdenCompraDet.EnableControls;
    end;
end;


procedure TDatosOrdenCompra.SumarCantidades;
var CDSClone:TClientDataSet;
Aux:Extended;
begin
  Aux:=0;
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSOrdenCompraDet,True);
  CDSClone.First;
  while Not(CDSClone.Eof) do
    begin
      Aux:=Aux+(CDSClone.FieldByName('MUESTRAPRESCANT').AsFloat*CDSClone.FieldByName('CANTIDADPEDIDA').AsFloat);
      CDSClone.Next;
    end;
  CDSClone.Free;
  FormOrdenCompra.edCantidad.Value:=Aux;
end;

PROCEDURE TDatosOrdenCompra.HabilitarLabel;
BEGIN
  {Si la Factura no discrimina IVA}
   FormOrdenCompra.dbgIva.Visible          := CDSOrdenCompCabDESGLOZAIVA.Value = 'S';
   FormOrdenCompra.RxLabel4.Visible        := CDSOrdenCompCabDESGLOZAIVA.Value = 'S';
END;


FUNCTION TDatosOrdenCompra.AsignaProveedor(Dato: STRING): Boolean;
BEGIN
  WITH DatosOrdenCompra.CDSProveedor, DatosOrdenCompra DO
    BEGIN
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := Dato;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.Eof) THEN
        BEGIN
          CDSOrdenCompCabNombre.AsString        := CDSProveedorNombre.AsString;
          CDSOrdenCompCabRazonSocial.AsString   := CDSProveedorRazon_Social.ASString;
          CDSOrdenCompCabCuit.AsString          := CDSProveedorN_de_CUIT.AsString;
          CDSOrdenCompCabDireccion.AsString     := CDSProveedorDireccion.AsString;
          CDSOrdenCompCabTipoIVA.Value          := CDSProveedorCondicion_IVA.Value;
          CDSOrdenCompCabCPostal.AsString       := CDSProveedorCod_Postal.AsString;
          CDSOrdenCompCabLocalidad.AsString     := CDSProveedorLocalidad.AsString;
          CDSOrdenCompCabTIPO_PROVEEDOR.AsString:= CDSProveedorTIPO_PROVEEDOR.AsString;
          CDSOrdenCompCabTELEFONOS.Value        := CDSProveedorTELEFONO_1.Value +'/' + CDSProveedorTELEFONO_2.Value;
          CDSOrdenCompCabMUESTRACORREO.AsString := CDSProveedorCORREO.AsString;
          CDSInscripcion.Close;
          CDSInscripcion.Params.ParamByName('Codigo').Value := CDSOrdenCompCabTipoIva.Value;
          CDSInscripcion.Open;
          IF NOT (CDSInscripcion.Eof) THEN
            begin
              CDSOrdenCompCabCALCULA_SOBRETASA.Value := CDSInscripcionCobraSobretasa.Value;
              CDSOrdenCompCabDESGLOZAIVA.Value       := CDSInscripcionDISCRIMINAIVA.Value;
            end;
          CDSInscripcion.Close;
          QPrimerConComp.CLose;
          QPrimerConComp.ParamByName('codigo').AsString:=Dato;
          QPrimerConComp.Open;
          if Not(QPrimerConComp.IsEmpty) Then
            if QPrimerConComp.Fields[0].AsString<>'' Then
              begin
                CDSOrdenCompCabCondicionCompraSetText(CDSOrdenCompCabCondicionCompra,QPrimerConComp.Fields[0].AsString);
              end
            else
              begin
                ShowMessage('No tiene Condiciones de Compra cargadas....');
                CDSOrdenCompCabCondicionCompra.Clear;
                CDSOrdenCompCabMUESTRACONDCOMPRA.Clear;
              end;
          QPrimerConComp.CLose;
        //  FormOrdenCompra.DetalleOp.Execute;
          Result := True;
        END
      ELSE
        Result := False;
    END;
END;

FUNCTION TDatosOrdenCompra.AsignarArticulo(Dato: STRING): Boolean;
BEGIN
  IF CDSOrdenCompraDet.State = dsBrowse THEN
    CDSOrdenCompraDet.Edit;
  CDSStock.Close;
  CDSStock.Params.ParamByName('Codigo').Value := Dato;
  CDSStock.Open;
  IF (NOT (CDSStock.IsEmpty)) and (CDSStockCLASE_ARTICULO.Value<>0) THEN
    BEGIN
      //vacio todo los importes por si hay un cambio de codigo y no queden cargados los valores
      CDSOrdenCompraDetCANTIDADPEDIDA.AsFloat         := 0;
      CDSOrdenCompraDetCANTIDADAUTORIZADA.AsFloat     := 0;
      CDSOrdenCompraDetCANTIDADRECIBIDA.AsFloat       := 0;
      CDSOrdenCompraDetMUESTRACODALTERNATIVO.Value    := CDSStockREEMPLAZO_STK.AsString;
      CDSOrdenCompraDetMUESTRAPRESCANT.AsFloat        := CDSStockPRESENTACION_CANTIDAD.AsFloat;
      CDSOrdenCompraDetMUESTRAPRESUNI.Value           := CDSStockPRESENTACION_UNIDAD.Value;
      CDSOrdenCompraDetDETALLE_ADICIONAL.AsWideString := CDSStockDETALLE_STK_ADICIONAL.AsWideString;
      CDSOrdenCompraDetUnitario_Total.AsFloat         := 0;
      CDSOrdenCompraDetUnitario_Gravado.AsFloat       := 0;
      CDSOrdenCompraDetUnitario_Exento.AsFloat        := 0;
      CDSOrdenCompraDetTotal.AsFloat                  := 0;

      CDSOrdenCompraDetMUESTRACODARTIPROVEE.Value     := DMMain_FD.GetArticuloProveedor(Dato,CDSOrdenCompCabCODIGO.AsString);
      CDSOrdenCompraDetID_MONEDA.Value                := CDSStockMONEDA.Value;

      QMonedas.Close;
      QMonedas.ParamByName('id').Value        := CDSStockMONEDA.Value;
      QMonedas.Open;
      if QMonedasID.AsString<>'' then
        CDSOrdenCompraDetMUESTRAMONEDA.Value := QMonedasSIGNO.Value;
      CDSOrdenCompraDetCOTIZACION.AsFloat    := QMonedasCOTIZACION_COMPRA.AsFloat;
      QMonedas.Close;

      CDSOrdenCompraDetDetalle.AsString        := CDSStockDetalle_Stk.AsString;
      CDSOrdenCompraDetUnidad.Value            := CDSStockUNIDAD_COMPRA.Value;
      CDSOrdenCompraDetModo_Gravamen.Value     := CDSStockModo_Gravamen.Value;
      CDSOrdenCompraDetTipoIva_Tasa.Value      := CDSStockTasa_Iva.Value;
      CDSOrdenCompraDetTipoIva_SobreTasa.Value := CDSStockSobreTasa_Iva.Value;
      //Asigno el deposito que tengo en el encabezado...
      CDSOrdenCompraDetDeposito.Value    := CDSOrdenCompCabDeposito.Value;
      //segun el tipo de inscripcion verifico si descrimina o no iva y si cobra Sobre tasa
      CDSOrdenCompraDetDesglozaIVA.Value       := CDSOrdenCompCabDesglozaIva.Value;
      CDSOrdenCompraDetCalcula_SobreTasa.Value := CDSOrdenCompCabCalcula_SobreTasa.Value;
      // traigo los porcentajes de Iva
      CDSIva.Close;
      CDSIva.Params.ParamByName('id').Value := CDSOrdenCompraDetTipoIva_Tasa.Value;
      CDSIva.Open;
      IF NOT (CDSIva.IsEmpty) THEN
        CDSOrdenCompraDetIVA_Tasa.Value     := CDSIvaTasa.Value;
      CDSIva.Close;
      CDSIva.Params.ParamByName('id').Value := CDSOrdenCompraDetTipoIva_SobreTasa.Value;
      CDSIva.Open;
      IF NOT (CDSIva.IsEmpty) THEN
        CDSOrdenCompraDetIVA_SobreTasa.AsFloat  := CDSIvaTasa.AsFloat;
      CDSOrdenCompraDetUnitario_Gravado.AsFloat := CDSStockFijacion_Precio_Gravado.AsFloat;//  * CDSOrdenCompraDetCOTIZACION.AsFloat;
      CDSOrdenCompraDetUnitario_Exento.Asfloat  := CDSStockFijacion_Precio_Exento.AsFloat;//  * CDSOrdenCompraDetCOTIZACION.AsFloat;
      CDSOrdenCompraDetUnitario_Total.AsFloat   := CDSStockFijacion_Precio_Total.AsFloat;// * CDSOrdenCompraDetCOTIZACION.AsFloat;
      Result := True;
    END
  ELSE
    Result := False;
END;

FUNCTION TDatosOrdenCompra.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value:=dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      CDSBuscaComprob.Open;
      CDSOrdenCompCabID_TIPOCOMPROBANTE.Clear;
      CDSOrdenCompCabMUESTRACOMPROBANTE.Clear;
      if CDSBuscaComprob.RecordCount=1 Then
        begin
          DatosOrdenCompra.CDSOrdenCompCabID_TIPOCOMPROBANTESetText(DatosOrdenCompra.CDSOrdenCompCabID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          FormOrdenCompra.RxDBECodigo.SetFocus;
        end;
      CDSBuscaComprob.Close;
      Result:=True;
      CDSOrdenCompCabMuestraSucursal.Value := CDSSucursalDetalle.Value;
    END
  ELSE
    BEGIN
      Result:=False;
      CDSOrdenCompCabMuestraSucursal.Value:= '';
    END;
END;

FUNCTION TDatosOrdenCompra.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value := Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.Eof) THEN
    BEGIN
      Result := True;
      CDSOrdenCompCabMuestraDeposito.Value := CDSDepositoNombre.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSOrdenCompCabMuestraDeposito.Value := '';
    END;
  CDSDeposito.Close;
END;

FUNCTION TDatosOrdenCompra.AsignarCondCompra(Proveedor: STRING; Dato: Integer):
  Boolean;
BEGIN
  LimpiaCondiciones;
  CDSCondCompra.Close;
  CDSCondCompra.Params.ParamByName('Codigo').Value := Proveedor;
  CDSCondCompra.Params.ParamByName('CodigoPago').Value := Dato;
  CDSCondCompra.Open;
  IF (CDSCondCompraCODIGOPAGO.AsString<>'') THEN
    BEGIN
      Result := True;
      CDSOrdenCompCabMuestraCondCompra.Value := CDSCondCompraDETALLE.Value;
      CDSOrdenCompCabFECHAVTO.AsDateTime     := CDSOrdenCompCabFECHA.AsDateTime + CDSCondCompraDias.Value;
      CDSOrdenCompraVtos.Insert;
      if CDSCondCompraDIAS.AsString<>'' then
        CDSOrdenCompraVtosDIASSetText(CDSOrdenCompraVtosDIAS,CDSCondCompraDIAS.AsString)
      else
        CDSOrdenCompraVtosDIASSetText(CDSOrdenCompraVtosDIAS,'1');

      if CDSOrdenCompraVtos.State<>dsBrowse Then
        CDSOrdenCompraVtos.Post;
    END
  ELSE
    BEGIN
      Result := False;
      CDSOrdenCompCabMuestraCondCompra.Value := '';
    END

END;

FUNCTION TDatosOrdenCompra.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSOrdenCompCabSucursal.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSOrdenCompCabMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSOrdenCompCabLetra.Value              := QComprobLETRA.Value;
      CDSOrdenCompCabTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSOrdenCompCabCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSOrdenCompCabMUESTRACOMPROBANTE.Value := '';
      CDSOrdenCompCabLetra.Value              := '';
      CDSOrdenCompCabTIPOCPBTE.Value          := '';
      CDSOrdenCompCabCLASECPBTE.Value         := '';
    END;
  //
END;

FUNCTION TDatosOrdenCompra.AsignarEmpleado(Tipo:byte;Dato: String): Boolean;
BEGIN
  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('Codigo').Value:=Dato;
  CDSPersonal.Open;
  IF NOT (CDSPersonal.IsEmpty) THEN
    BEGIN
      if Tipo=0 Then
        begin
          CDSOrdenCompCabMUESTRAREALIZO.Value :=CDSPersonalNOMBRE.Value;
          Result:=True;
        end
      else
        if (Tipo=1) and (CDSPersonalAUTORIZAOC.Value='S') Then
          begin
            CDSOrdenCompCabMUESTRAAUTORIZO.Value := CDSPersonalNOMBRE.Value;
            Result:=True;
          end
        ELSE
          begin
            Result:=False;
            CDSOrdenCompCabMUESTRAAUTORIZO.Value:='';
           end;
    END
  ELSE
    begin
      Result:=False;
      if Tipo=0 Then
        CDSOrdenCompCabMUESTRAREALIZO.Value:=''
      else
        if Tipo=1 Then
          CDSOrdenCompCabMUESTRAAUTORIZO.Value:='';
    end;
  CDSPersonal.Close;
END;


procedure TDatosOrdenCompra.CDSOrdenCompCabCODIGOSetText(
  Sender: TField; const Text: String);
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
          FormOrdenCompra.RxDBECodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      HabilitarLabel;
      FormOrdenCompra.RxDBECodigo.Text := Aux;
    end;
END;

procedure TDatosOrdenCompra.CDSOrdenCompCabSUCSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString := Copy('00000000', 1, Sender.Size - Length(Text)) + Text;
  CDSOrdenCompCabNROCPBTE.Value:=CDSOrdenCompCabLetra.Value+CDSOrdenCompCabSuc.Value+CDSOrdenCompCabNumero.Value;

end;

procedure TDatosOrdenCompra.CDSOrdenCompCabNUMEROSetText(
  Sender: TField; const Text: String);
begin
  Sender.AsString := Copy('00000000', 1, Sender.Size - Length(Text)) + Text;
  CDSOrdenCompCabNROCPBTE.Value:=CDSOrdenCompCabLetra.Value+CDSOrdenCompCabSuc.Value+CDSOrdenCompCabNumero.Value;

end;

procedure TDatosOrdenCompra.CDSOrdenCompCabDEPOSITOSetText(
  Sender: TField; const Text: String);
begin
  if (Text[1]<>#13) and (Text<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Depósito No Vólido');
          FormOrdenCompra.RxDBEDeposito.SetFocus;
        END;
    end;

end;

procedure TDatosOrdenCompra.CDSOrdenCompCabCONDICIONCOMPRASetText(
  Sender: TField; const Text: String);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarCondCompra(CDSOrdenCompCabCodigo.Value, Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Condición de Compra No Válido');
          FormOrdenCompra.RxDBECondCompra.SetFocus;
        END;
    end;

end;

procedure TDatosOrdenCompra.CDSOrdenCompCabDSTOSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString := Text;
  SumarDetalle;
  CalcularTotales;
  FormOrdenCompra.dbeDscto.SetFocus;

end;

procedure TDatosOrdenCompra.CDSOrdenCompCabFECHASetText(Sender: TField;
  const Text: string);
begin
  if CDSOrdenCompCab.State in [dsInsert,dsEdit] then
    begin

      Sender.AsString:=Text;
      FormOrdenCompra.SetDesdeHasta(Sender.AsDateTime);
      QSumaOC.Close;
      QSumaOC.ParamByName('desde').Value:=FormOrdenCompra.Desde;
      QSumaOC.ParamByName('hasta').Value:=FormOrdenCompra.Hasta;
      QSumaOC.Open;

      if QSumaOC.fields[0].AsString<>'' then
        FormOrdenCompra.SetTotalOC(QSumaOC.fields[0].Value)
      else
        FormOrdenCompra.SetTotalOC(0);

      QSumaTotal.Close;
      QSumaTotal.ParamByName('desde').Value:=FormOrdenCompra.Desde;
      QSumaTotal.ParamByName('hasta').Value:=FormOrdenCompra.Hasta;
      QSumaTotal.Open;

      if QSumaTotal.fields[0].AsString<>'' then
        FormOrdenCompra.SetTotalGral(QSumaTotal.fields[0].Value)
      else
        FormOrdenCompra.SetTotalGral(0);

      QSumaOCNuevas.Close;
      QSumaOCNuevas.ParamByName('desde').Value:=FormOrdenCompra.Desde;
      QSumaOCNuevas.ParamByName('hasta').Value:=FormOrdenCompra.Hasta;
      QSumaOCNuevas.Open;

      if QSumaOCNuevas.fields[0].AsString<>'' then
        FormOrdenCompra.SetTotalNuevas(QSumaOCNuevas.fields[0].Value)
      else
        FormOrdenCompra.SetTotalNuevas(0);
    end;

end;

procedure TDatosOrdenCompra.CDSOrdenCompCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
        BEGIN
          ShowMessage('Dato no Valido');
          Sender.AsString := '';
          //FormOrdenCompra.RxCTipoCpbte.SetFocus;
        END
      ELSE
        begin
          FormOrdenCompra.UltimoComprobante;
          HabilitarLabel;
        end;
    end;

end;

procedure TDatosOrdenCompra.CDSOrdenCompCabSUCURSALSetText(
  Sender: TField; const Text: String);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;

      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Sucursal No Valido');
          FormOrdenCompra.RxDBESucursal.SetFocus;
        END;
    end;

end;

PROCEDURE TDatosOrdenCompra.SumarDetalle;
VAR  Dscto: Real;
  P:TBookMark;
  CDSClone:TClientDataSet;
  ValorAux:String;
  Aux:Extended;
BEGIN
  P:=CDSOrdenCompraDet.GetBookmark;
  //CDSOrdenCompraDet.DisableControls;
  //CDSOrdenCompraDet.First;
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSOrdenCompraDet,True);
  CDSClone.First;
  IF CDSOrdenCompCab.State = dsBrowse THEN
    CDSOrdenCompCab.Edit;

  CDSOrdenCompCabNetoGrav1.AsFloat        := 0;
  CDSOrdenCompCabNetoExen1.AsFloat        := 0;
  CDSOrdenCompCabNETOMONOTRIBUTO1.AsFloat := 0;
  CDSOrdenCompCabIMPORTEEXCLUIDO1.AsFloat := 0;
  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
  WHILE NOT (CDSImpuestos.Eof) DO
    BEGIN
      CDSImpuestos.Edit;
      CDSImpuestosNeto.AsFloat := 0;
      CDSImpuestos.Next;
    END;
  CDSImpuestos.EnableControls;
  Aux:=0;
//  WHILE (NOT CDSOrdenCompraDet.Eof) DO
  WHILE (NOT CDSClone.Eof) DO
    BEGIN
      Aux:=Aux+(CDSClone.FieldByName('MUESTRAPRESCANT').AsFloat * CDSClone.FieldByName('CANTIDADPEDIDA').AsFloat);

      Dscto := 1;//0.01 * (100 - wwCDSOrdenCompraDetDescuento.Value);
      IF (CDSClone.FieldByName('TIPOIVA_TASA').AsInteger <> 0) AND (NOT (VarIsNull(CDSClone.FieldByName('TIPOIVA_TASA').AsInteger))) AND
         (CDSClone.FieldByName('MODO_GRAVAMEN').Value <> 'E') THEN
        BEGIN
          IF CDSImpuestos.Locate('Codigo_Gravamen',CDSClone.FieldByName('TipoIva_Tasa').Value, []) THEN
            BEGIN
              CDSImpuestos.Edit;
              CDSImpuestosNeto.AsFloat    := (CDSClone.FieldByName('Unitario_Gravado').AsFloat * CDSClone.FieldByName('COTIZACION').AsFloat) *
                                              Dscto * CDSClone.FieldByName('CANTIDADRECIBIDA').AsFloat + CDSImpuestosNeto.AsFloat;
              CDSImpuestosTasa.AsFloat    := CDSClone.FieldByName('IVA_Tasa').AsFloat;
              CDSImpuestosImporte.AsFloat := CDSImpuestosNeto.AsFloat * ( CDSImpuestosTasa.AsFloat * 0.01);
              CDSImpuestos.Post;
            END
          ELSE
            BEGIN
              CDSImpuestos.Insert;
              CDSImpuestosCodigo_Gravamen.Value     := CDSClone.FieldByName('TipoIva_Tasa').AsInteger;
              CDSIva.Close;
              CDSIva.Params.ParamByName('id').Value := CDSClone.FieldByName('TipoIva_Tasa').AsInteger;
              CDSIva.Open;
              CDSImpuestosDetalle.Value   := CDSIvaDescripcion.Value;
              CDSImpuestosID_OCCAB.Value  := CDSClone.FieldByName('ID_CABOC').Value;
              CDSImpuestosNeto.AsFloat    := (CDSClone.FieldByName('Unitario_Gravado').AsFloat * CDSClone.FieldByName('COTIZACION').AsFloat) *
                                              Dscto * CDSClone.FieldByName('CANTIDADRECIBIDA').AsFloat + CDSImpuestosNeto.AsFloat;
              CDSImpuestosTasa.AsFloat    := CDSClone.FieldByName('IVA_Tasa').AsFloat;
              CDSImpuestosImporte.AsFloat := CDSImpuestosNeto.AsFloat * ( CDSImpuestosTasa.AsFloat * 0.01);
              CDSImpuestos.Post;
              CDSIva.Close;
            END;
        END;

      IF CDSOrdenCompCabDESGLOZAIVA.Value = 'S' THEN
        BEGIN
          CDSOrdenCompCabNetoGrav1.AsFloat := (CDSClone.FieldByName('Unitario_Gravado').AsFloat * CDSClone.FieldByName('COTIZACION').AsFloat) *
                                               Dscto * CDSClone.FieldByName('CANTIDADRECIBIDA').AsFloat + CDSOrdenCompCabNetoGrav1.AsFloat;
          CDSOrdenCompCabNetoExen1.AsFloat := (CDSClone.FieldByName('Unitario_Exento').AsFloat * CDSClone.FieldByName('COTIZACION').AsFloat) *
                                               Dscto * CDSClone.FieldByName('CANTIDADRECIBIDA').AsFloat + CDSOrdenCompCabNetoExen1.AsFloat;
        END
      ELSE IF CDSOrdenCompCabDESGLOZAIVA.Value = 'N' THEN
        BEGIN
          CDSOrdenCompCabNETOMONOTRIBUTO1.AsFloat := (CDSClone.FieldByName('Unitario_Gravado').AsFloat * CDSClone.FieldByName('COTIZACION').AsFloat) *
                                                     Dscto * CDSClone.FieldByName('CANTIDADRECIBIDA').AsFloat + CDSOrdenCompCabNETOMONOTRIBUTO1.AsFloat;
          CDSOrdenCompCabNetoExen1.AsFloat        := (CDSClone.FieldByName('Unitario_Exento').AsFloat * CDSClone.FieldByName('COTIZACION').AsFloat) *
                                                     Dscto * CDSClone.FieldByName('CANTIDADRECIBIDA').AsFloat + CDSOrdenCompCabNetoExen1.AsFloat;
        END;
      CDSOrdenCompCabIMPORTEEXCLUIDO1.AsFloat := CDSOrdenCompCabIMPORTEEXCLUIDO1.AsFloat;
      CDSClone.Next;
    END;
  CDSOrdenCompraDet.GotoBookmark(p);
  CDSOrdenCompraDet.FreeBookmark(p);
  CDSOrdenCompraDet.EnableControls;
  CDSClone.Free;
  FormOrdenCompra.edCantidad.Value:=Aux;
  {

    WHILE (NOT CDSClone.Eof) DO
    BEGIN
      Dscto := 1;//0.01 * (100 - wwCDSOrdenCompraDetDescuento.Value);
      IF (CDSOrdenCompraDetTipoIva_Tasa.Value <> 0) AND (NOT (VarIsNull(CDSOrdenCompraDetTipoIva_Tasa.Value))) AND
        (CDSOrdenCompraDetModo_Gravamen.Value <> 'E') AND (CDSOrdenCompCabDESGLOZAIVA.Value = 'S') THEN
        BEGIN
          IF CDSImpuestos.Locate('Codigo_Gravamen',CDSOrdenCompraDetTipoIva_Tasa.Value, []) THEN
            BEGIN
              CDSImpuestos.Edit;
              CDSImpuestosNeto.AsFloat    := (CDSOrdenCompraDetUnitario_Gravado.AsFloat * CDSOrdenCompraDetCOTIZACION.AsFloat) * Dscto * CDSOrdenCompraDetCANTIDADRECIBIDA.AsFloat + CDSImpuestosNeto.AsFloat;
              CDSImpuestosTasa.Value      := CDSOrdenCompraDetIVA_Tasa.Value;
              CDSImpuestosImporte.AsFloat := CDSImpuestosNeto.AsFloat * ( CDSImpuestosTasa.AsFloat * 0.01);
              CDSImpuestos.Post;
            END
          ELSE
            BEGIN
              CDSImpuestos.Insert;
              CDSImpuestosCodigo_Gravamen.Value     := CDSOrdenCompraDetTipoIva_Tasa.AsInteger;
              CDSIva.Close;
              CDSIva.Params.ParamByName('id').Value := CDSOrdenCompraDetTipoIva_Tasa.AsInteger;
              CDSIva.Open;
              CDSImpuestosDetalle.Value   := CDSIvaDescripcion.Value;
              CDSImpuestosID_OCCAB.Value  := CDSOrdenCompraDetID_CABOC.Value;
              CDSImpuestosNeto.AsFloat    := (CDSOrdenCompraDetUnitario_Gravado.AsFloat * CDSOrdenCompraDetCOTIZACION.AsFloat) * Dscto * CDSOrdenCompraDetCANTIDADRECIBIDA.AsFloat + CDSImpuestosNeto.AsFloat;
              CDSImpuestosTasa.Value      := CDSOrdenCompraDetIVA_Tasa.Value;
              CDSImpuestosImporte.AsFloat := CDSImpuestosNeto.AsFloat * ( CDSImpuestosTasa.AsFloat * 0.01);
              CDSImpuestos.Post;
              CDSIva.Close;
            END;
        END;

      IF CDSOrdenCompCabDESGLOZAIVA.Value = 'S' THEN
        BEGIN
          CDSOrdenCompCabNetoGrav1.AsFloat := (CDSOrdenCompraDetUnitario_Gravado.AsFloat * CDSOrdenCompraDetCOTIZACION.AsFloat) * Dscto * CDSOrdenCompraDetCANTIDADRECIBIDA.AsFloat + CDSOrdenCompCabNetoGrav1.AsFloat;
          CDSOrdenCompCabNetoExen1.AsFloat := (CDSOrdenCompraDetUnitario_Exento.AsFloat * CDSOrdenCompraDetCOTIZACION.AsFloat) * Dscto * CDSOrdenCompraDetCANTIDADRECIBIDA.AsFloat + CDSOrdenCompCabNetoExen1.AsFloat;
        END
      ELSE IF CDSOrdenCompCabDESGLOZAIVA.Value = 'N' THEN
        BEGIN
          CDSOrdenCompCabNETOMONOTRIBUTO1.AsFloat := (CDSOrdenCompraDetUnitario_Gravado.AsFloat * CDSOrdenCompraDetCOTIZACION.AsFloat) * Dscto * CDSOrdenCompraDetCANTIDADRECIBIDA.AsFloat + CDSOrdenCompCabNETOMONOTRIBUTO1.AsFloat;
          CDSOrdenCompCabNetoExen1.AsFloat        := (CDSOrdenCompraDetUnitario_Exento.AsFloat * CDSOrdenCompraDetCOTIZACION.AsFloat) * Dscto * CDSOrdenCompraDetCANTIDADRECIBIDA.AsFloat + CDSOrdenCompCabNetoExen1.AsFloat;
        END;
      CDSOrdenCompCabIMPORTEEXCLUIDO1.AsFloat := CDSOrdenCompCabIMPORTEEXCLUIDO1.AsFloat;
      CDSOrdenCompraDet.Next;
    END;
  CDSOrdenCompraDet.GotoBookmark(p);
  CDSOrdenCompraDet.FreeBookmark(p);
  CDSOrdenCompraDet.EnableControls;
  }

END;

PROCEDURE TDatosOrdenCompra.CalcularTotales;
VAR
  Acumulador: Real;
  Neto: Real;
BEGIN
  CDSOrdenCompCabTotal.AsFloat := 0;
  Acumulador := 0;
  CDSOrdenCompCabNetoGrav2.AsFloat        := CDSOrdenCompCabNetoGrav1.AsFloat * (1 - CDSOrdenCompCabDsto.AsFloat * 0.01);
  CDSOrdenCompCabNetoExen2.AsFloat        := CDSOrdenCompCabNetoExen1.AsFloat * (1 - CDSOrdenCompCabDsto.AsFloat * 0.01);
  CDSOrdenCompCabNETOMONOTRIBUTO2.AsFloat := CDSOrdenCompCabNETOMONOTRIBUTO1.AsFloat * (1-CDSOrdenCompCabDsto.AsFloat * 0.01);
  CDSOrdenCompCabIMPORTEEXCLUIDO2.AsFloat := CDSOrdenCompCabIMPORTEEXCLUIDO1.AsFloat * (1-CDSOrdenCompCabDsto.AsFloat * 0.01);
  CDSOrdenCompCabDstoImporte.AsFloat      := (CDSOrdenCompCabNetoGrav1.AsFloat + CDSOrdenCompCabNetoExen1.AsFloat + CDSOrdenCompCabNETOMONOTRIBUTO1.AsFloat + CDSOrdenCompCabIMPORTEEXCLUIDO1.AsFloat) * CDSOrdenCompCabDsto.AsFloat * 0.01;

  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
  WHILE NOT (CDSImpuestos.Eof) DO
    BEGIN
      CDSImpuestos.Edit;
      Neto                        := CDSImpuestosNeto.AsFloat;
      CDSImpuestosNeto.AsFloat    := 0;
      CDSImpuestosNeto.AsFloat    := Neto * (1 - CDSOrdenCompCabDsto.AsFloat * 0.01);
      CDSImpuestosImporte.AsFloat := 0;

      if FormOrdenCompra.chAgregaImpuesto.Checked then
        CDSImpuestosImporte.AsFloat := CDSImpuestosNeto.AsFloat * (CDSimpuestosTasa.AsFloat * 0.01)
      else
        CDSImpuestosImporte.AsFloat := 0;

      Acumulador                  := Acumulador + CDSImpuestosImporte.AsFloat;
      CDSImpuestos.Next;
    END;
  CDSImpuestos.EnableControls;

  FormOrdenCompra.dbgIva.Refresh;
  CDSOrdenCompCabTotal.AsFloat    := ( CDSOrdenCompCabNetoGrav2.AsFloat + CDSOrdenCompCabNETOMONOTRIBUTO2.AsFloat + CDSOrdenCompCabNetoExen2.AsFloat + CDSOrdenCompCabIMPORTEEXCLUIDO2.AsFloat + Acumulador);
//  wwCDSOrdenCompraCabTotal.Value      := Moneda3D(' ',MascaraCabecera, wwCDSOrdenCompraCabNetoGrav2.Value + wwCDSOrdenCompraCabNETOMONOTRIBUTO2.Value + wwCDSOrdenCompraCabNetoExen2.Value + wwCDSOrdenCompraCabIMPORTEEXCLUIDO2.Value + Acumulador);

  //CalcularVtos;
END;

PROCEDURE TDatosOrdenCompra.CalcularVtos;
BEGIN
  // esta linea es por que cuando hay un solo registro, entra en forma recursiva ya que no
  // havce uns post en la tabla.
//  if (wwCDSOrdenCompraVtos.State=dsBrowse) Then
  CDSOrdenCompraVtos.First;
  WHILE NOT (CDSOrdenCompraVtos.Eof) DO
    BEGIN
      if CDSOrdenCompraVtos.State = dsBrowse Then
        CDSOrdenCompraVtos.Edit;
      CDSOrdenCompraVtosIMPORTE.AsFloat := CDSOrdenCompCabTOTAL.Asfloat/CDSOrdenCompraVtos.RecordCount;
      IF CDSOrdenCompCabESTADO.Value='N' Then
        CDSOrdenCompraVtosFECHA_VENCIMIEMTO.AsDateTime := CDSOrdenCompCabFECHA.AsDateTime + CDSOrdenCompraVtosDIAS.Value;
      IF CDSOrdenCompCabESTADO.Value='A' Then
        CDSOrdenCompraVtosFECHA_VENCIMIEMTO.AsDateTime := CDSOrdenCompCabFECHAAUTORIZACION.AsDateTime + CDSOrdenCompraVtosDIAS.Value;
      IF CDSOrdenCompCabESTADO.Value='R' Then
        CDSOrdenCompraVtosFECHA_VENCIMIEMTO.AsDateTime := CDSOrdenCompCabFECHACUMPLIDA.AsDateTime + CDSOrdenCompraVtosDIAS.Value;

      CDSOrdenCompraVtos.Next
    END;
END;

procedure TDatosOrdenCompra.AplicarMascarasNumericas;
VAR I:Byte;
begin

  MascaraDetalleUnitario    := DMMain_FD.MascaraDetalleUnitarioComp;
  TFloatField(CDSOrdenCompraDetUnitario_Total).EditFormat    :=MascaraDetalleUnitario;
  TFloatField(CDSOrdenCompraDetUnitario_Total).DisplayFormat :=MascaraDetalleUnitario;


  MascaraDetalleCantidad    := DMMain_FD.MascaraDetalleCantidadComp;
  TFloatField(CDSOrdenCompraDetCANTIDADPEDIDA).EditFormat    :=MascaraDetalleCantidad;
  TFloatField(CDSOrdenCompraDetCANTIDADPEDIDA).DisplayFormat :=MascaraDetalleCantidad;

  TFloatField(CDSOrdenCompraDetCANTIDADAUTORIZADA).EditFormat    :=MascaraDetalleCantidad;
  TFloatField(CDSOrdenCompraDetCANTIDADAUTORIZADA).DisplayFormat :=MascaraDetalleCantidad;

  TFloatField(CDSOrdenCompraDetCANTIDADRECIBIDA).EditFormat    :=MascaraDetalleCantidad;
  TFloatField(CDSOrdenCompraDetCANTIDADRECIBIDA).DisplayFormat :=MascaraDetalleCantidad;


  MascaraDetalleDescuento:=DMMain_FD.MascaraDetalleDescuentoComp;


  MascaraDetalleTotal     := DMMain_FD.MascaraDetalleTotalComp;
  TFloatField(CDSOrdenCompraDetTotal).EditFormat        := ',0.00';
  TFloatField(CDSOrdenCompraDetTotal).DisplayFormat     := ',0.00';

  MascaraIvaTasa:=DMMain_FD.MascaraIvaTasa;
  TFloatField(CDSOrdenCompraDetIVA_Tasa).EditFormat        := MascaraIvaTasa;
  TFloatField(CDSOrdenCompraDetIVA_Tasa).DisplayFormat     := MascaraIvaTasa;
  TFloatField(CDSOrdenCompraDetIVA_SobreTasa).EditFormat   := MascaraIvaTasa;
  TFloatField(CDSOrdenCompraDetIVA_SobreTasa).DisplayFormat:= MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).EditFormat            := MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).DisplayFormat         := MascaraIvaTasa;

  MascaraIvaImporte:=DMMain_FD.MascaraIvaImporte;
  TFloatField(CDSImpuestosIMPORTE).EditFormat        := MascaraIvaImporte;
  TFloatField(CDSImpuestosIMPORTE).DisplayFormat     := MascaraIvaImporte;


  MascaraCabecera:=DMMain_FD.MascaraCabeceraComp;
  For i:=0 to CDSOrdenCompCab.FieldCount-1 do
    begin
      if (CDSOrdenCompCab.Fields[i].DataType=ftFloat) Then
       begin
         // TFloatField(wwCDSVentaDet.Fields[i]).EditMask:='###,##0.0';
          TFloatField(CDSOrdenCompCab.Fields[i]).EditFormat   :=',0.00';
          TFloatField(CDSOrdenCompCab.fields[i]).DisplayFormat:=',0.00';
       end;
    end;

  TFloatField(CDSOrdenCompraVtosIMPORTE).EditFormat    := MascaraCabecera;
  TFloatField(CDSOrdenCompraVtosIMPORTE).DisplayFormat := MascaraCabecera;

end;

procedure TDatosOrdenCompra.LimpiaCondiciones;
begin
  CDSOrdenCompraVtos.Close;
  CDSOrdenCompraVtos.Params.ParamByName('id').Clear;
  CDSOrdenCompraVtos.Open;
end;


procedure TDatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if ((FormOrdenCompra<>nil) and (FormOrdenCompra.VerCodigoAlternativo1.Checked=True)) then
    Text:=Trim(CDSOrdenCompraDetMUESTRACODALTERNATIVO.Value)
  else
    Text:=Trim(CDSOrdenCompraDetCODIGOARTICULO.Value);

 if ((FormOrdenCompra<>nil) and (FormOrdenCompra.FiltraCodigoProveedor.Checked=True)) then
    Text:=Trim(CDSOrdenCompraDetMUESTRACODARTIPROVEE.Value)
  else
    begin
      if ((FormOrdenCompra<>nil) and (FormOrdenCompra.VerCodigoAlternativo1.Checked=True)) then
        Text:=Trim(CDSOrdenCompraDetMUESTRACODALTERNATIVO.Value)
      else
        Text:=Trim(CDSOrdenCompraDetCODIGOARTICULO.Value);
    end;

    //Text:=Trim(CDSOrdenCompraDetCODIGOARTICULO.Value);

end;

procedure TDatosOrdenCompra.CDSOrdenCompraDetCODIGOARTICULOSetText(
  Sender: TField; const Text: String);
VAR S,CodTxt: STRING;
Enter:Char;
BEGIN
  if (Text<>'') and (Text<>#13) Then
    if (FormOrdenCompra.Modo='N') or (FormOrdenCompra.Modo='X') Then
      begin
       if CDSOrdenCompraDet.State=dsBrowse Then
         CDSOrdenCompraDet.edit;
        if FormOrdenCompra.FiltraCodigoProveedor.Checked then
          Sender.AsString :=  DMMain_FD.SearchCodigo(Text,DSOrdenCompraDet,FormOrdenCompra.VerCodigoAlternativo1.Checked,CDSOrdenCompCabCODIGO.Value)
        else
          Sender.AsString :=  DMMain_FD.SearchCodigo(Text,DSOrdenCompraDet,FormOrdenCompra.VerCodigoAlternativo1.Checked);


        IF NOT (AsignarArticulo(Sender.AsString)) THEN
          BEGIN
           // Busqueda por codigo
            if (FormBuscadorArticulos<>Nil) then
              FreeAndNil(FormBuscadorArticulos);
            IF Not(Assigned(FormBuscadorArticulos)) THEN
              FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
            FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
            FormBuscadorArticulos.CampoNro          := 0;
            FormBuscadorArticulos.Param1:=-1;
            FormBuscadorArticulos.Param2:=-1;
            FormBuscadorArticulos.Esquema     := -1;
            FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);

            FormBuscadorArticulos.Dato              := s;//Text;
            FormBuscadorArticulos.ShowModal;
            if FormBuscadorArticulos.Codigo<>'' Then
              begin
                IF CDSOrdenCompraDet.State = dsBrowse THEN
                  CDSOrdenCompraDet.Edit;
                CDSOrdenCompraDetCodigoArticulo.Text    := FormBuscadorArticulos.Codigo;
              end
            else
              Sender.AsString:='';
          END;
      end;
END;

procedure TDatosOrdenCompra.CDSOrdenCompraDetCANTIDADPEDIDASetText(
  Sender: TField; const Text: String);
VAR
  Aux3: Real;
BEGIN
  if Text<>'' Then
    begin
      Sender.AsString := Text;
      Sender.AsFloat:=Moneda3D(' ',MascaraDetalleCantidad,Sender.AsFloat);
      Aux3 := CDSOrdenCompraDetUnitario_Total.AsFloat;
      CDSOrdenCompraDetCANTIDADAUTORIZADA.AsFloat:=Moneda3D(' ',MascaraDetalleCantidad,Sender.AsFloat);
      CDSOrdenCompraDetCANTIDADRECIBIDA.AsFloat  :=Moneda3D(' ',MascaraDetalleCantidad,Sender.AsFloat);
      CDSOrdenCompraDetTotal.AsFloat := Sender.AsFloat * Aux3  * CDSOrdenCompraDetCOTIZACION.AsFloat;
    end;
END;

procedure TDatosOrdenCompra.CDSOrdenCompraDetUNITARIO_TOTALSetText(
  Sender: TField; const Text: String);
VAR
  Num, AuxGravado, AuxExento, AuxExcluido, AuxTotal: real;
  TextAux:String;
BEGIN
  TextAux:=Text;
  while pos(',',TextAux)<>0 Do
    delete(TextAux,pos(',',TextAux),1);
  Num := Moneda3D(' ',MascaraDetalleUnitario,StrToFloat(TextAux));
  IF CDSOrdenCompraDetModo_Gravamen.Value <> '' THEN
    CASE CDSOrdenCompraDetModo_Gravamen.Value[1] OF
      'E': CDSOrdenCompraDetUnitario_Exento.AsFloat := Num;
      'G': CDSOrdenCompraDetUnitario_Gravado.AsFloat:= Num;
    END;
  AuxGravado  := CDSOrdenCompraDetUnitario_Gravado.AsFloat;// * CDSOrdenCompraDetCOTIZACION.AsFloat;
  AuxExento   := CDSOrdenCompraDetUnitario_Exento.AsFloat;// * CDSOrdenCompraDetCOTIZACION.AsFloat;
  AuxExcluido := 0;
  //AuxTotal    := Moneda3D(MascaraDetalleUnitario,wwCDSOrdenCompraDetUnitario_Total.Value);
  // IF wwCDSOrdenCompraCabDesglozaIva.Value = 'N' THEN
  //    AuxGravado := (AuxGravado / (1 + (wwCDSOrdenCompraDetIVA_Tasa.Value /100)));
 //   wwCDSOrdenCompraDetUnitario_Gravado.Value := AuxGravado;
  AuxTotal                  :=( AuxGravado + AuxExento + AuxExcluido);//  * CDSOrdenCompraDetCOTIZACION.AsFloat ;
  CDSOrdenCompraDetTotal.AsFloat := CDSOrdenCompraDetCANTIDADRECIBIDA.AsFloat * AuxTotal * CDSOrdenCompraDetCOTIZACION.AsFloat;
  Sender.AsString           := FloatToStr(AuxTotal);
 // IF wwCDSOrdenCompraDet.State in [dsEdit,dsInsert] Then wwCDSOrdenCompraDet.Post;
END;

procedure TDatosOrdenCompra.CDSOrdenCompCabNewRecord(
  DataSet: TDataSet);
begin
  CDSOrdenCompCabID_OC.Value             := IBGOrdenCompCab.IncrementFD(1);
  CDSOrdenCompCabFecha.AsDateTime        := Date;
  CDSOrdenCompCabCodigo.Value            := '';
  CDSOrdenCompCabAnulado.Value           := 'N';
  CDSOrdenCompCabTipoIVA.AsString        := '';
  CDSOrdenCompCabLetra.AsString          := '';
  CDSOrdenCompCabCondicionCompra.Clear;
  CDSOrdenCompCabDstoImporte.AsFloat     := 0;
  CDSOrdenCompCabDsto.AsFloat            := 0;
  CDSOrdenCompCabNetoGrav1.AsFloat       := 0;
  CDSOrdenCompCabNetoGrav2.AsFloat       := 0;
  CDSOrdenCompCabESTADO.Value            :='N';//Nueva Orden de Comrpa
  CDSOrdenCompCabIMPRESO.Value           :='N';
  CDSOrdenCompCabID_PRESUPUESTO_OC.Value := -1;
  CDSOrdenCompCabID_OCOMPRA_PREV.Value   := -1;
  CDSOrdenCompCabNRO_OC_ANTERIOR.Value   := '';
  CDSOrdenCompCabID_OCOMPRA_NEXT.Value   := -1;
  CDSOrdenCompCabNRO_OC_SIGUIEN.Value    := '';

  CDSOrdenCompCabSucursalSetText(CDSOrdenCompCabSucursal,IntToStr(FormOrdenCompra.SucursalPorDefecto));
  CDSOrdenCompCabDepositoSetText(CDSOrdenCompCabDeposito,IntToStr(FormOrdenCompra.DepositoPorDefecto));

//  if (DMMain_FD.EmpleadoPorDefecto='') or (StrToInt(DMMain_FD.EmpleadoPorDefecto)<=0) Then
//   begin
//      QPrimerComprador.Close;
//      QPrimerComprador.Open;
//      if QPrimerComprador.Fields[0].AsString<>'' then
//        CDSOrdenCompCab FormOrdenCompra.EmpleadoPorDefecto:=QPrimerComprador.Fields[0].AsString;
//      QPrimerComprador.Close;
//    end;

  if (DMMain_FD.EmpleadoPorDefecto<>'') and (StrToInt(DMMain_FD.EmpleadoPorDefecto)>0) Then
    CDSOrdenCompCabREALIZOSetText(CDSOrdenCompCabREALIZO,DMMain_FD.EmpleadoPorDefecto)
  else
    SHowMessage('No hay Empleado por defecto seleccionado, ver en Parámetros/Configuración Local...');
  CDSOrdenCompCabUSUARIO.Value   := DMMain_FD.UsuarioActivo;
  CDSOrdenCompCabTIPO.Value      := 1;
  CDSOrdenCompCabFECHA_HORA.AsDateTime := Now;
end;

procedure TDatosOrdenCompra.CDSOrdenCompCabREALIZOSetText(
  Sender: TField; const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=copy('000000',1,Sender.Size-Length(Text))+Text;
      IF (NOT (AsignarEmpleado(0,Sender.AsString))) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Vendedor no Válido');
          //FormCpbte_2.RxCConVta.SetFocus;
        END;
    END;

end;

procedure TDatosOrdenCompra.CDSOrdenCompCabAUTORIZOSetText(Sender: TField; const Text: String);
begin
  IF (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=copy('000000',1,Sender.Size-Length(Text))+Text;
      IF (NOT (AsignarEmpleado(1,Sender.AsString))) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Vendedor no Válido');
          //FormCpbte_2.RxCConVta.SetFocus;
        END;
    END;

end;

procedure TDatosOrdenCompra.CDSOrdenCompraDetNewRecord(
  DataSet: TDataSet);
begin
  CDSOrdenCompraDetID.Value                  := IBGOrdenCompDet.IncrementFD(1);
  CDSOrdenCompraDetID_CABOC.Value            := CDSOrdenCompCabID_OC.Value;
  CDSOrdenCompraDetRENGLON.AsInteger         := CDSOrdenCompraDet.RecordCount + 1;
  CDSOrdenCompraDetDetalle.Value             := '';
  CDSOrdenCompraDetUnidad.Value              := '';
  CDSOrdenCompraDetCANTIDADPEDIDA.AsFloat    := 0;
  CDSOrdenCompraDetCANTIDADAUTORIZADA.AsFloat:= 0;
  CDSOrdenCompraDetCANTIDADRECIBIDA.AsFloat  := 0;
  CDSOrdenCompraDetUnitario_Exento.AsFloat   := 0;
  CDSOrdenCompraDetUnitario_Gravado.AsFloat  := 0;
  CDSOrdenCompraDetUnitario_Total.AsFloat    := 0;
  CDSOrdenCompraDetTotal.AsFloat             := 0;
  CDSOrdenCompraDetIva_Tasa.AsFloat          := 0;
  CDSOrdenCompraDetIva_SobreTasa.AsFloat     := 0;
  CDSOrdenCompraDetDesglozaIva.Value         := '';
  CDSOrdenCompraDetModo_Gravamen.Value       := '';
  CDSOrdenCompraDetTipoIva_Tasa.AsFloat      := 0;
  CDSOrdenCompraDetNroCpbte.AsString         := CDSOrdenCompCabNroCpbte.AsString;
  CDSOrdenCompraDetFecha.AsDateTime          := CDSOrdenCompCabFecha.AsDateTime;
  CDSOrdenCompraDetTipoCpbte.AsString        := CDSOrdenCompCabTipoCpbte.AsString;
  CDSOrdenCompraDetCLASECPBTE.AsString       := CDSOrdenCompCabCLASECPBTE.AsString;
  CDSOrdenCompraDetSUCURSAL.Value            := CDSOrdenCompCabSUCURSAL.Value;
  CDSOrdenCompraDetID_COMP_REC.Value         := -1;
  CDSOrdenCompraDetID_DET_NOTAPEDIDO.Value   := -1;
  CDSOrdenCompraDetMUESTRAPRECIOVTA.Value    := 0;
end;

procedure TDatosOrdenCompra.CDSOrdenCompraDetBeforePost(
  DataSet: TDataSet);
begin
  IF CDSOrdenCompraDet.State IN [dsInsert, dsEdit] THEN
    CDSOrdenCompraDetNroCpbte.Value := CDSOrdenCompCabLetra.Value + CDSOrdenCompCabSuc.Value +
                                       CDSOrdenCompCabNumero.Value;
  IF (CDSOrdenCompraDetCodigoArticulo.AsString = '') THEN
    BEGIN
      SysUtils.Abort;
      CDSOrdenCompraDet.Cancel;
    END;

end;

procedure TDatosOrdenCompra.CDSOrdenCompraDetAfterPost(
  DataSet: TDataSet);
begin
  { aca voy a los calculos de los totoales de la factura }
  SumarDetalle;
  //SumarCantidades;
  CalcularTotales;
  CalcularVtos;
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

procedure TDatosOrdenCompra.CDSOrdenCompraDetAfterScroll(DataSet: TDataSet);
var Aux:Extended;
begin
  Aux:=(CDSOrdenCompraDetMUESTRAPRESCANT.AsFloat * CDSOrdenCompraDetCANTIDADPEDIDA.AsFloat);
  if Aux>0 then
    FormOrdenCompra.edCant.Caption:= 'Cantidad:'+FormatFloat(',0.00',aux)
  else
    FormOrdenCompra.edCant.Caption:= 'Cantidad:'+'--';

end;

procedure TDatosOrdenCompra.CDSImpuestosNewRecord(DataSet: TDataSet);
begin
  CDSImpuestosId_Impuesto.Value := IBGImpuestos.IncrementFD(1);
  CDSImpuestosID_OCCAB.Value    := CDSOrdenCompCabID_OC.Value;
end;

procedure TDatosOrdenCompra.CDSOrdenCompraDetCalcFields(DataSet: TDataSet);
begin
  CDSOrdenCompraDetCANTIDAD.Value:=CDSOrdenCOmpraDetCANTIDADPEDIDA.AsFloat;
end;

procedure TDatosOrdenCompra.CDSOrdenCompraDetCANTIDADAUTORIZADASetText(
  Sender: TField; const Text: String);
VAR
  Aux3: Real;
BEGIN
  if Text<>'' Then
    begin
      Sender.AsString := Text;
      Sender.AsFloat:=Moneda3D(' ',MascaraDetalleCantidad,Sender.AsFloat);
      Aux3 := CDSOrdenCompraDetUnitario_Total.AsFloat;
//      wwCDSOrdenCompraDetCANTIDADAUTORIZADA.Value:=Moneda3D(' ',MascaraDetalleCantidad,Sender.AsFloat);
      CDSOrdenCompraDetCANTIDADRECIBIDA.AsFloat :=Moneda3D(' ',MascaraDetalleCantidad,Sender.AsFloat);
      CDSOrdenCompraDetTotal.AsFloat            := Sender.AsFloat * Aux3  * CDSOrdenCompraDetCOTIZACION.AsFloat ;
     // if wwCDSOrdenCompraDet.State in [dsEdit,dsInsert]  Then
     //   wwCDSOrdenCompraDet.Post;
    end;
end;

procedure TDatosOrdenCompra.CDSOrdenCompraDetBeforeInsert(
  DataSet: TDataSet);
begin
  If (FormOrdenCompra.Modo='R') or (FormOrdenCompra.Modo='A') Then
    begin
      sysutils.Abort;
      CDSOrdenCompraDet.Cancel;
    end;
end;

procedure TDatosOrdenCompra.CDSOrdenCompraDetCANTIDADRECIBIDASetText(
  Sender: TField; const Text: String);
VAR
  Aux3: Real;
BEGIN
  if Text<>'' Then
    begin
      Sender.AsString := Text;
      Sender.AsFloat  := Moneda3D(' ',MascaraDetalleCantidad,Sender.AsFloat);
      Aux3            := CDSOrdenCompraDetUnitario_Total.AsFloat;
//      wwCDSOrdenCompraDetCANTIDADAUTORIZADA.Value:=Moneda3D(' ',MascaraDetalleCantidad,Sender.AsFloat);
//      wwCDSOrdenCompraDetCANTIDADRECIBIDA.Value  :=Moneda3D(' ',MascaraDetalleCantidad,Sender.AsFloat);
      CDSOrdenCompraDetTotal.AsFloat := Sender.AsFloat * Aux3  * CDSOrdenCompraDetCOTIZACION.AsFloat ;
      if Sender.AsFloat > CDSOrdenCompraDetCANTIDADAUTORIZADA.Value then
        begin
          DMMain_FD.LogFileFD(1,2,'Camibio de Cantidad recibida e OC:'+CDSOrdenCompCabNROCPBTE.Value+
                                  '('+CDSOrdenCompCabID_OC.AsString+') Codigo:'+
                                  CDSOrdenCompraDetCODIGOARTICULO.AsString,'OCOMPRA');
        end;

     // if wwCDSOrdenCompraDet.State in [dsEdit,dsInsert]  Then
     //   wwCDSOrdenCompraDet.Post;
    end;
end;

procedure TDatosOrdenCompra.DataModuleDestroy(Sender: TObject);
begin
  DatosOrdenCompra:=nil;
end;

procedure TDatosOrdenCompra.DSOrdenCompraDetStateChange(Sender: TObject);
begin
  if (CDSOrdenCompCab.State=dsBrowse) and (DSOrdenCompraDet.DataSet.State in [dsEdit,dsInsert]) Then
 //   if wwCDSOrdenCompraCabESTADO.Value=FormOrdenCompra.Modo Then
    CDSOrdenCompCab.edit;
end;

procedure TDatosOrdenCompra.CDSOrdenCompraVtosNewRecord(
  DataSet: TDataSet);
begin
  CDSOrdenCompraVtosID.Value       := IBGOrdenCompVtos.IncrementFD(1);
  CDSOrdenCompraVtosID_OCCAB.Value := CDSOrdenCompCabID_OC.Value;
  CDSOrdenCompraVtosIMPORTE.AsFloat:= 0;
end;

procedure TDatosOrdenCompra.CDSOrdenCompraVtosDIASSetText(Sender: TField;
  const Text: String);
begin
  if CDSOrdenCompraVtos.State=dsBrowse Then
    CDSOrdenCompraVtos.Edit;
  Sender.AsString:=Text;
  CDSOrdenCompraVtosFECHA_VENCIMIEMTO.AsDateTime := CDSOrdenCompCabFECHA.AsDateTime+Sender.AsInteger;

  //if wwCDSOrdenCompraVtos.RecordCount>0 Then
  //  wwCDSOrdenCompraVtosIMPORTE.Value:=wwCDSOrdenCompraCabTOTAL.Value/wwCDSOrdenCompraVtos.RecordCount
  //else
  //  wwCDSOrdenCompraVtosIMPORTE.Value:=0;
//  wwCDSOrdenCompraVtos.Post;
  CalcularVtos;
end;

procedure TDatosOrdenCompra.DSOrdenCompraVtosStateChange(
  Sender: TObject);
begin
  if (CDSOrdenCompCab.State=dsBrowse) and (DSOrdenCompraVtos.DataSet.State in [dsEdit,dsInsert]) Then
    CDSOrdenCompCab.edit;
end;

procedure TDatosOrdenCompra.CDSOrdenCompraVtosAfterDelete(
  DataSet: TDataSet);
begin
  if CDSOrdenCompCab.State = dsBrowse Then
    if FormOrdenCompra.Modo[1] in ['N','A'] Then
      CDSOrdenCompCab.Edit;
  CalcularVtos;
end;

procedure TDatosOrdenCompra.CDSOrdenCompCabBeforeEdit(
  DataSet: TDataSet);
begin
  if (DatosOrdenCompra.CDSOrdenCompCabESTADO.Value='R') Then
    SysUtils.Abort;

end;

procedure TDatosOrdenCompra.CDSOrdenCompCabBeforePost(DataSet: TDataSet);
var i:Integer;
begin
  //Control de Campos Vacios
  for i:= 0 to CDSOrdenCompCab.FieldCount - 1 do
    begin
      if (CDSOrdenCompCab.Fields[i].AsString='') and (CDSOrdenCompCab.Fields[i].Required) then
        ShowMessage( CDSOrdenCompCab.Fields[i].Name+' : '+CDSOrdenCompCab.Fields[i].AsString);
    end;
     //este linea es nueva
end;

end.
