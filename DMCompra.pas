unit DMCompra;

INTERFACE

uses
  Windows, Messages, SysUtils, Classes, Graphics, Forms, Dialogs,
  Db, Provider, DBClient,STRUtils,
  IBGenerator,Librerias,Variants,controls, FMTBcd, Math,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

TYPE
  TDatosCompra = CLASS(TDataModule)
    DSPCompraCab: TDataSetProvider;
    DSPCompraDet: TDataSetProvider;
    DSPProveedor: TDataSetProvider;
    DSPCondCompra: TDataSetProvider;
    DSPStock: TDataSetProvider;
    DSPDepositoStk: TDataSetProvider;
    DSPIva: TDataSetProvider;
    DSPSucursal: TDataSetProvider;
    DSPImpuestos: TDataSetProvider;
    DSPPercepcionIVA: TDataSetProvider;
    DSPPercepcionIB: TDataSetProvider;
    DSPDeposito: TDataSetProvider;
    IBGFcCompCab: TIBGenerator;
    IBGFcCompDet: TIBGenerator;
    IBGImpuestos: TIBGenerator;
    IBGPercepcionIB: TIBGenerator;
    IBGPercepcionIVA: TIBGenerator;
    DSPInscripcion: TDataSetProvider;
    ibgCondPago: TIBGenerator;
    DSPComprSubDet: TDataSetProvider;
    CDSCompraSubDetalle: TClientDataSet;
    IBGFcCompSubDet: TIBGenerator;
    DSCompraSubDetalle: TDataSource;
    DSOrdenCompra: TDataSource;
    ibFcCom_OC: TIBGenerator;
    CDSOCompra: TClientDataSet;
    DSPOCompra: TDataSetProvider;
    DSCompraDet: TDataSource;
    DSPercepcionIVA: TDataSource;
    DSPercepcionIB: TDataSource;
    DSImpuestos: TDataSource;
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
    CDSCondCompra: TClientDataSet;
    CDSCondCompraCODIGOPROVEE: TStringField;
    CDSCondCompraCODIGOPAGO: TIntegerField;
    CDSCondCompraDETALLE: TStringField;
    CDSCondCompraDIAS: TIntegerField;
    CDSCondCompraDESCUENTO: TFloatField;
    CDSCondCompraDESCUENTO_FPAGO: TFloatField;
    CDSStock: TClientDataSet;
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
    CDSIva: TClientDataSet;
    CDSIvaCODIGO: TIntegerField;
    CDSIvaDESCRIPCION: TStringField;
    CDSIvaTASA: TFloatField;
    CDSIvaCOLUMNA: TSmallintField;
    DSPCondPago: TDataSetProvider;
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
    CDSCompraDet: TClientDataSet;
    CDSCompraDetCODIGOARTICULO: TStringField;
    CDSCompraDetCANTIDAD: TFloatField;
    CDSCompraDetIVA_TASA: TFloatField;
    CDSCompraDetTIPOIVA_TASA: TIntegerField;
    CDSCompraDetDESCUENTO: TFloatField;
    CDSCompraDetTOTAL: TFloatField;
    CDSDepositoStk: TClientDataSet;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalRECARGO: TFloatField;
    CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    CDSDepositoStkID_DEPOSITO: TIntegerField;
    CDSDepositoStkCODIGO_DEPOSITO: TIntegerField;
    CDSDepositoStkCODIGO_STK: TStringField;
    CDSDepositoStkSUCURSAL: TIntegerField;
    CDSDepositoStkINICIAL: TFloatField;
    CDSDepositoStkMINIMO: TFloatField;
    CDSDepositoStkMEDIO: TFloatField;
    CDSDepositoStkFISICO: TFloatField;
    CDSDepositoStkRECARGO: TFloatField;
    CDSDepositoStkFUAPRECIOS: TSQLTimeStampField;
    CDSDepositoStkMUESTRADEPOSITO: TStringField;
    CDSCondPago: TClientDataSet;
    CDSImpuestos: TClientDataSet;
    CDSImpuestosID_IMPUESTO: TIntegerField;
    CDSImpuestosCODIGO_GRAVAMEN: TIntegerField;
    CDSImpuestosDETALLE: TStringField;
    CDSImpuestosID_FCCOMPCAB: TIntegerField;
    CDSImpuestosNETO: TFloatField;
    CDSImpuestosTASA: TFloatField;
    CDSImpuestosIMPORTE: TFloatField;
    CDSPercepcionIVA: TClientDataSet;
    CDSPercepcionIVAID_PERCEPCION: TIntegerField;
    CDSPercepcionIVACODIGO_PERCEPCION: TIntegerField;
    CDSPercepcionIVADETALLE: TStringField;
    CDSPercepcionIVAID_FCCOMPCAB: TIntegerField;
    CDSPercepcionIVANETO: TFloatField;
    CDSPercepcionIVATASA: TFloatField;
    CDSPercepcionIVAIMPORTE: TFloatField;
    CDSPercepcionIVACODIGOREGIMEN: TIntegerField;
    CDSPercepcionIB: TClientDataSet;
    CDSPercepcionIBID_PERCEPCION: TIntegerField;
    CDSPercepcionIBCODIGO_PERCEPCION: TIntegerField;
    CDSPercepcionIBDETALLE: TStringField;
    CDSPercepcionIBID_FCCOMPCAB: TIntegerField;
    CDSPercepcionIBNETO: TFloatField;
    CDSPercepcionIBTASA: TFloatField;
    CDSPercepcionIBIMPORTE: TFloatField;
    CDSPercepcionIBJURIDICION: TIntegerField;
    QStockArticulo_IB: TFDQuery;
    QStockArticulo_IBCODIGO_STK: TStringField;
    QStockArticulo_IBACTUALIZACOSTO: TStringField;
    QStockArticulo_IBFIJACION_PRECIO_GRAVADO: TFloatField;
    QStockArticulo_IBFIJACION_PRECIO_EXENTO: TFloatField;
    QStockArticulo_IBCOSTO_GRAVADO_STK: TFloatField;
    QStockArticulo_IBCOSTO_EXENTO_STK: TFloatField;
    QStockArticulo_IBMONEDA: TIntegerField;
    QStockArticulo_IBDETALLE_STK: TStringField;
    QStockArticulo_IBMONEDA_COTIZACION: TFloatField;
    QStockArticulo_IBMONEDA_SIGNO: TStringField;
    QStockArticulo_IBMONEDA_DETALLE: TStringField;
    QStockArticulo_IBMODO_GRAVAMEN: TStringField;
    QMonedas_IB: TFDQuery;
    CDSInscripcion: TClientDataSet;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
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
    QNroSerie_IB: TFDQuery;
    QNroSerie_IBID: TIntegerField;
    QNroSerie_IBCODIGO_STK: TStringField;
    QNroSerie_IBCODIGOSERIE: TStringField;
    QNroSerie_IBFECHAINGRESO: TSQLTimeStampField;
    QNroSerie_IBFECHAEGRESO: TSQLTimeStampField;
    QOcompra: TFDQuery;
    CDSOCompraID_FC: TIntegerField;
    CDSOCompraID: TIntegerField;
    CDSOCompraID_OC: TIntegerField;
    CDSOCompraNUMERO_OC: TStringField;
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
    DSCondPago: TDataSource;
    CDSCondPagoID: TIntegerField;
    CDSCondPagoID_FC: TIntegerField;
    CDSCondPagoTIPOCPBTE: TStringField;
    CDSCondPagoNROCPBTE: TStringField;
    CDSCondPagoCODIGO: TStringField;
    CDSCondPagoITEM: TIntegerField;
    CDSCondPagoFECHA: TSQLTimeStampField;
    CDSCondPagoDSCTO: TFloatField;
    CDSCondPagoIMPORTE: TFloatField;
    CDSCondPagoCLASECPBTE: TStringField;
    CDSBuscaCondCompra: TClientDataSet;
    DSPBuscaCondCompra: TDataSetProvider;
    CDSBuscaCondCompraCODIGOPROVEE: TStringField;
    CDSBuscaCondCompraCODIGOPAGO: TIntegerField;
    CDSBuscaCondCompraDESCUENTO: TFloatField;
    CDSBuscaCondCompraDETALLE: TStringField;
    CDSBuscaCondCompraDIAS: TIntegerField;
    CDSBuscaCondCompraDESCUENTO_FPAGO: TFloatField;
    CDSCompraSubDetalleID: TIntegerField;
    CDSCompraSubDetalleID_DETFAC: TIntegerField;
    CDSCompraSubDetalleID_CABFAC: TIntegerField;
    CDSCompraSubDetalleTIPOCPBTE: TStringField;
    CDSCompraSubDetalleCLASECPBTE: TStringField;
    CDSCompraSubDetalleFECHA: TSQLTimeStampField;
    CDSCompraSubDetalleNROCPBTE: TStringField;
    CDSCompraSubDetalleCODIGOARTICULO: TStringField;
    CDSCompraSubDetalleSERIE: TStringField;
    CDSCompraSubDetalleDEPOSITO: TIntegerField;
    spInformaCambioPrecio: TFDStoredProc;
    QMonedas_IBID: TIntegerField;
    QMonedas_IBMONEDA: TStringField;
    QMonedas_IBCOTIZACION: TFloatField;
    QMonedas_IBSIGNO: TStringField;
    QMonedas_IBORDEN: TSmallintField;
    QMonedas_IBCOTIZACION_COMPRA: TFloatField;
    spCambiaPrecio: TFDStoredProc;
    QBorrarAplicacionDelCpbte: TFDQuery;
    CDSCompraDetUNIDADES_TOTAL: TFloatField;
    QBorrarTodasAplicaciones: TFDQuery;
    IntegerField1: TIntegerField;
    QStockArticulo_IBFISICO: TFloatField;
    CDSProveedorCON_OCOMPRA: TStringField;
    CDSCompraCabCAE: TStringField;
    CDSCompraCabCAE_VENCIMIENTO: TSQLTimeStampField;
    CDSCompraCabFACTURA_ELECTRONICA: TStringField;
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
    QComprobFACTURAELECTRONICA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    DSPCompLote: TDataSetProvider;
    CDSCompLote: TClientDataSet;
    CDSCompLoteID: TIntegerField;
    CDSCompLoteID_DET: TIntegerField;
    CDSCompLoteID_FC: TIntegerField;
    CDSCompLoteCODIGO: TStringField;
    CDSCompLoteLOTE: TStringField;
    CDSCompLoteCANTIDAD: TFloatField;
    CDSCompLoteDEPOSITO: TIntegerField;
    CDSCompLoteTIPO_COMPROB: TStringField;
    IBGCompLotes: TIBGenerator;
    DSCompLote: TDataSource;
    CDSCompLoteID_LOTE: TIntegerField;
    CDSCompLoteDESPACHO: TStringField;
    CDSCompraCabMUESTRACODIGOAFIP: TStringField;
    QComprobDESGLOZA_IVA: TStringField;
    QComprobAFECTA_IVA: TStringField;
    CDSCompraCabMUESTRAINSCRIPCIONIVA: TStringField;
    QComprobAFECTA_CC: TStringField;
    QComprobFISCAL: TStringField;
    QComprobLINEAS_DETALLE: TSmallintField;
    QComprobCALCULA_IVA_ARTICULOS: TStringField;
    QComprobDEFECTO: TStringField;
    QComprobCAJA_DEFECTO: TIntegerField;
    QComprobEN_USO: TStringField;
    DSPAplicaciones: TDataSetProvider;
    DSAplicaciones: TDataSource;
    QAplicaciones: TFDQuery;
    CDSAplicaciones: TClientDataSet;
    CDSAplicacionesID_MOV: TIntegerField;
    CDSAplicacionesID_MOVCCCOMPRA: TIntegerField;
    CDSAplicacionesFECHA: TSQLTimeStampField;
    CDSAplicacionesID_CPBTE: TIntegerField;
    CDSAplicacionesTIPOCPBTE: TStringField;
    CDSAplicacionesCLASECPBTE: TStringField;
    CDSAplicacionesNUMEROCPBTE: TStringField;
    CDSAplicacionesIMPORTE: TFloatField;
    CDSCompraCabNUMERO_OPERACION: TStringField;
    CDSCompraCabCOD_OPERACION_AFIP: TSingleField;
    CDSCompraCabTIPOCOMP_AFIP: TStringField;
    CDSCompraCabFECHA_OPERACION: TSQLTimeStampField;
    CDSCompraCabLUGAR_REALIZA_AFIP: TStringField;
    CDSCompraCabCOD_MOTIVO_AFIP: TIntegerField;
    CDSCompraCabFECHA_FAENA_AFIP: TSQLTimeStampField;
    CDSCompraCabFECHA_RECEP_AFIP: TSQLTimeStampField;
    CDSCompraCabDATOS_ADIC_AFIP: TStringField;
    CDSEmpresaTASA_RET_IIBB: TFloatField;
    CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    CDSEmpresaPUNITORIOS: TFloatField;
    CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    CDSCompraCabFECHA_INCIO_ACTIV: TSQLTimeStampField;
    CDSEmpresaNRO_RENSPA: TStringField;
    CDSEmpresaNRO_RUCA: TIntegerField;
    QComprobCOMPRA_VENTA: TStringField;
    QComprobIMPRIME: TStringField;
    QComprobNOMBREIMPRESORA: TStringField;
    QComprobPENDIENTEIMPRESION: TStringField;
    QComprobDIVIDE_IVA: TStringField;
    QComprobCODIGO_AFIP: TStringField;
    QComprobID_AJUSTECC: TIntegerField;
    QComprobCENTRO_COSTO: TIntegerField;
    QComprobFILTRO_COMPROBANTES: TStringField;
    QComprobDEPOSITO: TIntegerField;
    QComprobULTIMONRO: TIntegerField;
    QComprobEDITAR_NRO: TStringField;
    CDSCompraCabCOD_CARACT_RECP_AFIP: TIntegerField;
    CDSCompraCabCOD_CARACT_EMIS_AFIP: TIntegerField;
    CDSCompraCabNRO_IIBB_RECEP: TStringField;
    CDSCompraCabNRO_RENSPA_RECEP: TStringField;
    CDSCompraCabNRO_RUCA_EMISOR_AFIP: TSingleField;
    CDSCompraCabNRO_RUCA_RECEPTOR_AFIP: TSingleField;
    CDSCompraCabNRO_RENSPA_EMISOR: TStringField;
    DSPCaracterAFIP: TDataSetProvider;
    CDSCaracterEmisorAFIP: TClientDataSet;
    DSPOperacionesAFIP: TDataSetProvider;
    CDSOperacionesAFIP: TClientDataSet;
    DSPCortesAFIP: TDataSetProvider;
    CDSCortesAFIP: TClientDataSet;
    CDSCortesAFIPCODIGO: TIntegerField;
    CDSCortesAFIPDESCRIPCION: TStringField;
    DSPTipoLiqAFIP: TDataSetProvider;
    CDSTipoLiqAFIP: TClientDataSet;
    CDSTipoLiqAFIPCODIGO: TIntegerField;
    CDSTipoLiqAFIPDESCRIPCION: TStringField;
    DSPMotivosAFIP: TDataSetProvider;
    CDSMotivosAFIP: TClientDataSet;
    CDSMotivosAFIPCODIGO: TIntegerField;
    CDSMotivosAFIPDESCRIPCION: TStringField;
    DSPRazaAFIP: TDataSetProvider;
    CDSRazaAFIP: TClientDataSet;
    CDSRazaAFIPCODIGO: TIntegerField;
    CDSRazaAFIPDESCRIPCION: TStringField;
    DSPTributosAFIP: TDataSetProvider;
    CDSTributosAFIP: TClientDataSet;
    CDSTributosAFIPCODIGO: TIntegerField;
    CDSTributosAFIPDESCRIPCION: TStringField;
    DSPGastosAFIP: TDataSetProvider;
    CDSGastosAFIP: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    DSCaracterEmisorAFIP: TDataSource;
    DSOperacionesAFIP: TDataSource;
    DSCortesAFIP: TDataSource;
    DSTipoLiqAFIP: TDataSource;
    DSMotivosAFIP: TDataSource;
    DSRazaAFIP: TDataSource;
    DSTributosAFIP: TDataSource;
    DSGastosAFIP: TDataSource;
    DSPListaIVA: TDataSetProvider;
    CDSListaIVA: TClientDataSet;
    DSListaIVA: TDataSource;
    CDSListaIVACODIGO: TIntegerField;
    CDSListaIVADESCRIPCION: TStringField;
    CDSListaIVACOLUMNA: TSmallintField;
    CDSCompraDetMUESTRAIVA: TFloatField;
    CDSCompraDetMUESTRARAZA: TStringField;
    CDSCaracterRecepAFIP: TClientDataSet;
    DSCaracterRecepAFIP: TDataSource;
    CDSCaracterRecepAFIPCODIGO: TIntegerField;
    CDSCaracterRecepAFIPDESCRIPCION: TStringField;
    CDSCaracterEmisorAFIPCODIGO: TIntegerField;
    CDSCaracterEmisorAFIPDESCRIPCION: TStringField;
    CDSOperacionesAFIPCODIGO: TIntegerField;
    CDSOperacionesAFIPDESCRIPCION: TStringField;
    DSPCompraTributos: TDataSetProvider;
    CDSCompraTributos: TClientDataSet;
    CDSCompraTributosID: TIntegerField;
    CDSCompraTributosID_FC: TIntegerField;
    CDSCompraTributosCODTRIBUTO: TIntegerField;
    CDSCompraTributosDESCRIPCION: TStringField;
    CDSCompraTributosBASEIMPONIBLE: TFloatField;
    CDSCompraTributosALICUOTA: TFloatField;
    CDSCompraTributosIMPORTE: TFloatField;
    DSPCompraGastos: TDataSetProvider;
    CDSCompraGastos: TClientDataSet;
    CDSCompraGastosID: TIntegerField;
    CDSCompraGastosID_FC: TIntegerField;
    CDSCompraGastosCODGASTO: TIntegerField;
    CDSCompraGastosDESCRIPCION: TStringField;
    CDSCompraGastosBASEIMPONIBLE: TFloatField;
    CDSCompraGastosALICUOTA: TFloatField;
    CDSCompraGastosALICUOTAIVA: TFloatField;
    CDSCompraGastosIMPORTE: TFloatField;
    DSCompraTributos: TDataSource;
    DSCompraGastos: TDataSource;
    CDSCompraTributosMUESTRATRIBUTO: TStringField;
    CDSCompraGastosMUESTRAGASTO: TStringField;
    CDSCompraCabCODIGOBARRA_AFIP: TStringField;
    CDSEmpresaCUIT_AUTORIZADO: TStringField;
    CDSEmpresaNOMBRE_AUTORIZADO: TStringField;
    CDSCompraCabCUIT_AUTORIZADO: TStringField;
    CDSCompraCabNOMBRE_AUTORIZADO: TStringField;
    DSPCompra_DTE: TDataSetProvider;
    CDSCompra_DTE: TClientDataSet;
    DSCompraDTE: TDataSource;
    CDSCompra_DTEID: TIntegerField;
    CDSCompra_DTEID_FC: TIntegerField;
    CDSCompra_DTENRO_DET: TStringField;
    CDSCompra_DTENRO_RENSPA: TStringField;
    ib_Tributos: TIBGenerator;
    ib_gastos: TIBGenerator;
    ib_dte: TIBGenerator;
    CDSBuscaComprobCODIGO_AFIP: TStringField;
    CDSCabeceraXML: TClientDataSet;
    CDSDetalleXML: TClientDataSet;
    CDSGastosXML: TClientDataSet;
    CDSCompraCabTIPO_LIQUIDACION: TStringField;
    CDSCompraCabCUIT_AUTORIZADO_RECEP: TStringField;
    spReHaceMov: TFDStoredProc;
    QRetIVA: TFDQuery;
    DSPRetIVA: TDataSetProvider;
    CDSRetIVA: TClientDataSet;
    DSRetIva: TDataSource;
    ibgRetIVA: TIBGenerator;
    CDSCompraCabID_CPBTE_ANULADO_LIQ: TIntegerField;
    CDSCompraCabRETENCION_IVA: TFloatField;
    CDSBuscaComprobFACTURAELECTRONICA: TStringField;
    CDSBuscaComprobEN_USO: TStringField;
    QVerificaNro: TFDQuery;
    QVerificaNroNROCPBTE: TStringField;
    QVerificaNroID_FC: TIntegerField;
    QVerificaNroTIPOCPBTE: TStringField;
    QVerificaNroCLASECPBTE: TStringField;
    QVerifiComprob: TFDQuery;
    QVerifiComprobNROCPBTE: TStringField;
    QBuscaAplicaiones: TFDQuery;
    QPrimerConComp: TFDQuery;
    QBuscaPercionesIIBB: TFDQuery;
    QBuscaPercionesIIBBCODIGO: TIntegerField;
    QBuscaPercionesIIBBDESCRIPCION: TStringField;
    QBuscaPercionesIIBBTASA: TFloatField;
    QBuscaPercionesIIBBMINIMOAPLICABLE: TFloatField;
    QBuscaPercionesIIBBCOLUMNA: TSmallintField;
    QBuscaPercionesIIBBJURIDICION: TIntegerField;
    CDSListaIVATASA: TFloatField;
    CDSCompraCabDSCTO_CALC: TFloatField;
    QStkArticulo: TFDQuery;
    QNroSerie: TFDQuery;
    QNroSerieID: TIntegerField;
    QNroSerieCODIGO_STK: TStringField;
    QNroSerieCODIGOSERIE: TStringField;
    QNroSerieFECHAINGRESO: TSQLTimeStampField;
    QNroSerieFECHAEGRESO: TSQLTimeStampField;
    QMonedas: TFDQuery;
    QOcompraID_FC: TIntegerField;
    QOcompraID: TIntegerField;
    QOcompraID_OC: TIntegerField;
    QOcompraNUMERO_OC: TStringField;
    QMonedasID: TIntegerField;
    QMonedasMONEDA: TStringField;
    QMonedasCOTIZACION: TFloatField;
    QMonedasSIGNO: TStringField;
    QMonedasORDEN: TSmallintField;
    QMonedasCOTIZACION_COMPRA: TFloatField;
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
    spActualizaTasaIvaDetalle: TFDStoredProc;
    QActualizaDetalleStk: TFDQuery;
    CDSCompraDetID: TIntegerField;
    CDSCompraDetID_CABFAC: TIntegerField;
    CDSCompraDetTIPOCPBTE: TStringField;
    CDSCompraDetCLASECPBTE: TStringField;
    CDSCompraDetNROCPBTE: TStringField;
    CDSCompraDetCODIGOPROVEEDOR: TStringField;
    CDSCompraDetRENGLON: TFloatField;
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
    CDSCompraDetUNITARIO_IMP_INTERNO: TFloatField;
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
    QAplicacionesID_MOV: TIntegerField;
    QAplicacionesID_MOVCCCOMPRA: TIntegerField;
    QAplicacionesFECHA: TSQLTimeStampField;
    QAplicacionesID_CPBTE: TIntegerField;
    QAplicacionesTIPOCPBTE: TStringField;
    QAplicacionesCLASECPBTE: TStringField;
    QAplicacionesNUMEROCPBTE: TStringField;
    QAplicacionesIMPORTE: TFloatField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    CDSCompraCabDESGLOZAIVA: TStringField;
    CDSCompraCabLOTE_AFIP: TStringField;
    CDSCompraCabFECHACOMPRA: TSQLTimeStampField;
    CDSCompraDetFECHACOMPRA: TSQLTimeStampField;
    CDSCompLoteFECHA: TSQLTimeStampField;
    CDSCompLoteFECHAVTO: TSQLTimeStampField;
    CDSCompraDetMUESTRACOPIAS: TIntegerField;
    DSPStockArticulo: TDataSetProvider;
    CDSStockArticulo: TClientDataSet;
    CDSStockArticuloCODIGO_STK: TStringField;
    CDSStockArticuloACTUALIZACOSTO: TStringField;
    CDSStockArticuloFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSStockArticuloFIJACION_PRECIO_EXENTO: TFloatField;
    CDSStockArticuloCOSTO_GRAVADO_STK: TFloatField;
    CDSStockArticuloCOSTO_EXENTO_STK: TFloatField;
    CDSStockArticuloMONEDA: TIntegerField;
    CDSStockArticuloDETALLE_STK: TStringField;
    CDSStockArticuloMONEDA_COTIZACION: TFloatField;
    CDSStockArticuloMONEDA_SIGNO: TStringField;
    CDSStockArticuloMONEDA_DETALLE: TStringField;
    CDSStockArticuloMODO_GRAVAMEN: TStringField;
    CDSStockArticuloFISICO: TFloatField;
    CDSStockPLU_SECCION: TStringField;
    CDSCompraDetMUESTRACODIGOBARRA: TStringField;
    CDSCompraDetMUESTRAPRECIOVTA: TFloatField;
    CDSCompraDetCANTIDAD_INVENTARIO: TFloatField;
    QRetIVAID: TIntegerField;
    QRetIVAID_LIQ: TIntegerField;
    QRetIVAFECHA: TSQLTimeStampField;
    QRetIVANUMERO_RETENCION: TStringField;
    QRetIVACODIGO_PROVEEDOR: TStringField;
    QRetIVACODIGO_REGIMEN: TIntegerField;
    QRetIVACONCEPTO: TStringField;
    QRetIVATASA: TFloatField;
    QRetIVABASE_IMPONIBLE: TFloatField;
    QRetIVAMINIMO_NO_IMPONIBLE: TFloatField;
    QRetIVAIMPUESTO_RETENIDO: TFloatField;
    QRetIVAOBSERVACIONES: TMemoField;
    QRetIVAANULADA: TStringField;
    QRetIVAESTADO: TStringField;
    CDSRetIVAID: TIntegerField;
    CDSRetIVAID_LIQ: TIntegerField;
    CDSRetIVAFECHA: TSQLTimeStampField;
    CDSRetIVANUMERO_RETENCION: TStringField;
    CDSRetIVACODIGO_PROVEEDOR: TStringField;
    CDSRetIVACODIGO_REGIMEN: TIntegerField;
    CDSRetIVACONCEPTO: TStringField;
    CDSRetIVATASA: TFloatField;
    CDSRetIVABASE_IMPONIBLE: TFloatField;
    CDSRetIVAMINIMO_NO_IMPONIBLE: TFloatField;
    CDSRetIVAIMPUESTO_RETENIDO: TFloatField;
    CDSRetIVAOBSERVACIONES: TMemoField;
    CDSRetIVAANULADA: TStringField;
    CDSRetIVAESTADO: TStringField;
    DSPCarneCab: TDataSetProvider;
    DSPCarneDet: TDataSetProvider;
    CDSCarneCab: TClientDataSet;
    CDSCarneCabID: TIntegerField;
    CDSCarneCabID_DET: TIntegerField;
    CDSCarneCabCLASIFICACION: TStringField;
    CDSCarneCabNRO_TROPA: TStringField;
    CDSCarneCabT_KILOS: TIntegerField;
    CDSCarneCabT_MEDIAS: TIntegerField;
    CDSCarneDet: TClientDataSet;
    CDSCarneDetID: TIntegerField;
    CDSCarneDetID_DET: TIntegerField;
    CDSCarneDetMEDIA: TIntegerField;
    ibgCarneCab: TIBGenerator;
    ibgCarneDet: TIBGenerator;
    CDSCarneDetEN_STOCK: TStringField;
    CDSCompraCabID_OBRA: TIntegerField;
    CDSCompraCabMUESTRAOBRA: TStringField;
    CDSCompraCabNC_POR_DIFERENCIA: TStringField;
    PROCEDURE CDSCompraCabNewRecord(DataSet: TDataSet);
    PROCEDURE CDSCompraCabBeforePost(DataSet: TDataSet);
    PROCEDURE CDSCompraCabCodigoSetText(Sender: TField;
      CONST Text: STRING);
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
    PROCEDURE CDSCompraCabCondicionCompraSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSCompraCabDepositoSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSCompraDetCantidadSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE DataModuleDestroy(Sender: TObject);
    PROCEDURE CDSImpuestosNewRecord(DataSet: TDataSet);
    PROCEDURE CDSPercepcionIVANewRecord(DataSet: TDataSet);
    PROCEDURE CDSPercepcionIBNewRecord(DataSet: TDataSet);
    PROCEDURE CDSCompraCabDSTOSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSCompraCabFECHACOMPRASetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSCondPagoNewRecord(DataSet: TDataSet);
    PROCEDURE CDSCondPagoDSCTOSetText(Sender: TField;
      CONST Text: STRING);
    procedure CDSCompraDetIVA_TASASetText(Sender: TField;
      const Text: String);
    procedure CDSCompraCabLetraFacChange(Sender: TField);
    procedure CDSImpuestosIMPORTESetText(Sender: TField;
      const Text: String);
    procedure CDSCompraCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSCompraDetDESCUENTOSetText(Sender: TField;
      const Text: String);
    procedure CDSCompraSubDetalleNewRecord(DataSet: TDataSet);
    procedure CDSCompraSubDetalleBeforeInsert(DataSet: TDataSet);
    procedure CDSCompraSubDetalleSERIESetText(Sender: TField;
      const Text: String);
    procedure CDSCompraSubDetalleBeforePost(DataSet: TDataSet);
    procedure CDSCompraSubDetalleBeforeEdit(DataSet: TDataSet);
    procedure CDSCompraSubDetalleAfterPost(DataSet: TDataSet);
    procedure CDSCompraSubDetalleBeforeDelete(DataSet: TDataSet);
    procedure CDSCompraDetBeforeDelete(DataSet: TDataSet);
    procedure CDSCompraCabNetoGrav1SetText(Sender: TField;
      const Text: String);
    procedure CDSOCompraNewRecord(DataSet: TDataSet);
    procedure CDSCompraDetUNIDADES_TOTALSetText(Sender: TField;
      const Text: string);
    procedure CDSCompraCabMONEDA_CPBTE_COTIZACIONChange(Sender: TField);
    procedure CDSCompraDetAfterDelete(DataSet: TDataSet);
    procedure CDSPercepcionIVAAfterDelete(DataSet: TDataSet);
    procedure CDSPercepcionIBAfterDelete(DataSet: TDataSet);
    procedure CDSCompraDetTOTALSetText(Sender: TField; const Text: string);
    procedure CDSCompraCabFECHAFISCALSetText(Sender: TField;
      const Text: string);
    procedure CDSCompraCabDSTOIMPORTESetText(Sender: TField;
      const Text: string);
    procedure CDSCompraDetCODIGOARTICULOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CDSPercepcionIVABeforePost(DataSet: TDataSet);
    procedure CDSPercepcionIBBeforePost(DataSet: TDataSet);
    procedure CDSCompLoteNewRecord(DataSet: TDataSet);
    procedure CDSCompLoteBeforePost(DataSet: TDataSet);
    procedure CDSCompraDetAfterScroll(DataSet: TDataSet);
    procedure CDSPercepcionIBIMPORTESetText(Sender: TField; const Text: string);
    procedure CDSPercepcionIBCODIGO_PERCEPCIONSetText(Sender: TField;
      const Text: string);
    procedure CDSCompraCabTIPOCOMP_AFIPChange(Sender: TField);
    procedure CDSCompraDetTIPOIVA_TASAChange(Sender: TField);
    procedure CDSCompra_DTENewRecord(DataSet: TDataSet);
    procedure CDSCompraGastosNewRecord(DataSet: TDataSet);
    procedure CDSCompraTributosNewRecord(DataSet: TDataSet);
    procedure CDSRetIVANewRecord(DataSet: TDataSet);
    procedure CDSPercepcionIVAAfterEdit(DataSet: TDataSet);
    procedure CDSPercepcionIBAfterEdit(DataSet: TDataSet);
    procedure CDSImpuestosBeforeEdit(DataSet: TDataSet);
    procedure CDSCompraDetPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure CDSCompraDetReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CDSCompraDetCalcFields(DataSet: TDataSet);
