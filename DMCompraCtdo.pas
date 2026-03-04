UNIT DMCompraCtdo;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, IBGenerator, DB,
  Provider, DBClient, Forms,Librerias,Dialogs,StrUtils,
  Variants,Controls, FMTBcd, SqlExpr, DBXCommon,Math, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

TYPE
  TDatosCompraCtdo = CLASS(TDataModule)
    DSPCompraCab: TDataSetProvider;
    DSPCompraDet: TDataSetProvider;
    DSPProveedor: TDataSetProvider;
    DSPStock: TDataSetProvider;
    DSPDeposito: TDataSetProvider;
    DSPDepositoStk: TDataSetProvider;
    DSPIva: TDataSetProvider;
    DSPSucursal: TDataSetProvider;
    DSPImpuestos: TDataSetProvider;
    DSPPercepcionIVA: TDataSetProvider;
    DSPPercepcionIB: TDataSetProvider;
    IBGFcCompCab: TIBGenerator;
    IBGFcCompDet: TIBGenerator;
    IBGImpuestos: TIBGenerator;
    IBGPercepcionIB: TIBGenerator;
    IBGPercepcionIVA: TIBGenerator;
    DSPInscripcion: TDataSetProvider;
    DSPComprSubDet: TDataSetProvider;
    CDSCompraSubDetalle: TClientDataSet;
    DSCompraSubDetalle: TDataSource;
    IBGFcCompSubDet: TIBGenerator;
    CDSCompraSubDetalleID: TIntegerField;
    CDSCompraSubDetalleID_DETFAC: TIntegerField;
    CDSCompraSubDetalleID_CABFAC: TIntegerField;
    CDSCompraSubDetalleTIPOCPBTE: TStringField;
    CDSCompraSubDetalleCLASECPBTE: TStringField;
    CDSCompraSubDetalleNROCPBTE: TStringField;
    CDSCompraSubDetalleCODIGOARTICULO: TStringField;
    CDSCompraSubDetalleSERIE: TStringField;
    CDSCompraSubDetalleDEPOSITO: TIntegerField;
    CDSDeposito: TClientDataSet;
    CDSDepositoID: TIntegerField;
    CDSDepositoNOMBRE: TStringField;
    CDSDepositoSUCURSAL: TIntegerField;
    DSCompraDet: TDataSource;
    CDSBuscaDeposito: TClientDataSet;
    CDSBuscaDepositoNOMBRE: TStringField;
    CDSBuscaDepositoID: TIntegerField;
    DSPBuscaDeposito: TDataSetProvider;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    DSPTasaPercepIVA: TDataSetProvider;
    CDSTasaPercepIVA: TClientDataSet;
    CDSTasaPercepIVACODIGO: TIntegerField;
    CDSTasaPercepIVADESCRIPCION: TStringField;
    CDSTasaPercepIVATASA: TFloatField;
    CDSTasaPercepIVAMINIMOAPLICABLE: TFloatField;
    CDSTasaPercepIVACOLUMNA: TSmallintField;
    CDSTasaPercepIVACODIGOREGIMEN: TIntegerField;
    DSPTasaPercepIIBB: TDataSetProvider;
    CDSTasaPercepIIBB: TClientDataSet;
    CDSTasaPercepIIBBCODIGO: TIntegerField;
    CDSTasaPercepIIBBDESCRIPCION: TStringField;
    CDSTasaPercepIIBBTASA: TFloatField;
    CDSTasaPercepIIBBMINIMOAPLICABLE: TFloatField;
    CDSTasaPercepIIBBCOLUMNA: TSmallintField;
    CDSTasaPercepIIBBJURIDICION: TIntegerField;
    CDSCompraCab: TClientDataSet;
    CDSCompraDet: TClientDataSet;
    CDSCompraDetCodigoArticulo: TStringField;
    CDSStock: TClientDataSet;
    CDSProveedor: TClientDataSet;
    CDSDepositoStk: TClientDataSet;
    CDSDepositoStkID_DEPOSITO: TIntegerField;
    CDSDepositoStkCODIGO_DEPOSITO: TIntegerField;
    CDSDepositoStkCODIGO_STK: TStringField;
    CDSDepositoStkSUCURSAL: TIntegerField;
    CDSDepositoStkINICIAL: TFloatField;
    CDSDepositoStkMINIMO: TFloatField;
    CDSDepositoStkMEDIO: TFloatField;
    CDSDepositoStkFISICO: TFloatField;
    CDSDepositoStkRECARGO: TFloatField;
    CDSDepositoStkFUAPRECIOS: TDateTimeField;
    CDSIva: TClientDataSet;
    CDSSucursal: TClientDataSet;
    CDSImpuestos: TClientDataSet;
    CDSImpuestosID_IMPUESTO: TIntegerField;
    CDSImpuestosCODIGO_GRAVAMEN: TIntegerField;
    CDSImpuestosDETALLE: TStringField;
    CDSImpuestosID_FCCOMPCAB: TIntegerField;
    CDSPercepcionIVA: TClientDataSet;
    CDSPercepcionIVACODIGOREGIMEN: TIntegerField;
    CDSPercepcionIB: TClientDataSet;
    CDSPercepcionIBID_PERCEPCION: TIntegerField;
    CDSPercepcionIBCODIGO_PERCEPCION: TIntegerField;
    CDSPercepcionIBDETALLE: TStringField;
    CDSPercepcionIBID_FCCOMPCAB: TIntegerField;
    CDSPercepcionIBJURIDICION: TIntegerField;
    CDSInscripcion: TClientDataSet;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    CDSPercepcionIVAID_PERCEPCION: TIntegerField;
    CDSPercepcionIVACODIGO_PERCEPCION: TIntegerField;
    CDSPercepcionIVADETALLE: TStringField;
    CDSPercepcionIVAID_FCCOMPCAB: TIntegerField;
    CDSPercepcionIVANETO: TFloatField;
    CDSPercepcionIVATASA: TFloatField;
    CDSPercepcionIVAIMPORTE: TFloatField;
    CDSPercepcionIBNETO: TFloatField;
    CDSPercepcionIBTASA: TFloatField;
    CDSPercepcionIBIMPORTE: TFloatField;
    CDSCompraDetCANTIDAD: TFloatField;
    CDSCompraDetIVA_TASA: TFloatField;
    CDSCompraDetDESCUENTO: TFloatField;
    CDSCompraDetTOTAL: TFloatField;
    CDSCompraDetUNITARIO_IMP_INTERNO: TFloatField;
    DSDepositoStk: TDataSource;
    DSImpuestos: TDataSource;
    DSPercepcionIVA: TDataSource;
    DSPercepcionIB: TDataSource;
    QMonedas: TFDQuery;
    QMonedasID: TIntegerField;
    QMonedasMONEDA: TStringField;
    QMonedasCOTIZACION: TFloatField;
    QMonedasSIGNO: TStringField;
    QMonedasORDEN: TSmallintField;
    QMonedasCOTIZACION_COMPRA: TFloatField;
    QVerifiComprob: TFDQuery;
    CDSCompraCabID_FC: TIntegerField;
    CDSCompraCabTIPOCPBTE: TStringField;
    CDSCompraCabCLASECPBTE: TStringField;
    CDSCompraCabNROCPBTE: TStringField;
    CDSCompraCabCODIGO: TStringField;
    CDSCompraCabLETRAFAC: TStringField;
    CDSCompraCabSUCFAC: TStringField;
    CDSCompraCabNUMEROFAC: TStringField;
    CDSCompraCabNOMBRE: TStringField;
    CDSCompraCabRAZONSOCIAL: TStringField;
    CDSCompraCabDIRECCION: TStringField;
    CDSCompraCabCPOSTAL: TStringField;
    CDSCompraCabLOCALIDAD: TStringField;
    CDSCompraCabTIPOIVA: TIntegerField;
    CDSCompraCabCUIT: TStringField;
    CDSCompraCabFECHAVTO: TSQLTimeStampField;
    CDSCompraCabCONDICIONCOMPRA: TIntegerField;
    CDSCompraCabANULADO: TStringField;
    CDSCompraCabORDENCOMPRA: TStringField;
    CDSCompraCabN_OPERACION2: TFloatField;
    CDSCompraCabNETOGRAV1: TFloatField;
    CDSCompraCabDSTO: TFloatField;
    CDSCompraCabDSTOIMPORTE: TFloatField;
    CDSCompraCabNETOGRAV2: TFloatField;
    CDSCompraCabNETOEXEN1: TFloatField;
    CDSCompraCabNETOEXEN2: TFloatField;
    CDSCompraCabIMPORTEEXCLUIDO2: TFloatField;
    CDSCompraCabIMPORTEEXCLUIDO1: TFloatField;
    CDSCompraCabTOTAL: TFloatField;
    CDSCompraCabDEBE: TFloatField;
    CDSCompraCabAPLICA: TStringField;
    CDSCompraCabOBSERVACION1: TStringField;
    CDSCompraCabOBSERVACION2: TStringField;
    CDSCompraCabSUCURSALCOMPRA: TIntegerField;
    CDSCompraCabZONA: TIntegerField;
    CDSCompraCabDEPOSITO: TIntegerField;
    CDSCompraCabDESGLOZAIVA: TStringField;
    CDSCompraCabCALCULA_SOBRETASA: TStringField;
    CDSCompraCabFECHAFISCAL: TSQLTimeStampField;
    CDSCompraCabNETOMONOTRIBUTO1: TFloatField;
    CDSCompraCabNETOMONOTRIBUTO2: TFloatField;
    CDSCompraCabCPBTE_INTERNO: TStringField;
    CDSCompraCabINGRESA_A_CTACTE: TStringField;
    CDSCompraCabINGRESA_LIBRO_IVA: TStringField;
    CDSCompraCabREDUCIDA: TStringField;
    CDSCompraCabTIPO_PROVEEDOR: TStringField;
    CDSCompraCabJURIDICCION: TIntegerField;
    CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField;
    CDSCompraCabFECHA_HORA: TSQLTimeStampField;
    CDSCompraCabUSUARIO: TStringField;
    CDSCompraCabTOTAL_UNIDADES: TFloatField;
    CDSCompraCabMONEDA_CPBTE: TIntegerField;
    CDSCompraCabMONEDA_CPBTE_COTIZACION: TFloatField;
    CDSCompraCabMUESTRACONDCOMPRA: TStringField;
    CDSCompraCabMUESTRADEPOSITO: TStringField;
    CDSCompraCabMUESTRASUCURSAL: TStringField;
    CDSCompraCabMUESTRACOMPROBANTE: TStringField;
    CDSCompraCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSCompraCabMUESTRAMONEDACPBTE: TStringField;
    CDSCompraCabMUESTRASIGNOMONEDACPBTE: TStringField;
    QComprob: TFDQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QComprobNOMBREIMPRESORA: TStringField;
    QBuscaComprob: TFDQuery;
    DSPBuscaComprob: TDataSetProvider;
    CDSBuscaComprob: TClientDataSet;
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
    CDSImpuestosNETO: TFloatField;
    CDSImpuestosTASA: TFloatField;
    CDSImpuestosIMPORTE: TFloatField;
    CDSCompraSubDetalleFECHA: TSQLTimeStampField;
    CDSCompraCabFECHACOMPRA: TSQLTimeStampField;
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
    CDSProveedorCONV_MULTI: TStringField;
    CDSProveedorMONEDA_PRECIOS: TIntegerField;
    CDSProveedorTELEDISCADO: TStringField;
    CDSProveedorDESPERIVA: TStringField;
    CDSProveedorDESPERIB: TStringField;
    CDSProveedorDESPERIB2: TStringField;
    CDSProveedorMUESTRADETALLERETIIBB: TStringField;
    CDSProveedorMUESTRATASARETIIBB: TFloatField;
    CDSProveedorMUESTRAMINIMPONIRETIIBB: TFloatField;
    CDSIvaCODIGO: TIntegerField;
    CDSIvaDESCRIPCION: TStringField;
    CDSIvaTASA: TFloatField;
    CDSIvaCOLUMNA: TSmallintField;
    QNroSerie: TFDQuery;
    QFormaPago: TFDQuery;
    QFormaPagoID_FPAGO: TIntegerField;
    QFormaPagoID_TPAGO: TIntegerField;
    QFormaPagoDESCRIPCION: TStringField;
    QFormaPagoCOTIZACION: TFloatField;
    QFormaPagoSIGNO: TStringField;
    QFormaPagoMONEDA: TIntegerField;
    QNroSerieID: TIntegerField;
    QNroSerieCODIGO_STK: TStringField;
    QNroSerieCODIGOSERIE: TStringField;
    QNroSerieFECHAINGRESO: TSQLTimeStampField;
    QNroSerieFECHAEGRESO: TSQLTimeStampField;
    spInformaCambioPrecio: TFDStoredProc;
    spCambiaPrecio: TFDStoredProc;
    QStockArticulo: TFDQuery;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalRECARGO: TFloatField;
    CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField;
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
    CDSCompraDetUNIDADES_TOTAL: TFloatField;
    CDSCompraCabNUMERO_OPERACION: TStringField;
    QStockArticuloFISICO: TFloatField;
    QComprobCAJA_DEFECTO: TIntegerField;
    QVerificaNro: TFDQuery;
    QVerificaNroNROCPBTE: TStringField;
    QVerificaNroID_FC: TIntegerField;
    QVerificaNroTIPOCPBTE: TStringField;
    QVerificaNroCLASECPBTE: TStringField;
    CDSCompraCabCAE: TStringField;
    CDSCompraCabCAE_VENCIMIENTO: TSQLTimeStampField;
    CDSCompraCabFACTURA_ELECTRONICA: TStringField;
    CDSCompraCabMUESTRACODIGOAFIP: TStringField;
    spReHaceMov: TFDStoredProc;
    CDSBuscaComprobCODIGO_AFIP: TStringField;
    CDSProveedorID_FACTURACTDODEFECTO: TIntegerField;
    CDSCompraCabMUESTRAINSCRIPCIONIVA: TStringField;
    CDSCompraCabNRO_IIBB_RECEP: TStringField;
    CDSCompraCabRETENCION_IVA: TFloatField;
    CDSCompraCabTIPO_LIQUIDACION: TStringField;
    CDSBuscaComprobFACTURAELECTRONICA: TStringField;
    CDSBuscaComprobEN_USO: TStringField;
    CDSCompraCabDSCTO_CALC: TFloatField;
    QStockFD: TFDQuery;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockDETALLE_STK_ADICIONAL: TStringField;
    CDSStockCODIGO_BARRAS: TStringField;
    CDSStockRUBRO_STK: TStringField;
    CDSStockSUBRUBRO_STK: TStringField;
    CDSStockMARCA_STK: TStringField;
    CDSStockTASA_IVA: TIntegerField;
    CDSStockSOBRETASA_IVA: TIntegerField;
    CDSStockCOSTO_GRAVADO_STK: TFloatField;
    CDSStockCOSTO_IVA: TFloatField;
    CDSStockCOSTO_FINAL: TFloatField;
    CDSStockCOSTO_EXENTO_STK: TFloatField;
    CDSStockCOSTO_TOTAL_STK: TFloatField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSStockFIJACION_PRECIO_IVA: TFloatField;
    CDSStockFIJACION_PRECIO_FINAL: TFloatField;
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
    CDSStockCOMANDA: TStringField;
    CDSStockPORCENTAJE_SOBRECOSTO: TFloatField;
    CDSStockRUBRO_GASTO: TStringField;
    CDSStockRUBRO_CTA_GASTO: TStringField;
    CDSStockPUBLICAR_WEB: TStringField;
    CDSStockGTIA_MESES: TIntegerField;
    CDSStockGARANTIAOFICIAL: TStringField;
    CDSStockADICIONAL_SOBRECOSTO: TFloatField;
    CDSStockIMPRIMIR_LSTPRECIOS: TStringField;
    CDSStockCONTROL_TRAZABILIDAD: TStringField;
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
    CDSStockDISPONIBLE: TStringField;
    QActualizaDetalleStk: TFDQuery;
    CDSCompraDetID: TIntegerField;
    CDSCompraDetID_CABFAC: TIntegerField;
    CDSCompraDetTIPOCPBTE: TStringField;
    CDSCompraDetCLASECPBTE: TStringField;
    CDSCompraDetNROCPBTE: TStringField;
    CDSCompraDetCODIGOPROVEEDOR: TStringField;
    CDSCompraDetRENGLON: TFloatField;
    CDSCompraDetFECHACOMPRA: TSQLTimeStampField;
    CDSCompraDetDETALLE: TStringField;
    CDSCompraDetDETALLE_ADICIONAL: TStringField;
    CDSCompraDetUNIDAD: TStringField;
    CDSCompraDetUNIDADES_EXENTO: TFloatField;
    CDSCompraDetUNIDADES_GRAVADO: TFloatField;
    CDSCompraDetUNITARIO_TOTAL: TFloatField;
    CDSCompraDetUNITARIO_EXENTO: TFloatField;
    CDSCompraDetUNITARIO_GRAVADO: TFloatField;
    CDSCompraDetDESGLOZAIVA: TStringField;
    CDSCompraDetMODO_GRAVAMEN: TStringField;
    CDSCompraDetTIPOIVA_TASA: TIntegerField;
    CDSCompraDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSCompraDetIVA_SOBRETASA: TFloatField;
    CDSCompraDetCOSTO_TOTAL: TFloatField;
    CDSCompraDetCOSTO_EXENTO: TFloatField;
    CDSCompraDetCOSTO_GRAVADO: TFloatField;
    CDSCompraDetDEPOSITO: TIntegerField;
    CDSCompraDetMARGEN: TFloatField;
    CDSCompraDetAFECTA_STOCK: TStringField;
    CDSCompraDetCALCULA_SOBRETASA: TStringField;
    CDSCompraDetCOSTO_IMP_INTERNO: TFloatField;
    CDSCompraDetUNIDADES_IMP_INTERNOS: TFloatField;
    CDSCompraDetCON_NRO_SERIE: TStringField;
    CDSCompraDetID_RECEPCION_CAB: TIntegerField;
    CDSCompraDetID_RECEPCION_DET: TIntegerField;
    CDSCompraDetNRORECEPCION: TStringField;
    CDSCompraDetGRAVADO_IB: TStringField;
    CDSCompraDetID_MONEDA: TIntegerField;
    CDSCompraDetCOTIZACION: TFloatField;
    CDSCompraDetCONTROL_TRAZABILIDAD: TStringField;
    CDSCompraDetCANTIDAD_UNIDADES: TFloatField;
    CDSCompraDetPRESENTACION_CANT: TFloatField;
    CDSCompraDetTIPO_LIQUI: TIntegerField;
    CDSCompraDetCODIGO_RAZA: TIntegerField;
    CDSCompraDetDETALLE_RAZA: TStringField;
    CDSCompraDetTROPA: TIntegerField;
    CDSCompraDetCABEZAS: TIntegerField;
    CDSCompraDetMUESTRAMONEDA: TStringField;
    CDSCompraDetMUESTRACODALTERNATIVO: TStringField;
    CDSStockPLU_SECCION: TStringField;
    CDSCompraDetCANTIDAD_INVENTARIO: TFloatField;
    CDSCompraCabID_OBRA: TIntegerField;
    CDSCompraCabMUESTRAOBRA: TStringField;
    CDSCompraCabNC_POR_DIFERENCIA: TStringField;
    PROCEDURE CDSCompraCabNewRecord(DataSet: TDataSet);
    PROCEDURE CDSCompraCabBeforePost(DataSet: TDataSet);
    PROCEDURE CDSCompraCabCodigoSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSCompraCabLetraFacChange(Sender: TField);
    PROCEDURE CDSCompraCabSucFacSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSCompraCabNumeroFacSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSCompraDetAfterPost(DataSet: TDataSet);
    PROCEDURE CDSCompraDetAfterInsert(DataSet: TDataSet);
    PROCEDURE CDSCompraDetBeforePost(DataSet: TDataSet);
    PROCEDURE CDSCompraDetNewRecord(DataSet: TDataSet);
    PROCEDURE CDSCompraDetCodigoArticuloSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSCompraCabSUCURSALCOMPRASetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSCompraCabDepositoSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSCompraDetCantidadSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE DataModuleDestroy(Sender: TObject);
    PROCEDURE CDSImpuestosNewRecord(DataSet: TDataSet);
    PROCEDURE CDSPercepcionIVANewRecord(DataSet: TDataSet);
    PROCEDURE CDSPercepcionIBNewRecord(DataSet: TDataSet);
    PROCEDURE CDSCompraCabFECHACOMPRASetText(Sender: TField;
      CONST Text: STRING);
    procedure CDSCompraDetIVA_TASASetText(Sender: TField;
      const Text: String);
    procedure CDSImpuestosIMPORTESetText(Sender: TField;
      const Text: String);
    procedure CDSCompraCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSCompraDetDESCUENTOSetText(Sender: TField;
      const Text: String);
    procedure CDSCompraSubDetalleBeforeInsert(DataSet: TDataSet);
    procedure CDSCompraSubDetalleNewRecord(DataSet: TDataSet);
    procedure CDSCompraSubDetalleBeforePost(DataSet: TDataSet);
    procedure CDSCompraSubDetalleBeforeEdit(DataSet: TDataSet);
    procedure CDSCompraSubDetalleSERIESetText(Sender: TField;
      const Text: String);
    procedure CDSCompraDetBeforeDelete(DataSet: TDataSet);
    procedure CDSCompraDetUNIDADES_TOTALSetText(Sender: TField;
      const Text: string);
    procedure CDSCompraCabMONEDA_CPBTE_COTIZACIONChange(Sender: TField);
    procedure CDSPercepcionIBIMPORTESetText(Sender: TField; const Text: string);
    procedure CDSCompraCabDSTOSetText(Sender: TField; const Text: string);
    procedure CDSCompraDetUNITARIO_IMP_INTERNOSetText(Sender: TField;
      const Text: string);
    procedure CDSPercepcionIVAIMPORTESetText(Sender: TField;
      const Text: string);
    procedure CDSPercepcionIVAAfterDelete(DataSet: TDataSet);
    procedure CDSPercepcionIBAfterDelete(DataSet: TDataSet);
    procedure CDSCompraCabFECHAFISCALSetText(Sender: TField;
      const Text: string);
    procedure CDSCompraDetCodigoArticuloGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CDSPercepcionIVABeforePost(DataSet: TDataSet);
    procedure CDSPercepcionIBBeforePost(DataSet: TDataSet);
    procedure CDSCompraDetTOTALSetText(Sender: TField; const Text: string);
    procedure CDSCompraCabDSTOIMPORTESetText(Sender: TField;
      const Text: string);
