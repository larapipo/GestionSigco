UNIT DMVentaCtdo;

INTERFACE

USES
  Windows, Messages, Classes, Db, Forms, SysUtils, Dialogs,
  Librerias, Provider, DBClient, IBGenerator,DBGrids,Variants,  Menus, Controls,
  FMTBcd, SqlExpr, DBXCommon, Math,StrUtils,Types, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

TYPE
  TDatosVentasCtdo = CLASS(TDataModule)
    DSPImpuestos: TDataSetProvider;
    DSPSucursal: TDataSetProvider;
    DSPVentaDet: TDataSetProvider;
    DSPVentaCab: TDataSetProvider;
    DSPDeposito: TDataSetProvider;
    DSPIva: TDataSetProvider;
    DSPInscripcion: TDataSetProvider;
    DSPStock: TDataSetProvider;
    DSPLdr: TDataSetProvider;
    IBGFc_Cab: TIBGenerator;
    IBGFc_Det: TIBGenerator;
    IBGFc_Impuestos: TIBGenerator;
    DSPVtaSubDet: TDataSetProvider;
    CDSVtaSubDetalle: TClientDataSet;
    CDSVtaSubDetalleID: TIntegerField;
    CDSVtaSubDetalleID_DETFAC: TIntegerField;
    CDSVtaSubDetalleID_CABFAC: TIntegerField;
    CDSVtaSubDetalleTIPOCPBTE: TStringField;
    CDSVtaSubDetalleCLASECPBTE: TStringField;
    CDSVtaSubDetalleNROCPBTE: TStringField;
    CDSVtaSubDetalleCODIGOARTICULO: TStringField;
    CDSVtaSubDetalleSERIE: TStringField;
    CDSVtaSubDetalleDEPOSITO: TIntegerField;
    DSVtaSubDetalle: TDataSource;
    IBGFcVtaSubDet: TIBGenerator;
    CDSVtaSubDetalleHACERINGRESO: TBooleanField;
    CDSVtaSubDetalleTIPO: TStringField;
    CDSDetalleXML: TClientDataSet;
    CDSFcVtaCabXML: TClientDataSet;
    CDSDeposito: TClientDataSet;
    CDSDepositoId: TIntegerField;
    CDSDepositoNombre: TStringField;
    CDSDepositoSucursal: TIntegerField;
    DSVentaDet: TDataSource;
    DSImpuestos: TDataSource;
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
    CDSVentaCab: TClientDataSet;
    CDSVentaCabID_FC: TIntegerField;
    CDSVentaCabMUESTRADEPOSITO: TStringField;
    CDSVentaCabMUESTRASUCURSAL: TStringField;
    CDSVentaCabMUESTRALDR: TStringField;
    CDSVentaCabMUESTRAIVA: TStringField;
    CDSVentaCabMUESTRACOMPROBANTE: TStringField;
    CDSVentaCabMUESTRAVENDEDOR: TStringField;
    CDSVentaCabMUESTRADIRECCIONLDR: TStringField;
    CDSVentaDet: TClientDataSet;
    CDSVentaDetCLASECPBTE: TStringField;
    CDSVentaDetGRAVADO_IB: TStringField;
    CDSVentaDetCON_NRO_SERIE: TStringField;
    CDSVentaDetCON_CODIGO_BARRA: TStringField;
    CDSVentaDetTIPOIB_TASA: TIntegerField;
    CDSVentaDetID_MONEDA: TIntegerField;
    CDSVentaDetNRO: TIntegerField;
    CDSVentaDetLOTE: TIntegerField;
    CDSVentaDetPRECIO_EDITABLE: TStringField;
    CDSVentaDetGRUPO_DETALLE: TIntegerField;
    CDSVentaDetMUESTRAGRUPODETALLE: TStringField;
    CDSVentaDetCANTIDAD: TFloatField;
    CDSVentaDetDESCUENTO: TFloatField;
    CDSVentaDetTOTAL: TFloatField;
    CDSVentaDetIVA_TASA: TFloatField;
    CDSVentaDetIVA_SOBRETASA: TFloatField;
    CDSVentaDetMARGEN: TFloatField;
    CDSVentaDetFECHAVTA: TSQLTimeStampField;
    CDSVentaDetMUESTRACONTENIDO: TFloatField;
    CDSVentaDetIB_TASA: TFloatField;
    CDSVentaDetCOTIZACION: TFloatField;
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
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalRECARGO: TFloatField;
    CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    CDSImpuestos: TClientDataSet;
    CDSImpuestosID_IMPUESTO: TIntegerField;
    CDSImpuestosID_FCVTACAB: TIntegerField;
    CDSImpuestosCODIGO_GRAVAMEN: TIntegerField;
    CDSImpuestosDETALLE: TStringField;
    CDSImpuestosNETO: TFloatField;
    CDSImpuestosTASA: TFloatField;
    CDSImpuestosIMPORTE: TFloatField;
    CDSLdr: TClientDataSet;
    CDSLdrCODIGO_CLIENTE: TStringField;
    CDSLdrCODIGO_LDR: TIntegerField;
    CDSLdrNOMBRE: TStringField;
    CDSLdrDIRECCION: TStringField;
    CDSLdrCPOSTAL: TStringField;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    CDSInscripcion: TClientDataSet;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    CDSIva: TClientDataSet;
    CDSIvaCODIGO: TIntegerField;
    CDSIvaDESCRIPCION: TStringField;
    CDSIvaTASA: TFloatField;
    CDSIvaCOLUMNA: TSmallintField;
    CDSVtaSubDetalleFECHA: TSQLTimeStampField;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    QPrecioTablaDetalle: TFDQuery;
    DSPListaPrecios: TDataSetProvider;
    CDSListaPrecios: TClientDataSet;
    CDSListaPreciosID: TIntegerField;
    CDSListaPreciosNOMBRE: TStringField;
    CDSListaPreciosF_PAGO: TIntegerField;
    DSListaPrecios: TDataSource;
    QPrecioEspecial: TFDQuery;
    QMonedas: TFDQuery;
    QMonedasID: TIntegerField;
    CDSBuscaCodigoBarra: TClientDataSet;
    CDSBuscaCodigoBarraCODIGOBARRA: TStringField;
    CDSBuscaCodigoBarraDETALLE_STK: TStringField;
    CDSBuscaCodigoBarraCODIGO_STK: TStringField;
    DSPBuscaCodigoBarra: TDataSetProvider;
    CDSBuscaNroSerie: TClientDataSet;
    CDSBuscaNroSerieCODIGOSERIE: TStringField;
    CDSBuscaNroSerieID: TIntegerField;
    CDSBuscaNroSerieCODIGO_STK: TStringField;
    CDSBuscaNroSerieFECHAINGRESO: TSQLTimeStampField;
    CDSBuscaNroSerieFECHAEGRESO: TSQLTimeStampField;
    DSPBuscaNroSerie: TDataSetProvider;
    QNroSerie: TFDQuery;
    QNroSerieID: TIntegerField;
    QNroSerieCODIGO_STK: TStringField;
    QNroSerieCODIGOSERIE: TStringField;
    QNroSerieFECHAINGRESO: TSQLTimeStampField;
    QNroSerieFECHAEGRESO: TSQLTimeStampField;
    spIngSerie: TFDStoredProc;
    DSPBuscaLdr: TDataSetProvider;
    CDSBuscaLdr: TClientDataSet;
    CDSBuscaLdrCODIGO_CLIENTE: TStringField;
    CDSBuscaLdrCODIGO_LDR: TIntegerField;
    CDSBuscaLdrDIRECCION: TStringField;
    CDSBuscaLdrNOMBRE: TStringField;
    CDSBuscaLdrCPOSTAL: TStringField;
    QTCredito: TFDQuery;
    QTCreditoID_TC: TIntegerField;
    QTCreditoDESCRIPCION: TStringField;
    QTCreditoCODIGOARTICULO: TStringField;
    CDSVentaDetRENGLON: TFloatField;
    DSPBuscaGrupoVtaDet: TDataSetProvider;
    CDSBuscaGrupoVtaDet: TClientDataSet;
    CDSBuscaGrupoVtaDetID: TIntegerField;
    CDSBuscaGrupoVtaDetGRUPO: TStringField;
    QMonedasCOTIZACION: TFloatField;
    QPrecioTablaDetallePRECIO1: TFloatField;
    QPrecioTablaDetallePRECIO2: TFloatField;
    QPrecioEspecialPRECIOPACTADO: TFloatField;
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
    CDSVentaCabTIPOCPBTE: TStringField;
    CDSVentaCabCLASECPBTE: TStringField;
    CDSVentaCabCODIGO: TStringField;
    CDSVentaCabNROCPBTE: TStringField;
    CDSVentaCabLETRAFAC: TStringField;
    CDSVentaCabSUCFAC: TStringField;
    CDSVentaCabNUMEROFAC: TStringField;
    CDSVentaCabNOMBRE: TStringField;
    CDSVentaCabRAZONSOCIAL: TStringField;
    CDSVentaCabDIRECCION: TStringField;
    CDSVentaCabCPOSTAL: TStringField;
    CDSVentaCabLOCALIDAD: TStringField;
    CDSVentaCabTIPOIVA: TIntegerField;
    CDSVentaCabCUIT: TStringField;
    CDSVentaCabLISTAPRECIO: TIntegerField;
    CDSVentaCabFECHAVTA: TSQLTimeStampField;
    CDSVentaCabFECHAVTO: TSQLTimeStampField;
    CDSVentaCabCONDICIONVTA: TIntegerField;
    CDSVentaCabANULADO: TStringField;
    CDSVentaCabNRORTO: TStringField;
    CDSVentaCabN_OPERACION2: TFloatField;
    CDSVentaCabNETOGRAV1: TFloatField;
    CDSVentaCabNETOGRAV2: TFloatField;
    CDSVentaCabDSTO: TFloatField;
    CDSVentaCabDSTOIMPORTE: TFloatField;
    CDSVentaCabNETOEXEN1: TFloatField;
    CDSVentaCabNETOEXEN2: TFloatField;
    CDSVentaCabTOTAL: TFloatField;
    CDSVentaCabDEBE: TFloatField;
    CDSVentaCabIMPRESO: TStringField;
    CDSVentaCabOBSERVACION1: TStringField;
    CDSVentaCabOBSERVACION2: TStringField;
    CDSVentaCabCPTE_MANUAL: TStringField;
    CDSVentaCabSUCURSAL: TIntegerField;
    CDSVentaCabFACTURANRO: TStringField;
    CDSVentaCabZONA: TIntegerField;
    CDSVentaCabLDR: TIntegerField;
    CDSVentaCabDEPOSITO: TIntegerField;
    CDSVentaCabCALCULA_SOBRETASA: TStringField;
    CDSVentaCabDESGLOZAIVA: TStringField;
    CDSVentaCabNROENTREGA: TIntegerField;
    CDSVentaCabINGRESA_A_CTACTE: TStringField;
    CDSVentaCabINGRESA_LIBRO_IVA: TStringField;
    CDSVentaCabTIPO_REMITO: TStringField;
    CDSVentaCabIDREMITO: TIntegerField;
    CDSVentaCabREDUCIDA: TStringField;
    CDSVentaCabCOMSIONVENDEDOR: TFloatField;
    CDSVentaCabLIQUIDADA: TStringField;
    CDSVentaCabFECHA_LIQUIDACION: TSQLTimeStampField;
    CDSVentaCabVENDEDOR: TStringField;
    CDSVentaCabUSUARIO: TStringField;
    CDSVentaCabNC_CONTADO: TStringField;
    CDSVentaCabCAJA_POR_DEFECTO: TIntegerField;
    CDSVentaCabNRO_Z: TIntegerField;
    CDSVentaCabVALORES_RECIBIDOS: TFloatField;
    CDSVentaCabPERCEPCION_IB_TASA: TFloatField;
    CDSVentaCabPERCEPCION_IB_IMPORTE: TFloatField;
    CDSVentaCabPERCIBE_IB: TStringField;
    CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField;
    CDSVentaCabRENGLONES: TSmallintField;
    CDSVentaCabFECHA_HORA: TSQLTimeStampField;
    CDSVentaCabNOTAPEDIDO_ID: TIntegerField;
    CDSVentaCabNOTAPEDIDO_NROCPBTE: TStringField;
    CDSVentaCabID_FC_CLON: TIntegerField;
    CDSVentaCabPRESUPUESTO_ID: TIntegerField;
    CDSVentaCabPRESUPUESTO_NROCPBTE: TStringField;
    CDSVentaCabMONEDA_CPBTE: TIntegerField;
    CDSVentaCabMONEDA_CPBTE_COTIZACION: TFloatField;
    CDSVentaCabPOR_CTA_Y_ORDEN: TStringField;
    CDSVentaCabPROVEEDOR: TStringField;
    CDSVentaCabMUESTRACONDVENTA: TStringField;
    CDSVentaCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSVentaCabMUESTRAPROVEEDOR: TStringField;
    DSPBuscaDeposito: TDataSetProvider;
    CDSBuscaDeposito: TClientDataSet;
    CDSBuscaDepositoNOMBRE: TStringField;
    CDSBuscaDepositoID: TIntegerField;
    DSPBuscaVendedor: TDataSetProvider;
    CDSBuscaVendedor: TClientDataSet;
    CDSBuscaVendedorCODIGO: TStringField;
    CDSBuscaVendedorNOMBRE: TStringField;
    CDSBuscaVendedorCOMISION: TFloatField;
    CDSVentaCabTIPO_VTA: TStringField;
    DSPVtaDetConsig: TDataSetProvider;
    CDSVtaDetConsig: TClientDataSet;
    DSVtaDetConsig: TDataSource;
    ibgFcVtaConsig: TIBGenerator;
    CDSVtaDetConsigID: TIntegerField;
    CDSVtaDetConsigID_CABFAC: TIntegerField;
    CDSVtaDetConsigID_DETFAC: TIntegerField;
    CDSVtaDetConsigCODIGO: TStringField;
    CDSVtaDetConsigDETALLE: TStringField;
    CDSVtaDetConsigCANTIDAD: TFloatField;
    CDSVtaDetConsigID_MOV_RECEPCION_CAB: TIntegerField;
    CDSVtaDetConsigID_MOV_RECEPCION_DET: TIntegerField;
    CDSVtaDetConsigLIQUIDADA: TStringField;
    CDSVtaDetConsigPRECIO_VTA: TFloatField;
    CDSVtaDetConsigPRECIO_COMPRA: TFloatField;
    CDSVtaDetConsigCODIGO_PROVEEDOR: TStringField;
    CDSVtaDetConsigMUESTRARECEPCIONNRO: TStringField;
    DSPBuscaRecepDetalle: TDataSetProvider;
    CDSBuscaRecepDetalle: TClientDataSet;
    CDSBuscaRecepDetalleID: TIntegerField;
    CDSBuscaRecepDetalleID_CABREC: TIntegerField;
    CDSBuscaRecepDetalleNROCPBTE: TStringField;
    CDSBuscaRecepDetalleFECHARECEPCION: TSQLTimeStampField;
    QRecepciones: TFDQuery;
    QRecepcionesID: TIntegerField;
    QRecepcionesID_CABREC: TIntegerField;
    QRecepcionesNROCPBTE: TStringField;
    QRecepcionesFECHARECEPCION: TSQLTimeStampField;
    QRecepcionesCANTIDAD_SALDO: TFloatField;
    QBuscaRecDetalle: TFDQuery;
    QBuscaRecDetalleID: TIntegerField;
    QBuscaRecDetalleID_CABREC: TIntegerField;
    QBuscaRecDetalleNROCPBTE: TStringField;
    QBuscaRecDetalleFECHARECEPCION: TSQLTimeStampField;
    DSPBuscaLodalidadJuri: TDataSetProvider;
    CDSBuscaLocalidadJur: TClientDataSet;
    CDSBuscaLocalidadJurID: TIntegerField;
    CDSBuscaLocalidadJurID_JURIDICION: TIntegerField;
    CDSBuscaLocalidadJurLOCALIDAD: TStringField;
    CDSBuscaLocalidadJurPOR_DEFECTO: TStringField;
    DSBuscaLocalidadJuri: TDataSource;
    CDSVentaCabJURIDICION: TIntegerField;
    CDSVentaCabJURIDICION_LOCALIDAD: TIntegerField;
    CDSVentaDetID: TIntegerField;
    CDSVentaDetID_CABFAC: TIntegerField;
    CDSVentaDetTIPOCPBTE: TStringField;
    CDSVentaDetNROCPBTE: TStringField;
    CDSVentaDetCODIGOARTICULO: TStringField;
    CDSVentaDetDETALLE: TStringField;
    CDSVentaDetUNIDAD: TStringField;
    CDSVentaDetDESGLOZAIVA: TStringField;
    CDSVentaDetMODO_GRAVAMEN: TStringField;
    CDSVentaDetTIPOIVA_TASA: TIntegerField;
    CDSVentaDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSVentaDetIVA_TOTAL: TFloatField;
    CDSVentaDetTOTAL_GRAVADO: TFloatField;
    CDSVentaDetTOTAL_EXENTO: TFloatField;
    CDSVentaDetDEPOSITO: TIntegerField;
    CDSVentaDetAFECTA_STOCK: TStringField;
    CDSVentaDetMUESTRAMONEDA: TStringField;
    CDSVentaDetCALCULA_SOBRETASA: TStringField;
    CDSVentaCabCON_GTIA_EXTENDIDA: TStringField;
    CDSVentaCabID_RECEPCION_GTIA: TIntegerField;
    CDSVentaCabMESES_DE_GARANTIA: TIntegerField;
    CDSVentaCabPOLIZA: TStringField;
    CDSVentaDetMESES_GTIA: TIntegerField;
    CDSVentaCabVALOR_ASEGURADO: TFloatField;
    CDSVentaDetUNIDADES_GRAVADO: TFloatField;
    CDSVentaDetUNIDADES_EXENTO: TFloatField;
    CDSVentaDetUNIDADES_TOTAL: TFloatField;
    CDSVentaDetCOSTO_GRAVADO: TFloatField;
    CDSVentaDetCOSTO_EXENTO: TFloatField;
    CDSVentaDetCOSTO_TOTAL: TFloatField;
    CDSVentaDetUNITARIO_GRAVADO: TFloatField;
    CDSVentaDetUNITARIO_EXENTO: TFloatField;
    CDSVentaDetUNITARIO_TOTAL: TFloatField;
    CDSVentaDetIVA_UNITARIO: TFloatField;
    QBuscaRecDetalleCANTIDAD_SALDO: TFloatField;
    CDSBuscaRecepDetalleCANTIDAD_SALDO: TFloatField;
    CDSBuscaRecepDetalleUNITARIO_TOTAL: TFloatField;
    QRecepcionesUNITARIO_TOTAL: TFloatField;
    QBuscaRecDetalleUNITARIO_TOTAL: TFloatField;
    QNCPorDefecto: TFDQuery;
    QNCPorDefectoID_NOTACREDITOPORDEFECTO: TIntegerField;
    QNCPorDefectoDENOMINACION: TStringField;
    QNCPorDefectoCLASE_COMPROB: TStringField;
    QNCPorDefectoTIPO_COMPROB: TStringField;
    QNCPorDefectoSUCURSAL: TIntegerField;
    DSPComprobantePorDefecto: TDataSetProvider;
    CDSComprobantePorDefecto: TClientDataSet;
    CDSVentaCabMUESTRAMONEDACPBTE: TStringField;
    CDSVentaCabMUESTRASIGNOMONEDACPBTE: TStringField;
    QMonedasMONEDA: TStringField;
    QMonedasSIGNO: TStringField;
    CDSVentaCabID_NOTA_CAMBIO: TIntegerField;
    CDSVentaCabNUMERO_OPERACION: TStringField;
    CDSVentaCabMUESTRAESFRANQUICIA: TStringField;
    DSPMov_Carnes: TDataSetProvider;
    CDSMov_Carnes: TClientDataSet;
    CDSMov_CarnesID: TIntegerField;
    CDSMov_CarnesID_DET: TIntegerField;
    CDSMov_CarnesID_CAB: TIntegerField;
    CDSMov_CarnesCLASIFICACION: TStringField;
    CDSMov_CarnesNRO_TROPA: TStringField;
    CDSMov_CarnesT_KILOS: TIntegerField;
    CDSMov_CarnesT_MEDIAS: TIntegerField;
    CDSMov_CarnesMEDIA_1: TIntegerField;
    CDSMov_CarnesMEDIA_2: TIntegerField;
    CDSMov_CarnesMEDIA_3: TIntegerField;
    CDSMov_CarnesMEDIA_4: TIntegerField;
    CDSMov_CarnesMEDIA_5: TIntegerField;
    CDSMov_CarnesMEDIA_6: TIntegerField;
    CDSMov_CarnesMEDIA_7: TIntegerField;
    CDSMov_CarnesMEDIA_8: TIntegerField;
    DSMov_Carnes: TDataSource;
    ibgMov_Carne: TIBGenerator;
    CDSListaPreciosEXCLUSIVO_EFECTIVO: TStringField;
    CDSVentaCabCAE: TStringField;
    CDSVentaCabCAE_VENCIMIENTO: TSQLTimeStampField;
    CDSVentaCabFACTURA_ELECTRONICA: TStringField;
    CDSVentaDetCODIGOBARRA: TStringField;
    CDSVentaCabABONO_PERIODO: TStringField;
    CDSVentaCabCANT_BULTOS: TIntegerField;
    CDSVentaDetMUESTRACODALTERNATIVO: TStringField;
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
    CDSVentaDetDE_PRODUCCION: TStringField;
    DSPFc_Prod_Det: TDataSetProvider;
    DSPFc_Prod_Mov: TDataSetProvider;
    CDSFc_Prod_Det: TClientDataSet;
    CDSFc_Prod_DetID: TIntegerField;
    CDSFc_Prod_DetID_FCDET: TIntegerField;
    CDSFc_Prod_DetID_FCCAB: TIntegerField;
    CDSFc_Prod_DetCODIGO: TStringField;
    CDSFc_Prod_DetDETALLE: TStringField;
    CDSFc_Prod_DetUNIDAD: TStringField;
    CDSFc_Prod_DetCANTIDAD: TFloatField;
    CDSFc_Prod_DetDEPOSITO_DESTINO: TIntegerField;
    CDSFc_Prod_DetSUCURSAL: TIntegerField;
    CDSFc_Prod_DetFECHA: TSQLTimeStampField;
    CDSFc_Prod_DetAFECTA_STOCK: TStringField;
    CDSFc_Prod_Mov: TClientDataSet;
    CDSFc_Prod_MovID: TIntegerField;
    CDSFc_Prod_MovID_FC_DET: TIntegerField;
    CDSFc_Prod_MovCODIGO: TStringField;
    CDSFc_Prod_MovDETALLE: TStringField;
    CDSFc_Prod_MovCANTIDAD_UNITARIA: TFloatField;
    CDSFc_Prod_MovCANTIDAD_ESTIMADA: TFloatField;
    CDSFc_Prod_MovCANTIDAD_REAL: TFloatField;
    CDSFc_Prod_MovDEPOSITO_ORIGEN: TIntegerField;
    CDSFc_Prod_MovAFECTA_STOCK: TStringField;
    DSFc_Prod_Det: TDataSource;
    DSFc_Prod_Mov: TDataSource;
    IbgId_Det_Pro: TIBGenerator;
    ibgId_mov_prod: TIBGenerator;
    QStockProdDet: TFDQuery;
    DSPStockProdDetalle: TDataSetProvider;
    CDSStockProdDetalle: TClientDataSet;
    CDSStockProdDetalleCODIGO: TStringField;
    CDSStockProdDetalleDETALLE: TStringField;
    CDSStockProdDetalleCODIGO_STK: TStringField;
    CDSStockProdDetalleDETALLE_1: TStringField;
    CDSStockProdDetalleCANTIDAD_REAL: TFloatField;
    CDSStockProdDetalleCANTIDAD_FISICA: TFloatField;
    CDSStockProdDetalleAFECTA_STOCK: TStringField;
    CDSStockGTIA_MESES: TIntegerField;
    CDSVentaDetUNITARIO_TOTAL_OLD: TFloatField;
    CDSVentaDetUNITARIO_IVA_OLD: TFloatField;
    CDSVentaDetUNI_C_REC: TStringField;
    CDSVentaCabCUOTAS_CC: TIntegerField;
    CDSVentaCabINTERVALO_CUOTA: TIntegerField;
    CDSVentaDetMUESTRAGTIAOFICIAL: TStringField;
    CDSVentaCabMUESTRACODIGOAFIP: TStringField;
    CDSVentaCabPAGO_A_CTA: TFloatField;
    CDSVentaCabID_FC_CON_ADEL: TIntegerField;
    QRecuperarRtos: TFDQuery;
    CDSVentaCabMUESTRAOBSCLIENTE1: TStringField;
    CDSVentaCabMUESTRAOBSCLIENTE2: TStringField;
    CDSVentaDetCONTROL_TRAZABILIDAD: TStringField;
    CDSVentaCabMUESTRAACOPIO: TIntegerField;
    CDSVentaCabCENTRO_COSTO: TIntegerField;
    CDSVentaCabID_PEDIDO_MORPHI: TIntegerField;
    CDSVentaCabMUESTRANOMBRECOMPLETO: TStringField;
    DSPVentaLote: TDataSetProvider;
    CDSVentaLote: TClientDataSet;
    CDSVentaLoteID: TIntegerField;
    CDSVentaLoteID_DET: TIntegerField;
    CDSVentaLoteID_FC: TIntegerField;
    CDSVentaLoteID_LOTE: TIntegerField;
    CDSVentaLoteCODIGO: TStringField;
    CDSVentaLoteLOTE: TStringField;
    CDSVentaLoteCANTIDAD: TFloatField;
    CDSVentaLoteFECHA: TSQLTimeStampField;
    CDSVentaLoteFECHAVTO: TSQLTimeStampField;
    CDSVentaLoteDEPOSITO: TIntegerField;
    CDSVentaLoteTIPO_COMPROB: TStringField;
    DSVentaLote: TDataSource;
    IBGVtaLote: TIBGenerator;
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
    DSPBuscaLotes: TDataSetProvider;
    CDSStockPORCENTAJE_SOBRECOSTO: TFloatField;
    CDSStockCONTROL_TRAZABILIDAD: TStringField;
    CDSVentaLoteDESPACHO: TStringField;
    CDSVentaDetPRESENTACION_CANT: TFloatField;
    CDSExistenciaFULTAJUSTE: TSQLTimeStampField;
    CDSExistenciaSEC: TStringField;
    CDSExistenciaUBIC: TStringField;
    CDSVentaCabSALDO_ACTUAL_CC: TFloatField;
    CDSVentaCabMUESTRAZONA: TStringField;
    CDSVentaCabNETONOGRAV1: TFloatField;
    CDSVentaCabNETONOGRAV2: TFloatField;
    CDSVentaDetCANTIDAD_UNIDADES: TFloatField;
    QNroBorrado: TFDQuery;
    QNroBorradoNROCPBTE: TStringField;
    QNroBorradoRAZONSOCIAL: TStringField;
    QNroBorradoTOTAL: TFloatField;
    CDSVentaDetDETALLE_ADICIONAL: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalGENERA_XML_COMUN: TStringField;
    CDSSucursalHOST: TStringField;
    CDSSucursalCERTIFICADO_ELEC: TStringField;
    CDSSucursalCUIT: TStringField;
    CDSSucursalRAZONSOCIAL: TStringField;
    CDSVentaCabFECHA_FISCAL: TSQLTimeStampField;
    CDSVentaDetACOPIABLE: TStringField;
    CDSVentaCabNRO_INTERNO: TStringField;
    CDSVentaCabFOB_TOTAL: TFloatField;
    CDSVentaCabNOTAS: TStringField;
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
    QClientesCHEQUES: TStringField;
    QPrimerLdr: TFDQuery;
    QPrimerLdrMIN: TIntegerField;
    CDSVentaCabMUESTRAUSACHE: TStringField;
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
    QBorraFc: TFDQuery;
    QBuscaRtos: TFDQuery;
    QBuscaRtosID_RTO: TIntegerField;
    QBuscaRtosNROCPBTE: TStringField;
    QPromo_Cantidad: TFDQuery;
    QPromo_CantidadCODIGO: TStringField;
    QPromo_CantidadCANT_DESDE: TFloatField;
    QPromo_CantidadDESCTO: TFloatField;
    QPromo_CantidadMODO: TStringField;
    QPromo_CantidadMUESTRADETALLE: TStringField;
    CDSVentaDetMUESTRAIVAMODIFICADO: TStringField;
    CDSStockIVA_MODIFICADO: TStringField;
    QCodigoBarra: TFDQuery;
    QCodigoBarraMAX: TStringField;
    CDSVentaCabCBU: TStringField;
    CDSVentaCabASOCIADO_TIPO: TIntegerField;
    CDSVentaCabASOCIADO_PTOVTA: TIntegerField;
    CDSVentaCabASOCIADO_NRO: TFloatField;
    CDSVentaCabASOCIADO_CPTEFCH: TStringField;
    CDSEmpresaCBU: TStringField;
    CDSVentaCabINF_X: TStringField;
    QProveedores: TFDQuery;
    QProveedoresCODIGO: TStringField;
    QProveedoresNOMBRE: TStringField;
    CDSVentaCabVUELTO: TFloatField;
    QCoefPrecio: TFDQuery;
    QRecepMayor: TFDQuery;
    QRecepMayorID: TIntegerField;
    QRecepMayorID_CABREC: TIntegerField;
    QRecepMayorNROCPBTE: TStringField;
    QRecepMayorFECHARECEPCION: TSQLTimeStampField;
    QRecepMayorCANTIDAD_SALDO: TFloatField;
    QRecepMayorCODIGO: TStringField;
    QRecepMayorRAZONSOCIAL: TStringField;
    QClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    QClientesFECHAALTA: TSQLTimeStampField;
    QClientesULTIMOPAGO: TSQLTimeStampField;
    QClientesFECHANACIMIENTO: TSQLTimeStampField;
    QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    QClientesDESDE_F8001: TSQLTimeStampField;
    QClientesHASTA_F8001: TSQLTimeStampField;
    QClientesVENCIMIENTO_TC: TSQLTimeStampField;
    QClientesID_ADMINISTRACION: TIntegerField;
    CDSVentaDetPRESENTACION_UNIDAD: TStringField;
    CDSVentaCabHONORARIOS: TFloatField;
    CDSVentaCabHONORARIOS_PROCENTAJ: TFloatField;
    CDSVentaCabCON_CAEA: TStringField;
    CDSVentaCabCAEA_INFORMADO: TStringField;
    QComprobUSAR_CAEA: TStringField;
    QBuscaCodBarra: TFDQuery;
    QBuscaCodBarraID: TIntegerField;
    QBuscaCodBarraCODIGO_STK: TStringField;
    QBuscaCodBarraCODIGOBARRA: TStringField;
    QBuscaCodBarraPRESENTACION: TIntegerField;
    QBuscaCodBarraPRESENTACION_CANTIDAD: TFloatField;
    CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    CDSVentaCabASOCIADO_ID_CPBTE: TIntegerField;
    CDSVentaCabFACTURA_DE_ANTICIPO: TStringField;
    CDSPersonalCOMISION: TFloatField;
    CDSPersonalMUESTRADEPOSITO: TIntegerField;
    CDSVentaCabMUESTRANRONC: TStringField;
    CDSVentaCabMUESTRATIPONC: TStringField;
    CDSVentaCabMUESTRACLASENC: TStringField;
    CDSVentaCabMUESTRAID_NC: TIntegerField;
    CDSVentaCabQRIMAGE: TBlobField;
    CDSVentaCabCONDICIONPEDIDO: TIntegerField;
    QLocalidadJurDefecto: TFDQuery;
    QLocalidadJurDefectoID: TIntegerField;
    QLocalidadJurDefectoID_JURIDICION: TIntegerField;
    CDSVentaDetMUESTADIFERENCIAENTREGA: TFloatField;
    CDSVentaDetUNITARIO_NETO_TOTAL: TFloatField;
    CDSVentaCabCODIGO_ACTIVIDAD: TStringField;
    CDSEmpresaCOD_ACTIVIDAD: TStringField;
    CDSEmpresaNOMBRE_AUTORIZADO: TStringField;
    CDSEmpresaID_CPOSTAL: TIntegerField;
    CDSEmpresaNOMBRE_FANTASIA: TStringField;
    CDSEmpresaCODIGO_COT: TStringField;
    CDSEmpresaDIRECCION_NRO: TStringField;
    CDSVentaCabPERCIBE_IVA: TStringField;
    CDSVentaCabMINIMO_PERCI_IVA: TFloatField;
    CDSVentaDetPERCIBE_IVA: TStringField;
    CDSVentaDetTASA_PERCEP_IVA: TFloatField;
    CDSVentaDetID_TASA_PERCEPCION_IVA: TIntegerField;
    CDSVentaDetPERCEPCION_IVA_DIFERENCIAL: TStringField;
    CDSStockPERCIBE_IVA: TStringField;
    CDSStockID_TASA_PERCEP_IVA: TIntegerField;
    CDSStockAPLICA_TASA_DIF: TStringField;
    DSPercepcionIVA: TDataSource;
    CDSPercepcionIVA: TClientDataSet;
    CDSPercepcionIVAID_PERCEPCION: TIntegerField;
    CDSPercepcionIVACODIGO_PERCEPCION: TIntegerField;
    CDSPercepcionIVADETALLE: TStringField;
    CDSPercepcionIVAID_FCVTACAB: TIntegerField;
    CDSPercepcionIVANETO: TFloatField;
    CDSPercepcionIVATASA: TFloatField;
    CDSPercepcionIVAIMPORTE: TFloatField;
    CDSPercepcionIVACODIGOREGIMEN: TIntegerField;
    DSPPercepcionIVA: TDataSetProvider;
    IBGPercepcionIVA: TIBGenerator;
    QClientesPERCIBE_IVA: TStringField;
    CDSVentaDetPRESENTACION_TOLERANCIA: TFloatField;
    CDSStockPRESENTACION_TOLERANCIA: TFloatField;
    CDSVentaCabMUESTRANOMBREUSUARIOREAL: TStringField;
    CDSBuscaLocalidadJurPROVINCIA: TStringField;
    CDSSucursalCOT_CLAVE: TStringField;
    CDSSucursalCOT_CUIT: TStringField;
    CDSSucursalAPLICA_LEY15311: TStringField;
    CDSVentaCabID_GARANTE: TIntegerField;
    CDSVentaCabPRIMER_VTO: TSQLTimeStampField;
    CDSVentaCabANTICIPO_VTO: TSQLTimeStampField;
    CDSVentaCabID_PAIS: TSmallintField;
    CDSVentaCabCUIT_PAIS: TStringField;
    CDSVentaCabDOC_ADUANERO: TStringField;
    CDSVentaCabFECHA_CARGA: TSQLTimeStampField;
    CDSVentaCabDESTINO_DOCUMENTO: TStringField;
    CDSVentaCabPERMISO_EMBARQUE: TStringField;
    CDSVentaCabINCOTERMS: TStringField;
    CDSVentaCabTIPO_OPERACION_EXPO: TStringField;
    CDSVentaCabMEDIO_TRANSPORTE_EXPO: TStringField;
    CDSVentaCabID_ADUANA: TIntegerField;
    CDSVentaCabREFERENCIA_EXPO: TStringField;
    CDSVentaCabCAMBIO_EXPO: TFloatField;
    CDSVentaCabID_TRANSPORTE: TIntegerField;
    CDSVentaCabID_DESTINO: TIntegerField;
    CDSVentaCabDEDUCE_GASTOS: TStringField;
    CDSVentaCabTRANSPORTE_UNIDAD: TIntegerField;
    CDSVentaCabTRANSPORTE_ADICIONAL: TIntegerField;
    CDSVentaCabLOTEAFIP: TStringField;
    CDSVentaCabID_CHOFER: TIntegerField;
    CDSVentaCabENVIAR_CPTE_MAIL: TStringField;
    CDSVentaCabKEY_PLANER: TStringField;
    CDSVentaCabMUESTRACOORPORATIVO: TStringField;
    CDSVentaCabMUESTRAIDABONO: TIntegerField;
    CDSVentaCabMUESTRANROABONO: TStringField;
    CDSVentaCabMUESTRAAUXILIARTR: TStringField;
    CDSVentaCabMUESTRALOCALITRANSPORTE: TStringField;
    CDSVentaCabMUESTRATRANSPORTE: TStringField;
    CDSVentaCabMUESTRA_UNI_TRANSPORTE: TStringField;
    CDSVentaCabMUESTRANRDOCCHOFER: TStringField;
    CDSVentaCabMUESTRACHOFER: TStringField;
    CDSVentaCabMUESTRATPDOCCHOFER: TStringField;
    CDSVentaCabMUESTRADOMINIOUNIDADTR: TStringField;
    CDSVentaCabMUESTRATETRANSPORTE: TStringField;
    CDSVentaCabMUESTRADIRTRANSPORTE: TStringField;
    CDSVentaCabMUESTRANOMBRETRANSPORTE: TStringField;
    CDSVentaCabMUESTRACONDIVATRANSPORTE: TStringField;
    CDSVentaCabMUESTRACUITTRANSPORTE: TStringField;
    CDSVentaCabCOT: TStringField;
    CDSVentaCabMUESTRADIRECCION_CALLE: TStringField;
    CDSVentaCabMUESTRADIRECCION_NRO: TStringField;
    CDSVentaCabMUESTRADIRECCION_PISO: TStringField;
    CDSVentaCabMUESTRADIRECCION_DEPTO: TStringField;
    CDSVentaCabLETRACOT: TStringField;
    CDSVentaCabMUESTRAAPLICALEY15311: TStringField;
    CDSVentaCabID_OBRA: TIntegerField;
    CDSVentaCabMUESTRAOBRA: TStringField;
    CDSVentaCabPROCESADA: TStringField;
    CDSVentaCabMUESTRATELEFONO_1: TStringField;
    CDSVentaCabMUESTRATELEFONO_2: TStringField;
    CDSVentaCabMUESTRATELEFONOMOVIL: TStringField;
    CDSVentaCabNC_POR_DIFERENCIA: TStringField;
    DSPVtaDetNovedades: TDataSetProvider;
    CDSVtaDetNovedades: TClientDataSet;
    CDSVtaDetNovedadesID: TIntegerField;
    CDSVtaDetNovedadesID_CABFAC: TIntegerField;
    CDSVtaDetNovedadesCODIGO: TStringField;
    CDSVtaDetNovedadesDETALLE: TStringField;
    CDSVtaDetNovedadesPRECIO: TFloatField;
    CDSVtaDetNovedadesTIPO: TStringField;
    CDSVtaDetNovedadesFECHA_HORA: TSQLTimeStampField;
    CDSVtaDetNovedadesUSUARIO: TStringField;
    ibgDetNovedades: TIBGenerator;
    CDSVtaDetNovedadesTIPOCPBTE: TStringField;
    CDSVtaDetNovedadesPRECIO_OLD: TFloatField;
    CDSVentaDetUNITARIO_TOTAL_OLD_2: TFloatField;
    PROCEDURE DataModuleDestroy(Sender: TObject);
    PROCEDURE CDSVentaDetAfterPost(DataSet: TDataSet);virtual;
    PROCEDURE CDSVentaDetBeforePost(DataSet: TDataSet);
    PROCEDURE CDSVentaDetNewRecord(DataSet: TDataSet);
    PROCEDURE CDSVentaDetAfterInsert(DataSet: TDataSet);virtual;
    PROCEDURE CDSVentaDetUNITARIO_TOTALSetText(Sender: TField; CONST Text: STRING);virtual;
    PROCEDURE CDSVentaDetUNITARIO_TOTALGetText(Sender: TField; VAR Text: STRING; DisplayText: Boolean);virtual;
    PROCEDURE CDSVentaDetTOTALGetText(Sender: TField; VAR Text: STRING; DisplayText: Boolean);virtual;
    PROCEDURE CDSVentaDetCodigoArticuloSetText(Sender: TField; CONST Text: STRING);virtual;
    PROCEDURE CDSVentaCabCODIGOSetText(Sender: TField; CONST Text: STRING); virtual;
    PROCEDURE CDSImpuestosNewRecord(DataSet: TDataSet);
    PROCEDURE CDSVentaDetCANTIDADSetText(Sender: TField; CONST Text: STRING);VIRTUAL;
    procedure CDSVentaDetIVA_TASASetText(Sender: TField; const Text: String);
    procedure CDSVentaCabSUCFACSetText(Sender: TField; const Text: String);
    procedure CDSVentaCabNUMEROFACSetText(Sender: TField; const Text: String);
    procedure CDSVentaCabSUCURSALSetText(Sender: TField; const Text: String);virtual;
    procedure CDSVentaCabLDRSetText(Sender: TField; const Text: String);
    procedure CDSVentaCabDEPOSITOSetText(Sender: TField; const Text: String);
    procedure CDSVentaCabDSTOSetText(Sender: TField; const Text: String);
    procedure CDSVentaCabFECHAVTASetText(Sender: TField; const Text: String);
    procedure CDSVentaCabAfterEdit(DataSet: TDataSet);
    procedure CDSVentaCabBeforePost(DataSet: TDataSet);
    procedure CDSVentaCabNewRecord(DataSet: TDataSet); virtual;
    procedure CDSVentaCabNETOGRAV1GetText(Sender: TField; var Text: String; DisplayText: Boolean);virtual;
    procedure CDSVentaCabID_TIPOCOMPROBANTESetText(Sender: TField; const Text: String);virtual;
    procedure CDSVentaCabVENDEDORSetText(Sender: TField;  const Text: String);
    procedure CDSVentaCabDSTOIMPORTEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure CDSVtaSubDetalleBeforeInsert(DataSet: TDataSet);
    procedure CDSVtaSubDetalleBeforePost(DataSet: TDataSet);
    procedure CDSVtaSubDetalleNewRecord(DataSet: TDataSet);
    procedure CDSVtaSubDetalleSERIESetText(Sender: TField; const Text: String);
    procedure CDSVentaDetDESCUENTOSetText(Sender: TField; const Text: String);
    procedure CDSVentaDetBeforeDelete(DataSet: TDataSet);
    procedure CDSVtaSubDetalleAfterPost(DataSet: TDataSet);
    procedure CDSVtaSubDetalleBeforeDelete(DataSet: TDataSet);
    procedure CDSVtaSubDetalleBeforeEdit(DataSet: TDataSet);
    procedure CDSVentaDetBeforeInsert(DataSet: TDataSet);
    procedure CDSVentaDetAfterScroll(DataSet: TDataSet);virtual;
    procedure CDSVentaCabNETOGRAV2GetText(Sender: TField; var Text: String; DisplayText: Boolean);virtual;
    procedure CDSVentaCabPROVEEDORSetText(Sender: TField; const Text: string);virtual;
    procedure CDSVtaDetConsigNewRecord(DataSet: TDataSet);
    procedure CDSVtaDetConsigID_MOV_RECEPCION_DETSetText(Sender: TField; const Text: string);virtual;
    procedure CDSVentaCabDSTOIMPORTESetText(Sender: TField; const Text: string);
    procedure CDSMov_CarnesNewRecord(DataSet: TDataSet);
    procedure CDSMov_CarnesMEDIA_1SetText(Sender: TField; const Text: string);
    procedure CDSVentaCabLISTAPRECIOChange(Sender: TField);
    procedure CDSFc_Prod_DetCANTIDADSetText(Sender: TField; const Text: string);
    procedure CDSFc_Prod_MovNewRecord(DataSet: TDataSet);
    procedure CDSFc_Prod_DetNewRecord(DataSet: TDataSet);
    procedure CDSFc_Prod_MovCODIGOSetText(Sender: TField; const Text: string);
    procedure CDSFc_Prod_MovCANTIDAD_REALSetText(Sender: TField;
      const Text: string);
    procedure CDSVentaDetCODIGOARTICULOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);virtual;
    procedure CDSFc_Prod_MovBeforePost(DataSet: TDataSet);
    procedure CDSVentaDetAfterDelete(DataSet: TDataSet);
    procedure CDSVentaLoteID_LOTESetText(Sender: TField; const Text: string);
    procedure CDSVentaLoteNewRecord(DataSet: TDataSet);
    procedure CDSVentaDetCANTIDAD_UNIDADESSetText(Sender: TField;
      const Text: string);
    procedure CDSVentaCabMUESTRAUSACHEChange(Sender: TField);
    procedure CDSVentaDetUNITARIO_NETO_TOTALGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CDSVentaDetCalcFields(DataSet: TDataSet);
    procedure CDSPercepcionIVANewRecord(DataSet: TDataSet);
    procedure CDSVentaCabPERCIBE_IVAChange(Sender: TField);
    procedure CDSVentaDetTOTALSetText(Sender: TField; const Text: string);
    procedure CDSVtaDetNovedadesNewRecord(DataSet: TDataSet);
    procedure CDSVentaDetAfterEdit(DataSet: TDataSet);
  private

    { Private declarations }
  public
    Var_TasaIva : Extended;
    CantidadItem: Extended;
    CorreoDestino          :String;
    UsaTablaDePrecios:Boolean;
    MascaraDetalleUnitario :String;
    MascaraDetalleCantidad :String;
    MascaraDetalleTotal    :String;
    MascaraDetalleDescuento:String;
    MascaraIvaImporte      :String;
    MascaraIvaTasa         :String;
    MascaraCabecera        :String;
    Renglones              :Integer;
    SucursalPercibeIIBB    :String;
    ArticuloGtia           :String;
    ArticuloAsegurado      :String;
    Poliza                 :String;
    F8001                  :Boolean;
    DesdeF8001,HastaF8001  :TDateTime;
    MargenUtilidad         :Extended;
    procedure ReAsignarDetalle;virtual;
    procedure InformarCambiosPrecio;
