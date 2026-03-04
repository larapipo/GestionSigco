UNIT DMOPagos;

INTERFACE

USES
  SysUtils, Classes, Graphics, Forms, Dialogs,DateUtils,
  Db, DBClient, Provider,
  IBGenerator, Variants, FMTBcd, SqlExpr,Controls,Math, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;
TYPE
  TDatosOPago = CLASS(TDataModule)
    DSPOPago: TDataSetProvider;
    DSPMovAplicaCCCompra: TDataSetProvider;
    DSPMovCCCompra: TDataSetProvider;
    DSPProveedor: TDataSetProvider;
    IBGId_Op: TIBGenerator;
    IBGId_Mov_AplicaCCCompra: TIBGenerator;
    DSPEmpresa: TDataSetProvider;
    DSPSucursal: TDataSetProvider;
    DSPIva: TDataSetProvider;
    CDSRetIngBrCab: TClientDataSet;
    DSPRetIngBrCab: TDataSetProvider;
    DSRetIngBrCab: TDataSource;
    CDSRetIngBrDet: TClientDataSet;
    DSPRetIngBrDet: TDataSetProvider;
    DSRetIngBrDet: TDataSource;
    IBGId_RetIngBr_Cab: TIBGenerator;
    IBGId_RetIngBr_Det: TIBGenerator;
    DSRetGanancia: TDataSource;
    CDSRetGanancia: TClientDataSet;
    DSPRetGanancia: TDataSetProvider;
    Ibg_Retenciones: TIBGenerator;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    QStockDETALLE_STK_ADICIONAL: TStringField;
    QStockCODIGO_BARRAS: TStringField;
    QStockRUBRO_STK: TStringField;
    QStockSUBRUBRO_STK: TStringField;
    QStockMARCA_STK: TStringField;
    QStockTASA_IVA: TIntegerField;
    QStockSOBRETASA_IVA: TIntegerField;
    QStockCOSTO_EXENTO_STK: TFloatField;
    QStockCOSTO_GRAVADO_STK: TFloatField;
    QStockCOSTO_TOTAL_STK: TFloatField;
    QStockREEMPLAZO_STK: TStringField;
    QStockFIJACION_PRECIO_GRAVADO: TFloatField;
    QStockFIJACION_PRECIO_EXENTO: TFloatField;
    QStockFIJACION_PRECIO_TOTAL: TFloatField;
    QStockFUAP: TSQLTimeStampField;
    QStockUNIDAD: TStringField;
    QStockCONTROLASTOCK: TStringField;
    QStockCODIGO_PROVEEDOR: TStringField;
    QStockCLASE_ARTICULO: TIntegerField;
    QStockMODO_GRAVAMEN: TStringField;
    QStockCON_IMP_INT: TStringField;
    QStockIMPUESTO_INTERNOS: TFloatField;
    QStockGRAVADO_IB: TStringField;
    QStockTASA_IB: TIntegerField;
    QStockACTUALIZACOSTO: TStringField;
    QStockDEPRODUCCION: TStringField;
    QStockPRODUCCIONDIRECTA: TStringField;
    QStockUNIDAD_COMPRA: TStringField;
    QStockCONTENIDO_COMPRA: TFloatField;
    QStockCONTROL_SERIE: TStringField;
    QStockUSA_CODIGOBARRA: TStringField;
    QStockUNIDAD_ULTIMAUSADA: TStringField;
    QStockID_TABLAPRECIOS: TIntegerField;
    QStockID_TABLAPRECIOSDETALLE: TIntegerField;
    QStockCODIGO_PRECIO: TIntegerField;
    QStockFECHA_ALTA: TSQLTimeStampField;
    QStockCOSTO_GRAVADO_SOMBRA: TFloatField;
    QStockCOSTO_EXENTO_SOMBRA: TFloatField;
    QStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    QStockFECHA_ULTIMAVTA: TSQLTimeStampField;
    QStockMONEDA: TIntegerField;
    QStockCOSTO_GRAVADO_P: TFloatField;
    QStockCOSTO_EXENTO_P: TFloatField;
    QStockCOSTO_TOTAL_P: TFloatField;
    QStockPOSICION: TStringField;
    QStockPRESENTACION_UNIDAD: TStringField;
    QStockPRESENTACION_CANTIDAD: TFloatField;
    QStockEDITAPRECIO: TStringField;
    QStockEDITADETALLE: TStringField;
    QStockURL: TStringField;
    QStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    QStockMUESTRARUBRO: TStringField;
    QStockMUESTRASUBRUBRO: TStringField;
    QStockMUESTRAMARCA: TStringField;
    QStockMUESTRATASA: TStringField;
    QStockMUESTRATASAPORCENTAJE: TFloatField;
    QStockMUESTRASOBRETASA: TStringField;
    QStockMUESTRASOBRETASAPROCENTAJE: TFloatField;
    QStockMUESTRATASAIB: TFloatField;
    QStockMUESTRATABLAPRECIODETALLE: TStringField;
    QStockMUESTRATABLAPRECIO1: TFloatField;
    QStockMUESTRATABLAPRECIO2: TFloatField;
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
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    QUltimoNumeroRetencion: TFDQuery;
    DSPInscripcion: TDataSetProvider;
    CDSInscripcion: TClientDataSet;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    QPadron: TFDQuery;
    QPadronCUIT: TStringField;
    QPadronNOMBRE: TStringField;
    QPadronFECHA: TSQLTimeStampField;
    CDSIva: TClientDataSet;
    CDSIvaCODIGO: TIntegerField;
    CDSIvaDESCRIPCION: TStringField;
    CDSIvaTASA: TFloatField;
    CDSIvaCOLUMNA: TSmallintField;
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
    CDSOPago: TClientDataSet;
    CDSOPagoID_OP: TIntegerField;
    CDSOPagoTIPOCPBTE: TStringField;
    CDSOPagoCLASECPBTE: TStringField;
    CDSOPagoNROCPBTE: TStringField;
    CDSOPagoCODIGO: TStringField;
    CDSOPagoLETRAOP: TStringField;
    CDSOPagoSUCOP: TStringField;
    CDSOPagoNUMEROOP: TStringField;
    CDSOPagoNOMBRE: TStringField;
    CDSOPagoRAZONSOCIAL: TStringField;
    CDSOPagoDIRECCION: TStringField;
    CDSOPagoCPOSTAL: TStringField;
    CDSOPagoLOCALIDAD: TStringField;
    CDSOPagoTIPOIVA: TIntegerField;
    CDSOPagoCUIT: TStringField;
    CDSOPagoNRO_IIBB: TStringField;
    CDSOPagoFECHA: TSQLTimeStampField;
    CDSOPagoANULADO: TStringField;
    CDSOPagoN_OPERACION2: TFloatField;
    CDSOPagoTOTAL: TFloatField;
    CDSOPagoSALDO_APLICAR: TFloatField;
    CDSOPagoOBSERVACION1: TStringField;
    CDSOPagoOBSERVACION2: TStringField;
    CDSOPagoSUCURSAL: TIntegerField;
    CDSOPagoDESCUENTO: TFloatField;
    CDSOPagoDESGLOZAIVA: TStringField;
    CDSOPagoNC_ID_FC: TIntegerField;
    CDSOPagoNC_LETRAFAC: TStringField;
    CDSOPagoNC_SUCFAC: TStringField;
    CDSOPagoNC_NUMEROFAC: TStringField;
    CDSOPagoTASA_PERCEPCIONIVA: TFloatField;
    CDSOPagoTASA_PERCEPCIONIB: TFloatField;
    CDSOPagoUSUARIO: TStringField;
    CDSOPagoTOTAL_NETO_GRAVADO: TFloatField;
    CDSOPagoTOTAL_PAGOS_DEL_MES: TFloatField;
    CDSOPagoTOTAL_RETENIDO_MES: TFloatField;
    CDSOPagoTASA_RETENCION_GANACIA: TFloatField;
    CDSOPagoMINIMO_NO_IMPONIBLE_GANANCIA: TFloatField;
    CDSOPagoRETIENE_GANACIAS: TStringField;
    CDSOPagoRETENCION_GANACIA_GENERADO: TStringField;
    CDSOPagoCODIGO_REGIMENA_GANANCIA: TIntegerField;
    CDSOPagoCONCEPTO_RETENCION_GANACIA: TStringField;
    CDSOPagoIMPUESTO_MINIMO_GANANCIA: TFloatField;
    CDSOPagoRETIENE_IIBB: TStringField;
    CDSOPagoTASA_RETENCION_IIBB: TFloatField;
    CDSOPagoMINIMO_IMPONIBLE_RET_IIBB: TFloatField;
    CDSOPagoFECHA_HORA: TSQLTimeStampField;
    CDSOPagoMUESTRASUCURSAL: TStringField;
    CDSOPagoMUESTRACOMPROBANTE: TStringField;
    CDSOPagoID_TIPOCOMPROBANTE: TIntegerField;
    CDSOPagoSUMAAPLICACIONES_: TFloatField;
    DSMovAplicaCCCompra: TDataSource;
    DSMovCCCompra: TDataSource;
    CDSMovAplicaCCCompra: TClientDataSet;
    CDSMovAplicaCCCompraID_MOV: TIntegerField;
    CDSMovAplicaCCCompraID_MOVCCCOMPRA: TIntegerField;
    CDSMovAplicaCCCompraFECHA: TSQLTimeStampField;
    CDSMovAplicaCCCompraPROVEEDOR: TStringField;
    CDSMovAplicaCCCompraID_CPBTE: TIntegerField;
    CDSMovAplicaCCCompraTIPOCPBTE: TStringField;
    CDSMovAplicaCCCompraCLASECPBTE: TStringField;
    CDSMovAplicaCCCompraNUMEROCPBTE: TStringField;
    CDSMovAplicaCCCompraIMPORTE: TFloatField;
    CDSMovAplicaCCCompraAPLICA_ID_CPBTE: TIntegerField;
    CDSMovAplicaCCCompraAPLICA_TIPOCPBTE: TStringField;
    CDSMovAplicaCCCompraAPLICA_CLASECPBTE: TStringField;
    CDSMovAplicaCCCompraAPLICA_NROCPBTE: TStringField;
    CDSMovAplicaCCCompraAPLICA_NETO: TFloatField;
    CDSMovAplicaCCCompraDETALLE: TStringField;
    CDSMovAplicaCCCompraMUESTRAFECHACPBTE: TSQLTimeStampField;
    CDSMovAplicaCCCompraMUESTRATOTALFACTURA: TFloatField;
    CDSMovCCCompra: TClientDataSet;
    CDSMovCCCompraID_MOVCCCOMPRA: TIntegerField;
    CDSMovCCCompraID_CPBTE: TIntegerField;
    CDSMovCCCompraPROVEEDOR: TStringField;
    CDSMovCCCompraFECHACOMPRA: TSQLTimeStampField;
    CDSMovCCCompraFECHAVTO: TSQLTimeStampField;
    CDSMovCCCompraTIPOCPBTE: TStringField;
    CDSMovCCCompraCLASECPBTE: TStringField;
    CDSMovCCCompraNROCPBTE: TStringField;
    CDSMovCCCompraDEBE: TFloatField;
    CDSMovCCCompraHABER: TFloatField;
    CDSMovCCCompraSALDO: TFloatField;
    CDSMovCCCompraDETALLE: TStringField;
    CDSMovCCCompraMUESTRAAPAGAR: TFloatField;
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
    CDSProveedorCONV_MULTI: TStringField;
    CDSProveedorMONEDA_PRECIOS: TIntegerField;
    CDSProveedorTELEDISCADO: TStringField;
    CDSProveedorDESPERIVA: TStringField;
    CDSProveedorDESPERIB: TStringField;
    CDSProveedorDESPERIB2: TStringField;
    CDSProveedorMUESTRADETALLERETIIBB: TStringField;
    CDSProveedorMUESTRATASARETIIBB: TFloatField;
    CDSProveedorMUESTRAMINIMPONIRETIIBB: TFloatField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalRECARGO: TFloatField;
    CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField;
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
    QRetIngBrCab: TFDQuery;
    QRetIngBrCabID: TIntegerField;
    QRetIngBrCabCODIGO: TStringField;
    QRetIngBrCabNOMBRE: TStringField;
    QRetIngBrCabDIRECCION: TStringField;
    QRetIngBrCabCODIGOPOSTAL: TStringField;
    QRetIngBrCabLOCALIDAD: TStringField;
    QRetIngBrCabCUIT: TStringField;
    QRetIngBrCabTIPOCPBTE: TStringField;
    QRetIngBrCabCLASECPBTE: TStringField;
    QRetIngBrCabFECHA: TSQLTimeStampField;
    QRetIngBrCabLETRA: TStringField;
    QRetIngBrCabSUC: TStringField;
    QRetIngBrCabNUMERO: TStringField;
    QRetIngBrCabSUCURSAL: TIntegerField;
    QRetIngBrCabID_CPBTE_ORIGEN: TIntegerField;
    QRetIngBrCabTIPOCPBTE_ORIGEN: TStringField;
    QRetIngBrCabCLASECPBTE_ORIGEN: TStringField;
    QRetIngBrCabNROCPBTE_ORIGEN: TStringField;
    QRetIngBrCabNROCPBTE: TStringField;
    QRetIngBrCabTOTAL: TFloatField;
    QRetIngBrCabNOMBRE_AGTE_RET: TStringField;
    QRetIngBrCabDIRECCION_AGTE_RET: TStringField;
    QRetIngBrCabCUIT_AGTE_RET: TStringField;
    QRetIngBrCabCPOSTAL_AGTE_RET: TStringField;
    QRetIngBrCabLOCALIDAD_AGTE_RET: TStringField;
    QRetIngBrCabNRO_AGTE_RET: TStringField;
    QRetIngBrCabNETO_GRAVADO: TFloatField;
    QRetIngBrCabTASA_RETENCION: TFloatField;
    QRetIngBrCabANULADO: TStringField;
    QRetIngBrCabESTADO: TStringField;
    QRetIngBrCabNRO_IIBB: TStringField;
    CDSRetIngBrCabID: TIntegerField;
    CDSRetIngBrCabCODIGO: TStringField;
    CDSRetIngBrCabNOMBRE: TStringField;
    CDSRetIngBrCabDIRECCION: TStringField;
    CDSRetIngBrCabCODIGOPOSTAL: TStringField;
    CDSRetIngBrCabLOCALIDAD: TStringField;
    CDSRetIngBrCabCUIT: TStringField;
    CDSRetIngBrCabTIPOCPBTE: TStringField;
    CDSRetIngBrCabCLASECPBTE: TStringField;
    CDSRetIngBrCabFECHA: TSQLTimeStampField;
    CDSRetIngBrCabLETRA: TStringField;
    CDSRetIngBrCabSUC: TStringField;
    CDSRetIngBrCabNUMERO: TStringField;
    CDSRetIngBrCabSUCURSAL: TIntegerField;
    CDSRetIngBrCabID_CPBTE_ORIGEN: TIntegerField;
    CDSRetIngBrCabTIPOCPBTE_ORIGEN: TStringField;
    CDSRetIngBrCabCLASECPBTE_ORIGEN: TStringField;
    CDSRetIngBrCabNROCPBTE_ORIGEN: TStringField;
    CDSRetIngBrCabNROCPBTE: TStringField;
    CDSRetIngBrCabTOTAL: TFloatField;
    CDSRetIngBrCabNOMBRE_AGTE_RET: TStringField;
    CDSRetIngBrCabDIRECCION_AGTE_RET: TStringField;
    CDSRetIngBrCabCUIT_AGTE_RET: TStringField;
    CDSRetIngBrCabCPOSTAL_AGTE_RET: TStringField;
    CDSRetIngBrCabLOCALIDAD_AGTE_RET: TStringField;
    CDSRetIngBrCabNRO_AGTE_RET: TStringField;
    CDSRetIngBrCabNETO_GRAVADO: TFloatField;
    CDSRetIngBrCabTASA_RETENCION: TFloatField;
    CDSRetIngBrCabANULADO: TStringField;
    CDSRetIngBrCabESTADO: TStringField;
    CDSRetIngBrCabNRO_IIBB: TStringField;
    QRetIngBrDet: TFDQuery;
    QRetIngBrDetID_DET: TIntegerField;
    QRetIngBrDetID_CAB: TIntegerField;
    QRetIngBrDetFECHA: TSQLTimeStampField;
    QRetIngBrDetDETALLE: TStringField;
    QRetIngBrDetIMPORTE: TFloatField;
    QRetIngBrDetBASEIMPONIBLE: TFloatField;
    QRetIngBrDetPORCENTAJE: TFloatField;
    QRetIngBrDetRETENCION: TFloatField;
    QRetIngBrDetID_CPBTE_RETENIDO: TIntegerField;
    QRetIngBrDetTIPOCPBTE_RETENIDO: TStringField;
    QRetIngBrDetCLASECPBTE_RETENIDO: TStringField;
    CDSRetIngBrDetID_DET: TIntegerField;
    CDSRetIngBrDetID_CAB: TIntegerField;
    CDSRetIngBrDetFECHA: TSQLTimeStampField;
    CDSRetIngBrDetDETALLE: TStringField;
    CDSRetIngBrDetIMPORTE: TFloatField;
    CDSRetIngBrDetBASEIMPONIBLE: TFloatField;
    CDSRetIngBrDetPORCENTAJE: TFloatField;
    CDSRetIngBrDetRETENCION: TFloatField;
    CDSRetIngBrDetID_CPBTE_RETENIDO: TIntegerField;
    CDSRetIngBrDetTIPOCPBTE_RETENIDO: TStringField;
    CDSRetIngBrDetCLASECPBTE_RETENIDO: TStringField;
    QRetGanancia: TFDQuery;
    QRetGananciaID: TIntegerField;
    QRetGananciaID_OP: TIntegerField;
    QRetGananciaFECHA: TSQLTimeStampField;
    QRetGananciaNUMERO_RETENCION: TStringField;
    QRetGananciaCODIGO_PROVEEDOR: TStringField;
    QRetGananciaCODIGO_REGIMEN: TIntegerField;
    QRetGananciaCONCEPTO: TStringField;
    QRetGananciaTASA: TFloatField;
    QRetGananciaMINIMO_NO_IMPONIBLE: TFloatField;
    QRetGananciaPAGOS_ACUMULADOS: TFloatField;
    QRetGananciaIMPUESTO_RETENIDO: TFloatField;
    QRetGananciaOBSERVACIONES: TMemoField;
    QRetGananciaVALOR_MINIMO_IMPUESTO: TFloatField;
    QRetGananciaANULADA: TStringField;
    QRetGananciaESTADO: TStringField;
    CDSRetGananciaID: TIntegerField;
    CDSRetGananciaID_OP: TIntegerField;
    CDSRetGananciaFECHA: TSQLTimeStampField;
    CDSRetGananciaNUMERO_RETENCION: TStringField;
    CDSRetGananciaCODIGO_PROVEEDOR: TStringField;
    CDSRetGananciaCODIGO_REGIMEN: TIntegerField;
    CDSRetGananciaCONCEPTO: TStringField;
    CDSRetGananciaTASA: TFloatField;
    CDSRetGananciaMINIMO_NO_IMPONIBLE: TFloatField;
    CDSRetGananciaPAGOS_ACUMULADOS: TFloatField;
    CDSRetGananciaIMPUESTO_RETENIDO: TFloatField;
    CDSRetGananciaOBSERVACIONES: TMemoField;
    CDSRetGananciaVALOR_MINIMO_IMPUESTO: TFloatField;
    CDSRetGananciaANULADA: TStringField;
    CDSRetGananciaESTADO: TStringField;
    QComprobRetIngBr: TFDQuery;
    QComprobRetIngBrNUMERO: TStringField;
    QComprobRetIngBrLETRA: TStringField;
    QComprobRetIngBrPREFIJO: TStringField;
    QComprobRetIngBrTIPO_COMPROB: TStringField;
    QComprobRetIngBrCLASE_COMPROB: TStringField;
    QComprobRetIngBrCOPIAS: TIntegerField;
    QComprobRetIngBrREPORTE: TStringField;
    QComprob: TFDQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QGrupoCpbte: TFDQuery;
    QGrupoCpbteID_GRUPO: TIntegerField;
    QAplicado: TFDQuery;
    QAplicadoID_MOV: TIntegerField;
    QAplicadoID_MOVCCCOMPRA: TIntegerField;
    QAplicadoFECHA: TSQLTimeStampField;
    QAplicadoPROVEEDOR: TStringField;
    QAplicadoID_CPBTE: TIntegerField;
    QAplicadoTIPOCPBTE: TStringField;
    QAplicadoCLASECPBTE: TStringField;
    QAplicadoNUMEROCPBTE: TStringField;
    QAplicadoIMPORTE: TFloatField;
    QAplicadoAPLICA_ID_CPBTE: TIntegerField;
    QAplicadoAPLICA_TIPOCPBTE: TStringField;
    QAplicadoAPLICA_CLASECPBTE: TStringField;
    QAplicadoAPLICA_NROCPBTE: TStringField;
    QAplicadoAPLICA_NETO: TFloatField;
    QAplicadoDETALLE: TStringField;
    QBuscaComprob: TFDQuery;
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
    DSNCCab: TDataSource;
    QTraer_Pagos_Proveedor: TFDQuery;
    QCalcular_Neto_Fc_Borrar: TFDQuery;
    CDSOPagoDESCUENTO_PORCENTAJE: TFloatField;
    CDSOPagoTOTAL_NETO: TFloatField;
    DSPComprobantePorDefecto: TDataSetProvider;
    CDSComprobantePorDefecto: TClientDataSet;
    QBorrarNc: TFDQuery;
    CDSMovAplicaCCCompraCONCILIADO: TStringField;
    spCalculaNeto: TFDStoredProc;
    QCalcular_Neto_Fc_BorrarTOTAL_NETO: TIntegerField;
    QNetoFac: TFDQuery;
    QNetoFacNETO: TFloatField;
    QNetoFacTOTAL: TFloatField;
    QTraer_Pagos_ProveedorTOTAL: TFloatField;
    QTraer_Pagos_ProveedorEXENTO: TStringField;
    QTraer_Pagos_ProveedorCODIGO_REGIMEN: TIntegerField;
    QTraer_Pagos_ProveedorPAGOS_ANTERIORES: TFloatField;
    QTraer_Pagos_ProveedorCONCEPTO: TStringField;
    QTraer_Pagos_ProveedorMINIMO_NO_IMPONIBLE: TFloatField;
    QTraer_Pagos_ProveedorTASA: TFloatField;
    QTraer_Pagos_ProveedorIMPUESTO_MINIMO: TFloatField;
    QTraer_Pagos_ProveedorEXENTO_ID: TIntegerField;
    DSMovCC: TDataSource;
    CDSMovCC: TClientDataSet;
    DSPMovCC: TDataSetProvider;
    CDSMovCCID_MOVCCCOMP: TIntegerField;
    CDSMovCCID_CPBTE: TIntegerField;
    CDSMovCCCLIENTE: TStringField;
    CDSMovCCFECHACOMPRA: TSQLTimeStampField;
    CDSMovCCFECHAVTO: TSQLTimeStampField;
    CDSMovCCTIPOCPBTE: TStringField;
    CDSMovCCCLASECPBTE: TStringField;
    CDSMovCCNROCPBTE: TStringField;
    CDSMovCCDEBE: TFloatField;
    CDSMovCCHABER: TFloatField;
    CDSMovCCSALDO: TFloatField;
    CDSMovCCDETALLE: TStringField;
    CDSMovCCID_COMPROBANTE: TIntegerField;
    CDSMovCCSALDOCC: TFloatField;
    QSaldoInicial: TFDQuery;
    QSaldoInicialDEBE: TFloatField;
    QSaldoInicialHABER: TFloatField;
    CDSOPagoNUMERO_OPERACION: TStringField;
    QComprobCAJA_DEFECTO: TIntegerField;
    QOPagoExcluidaGanacia: TFDQuery;
    IntegerField1: TIntegerField;
    QIngMovGanancia: TFDQuery;
    IntegerField2: TIntegerField;
    QMovRetGanancia: TFDQuery;
    CDSMovRetGanancia: TClientDataSet;
    DSPMovRetGanancia: TDataSetProvider;
    QMovRetGananciaID: TIntegerField;
    QMovRetGananciaID_OP: TIntegerField;
    QMovRetGananciaID_MOVAPLICACIONCC: TIntegerField;
    QMovRetGananciaID_CPBTE: TIntegerField;
    QMovRetGananciaNROCPBTE: TStringField;
    QMovRetGananciaNETO: TFloatField;
    QMovRetGananciaTOTAL: TFloatField;
    CDSMovRetGananciaID: TIntegerField;
    CDSMovRetGananciaID_OP: TIntegerField;
    CDSMovRetGananciaID_MOVAPLICACIONCC: TIntegerField;
    CDSMovRetGananciaID_CPBTE: TIntegerField;
    CDSMovRetGananciaNROCPBTE: TStringField;
    CDSMovRetGananciaNETO: TFloatField;
    CDSMovRetGananciaTOTAL: TFloatField;
    ibg_IdDetGanancia: TIBGenerator;
    QBorrarRetIIBB: TFDQuery;
    CDSOPagoMUESTRACORREO: TStringField;
    CDSEmpresaTASA_RET_IIBB: TFloatField;
    CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    CDSOPagoPERMITIR_MODIF_TOTAL: TStringField;
    spReasignaCuit: TFDStoredProc;
    QTraer_Pagos_ProveedorPOR_ESCALA: TStringField;
    CDSOPagoRET_GAN_X_ESCALA: TStringField;
    CDSOPagoID_ESCALA_RET: TIntegerField;
    QEscalaRetenciones: TFDQuery;
    QEscalaRetencionesID: TIntegerField;
    QEscalaRetencionesCOD_RETENCION: TIntegerField;
    QEscalaRetencionesDESDE: TFloatField;
    QEscalaRetencionesHASTA: TFloatField;
    QEscalaRetencionesFIJO: TFloatField;
    QEscalaRetencionesVARIA: TFloatField;
    QEscalaRetencionesEXCEDENTE: TFloatField;
    CDSOPagoGANC_ESCALA_DESDE: TFloatField;
    CDSOPagoGANC_ESCALA_HASTA: TFloatField;
    CDSOPagoGANC_ESCALA_VARIAC: TFloatField;
    CDSOPagoGANC_ESCALA_FIJO: TFloatField;
    CDSOPagoGANC_ESCALA_EXCED: TFloatField;
    CDSMovCCCompraSELECCION: TBooleanField;
    DSRetIva: TDataSource;
    CDSRetIVA: TClientDataSet;
    DSPRetIVA: TDataSetProvider;
    ibgRetIVA: TIBGenerator;
    QretIVA: TFDQuery;
    QretIVAID: TIntegerField;
    QretIVAID_OP: TIntegerField;
    QretIVAFECHA: TSQLTimeStampField;
    QretIVANUMERO_RETENCION: TStringField;
    QretIVACODIGO_PROVEEDOR: TStringField;
    QretIVACODIGO_REGIMEN: TIntegerField;
    QretIVACONCEPTO: TStringField;
    QretIVATASA: TFloatField;
    QretIVAMINIMO_NO_IMPONIBLE: TFloatField;
    QretIVAIMPUESTO_RETENIDO: TFloatField;
    QretIVAOBSERVACIONES: TMemoField;
    QretIVAANULADA: TStringField;
    QretIVAESTADO: TStringField;
    CDSRetIVAID: TIntegerField;
    CDSRetIVAID_OP: TIntegerField;
    CDSRetIVAFECHA: TSQLTimeStampField;
    CDSRetIVANUMERO_RETENCION: TStringField;
    CDSRetIVACODIGO_PROVEEDOR: TStringField;
    CDSRetIVACODIGO_REGIMEN: TIntegerField;
    CDSRetIVACONCEPTO: TStringField;
    CDSRetIVATASA: TFloatField;
    CDSRetIVAMINIMO_NO_IMPONIBLE: TFloatField;
    CDSRetIVAIMPUESTO_RETENIDO: TFloatField;
    CDSRetIVAOBSERVACIONES: TMemoField;
    CDSRetIVAANULADA: TStringField;
    CDSRetIVAESTADO: TStringField;
    QIvaFac: TFDQuery;
    QIvaFacIMPUESTO: TFloatField;
    CDSOPagoRETIENE_IVA: TStringField;
    CDSOPagoIVA_ACUMULADO: TFloatField;
    CDSOPagoTASA_RET_IVA: TFloatField;
    QretIVABASE_IMPONIBLE: TFloatField;
    CDSRetIVABASE_IMPONIBLE: TFloatField;
    QUltimaRetIVA: TFDQuery;
    CDSMovAplicaCCCompraAPLICA_IVA: TFloatField;
    QACta: TFDQuery;
    DSPACta: TDataSetProvider;
    CDSACta: TClientDataSet;
    DSACta: TDataSource;
    CDSACtaID_MOV: TIntegerField;
    CDSACtaFECHA: TSQLTimeStampField;
    CDSACtaPROVEEDOR: TStringField;
    CDSACtaID_CPBTE: TIntegerField;
    CDSACtaTIPOCPBTE: TStringField;
    CDSACtaCLASECPBTE: TStringField;
    CDSACtaNUMEROCPBTE: TStringField;
    CDSACtaIMPORTE: TFloatField;
    CDSACtaDETALLE: TStringField;
    CDSMovCCCompraGRUPO: TIntegerField;
    QGravarNetosAPlicados: TFDQuery;
    QMovAux: TFDQuery;
    QMovAuxID: TIntegerField;
    QMovAuxFECHA: TSQLTimeStampField;
    QMovAuxCODIGO_PROV: TStringField;
    QMovAuxID_TIPO: TIntegerField;
    QMovAuxDEBE: TFloatField;
    QMovAuxHABER: TFloatField;
    QMovAuxID_OP: TIntegerField;
    DSPMovAux: TDataSetProvider;
    CDSMovAux: TClientDataSet;
    CDSMovAuxID: TIntegerField;
    CDSMovAuxFECHA: TSQLTimeStampField;
    CDSMovAuxCODIGO_PROV: TStringField;
    CDSMovAuxID_TIPO: TIntegerField;
    CDSMovAuxDEBE: TFloatField;
    CDSMovAuxHABER: TFloatField;
    CDSMovAuxID_OP: TIntegerField;
    IBGMovAux: TIBGenerator;
    QTipo: TFDQuery;
    DSPTipo: TDataSetProvider;
    CDSTipo: TClientDataSet;
    CDSTipoID: TIntegerField;
    CDSTipoDETALLE: TStringField;
    CDSMovAuxMUESTRATIPO: TStringField;
    DSMovAux: TDataSource;
    QComprobAFECTA_IVA: TStringField;
    CDSMovCCCompraFISCAL: TStringField;
    CDSProveedorRETENCION_IVA: TStringField;
    CDSProveedorCODIGO_RET_IVA: TIntegerField;
    CDSProveedorPORCENTAJE_RET_IVA: TSingleField;
    CDSOPagoCOD_RET_IVA: TIntegerField;
    CDSOPagoCONCEPTO_RET_IVA: TStringField;
    QRegimen: TFDQuery;
    DSPRegimen: TDataSetProvider;
    CDSRegimen: TClientDataSet;
    CDSRegimenCODIGO: TIntegerField;
    CDSRegimenDETALLE: TStringField;
    QMovCC: TFDQuery;
    CDSOPagoENTREGADO: TStringField;
    CDSEmpresaNOMBRE_FANTASIA: TStringField;
    CDSEmpresaCODIGO_COT: TStringField;
    CDSEmpresaDIRECCION_NRO: TStringField;
    CDSOPagoID_OBRA: TIntegerField;
    CDSOPagoMUESTRAOBRA: TStringField;
    CDSSucursalHOST: TStringField;
    CDSSucursalCERTIFICADO_ELEC: TStringField;
    CDSSucursalCUIT: TStringField;
    CDSSucursalRAZONSOCIAL: TStringField;
    CDSSucursalCOT_CLAVE: TStringField;
    CDSSucursalCOT_CUIT: TStringField;
    CDSSucursalAPLICA_LEY15311: TStringField;
    PROCEDURE DataModuleDestroy(Sender: TObject);
    PROCEDURE CDSOPagoNUMEROOPSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSOPagoCODIGOSetText(Sender: TField; CONST Text: STRING);
    PROCEDURE CDSOPagoSUCURSALSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSMovAplicaCCCompraAfterPost(DataSet: TDataSet);
    PROCEDURE CDSMovAplicaCCCompraAfterDelete(DataSet: TDataSet);
    PROCEDURE CDSMovAplicaCCCompraBeforeDelete(DataSet: TDataSet);
    PROCEDURE CDSOPagoNewRecord(DataSet: TDataSet);
    PROCEDURE CDSOPagoTOTALSetText(Sender: TField; CONST Text: STRING);
    PROCEDURE CDSMovAplicaCCCompraIMPORTESetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSOPagoSUCOPSetText(Sender: TField; CONST Text: STRING);
    PROCEDURE CDSOPagoLETRAOPSetText(Sender: TField; CONST Text: STRING);
    PROCEDURE CDSMovAplicaCCCompraNewRecord(DataSet: TDataSet);
    procedure CDSOPagoID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSRetIngBrCabNewRecord(DataSet: TDataSet);
    procedure CDSRetIngBrCabNUMEROSetText(Sender: TField;
      const Text: String);
    procedure CDSRetIngBrDetNewRecord(DataSet: TDataSet);
    procedure CDSRetIngBrDetPORCENTAJESetText(Sender: TField;
      const Text: String);
    procedure CDSRetIngBrDetAfterPost(DataSet: TDataSet);
    procedure DSRetIngBrCabStateChange(Sender: TObject);
    procedure CDSRetGananciaNewRecord(DataSet: TDataSet);
    procedure CDSMovAplicaCCCompraBeforePost(DataSet: TDataSet);
    procedure CDSRetGananciaNUMERO_RETENCIONSetText(Sender: TField;
      const Text: String);
    procedure CDSMovAplicaCCCompraAfterScroll(DataSet: TDataSet);
    procedure CDSOPagoTOTAL_NETOSetText(Sender: TField; const Text: string);
    procedure CDSOPagoDESCUENTO_PORCENTAJESetText(Sender: TField;
      const Text: string);
    procedure CDSOPagoDESCUENTOSetText(Sender: TField; const Text: string);
    procedure CDSMovRetGananciaNewRecord(DataSet: TDataSet);
    procedure CDSMovCCCompraMUESTRAAPAGARSetText(Sender: TField;
      const Text: string);
    procedure CDSRetIVANewRecord(DataSet: TDataSet);
    procedure CDSRetIVANUMERO_RETENCIONSetText(Sender: TField;
      const Text: string);
    procedure CDSMovAuxNewRecord(DataSet: TDataSet);
    procedure CDSMovAuxAfterPost(DataSet: TDataSet);
    procedure CDSOPagoFECHASetText(Sender: TField; const Text: string);
    procedure CDSRetIVATASASetText(Sender: TField; const Text: string);
    procedure CDSOPagoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    SumaAplicaciones,SumaAux: Extended;
    PerciveIva            : STRING;
    PerciveIB             : STRING;
    ConvMulti             : STRING;
    ControlarRetIIBB      : Boolean;
    Detalle_PercepcionIVA : STRING;
    Detalle_PercepcionIB  : STRING;
    Codigo_PercepcionIva  : Integer;
    Codigo_PercepcionIB   : Integer;
    MascaraGral           : String;
    CodigoInUse           : String;
    TotalInUse            : Real;
    RetenerIva            : Boolean;
    FUNCTION AsignarProveedor(Dato: STRING): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;

    PROCEDURE CalcularAplicaciones;
    Procedure SumarAplicaciones;
    PROCEDURE AplicaMascaraNumerica;
    procedure SumarNetosAplicados;
    procedure SumarAux;
    procedure SumarNetosAcumulados;
    { Public declarations }
  END;