//    procedure CDSCompraDetUNIDADES_TOTALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
//    procedure CDSCompraDetUNITARIO_TOTALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
//    procedure wwCDSCompraDetUNIDADES_TOTALGetText(Sender: TField;
//      var Text: string; DisplayText: Boolean);
//    procedure wwCDSCompraDetUnitario_TotalGetText(Sender: TField;
//      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    PerciveIva: STRING;
    PerciveIB: STRING;
    Detalle_PercepcionIVA : STRING;
    Detalle_PercepcionIB  : STRING;
    Detalle_PercepcionIB_2: STRING;
    Codigo_PercepcionIva  : Integer;
    Codigo_PercepcionIB   : Integer;
    Codigo_PercepcionIB_2 : Integer;
    Tasa_PercepcionIva    : Real;
    Tasa_PercepcionIB     : Real;
    Tasa_PercepcionIB_2   : Real;
    Juridiccion           : Integer;
    Juridiccion_2         : Integer;

    Regimen               : Integer;
    Minimo_PercepcionIva  : Real;
    Minimo_PercepcionIB   : Real;
    Minimo_PercepcionIB_2 : Real;
    MascaraDetalleUnitario :String;
    MascaraDetalleCantidad :String;
    MascaraDetalleTotal    :String;
    MascaraDetalleDescuento:String;
    MascaraIvaImporte      :String;
    MascaraIvaTasa         :String;
    MascaraCabecera        :String;
    OldValueImpuesto       :Real;
    Requiere_OC            :Boolean;
    Proveedor_con_OC       :Boolean;
    ModificoIIB,ModificoP_IVA,
    DiscriminaIVA :Boolean;
    procedure ReAsignaDetalle;
    procedure InformarCambioPrecio;
    procedure InformarCambioPrecioHistorial(Origen:String);

    PROCEDURE HabilitarLabel;
    FUNCTION AsignaProveedor(Dato: STRING): Boolean;
    FUNCTION AsignarArticulo(Dato: STRING): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION AsignarCondCompra(Proveedor: STRING; Dato: Integer): Boolean;
    FUNCTION AsignarComprpobante(Dato: Integer): Boolean;
    PROCEDURE VerificaComprobante;
    PROCEDURE SumarDetalle;
    PROCEDURE CalcularTotales;
    procedure AplicarMascarasNumericas;
    procedure RecotizarPrecios;
    procedure GravarDetalle;
    procedure ReCalcular;
    procedure Verifica_ImpuestosEnCero;
    { Public declarations }
  END;

VAR
  DatosCompra: TDatosCompra;

IMPLEMENTATION

uses UCompra_2, DMBuscadoresForm,UDMain_FD,
     UBuscadorArticulos, UBuscarRecepcionesPendientes,
     UAvisoCambioPrecioCompra, DMStoreProcedureForm, UMuestraListaCodBarra,
  UCompraCtdo_2;

{$R *.DFM}

procedure TDatosCompra.Verifica_ImpuestosEnCero;
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


PROCEDURE TDatosCompra.ReAsignaDetalle;
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
          CDSCompraDetDESGLOZAIVA.Value      := CDSCompraCabDESGLOZAIVA.Value;
          CDSCompraDetNROCPBTE.Value         := CDSCompraCabNROCPBTE.Value;
          CDSCompraDetCODIGOPROVEEDOR.Value  := CDSCompraCabCodigo.Value;
          CDSCompraDetFECHACOMPRA.AsDateTime := CDSCompraCabFECHACOMPRA.AsDateTime;
          CDSCompraDetDEPOSITO.Value         := CDSCompraCabDeposito.Value;
          if (CDSCompraDetAFECTA_STOCK.AsString='S') and
             ((CDSCompraCabTIPOCPBTE.AsString='NC') or (CDSCompraCabTIPOCPBTE.AsString='ND')) and
             (CDSCompraCabNC_POR_DIFERENCIA.AsString='S') then
                CDSCompraDetAFECTA_STOCK.AsString:='N';

          if (CDSCompraCabNC_POR_DIFERENCIA.AsString='S') and
             ((CDSCompraCabTIPOCPBTE.AsString='NC') or (CDSCompraCabTIPOCPBTE.AsString='ND')) then
            CDSCompraDetAFECTA_STOCK.AsString:='N';
          CDSCompraDet.Next;
        end;
      CDSCompraDet.GotoBookmark(p);
      CDSCompraDet.FreeBookmark(p);
      CDSCompraDet.EnableControls;
    end;
end;

procedure TDatosCompra.InformarCambioPrecio;
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
          Detalle:= 'Modificación de precio Detalle Fac.Compra: '+
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

// esta parte reeemplaza el triger de la base de datos
// de aca comando el cambio de precio del producto
// antes era en la base de datos.


procedure TDatosCompra.InformarCambioPrecioHistorial(Origen:String);
VAR Puntero:TBookmark;
  aux:real;
  Cambia:Boolean;
  PrecioStock,PrecioFactura:LONG64;// Integer;
  Adicional,Exento,Gravado,ExentoPonderado,GravadoPonderado,TotalPonderado,CantidadTotal:Extended;
  ActualizaPorPonderado,MostrarCotizacion:Boolean;
  ChoiceControlPrecio: Byte;