//    procedure CalculaPrecioVta;
    PROCEDURE HabilitarLabel;virtual;
    PROCEDURE CalcularTotales;virtual;
    PROCEDURE SumarDetalle;virtual;
    PROCEDURE AplicarMascarasNumericas;virtual;
    FUNCTION AsignarArticulo(Dato: STRING): Boolean;virtual;
    FUNCTION AsignarCliente(Dato: STRING): Boolean;virtual;
    FUNCTION AsignarLdr(Cliente: STRING; Dato: integer): Boolean;virtual;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;virtual;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;virtual;
    FUNCTION AsignarVendedor(Dato: String): Boolean;virtual;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;virtual;
    FUNCTION AsignarProveedor(Dato: String): Boolean;virtual;
    FUNCTION AsignarRecepcion(Dato: Integer): Boolean;
    function BuscaCantXCodigoBarras(Codigo: string): extended;

    procedure ReCalcularTodo;virtual;
    procedure SincronizarConsignaciones;
    Function VerificaConsignaciones:Boolean;
    procedure VerificaGtiaExtendida(Articulo:String;Cliente:String);
    procedure HayGtia;
    procedure ReCalculaGtia(Articulo:String;Cliente:String);
    Function SumarGtia:Integer;
    Function SumarGtiaImporte:Real;
    procedure BuscaArticuloGarantia;
    procedure GenerarDetalleProduccion;
    procedure GenerarRtoProduccion;virtual;
    FUNCTION ASignarArticuloProduccion(Dato: STRING): Boolean;virtual;
    Function VerificaProduccion:boolean;
    procedure VerificaPromos;
    procedure AgregrarNovedadDetalle(DataSet: TDataSet; Modo: string);
    { Public declarations }
  END;

VAR
  DatosVentasCtdo: TDatosVentasCtdo;


IMPLEMENTATION

USES UFacturaCtdo_2, ComposicionPrecio, UDMain_FD, UBuscadorArticulos,
  UMuestraListaCodBarra, UMuestraUltimoNroCpbte, DMStoreProcedureForm,
  DMBuscadoresForm, UBuscadorComprobantes, UOrdenProduccion,DMOrdenProduccion;

{$R *.DFM}

procedure TDatosVentasCtdo.AgregrarNovedadDetalle(DataSet:TDataSet; Modo: string);
var coef:Extended;
begin
  coef := 1 + (DataSet.FieldByName('IVA_TASA').AsFloat * 0.01);

  CDSVtaDetNovedades.Append;
  CDSVtaDetNovedadesID_CABFAC.AsINteger := DataSet.FieldByName('ID_CABFAC').AsInteger;
  CDSVtaDetNovedadesTIPOCPBTE.AsString  := DataSet.FieldByName('TIPOCPBTE').AsString;
  CDSVtaDetNovedadesCODIGO.AsString     := DataSet.FieldByName('CODIGOARTICULO').AsString;
  CDSVtaDetNovedadesDETALLE.AsString    := DataSet.FieldByName('DETALLE').AsString;

  CDSVtaDetNovedadesPRECIO.AsFloat      := DataSet.FieldByName('UNITARIO_TOTAL').AsFloat * coef;
  CDSVtaDetNovedadesPRECIO_OLD.AsFloat  := DataSet.FieldByName('UNITARIO_TOTAL_OLD_2').AsFloat * coef;
  CDSVtaDetNovedadesTIPO.AsString       := Modo;
  CDSVtaDetNovedades.Post;

end;


function TDatosVentasCtdo.BuscaCantXCodigoBarras(Codigo: string): extended;
begin
  QBuscaCodBarra.Close;
  QBuscaCodBarra.ParamByName('codigo').Value  :=  Codigo;
  QBuscaCodBarra.Open;
  if (not QBuscaCodBarra.IsEmpty) then
    begin
      QBuscaCodBarra.Last;
      Result        :=  QBuscaCodBarraPRESENTACION_CANTIDAD.AsFloat;
    end
  else
    Result          :=  0;
  QBuscaCodBarra.Close;
end;

Function TDatosVentasCtdo.VerificaProduccion:boolean;
VAR P:TBookmark;
begin
  Result:=False;
  p:=CDSVentaDet.GetBookmark;
  CDSVentaDet.DisableControls;
  CDSVentaDet.First;
  while not(CDSVentaDet.Eof) and (Result=false) do
    begin
      if CDSVentaDetDE_PRODUCCION.AsString='S' Then
        Result:=True;
      CDSVentaDet.Next;
    end;
  CDSVentaDet.GotoBookmark(p);
  CDSVentaDet.EnableControls;
  CDSVentaDet.FreeBookmark(p);
end;

procedure TDatosVentasCtdo.VerificaPromos;
var Puntero:TBookmark;
begin
  Puntero :=CDSVentaDet.GetBookmark;
  CDSVentaDet.DisableControls;
  CDSVentaDet.AfterPost:=nil;
  CDSVentaDet.First;
  while Not(CDSVentaDet.Eof) Do
    begin
      QPromo_Cantidad.Close;
      QPromo_Cantidad.ParamByName('codigo').AsString := CDSVentaDetCODIGOARTICULO.AsString;
      QPromo_Cantidad.Open;
      if (QPromo_CantidadCODIGO.AsString<>'') and (QPromo_CantidadCANT_DESDE.ASFloat>1) and
         (CDSVentaDetCANTIDAD.AsFloat>=QPromo_CantidadCANT_DESDE.ASFloat ) then
        begin
          CDSVentaDet.Edit;
          CDSVentaDetDESCUENTOSetText(CDSVentaDetDESCUENTO,FormatFloat('0.00',QPromo_CantidadDESCTO.ASFloat));
        end;
      QPromo_Cantidad.Close;
      CDSVentaDet.Next;
    end;
  CDSVentaDet.AfterPost:=CDSVentaDetAfterPost;
  CDSVentaDet.GotoBookmark(Puntero);
  CDSVentaDet.FreeBookmark(Puntero);
  CDSVentaDet.EnableControls;
end;

FUNCTION TDatosVentasCtdo.ASignarArticuloProduccion(Dato: STRING): Boolean;
BEGIN
  IF DatosVentasCtdo.CDSFc_Prod_Mov.State = dsBrowse THEN
    DatosVentasCtdo.CDSFc_Prod_Mov.Edit;
  WITH DatosVentasCtdo DO
    BEGIN
      CDSStock.Close;
      CDSStock.Params.ParamByName('Codigo').Value:=Dato;
      CDSStock.Open;
      IF (( NOT (CDSStock.IsEmpty)) and (CDSStockCLASE_ARTICULO.Value<>0)) THEN
        BEGIN
          CDSFc_Prod_MovCODIGO.AsString      := Dato;
          CDSFc_Prod_MovDETALLE.AsString     := CDSStockDETALLE_STK.AsString;
          CDSFc_Prod_MovAFECTA_STOCK.AsString:= CDSStockACTUALIZACOSTO.AsString;
         // CDSFc_Prod_MovDEPOSITO_ORIGEN.Value:= CDSFc_Prod_Detde
          Result:=True;
        END
      ELSE
        Result:=False;
    END;
END;

procedure TDatosVentasCtdo.GenerarRtoProduccion;
begin
  CDSVentaDet.First;
  while Not(CDSVentaDet.Eof) do
    begin
      if CDSVentaDetDE_PRODUCCION.Value='S' then
        begin
          if Not(Assigned(FormOrdenProduccion)) then
            FormOrdenProduccion:=TFormOrdenProduccion.Create(Self);
          formordenProduccion.SucursalPorDefecto:=DatosVentasCtdo.CDSVentaCabSUCURSAL.Value;
          FormOrdenProduccion.Agregar.Execute;
          FormOrdenProduccion.Show;
          DatosOProduccion.CDSOProdCabDEPOSITO_DESTINO.Text   := DatosVentasCtdo.CDSFc_Prod_DetDEPOSITO_DESTINO.AsString;
          DatosOProduccion.CDSOProdCabOBS1.AsString           := 'Generada desde Fac.de Vta Ctdo '+Copy(CDSVentaCabNROCPBTE.AsString,1,1)+'-'+
                                                                                   Copy(CDSVentaCabNROCPBTE.AsString,2,4)+'-'+
                                                                                   Copy(CDSVentaCabNROCPBTE.AsString,6,8)+ ' del '+
                                                                                   FormatDateTime('dd/mm/yyyy',CDSVentaCabFECHAVTA.AsDateTime);
          DatosOProduccion.CDSOProdCabID_FCVTA.AsInteger      := CDSVentaCabID_FC.AsInteger;

          DatosOProduccion.CDSOProdDet.Append;
          DatosOProduccion.CDSOProdDetCODIGOSetText(DatosOProduccion.CDSOProdDetCODIGO,DatosVentasCtdo.CDSFc_Prod_DetCODIGO.AsString);
          DatosOProduccion.CDSOProdDetCANTIDAD.AsFloat := DatosVentasCtdo.CDSFc_Prod_DetCANTIDAD.AsFloat;
          DatosOProduccion.CDSOProdDet.Post;
          DatosOProduccion.CDSOProdDet.First;
          while Not(DatosOProduccion.CDSOProdMov.Eof) do
            begin
              DatosOProduccion.CDSOProdMov.Delete;
              DatosOProduccion.CDSOProdMov.First;
            end;
          CDSFc_Prod_Mov.First;
          while Not(CDSFc_Prod_Mov.Eof) do
            begin
              if DatosVentasCtdo.CDSFc_Prod_MovCANTIDAD_REAL.AsFloat>0 then
                begin
                  DatosOProduccion.CDSOProdMov.Append;
                  DatosOProduccion.CDSOProdMovCODIGO.AsString           :=DatosVentasCtdo.CDSFc_Prod_MovCODIGO.AsString;
                  DatosOProduccion.CDSOProdMovCANTIDAD_ESTIMADA.AsFloat :=DatosVentasCtdo.CDSFc_Prod_MovCANTIDAD_REAL.AsFloat;
                  DatosOProduccion.CDSOProdMovCANTIDAD_REAL.AsFloat     :=DatosVentasCtdo.CDSFc_Prod_MovCANTIDAD_REAL.AsFloat;
                  DatosOProduccion.CDSOProdMovCANTIDAD_UNITARIA.AsFloat :=DatosVentasCtdo.CDSFc_Prod_MovCANTIDAD_REAL.AsFloat;
                  DatosOProduccion.CDSOProdMovDETALLE.Value             :=DatosVentasCtdo.CDSFc_Prod_MovDETALLE.Value;
                  DatosOProduccion.CDSOProdMovAFECTA_STOCK.Value        :=DatosVentasCtdo.CDSFc_Prod_MovAFECTA_STOCK.Value;
                  DatosOProduccion.CDSOProdMov.Post;
                end;
              DatosVentasCtdo.CDSFc_Prod_Mov.Next;
            end;
          FormOrdenProduccion.Confirma.Execute;
          FormOrdenProduccion.AProduccion.Execute;
          FormOrdenProduccion.RecepcionProducto.Execute;
          FormOrdenProduccion.Salir.Execute;
        end;
      CDSVentaDet.Next;
    end;
end;

procedure TDatosVentasCtdo.GenerarDetalleProduccion;
begin
  if CDSFc_Prod_Det.RecordCount>0 then
    begin
      CDSFc_Prod_Mov.First;
      while Not(CDSFc_Prod_Mov.Eof) do
        begin
          CDSFc_Prod_Mov.delete;
          CDSFc_Prod_Mov.Next;
        end;
      CDSFc_Prod_Mov.Close;
      CDSFc_Prod_Mov.params.paramByName('id_det').Clear;
      CDSFc_Prod_Mov.Open;
      CDSFc_Prod_Det.Delete;
    end;

  CDSStockProdDetalle.Close;
  CDSStockProdDetalle.Params.ParamByName('codigo').Value:=CDSVentaDetCODIGOARTICULO.Value;
  CDSStockProdDetalle.Open;
  IF NOT (CDSStockProdDetalle.IsEmpty) THEN
    BEGIN
      CDSStockProdDetalle.First;
      CDSFc_Prod_Det.Insert;
      while Not(CDSStockProdDetalle.Eof) Do
        begin
           CDSFc_Prod_Mov.Insert;
           CDSFc_Prod_MovCODIGO.Value              := CDSStockProdDetalleCODIGO_STK.Value;
           CDSFc_Prod_MovDETALLE.Value             := CDSStockProdDetalleDETALLE_1.Value;
           CDSFc_Prod_MovCANTIDAD_UNITARIA.AsFloat := CDSStockProdDetalleCANTIDAD_FISICA.AsFloat;
           CDSFc_Prod_MovCANTIDAD_ESTIMADA.AsFloat := CDSFc_Prod_MovCANTIDAD_UNITARIA.AsFloat * CDSFc_Prod_DetCANTIDAD.AsFloat;
           CDSFc_Prod_MovCANTIDAD_REAL.AsFloat     := CDSFc_Prod_MovCANTIDAD_ESTIMADA.AsFloat;
           CDSFc_Prod_MovAFECTA_STOCK.AsString     := CDSStockProdDetalleAFECTA_STOCK.AsString;
           CDSFc_Prod_Mov.Post;
           CDSStockProdDetalle.next;
        end;
      CDSFc_Prod_Det.Post;
    END;

end;

function TDatosVentasCtdo.SumarGtiaImporte:Real;
var CDSDetClon:TClientDataSet;
begin
  Result:=0;
  CDSDetClon:=TClientDataSet.Create(Self);
  CDSDetClon.CloneCursor(CDSVentaDet,True);
  CDSDetClon.First;
  while Not(CDSDetClon.Eof) do
    begin
      DMBuscadores.QBuscaArticuloGtiaExt.Close;
      DMBuscadores.QBuscaArticuloGtiaExt.ParamByName('codigo').AsString:= CDSDetClon.FieldByName('codigoarticulo').AsString;
      DMBuscadores.QBuscaArticuloGtiaExt.Open;
      if DMBuscadores.QBuscaArticuloGtiaExtID.AsString='' then
         begin
           Result            := Result+CDSDetClon.FieldByName('Total').AsFloat+CDSDetClon.FieldByName('IVA_UNITARIO').AsFloat;
           ArticuloAsegurado := CDSDetClon.FieldByName('detalle').AsString;
         end;
      DMBuscadores.QBuscaArticuloGtiaExt.Close;
      CDSDetClon.Next;
    end;
  FreeAndNil(CDSDetClon);
end;

function TDatosVentasCtdo.SumarGtia:Integer;
var CDSDetClon:TClientDataSet;
begin
  Result:=0;
  CDSDetClon:=TClientDataSet.Create(Self);
  CDSDetClon.CloneCursor(CDSVentaDet,True);
  CDSDetClon.First;
  while Not(CDSDetClon.Eof) do
    begin
      Result:=Result+CDSDetClon.FieldByName('meses_gtia').Value;
      CDSDetClon.Next;
    end;
  FreeAndNil(CDSDetClon);