//    procedure wwCDSCompraDetUNIDADES_TOTALGetText(Sender: TField;
//      var Text: string; DisplayText: Boolean);
//    procedure wwCDSCompraDetUnitario_TotalGetText(Sender: TField;
//      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    PerciveIva: STRING;
    PerciveIB: STRING;
    Detalle_PercepcionIVA: STRING;
    Detalle_PercepcionIB : STRING;
    Detalle_PercepcionIB_2: STRING;

    Codigo_PercepcionIB   : Integer;
    Codigo_PercepcionIB_2 : Integer;
    Tasa_PercepcionIva    : Real;
    Tasa_PercepcionIB     : Real;
    Tasa_PercepcionIB_2   : Real;
    Juridiccion           : Integer;
    Juridiccion_2         : Integer;

    Codigo_PercepcionIva : Integer;
    Regimen              : Integer;
    Minimo_PercepcionIva : Real;
    Minimo_PercepcionIB  : Real;
    Minimo_PercepcionIB_2: Real;    
    MascaraDetalleUnitario :String;
    MascaraDetalleCantidad :String;
    MascaraDetalleTotal    :String;
    MascaraDetalleDescuento:String;
    MascaraIvaImporte      :String;
    MascaraIvaTasa         :String;
    MascaraCabecera        :String;
    procedure ReAsignaDetalle;
    procedure InformarCambioPrecio;
    procedure InformarCambioPrecioHistorial;

    PROCEDURE HabilitarLabel;
    FUNCTION AsignarProveedor(Dato: STRING): Boolean;
    FUNCTION AsignarArticulo(Dato: STRING): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION AsignarComprpobante(Dato: Integer): Boolean;
    PROCEDURE VerificaComprobante;
    PROCEDURE CalcularTotales;
    PROCEDURE SumarDetalle;
    procedure AplicarMascarasNumericas;
    procedure RecotizarPrecios;
    procedure Verifica_ImpuestosEnCero;

    { Public declarations }
  END;

VAR
  DatosCompraCtdo: TDatosCompraCtdo;


IMPLEMENTATION

USES UCompraCtdo_2, UDMain_FD,
     UBuscadorArticulos, UAvisoCambioPrecioCompra, DMStoreProcedureForm,
  DMBuscadoresForm, UMuestraListaCodBarra, UCompra_2;

{$R *.DFM}

procedure TdatosCompraCtdo.Verifica_ImpuestosEnCero;
begin
  CDSImpuestos.EnableControls;
  CDSImpuestos.First;
  WHILE NOT (CDSimpuestos.Eof) DO
    BEGIN
      IF (Trunc(CDSImpuestosImporte.AsFloat * 1000) <= 0) OR (Trunc(CDSImpuestosTasa.AsFloat * 100) <= 0) THEN
        begin
          CDSImpuestos.Delete;
          CDSImpuestos.First;
        end
      else
        CDSImpuestos.Next;
    END;

  CDSPercepcionIVA.EnableControls;
  CDSPercepcionIVA.First;
  WHILE NOT (CDSPercepcionIVA.Eof) DO
    BEGIN
      IF (Trunc(CDSPercepcionIVAIMPORTE.AsFloat * 1000) <= 0) OR (Trunc(CDSPercepcionIVATASA.AsFloat * 100) <= 0) THEN
        begin
          CDSPercepcionIVA.Delete;
          CDSPercepcionIVA.First;
        end
      else
        CDSPercepcionIVA.Next;
    END;

  CDSPercepcionIB.EnableControls;
  CDSPercepcionIB.First;
  WHILE NOT (CDSPercepcionIB.Eof) DO
    BEGIN
      IF (Trunc(CDSPercepcionIBIMPORTE.AsFloat * 1000) <= 0) OR (Trunc(CDSPercepcionIBTASA.AsFloat * 100) <= 0) THEN
        begin
          CDSPercepcionIB.Delete;
          CDSPercepcionIB.First;
        end
      else
        CDSPercepcionIB.Next;
    END;
end;

PROCEDURE TDatosCompraCtdo.ReAsignaDetalle;
VAR P:TBookmark;
begin
  if CDSCompraDet.RecordCount>0 Then
    begin
      p:=CDSCompraDet.GetBookmark;
      CDSCompraDet.DisableControls;
      CDSCompraDet.First;
      while Not(CDSCompraDet.Eof) Do
        begin
          CDSCompraDet.Edit;
          CDSCompraDetDESGLOZAIVA.Value    :=CDSCompraCabDESGLOZAIVA.Value;
          CDSCompraDetNROCPBTE.Value       :=CDSCompraCabNROCPBTE.Value;
          CDSCompraDetCODIGOPROVEEDOR.Value:=CDSCompraCabCodigo.Value;
          CDSCompraDetFECHACOMPRA.AsDateTime    :=CDSCompraCabFECHACOMPRA.AsDateTime;
          CDSCompraDetDEPOSITO.Value       :=CDSCompraCabDeposito.Value;
          CDSCompraDet.Next;
        end;
      CDSCompraDet.GotoBookmark(p);
      CDSCompraDet.FreeBookmark(p);
      CDSCompraDet.EnableControls;
  //    SumarDetalle;
  //    CalcularTotales;
    end;
end;

procedure TDatosCompraCtdo.InformarCambioPrecio;
VAR Puntero:TBookmark;
 Detalle:String;
begin
  Puntero:=CDSCompraDet.GetBookmark;
  CDSCompraDet.First;
  CDSCompraDet.DisableControls;
  while Not(CDSCompraDet.Eof) do
    begin
      if (CDSCompraDetUnitario_Total.AsFloat<>CDSCompraDetUnitario_Total.OldValue)
       and (CDSCompraDetUnitario_Total.OldValue>0) Then
        begin
         // **** Ingreso en el Log File  **************
          Detalle:= 'Modificación de precio Fac.Compra: '+
                    CDSCompraCabNROCPBTE.AsString+
                   ' Articulo: '+
                    CDSCompraDetCodigoArticulo.AsString +
                    ':'+
                    CDSCompraDetDetalle.AsString+
                   ' Importe: '+
                    FormatFloat('0.00',CDSCompraDetUnitario_Total.AsFloat)+
                   ' Importe Anerior: '+
                    FormatFloat('0.00',CDSCompraDetUnitario_Total.OldValue);
          DMMain_FD.LogFileFD(0,2,Detalle,'FACCOMP');
          // ******************************************
        end;
      CDSCompraDet.Next;
    end;
  CDSCompraDet.GotoBookmark(Puntero);
  CDSCompraDet.FreeBookmark(Puntero);
  CDSCompraDet.EnableControls;
end;

procedure TDatosCompraCtdo.InformarCambioPrecioHistorial;
VAR Puntero:TBookmark;
aux:real;
Cambia:Boolean;
PrecioStock,PrecioFactura:Int64;
Exento,Gravado,ExentoPonderado,GravadoPonderado,TotalPonderado,CantidadTotal:Extended;
ActualizaPorPonderado,MostrarCotizacion:Boolean;
ChoiceControlPrecio: Byte;