begin
  MostrarCotizacion     :=  True;
  ActualizaPorPonderado :=  False;
  ChoiceControlPrecio   :=  mrNone;

  if DMMain_FD.ActualizaCosto {CambiaPrecio} then
    begin
      Puntero:=CDSCompraDet.GetBookmark;
      CDSCompraDet.First;
      CDSCompraDet.DisableControls;
      while (Not(CDSCompraDet.Eof)) do
        begin
          CDSStockArticulo.Close;
          CDSStockArticulo.Params.ParamByName('codigo').AsString:=CDSCompraDetCodigoArticulo.Value;
          CDSStockArticulo.Open;

          Cambia        := CDSStockArticuloACTUALIZACOSTO.AsString='S';

          if Cambia then
            begin
              PrecioStock   := Trunc((CDSStockArticuloFIJACION_PRECIO_GRAVADO.AsFloat +
                                      CDSStockArticuloFIJACION_PRECIO_EXENTO.AsFloat)*1000);

              aux           := CDSCompraDetUNIDADES_TOTAL.AsFloat * (1-(CDSCompraDetDESCUENTO.AsFloat * 0.01 ));

              PrecioFactura := Trunc((aux * (1-(CDSCompraCabDSTO.AsFloat*0.01)))*1000);

              if (CDSCompraDetUNIDADES_EXENTO.AsFloat>0) and (CDSCompraDetUNIDADES_GRAVADO.AsFloat>0)  then
                Exento        := CDSCompraDetUNIDADES_EXENTO.AsFloat
              else
                Exento        := CDSCompraDetUNIDADES_EXENTO.AsFloat * (1-(CDSCompraDetDESCUENTO.AsFloat*0.01)) * (1-(CDSCompraCabDSTO.AsFloat*0.01));

              Gravado       := CDSCompraDetUNIDADES_GRAVADO.AsFloat * (1-(CDSCompraDetDESCUENTO.AsFloat*0.01)) * (1-(CDSCompraCabDSTO.AsFloat*0.01));

              CantidadTotal := CDSStockArticuloFISICO.ASFloat+CDSCompraDetCANTIDAD.AsFloat;
              if CantidadTotal>=0 then CantidadTotal:=1;
              // esta son las lineas originales.....
              ExentoPonderado  := ((CDSStockArticuloFISICO.AsFloat * CDSStockArticuloFIJACION_PRECIO_EXENTO.AsFloat) +
                                  (CDSCompraDetCANTIDAD.AsFloat * Exento))/CantidadTotal;
              GravadoPonderado := ((CDSStockArticuloFISICO.AsFloat * CDSStockArticuloFIJACION_PRECIO_GRAVADO.AsFloat) +
                                  (CDSCompraDetCANTIDAD.AsFloat * Gravado))/CantidadTotal;

              TotalPonderado   := ExentoPonderado+GravadoPonderado;

             // if (DMMain_FD.ActualizaCostoMayor) and (PrecioFactura<PrecioStock) then Cambia:=False;

             // if (PrecioFactura<>PrecioStock) and (cambia) and (DMMain_FD.VerificaCambioPrecioCompra) and (not Todos) then  {FormCompra_2.VerificaCambioPrecioCompra='S'}

              if ((ChoiceControlPrecio <> mrNoToAll) and
                 ((PrecioFactura<>PrecioStock) and ((not DMMain_FD.ActualizaCostoMayor) or (PrecioFactura>PrecioStock))) and
                 (DMMain_FD.VerificaCambioPrecioCompra)) or (Origen='FormConversorFcVta_a_Compra')   then
               begin
                 Adicional:=0;
                 if (ChoiceControlPrecio <> mrYesToAll) and (Origen<>'FormConversorFcVta_a_Compra') then // esto es para cuando importa las facturas desde Fonte
                   begin
                     if not(Assigned(FormAvisoCambioPrecioCompra)) then
                       FormAvisoCambioPrecioCompra:=TFormAvisoCambioPrecioCompra.Create(self);
                     FormAvisoCambioPrecioCompra.PrecioOld       := (PrecioStock * 0.001);
                     FormAvisoCambioPrecioCompra.PrecioNew       := (PrecioFactura * 0.001);
                     FormAvisoCambioPrecioCompra.Stock           := CDSStockArticuloFISICO.AsFloat;
                     FormAvisoCambioPrecioCompra.CostoPonderado  := TotalPonderado;
                     FormAvisoCambioPrecioCompra.Monedastock     := CDSCompraDetMUESTRAMONEDA.Value;
                     FormAvisoCambioPrecioCompra.Detalle         := CDSStockArticuloCODIGO_STK.Value+':'+
                                                                    CDSStockArticuloDETALLE_STK.Value;
                     FormAvisoCambioPrecioCompra.MonedaCompra    := CDSCompraDetMUESTRAMONEDA.Value;
                     FormAvisoCambioPrecioCompra.showModal;
                     ChoiceControlPrecio    := FormAvisoCambioPrecioCompra.ModalResult;
                     ActualizaPorPonderado  := FormAvisoCambioPrecioCompra.PorCostoPonderado='S';
                     Adicional              := FormAvisoCambioPrecioCompra.Adicional;
                     FreeAndNil(FormAvisoCambioPrecioCompra);
                   end;

                 if Origen='FormConversorFcVta_a_Compra' Then ChoiceControlPrecio:=mrYes;

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
                       spCambiaPrecio.ParamByName('FPEXENTO').Value     := EXENTO;//+Adicional;
                       spCambiaPrecio.ParamByName('FPGRAVADO').Value    := GRAVADO+Adicional;
                       spCambiaPrecio.ParamByName('COSTOEXENTO').Value  := EXENTO;
                       spCambiaPrecio.ParamByName('COSTOGRAVADO').Value := GRAVADO;
                       spCambiaPrecio.ParamByName('ID_LISTA').Value     := -1;
                       spCambiaPrecio.ParamByName('RECARGO').Value      := 0;
                       spCambiaPrecio.ParamByName('FECHA').Value        := Date;
                      //  spCambiaPrecio.ParamByName('ACTUALIZA_COST').AsString := 'S';
                       spCambiaPrecio.ParamByName('DETALLE').Value      := '';

                       spCambiaPrecio.ExecProc;

                       // **** Ingreso en el Historial de Precios **************
                       spInformaCambioPrecio.Close;
                       spInformaCambioPrecio.ParamByName('codigo').AsString            :=CDSCompraDetCodigoArticulo.Value;

                       spInformaCambioPrecio.ParamByName('costo_old').AsFloat          :=CDSStockArticuloCOSTO_GRAVADO_STK.AsFloat+CDSStockArticuloCOSTO_EXENTO_STK.AsFloat ;
                       spInformaCambioPrecio.ParamByName('costo_old_gravado').AsFloat  :=CDSStockArticuloCOSTO_GRAVADO_STK.AsFloat;
                       spInformaCambioPrecio.ParamByName('costo_old_exento').AsFloat   :=CDSStockArticuloCOSTO_EXENTO_STK.AsFloat;
                       spInformaCambioPrecio.ParamByName('fprecio_old').AsFloat        :=CDSStockArticuloFIJACION_PRECIO_GRAVADO.AsFloat + CDSStockArticuloFIJACION_PRECIO_EXENTO.AsFloat;
                       spInformaCambioPrecio.ParamByName('fprecio_old_gravado').AsFloat:=CDSStockArticuloFIJACION_PRECIO_GRAVADO.AsFloat;
                       spInformaCambioPrecio.ParamByName('fprecio_old_exento').AsFloat :=CDSStockArticuloFIJACION_PRECIO_EXENTO.AsFloat;

                       spInformaCambioPrecio.ParamByName('costo_new').AsFloat          :=PrecioFactura*0.001;
                       spInformaCambioPrecio.ParamByName('fprecio_new').AsFloat        :=PrecioFactura*0.001;

                       spInformaCambioPrecio.ParamByName('costo_new_gravado').AsFloat  :=Gravado;
                       spInformaCambioPrecio.ParamByName('costo_new_exento').AsFloat   :=Exento;

                       spInformaCambioPrecio.ParamByName('fprecio_new_gravado').AsFloat:=Gravado;
                       spInformaCambioPrecio.ParamByName('fprecio_new_exento').AsFloat :=Exento;

                       spInformaCambioPrecio.ParamByName('id_fc_compra').Value         := CDSCompraCabID_FC.Value;

                       spInformaCambioPrecio.ParamByName('usuario').Value              :=DMMain_FD.UsuarioActivo;
                       spInformaCambioPrecio.ParamByName('fecha').Value                :=Now;
                       spInformaCambioPrecio.ParamByName('motivo').Value               :='Cambio de precio FC Compra:'+ CDSCompraCabNROCPBTE.Value;
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

          CDSStockArticulo.Close;
          spInformaCambioPrecio.Close;
          spCambiaPrecio.close;
          CDSCompraDet.Next;
        end;
      CDSCompraDet.GotoBookmark(Puntero);
      CDSCompraDet.FreeBookmark(Puntero);
      CDSCompraDet.EnableControls;
    end;
end;


PROCEDURE TDatosCompra.VerificaComprobante;
begin
  if CDSCompraCab.State in [dsInsert] Then
    begin
      QVerifiComprob.Close;
      QVerifiComprob.ParamByName('Nro').Value   := CDSCompraCabNROCPBTE.Value;
      QVerifiComprob.ParamByName('clase').Value := CDSCompraCabCLASECPBTE.Value;
      QVerifiComprob.ParamByName('Tipo').Value  := CDSCompraCabTIPOCPBTE.Value;
      QVerifiComprob.ParamByName('codigo').Value:= CDSCompraCabCodigo.Value;
      QVerifiComprob.Open;
      if QVerifiComprob.Fields[0].AsString<>'' Then
        begin
          if FormCompra_2.Visible then
            begin
              ShowMessage('Este comprobante fué ingresado.... verifique....!!!');
              CDSCompraCabSucFac.Clear;
              CDSCompraCabNumeroFac.Clear;
              FormCompra_2.dbeSuc.SetFocus;
            end
          else
            begin
              CDSCompraCab.Cancel;
              SysUtils.Abort;
              Exit;
            end;
        end
      else
        begin
          QVerificaNro.Close;
          QVerificaNro.ParamByName('Nro').Value    := CDSCompraCabNROCPBTE.Value;
          QVerificaNro.ParamByName('codigo').Value := CDSCompraCabCodigo.Value;
          QVerificaNro.ParamByName('Tipo').Value   := CDSCompraCabTIPOCPBTE.Value;
          QVerificaNro.ParamByName('Clase').Value  := CDSCompraCabCLASECPBTE.Value;
          QVerificaNro.Open;
          if QVerificaNro.Fields[0].AsString<>'' Then
            begin
              if FormCompra_2.Visible then
                ShowMessage('Hay un Comprobante con el mismo Nro Ingresado.....');
              CDSCompraCabSucFac.Clear;
              CDSCompraCabNumeroFac.Clear;
              if FormCompra_2.Visible then
                FormCompra_2.dbeSuc.SetFocus;
            end;
        end;
    // Busco si esta de Contado
      QVerificaNro.Close;
      QVerificaNro.ParamByName('Nro').Value    := CDSCompraCabNROCPBTE.Value;
      QVerificaNro.ParamByName('codigo').Value := CDSCompraCabCodigo.Value;
      QVerificaNro.ParamByName('Tipo').Value   := 'FO';
      QVerificaNro.ParamByName('Clase').Value  := '**';
      QVerificaNro.Open;
      if QVerificaNro.Fields[0].AsString<>'' Then
        begin
          if FormCompra_2.Visible then
            begin
              if MessageDlg('Hay un Comprobante de Contado con el mismo Nro Ingresado..... Mostrar el Comprobante????',mtConfirmation,mbYesNo,0)=mrYes Then
                begin
                  FormCompra_2.Cancelar.Execute;
                  if Not(Assigned(FormCompraCtdo_2)) then
                    FormCompraCtdo_2:=TFormCompraCtdo_2.Create(Self);
                  FormCompraCtdo_2.DatoNew  := QVerificaNroID_FC.AsString;
                  FormCompraCtdo_2.TipoCpbte:= QVerificaNroTIPOCPBTE.AsString;
                  FormCompraCtdo_2.Recuperar.Execute;
                end
              else
                begin
                  CDSCompraCabSucFac.Clear;
                  CDSCompraCabNumeroFac.Clear;
                  FormCompra_2.dbeSuc.SetFocus;
                end;
            end;
        end;
      QVerifiComprob.Close;
      QVerificaNro.Close;
    end;
end;

PROCEDURE TDatosCompra.HabilitarLabel;
BEGIN
  {Si la Factura no discrimina IVA}
   FormCompra_2.dbgIva.Visible          := CDSCompraCabDESGLOZAIVA.Value = 'S';
   FormCompra_2.dbgPrecepcionIVA.Visible:= PerciveIva = 'S';
   FormCompra_2.dbgPercepcionIB.Visible := PerciveIB  = 'S';
   FormCompra_2.RxLabel4.Visible        := CDSCompraCabDESGLOZAIVA.Value = 'S';
   FormCompra_2.RxLabel2.Visible        := PerciveIva = 'S';
   FormCompra_2.RxLabel3.Visible        := PerciveIB  = 'S';
END;


FUNCTION TDatosCompra.AsignaProveedor(Dato: STRING): Boolean;
BEGIN
  WITH DatosCompra.CDSProveedor, DatosCompra DO
    BEGIN
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := Dato;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.Eof) THEN
        BEGIN
         // FormBuscarRecepcionesPendientes.CDSRecepDet.MasterFields:='';
         // FormBuscarRecepcionesPendientes.CDSRecepDet.MasterSource:=nil;

          FormBuscarRecepcionesPendientes.CDSRecepCab.Close;
          FormBuscarRecepcionesPendientes.CDSRecepCab.Params.ParamByName('Codigo').Value:=Dato;
          FormBuscarRecepcionesPendientes.CDSRecepCab.OPen;

          FormBuscarRecepcionesPendientes.CDSRecepDet.Close;
          FormBuscarRecepcionesPendientes.CDSRecepDet.Params.ParamByName('id').Value:=FormBuscarRecepcionesPendientes.CDSRecepCabID_RECMER.Value;
          FormBuscarRecepcionesPendientes.CDSRecepDet.OPen;
          FormBuscarRecepcionesPendientes.dbgRecepCab.Width:=FormBuscarRecepcionesPendientes.dbgRecepCab.Width+1;
          FormBuscarRecepcionesPendientes.dbgRecepCab.Width:=FormBuscarRecepcionesPendientes.dbgRecepCab.Width-1;

          FormBuscarRecepcionesPendientes.dbgRecepDet.Width:=FormBuscarRecepcionesPendientes.dbgRecepDet.Width+1;
          FormBuscarRecepcionesPendientes.dbgRecepDet.Width:=FormBuscarRecepcionesPendientes.dbgRecepDet.Width-1;


          //          FormBuscarRecepcionesPendientes.CDSRecepDet.MasterSource    :=FormBuscarRecepcionesPendientes.DSRecepCab;

//          FormBuscarRecepcionesPendientes.CDSRecepDet.MasterFields    :='ID_RECMER';
//          FormBuscarRecepcionesPendientes.CDSRecepDet.IndexFieldNames :='ID_CABREC';

          FormCompra_2.BuscarRecepciones.Enabled:=Not(FormBuscarRecepcionesPendientes.CDSRecepCab.IsEmpty);

          CDSCompraCabNombre.AsString      := CDSProveedorNombre.AsString;
          CDSCompraCabRazonSocial.AsString := CDSProveedorRazon_Social.ASString;
          CDSCompraCabCuit.AsString        := CDSProveedorN_de_CUIT.AsString;
          CDSCompraCabDireccion.AsString   := CDSProveedorDireccion.AsString;
          if ((CDSProveedorCONDICION_IVA.AsString='') or (CDSProveedorCONDICION_IVA.AsString='0')) then
            raise Exception.Create('No Tiene Condicion de IVA... ver en la ficha');

          CDSCompraCabTipoIVA.Value        := CDSProveedorCondicion_IVA.Value;
          CDSCompraCabCPostal.AsString     := CDSProveedorCod_Postal.AsString;
          CDSCompraCabLocalidad.AsString   := CDSProveedorLocalidad.AsString;
          CDSCompraCabTIPO_PROVEEDOR.Value := CDSProveedorTIPO_PROVEEDOR.Value;
///////// Control si se debe o no cargar con Orden de compra /////////////////////
          Proveedor_con_OC                 := CDSProveedorCON_OCOMPRA.Value='S'; // esta variabel la uso para guardar el estado del proveedor ( si cambia de cpbte)
          Requiere_OC                      := CDSProveedorCON_OCOMPRA.Value='S'; // esta otra para controlar si permito o no la carga de la factura
///////// **************************************************/////////////////////
          CDSInscripcion.Close;
          CDSInscripcion.Params.ParamByName('Codigo').Value := CDSCompraCabTipoIva.Value;
          CDSInscripcion.Open;
          IF NOT (CDSInscripcion.Eof) THEN
            begin
              CDSCompraCabCALCULA_SOBRETASA.Value    := CDSInscripcionCobraSobretasa.Value;
              CDSCompraCabDESGLOZAIVA.AsString       := CDSInscripcionDISCRIMINAIVA.AsString;
              CDSCompraCabMUESTRAINSCRIPCIONIVA.Value:= CDSInscripcionDETALLE.Value;
            end;
          CDSInscripcion.Close;
          PerciveIva                          := CDSProveedorRetiene_IVA.Value;
          PerciveIB                           := CDSProveedorRetiene_IB.Value;

          if (CDSCompraCabTIPOCOMP_AFIP.Value='186') or
             (CDSCompraCabTIPOCOMP_AFIP.Value='180') or
             (CDSCompraCabTIPOCOMP_AFIP.Value='182') or
             (CDSCompraCabTIPOCOMP_AFIP.Value='188') or
             (CDSCompraCabTIPOCOMP_AFIP.Value='189') or
             (CDSCompraCabTIPOCOMP_AFIP.Value='190') or
             (CDSCompraCabTIPOCOMP_AFIP.Value='191') then
            begin
              PerciveIva                          := 'N';
              PerciveIB                           := 'N';
            end;

          if (PerciveIB='S') and (CDSProveedorID_PERC_IBB.AsString='') Then
            begin
              PerciveIB:='N';
              ShowMessage('El Proveedor tiene maracada la Opcion de Percepción IIBB,'+#13+
                          'pero no tiene codigo de impuesto cargado, no se calcula'+#13+
                          'la percepción .....');
            end;
          if (PerciveIVA='S') and (CDSProveedorID_PERC_IVA.AsString='') Then
            begin
              PerciveIva:='N';
              ShowMessage('El Proveedor tiene maracada la Opcion de Percepcion IVA,'+#13+
                          'pero no tiene codigo de impuesto cargado, no se calcula'+#13+
                          'la percepción .....');
            end;
          FormCompra_2.dbgPrecepcionIVA.Enabled := PerciveIva = 'S';
          FormCompra_2.dbgPercepcionIB.Enabled  := PerciveIB = 'S';
          IF PerciveIva = 'S' THEN
            BEGIN
              Codigo_PercepcionIva := CDSProveedorId_Perc_Iva.Value;
              CDSTasaPercepIVA.Close;
              CDSTasaPercepIVA.Params.ParamByName('id').value := Codigo_PercepcionIva;
              CDSTasaPercepIVA.Open;
              if not (CDSTasaPercepIVA.IsEmpty) then
                begin
                  Tasa_PercepcionIva    := CDSTasaPercepIVATASA.AsFloat;
                  Minimo_PercepcionIva  := CDSTasaPercepIVAMINIMOAPLICABLE.AsFloat;
                  Regimen               := CDSTasaPercepIVACODIGOREGIMEN.Value;
                  if CDSCompraCabTIPOCPBTE.Value='NC' Then
                    Minimo_PercepcionIva  := 0;
                  Detalle_PercepcionIVA := CDSTasaPercepIVADESCRIPCION.Value;
                end;
            END;
          IF PerciveIB = 'S' THEN
            BEGIN
              Codigo_PercepcionIB  :=-1;
              Codigo_PercepcionIB_2:=-1;

              Codigo_PercepcionIB := CDSProveedorId_Perc_IBB.Value;
              if VarIsNull(Codigo_PercepcionIB) then
                Codigo_PercepcionIB:=0;

              if Codigo_PercepcionIB<=0 then
                Codigo_PercepcionIB:=1;
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
          //asigno el comprobante segun condicoin de Inscripcion
          // si el cliente no tiene asignado un comprobante traigo el que le
          // corresponde por el tipo de Iva
          if (Not(CDSProveedorID_FACTURAPORDEFECTO.IsNull)) and
             (CDSProveedorID_FACTURAPORDEFECTO.AsInteger >0)
          Then
            CDSCompraCabID_TIPOCOMPROBANTE.Text    :=  CDSProveedorID_FACTURAPORDEFECTO.AsString
          else
            CDSCompraCabID_TIPOCOMPROBANTE.Text    :=  DMMain_FD.CpbtePorDefecto('FC','C',CDSCompraCabSUCURSALCOMPRA.AsInteger, CDSCompraCabDESGLOZAIVA.AsString[1],DMMain_FD.UsuarioActivoId);
             //Asigno el comprobante
              //DMMain_FD.QComprobantePorDefecto.Close;