end;

procedure TDatosVentasCtdo.BuscaArticuloGarantia;
var CDSDetClon:TClientDataSet;
begin
  ArticuloGtia:='';
  CDSDetClon:=TClientDataSet.Create(Self);
  CDSDetClon.CloneCursor(CDSVentaDet,True);
  CDSDetClon.First;
  if CDSDetClon.RecordCount>1 then
    while Not(CDSDetClon.Eof) do
      begin
        DMBuscadores.QBuscaArticuloGtiaExt.Close;
        DMBuscadores.QBuscaArticuloGtiaExt.ParamByName('codigo').AsString:=CDSDetClon.FieldByName('codigoarticulo').Value;
        DMBuscadores.QBuscaArticuloGtiaExt.Open;
        if DMBuscadores.QBuscaArticuloGtiaExtID.AsString<>'' then
          begin
            ArticuloGtia     := DMBuscadores.QBuscaArticuloGtiaExtCODIGO.AsString;
            CDSDetClon.Last;
          end
        else
          ArticuloAsegurado:=CDSDetClon.FieldByName('detalle').AsString;  
        CDSDetClon.Next;
      end
end;

procedure TDatosVentasCtdo.ReCalculaGtia(Articulo:String;Cliente:String);
var CDSDetClon:TClientDataSet;
TasaCosto,TasaVta:Extended;
UnitarioGravado,UnitarioExento,UnitarioIva:Extended;
begin
  DMBuscadores.QBuscaArticuloGtiaExt.Close;
  DMBuscadores.QBuscaArticuloGtiaExt.ParamByName('codigo').AsString:=Articulo;
  DMBuscadores.QBuscaArticuloGtiaExt.Open;
  if DMBuscadores.QBuscaArticuloGtiaExtID.AsString<>'' then
    begin
      CDSVentaCabCON_GTIA_EXTENDIDA.Value := 'S';
      CDSDetClon:=TClientDataSet.Create(Self);
      CDSDetClon.CloneCursor(CDSVentaDet,True);
      CDSDetClon.First;
      UnitarioGravado := CDSDetClon.FieldByName('UNITARIO_GRAVADO').AsFloat;
      UnitarioExento  := CDSDetClon.FieldByName('UNITARIO_EXENTO').AsFloat;
      UnitarioIva     := 0;
         //*** Si biene con iva incluido Calculo el Neto gravado
      if (CDSVentaDetMODO_GRAVAMEN.Value<>'') and ((CDSVentaCabDESGLOZAIVA.Value = 'N') or (FormCpbteCtdo_2.DiscriminaIva='N')) and
         (CDSVentaDetMODO_GRAVAMEN.Value[1] in ['G','E']) THEN
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


      if CDSVentaDet.Locate('CodigoArticulo',Articulo,[]) then
        begin
          if CDSVentaDet.State=dsBrowse then
            CDSVentaDet.Edit;
          CDSVentaDetCOSTO_EXENTO.AsFloat  := RoundTo( UnitarioExento * ( TasaCosto * 0.01),DMMain_FD.DecRedondeo);
          CDSVentaDetCOSTO_GRAVADO.AsFloat := RoundTo( UnitarioGravado * ( TasaCosto * 0.01),DMMain_FD.DecRedondeo);
          CDSVentaDetCOSTO_TOTAL.AsFloat   := CDSVentaDetCOSTO_EXENTO.AsFloat +
                                              CDSVentaDetCOSTO_GRAVADO.AsFloat;

          CDSVentaDetUNITARIO_EXENTO.AsFloat  := RoundTo( UnitarioExento * ( TasaVta * 0.01),DMMain_FD.DecRedondeo);
          CDSVentaDetUNITARIO_GRAVADO.AsFloat := RoundTo( (UnitarioGravado + UnitarioIva) * ( TasaVta * 0.01),DMMain_FD.DecRedondeo);
          CDSVentaDetUnitario_TotalSetText( CDSVentaDetUNITARIO_TOTAL,FloatToStr( CDSVentaDetUNITARIO_GRAVADO.AsFloat+CDSVentaDetUNITARIO_EXENTO.AsFloat));
          CDSVentaDetMESES_GTIA.Value         := DMBuscadores.QBuscaArticuloGtiaExtDURACION.Value;
        end;
    end;
  DMBuscadores.QBuscaArticuloGtiaExt.Close;
  DMBuscadores.QGtia_Ext_Excepciones.Close;
end;

procedure TDatosVentasCtdo.HayGtia;
var CDSDetClon:TClientDataSet;
begin
  ArticuloGtia:='';
  CDSVentaCabCON_GTIA_EXTENDIDA.Value := 'N';
  CDSVentaCabPOLIZA.Value             := '';
  CDSDetClon:=TClientDataSet.Create(Self);
  CDSDetClon.CloneCursor(CDSVentaDet,True);
  CDSDetClon.First;
  if CDSDetClon.RecordCount>1 then
    while Not(CDSDetClon.Eof) do
      begin
        DMBuscadores.QBuscaArticuloGtiaExt.Close;
        DMBuscadores.QBuscaArticuloGtiaExt.ParamByName('codigo').AsString:=CDSDetClon.FieldByName('codigoarticulo').Value;
        DMBuscadores.QBuscaArticuloGtiaExt.Open;
        if DMBuscadores.QBuscaArticuloGtiaExtID.AsString<>'' then
          begin
            CDSVentaCabCON_GTIA_EXTENDIDA.Value := 'S';
            CDSVentaCabPOLIZA.AsString          := DMBuscadores.QBuscaArticuloGtiaExtPOLIZA.AsString;
            ArticuloGtia                        := DMBuscadores.QBuscaArticuloGtiaExtCODIGO.AsString;
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
              CDSVentaCabCON_GTIA_EXTENDIDA.Value := 'S';
            end;
        end;
    end;

  FreeAndNil(CDSDetClon);
end;

procedure TDatosVentasCtdo.VerificaGtiaExtendida(Articulo:String;Cliente:String);
var CDSDetClon:TClientDataSet;
TasaCosto,TasaVta:Extended;
UnitarioGravado,UnitarioExento,UnitarioIva:Extended;
begin
  CDSVentaCabCON_GTIA_EXTENDIDA.Value:='N';
  CDSVentaCabPOLIZA.Value             := '';
  DMBuscadores.QBuscaArticuloGtiaExt.Close;
  DMBuscadores.QBuscaArticuloGtiaExt.ParamByName('codigo').AsString:=Articulo;
  DMBuscadores.QBuscaArticuloGtiaExt.Open;
  if DMBuscadores.QBuscaArticuloGtiaExtID.AsString<>'' then
    begin
      CDSVentaCabCON_GTIA_EXTENDIDA.Value := 'S';
      CDSVentaCabPOLIZA.Value             := DMBuscadores.QBuscaArticuloGtiaExtPOLIZA.Value;
      CDSDetClon:=TClientDataSet.Create(Self);
      CDSDetClon.CloneCursor(CDSVentaDet,True);
      CDSDetClon.First;
      UnitarioGravado := CDSDetClon.FieldByName('UNITARIO_GRAVADO').AsFloat;
      UnitarioExento  := CDSDetClon.FieldByName('UNITARIO_EXENTO').AsFloat;
      UnitarioIva     := 0;
         //*** Si biene con iva incluido Calculo el Neto gravado
      if (CDSVentaDetMODO_GRAVAMEN.Value<>'') and ((CDSVentaCabDESGLOZAIVA.Value = 'N') or (FormCpbteCtdo_2.DiscriminaIva='N')) and
         (CDSVentaDetMODO_GRAVAMEN.Value[1] in ['G','E']) THEN
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


      CDSVentaDetCOSTO_EXENTO.AsFloat  := RoundTo( UnitarioExento * ( TasaCosto * 0.01),DMMain_FD.DecRedondeo);
      CDSVentaDetCOSTO_GRAVADO.AsFloat := RoundTo( UnitarioGravado * ( TasaCosto * 0.01),DMMain_FD.DecRedondeo);
      CDSVentaDetCOSTO_TOTAL.AsFloat   := CDSVentaDetCOSTO_EXENTO.AsFloat +
                                          CDSVentaDetCOSTO_GRAVADO.AsFloat;

      CDSVentaDetUNITARIO_EXENTO.AsFloat  := RoundTo( UnitarioExento * ( TasaVta * 0.01),DMMain_FD.DecRedondeo);
      CDSVentaDetUNITARIO_GRAVADO.AsFloat := RoundTo( (UnitarioGravado + UnitarioIva) * ( TasaVta * 0.01),DMMain_FD.DecRedondeo);
      CDSVentaDetUnitario_TotalSetText( CDSVentaDetUNITARIO_TOTAL,FloatToStr( CDSVentaDetUNITARIO_GRAVADO.AsFloat+CDSVentaDetUNITARIO_EXENTO.AsFloat));
        // aca pongo la duracion en mese que se indico en la configuracion del Art. de gta
      CDSVentaDetMESES_GTIA.Value         := DMBuscadores.QBuscaArticuloGtiaExtDURACION.Value
    end;
  DMBuscadores.QBuscaArticuloGtiaExt.Close;
  DMBuscadores.QGtia_Ext_Excepciones.Close;
end;

Function TDatosVentasCtdo.VerificaConsignaciones:boolean;
VAR P:TBookmark;
begin
  Result:=False;
  p:=CDSVtaDetConsig.GetBookmark;
  CDSVtaDetConsig.DisableControls;
  CDSVtaDetConsig.First;
  while not(CDSVtaDetConsig.Eof) do
    begin
      if CDSVtaDetConsigID_MOV_RECEPCION_DET.AsString='' Then
        result:=True;
      CDSVtaDetConsig.Next;
    end;
  CDSVtaDetConsig.GotoBookmark(p);
  CDSVtaDetConsig.EnableControls;
  CDSVtaDetConsig.FreeBookmark(p);
end;

procedure TDatosVentasCtdo.SincronizarConsignaciones;
VAR P:TBookmark;
begin
  p :=CDSVentaDet.GetBookmark;
  CDSVentaDet.DisableControls;
  CDSVentaDet.First;
  while not(CDSVentaDet.Eof) do
    begin
      if CDSVtaDetConsig.Locate('ID_DETFAC',CDSVentaDetId.AsString,[]) Then
        begin
          CDSVtaDetConsig.Edit;
          CDSVtaDetConsigCODIGO.Value              := CDSVentaDetCodigoArticulo.Value;
          CDSVtaDetConsigDETALLE.Value             := CDSVentaDetDetalle.Value;
          CDSVtaDetConsigCANTIDAD.AsFloat          := CDSVentaDetCANTIDAD.AsFloat;
          CDSVtaDetConsigPRECIO_VTA.AsFloat        := CDSVentaDetUNITARIO_TOTAL.AsFloat;
          CDSVtaDetConsig.Post;

          QRecepMayor.Close;
          QRecepMayor.ParamByName('CODIGO').Value   := CDSVentaDetCodigoArticulo.Value;
          QRecepMayor.ParamByName('PROVEEDOR').Value:= CDSVentaCabPROVEEDOR.Value;
          QRecepMayor.Open;
          ////// Si el saldo es mayor en Consignacion///////////////////////////
          if QRecepMayor.RecordCount=1 then
            begin
              if (QRecepMayorCANTIDAD_SALDO.Value >= CDSVtaDetConsigCANTIDAD.AsFloat) then
                begin
                  CDSVtaDetConsig.Edit;
                  CDSVtaDetConsigCANTIDAD.AsFloat := CDSVentaDetCANTIDAD.AsFloat;
                  CDSVtaDetConsigID_MOV_RECEPCION_DETSetText(CDSVtaDetConsigID_MOV_RECEPCION_DET,QRecepMayorID.AsString);
                  CDSVtaDetConsig.Post;
                end;
            end;
          /////////////////////////////////////////////////////////////////////
        end
      else
        begin
          CDSVtaDetConsig.Append;
          CDSVtaDetConsigCODIGO.Value              := CDSVentaDetCodigoArticulo.Value;
          CDSVtaDetConsigDETALLE.Value             := CDSVentaDetDetalle.Value;
          CDSVtaDetConsigCANTIDAD.AsFloat          := CDSVentaDetCANTIDAD.AsFloat;
          CDSVtaDetConsigPRECIO_VTA.AsFloat        := CDSVentaDetUNITARIO_TOTAL.AsFloat;
          CDSVtaDetConsig.Post;
          QRecepMayor.Close;
          QRecepMayor.ParamByName('CODIGO').Value   := CDSVentaDetCodigoArticulo.Value;
          QRecepMayor.ParamByName('PROVEEDOR').Value:= CDSVentaCabPROVEEDOR.Value;
          QRecepMayor.Open;
          if QRecepMayor.RecordCount=1 then
            begin
              if (QRecepMayorCANTIDAD_SALDO.Value >= CDSVtaDetConsigCANTIDAD.AsFloat) then
                begin
                  CDSVtaDetConsig.Edit;
                  CDSVtaDetConsigCANTIDAD.AsFloat := CDSVentaDetCANTIDAD.AsFloat;
                  CDSVtaDetConsigID_MOV_RECEPCION_DETSetText(CDSVtaDetConsigID_MOV_RECEPCION_DET,QRecepMayorID.AsString);
                  CDSVtaDetConsig.Post;
                end;
            end;
        end;
      CDSVentaDet.Next;
    end;
  CDSVentaDet.GotoBookmark(p);
  CDSVentaDet.EnableControls;
  CDSVentaDet.FreeBookmark(p);
end;

procedure TDatosVentasCtdo.ReAsignarDetalle;
VAR Puntero:TBookmark;
cont:Integer;
begin
  CDSVentaDet.First;
  CDSVentaDet.DisableControls;
  cont                    := 1;
  DMMain_FD.HayProduccion := False;
  CDSVentaDet.AfterPost   := nil;
  while Not(CDSVentaDet.Eof) do
    begin
      if CDSVentaDetDE_PRODUCCION.Value='S' then
        DMMain_FD.HayProduccion:=True;
      CDSVentaDet.edit;
      CDSVentaDetDESGLOZAIVA.AsString := CDSVentaCabDESGLOZAIVA.AsString;
      CDSVentaDetDEPOSITO.AsInteger   := CDSVentaCabDEPOSITO.AsInteger;
      CDSVentaDetTIPOCPBTE.AsString   := CDSVentaCabTIPOCPBTE.AsString;
      CDSVentaDetCLASECPBTE.AsString  := CDSVentaCabCLASECPBTE.AsString;
      CDSVentaDetNROCPBTE.AsString    := CDSVentaCabNROCPBTE.AsString;
      CDSVentaDetID_CABFAC.AsInteger  := CDSVentaCabID_FC.AsInteger;
      CDSVentaDetFECHAVTA.AsDateTime  := CDSVentaCabFECHAVTA.AsDateTime;
      CDSVentaDetRenglon.AsFloat      := cont;
      Inc(cont);
      CDSVentaDet.Next;
    end;
  CDSVentaDet.AfterPost:=CDSVentaDetAfterPost;
  CDSVentaDet.First;
  CDSVentaDet.EnableControls;
end;

procedure TDatosVentasCtdo.InformarCambiosPrecio;
VAR Puntero:TBookmark;
Detalle:String;
begin
  Puntero:=CDSVentaDet.GetBookmark;
  CDSVentaDet.First;
  CDSVentaDet.DisableControls;
  while Not(CDSVentaDet.Eof) do
    begin
//      if ((Trunc(CDSVentaDetUnitario_Total.AsFloat*10000))<>
//         (Trunc(CDSVentaDetUnitario_Total.OldValue*10000)))
      if (Not(SameValue(CDSVentaDetUnitario_Total.AsFloat,CDSVentaDetUnitario_Total.OldValue))) and
         (CDSVentaDetUnitario_Total.OldValue>0) Then
        begin
          // **** Ingreso en el Log File  **************
          Detalle:= 'Modificación de precio Fac.Venta: '+
                    CDSVentaCabNROCPBTE.AsString+
                   ' Articulo: '+
                    CDSVentaDetCodigoArticulo.AsString +
                    ':'+
                    CDSVentaDetDetalle.AsString+
                   ' Importe: '+
                    FormatFloat('0.00',CDSVentaDetUnitario_Total.NewValue)+
                   ' Importe Anerior: '+
                    FormatFloat('0.00',CDSVentaDetUnitario_Total.OldValue);

          DMMain_FD.LogFileFD(0,2,Detalle,'FACVTA');

          // ******************************************
        end;
      CDSVentaDet.Next;
    end;
  CDSVentaDet.GotoBookmark(Puntero);
  CDSVentaDet.FreeBookmark(Puntero);
  CDSVentaDet.EnableControls;
end;

procedure TDatosVentasCtdo.ReCalcularTodo;
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

  CDSPercepcionIVA.EnableControls;
  CDSPercepcionIVA.First;
  WHILE NOT (CDSPercepcionIVA.Eof) DO
    BEGIN
      IF (CDSPercepcionIVAIMPORTE.AsFloat <= 0) OR
         (CDSPercepcionIVATASA.AsFloat <= 0) THEN
        begin
          CDSPercepcionIVA.Delete;
          CDSPercepcionIVA.First;
        end
      else
        CDSPercepcionIVA.Next;
    END;


   //***************************************************************
   // Si no puede modificar precio el usuario pongo la
   // columna en la grilla como solo lectura
   FormCpbteCtdo_2.DBGrillaDetalle.Columns[5].ReadOnly:=NOt(DMMain_FD.ModificaPrecioVta);
   FormCpbteCtdo_2.DBGrillaDetalle.Columns[6].ReadOnly:=NOt(DMMain_FD.AplicaDescuento);
   //***************************************************************
   FormCpbteCtdo_2.Confirma.Execute;
end;

PROCEDURE TDatosVentasCtdo.HabilitarLabel;
BEGIN
  {Si la Factura no discrimina IVA}
  FormCpbteCtdo_2.DBGrillaIva.Visible        := DatosVentasCtdo.CDSVentaCabDesglozaIva.Value = 'S';
  FormCpbteCtdo_2.dbgPercecpionesIVA.Visible := DatosVentasCtdo.CDSVentaCabPERCIBE_IVA.Value = 'S';
  WITH FormCpbteCtdo_2 DO
    BEGIN
      dbeSuc.Enabled    := DBCheckManual.Checked;
      dbeNumero.Enabled := DBCheckManual.Checked;
      IF CDSVentaCab.State = dsBrowse THEN
        BEGIN
         // BtAnular.Enabled    := (wwCDSVentaCabAnulado.Value = 'N');
         // btModificar.Enabled := (wwCDSVentaCabAnulado.Value = 'N');
         // btModificar.Enabled :=(wwCDSVentaCabIMPRESO.Value = 'N');
        END;
    END;
END;

PROCEDURE TDatosVentasCtdo.CalcularTotales;
VAR
  Modo: TFPURoundingMode;
  Acumulador,AcumuladorPIVA,Descuento,TotalOld,TotalNew,
  TotalGral,NetoTotal,SumaTotal: Currency;// Extended;
  NetoGrav2,NetoExento2,NetoNoGrav2, ImpuestoNeto,ImpuestoImporte:Currency;
BEGIN
  CDSVentaCabTotal.AsFloat := 0;
  Acumulador               := 0;
  AcumuladorPIVA           := 0;
  Descuento                := CDSVentaCabDsto.AsFloat * 0.01;

  // Ultma modificacion 16/10/2017 agregado del  - Neto No Gravado -
  NetoGrav2   := RoundTo( CDSVentaCabNetoGrav1.AsFloat * (1 - Descuento),-3);
  NetoExento2 := RoundTo( CDSVentaCabNetoExen1.AsFloat * (1 - Descuento),-3);
  NetoNoGrav2 := RoundTo( CDSVentaCabNETONOGRAV1.AsFloat * (1 - Descuento),-3);

  //NetoGrav2   := StrToFloat( FormatFloat('0.000', CDSVentaCabNetoGrav1.AsFloat * (1 - Descuento)));
  Modo:=GetRoundMode;
 // SetRoundMode(rmUp);
  CDSVentaCabNETOGRAV2.AsFloat   := RoundTo(NetoGrav2,-2);
  CDSVentaCabNETONOGRAV2.AsFloat := RoundTo(NetoNoGrav2,-2);
  CDSVentaCabNETOEXEN2.AsFloat   := RoundTo(NetoExento2,-2);
  SetRoundMode(Modo);
  // Si percibo IB calculo la percepcion
  if CDSVentaCabPERCIBE_IB.Value='S' Then
    begin
      if (TForm(FormCpbteCtdo_2.Owner).Name<>'FormImportacionFacturasVtaGral') then
        CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := RoundTo (CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat * (1 - Descuento),-2);
    end
  else
    CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := 0;

  CDSVentaCabDSTOIMPORTE.AsFloat := (RoundTo(CDSVentaCabNetoGrav1.AsFloat,-2) +
                                     RoundTo(CDSVentaCabNETOEXEN1.AsFloat,-2) +
                                     RoundTo(CDSVentaCabNETONOGRAV1.AsFloat,-2)) -
                                    (CDSVentaCabNetoGrav2.AsFloat + CDSVentaCabNETOEXEN2.AsFloat + CDSVentaCabNETONOGRAV2.ASFloat);

  if IsZero(Descuento) then CDSVentaCabDSTOIMPORTE.AsFloat :=0;

  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
    WHILE NOT (CDSimpuestos.Eof) DO
      BEGIN
        TotalOld := (CDSImpuestosNETO.AsFloat+CDSImpuestosIMPORTE.AsFloat);
        TotalOld := RoundTo(TotalOld,-3);
        TotalOld := RoundTo(TotalOld,-2);
        TotalNew := RoundTo(TotalOld * (1 - Descuento),-2);
        CDSImpuestos.Edit;
        CDSImpuestosNETO.AsFloat    := 0;
        CDSImpuestosNETO.AsFloat    := TotalOld - CDSImpuestosIMPORTE.AsFloat;
        Modo:=GetRoundMode;
        SetRoundMode(rmUp);
        CDSImpuestosNETO.AsFloat    := RoundTo(CDSImpuestosNETO.AsFloat,-3);
        CDSImpuestosNETO.AsFloat    := RoundTo(CDSImpuestosNETO.AsFloat,-2);

        SetRoundMode(Modo);

        CDSImpuestosNETO.AsFloat    := RoundTo(CDSImpuestosNETO.AsFloat,-2);

        if Trunc(CDSVentaCabDSTO.AsFloat*100)<>0 then
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

        if Trunc(CDSVentaCabDSTO.AsFloat*100)<>0 then
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


  Modo:=GetRoundMode;
  SetRoundMode(rmUp);
  Acumulador:=RoundTo(Acumulador,-3);
  Acumulador:=RoundTo(Acumulador,-2);
  SetRoundMode(Modo);


  if (CDSVentaCabPERCIBE_IB.Value='S') and (CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat>DMMain_FD.Minim_Imp_IB_Perc)
  Then
    begin
      if (TForm(FormCpbteCtdo_2.Owner).Name<>'FormImportacionFacturasVtaGral') then
        CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat := RoundTo(CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat *
                                                        CDSVentaCabPERCEPCION_IB_TASA.AsFloat * 0.01,-2)
    end
  else
    CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat :=0;


  SumaTotal     := roundTo(CDSVentaCabNETOGRAV2.AsFloat +
                           CDSVentaCabNETOEXEN2.AsFloat +
                           CDSVentaCabNETONOGRAV2.AsFloat +
                           Acumulador + AcumuladorPIVA +
                           CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat,-3);

  CDSVentaCabTOTAL.AsFloat := RoundTo(SumaTotal,-2);
    {
    TasaReal: esta tasa la uso como multiplicador para cuando el cliente es del tipo
    Monotributo o consumidor final, as'i muestro los importe con el Iva
    incluido.
    No esta con formato para que la cuenta me de bien..... creo...}

//   ( ( Total/ neto )- 1 ) x 100 = Tasa de Iva usada

//  CDSVentaCabNETOGRAV2.AsFloat  := RoundTo(CDSVentaCabNetoGrav1.AsFloat * (1 - Descuento), -2);
//  CDSVentaCabNetoGrav1.AsFloat  := CDSVentaCabNetoGrav1.AsFloat;

  TotalGral := CDSVentaCabTOTAL.AsFloat -
               (CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat + AcumuladorPIVA +
                CDSVentaCabNETOEXEN2.AsFloat +
                CDSVentaCabNETONOGRAV2.AsFloat);
  NetoTotal := CDSVentaCabNETOGRAV2.AsFloat;// + CDSVentaCabNETOEXEN2.AsFloat;


  TRY
    if CDSVentaCabNetoGrav2.AsFloat>0 Then
//      Var_TasaIVA:=(((wwCDSVentaCabTotal.Value-wwCDSVentaCabPERCEPCION_IB_IMPORTE.Value )- wwCDSVentaCabNetoGrav2.Value) / wwCDSVentaCabNetoGrav2.Value)*100
      Var_TasaIVA:= RoundTo(((TotalGral/NetoTotal)-1) * 100,-2)
    else
      Var_TasaIva:=0;
  EXCEPT
    ON EZeroDivide DO
      Var_TasaIva:=0;
  END;
  // Para que se refresca el OnGetTex de Descuento.... lo reasgino de nuevo
  CDSVentaCabDSTOIMPORTE.AsFloat := (RoundTo(CDSVentaCabNetoGrav1.AsFloat,-2) + RoundTo(CDSVentaCabNETOEXEN1.AsFloat,-2) + RoundTo(CDSVentaCabNETONOGRAV1.AsFloat,-2)) -
                                    (CDSVentaCabNetoGrav2.AsFloat + CDSVentaCabNETOEXEN2.AsFloat);

  if IsZero(Descuento) then CDSVentaCabDSTOIMPORTE.AsFloat :=0;
  //  CDSVentaCabDSTOIMPORTE.AsFloat := (CDSVentaCabNetoGrav1.AsFloat + CDSVentaCabNETOEXEN1.AsFloat) -
  //                                    (CDSVentaCabNetoGrav2.AsFloat + CDSVentaCabNETOEXEN2.AsFloat);


END;

PROCEDURE TDatosVentasCtdo.SumarDetalle;
VAR
  Puntero    : TBookmark;
  CDSClone   : TClientDataSet;
  ValorAux   : String;
  TotalNeto  : Extended;
  TotalFinal : Extended;
BEGIN
  Puntero:=CDSVentaDet.GetBookmark;
  CDSVentaDet.DisableControls;
  CDSVentaDet.First;
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSVentaDet,True);

  IF CDSVentaCab.State = dsBrowse THEN
    CDSVentaCab.Edit;
  CDSVentaCabNetoGrav1.ASFloat                   :=0;
  CDSVentaCabNetoExen1.ASFloat                   :=0;
  CDSVentaCabNETONOGRAV1.ASFloat                 :=0;
  CDSVentaCabPERCEPCION_IB_IMPORTE.Value         :=0;
  CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat :=0;

  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
  WHILE NOT (CDSImpuestos.Eof) DO
    BEGIN
      CDSImpuestos.Edit;
      CDSImpuestosNeto.AsFloat   :=0;
      CDSImpuestosIMPORTE.AsFloat:=0;
      CDSImpuestos.Next;
    END;

  CDSPercepcionIVA.First;
  CDSPercepcionIVA.DisableControls;
  WHILE NOT (CDSPercepcionIVA.Eof) DO
    BEGIN
      CDSPercepcionIVA.Edit;
      CDSPercepcionIVANETO.AsFloat   :=0;
      CDSPercepcionIVAIMPORTE.AsFloat:=0;
      CDSPercepcionIVA.Next;
    END;
  CDSPercepcionIVA.First;
  CDSPercepcionIVA.EnableControls;

  WHILE (NOT CDSClone.Eof) DO
    BEGIN
      ValorAux:=CDSClone.FieldByName('TOTAL_GRAVADO').AsVariant ;
      IF (CDSClone.FieldByName('TIPOIVA_TASA').AsInteger <> 0) AND (NOT (VarIsNull(CDSClone.FieldByName('TIPOIVA_TASA').AsInteger))) AND
         (CDSClone.FieldByName('MODO_GRAVAMEN').Value <> 'E') THEN
        BEGIN
          IF CDSImpuestos.Locate('CODIGO_GRAVAMEN', CDSClone.FieldByName('TIPOIVA_TASA').AsInteger, []) THEN
            BEGIN
              CDSImpuestos.Edit;
              CDSImpuestosNeto.AsFloat    := CDSImpuestosNeto.AsFloat + RoundTo(CDSClone.FieldByName('TOTAL_GRAVADO').AsFloat,-3);
              CDSImpuestosImporte.AsFloat := CDSImpuestosIMPORTE.AsFloat + RoundTo(CDSClone.FieldByName('IVA_TOTAL').AsFloat,-3);
              CDSImpuestos.Post;
            END
          ELSE
            BEGIN
              CDSImpuestos.Insert;
              CDSImpuestosCODIGO_GRAVAMEN.Value   := CDSClone.FieldByName('TIPOIVA_TASA').AsInteger;
              CDSIva.Close;
              CDSIva.Params.ParamByName('id').Value := CDSClone.FieldByName('TIPOIVA_TASA').AsInteger;
              CDSIva.Open;
              CDSImpuestosDETALLE.Value     := CDSIvaDESCRIPCION.Value;
              CDSImpuestosID_FCVTACAB.Value := CDSVentaCabID_FC.Value;
              CDSImpuestosNETO.AsFloat      := CDSImpuestosNeto.AsFloat + RoundTo(CDSClone.FieldByName('TOTAL_GRAVADO').AsFloat,-3);
              CDSImpuestosTASA.AsFloat      := CDSClone.FieldByName('IVA_TASA').AsFLoat;
              CDSImpuestosIMPORTE.AsFloat   := CDSImpuestosIMPORTE.AsFloat + RoundTo(CDSClone.FieldByName('IVA_TOTAL').AsFloat,-3);
              CDSImpuestos.Post;
            END;
        // Suma Percepcion IVA ************************************************
          IF (CDSVentaCabPERCIBE_IVA.Value='S') Then
            begin
              IF (CDSClone.FieldByName('PERCIBE_IVA').Value='S') then
                begin
                  if CDSPercepcionIVA.Locate('Codigo_percepcion',CDSClone.FieldByName('ID_TASA_PERCEPCION_IVA').Value, []) THEN
                    BEGIN
                      CDSPercepcionIVA.Edit;
                      CDSPercepcionIVANETO.AsFloat    := CDSPercepcionIVANETO.AsFloat + CDSClone.FieldByName('TOTAL_GRAVADO').AsFloat ;
                      CDSPercepcionIVAIMPORTE.AsFloat := (CDSPercepcionIVANETO.AsFloat * CDSClone.FieldByName('TASA_PERCEP_IVA').AsFloat * 0.01);
                      CDSPercepcionIVA.Post;
                    END
                  ELSE
                    BEGIN
                      CDSPercepcionIVA.Insert;
                      CDSPercepcionIVACODIGO_PERCEPCION.Value := CDSClone.FieldByName('ID_TASA_PERCEPCION_IVA').Value;
                      CDSPercepcionIVADETALLE.Value           := 'Percep IVA %'+FormatFloat('0.00',CDSClone.FieldByName('TASA_PERCEP_IVA').AsFloat);
                      CDSPercepcionIVAID_FCVTACAB.Value       := CDSVentaDetID_CABFAC.Value;
                      CDSPercepcionIVANETO.AsFloat            := CDSClone.FieldByName('TOTAL_GRAVADO').AsFloat;
                      CDSPercepcionIVATASA.AsFloat            := CDSClone.FieldByName('TASA_PERCEP_IVA').AsFloat;
                      CDSPercepcionIVAIMPORTE.AsFloat         := CDSClone.FieldByName('TOTAL_GRAVADO').AsFloat * CDSClone.FieldByName('TASA_PERCEP_IVA').AsFloat * 0.01;
                      CDSPercepcionIVA.Post;
                    END;
                end;
            end;
        END;

      TotalNeto                    := TotalNeto +  CDSClone.FieldByName('TOTAL_GRAVADO').AsFloat;
      TotalFinal                   := TotalFinal + (CDSClone.FieldByName('TOTAL_GRAVADO').AsFloat +CDSClone.FieldByName('IVA_TOTAL').AsFloat );