begin
  MostrarCotizacion     :=  True;
  ActualizaPorPonderado :=  False;
  ChoiceControlPrecio   :=  mrNone;

  if DMMain_FD.ActualizaCosto then
    begin
      Puntero:=CDSCompraDet.GetBookmark;
      CDSCompraDet.First;
      CDSCompraDet.DisableControls;
      while Not(CDSCompraDet.Eof) do
        begin
          QStockArticulo.Close;
          QStockArticulo.ParamByName('codigo').AsString:=CDSCompraDetCodigoArticulo.Value;
          QStockArticulo.Open;

          Cambia        := QStockArticuloACTUALIZACOSTO.Value='S';

          if Cambia then
            begin
              PrecioStock   := Trunc((QStockArticuloFIJACION_PRECIO_GRAVADO.AsFloat+QStockArticuloFIJACION_PRECIO_EXENTO.AsFloat)*1000);

              aux           := CDSCompraDetUNIDADES_TOTAL.AsFloat * (1-(CDSCompraDetDESCUENTO.AsFloat * 0.01 ));
              PrecioFactura := Trunc((aux * (1-(CDSCompraCabDSTO.AsFloat*0.01)))*1000);
              Exento        := CDSCompraDetUNIDADES_EXENTO.AsFloat * (1-(CDSCompraDetDESCUENTO.AsFloat*0.01)) * (1-(CDSCompraCabDSTO.AsFloat*0.01));
              Gravado       := CDSCompraDetUNIDADES_GRAVADO.AsFloat * (1-(CDSCompraDetDESCUENTO.AsFloat*0.01)) * (1-(CDSCompraCabDSTO.AsFloat*0.01));

              CantidadTotal := QStockArticuloFISICO.ASFloat+CDSCompraDetCANTIDAD.AsFloat;
              if CantidadTotal<=0 then cantidadTotal:=1;

              ExentoPonderado := ((QStockArticuloFISICO.AsFloat * QStockArticuloFIJACION_PRECIO_EXENTO.AsFloat) +
                                  (CDSCompraDetCANTIDAD.AsFloat * Exento))/CantidadTotal;
              GravadoPonderado:= ((QStockArticuloFISICO.AsFloat * QStockArticuloFIJACION_PRECIO_GRAVADO.AsFloat) +
                                  (CDSCompraDetCANTIDAD.AsFloat * Gravado))/CantidadTotal;

              TotalPonderado:=ExentoPonderado+GravadoPonderado;

            //  if (DMMain_FD.ActualizaCostoMayor) and (PrecioFactura<PrecioStock) then Cambia:=False;

            //  if (PrecioFactura<>PrecioStock) and (cambia) and (DMMain_FD.VerificaCambioPrecioCompra) then     //(FormCompraCtdo_2.VerificaCambioPrecioCompra='S')

              if (ChoiceControlPrecio <> mrNoToAll) and
                 ((PrecioFactura<>PrecioStock) and ((not DMMain_FD.ActualizaCostoMayor) or (PrecioFactura>PrecioStock))) and
                 (DMMain_FD.VerificaCambioPrecioCompra)   then
                begin
                  if (ChoiceControlPrecio <> mrYesToAll) then
                    begin
                      if not(Assigned(FormAvisoCambioPrecioCompra)) then
                        FormAvisoCambioPrecioCompra:=TFormAvisoCambioPrecioCompra.Create(self);
                      FormAvisoCambioPrecioCompra.PrecioOld       := (PrecioStock * 0.001);
                      FormAvisoCambioPrecioCompra.PrecioNew       := (PrecioFactura * 0.001);
                      FormAvisoCambioPrecioCompra.Stock           := QStockArticuloFISICO.AsFloat;
                      FormAvisoCambioPrecioCompra.CostoPonderado  := TotalPonderado;
                      FormAvisoCambioPrecioCompra.Monedastock     := CDSCompraDetMUESTRAMONEDA.Value;
                      FormAvisoCambioPrecioCompra.Detalle         := QStockArticuloCODIGO_STK.Value+':'+
                                                                     QStockArticuloDETALLE_STK.Value;
                      FormAvisoCambioPrecioCompra.MonedaCompra    := CDSCompraDetMUESTRAMONEDA.Value;
                     // QMonedas.Close;
                      FormAvisoCambioPrecioCompra.showModal;
                      ChoiceControlPrecio  := FormAvisoCambioPrecioCompra.ModalResult;
                      ActualizaPorPonderado:=FormAvisoCambioPrecioCompra.PorCostoPonderado='S';
                      FreeAndNil(FormAvisoCambioPrecioCompra);
                    end;

                  if ChoiceControlPrecio in [mrYes, mrYesToAll] Then
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
                        spCambiaPrecio.ParamByName('Codigo').Value       := CDSCompraDetCodigoArticulo.Value;
                        spCambiaPrecio.ParamByName('FPEXENTO').Value     := EXENTO;
                        spCambiaPrecio.ParamByName('FPGRAVADO').Value    := GRAVADO;
                        spCambiaPrecio.ParamByName('COSTOEXENTO').Value  := EXENTO;
                        spCambiaPrecio.ParamByName('COSTOGRAVADO').Value := GRAVADO;
                        spCambiaPrecio.ParamByName('ID_LISTA').Value     := -1;
                        spCambiaPrecio.ParamByName('RECARGO').Value      := 0;
                        spCambiaPrecio.ParamByName('DETALLE').Value      := '';
                        spCambiaPrecio.ExecProc;
                        spCambiaPrecio.close;

                        // **** Ingreso en el Historial de Precios **************
                        spInformaCambioPrecio.Close;
                        spInformaCambioPrecio.ParamByName('codigo').Value               :=CDSCompraDetCodigoArticulo.Value;

                        spInformaCambioPrecio.ParamByName('costo_old').Value            :=QStockArticuloCOSTO_GRAVADO_STK.AsFloat+QStockArticuloCOSTO_EXENTO_STK.AsFloat ;
                        spInformaCambioPrecio.ParamByName('costo_old_gravado').Value    :=QStockArticuloCOSTO_GRAVADO_STK.AsFloat;
                        spInformaCambioPrecio.ParamByName('costo_old_exento').Value     :=QStockArticuloCOSTO_EXENTO_STK.AsFloat;

                        spInformaCambioPrecio.ParamByName('fprecio_old').Value          :=QStockArticuloFIJACION_PRECIO_GRAVADO.AsFloat+QStockArticuloFIJACION_PRECIO_EXENTO.AsFloat;
                        spInformaCambioPrecio.ParamByName('fprecio_old_gravado').Value  :=QStockArticuloFIJACION_PRECIO_GRAVADO.AsFloat;
                        spInformaCambioPrecio.ParamByName('fprecio_old_exento').Value   :=QStockArticuloFIJACION_PRECIO_EXENTO.AsFloat;


                        spInformaCambioPrecio.ParamByName('costo_new').Value            :=PrecioFactura*0.001;
                        spInformaCambioPrecio.ParamByName('fprecio_new').Value          :=PrecioFactura*0.001;

                        spInformaCambioPrecio.ParamByName('costo_new_gravado').Value    :=Gravado;
                        spInformaCambioPrecio.ParamByName('costo_new_exento').Value     :=Exento;

                        spInformaCambioPrecio.ParamByName('fprecio_new_gravado').Value  :=Gravado;
                        spInformaCambioPrecio.ParamByName('fprecio_new_exento').Value   :=Exento;

                        spInformaCambioPrecio.ParamByName('id_fc_compra').Value         := CDSCompraCabID_FC.AsInteger;

                        spInformaCambioPrecio.ParamByName('usuario').Value              :=DMMain_FD.UsuarioActivo;
                        spInformaCambioPrecio.ParamByName('fecha').Value                :=Now;
                        spInformaCambioPrecio.ParamByName('motivo').Value               :='Cambio de precio FC Compra:'+CDSCompraCabNROCPBTE.Value;
                        spInformaCambioPrecio.ExecProc;
                        // ******************************************
                        DMMain_FD.fdcGestion.Commit;
                      except
                        DMMain_FD.fdcGestion.Rollback;
                        ShowMessage('No se aplico el cambio de precio....');
                      end;
                    end;
                end;
            end;
          QStockArticulo.Close;
          spInformaCambioPrecio.Close;
          spCambiaPrecio.close;
          CDSCompraDet.Next;
        end;
      CDSCompraDet.GotoBookmark(Puntero);
      CDSCompraDet.FreeBookmark(Puntero);
      CDSCompraDet.EnableControls;
    end;

end;


PROCEDURE TDatosCompraCtdo.VerificaComprobante;
begin
  if CDSCompraCab.State=dsInsert Then
    begin
      QVerifiComprob.Close;
      QVerifiComprob.ParamByName('Nro').Value   := CDSCompraCabNROCPBTE.Value;
      QVerifiComprob.ParamByName('clase').Value := CDSCompraCabCLASECPBTE.Value;
      QVerifiComprob.ParamByName('Tipo').Value  := CDSCompraCabTIPOCPBTE.Value;
      QVerifiComprob.ParamByName('codigo').Value:= CDSCompraCabCodigo.Value;
      QVerifiComprob.Open;
      if QVerifiComprob.Fields[0].AsString<>'' Then
        begin
          ShowMessage('Este comprobante fué ingresado.... verifique....!!!');
          CDSCompraCabSucFac.Clear;
          CDSCompraCabNumeroFac.Clear;
          FormCompraCtdo_2.dbeSuc.SetFocus;
        end
      else
        begin
          QVerificaNro.Close;
          QVerificaNro.ParamByName('Nro').Value   := CDSCompraCabNROCPBTE.Value;
          QVerificaNro.ParamByName('codigo').Value:= CDSCompraCabCodigo.Value;
          QVerificaNro.ParamByName('Tipo').Value  := CDSCompraCabTIPOCPBTE.Value;
          QVerificaNro.ParamByName('Clase').Value  := CDSCompraCabCLASECPBTE.Value;
          QVerificaNro.Open;
          if QVerificaNro.Fields[0].AsString<>'' Then
            begin
              if MessageDlg('Hay un Comprobante con el mismo Nro Ingresado..... Mostrar el Comprbante????',mtConfirmation,mbYesNo,0)=mrYes Then
                begin
                  FormCompraCtdo_2.Cancelar.Execute;
                  FormCompraCtdo_2.DatoNew  := QVerificaNroID_FC.AsString;
                  FormCompraCtdo_2.TipoCpbte:= QVerificaNroTIPOCPBTE.AsString;
                  FormCompraCtdo_2.Recuperar.Execute;
                end
              else
                begin
                  CDSCompraCabSucFac.Clear;
                  CDSCompraCabNumeroFac.Clear;
                  FormCompraCtdo_2.dbeSuc.SetFocus;
                end;
            end;
        end;
    // Busco si esta de Cta Cte
      QVerificaNro.Close;
      QVerificaNro.ParamByName('Nro').Value    := CDSCompraCabNROCPBTE.Value;
      QVerificaNro.ParamByName('codigo').Value := CDSCompraCabCodigo.Value;
      QVerificaNro.ParamByName('Tipo').Value   := 'FC';
      QVerificaNro.ParamByName('Clase').Value  := '**';
      QVerificaNro.Open;
      if QVerificaNro.Fields[0].AsString<>'' Then
        begin
          if MessageDlg('Hay un Comprobante en Cta Cte con el mismo Nro Ingresado..... Mostrar el Comprobante????',mtConfirmation,mbYesNo,0)=mrYes Then
            begin
              FormCompraCtdo_2.Cancelar.Execute;
              if Not(Assigned(FormCompra_2)) then
                FormCompra_2:=TFormCompra_2.Create(Self);
              FormCompra_2.DatoNew  := QVerificaNroID_FC.AsString;
              FormCompra_2.TipoCpbte:= QVerificaNroTIPOCPBTE.AsString;
              FormCompra_2.Recuperar.Execute;
            end
          else
            begin
              CDSCompraCabSucFac.Clear;
              CDSCompraCabNumeroFac.Clear;
              FormCompraCtdo_2.dbeSuc.SetFocus;
            end;
        end;
      QVerifiComprob.Close;
      QVerificaNro.Close;
    end;
end;


PROCEDURE TDatosCompraCtdo.HabilitarLabel;
BEGIN
  {Si la Factura no discrimina IVA}
  FormCompraCtdo_2.dbgIva.Visible:=CDSCompraCabDESGLOZAIVA.Value = 'S';
  FormCompraCtdo_2.dbgPrecepcionIVA.Visible:=PerciveIva = 'S';
  FormCompraCtdo_2.dbgPercepcionIB.Visible:=PerciveIB = 'S';
  FormCompraCtdo_2.RxLabel4.Visible:=CDSCompraCabDESGLOZAIVA.Value = 'S';
  FormCompraCtdo_2.RxLabel2.Visible:=PerciveIva = 'S';
  FormCompraCtdo_2.RxLabel3.Visible:=PerciveIB = 'S';
END;


FUNCTION TDatosCompraCtdo.AsignarProveedor(Dato: STRING): Boolean;
BEGIN
  WITH DatosCompraCtdo.CDSProveedor DO
    BEGIN
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value:=Dato;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.Eof) THEN
        BEGIN
          CDSCompraCabNombre.AsString     :=CDSProveedorNombre.AsString;
          CDSCompraCabRazonSocial.AsString:=CDSProveedorRazon_Social.ASString;
          CDSCompraCabCuit.AsString       :=CDSProveedorN_de_CUIT.AsString;
          CDSCompraCabDireccion.AsString  :=CDSProveedorDireccion.AsString;
          CDSCompraCabTipoIVA.Value       :=CDSProveedorCondicion_IVA.Value;
          CDSCompraCabCPostal.AsString    :=CDSProveedorCod_Postal.AsString;
          CDSCompraCabLocalidad.AsString  :=CDSProveedorLocalidad.AsString;
          CDSCompraCabTIPO_PROVEEDOR.Value:=CDSProveedorTIPO_PROVEEDOR.Value;
          CDSInscripcion.Close;
          CDSInscripcion.Params.ParamByName('Codigo').Value:=CDSCompraCabTipoIva.Value;
          CDSInscripcion.Open;
          IF NOT(CDSInscripcion.Eof) THEN
            begin
              CDSCompraCabCALCULA_SOBRETASA.Value     := CDSInscripcionCobraSobretasa.Value;
              CDSCompraCabDESGLOZAIVA.Value           := CDSInscripcionDISCRIMINAIVA.Value;
              CDSCompraCabMUESTRAINSCRIPCIONIVA.Value := CDSInscripcionDETALLE.Value;

            end;
          CDSInscripcion.Close;
          PerciveIva:=CDSProveedorRetiene_IVA.Value;
          PerciveIB:=CDSProveedorRetiene_IB.Value;
          FormCompraCtdo_2.dbgPrecepcionIVA.Enabled :=PerciveIva = 'S';
          FormCompraCtdo_2.dbgPercepcionIB.Enabled  :=PerciveIB = 'S';
          IF PerciveIva = 'S' THEN
            BEGIN
              Codigo_PercepcionIva:=CDSProveedorId_Perc_Iva.Value;
              CDSTasaPercepIVA.Close;
              CDSTasaPercepIVA.Params.ParamByName('id').value:=Codigo_PercepcionIva;
              CDSTasaPercepIVA.Open;
              if not (CDSTasaPercepIVA.IsEmpty) then
                begin
                  Tasa_PercepcionIva    :=CDSTasaPercepIVATASA.AsFloat;
                  Minimo_PercepcionIva  :=CDSTasaPercepIVAMINIMOAPLICABLE.AsFloat;
                  Regimen               :=CDSTasaPercepIVACODIGOREGIMEN.Value;
                  if CDSCompraCabTIPOCPBTE.Value='NC' Then
                    Minimo_PercepcionIva  := 0;
                  Detalle_PercepcionIVA :=CDSTasaPercepIVADESCRIPCION.Value;
                end;
            END;
          IF PerciveIB = 'S' THEN
            BEGIN
              Codigo_PercepcionIB  :=-1;
              Codigo_PercepcionIB_2:=-1;

              Codigo_PercepcionIB := CDSProveedorId_Perc_IBB.Value;
              CDSTasaPercepIIBB.Close;
              CDSTasaPercepIIBB.Params.ParamByName('id').value := Codigo_PercepcionIB;
              CDSTasaPercepIIBB.Open;
              if not(CDSTasaPercepIIBB.IsEmpty) then
                begin
                  Tasa_PercepcionIB    := CDSTasaPercepIIBBTASA.AsFloat;
                  Minimo_PercepcionIB  := CDSTasaPercepIIBBMINIMOAPLICABLE.AsFloat;
                  Juridiccion          := CDSTasaPercepIIBBJURIDICION.Value;
                  if CDSCompraCabTIPOCPBTE.Value='NC' Then
                    Minimo_PercepcionIB  := 0;
                  Detalle_PercepcionIB := CDSTasaPercepIIBBDESCRIPCION.Value;
                end;

              if CDSProveedorID_PERC_IBB_2.AsString<>'' then
                begin
                  Codigo_PercepcionIB_2 := CDSProveedorId_Perc_IBB_2.Value;
                  CDSTasaPercepIIBB.Close;
                  CDSTasaPercepIIBB.Params.ParamByName('id').value := Codigo_PercepcionIB_2;
                  CDSTasaPercepIIBB.Open;
                  if not(CDSTasaPercepIIBB.IsEmpty) then
                    begin
                      Tasa_PercepcionIB_2    := CDSTasaPercepIIBBTASA.AsFloat;
                      Minimo_PercepcionIB_2  := CDSTasaPercepIIBBMINIMOAPLICABLE.AsFloat;
                      Juridiccion_2          := CDSTasaPercepIIBBJURIDICION.Value;
                      if CDSCompraCabTIPOCPBTE.Value='NC' Then
                        Minimo_PercepcionIB_2  := 0;
                      Detalle_PercepcionIB_2 := CDSTasaPercepIIBBDESCRIPCION.Value;
                    end;
                end;

            END;
         if (Not(CDSProveedorID_FACTURACTDODEFECTO.IsNull)) and
            (CDSProveedorID_FACTURACTDODEFECTO.AsInteger>0)
         Then
           CDSCompraCabID_TIPOCOMPROBANTE.Text     := CDSProveedorID_FACTURACTDODEFECTO.AsString
         else
           CDSCompraCabID_TIPOCOMPROBANTE.Text     := DMMain_FD.CpbtePorDefecto('FO','C', CDSCompraCabSUCURSALCOMPRA.AsInteger, CDSCompraCabDESGLOZAIVA.AsString,DMMain_FD.UsuarioActivoId);


          Result:=True;
        END
      ELSE
        Result:=False;
    END;