//              DMMain_FD.QComprobantePorDefecto.ParamByName('desglozaIva').Value:= CDSCompraCabDESGLOZAIVA.Value;
//              DMMain_FD.QComprobantePorDefecto.ParamByName('sucursal').Value   := CDSCompraCabSUCURSALCOMPRA.Value;
//              DMMain_FD.QComprobantePorDefecto.ParamByName('compraventa').Value:= 'C';
//              DMMain_FD.QComprobantePorDefecto.ParamByName('tipo').Value       := 'FC';
//              DMMain_FD.QComprobantePorDefecto.Open;
//              if DMMain_FD.QComprobantePorDefecto.Fields[0].AsString<>'' Then
//                CDSCompraCabID_TIPOCOMPROBANTESetText(CDSCompraCabID_TIPOCOMPROBANTE,DMMain_FD.QComprobantePorDefecto.Fields[0].AsString)
//              else
//                begin
//                  DMMain_FD.CDSCompPorTipo.Close;
//                  DMMain_FD.CDSCompPorTipo.Params.ParamByName('desglozaIva').Value:= CDSCompraCabDESGLOZAIVA.Value;
//                  DMMain_FD.CDSCompPorTipo.Params.ParamByName('sucursal').Value   := CDSCompraCabSUCURSALCOMPRA.Value;// FormCompra_2.SucursalPorDefecto;
//                  DMMain_FD.CDSCompPorTipo.Params.ParamByName('compraventa').Value:='C';
//                  DMMain_FD.CDSCompPorTipo.Params.ParamByName('tipo').Value       :='FC';
//                  DMMain_FD.CDSCompPorTipo.Open;
//                  DMMain_FD.CDSCompPorTipo.First;
//                  if DMMain_FD.CDSCompPorTipo.Fields[0].AsString<>'' Then
//                    CDSCompraCabID_TIPOCOMPROBANTESetText(CDSCompraCabID_TIPOCOMPROBANTE,DMMain_FD.CDSCompPorTipo.Fields[0].AsString)
//                  else
//                    begin
//                      CDSCompraCabID_TIPOCOMPROBANTE.Clear;
//                      CDSCompraCabMUESTRACOMPROBANTE.Clear;
//                    end;
//                  DMMain_FD.CDSCompPorTipo.Close;
//                end;
//              DMMain_FD.QComprobantePorDefecto.Close;

          QPrimerConComp.CLose;
          QPrimerConComp.ParamByName('codigo').AsString:=Dato;
          QPrimerConComp.Open;
          if Not(QPrimerConComp.IsEmpty) Then
            if QPrimerConComp.Fields[0].AsString<>'' Then
              CDSCompraCabCondicionCompra.Text    :=  QPrimerConComp.Fields[0].AsString
            else
              begin
                ShowMessage('No tiene Condiciones de Compra cargadas....');
                CDSCompraCabCondicionCompra.Clear;
                CDSCompraCabMUESTRACONDCOMPRA.Clear;
              end;
          QPrimerConComp.CLose;
          Result := True;
        END
      ELSE
        Result := False;
    END;
END;

fUNCTION TDatosCompra.AsignarArticulo(Dato: STRING): Boolean;
BEGIN
  IF CDSCompraDet.State = dsBrowse THEN
    CDSCompraDet.Edit;
  CDSStock.Close;
  CDSStock.Params.ParamByName('Codigo').Value := Dato;
  CDSStock.Open;

  IF (NOT (CDSStock.IsEmpty)) and (CDSStockCLASE_ARTICULO.Value<>0) THEN
    BEGIN
      //vacio todo los importes por si hay un cambio de codigo y no queden cargados los valores
      CDSCompraDetCantidad.AsFloat        := 0;
      CDSCompraDetUnitario_Total.AsFloat  := 0;
      CDSCompraDetUnitario_Gravado.AsFloat:= 0;
      CDSCompraDetUnitario_Exento.AsFloat := 0;
      CDSCompraDetTotal.AsFloat           := 0;
      CDSCompraDetCONTROL_TRAZABILIDAD.Value  := CDSStockCONTROL_TRAZABILIDAD.Value;
      CDSCompraDetID_MONEDA.Value             := CDSStockMONEDA.Value;
      CDSCompraDetMUESTRACODALTERNATIVO.Value := CDSStockREEMPLAZO_STK.Value;

      QMonedas.Close;
      QMonedas.ParamByName('id').Value:= CDSStockMONEDA.Value;
      QMonedas.Open;
      if QMonedasID.AsString<>'' then
        CDSCompraDetMUESTRAMONEDA.Value := QMonedasSIGNO.Value;
      CDSCompraDetCOTIZACION.AsFloat     := QMonedasCOTIZACION_COMPRA.AsFloat;
      QMonedas.Close;

      CDSCompraDetCON_NRO_SERIE.Value   := CDSStockCONTROL_SERIE.Value;
      CDSCompraDetDetalle.AsString      := CDSStockDetalle_Stk.AsString;
      CDSCompraDetUnidad.Value          := CDSStockUNIDAD_COMPRA.Value;
      CDSCompraDetCosto_Gravado.AsFloat := CDSStockFijacion_Precio_Gravado.AsFloat;
      CDSCompraDetCosto_Exento.AsFloat  := CDSStockFijacion_Precio_Exento.AsFloat;
      CDSCompraDetCosto_Total.AsFloat   := CDSStockFijacion_Precio_Total.AsFloat;
      IF CDSStockCON_IMP_INT.Value = 'S' THEN
        CDSCompraDetCOSTO_IMP_INTERNO.AsFloat := CDSStockIMPUESTO_INTERNOS.AsFloat
      ELSE
        CDSCompraDetCOSTO_IMP_INTERNO.AsFloat := 0;
      CDSCompraDetAfecta_Stock.Value        := CDSStockControlaStock.Value;
      // Si tiene un numero de Recepcion entonces no actualizo el stock por aca
      // ya lo hice con la recepcion
      if CDSCompraDetID_RECEPCION_DET.Value<>0 Then
        CDSCompraDetAfecta_Stock.Value        := 'N';
      // si es Nota de Credito por Diferencia
      if (CDSCompraDetAFECTA_STOCK.AsString='S') and (CDSCompraCabNC_POR_DIFERENCIA.AsString='S') then
        CDSCompraDetAFECTA_STOCK.AsString:='N';

      CDSCompraDetGRAVADO_IB.Value          := CDSStockGRAVADO_IB.Value;
      CDSCompraDetModo_Gravamen.Value       := CDSStockModo_Gravamen.Value;
      CDSCompraDetTipoIva_Tasa.Value        := CDSStockTasa_Iva.Value;
      CDSCompraDetTipoIva_SobreTasa.Value   := CDSStockSobreTasa_Iva.Value;
      CDSCompraDetMUESTRAIVA.Value          := CDSStockTASA_IVA.Value;

      //Asigno el deposito que tengo en el encabezado...
      CDSCompraDetDeposito.Value            := CDSCompraCabDeposito.Value;
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
        CDSCompraDetIVA_SobreTasa.AsFloat   := CDSIvaTasa.AsFloat;
      CDSIva.Close;

            
      CDSCompraDetUNIDADES_GRAVADO.Value   := CDSCompraDetCosto_Gravado.Value;
      CDSCompraDetUNIDADES_EXENTO.Value    := CDSCompraDetCosto_Exento.Value;
      CDSCompraDetUNIDADES_TOTAL.AsFloat   := CDSCompraDetCOSTO_TOTAL.AsFloat;

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

FUNCTION TDatosCompra.AsignarSucursal(Dato: Integer): Boolean;
var
  DepositoSuc:  Integer;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value:=dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
//      DMMain_FD.QDepositoPorSucursal.Close;
//      DMMain_FD.QDepositoPorSucursal.ParamByName('sucursal').Value := CDSCompraCabSUCURSALCOMPRA.Value;
//      DMMain_FD.QDepositoPorSucursal.Open;
//      if DMMain_FD.QDepositoPorSucursalDEPOSITO.AsString<>'' then
//        CDSCompraCabDepositoSetText(CDSCompraCabDeposito,DMMain_FD.QDepositoPorSucursalDEPOSITO.AsString);
//      DMMain_FD.QDepositoPorSucursal.Close;
      DepositoSuc                 := DMMain_FD.DepositoPorSucursal(CDSCompraCabSUCURSALCOMPRA.AsInteger);
      if (DepositoSuc>0) and (DepositoSuc <> CDSCompraCabDeposito.AsInteger) then
        CDSCompraCabDeposito.Text :=  IntToStr( DepositoSuc);

      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      CDSBuscaComprob.Open;

      CDSCompraCabID_TIPOCOMPROBANTE.Clear;
      CDSCompraCabMUESTRACOMPROBANTE.Clear;
      CDSCompraCabCLASECPBTE.Clear;
      CDSCompraCabTIPOCPBTE.Clear;
      CDSCompraCabSUCFAC.AsString   :='';
      CDSCompraCabNUMEROFAC.AsString:='';

      if CDSBuscaComprob.RecordCount=1 Then
        begin
          DatosCompra.CDSCompraCabID_TIPOCOMPROBANTE.Text   :=  CDSBuscaComprob.fieldByName('Id_comprobante').AsString;
          FormCompra_2.RxDBECodigo.SetFocus;
        end;
      CDSBuscaComprob.Close;
      Result:=True;
      CDSCompraCabMuestraSucursal.AsString := CDSSucursalDetalle.AsString;
    END
  ELSE
    BEGIN
      Result:=False;
      CDSCompraCabMuestraSucursal.AsString:= '';
    END;
END;

FUNCTION TDatosCompra.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value := Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.Eof) THEN
    BEGIN
      Result := True;
      CDSCompraCabMuestraDeposito.Value := CDSDepositoNombre.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSCompraCabMuestraDeposito.Value := '';
    END;
  CDSDeposito.Close;

END;

FUNCTION TDatosCompra.AsignarCondCompra(Proveedor: STRING; Dato: Integer): Boolean;
BEGIN
  if CDSCompraCab.State<>dsBrowse then
    begin
      CDSCondCompra.Close;
      CDSCondCompra.Params.ParamByName('Codigo').Value     := Proveedor;
      CDSCondCompra.Params.ParamByName('CodigoPago').Value := Dato;
      CDSCondCompra.Open;
      IF NOT (CDSCondCompra.Eof) THEN
        BEGIN
          Result := True;
          CDSCompraCabMuestraCondCompra.Value := CDSCondCompraDetalle.Value;
          CDSCompraCabFECHAVTO.AsDateTime     := CDSCompraCabFECHACOMPRA.AsDateTime + CDSCondCompraDIAS.Value;
          CDSCompraCabDSTO.Value              := CDSCondCompraDESCUENTO.Value;
        END
      ELSE
        BEGIN
          Result := False;
          CDSCompraCabMuestraCondCompra.Value := '';
          CDSCompraCabDSTO.AsFloat            := 0;
        END;
    end;

END;

FUNCTION TDatosCompra.AsignarComprpobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSCompraCabSucursalCompra.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSCompraCabMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSCompraCabLetraFac.Value           := QComprobLETRA.Value;
      CDSCompraCabTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSCompraCabCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
      CDSCompraCabTIPOCOMP_AFIP.VAlue      := QComprobCODIGO_AFIP.Value;
      // si cambia de a Tipo de Nota de credito o Debito limpio el reqerimiento de la OC
      // en caso de arrepentirse le reasigno el estado de la condicion del proveedor
      CDSCompraCabFACTURA_ELECTRONICA.Value :='N';
      CDSCompraCabFACTURA_ELECTRONICA.Value :=QComprobFACTURAELECTRONICA.Value;
      CDSCompraCabINGRESA_A_CTACTE.Value    :=QComprobAFECTA_IVA.Value;
      CDSCompraCabDESGLOZAIVA.Value         :=QComprobDESGLOZA_IVA.Value;
      if (CDSCompraCabTIPOCPBTE.Value='NC') or (CDSCompraCabTIPOCPBTE.Value='ND') then
        FormCompra_2.dbchNota_Credito.Enabled:=True
      else
        FormCompra_2.dbchNota_Credito.Enabled:=False;

      if (CDSCompraCabTIPOCPBTE.Value='NC') or (CDSCompraCabTIPOCPBTE.Value='ND')  then
        Requiere_OC:=False
      else
        Requiere_OC:=Proveedor_con_OC;
      if (QComprobDEPOSITO.AsString<>'') and (QComprobDEPOSITO.Value>0) then
         CDSCompraCabDepositoSetText(CDSCompraCabDeposito,QComprobDEPOSITO.AsString);
    END
  ELSE
    BEGIN
      Result := False;
      CDSCompraCabMUESTRACOMPROBANTE.Value := '';
      CDSCompraCabLetraFac.Value           := '';
      CDSCompraCabTIPOCPBTE.Value          := '';
      CDSCompraCabCLASECPBTE.Value         := '';
      CDSCompraCabTIPOCOMP_AFIP.VAlue      := '';
    END;

  if (FormCompra_2.DiscriminaIva='S') then
    begin
      if  (Not(CDSCompraCabTIPOIVA.Value=1)) and (CDSCompraCabCLASECPBTE.Value='LQ') and (CDSCompraCabLETRAFAC.Value='A') Then
        BEGIN
          Result := False;
          CDSCompraCabMUESTRACOMPROBANTE.Value := '';
          CDSCompraCabLetraFac.Value           := '';
          CDSCompraCabTIPOCPBTE.Value          := '';
          CDSCompraCabCLASECPBTE.Value         := '';
          CDSCompraCabTIPOCOMP_AFIP.VAlue      := '';
        END;
      if  (CDSCompraCabTIPOIVA.Value=1) and (CDSCompraCabCLASECPBTE.Value='LQ') and (CDSCompraCabLETRAFAC.Value='B') Then
        begin
          Result := False;
          CDSCompraCabMUESTRACOMPROBANTE.Value := '';
          CDSCompraCabLetraFac.Value           := '';
          CDSCompraCabTIPOCPBTE.Value          := '';
          CDSCompraCabCLASECPBTE.Value         := '';
          CDSCompraCabTIPOCOMP_AFIP.VAlue      := '';
       END;

    end;
 // PerciveIva                          := 'S';
 // PerciveIB                           := 'S';
  if  (CDSCompraCabTIPOCOMP_AFIP.Value='186') or
      (CDSCompraCabTIPOCOMP_AFIP.Value='180') or
      (CDSCompraCabTIPOCOMP_AFIP.Value='182') or
      (CDSCompraCabTIPOCOMP_AFIP.Value='188') or
      (CDSCompraCabTIPOCOMP_AFIP.Value='189') or
      (CDSCompraCabTIPOCOMP_AFIP.Value='190') or
      (CDSCompraCabTIPOCOMP_AFIP.Value='151') or
      (CDSCompraCabTIPOCOMP_AFIP.Value='153') or
      (CDSCompraCabTIPOCOMP_AFIP.Value='155') or
      (CDSCompraCabTIPOCOMP_AFIP.Value='157') or
      (CDSCompraCabTIPOCOMP_AFIP.Value='159') or
      (CDSCompraCabTIPOCOMP_AFIP.Value='180') or
      (CDSCompraCabTIPOCOMP_AFIP.Value='191')
  then
    begin
        PerciveIva                          := 'N';
        PerciveIB                           := 'N';
    end;
END;