//      CDSVentaCabNETOGRAV1.AsFloat := CDSClone.FieldByName('TOTAL_GRAVADO').AsFloat + CDSVentaCabNETOGRAV1.AsFloat;

      if (CDSClone.FieldByName('MODO_GRAVAMEN').Value='E') or
         (CDSClone.FieldByName('MODO_GRAVAMEN').Value='M') or
         (CDSClone.FieldByName('MODO_GRAVAMEN').Value='Y') or
         (CDSClone.FieldByName('MODO_GRAVAMEN').Value='I') then
        CDSVentaCabNETOEXEN1.AsFloat := CDSClone.FieldByName('TOTAL_EXENTO').AsFloat  + CDSVentaCabNetoExen1.AsFloat
      else
        if CDSClone.FieldByName('MODO_GRAVAMEN').Value='N' then // modificacion de acumulado Neto No Gravado
          CDSVentaCabNETONOGRAV1.AsFloat := CDSClone.FieldByName('TOTAL_EXENTO').AsFloat  + CDSVentaCabNETONOGRAV1.AsFloat;

      if ((CDSClone.FieldByName('GRAVADO_IB').Value='S') and (CDSVentaCabDESGLOZAIVA.Value='S')) Then
        CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := CDSClone.FieldByName('TOTAL').AsFloat +
                                                          CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat
      else
        if ((CDSClone.FieldByName('GRAVADO_IB').Value='S' ) and (CDSVentaCabDESGLOZAIVA.Value='N')) Then
          CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := CDSClone.FieldByName('TOTAL').AsFloat +
                                                            CDSClone.FieldByName('IVA_TOTAL').AsFloat +
                                                            CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat;

      CDSClone.Next;
    END;

  Var_TasaIva:=  ((TotalFinal/TotalNeto)-1)*100;

  CDSVentaCabNETOGRAV1.AsFloat   := TotalNeto;

  if CDSVentaCabNETOEXEN1.AsFloat <0.003 then CDSVentaCabNETOEXEN1.AsFloat:=0;

  CDSVentaCabNETOGRAV1.AsFloat   := RoundTo(CDSVentaCabNETOGRAV1.AsFloat,-4);
  CDSVentaCabNETOGRAV1.AsFloat   := RoundTo(CDSVentaCabNETOGRAV1.AsFloat,-3);

  CDSVentaCabNETONOGRAV1.AsFloat := RoundTo(CDSVentaCabNETONOGRAV1.AsFloat,-4);
  CDSVentaCabNETONOGRAV1.AsFloat := RoundTo(CDSVentaCabNETONOGRAV1.AsFloat,-3);

  CDSVentaCabNETOEXEN1.AsFloat   := RoundTo(CDSVentaCabNETOEXEN1.AsFloat,-4);
  CDSVentaCabNETOEXEN1.AsFloat   := RoundTo(CDSVentaCabNETOEXEN1.AsFloat,-3);

//  CDSVentaCabNETOGRAV1.AsFloat   := RoundTo(CDSVentaCabNETOGRAV1.AsFloat,-3);
 // CDSVentaCabNETONOGRAV1.AsFloat := RoundTo(CDSVentaCabNETONOGRAV1.AsFloat,-3);

  CDSVentaCabNETOEXEN1.AsFloat := RoundTo(CDSVentaCabNETOEXEN1.AsFloat,-3);
 // CDSVentaCabNETOEXEN1.AsFloat := RoundTo(CDSVentaCabNETOEXEN1.AsFloat,-2);

  CDSClone.Free;
  CDSVentaDet.GotoBookmark(Puntero);
  CDSVentaDet.FreeBookmark(Puntero);
  CDSVentaDet.EnableControls;
  { aca voy a los calculos de los totoales de la factura }
END;





procedure TDatosVentasCtdo.AplicarMascarasNumericas;
VAR I:Byte;
begin
//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETUNITARI';
//  DMMain_FD.QOpciones.Open;
  MascaraDetalleUnitario:= DMMain_FD.MascaraDetalleUnitario;	//DMMain_FD.QOpciones.Fields[0].AsString;
//  TFloatField(CDSVentaDetUnitario_Total).EditFormat    := MascaraDetalleUnitario;
  TFloatField(CDSVentaDetUnitario_Total).DisplayFormat := MascaraDetalleUnitario;

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETCANTIDA';
//  DMMain_FD.QOpciones.Open;
  MascaraDetalleCantidad		:=	DMMain_FD.MascaraDetalleCantidad;//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSVentaDetCantidad).EditFormat    := MascaraDetalleCantidad;
  TFloatField(CDSVentaDetCantidad).DisplayFormat := MascaraDetalleCantidad;

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETDESCUEN';
//  DMMain_FD.QOpciones.Open;
  MascaraDetalleDescuento:='0.00';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSVentaDetDescuento).EditFormat    := MascaraDetalleDescuento;
  TFloatField(CDSVentaDetDescuento).DisplayFormat := MascaraDetalleDescuento;


//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:= 'VTADETTOTAL';
//  DMMain_FD.QOpciones.Open;
  MascaraDetalleTotal:=',0.00';// DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSVentaDetTotal).EditFormat        := MascaraDetalleTotal;
  TFloatField(CDSVentaDetTotal).DisplayFormat     := MascaraDetalleTotal;

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='IVATASA';
//  DMMain_FD.QOpciones.Open;
  MascaraIvaTasa:='0.0';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSVentaDetIVA_Tasa).EditFormat        := MascaraIvaTasa;
  TFloatField(CDSVentaDetIVA_Tasa).DisplayFormat     := MascaraIvaTasa;
  TFloatField(CDSVentaDetIVA_SobreTasa).EditFormat   := MascaraIvaTasa;
  TFloatField(CDSVentaDetIVA_SobreTasa).DisplayFormat:= MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).EditFormat           := MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).DisplayFormat        := MascaraIvaTasa;

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='IVAIMPORTES';
//  DMMain_FD.QOpciones.Open;

  MascaraIvaImporte:=',0.00';//DMMain_FD.QOpciones.Fields[0].AsString;

  TFloatField(CDSImpuestosIMPORTE).EditFormat        := MascaraIvaImporte;
  TFloatField(CDSImpuestosIMPORTE).DisplayFormat     := MascaraIvaImporte;
  TFloatField(CDSImpuestosNETO).EditFormat           := MascaraIvaImporte;
  TFloatField(CDSImpuestosNETO).DisplayFormat        := MascaraIvaImporte;

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTACABECERA';
//  DMMain_FD.QOpciones.Open;

  MascaraCabecera:=',0.00';//DMMain_FD.QOpciones.Fields[0].AsString;

  For i:=0 to CDSVentaCab.FieldCount-1 do
    begin
     if  (CDSVentaCab.Fields[i].DataType=ftFloat) Then
        begin
         // TFloatField(wwCDSVentaDet.Fields[i]).EditMask:='###,##0.0';
          TFloatField(CDSVentaCab.Fields[i]).EditFormat   := MascaraCabecera;
          TFloatField(CDSVentaCab.fields[i]).DisplayFormat:= MascaraCabecera;
        end
      else
       if (CDSVentaCab.Fields[i].DataType=ftFMTBcd) Then
          begin
           // TFloatField(wwCDSVentaDet.Fields[i]).EditMask:='###,##0.0';
            TFloatField(CDSVentaCab.Fields[i]).EditFormat   := MascaraCabecera;
            TFloatField(CDSVentaCab.fields[i]).DisplayFormat:= MascaraCabecera;
          end

    end;

  CDSVentaCabMONEDA_CPBTE_COTIZACION.EditFormat    := '0.000';
  CDSVentaCabMONEDA_CPBTE_COTIZACION.DisplayFormat := '0.000';
  CDSVentaCabDSTOIMPORTE.EditFormat                := ',0.00';
  CDSVentaCabDSTOIMPORTE.DisplayFormat             := ',0.00';

//  DMMain_FD.QOpciones.Close;
end;