END;

FUNCTION TDatosCompraCtdo.AsignarArticulo(Dato: STRING): Boolean;
BEGIN
  IF CDSCompraDet.State = dsBrowse THEN
    CDSCompraDet.Edit;
  CDSStock.Close;
  CDSStock.Params.ParamByName('Codigo').Value:=Dato;
  CDSStock.Open;
  IF (NOT (CDSStock.IsEmpty)) and (CDSStockCLASE_ARTICULO.Value<>0) THEN
    BEGIN
      //vacio todo los importes por si hay un cambio de codigo y no queden cargados los valores
      CDSCompraDetCantidad.AsFloat           := 0;
      CDSCompraDetUnitario_Total.AsFloat     := 0;
      CDSCompraDetUnitario_Gravado.AsFloat   := 0;
      CDSCompraDetUnitario_Exento.AsFloat    := 0;
      CDSCompraDetTotal.AsFloat              := 0;
      CDSCompraDetID_MONEDA.AsFloat          := CDSStockMONEDA.Value;
      CDSCompraDetMUESTRACODALTERNATIVO.Value:= CDSStockREEMPLAZO_STK.Value;
      QMonedas.Close;
      QMonedas.ParamByName('id').Value:=CDSStockMONEDA.Value;
      QMonedas.Open;
      if QMonedasID.AsString<>'' then
        CDSCompraDetMUESTRAMONEDA.Value:=QMonedasSIGNO.Value;
      CDSCompraDetCOTIZACION.AsFloat  :=QMonedasCOTIZACION_COMPRA.AsFloat;
      QMonedas.Close;


      CDSCompraDetCON_NRO_SERIE.Value   :=CDSStockCONTROL_SERIE.Value;
      CDSCompraDetDetalle.AsString      := CDSStockDetalle_Stk.AsString;
      CDSCompraDetUnidad.Value          := CDSStockUNIDAD_COMPRA.Value;
      CDSCompraDetCosto_Gravado.AsFloat := CDSStockFijacion_Precio_Gravado.AsFloat;
      CDSCompraDetCosto_Exento.AsFloat  := CDSStockFijacion_Precio_Exento.AsFloat;
      CDSCompraDetCosto_Total.AsFloat   := CDSStockFijacion_Precio_Total.AsFloat;
      CDSCompraDetGRAVADO_IB.value      := CDSStockGRAVADO_IB.Value;
      IF CDSStockCON_IMP_INT.Value = 'S' THEN
        CDSCompraDetCOSTO_IMP_INTERNO.AsFloat := CDSStockIMPUESTO_INTERNOS.AsFloat
      ELSE
        CDSCompraDetCOSTO_IMP_INTERNO.AsFloat := 0;
      CDSCompraDetAfecta_Stock.Value        := CDSStockControlaStock.Value;
      CDSCompraDetModo_Gravamen.Value       := CDSStockModo_Gravamen.Value;
      CDSCompraDetTipoIva_Tasa.Value        := CDSStockTasa_Iva.Value;
      CDSCompraDetTipoIva_SobreTasa.Value   := CDSStockSobreTasa_Iva.Value;
      //Asigno el deposito que tengo en el encabezado...
      CDSCompraDetDeposito.Value    := CDSCompraCabDeposito.Value;
      //segun el tipo de inscripcion verifico si descrimina o no iva y si cobra Sobre tasa
      CDSCompraDetDesglozaIVA.Value         := CDSCompraCabDesglozaIva.Value;
      CDSCompraDetCalcula_SobreTasa.Value   := CDSCompraCabCalcula_SobreTasa.Value;
      if CDSStockPRESENTACION_CANTIDAD.ASFloat>0 then
        CDSCompraDetPRESENTACION_CANT.AsFloat := CDSStockPRESENTACION_CANTIDAD.AsFloat
      else
        CDSCompraDetPRESENTACION_CANT.AsFloat := 1;


      // traigo los porcentajes de Iva
      CDSIva.Close;
      CDSIva.Params.ParamByName('id').Value := CDSCompraDetTipoIva_Tasa.Value;
      CDSIva.Open;
      IF NOT (CDSIva.IsEmpty) THEN
        CDSCompraDetIVA_Tasa.AsFloat := CDSIvaTasa.AsFloat;
      CDSIva.Close;
      CDSIva.Params.ParamByName('id').Value := CDSCompraDetTipoIva_SobreTasa.Value;
      CDSIva.Open;
      IF NOT (CDSIva.IsEmpty) THEN
        CDSCompraDetIVA_SobreTasa.AsFloat  := CDSIvaTasa.AsFloat;

      CDSCompraDetUNIDADES_GRAVADO.AsFloat := CDSCompraDetCosto_Gravado.AsFloat;
      CDSCompraDetUNIDADES_EXENTO.AsFloat  := CDSCompraDetCosto_Exento.AsFloat;
      CDSCompraDetUNIDADES_TOTAL.aSfLOAT   := CDSCompraDetCOSTO_TOTAL.AsFloat;

      if CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat=0 then
        CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat:=1;

      if CDSCompraDetCOTIZACION.AsFloat=0 then
        CDSCompraDetCOTIZACION.AsFloat:=1;

      CDSCompraDetUnitario_Gravado.AsFloat := RoundTo((CDSCompraDetCosto_Gravado.AsFloat / CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat),DMMain_FD.DecRedondeo) * CDSCompraDetCOTIZACION.AsFloat;
      CDSCompraDetUnitario_Exento.AsFloat  := RoundTo((CDSCompraDetCosto_Exento.AsFloat / CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat),DMMain_FD.DecRedondeo) * CDSCompraDetCOTIZACION.AsFloat;
      CDSCompraDetUnitario_Total.AsFloat   := RoundTo((CDSCompraDetCOSTO_TOTAL.AsFloat / CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat),DMMain_FD.DecRedondeo) * CDSCompraDetCOTIZACION.AsFloat;

      Result := True;
    END
  ELSE
    Result := False;
END;

FUNCTION TDatosCompraCtdo.AsignarSucursal(Dato: Integer): Boolean;
var
  DepositoSuc: Integer;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value:=dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
//      DMMain_FD.QDepositoPorSucursal.Close;
//      DMMain_FD.QDepositoPorSucursal.ParamByName('sucursal').Value:=CDSCompraCabSUCURSALCOMPRA.Value;
//      DMMain_FD.QDepositoPorSucursal.Open;
//      if DMMain_FD.QDepositoPorSucursalDEPOSITO.AsString<>'' then
//        CDSCompraCabDepositoSetText(CDSCompraCabDeposito,DMMain_FD.QDepositoPorSucursalDEPOSITO.AsString);
//      DMMain_FD.QDepositoPorSucursal.Close;
      DepositoSuc                 := DMMain_FD.DepositoPorSucursal(CDSCompraCabSUCURSALCOMPRA.AsInteger);
      if (DepositoSuc>0) and (DepositoSuc <> CDSCompraCabDeposito.AsInteger) then
        CDSCompraCabDeposito.Text   := IntToStr(DepositoSuc);
      DatosCompraCtdo.CDSBuscaComprob.close;
      DatosCompraCtdo.CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      DatosCompraCtdo.CDSBuscaComprob.Open;

      CDSCompraCabID_TIPOCOMPROBANTE.Clear;
      CDSCompraCabMUESTRACOMPROBANTE.Clear;
      CDSCompraCabCLASECPBTE.Clear;
      CDSCompraCabTIPOCPBTE.Clear;
      CDSCompraCabSUCFAC.Value   :='';
      CDSCompraCabNUMEROFAC.Value:='';

      if DatosCompraCtdo.CDSBuscaComprob.RecordCount=1 Then
        begin
          DatosCompraCtdo.CDSCompraCabID_TIPOCOMPROBANTESetText(DatosCompraCtdo.CDSCompraCabID_TIPOCOMPROBANTE,DatosCompraCtdo.CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          FormCompraCtdo_2.RxDBECodigo.SetFocus;
        end;
      DatosCompraCtdo.CDSBuscaComprob.Close;
      Result:=True;
      CDSCompraCabMuestraSucursal.Value:=CDSSucursalDetalle.Value;
    END
  ELSE
    BEGIN
      Result:=False;
      CDSCompraCabMuestraSucursal.Value:= '';
    END;
END;

FUNCTION TDatosCompraCtdo.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value:=Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.Eof) THEN
    BEGIN
      Result:=True;
      CDSCompraCabMuestraDeposito.Value:=CDSDepositoNombre.Value;
    END
  ELSE
    BEGIN
      Result:=False;
      CDSCompraCabMuestraDeposito.Value:= '';
    END;
  CDSDeposito.Close;
END;

FUNCTION TDatosCompraCtdo.AsignarComprpobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value  :=dato;
  QComprob.ParamByName('suc').Value :=CDSCompraCabSucursalCompra.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result:=True;
      //*****************************************************************************
      // Seccion Nueva , asigna la caja segun el comprobante seleccionado  10/12/2012
      //*****************************************************************************
       if (TForm(Self.Owner)).Owner.Name <>'FormLecturaXML' then
         begin
          if (QComprobCAJA_DEFECTO.AsString<>'') and (QComprobCAJA_DEFECTO.Value>0) then
            FormCompraCtdo_2.CajaPorDefecto:=QComprobCAJA_DEFECTO.Value
          else
            begin
              if (TForm(Self.Owner)).Owner.Name<>'FormCajaResumen' then
                FormCompraCtdo_2.CajaPorDefecto:=DMMain_FD.CajaSeleccionada;
            end;
         end;
      //*****************************************************************************
      //*****************************************************************************

      CDSCompraCaBMUESTRACOMPROBANTE.Value:=QComprobDENOMINACION.Value;
      CDSCompraCabLetraFac.Value          :=QComprobLETRA.Value;
      CDSCompraCabTIPOCPBTE.Value         :=QComprobTIPO_COMPROB.Value;
      CDSCompraCabCLASECPBTE.Value        :=QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result:=False;
      CDSCompraCabMUESTRACOMPROBANTE.Value:= '';
      CDSCompraCabLetraFac.Value          := '';
      CDSCompraCabTIPOCPBTE.Value         := '';
      CDSCompraCabCLASECPBTE.Value        := '';
    END;
  //
END;