procedure TDatosCompra.RecotizarPrecios;
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
          QMonedas.ParamByName('id').Value := CDSCompraDetID_MONEDA.Value;
          QMonedas.Open;
          CDSCompraDetCOTIZACION.AsFloat   := QMonedasCOTIZACION_COMPRA.AsFloat;
          QMonedas.Close;


          CDSCompraDetUNITARIO_EXENTO.AsFloat      :=(CDSCompraDetUNIDADES_EXENTO.AsFloat / CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSCompraDetCOTIZACION.AsFloat;
          CDSCompraDetUNITARIO_GRAVADO.AsFloat     :=(CDSCompraDetUNIDADES_GRAVADO.AsFloat / CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSCompraDetCOTIZACION.AsFloat;
          CDSCompraDetUNITARIO_IMP_INTERNO.AsFloat :=(CDSCompraDetUNIDADES_IMP_INTERNOS.AsFloat / CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSCompraDetCOTIZACION.AsFloat;
          CDSCompraDetUnitario_Total.AsFloat       :=(CDSCompraDetUNIDADES_TOTAL.AsFloat/ CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSCompraDetCOTIZACION.AsFloat;

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

PROCEDURE TDatosCompra.SumarDetalle;
VAR
  Dscto: Real;
  Puntero:TBookmark;
BEGIN
  Puntero:=CDSCompraDet.GetBookmark;
  CDSCompraDet.DisableControls;
  CDSCompraDet.First;
  IF CDSCompraCab.State = dsBrowse THEN
    CDSCompraCab.Edit;
  CDSCompraCabNetoGrav1.AsFloat                   := 0;
  CDSCompraCabNetoExen1.AsFloat                   := 0;
  CDSCompraCabNETOMONOTRIBUTO1.AsFloat            := 0;
  CDSCompraCabIMPORTEEXCLUIDO1.AsFloat            := 0;
  CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := 0;
  CDSCompraCabTOTAL_UNIDADES.AsFloat              := 0;
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
      Dscto := (1 - CDSCompraDetDescuento.AsFloat * 0.01);
      IF (CDSCompraDetTipoIva_Tasa.Value <> 0) AND (NOT (VarIsNull(CDSCompraDetTipoIva_Tasa.Value))) AND
        ((CDSCompraDetModo_Gravamen.Value <> 'E') and (CDSCompraCabDESGLOZAIVA.Value = 'S')) THEN
        BEGIN
          IF CDSImpuestos.Locate('Codigo_Gravamen',CDSCompraDetTipoIva_Tasa.Value, []) THEN
            BEGIN
              CDSIva.Close;
              CDSIva.Params.ParamByName('id').Value := CDSCompraDetTipoIva_Tasa.AsInteger;
              CDSIva.Open;
              CDSImpuestos.Edit;
              CDSImpuestosNeto.AsFloat    :=CDSCompraDetUnitario_Gravado.AsFloat * Dscto * CDSCompraDetCantidad.AsFloat + CDSImpuestosNeto.AsFloat;
              CDSImpuestosTasa.AsFloat    :=CDSIvaTASA.AsFloat;// CDSCompraDetIVA_Tasa.AsFloat;
              CDSImpuestosImporte.AsFloat :=CDSImpuestosNeto.AsFloat * (CDSImpuestosTasa.AsFloat * 0.01);
              CDSImpuestos.Post;
            END
          ELSE
            BEGIN
              CDSImpuestos.Insert;
              CDSImpuestosCodigo_Gravamen.Value := CDSCompraDetTipoIva_Tasa.AsInteger;
              CDSIva.Close;
              CDSIva.Params.ParamByName('id').Value := CDSCompraDetTipoIva_Tasa.AsInteger;
              CDSIva.Open;
              CDSImpuestosDetalle.Value      := CDSIvaDescripcion.Value;
              CDSImpuestosId_FcCompCab.Value := CDSCompraDetID_CABFAC.Value;
              CDSImpuestosNeto.AsFloat       := CDSCompraDetUNITARIO_GRAVADO.AsFloat * Dscto * CDSCompraDetCANTIDAD.AsFloat + CDSImpuestosNeto.AsFloat;
              CDSImpuestosTasa.AsFloat       := CDSIvaTASA.AsFloat;// CDSCompraDetIVA_TASA.AsFloat;
              CDSImpuestosImporte.AsFloat    := CDSImpuestosNETO.AsFloat * (CDSImpuestosTASA.AsFloat * 0.01);
              CDSImpuestos.Post;
              CDSIva.Close;
             END;

        END;

      IF CDSCompraCabDESGLOZAIVA.Value = 'S' THEN
        BEGIN
          CDSCompraCabNETOGRAV1.AsFloat := CDSCompraDetUnitario_Gravado.AsFloat * Dscto * CDSCompraDetCantidad.AsFloat + CDSCompraCabNETOGRAV1.AsFloat;
          if CDSCompraDetMODO_GRAVAMEN.Value='E' then
            CDSCompraCabNETOEXEN1.AsFloat := CDSCompraDetUnitario_Exento.AsFloat  * Dscto * CDSCompraDetCantidad.AsFloat + CDSCompraCabNetoExen1.AsFloat
          else
            CDSCompraCabNETOEXEN1.AsFloat := CDSCompraDetUnitario_Exento.AsFloat  * CDSCompraDetCantidad.AsFloat + CDSCompraCabNetoExen1.AsFloat

        END
      ELSE IF CDSCompraCabDESGLOZAIVA.Value = 'N' THEN
        BEGIN
          if CDSCompraCabTIPOIVA.Value in [2,5] then
            begin
              CDSCompraCabNETOMONOTRIBUTO1.AsFloat := CDSCompraDetUnitario_Gravado.AsFloat * Dscto * CDSCompraDetCantidad.AsFloat + CDSCompraCabNETOMONOTRIBUTO1.AsFloat;
              CDSCompraCabNETOEXEN1.AsFloat        := CDSCompraDetUnitario_Exento.AsFloat * Dscto * CDSCompraDetCantidad.AsFloat + CDSCompraCabNETOEXEN1.AsFloat;
            end
          else
            begin
              CDSCompraCabNETOGRAV1.AsFloat        := CDSCompraDetUnitario_Gravado.AsFloat * Dscto * CDSCompraDetCantidad.AsFloat + CDSCompraCabNETOGRAV1.AsFloat;
              CDSCompraCabNETOEXEN1.AsFloat        := CDSCompraDetUnitario_Exento.AsFloat * Dscto * CDSCompraDetCantidad.AsFloat + CDSCompraCabNETOEXEN1.AsFloat;
            end
         END;

      CDSCompraCabIMPORTEEXCLUIDO1.AsFloat := CDSCompraDetUNITARIO_IMP_INTERNO.AsFloat * CDSCompraDetCantidad.AsFloat + CDSCompraCabIMPORTEEXCLUIDO1.AsFloat;

      if (CDSCompraDetGRAVADO_IB.Value='S') and (CDSCompraCabDESGLOZAIVA.Value='S') Then
        CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := ( (CDSCompraDetUNITARIO_GRAVADO.AsFloat+CDSCompraDetUNITARIO_EXENTO.AsFloat) * Dscto * CDSCompraDetCantidad.AsFloat) + CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat
      else
        if (CDSCompraDetGRAVADO_IB.Value='S') and (CDSCompraCabDESGLOZAIVA.Value='N') Then
          CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := CDSCompraDetTOTAL.AsFloat * (1 + CDSCompraDetIVA_TASA.AsFloat * 0.01) + CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat;


      CDSCompraCabTOTAL_UNIDADES.AsFloat := CDSCompraCabTOTAL_UNIDADES.AsFloat + CDSCompraDetUNIDADES_TOTAL.AsFloat;
      CDSCompraDet.Next;
    END;
  CDSCompraDet.GotoBookmark(Puntero);
  CDSCompraDet.FreeBookmark(Puntero);
  CDSCompraDet.EnableControls;
END;

PROCEDURE TDatosCompra.CalcularTotales;
VAR
  Acumulador,Neto: Extended;
BEGIN
  if (Trim(CDSCompraCabTIPOCOMP_AFIP.AsString)<>'') then
    if (CDSCompraCabTIPOCOMP_AFIP.AsInteger in [186,185,189,191,180,182,183,188]) then
      begin
        PerciveIva:='N';
        PerciveIB :='N';

        CDSPercepcionIVA.First;
        while not(CDSPercepcionIVA.Eof) do
          begin
            CDSPercepcionIVA.Delete;
            CDSPercepcionIVA.First;
          end;

        CDSPercepcionIB.First;
        while not(CDSPercepcionIB.Eof) do
          begin
            CDSPercepcionIB.Delete;
            CDSPercepcionIB.First;
          end;
         CDSPercepcionIVA.EmptyDataSet;
         CDSPercepcionIB.EmptyDataSet;
      end;

  CDSCompraCabTotal.AsFloat            := 0;
  Acumulador                           := 0;
  CDSCompraCabNetoGrav2.AsFloat        := RoundTo(CDSCompraCabNetoGrav1.AsFloat * (1-CDSCompraCabDsto.AsFloat * 0.01),-2);
  CDSCompraCabNetoExen2.AsFloat        := RoundTo(CDSCompraCabNetoExen1.AsFloat * (1-CDSCompraCabDsto.AsFloat * 0.01),-2);

  CDSCompraCabNetoGrav2.AsFloat        := RoundTo(CDSCompraCabNetoGrav1.AsFloat * (1-CDSCompraCabDSCTO_CALC.AsFloat * 0.01),-2);
  CDSCompraCabNetoExen2.AsFloat        := RoundTo(CDSCompraCabNetoExen1.AsFloat * (1-CDSCompraCabDSCTO_CALC.AsFloat * 0.01),-2);

  CDSCompraCabNETOMONOTRIBUTO2.AsFloat := RoundTo(CDSCompraCabNETOMONOTRIBUTO1.AsFloat * (1-CDSCompraCabDSCTO_CALC.AsFloat * 0.01),-5);
  CDSCompraCabNETOMONOTRIBUTO2.AsFloat := RoundTo(CDSCompraCabNETOMONOTRIBUTO2.AsFloat,-4);
  CDSCompraCabNETOMONOTRIBUTO2.AsFloat := RoundTo(CDSCompraCabNETOMONOTRIBUTO2.AsFloat,-3);
  CDSCompraCabNETOMONOTRIBUTO2.AsFloat := RoundTo(CDSCompraCabNETOMONOTRIBUTO2.AsFloat,-2);

  CDSCompraCabNETOMONOTRIBUTO2.AsFloat := RoundTo(CDSCompraCabNETOMONOTRIBUTO1.AsFloat * (1-CDSCompraCabDSCTO_CALC.AsFloat * 0.01),-5);
  CDSCompraCabNETOMONOTRIBUTO2.AsFloat := RoundTo(CDSCompraCabNETOMONOTRIBUTO2.AsFloat,-4);
  CDSCompraCabNETOMONOTRIBUTO2.AsFloat := RoundTo(CDSCompraCabNETOMONOTRIBUTO2.AsFloat,-3);
  CDSCompraCabNETOMONOTRIBUTO2.AsFloat := RoundTo(CDSCompraCabNETOMONOTRIBUTO2.AsFloat,-2);

  CDSCompraCabIMPORTEEXCLUIDO2.AsFloat := RoundTo(CDSCompraCabIMPORTEEXCLUIDO1.AsFloat * (1-CDSCompraCabDSCTO_CALC.AsFloat * 0.01),-2);
  CDSCompraCabDstoImporte.AsFloat      := (CDSCompraCabNetoGrav1.AsFloat +
                                           CDSCompraCabNetoExen1.AsFloat +
                                           CDSCompraCabNETOMONOTRIBUTO1.AsFloat +
                                           CDSCompraCabIMPORTEEXCLUIDO1.AsFloat) * CDSCompraCabDSCTO_CALC.AsFloat * 0.01;
  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
  WHILE NOT (CDSImpuestos.Eof) DO
    BEGIN
      CDSImpuestos.Edit;
      Neto                        := CDSImpuestosNETO.AsFloat;
      CDSImpuestosNETO.AsFloat    := 0;
      CDSImpuestosNETO.AsFloat    := Neto * (1-CDSCompraCabDSCTO_CALC.AsFloat * 0.01);
      CDSImpuestosImporte.AsFloat := 0;
      CDSImpuestosImporte.AsFloat := RoundTo(CDSImpuestosNETO.AsFloat * CDSImpuestosTASA.AsFloat * 0.01,-2);
      Acumulador                  := Acumulador + CDSImpuestosIMPORTE.AsFloat;
      CDSImpuestos.Next;
    END;
  CDSImpuestos.EnableControls;
  FormCompra_2.dbgIva.Refresh;
  CDSCompraCabTotal.AsFloat     := CDSCompraCabNetoGrav2.AsFloat + CDSCompraCabNETOMONOTRIBUTO2.AsFloat + CDSCompraCabNetoExen2.AsFloat + CDSCompraCabIMPORTEEXCLUIDO2.AsFloat + Acumulador;
  IF (PerciveIva = 'S') and (CDSCompraCabINGRESA_LIBRO_IVA.Value='S') AND (CDSCompraCabNetoGrav2.AsFloat >= Minimo_PercepcionIva) and (Not(IsZero(CDSCompraCabNetoGrav2.AsFloat))) THEN
    BEGIN
      IF CDSPercepcionIVA.RecordCount <= 0 THEN
        CDSPercepcionIVA.Insert
      ELSE
        CDSPercepcionIVA.Edit;
      CDSPercepcionIVACODIGO_PERCEPCION.Value := Codigo_PercepcionIva;
      CDSPercepcionIVADETALLE.Value           := Detalle_PercepcionIVA;
      CDSPercepcionIVATASA.AsFloat            := Tasa_PercepcionIva;
      CDSPercepcionIVACODIGOREGIMEN.Value     := Regimen;
      CDSPercepcionIVANETO.AsFloat            := CDSCompraCabNetoGrav2.AsFloat;
      CDSPercepcionIVAIMPORTE.AsFloat         := RoundTo((CDSPercepcionIVANeto.AsFloat * Tasa_PercepcionIva * 0.01),-2);
      CDSPercepcionIVA.Post;
      CDSCompraCabTotal.AsFloat               := (CDSCompraCabTotal.AsFloat + CDSPercepcionIVAIMPORTE.AsFloat);
    END
  ELSE
    IF (PerciveIva = 'S') AND (CDSCompraCabNetoGrav2.AsFloat <= Minimo_PercepcionIva) AND (CDSPercepcionIVA.RecordCount > 0) THEN
      CDSPercepcionIVA.Delete;
  IF (PerciveIB = 'S') AND (CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat >= Minimo_PercepcionIB) and
     (CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat >1) and (CDSCompraCabINGRESA_LIBRO_IVA.Value='S') THEN
    BEGIN
      CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat * (1- CDSCompraCabDsto.AsFloat * 0.01);
      IF CDSPercepcionIB.RecordCount <= 0 THEN
        begin
          if (Codigo_PercepcionIB)>-1 then
            begin
              CDSPercepcionIB.Insert;
              CDSPercepcionIBCODIGO_PERCEPCION.Value := Codigo_PercepcionIB;
              CDSPercepcionIBDETALLE.Value           := Detalle_PercepcionIB;
              CDSPercepcionIBTASA.AsFloat            := Tasa_PercepcionIB;
              CDSPercepcionIBJURIDICION.Value        := Juridiccion;
              CDSPercepcionIBNETO.AsFloat            := CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat;
              CDSPercepcionIBIMPORTE.AsFloat         := Roundto((CDSPercepcionIBNeto.AsFloat * Tasa_PercepcionIB * 0.01),-2);
              CDSPercepcionIB.Post;
              CDSCompraCabTotal.AsFloat              := CDSCompraCabTotal.AsFloat + CDSPercepcionIBIMPORTE.AsFloat;
            end;
          if (Codigo_PercepcionIB_2)>-1 then
            begin
              CDSPercepcionIB.Insert;
              CDSPercepcionIBCODIGO_PERCEPCION.Value := Codigo_PercepcionIB_2;
              CDSPercepcionIBDETALLE.Value           := Detalle_PercepcionIB_2;
              CDSPercepcionIBTASA.AsFloat            := Tasa_PercepcionIB_2;
              CDSPercepcionIBJURIDICION.Value        := Juridiccion_2;
              CDSPercepcionIBNETO.AsFloat            := CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat;
              CDSPercepcionIBIMPORTE.AsFloat         := RoundTo((CDSPercepcionIBNeto.AsFloat * Tasa_PercepcionIB_2 * 0.01),-2);
              CDSPercepcionIB.Post;

              CDSCompraCabTotal.AsFloat              := CDSCompraCabTotal.AsFloat + CDSPercepcionIBIMPORTE.AsFloat;
            end;
         end
       else
         begin
           if CDSPercepcionIB.Locate('CODIGO_PERCEPCION', Codigo_PercepcionIB,[]) Then
             begin
               CDSPercepcionIB.Edit;
               CDSPercepcionIBCODIGO_PERCEPCION.Value := Codigo_PercepcionIB;
               CDSPercepcionIBDetalle.Value           := Detalle_PercepcionIB;
               CDSPercepcionIBTasa.AsFloat            := Tasa_PercepcionIB;
               CDSPercepcionIBJURIDICION.Value        := Juridiccion;
               CDSPercepcionIBNeto.AsFloat            := CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat;
               CDSPercepcionIBImporte.AsFloat         := RoundTo((CDSPercepcionIBNeto.AsFloat * Tasa_PercepcionIB * 0.01),-2);
               CDSPercepcionIB.Post;
               CDSCompraCabTotal.AsFloat              := CDSCompraCabTOTAL.AsFloat + CDSPercepcionIBIMPORTE.AsFloat;
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
               CDSCompraCabTotal.AsFloat              := CDSCompraCabTotal.AsFloat + CDSPercepcionIBIMPORTE.AsFloat;
             end;
        end;
    end;
  CDSPercepcionIB.First;
  IF (PerciveIB = 'S') AND (CDSCompraCabNetoGrav2.AsFloat <= Minimo_PercepcionIB) AND ( Not(IsZero(CDSCompraCabNetoGrav2.AsFloat))) and (CDSPercepcionIB.RecordCount > 0) THEN
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

  if CDSCompraTributos.RecordCount>0 then
    begin
      CDSCompraCabRETENCION_IVA.AsFLoat:= 0;
      CDSCompraTributos.First;
      while not(CDSCompraTributos.Eof) do
        begin
          if CDSCompraTributosCODTRIBUTO.Value=23 then
            CDSCompraCabRETENCION_IVA.AsFLoat:= CDSCompraCabRETENCION_IVA.AsFloat+CDSCompraTributosIMPORTE.AsFloat;
          CDSCompraTributos.Next;
        end;
// MODIFICACION DEL IMPORTE TOTAL
//      CDSCompraCabTOTAL.AsFloat:=CDSCompraCabTOTAL.AsFloat - CDSCompraCabRETENCION_IVA.Value;

    end;


END;

procedure TDatosCompra.AplicarMascarasNumericas;
VAR I:Byte;
begin
//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='COMPDETUNITAR';
//  DMMain_FD.QOpciones.Open;
  MascaraDetalleUnitario          :=    DMMain_FD.MascaraDetalleUnitarioComp; //DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSCompraDetUnitario_Total).EditFormat    :=MascaraDetalleUnitario;
  TFloatField(CDSCompraDetUnitario_Total).DisplayFormat :=MascaraDetalleUnitario;

  TFloatField(CDSCompraDetUNIDADES_TOTAL).EditFormat    :=MascaraDetalleUnitario;
  TFloatField(CDSCompraDetUNIDADES_TOTAL).DisplayFormat :=MascaraDetalleUnitario;


//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='COMPDETCANTID';
//  DMMain_FD.QOpciones.Open;
  MascaraDetalleCantidad          := DMMain_FD.MascaraDetalleCantidadComp   ;//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSCompraDetCantidad).EditFormat    :=MascaraDetalleCantidad;
  TFloatField(CDSCompraDetCantidad).DisplayFormat :=MascaraDetalleCantidad;

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='COMPDETDESCUE';
//  DMMain_FD.QOpciones.Open;
  MascaraDetalleDescuento         := DMMain_FD.MascaraDetalleDescuentoComp; //DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSCompraDetDescuento).EditFormat    :=MascaraDetalleDescuento;
  TFloatField(CDSCompraDetDescuento).DisplayFormat :=MascaraDetalleDescuento;


//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='COMPDETTOTAL';
//  DMMain_FD.QOpciones.Open;
  MascaraDetalleTotal:=',0.00';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSCompraDetTotal).EditFormat        := MascaraDetalleTotal;
  TFloatField(CDSCompraDetTotal).DisplayFormat     := MascaraDetalleTotal;


//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='IVATASA';
//  DMMain_FD.QOpciones.Open;
  MascaraIvaTasa:='0.0';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSCompraDetIVA_Tasa).EditFormat        := MascaraIvaTasa;
  TFloatField(CDSCompraDetIVA_Tasa).DisplayFormat     := MascaraIvaTasa;
  TFloatField(CDSCompraDetIVA_SobreTasa).EditFormat   := MascaraIvaTasa;
  TFloatField(CDSCompraDetIVA_SobreTasa).DisplayFormat:= MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).EditFormat            := MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).DisplayFormat         := MascaraIvaTasa;
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
         // TFloatField(wwCDSVentaDet.Fields[i]).EditMask:='###,##0.0';
          TFloatField(CDSCompraCab.Fields[i]).EditFormat   :=MascaraCabecera;
          TFloatField(CDSCompraCab.fields[i]).DisplayFormat:=MascaraCabecera;
       end;
    end;