VAR
  DatosOPago: TDatosOPago;

IMPLEMENTATION

USES UDMain_FD, UOPago_2, Librerias, USumaAplicaciones;

{$R *.DFM}


procedure TDatosOPago.SumarAux;
begin
 SUmaAux:=0;
  CDSMovAux.First;
  CDSMovAux.DisableControls;
  while Not(cdsMovAux.Eof) do
    begin
      SumaAux:=SumaAux+CDSMovAuxHABER.AsFloat;
      CDSMovAux.Next;
    end;
  CDSMovAux.First;
  CDSMovAux.EnableControls;
  FormOPago_2.edTotalAux.Value:=SumaAux;
end;

FUNCTION TDatosOPago.AsignarProveedor(Dato: STRING): Boolean;
var Ret,Perc:Extended;       Desde,Hasta: TDateTime;
BEGIN
  CDSProveedor.Close;
  CDSProveedor.Params.ParamByName('Codigo').Value := Dato;
  CDSProveedor.Open;
  IF CDSProveedorCODIGO.AsString<>'' THEN
    BEGIN
      CDSOPagoNOMBRE.AsString       := CDSProveedorNombre.AsString;
      CDSOPagoRAZONSOCIAL.AsString  := CDSProveedorRazon_Social.ASString;
      CDSOPagoCUIT.AsString         := CDSProveedorN_DE_CUIT.AsString;
      // ******* Busca en el Padron de Embargos de rentas ************
      FormOPago_2.pnAvisoPadron.Visible:=False;
      QPadron.Close;
      QPadron.ParamByName('cuit').Value := CDSOPagoCUIT.AsString;
      QPadron.Open;
      FormOPago_2.pnAvisoPadron.Visible:= Not(QPadron.Fields[0].AsString='');
      QPadron.Close;
      // *************************************************
      CDSOPagoDIRECCION.AsString               := CDSProveedorDIRECCION.AsString;
      CDSOPagoTIPOIVA.AsInteger                := CDSProveedorCondicion_Iva.AsInteger;
      CDSOPagoCPOSTAL.AsString                 := CDSProveedorCOD_POSTAL.AsString;
      CDSOPagoLOCALIDAD.AsString               := CDSProveedorLocalidad.AsString;
      CDSOPagoNRO_IIBB.AsString                := CDSProveedorNRO_IIBB.Value;
      if VarIsNull(CDSOPagoNRO_IIBB.Value) Then
        CDSOPagoNRO_IIBB.Value:='';
      PerciveIva                               := CDSProveedorRETIENE_IVA.Value;
      PerciveIB                                := CDSProveedorRETIENE_IB.Value;
      ConvMulti                                := CDSProveedorCONV_MULTI.Value;
      CDSOPagoTOTAL_NETO_GRAVADO.AsFloat       := 0;
      CDSOPagoTOTAL_PAGOS_DEL_MES.AsFloat      := 0;
      CDSOPagoRETENCION_GANACIA_GENERADO.Value := 'N';
      CDSOPagoRETIENE_GANACIAS.Value           := 'N';
      CDSOPagoRETIENE_IVA.Value                := 'N';

      if (FormOPago_2.ReproWeb) and (FormOPago_2.ReproWebAuto)  then
        FormOPago_2.ConsultarReproweb.Execute;

      if (CDSProveedorRETENCION_IVA.Value='S') and (not(VarIsNull(CDSProveedorCODIGO_RET_IVA.Value))) and (CDSProveedorCODIGO_RET_IVA.Value>0) then
        begin
          RetenerIva                    := True;
          CDSOPagoRETIENE_IVA.Value     := CDSProveedorRETENCION_IVA.Value;
          CDSOPagoTASA_RET_IVA.AsFloat  := CDSProveedorPORCENTAJE_RET_IVA.AsFloat;
          CDSOPagoCOD_RET_IVA.Value     := CDSProveedorCODIGO_RET_IVA.Value;
          CDSRegimen.Close;
          CDSRegimen.Params.ParamByName('codigo').Value:=CDSProveedorCODIGO_RET_IVA.Value;
          CDSRegimen.Open;
          CDSOPagoCONCEPTO_RET_IVA.Value:=Copy(UpperCase(CDSRegimenDETALLE.Value),1,25);
        end;
      //*************************************************************************************
      // Para las retenciones de Ing.Bruto....
      //*************************************************************************************
      if DMMain_FD.AgenteRetencionIB Then
        begin
          if CDSProveedorEXENTO_RETENCION_IB.Value='S' Then
            CDSOPagoRETIENE_IIBB.Value             :='N'
          else
            CDSOPagoRETIENE_IIBB.Value             :='S';
          if CDSOPagoRETIENE_IIBB.Value='S' Then
            begin
              CDSOPagoTASA_RETENCION_IIBB.AsFloat       := DMMain_FD.TasaRetencionIB;  // CDSProveedorMUESTRATASARETIIBB.AsFloat;
              CDSOPagoMINIMO_IMPONIBLE_RET_IIBB.AsFloat := DMMain_FD.Minim_Imp_IB_Rete;// CDSProveedorMUESTRAMINIMPONIRETIIBB.AsFloat;
              // Verifico si esta en el listado de Tasa Retenciones..
              // el valor de la tasa se carga al hacer un comprobante
              Perc := 0;
              Ret  := CDSOPagoTASA_RETENCION_IIBB.AsFloat;