procedure TDatosCompraCtdo.RecotizarPrecios;
var p:TBookmark;
AuxGravado,AuxExento,AuxExcluido,AuxTotal:Real;
begin
   // Recalcular tdos los precios
  if ( CDSCompraCab.State<>dsBrowse ) then
    begin
      p:=CDSCompraDet.GetBookmark;
      CDSCompraDet.DisableControls;
      CDSCompraDet.First;
      while Not(CDSCompraDet.Eof) do
        begin
          CDSCompraDet.Edit;

          QMonedas.Close;
          QMonedas.ParamByName('id').Value:=CDSCompraDetID_MONEDA.Value;
          QMonedas.Open;
          CDSCompraDetCOTIZACION.AsFloat  :=QMonedasCOTIZACION_COMPRA.AsFloat;
          QMonedas.Close;


          CDSCompraDetUnitario_Exento.AsFloat      :=(CDSCompraDetUNIDADES_EXENTO.AsFloat/CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSCompraDetCOTIZACION.AsFloat;
          CDSCompraDetUNITARIO_GRAVADO.AsFloat     :=(CDSCompraDetUNIDADES_GRAVADO.AsFloat/CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSCompraDetCOTIZACION.AsFloat;
          CDSCompraDetUNITARIO_IMP_INTERNO.AsFloat :=(CDSCompraDetUNIDADES_IMP_INTERNOS.AsFloat/CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSCompraDetCOTIZACION.AsFloat;
          CDSCompraDetUnitario_Total.AsFloat       :=(CDSCompraDetUNIDADES_TOTAL.aSfLOAT/CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSCompraDetCOTIZACION.AsFloat;

          AuxGravado  := CDSCompraDetUNITARIO_GRAVADO.AsFloat;
          AuxExento   := CDSCompraDetUNITARIO_EXENTO.AsFloat;
          AuxExcluido := CDSCompraDetUNITARIO_IMP_INTERNO.AsFloat;


          AuxTotal                  := AuxGravado + AuxExento + AuxExcluido;
          CDSCompraDetTotal.AsFloat := CDSCompraDetCantidad.AsFloat * AuxTotal *( 1 - CDSCompraDetDescuento.AsFloat * 0.01);
            //Sender.AsString           := FloatToStr(AuxTotal);
          CDSCompraDet.Next;
        end;
      SumarDetalle;
      CDSCompraDet.GotoBookmark(p);
      CDSCompraDet.FreeBookmark(p);
      CDSCompraDet.EnableControls;

    end;
end;


PROCEDURE TDatosCompraCtdo.SumarDetalle;
VAR
  Dscto: Real;
  Puntero:TBookmark;
BEGIN
  Puntero:=CDSCompraDet.GetBookmark;
  CDSCompraDet.DisableControls;
  CDSCompraDet.First;
  IF CDSCompraCab.State = dsBrowse THEN
    CDSCompraCab.Edit;
  CDSCompraCabNetoGrav1.asfloat := 0;
  CDSCompraCabNetoExen1.asfloat := 0;
  CDSCompraCabNETOMONOTRIBUTO1.asfloat := 0;
  CDSCompraCabIMPORTEEXCLUIDO1.asfloat := 0;
  CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.asfloat:=0;
  CDSCompraCabTOTAL_UNIDADES.asfloat:=0;
 
  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
  WHILE NOT (CDSImpuestos.Eof) DO
    BEGIN
      CDSImpuestos.Edit;
      CDSImpuestosNeto.AsFloat := 0;
      CDSImpuestos.Next;
    END;
  CDSImpuestos.EnableControls;
  WHILE (NOT CDSCompraDet.Eof) DO
    BEGIN
      Dscto := 0.01 * (100 - CDSCompraDetDescuento.AsFloat);
      IF (CDSCompraDetTipoIva_Tasa.Value <> 0) AND (NOT (VarIsNull(CDSCompraDetTipoIva_Tasa.Value))) AND
        (CDSCompraDetModo_Gravamen.Value <> 'E') AND (CDSCompraCabDESGLOZAIVA.Value = 'S') THEN
        BEGIN
          IF CDSImpuestos.Locate('Codigo_Gravamen',CDSCompraDetTipoIva_Tasa.Value, []) THEN
            BEGIN
              CDSImpuestos.Edit;
              CDSImpuestosNeto.AsFloat    := CDSCompraDetUNITARIO_GRAVADO.AsFloat * Dscto * CDSCompraDetCantidad.AsFloat + CDSImpuestosNeto.AsFloat;
              CDSImpuestosTasa.AsFloat    := CDSCompraDetIVA_Tasa.AsFloat;
              CDSImpuestosImporte.AsFloat := CDSImpuestosNeto.AsFloat * (CDSImpuestosTasa.AsFloat * 0.01);
              CDSImpuestos.Post;
            END
          ELSE
            BEGIN
              CDSImpuestos.Insert;
              CDSImpuestosCodigo_Gravamen.Value     := CDSCompraDetTipoIva_Tasa.AsInteger;
              CDSIva.Close;
              CDSIva.Params.ParamByName('id').Value := CDSCompraDetTipoIva_Tasa.AsInteger;
              CDSIva.Open;
              CDSImpuestosDetalle.Value      := CDSIvaDescripcion.Value;
              CDSImpuestosId_FcCompCab.Value := CDSCompraDetId_CabFac.Value;
              CDSImpuestosNeto.AsFloat       :=CDSCompraDetUNITARIO_GRAVADO.AsFloat * Dscto * CDSCompraDetCantidad.AsFloat + CDSImpuestosNeto.AsFloat;
              CDSImpuestosTasa.AsFloat       :=CDSCompraDetIVA_Tasa.AsFloat;
              CDSImpuestosImporte.AsFloat    :=CDSImpuestosNeto.AsFloat * (CDSImpuestosTasa.AsFloat * 0.01);
              CDSImpuestos.Post;
            END;
          IF CDSCompraDetCalcula_SobreTasa.Value = 'S' THEN
            BEGIN
              IF CDSImpuestos.Locate('Codigo_Gravamen', CDSCompraDetTipoIva_SobreTasa.Value, []) THEN
                BEGIN
                  CDSImpuestos.Edit;
                  CDSImpuestosNeto.AsFloat    := CDSCompraDetUNITARIO_GRAVADO.AsFloat * Dscto * CDSCompraDetCantidad.AsFloat + CDSImpuestosNeto.AsFloat;
                  CDSImpuestosTasa.AsFloat    := CDSCompraDetIVA_Tasa.AsFloat;
                  CDSImpuestosImporte.AsFloat := CDSImpuestosNeto.AsFloat * (CDSImpuestosTasa.AsFloat * 0.01);
                  CDSImpuestos.Post;
                END
              ELSE
                BEGIN
                  CDSImpuestos.Insert;
                  CDSImpuestosCodigo_Gravamen.Value     := CDSCompraDetTipoIva_SobreTasa.AsInteger;
                  CDSIva.Close;
                  CDSIva.Params.ParamByName('id').Value := CDSCompraDetTipoIva_SobreTasa.AsInteger;
                  CDSIva.Open;
                  CDSImpuestosDetalle.Value      := CDSIvaDescripcion.Value;
                  CDSImpuestosId_FcCompCab.Value := CDSCompraDetId_CabFac.Value;
                  CDSImpuestosNeto.AsFloat    := CDSCompraDetUNITARIO_GRAVADO.AsFloat * Dscto * CDSCompraDetCantidad.AsFloat + CDSImpuestosNeto.AsFloat;
                  CDSImpuestosTasa.AsFloat    := CDSCompraDetIVA_Tasa.AsFloat;
                  CDSImpuestosImporte.AsFloat := CDSImpuestosNeto.AsFloat * (CDSImpuestosTasa.AsFloat * 0.01);
                  CDSImpuestos.Post;
                END;
            END;
        END;

      IF CDSCompraCabDESGLOZAIVA.Value = 'S' THEN
        BEGIN
          CDSCompraCabNetoGrav1.asfloat := CDSCompraDetUnitario_Gravado.asfloat * Dscto * CDSCompraDetCantidad.asfloat + CDSCompraCabNetoGrav1.asfloat;
          CDSCompraCabNetoExen1.asfloat := CDSCompraDetUnitario_Exento.asfloat * Dscto * CDSCompraDetCantidad.asfloat + CDSCompraCabNetoExen1.asfloat;
        END
      ELSE IF CDSCompraCabDESGLOZAIVA.Value = 'N' THEN
        BEGIN
          if CDSCompraCabTIPOIVA.Value in [2,5] then
            begin
              CDSCompraCabNETOMONOTRIBUTO1.AsFloat := CDSCompraDetUnitario_Gravado.AsFloat  * Dscto * CDSCompraDetCantidad.AsFloat + CDSCompraCabNETOMONOTRIBUTO1.AsFloat;
              CDSCompraCabNETOEXEN1.AsFloat        := CDSCompraDetUnitario_Exento.AsFloat * Dscto * CDSCompraDetCantidad.AsFloat + CDSCompraCabNETOEXEN1.AsFloat;
            end
          else
            begin
              CDSCompraCabNETOGRAV1.AsFloat        := CDSCompraDetUnitario_Gravado.AsFloat * Dscto * CDSCompraDetCantidad.AsFloat + CDSCompraCabNETOGRAV1.AsFloat;
              CDSCompraCabNETOEXEN1.AsFloat        := CDSCompraDetUnitario_Exento.AsFloat * Dscto * CDSCompraDetCantidad.AsFloat + CDSCompraCabNETOEXEN1.AsFloat;
            end;
//          CDSCompraCabNETOMONOTRIBUTO1.asfloat := CDSCompraDetUnitario_Gravado.asfloat * Dscto * CDSCompraDetCantidad.asfloat + CDSCompraCabNETOMONOTRIBUTO1.asfloat;
//          CDSCompraCabNetoExen1.asfloat       := CDSCompraDetUnitario_Exento.asfloat * Dscto * CDSCompraDetCantidad.asfloat + CDSCompraCabNetoExen1.asfloat;
        END;
      CDSCompraCabIMPORTEEXCLUIDO1.asfloat := CDSCompraDetUNITARIO_IMP_INTERNO.asfloat * Dscto * CDSCompraDetCantidad.AsFloat + CDSCompraCabIMPORTEEXCLUIDO1.asfloat;

      if (CDSCompraDetGRAVADO_IB.Value='S') and (CDSCompraCabDESGLOZAIVA.Value='S') Then
        CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat:=CDSCompraDetTOTAL.AsFloat + CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat
      else
        if (CDSCompraDetGRAVADO_IB.Value='S') and (CDSCompraCabDESGLOZAIVA.Value='N') Then
          CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat:=CDSCompraDetTotal.AsFloat * (1 + CDSCompraDetIVA_Tasa.AsFloat * 0.01)+CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat;

      CDSCompraCabTOTAL_UNIDADES.asfloat:=CDSCompraCabTOTAL_UNIDADES.asfloat+CDSCompraDetUNIDADES_TOTAL.asfloat;


      CDSCompraDet.Next;
    END;
  CDSCompraDet.GotoBookmark(Puntero);
  CDSCompraDet.FreeBookmark(Puntero);
  CDSCompraDet.EnableControls;
END;

procedure TDatosCompraCtdo.AplicarMascarasNumericas;
VAR I:Byte;
begin
//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='COMPDETUNITAR';
//  DMMain_FD.QOpciones.Open;
  MascaraDetalleUnitario      :=  DMMain_FD.MascaraDetalleUnitarioComp;  //QOpciones.Fields[0].AsString;
  TFloatField(CDSCompraDetUnitario_Total).EditFormat    :=MascaraDetalleUnitario;
  TFloatField(CDSCompraDetUnitario_Total).DisplayFormat :=MascaraDetalleUnitario;

  TFloatField(CDSCompraDetUNIDADES_TOTAL).EditFormat    :=MascaraDetalleUnitario;
  TFloatField(CDSCompraDetUNIDADES_TOTAL).DisplayFormat :=MascaraDetalleUnitario;


//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='COMPDETCANTID';
//  DMMain_FD.QOpciones.Open;
  MascaraDetalleCantidad      :=  DMMain_FD.MascaraDetalleCantidadComp;          //DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSCompraDetCantidad).EditFormat    :=MascaraDetalleCantidad;
  TFloatField(CDSCompraDetCantidad).DisplayFormat :=MascaraDetalleCantidad;

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='COMPDETDESCUE';
//  DMMain_FD.QOpciones.Open;
  MascaraDetalleDescuento     := DMMain_FD.MascaraDetalleDescuentoComp;    //DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSCompraDetDescuento).EditFormat    :=MascaraDetalleDescuento;
  TFloatField(CDSCompraDetDescuento).DisplayFormat :=MascaraDetalleDescuento;


//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='COMPDETTOTAL';
//  DMMain_FD.QOpciones.Open;
  MascaraDetalleTotal:=',0.00';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSCompraDetTotal).EditFormat        := MascaraDetalleTotal;
  TFloatField(CDSCompraDetTotal).DisplayFormat     := MascaraDetalleTotal;

//
//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='IVATASA';
//  DMMain_FD.QOpciones.Open;
  MascaraIvaTasa:=',0.0';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSCompraDetIVA_Tasa).EditFormat        := MascaraIvaTasa;
  TFloatField(CDSCompraDetIVA_Tasa).DisplayFormat     := MascaraIvaTasa;
  TFloatField(CDSCompraDetIVA_SobreTasa).EditFormat   := MascaraIvaTasa;
  TFloatField(CDSCompraDetIVA_SobreTasa).DisplayFormat:= MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).EditFormat           := MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).DisplayFormat        := MascaraIvaTasa;

  TFloatField(CDSPercepcionIVATASA).DisplayFormat     := MascaraIvaTasa;
  TFloatField(CDSPercepcionIVATASA).EditFormat        := MascaraIvaTasa;

  TFloatField(CDSPercepcionIBTASA).DisplayFormat     := MascaraIvaTasa;
  TFloatField(CDSPercepcionIBTASA).EditFormat        := MascaraIvaTasa;


//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='IVAIMPORTES';
//  DMMain_FD.QOpciones.Open;
  MascaraIvaImporte:=',0.00';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSImpuestosIMPORTE).EditFormat        := MascaraIvaImporte;
  TFloatField(CDSImpuestosIMPORTE).DisplayFormat     := MascaraIvaImporte;

  TFloatField(CDSPercepcionIVANETO).DisplayFormat     := MascaraIvaImporte;
  TFloatField(CDSPercepcionIVANETO).EditFormat        := MascaraIvaImporte;
  TFloatField(CDSPercepcionIVAIMPORTE).DisplayFormat  := MascaraIvaImporte;
  TFloatField(CDSPercepcionIVAIMPORTE).EditFormat     := MascaraIvaImporte;

  TFloatField(CDSPercepcionIBNETO).DisplayFormat     := MascaraIvaImporte;
  TFloatField(CDSPercepcionIBNETO).EditFormat        := MascaraIvaImporte;
  TFloatField(CDSPercepcionIBIMPORTE).DisplayFormat  := MascaraIvaImporte;
  TFloatField(CDSPercepcionIBIMPORTE).EditFormat     := MascaraIvaImporte;

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='COMPCABECERA';
//  DMMain_FD.QOpciones.Open;
  MascaraCabecera:=',0.00';//DMMain_FD.QOpciones.Fields[0].AsString;
  For i:=0 to CDSCompraCab.FieldCount-1 do
    begin
      if (CDSCompraCab.Fields[i].DataType=ftBCD) or
         (CDSCompraCab.Fields[i].DataType=ftFMTBcd) or
         (CDSCompraCab.Fields[i].DataType=ftFloat) Then
       begin
         // TFloatField(CDSVentaDet.Fields[i]).EditMask:='###,##0.0';
          TFloatField(CDSCompraCab.Fields[i]).EditFormat   :=MascaraCabecera;
          TFloatField(CDSCompraCab.fields[i]).DisplayFormat:=MascaraCabecera;
       end;
    end;
//  DMMain_FD.QOpciones.Close;
end;


PROCEDURE TDatosCompraCtdo.CalcularTotales;
VAR
  Acumulador: Real;
  Neto: Real;
BEGIN
  CDSCompraCabTotal.asfloat := 0;
  Acumulador := 0;
  CDSCompraCabNetoGrav2.asfloat        := RoundTo(CDSCompraCabNetoGrav1.asfloat * (1-CDSCompraCabDsto.asfloat * 0.01),-2);
  CDSCompraCabNetoExen2.asfloat        := RoundTo(CDSCompraCabNetoExen1.asfloat * (1-CDSCompraCabDsto.asfloat * 0.01),-2);
  CDSCompraCabNETOMONOTRIBUTO2.asfloat := RoundTo(CDSCompraCabNETOMONOTRIBUTO1.asfloat * (1-CDSCompraCabDsto.asfloat * 0.01),-2);
  CDSCompraCabIMPORTEEXCLUIDO2.asfloat := RoundTo(CDSCompraCabIMPORTEEXCLUIDO1.asfloat * (1-CDSCompraCabDsto.asfloat * 0.01),-2);
  CDSCompraCabDstoImporte.asfloat      := (CDSCompraCabNetoGrav1.asfloat + CDSCompraCabNetoExen1.asfloat + CDSCompraCabNETOMONOTRIBUTO1.asfloat + CDSCompraCabIMPORTEEXCLUIDO1.asfloat) * CDSCompraCabDsto.asfloat * 0.01;
  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
  WHILE NOT (CDSImpuestos.Eof) DO
    BEGIN
      CDSImpuestos.Edit;
      Neto                        := CDSImpuestosNeto.AsFloat;
      CDSImpuestosNeto.AsFloat    := 0;
      CDSImpuestosNeto.AsFloat    := Neto * (1-CDSCompraCabDsto.AsFloat * 0.01);
      CDSImpuestosImporte.AsFloat := 0;
      CDSImpuestosImporte.Asfloat := RoundTo(CDSImpuestosNeto.AsFloat * CDSimpuestosTasa.AsFloat * 0.01,-2);
      Acumulador                  := Acumulador + CDSImpuestosImporte.AsFloat;
      CDSImpuestos.Next;
    END;
  CDSImpuestos.EnableControls;
  FormCompraCtdo_2.dbgIva.Refresh;
  CDSCompraCabTotal.AsFloat    := (CDSCompraCabNetoGrav2.AsFloat + CDSCompraCabNETOMONOTRIBUTO2.AsFloat + CDSCompraCabNetoExen2.AsFloat+ CDSCompraCabIMPORTEEXCLUIDO2.AsFloat+ Acumulador);
  IF (PerciveIva = 'S') and (CDSCompraCabINGRESA_LIBRO_IVA.Value='S') AND (CDSCompraCabNetoGrav2.AsFloat >= Minimo_PercepcionIva) and (Not(IsZero(CDSCompraCabNetoGrav2.AsFloat))) THEN
    BEGIN
      IF CDSPercepcionIVA.RecordCount <= 0 THEN
        CDSPercepcionIVA.Insert
      ELSE
        CDSPercepcionIVA.Edit;
      CDSPercepcionIVACODIGO_PERCEPCION.Value := Codigo_PercepcionIva;
      CDSPercepcionIVADetalle.Value           := Detalle_PercepcionIVA;
      CDSPercepcionIVATasa.AsFloat            := Tasa_PercepcionIva;
      CDSPercepcionIVACODIGOREGIMEN.Value     := Regimen;
      CDSPercepcionIVANeto.AsFloat            := CDSCompraCabNetoGrav2.AsFloat;
      CDSPercepcionIVAImporte.AsFloat         := RoundTo((CDSPercepcionIVANeto.AsFloat * Tasa_PercepcionIva * 0.01),-2);
      CDSPercepcionIVA.Post;
      CDSCompraCabTotal.AsFloat               := (CDSCompraCabTotal.AsFloat + CDSPercepcionIVAImporte.AsFloat);
    END
  ELSE
    IF (PerciveIva = 'S') AND (CDSCompraCabNetoGrav2.AsFloat <= Minimo_PercepcionIva) AND (CDSPercepcionIVA.RecordCount > 0) THEN
      CDSPercepcionIVA.Delete;
  IF (PerciveIB = 'S')  and (CDSCompraCabINGRESA_LIBRO_IVA.Value='S') AND (CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat >= Minimo_PercepcionIB) and
     (CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat >1) THEN
    BEGIN
      CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat * (1-CDSCompraCabDsto.AsFloat * 0.01);
      IF CDSPercepcionIB.RecordCount <= 0 THEN
        begin
          if (Codigo_PercepcionIB)>-1 then
            begin
              CDSPercepcionIB.Insert;
              CDSPercepcionIBCODIGO_PERCEPCION.Value := Codigo_PercepcionIB;
              CDSPercepcionIBDetalle.Value           := Detalle_PercepcionIB;
              CDSPercepcionIBTasa.AsFloat            := Tasa_PercepcionIB;
              CDSPercepcionIBJURIDICION.Value        := Juridiccion;
              CDSPercepcionIBNeto.AsFloat            := CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat;
              CDSPercepcionIBImporte.AsFloat         := Roundto((CDSPercepcionIBNeto.AsFloat * Tasa_PercepcionIB * 0.01),-2);
              CDSPercepcionIB.Post;
              CDSCompraCabTotal.AsFloat              := CDSCompraCabTotal.AsFloat + CDSPercepcionIBImporte.AsFloat;
            end;
          if (Codigo_PercepcionIB_2)>-1 then
            begin
              CDSPercepcionIB.Insert;
              CDSPercepcionIBCODIGO_PERCEPCION.Value := Codigo_PercepcionIB_2;
              CDSPercepcionIBDetalle.Value           := Detalle_PercepcionIB_2;
              CDSPercepcionIBTasa.AsFloat            := Tasa_PercepcionIB_2;
              CDSPercepcionIBJURIDICION.Value        := Juridiccion_2;
              CDSPercepcionIBNeto.AsFloat            := CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat;
              CDSPercepcionIBImporte.AsFloat         := RoundTo((CDSPercepcionIBNeto.AsFloat * Tasa_PercepcionIB_2 * 0.01),-2);
              CDSPercepcionIB.Post;

              CDSCompraCabTotal.AsFloat              := CDSCompraCabTotal.AsFloat + CDSPercepcionIBImporte.AsFloat;
            end;
        end
      else
        begin
          if CDSPercepcionIB.Locate('CODIGO_PERCEPCION',Codigo_PercepcionIB,[]) Then
            begin
              CDSPercepcionIB.Edit;
              CDSPercepcionIBCODIGO_PERCEPCION.Value := Codigo_PercepcionIB;
              CDSPercepcionIBDetalle.Value           := Detalle_PercepcionIB;
              CDSPercepcionIBTasa.AsFloat            := Tasa_PercepcionIB;
              CDSPercepcionIBJURIDICION.Value        := Juridiccion;
              CDSPercepcionIBNeto.AsFloat            := CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat;
              CDSPercepcionIBImporte.AsFloat         := RoundTo((CDSPercepcionIBNeto.AsFloat * Tasa_PercepcionIB * 0.01),-2);
              CDSPercepcionIB.Post;
              CDSCompraCabTotal.AsFloat              := CDSCompraCabTotal.AsFloat + CDSPercepcionIBImporte.AsFloat;
            end;

          if CDSPercepcionIB.Locate('CODIGO_PERCEPCION',Codigo_PercepcionIB_2,[]) Then
            begin
              CDSPercepcionIB.Edit;
              CDSPercepcionIBCODIGO_PERCEPCION.Value := Codigo_PercepcionIB_2;
              CDSPercepcionIBDetalle.Value           := Detalle_PercepcionIB_2;
              CDSPercepcionIBTasa.AsFloat            := Tasa_PercepcionIB_2;
              CDSPercepcionIBJURIDICION.Value        := Juridiccion_2;
              CDSPercepcionIBNeto.AsFloat            := CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat;
              CDSPercepcionIBImporte.AsFloat         := RoundTo((CDSPercepcionIBNETO.AsFloat * Tasa_PercepcionIB_2 * 0.01),-2);
              CDSPercepcionIB.Post;
              CDSCompraCabTotal.AsFloat              := CDSCompraCabTotal.AsFloat + CDSPercepcionIBImporte.AsFloat;
            end;
       end;
    end;
  CDSPercepcionIB.First;
  IF (PerciveIB = 'S') AND (CDSCompraCabNetoGrav2.AsFloat <= Minimo_PercepcionIB)  AND ( Not(IsZero(CDSCompraCabNetoGrav2.AsFloat))) AND (CDSPercepcionIB.RecordCount > 0) THEN
    begin
      CDSPercepcionIB.First;
      if CDSPercepcionIB.RecordCount=1 then
        CDSPercepcionIB.Delete
      else
        if CDSPercepcionIB.RecordCount>1 then
          begin
            while Not(CDSPercepcionIB.Eof) do
              begin
                CDSPercepcionIB.Delete;
                CDSPercepcionIB.First;
              end;
          end;
    end;