FUNCTION TDatosVentasCtdo.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('Id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSVentaCabSUCURSAL.Value;
  if FormCpbteCtdo_2.FiltraCpbteCondIva='S' Then
    QComprob.ParamByName('DesglozaIva').Value := CDSVentaCabDESGLOZAIVA.Value
  else
    QComprob.ParamByName('DesglozaIva').Value := '*';
  QComprob.Open;

  IF NOT(QComprob.IsEmpty) and (DMMain_FD.Autoriza_Comprobante(dato)) then
    begin
      //*****************************************************************************
      // Seccion Nueva , asigna la caja segun el comprobante seleccionado  10/12/2012
      //*****************************************************************************
      if ((TForm(Self.Owner)).Owner.Name <>'FormLecturaXML') and ((TForm(Self.Owner)).Owner.Name<>'FormRecepRepartoExpress') then
        begin
          if (QComprobCAJA_DEFECTO.AsString<>'') and (QComprobCAJA_DEFECTO.Value>0) then
            FormCpbteCtdo_2.CajaPorDefecto:=QComprobCAJA_DEFECTO.Value
          else
            begin
              // estas lineas se agregan para el resumen de caja***********************
              if (TForm(Self.Owner)).Owner.Name<>'FormCajaResumen' then
                FormCpbteCtdo_2.CajaPorDefecto:=DMMain_FD.CajaSeleccionada;
            end;
        end;
      //*****************************************************************************
      //*****************************************************************************

      if (QComprobFISCAL.AsString[1]='S') THEN // verifico si esta autorizado
        begin
          Result := True;
          CDSVentaCabNUMEROFAC.Clear;
          CDSVentaCabSUCFAC.Clear;
          CDSVentaCabMUESTRACOMPROBANTE.Value   := QComprobDENOMINACION.Value;
          CDSVentaCabLETRAFAC.Value             := QComprobLETRA.Value;
          CDSVentaCabTIPOCPBTE.Value            := QComprobTIPO_COMPROB.Value;
          CDSVentaCabCLASECPBTE.Value           := QComprobCLASE_COMPROB.Value;
          Renglones                             := QComprobLINEAS_DETALLE.Value;
          FormCpbteCtdo_2.Calcula_iva_articulo  := QComprobCALCULA_IVA_ARTICULOS.Value='S';
          FormCpbteCtdo_2.Divide_iva            := QComprobDIVIDE_IVA.Value='S';
          ///// si es fiscal le desabilito el si puede o no ser manual
          CDSVentaCabCON_CAEA.Value             := QComprobUSAR_CAEA.Value;
           CDSVentaCabCPTE_MANUAL.Value         :='N';
          FormCpbteCtdo_2.DBCheckManual.Enabled := QComprobFISCAL.Value='N';
          CDSVentaCabFACTURA_ELECTRONICA.Value  := QComprobFACTURAELECTRONICA.Value;
          if (QComprobDEPOSITO.AsString<>'') and (QComprobDEPOSITO.Value>0) then
            CDSVentaCabDepositoSetText(CDSVentaCabDeposito,QComprobDEPOSITO.AsString);

        end
      else
        begin
          Result := False;
          CDSVentaCabMUESTRACOMPROBANTE.Value   := '';
          CDSVentaCabLETRAFAC.Value             := '';
          CDSVentaCabTIPOCPBTE.Value            := '';
          CDSVentaCabCLASECPBTE.Value           := '';
          FormCpbteCtdo_2.DBCheckManual.Enabled := True;
          FormCpbteCtdo_2.Calcula_iva_articulo  := QComprobCALCULA_IVA_ARTICULOS.Value='S';
          FormCpbteCtdo_2.Divide_iva            := QComprobDIVIDE_IVA.Value='S';

        end;

      if (QComprobFISCAL.AsString[1]='N') THEN // verifico si esta autorizado
        BEGIN
          Result := True;
          CDSVentaCabMUESTRACOMPROBANTE.Value  := QComprobDENOMINACION.Value;
          CDSVentaCabLETRAFAC.Value            := QComprobLETRA.Value;
          CDSVentaCabTIPOCPBTE.Value           := QComprobTIPO_COMPROB.Value;
          CDSVentaCabCLASECPBTE.Value          := QComprobCLASE_COMPROB.Value;

          CDSVentaCabFACTURA_ELECTRONICA.Value := QComprobFACTURAELECTRONICA.Value;
          if (QComprobDEPOSITO.AsString<>'') and (QComprobDEPOSITO.Value>0) then
            CDSVentaCabDepositoSetText(CDSVentaCabDeposito,QComprobDEPOSITO.AsString);

          Renglones                            := QComprobLINEAS_DETALLE.Value;
          CDSVentaCabCON_CAEA.Value            := QComprobUSAR_CAEA.Value;

    ///// si es fiscal le desabilito el si puede o no ser manual
          FormCpbteCtdo_2.Calcula_iva_articulo  := QComprobCALCULA_IVA_ARTICULOS.Value='S';
          FormCpbteCtdo_2.Divide_iva            := QComprobDIVIDE_IVA.Value='S';
          if (QComprobDEPOSITO.AsString<>'') and (QComprobDEPOSITO.Value>0) then
            CDSVentaCabDepositoSetText(CDSVentaCabDeposito,QComprobDEPOSITO.AsString);

          if QComprobNUMERARCION_PROPIA.Value='X' then
            CDSVentaCabCPTE_MANUAL.Value  :='S'
          else
            CDSVentaCabCPTE_MANUAL.Value  :='N';

          FormCpbteCtdo_2.DBCheckManual.Enabled      := QComprobNUMERARCION_PROPIA.Value='X';

        end;
    end
  else
    BEGIN
      Result := False;
      CDSVentaCabMUESTRACOMPROBANTE.Value  := '';
      CDSVentaCabLETRAFAC.Value            := '';
      CDSVentaCabTIPOCPBTE.Value           := '';
      CDSVentaCabCLASECPBTE.Value          := '';
      CDSVentaCabFACTURA_ELECTRONICA.Value := 'N';
      CDSVentaCabCON_CAEA.Value            := 'N';
      FormCpbteCtdo_2.Calcula_iva_articulo := QComprobCALCULA_IVA_ARTICULOS.Value='S';
      FormCpbteCtdo_2.Divide_iva           := QComprobDIVIDE_IVA.Value='S';
      Renglones                            := 0;
      FormCpbteCtdo_2.DBCheckManual.Enabled :=True;
    END;

//********************************************************************************
  if FormCpbteCtdo_2.VerificaIvaCpbte then
    begin
      CDSInscripcion.Close;
      CDSInscripcion.Params.ParamByName('Codigo').AsInteger := CDSVentaCabTipoIva.AsInteger;
      CDSInscripcion.Open;
      IF (CDSInscripcionCODIGO.AsString<>'') Then
        BEGIN
          if (CDSInscripcionDISCRIMINAIVA.Value='S') Then
            begin
              if (QComprobDESGLOZA_IVA.Value='N') and (QComprobAFECTA_IVA.Value='S') then
               begin
                 CDSVentaCabID_TIPOCOMPROBANTE.Clear;
                 CDSVentaCabMUESTRACOMPROBANTE.Clear;
                 CDSVentaCabLETRAFAC.Clear;
                 CDSVentaCabSUCFAC.Clear;
                 CDSVentaCabNUMEROFAC.Clear;
                 CDSVentaCabFACTURA_ELECTRONICA.Value := 'N';
                 ShowMessage('Comprobante no permitido para la condición de iva del cliente....');
               end;
            end
          else
            if (CDSInscripcionDISCRIMINAIVA.Value='N') Then
              begin
                if (QComprobDESGLOZA_IVA.Value='S') then
                  begin
                    CDSVentaCabID_TIPOCOMPROBANTE.Clear;
                    CDSVentaCabMUESTRACOMPROBANTE.Clear;
                    CDSVentaCabLETRAFAC.Clear;
                    CDSVentaCabSUCFAC.Clear;
                    CDSVentaCabNUMEROFAC.Clear;
                    CDSVentaCabFACTURA_ELECTRONICA.Value := 'N';
                    ShowMessage('Comprobante no permitido para la condición de iva del cliente....');
                  end;
              end;
          if DMMain_FD.AgentePercepcionIVA='S' then
            CDSVentaCabPERCIBE_IVA.Value:=CDSInscripcionAPLICAPERCEPCIONIVA.Value
          else
            CDSVentaCabPERCIBE_IVA.Value:='N';

          if (CDSVentaCabPERCIBE_IVA.Value='S') and (CDSVentaCabINGRESA_LIBRO_IVA.Value='N') Then
            CDSVentaCabPERCIBE_IVA.Value:='N';
        end;
      CDSInscripcion.Close;
    end;
  FormCpbteCtdo_2.EditarNro:='X';
  if QComprobNUMERARCION_PROPIA.AsString<>'X' then
    begin
      FormCpbteCtdo_2.EditarNro:=QComprobEDITAR_NRO.AsString;
      if FormCpbteCtdo_2.EditarNro='S' then
        begin
          CDSVentaCabCPTE_MANUAL.AsString   :='S';
          FormCpbteCtdo_2.DBCheckManual.Enabled := True;
        end;
    end;
END;


FUNCTION TDatosVentasCtdo.AsignarProveedor(Dato: String): Boolean;
begin
  QProveedores.Close;
  QProveedores.ParamByName('codigo').Value:= Dato;
  QProveedores.Open;
  if QProveedoresCODIGO.AsString<>'' then
    begin
      Result:=True;
      CDSVentaCabMUESTRAPROVEEDOR.Value:=QProveedoresNOMBRE.Value;
      CDSVentaCabPROVEEDOR.Value       :=QProveedoresCODIGO.Value;
    end
  else
    begin
      Result:=False;
      CDSVentaCabMUESTRAPROVEEDOR.Clear;
      CDSVentaCabPROVEEDOR.Clear;
    end;
  QProveedores.Close;
end;

FUNCTION TDatosVentasCtdo.ASignarArticulo(Dato: STRING): Boolean;
var Gravado,Exento,Iva,Total,Margen,Dscto,PFinal, Cotizacion:Extended;
 ModoIVA:Integer;
 Enter:char;
 PrecioPLU  :Extended;
 PrecioFinal:Extended;
 FiltroRubUser:Boolean;
BEGIN
  Enter:=#13;
  IF CDSVentaDet.State = dsBrowse THEN
    CDSVentaDet.Edit;
  WITH DatosVentasCtdo DO
    BEGIN
      CDSStock.Close;
      CDSStock.Params.ParamByName('Codigo').Value := Dato;
      CDSStock.Open;
      //Verifica Filtro por Rubro de Articulos....
      FiltroRubUser := DMMain_FD.FiltroRubroUsurio(DMMain_FD.UsuarioActivoId,CDSStockRUBRO_STK.Value);
      //************************************************************************************
      IF (( NOT (CDSStock.IsEmpty)) and (CDSStockCLASE_ARTICULO.Value<>0) and (CDSStockCLASE_ARTICULO.Value<>2) and
          (CDSStockCLASE_ARTICULO.Value<>4)) and (FiltroRubUser=False) THEN
        BEGIN
           //vacio todo los importes por si hay un cambio de codigo y no queden cargados los valores
          CDSVentaDetCANTIDAD.AsFloat            :=0;
          CDSVentaDetUNITARIO_TOTAL.AsFloat      :=0;
          CDSVentaDetUNITARIO_GRAVADO.AsFloat    :=0;
          CDSVentaDetUNITARIO_EXENTO.AsFloat     :=0;
          CDSVentaDetTOTAL.AsFloat               :=0;
          CDSVentaDetCONTROL_TRAZABILIDAD.Value  := CDSStockCONTROL_TRAZABILIDAD.Value;
          CDSVentaDetDETALLE_ADICIONAL.Value     := CDSStockDETALLE_STK_ADICIONAL.Value;
          // ***********************************
          // Verifica si Corresponde Factura A  Res.3668
          // ***********************************
          if CDSVentaCabDESGLOZAIVA.AsString = 'S' then
            begin
              DMMain_FD.CDSVerifRes3886.Close;
              DMMain_FD.CDSVerifRes3886.Params.ParamByName('Rubro').Value   :=CDSStockRUBRO_STK.Value;
              DMMain_FD.CDSVerifRes3886.Params.ParamByName('SubRubro').Value:=CDSStockSUBRUBRO_STK.Value;
              DMMain_FD.CDSVerifRes3886.Open;
              if ((DMMain_FD.CDSVerifRes3886.Fields[0].AsString<>'') and  (DMMain_FD.CDSVerifRes3886.Fields[0].Value>0)) then
              if DMMain_FD.VerifRes3886(CDSStockSUBRUBRO_STK.AsString) then
                begin
                  if Not( (F8001) and ( (CDSVentaCabFECHAVTA.AsDateTime <= HastaF8001) and
                                        (CDSVentaCabFECHAVTA.AsDateTime >= DesdeF8001) ) ) then
                  ShowMessage('Para este rubro de Articulo debe presentar F 8001 Segun Res.AFIP 3668... Verifique esto... o genere el Formulario..');
                end;
              DMMain_FD.CDSVerifRes3886.Close;
            end;
          // ***********************************
          // ***********************************
          // ***********************************
          DMMain_FD.FechaUltimaActulizacionPrecio := CDSStockFUAP.AsDateTime;
          // ***********************************
          // asigno si es de producion.....
          // ***********************************
          if (CDSStockDEPRODUCCION.Value='S') and (CDSStockPRODUCCIONDIRECTA.Value='S') and
             FormCpbteCtdo_2.GenerarOProducion then
               CDSVentaDetDE_PRODUCCION.Value  := 'S'
          else
            CDSVentaDetDE_PRODUCCION.Value     := 'N';

          if CDSVentaCabTIPOCPBTE.Value='NC' then
            CDSVentaDetDE_PRODUCCION.Value     := 'N';

          CDSVentaDetIB_TASA.Value                    := CDSStockMUESTRATASAIB.Value;  // el codigo de Tasa
          CDSVentaDetGRAVADO_IB.Value                 := CDSStockGRAVADO_IB.Value;
          CDSVentaDetTIPOIB_TASA.Value                := CDSStockTASA_IB.Value;       // Codigo de IB
          CDSVentaDetCON_NRO_SERIE.Value              := CDSStockCONTROL_SERIE.Value;
          CDSVentaDetCON_CODIGO_BARRA.Value           := CDSStockUSA_CODIGOBARRA.Value;
          CDSVentaDetDETALLE.AsString                 := CDSStockDetalle_Stk.AsString;
          CDSVentaDetDETALLE_ADICIONAL.AsString       := CDSStockDETALLE_STK_ADICIONAL.AsString;
          CDSVentaDetUNIDAD.Value                     := CDSStockUnidad.Value;
          CDSVentaDetCOSTO_GRAVADO.AsFloat            := RoundTo((CDSStockFijacion_Precio_Gravado.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat),DMMain_FD.DecRedondeo);
          CDSVentaDetCOSTO_EXENTO.AsFloat             := RoundTo((CDSStockFijacion_Precio_Exento.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat),DMMain_FD.DecRedondeo);
          CDSVentaDetCOSTO_TOTAL.AsFloat              := RoundTo((CDSStockFijacion_Precio_Total.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat),DMMain_FD.DecRedondeo);
          CDSVentaDetAFECTA_STOCK.Value               := CDSStockControlaStock.Value;
          CDSVentaDetMODO_GRAVAMEN.Value              := CDSStockModo_Gravamen.Value;
          CDSVentaDetTIPOIVA_TASA.Value               := CDSStockTasa_Iva.Value;
          CDSVentaDetTIPOIVA_SOBRETASA.Value          := CDSStockSobreTasa_Iva.Value;
          CDSVentaDetMUESTRAIVAMODIFICADO.AsString    := CDSStockIVA_MODIFICADO.AsString;
          CDSVentaDetPERCIBE_IVA.AsString             := CDSStockPERCIBE_IVA.AsString;
          CDSVentaDetID_TASA_PERCEPCION_IVA.Value     := CDSStockID_TASA_PERCEP_IVA.Value;
          CDSVentaDetTASA_PERCEP_IVA.Value            := DMMain_FD.GetTasaPercepcionIVA(CDSStockID_TASA_PERCEP_IVA.Value);
          CDSVentaDetPERCEPCION_IVA_DIFERENCIAL.Value := CDSStockAPLICA_TASA_DIF.Value;
          CDSVentaDetPRESENTACION_TOLERANCIA.Value    := CDSStockPRESENTACION_TOLERANCIA.Value;
          //***************************************************************
          // Normativa de Macri para los consumidores finales
          ModoIva:=0;
          if (FormCpbteCtdo_2.AplicaIvaDif) and (CDSVentaDetMUESTRAIVAMODIFICADO.AsString='S') and (CDSVentaCabTIPOIVA.Value=3) then
            begin
              CDSVentaDetCosto_Gravado.AsFloat      := CDSStockFijacion_Precio_Exento.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat;
              CDSVentaDetCosto_Exento.AsFloat       := CDSStockFijacion_Precio_Gravado.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat;
              CDSVentaDetCosto_Total.AsFloat        := CDSStockFijacion_Precio_Total.AsFloat/CDSStockCONTENIDO_COMPRA.AsFLoat;
              CDSVentaDetModo_Gravamen.Value        := 'E';
              CDSVentaDetTipoIva_Tasa.Value         := 3;
              CDSVentaDetTipoIva_SobreTasa.Value    := 3;
              ModoIva:=1;
            end;

          CDSVentaDetGRAVADO_IB.Value               := CDSStockGRAVADO_IB.Value;
          CDSVentaDetPRECIO_EDITABLE.Value          := CDSStockEDITAPRECIO.Value;
          CDSVentaDetMESES_GTIA.Value               := CDSStockGTIA_MESES.Value;
          CDSVentaDetMUESTRACODALTERNATIVO.AsString := CDSStockREEMPLAZO_STK.Value;

          if CDSStockPRESENTACION_CANTIDAD.ASFloat>0 then
            CDSVentaDetPRESENTACION_CANT.AsFloat   := CDSStockPRESENTACION_CANTIDAD.AsFloat
          else
            CDSVentaDetPRESENTACION_CANT.AsFloat   := 1;

          if CDSStockPRESENTACION_UNIDAD.AsString<>'' then
            CDSVentaDetPRESENTACION_UNIDAD.AsString   := CDSStockPRESENTACION_UNIDAD.AsString
          else
            CDSVentaDetPRESENTACION_UNIDAD.AsString   := CDSStockUNIDAD.AsString;

          if VarIsNull(CDSStockEDITAPRECIO.Value) then
            CDSVentaDetPRECIO_EDITABLE.Value:='S';
          //Asigno el deposito que tengo en el encabezado...
          CDSVentaDetDEPOSITO.Value            := CDSVentaCabDeposito.Value;
          //segun el tipo de inscripcion verifico si descrimina o no iva y si cobra Sobre tasa
          CDSVentaDetDESGLOZAIVA.Value         := CDSVentaCabDesglozaIva.Value;
          CDSVentaDetCALCULA_SOBRETASA.Value   := CDSVentaCabCalcula_SobreTasa.Value;
          // traigo en un Variant los porcentajes de Iva
          CDSIva.Close;
          CDSIva.Params.ParamByName('id').Value := CDSVentaDetTIPOIVA_TASA.Value;
          CDSIva.Open;
          IF NOT (CDSIva.IsEmpty) THEN
            CDSVentaDetIVA_Tasa.AsFloat := CDSIvaTasa.AsFloat;
          CDSIva.Close;
          CDSIva.Params.ParamByName('id').Value := CDSVentaDetTipoIva_SobreTasa.Value;
          CDSIva.Open;
          IF NOT (CDSIva.IsEmpty) THEN
            CDSVentaDetIVA_SobreTasa.AsFloat  := CDSIvaTasa.AsFloat;
          CDSVentaDetMUESTRACONTENIDO.AsFloat := CDSStockCONTENIDO_COMPRA.AsFloat;
          CDSIva.Close;

          if (FormCpbteCtdo_2.Calcula_iva_articulo=False) then
            CDSVentaDetIVA_Tasa.AsFloat :=0;

          if (FormCpbteCtdo_2.Calcula_iva_articulo=True) and (FormCpbteCtdo_2.Divide_iva=True) then
            CDSVentaDetIVA_Tasa.AsFloat:=CDSVentaDetIVA_Tasa.AsFloat * 0.5;

          CDSVentaDetID_MONEDA.Value  := CDSStockMONEDA.Value;

          QMonedas.Close;
          QMonedas.ParamByName('id').Value:= CDSStockMONEDA.Value;
          QMonedas.Open;
          if QMonedasCOTIZACION.AsString<>'' then
            CDSVentaDetCOTIZACION.AsFloat := QMonedasCOTIZACION.AsFloat
          else
            CDSVentaDetCOTIZACION.AsFloat :=1;
          QMonedas.Close;

          QCodigoBarra.Close;
          QCodigoBarra.ParamByName('codigo').Value := CDSStockCODIGO_STK.Value;
          QCodigoBarra.Open;
          CDSVentaDetCODIGOBARRA.Value   := QCodigoBarraMAX.Value;
          QCodigoBarra.Close;

          Cotizacion  :=  DMMain_FD.CotizacionCliente(CDSVentaCabCODIGO.AsString, CDSVentaDetID_MONEDA.AsInteger);
          if Cotizacion > 1 then
            CDSVentaDetCOTIZACION.AsFloat        := Cotizacion;

          CDSVentaDetCosto_Gravado.AsFloat       := (CDSVentaDetCOSTO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetCosto_Exento.AsFloat        := (CDSVentaDetCOSTO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetCosto_Total.AsFloat         := (CDSVentaDetCOSTO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

          DMMain_FD.CalculaPrecioVta_FD(CDSVentaCabINGRESA_LIBRO_IVA.Value,DMMain_FD.IdListaProveedor, CDSVentaCabLISTAPRECIO.AsInteger,CDSVentaCabSUCURSAL.AsInteger,CDSVentaCabDEPOSITO.AsInteger,
                                        CDSVentaDetCODIGOARTICULO.AsString,CDSVentaCabCODIGO.AsString,CDSVentaCabTIPOCPBTE.AsString,
                                        CDSVentaDetCOTIZACION.AsFloat,
                                        CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat,
                                        Gravado,exento,Total,Iva,Margen,dscto,PFinal);

          if (FormCpbteCtdo_2.Divide_iva=True) then
            Iva:=Iva/2;

          if (FormCpbteCtdo_2.Calcula_iva_Articulo=False) then
            Iva:=0;

          CDSVentaDetUNITARIO_GRAVADO.AsFloat            := Gravado;
          CDSVentaDetUNITARIO_EXENTO.AsFloat             := Exento;
          CDSVentaDetUNITARIO_TOTAL.AsFloat              := Total;
          CDSVentaDetUNITARIO_TOTAL_OLD.AsFloat          := Total;
          CDSVentaDetUNITARIO_TOTAL_OLD_2.AsFloat        := Total;

          CDSVentaDetIVA_UNITARIO.AsFloat       := Iva;
          CDSVentaDetMARGEN.ASFloat             := Margen;
          CDSVentaDetDESCUENTO.ASFloat          := Dscto;


          VerificaGtiaExtendida(CDSVentaDetCODIGOARTICULO.AsString,CDSVentaCabCODIGO.AsString);

          // Antes era asi >>>>>>>>>> 18/10/2019  if (FormCpbteCtdo_2.IngresoAutomatico='S') and (DMMain_FD.DesdePLU=False) Then

          if (FormCpbteCtdo_2.IngresoAutomatico='S') Then
            begin
              Enter:=#13;
              if CantidadItem>0 then
                CDSVentaDetCantidadSetText(CDSVentaDetCantidad,FloatToStr(CantidadItem))
              else
                CDSVentaDetCantidadSetText(CDSVentaDetCantidad,'1');

              FormCpbteCtdo_2.DBGrillaDetalle.SelectedIndex:=5;
              FormCpbteCtdo_2.DBGrillaDetalleKeyPress(FormCpbteCtdo_2.DBGrillaDetalle,Enter);
              Enter:=#0;
            end;
          // ****************************************************
          // **** Cantidad desde PLU ********************************
          // **************************************************************
          if DMMain_FD.DesdePLU then
            begin
              Enter:=#13;
              if DMMain_FD.ModoPLU=0 then  //Precio
                begin
                  PrecioPLU   := StrToFloat(DMMain_FD.PrecioPLU) * DMMain_FD.PluCoeficiente;//.01;
                  PrecioFinal := CDSVentaDetUNITARIO_TOTAL.AsFloat+CDSVentaDetIVA_UNITARIO.AsFloat;
                  if PrecioFinal>0 then
                    CDSVentaDetCantidadSetText(CDSVentaDetCantidad,FLoatToStr(PrecioPlu/PrecioFinal))
                  else
                    begin
                      CDSVentaDetCantidadSetText(CDSVentaDetCantidad,'1');
                      CDSVentaDetUnitario_Total.Text		:=	FLoatToStr(StrToFloat(DMMain_FD.PrecioPLU)*0.01);
                    end;
                  FormCpbteCtdo_2.DBGrillaDetalle.SelectedIndex:=5;
                 // FormTicketVta.DBGrillaDetalleKeyPress(FormTicketVta.DBGrillaDetalle,Enter);
                  Enter:=#0;
                end
              else
                if DMMain_FD.ModoPLU=1 then //Cantidad
                  begin
                   // FormTicketVta.DBGrillaDetalle.SelectedIndex:=4;
                    CDSVentaDetCantidad.Text				:=	FLoatToStr(StrToFloat(DMMain_FD.PrecioPLU) * 0.001);
                    FormCpbteCtdo_2.DBGrillaDetalle.SelectedIndex:=5;
                  //  FormTicketVta.DBGrillaDetalleKeyPress(FormTicketVta.DBGrillaDetalle,Enter);
                  end;
            end;
          // **** Fin desde PLU *********************************
          // ****************************************************
          // ************************************************************************************
          // Genera el detalle de produccion.....
          if (CDSVentaDetDE_PRODUCCION.Value='S') and (FormCpbteCtdo_2.GenerarOProducion) and (CDSVentaCabTIPOCPBTE.AsString<>'NC') then
            GenerarDetalleProduccion;
          FormCpbteCtdo_2.spProduccion.Enabled:= CDSVentaDetDE_PRODUCCION.Value='S';
          // ************************************************************************************

          Result := True;
        END
      ELSE
        Result := False;
    END;
END;

FUNCTION TDatosVentasCtdo.AsignarCliente(Dato: STRING): Boolean;
var
  Ret,Perc, Cotizacion  : Extended;
  IIBBDesde, IIBBHasta  : TDateTime;
  TipoCpbteUsuario      : String;
  Juri                  : TJurisdiccion;
BEGIN
  WITH FormCpbteCtdo_2 DO
    BEGIN
      CDSVentaCabPERCIBE_IB.AsString        := BoolToStr(DMMain_FD.AgentePercepcionIB,True);
      CDSVentaCabPERCEPCION_IB_TASA.AsFloat := DMMain_FD.TasaPercepcionIB;

      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := Dato;
      QClientes.Open;
      if QClientesCODIGO.ASString<>'' then
        begin
          if DMMain_FD.ModificaSucursal=False Then
            begin
              if QClientesSUCURSAL.Value<>SucursalPorDefecto Then
                QClientes.Close;
            end;
          CDSVentaCabMUESTRAUSACHE.AsString         := QClientesCHEQUES.AsString;
          if CDSVentaCabMUESTRAUSACHE.AsString='S' then
            FrameMovValoresIngreso1.tsChe3.TabVisible := False
          else
            FrameMovValoresIngreso1.tsChe3.TabVisible := True;

          CDSVentaCabTIPOIVA.AsInteger   := QClientesCONDICION_IVA.Value;

          CDSInscripcion.Close;
          CDSInscripcion.Params.ParamByName('Codigo').AsInteger := CDSVentaCabTipoIva.AsInteger;
          CDSInscripcion.Open;
          IF NOT (CDSInscripcion.Eof) THEN
            BEGIN
              CDSVentaCabCALCULA_SOBRETASA.AsString := CDSInscripcionCOBRASOBRETASA.AsString;
              CDSVentaCabMUESTRAIVA.AsString        := CDSInscripcionDETALLE.AsString;
              CDSVentaCabDESGLOZAIVA.AsString       := CDSInscripcionDISCRIMINAIVA.AsString;
              CDSVentaCabPERCIBE_IB.Value           := CDSInscripcionAPLICAPERCEPCIONIIBB.Value;
              CDSVentaCabPERCIBE_IVA.Value          := CDSInscripcionAPLICAPERCEPCIONIVA.Value;
              if (DMMain_FD.AgentePercepcionIVA='N') then
                CDSVentaCabPERCIBE_IVA.Value  := 'N';
              if Not(DMMain_FD.AgentePercepcionIB) then
                CDSVentaCabPERCIBE_IB.Value   :='N';
             END;
          CDSInscripcion.Close;

          if SucursalPercibeIIBB='N' Then
            CDSVentaCabPERCIBE_IB.Value := 'N';

          if ((QClientesEMITE_FACTURA.AsString<>'') and
              (QClientesEMITE_FACTURA.AsString[1]='S') and
              (Not(QClientesVENDER_DE_CTDO.AsString[1]='S'))) then
            begin
              ShowMessage('Este Cliente es de Cta Cte exclusivamente...');
              CDSVentaCab.Cancel;
              SysUtils.Abort;
              CDSVentaCabCODIGO.Clear;
              CDSVentaCabNOMBRE.Clear;
              CDSVentaCabRAZONSOCIAL.Clear;
            end;
          IF NOT (QClientes.IsEmpty) THEN
            BEGIN
              if QClientesACTIVO.Value='S' Then
                lbEstado.Caption:='Activo'
              else
                lbEstado.Caption:='Inactivo';

              //*************************************************************************
              // aca controlo si percibe I.Brutos o No
              //*************************************************************************
              if CDSVentaCabPERCIBE_IB.AsString[1]='S' Then
                begin
                  // Verifico si esta en el listado de Tasa Percepcion..
                  // el valor de la tasa se carga al hacer un nuevo comprobante
                  Perc:=CDSVentaCabPERCEPCION_IB_TASA.AsFloat;
                  Ret :=0;
                  if DMMain_FD.TasaPerRetIIBB_CUIT(QClientesNRO_DE_CUIT.AsString, Perc, Ret, IIBBDesde, IIBBHasta) then
                    begin
                      if ((CDSVentaCabFECHAVTA.AsDateTime >= IIBBDesde) and       //DMMain_FD.QTasaPercep_Retencion_IIBBHASTA.AsDateTime) and
                          (CDSVentaCabFECHAVTA.AsDAteTime <= IIBBHasta))          //DMMain_FD.QTasaPercep_Retencion_IIBBDESDE.AsDateTime))
                      then
                         CDSVentaCabPERCEPCION_IB_TASA.AsFloat    :=  Perc    //DMMain_FD.QTasaPercep_Retencion_IIBBTASA_PERCEPCION.AsFloat
                      else
                        begin
                          DMMain_FD.Consulta_PadronIIBB(QClientesNRO_DE_CUIT.AsString,CDSVentaCabFECHAVTA.AsDateTime,Perc,Ret);
                          CDSVentaCabPERCEPCION_IB_TASA.AsFloat   :=  Perc;
                        end;
                    end
                  else
                    begin
                      DMMain_FD.Consulta_PadronIIBB(QClientesNRO_DE_CUIT.AsString,CDSVentaCabFECHAVTA.AsDateTime,Perc,Ret);
                      CDSVentaCabPERCEPCION_IB_TASA.AsFloat       :=  Perc;
                    end;

                 // DMMain_FD.QTasaPercep_Retencion_IIBB.Close;

                  if (QClientesPERCIBIR_IB.Value='N') Then
                    CDSVentaCabPERCIBE_IB.Value:='N';
                  if (QClientesINSCRIPTO_MULTICONVENIO.Value='S') and
                     (CDSVentaCabFECHAVTA.AsDateTime<=QClientesFECHA_VENCIMI_DDJJ_MULTI.AsDateTime) Then
                    CDSVentaCabPERCIBE_IB.Value    := 'N'
                  else
                    if (QClientesINSCRIPTO_MULTICONVENIO.Value='S') and
                       (CDSVentaCabFECHAVTA.AsDateTime > QClientesFECHA_VENCIMI_DDJJ_MULTI.AsDateTime) Then
                       Begin
                         ShowMessage('Fecha de DDJJ Fuera de Termino..... Se aplica percepciones...');
                         CDSVentaCabPERCIBE_IB.Value    := 'S'
                       end;
                end
              else
                begin
                  // aca le pongo la tasa de percepcion de IIBB  General
                  CDSVentaCabPERCIBE_IB.Value          := 'N';
                  CDSVentaCabPERCEPCION_IB_TASA.AsFloat:= 0;
                  // ******************************************************
                end;
      //*************************************************************************
      //*************************************************************************
              CDSVentaCabMUESTRAUSACHE.AsString := QClientesCHEQUES.AsString;
              CDSVentaCabNOMBRE.AsString        := QClientesNOMBRE.AsString;
              CDSVentaCabRAZONSOCIAL.AsString   := QClientesRAZON_SOCIAL.ASString;
             if (Trim(QClientesAVISO.AsString)<>'')
               and (FormCpbteCtdo_2.Owner.Name<>'FormImportacionFacturasVtaGral')
               and (FormCpbteCtdo_2.Owner.Name<>'FormFacturarRemitos')
               and (FormCpbteCtdo_2.Owner.Name<>'FormFacturaRemitoAgrupado')
               and (FormCpbteCtdo_2.Owner.Name<>'FormRecepRepartoExpress')
               and (FormCpbteCtdo_2.Owner.Name<>'FormFacturarModelos')
               and (FormCpbteCtdo_2.Owner.Name<>'FormFacturaPlantillas')
               and (FormCpbteCtdo_2.Owner.Name<>'FormRecibo_2') then
                 begin
                   FormCpbteCtdo_2.dskAviso.MessageText:=QClientesAVISO.AsString;
                   dskAviso.Execute;
                 end;

              if (QClientesNRO_DE_CUIT.AsString='') or (QClientesNRO_DE_CUIT.AsString[1]='-') Then
                CDSVentaCabCUIT.AsString:='00-00000000-0'
              ELSE
                CDSVentaCabCUIT.AsString        := QClientesNRO_DE_CUIT.AsString;

              if Trim(CDSVentaCabCUIT.AsString)='' then
                CDSVentaCabCUIT.AsString       := '00-00000000-0';

              if (length(CDSVentaCabCUIT.AsString)<13) and (CDSVentaCabCUIT.AsString='00000000000') then
                CDSVentaCabCUIT.AsString       := '00-00000000-0';

              if ValidarCuit(CDSVentaCabCUIT.AsString) Then
                CDSVentaCabCUIT.AsString        := QClientesNRO_DE_CUIT.AsString
              else
                begin
                  ShowMessage('El numero de Cuit no es Valido... Verificar en la Ficha del Cliente...');
                  CDSVentaCabCODIGO.Clear;
                  CDSVentaCabNOMBRE.Clear;
                  CDSVentaCabRAZONSOCIAL.Clear;
                end;
              CDSVentaCabDIRECCION.AsString   := QClientesDIRECCION_COMERCIAL.AsString;
              if (CDSVentaCabTIPOIVA.Value = 3) Then //and ((CDSVentaCabCUIT.AsString='') or (CDSVentaCabCUIT.AsString='00-00000000-0')) Then  // si es consumidor final
                CDSVentaCabCUIT.AsString     := QClientesNRODOCUMENTO.AsString;

              // verifica aplicacion de Percepcion de IVA

              CDSVentaCabCPOSTAL.AsString     := QClientesCPOSTAL.AsString;
              CDSVentaCabLOCALIDAD.AsString   := QClientesLOCALIDAD.AsString;
              CDSVentaCabZONA.AsInteger       := QClientesZONA.AsInteger;
              lbLimiteCredito.Caption         := QClientesLIMITE_CREDITO.AsString;

              CDSVentaCabLdr.Clear;
              {Buscar condicion de Pago}
              CDSVentaCabCondicionVta.Value   := 0;
              CDSVentaCabFechaVto.AsDateTime  := CDSVentaCabFechaVta.AsDateTime;
 
              //asigno el comprobante segun condicion de Inscripcion
              // si el cliente no tiene asignado un comprobante traigo el que le
              // corresponde por el tipo de Iva

              //**************************************************************************
              // si se usa asignacion de juridicion
              //**************************************************************************

              if DMMain_FD.FacturaPorJuridiccion then
                begin
                  if DMMain_FD.JurisdiccionIIBLocalidad( CDSVentaCabLOCALIDAD.AsString, Juri) then
                    begin
                      CDSVentaCabJURIDICION.AsInteger              := Juri.ID;
                      CDSVentaCabJURIDICION_LOCALIDAD.AsInteger    := Juri.LOCALIDAD;
                    end
                  else
                    begin
                      QLocalidadJurDefecto.Close;
                      QLocalidadJurDefecto.Open;
                      if QLocalidadJurDefecto.Fields[0].AsString<>'' then
                        begin
                          CDSVentaCabJURIDICION_LOCALIDAD.AsInteger   := QLocalidadJurDefectoID.Value;
                          CDSVentaCabJURIDICION.AsInteger             := QLocalidadJurDefectoID_JURIDICION.Value;
                        end;
                      QLocalidadJurDefecto.Close;

                    end;
                end;

              //**************************************************************************
              //**************************************************************************
              //**************************************************************************
       {$D+}
              TipoCpbteUsuario    :=  '';
              if (QClientesSUCURSAL.AsInteger = CDSVentaCabSUCURSAL.AsInteger)    and
                 (Not(QClientesID_FACTURAPORDEFECTO.IsNUll))                      and
                 (QClientesID_FACTURAPORDEFECTO.AsInteger > 0)
              Then
                TipoCpbteUsuario  :=  QClientesID_FACTURAPORDEFECTO.AsString
              else
                TipoCpbteUsuario  :=  DMMain_FD.CpbtePorDefecto('FO','V',CDSVentaCabSUCURSAL.AsInteger,CDSVentaCabDESGLOZAIVA.AsString,DMMain_FD.UsuarioActivoId);

              if TipoCpbteUsuario <> '' then
                CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,TipoCpbteUsuario)
              else
                BEGIN
                  CDSVentaCabID_TIPOCOMPROBANTE.Clear;
                  CDSVentaCabMUESTRACOMPROBANTE.Clear;
                end;

              //Traigo el primer ldr
              QPrimerLdr.CLose;
              QPrimerLdr.ParamByName('codigo').AsString:=Dato;
              QPrimerLdr.Open;
              if Not(QPrimerLdr.IsEmpty) Then
                if QPrimerLdr.Fields[0].AsString<>'' Then
                  CDSVentaCabLDRSetText(CDSVentaCabLDR,QPrimerLdr.Fields[0].AsString)
                else
                  begin
                    ShowMessage('No tiene Ldr cargado....');
                    CDSVentaCabLDR.Clear;
                    CDSVentaCabMUESTRALDR.Clear;
                  end;
              QPrimerLdr.CLose;

              if QClientesVENDEDOR.AsString<>'' Then
                begin
                  CDSPersonal.Close;
                  CDSPersonal.Params.ParamByName('Codigo').Value:=QClientesVENDEDOR.AsString;
                  CDSPersonal.Open;
                  IF NOT (CDSPersonal.IsEmpty) THEN
                    CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR,QClientesVENDEDOR.AsString)
                  else
                    if (DMMain_FD.EmpleadoPorDefecto<>'') and (DMMain_FD.EmpleadoPorDefecto<>'-1')  then
                     CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR,DMMain_FD.EmpleadoPorDefecto);
//                    CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR,EmpleadoPorDefecto);
                  CDSPersonal.Close;
                end
              else
                begin
                  if (DMMain_FD.EmpleadoPorDefecto<>'') and (DMMain_FD.EmpleadoPorDefecto<>'-1')  then
                    CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR,DMMain_FD.EmpleadoPorDefecto);
                end;
              // aca tomo la lista de precio del cliente si no dejo la que esta
              CDSVentaCabLISTAPRECIO.AsInteger:=  DMMain_FD.ListaPorDefecto(CDSVentaCabSUCURSAL.AsInteger);

              if (QClientesLISTAPRECIOS.AsString<>'') and ( QClientesLISTAPRECIOS.AsInteger>=0 ) Then
                CDSVentaCabLISTAPRECIO.AsInteger := QClientesLISTAPRECIOS.AsInteger;
              CorreoDestino                 := QClientesCORREOELECTRONICO.AsString;

              Cotizacion                             := DMMain_FD.CotizacionCliente(CDSVentaCabCODIGO.AsString, CDSVentaDetID_MONEDA.AsInteger);
              if Cotizacion > 1 then
                CDSVentaDetCOTIZACION.AsFloat        := Cotizacion;

              F8001     := QClientesPRESENTO_F8001.Value='S';
              DesdeF8001:= Trunc(QClientesDESDE_F8001.AsDateTime);
              HastaF8001:= Trunc(QClientesHASTA_F8001.AsDateTime);
              if QClientesPERCIBE_IVA.Value='N' then
                CDSVentaCabPERCIBE_IVA.Value:='N';



              result := True;
            END;
         END
      ELSE
        Result := False;
    END;
END;

FUNCTION TDatosVentasCtdo.AsignarLdr(Cliente: STRING; Dato: integer): Boolean;
BEGIN
  if Trim(Cliente)<>'' then
    begin
      CDSLdr.Close;
      CDSLdr.Params.ParamByName('Codigo').Value := Cliente;
      CDSLdr.Params.ParamByName('Ldr').Value    := Dato;
      CDSLdr.Open;
      IF NOT (CDSLdr.IsEmpty) THEN
        BEGIN
          Result := True;
          CDSVentaCabMuestraLdr.Value         := CDSLdrNombre.Value;
          CDSVentaCabMUESTRADIRECCIONLDR.Value:= CDSLdrDireccion.Value;
        END
      ELSE
        BEGIN
          Result := False;
          CDSVentaCabMuestraLdr.Value         := '';
          CDSVentaCabMUESTRADIRECCIONLDR.Value:= '';
        END;
      CDSLdr.Close;
    end;
END;

FUNCTION TDatosVentasCtdo.AsignarSucursal(Dato: Integer): Boolean;
var
  Juri: TJurisdiccion;     TasaRet, TasaPer: Extended;    DepositoSuc: Integer;
BEGIN
  DMMain_FD.Cuit_SUCURSAL        := CDSSucursalCUIT.AsString;
  DMMain_FD.Certificado_SUCURSAL := CDSSucursalCERTIFICADO_ELEC.AsString;

  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.IsEmpty) THEN
    BEGIN
      //**************************************************************************
      // si se usa asignacion de juridicion
      //**************************************************************************
      if DMMain_FD.FacturaPorJuridiccion then
        begin
          QLocalidadJurDefecto.Close;
          QLocalidadJurDefecto.Open;
          if QLocalidadJurDefecto.Fields[0].AsString<>'' then
            begin
              CDSVentaCabJURIDICION_LOCALIDAD.AsInteger := QLocalidadJurDefectoID.AsInteger;
              CDSVentaCabJURIDICION.AsInteger           := QLocalidadJurDefectoID_JURIDICION.AsInteger;
            end;
          QLocalidadJurDefecto.Close;

          if DMMain_FD.JurisdiccionPorSucursal(CDSVentaCabSUCURSAL.AsInteger, Juri) then
            begin
              CDSVentaCabJURIDICION_LOCALIDAD.AsInteger := Juri.LOCALIDAD;
              CDSVentaCabJURIDICION.AsInteger           := Juri.ID;
            end;
        end;
      //**************************************************************************
      //**************************************************************************
      //***** si hay otro certificado ********************************************
      DMMain_FD.Cuit_SUCURSAL       :=CDSSucursalCUIT.AsString;
      DMMain_FD.Certificado_SUCURSAL:=CDSSucursalCERTIFICADO_ELEC.AsString;
      //**************************************************************************
      //**************************************************************************

      SucursalPercibeIIBB := CDSSucursalAPLICA_PERCEPCION_IIBB.AsString;
      CDSVentaCabID_TIPOCOMPROBANTE.Clear;
      CDSVentaCabMUESTRACOMPROBANTE.Clear;
      CDSVentaCabCLASECPBTE.Clear;
      CDSVentaCabTIPOCPBTE.Clear;
      CDSVentaCabSUCFAC.AsString    :='';
      CDSVentaCabNUMEROFAC.AsString :='';

      DepositoSuc                 := DMMain_FD.DepositoPorSucursal(CDSVentaCabSUCURSAL.AsInteger);
      if (DepositoSuc>0) and (DepositoSuc <> CDSVentaCabDeposito.AsInteger) then
        CDSVentaCabDeposito.Text        := IntToStr( DepositoSuc );
      //aca cargo si la suc. le correspone
      //hacer  o no Percepcion de IIBB cuando la empresa
      //es Agente de percepcion
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value:=CDSVentaCabCODIGO.Value;
      QClientes.Open;


      if DMMain_FD.TasaPerRetIIBB_CUIT(QClientesNRO_DE_CUIT.AsString, TasaPer, TasaRet) then
        CDSVentaCabPERCEPCION_IB_TASA.AsFloat :=   TasaPer
      else
        if SucursalPercibeIIBB='N' Then
          CDSVentaCabPERCIBE_IB.AsString := 'N'
        else
          CDSVentaCabPERCIBE_IB.AsString := 'S';

      QClientes.Close;

      //****************************************

      DMBuscadores.CDSBuscaComprob.close;
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      DMBuscadores.CDSBuscaComprob.Open;
      if DMBuscadores.CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
          FormCpbteCtdo_2.RxCCodigo.SetFocus;
        end;
      DMBuscadores.CDSBuscaComprob.close;

      Result := True;
      CDSVentaCabMuestraSucursal.AsString   := CDSSucursalDetalle.AsString;

      CDSVentaCabLISTAPRECIO.AsInteger      :=  DMMain_FD.ListaPorDefecto(CDSVentaCabSUCURSAL.AsInteger);

       //***************************************************************
      // aca tomo la lista de precio del cliente si no dejo la que esta
      //***************************************************************
      if (CDSVentaCabCODIGO.AsString<>'') then
        begin
          QClientes.Close;
          QClientes.ParamByName('Codigo').Value := CDSVentaCabCODIGO.AsString;
          QClientes.Open;
          if QClientesLISTAPRECIOS.AsString<>'' then
            begin
              CDSVentaCabLISTAPRECIO.AsInteger  := QClientesLISTAPRECIOS.AsInteger;
            end;
          QClientes.Close;
        end;

      //***************************************************************
      //***************************************************************

    END
  ELSE
    Result := False;
END;

FUNCTION TDatosVentasCtdo.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value := Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSVentaCabMuestraDeposito.Value := CDSDepositoNombre.Value;
    END
  ELSE
    Result := False;
END;