//  DMMain_FD.QOpciones.Close;
end;


PROCEDURE TDatosCompra.CDSCompraCabNewRecord(DataSet: TDataSet);
BEGIN
  CDSCompraCabId_Fc.Value              := IBGFcCompCab.IncrementFD(1);
  CDSCompraCabFechaCompra.AsDateTime   := Date;
  CDSCompraCabFECHAFISCAL.AsDateTime   := Date;
  CDSCompraCabCodigo.Value             := '';
  CDSCompraCabAnulado.Value            := 'N';
  CDSCompraCabTipoIVA.AsString         := '';
  CDSCompraCabLetraFac.AsString        := '';
  CDSCompraCabCondicionCompra.Clear;
  CDSCompraCabDstoImporte.AsFloat      := 0;
  CDSCompraCabDsto.AsFloat             := 0;
  CDSCompraCabNetoGrav1.AsFloat        := 0;
  CDSCompraCabNetoGrav2.AsFloat        := 0;
  CDSCompraCabCPBTE_INTERNO.Value      := 'N';
  CDSCompraCabREDUCIDA.Value           := 'N';
  CDSCompraCabNETOEXEN1.AsFloat        := 0;
  CDSCompraCabNETOEXEN2.AsFloat        := 0;
  CDSCompraCabNETOMONOTRIBUTO1.AsFloat := 0;
  CDSCompraCabNETOMONOTRIBUTO2.AsFloat := 0;
  CDSCompraCabDSTO.AsFloat             := 0;
  CDSCompraCabDSTOIMPORTE.AsFloat      := 0;
  CDSCompraCabIMPORTEEXCLUIDO1.AsFloat := 0;
  CDSCompraCabIMPORTEEXCLUIDO2.AsFloat := 0;
  CDSCompraCabRETENCION_IVA.AsFloat    := 0;

  CDSCompraCabCAE.Value                :='0';
  CDSCompraCabFACTURA_ELECTRONICA.Value:='N';
  CDSCompraCabSucursalCompraSetText(CDSCompraCabSucursalCompra,IntToStr(FormCompra_2.SucursalPorDefecto));
  CDSCompraCabDepositoSetText(CDSCompraCabDeposito,IntToStr(FormCompra_2.DepositoPorDefecto));
  CDSCompraCabUSUARIO.Value                       := DMMain_FD.UsuarioActivo;
  CDSCompraCabFECHA_HORA.AsDateTime               := Now;
  CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := 0;
  CDSCompraCabNRO_RUCA_EMISOR_AFIP.Value          := CDSEmpresaNRO_RUCA.Value;
  CDSCompraCabNRO_RENSPA_EMISOR.Value             := CDSEmpresaNRO_RENSPA.Value;
  CDSCompraCabCUIT_AUTORIZADO.Value               := CDSEmpresaCUIT_AUTORIZADO.Value;
  CDSCompraCabNOMBRE_AUTORIZADO.Value             := CDSEmpresaNOMBRE_AUTORIZADO.Value;
  CDSCompraCabTIPO_LIQUIDACION.Value              := 'X';
  CDSCompraCabNC_POR_DIFERENCIA.AsString          := 'N';

  CDSCompraCabMONEDA_CPBTE.AsInteger  :=  DMMain_FD.MonedaCompra;
  QMonedas.Close;
  QMonedas.ParamByName('id').Value:=CDSCompraCabMONEDA_CPBTE.Value;
  QMonedas.Open;

  if QMonedasCOTIZACION_COMPRA.AsString<>'' Then
    CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat := QMonedasCOTIZACION_COMPRA.AsFloat
  else
    CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFLoat :=1;

  CDSCompraCabMUESTRAMONEDACPBTE.Value        := QMonedasMONEDA.Value;
  CDSCompraCabMUESTRASIGNOMONEDACPBTE.Value   := QMonedasSIGNO.Value;

  CDSCompraCabID_OBRA.Value                   := -1;
  CDSCompraCabMUESTRAOBRA.Value               := '';

  QMonedas.Close;

  FormCompra_2.DBGrillaDetalle.Columns[7].Title.Caption:= 'P.Uni('+Trim(CDSCompraCabMUESTRASIGNOMONEDACPBTE.Value)+')';
  FormCompra_2.DBGrillaDetalle.Columns[9].Title.Caption:= 'Total('+Trim(CDSCompraCabMUESTRASIGNOMONEDACPBTE.Value)+')';
  ModificoIIB  :=False;
  ModificoP_IVA:=False;
END;

procedure TDatosCompra.CDSCompLoteBeforePost(DataSet: TDataSet);
begin
  if (CDSCompLoteLOTE.Value='') or (CDSCompLoteDESPACHO.Value='') Then
      begin
        SysUtils.Abort;
      end;
end;

procedure TDatosCompra.CDSCompLoteNewRecord(DataSet: TDataSet);
begin
  CDSCompLoteID.Value           := IBGCompLotes.IncrementFD(1);
  CDSCompLoteID_DET.Value       := CDSCompraDetID.Value;
  CDSCompLoteID_FC.Value        := CDSCompraDetID_CABFAC.Value;
  CDSCompLoteCODIGO.Value       := CDSCompraDetCODIGOARTICULO.Value;
  CDSCompLoteLOTE.AsString      := '';
  CDSCompLoteDESPACHO.AsString  := '-';
  CDSCompLoteCANTIDAD.Value     := CDSCompraDetCANTIDAD.Value;
  CDSCompLoteFECHA.AsDateTime   := CDSCompraDetFECHACOMPRA.AsDateTime;
  CDSCompLoteFECHAVTO.AsDateTime:= CDSCompraDetFECHACOMPRA.AsDateTime;
  CDSCompLoteDEPOSITO.Value     := CDSCompraDetDEPOSITO.Value;
  CDSCompLoteTIPO_COMPROB.Value := CDSCompraDetTIPOCPBTE.Value;
  CDSCompLoteID_LOTE.Value      := -1;
end;

PROCEDURE TDatosCompra.CDSCompraCabBeforePost(DataSet: TDataSet);
BEGIN
  CDSCompraCabNroCpbte.AsString := CDSCompraCabLetraFac.AsString +
                                   CDSCompraCabSucFac.AsString +
                                   CDSCompraCabNumeroFac.AsString;
END;

PROCEDURE TDatosCompra.CDSCompraCabCodigoSetText(Sender: TField;
  CONST Text: STRING);
VAR
  Aux,Cuit: STRING;
  LeeQr   :TQRData;
  LecturaQR:Boolean;