//              DMMain_FD.QTasaPercep_Retencion_IIBB.Close;
//              DMMain_FD.QTasaPercep_Retencion_IIBB.ParamByName('cuit').AsString:= CDSOPagoCUIT.AsString;
//              DMMain_FD.QTasaPercep_Retencion_IIBB.Open;
//              if DMMain_FD.QTasaPercep_Retencion_IIBBCUIT.AsString<>'' Then
              if (DMMain_FD.TasaPerRetIIBB_CUIT(CDSOPagoCUIT.AsString, Perc, Ret, Desde, Hasta)) and
                 ((CDSOPagoFECHA.AsDateTime<= Hasta) and (CDSOPagoFECHA.AsDAteTime>= Desde))
              then
                CDSOPagoTASA_RETENCION_IIBB.AsFloat :=  Ret
              else
                begin
                  DMMain_FD.Consulta_PadronIIBB(CDSProveedorN_DE_CUIT.AsString,CDSOPagoFECHA.AsDateTime,Perc,Ret);
                  CDSOPagoTASA_RETENCION_IIBB.AsFloat:=Ret;
                end;
             // DMMain_FD.QTasaPercep_Retencion_IIBB.Close;
            end;
        end
      else
        begin
          CDSOPagoRETIENE_IIBB.Value               :='N';
          CDSOPagoTASA_RETENCION_IIBB.AsFloat      :=0;
          CDSOPagoMINIMO_IMPONIBLE_RET_IIBB.AsFloat:=0;
        end;
      //*************************************************************************************

      //*************************************************************************************
      //***** Para las retenciones de Ganancia **********
      //*************************************************************************************
      if DMMain_FD.AgenteRetencionGanancias Then
        begin
          QTraer_Pagos_Proveedor.Close;
          QTraer_Pagos_Proveedor.ParamByName('CODIGO').Value    := Dato;
          QTraer_Pagos_Proveedor.ParamByName('FECHA').AsDate    := CDSOPagoFECHA.AsDateTime;
          QTraer_Pagos_Proveedor.Open;//ExecProc;


          if (QTraer_Pagos_ProveedorEXENTO.AsVariant='N') or
             (QTraer_Pagos_ProveedorEXENTO.AsString='N') or
             (QTraer_Pagos_ProveedorEXENTO.AsWideString='N') Then
            CDSOPagoRETIENE_GANACIAS.Value:='S'
          else
            CDSOPagoRETIENE_GANACIAS.Value:='N';
          // sin No es Inscripot en IVA saco Ganacias *******
          if CDSOPagoTIPOIVA.Value<>1 Then
            CDSOPagoRETIENE_GANACIAS.Value:='N';

          // Busca Los Comprobantes de OP si deben retener ganancias
          QOPagoExcluidaGanacia.Close;
          QOPagoExcluidaGanacia.ParamByName('id').Value:=CDSOPagoID_TIPOCOMPROBANTE.Value;
          QOPagoExcluidaGanacia.Open;
          if Not(QOPagoExcluidaGanacia.IsEmpty) then
            CDSOPagoRETIENE_GANACIAS.Value:='N';
          QOPagoExcluidaGanacia.Close;
          //*************************************************************************************
          // Verifico si le corresopnde Retencion de Ganacia
          if CDSOPagoRETIENE_GANACIAS.Value='S' Then
            begin
              // este es el Total de netos gravados del mes
              CDSOPagoTOTAL_PAGOS_DEL_MES.AsFloat          := QTraer_Pagos_ProveedorTOTAL.AsFloat;
              // total de impuestos pagados
              CDSOPagoTOTAL_RETENIDO_MES.AsFloat           := QTraer_Pagos_ProveedorPAGOS_ANTERIORES.AsFloat;
              CDSOPagoTASA_RETENCION_GANACIA.AsFloat       := QTraer_Pagos_ProveedorTASA.AsFloat;
              CDSOPagoMINIMO_NO_IMPONIBLE_GANANCIA.AsFloat := QTraer_Pagos_ProveedorMINIMO_NO_IMPONIBLE.AsFloat;
              CDSOPagoCODIGO_REGIMENA_GANANCIA.Value       := QTraer_Pagos_ProveedorCODIGO_REGIMEN.AsInteger;
              CDSOPagoCONCEPTO_RETENCION_GANACIA.Value     := QTraer_Pagos_ProveedorCONCEPTO.AsString;
              CDSOPagoIMPUESTO_MINIMO_GANANCIA.AsFloat     := QTraer_Pagos_ProveedorIMPUESTO_MINIMO.AsFloat;
              CDSOPagoRET_GAN_X_ESCALA.Value               := QTraer_Pagos_ProveedorPOR_ESCALA.Value;
            end;
          QTraer_Pagos_Proveedor.Close;
        end;
      //*************************************************************************************
     //*************************************************************************************

      IF PerciveIva = 'S' THEN
        BEGIN
          Codigo_PercepcionIva := CDSProveedorId_Perc_Iva.Value;
          CDSTasaPercepIVA.Close;
          CDSTasaPercepIVA.Params.ParamByName('id').value := Codigo_PercepcionIva;
          CDSTasaPercepIVA.Open;
          CDSOPagoTASA_PERCEPCIONIVA.AsFloat := CDSTasaPercepIVATASA.AsFloat;
          Detalle_PercepcionIVA              := CDSTasaPercepIVADESCRIPCION.Value;
        END;
      IF PerciveIB = 'S' THEN
        BEGIN
          Codigo_PercepcionIB := CDSProveedorId_Perc_IBB.Value;
          CDSTasaPercepIIBB.Close;
          CDSTasaPercepIIBB.Params.ParamByName('id').value := Codigo_PercepcionIB;
          CDSTasaPercepIIBB.Open;
          CDSOPagoTASA_PERCEPCIONIB.AsFloat := CDSTasaPercepIIBBTASA.AsFloat;
          Detalle_PercepcionIB              := CDSTasaPercepIIBBDESCRIPCION.Value;
        END;
      CDSInscripcion.Close;
      CDSInscripcion.Params.ParamByName('Codigo').Value := CDSOPagoTipoIva.Value;
      CDSInscripcion.Open;
      IF NOT (CDSInscripcion.IsEmpty) THEN
        CDSOPagoDESGLOZAIVA.Value := CDSInscripcionDISCRIMINAIVA.Value;
      CDSInscripcion.Close;
      // Para tomar el ultimo numero de Comprobante
      IF CDSOPago.State = dsInsert THEN
        UltimoComprobante;
      FormOPago_2.BuscarPendientes.Execute;
      Result := True;
      FormOPago_2.TraerCtaCte.Execute;
    END
  ELSE
    Result := False;