FUNCTION TDatosVentasCtdo.AsignarVendedor(Dato: String): Boolean;
BEGIN
  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('codigo').Value:=Dato;
  CDSPersonal.Open;
  IF NOT (CDSPersonal.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSVentaCabMUESTRAVENDEDOR.Value  :=CDSPersonalNOMBRE.Value;
      CDSVentaCabCOMSIONVENDEDOR.AsFloat:=CDSPersonalCOMISION.AsFloat;
      if CDSPersonalMUESTRADEPOSITO.AsString<>'' then
        CDSVentaCabDEPOSITO.Text:=CDSPersonalMUESTRADEPOSITO.ASString;
    END
  ELSE
    begin
      Result:=False;
      CDSVentaCabMUESTRAVENDEDOR.Clear;
      CDSVentaCabCOMSIONVENDEDOR.AsFloat:=0;
    end;
  CDSPersonal.Close;
END;

FUNCTION TDatosVentasCtdo.AsignarRecepcion(Dato: Integer): Boolean;
begin
  QRecepciones.close;
  QRecepciones.ParamByName('ID').Value:=Dato;
  QRecepciones.Open;
  if QRecepcionesID.AsString<>'' then
    begin
      Result:=True;
      if CDSVtaDetConsig.State=dsBrowse Then
        CDSVtaDetConsig.Edit;
      CDSVtaDetConsigID_MOV_RECEPCION_CAB.Value:=QRecepcionesID_CABREC.Value;
      CDSVtaDetConsigID_MOV_RECEPCION_DET.Value:=QRecepcionesID.Value;
      CDSVtaDetConsigMUESTRARECEPCIONNRO.Value :=QRecepcionesNROCPBTE.Value;
      CDSVtaDetConsigPRECIO_COMPRA.AsFloat     :=QRecepcionesUNITARIO_TOTAL.AsFloat;
      if Trunc(CDSVtaDetConsigCANTIDAD.AsFloat * 1000)> Trunc(QRecepcionesCANTIDAD_SALDO.AsFloat * 1000) then
        begin
          Result:=False;
          CDSVtaDetConsigID_MOV_RECEPCION_CAB.Clear;
          CDSVtaDetConsigID_MOV_RECEPCION_DET.Clear;
          CDSVtaDetConsigMUESTRARECEPCIONNRO.Clear;
          CDSVtaDetConsigPRECIO_COMPRA.Clear;

          ShowMessage('Sobrepasa la cantidad disponible...');
        end;
    end
  else
    begin
      Result:=False;
      if CDSVtaDetConsig.State=dsBrowse Then
        CDSVtaDetConsig.Edit;
      CDSVtaDetConsigID_MOV_RECEPCION_CAB.Clear;
      CDSVtaDetConsigID_MOV_RECEPCION_DET.Clear;
      CDSVtaDetConsigMUESTRARECEPCIONNRO.Clear;
      CDSVtaDetConsigPRECIO_COMPRA.Clear;
    end;
  QRecepciones.close;
end;


PROCEDURE TDatosVentasCtdo.DataModuleDestroy(Sender: TObject);
BEGIN
  DatosVentasCtdo := NIL;
END;

PROCEDURE TDatosVentasCtdo.CDSVentaDetAfterPost(DataSet: TDataSet);
var mensaje:String;
Modo:String;
BEGIN
  if CDSVentaCab.State=dsInsert then Modo:='Ingreso de Comprobante'
  else
  if CDSVentaCab.State=dsEdit then Modo:='Modificacion de Comprobante';

  if CDSVentaDetCODIGOARTICULO.NewValue<>CDSVentaDetCODIGOARTICULO.OldValue then
    begin
      Mensaje:='Modificacion de Articulo del Codigo:'+CDSVentaDetCODIGOARTICULO.NewValue+' por '+
                CDSVentaDetCODIGOARTICULO.OldValue+
               'Fatura Nro Provisiorio '+CDSVentaCabNROCPBTE.AsString +'('+CDSVentaCabID_FC.AsString+')'+
               ' En modo:'+Modo;
      DMMain_FD.LogFileFD(1,2,Mensaje,'FCVTACTDO');
      AgregrarNovedadDetalle(DataSet,'M');
    end
  else
    if CDSVentaDetDETALLE.NewValue<>CDSVentaDetDETALLE.OldValue then
      begin
        Mensaje:='Modificacion Detalle Articulo :'+CDSVentaDetDETALLE.NewValue+' por '+
                  CDSVentaDetDETALLE.OldValue+
                 'Fatura Nro Provisiorio '+CDSVentaCabNROCPBTE.AsString +'('+CDSVentaCabID_FC.AsString+')'+
                 'Em modo:'+Modo;
        DMMain_FD.LogFileFD(1,2,Mensaje,'FCVTACTDO');
        AgregrarNovedadDetalle(DataSet,'M');
      end
    else
     if (CompareValue(CDSVentaDetUNITARIO_TOTAL.Value,CDSVentaDetUNITARIO_TOTAL_OLD_2.Value,0.1)<>EqualsValue) then
       begin
          Mensaje:='Modificacion Precio Detalle Articulo :'+FloatToStr(CDSVentaDetUNITARIO_TOTAL.Value)+' por '+
                    FloatToStr(CDSVentaDetUNITARIO_TOTAL_OLD_2.Value)+
                   'Fatura Nro Provisiorio '+CDSVentaCabNROCPBTE.AsString +'('+CDSVentaCabID_FC.AsString+')'+
                   ' En modo:'+Modo;
          DMMain_FD.LogFileFD(1,2,Mensaje,'FCVTACTDO');
          AgregrarNovedadDetalle(DataSet,'M');
        end;

  VerificaPromos;
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

  CDSPercepcionIVA.EnableControls;
  CDSPercepcionIVA.First;
  WHILE NOT (CDSPercepcionIVA.Eof) DO
    BEGIN
      IF (CDSPercepcionIVAIMPORTE.AsFloat <= 0) OR
         (CDSPercepcionIVATASA.AsFloat <= 0) THEN
        begin
          CDSPercepcionIVA.Delete;
          CDSPercepcionIVA.First;
        end
      else
        CDSPercepcionIVA.Next;
    END;


  FormCpbteCtdo_2.pnAvisoFUAP.Visible:=False;
  if (FormCpbteCtdo_2.IngresoAutomatico='S') and (FormCpbteCtdo_2.DBGrillaDetalle.DataSource.DataSet.Eof)  Then
    FormCpbteCtdo_2.DBGrillaDetalle.SelectedIndex:=0;
  //***************************************************************
  // Si no puede modificar precio el usuario pongo la
  // columna en la grilla como solo lectura
     FormCpbteCtdo_2.DBGrillaDetalle.Columns[6].ReadOnly:=NOt(DMMain_FD.ModificaPrecioVta);
     FormCpbteCtdo_2.DBGrillaDetalle.Columns[7].ReadOnly:=NOt(DMMain_FD.AplicaDescuento);
  //***************************************************************
  // ****** sincronizo los datos con las consignaciones **********
   if (CDSVentaCabPOR_CTA_Y_ORDEN.Value='S') and (CDSVentaCabTIPOCPBTE.Value='FO') then
     if (CDSVentaCab.State in [dsInsert]) then
       SincronizarConsignaciones;

   if CDSVentaCab.State in [dsInsert] Then
     begin
       HayGtia;
       if (CDSVentaCabCON_GTIA_EXTENDIDA.Value='S') Then
         begin
           CDSVentaCabMESES_DE_GARANTIA.Value:=SumarGtia;
           CDSVentaCabVALOR_ASEGURADO.AsFloat:=SumarGtiaImporte;
         end;
     end;

END;

PROCEDURE TDatosVentasCtdo.CDSVentaDetBeforePost(DataSet: TDataSet);
BEGIN
  IF CDSVentaDet.State IN [dsInsert, dsEdit] THEN
    begin
      CDSVentaDetNroCpbte.Value      := CDSVentaCabLetraFac.Value + CDSVentaCabSucFac.Value + CDSVentaCabNumeroFac.Value;
      CDSVentaDetFechaVta.AsDateTime := CDSVentaCabFechaVta.AsDateTime;
    end;
  IF ((CDSVentaDetCodigoArticulo.AsString = '') OR (CDSVentaDet.RecordCount-1 > Renglones)) AND
    (CDSVentaDet.State IN [dsInsert, dsEdit])
  THEN
    BEGIN
      CDSVentaDet.Cancel;
      showMessage('no se puede ingreasr mas renglones');
      SysUtils.Abort;
    END;
// Controlo el Marge de ganancia...

  if (CDSVentaDetMargen.AsFloat<MargenUtilidad) and
     ((CDSVentaCabTIPOCPBTE.AsString='FC') or (CDSVentaCabTIPOCPBTE.AsString = 'FO')) then
      begin
        //ShowMessage('El precio de Venta esta por debajo de la renta Minima');
        if (TForm(Self.Owner)).Owner.Name ='FormImportarVtas_PtoVtaMorphi' Then
          DMMain_FD.VenderDebajoMinimo:=True;
        if DMMain_FD.VenderDebajoMinimo=False then
          begin
            ShowMessage('No está Autorizado a vender por debajo de la renta Minima...');
            CDSVentaDet.Cancel;
            SysUtils.Abort;
          end;
      end;
  if (CDSVentaDetTOTAL.AsFloat<=0) and ((CDSVentaCabTIPOCPBTE.AsString='FC') or (CDSVentaCabTIPOCPBTE.AsString = 'FO')) then
      begin
        if ((TForm(Self.Owner)).Owner.Name <> 'FormImportarVtas_PtoVtaMorphi') and (DMMain_FD.ControlaLineaCero) and (CDSVentaCab.State=dsInsert) then
          begin
            if MessageDlg('Renglon con importe 0(cero), lo acepta??..',mtConfirmation,mbYesNo,0) = mrNo Then
              begin
                CDSVentaDet.Cancel;
                SysUtils.Abort;
              end
            else
              begin
                if (DMMain_FD.AutorizadoLineaConCero=False) then
                  begin
                    ShowMessage('No esta Autorizado para cargar lineas con valor cero...');
                    CDSVentaDet.Cancel;
                    SysUtils.Abort;
                  end;
              end;
          end;
      end;
  //***********************************************************************
  // Nueva Asignacion de Valores Old
  //***********************************************************************
  if CDSVentaDetUNI_C_REC.Value='N' then
    begin
      CDSVentaDetUNITARIO_TOTAL_OLD.Value:=CDSVentaDetUNITARIO_TOTAL.Value;
      CDSVentaDetUNITARIO_IVA_OLD.Value  :=CDSVentaDetIVA_UNITARIO.Value;
    end;
  //***********************************************************************
  //***********************************************************************
END;

PROCEDURE TDatosVentasCtdo.CDSVentaDetNewRecord(DataSet: TDataSet);
BEGIN
  IF (CDSVentaDet.RecordCount > Renglones) THEN
    CDSVentaDet.Cancel
  ELSE
    BEGIN
      CDSVentaDetID.Value                         := IBGFc_Det.IncrementFD(1);
      CDSVentaDetID_CabFac.Value                  := CDSVentaCabId_Fc.Value;
      CDSVentaDetRENGLON.AsInteger                := CDSVentaDet.RecordCount + 1;
      CDSVentaDetNRO.AsInteger                    := CDSVentaDetRENGLON.AsInteger;
      CDSVentaDetDETALLE.Value                    := '';
      CDSVentaDetUNIDAD.Value                     := '';
      CDSVentaDetCANTIDAD.AsFloat                 := 0;
      CDSVentaDetCOSTO_EXENTO.AsFloat             := 0;
      CDSVentaDetCOSTO_GRAVADO.AsFloat            := 0;
      CDSVentaDetCOSTO_TOTAL.AsFloat              := 0;
      CDSVentaDetUNIDADES_EXENTO.AsFloat          := 0;
      CDSVentaDetUNIDADES_GRAVADO.AsFloat         := 0;
      CDSVentaDetUNIDADES_TOTAL.AsFloat           := 0;
      CDSVentaDetUNITARIO_EXENTO.AsFloat          := 0;
      CDSVentaDetUNITARIO_GRAVADO.AsFloat         := 0;
      CDSVentaDetUNITARIO_TOTAL.AsFloat           := 0;
      CDSVentaDetTOTAL_GRAVADO.AsFloat            := 0;
      CDSVentaDetTOTAL_EXENTO.AsFloat             := 0;
      CDSVentaDetTOTAL.AsFloat                    := 0;
      CDSVentaDetIVA_UNITARIO.AsFloat             := 0;
      CDSVentaDetIVA_TOTAL.AsFloat                := 0;
      CDSVentaDetDESCUENTO.AsFloat                := 0;
      CDSVentaDetIVA_TASA.AsFloat                 := 0;
      CDSVentaDetIVA_SOBRETASA.AsFloat            := 0;
      CDSVentaDetDESGLOZAIVA.Value                := CDSVentaCabDESGLOZAIVA.Value;
      CDSVentaDetMODO_GRAVAMEN.Value              := '';
      CDSVentaDetTIPOIVA_TASA.Value               := 0;
      CDSVentaDetTIPOIVA_SOBRETASA.Value          := 0;
      CDSVentaDetNROCPBTE.AsString                := CDSVentaCabNroCpbte.AsString;
      CDSVentaDetFECHAVTA.AsDateTime              := CDSVentaCabFechaVta.AsDateTime;
      CDSVentaDetTIPOCPBTE.AsString               := CDSVentaCabTipoCpbte.AsString;
      CDSVentaDetCLASECPBTE.AsString              := CDSVentaCabCLASECPBTE.AsString;
      CDSVentaDetMARGEN.AsFloat                   := 100;
      CDSVentaDetMESES_GTIA.Value                 := 0;
      CDSVentaDetUNI_C_REC.Value                  := 'N'; // este campo lo uso para los calculos de pagos con tarjeta
      CDSVentaDetDE_PRODUCCION.Value              := 'N';
      CDSVentaDetUNITARIO_TOTAL_OLD.Value         := 0;
      CDSVentaDetUNITARIO_IVA_OLD.Value           := 0;
      CDSVentaDetUNITARIO_TOTAL_OLD_2.Value       := 0;
      CDSVentaDetUNI_C_REC.Value                  := 'N';
      CDSVentaDetCONTROL_TRAZABILIDAD.Value       := 'N';
      CDSVentaDetPRESENTACION_CANT.Value          := 1;
      CDSVentaDetPRESENTACION_TOLERANCIA.Value    := 0;
      CDSVentaDetCANTIDAD_UNIDADES.AsFloat        := 0;
      CDSVentaDetPERCIBE_IVA.Value                := 'N';
      CDSVentaDetTASA_PERCEP_IVA.Value            := 0;
      CDSVentaDetID_TASA_PERCEPCION_IVA.Value     :=-1;
      CDSVentaDetPERCEPCION_IVA_DIFERENCIAL.Value :='N';
    END;
  if FormCpbteCtdo_2<>NIl then
    if FormCpbteCtdo_2.DBGrillaDetalle.DataSource.DataSet.RecordCount>0 then
      FormCpbteCtdo_2.DBGrillaDetalle.SelectedIndex:=0;
END;

procedure TDatosVentasCtdo.CDSVentaDetAfterDelete(DataSet: TDataSet);
var N:Integer;
begin
  CDSVentaDet.DisableControls;
  CDSVentaDet.First;
  N:=1;
  while not(CDSVentaDet.Eof) do
    begin
      CDSVentaDet.Edit;
      CDSVentaDetNRO.Value:=N;
      CDSVentaDetRENGLON.ASinteger:=CDSVentaDetNRO.Value;
      N:=N+1;
      CDSVentaDet.Next;
    end;
  CDSVentaDet.First;
  CDSVentaDet.EnableControls;

  //Ingreso Movimiento de Stock;
  VerificaPromos;
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
  if (FormCpbteCtdo_2<>Nil) and (FormCpbteCtdo_2.Visible=True) then
    begin
      FormCpbteCtdo_2.pnAvisoFUAP.Visible:=False;
      if FormCpbteCtdo_2.IngresoAutomatico='S' Then
        FormCpbteCtdo_2.DBGrillaDetalle.SelectedIndex:=0;
      //***************************************************************
      // Si no puede modificar precio el usuario pongo la
      // columna en la grilla como solo lectura
         FormCpbteCtdo_2.DBGrillaDetalle.Columns[6].ReadOnly:=NOt(DMMain_FD.ModificaPrecioVta);
         FormCpbteCtdo_2.DBGrillaDetalle.Columns[7].ReadOnly:=NOt(DMMain_FD.AplicaDescuento);
      //***************************************************************
      // ****** sincronizo los datos con las consignaciones **********
    end;
   if (CDSVentaCabPOR_CTA_Y_ORDEN.Value='S') and (CDSVentaCabTIPOCPBTE.Value='FO') then
     if (CDSVentaCab.State in [dsInsert]) then
       SincronizarConsignaciones;

   if CDSVentaCab.State in [dsInsert] Then
     begin
       HayGtia;
       if (CDSVentaCabCON_GTIA_EXTENDIDA.Value='S') Then
         begin
           CDSVentaCabMESES_DE_GARANTIA.Value:=SumarGtia;
           CDSVentaCabVALOR_ASEGURADO.AsFloat:=SumarGtiaImporte;
         end;
     end;

end;

procedure TDatosVentasCtdo.CDSVentaDetAfterEdit(DataSet: TDataSet);
begin
  CDSVentaDetUNITARIO_TOTAL_OLD.AsFloat   := CDSVentaDetUNITARIO_TOTAL.AsFloat;
  CDSVentaDetUNITARIO_TOTAL_OLD_2.AsFloat := CDSVentaDetUNITARIO_TOTAL.AsFloat;

end;

PROCEDURE TDatosVentasCtdo.CDSVentaDetAfterInsert(DataSet: TDataSet);
BEGIN
  if Renglones < 1 Then Renglones:=100; // esta linea es para corregir por los cpbte viejos
  IF (CDSVentaDet.RecordCount > Renglones) THEN
    BEGIN
      ShowMessage('No se pueden Ingresar más Items' + #13 +
        'Evento - (AfterInsert)');
      SysUtils.Abort;
      CDSVentaDet.Cancel;
    END
  ELSE IF (CDSVentaCabCodigo.AsString = '') OR (CDSVentaCabNumeroFac.AsString = '') THEN
    BEGIN
      SysUtils.Abort;
      CDSVentaDet.Cancel;
    END
  ELSE IF (CDSVentaCabImpreso.Value = 'S') or (CDSVentaCabANULADO.AsString='S') THEN
    BEGIN
      ShowMessage('No se puede modificar'#13'un comprobante ya impreso o anulado');
      SysUtils.Abort;
      IF CDSVentaDet.State IN [dsEdit, dsInsert] THEN
        CDSVentaDet.Cancel;
      IF CDSVentaCab.State IN [dsEdit, dsInsert] THEN
        CDSVentaCab.Cancel;
    END;
END;

PROCEDURE TDatosVentasCtdo.CDSVentaDetUNITARIO_TOTALSetText(Sender: TField; CONST Text: STRING);
VAR Num, P_Exento, P_Gravado,Pt_Exento, Pt_Gravado,Pt_Final,
    Descuento,Cantidad,TasaIva,Aux3,ImporteIva:  Extended;
    TextAux,Decimales:String;
    Modo: TFPURoundingMode;
BEGIN
  if ((Text<>'') and (CDSVentaDetCODIGOARTICULO.AsString<>'')) Then
    begin

      TextAux:=Text;

      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);
      if CDSVentaDet.State=dsBrowse Then CDSVentaDet.Edit;

      Num:=StrToFloat(TextAux);

      IF CDSVentaDetMODO_GRAVAMEN.Value <> '' THEN
        CASE CDSVentaDetMODO_GRAVAMEN.Value[1] OF
          'E','N'    : CDSVentaDetUNITARIO_EXENTO.AsFloat := Num;
          'G'        : CDSVentaDetUNITARIO_GRAVADO.AsFloat:= Num;
          'M','I','Y': CDSVentaDetUNITARIO_GRAVADO.AsFloat:= Num-CDSVentaDetUNITARIO_EXENTO.AsFloat
        END;
      Cantidad  := CDSVentaDetCANTIDAD.AsFloat;
      Descuento := 1 - CDSVentaDetDESCUENTO.AsFloat * 0.01;
      TasaIva   := 1 + CDSVentaDetIVA_TASA.AsFloat * 0.01;

      P_Exento  := CDSVentaDetUNITARIO_EXENTO.AsFloat ;
      P_Gravado := CDSVentaDetUNITARIO_GRAVADO.AsFloat;

      // calculo el total de la linea
      Pt_Gravado :=  P_Gravado * Cantidad * Descuento;
      Pt_Exento  :=  P_Exento * Cantidad * Descuento;
      // calculo de IVA
      ImporteIva :=  (Pt_gravado * TasaIva)- Pt_Gravado;

      CDSVentaDetIVA_UNITARIO.AsFloat := (P_Gravado * TasaIva) - P_Gravado;

      if ((CDSVentaCabDESGLOZAIVA.Value='N') or (FormCpbteCtdo_2.DiscriminaIva='N')) and (CDSVentaDetMODO_GRAVAMEN.AsString[1] in ['G','M','I','Y']) Then
        begin
          P_Gravado                       := CDSVentaDetUNITARIO_GRAVADO.AsFloat / TasaIva;
          CDSVentaDetIVA_UNITARIO.AsFloat := CDSVentaDetUNITARIO_GRAVADO.AsFloat - P_Gravado;
          // *** Calculo el total de la linea
          Pt_Final   :=  (P_Gravado + CDSVentaDetIVA_UNITARIO.ASFloat) * Cantidad * Descuento;

          Modo:=GetRoundMode;
          SetRoundMode(rmUp);

          // antes usaba >>>> SimpleRoundTo()

          Pt_Final   := RoundTo(Pt_Final,-3);
          Pt_Final   := RoundTo(Pt_Final,-2);

          Pt_Gravado :=  Pt_Final  / TasaIva;

          Pt_Gravado :=  RoundTo(Pt_Gravado,-3);
          Pt_Gravado :=  RoundTo(Pt_Gravado,-2);


          Pt_Exento  :=  P_Exento * Cantidad * Descuento;
          // Calculo de IVA
          ImporteIva :=  Pt_Final - Pt_gravado;
        end;

      CDSVentaDetUNITARIO_GRAVADO.AsFloat := P_Gravado;

      CDSVentaDetTOTAL_GRAVADO.AsFloat    := RoundTo(Pt_Gravado,-3);
      CDSVentaDetTOTAL_GRAVADO.AsFloat    := RoundTo(CDSVentaDetTOTAL_GRAVADO.AsFloat,-2);

      CDSVentaDetTOTAL_EXENTO.AsFloat     := RoundTo(Pt_Exento,-3);
      CDSVentaDetTOTAL_EXENTO.AsFloat     := RoundTo(CDSVentaDetTOTAL_EXENTO.AsFloat,-2);

      ImporteIva                          := RoundTo(ImporteIva,-3);
      CDSVentaDetIVA_TOTAL.AsFloat        := RoundTo(ImporteIva,-3);

      // esto pisa las 2 lineas anteriores no las borro para probar

      if ((CDSVentaCabDESGLOZAIVA.Value='N') or (FormCpbteCtdo_2.DiscriminaIva='N')) and (CDSVentaDetMODO_GRAVAMEN.AsString[1] in ['G','M','I','Y']) Then
        CDSVentaDetIVA_TOTAL.AsFloat     := (Pt_Final)-Pt_Gravado;

      CDSVentaDetTOTAL.AsFloat         := RoundTo((Pt_Gravado+Pt_Exento),-2);

// Final SimpleRoundTo()
      SetRoundMode(Modo);

      // **************** Calculo el Margen ******************
      if (CDSVentaDetCOSTO_TOTAL.AsFloat>0) and (CDSVentaDetUNITARIO_TOTAL.AsFloat>0) then
          CDSVentaDetMARGEN.AsFloat := RoundTo(((CDSVentaDetUNITARIO_TOTAL.AsFloat - CDSVentaDetCosto_Total.AsFloat)/
                                                 CDSVentaDetUNITARIO_TOTAL.AsFloat)*100,-2)
      else
        CDSVentaDetMARGEN.AsFloat:= 100;
      // *****************************************************

      Aux3            := P_Gravado + P_Exento;
      Sender.AsString := FloatToStr(Aux3);

      if (CDSVentaDetMODO_GRAVAMEN.Value[1] in['E','N']) and (CDSVentaDetUNITARIO_GRAVADO.AsFloat>0) Then
        begin
          Sender.AsString:='0';
          CDSVentaDetUNITARIO_GRAVADO.AsFloat:=0;
          CDSVentaDetUNITARIO_EXENTO.AsFloat :=0;
          CDSVentaDetUNITARIO_TOTAL.AsFloat  :=0;
          CDSVentaDetTOTAL.AsFloat           :=0;
          raise Exception.Create('El artículo Figura Como Exento y tiene Costo Gravado...');
        end
      else
        if (CDSVentaDetMODO_GRAVAMEN.Value[1]='G') and (CDSVentaDetUNITARIO_EXENTO.AsFloat>0) Then
          begin
            Sender.AsString:='0';
            CDSVentaDetUNITARIO_GRAVADO.AsFloat:=0;
            CDSVentaDetUNITARIO_EXENTO.AsFloat :=0;
            CDSVentaDetUNITARIO_TOTAL.AsFloat  :=0;
            CDSVentaDetTOTAL.AsFloat           :=0;
            raise Exception.Create('El artículo Figura Como Gravado y tiene Costo exento...');
          end;
   end;

  Decimales:=(Copy(MascaraDetalleUnitario,pos('.',MascaraDetalleUnitario)+1,length(MascaraDetalleUnitario)));
  if Length(Decimales)=2 then
    begin
      //Primero con 3 decimales y despues 2
      CDSVentaDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSVentaDetUNITARIO_GRAVADO.AsFloat,-3);
      CDSVentaDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSVentaDetUNITARIO_EXENTO.AsFloat,-3);
      CDSVentaDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSVentaDetUNITARIO_TOTAL.AsFloat,-3);
      Modo:=GetRoundMode;
      SetRoundMode(rmUp);
      CDSVentaDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSVentaDetIVA_UNITARIO.AsFloat,-3);
      SetRoundMode(Modo);

      CDSVentaDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSVentaDetUNITARIO_GRAVADO.AsFloat,-2);
      CDSVentaDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSVentaDetUNITARIO_EXENTO.AsFloat,-2);
      CDSVentaDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSVentaDetUNITARIO_TOTAL.AsFloat,-2);
      CDSVentaDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSVentaDetIVA_UNITARIO.AsFloat,-2);
    end
  else
    if Length(Decimales)=3 then
      begin
        CDSVentaDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSVentaDetUNITARIO_GRAVADO.AsFloat,-5);
        CDSVentaDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSVentaDetUNITARIO_EXENTO.AsFloat,-5);
        CDSVentaDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSVentaDetUNITARIO_TOTAL.AsFloat,-5);
        CDSVentaDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSVentaDetIVA_UNITARIO.AsFloat,-5);

        CDSVentaDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSVentaDetUNITARIO_GRAVADO.AsFloat,-4);
        CDSVentaDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSVentaDetUNITARIO_EXENTO.AsFloat,-4);
        CDSVentaDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSVentaDetUNITARIO_TOTAL.AsFloat,-4);
        Modo:=GetRoundMode;
        SetRoundMode(rmUp);
        CDSVentaDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSVentaDetIVA_UNITARIO.AsFloat,-4);
        SetRoundMode(Modo);

        CDSVentaDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSVentaDetUNITARIO_GRAVADO.AsFloat,-3);
        CDSVentaDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSVentaDetUNITARIO_EXENTO.AsFloat,-3);
        CDSVentaDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSVentaDetUNITARIO_TOTAL.AsFloat,-3);
        CDSVentaDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSVentaDetIVA_UNITARIO.AsFloat,-3);
      end;

END;


procedure TDatosVentasCtdo.CDSVentaLoteID_LOTESetText(Sender: TField;
  const Text: string);