END;

PROCEDURE TDatosCompraCtdo.CDSCompraCabNewRecord(DataSet: TDataSet);
BEGIN
  CDSCompraCabId_Fc.Value              := IBGFcCompCab.IncrementFD(1);
  CDSCompraCabFechaCompra.AsDateTime   := Date;
  CDSCompraCabFECHAFISCAL.AsDateTime   := Date;
  CDSCompraCabCodigo.Value             := '';
  CDSCompraCabAnulado.Value            := 'N';
  CDSCompraCabTipoIVA.AsString         := '';
  CDSCompraCabLetraFac.AsString        := 'A';
  CDSCompraCabCondicionCompra.Value    := 0;
  CDSCompraCabDstoImporte.AsFloat      := 0;
  CDSCompraCabDsto.AsFloat             := 0;
  CDSCompraCabNetoGrav1.AsFloat        := 0;
  CDSCompraCabNetoGrav2.AsFloat        := 0;
  CDSCompraCabNETOEXEN1.AsFloat        := 0;
  CDSCompraCabNETOEXEN2.AsFloat        := 0;
  CDSCompraCabNETOMONOTRIBUTO1.AsFloat := 0;
  CDSCompraCabNETOMONOTRIBUTO2.AsFloat := 0;
  CDSCompraCabDSTO.AsFloat             := 0;
  CDSCompraCabDSTOIMPORTE.AsFloat      := 0;
  CDSCompraCabIMPORTEEXCLUIDO1.AsFloat := 0;
  CDSCompraCabIMPORTEEXCLUIDO2.AsFloat := 0;
  CDSCompraCabCPBTE_INTERNO.Value      := 'N';
  CDSCompraCabREDUCIDA.Value           := 'N';
  CDSCompraCabNUMERO_OPERACION.Value   := '';
  CDSCompraCabCAE.Value                := '0';
  CDSCompraCabFACTURA_ELECTRONICA.Value:= 'N';
  CDSCompraCabRETENCION_IVA.AsFloat    := 0;
  CDSCompraCabTIPO_LIQUIDACION.Value   := 'X';
  CDSCompraCabNC_POR_DIFERENCIA.Value  := 'N';
  CDSCompraCabSucursalCompraSetText(CDSCompraCabSucursalCompra,IntToStr(FormCompraCtdo_2.SucursalPorDefecto));
  CDSCompraCabDepositoSetText(CDSCompraCabDeposito,IntToStr(FormCompraCtdo_2.DepositoPorDefecto));
  CDSCompraCabUSUARIO.Value:=DMMain_FD.UsuarioActivo;
  CDSCompraCabFECHA_HORA.AsDateTime:=Now;
  CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat:=0;

 // DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='MONEDACOMPRA';
//  DMMain_FD.QOpciones.Open;
//  if DMMain_FD.QOpciones.Fields[0].AsString<>'' then
//    CDSCompraCabMONEDA_CPBTE.Value           :=DMMain_FD.QOpciones.Fields[0].AsInteger
//  else
//    CDSCompraCabMONEDA_CPBTE.Value:=1;
//  DMMain_FD.QOpciones.Close;

  CDSCompraCabMONEDA_CPBTE.AsInteger  :=  DMMain_FD.MonedaCompra;

  QMonedas.Close;
  QMonedas.ParamByName('id').Value:=CDSCompraCabMONEDA_CPBTE.Value;
  QMonedas.Open;

  if QMonedasCOTIZACION_COMPRA.AsString<>'' Then
    CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat:=QMonedasCOTIZACION_COMPRA.AsFloat
  else
    CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat :=1;

  CDSCompraCabMUESTRAMONEDACPBTE.Value        :=QMonedasMONEDA.Value;
  CDSCompraCabMUESTRASIGNOMONEDACPBTE.Value   :=QMonedasSIGNO.Value;

  CDSCompraCabID_OBRA.Value                   := -1;
  CDSCompraCabMUESTRAOBRA.Value               := '';

  QMonedas.Close;

  FormCompraCtdo_2.DBGrillaDetalle.Columns[7].Title.Caption:= 'P.Uni('+Trim(CDSCompraCabMUESTRASIGNOMONEDACPBTE.Value)+')';
  FormCompraCtdo_2.DBGrillaDetalle.Columns[9].Title.Caption:= 'Total('+Trim(CDSCompraCabMUESTRASIGNOMONEDACPBTE.Value)+')';

END;



PROCEDURE TDatosCompraCtdo.CDSCompraCabBeforePost(DataSet: TDataSet);
BEGIN
  CDSCompraCabNroCpbte.AsString:=CDSCompraCabLetraFac.AsString + CDSCompraCabSucFac.AsString + CDSCompraCabNumeroFac.AsString;
END;

PROCEDURE TDatosCompraCtdo.CDSCompraCabCodigoSetText(Sender: TField;
  CONST Text: STRING);