END;

FUNCTION TDatosOPago.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      Result := True;
      CDSOPagoID_TIPOCOMPROBANTE.Clear;
      CDSOPagoMUESTRACOMPROBANTE.Clear;
      CDSOPagoSUCOP.Value   :='';
      CDSOPagoNUMEROOP.Value:='';
      CDSOPagoMuestraSucursal.Value := CDSSucursalDetalle.Value;
      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      CDSBuscaComprob.Open;
      if CDSBuscaComprob.RecordCount=1 Then
        begin
          DatosOPago.CDSOPagoID_TIPOCOMPROBANTESetText(DatosOPago.CDSOPagoID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          FormOPago_2.RxDBECodigo.SetFocus;
        end
      else
        begin
          CDSBuscaComprob.Filter:='DEFECTO = ''S'' ';
          CDSBuscaComprob.Filtered:=True;
          CDSBuscaComprob.First;
          DatosOPago.CDSOPagoID_TIPOCOMPROBANTESetText(DatosOPago.CDSOPagoID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
        end;
      CDSBuscaComprob.Close;
      CDSBuscaComprob.Filter:='';
      CDSBuscaComprob.Filtered:=False;
    END
  ELSE
    BEGIN
      Result := False;
      CDSOPagoMuestraSucursal.Value := '';
    END;
END;


FUNCTION TDatosOPago.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('Id').Value  := dato;
  QComprob.ParamByName('suc').Value := CDSOPagoSUCURSAL.Value;
  QComprob.Open;

  FormOPago_2.BuscarPendientes.Execute;

  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      FormOPago_2.GrupoOpa := -1;
      //*****************************************************************************
      // Seccion Nueva , asigna la caja segun el comprobante seleccionado  10/12/2012
      //*****************************************************************************
      if (TForm(Self.Owner)).Owner.Name <>'FormLecturaXML' then
        begin
          if (QComprobCAJA_DEFECTO.AsString<>'') and (QComprobCAJA_DEFECTO.Value>0) then
            FormOPago_2.CajaPorDefecto:=QComprobCAJA_DEFECTO.Value
          else
            begin
              if (TForm(Self.Owner)).Owner.Name<>'FormCajaResumen' then
                FormOPago_2.CajaPorDefecto:=DMMain_FD.CajaSeleccionada;
            end;
        end;
      //*****************************************************************************
      //*****************************************************************************
      CDSOPagoMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSOPagoLETRAOP.Value            := QComprobLETRA.Value;
      CDSOPagoTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSOPagoCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;

      // aca veo de que grupo de comprobantes es la Orden de pago
      if DMMain_FD.HayFiltros then
        begin
          FormOPago_2.GrupoOpa  :=  DMMain_FD.GrupoCpbteCompras(Dato);

//          DMMain_FD.QGrupoCpbteComp.Close;
//          DMMain_FD.QGrupoCpbteComp.ParamByName('id_comprobante').Value:=Dato;
//          DMMain_FD.QGrupoCpbteComp.Open;
//          if DMMain_FD.QGrupoCpbteComp.Fields[0].AsString<>'' then
//            FormOPago_2.GrupoOpa:=DMMain_FD.QGrupoCpbteComp.Fields[0].Value
//          else
//            begin
//              //ShowMessage('No se pudo determinar a que grupo pertenece el Comprobante');
//              FormOPago_2.GrupoOpa := -1;
//            end;
//          DMMain_FD.QGrupoCpbteComp.Close;
        end;
    END
  ELSE
    BEGIN
      Result := False;
      CDSOPagoMUESTRACOMPROBANTE.Value := '';
      CDSOPagoLETRAOP.Value            := '';
      CDSOPagoTIPOCPBTE.Value          := '';
      CDSOPagoCLASECPBTE.Value         := '';
    END;
  if ( Trim(CDSOPagoCODIGO.Value)<>'') and ( Trim(CDSOPagoNOMBRE.Value)<>'') then
    FormOPago_2.BuscarPendientes.Execute;
  FormOPago_2.lbGrupo.Caption:='Grupo('+intToStr(FormOPago_2.GrupoOpa)+')';

END;


PROCEDURE TDatosOPago.CalcularAplicaciones;
var NetoAux, IVAAux, IvaAuxRetIva, MinimoImpGanancias :Extended;
FacM:Boolean;
ValorAux:Int64;
BEGIN
  //CDSOPagoRETIENE_IVA.AsString :='N';
  FacM :=False;
  if CDSMovAplicaCCCompra.RecordCount>0 then
    begin
      NetoAux      := 0;
      IVAAux       := 0;
      IvaAuxRetIva := 0;
      IF CDSOPago.State = dsBrowse THEN CDSOPago.Edit;
      CDSOPagoSALDO_APLICAR.AsFloat  := CDSOPagoTOTAL.AsFloat;
      SumaAplicaciones               := 0;
      CDSMovAplicaCCCompra.DisableControls;
      CDSMovAplicaCCCompra.First;
      WHILE NOT (CDSMovAplicaCCCompra.Eof) DO
        BEGIN
          if (CDSMovAplicaCCCompraTIPOCPBTE.Value='FC') or (CDSMovAplicaCCCompraTIPOCPBTE.Value='ND') then
          IF CDSOPago.State = dsBrowse THEN
              CDSOPago.Edit;
          if (CDSMovAplicaCCCompraAPLICA_NROCPBTE.AsString[1]='M') and (CDSOPagoRETIENE_IVA.AsString='N') then
            begin
              FacM                        :=True;
              CDSOPagoRETIENE_IVA.AsString:='S';
            end;
          SumaAplicaciones                 := SumaAplicaciones + CDSMovAplicaCCCompraIMPORTE.AsFloat;
          CDSOPagoSALDO_APLICAR.AsFloat    := CDSOPagoTOTAL.AsFloat - SumaAplicaciones;
          ValorAux                         := Trunc(CDSOPagoSALDO_APLICAR.AsFloat * 100);
          IF Trunc(CDSOPagoSALDO_APLICAR.AsFloat * 100) <= 0 THEN
            CDSOPagoSALDO_APLICAR.AsFloat  := 0;
          NetoAux     := NetoAux + CDSMovAplicaCCCompraAPLICA_NETO.AsFloat;
          IVAAux      := IVAAux + CDSMovAplicaCCCompraAPLICA_IVA.AsFloat;

          // **** Acumulo los iva Para La retenciones de Iva *************
          if (CDSOPagoRETIENE_IVA.Value='S') and (CDSMovAplicaCCCompraAPLICA_NETO.AsFloat>FormOPago_2.MinimoRetIVA) Then
            IvaAuxRetIva   := IvaAuxRetIva + CDSMovAplicaCCCompraAPLICA_IVA.AsFloat;
          // ***********************************************************
          CDSMovAplicaCCCompra.Next;
        END;

      CDSOPagoSALDO_APLICAR.AsFloat      := CDSOPagoTOTAL.AsFloat - SumaAplicaciones;
      IF Trunc(CDSOPagoSALDO_APLICAR.AsFloat * 100) <= 0 THEN
        CDSOPagoSALDO_APLICAR.AsFloat  := 0;
      CDSOPagoTOTAL_NETO_GRAVADO.AsFloat := NetoAux;
      CDSOPagoIVA_ACUMULADO.AsFloat      := IVAAux;
      //********* Retenciones de Ganacia ******************
      // aca inicio el control del impuesto de las Ganacias
      // SI NO SE COBRA GANACIAS ENTONCES no se ejecuta ***
      //***************************************************
      CDSOPagoGANC_ESCALA_DESDE.AsFloat            := 0;
      CDSOPagoGANC_ESCALA_HASTA.AsFloat            := 0;
      CDSOPagoGANC_ESCALA_VARIAC.AsFloat           := 0;
      CDSOPagoGANC_ESCALA_FIJO.AsFloat             := 0;
      CDSOPagoGANC_ESCALA_EXCED.AsFloat            := 0;
      MinimoImpGanancias                           := RoundTo(CDSOPagoIMPUESTO_MINIMO_GANANCIA.AsFloat,-2);
      NetoAux                                      := 0;
      if (CDSOPagoRETIENE_GANACIAS.AsString[1]='S') and (CDSOPago.State=dsInsert) Then
        BEGIN
          // aca calcuolo el impuesto a las ganacias
          if (CDSOPagoTOTAL_NETO_GRAVADO.AsFloat + CDSOPagoTOTAL_PAGOS_DEL_MES.AsFloat)>(CDSOPagoMINIMO_NO_IMPONIBLE_GANANCIA.AsFloat) Then
            NetoAux:= (CDSOPagoTOTAL_NETO_GRAVADO.AsFloat +
                       CDSOPagoTOTAL_PAGOS_DEL_MES.AsFloat -
                       CDSOPagoMINIMO_NO_IMPONIBLE_GANANCIA.AsFloat) * CDSOPagoTASA_RETENCION_GANACIA.AsFloat * 0.01
          else
            NetoAux:=0;

          if FacM then  // Para que tome SOlo el Importe de las facturas M
            NetoAux:=(CDSOPagoTOTAL_NETO_GRAVADO.AsFloat - CDSOPagoMINIMO_NO_IMPONIBLE_GANANCIA.AsFloat) *
                      CDSOPagoTASA_RETENCION_GANACIA.AsFloat * 0.01;

          FormOPago_2.ceImpuestoCalculado.Value := NetoAux;

          if CDSOPagoTOTAL_RETENIDO_MES.AsFloat>0 Then
            begin
              FormOPago_2.ceImpuestoAPagar.Value := FormOPago_2.ceImpuestoCalculado.Value - CDSOPagoTOTAL_RETENIDO_MES.AsFloat;
              MinimoImpGanancias                 := 0;
            end
          else
            FormOPago_2.ceImpuestoAPagar.Value := FormOPago_2.ceImpuestoCalculado.Value;

          if FormOPago_2.ceImpuestoAPagar.Value<=0 Then FormOPago_2.ceImpuestoAPagar.Value:=0;
          //******************************************************
          // calculo por escala...
          // Retencion de Ganacia Por Escala //////
          //******************************************************
          FormOPago_2.pnEscala.Visible  :=  CDSOPagoRET_GAN_X_ESCALA.Value='S';
          if CDSOPagoRET_GAN_X_ESCALA.Value='S' then
            begin

              NetoAux := CDSOPagoTOTAL_NETO_GRAVADO.AsFloat + CDSOPagoTOTAL_PAGOS_DEL_MES.AsFloat - CDSOPagoMINIMO_NO_IMPONIBLE_GANANCIA.AsFloat;
              //NetoAux := CDSOPagoTOTAL_NETO_GRAVADO.AsFloat - CDSOPagoMINIMO_NO_IMPONIBLE_GANANCIA.AsFloat;

              QEscalaRetenciones.Close;
              QEscalaRetenciones.ParamByName('codigo').Value := CDSOPagoCODIGO_REGIMENA_GANANCIA.Value;
              QEscalaRetenciones.ParamByName('Valor').Value  := NetoAux;
              QEscalaRetenciones.Open;


              FormOPago_2.ceImpuestoAPagar.Value           := ((( NetoAux - QEscalaRetencionesEXCEDENTE.ASFloat) * QEscalaRetencionesVARIA.AsFloat * 0.01) + QEscalaRetencionesFIJO.ASFloat) - CDSOPagoTOTAL_RETENIDO_MES.AsFloat;
              FormOPago_2.ceImpuestoCalculado.Value        := ((( NetoAux - QEscalaRetencionesEXCEDENTE.ASFloat) * QEscalaRetencionesVARIA.AsFloat * 0.01) + QEscalaRetencionesFIJO.ASFloat);// - CDSOPagoTOTAL_RETENIDO_MES.AsFloat;
              CDSOPagoTASA_RETENCION_GANACIA.ASFloat       := QEscalaRetencionesVARIA.AsFloat;
              CDSOPagoGANC_ESCALA_DESDE.AsFloat            := QEscalaRetencionesDESDE.AsFloat;
              CDSOPagoGANC_ESCALA_HASTA.AsFloat            := QEscalaRetencionesHASTA.AsFloat;
              CDSOPagoGANC_ESCALA_VARIAC.AsFloat           := QEscalaRetencionesVARIA.ASFloat;
              CDSOPagoGANC_ESCALA_FIJO.AsFloat             := QEscalaRetencionesFIJO.AsFloat;
              CDSOPagoGANC_ESCALA_EXCED.AsFloat            := QEscalaRetencionesEXCEDENTE.AsFloat;
              QEscalaRetenciones.Close;
            end;

          if (Trunc(FormOPago_2.ceImpuestoAPagar.Value*100)>= Trunc(MinimoImpGanancias*100)) and
             (Trunc(FormOPago_2.ceImpuestoAPagar.Value*100)>0) Then // Moneda3D(' ','0.00',CDSOPagoIMPUESTO_MINIMO_GANANCIA.AsFloat) Then
            begin
              if CDSRetGanancia.IsEmpty Then
                CDSRetGanancia.Insert
              ELSE
                CDSRetGanancia.Edit;

              CDSRetGananciaID_OP.Value                   := CDSOPagoID_OP.Value;
              CDSRetGananciaFECHA.AsDateTime              := CDSOPagoFECHA.AsDateTime;
              CDSRetGananciaCODIGO_PROVEEDOR.Value        := CDSOPagoCODIGO.Value;
              CDSRetGananciaCODIGO_REGIMEN.Value          := CDSOPagoCODIGO_REGIMENA_GANANCIA.Value;
              CDSRetGananciaCONCEPTO.Value                := CDSOPagoCONCEPTO_RETENCION_GANACIA.Value;
              CDSRetGananciaTASA.AsFloat                  := CDSOPagoTASA_RETENCION_GANACIA.AsFloat;
              CDSRetGananciaMINIMO_NO_IMPONIBLE.AsFloat   := CDSOPagoMINIMO_NO_IMPONIBLE_GANANCIA.AsFloat;
              CDSRetGananciaPAGOS_ACUMULADOS.AsFloat      := CDSOPagoTOTAL_NETO_GRAVADO.AsFloat +
                                                             CDSOPagoTOTAL_PAGOS_DEL_MES.AsFloat;// -
                                                             //CDSOPagoMINIMO_NO_IMPONIBLE_GANANCIA.AsFloat;
              if CDSOPagoRET_GAN_X_ESCALA.Value='S' then
                CDSRetGananciaPAGOS_ACUMULADOS.AsFloat    :=  CDSOPagoTOTAL_NETO_GRAVADO.AsFloat;// -

              CDSRetGananciaIMPUESTO_RETENIDO.AsFloat     := FormOPago_2.ceImpuestoAPagar.Value;
              CDSRetGananciaOBSERVACIONES.Value           := 'Sin Observaciones';
              CDSRetGananciaVALOR_MINIMO_IMPUESTO.AsFloat := CDSOPagoIMPUESTO_MINIMO_GANANCIA.AsFloat;
            end
          else
            begin
              if Not(CDSRetGanancia.IsEmpty) then
                 begin
                   CDSRetGananciaFECHA.Clear;
                   CDSRetGananciaCODIGO_PROVEEDOR.Value        := '';
                   CDSRetGananciaCODIGO_REGIMEN.Value          := -1;
                   CDSRetGananciaCONCEPTO.Value                := '';
                   CDSRetGananciaTASA.AsFloat                  := 0;
                   CDSRetGananciaMINIMO_NO_IMPONIBLE.AsFloat   := 0;
                   CDSRetGananciaPAGOS_ACUMULADOS.AsFloat      := 0;// -
                   CDSRetGananciaPAGOS_ACUMULADOS.AsFloat      := 0;

                   CDSRetGananciaIMPUESTO_RETENIDO.AsFloat     := 0;
                   CDSRetGananciaVALOR_MINIMO_IMPUESTO.AsFloat := 0;

                   if Not(CDSRetGanancia.IsEmpty) Then
                    CDSRetGanancia.delete;
                 end;
            end;
        END;
      if Trim(CDSRetGananciaID.AsString)<>'' then
        CDSOPagoRETENCION_GANACIA_GENERADO.Value:='S'
      else
        CDSOPagoRETENCION_GANACIA_GENERADO.Value:='N';

      if (Trunc(CDSOPagoTOTAL_NETO_GRAVADO.AsFloat*100) >= Trunc(CDSOPagoMINIMO_IMPONIBLE_RET_IIBB.AsFloat*100)) Then
        FormOPago_2.Agregar_Ret_IngBr.Enabled:=True
      else
        FormOPago_2.Agregar_Ret_IngBr.Enabled:=False;
      CDSMovAplicaCCCompra.EnableControls;

      if CDSOPagoRETIENE_IVA.Value='N' then
        if RetenerIva then
          CDSOPagoRETIENE_IVA.Value:='S';
      //**************************************************
      // ******* Retencion de IVA ************************
      //**************************************************
      if (CDSOPagoIVA_ACUMULADO.AsFloat>0) and (CDSOPagoRETIENE_IVA.Value='S') Then
        begin
          if CDSRetIVA.IsEmpty Then
            CDSRetIVA.Insert
          ELSE
            CDSRetIVA.Edit;
          CDSRetIVABASE_IMPONIBLE.AsFloat   :=IvaAuxRetIva;
          CDSRetIVAIMPUESTO_RETENIDO.AsFloat:=CDSRetIVABASE_IMPONIBLE.AsFloat * CDSRetIVATASA.AsFloat*0.01;
        end
      else
        if Not(CDSRetIVA.IsEmpty) Then CDSRetIVA.delete;
      //**************************************************
      //**************************************************
      FormOPago_2.pnRetIVA.Enabled         := CDSOPagoRETIENE_IVA.Value='S';
      FormOPago_2.ceTotalAplicaciones.Text := FormatFloat(MascaraGral,SumaAplicaciones);
    end
  else
    begin
      CDSOPagoSALDO_APLICAR.AsFloat            := CDSOPagoTOTAL.AsFloat;
      CDSOPagoTOTAL_NETO_GRAVADO.AsFloat       := 0;
      CDSOPagoRETENCION_GANACIA_GENERADO.Value :='N';
      if Not(CDSRetGanancia.IsEmpty) then
        begin
          CDSRetGananciaFECHA.Clear;
          CDSRetGananciaCODIGO_PROVEEDOR.Value        := '';
          CDSRetGananciaCODIGO_REGIMEN.Value          := -1;
          CDSRetGananciaCONCEPTO.Value                := '';
          CDSRetGananciaTASA.AsFloat                  := 0;
          CDSRetGananciaMINIMO_NO_IMPONIBLE.AsFloat   := 0;
          CDSRetGananciaPAGOS_ACUMULADOS.AsFloat      := 0;// -
          CDSRetGananciaPAGOS_ACUMULADOS.AsFloat      := 0;
          CDSRetGananciaIMPUESTO_RETENIDO.AsFloat     := 0;
          CDSRetGananciaVALOR_MINIMO_IMPUESTO.AsFloat := 0;
        end;
     // CDSOPagoMINIMO_NO_IMPONIBLE_GANANCIA.Value := 0;
     // CDSOPagoIMPUESTO_MINIMO_GANANCIA.Value     := 0;
     // CDSOPagoTASA_RETENCION_GANACIA.Value       := 0;
      FormOPago_2.ceTotalAplicaciones.Value      := 0;
      FormOPago_2.ceImpuestoCalculado.Value      := 0;
     // if Not(CDSRetGanancia.IsEmpty) then
    //    CDSRetGanancia.Delete;

    end;
END;

PROCEDURE TDatosOPago.SumarAplicaciones;
VAR CDSClon:TClientDataSet;
BEGIN
  SumaAplicaciones := 0;
  CDSClon:=TClientDataSet.Create(self);
  CDSClon.CloneCursor(CDSMovAplicaCCCompra,True);
  CDSClon.First;
  WHILE NOT (CDSClon.Eof) DO
    BEGIN
      SumaAplicaciones               := SumaAplicaciones + CDSClon.FieldByName('IMPORTE').AsFloat;
      CDSClon.Next;
    END;
  FormOPago_2.ceTotalAplicaciones.Text := FormatFloat(MascaraGral,SumaAplicaciones);
  CDSClon.Close;
  FreeAndNil(CDSClon);
END;

procedure TDatosOPago.SumarNetosAcumulados;
begin
  if Not(CDSOPago.IsEmpty) then
    begin
      QTraer_Pagos_Proveedor.Close;
      QTraer_Pagos_Proveedor.ParamByName('CODIGO').Value    := CDSOPagoCODIGO.AsString;
      QTraer_Pagos_Proveedor.ParamByName('FECHA').AsDate    := CDSOPagoFECHA.AsDateTime;
      QTraer_Pagos_Proveedor.Open;//ExecProc;

      if (QTraer_Pagos_ProveedorEXENTO.AsString='N') or
         (QTraer_Pagos_ProveedorEXENTO.AsString='N') or
         (QTraer_Pagos_ProveedorEXENTO.AsWideString='N') Then
        CDSOPagoRETIENE_GANACIAS.Value:='S'
      else
        CDSOPagoRETIENE_GANACIAS.Value:='N';
      // sin No es Inscripot en IVA saco Ganacias *******
      if CDSOPagoTIPOIVA.Value<>1 Then
        CDSOPagoRETIENE_GANACIAS.Value:='N';
      // Busca Los Comprobantes de OP si deben retener ganancias
      QOPagoExcluidaGanacia.Close;
      QOPagoExcluidaGanacia.ParamByName('id').Value:=CDSOPagoID_TIPOCOMPROBANTE.Value;
      QOPagoExcluidaGanacia.Open;
      if Not(QOPagoExcluidaGanacia.IsEmpty) then
        CDSOPagoRETIENE_GANACIAS.Value:='N';
      QOPagoExcluidaGanacia.Close;
      //*************************************************************************************
      // Verifico si le corresopnde Retencion de Ganacia
      if CDSOPagoRETIENE_GANACIAS.Value='S' Then
        begin
          // este es el Total de netos gravados del mes
          CDSOPagoTOTAL_PAGOS_DEL_MES.AsFloat          := QTraer_Pagos_ProveedorTOTAL.AsFloat;
          // total de impuestos pagados
          CDSOPagoTOTAL_RETENIDO_MES.AsFloat           := QTraer_Pagos_ProveedorPAGOS_ANTERIORES.AsFloat;
          CDSOPagoTASA_RETENCION_GANACIA.AsFloat       := QTraer_Pagos_ProveedorTASA.AsFloat;
          CDSOPagoMINIMO_NO_IMPONIBLE_GANANCIA.AsFloat := QTraer_Pagos_ProveedorMINIMO_NO_IMPONIBLE.AsFloat;
          CDSOPagoCODIGO_REGIMENA_GANANCIA.Value       := QTraer_Pagos_ProveedorCODIGO_REGIMEN.AsInteger;
          CDSOPagoCONCEPTO_RETENCION_GANACIA.Value     := QTraer_Pagos_ProveedorCONCEPTO.AsString;
          CDSOPagoIMPUESTO_MINIMO_GANANCIA.AsFloat     := QTraer_Pagos_ProveedorIMPUESTO_MINIMO.AsFloat;
          CDSOPagoRET_GAN_X_ESCALA.Value               := QTraer_Pagos_ProveedorPOR_ESCALA.Value;
        end;
      QTraer_Pagos_Proveedor.Close;
    end;
end;

procedure TDatosOPago.SumarNetosAplicados;
var NetoAux{,IVAAux}:Extended;
BEGIN
  NetoAux:=0;
//  IVAAux :=0;
  SumaAplicaciones:=0;
 // CDSOPagoSALDO_APLICAR.AsFloat    := CDSOPagoTOTAL.AsFloat;
  CDSMovAplicaCCCompra.DisableControls;
  CDSMovAplicaCCCompra.First;
  WHILE NOT (CDSMovAplicaCCCompra.Eof) DO
    BEGIN
    //  if (CDSMovAplicaCCCompraAPLICA_NROCPBTE.AsString[1]='M') then
    //    CDSOPagoRETIENE_IVA.AsString:='S';

      //SumaAplicaciones := SumaAplicaciones + CDSMovAplicaCCCompraIMPORTE.AsFloat;

     // CDSOPagoSALDO_APLICAR.AsFloat    := CDSOPagoTOTAL.AsFloat - SumaAplicaciones;
     // IF Trunc(CDSOPagoSALDO_APLICAR.AsFloat*100) = 0 THEN
      //  CDSOPagoSALDO_APLICAR.AsFloat  := 0;
      if CDSMovAplicaCCCompraAPLICA_TIPOCPBTE.Value<>'AJ' then
         NetoAux := NetoAux + CDSMovAplicaCCCompraAPLICA_NETO.AsFloat;
    //  IVAAux  := IVAAux + CDSMovAplicaCCCompraAPLICA_IVA.AsFloat;
      CDSMovAplicaCCCompra.Next;
    END;
  CDSMovAplicaCCCompra.EnableControls;

 if MessageDlg('Neto calculado sin Ajustes :'+FormatFloat(',0.00',NetoAux)+' aplica el nuevo Monto..?',mtInformation,mbYesNo,0,mbNo)=mrYes then
   begin
     QGravarNetosAPlicados.Close;
     QGravarNetosAPlicados.ParamByName('neto').Value := NetoAux;
     QGravarNetosAPlicados.ParamByName('id').Value   := CDSOPagoID_OP.Value;
     QGravarNetosAPlicados.ExecSQL;
     QGravarNetosAPlicados.Close;

   end;

end;

procedure TDatosOPago.AplicaMascaraNumerica;
begin
//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='ORDENPAGO';
//  DMMain_FD.QOpciones.Open;
//  MascaraGral:=DMMain_FD.QOpciones.Fields[0].AsString;
//  DMMain_FD.QOpciones.Close;
  MascaraGral :=  DMMain_FD.MascaraOrdenPago;
  TFloatField(CDSOPagoSALDO_APLICAR).EditFormat         :=MascaraGral;
  TFloatField(CDSOPagoTOTAL).EditFormat                 :=MascaraGral;
  TFloatField(CDSMovAplicaCCCompraIMPORTE).EditFormat   :=MascaraGral;
  TFloatField(CDSMovCCCompraDEBE).EditFormat            :=MascaraGral;
  TFloatField(CDSMovCCCompraHABER).EditFormat           :=MascaraGral;
  TFloatField(CDSMovCCCompraSALDO).EditFormat           :=MascaraGral;
  TFloatField(CDSMovCCCompraMUESTRAAPAGAR).EditFormat   :=MascaraGral;
  TFloatField(CDSOPagoDESCUENTO).EditFormat             :=MascaraGral;
  TFloatField(CDSOPagoDESCUENTO_PORCENTAJE).EditFormat  :=MascaraGral;
  TFloatField(CDSOPagoTOTAL_NETO).EditFormat            :=MascaraGral;

  //TFloatField(CDSOPagoSUMAAPLICACIONES).EditFormat       :=MascaraGral;
  TFloatField(CDSRetIngBrCabTOTAL).EditFormat           :=MascaraGral;
  TFloatField(CDSRetIngBrDetBASEIMPONIBLE).EditFormat   :=MascaraGral;
  TFloatField(CDSRetIngBrDetIMPORTE).EditFormat         :=MascaraGral;
  TFloatField(CDSRetIngBrDetPORCENTAJE).EditFormat      :=MascaraGral;
  TFloatField(CDSRetIngBrDetRETENCION).EditFormat       :=MascaraGral;
  TFloatField(CDSOPagoTOTAL_NETO_GRAVADO).EditFormat    :=MascaraGral;
  TFloatField(CDSOPagoTOTAL_PAGOS_DEL_MES).EditFormat   :=MascaraGral;

  TFloatField(CDSOPagoSALDO_APLICAR).DisplayFormat        :=MascaraGral;
  TFloatField(CDSOPagoTOTAL).DisplayFormat                :=MascaraGral;
  TFloatField(CDSOPagoTOTAL_NETO_GRAVADO).DisplayFormat   :=MascaraGral;
  TFloatField(CDSOPagoTOTAL_PAGOS_DEL_MES).DisplayFormat  :=MascaraGral;

  TFloatField(CDSMovAplicaCCCompraIMPORTE).DisplayFormat  :=MascaraGral;
  TFloatField(CDSMovCCCompraDEBE).DisplayFormat           :=MascaraGral;
  TFloatField(CDSMovCCCompraHABER).DisplayFormat          :=MascaraGral;
  TFloatField(CDSMovCCCompraSALDO).DisplayFormat          :=MascaraGral;
  TFloatField(CDSMovCCCompraMUESTRAAPAGAR).DisplayFormat  :=MascaraGral;

  TFloatField(CDSOPagoDESCUENTO).DisplayFormat            :=MascaraGral;
  TFloatField(CDSOPagoDESCUENTO_PORCENTAJE).DisplayFormat :=MascaraGral;
  TFloatField(CDSOPagoTOTAL_NETO).DisplayFormat           :=MascaraGral;

  //TFloatField(CDSOPagoSUMAAPLICACIONES).DisplayFormat      :=MascaraGral;
  TFloatField(CDSRetIngBrCabTOTAL).DisplayFormat          :=MascaraGral;
  TFloatField(CDSRetIngBrDetBASEIMPONIBLE).DisplayFormat  :=MascaraGral;
  TFloatField(CDSRetIngBrDetIMPORTE).DisplayFormat        :=MascaraGral;
  TFloatField(CDSRetIngBrDetPORCENTAJE).DisplayFormat     :=MascaraGral;
  TFloatField(CDSRetIngBrDetRETENCION).DisplayFormat      :=MascaraGral;

end;


PROCEDURE TDatosOPago.DataModuleDestroy(Sender: TObject);
BEGIN
  DatosOPago := NIL;
END;

PROCEDURE TDatosOPago.CDSOPagoNUMEROOPSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  Sender.AsString        := Copy('00000000', 1, 8 - Length(text)) + Text;
  CDSOPagoNROCPBTE.Value := CDSOPagoLETRAOP.Value + CDSOPagoSUCOP.Value + CDSOPagoNUMEROOP.Value;

  //ShowMessage(DMMain_FD.TraerNroOpFree(CDSOPagoSUCOP.AsString,CDSOPagoNUMEROOP.AsString, CDSOPagoCLASECPBTE.AsString,CDSOPagoLETRAOP.AsString, CDSOPagoSUCURSAL.AsInteger));

  if DMMain_FD.VerificaNroOP(CDSOPagoSUCOP.AsString,CDSOPagoNUMEROOP.AsString, CDSOPagoCLASECPBTE.AsString,CDSOPagoLETRAOP.AsString, CDSOPagoSUCURSAL.AsInteger) then
    raise Exception.Create('Comprobante existente... Verifique....');

END;

procedure TDatosOPago.CDSOPagoBeforePost(DataSet: TDataSet);
var i:Integer;
begin
 //For i:=0 to CDSOPago.FieldCount-1 do
 //   begin
 //     if CDSOPago.Fields[i].Required Then
 //       ShowMessage(CDSOPago.Fields[i].FieldName+' : '+
 //                   CDSOPago.Fields[i].AsString);
 //   end;
end;

PROCEDURE TDatosOPago.CDSOPagoCODIGOSetText(Sender: TField;
  CONST Text: STRING);
VAR
  Aux: STRING;
BEGIN
  IF  (Text<>'') and (Text[1]<>#13) Then
    begin
      CodigoInUse := CDSOPagoCODIGO.Value;
      Aux := Text;
      Aux := Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString := Aux;
      IF NOT (AsignarProveedor(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Proveedor No válido');
          Sender.AsString := '';
          FormOPago_2.RxDBECodigo.SetFocus;
        END;
  // agrego esta linea para que no haga un efecto visual falso del dato entrado
  // si no se veia sin 00000 adelante....
      FormOPago_2.RxDBECodigo.Text := Aux;
      IF (CDSOPagoCODIGO.Value<>'') and (CodigoInUse<>'') THEN
        IF CodigoInUse <> Sender.AsString THEN
          BEGIN
            //ShowMessage('El cambio de Provedor borrara todas las apliaciones echas en este comprobante');
            CDSMovAplicaCCCompra.First;
            WHILE NOT (CDSMovAplicaCCCompra.Eof) DO
              BEGIN
                CDSMovAplicaCCCompra.Delete;
                CDSMovAplicaCCCompra.First;
              END;
          END;
    end;
END;

procedure TDatosOPago.CDSOPagoDESCUENTOSetText(Sender: TField;
  const Text: string);
begin
 CDSMovAplicaCCCompra.First;
 WHILE NOT (CDSMovAplicaCCCompra.Eof) DO
    BEGIN
      CDSMovAplicaCCCompra.Delete;
      CDSMovAplicaCCCompra.First;
    END;

  Sender.AsString:=Text;
  CDSOPagoDESCUENTO_PORCENTAJE.AsFloat :=(Sender.AsFloat/CDSOPagoTOTAL_NETO.AsFloat) * 100;
  CDSOPagoTOTAL.AsFloat            := CDSOPagoTOTAL_NETO.AsFloat - Sender.AsFloat;
  CDSOPagoSALDO_APLICAR.AsFloat    := CDSOPagoTOTAL.AsFloat;
end;

procedure TDatosOPago.CDSOPagoDESCUENTO_PORCENTAJESetText(Sender: TField;
  const Text: string);
begin
  CDSMovAplicaCCCompra.First;
  WHILE NOT (CDSMovAplicaCCCompra.Eof) DO
    BEGIN
      CDSMovAplicaCCCompra.Delete;
      CDSMovAplicaCCCompra.First;
    END;

  Sender.AsString:=Text;
  CDSOPagoDESCUENTO.AsFloat     := Sender.AsFloat * 0.01 * CDSOPagoTOTAL_NETO.AsFloat;
  CDSOPagoTOTAL.AsFloat         := CDSOPagoTOTAL_NETO.AsFloat - CDSOPagoDESCUENTO.AsFloat;
  CDSOPagoSALDO_APLICAR.AsFloat := CDSOPagoTOTAL.AsFloat;
end;

procedure TDatosOPago.CDSOPagoFECHASetText(Sender: TField; const Text: string);
begin
  if Text<>''  then
    begin
      Sender.AsString:=Text;
    //  if DMMain_FD.con then
      DMMain_FD.QOpciones.Close;
      DMMain_FD.QOpciones.ParamByName('opcion').AsString:='CONTFECHAVTA';
      DMMain_FD.QOpciones.Open;
      if DMMain_FD.QOpciones.Fields[0].AsString='Si' Then
        begin
          if ((Sender.AsDateTime<Date) or (Sender.AsDateTime>Date)) Then
            begin
              if MessageDlg('Fecha Fuera de Rango... Acepta Igual???',mtConfirmation,mbYesNo,0,mbNo)=mrNo then
                begin
                  CDSOPagoFECHA.Clear;
                  Sender.AsDateTime:=Date;
                  IF (FormOPago_2.Visible) and (FormOPago_2.dbeFecha.Enabled) Then
                    FormOPago_2.dbeFecha.SetFocus;
                end;
            end;
        end;
       DMMain_FD.QOpciones.Close;

    end;
end;

PROCEDURE TDatosOPago.CDSOPagoSUCURSALSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  IF  (Text<>'') and (Text[1]<>#13) Then
  begin
    Sender.AsString := Text;
    IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
      BEGIN
        Sender.AsString := '';
        ShowMessage('Codigo Sucursal No Valido');
        SysUtils.Abort;
      END
    ELSE IF CDSOPago.State = dsInsert THEN
      UltimoComprobante;
  end;
END;


PROCEDURE TDatosOPago.CDSMovAplicaCCCompraAfterPost(DataSet: TDataSet);
BEGIN
  IF CDSMovCCCompra.Locate('Id_MovCCCompra',CDSMovAplicaCCCompraID_MOVCCCOMPRA.Value, []) THEN
    BEGIN
      CDSMovCCCompra.Edit;
      CDSMovCCCompraSALDO.AsFloat := CDSMovCCCompraSALDO.AsFloat - CDSMovAplicaCCCompraIMPORTE.AsFloat;
      IF Trunc(CDSMovCCCompraSALDO.AsFloat*100)<=0 THEN
        CDSMovCCCompraSALDO.AsFloat := 0;
      CDSMovCCCompra.Post;
    END;
  CalcularAplicaciones;
  // generar Retencion IIBB Automatica
  if (DatosOPago.CDSOPagoRETIENE_IIBB.Value='S') and (ControlarRetIIBB) then
    begin
      if Not(DatosOPago.CDSRetIngBrCab.IsEmpty) then
        begin
          FormOPago_2.Borrar_Ret_IngBr.Execute;
          FormOPago_2.Agregar_Ret_IngBr.Execute;
          FormOPago_2.Confirma_Ret_IngBr.Execute;
        end
      else
        begin
          FormOPago_2.Agregar_Ret_IngBr.Execute;
          FormOPago_2.Confirma_Ret_IngBr.Execute;
        end;
    end;

END;

procedure TDatosOPago.CDSMovAplicaCCCompraAfterScroll(DataSet: TDataSet);
begin
  QAplicado.Close;
  QAplicado.ParamByName('id').Value     := CDSMovAplicaCCCompraID_MOVCCCOMPRA.Value;
  QAplicado.ParamByName('idcpbte').Value:= CDSMovAplicaCCCompraID_CPBTE.Value;
  QAplicado.Open;
end;

PROCEDURE TDatosOPago.CDSMovAplicaCCCompraAfterDelete(DataSet: TDataSet);
BEGIN
   CalcularAplicaciones;
   if DatosOPago.CDSOPagoRETIENE_IIBB.Value='S' then
    begin
      if Not(DatosOPago.CDSRetIngBrCab.IsEmpty) then
        begin
          FormOPago_2.Borrar_Ret_IngBr.Execute;
          if DatosOPago.CDSMovAplicaCCCompra.RecordCount>0 then
            begin
              FormOPago_2.Agregar_Ret_IngBr.Execute;
              FormOPago_2.Confirma_Ret_IngBr.Execute;
            end;
        end
      else
        begin
          if DatosOPago.CDSMovAplicaCCCompra.RecordCount>0 then
            begin
              FormOPago_2.Agregar_Ret_IngBr.Execute;
              FormOPago_2.Confirma_Ret_IngBr.Execute;
            end;
        end;
    end;
  if (DatosOPago.CDSRetGananciaIMPUESTO_RETENIDO.Value<=0) and (Not(CDSRetGanancia.IsEmpty)) Then
    CDSRetGanancia.Delete;
END;

PROCEDURE TDatosOPago.CDSMovAplicaCCCompraBeforeDelete(DataSet: TDataSet);
BEGIN
  //  wwCDSOPagoSALDO_APLICAR.Value:=wwCDSOPagoSALDO_APLICAR.Value+wwCDSMovAplicaCCCompraIMPORTE.Value;
  IF CDSMovCCCompra.Locate('Id_MovCCCompra',
    CDSMovAplicaCCCompraID_MOVCCCOMPRA.Value, []) THEN
    BEGIN
      CDSMovCCCompra.Edit;
      CDSMovCCCompraSALDO.AsFloat := CDSMovCCCompraSALDO.AsFloat +
                                     CDSMovAplicaCCCompraIMPORTE.AsFloat;
      if CDSMovCCCompraSALDO.AsFloat>CDSMovCCCompraHABER.AsFloat then
        CDSMovCCCompraSALDO.AsFloat:=CDSMovCCCompraHABER.AsFloat;
       CDSMovCCCompra.Post;
    END;
    // generar Retencion IIBB Automatica
  
END;

PROCEDURE TDatosOPago.CDSOPagoNewRecord(DataSet: TDataSet);
BEGIN
  CDSOPagoID_OP.Value               := IBGId_Op.IncrementFD(1);
  CDSOPagoFECHA.AsDateTime          := Date;
  CDSOPagoSALDO_APLICAR.AsFloat     := 0;
  CDSOPagoTOTAL.AsFloat             := 0;
  CDSOPagoANULADO.Value             := 'N';
  //CDSOPagoSumaAplicaciones.Value := 0;
  CDSOPagoDESCUENTO.AsFloat         := 0;
  CDSOPagoNC_ID_FC.Value            := 0;
  CDSOPagoNC_LETRAFAC.Value         := '';
  CDSOPagoNC_SUCFAC.Value           := '';
  CDSOPagoNC_NUMEROFAC.Value        := '';
  CDSOPagoCODIGO.Value              := '';
  CDSOPagoPERMITIR_MODIF_TOTAL.Value:= 'N';
  CDSOPagoRETIENE_GANACIAS.Value    := 'N';
  CDSOPagoRETIENE_IIBB.Value        := 'N';
  CDSOPagoRETIENE_IVA.Value         := 'N';
  CDSOPagoTASA_RET_IVA.AsFloat      := 1; //es un coeficiente
  CDSOPagoIVA_ACUMULADO.AsFloat     := 0;
  CDSOPagoSUCURSALSetText(CDSOPagoSUCURSAL,IntToStr(FormOPago_2.SucursalPorDefecto));
  CDSOPagoUSUARIO.Value:=DMMain_FD.UsuarioActivo;
  CDSOPagoFECHA_HORA.AsDateTime:=Now;
  // este es el Total de netos gravados del mes
  CDSOPagoTOTAL_PAGOS_DEL_MES.AsFloat          := 0;
  // total de impuestos pagados
  CDSOPagoTOTAL_RETENIDO_MES.AsFloat           := 0;
  CDSOPagoTASA_RETENCION_GANACIA.AsFloat       := 0;
  CDSOPagoTASA_RETENCION_IIBB.AsFloat          := 0;
  CDSOPagoMINIMO_IMPONIBLE_RET_IIBB.AsFloat    := 0;
  CDSOPagoMINIMO_NO_IMPONIBLE_GANANCIA.AsFloat := 0;
  CDSOPagoDESCUENTO.AsFloat                    := 0;
  CDSOPagoDESCUENTO_PORCENTAJE.AsFloat         := 0;
  CDSOPagoSALDO_APLICAR.Value                  := 0;
  CDSOPagoCOD_RET_IVA.Value                    :=-1;
  CDSOPagoCONCEPTO_RET_IVA.Value               :='..';
  CDSOPagoRETENCION_GANACIA_GENERADO.Value     :='N';
  CDSOPagoTASA_RET_IVA.Value                   := 0;
  CDSOPagoTOTAL_NETO.AsFloat                   := 0;
  CDSOPagoID_ESCALA_RET.Value                  :=-1;
  CDSOPagoRET_GAN_X_ESCALA.Value               :='N';
  CDSOPagoGANC_ESCALA_DESDE.AsFloat            := 0;
  CDSOPagoGANC_ESCALA_HASTA.AsFloat            := 0;
  CDSOPagoGANC_ESCALA_VARIAC.AsFloat           := 0;
  CDSOPagoGANC_ESCALA_FIJO.AsFloat             := 0;
  CDSOPagoGANC_ESCALA_EXCED.AsFloat            := 0;
  CDSOPagoCOD_RET_IVA.Value                    := 0;
  CDSOPagoCONCEPTO_RET_IVA.value               :='-';
  CDSOPagoIVA_ACUMULADO.Value                  := 0;
  CDSOPagoENTREGADO.Value                      :='N';
  CDSOPagoID_OBRA.Value                        := -1;
  CDSOPagoMUESTRAOBRA.Value                    :='';

END;

PROCEDURE TDatosOPago.CDSOPagoTOTALSetText(Sender: TField;
  CONST Text: STRING);
var Cadena:String;
BEGIN
  Cadena:=Text;
 // p:=pos(ThousandSeparator,Cadena);
 // delete(Cadena,p,1);
  while pos(',',Cadena)<>0 Do
   delete(Cadena,pos(',',Cadena),1);

  Sender.AsString:=Cadena;

  Sender.AsFloat:= Moneda3D(' ',MascaraGral,Sender.AsFloat);

  if ((Int(Sender.AsFloat)<Int(TotalInUse))or
     (frac(Sender.AsFloat)<Frac(TotalInUse))) and
     (FloatToStr(TotalInUse)<>'0') Then
    BEGIN
     // ShowMessage('El Importe Ingresado a cambiado por otro de menor valor,se borrara todas las apliaciones echas en este comprobante');
      CDSMovAplicaCCCompra.First;
      WHILE NOT (CDSMovAplicaCCCompra.Eof) DO
        BEGIN
          CDSMovAplicaCCCompra.Delete;
          CDSMovAplicaCCCompra.First;
        END;
      END;

//  CDSOPagoSALDO_APLICAR.AsFloat := (Sender.AsFloat - CDSOPagoSumaAplicaciones.Value);
  CDSOPagoSALDO_APLICAR.AsFloat := (Sender.AsFloat - SumaAplicaciones);

  TotalInUse:=Moneda3D(' ',MascaraGral,Sender.AsFloat);

END;

procedure TDatosOPago.CDSOPagoTOTAL_NETOSetText(Sender: TField;
  const Text: string);
var Cadena:String;
begin
  Cadena:=Text;
 // p:=pos(ThousandSeparator,Cadena);
 // delete(Cadena,p,1);
  while pos(',',Cadena)<>0 Do
   delete(Cadena,pos(',',Cadena),1);

  Sender.AsString:=Cadena;

  Sender.AsFloat:= Moneda3D(' ',MascaraGral,Sender.AsFloat);

  if ((Int(Sender.AsFloat)<Int(TotalInUse))or
     (frac(Sender.AsFloat)<Frac(TotalInUse))) and
     (FloatToStr(TotalInUse)<>'0') Then
    BEGIN
     // ShowMessage('El Importe Ingresado a cambiado por otro de menor valor,se borrara todas las apliaciones echas en este comprobante');
      CDSMovAplicaCCCompra.First;
      WHILE NOT (CDSMovAplicaCCCompra.Eof) DO
        BEGIN
          CDSMovAplicaCCCompra.Delete;
          CDSMovAplicaCCCompra.First;
        END;
      END;

//  CDSOPagoSALDO_APLICAR.AsFloat := (Sender.AsFloat - CDSOPagoSumaAplicaciones.Value);
  CDSOPagoSALDO_APLICAR.AsFloat := (Sender.AsFloat - SumaAplicaciones);

  TotalInUse                           := Moneda3D(' ',MascaraGral,Sender.AsFloat);
  CDSOPagoDESCUENTO.AsFloat            := 0;
  CDSOPagoDESCUENTO_PORCENTAJE.AsFloat := 0;
  CDSOPagoTOTAL.AsFloat                := Sender.AsFloat;
end;

PROCEDURE TDatosOPago.CDSMovAplicaCCCompraIMPORTESetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  Sender.AsString := Text;
  CDSMovAplicaCCCompra.Post;
END;

PROCEDURE TDatosOPago.CDSOPagoSUCOPSetText(Sender: TField;
  CONST Text: STRING);
VAR
  Aux: STRING;
BEGIN
  Aux := Text;
  Aux := Copy('0000', 1, 4 - Length(Aux)) + Aux;
  Sender.AsString := Aux;
  CDSOPagoNROCPBTE.Value := CDSOPagoLETRAOP.Value +
                            CDSOPagoSUCOP.Value +
                            CDSOPagoNUMEROOP.Value;

  if DMMain_FD.VerificaNroOP(CDSOPagoSUCOP.AsString,CDSOPagoNUMEROOP.AsString,CDSOPagoCLASECPBTE.AsString,CDSOPagoLETRAOP.AsString, CDSOPagoSUCURSAL.AsInteger) then
    raise Exception.Create('Comprobante existente... Verifique....');


END;

PROCEDURE TDatosOPago.CDSOPagoLETRAOPSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  Sender.AsString := Text;
  CDSOPagoNROCPBTE.Value := CDSOPagoLETRAOP.Value +
                            CDSOPagoSUCOP.Value +
                            CDSOPagoNUMEROOP.Value;

  if DMMain_FD.VerificaNroOP(CDSOPagoSUCOP.AsString,CDSOPagoNUMEROOP.AsString,CDSOPagoCLASECPBTE.AsString,CDSOPagoLETRAOP.AsString, CDSOPagoSUCURSAL.AsInteger) then
    raise Exception.Create('Comprobante existente... Verifique....');

END;

PROCEDURE TDatosOPago.CDSMovAplicaCCCompraNewRecord(DataSet: TDataSet);
BEGIN
  CDSMovAplicaCCCompraID_MOV.Value         := DatosOPago.IBGId_Mov_AplicaCCCompra.IncrementFD(1);
  CDSMovAplicaCCCompraFECHA.AsDateTime     := DatosOPago.CDSOPagoFECHA.AsDateTime;
  CDSMovAplicaCCCompraDETALLE.Value        := CDSOPagoCLASECPBTE.Value + '-' +
                                              CDSOPagoLETRAOP.Value + '-' +
                                              CDSOPagoSUCOP.Value + '-' +
                                              CDSOPagoNUMEROOP.Value;
  CDSMovAplicaCCCompraID_CPBTE.Value       := CDSOPagoID_Op.Value;
  CDSMovAplicaCCCompraTIPOCPBTE.Value      := CDSOPagoTIPOCPBTE.Value;
  CDSMovAplicaCCCompraCLASECPBTE.Value     := CDSOPagoCLASECPBTE.Value;
  CDSMovAplicaCCCompraNUMEROCPBTE.Value    := CDSOPagoNROCPBTE.Value;
  CDSMovAplicaCCCompraAPLICA_ID_CPBTE.Value:= CDSMovCCCompraID_CPBTE.Value;
  CDSMovAplicaCCCompraCONCILIADO.Value     := 'N';
  CDSMovAplicaCCCompraAPLICA_IVA.AsFloat   := 0;

END;

procedure TDatosOPago.CDSMovCCCompraMUESTRAAPAGARSetText(Sender: TField;
  const Text: string);
Var Cadena:String;
begin
  if MessageDlg('Modifica el importe???',mtConfirmation,mbYesNo,0,mbNo)= mrYes then
    begin
      Cadena:=Text;
      while pos(',',Cadena)<>0 Do
        delete(Cadena,pos(',',Cadena),1);
      Sender.AsString:=Cadena;
      if Sender.AsFloat>CDSMovCCCompraSALDO.AsFloat then
        Sender.AsFloat:=CDSMovCCCompraSALDO.AsFloat;
      if Sender.AsFloat<0 then
        Sender.AsFloat:=CDSMovCCCompraSALDO.AsFloat;
      FormSumaAplicaciones.SumaAplicado;

  end;

end;

procedure TDatosOPago.CDSMovAuxAfterPost(DataSet: TDataSet);
begin
  SumarAux;
end;

procedure TDatosOPago.CDSMovAuxNewRecord(DataSet: TDataSet);
begin
  CDSMovAuxID.Value               := IBGMovAux.IncrementFD(1);
  CDSMovAuxDEBE.AsFloat           := 0;
  CDSMovAuxHABER.AsFloat          := 0;
  CDSMovAuxID_OP.Value            := CDSOPagoID_OP.Value;
  CDSMovAuxID_TIPO.Value          :=-1;
  CDSMovAuxMUESTRATIPO.Value      := '';
  CDSMovAuxCODIGO_PROV.Value      := CDSOPagoCODIGO.Value;
  CDSMovAuxFECHA.AsDateTime       := CDSOPagoFECHA.AsDateTime;
end;

procedure TDatosOPago.CDSMovRetGananciaNewRecord(DataSet: TDataSet);
begin
  CDSMovRetGananciaID.Value   :=ibg_IdDetGanancia.IncrementFD(1);
  CDSMovRetGananciaID_OP.Value:=CDSOPagoID_OP.Value;
end;

procedure TDatosOPago.CDSOPagoID_TIPOCOMPROBANTESetText(Sender: TField;
  const Text: String);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
        BEGIN
          ShowMessage('Dato no válido');
          Sender.AsString := '';
          FormOPago_2.RxCTipoCpbte.SetFocus;
        END;
      IF CDSOPago.State = dsInsert THEN
        UltimoComprobante;
    end;

end;

procedure TDatosOPago.CDSRetIngBrCabNewRecord(DataSet: TDataSet);
begin
  CDSRetIngBrCabID.Value                := IBGId_RetIngBr_Cab.IncrementFD(1);
  CDSRetIngBrCabID_CPBTE_ORIGEN.Value   := CDSOPagoID_OP.Value;
  CDSRetIngBrCabTIPOCPBTE_ORIGEN.Value  := CDSOPagoTIPOCPBTE.Value;
  CDSRetIngBrCabCLASECPBTE_ORIGEN.Value := CDSOPagoCLASECPBTE.Value;
  CDSRetIngBrCabNROCPBTE_ORIGEN.Value   := CDSOPagoNROCPBTE.Value;
  CDSRetIngBrCabFECHA.AsDateTime        := CDSOPagoFECHA.AsDateTime;
  CDSRetIngBrCabCODIGO.Value            := CDSOPagoCODIGO.Value;
  CDSRetIngBrCabNOMBRE.Value            := CDSOPagoRAZONSOCIAL.Value;
  CDSRetIngBrCabDIRECCION.Value         := CDSOPagoDIRECCION.Value;
  CDSRetIngBrCabLOCALIDAD.Value         := CDSOPagoLOCALIDAD.Value;
  CDSRetIngBrCabCODIGOPOSTAL.Value      := CDSOPagoCPOSTAL.Value;
  CDSRetIngBrCabCUIT.Value              := CDSOPagoCUIT.Value;
  CDSRetIngBrCabNOMBRE_AGTE_RET.Value   := CDSEmpresaNombre.Value;
  CDSRetIngBrCabDIRECCION_AGTE_RET.Value:= CDSEmpresaDireccion.Value;
  CDSRetIngBrCabLOCALIDAD_AGTE_RET.Value:= CDSEmpresaLocalidad.Value;
  CDSRetIngBrCabCPOSTAL_AGTE_RET.Value  := CDSEmpresaCPOSTAL.Value;
  CDSRetIngBrCabCUIT_AGTE_RET.Value     := CDSEmpresaCuit.Value;
  CDSRetIngBrCabNRO_AGTE_RET.Value      := CDSEmpresaNRO_AGTE_RET_INGBRUTOS.Value;
  CDSRetIngBrCabNETO_GRAVADO.AsFloat    := CDSOPagoTOTAL_NETO_GRAVADO.AsFloat;
  CDSRetIngBrCabTASA_RETENCION.AsFloat  := CDSOPagoTASA_RETENCION_IIBB.AsFloat;

  CDSRetIngBrCabNRO_IIBB.Value          := CDSOPagoNRO_IIBB.Value;
  CDSRetIngBrCabSUCURSAL.Value          := CDSOPagoSUCURSAL.Value;
  CDSRetIngBrCabANULADO.Value           :='N';
  CDSRetIngBrCabESTADO.Value            :='P';

  QComprobRetIngBr.Close;
  QComprobRetIngBr.ParamByName('suc').Value:= CDSOPagoSUCURSAL.Value;
  QComprobRetIngBr.Open;
  if QComprobRetIngBr.IsEmpty Then
    begin
      ShowMessage('No Hay comprobantes de Retención definidos para esta sucursal');
      CDSRetIngBrCab.Cancel;
    end
  else
    begin
      CDSRetIngBrCabLETRA.Value     := QComprobRetIngBrLETRA.Value;
      CDSRetIngBrCabSUC.Value       := QComprobRetIngBrPREFIJO.Value;
      CDSRetIngBrCabNUMEROSetText(CDSRetIngBrCabNUMERO,IntToStr(QComprobRetIngBrNUMERO.AsInteger+1));
      CDSRetIngBrCabTIPOCPBTE.Value := QComprobRetIngBrTIPO_COMPROB.Value;
      CDSRetIngBrCabCLASECPBTE.Value:= QComprobRetIngBrCLASE_COMPROB.Value;
      CDSMovAplicaCCCompra.First;
      CDSMovAplicaCCCompra.DisableControls;
      while Not(CDSMovAplicaCCCompra.Eof) Do
        begin
          CDSRetIngBrDet.Insert;
          CDSRetIngBrDetID_CPBTE_RETENIDO.Value   := CDSMovAplicaCCCompraAPLICA_ID_CPBTE.Value;
          CDSRetIngBrDetTIPOCPBTE_RETENIDO.Value  := CDSMovAplicaCCCompraAPLICA_TIPOCPBTE.Value;
          CDSRetIngBrDetCLASECPBTE_RETENIDO.Value := CDSMovAplicaCCCompraAPLICA_CLASECPBTE.Value;

          CDSRetIngBrDetIMPORTE.AsFloat           := CDSMovAplicaCCCompraAPLICA_NETO.AsFloat;
          CDSRetIngBrDetBASEIMPONIBLE.AsFloat     := CDSMovAplicaCCCompraAPLICA_NETO.AsFloat;

          if (CDSEmpresaPROVINCIA.Value=2) and (ConvMulti='S') then // Pcia de Sta.Fe
            begin
              CDSRetIngBrDetIMPORTE.AsFloat           := CDSMovAplicaCCCompraIMPORTE.AsFloat;
              CDSRetIngBrDetBASEIMPONIBLE.AsFloat     := CDSMovAplicaCCCompraIMPORTE.AsFloat;
            end;

          CDSRetIngBrDetDETALLE.Value             := CDSMovAplicaCCCompraAPLICA_NROCPBTE.Value;
          CDSRetIngBrDetPORCENTAJESetText(CDSRetIngBrDetPORCENTAJE,FormatFloat('0.00',CDSOPagoTASA_RETENCION_IIBB.AsFloat));

    //    CDSRetIngBrDetFECHA.Value:=wwcdsmo
          CDSRetIngBrDet.Post;
          CDSMovAplicaCCCompra.Next;
        end;
      CDSMovAplicaCCCompra.First;
      CDSMovAplicaCCCompra.EnableControls;
    end;
    if CDSRetIngBrDet.State in [dsInsert,dsEdit] Then
      CDSRetIngBrDet.Post;
  QComprobRetIngBr.Close;
end;

procedure TDatosOPago.CDSRetIngBrCabNUMEROSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString := Copy('00000000', 1, 8 - Length(text)) + Text;
  CDSRetIngBrCabNROCPBTE.Value := CDSRetIngBrCabLETRA.Value + CDSRetIngBrCabSUC.Value + CDSRetIngBrCabNUMERO.Value;
end;

procedure TDatosOPago.CDSRetIngBrDetNewRecord(DataSet: TDataSet);
begin
  CDSRetIngBrDetID_CAB.Value         :=CDSRetIngBrCabID.Value;
  CDSRetIngBrDetID_DET.Value         :=IBGId_RetIngBr_Det.IncrementFD(1);
  CDSRetIngBrDetFECHA.Value          :=CDSRetIngBrCabFECHA.Value;
  CDSRetIngBrDetBASEIMPONIBLE.AsFloat:=0;
  CDSRetIngBrDetRETENCION.AsFloat    :=0;
  CDSRetIngBrDetIMPORTE.AsFloat      :=0;
end;

procedure TDatosOPago.CDSRetIngBrDetPORCENTAJESetText(Sender: TField;
  const Text: String);
var Aux:Extended;
begin
  Sender.AsString:=Text;
  //CDSRetIngBrDetRETENCION.Value:=Moneda3D(' ',MascaraGral,CDSRetIngBrDetBASEIMPONIBLE.Value)* Sender.AsFloat*0.01;
  Aux:= RoundTo(CDSRetIngBrDetBASEIMPONIBLE.AsFloat * Sender.AsFloat * 0.01,-3);

  CDSRetIngBrDetRETENCION.AsFLoat:= RoundTo(Aux,-2);


 // CDSRetIngBrDetRETENCION.Value  :=Roun RoundTo(CDSRetIngBrDetRETENCION.Value,-3);
//  CDSRetIngBrDetRETENCION.Value  := roundTo(CDSRetIngBrDetRETENCION.Value,-2);
end;

procedure TDatosOPago.CDSRetIVANewRecord(DataSet: TDataSet);
begin
  CDSRetIVAID.Value                   := ibgRetIVA.IncrementFD(1);
  CDSRetIVAID_OP.Value                := CDSOPagoID_OP.Value;
  CDSRetIVAFECHA.Value                := CDSOPagoFECHA.Value;
  CDSRetIVACODIGO_PROVEEDOR.Value     := CDSOPagoCODIGO.Value;
  CDSRetIVACODIGO_REGIMEN.Value       := CDSOPagoCOD_RET_IVA.Value;// 99;
  CDSRetIVACONCEPTO.Value             := Copy(UpperCase(CDSOPagoCONCEPTO_RET_IVA.Value),1,25);

//  CDSRetIVACONCEPTO.Value             := '';
  CDSRetIVATASA.AsFloat               := CDSOPagoTASA_RET_IVA.AsFloat;// 100;
  CDSRetIVAMINIMO_NO_IMPONIBLE.AsFloat:= 0;
  CDSRetIVAIMPUESTO_RETENIDO.ASFloat  := 0;
  CDSRetIVAANULADA.Value              := 'N';
  CDSRetIVAOBSERVACIONES.Value        := '';
  CDSRetIVAESTADO.Value               := 'P';  // P pendiente ... L liquidad
  CDSRetIVABASE_IMPONIBLE.AsFloat     := 0;
  QUltimaRetIVA.Close;
  QUltimaRetIVA.Open;
  if QUltimaRetIVA.Fields[0].AsString='' Then
      CDSRetIVANUMERO_RETENCIONSetText(CDSRetIVANUMERO_RETENCION,Copy(CDSRetIVAFECHA.AsString,7,4)+'000000')
    else
      CDSRetIVANUMERO_RETENCIONSetText(CDSRetIVANUMERO_RETENCION,IntToStr(QUltimaRetIVA.Fields[0].AsInteger+1));
  QUltimaRetIVA.Close;


end;

procedure TDatosOPago.CDSRetIVANUMERO_RETENCIONSetText(Sender: TField;
  const Text: string);
begin
   Sender.AsString := Copy('00000000000000', 1, 14 - Length(text)) + Text;
end;

procedure TDatosOPago.CDSRetIVATASASetText(Sender: TField; const Text: string);
begin
  Sender.AsString:=Text;
  CDSRetIVAIMPUESTO_RETENIDO.AsFloat:=CDSRetIVABASE_IMPONIBLE.AsFloat * CDSRetIVATASA.AsFloat*0.01;
end;

procedure TDatosOPago.CDSRetIngBrDetAfterPost(DataSet: TDataSet);
VAR Aux:Extended;
Pos:TBookmark;
begin
  Aux:=0;
  Pos:=CDSRetIngBrDet.GetBookmark;
  CDSRetIngBrDet.First;
  CDSRetIngBrDet.DisableControls;
  while Not(CDSRetIngBrDet.Eof) Do
    begin
      Aux:=CDSRetIngBrDetRETENCION.AsFloat+Aux;
      CDSRetIngBrDet.Next;
    end;
  if CDSRetIngBrCab.State = dsBrowse Then
    CDSRetIngBrCab.Edit;
  CDSRetIngBrCabTOTAL.AsFloat:=Aux;
  CDSRetIngBrDet.GotoBookmark(pos);
  CDSRetIngBrDet.FreeBookmark(pos);
  //  CDSRetIngBrDet.Last;
  CDSRetIngBrDet.EnableControls;

end;

procedure TDatosOPago.DSRetIngBrCabStateChange(Sender: TObject);
begin
  if FormOPago_2<>Nil Then
    begin
      FormOPago_2.Agregar_Ret_IngBr.Enabled  := DSRetIngBrCab.State in [dsBrowse];
      FormOPago_2.Cancelar_Ret_IngBr.Enabled := DSRetIngBrCab.State in [dsEdit, dsInsert];
      FormOPago_2.Confirma_Ret_IngBr.Enabled := DSRetIngBrCab.State in [dsEdit, dsInsert];
      FormOPago_2.Imprimir_Ret_IngBr.Enabled := DSRetIngBrCab.State in [dsBrowse];
      FormOPago_2.Borrar_Ret_IngBr.Enabled   := (DSRetIngBrCab.State in [dsBrowse]) and (Not(DSRetIngBrCab.DataSet.IsEmpty)) and (CDSOPago.State=dsInsert);
    end;
end;

procedure TDatosOPago.CDSRetGananciaNewRecord(DataSet: TDataSet);
begin
  CDSRetGananciaID.Value              := Ibg_Retenciones.IncrementFD(1);
  CDSRetGananciaID_OP.Value           := CDSOPagoID_OP.Value;
  CDSRetGananciaFECHA.AsDateTime      := CDSOPagoFECHA.AsDateTime;
  CDSRetGananciaCODIGO_PROVEEDOR.Value:= CDSOPagoCODIGO.Value;
  QUltimoNumeroRetencion.Close;
  QUltimoNumeroRetencion.Open;
  if QUltimoNumeroRetencion.Fields[0].AsString='' Then
      CDSRetGananciaNUMERO_RETENCIONSetText(CDSRetGananciaNUMERO_RETENCION,Copy(CDSRetGananciaFECHA.AsString,7,4)+'000000')
    else
      CDSRetGananciaNUMERO_RETENCIONSetText(CDSRetGananciaNUMERO_RETENCION,IntToStr(QUltimoNumeroRetencion.Fields[0].AsInteger+1));
  QUltimoNumeroRetencion.Close;
  CDSRetGananciaESTADO.Value   :='P';
  CDSRetGananciaANULADA.Value  :='N';
end;

procedure TDatosOPago.CDSMovAplicaCCCompraBeforePost(DataSet: TDataSet);
var porcentaje,Total_Neto,Total_Iva:Extended;
begin
  if (CDSMovAplicaCCCompraIMPORTE.AsFloat>CDSMovCCCompraSALDO.AsFloat) and (CDSOPago.State in [dsInsert]) then
     CDSMovAplicaCCCompraIMPORTE.AsFloat := CDSMovCCCompraSALDO.AsFLoat;

  CDSMovAplicaCCCompraAPLICA_NETO.AsFloat:=0;

 // calculo del neto del pago a cta.
  porcentaje:=0;
  total_neto:=0;

  QNetoFac.Close;
  QNetoFac.ParamByName('id').Value    := CDSMovAplicaCCCompraAPLICA_ID_CPBTE.Value;
  QNetoFac.Open;

  QIvaFac.Close;
  QIvaFac.ParamByName('id').Value     := CDSMovAplicaCCCompraAPLICA_ID_CPBTE.Value;
  QIvaFac.Open;

  if QNetoFacTOTAL.AsFloat>0 then
    begin
      porcentaje:=(CDSMovAplicaCCCompraIMPORTE.AsFloat/QNetoFacTOTAL.AsFloat)*100;
      total_neto:=RoundTo( (RoundTo(QNetoFacNETO.AsFloat,-2)*porcentaje*0.01),-3);
      Total_iva :=RoundTo( (RoundTo(QIvaFacIMPUESTO.ASFloat,-2)*porcentaje*0.01),-3);
    end;
  // Calculo Neto en Ajustes....
  if CDSMovAplicaCCCompraAPLICA_TIPOCPBTE.Value='AJ' then
    begin
      total_neto:= RoundTo( (CDSMovAplicaCCCompraIMPORTE.AsFloat/1.21),-2);
      Total_iva := RoundTo( (total_neto*0.21),-2);
      //Ingnoro los montos
      total_neto:= 0;
      Total_iva := 0;
    end;

  if (Total_Neto=0) Then
    CDSMovAplicaCCCompraAPLICA_NETO.AsFloat:=0
  else
    CDSMovAplicaCCCompraAPLICA_NETO.AsFloat:= Total_neto;
  if (Total_Iva=0) Then
    CDSMovAplicaCCCompraAPLICA_IVA.AsFloat:=0
  else
    CDSMovAplicaCCCompraAPLICA_IVA.AsFloat   := Total_iva;

  QNetoFac.Close;
  QIvaFac.Close;
end;

procedure TDatosOPago.CDSRetGananciaNUMERO_RETENCIONSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString := Copy('00000000000000', 1, 14 - Length(text)) + Text;
end;

END.