var Estado: TValueRelationship;
begin
  if (Text<>'') and (Text<>#13) then
    BEGIN
      if CDSVentaLote.State=dsBrowse then
        CDSVentaLote.Edit;
      Sender.AsString:=Text;
      DMMain_FD.QStockLote.Close;
      DMMain_FD.QStockLote.ParamByName('idlote').Value:=Sender.AsInteger;
      DMMain_FD.QStockLote.Open;
      CDSVentaLoteID_LOTE.Value  := Sender.AsInteger;
      CDSVentaLoteDEPOSITO.Value := CDSVentaCabDEPOSITO.Value;
      CDSVentaLoteLOTE.Value     := DMMain_FD.QStockLoteLote.Value;
      CDSVentaLoteDESPACHO.Value := DMMain_FD.QStockLoteDESPACHO.Value;
      CDSVentaLoteFECHA.Value    := DMMain_FD.QStockLoteFECHA_ENTRADA.Value;
      CDSVentaLoteFECHAVTO.Value := DMMain_FD.QStockLoteFECHA_VTO.Value;

      if CDSVentaCabTIPOCPBTE.Value='FO' then
        begin
          Estado:= Math.CompareValue(CDSVentaDetCANTIDAD.AsFloat,DMMain_FD.QStockLoteSALDO.AsFloat,0.02);
          if (Estado=EqualsValue) then
            CDSVentaLoteCANTIDAD.AsFloat:=DMMain_FD.QStockLoteSALDO.AsFloat
          else
            if (estado=GreaterThanValue) then
              begin
                CDSVentaLoteCANTIDAD.AsFloat:=DMMain_FD.QStockLoteSALDO.AsFloat;
                if CDSVentaDet.State=dsBrowse Then CDSVentaDet.Edit;
                CDSVentaDetCantidad.Text			:=	FloatToStr(DMMain_FD.QStockLoteSALDO.AsFloat);
              end
            else
              if (estado=LessThanValue) then
                CDSVentaLoteCANTIDAD.AsFloat:=CDSVentaDetCANTIDAD.AsFloat;
        end
      ELSE
        if CDSVentaCabTIPOCPBTE.Value='NC' then
          begin
            CDSVentaLoteCANTIDAD.AsFloat:=CDSVentaDetCANTIDAD.AsFloat;
          end


    END;
end;


procedure TDatosVentasCtdo.CDSVentaLoteNewRecord(DataSet: TDataSet);
begin
  CDSVentaLoteID_LOTE.Value     := -1;
  CDSVentaLoteID.Value          := IBGVtaLote.IncrementFD(1);
  CDSVentaLoteID_DET.Value      := CDSVentaDetID.Value;
  CDSVentaLoteID_FC.Value       := CDSVentaDetID_CABFAC.Value;
  CDSVentaLoteCODIGO.Value      := CDSVentaDetCODIGOARTICULO.Value;
  CDSVentaLoteTIPO_COMPROB.Value:= CDSVentaCabTIPOCPBTE.Value;
  CDSVentaLoteDEPOSITO.Value    := CDSVentaDetDEPOSITO.Value;
end;

procedure TDatosVentasCtdo.CDSVentaDetUNITARIO_NETO_TOTALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
var
  Aux1: Extended;
begin
  Aux1:=CDSVentaDetUNITARIO_NETO_TOTAL.AsFloat;
  if (CDSVentaDetMODO_GRAVAMEN.Value<>'') and (CDSVentaDetMODO_GRAVAMEN.Value[1] in ['G','M']) Then
    if (CDSVentaCabDESGLOZAIVA.Value='S') and (FormCpbteCtdo_2.DiscriminaIva='N') then
      Aux1:= CDSVentaDetUNITARIO_NETO_TOTAL.AsFloat  * (1 + (CDSVentaDetIVA_TASA.AsFloat*0.01))
    else
      if (CDSVentaCabDESGLOZAIVA.Value='N') then
         Aux1:= CDSVentaDetUNITARIO_NETO_TOTAL.AsFloat * (1 + (CDSVentaDetIVA_TASA.AsFloat*0.01));

  Text:= FormatFloat(MascaraDetalleUnitario,Aux1);
end;

PROCEDURE TDatosVentasCtdo.CDSVentaDetUNITARIO_TOTALGetText(Sender: TField;
  VAR Text: STRING; DisplayText: Boolean);
VAR
  Aux1: Extended;
BEGIN
  Aux1:=CDSVentaDetUNITARIO_TOTAL.AsFloat;
  if (CDSVentaDetMODO_GRAVAMEN.Value<>'') and (CDSVentaDetMODO_GRAVAMEN.Value[1] in ['G','M']) Then
    if (CDSVentaCabDESGLOZAIVA.Value='S') and (FormCpbteCtdo_2.DiscriminaIva='N') then
      Aux1:= CDSVentaDetUNITARIO_TOTAL.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat
    else
      if (CDSVentaCabDESGLOZAIVA.Value='N')then
        Aux1:= CDSVentaDetUNITARIO_TOTAL.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat;

  Text:= FormatFloat(MascaraDetalleUnitario,Aux1);
END;

PROCEDURE TDatosVentasCtdo.CDSVentaDetTOTALGetText(Sender: TField;
  VAR Text: STRING; DisplayText: Boolean);
VAR
  Aux1: Extended;
BEGIN
  Aux1:=CDSVentaDetTOTAL.AsFloat;
  if (CDSVentaDetMODO_GRAVAMEN.Value<>'') and (CDSVentaDetMODO_GRAVAMEN.Value[1] in ['G','M','I','Y']) Then
    if (CDSVentaCabDESGLOZAIVA.Value='S') and (FormCpbteCtdo_2.DiscriminaIva='N') then
      Aux1:= CDSVentaDetTOTAL.AsFloat + CDSVentaDetIVA_TOTAL.AsFloat
    else
      if (CDSVentaCabDESGLOZAIVA.Value='N')then
        Aux1:= CDSVentaDetTOTAL.AsFloat + CDSVentaDetIVA_TOTAL.AsFloat;
  Text := FormatFloat(',0.00', Aux1);
END;

procedure TDatosVentasCtdo.CDSVentaDetTOTALSetText(Sender: TField;
  const Text: string);
Var Desc: Extended;
begin
  Sender.AsString := Text;
  if CDSVentaDetDESGLOZAIVA.Value='N' then
    Sender.AsFloat:=Sender.AsFloat/(1+CDSVentaDetIVA_TASA.AsFloat*0.01);
  Desc:=(CDSVentaDetUNITARIO_TOTAL.AsFloat * CDSVentaDetCANTIDAD.AsFloat) - Sender.AsFloat;
  Desc:=Desc/(CDSVentaDetUNITARIO_TOTAL.AsFloat * CDSVentaDetCANTIDAD.AsFloat);
  Desc:=Desc * 100;
  CDSVentaDetDescuentoSetText(CDSVentaDetDescuento,FloatToStr(desc));
end;

PROCEDURE TDatosVentasCtdo.CDSVentaDetCodigoArticuloSetText(Sender: TField; CONST Text: STRING);
VAR S,CodTxt,Aux: STRING;
Enter:Char;
BEGIN
  Enter:=#13;
  CantidadItem:=0;
   if  (Text<>'') and (Text[1]<>#13) Then
    begin
      // Quitar enter de la cadena....
      CodTxt:=AnsiReplaceStr(Text, #13, '');
      CodTxt:=AnsiReplaceStr(CodTxt, #10, '');

      if (AnsiPos('+',CodTxt)>0) then
        begin
          if Trim(Copy(CodTxt,1, AnsiPos('+',CodTxt)-1))<>'' then
            CantidadItem := StrToFLoat(Copy(CodTxt,1, AnsiPos('+',CodTxt)-1))
          else
            CantidadItem:=1;
          CodTxt       := AnsiMidStr(CodTxt,AnsiPos('+',CodTxt)+1,20);
        end;

      Sender.AsString := DMMain_FD.SearchCodigo(Trim(CodTxt),DatosVentasCtdo.DSVentaDet,FormCpbteCtdo_2.VerCodigoALternativo1.Checked);
      S               := Trim(Sender.AsString);
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
          FormBuscadorArticulos.ListaPrecio:= DatosVentasCtdo.CDSVentaCabLISTAPRECIO.Value;
          FormBuscadorArticulos.Esquema    := -1;
          FormBuscadorArticulos.Dato              := Text;
          if FormBuscadorArticulos.Visible=False Then
            FormBuscadorArticulos.ShowModal;
          if FormBuscadorArticulos.Codigo<>'' Then
            begin
              IF CDSVentaDet.State = dsBrowse THEN
                CDSVentaDet.Edit;
              CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,FormBuscadorArticulos.Codigo);
            end
          else
            Sender.AsString:='';
        end;
      if (DMMain_FD.EncontroCodigoBarra) and (FormCpbteCtdo_2.IngresoAutomatico='N')  Then
        FormCpbteCtdo_2.DBGrillaDetalle.OnKeyPress(FormCpbteCtdo_2.DBGrillaDetalle,Enter);
  END;
END;


procedure TDatosVentasCtdo.CDSFc_Prod_DetCANTIDADSetText(Sender: TField;
  const Text: string);
begin
  if DatosVentasCtdo.CDSFc_Prod_Det.State=dsBrowse then
    DatosVentasCtdo.CDSFc_Prod_Det.Edit;
  Sender.AsString:=Text;
  CDSFc_Prod_Mov.First;
  while Not(CDSFc_Prod_Mov.Eof) do
    begin
        CDSFc_Prod_Mov.Edit;
      CDSFc_Prod_MovCANTIDAD_ESTIMADA.AsFloat := CDSFc_Prod_MovCANTIDAD_UNITARIA.AsFloat * Sender.AsFloat;
      CDSFc_Prod_MovCANTIDAD_REAL.AsFloat     := CDSFc_Prod_MovCANTIDAD_ESTIMADA.AsFloat;
      CDSFc_Prod_Mov.Next;
    end;
  if CDSVentaDet.State=dsBrowse then CDSVentaDet.Edit;
  CDSVentaDetCantidadSetText(CDSVentaDetCantidad,Sender.AsString);
end;

procedure TDatosVentasCtdo.CDSFc_Prod_DetNewRecord(DataSet: TDataSet);
begin
  CDSFc_Prod_DetID.Value              := IbgId_Det_Pro.IncrementFD(1);
  CDSFc_Prod_DetID_FCDET.Value        := CDSVentaDetID.Value;
  CDSFc_Prod_DetID_FCCAB.Value        := CDSVentaDetID_CABFAC.Value;
  CDSFc_Prod_DetCODIGO.Value          := CDSVentaDetCODIGOARTICULO.Value;
  CDSFc_Prod_DetDETALLE.Value         := CDSVentaDetDETALLE.Value;
  CDSFc_Prod_DetUNIDAD.Value          := CDSVentaDetUNIDAD.Value;
  CDSFc_Prod_DetCANTIDAD.AsFloat      := 0;//CDSVentaDetCANTIDAD.Value;
  CDSFc_Prod_DetDEPOSITO_DESTINO.Value:= CDSVentaCabDEPOSITO.Value;
  CDSFc_Prod_DetSUCURSAL.Value        := CDSVentaCabSUCURSAL.Value;
  CDSFc_Prod_DetFECHA.AsDateTime      := CDSVentaCabFECHAVTA.AsDateTime;
  CDSFc_Prod_DetAFECTA_STOCK.Value    := CDSVentaDetAFECTA_STOCK.Value;
end;

procedure TDatosVentasCtdo.CDSFc_Prod_MovBeforePost(DataSet: TDataSet);
begin
  if (CDSFc_Prod_MovCODIGO.AsString='') then
    begin
     // SysUtils.Abort;
      CDSFc_Prod_Mov.Cancel;
      SysUtils.Abort;
    end;
end;

procedure TDatosVentasCtdo.CDSFc_Prod_MovCANTIDAD_REALSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString                         := Text;
 // CDSFc_Prod_MovCANTIDAD_ESTIMADA.AsFloat := Sender.AsFloat;
  if CDSFc_Prod_DetCANTIDAD.AsFloat>0 then
    begin
      CDSFc_Prod_MovCANTIDAD_ESTIMADA.AsFloat := Sender.AsFloat/CDSFc_Prod_DetCANTIDAD.AsFloat;
      CDSFc_Prod_MovCANTIDAD_UNITARIA.AsFloat := Sender.AsFloat/CDSFc_Prod_DetCANTIDAD.AsFloat;
    end;
 // if CDSFc_Prod_Mov.State<>dsBrowse then
 //   CDSFc_Prod_Mov.Post;
end;

procedure TDatosVentasCtdo.CDSFc_Prod_MovCODIGOSetText(Sender: TField;
  const Text: string);
var s:String;
begin
  if (Text<>'') and (Text<>#13) then
    begin
      Sender.AsString:=Trim(Text);
      S:=Sender.AsString;
      if DMMain_FD.JustificaCodigo='D' Then
        S:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S)) + S
      else
        if DMMain_FD.JustificaCodigo='I' Then
          S:=S+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S));

      Sender.AsString:=s; ;
      IF AsignarArticuloProduccion(s) = False THEN
        BEGIN
          Sender.Clear;
          ShowMessage('Dato no Valido..');
        END;
    end;
end;


procedure TDatosVentasCtdo.CDSFc_Prod_MovNewRecord(DataSet: TDataSet);
begin
  CDSFc_Prod_MovID.Value                  := ibgId_mov_prod.IncrementFD(1);
  CDSFc_Prod_MovID_FC_DET.Value           := CDSFc_Prod_DetID.Value;
  CDSFc_Prod_MovCODIGO.Value              := '';
  CDSFc_Prod_MovDETALLE.Value             := '';
  CDSFc_Prod_MovCANTIDAD_UNITARIA.AsFloat := 0;
  CDSFc_Prod_MovCANTIDAD_ESTIMADA.AsFloat := 0;
  CDSFc_Prod_MovCANTIDAD_REAL.AsFloat     := 0;
end;


PROCEDURE TDatosVentasCtdo.CDSImpuestosNewRecord(DataSet: TDataSet);
BEGIN
  CDSImpuestosId_Impuesto.Value := IBGFc_Impuestos.IncrementFD(1);
  CDSImpuestosID_FCVTACAB.Value := CDSVentaCabID_FC.Value;
  CDSImpuestosNETO.AsFloat      :=0;
  CDSImpuestosIMPORTE.AsFloat   :=0;
  CDSImpuestosTASA.AsFloat      :=0;
END;

procedure TDatosVentasCtdo.CDSMov_CarnesMEDIA_1SetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSMov_CarnesT_KILOS.Value:=CDSMov_CarnesMEDIA_1.AsInteger+
                              CDSMov_CarnesMEDIA_2.AsInteger+
                              CDSMov_CarnesMEDIA_3.AsInteger+
                              CDSMov_CarnesMEDIA_4.AsInteger+
                              CDSMov_CarnesMEDIA_5.AsInteger+
                              CDSMov_CarnesMEDIA_6.AsInteger+
                              CDSMov_CarnesMEDIA_7.AsInteger+
                              CDSMov_CarnesMEDIA_8.AsInteger;
end;

procedure TDatosVentasCtdo.CDSMov_CarnesNewRecord(DataSet: TDataSet);
begin
  CDSMov_CarnesCLASIFICACION.Value:= '';
  CDSMov_CarnesNRO_TROPA.Value    := '000000';
  CDSMov_CarnesMEDIA_1.Value      := 0;
  CDSMov_CarnesMEDIA_2.Value      := 0;
  CDSMov_CarnesMEDIA_3.Value      := 0;
  CDSMov_CarnesMEDIA_4.Value      := 0;
  CDSMov_CarnesMEDIA_5.Value      := 0;
  CDSMov_CarnesMEDIA_6.Value      := 0;
  CDSMov_CarnesMEDIA_7.Value      := 0;
  CDSMov_CarnesMEDIA_8.Value      := 0;
  CDSMov_CarnesID_CAB.Value       := CDSVentaCabID_FC.Value;
  CDSMov_CarnesID_DET.Value       := CDSVentaDetID.Value;
  CDSMov_CarnesID.Value           := ibgMov_Carne.IncrementFD(1);
  CDSMov_CarnesT_KILOS.Value      := 0;
  CDSMov_CarnesT_MEDIAS.Value     := 0;
end;

procedure TDatosVentasCtdo.CDSPercepcionIVANewRecord(DataSet: TDataSet);
begin
  CDSPercepcionIVAID_Percepcion.Value     := IBGPercepcionIVA.IncrementFD(1);
  CDSPercepcionIVAID_FCVTACAB.Value       := CDSVentaCabID_FC.Value;
  CDSPercepcionIVACODIGOREGIMEN.Value     := -1;
  CDSPercepcionIVANETO.AsFloat            := 0;
  CDSPercepcionIVATASA.AsFloat            := 0;
  CDSPercepcionIVAIMPORTE.AsFloat         := 0;
  CDSPercepcionIVACODIGO_PERCEPCION.Value := -1;
end;

procedure TDatosVentasCtdo.CDSVentaDetCalcFields(DataSet: TDataSet);
begin
  if Trim(CDSVentaDetCODIGOARTICULO.AsString)<>'' then
    begin
      if Abs(CDSVentaDetCANTIDAD.AsFloat)>0 then
        CDSVentaDetUNITARIO_NETO_TOTAL.AsFloat:=CDSVentaDetTOTAL.AsFloat /CDSVentaDetCANTIDAD.AsFloat;
    end;
end;

PROCEDURE TDatosVentasCtdo.CDSVentaDetCANTIDADSetText(Sender: TField;
  CONST Text: STRING);
VAR
  Aux1, Aux2, Aux3: Extended;
  TextAux:String;
begin
  if (Text<>'') and (CDSVentaDetCODIGOARTICULO.AsString<>'') Then
    begin
      TextAux:=Text;
      if (TextAux[1]='-') Then Delete(TextAux,1,1);

      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);
      Sender.AsString := TextAux;

      if NOt(DMMain_FD.GetClienteConPrecio(CDSVentaCabCODIGO.AsString, CDSVentaDetCODIGOARTICULO.AsString)) then
        begin
          DMStoreProcedure.QPrecioPorCantidad.Close;
          DMStoreProcedure.QPrecioPorCantidad.ParamByName('codigo').Value:=CDSVentaDetCODIGOARTICULO.Value;
          DMStoreProcedure.QPrecioPorCantidad.ParamByName('cant').Value  :=Sender.AsFloat;
          DMStoreProcedure.QPrecioPorCantidad.ParamByName('Lista').Value :=CDSVentaCabLISTAPRECIO.Value;
          DMStoreProcedure.QPrecioPorCantidad.Open;

          if (DMStoreProcedure.QPrecioPorCantidadCANTIDAD.AsFloat<>0) then
            begin
              CDSVentaDetUNITARIO_GRAVADO.AsFloat := DMStoreProcedure.QPrecioPorCantidadPRECIO_GRAVADO.AsFloat;
              CDSVentaDetUNITARIO_EXENTO.AsFloat  := DMStoreProcedure.QPrecioPorCantidadPRECIO_EXENTO.AsFloat;
              CDSVentaDetUNITARIO_TOTAL.AsFloat   := DMStoreProcedure.QPrecioPorCantidadPRECIO_GRAVADO.AsFloat+
                                                     DMStoreProcedure.QPrecioPorCantidadPRECIO_EXENTO.AsFloat;
              CDSVentaDetIVA_UNITARIO.AsFloat     := DMStoreProcedure.QPrecioPorCantidadIVA_IMPORTE.AsFloat;
            end;
        end;

      // Verific tambien si no viene de un rto....

      if (DMMain_FD.VenderSinStock=False) and  (DatosVentasCtdo.CDSVentaDetAfecta_Stock.Value='S') and
         (DatosVentasCtdo.CDSVentaCabIDREMITO.AsString='') Then
         begin
           DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
           DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('codigo').AsString    :=CDSVentaDetCodigoArticulo.Value;
           DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('deposito').AsInteger :=CDSVentaCabDeposito.Value;
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

      Aux1:= CDSVentaDetUNITARIO_EXENTO.AsFloat;
      Aux2:= CDSVentaDetUNITARIO_GRAVADO.AsFloat;
    
      if (CDSVentaDetModo_Gravamen.Value<>'') then
        if ((CDSVentaCabDesglozaIva.Value = 'S') and (FormCpbteCtdo_2.DiscriminaIva='N')) and (CDSVentaDetModo_Gravamen.Value[1] in ['G','M','I','Y']) THEN
          Aux2:= Aux2 + CDSVentaDetIVA_UNITARIO.AsFloat
        else
          if (CDSVentaCabDesglozaIva.Value = 'N') and (CDSVentaDetModo_Gravamen.Value[1] in ['G','M','I','Y']) THEN
            Aux2:= Aux2 + CDSVentaDetIVA_UNITARIO.AsFloat;


      TextAux:='0.00000000';//MascaraDetalleUnitario;

      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);

      Aux3:= StrToFloat(FormatFloat(TextAux, (Aux1 + Aux2)));

      CDSVentaDetUnitario_TotalSetText(CDSVentaDetUNITARIO_TOTAL,FloatToStr(Aux3));

//      CDSVentaDetCANTIDAD_UNIDADES.AsFloat:= RoundTo(Sender.AsFloat/CDSVentaDetPRESENTACION_CANT.AsFloat,0);

      if CDSVentaDetPRESENTACION_CANT.AsFloat>0 then
        begin
          if CDSVentaDetPRESENTACION_UNIDAD.Value=CDSVentaDetUNIDAD.Value Then
            CDSVentaDetCANTIDAD_UNIDADES.AsFloat:=Sender.AsFloat/CDSVentaDetPRESENTACION_CANT.AsFloat
          else
            if CDSVentaDetPRESENTACION_UNIDAD.Value<>CDSVentaDetUNIDAD.Value Then
              CDSVentaDetCANTIDAD_UNIDADES.AsFloat:=Sender.AsFloat*CDSVentaDetPRESENTACION_CANT.AsFloat

        end
      else
        CDSVentaDetCANTIDAD_UNIDADES.AsFloat:=Sender.AsFloat;

      if FormCpbteCtdo_2.ExpresarUnidadesenEnteros1.Checked then
        CDSVentaDetCANTIDAD_UNIDADES.ASFloat:= RoundTo(CDSVentaDetCANTIDAD_UNIDADES.ASFloat,0);

    end;
END;


procedure TDatosVentasCtdo.CDSVentaDetCANTIDAD_UNIDADESSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString := Text;
  if Sender.AsFloat<1 then Sender.AsFloat:=CDSVentaDetCANTIDAD.AsFloat;
//  CDSVentaDetPRESENTACION_CANT.AsFloat:=CDSVentaDetCANTIDAD.AsFloat/Sender.AsFloat;
end;

procedure TDatosVentasCtdo.CDSVentaDetCODIGOARTICULOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if FormCpbteCtdo_2<>nil then
    begin
      if FormCpbteCtdo_2.VerCodigoAlternativo1.Checked=True then
        Text:=Trim(CDSVentaDetMUESTRACODALTERNATIVO.Value)
      else
       Text:=Trim(CDSVentaDetCODIGOARTICULO.Value);
    end;
end;

procedure TDatosVentasCtdo.CDSVentaCabFECHAVTASetText(Sender: TField;
  const Text: String);
var d2,m2,y2,d,m,y:word;
BEGIN
  if sender.AsString<>'' Then
    if CDSVentaCab.State In [dsInsert,dsEdit] Then
      begin
        Sender.AsString := Text;
        DecodeDate(Date,y2,m2,d2);
        DecodeDate(Sender.AsDateTime,y,m,d);
        DMStoreProcedure.QVerificaPeriodoFiscal.Close;
        DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Fecha').Value     := Sender.AsDateTime;
        DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('compra_venta').Value:= 'V';
        DMStoreProcedure.QVerificaPeriodoFiscal.Open;
        if (DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].AsString='C') or (y<1900) Then
          begin
            ShowMessage('Fecha no Valida, este período fiscal no esta permitido');
            CDSVentaCabFECHAVTA.Clear;
            Sender.Clear;
          end
        else
          begin
            CDSVentaCabFECHAVTA.AsDateTime :=Sender.AsDateTime ;
            if ((Sender.AsDateTime<Date) or (Sender.AsDateTime>Date)) and ( CDSVentaCabCPTE_MANUAL.AsString='N') Then
            //if (y<y2) or (m<m2) or (d<d2) Then
               begin
               // Verifico si esta activa la opcion de controlar fecha
//                 DMMain_FD.QOpciones.Close;
//                 DMMain_FD.QOpciones.ParamByName('opcion').AsString:='CONTFECHAVTA';
//                 DMMain_FD.QOpciones.Open;
//                 IF DMMain_FD.QOpciones.Fields[0].AsString='Si' Then
				if DMMain_FD.ControlaFechaVta then
                  begin
                    if MessageDlg('Fecha Fuera de Rango... Acepta Igual???',mtConfirmation,mbYesNo,0,mbNo)=mrNo then
                      begin
                        CDSVentaCabFECHAVTA.Clear;
                        Sender.AsDateTime:=Date;
                        IF (FormCpbteCtdo_2.Visible) and (FormCpbteCtdo_2.dbeFechaVta.Enabled) Then
                          FormCpbteCtdo_2.dbeFechaVta.SetFocus;
                      end;
                  end;
//                 DMMain_FD.QOpciones.Close;
              end;
          end;
        DMStoreProcedure.QVerificaPeriodoFiscal.Close;
      end;
  CDSVentaCabFECHA_FISCAL.AsDateTime := CDSVentaCabFECHAVTA.AsDateTime;
END;

procedure TDatosVentasCtdo.CDSVentaDetIVA_TASASetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:= FormatFloat(MascaraCabecera,StrToFloat(Text));
  CDSVentaDetIVA_SobreTasa.AsFloat:=Sender.AsFloat*0.05;
end;

procedure TDatosVentasCtdo.CDSVentaCabCODIGOSetText(Sender: TField;
  const Text: String);
VAR
  Aux: STRING;
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Aux := Text;
      Aux := Copy('00000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString := Aux;
      IF AsignarCliente(Aux) = False THEN
        BEGIN
          ShowMessage('Codigo Cliente No válido');
          Sender.Clear;
          Aux:='';
          CDSVentaCabNOMBRE.Clear;
          FormCpbteCtdo_2.RxCCodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      FormCpbteCtdo_2.RxCCodigo.Text := Aux;
      HabilitarLabel;
    end;
end;

procedure TDatosVentasCtdo.CDSVentaCabSUCFACSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString := Copy('0000', 1, 4 - Length(Text)) + Text;
  if  (Trim(CDSVentaCabNUMEROFAC.Value)<>'') and  (Trim(CDSVentaCabNUMEROFAC.Value)<>'00000000') and  (DMMain_FD.VerificaNro(CDSVentaCabLETRAFAC.Value,CDSVentaCabSUCFAC.Value,
                 CDSVentaCabNUMEROFAC.Value,CDSVentaCabTIPOCPBTE.AsString,
                 CDSVentaCabCLASECPBTE.AsString,CDSVentaCabSUCURSAL.Value)) then
    begin
      if Not(Assigned(FormMuestraUltimoProximoNroCpbte)) then
        FormMuestraUltimoProximoNroCpbte:=TFormMuestraUltimoProximoNroCpbte.Create(Self);
      FormMuestraUltimoProximoNroCpbte.letra   :=CDSVentaCabLETRAFAC.Value;
      FormMuestraUltimoProximoNroCpbte.Suc     :=CDSVentaCabSUCFAC.Value;
      FormMuestraUltimoProximoNroCpbte.Nro     :=CDSVentaCabNUMEROFAC.Value;
      FormMuestraUltimoProximoNroCpbte.Tipo    :=CDSVentaCabTIPOCPBTE.Value;
      FormMuestraUltimoProximoNroCpbte.Clase   :=CDSVentaCabCLASECPBTE.Value;
      FormMuestraUltimoProximoNroCpbte.Sucursal:=CDSVentaCabSUCURSAL.Value;
      FormMuestraUltimoProximoNroCpbte.ShowModal;
      if FormMuestraUltimoProximoNroCpbte.ModalResult=mrOk then
        Sender.AsString:=FormMuestraUltimoProximoNroCpbte.Nro
      else
        Sender.Clear;
    end;
//  else
//    Sender.Clear;

  //                 Sender.Clear;
  CDSVentaCabNroCpbte.Value := CDSVentaCabLetraFac.Value +  CDSVentaCabSucFac.Value + CDSVentaCabNumeroFac.Value;
end;

procedure TDatosVentasCtdo.CDSVentaCabNUMEROFACSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString := Copy('00000000', 1, 8 - Length(Text)) + Text;
  if (CDSVentaCabSUCFAC.AsString<>'') and  (DMMain_FD.VerificaNro(CDSVentaCabLETRAFAC.Value,CDSVentaCabSUCFAC.Value,
                 CDSVentaCabNUMEROFAC.Value,CDSVentaCabTIPOCPBTE.Value,
                 CDSVentaCabCLASECPBTE.Value,CDSVentaCabSUCURSAL.Value)) then

      begin
        if Not(Assigned(FormMuestraUltimoProximoNroCpbte)) then
          FormMuestraUltimoProximoNroCpbte:=TFormMuestraUltimoProximoNroCpbte.Create(Self);
        FormMuestraUltimoProximoNroCpbte.letra   :=CDSVentaCabLETRAFAC.Value;
        FormMuestraUltimoProximoNroCpbte.Suc     :=CDSVentaCabSUCFAC.Value;
        FormMuestraUltimoProximoNroCpbte.Nro     :=CDSVentaCabNUMEROFAC.Value;
        FormMuestraUltimoProximoNroCpbte.Tipo    :=CDSVentaCabTIPOCPBTE.Value;
        FormMuestraUltimoProximoNroCpbte.Clase   :=CDSVentaCabCLASECPBTE.Value;
        FormMuestraUltimoProximoNroCpbte.Sucursal:=CDSVentaCabSUCURSAL.Value;
        FormMuestraUltimoProximoNroCpbte.ShowModal;
        if FormMuestraUltimoProximoNroCpbte.ModalResult=mrOk then
          Sender.AsString:=FormMuestraUltimoProximoNroCpbte.Nro
        else
          Sender.Clear;
      end;

   CDSVentaCabNroCpbte.Value := CDSVentaCabLetraFac.Value +  CDSVentaCabSucFac.Value + CDSVentaCabNumeroFac.Value;
end;


procedure TDatosVentasCtdo.CDSVentaCabPERCIBE_IVAChange(Sender: TField);
begin

  FormCpbteCtdo_2.dbgPercecpionesIVA.Visible:=CDSVentaCabPERCIBE_IVA.Value='S';
end;

procedure TDatosVentasCtdo.CDSVentaCabPROVEEDORSetText(Sender: TField;
  const Text: string);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarProveedor(Text)) THEN
        BEGIN
          ShowMessage('Codigo Proveedor No válido');
          Sender.AsString := '';
          //SysUtils.Abort;
          FormCpbteCtdo_2.ceProveedor.SetFocus;
        END;
    end;
end;

procedure TDatosVentasCtdo.CDSVentaCabSUCURSALSetText(Sender: TField;
  const Text: String);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Sucursal No Valido');
          FormCpbteCtdo_2.RxCSucursal.SetFocus;
        END
      ELSE IF CDSVentaCab.State = dsInsert THEN
        FormCpbteCtdo_2.UltimoComprobante;
    end;

end;