VAR
  Aux,Cuit: STRING;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if length(Trim(Text))>11 then
        begin
          Cuit:=Copy(Text,1,2)+'-'+Copy(Text,3,8)+'-'+Copy(Text,11,1);

          DMBuscadores.QBuscaxCuitProvee.Close;
          DMBuscadores.QBuscaxCuitProvee.ParamByName('CUIT').Value:=Cuit;
          DMBuscadores.QBuscaxCuitProvee.Open;

          if DMBuscadores.QBuscaxCuitProveeCODIGO.AsString<>'' then
            begin
              Aux:=Trim(DMBuscadores.QBuscaxCuitProveeCODIGO.AsString);
            end
          else
            Aux:='';
        end
      else
        Aux := Trim(Text);
      Aux:=Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString:=Aux;
      IF NOT (AsignarProveedor(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Proveedor No válido');
          Sender.AsString:= '';
          FormCompraCtdo_2.RxDBECodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      HabilitarLabel;
      FormCompraCtdo_2.RxDBECodigo.Text:=Aux;
    end;
END;

PROCEDURE TDatosCompraCtdo.CDSCompraCabLetraFacChange(Sender: TField);
BEGIN
  CDSCompraCabNroCpbte.AsString:=CDSCompraCabLetraFac.AsString + CDSCompraCabSucFac.AsString + CDSCompraCabNumeroFac.AsString;
END;

procedure TDatosCompraCtdo.CDSCompraCabMONEDA_CPBTE_COTIZACIONChange(
  Sender: TField);
begin
  RecotizarPrecios;
end;

PROCEDURE TDatosCompraCtdo.CDSCompraCabSucFacSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  Sender.AsString:=Copy('00000000', 1, Sender.Size - Length(text)) + Text;
  CDSCompraCabNroCpbte.AsString:=CDSCompraCabLetraFac.AsString + CDSCompraCabSucFac.AsString + CDSCompraCabNumeroFac.AsString;
  VerificaComprobante;
END;

PROCEDURE TDatosCompraCtdo.CDSCompraCabNumeroFacSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  Sender.AsString:=Copy('00000000', 1, Sender.Size - Length(text)) + Text;
  CDSCompraCabNroCpbte.AsString:=CDSCompraCabLetraFac.AsString + CDSCompraCabSucFac.AsString + CDSCompraCabNumeroFac.AsString;
  VerificaComprobante;
END;

PROCEDURE TDatosCompraCtdo.CDSCompraDetAfterPost(DataSet: TDataSet);
BEGIN
  { aca voy a los calculos de los totoales de la factura }
  SumarDetalle;
  CalcularTotales;
  // Borrar Los renglones con valor 0 (cero)....
  //  lo hago antes de gravar....Verifica_ImpuestosEnCero;
END;

PROCEDURE TDatosCompraCtdo.CDSCompraDetAfterInsert(DataSet: TDataSet);
BEGIN
  IF (CDSCompraCabCodigo.AsString = '') OR (CDSCompracabNumeroFac.AsString = '') THEN
    CDSCompraDet.Cancel;
END;

PROCEDURE TDatosCompraCtdo.CDSCompraDetBeforePost(DataSet: TDataSet);
BEGIN
  IF CDSCompraDet.State IN [dsInsert, dsEdit] THEN
    CDSCompraDetNroCpbte.Value:=CDSCompraCabLetraFac.Value + CDSCompraCabSucFac.Value + CDSCompraCabNumeroFac.Value;
  IF (CDSCompraDetCodigoArticulo.AsString = '') AND (CDSCompraDet.State IN [dsInsert, dsEdit]) THEN
    BEGIN
      CDSCompraDet.Cancel;
      SysUtils.Abort;
    END;
END;

PROCEDURE TDatosCompraCtdo.CDSCompraDetNewRecord(DataSet: TDataSet);
BEGIN
  CDSCompraDetId.Value                    := IBGFcCompDet.IncrementFD(1);
  CDSCompraDetRenglon.AsInteger           := CDSCompraDet.RecordCount + 1;
  CDSCompraDetCodigoArticulo.AsString     := '';
  CDSCompraDetDetalle.AsString            := '';
  CDSCompraDetUnidad.ASString             := '';
  CDSCompraDetCantidad.ASFloat            := 0;
  CDSCompraDetUnitario_Total.AsFloat      := 0;
  CDSCompraDetDescuento.ASFloat           := 0;
  CDSCompraDetDesglozaIVA.AsString        := CDSCompraCabDESGLOZAIVA.Value;
  CDSCompraDetTipoIva_Tasa.Value          := 0;
  CDSCompraDetTipoIva_Sobretasa.Value     := 0;
  CDSCompraDetIVA_Tasa.AsFloat            := 0;
  CDSCompraDetIVA_SobreTasa.AsFloat       := 0;
  CDSCompraDetTotal.AsFloat               := 0;
  CDSCompraDetCodigoProveedor.AsString    := CDSCompraCabCodigo.AsString;
  CDSCompraDetDeposito.Value              := CDSCompraCabDeposito.Value;
  CDSCompraDetNroCpbte.AsString           := CDSCompraCabLetraFac.Value + CDSCompraCabSucFac.Value + CDSCompraCabNumeroFac.Value;
  CDSCompraDetFechaCompra.AsDateTime      := CDSCompraCabFechaCompra.AsDateTime;
  CDSCompraDetTIPOCPBTE.AsString          := CDSCompraCabTIPOCPBTE.AsString;
  CDSCompraDetCLASECPBTE.AsString         := CDSCompraCabCLASECPBTE.AsString;
  CDSCompraDetID_CABFAC.Value             := CDSCompraCabID_FC.Value;
  CDSCompraDetCONTROL_TRAZABILIDAD.Value  := 'N';
  CDSCompraDetPRESENTACION_CANT.AsFloat   := 1;
  CDSCompraDetCANTIDAD_UNIDADES.AsFloat   := 0;
  CDSCompraDetCANTIDAD_INVENTARIO.AsFloat := 0;

END;

procedure TDatosCompraCtdo.CDSCompraDetTOTALSetText(Sender: TField;
  const Text: string);
Var aux:Extended;
begin
  Sender.AsString:=Text;
  aux:=CDSCompraDetTOTAL.AsFloat/CDSCompraDetCOTIZACION.AsFloat;
  Aux:=Aux/(1-CDSCompraDetDESCUENTO.AsFloat*0.01);
  Aux:=Aux/CDSCompraDetCANTIDAD.AsFloat;
  CDSCompraDetUNIDADES_TOTALSetText(CDSCompraDetUNIDADES_TOTAL,FloatToStr(Aux));
end;

procedure TDatosCompraCtdo.CDSCompraDetCodigoArticuloGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 if (FormCompraCtdo_2<>nil) then
   begin
     if FormCompraCtdo_2.VerCodigoAlternativo1.Checked=True then
       Text:=Trim(CDSCompraDetMUESTRACODALTERNATIVO.Value)
     else
       Text:=Trim(CDSCompraDetCODIGOARTICULO.Value);
   end;
end;

PROCEDURE TDatosCompraCtdo.CDSCompraDetCodigoArticuloSetText(Sender: TField;
  CONST Text: STRING);
VAR S,CodTxt: STRING;
Enter:Char;
BEGIN
  Enter:=#13;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      // Quitar enter de la cadena....
      AnsiReplaceStr(Text, #13, '');
      Sender.AsString := DMMain_FD.SearchCodigo(Text,DSCompraDet,FormCompraCtdo_2.VerCodigoAlternativo1.Checked);
      S:= Sender.AsString;
      IF NOT (AsignarArticulo(s)) THEN
        BEGIN
         // Busqueda por codigo
          if (FormBuscadorArticulos<>Nil) then
            FreeAndNil(FormBuscadorArticulos);
          IF Not(Assigned(FormBuscadorArticulos)) THEN
            FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
          FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
          FormBuscadorArticulos.CampoNro          := 0;
          FormBuscadorArticulos.Esquema           := -1;
          FormBuscadorArticulos.ListaPrecio       := DMMain_FD.ListaPorDefecto(-1);
          // si el proveedor es solo de Mercaderia
          if (CDSCompraCabTIPO_PROVEEDOR.AsString='M') Then
            begin
              FormBuscadorArticulos.Param1:=3;
              FormBuscadorArticulos.Param2:=2;
            end
          else
          // si el proveedor es solo de servicios
            if (CDSCompraCabTIPO_PROVEEDOR.AsString='G') Then
              begin
                FormBuscadorArticulos.Param1:=4;
                FormBuscadorArticulos.Param2:=5;
              end
            else
            // si el proveedor es de ambos
              if (CDSCompraCabTIPO_PROVEEDOR.AsString='A') Then
                begin
                  FormBuscadorArticulos.Param1:=-1;
                  FormBuscadorArticulos.Param2:=-1;
                end;
          FormBuscadorArticulos.Dato              := s;//Text;
          FormBuscadorArticulos.ShowModal;
          if FormBuscadorArticulos.Codigo<>'' Then
            begin
              IF CDSCompraDet.State = dsBrowse THEN
                CDSCompraDet.Edit;
              CDSCompraDetCodigoArticuloSetText(CDSCompraDetCodigoArticulo,FormBuscadorArticulos.Codigo);
            end
          else
            Sender.AsString:='';
        END;
      if DMMain_FD.EncontroCodigoBarra Then
        FormCompraCtdo_2.DBGrillaDetalle.OnKeyPress(FormCompraCtdo_2.DBGrillaDetalle,Enter);
    end;
END;

PROCEDURE TDatosCompraCtdo.CDSCompraCabSUCURSALCOMPRASetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Sucursal No Valido');
          FormCompraCtdo_2.RxDBESucursal.SetFocus;
        END;
    end;
END;

PROCEDURE TDatosCompraCtdo.CDSCompraCabDepositoSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  if (Text<>#13) and (Text<>'') Then
    begin
      Sender.AsString:=Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Depósito No Vólido');
          FormCompraCtdo_2.RxDBEDeposito.SetFocus;
        END;
     end;
END;

PROCEDURE TDatosCompraCtdo.CDSCompraDetCantidadSetText(Sender: TField;
  CONST Text: STRING);
VAR
  Aux3: Real;
BEGIN
  if Text<>'' Then
    begin
      Sender.AsString := Text;
      Sender.AsFloat:=Moneda3D(' ',MascaraDetalleCantidad,abs(Sender.AsFloat));
 //     Aux3 := CDSCompraDetUnitario_Total.AsFloat;
 //     CDSCompraDetTotal.AsFloat := Sender.AsFloat * Aux3 * (1 - CDSCompraDetDescuento.AsFloat * 0.01);
      Aux3 := (CDSCompraDetUNIDADES_Total.AsFloat / CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSCompraDetCOTIZACION.AsFloat;
      CDSCompraDetUnitario_Total.AsFloat := Aux3;
      CDSCompraDetTotal.AsFloat := Sender.AsFloat * Aux3 * (1 - CDSCompraDetDescuento.AsFloat * 0.01);
      CDSCompraDetCANTIDAD_UNIDADES.AsFloat:=CDSCompraDetCANTIDAD.AsFloat/CDSCompraDetPRESENTACION_CANT.AsFloat;
    end;
END;

//procedure TDatosCompraCtdo.CDSCompraDetUNIDADES_TOTALGetText(Sender: TField;
//  var Text: string; DisplayText: Boolean);
//VAR
//  Aux1, Aux2, Aux3: real;
//BEGIN
//  Aux1:= CDSCompraDetUNIDADES_EXENTO.AsFloat;
//  Aux2:= CDSCompraDetUNIDADES_GRAVADO.Value;
//  if (CDSCompraDetModo_Gravamen.Value<>'') Then
//    IF ((CDSCompraCabDesglozaIva.Value = 'N') or (FormCompraCtdo_2.DiscriminaIva='N')) THEN
//      Aux2:= Aux2 * (1+CDSCompraDetIVA_Tasa.AsFloat *0.01);
//  Aux3:= Aux1 + Aux2;
//  Text:= FormatFloat(MascaraDetalleUnitario,Aux3);//FloatToStrF(Aux3, ffFixed, 6, 3);
//end;

procedure TDatosCompraCtdo.CDSCompraDetUNIDADES_TOTALSetText(Sender: TField;
  const Text: string);
VAR
  Num, AuxGravado, AuxExento, AuxExcluido, AuxTotal: real;
  TextAux:String;
BEGIN
  if Text<>'' Then
    begin
      TextAux:=Text;
      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);
     //  TextAux:=FormatFloat(MascaraDetalleUnitario,StrToFloat(TextAux));
      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);

      Num:=StrToFloat(TextAux);

      IF CDSCompraDetModo_Gravamen.Value <> '' THEN
        CASE CDSCompraDetModo_Gravamen.Value[1] OF
          'E': CDSCompraDetUNIDADES_EXENTO.AsFloat  := Num;
          'G': CDSCompraDetUNIDADES_GRAVADO.AsFloat := Num;
        END;
      AuxGravado  := CDSCompraDetUNIDADES_GRAVADO.AsFloat;
      AuxExento   := CDSCompraDetUNIDADES_EXENTO.AsFloat;
      AuxExcluido := CDSCompraDetUNIDADES_IMP_INTERNOS.AsFloat;

      AuxTotal                  := AuxGravado + AuxExento + AuxExcluido;
      Sender.AsString           := FloatToStr(AuxTotal);

      //AuxTotal    := Moneda3D(MascaraDetalleUnitario,CDSCompraDetUnitario_Total.AsFloat);
      // IF CDSCompraCabDesglozaIva.Value = 'N' THEN
      //    AuxGravado := (AuxGravado / (1 + (CDSCompraDetIVA_Tasa.AsFloat /100)));
     //   CDSCompraDetUNITARIO_GRAVADO.AsFloat := AuxGravado;

        //Divido para llevarlos a la unidad de carga
      CDSCompraDetUNITARIO_EXENTO.AsFloat      := (AuxExento  / CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSCompraDetCOTIZACION.AsFloat;
      CDSCompraDetUNITARIO_GRAVADO.AsFloat     := (AuxGravado / CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSCompraDetCOTIZACION.AsFloat;
      CDSCompraDetUNITARIO_IMP_INTERNO.AsFloat := (AuxExcluido / CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSCompraDetCOTIZACION.AsFloat;
      CDSCompraDetUnitario_Total.AsFloat       := (AuxTotal / CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSCompraDetCOTIZACION.AsFloat;

//      CDSCompraDetUNITARIO_EXENTO.AsFloat      :=AuxExento  * CDSCompraCabMONEDA_COTIZACION.AsFloat;
//      CDSCompraDetUNITARIO_GRAVADO.AsFloat     :=AuxGravado * CDSCompraCabMONEDA_COTIZACION.AsFloat;
//      CDSCompraDetUNITARIO_IMP_INTERNO.AsFloat :=AuxExcluido * CDSCompraCabMONEDA_COTIZACION.AsFloat;
//      CDSCompraDetUnitario_Total.AsFloat       :=AuxTotal * CDSCompraCabMONEDA_COTIZACION.AsFloat;

      AuxGravado  := CDSCompraDetUNITARIO_GRAVADO.AsFloat;
      AuxExento   := CDSCompraDetUNITARIO_EXENTO.AsFloat;
      AuxExcluido := CDSCompraDetUNITARIO_IMP_INTERNO.AsFloat;


      AuxTotal                  := AuxGravado + AuxExento + AuxExcluido;
      CDSCompraDetTotal.AsFloat := RoundTo(CDSCompraDetCantidad.AsFloat * AuxTotal *( 1 - CDSCompraDetDescuento.AsFloat * 0.01),-2);
     // Sender.AsString           := FloatToStr(AuxTotal);
     // IF CDSCompraDet.State in [dsEdit,dsInsert] Then CDSCompraDet.Post;
  end;
END;

procedure TDatosCompraCtdo.CDSCompraDetUNITARIO_IMP_INTERNOSetText(
  Sender: TField; const Text: string);
begin

end;

//procedure TDatosCompraCtdo.CDSCompraDetUnitario_TotalGetText(Sender: TField;
//  var Text: string; DisplayText: Boolean);
//VAR
//  Aux1, Aux2, Aux3: real;
//BEGIN
//  Aux1:= CDSCompraDetUNITARIO_EXENTO.AsFloat;
//  Aux2:= CDSCompraDetUNITARIO_GRAVADO.AsFloat;
//  if (CDSCompraDetModo_Gravamen.Value<>'') Then
//    IF ((CDSCompraCabDesglozaIva.Value = 'N') or (FormCompraCtdo_2.DiscriminaIva='N')) THEN
//      Aux2:= Aux2 * (1+CDSCompraDetIVA_Tasa.AsFloat *0.01);
//  Aux3:= Aux1 + Aux2;
//  Text:= FormatFloat(MascaraDetalleUnitario,Aux3);//FloatToStrF(Aux3, ffFixed, 6, 3);
//end;


PROCEDURE TDatosCompraCtdo.DataModuleDestroy(Sender: TObject);
BEGIN
  DatosCompraCtdo:=NIL;
END;

PROCEDURE TDatosCompraCtdo.CDSImpuestosNewRecord(DataSet: TDataSet);
BEGIN
  CDSImpuestosId_Impuesto.Value :=IBGImpuestos.IncrementFD(1);
  CDSImpuestosID_FCCOMPCAB.Value:=CDSCompraCabID_FC.Value;
  CDSImpuestosNETO.AsFloat    := 0;
  CDSImpuestosTASA.AsFloat    := 0;
  CDSImpuestosIMPORTE.AsFloat := 0;
END;

procedure TDatosCompraCtdo.CDSPercepcionIVAAfterDelete(DataSet: TDataSet);
begin
  CDSCompraCabTOTAL.AsFloat := CDSCompraCabNETOGRAV2.AsFloat+
                               CDSCompraCabNETOEXEN2.AsFloat+
                               CDSCompraCabIMPORTEEXCLUIDO2.AsFloat+
                               CDSCompraCabNETOMONOTRIBUTO2.AsFloat;
  CDSImpuestos.First;
  While not(CDSImpuestos.Eof) do
    begin
      CDSCompraCabTOTAL.AsFloat := CDSCompraCabTOTAL.AsFloat+
                                   CDSImpuestosIMPORTE.AsFloat;
      CDSImpuestos.Next;
    end;
  CDSPercepcionIVA.First;
  while Not(CDSPercepcionIVA.Eof) Do
    begin
      CDSCompraCabTOTAL.AsFloat := CDSCompraCabTOTAL.AsFloat+
                                   CDSPercepcionIVAIMPORTE.AsFloat;
      CDSPercepcionIVA.Next;
    end;
  CDSPercepcionIB.First;
  while Not(CDSPercepcionIB.Eof) Do
    begin
      CDSCompraCabTOTAL.AsFloat := CDSCompraCabTOTAL.AsFloat+
                                   CDSPercepcionIBIMPORTE.AsFloat;
      CDSPercepcionIB.Next;
    end;

  if CDSImpuestos.State in [dsInsert,dsEdit] Then CDSImpuestos.Post;
  if CDSPercepcionIVA.State in [dsInsert,dsEdit] Then CDSPercepcionIVA.Post;
  if CDSPercepcionIB.State in [dsInsert,dsEdit] Then CDSPercepcionIB.Post;

end;

procedure TDatosCompraCtdo.CDSPercepcionIVABeforePost(DataSet: TDataSet);
begin
   if (CDSPercepcionIVACODIGO_PERCEPCION.AsString='') or (CDSPercepcionIVAID_PERCEPCION.AsString='') then
    CDSPercepcionIVA.Cancel;

end;

procedure TDatosCompraCtdo.CDSPercepcionIVAIMPORTESetText(Sender: TField;
  const Text: string);
begin
  if (CDSPercepcionIVACODIGO_PERCEPCION.AsString='') or (CDSPercepcionIVACODIGO_PERCEPCION.AsString='') then
    CDSPercepcionIVA.Cancel;

  if sender.DataSet.State in [dsInsert,dsEdit] Then

  Sender.AsString:=Text;
  CDSCompraCabTOTAL.AsFloat := CDSCompraCabNETOGRAV2.AsFloat+
                               CDSCompraCabNETOEXEN2.AsFloat+
                               CDSCompraCabIMPORTEEXCLUIDO2.AsFloat+
                               CDSCompraCabDSTOIMPORTE.AsFloat;
  CDSImpuestos.First;
  While not(CDSImpuestos.Eof) do
    begin
      CDSCompraCabTOTAL.AsFloat := CDSCompraCabTOTAL.AsFloat+
                                   CDSImpuestosIMPORTE.AsFloat;
      CDSImpuestos.Next;
    end;
  CDSPercepcionIVA.First;
  while Not(CDSPercepcionIVA.Eof) Do
    begin
      CDSCompraCabTOTAL.AsFloat := CDSCompraCabTOTAL.AsFloat+
                                   CDSPercepcionIVAIMPORTE.AsFloat;
      CDSPercepcionIVA.Next;
    end;
  CDSPercepcionIB.First;
  while Not(CDSPercepcionIB.Eof) Do
    begin
      CDSCompraCabTOTAL.AsFloat := CDSCompraCabTOTAL.AsFloat+
                                   CDSPercepcionIBIMPORTE.AsFloat;
      CDSPercepcionIB.Next;
    end;

  if CDSImpuestos.State in [dsInsert,dsEdit] Then CDSImpuestos.Post;
  if CDSPercepcionIVA.State in [dsInsert,dsEdit] Then CDSPercepcionIVA.Post;
  if CDSPercepcionIB.State in [dsInsert,dsEdit] Then CDSPercepcionIB.Post;

end;

PROCEDURE TDatosCompraCtdo.CDSPercepcionIVANewRecord(DataSet: TDataSet);
BEGIN
  CDSPercepcionIVAID_Percepcion.Value:= IBGPercepcionIVA.IncrementFD(1);
  CDSPercepcionIVAID_FCCOMPCAB.Value := CDSCompraCabID_FC.Value;
  CDSPercepcionIVANETO.AsFloat       := 0;
  CDSPercepcionIVATASA.AsFloat       := 0;
  CDSPercepcionIVACODIGOREGIMEN.Value:= Regimen;
  CDSPercepcionIVAIMPORTE.AsFloat    := 0;
END;

procedure TDatosCompraCtdo.CDSPercepcionIBAfterDelete(DataSet: TDataSet);
begin
  CDSCompraCabTOTAL.AsFloat:= CDSCompraCabNETOGRAV2.AsFloat+
                              CDSCompraCabNETOEXEN2.AsFloat+
                              CDSCompraCabIMPORTEEXCLUIDO2.AsFloat+
                              CDSCompraCabNETOMONOTRIBUTO2.AsFloat;
  CDSImpuestos.First;
  While not(CDSImpuestos.Eof) do
    begin
      CDSCompraCabTOTAL.AsFloat:=CDSCompraCabTOTAL.AsFloat+
                                 CDSImpuestosIMPORTE.AsFloat;
      CDSImpuestos.Next;
    end;
  CDSPercepcionIVA.First;
  while Not(CDSPercepcionIVA.Eof) Do
    begin
      CDSCompraCabTOTAL.AsFloat:=CDSCompraCabTOTAL.AsFloat+
                                 CDSPercepcionIVAIMPORTE.AsFloat;
      CDSPercepcionIVA.Next;
    end;
  CDSPercepcionIB.First;
  while Not(CDSPercepcionIB.Eof) Do
    begin
      CDSCompraCabTOTAL.AsFloat:=CDSCompraCabTOTAL.AsFloat+
                                 CDSPercepcionIBIMPORTE.AsFloat;
      CDSPercepcionIB.Next;
    end;
  if CDSImpuestos.State in [dsInsert,dsEdit] Then CDSImpuestos.Post;
  if CDSPercepcionIVA.State in [dsInsert,dsEdit] Then CDSPercepcionIVA.Post;
  if CDSPercepcionIB.State in [dsInsert,dsEdit] Then CDSPercepcionIB.Post;

end;

procedure TDatosCompraCtdo.CDSPercepcionIBBeforePost(DataSet: TDataSet);
begin
  if (CDSPercepcionIBCODIGO_PERCEPCION.ASString='') or (CDSPercepcionIBID_PERCEPCION.ASString='') Then
    CDSPercepcionIB.Cancel;

end;

procedure TDatosCompraCtdo.CDSPercepcionIBIMPORTESetText(Sender: TField;
  const Text: string);
begin
  if (CDSPercepcionIBID_PERCEPCION.AsString='') or (CDSPercepcionIBCODIGO_PERCEPCION.AsString='') then
    CDSPercepcionIB.Cancel;

  if sender.DataSet.State in [dsInsert,dsEdit] Then
  Sender.AsString:=Text;
  CDSCompraCabTOTAL.AsFloat:= CDSCompraCabNETOGRAV2.AsFloat+
                              CDSCompraCabNETOEXEN2.AsFloat+
                              CDSCompraCabIMPORTEEXCLUIDO2.AsFloat+
                              CDSCompraCabDSTOIMPORTE.AsFloat;
  CDSImpuestos.First;
  While not(CDSImpuestos.Eof) do
    begin
      CDSCompraCabTOTAL.AsFloat:=CDSCompraCabTOTAL.AsFloat+
                                 CDSImpuestosIMPORTE.AsFloat;
      CDSImpuestos.Next;
    end;
  CDSPercepcionIVA.First;
  while Not(CDSPercepcionIVA.Eof) Do
    begin
      CDSCompraCabTOTAL.AsFloat:=CDSCompraCabTOTAL.AsFloat+
                                 CDSPercepcionIVAIMPORTE.AsFloat;
      CDSPercepcionIVA.Next;
    end;
  CDSPercepcionIB.First;
  while Not(CDSPercepcionIB.Eof) Do
    begin
      CDSCompraCabTOTAL.AsFloat:=CDSCompraCabTOTAL.AsFloat+
                                 CDSPercepcionIBIMPORTE.AsFloat;
      CDSPercepcionIB.Next;
    end;
  if CDSImpuestos.State in [dsInsert,dsEdit] Then CDSImpuestos.Post;
  if CDSPercepcionIVA.State in [dsInsert,dsEdit] Then CDSPercepcionIVA.Post;
  if CDSPercepcionIB.State in [dsInsert,dsEdit] Then CDSPercepcionIB.Post;
end;

PROCEDURE TDatosCompraCtdo.CDSPercepcionIBNewRecord(DataSet: TDataSet);
BEGIN
  CDSPercepcionIBID_PERCEPCION.Value:=IBGPercepcionIB.IncrementFD(1);
  CDSPercepcionIBID_FCCOMPCAB.Value :=CDSCompraCabID_FC.Value;
  CDSPercepcionIBJURIDICION.Value   :=Juridiccion;
END;


procedure TDatosCompraCtdo.CDSCompraCabDSTOIMPORTESetText(Sender: TField;
  const Text: string);
var Aux1,Aux2,Importe:Extended;
begin
  Sender.AsString := Text;
  Aux1            := (CDSCompraCabNETOGRAV1.AsFloat+CDSCompraCabNETOEXEN1.AsFloat+CDSCompraCabNETOMONOTRIBUTO1.AsFloat );
  Aux2            := (CDSCompraCabNETOGRAV1.AsFloat+CDSCompraCabNETOEXEN1.AsFloat+CDSCompraCabNETOMONOTRIBUTO1.AsFloat)-CDSCompraCabDSTOIMPORTE.AsFloat;
  Importe         := ((Aux1-Aux2)/Aux1)*100;

  // Importe Calculado del Decuento pasado a Float
  CDSCompraCabDSCTO_CALC.Value  := Importe;
  CDSCompraCabDSTO.AsFloat      := Importe;//SetText(CDSCompraCabDSTO,FloatToStr(Importe));

  CalcularTotales;

  //CDSCompraCabDSTO.AsFloat      := Importe;
end;

PROCEDURE TDatosCompraCtdo.CDSCompraCabDSTOSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  Sender.AsString:=Text;
  SumarDetalle;
  CalcularTotales;
  FormCompraCtdo_2.dbeDscto.SetFocus;
END;

PROCEDURE TDatosCompraCtdo.CDSCompraCabFECHACOMPRASetText(Sender: TField;
  CONST Text: STRING);
var d,m,y:word;
BEGIN
 // if sender.AsString<>'' Then
//    if CDSCompraCab.State In [dsInsert,dsEdit] Then
//      begin
//        Sender.AsString := Text;
//        DecodeDate(Sender.AsDateTime,y,m,d);
//        begin
//          DMStoreProcedure.QVerificaPeriodoFiscal.Close;
//          DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:='C';
//          DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value := Sender.AsDateTime;
//          DMStoreProcedure.QVerificaPeriodoFiscal.Open;
//          if (Sender.AsDateTime>Date) Then
//            begin
//              ShowMessage('Fecha fuera de rango');
//              CDSCompraCabFECHAFISCAL.Clear;
//              Sender.Clear;
//            end
//          else
//            if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
//              begin
//                ShowMessage('Fecha no Valida, este período fiscal no esta permitido');
//                CDSCompraCabFECHAFISCAL.Clear;
//                Sender.Clear;
//              end
//            else
//              CDSCompraCabFECHAFISCAL.AsDateTime:=Sender.AsDateTime ;
//         DMStoreProcedure.QVerificaPeriodoFiscal.Close;
//        end;
//      end;
END;

procedure TDatosCompraCtdo.CDSCompraCabFECHAFISCALSetText(Sender: TField;
  const Text: string);
var d,m,y:word;
BEGIN
  Sender.AsString := Text;
  if sender.AsString<>'' Then
    if CDSCompraCab.State In [dsInsert,dsEdit] Then
      begin
        Sender.AsString := Text;
        DecodeDate(Sender.AsDateTime,y,m,d);
        begin
          DMStoreProcedure.QVerificaPeriodoFiscal.Close;
          DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:='C';
          DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value := Sender.AsDateTime;
          DMStoreProcedure.QVerificaPeriodoFiscal.Open;
          if (Sender.AsDateTime>Date) or (y<1900) Then
            begin
              if MessageDlg('Fecha fuera de rango... acepta igual?',mtConfirmation,mbYesNo,0,mbNo)=mrNo Then
                begin
                  CDSCompraCabFECHAFISCAL.Clear;
                  FormCompraCtdo_2.dbeFechaFiscal.Clear;
                  Sender.Clear;
                  // esto se agrega...
                  CDSCompraCabFECHAFISCAL.AsDateTime:=Date;
                  FormCompraCtdo_2.dbeFechaFiscal.SetFocus;
                end;
            end
          else
            if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
              begin
                ShowMessage('Fecha no Valida, este período fiscal no esta permitido');
                CDSCompraCabFECHAFISCAL.Clear;
                Sender.Clear;
                FormCompraCtdo_2.dbeFechaFiscal.SetFocus;
              end
            else
              CDSCompraCabFECHAFISCAL.AsDateTime:=Sender.AsDateTime ;
         DMStoreProcedure.QVerificaPeriodoFiscal.Close;
        end;
      end;
end;

procedure TDatosCompraCtdo.CDSCompraDetIVA_TASASetText(Sender: TField; const Text: String);
begin
  Sender.AsString:=Text;
  CDSCompraDetIVA_SobreTasa.AsFloat:=Sender.AsFloat*0.5;
end;

procedure TDatosCompraCtdo.CDSImpuestosIMPORTESetText(Sender: TField;
  const Text: String);
begin
  if (CDSImpuestosID_IMPUESTO.AsString='') or (CDSImpuestosCODIGO_GRAVAMEN.AsString='') then
    CDSImpuestos.Cancel;

  if sender.DataSet.State in [dsInsert,dsEdit] Then
    Sender.AsString:=Text;

  CDSCompraCabTOTAL.AsFloat:= CDSCompraCabNETOGRAV2.AsFloat+
                              CDSCompraCabNETOEXEN2.AsFloat+
                              CDSCompraCabIMPORTEEXCLUIDO2.AsFloat+
                              CDSCompraCabNETOMONOTRIBUTO2.AsFloat;
  CDSImpuestos.First;
  While not(CDSImpuestos.Eof) do
    begin
      CDSCompraCabTOTAL.AsFloat:=CDSCompraCabTOTAL.AsFloat+
                                 CDSImpuestosIMPORTE.AsFloat;
      CDSImpuestos.Next;
    end;
  CDSPercepcionIVA.First;
  while Not(CDSPercepcionIVA.Eof) Do
    begin
      CDSCompraCabTOTAL.AsFloat:=CDSCompraCabTOTAL.AsFloat+
                                 CDSPercepcionIVAIMPORTE.AsFloat;
      CDSPercepcionIVA.Next;
    end;
  CDSPercepcionIB.First;
  while Not(CDSPercepcionIB.Eof) Do
    begin
      CDSCompraCabTOTAL.AsFloat:=CDSCompraCabTOTAL.AsFloat+
                                 CDSPercepcionIBIMPORTE.AsFloat;
      CDSPercepcionIB.Next;
    end;
  if CDSImpuestos.State in [dsInsert,dsEdit] Then CDSImpuestos.Post;
  if CDSPercepcionIVA.State in [dsInsert,dsEdit] Then CDSPercepcionIVA.Post;
  if CDSPercepcionIB.State in [dsInsert,dsEdit] Then CDSPercepcionIB.Post;

end;

procedure TDatosCompraCtdo.CDSCompraCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  if (Text<>#13) and (Text<>'') Then
    begin
      Sender.AsString:=Text;
      IF NOT (AsignarComprpobante(Sender.AsInteger)) THEN
        BEGIN
          ShowMessage('Dato no Valido');
          Sender.AsString:= '';
          FormCompraCtdo_2.RxCTipoCpbte.SetFocus;
        END;
    end;
  IF CDSCompraCab.State = dsInsert THEN
     UltimoComprobante;

  HabilitarLabel;
  ReAsignaDetalle;

end;

{procedure TDatosCompraCtdo.CDSCompraDetUnitario_TotalGetText( Sender: TField; var Text: String; DisplayText: Boolean);
VAR
  Aux1, Aux2, Aux3, Aux4: real;
BEGIN
  Aux1:=CDSCompraDetUNITARIO_EXENTO.AsFloat;
  Aux2:=CDSCompraDetUNITARIO_GRAVADO.AsFloat;
  Aux3:=CDSCompraDetUNITARIO_IMP_INTERNO.AsFloat;
  IF CDSCompraCabDESGLOZAIVA.Value = 'N' THEN
    Aux2:=(Aux2 + (Aux2 * CDSCompraDetIVA_Tasa.AsFloat * 0.01));
  Aux4:=Aux1 + Aux2 + Aux3;
 Text:=FormatFloat(MascaraDetalleUnitario,Aux4);//FloatToStrF(Aux3, ffFixed, 6, 3);
end;
}
procedure TDatosCompraCtdo.CDSCompraDetDESCUENTOSetText(Sender: TField;
  const Text: String);
VAR
  Aux3: Real;
BEGIN
  if Text<>'' Then
    begin
      Sender.AsString := Text;
      Sender.AsFloat:=Moneda3D(' ',MascaraDetalleDescuento,Sender.AsFloat);
      Aux3 := CDSCompraDetUnitario_Total.AsFloat;
      CDSCompraDetTotal.AsFloat := CDSCompraDetCantidad.AsFloat * Aux3 * (1 - Sender.AsFloat * 0.01);
    end;
end;


{procedure TDatosCompraCtdo.CDSCompraDetTOTALGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR
  Aux1: real;
BEGIN
  Aux1 := Sender.AsFloat;
  IF CDSCompraCabDESGLOZAIVA.Value = 'N' THEN
    Aux1 := Moneda3D(MascaraDetalleTotal,Aux1 * (1 + CDSCompraDetIVA_Tasa.AsFloat * 0.01));
  Text := FormatFloat(MascaraDetalleTotal,Aux1);//FloatToStrF(Aux1, ffFixed, 6, 3);
end;
}
procedure TDatosCompraCtdo.CDSCompraSubDetalleBeforeInsert(
  DataSet: TDataSet);
begin
  if ((CDSCompraSubDetalle.RecordCount+1)> CDSCompraDetCantidad.AsFloat)
  or (CDSCompraDetCON_NRO_SERIE.Value='N') Then
    begin
      sysutils.Abort;
      RAISE Exception.Create('No se pueden cargara mas items de los comprados...')
    end;

end;

procedure TDatosCompraCtdo.CDSCompraSubDetalleNewRecord(DataSet: TDataSet);
begin
  CDSCompraSubDetalleID.Value         :=IBGFcCompSubDet.IncrementFD(1);
  CDSCompraSubDetalleID_DETFAC.Value  :=CDSCompraDetID.Value;
  CDSCompraSubDetalleID_CABFAC.Value  :=CDSCompraCabID_FC.Value;
  CDSCompraSubDetalleTIPOCPBTE.Value  :=CDSCompraCabTIPOCPBTE.Value;
  CDSCompraSubDetalleCLASECPBTE.Value :=CDSCompraCabCLASECPBTE.Value;
  CDSCompraSubDetalleFECHA.AsDateTime      :=CDSCompraCabFECHACOMPRA.AsDateTime;
  CDSCompraSubDetalleNROCPBTE.Value   :=CDSCompraCabNROCPBTE.Value;
  CDSCompraSubDetalleCODIGOARTICULO.Value:=CDSCompraDetCodigoArticulo.Value;
  CDSCompraSubDetalleDEPOSITO.Value       :=CDSCompraCabDeposito.Value;
end;

procedure TDatosCompraCtdo.CDSCompraSubDetalleBeforePost(
  DataSet: TDataSet);
begin
   if CDSCompraSubDetalleSERIE.Value='' Then
      begin
        SysUtils.Abort;
      end;
end;

procedure TDatosCompraCtdo.CDSCompraSubDetalleBeforeEdit(
  DataSet: TDataSet);
begin
  QNroSerie.Close;
  QNroSerie.ParamByName('codigo').Value     :=CDSCompraSubDetalleCODIGOARTICULO.Value;
  QNroSerie.ParamByName('codigoserie').Value:=CDSCompraSubDetalleSERIE.Value;
  QNroSerie.Open;
  IF (QNroSerie.Fields[0].AsString<>'') and (QNroSerieFECHAEGRESO.AsString<>'' )  THEN
    BEGIN
      ShowMessage('No se puede Modificar el Nro de serie por que ya fué entregado...');
      CDSCompraSubDetalle.Cancel;
      SysUtils.Abort;
    END;
  QNroSerie.Close;

end;

procedure TDatosCompraCtdo.CDSCompraSubDetalleSERIESetText(Sender: TField;
  const Text: String);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if CDSCompraSubDetalle.State=dsBrowse Then
       CDSCompraSubDetalle.edit;
      Sender.AsString:=Text;
      if CDSCompraDetCON_NRO_SERIE.Value='S' Then
        begin
          QNroSerie.Close;
          QNroSerie.ParamByName('codigo').Value:=CDSCompraDetCodigoArticulo.Value;
          QNroSerie.ParamByName('codigoserie').Value:=Sender.AsString;
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

procedure TDatosCompraCtdo.CDSCompraDetBeforeDelete(DataSet: TDataSet);
var
  Detalle:String;
begin
  if CDSCompraCab.State in [dsEdit] Then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
       // **** Ingreso en el Log File  **************
        Detalle:= 'Borrado de Linea Fac.Compra: '+
                  CDSCompraCabNROCPBTE.AsString+
                 ' Articulo: '+
                  CDSCompraDetCodigoArticulo.AsString +
                  ':'+
                  CDSCompraDetDetalle.AsString+
                 ' Importe: '+
                  FormatFloat('0.00',CDSCompraDetUnitario_Total.AsFloat);
        DMMain_FD.LogFileFD(0,4,Detalle,'FACCOMP');

       // ******************************************
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('NO se ingreso registro en el LogFile....!');
      end;
    end;

  CDSCompraSubDetalle.First;
  while Not(CDSCompraSubDetalle.Eof) do
    begin
      CDSCompraSubDetalle.Delete;
      CDSCompraSubDetalle.Next;
    end;
end;

END.