BEGIN
  LecturaQR:=False;
  if (Text<>#13) and (Text<>'') Then
    begin
      LeeQr:=TQRData.Create;
      if length(Trim(Text))>11 then
        begin
          Cuit:=Copy(Text,1,2)+'-'+Copy(Text,3,8)+'-'+Copy(Text,11,1);
          DMBuscadores.QBuscaxCuitProvee.Close;
          DMBuscadores.QBuscaxCuitProvee.ParamByName('CUIT').Value:=Cuit;
          DMBuscadores.QBuscaxCuitProvee.Open;

          if DMBuscadores.QBuscaxCuitProveeCODIGO.AsString<>'' then
            Aux:=Trim(DMBuscadores.QBuscaxCuitProveeCODIGO.AsString)
          else
            if (DMMain_FD.LeerQR(Text,LeeQr)) Then
            if LeeQR.Cuit<>'' Then
              begin

                Cuit:=Copy(LeeQR.Cuit,1,2)+'-'+Copy(LeeQR.Cuit,3,8)+'-'+Copy(LeeQR.Cuit,11,1);
                DMBuscadores.QBuscaxCuitProvee.Close;
                DMBuscadores.QBuscaxCuitProvee.ParamByName('CUIT').Value:=Cuit;
                DMBuscadores.QBuscaxCuitProvee.Open;
                if DMBuscadores.QBuscaxCuitProveeCODIGO.AsString<>'' then
                  begin
                    Aux:=Trim(DMBuscadores.QBuscaxCuitProveeCODIGO.AsString);
                    LecturaQR:=True;
                  end
                else
                  begin
                    Aux      :='';
                    Sender.AsString     :='';
                    LecturaQR:=False;
                  end;
              end;
        end
      else
        Aux := Trim(Text);

      Aux := Copy('000000', 1, 6 - Length(Aux)) + Aux;

      Sender.AsString := Aux;
      IF NOT (AsignaProveedor(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Proveedor No válido');
          Sender.AsString := '';
          if (FormCompra_2.Visible) then
            begin
              FormCompra_2.RxDBECodigo.Clear;
              FormCompra_2.RxDBECodigo.SetFocus;
            end;
        END;
      if LecturaQR then
        begin
          CDSCompraDet.Append;
          CDSCompraCabID_TIPOCOMPROBANTESetText(CDSCompraCabID_TIPOCOMPROBANTE, IntToStr(DMMain_FD.CompDeCommpraCC(LeeQr.TipoComp,1)));
          CDSCompraCabSucFacSetText(CDSCompraCabSUCFAC,LeeQr.Prefijo);
          CDSCompraCabNumeroFacSetText(CDSCompraCabNUMEROFAC,LeeQr.Numero);
          CDSCompraCabFECHACOMPRA.AsDateTime := LeeQr.Fecha;
          CDSCompraDetCodigoArticuloSetText(CDSCompraDetCODIGOARTICULO,DMMain_FD.GetConceptoCompras(CDSCompraCabCODIGO.AsString) );
          CDSCompraDetCANTIDAD.Value         := 1;
          CDSCompraDetUNIDADES_TOTALSetText(CDSCompraDetUNIDADES_TOTAL,FloatToStr(LeeQr.Importe/(1+CDSCompraDetIVA_TASA.Value*0.01)));
          CDSCompraDet.Post;
          //FormCompra_2.dbgDetalleCompra.SetFocus;
        end;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      HabilitarLabel;
      FormCompra_2.RxDBECodigo.Text := Aux;
      FreeAndNil(LeeQr);
    end;
END;

PROCEDURE TDatosCompra.CDSCompraCabSucFacSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  Sender.AsString := Copy('00000000', 1, Sender.Size - Length(Text)) + Text;
  CDSCompraCabNROCPBTE.Value:=CDSCompraCabLetraFac.Value+CDSCompraCabSucFac.Value+CDSCompraCabNumeroFac.Value;
  VerificaComprobante;
END;

PROCEDURE TDatosCompra.CDSCompraCabNumeroFacSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  Sender.AsString           := Copy('00000000', 1, Sender.Size - Length(Text)) + Text;
  CDSCompraCabNROCPBTE.Value:= CDSCompraCabLetraFac.Value +
                               CDSCompraCabSucFac.Value +
                               CDSCompraCabNumeroFac.Value;
  VerificaComprobante;
END;

PROCEDURE TDatosCompra.CDSCompraDetAfterPost(DataSet: TDataSet);
BEGIN
  { aca voy a los calculos de los totoales de la factura }
  SumarDetalle;
  CalcularTotales;
  // Borrar Los renglones con valor 0 (cero)....
  CDSImpuestos.EnableControls;
  CDSImpuestos.First;
  WHILE NOT (CDSImpuestos.Eof) DO
    BEGIN
      IF (CDSImpuestosImporte.AsFloat <= 0) OR (CDSImpuestosTasa.AsFloat <= 0) THEN
        begin
          CDSImpuestos.Delete;
          CDSImpuestos.First;
        end
      else
        CDSImpuestos.Next;
    END;
  // Ahora lo hago antes de gravar-... Verifica_ImpuestosEnCero;
END;

procedure TDatosCompra.CDSCompraDetAfterScroll(DataSet: TDataSet);
begin
  if Not(CDSCompraDet.IsEmpty) then
    FormCompra_2.pnLote.Enabled:=CDSCompraDetCONTROL_TRAZABILIDAD.Value='S';

  CDSCarneCab.Close;
  CDSCarneCab.Params.ParamByName('id_detfac').Value :=  CDSCompraDetID.AsInteger;// StrToInt(DatoNew);
  CDSCarneCab.Open;

  CDSCarneDet.Close;
  CDSCarneDet.Params.ParamByName('id_det').Value    :=  CDSCarneCabID.AsInteger;// StrToInt(DatoNew);
  CDSCarneDet.Open;

end;

procedure TDatosCompra.CDSCompraDetAfterDelete(DataSet: TDataSet);
begin
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

PROCEDURE TDatosCompra.CDSCompraDetAfterInsert(DataSet: TDataSet);
BEGIN
  IF (CDSCompraCabCodigo.AsString = '') OR (CDSCompracabNumeroFac.AsString ='') THEN
    CDSCompraDet.Cancel;
END;

PROCEDURE TDatosCompra.CDSCompraDetBeforePost(DataSet: TDataSet);
BEGIN
  IF CDSCompraDet.State IN [dsInsert, dsEdit] THEN
    CDSCompraDetNroCpbte.Value := CDSCompraCabLetraFac.Value + CDSCompraCabSucFac.Value + CDSCompraCabNumeroFac.Value;
  IF (CDSCompraDetCodigoArticulo.AsString = '') AND (CDSCompraDet.State IN [dsInsert, dsEdit]) THEN
    BEGIN
      CDSCompraDet.Cancel;
      SysUtils.Abort;
    END;
END;

PROCEDURE TDatosCompra.CDSCompraDetNewRecord(DataSet: TDataSet);
BEGIN
  CDSCompraDetId.Value                   := IBGFcCompDet.IncrementFD(1);
  CDSCompraDetRenglon.AsInteger          := CDSCompraDet.RecordCount + 1;
  CDSCompraDetCodigoArticulo.AsString    := '';
  CDSCompraDetDetalle.AsString           := '';
  CDSCompraDetUnidad.ASString            := '';
  CDSCompraDetCantidad.ASFloat           := 0;
  CDSCompraDetUnitario_Total.AsFloat     := 0;
  CDSCompraDetDescuento.ASFloat          := 0;
  CDSCompraDetDesglozaIVA.AsString       := CDSCompraCabDESGLOZAIVA.Value;
  CDSCompraDetTipoIva_Tasa.Value         := 0;
  CDSCompraDetTipoIva_Sobretasa.Value    := 0;
  CDSCompraDetIVA_Tasa.AsFloat           := 0;
  CDSCompraDetIVA_SobreTasa.AsInteger    := 0;
  CDSCompraDetTotal.AsFloat              := 0;
  CDSCompraDetCodigoProveedor.AsString   := CDSCompraCabCodigo.AsString;
  CDSCompraDetDeposito.Value             := CDSCompraCabDeposito.Value;
  CDSCompraDetTIPOCPBTE.Value            := CDSCompraCabTIPOCPBTE.Value;
  CDSCompraDetNroCpbte.AsString          := CDSCompraCabLetraFac.Value + CDSCompraCabSucFac.Value + CDSCompraCabNumeroFac.Value;
  CDSCompraDetFechaCompra.AsDateTime     := CDSCompraCabFechaCompra.AsDateTime;
  CDSCompraDetCLASECPBTE.AsString        := CDSCompraCabCLASECPBTE.AsString;
  CDSCompraDetID_CABFAC.Value            := CDSCompraCabID_FC.Value;
  CDSCompraDetCONTROL_TRAZABILIDAD.Value := 'N';
  CDSCompraDetCANTIDAD_UNIDADES.AsFloat  := 0;
  CDSCompraDetPRESENTACION_CANT.AsFloat  := 1;
  CDSCompraDetCANTIDAD_INVENTARIO.AsFloat:= 0;


END;

procedure TDatosCompra.CDSCompraDetPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  showmessage(e.Message);
end;

procedure TDatosCompra.CDSCompraDetReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  showmessage(e.Message);
end;

procedure TDatosCompra.CDSCompraDetTIPOIVA_TASAChange(Sender: TField);
begin
  if FormCompra_2.pcDetalleFc.ActivePageIndex=1 then
    if CDSCompraDetTIPOIVA_TASA.OldValue<>CDSCompraDetTIPOIVA_TASA.NewValue then
       CDSCompraDetIVA_TASA.AsFloat:=CDSListaIVATASA.AsFloat;

end;

{procedure TDatosCompra.CDSCompraDetTOTALGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var
 Aux1: Extended;
BEGIN
if text<>'' then
sender.AsString:=text;
  Aux1:=CDSCompraDetTOTAL.AsFloat;
  if (CDSCompraDetMODO_GRAVAMEN.Value<>'') and (CDSCompraDetMODO_GRAVAMEN.Value[1] in ['G','M']) Then
    if (CDSCompraCabDESGLOZAIVA.Value='S')  then
      Aux1:= CDSCompraDetTOTAL.AsFloat
    else
      if (CDSCompraCabDESGLOZAIVA.Value='N')then
        Aux1:= CDSCompraDetTOTAL.AsFloat * (1+CDSCompraDetIVA_TASA.AsFloat*0.01);
  Text := FormatFloat(',0.000', Aux1);

end;
}
procedure TDatosCompra.CDSCompraDetTOTALSetText(Sender: TField;
  const Text: string);
Var aux:Extended;
begin
  Sender.AsString:=Text;
  aux:=CDSCompraDetTOTAL.AsFloat/CDSCompraDetCOTIZACION.AsFloat;
  Aux:=Aux/(1-CDSCompraDetDESCUENTO.AsFloat*0.01);
  Aux:=Aux/CDSCompraDetCANTIDAD.AsFloat;
  CDSCompraDetUNIDADES_TOTALSetText(CDSCompraDetUNIDADES_TOTAL,FloatToStr(Aux));
end;

PROCEDURE TDatosCompra.CDSCompraDetCodigoArticuloSetText(Sender: TField;
  CONST Text: STRING);
VAR S,CodTxt: STRING;
Enter:Char;
BEGIN
   if (Text<>'') and (Text[1]<>#13) Then
     begin
      // Quitar enter de la cadena....
       AnsiReplaceStr(Text, #13, '');
       Sender.AsString := DMMain_FD.SearchCodigo(Text,DSCompraDet,FormCompra_2.VerCodigoAlternativo.Checked);
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
           FormBuscadorArticulos.Esquema     := -1;
           FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
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
        FormCompra_2.DBGrillaDetalle.OnKeyPress(FormCompra_2.DBGrillaDetalle,Enter);
     end;
END;

PROCEDURE TDatosCompra.CDSCompraCabSUCURSALCOMPRASetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  if (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Sucursal No Valido');
          FormCompra_2.RxDBESucursal.SetFocus;
        END;
    end;
END;

procedure TDatosCompra.CDSCompraCabTIPOCOMP_AFIPChange(Sender: TField);
begin
  if (CDSCompraCabTIPOCOMP_AFIP.Value ='186') or
     (CDSCompraCabTIPOCOMP_AFIP.Value ='188') or
     (CDSCompraCabTIPOCOMP_AFIP.Value ='189') or
     (CDSCompraCabTIPOCOMP_AFIP.Value ='182') or
     (CDSCompraCabTIPOCOMP_AFIP.Value ='180') or
     (CDSCompraCabTIPOCOMP_AFIP.Value ='151') or
     (CDSCompraCabTIPOCOMP_AFIP.Value ='153') or
     (CDSCompraCabTIPOCOMP_AFIP.Value ='155') or
     (CDSCompraCabTIPOCOMP_AFIP.Value ='157') or
     (CDSCompraCabTIPOCOMP_AFIP.Value ='159') or
     (CDSCompraCabTIPOCOMP_AFIP.Value ='180') or
     (CDSCompraCabTIPOCOMP_AFIP.Value ='183')  then
    begin
      FormCompra_2.pcModosFacturas.ActivePageIndex :=1;
      FormCompra_2.pcDetalleFc.ActivePageIndex     :=1;
      FormCompra_2.pcOtrosDetalles.ActivePageIndex :=1;
      FormCompra_2.pcModoFactura_2.ActivePageIndex :=1;
      FormCompra_2.pagGastosTributos.TabVisible    :=True;
      CDSCompraCabTIPO_LIQUIDACION.Value  := 'L';
      PerciveIva                          := 'N';
      PerciveIB                           := 'N';
    end
  else
    begin
      FormCompra_2.pcModosFacturas.ActivePageIndex :=0;
      FormCompra_2.pcDetalleFc.ActivePageIndex     :=0;
      FormCompra_2.pcOtrosDetalles.ActivePageIndex :=0;
      FormCompra_2.pcModoFactura_2.ActivePageIndex :=0;
      FormCompra_2.pagGastosTributos.TabVisible    :=False;
      CDSCompraCabTIPO_LIQUIDACION.Value:='X';
    end;
end;

PROCEDURE TDatosCompra.CDSCompraCabCondicionCompraSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarCondCompra(CDSCompraCabCodigo.Value, Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Condición de Compra No Válido');
          if FormCompra_2.Visible=True then
            FormCompra_2.RxDBECondCompra.SetFocus;
        END;
    end;
END;

PROCEDURE TDatosCompra.CDSCompraCabDepositoSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  if (Text[1]<>#13) and (Text<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Depósito No Vólido');
          if FormCompra_2.Visible=True then
            FormCompra_2.RxDBEDeposito.SetFocus;
        END;
    end;
END;

procedure TDatosCompra.CDSCompraDetCalcFields(DataSet: TDataSet);
begin
  CDSCompraDetMUESTRACOPIAS.Value:=Trunc( CDSCompraDetCANTIDAD.AsFloat);
end;

PROCEDURE TDatosCompra.CDSCompraDetCantidadSetText(Sender: TField;
  CONST Text: STRING);
VAR
  Aux3: Extended;
BEGIN
  if Text<>'' Then
    begin
      Sender.AsString := Text;
      Sender.AsFloat:=Moneda3D(' ',MascaraDetalleCantidad,Abs(Sender.AsFloat));
      //Sender.AsFloat:= StrToFloat(FormatFloat(MascaraDetalleCantidad,Sender.AsFloat));
      // aca aplica la cotizacion de la factura de la cabecera
      Aux3 := (CDSCompraDetUNIDADES_TOTAL.AsFloat / CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSCompraDetCOTIZACION.AsFloat;
      CDSCompraDetUnitario_Total.AsFloat := Aux3;
      CDSCompraDetTotal.AsFloat := Sender.AsFloat * Aux3 * (1 - CDSCompraDetDescuento.AsFloat * 0.01);
      CDSCompraDetCANTIDAD_UNIDADES.AsFloat:=CDSCompraDetCANTIDAD.AsFloat/CDSCompraDetPRESENTACION_CANT.AsFloat;
    end;
END;


procedure TDatosCompra.CDSCompraDetCODIGOARTICULOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 if (FormCompra_2<>nil) then
   begin
     if FormCompra_2.VerCodigoAlternativo.Checked=True then
       Text:=Trim(CDSCompraDetMUESTRACODALTERNATIVO.Value)
     else
       Text:=Trim(CDSCompraDetCODIGOARTICULO.Value);
   end;
end;



//procedure TDatosCompra.CDSCompraDetUNIDADES_TOTALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
//VAR
//  Aux1, Aux2, Aux3: Extended;
//BEGIN
//  Aux1:= CDSCompraDetUNIDADES_EXENTO.Value;
//  Aux2:= CDSCompraDetUNIDADES_GRAVADO.Value;
//  if (CDSCompraDetModo_Gravamen.Value<>'') Then
//    IF ((CDSCompraCabDesglozaIva.Value = 'N') or (FormCompra_2.DiscriminaIva='N')) THEN
//      Aux2:= Aux2 * (1+CDSCompraDetIVA_Tasa.AsFloat *0.01);
//  Aux3:= Aux1 + Aux2;
//  Text:= FormatFloat(MascaraDetalleUnitario,Aux3);//FloatToStrF(Aux3, ffFixed, 6, 3);
//end;

{procedure TDatosCompra.CDSCompraDetUNIDADES_TOTALGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
VAR
  Aux1: Extended;
BEGIN
  if text<>'' then
  sender.AsString:=text;
  // OLI para mostrar  el valor con o sin IVA incluido ****************************
  Aux1:=CDSCompraDetUNIDADES_TOTAL.AsFloat;
  if (CDSCompraDetMODO_GRAVAMEN.Value<>'') and (CDSCompraDetMODO_GRAVAMEN.Value[1] in ['G','M']) Then
    if (CDSCompraCabDESGLOZAIVA.Value='S')  then
      Aux1:= CDSCompraDetUNIDADES_TOTAL.AsFloat
    else
      if (CDSCompraCabDESGLOZAIVA.Value='N')then
        Aux1:= CDSCompraDetUNIDADES_TOTAL.AsFloat * (1+CDSCompraDetIVA_TASA.AsFloat*0.01);

  Text:= FormatFloat(MascaraDetalleUnitario,Aux1);

end;
}
procedure TDatosCompra.CDSCompraDetUNIDADES_TOTALSetText(Sender: TField;
  const Text: string);
VAR
  Num, AuxGravado, AuxExento, AuxExcluido, AuxTotal: Extended;
  TextAux:String;
BEGIN
  if (Text<>'') and (CDSCompraDetCODIGOARTICULO.AsString<>'')  Then
    begin
      TextAux:=Text;
      TextAux:=AnsiReplaceText(Text,',','');

      Num:=StrToFloat(TextAux);

      IF CDSCompraDetModo_Gravamen.Value <> '' THEN
        CASE CDSCompraDetModo_Gravamen.Value[1] OF
          'E','N': CDSCompraDetUNIDADES_EXENTO.AsFloat  := Num;
          'G'    : CDSCompraDetUNIDADES_GRAVADO.AsFloat := Num;

        END;
      AuxGravado  := CDSCompraDetUNIDADES_GRAVADO.AsFloat;
      AuxExento   := CDSCompraDetUNIDADES_EXENTO.AsFloat;
      AuxExcluido := CDSCompraDetUNIDADES_IMP_INTERNOS.AsFloat;

      AuxTotal                  := AuxGravado + AuxExento + AuxExcluido;
      Sender.AsString           := FloatToStr(AuxTotal);

      //AuxTotal    := Moneda3D(MascaraDetalleUnitario,CDSCompraDetUnitario_Total.Value);
      // IF wwCDSCompraCabDesglozaIva.Value = 'N' THEN
      //    AuxGravado := (AuxGravado / (1 + (CDSCompraDetIVA_Tasa.Value /100)));
     //   CDSCompraDetUnitario_Gravado.Value := AuxGravado;

        //Divido para llevarlos a la unidad de carga
      CDSCompraDetUNITARIO_EXENTO.AsFloat      := (AuxExento  / CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSCompraDetCOTIZACION.AsFloat;
      CDSCompraDetUNITARIO_GRAVADO.AsFloat     := (AuxGravado / CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSCompraDetCOTIZACION.AsFloat;
      CDSCompraDetUNITARIO_IMP_INTERNO.AsFloat := (AuxExcluido / CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSCompraDetCOTIZACION.AsFloat;
      CDSCompraDetUnitario_Total.AsFloat       := (AuxTotal / CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSCompraDetCOTIZACION.AsFloat;

      AuxGravado  := CDSCompraDetUNITARIO_GRAVADO.AsFloat;
      AuxExento   := CDSCompraDetUNITARIO_EXENTO.AsFloat;
      AuxExcluido := CDSCompraDetUNITARIO_IMP_INTERNO.AsFloat;

      // agregado por los descuentos...
      AuxGravado  := AuxGravado *( 1 - CDSCompraDetDescuento.AsFloat * 0.01);

      AuxTotal                  := AuxGravado + AuxExento + AuxExcluido;
//    antes >>>>> CDSCompraDetTotal.AsFloat := RoundTo(CDSCompraDetCantidad.AsFloat * AuxTotal *( 1 - CDSCompraDetDescuento.AsFloat * 0.01),-3);
      CDSCompraDetTotal.AsFloat := RoundTo(CDSCompraDetCantidad.AsFloat * AuxTotal,-4);
      CDSCompraDetTotal.AsFloat := RoundTo(CDSCompraDetTotal.AsFloat,-3);
      CDSCompraDetTotal.AsFloat := RoundTo(CDSCompraDetTotal.AsFloat,-2);

     // Sender.AsString           := FloatToStr(AuxTotal);
     // IF CDSCompraDet.State in [dsEdit,dsInsert] Then CDSCompraDet.Post;
  end;
END;


{procedure TDatosCompra.CDSCompraDetUNITARIO_TOTALGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
VAR
  Aux1: Extended;
BEGIN
  if text<>'' then

  sender.AsString:=text;
  // OLI para mostrar  el valor con o sin IVA incluido ****************************
  Aux1:=CDSCompraDetUNITARIO_TOTAL.AsFloat;
  if (CDSCompraDetMODO_GRAVAMEN.Value<>'') and (CDSCompraDetMODO_GRAVAMEN.Value[1] in ['G','M']) Then
    if (CDSCompraCabDESGLOZAIVA.Value='S')  then
      Aux1:= CDSCompraDetUNITARIO_TOTAL.AsFloat
    else
      if (CDSCompraCabDESGLOZAIVA.Value='N')then
        Aux1:= CDSCompraDetUNITARIO_TOTAL.AsFloat * (1+CDSCompraDetIVA_TASA.AsFloat*0.01);

  Text:= FormatFloat(MascaraDetalleUnitario,Aux1);


end;
}

//procedure TDatosCompra.CDSCompraDetUNITARIO_TOTALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
//VAR
//  Aux1, Aux2, Aux3: real;
//BEGIN
//  Aux1:= CDSCompraDetUNITARIO_EXENTO.Value;
//  Aux2:= CDSCompraDetUNITARIO_GRAVADO.Value;
//  if (CDSCompraDetModo_Gravamen.Value<>'') Then
//    IF ((CDSCompraCabDesglozaIva.Value = 'N') or (FormCompra_2.DiscriminaIva='N')) THEN
//      Aux2:= Aux2 * (1+CDSCompraDetIVA_Tasa.AsFloat *0.01);
//  Aux3:= Aux1 + Aux2;
//  Text:= FormatFloat(MascaraDetalleUnitario,Aux3);//FloatToStrF(Aux3, ffFixed, 6, 3);
//end;

procedure TDatosCompra.CDSCompraGastosNewRecord(DataSet: TDataSet);
begin
  CDSCompraGastosID.Value          := ib_gastos.IncrementFD(1);
  CDSCompraGastosID_FC.Value       := CDSCompraCabID_FC.Value;
  CDSCompraGastosCODGASTO.Value    := -1;
  CDSCompraGastosDESCRIPCION.Value := '';
  CDSCompraGastosBASEIMPONIBLE.Value :=0;
  CDSCompraGastosALICUOTA.Value      :=0;
  CDSCompraGastosALICUOTAIVA.Value   :=0;
  CDSCompraGastosIMPORTE.Value       :=0;
  CDSCompraGastosMUESTRAGASTO.Value  :='';

end;

//procedure TDatosCompra.CDSCompraDetUnitario_TotalGetText(Sender: TField;
//  var Text: string; DisplayText: Boolean);
//VAR
//  Aux1, Aux2, Aux3: real;
//BEGIN
//  Aux1:= CDSCompraDetUNITARIO_EXENTO.Value;
//  Aux2:= CDSCompraDetUnitario_Gravado.Value;
//  if (CDSCompraDetModo_Gravamen.Value<>'') Then
//    IF ((wwCDSCompraCabDesglozaIva.Value = 'N') or (FormCompra_2.DiscriminaIva='N')) THEN
//      Aux2:= Aux2 * (1+CDSCompraDetIVA_Tasa.Value *0.01);
//  Aux3:= Aux1 + Aux2;
//  Text:= FormatFloat(MascaraDetalleUnitario,Aux3);//FloatToStrF(Aux3, ffFixed, 6, 3);
//end;

PROCEDURE TDatosCompra.DataModuleDestroy(Sender: TObject);
BEGIN
  DatosCompra := NIL;
END;

PROCEDURE TDatosCompra.CDSImpuestosNewRecord(DataSet: TDataSet);
BEGIN
  CDSImpuestosId_Impuesto.Value  := IBGImpuestos.IncrementFD(1);
  CDSImpuestosID_FCCOMPCAB.Value := CDSCompraCabID_FC.Value;
  CDSImpuestosNETO.AsFloat   :=0;
  CDSImpuestosTASA.AsFloat   :=0;
  CDSImpuestosIMPORTE.AsFloat:=0;
END;

procedure TDatosCompra.CDSPercepcionIVAAfterDelete(DataSet: TDataSet);
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

procedure TDatosCompra.CDSPercepcionIVAAfterEdit(DataSet: TDataSet);
begin
  ModificoP_IVA:=True;
end;

procedure TDatosCompra.CDSPercepcionIVABeforePost(DataSet: TDataSet);
begin
  if (CDSPercepcionIVACODIGO_PERCEPCION.AsString='') or (CDSPercepcionIVAID_PERCEPCION.AsString='') then
    CDSPercepcionIVA.Cancel;
end;

PROCEDURE TDatosCompra.CDSPercepcionIVANewRecord(DataSet: TDataSet);
BEGIN
  CDSPercepcionIVAID_Percepcion.Value := IBGPercepcionIVA.IncrementFD(1);
  CDSPercepcionIVAID_FCCOMPCAB.Value  := CDSCompraCabID_FC.Value;
  CDSPercepcionIVACODIGOREGIMEN.Value := Regimen;
  CDSPercepcionIVANETO.AsFloat    := 0;
  CDSPercepcionIVATASA.AsFloat    := 0;
  CDSPercepcionIVAIMPORTE.AsFloat := 0;
END;

procedure TDatosCompra.CDSRetIVANewRecord(DataSet: TDataSet);
begin
  CDSRetIVAID.Value                   := ibgRetIVA.IncrementFD(1);
  CDSRetIVAID_LIQ.Value               := CDSCompraCabID_FC.Value;
  CDSRetIVAFECHA.AsDateTime           := CDSCompraCabFECHACOMPRA.AsDateTime;
  CDSRetIVACODIGO_PROVEEDOR.Value     := CDSCompraCabCODIGO.Value;
  CDSRetIVACODIGO_REGIMEN.Value       := 926;
  CDSRetIVACONCEPTO.Value             := '';
  CDSRetIVATASA.AsFloat               := 100;
  CDSRetIVAMINIMO_NO_IMPONIBLE.AsFloat:= 0;
  CDSRetIVAIMPUESTO_RETENIDO.ASFloat  := 0;
  CDSRetIVAANULADA.Value              := 'N';
  CDSRetIVAOBSERVACIONES.Value        := '';
  CDSRetIVAESTADO.Value               := 'P';  // P pendiente ... L liquidad
  CDSRetIVABASE_IMPONIBLE.AsFloat     := 0;
  CDSRetIVANUMERO_RETENCION.Value     := '00'+CDSCompraCabSUCFAC.Value+CDSCompraCabNUMEROFAC.Value;
end;

procedure TDatosCompra.CDSPercepcionIBAfterDelete(DataSet: TDataSet);
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

procedure TDatosCompra.CDSPercepcionIBAfterEdit(DataSet: TDataSet);
begin
  ModificoIIB:=True;
end;

procedure TDatosCompra.CDSPercepcionIBBeforePost(DataSet: TDataSet);
begin
  if (CDSPercepcionIBCODIGO_PERCEPCION.ASString='') or (CDSPercepcionIBID_PERCEPCION.ASString='') Then
    CDSPercepcionIB.Cancel;
end;

procedure TDatosCompra.CDSPercepcionIBCODIGO_PERCEPCIONSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Trim(Text);
  if Text<>'' then
    begin
      CDSTasaPercepIIBB.Close;
      CDSTasaPercepIIBB.Params.ParamByName('id').value := Sender.AsInteger;
      CDSTasaPercepIIBB.Open;
      if not(CDSTasaPercepIIBB.IsEmpty) then
        begin
          CDSPercepcionIBTASA.AsFloat     := CDSTasaPercepIIBBTASA.AsFloat;
          CDSPercepcionIBDETALLE.AsString := CDSTasaPercepIIBBDESCRIPCION.AsString;
          CDSPercepcionIBJURIDICION.Value := CDSTasaPercepIIBBJURIDICION.Value;
          CDSPercepcionIBNeto.AsFloat     := CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat;
          CDSPercepcionIBImporte.AsFloat  := RoundTo((CDSPercepcionIBNETO.AsFloat * CDSPercepcionIBTASA.AsFloat * 0.01),-2);
          CDSPercepcionIB.Post;
          CDSCompraCabTotal.AsFloat       := CDSCompraCabTotal.AsFloat + CDSPercepcionIBIMPORTE.AsFloat;
       end
     else
       Sender.Clear;
       CDSTasaPercepIIBB.Cancel;
    end;
end;

procedure TDatosCompra.CDSPercepcionIBIMPORTESetText(Sender: TField;
  const Text: string);
begin
 if (CDSPercepcionIVACODIGO_PERCEPCION.AsString='') or (CDSPercepcionIVACODIGO_PERCEPCION.AsString='') then
    CDSPercepcionIVA.Cancel;
  if (CDSPercepcionIBID_PERCEPCION.AsString='') or (CDSPercepcionIBCODIGO_PERCEPCION.AsString='') then
    CDSPercepcionIB.Cancel;
 if (CDSImpuestosID_IMPUESTO.AsString='') or (CDSImpuestosCODIGO_GRAVAMEN.AsString='') then
    CDSImpuestos.Cancel;


  if sender.DataSet.State in [dsInsert,dsEdit] Then

  Sender.AsString:=Text;

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

PROCEDURE TDatosCompra.CDSPercepcionIBNewRecord(DataSet: TDataSet);
BEGIN
  CDSPercepcionIBID_Percepcion.Value := IBGPercepcionIB.IncrementFD(1);
  CDSPercepcionIBID_FCCOMPCAB.Value  := CDSCompraCabID_FC.Value;
  CDSPercepcionIBJURIDICION.Value    := Juridiccion;
END;

procedure TDatosCompra.CDSCompraCabDSTOIMPORTESetText(Sender: TField;
  const Text: string);
var Aux1,Aux2,Importe:Extended;
begin
  Sender.AsString := Text;
  Aux1            := (CDSCompraCabNETOGRAV1.AsFloat+CDSCompraCabNETOEXEN1.AsFloat+CDSCompraCabNETOMONOTRIBUTO1.AsFloat );
  Aux2            := (CDSCompraCabNETOGRAV1.AsFloat+CDSCompraCabNETOEXEN1.AsFloat+CDSCompraCabNETOMONOTRIBUTO1.AsFloat)-CDSCompraCabDSTOIMPORTE.AsFloat;
  Importe         := ((Aux1-Aux2)/Aux1)*100;

  // Importe Calculado del Decuento pasado a Float
  CDSCompraCabDSCTO_CALC.Value  := Importe;
  CDSCompraCabDSTO.AsFloat:=Importe;//SetText(CDSCompraCabDSTO,FloatToStr(Importe));

  ReCalcular;

  //CDSCompraCabDSTO.AsFloat      := Importe;
end;

PROCEDURE TDatosCompra.CDSCompraCabDSTOSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  Sender.AsString := Text;
 // if Not(CDSCompraCabDSCTO_CALC.Value>0) then
    CDSCompraCabDSCTO_CALC.Value  := Sender.ASFLoat;
  SumarDetalle;
  CalcularTotales;
  if FormCompra_2.Visible then
    FormCompra_2.dbeDscto.SetFocus;
END;

PROCEDURE TDatosCompra.CDSCompraCabFECHACOMPRASetText(Sender: TField;
  CONST Text: STRING);
var d,m,y:word;
BEGIN
  if CDSCompraCab.State<>dsBrowse then
    begin
      Sender.AsString:=Text;
      if DatosCompra.CDSCompraCabFECHAFISCAL.AsString='' then
        DatosCompra.CDSCompraCabFECHAFISCAL.AsDateTime:=Sender.AsDateTime;
    end;
  //if sender.AsString<>'' Then
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
//          DMStoreProcedure.QVerificaPeriodoFiscal.Close;
//        end;
//      end;
END;

procedure TDatosCompra.CDSCompraCabFECHAFISCALSetText(Sender: TField;
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
          if (Sender.AsDateTime>Date) or ( y <1900) Then
            begin
              if MessageDlg('Fecha fuera de rango... acepta igual?',mtConfirmation,mbYesNo,0,mbNo)=mrNo Then
                begin
                  CDSCompraCabFECHAFISCAL.Clear;
                  FormCompra_2.dbeFechaFiscal.Clear;
                  Sender.Clear;
                  // esto se agrega...
                  CDSCompraCabFECHAFISCAL.AsDateTime:=Date;
                  FormCompra_2.dbeFechaFiscal.SetFocus;
                end;
            end
          else
            if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
              begin
                ShowMessage('Fecha no Valida, este período fiscal no esta permitido');
                CDSCompraCabFECHAFISCAL.Clear;
                Sender.Clear;
                FormCompra_2.dbeFechaFiscal.SetFocus;
              end
            else
              CDSCompraCabFECHAFISCAL.AsDateTime:=Sender.AsDateTime ;
          DMStoreProcedure.QVerificaPeriodoFiscal.Close;
        end;
      end;
end;

PROCEDURE TDatosCompra.CDSCondPagoNewRecord(DataSet: TDataSet);
BEGIN
  CDSCondPagoID.Value         := ibgCondPago.IncrementFD(1);
  CDSCondPagoID_FC.Value      := CDSCompraCabID_FC.Value;
  CDSCondPagoTIPOCPBTE.Value  := CDSCompraCabTIPOCPBTE.Value;
  CDSCondPagoCLASECPBTE.Value := CDSCompraCabCLASECPBTE.Value;
  CDSCondPagoNROCPBTE.Value   := CDSCompraCabNROCPBTE.Value;
  CDSCondPagoCODIGO.Value     := CDSCompraCabCodigo.Value;
  CDSCondPagoITEM.Value       := CDSCondPago.RecordCount + 1;
END;

PROCEDURE TDatosCompra.CDSCondPagoDSCTOSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  Sender.asString := Text;
  CDSCondPagoIMPORTE.AsFloat := CDSCompraCabTOTAL.AsFloat * (0.01 * (100 - Sender.AsFloat));
END;

procedure TDatosCompra.CDSCompraDetIVA_TASASetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=Text;
  CDSCompraDetIVA_SOBRETASA.AsFloat:=Sender.AsFloat*0.5;
end;


procedure TDatosCompra.CDSCompraCabLetraFacChange(Sender: TField);
begin
  CDSCompraCabNROCPBTE.Value:= CDSCompraCabLetraFac.Value +
                               CDSCompraCabSucFac.Value +
                               CDSCompraCabNumeroFac.Value;
end;


procedure TDatosCompra.CDSCompraCabMONEDA_CPBTE_COTIZACIONChange(
  Sender: TField);
begin
  RecotizarPrecios; //
end;

{procedure TDatosCompra.wwCDSCompraCabMONEDA_COTIZACIONChange(Sender: TField);
var p:TBookmark;
AuxGravado,AuxExento,AuxExcluido,AuxTotal:Real;
begin
   // Recalcular tdos los precios
  if ( wwCDSCompraCab.State<>dsBrowse ) then
    begin
      p:=CDSCompraDet.GetBookmark;
      CDSCompraDet.DisableControls;
      CDSCompraDet.First;
      while Not(CDSCompraDet.Eof) do
        begin
          CDSCompraDet.Edit;

          CDSCompraDetUNITARIO_EXENTO.Value      :=(CDSCompraDetUNIDADES_EXENTO.Value/wwCDSCompraCabMONEDA_CPBTE_COTIZACION.Value) * CDSCompraDetCOTIZACION.Value;
          CDSCompraDetUNITARIO_GRAVADO.Value     :=(CDSCompraDetUNIDADES_GRAVADO.Value/wwCDSCompraCabMONEDA_CPBTE_COTIZACION.Value) * CDSCompraDetCOTIZACION.Value;
          CDSCompraDetUNITARIO_IMP_INTERNO.Value :=(CDSCompraDetUNIDADES_IMP_INTERNOS.Value/wwCDSCompraCabMONEDA_CPBTE_COTIZACION.Value) * CDSCompraDetCOTIZACION.Value;
          CDSCompraDetUnitario_Total.Value       :=(CDSCompraDetUNIDADES_TOTAL.Value/wwCDSCompraCabMONEDA_CPBTE_COTIZACION.Value) * CDSCompraDetCOTIZACION.Value;

          AuxGravado  := CDSCompraDetUNITARIO_GRAVADO.Value;
          AuxExento   := CDSCompraDetUNITARIO_EXENTO.Value;
          AuxExcluido := CDSCompraDetUNITARIO_IMP_INTERNO.Value;


          AuxTotal                  := AuxGravado + AuxExento + AuxExcluido;
          CDSCompraDetTotal.Value := CDSCompraDetCantidad.AsFloat * AuxTotal *( 1 - CDSCompraDetDescuento.Value * 0.01);
            //Sender.AsString           := FloatToStr(AuxTotal);
          CDSCompraDet.Next;
        end;
      SumarDetalle;
      CDSCompraDet.GotoBookmark(p);
      CDSCompraDet.FreeBookmark(p);
      CDSCompraDet.EnableControls;

    end;

end;
 }
procedure TDatosCompra.CDSImpuestosBeforeEdit(DataSet: TDataSet);
begin
  OldValueImpuesto:=CDSImpuestosIMPORTE.AsFloat;
end;

procedure TDatosCompra.CDSImpuestosIMPORTESetText(Sender: TField;
  const Text: String);
begin
  if (CDSPercepcionIVACODIGO_PERCEPCION.AsString='') or (CDSPercepcionIVACODIGO_PERCEPCION.AsString='') then
    CDSPercepcionIVA.Cancel;
  if (CDSPercepcionIBID_PERCEPCION.AsString='') or (CDSPercepcionIBCODIGO_PERCEPCION.AsString='') then
    CDSPercepcionIB.Cancel;
  if (CDSImpuestosID_IMPUESTO.AsString='') or (CDSImpuestosCODIGO_GRAVAMEN.AsString='') then
    CDSImpuestos.Cancel;


  if sender.DataSet.State in [dsInsert,dsEdit] Then

  Sender.AsString:=Text;

  CDSCompraCabTOTAL.AsFloat := CDSCompraCabNETOGRAV2.AsFloat+
                               CDSCompraCabNETOEXEN2.AsFloat+
                               CDSCompraCabIMPORTEEXCLUIDO2.AsFloat+
                               CDSCompraCabNETOMONOTRIBUTO2.AsFloat;
  CDSImpuestos.First;
  While not(CDSImpuestos.Eof) do
    begin
      CDSCompraCabTOTAL.AsFloat := CDSCompraCabTOTAL.AsFloat + CDSImpuestosIMPORTE.AsFloat;
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

  if (Abs(OldValueImpuesto-CDSImpuestosIMPORTE.NewValue)>0) then
    begin
       DMMain_FD.logFileFD(1,0,'Modificacion de Importe Iva Importe Viejo = '+FormatFloat(',0.00',OldValueImpuesto)+
                               ' Nuevo Importe ='+FormatFloat(',0.00', CDSImpuestosIMPORTE.NewValue) + ' - Fc Compra '+CDSCompraCabNROCPBTE.AsString+
                               '('+CDSCompraCabID_FC.AsString+')','FCCOMP');
    end;

  if CDSImpuestos.State in [dsInsert,dsEdit] Then CDSImpuestos.Post;
  if CDSPercepcionIVA.State in [dsInsert,dsEdit] Then CDSPercepcionIVA.Post;
  if CDSPercepcionIB.State in [dsInsert,dsEdit] Then CDSPercepcionIB.Post;
end;

procedure TDatosCompra.CDSCompraCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarComprpobante(Sender.AsInteger)) THEN
        BEGIN
          ShowMessage('Dato no Valido');
          Sender.AsString := '';
        END;
      IF CDSCompraCab.State = dsInsert THEN
        begin
          FormCompra_2.UltimoComprobante;
          ReAsignaDetalle;
          HabilitarLabel;
        end;
    end;
end;

procedure TDatosCompra.CDSCompraDetDESCUENTOSetText(Sender: TField;
  const Text: String);
VAR
  Aux3,Gravado,Exento,Internos,Total: Real;
BEGIN
  if Text<>'' Then
    begin
      // cambio para aplicar descuento solo a lo gravado 17/10/2019
      Sender.AsString := Text;
      Sender.AsFloat  := StrToFloat(FormatFloat(MascaraDetalleDescuento,Sender.AsFloat));
      Gravado         := CDSCompraDetUNIDADES_GRAVADO.AsFloat;
      Exento          := CDSCompraDetUNIDADES_EXENTO.AsFloat;
      Internos        := CDSCompraDetUNIDADES_IMP_INTERNOS.AsFloat;

      Total:= (Gravado * (1-Sender.AsFloat * 0.01) + Exento + Internos) * CDSCompraDetCANTIDAD.AsFloat;

  //    CDSCompraDetTotal.AsFloat := CDSCompraDetCantidad.AsFloat * Aux3 * (1 - Sender.AsFloat * 0.01);

//      Sender.AsString := Text;
//      Sender.AsFloat:=StrToFloat(FormatFloat(MascaraDetalleDescuento,Sender.AsFloat));
//      Aux3 := CDSCompraDetUNIDADES_EXENTO.AsFloat+CDSCompraDetUNIDADES_GRAVADO.AsFloat+CDSCompraDetUNIDADES_IMP_INTERNOS.AsFloat;
//      CDSCompraDetTotal.AsFloat := CDSCompraDetCantidad.AsFloat* Aux3 * (1 - Sender.AsFloat * 0.01);

      CDSCompraDetTOTAL.Value:=Total ;
    end;
end;


{procedure TDatosCompra.CDSCompraDetUnitario_TotalGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR
  Aux1, Aux2, Aux3, Aux4: real;
BEGIN
  Aux1:=CDSCompraDetUNITARIO_EXENTO.Value;
  Aux2:=CDSCompraDetUNITARIO_GRAVADO.Value;
  Aux3:=CDSCompraDetUNITARIO_IMP_INTERNO.Value;
  IF wwCDSCompraCabDESGLOZAIVA.Value = 'N' THEN
    Aux2:=(Aux2 + (Aux2 * CDSCompraDetIVA_TASA.Value * 0.01));
  Aux4:=Aux1 + Aux2 + Aux3;
  Text:=FormatFloat(MascaraDetalleUnitario,Aux4);//FloatToStrF(Aux3, ffFixed, 6, 3);

end;
}
{procedure TDatosCompra.CDSCompraDetTOTALGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR
  Aux1: real;
BEGIN
  Aux1 := Sender.AsFloat;
  IF wwCDSCompraCabDESGLOZAIVA.Value = 'N' THEN
    Aux1 := Moneda3D(MascaraDetalleTotal,Aux1 * (1 + CDSCompraDetIVA_TASA.Value * 0.01));
  Text := FormatFloat(MascaraDetalleTotal,Aux1);//FloatToStrF(Aux1, ffFixed, 6, 3);

END;
}


procedure TDatosCompra.CDSCompraSubDetalleNewRecord(DataSet: TDataSet);
begin
  CDSCompraSubDetalleID.Value             := IBGFcCompSubDet.IncrementFD(1);
  CDSCompraSubDetalleID_DETFAC.Value      := CDSCompraDetID.Value;
  CDSCompraSubDetalleID_CABFAC.Value      := CDSCompraCabID_FC.Value;
  CDSCompraSubDetalleTIPOCPBTE.Value      := CDSCompraCabTIPOCPBTE.Value;
  CDSCompraSubDetalleCLASECPBTE.Value     := CDSCompraCabCLASECPBTE.Value;
  CDSCompraSubDetalleFECHA.AsDateTime     := CDSCompraCabFECHACOMPRA.AsDateTime;
  CDSCompraSubDetalleNROCPBTE.Value       := CDSCompraCabNROCPBTE.Value;
  CDSCompraSubDetalleCODIGOARTICULO.Value := CDSCompraDetCodigoArticulo.Value;
  CDSCompraSubDetalleDEPOSITO.Value       := CDSCompraCabDeposito.Value;
//  CDSCompraSubDetalleTIPO.Value           :='I';
end;

procedure TDatosCompra.CDSCompraSubDetalleBeforeInsert(DataSet: TDataSet);
begin
  if ((CDSCompraSubDetalle.RecordCount+1)> CDSCompraDetCantidad.AsFloat)
  or (CDSCompraDetCON_NRO_SERIE.Value='N') Then
    begin
      sysutils.Abort;
      RAISE Exception.Create('No se pueden cargara mas items de los comprados...')
    end;
end;

procedure TDatosCompra.CDSCompraSubDetalleSERIESetText(Sender: TField;
  const Text: String);
var i:integer;
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      i:=FormCompra_2.CodigosSeries.IndexOf(UpperCase(Text));
      if i>=0 Then
        begin
          Sender.Clear;
          showmessage('Codigo de Serie Ingresado ...... ');
          SysUtils.Abort;
        end;
      if CDSCompraSubDetalle.State=dsBrowse Then
       CDSCompraSubDetalle.edit;
      Sender.AsString:=UpperCase(Text);
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

procedure TDatosCompra.CDSCompraTributosNewRecord(DataSet: TDataSet);
begin
  CDSCompraTributosID.Value            := ib_Tributos.IncrementFD(1);
  CDSCompraTributosID_FC.Value         := CDSCompraCabID_FC.Value;
  CDSCompraTributosCODTRIBUTO.Value    := -1;
  CDSCompraTributosDESCRIPCION.Value   := '';
  CDSCompraTributosBASEIMPONIBLE.Value := 0;
  CDSCompraTributosALICUOTA.Value      := 0;
  CDSCompraTributosIMPORTE.Value       := 0;
  CDSCompraTributosMUESTRATRIBUTO.Value := '';

end;

procedure TDatosCompra.CDSCompra_DTENewRecord(DataSet: TDataSet);
begin
  CDSCompra_DTEID.Value     := ib_dte.IncrementFD(1);
  CDSCompra_DTEID_FC.Value  := CDSCompraCabID_FC.Value;
end;

procedure TDatosCompra.CDSOCompraNewRecord(DataSet: TDataSet);
begin
  CDSOCompraID_FC.Value := CDSCompraCabID_FC.Value;
  CDSOCompraID.Value    := ibFcCom_OC.IncrementFD(1);
end;

procedure TDatosCompra.CDSCompraSubDetalleBeforePost(DataSet: TDataSet);
begin
   if CDSCompraSubDetalleSERIE.Value='' Then
     SysUtils.Abort;
end;

procedure TDatosCompra.CDSCompraSubDetalleBeforeEdit(DataSet: TDataSet);
VAR I:Integer;
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
    END
  else
    begin
      i:=FormCompra_2.CodigosSeries.IndexOf(CDSCompraSubDetalleSERIE.AsString);
      FormCompra_2.CodigosSeries.Delete(I);
    end;
  QNroSerie.Close;
end;

procedure TDatosCompra.CDSCompraSubDetalleAfterPost(DataSet: TDataSet);
begin
  FormCompra_2.CodigosSeries.Add(CDSCompraSubDetalleSERIE.Value);
end;

procedure TDatosCompra.CDSCompraSubDetalleBeforeDelete(DataSet: TDataSet);
VAR i:Integer;
begin
  i:=FormCompra_2.CodigosSeries.IndexOf(CDSCompraSubDetalleSERIE.AsString);
  FormCompra_2.CodigosSeries.Delete(I);
end;

procedure TDatosCompra.CDSCompraDetBeforeDelete(DataSet: TDataSet);
var Detalle:String;
begin
  if FormBuscarRecepcionesPendientes.CDSRecepCab.State=dsBrowse Then
    begin
      if FormBuscarRecepcionesPendientes.CDSRecepCab.Locate('ID_RECMER',CDSCompraDetID_RECEPCION_CAB.Value,[]) Then
        if FormBuscarRecepcionesPendientes.CDSRecepDet.Locate('id',CDSCompraDetID_RECEPCION_DET.Value,[]) Then
           begin
             FormBuscarRecepcionesPendientes.CDSRecepDet.Edit;
             FormBuscarRecepcionesPendientes.CDSRecepDetID_FACTURA.Clear;
             FormBuscarRecepcionesPendientes.CDSRecepDetNROFACTURA.Clear;
             FormBuscarRecepcionesPendientes.CDSRecepDet.Post;
           end;
    end;

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
                  FormatFloat('0.00',CDSCompraDetUNITARIO_TOTAL.AsFloat);
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

procedure TDatosCompra.CDSCompraCabNetoGrav1SetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=Text;
  CalcularTotales;
end;

procedure TDatosCompra.GravarDetalle;
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSCompraDet.State<>dsBrowse then
      CDSCompraDet.Post;
    CDSCompraDet.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo gravar el cambio en el detalle...');
  end;
end;

procedure TDatosCompra.ReCalcular;
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

end.