procedure TDatosVentasCtdo.CDSVentaCabLDRSetText(Sender: TField;
  const Text: String);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarLdr(CDSVentaCabCodigo.Value, Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo L.D.R no Válido');
          FormCpbteCtdo_2.RxCLdr.SetFocus;
        END;
    end;

end;

procedure TDatosVentasCtdo.CDSVentaCabLISTAPRECIOChange(Sender: TField);
var estado:Boolean;
begin

  Estado:=Not(FormCpbteCtdo_2.dbcLista.ListSource.DataSet.FieldByName('exclusivo_efectivo').Value='S');
  if FormCpbteCtdo_2.FrameMovValoresIngreso1.tsChe3.TabVisible=True Then
    FormCpbteCtdo_2.FrameMovValoresIngreso1.tsChe3.TabVisible                :=Estado;
  FormCpbteCtdo_2.FrameMovValoresIngreso1.tsTCredito.TabVisible            :=Estado;
  FormCpbteCtdo_2.FrameMovValoresIngreso1.tsTransf.TabVisible              :=Estado;
  FormCpbteCtdo_2.FrameMovValoresIngreso1.tsValoresCompartidos.TabVisible  :=Estado;

end;

procedure TDatosVentasCtdo.CDSVentaCabMUESTRAUSACHEChange(Sender: TField);
begin
  if FormCpbteCtdo_2<>nil then

  FormCpbteCtdo_2.FrameMovValoresIngreso1.tsChe3.TabVisible  := CDSVentaCabMUESTRAUSACHE.AsString='S';
end;

procedure TDatosVentasCtdo.CDSVentaCabDEPOSITOSetText(Sender: TField;
  const Text: String);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      if Sender.AsInteger>0 then
        begin
          IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
            BEGIN
              Sender.AsString := '';
              ShowMessage('Codigo depósito no Válido');
              if FormCpbteCtdo_2.Visible then
                FormCpbteCtdo_2.RxCDeposito.SetFocus;
            END;
        end
      else
        begin
          Sender.AsString := '';
        end;

    end;

end;

procedure TDatosVentasCtdo.CDSVentaCabDSTOSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:= Text;//FormatFloat(MascaraCabecera,StrToFloat(Text));
  if (Sender.AsFloat > DMMain_FD.TopeDsctoGral) then
    Sender.AsFloat:=DMMain_FD.TopeDsctoGral;
  if Sender.AsFloat<0 Then Sender.AsString:='0.00';
  SumarDetalle;
  CalcularTotales;
end;

procedure TDatosVentasCtdo.CDSVentaCabAfterEdit(DataSet: TDataSet);
begin
{  IF (wwCDSVentaCabImpreso.Value = 'S') or (wwCDSVentaCabANULADO.AsString='S') THEN
    BEGIN
      ShowMessage('No se puede modificar'#13'un comprobante ya impreso o anulado');
      IF wwCDSVentaDet.State IN [dsEdit, dsInsert] THEN
        wwCDSVentaDet.Cancel;
      IF wwCDSVentaCab.State IN [dsEdit, dsInsert] THEN
        wwCDSVentaCab.Cancel;
    END;
 }
end;

procedure TDatosVentasCtdo.CDSVentaCabBeforePost(DataSet: TDataSet);
begin
  CDSVentaCabNROCPBTE.Value := CDSVentaCabLETRAFAC.Value + CDSVentaCabSUCFAC.Value + CDSVentaCabNUMEROFAC.Value;
end;

procedure TDatosVentasCtdo.CDSVentaCabNewRecord(DataSet: TDataSet);
var
  Juri: TJurisdiccion;
begin
  CDSVentaCabId_Fc.Value                := IBGFc_Cab.IncrementFD(1);
  CDSVentaCabNombre.AsString            := '';
  CDSVentaCabRazonSocial.AsString       := '';
  CDSVentaCabCuit.AsString              := '';
  CDSVentaCabDireccion.AsString         := '';
  CDSVentaCabTipoIVA.Value              := 0;
  CDSVentaCabCPostal.AsString           := '';
  CDSVentaCabLetraFac.AsString          := '';
  CDSVentaCabSucFac.AsString            := '0000';
  CDSVentaCabNumeroFac.AsString         := '00000000';
  CDSventaCabDsto.ASFloat               := 0;
  CDSVentaCabDSTOIMPORTE.AsFloat        := 0;
  CDSVentaCabNETOEXEN1.AsFloat          := 0;
  CDSVentaCabNETOEXEN2.AsFloat          := 0;
  CDSVentaCabNETONOGRAV1.AsFloat        := 0;
  CDSVentaCabNETONOGRAV2.AsFloat        := 0;
  CDSVentaCabVUELTO.AsFloat             := 0;
  CDSVentaCabINF_X.AsString             := 'N';
  CDSVentaCabVALORES_RECIBIDOS.AsFloat  := 0;
  CDSVentaCabCpte_Manual.Value          := 'N';
  CDSVentaCabFechaVta.AsDateTime        := Date;
  CDSVentaCabFECHA_FISCAL.AsDateTime    := Date;
  CDSVentaCabFECHAVTO.AsDateTime        := CDSVentaCabFECHAVTA.AsDateTime;
  CDSVentaCabPERCIBE_IB.Value           := BoolToStr(DMMain_FD.AgentePercepcionIB,True);
  CDSVentaCabPERCEPCION_IB_TASA.AsFloat := DMMain_FD.TasaPercepcionIB;
  CDSVentaCabPERCIBE_IVA.Value          := DMMain_FD.AgentePercepcionIVA;
  CDSVentaCabMINIMO_PERCI_IVA.Value     := DMMain_FD.Minim_Imp_Perc_IVA;

  CDSVentaCabNroRto.AsString            := '';
  CDSVentaCabAnulado.AsString           := 'N';
  CDSVentaCabImpreso.AsString           := 'N';
  CDSVentaCabCPTE_Manual.AsString       := 'N';
  CDSVentaCabCON_GTIA_EXTENDIDA.Value   := 'N';
  CDSVentaCabPAGO_A_CTA.AsFloat         := 0;
  CDSVentaCabDeposito.Clear;
  CDSVentaCabTipoCpbte.AsString         := ''; //Factura de Vta contado...
  CDSVentaCabCondicionVta.Value         := 0; //...... Condicion de Vta contado=0(cero)
  CDSVentaCabNroEntrega.Value           := 1;
  CDSVentaCabREDUCIDA.AsString          := 'N';
  CDSVentaCabSUCURSALSetText(CDSVentaCabSUCURSAL,IntToStr(FormCpbteCtdo_2.SucursalPorDefecto));
  CDSVentaCabDEPOSITOSetText(CDSVentaCabDEPOSITO,IntToStr(FormCpbteCtdo_2.DepositoPorDefecto));

  CDSVentaCabLIQUIDADA.Value            := 'N';
  CDSVentaCabID_FC_CON_ADEL.Value       := -1;
  CDSVentaCabCENTRO_COSTO.Value         := -1;
  CDSVentaCabCOMSIONVENDEDOR.AsFloat    := 0;
  CDSVentaCabNC_CONTADO.Value           := 'N';
  CDSVentaCabCAJA_POR_DEFECTO.Value     := FormCpbteCtdo_2.CajaPorDefecto;
  CDSVentaCabUSUARIO.Value              := DMMain_FD.UsuarioActivo;
  CDSVentaCabFECHA_HORA.AsDateTime      := now;
  CDSVentaCabPOR_CTA_Y_ORDEN.Value      := 'N';
  CDSVentaCabTIPO_VTA.Value             := 'M';
  CDSVentaCabPROVEEDOR.AsString         := '';
  CDSVentaCabCAE.Value                  := '0';
  CDSVentaCabCAE_VENCIMIENTO.Clear;
  CDSVentaCabFACTURA_ELECTRONICA.Value       :='N';
  CDSVentaCabCANT_BULTOS.Value               := 0;
  CDSVentaCabCUOTAS_CC.Value                 := 1;
  CDSVentaCabINTERVALO_CUOTA.Value           := 30;
  CDSVentaCabID_FC_CON_ADEL.Value            := -1;
  CDSVentaCabFOB_TOTAL.Value                 := 0;
  CDSVentaCabNRO_INTERNO.AsString            := '';
  CDSVentaCabNOTAS.AsString                  := '';
  CDSVentaCabID_PEDIDO_MORPHI.Value          := -1;
  CDSVentaCabMONEDA_CPBTE.Value              := 1;
  CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat := 1;

  CDSVentaCabASOCIADO_TIPO.Value             := 0;
  CDSVentaCabASOCIADO_PTOVTA.Value           := 0;
  CDSVentaCabASOCIADO_NRO.Value              := 0;
  CDSVentaCabASOCIADO_CPTEFCH.Value          := '00000000';
  CDSVentaCabASOCIADO_ID_CPBTE.Value         := -1;

  CDSVentaCabCBU.AsString                    := CDSEmpresaCBU.AsString;

  CDSVentaCabHONORARIOS.Value                := 0;
  CDSVentaCabHONORARIOS_PROCENTAJ.Value      := 0;
  //CDSVentaCabDEDUCE_GASTOS.VALUE             := 'N';
  CDSVentaCabCON_CAEA.VALUE                  := 'N';
  CDSVentaCabCAEA_INFORMADO.VALUE            := 'N';
  CDSVentaCabFACTURA_DE_ANTICIPO.VALUE       := 'N';
  CDSVentaCabCONDICIONPEDIDO.Value           :=-1;

  if (Trim(CDSEmpresaCOD_ACTIVIDAD.AsString)='') then
    CDSVentaCabCODIGO_ACTIVIDAD.Value        := '**********'
  else
    CDSVentaCabCODIGO_ACTIVIDAD.Value        := CDSEmpresaCOD_ACTIVIDAD.AsString;
  CDSVentaCabMUESTRAOBRA.AsString            := '';
  CDSVentaCabID_OBRA.Value                   := -1;
  CDSVentaCabPROCESADA.Value                 := 'S';
  CDSVentaCabPERCIBE_IVA.Value               := DMMain_FD.AgentePercepcionIVA;
  CDSVentaCabMINIMO_PERCI_IVA.Value          := DMMain_FD.Minim_Imp_Perc_IVA;

  CDSVentaCabMONEDA_CPBTE.AsInteger	         :=	DMMain_FD.MonedaVta;
  CDSVentaCabNC_POR_DIFERENCIA.AsString      :='N';

  
  QMonedas.Close;
  QMonedas.ParamByName('id').Value:=CDSVentaCabMONEDA_CPBTE.Value;
  QMonedas.Open;

  if QMonedasCOTIZACION.AsString<>'' Then
    CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat := QMonedasCOTIZACION.AsFloat
  else
    CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFLoat :=1;

  CDSVentaCabMUESTRAMONEDACPBTE.Value        := QMonedasMONEDA.Value;
  CDSVentaCabMUESTRASIGNOMONEDACPBTE.Value   := QMonedasSIGNO.Value;
  QMonedas.Close;

  CDSVentaCabCON_GTIA_EXTENDIDA.Value       := 'N';
  CDSVentaCabMESES_DE_GARANTIA.AsFloat      := 0;
  CDSVentaCabPOLIZA.Value                   := '';
  CDSVentacabVALOR_ASEGURADO.AsFloat        := 0;
  CDSVentaCabJURIDICION.Clear;
  CDSVentaCabJURIDICION_LOCALIDAD.Clear;
  //**************************************************************************
  // si se usa asignacion de juridicion
  //**************************************************************************
  if DMMain_FD.FacturaPorJuridiccion then
    begin
      QLocalidadJurDefecto.Close;
      QLocalidadJurDefecto.Open;
      if QLocalidadJurDefecto.Fields[0].AsString<>'' then
        begin
          CDSVentaCabJURIDICION_LOCALIDAD.Value := QLocalidadJurDefectoID.Value;
          CDSVentaCabJURIDICION.Value           := QLocalidadJurDefectoID_JURIDICION.Value;
        end;
      QLocalidadJurDefecto.Close;
//
//      DMMain_FD.QJuridiccionPorSucursal.Close;
//      DMMain_FD.QJuridiccionPorSucursal.ParamByName('sucursal').Value:=CDSVentaCabSUCURSAL.AsInteger;
//      DMMain_FD.QJuridiccionPorSucursal.Open;
//       if Not(DMMain_FD.QJuridiccionPorSucursal.IsEmpty) then
//         begin
          if DMMain_FD.JurisdiccionPorSucursal(CDSVentaCabSUCURSAL.AsInteger, Juri) then
            begin
              CDSVentaCabJURIDICION_LOCALIDAD.AsInteger := Juri.LOCALIDAD;
              CDSVentaCabJURIDICION.AsInteger           := Juri.ID;
            end;
//       DMMain_FD.QJuridiccionPorSucursal.Close;
    end;
  //**************************************************************************
  //****Asigno la Lsta Por defecto o la primera ******************************
  //**************************************************************************
  CDSVentaCabLISTAPRECIO.Value:=DMMain_FD.ListaPorDefecto(CDSVentaCabSUCURSAL.Value);
  //***********************************************************
  //***********************************************************


//  //**************************************************************************
//  //**************************************************************************
//  DMMain_FD.QListaPrecioPorDefecto.CLose;
//  DMMain_FD.QListaPrecioPorDefecto.Open;
//  if DMMain_FD.QListaPrecioPorDefecto.Fields[0].AsString<>'' Then
//    CDSVentaCabLISTAPRECIO.Value:=DMMain_FD.QListaPrecioPorDefecto.Fields[0].Value
//  else
//    begin
//      DMMain_FD.QPrimeraListaPrecios.Close;
//      DMMain_FD.QPrimeraListaPrecios.Open;
//      if DMMain_FD.QPrimeraListaPrecios.Fields[0].AsString<>'' Then
//         CDSVentaCabLISTAPRECIO.Value:=DMMain_FD.QPrimeraListaPrecios.Fields[0].Value;
//      DMMain_FD.QPrimeraListaPrecios.Close;
//    end;
//  DMMain_FD.QListaPrecioPorDefecto.CLose;

 // if FormCpbteCtdo_2.ClientePorDefecto<>'' Then
//    begin
//      CDSVentaCabCodigoSetText(CDSVentaCabCODIGO,FormCpbteCtdo_2.ClientePorDefecto);
//    end;

  if FormCpbteCtdo_2.Visible then
    begin
   //   FormCpbteCtdo_2.dbeFechaVta.SetFocus;
   //   FormCpbteCtdo_2.dbeFechaVta.SelectAll;
    end;
   FormCpbteCtdo_2.ItemRedondeo:='*';

end;

procedure TDatosVentasCtdo.CDSVentaCabNETOGRAV1GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR TotalGral,NetoTotal,Aux:Currency;//real
begin
  if FormCpbteCtdo_2<>Nil Then
    begin
      TotalGral := CDSVentaCabTotal.AsFloat -
                   CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat -
                   CDSVentaCabNETOEXEN2.AsFloat -
                   CDSVentaCabNETONOGRAV2.ASFloat;
      NetoTotal := CDSVentaCabNetoGrav2.AsFloat;

    //  if CDSVentaCabNETOGRAV2.AsFloat>0 Then
     //   Var_TasaIVA:= ((TotalGral/NetoTotal)-1)*100
     // else
     //   Var_TasaIva:=0;

     // if Var_TasaIva<0 then Var_TasaIva :=0;

      Aux:=Sender.AsFloat;
      if (CDSVentaCabDESGLOZAIVA.Value='N') or (FormCpbteCtdo_2.DiscriminaIva='N') Then
        Aux:= (Aux * (1+Var_TasaIva * 0.01));

      Aux:= RoundTo(Aux ,-4);
      Aux:= RoundTo(Aux ,-3);
      Aux:= RoundTo(Aux ,-2);

      Text:=FormatFloat(MascaraCabecera,Aux);
    end;
end;

procedure TDatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  if (Text<>'') and (text[1]<>#13) and (CDSVentaCabCODIGO.AsString<>'') Then
    BEGIN
      DatosVentasCtdo.CDSVentaCabSUCFAC.Clear;
      DatosVentasCtdo.CDSVentaCabNUMEROFAC.Clear;
      Sender.AsString := Text;
      IF NOT (AsignarComprobante(sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Dato no Valido');
          FormCpbteCtdo_2.RxCTipoCpbte.SetFocus;
        END;
    END
  ELSE
    Sender.AsString := '';
  IF CDSVentaCab.State = dsInsert THEN
    FormCpbteCtdo_2.UltimoComprobante;
  HabilitarLabel;
end;

procedure TDatosVentasCtdo.CDSVentaCabVENDEDORSetText(Sender: TField;
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

procedure TDatosVentasCtdo.CDSVentaCabDSTOIMPORTEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR Aux,TotalGral,NetoTotal:Extended;
begin
  if FormCpbteCtdo_2<>Nil Then
    begin
//     ((Total / neto) -1) x 100 = Tasa de Iva usada
//      TotalGral  := CDSVentaCabTOTAL.AsFloat - CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat;
//      NetoTotal  := CDSVentaCabNETOGRAV2.AsFloat + CDSVentaCabNETOEXEN2.AsFloat;
//      if NetoTotal>0 Then
//        Var_TasaIVA:= RoundTo(((TotalGral/NetoTotal)-1) * 100,-2)
//      else
//        Var_TasaIva:=0;
//
//      Var_TasaIVA:= RoundTo(Var_TasaIVA,-1);

      Aux:= Sender.AsFloat;
      if (CDSVentaCabDESGLOZAIVA.Value='N') or (FormCpbteCtdo_2.DiscriminaIva='N') Then
        Aux:= Aux * (1+Var_TasaIva * 0.01);

      aux:=RoundTo(Aux,-3);
      aux:=RoundTo(Aux,-2);

      Text:= FormatFloat(',0.00',Aux);
    end;
end;

procedure TDatosVentasCtdo.CDSVentaCabDSTOIMPORTESetText(Sender: TField;
  const Text: string);
var Aux1,Aux2,Importe:Extended;
begin
  Sender.AsString:=Text;
  Aux1:=(CDSVentaCabNETOGRAV1.AsFloat+CDSVentaCabNETOEXEN1.AsFloat);
  Aux2:=(CDSVentaCabNETOGRAV1.AsFloat+CDSVentaCabNETOEXEN1.AsFloat)-CDSVentaCabDSTOIMPORTE.AsFloat;
  if Aux1>0 then
    Importe:=((Aux1-Aux2)/Aux1)*100
  else
    Importe:=0;  
  if (CDSVentaCabDESGLOZAIVA.Value='N') or (FormCpbteCtdo_2.DiscriminaIva='N') Then
    Importe:= Importe/(1+(Var_TasaIva * 0.01));
//    Importe:= RoundTo((Importe/(1+(Var_TasaIva * 0.01))),-3);

  CDSVentaCabDSTOSetText(CDSVentaCabDSTO,FloatToStr(Importe));

end;

procedure TDatosVentasCtdo.CDSVtaSubDetalleBeforeInsert(DataSet: TDataSet);
begin
  if ((CDSVtaSubDetalle.RecordCount+1)> CDSVentaDetCantidad.AsFloat)
  {or (wwCDSVentaDetCON_NRO_SERIE.Value='N')} Then
    begin
      sysutils.Abort;
      RAISE Exception.Create('No se pueden cargara mas items de los comprados...')
    end;

end;

procedure TDatosVentasCtdo.CDSVtaSubDetalleBeforePost(DataSet: TDataSet);
begin
 IF ((CDSVtaSubDetalleSERIE.AsString = '') AND
     (CDSVtaSubDetalle.State IN [dsInsert, dsEdit]))
    THEN
    BEGIN
      CDSVtaSubDetalle.Cancel;
      SysUtils.Abort;
    END;

end;

procedure TDatosVentasCtdo.CDSVtaSubDetalleNewRecord(DataSet: TDataSet);
begin
  CDSVtaSubDetalleID.Value            := IBGFcVtaSubDet.IncrementFD(1);
  CDSVtaSubDetalleID_DETFAC.Value     := CDSVentaDetId.Value;
  CDSVtaSubDetalleID_CABFAC.Value     := CDSVentaCabID_FC.Value;
  CDSVtaSubDetalleTIPOCPBTE.Value     := CDSVentaCabTIPOCPBTE.Value;
  CDSVtaSubDetalleCLASECPBTE.Value    := CDSVentaCabCLASECPBTE.Value;
  CDSVtaSubDetalleFECHA.AsDateTime    := CDSVentaCabFECHAVTA.AsDateTime;
  CDSVtaSubDetalleNROCPBTE.Value      := CDSVentaCabNROCPBTE.Value;
  CDSVtaSubDetalleCODIGOARTICULO.Value:= CDSVentaDetCodigoArticulo.Value;
  CDSVtaSubDetalleDEPOSITO.Value      := CDSVentaCabDeposito.Value;
  CDSVtaSubDetalleTipo.Value:='E';
end;

procedure TDatosVentasCtdo.CDSVtaSubDetalleSERIESetText(Sender: TField;
  const Text: String);
var
 i:Integer;
// IngSerieConVta:String;
begin
   if  (Text<>'') and (Text[1]<>#13) Then
     begin
       // verifico si no fue ingresado en el comprobante
       i:=FormCpbteCtdo_2.CodigosSeries.IndexOf(UpperCase(Text));
       if i>=0 Then
         begin
           Sender.Clear;
           showmessage('Codigo de Serie Ingresado ...... ');
           SysUtils.Abort;
         end;

       if CDSVtaSubDetalle.State=dsBrowse Then
        CDSVtaSubDetalle.Append;
       Sender.AsString:=UpperCase(Trim(Text));
       if (CDSVentaDetCON_NRO_SERIE.Value='S') and (CDSVentaCabTIPOCPBTE.Value<>'NC') Then
         begin
           if CDSVtaSubDetalleTIPO.Value='E' Then
             begin
               QNroSerie.Close;
               QNroSerie.ParamByName('codigo').Value      := CDSVentaDetCodigoArticulo.Value;
               QNroSerie.ParamByName('codigoserie').Value := Sender.AsString;
//               DMMain_FD.QOpciones.Close;
//               DMMain_FD.QOpciones.ParamByName('opcion').Value:='SERIEDEPOSITO';
//               DMMain_FD.QOpciones.Open;
//               if DMMain_FD.QOpciones.Fields[0].AsString[1]='S' Then
			   if DMMain_FD.SerieDeposito then	
                 QNroSerie.ParamByName('deposito').Value:= -1
               else
                 QNroSerie.ParamByName('deposito').Value := CDSVentaDetDeposito.Value;

               // verifico si ingreso el serie en ausencia por medio de la vta
//               DMMain_FD.QOpciones.Close;
//               DMMain_FD.QOpciones.ParamByName('opcion').Value:='INGSERIEVTA';
//               DMMain_FD.QOpciones.Open;
//               IngSerieConVta:=DMMain_FD.QOpciones.Fields[0].AsString[1];
//               DMMain_FD.QOpciones.Close;
//			   IngSerieConVta	:=	DMMain_FD.IngSerieVta;	
               QNroSerie.Open;
               IF (QNroSerie.Fields[0].AsString='') and (DMMain_FD.SerieVta{='S'}) THEN
                 BEGIN
                   ShowMessage('Codigo Serie Inexistente, o en otro depósito, o ya fué entregado...');
                   if (MessageDlg('Continua con la carga igual, dando de alta el Nro.de Seria en forma automática...?',
                                   mtConfirmation, [mbYes, mbNo],0)= 1) Then
                     begin
                       Sender.Clear;
                       CDSVtaSubDetalleSERIE.AsString:='';
                       CDSVtaSubDetalleHACERINGRESO.Value:=False;
                     end
                   else
                     begin
                       CDSVtaSubDetalleHACERINGRESO.Value:=True;
                     end;
                 END
               else
                 IF (QNroSerie.Fields[0].AsString='') and (not DMMain_FD.SerieVta) THEN
                   begin
                     Sender.Clear;
                     if CDSVtaSubDetalle.RecordCount=1 Then
                       CDSVtaSubDetalle.Delete;
                   // if CDSVtaSubDetalle.State=dsBrowse then
                   //   CDSVtaSubDetalle.Edit;

                     CDSVtaSubDetalle.Cancel;
                    //CDSVtaSubDetalleSERIE.Clear;
                    //CDSVtaSubDetalleHACERINGRESO.Value:=False;
                     ShowMessage('No Encontrado...');
                     CDSVtaSubDetalle.Append;
                   end;
               QNroSerie.Close;
             end;
           //else
             //if CDSVtaSubDetalleTIPO.Value='I' Then
             //  begin
             //    QNroSerieNC.Close;
             //    QNroSerieNC.ParamByName('codigo').Value:=wwCDSVentaDetCodigoArticulo.Value;
             //    QNroSerieNC.ParamByName('codigoserie').Value:=Sender.AsString;
             //    QNroSerieNC.Open;
             //    IF (QNroSerieNC.Fields[0].AsString='')  THEN
             //      BEGIN
             //        ShowMessage('Codigo Serie Inexistente, ...');
             //        Sender.Clear;
             //      END;
             //    QNroSerieNC.Close;
             //  end;
         end
      else
        if (CDSVentaDetCON_NRO_SERIE.AsString ='N') and (CDSVentaDetCON_CODIGO_BARRA.AsString ='S') Then
          begin
            if DMMain_FD.SearchCodigoBarra(Sender.AsString)<> CDSVentaDetCodigoArticulo.AsString then
              BEGIN
                ShowMessage('Codigo Barra Inexistente...');
                Sender.Clear;
              END;
          end;
      // if CDSVtaSubDetalle.State<>dsBrowse Then
      //   CDSVtaSubDetalle.Post;
     end;
end;

procedure TDatosVentasCtdo.CDSVentaDetDESCUENTOSetText(Sender: TField;
  const Text: String);
VAR
  PrecioUnitario: Extended;
BEGIN
  if Text<>'' Then
    begin
      DMBuscadores.QDesctoArticulo.Close;
      DMBuscadores.QDesctoArticulo.ParamByName('Codigo').AsString:=CDSVentaDetCODIGOARTICULO.AsString;
      DMBuscadores.QDesctoArticulo.ParamByName('Fecha').AsDate   :=CDSVentaCabFECHAVTA.AsDateTime;
      DMBuscadores.QDesctoArticulo.Open;
      if DMBuscadores.QDesctoArticuloDESCUENTO.AsString<>'' then
         begin
           DMMain_FD.DsctoLineaTemp:=DMMain_FD.TopeDsctoLinea;
           DMMain_FD.TopeDsctoLinea:=DMBuscadores.QDesctoArticuloDESCUENTO.AsFloat;
         end;
      DMBuscadores.QDesctoArticulo.Close;

      Sender.AsString := Text;
      if (Sender.AsFloat > DMMain_FD.TopeDsctoLinea) then
        Sender.AsFloat:=DMMain_FD.TopeDsctoLinea;
      Sender.AsFloat  := RoundTo(Sender.AsFloat,-2);
      PrecioUnitario  := CDSVentaDetUNITARIO_TOTAL.AsFloat;
      if (CDSVentaDetModo_Gravamen.Value<>'') and (CDSVentaDetModo_Gravamen.Value[1] in ['G','M']) then
        if ((CDSVentaCabDesglozaIva.Value = 'S') and (FormCpbteCtdo_2.DiscriminaIva='N')) Then
          PrecioUnitario := CDSVentaDetUNITARIO_GRAVADO.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat + CDSVentaDetUNITARIO_EXENTO.ASFloat
        else
          if (CDSVentaCabDesglozaIva.Value = 'N')  Then
            PrecioUnitario := CDSVentaDetUNITARIO_GRAVADO.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat + CDSVentaDetUNITARIO_EXENTO.ASFloat;

      CDSVentaDetUnitario_TotalSetText(CDSVentaDetUNITARIO_TOTAL,FloatToStr(PrecioUnitario));
    end;
END;

procedure TDatosVentasCtdo.CDSVentaDetBeforeDelete(DataSet: TDataSet);
var Detalle:String;
begin
  if CDSVentaCab.State in [dsEdit] Then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
       // **** Ingreso en el Log File  **************
        Detalle:= 'Borrado de Linea Fac.Venta: '+
                  CDSVentaCabNROCPBTE.AsString+
                 ' Articulo: '+
                  CDSVentaDetCodigoArticulo.AsString +
                  ':'+
                  CDSVentaDetDetalle.AsString+
                 ' Importe: '+
                  FormatFloat('0.00',CDSVentaDetUnitario_Total.AsFloat);
        DMMain_FD.LogFileFD(0,4,Detalle,'FACVTA');
       // ******************************************
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('NO se ingreso registro en el LogFile....!');
      end;
    end;

  CDSVtaSubDetalle.First;
  while Not(CDSVtaSubDetalle.Eof) do
    begin
      CDSVtaSubDetalle.delete;
      CDSVtaSubDetalle.Next;
    end;
  if CDSVentaCabTIPOCPBTE.Value='FO' then
    if CDSVtaDetConsig.Locate('id_detfac',CDSVentaDetID.AsString,[]) Then
      CDSVtaDetConsig.Delete;
   AgregrarNovedadDetalle(DataSet,'D');
end;

procedure TDatosVentasCtdo.CDSVtaDetConsigID_MOV_RECEPCION_DETSetText(
  Sender: TField; const Text: string);
begin
  IF (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      if CDSVtaDetConsig.State=dsBrowse then
        CDSVtaDetConsig.Edit;
      Sender.AsString:=Text;
      IF NOT (AsignarRecepcion(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo No Valido');
        END;
    END;
end;

procedure TDatosVentasCtdo.CDSVtaDetConsigNewRecord(DataSet: TDataSet);
begin
  CDSVtaDetConsigID.Value               := ibgFcVtaConsig.IncrementFD(1);
  CDSVtaDetConsigID_CABFAC.Value        := CDSVentaDetID_CABFAC.Value;
  CDSVtaDetConsigID_DETFAC.Value        := CDSVentaDetID.Value;
  CDSVtaDetConsigCODIGO.Value           := CDSVentaDetCODIGOARTICULO.Value;
  CDSVtaDetConsigDETALLE.Value          := CDSVentaDetDETALLE.Value;
  CDSVtaDetConsigCANTIDAD.AsFloat       := CDSVentaDetCantidad.AsFloat;
  CDSVtaDetConsigCODIGO_PROVEEDOR.Value := CDSVentaCabPROVEEDOR.Value;
  CDSVtaDetConsigLIQUIDADA.Value        := 'N';
  CDSVtaDetConsigPRECIO_VTA.AsFloat     := CDSVentaDetUNITARIO_TOTAL.AsFloat;
  CDSVtaDetConsigPRECIO_COMPRA.AsFloat  := 0;
end;

procedure TDatosVentasCtdo.CDSVtaDetNovedadesNewRecord(DataSet: TDataSet);
begin
  CDSVtaDetNovedadesID.Value              := ibgDetNovedades.IncrementFD(1);
  CDSVtaDetNovedadesID_CABFAC.Value       := CDSVentaCabID_FC.AsInteger;
  CDSVtaDetNovedadesFECHA_HORA.AsDateTime := Now;
  CDSVtaDetNovedadesUSUARIO.AsString      := DMMain_FD.UsuarioActivo;
end;

procedure TDatosVentasCtdo.CDSVtaSubDetalleAfterPost(DataSet: TDataSet);
begin
  FormCpbteCtdo_2.CodigosSeries.Add(CDSVtaSubDetalleSERIE.AsString);
end;

procedure TDatosVentasCtdo.CDSVtaSubDetalleBeforeDelete(DataSet: TDataSet);
VAR i:Integer;
begin
  i:=FormCpbteCtdo_2.CodigosSeries.IndexOf(CDSVtaSubDetalleSERIE.AsString);
  if i>=0 Then FormCpbteCtdo_2.CodigosSeries.Delete(I);
end;

procedure TDatosVentasCtdo.CDSVtaSubDetalleBeforeEdit(DataSet: TDataSet);
begin
  CDSVtaSubDetalle.Delete;
end;

procedure TDatosVentasCtdo.CDSVentaDetBeforeInsert(DataSet: TDataSet);
begin
  IF ( CDSVentaDet.RecordCount >= Renglones) or (CDSVentaCabCON_GTIA_EXTENDIDA.Value='S') THEN
    BEGIN
      CDSVentaDet.Cancel;
      showMessage('no se puede ingreasr mas renglones');
      SysUtils.Abort;
    END;

end;

procedure TDatosVentasCtdo.CDSVentaDetAfterScroll(DataSet: TDataSet);
begin
  FormCpbteCtdo_2.sbEstado.Panels[1].Text:='';

  if CDSVentaDetUnitario_Total.AsFloat < CDSVentaDetCosto_Total.AsFloat Then
    FormCpbteCtdo_2.sbEstado.Panels[1].Text:='Precio por debajo del costo';
  FormCpbteCtdo_2.spProduccion.Enabled:= CDSVentaDetDE_PRODUCCION.Value='S';
end;

procedure TDatosVentasCtdo.CDSVentaCabNETOGRAV2GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR TotalGral,NetoTotal,Aux:Real;
begin
  if FormCpbteCtdo_2<>Nil Then
    begin
      TotalGral := CDSVentaCabTotal.AsFloat-CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat-CDSVentaCabNETOEXEN2.AsFloat;
      NetoTotal := CDSVentaCabNetoGrav2.AsFloat;

     // if CDSVentaCabNETOGRAV2.AsFloat>0 Then
     //   Var_TasaIVA:= ((TotalGral/NetoTotal)-1)*100
     // else
     //   Var_TasaIva:=0;

      Aux:=Sender.AsFloat;
      if (CDSVentaCabDESGLOZAIVA.Value='N') or (FormCpbteCtdo_2.DiscriminaIva='N') Then
        Aux:= Aux * (1+Var_TasaIva * 0.01);

      Aux:= RoundTo(Aux ,-4);
      Aux:= RoundTo(Aux ,-3);
      Aux:= RoundTo(Aux ,-2);
      Text:=FormatFloat(MascaraCabecera,Aux);
    end;
end;

//                  DMMain_FD.QTasaPercep_Retencion_IIBB.Close;
//                  DMMain_FD.QTasaPercep_Retencion_IIBB.ParamByName('cuit').Value:= QClientesNRO_DE_CUIT.AsString;
//                  DMMain_FD.QTasaPercep_Retencion_IIBB.Open;
//                  if DMMain_FD.QTasaPercep_Retencion_IIBBCUIT.AsString<>'' Then
                 //   begin
//                      if ((CDSVentaCabFECHAVTA.AsDateTime<= DMMain_FD.QTasaPercep_Retencion_IIBBHASTA.AsDateTime) and
//                         (CDSVentaCabFECHAVTA.AsDAteTime>= DMMain_FD.QTasaPercep_Retencion_IIBBDESDE.AsDateTime))
//                         then CDSVentaCabPERCEPCION_IB_TASA.AsFloat:=DMMain_FD.QTasaPercep_Retencion_IIBBTASA_PERCEPCION.AsFloat
//                      else
//                        begin
//                          DMMain_FD.Consulta_PadronIIBB(QClientesNRO_DE_CUIT.AsString,CDSVentaCabFECHAVTA.AsDateTime,Perc,Ret);
//                          CDSVentaCabPERCEPCION_IB_TASA.AsFloat:=Perc;
//                        end;
//                    end
//                  else
//                    begin
//                      DMMain_FD.Consulta_PadronIIBB(QClientesNRO_DE_CUIT.AsString,CDSVentaCabFECHAVTA.AsDateTime,Perc,Ret);
//                      CDSVentaCabPERCEPCION_IB_TASA.AsFloat:=Perc;
//                    end;



END.

