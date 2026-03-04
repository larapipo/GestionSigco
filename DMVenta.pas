UNIT DMVenta;

INTERFACE

USES
  Windows, Messages, Classes, Db, Forms, SysUtils,
  Dialogs, Librerias, Provider, DBClient, IBGenerator,
  Variants,Controls, FMTBcd, DBXCommon,Math, DateUtils,StrUtils,Types,
  Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;
TYPE
  TDatosVentas = CLASS(TDataModule)
    DSPVentaCab: TDataSetProvider;
    DSPStock: TDataSetProvider;
    DSPCondVenta: TDataSetProvider;
    DSPVentaDet: TDataSetProvider;
    DSPImpuestos: TDataSetProvider;
    DSPInscripcion: TDataSetProvider;
    DSPDeposito: TDataSetProvider;
    DSPIva: TDataSetProvider;
    DSPSucursal: TDataSetProvider;
    DSPLdr: TDataSetProvider;
    IBGFc_Det: TIBGenerator;
    IBGFc_Cab: TIBGenerator;
    IBGFc_Impuestos: TIBGenerator;
    DSListaCaja: TDataSource;
    DSListaPrecios: TDataSource;
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
    CDSVtaSubDetalleTIPO: TStringField;
    CDSVtaSubDetalleHACERINGRESO: TBooleanField;
    CDSDetalleXML: TClientDataSet;
    DSPVtaDetConsig: TDataSetProvider;
    CDSVtaDetConsig: TClientDataSet;
    DSVtaDetConsig: TDataSource;
    ibgFcVtaConsig: TIBGenerator;
    CDSVtaDetConsigID: TIntegerField;
    CDSVtaDetConsigID_CABFAC: TIntegerField;
    CDSVtaDetConsigID_DETFAC: TIntegerField;
    CDSVtaDetConsigCODIGO: TStringField;
    CDSVtaDetConsigID_MOV_RECEPCION_CAB: TIntegerField;
    CDSVtaDetConsigID_MOV_RECEPCION_DET: TIntegerField;
    CDSVtaDetConsigDETALLE: TStringField;
    CDSVtaDetConsigMUESTRARECEPCIONNRO: TStringField;
    CDSDeposito: TClientDataSet;
    CDSDepositoID: TIntegerField;
    CDSDepositoNOMBRE: TStringField;
    CDSDepositoSUCURSAL: TIntegerField;
    DSImpuestos: TDataSource;
    DSVentaDet: TDataSource;
    CDSVentaCab: TClientDataSet;
    CDSVentaCabLDR: TIntegerField;
    CDSVentaCabID_FC: TIntegerField;
    CDSVentaCabTIPOCPBTE: TStringField;
    CDSVentaCabNROCPBTE: TStringField;
    CDSVentaCabLETRAFAC: TStringField;
    CDSVentaCabNOMBRE: TStringField;
    CDSVentaCabRAZONSOCIAL: TStringField;
    CDSVentaCabDIRECCION: TStringField;
    CDSVentaCabCPOSTAL: TStringField;
    CDSVentaCabLOCALIDAD: TStringField;
    CDSVentaCabTIPOIVA: TIntegerField;
    CDSVentaCabCUIT: TStringField;
    CDSVentaCabANULADO: TStringField;
    CDSVentaCabIMPRESO: TStringField;
    CDSVentaCabOBSERVACION1: TStringField;
    CDSVentaCabOBSERVACION2: TStringField;
    CDSVentaCabCPTE_MANUAL: TStringField;
    CDSVentaCabFACTURANRO: TStringField;
    CDSVentaCabZONA: TIntegerField;
    CDSVentaCabCALCULA_SOBRETASA: TStringField;
    CDSVentaCabDESGLOZAIVA: TStringField;
    CDSVentaCabNROENTREGA: TIntegerField;
    CDSVentaCabMUESTRACONDVENTA: TStringField;
    CDSVentaCabMUESTRADEPOSITO: TStringField;
    CDSVentaCabMUESTRASUCURSAL: TStringField;
    CDSVentaCabMUESTRALDR: TStringField;
    CDSVentaCabMUESTRAIVA: TStringField;
    CDSVentaCabMUESTRACOMPROBANTE: TStringField;
    CDSVentaCabINGRESA_A_CTACTE: TStringField;
    CDSVentaCabINGRESA_LIBRO_IVA: TStringField;
    CDSVentaCabCLASECPBTE: TStringField;
    CDSVentaCabCODIGO: TStringField;
    CDSVentaCabSUCFAC: TStringField;
    CDSVentaCabNUMEROFAC: TStringField;
    CDSVentaCabCONDICIONVTA: TIntegerField;
    CDSVentaCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSVentaCabREDUCIDA: TStringField;
    CDSVentaCabMUESTRAVENDEDOR: TStringField;
    CDSVentaCabLIQUIDADA: TStringField;
    CDSVentaCabVENDEDOR: TStringField;
    CDSVentaCabSUCURSAL: TIntegerField;
    CDSVentaCabUSUARIO: TStringField;
    CDSVentaCabCAJA_POR_DEFECTO: TIntegerField;
    CDSVentaCabNC_CONTADO: TStringField;
    CDSVentaCabIDREMITO: TIntegerField;
    CDSVentaCabTIPO_REMITO: TStringField;
    CDSVentaCabMUESTRADIRECCIONLDR: TStringField;
    CDSVentaCabLISTAPRECIO: TIntegerField;
    CDSVentaCabNRO_Z: TIntegerField;
    CDSVentaCabRENGLONES: TSmallintField;
    CDSVentaCabNOTAPEDIDO_ID: TIntegerField;
    CDSVentaCabNOTAPEDIDO_NROCPBTE: TStringField;
    CDSVentaCabMUESTRAPROVEEDOR: TStringField;
    CDSVentaCabPOR_CTA_Y_ORDEN: TStringField;
    CDSVentaCabPROVEEDOR: TStringField;
    CDSVentaDet: TClientDataSet;
    CDSVentaDetCLASECPBTE: TStringField;
    CDSVentaDetGRAVADO_IB: TStringField;
    CDSVentaDetLOTE: TIntegerField;
    CDSVentaDetCON_NRO_SERIE: TStringField;
    CDSVentaDetCON_CODIGO_BARRA: TStringField;
    CDSVentaDetMUESTRAGRUPODETALLE: TStringField;
    CDSVentaCabFECHAVTO: TSQLTimeStampField;
    CDSVentaCabNETOEXEN1: TFloatField;
    CDSImpuestos: TClientDataSet;
    CDSImpuestosID_IMPUESTO: TIntegerField;
    CDSImpuestosID_FCVTACAB: TIntegerField;
    CDSImpuestosCODIGO_GRAVAMEN: TIntegerField;
    CDSImpuestosDETALLE: TStringField;
    CDSVentaCabNETOGRAV2: TFloatField;
    CDSVentaCabFECHAVTA: TSQLTimeStampField;
    CDSVentaCabVALORES_RECIBIDOS: TFloatField;
    CDSVentaCabCOMSIONVENDEDOR: TFloatField;
    CDSVentaCabPERCEPCION_IB_TASA: TFloatField;
    CDSVentaCabPERCEPCION_IB_IMPORTE: TFloatField;
    CDSVentaCabPERCIBE_IB: TStringField;
    CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField;
    CDSVentaCabFECHA_HORA: TSQLTimeStampField;
    CDSVentaCabN_OPERACION2: TFloatField;
    CDSVentaCabNETOGRAV1: TFloatField;
    CDSVentaCabDSTO: TFloatField;
    CDSVentaCabDSTOIMPORTE: TFloatField;
    CDSVentaCabTOTAL: TFloatField;
    CDSVentaCabDEBE: TFloatField;
    CDSVentaCabNETOEXEN2: TFloatField;
    CDSImpuestosIMPORTE: TFloatField;
    CDSImpuestosNETO: TFloatField;
    CDSImpuestosTASA: TFloatField;
    CDSVentaDetCANTIDAD: TFloatField;
    CDSVentaDetIVA_TASA: TFloatField;
    CDSVentaDetDESCUENTO: TFloatField;
    CDSVentaDetTOTAL: TFloatField;
    CDSVentaDetMARGEN: TFloatField;
    CDSVentaDetFECHAVTA: TSQLTimeStampField;
    CDSVentaDetMUESTRACONTENIDO: TFloatField;
    CDSVentaDetIB_TASA: TFloatField;
    CDSVentaDetCOTIZACION: TFloatField;
    CDSVentaDetRENGLON: TFloatField;
    CDSVentaDetIVA_SOBRETASA: TFloatField;
    CDSVtaSubDetalleFECHA: TSQLTimeStampField;
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
    CDSVtaDetConsigCANTIDAD: TFloatField;
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
    CDSVentaDetID_CABFAC: TIntegerField;
    CDSVentaDetTIPOCPBTE: TStringField;
    CDSVentaDetNROCPBTE: TStringField;
    CDSVentaDetCODIGOARTICULO: TStringField;
    CDSVentaDetTIPOIB_TASA: TIntegerField;
    CDSVentaDetPRECIO_EDITABLE: TStringField;
    CDSVentaDetID_MONEDA: TIntegerField;
    CDSVentaDetDETALLE_ADICIONAL: TStringField;
    CDSVentaDetGRUPO_DETALLE: TIntegerField;
    CDSVentaDetAFECTA_STOCK: TStringField;
    CDSVentaDetDETALLE: TStringField;
    CDSVentaDetUNIDAD: TStringField;
    CDSVentaDetDESGLOZAIVA: TStringField;
    CDSVentaDetMODO_GRAVAMEN: TStringField;
    CDSVentaDetTIPOIVA_TASA: TIntegerField;
    CDSVentaDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSVentaDetDEPOSITO: TIntegerField;
    CDSVentaDetCALCULA_SOBRETASA: TStringField;
    CDSVentaDetNRO: TIntegerField;
    CDSBuscaGrupoVtaDet: TClientDataSet;
    DSPBuscaGrupoVtaDet: TDataSetProvider;
    CDSBuscaGrupoVtaDetID: TIntegerField;
    CDSBuscaGrupoVtaDetGRUPO: TStringField;
    CDSLdr: TClientDataSet;
    CDSLdrCODIGO_CLIENTE: TStringField;
    CDSLdrCODIGO_LDR: TIntegerField;
    CDSLdrNOMBRE: TStringField;
    CDSLdrDIRECCION: TStringField;
    CDSLdrCPOSTAL: TStringField;
    CDSBuscaLdr: TClientDataSet;
    DSPBuscaLdr: TDataSetProvider;
    CDSBuscaLdrCODIGO_CLIENTE: TStringField;
    CDSBuscaLdrCODIGO_LDR: TIntegerField;
    CDSBuscaLdrNOMBRE: TStringField;
    CDSBuscaLdrDIRECCION: TStringField;
    CDSBuscaLdrCPOSTAL: TStringField;
    CDSBuscaRecepDetalle: TClientDataSet;
    DSPBuscaRecepDetalle: TDataSetProvider;
    CDSBuscaRecepDetalleID: TIntegerField;
    CDSBuscaRecepDetalleID_CABREC: TIntegerField;
    CDSBuscaRecepDetalleNROCPBTE: TStringField;
    CDSBuscaRecepDetalleFECHARECEPCION: TSQLTimeStampField;
    CDSInscripcion: TClientDataSet;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    DSPBuscaDeposito: TDataSetProvider;
    CDSBuscaDeposito: TClientDataSet;
    CDSBuscaDepositoNOMBRE: TStringField;
    CDSBuscaDepositoID: TIntegerField;
    CDSIva: TClientDataSet;
    CDSIvaCODIGO: TIntegerField;
    CDSIvaDESCRIPCION: TStringField;
    CDSIvaTASA: TFloatField;
    CDSListaPrecios: TClientDataSet;
    CDSListaPreciosID: TIntegerField;
    CDSListaPreciosNOMBRE: TStringField;
    DSPListaPrecios: TDataSetProvider;
    CDSBuscaCodigoBarra: TClientDataSet;
    DSPBuscaCodigoBarra: TDataSetProvider;
    CDSBuscaNroSerie: TClientDataSet;
    DSPBuscaNroSerie: TDataSetProvider;
    CDSListaPreciosF_PAGO: TIntegerField;
    CDSVtaDetConsigLIQUIDADA: TStringField;
    CDSVtaDetConsigPRECIO_VTA: TFloatField;
    CDSVtaDetConsigCODIGO_PROVEEDOR: TStringField;
    CDSVtaDetConsigPRECIO_COMPRA: TFloatField;
    CDSPersonal: TClientDataSet;
    DSPPersonal: TDataSetProvider;
    CDSPersonalNOMBRE: TStringField;
    spIngSerie: TFDStoredProc;
    CDSBuscaCodigoBarraCODIGOBARRA: TStringField;
    CDSBuscaCodigoBarraDETALLE_STK: TStringField;
    CDSBuscaCodigoBarraCODIGO_STK: TStringField;
    CDSVentaDetID: TIntegerField;
    CDSVentaCabDEPOSITO: TIntegerField;
    DSPBuscaVendedor: TDataSetProvider;
    CDSBuscaVendedor: TClientDataSet;
    CDSBuscaVendedorCODIGO: TStringField;
    CDSBuscaVendedorNOMBRE: TStringField;
    CDSBuscaVendedorCOMISION: TFloatField;
    CDSBuscaCondVenta: TClientDataSet;
    DSPBuscaCondVenta: TDataSetProvider;
    CDSBuscaCondVentaCODIGOCLIENTE: TStringField;
    CDSBuscaCondVentaCODIGOPAGO: TIntegerField;
    CDSBuscaCondVentaDESCUENTO: TFloatField;
    CDSBuscaCondVentaPOR_DEFECTO: TStringField;
    CDSBuscaCondVentaDETALLE: TStringField;
    CDSVentaCabTIPO_VTA: TStringField;
    CDSVentaCabMONEDA_CPBTE: TIntegerField;
    CDSVentaCabMONEDA_CPBTE_COTIZACION: TFloatField;
    CDSVentaCabPRESUPUESTO_ID: TIntegerField;
    CDSVentaCabPRESUPUESTO_NROCPBTE: TStringField;
    CDSVentaCabID_RECEPCION_GTIA: TIntegerField;
    CDSVentaCabFECHA_LIQUIDACION: TSQLTimeStampField;
    CDSVentaCabID_FC_CLON: TIntegerField;
    CDSVentaCabJURIDICION: TIntegerField;
    CDSVentaCabJURIDICION_LOCALIDAD: TIntegerField;
    DSPBuscaLodalidadJuri: TDataSetProvider;
    CDSBuscaLocalidadJur: TClientDataSet;
    DSBuscaLocalidadJuri: TDataSource;
    CDSBuscaLocalidadJurID: TIntegerField;
    CDSBuscaLocalidadJurID_JURIDICION: TIntegerField;
    CDSBuscaLocalidadJurLOCALIDAD: TStringField;
    CDSBuscaLocalidadJurPOR_DEFECTO: TStringField;
    CDSVentaDetIVA_TOTAL: TFloatField;
    CDSVentaDetTOTAL_GRAVADO: TFloatField;
    CDSVentaDetTOTAL_EXENTO: TFloatField;
    CDSVentaCabCON_GTIA_EXTENDIDA: TStringField;
    CDSVentaCabMESES_DE_GARANTIA: TIntegerField;
    CDSVentaDetMESES_GTIA: TIntegerField;
    CDSVentaCabPOLIZA: TStringField;
    CDSVentaCabVALOR_ASEGURADO: TFloatField;
    CDSCabeceraXML: TClientDataSet;
    CDSVentaDetMUESTRAMONEDA: TStringField;
    CDSVentaDetCOSTO_GRAVADO: TFloatField;
    CDSVentaDetCOSTO_EXENTO: TFloatField;
    CDSVentaDetCOSTO_TOTAL: TFloatField;
    CDSVentaDetUNITARIO_GRAVADO: TFloatField;
    CDSVentaDetUNITARIO_EXENTO: TFloatField;
    CDSVentaDetUNITARIO_TOTAL: TFloatField;
    CDSVentaDetIVA_UNITARIO: TFloatField;
    CDSVentaDetUNIDADES_GRAVADO: TFloatField;
    CDSVentaDetUNIDADES_EXENTO: TFloatField;
    CDSVentaDetUNIDADES_TOTAL: TFloatField;
    CDSVentaCabABONO_PERIODO: TStringField;
    CDSBuscaRecepDetalleUNITARIO_TOTAL: TFloatField;
    CDSVentaCabSALDO_ACTUAL_CC: TFloatField;
    CDSVentaCabMUESTRAMONEDACPBTE: TStringField;
    CDSVentaCabMUESTRASIGNOMONEDACPBTE: TStringField;
    CDSVentaCabID_NOTA_CAMBIO: TIntegerField;
    CDSVentaCabNUMERO_OPERACION: TStringField;
    CDSVentaCabMUESTRAESFRANQUICIA: TStringField;
    QRegFacturas: TFDQuery;
    DSPRegFacturas: TDataSetProvider;
    CDSRegFacturas: TClientDataSet;
    CDSRegFacturasLOTE: TIntegerField;
    CDSRegFacturasID_FAC: TIntegerField;
    CDSRegFacturasCLIENTE: TStringField;
    CDSRegFacturasFECHA: TSQLTimeStampField;
    CDSRegFacturasIMPORTE: TFloatField;
    CDSRegFacturasSALDO_CC: TFloatField;
    CDSRegFacturasTIPOCPBTE: TStringField;
    CDSRegFacturasCLACPBTE: TStringField;
    CDSRegFacturasNROCPBTE: TStringField;
    CDSRegFacturasCODIGOBARRA: TStringField;
    CDSRegFacturasCODIGOBARRA_2: TStringField;
    DSRegFacturas: TDataSource;
    DSPMov_Carnes: TDataSetProvider;
    CDSMov_Carnes: TClientDataSet;
    CDSMov_CarnesID: TIntegerField;
    CDSMov_CarnesID_DET: TIntegerField;
    CDSMov_CarnesID_CAB: TIntegerField;
    CDSMov_CarnesCLASIFICACION: TStringField;
    CDSMov_CarnesNRO_TROPA: TStringField;
    CDSMov_CarnesT_KILOS: TIntegerField;
    CDSMov_CarnesT_MEDIAS: TIntegerField;
    DSMov_Carnes: TDataSource;
    ibgMov_Carne: TIBGenerator;
    CDSMov_CarnesMEDIA_1: TIntegerField;
    CDSMov_CarnesMEDIA_2: TIntegerField;
    CDSMov_CarnesMEDIA_3: TIntegerField;
    CDSMov_CarnesMEDIA_4: TIntegerField;
    CDSMov_CarnesMEDIA_5: TIntegerField;
    CDSMov_CarnesMEDIA_6: TIntegerField;
    CDSMov_CarnesMEDIA_7: TIntegerField;
    CDSMov_CarnesMEDIA_8: TIntegerField;
    DSPRtos: TDataSetProvider;
    CDSRtos: TClientDataSet;
    CDSRtosID_RTO: TIntegerField;
    CDSRtosTIPOCPBTE: TStringField;
    CDSRtosCLASECPBTE: TStringField;
    CDSRtosNROCPBTE: TStringField;
    spCambiaTipoVta: TFDStoredProc;
    QRegFacturasLOTE: TIntegerField;
    QRegFacturasID_FAC: TIntegerField;
    QRegFacturasCLIENTE: TStringField;
    QRegFacturasFECHA: TSQLTimeStampField;
    QRegFacturasIMPORTE: TFloatField;
    QRegFacturasSALDO_CC: TFloatField;
    QRegFacturasTIPOCPBTE: TStringField;
    QRegFacturasCLACPBTE: TStringField;
    QRegFacturasNROCPBTE: TStringField;
    QRegFacturasCODIGOBARRA: TStringField;
    QRegFacturasCODIGOBARRA_2: TStringField;
    CDSVentaCabCAE: TStringField;
    CDSVentaCabCAE_VENCIMIENTO: TSQLTimeStampField;
    CDSVentaCabFACTURA_ELECTRONICA: TStringField;
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
    CDSVentaDetCODIGOBARRA: TStringField;
    CDSVentaCabCANT_BULTOS: TIntegerField;
    CDSVentaDetMUESTRACODALTERNATIVO: TStringField;
    CDSVentaDetDE_PRODUCCION: TStringField;
    CDSFc_Prod_Det: TClientDataSet;
    DSPFc_Prod_Det: TDataSetProvider;
    DSFc_Prod_Det: TDataSource;
    CDSFc_Prod_Mov: TClientDataSet;
    DSPFc_Prod_Mov: TDataSetProvider;
    DSFc_Prod_Mov: TDataSource;
    CDSFc_Prod_MovID: TIntegerField;
    CDSFc_Prod_MovID_FC_DET: TIntegerField;
    CDSFc_Prod_MovCODIGO: TStringField;
    CDSFc_Prod_MovDETALLE: TStringField;
    CDSFc_Prod_MovCANTIDAD_UNITARIA: TFloatField;
    CDSFc_Prod_MovCANTIDAD_ESTIMADA: TFloatField;
    CDSFc_Prod_MovCANTIDAD_REAL: TFloatField;
    CDSFc_Prod_MovDEPOSITO_ORIGEN: TIntegerField;
    CDSFc_Prod_MovAFECTA_STOCK: TStringField;
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
    CDSStockProdDetalle: TClientDataSet;
    DSPStockProdDetalle: TDataSetProvider;
    ibgId_mov_prod: TIBGenerator;
    IbgId_Det_Pro: TIBGenerator;
    CDSStockProdDetalleCODIGO: TStringField;
    CDSStockProdDetalleDETALLE: TStringField;
    CDSStockProdDetalleCODIGO_STK: TStringField;
    CDSStockProdDetalleDETALLE_1: TStringField;
    CDSStockProdDetalleAFECTA_STOCK: TStringField;
    CDSStockGTIA_MESES: TIntegerField;
    CDSVentaDetUNITARIO_TOTAL_OLD: TFloatField;
    CDSVentaDetUNITARIO_IVA_OLD: TFloatField;
    CDSVentaDetUNI_C_REC: TStringField;
    CDSVentaDetITEM_OCOMPRA: TIntegerField;
    CDSVentaDetMUESTRAGANANCIA: TFloatField;
    CDSVentaCabMUESTRACOORPORATIVO: TStringField;
    CDSVentaCabCUOTAS_CC: TIntegerField;
    CDSVentaCabINTERVALO_CUOTA: TIntegerField;
    CDSVentaDetMUESTRAGTIAOFICIAL: TStringField;
    CDSVentaCabMUESTRACODIGOAFIP: TStringField;
    CDSVentaCabMUESTRAZONA: TStringField;
    CDSVentaCabID_GARANTE: TIntegerField;
    CDSVentaCabPAGO_A_CTA: TFloatField;
    CDSVentaCabID_FC_CON_ADEL: TIntegerField;
    CDSVentaCabPRIMER_VTO: TSQLTimeStampField;
    CDSVentaCabANTICIPO_VTO: TSQLTimeStampField;
    CDSVentaCabMUESTRAOBSCLIENTE1: TStringField;
    CDSVentaCabMUESTRAOBSCLIENTE2: TStringField;
    DSPVentaLote: TDataSetProvider;
    CDSVentaLote: TClientDataSet;
    DSVentaLote: TDataSource;
    IBGVtaLote: TIBGenerator;
    CDSVentaLoteID: TIntegerField;
    CDSVentaLoteID_DET: TIntegerField;
    CDSVentaLoteID_FC: TIntegerField;
    CDSVentaLoteCODIGO: TStringField;
    CDSVentaLoteLOTE: TStringField;
    CDSVentaLoteCANTIDAD: TFloatField;
    CDSVentaLoteFECHA: TSQLTimeStampField;
    CDSVentaLoteFECHAVTO: TSQLTimeStampField;
    CDSVentaLoteDEPOSITO: TIntegerField;
    CDSVentaLoteTIPO_COMPROB: TStringField;
    CDSStockCONTROL_TRAZABILIDAD: TStringField;
    CDSVentaDetCONTROL_TRAZABILIDAD: TStringField;
    CDSVentaLoteID_LOTE: TIntegerField;
    CDSBuscaLotes: TClientDataSet;
    DSPBuscaLotes: TDataSetProvider;
    CDSBuscaLotesCODIGO: TStringField;
    CDSBuscaLotesLOTE: TStringField;
    CDSBuscaLotesDESPACHO: TStringField;
    CDSBuscaLotesSALDO: TFloatField;
    CDSBuscaLotesID: TIntegerField;
    CDSVentaCabMUESTRAACOPIO: TIntegerField;
    CDSVentaCabCENTRO_COSTO: TIntegerField;
    CDSVentaCabID_PEDIDO_MORPHI: TIntegerField;
    CDSVentaCabMUESTRANOMBRECOMPLETO: TStringField;
    CDSVentaLoteDESPACHO: TStringField;
    CDSBuscaNroSerieID: TIntegerField;
    CDSBuscaNroSerieCODIGOSERIE: TStringField;
    CDSVentaDetPRESENTACION_CANT: TFloatField;
    CDSVentaDetMARGE: TAggregateField;
    CDSVentaDetSUMATOTAL: TAggregateField;
    CDSVentaDetSUMACOSTO: TAggregateField;
    CDSExistencia: TClientDataSet;
    CDSExistenciaCODIGO_STK: TStringField;
    CDSExistenciaDETALLE_STK: TStringField;
    CDSExistenciaFISICO: TFloatField;
    CDSExistenciaCOMPROMETIDO: TFloatField;
    CDSExistenciaSALDO: TFloatField;
    CDSExistenciaDEPOSITO_STK: TIntegerField;
    CDSExistenciaEN_TRANSITO: TFloatField;
    CDSExistenciaDEPOSITO_NOMBRE: TStringField;
    CDSExistenciaFULTAJUSTE: TSQLTimeStampField;
    DSExistencia: TDataSource;
    DSPExistencia: TDataSetProvider;
    CDSVentaCabNRORTO: TStringField;
    CDSVentaCabNETONOGRAV1: TFloatField;
    CDSVentaCabNETONOGRAV2: TFloatField;
    CDSVentaDetCANTIDAD_UNIDADES: TFloatField;
    CDSBuscaNroSerieCODIGO_STK: TStringField;
    CDSBuscaNroSerieFECHAINGRESO: TSQLTimeStampField;
    CDSBuscaNroSerieFECHAEGRESO: TSQLTimeStampField;
    CDSBuscaNroSerieDEPOSITO: TIntegerField;
    CDSVentaCabMUESTRAIDABONO: TIntegerField;
    CDSVentaCabMUESTRANROABONO: TStringField;
    spReHaceMov: TFDStoredProc;
    CDSSucursalGENERA_XML_COMUN: TStringField;
    CDSSucursalHOST: TStringField;
    CDSSucursalCERTIFICADO_ELEC: TStringField;
    CDSSucursalCUIT: TStringField;
    CDSSucursalRAZONSOCIAL: TStringField;
    CDSVentaCabFECHA_FISCAL: TSQLTimeStampField;
    CDSVentaCabENVIAR_CPTE_MAIL: TStringField;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    CDSVentaDetACOPIABLE: TStringField;
    CDSVentaCabID_PAIS: TSmallintField;
    CDSVentaCabDOC_ADUANERO: TStringField;
    CDSVentaCabFECHA_CARGA: TSQLTimeStampField;
    CDSVentaCabNRO_INTERNO: TStringField;
    CDSVentaCabFOB_TOTAL: TFloatField;
    CDSVentaCabNOTAS: TStringField;
    QLstMonedas: TFDQuery;
    DSLstMonedas: TDataSource;
    QLstMonedasID: TIntegerField;
    QLstMonedasMONEDA: TStringField;
    QLstMonedasCOTIZACION: TFloatField;
    QLstMonedasSIGNO: TStringField;
    QLstMonedasORDEN: TSmallintField;
    QLstMonedasCOTIZACION_COMPRA: TFloatField;
    QMonedas: TFDQuery;
    QMonedasID: TIntegerField;
    QMonedasMONEDA: TStringField;
    QMonedasCOTIZACION: TFloatField;
    QMonedasSIGNO: TStringField;
    QMonedasORDEN: TSmallintField;
    QMonedasCOTIZACION_COMPRA: TFloatField;
    CDSVentaCabPERMISO_EMBARQUE: TStringField;
    QListaCaja: TFDQuery;
    QListaCajaID_CAJA: TIntegerField;
    QListaCajaID_CUENTA_CAJA: TIntegerField;
    QListaCajaNUMEROCAJA: TIntegerField;
    QListaCajaMUESTRACAJA: TStringField;
    QListaCajaESTADO: TIntegerField;
    QProveedores: TFDQuery;
    QProveedoresCODIGO: TStringField;
    QProveedoresNOMBRE: TStringField;
    QProveedoresRAZON_SOCIAL: TStringField;
    QProveedoresN_DE_CUENTA: TStringField;
    QProveedoresID_COD_POSTAL: TIntegerField;
    QProveedoresCOD_POSTAL: TStringField;
    QProveedoresLOCALIDAD: TStringField;
    QProveedoresDIRECCION: TStringField;
    QProveedoresTELEFONO_1: TStringField;
    QProveedoresTELEFONO_2: TStringField;
    QProveedoresCONDICION_IVA: TIntegerField;
    QProveedoresN_DE_CUIT: TStringField;
    QProveedoresACTIVO: TStringField;
    QProveedoresRETIENE_IVA: TStringField;
    QProveedoresRETIENE_IB: TStringField;
    QProveedoresRETIENE_GANANCIAS: TStringField;
    QProveedoresIVA_SERVICIOS: TStringField;
    QProveedoresPRECIOS_CON_IVA: TStringField;
    QProveedoresOBSERVACIONES: TMemoField;
    QProveedoresNOMBRE_REPRESENTANTE: TStringField;
    QProveedoresDIRECCION_REPRESENTANTE: TStringField;
    QProveedoresTELEFONO_REPRESENTANTE: TStringField;
    QProveedoresTIPO_PROVEEDOR: TStringField;
    QProveedoresSALDO_INICIAL: TFloatField;
    QProveedoresID_PERC_IVA: TIntegerField;
    QProveedoresID_PERC_IBB: TIntegerField;
    QProveedoresID_PERC_IBB_2: TIntegerField;
    QProveedoresID_PERC_IBB_3: TIntegerField;
    QProveedoresRUBRO: TIntegerField;
    QProveedoresID_FACTURAPORDEFECTO: TIntegerField;
    QProveedoresID_FACTURACTDODEFECTO: TIntegerField;
    QProveedoresEXENTO_GANACIA: TStringField;
    QProveedoresCODIGO_REGIMEN_RET_GANACIA: TIntegerField;
    QProveedoresEXENTO_RETENCION_IB: TStringField;
    QProveedoresID_TASA_RETENCION_IB: TIntegerField;
    QProveedoresNRO_IIBB: TStringField;
    QProveedoresCORREO: TStringField;
    QProveedoresCONV_MULTI: TStringField;
    QProveedoresMONEDA_PRECIOS: TIntegerField;
    QProveedoresRUBRO_GASTO: TStringField;
    QProveedoresSUB_RUB_GASTOS: TStringField;
    QProveedoresCON_OCOMPRA: TStringField;
    QProveedoresAUTORIZADO_NOMBRE: TStringField;
    QProveedoresAUTORIZADO_TIPODOC: TStringField;
    QProveedoresAUTORIZADO_NRODOC: TStringField;
    QClientes: TFDQuery;
    QBuscaListaPrecio: TFDQuery;
    QBuscaListaPrecioID: TIntegerField;
    QSaldos: TFDQuery;
    QSaldosCODIGO: TStringField;
    QSaldosNOMBRE: TStringField;
    QSaldosTOTAL: TFloatField;
    QSaldosSALDO: TFloatField;
    QSaldosVENCIDO30: TFloatField;
    QSaldosVENCIDO60: TFloatField;
    QSaldosVENCIDO90: TFloatField;
    QSaldosMUYVENCIDO: TFloatField;
    QSaldosANTICIPOS: TFloatField;
    QLocalidadJurDefecto: TFDQuery;
    QLocalidadJurDefectoID: TIntegerField;
    QLocalidadJurDefectoID_JURIDICION: TIntegerField;
    QRecepciones: TFDQuery;
    QRecepcionesID: TIntegerField;
    QRecepcionesID_CABREC: TIntegerField;
    QRecepcionesNROCPBTE: TStringField;
    QRecepcionesCANTIDAD_SALDO: TFloatField;
    QRecepcionesUNITARIO_TOTAL: TFloatField;
    CDSVentaCabCUIT_PAIS: TStringField;
    CDSVentaCabDESTINO_DOCUMENTO: TStringField;
    CDSVentaCabINCOTERMS: TStringField;
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
    QBuscaRtos: TFDQuery;
    QBuscaRtosID_RTO: TIntegerField;
    QBuscaRtosNROCPBTE: TStringField;
    CDSStockIVA_MODIFICADO: TStringField;
    CDSVentaDetMUESTRAIVAMODIFICADO: TStringField;
    CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    CDSEmpresaCBU: TStringField;
    CDSVentaCabCBU: TStringField;
    QStockProdDet: TFDQuery;
    CDSStockProdDetalleCANTIDAD_REAL: TFloatField;
    CDSStockProdDetalleCANTIDAD_FISICA: TFloatField;
    CDSVentaCabMUESTRAUSACHE: TStringField;
    CDSVentaCabASOCIADO_TIPO: TIntegerField;
    CDSVentaCabASOCIADO_PTOVTA: TIntegerField;
    CDSVentaCabASOCIADO_NRO: TFloatField;
    CDSVentaCabASOCIADO_CPTEFCH: TStringField;
    CDSVentaCabINF_X: TStringField;
    CDSVentaCabVUELTO: TFloatField;
    QBuscaRecDetalle: TFDQuery;
    CDSBuscaRecepDetalleCANTIDAD_SALDO: TFloatField;
    QRecepMayor: TFDQuery;
    QRecepMayorID: TIntegerField;
    QRecepMayorID_CABREC: TIntegerField;
    QRecepMayorNROCPBTE: TStringField;
    QRecepMayorCANTIDAD_SALDO: TFloatField;
    QRecepMayorCODIGO: TStringField;
    QRecepMayorRAZONSOCIAL: TStringField;
    QRtos: TFDQuery;
    QSaldosIMPORTEULTIMOPAGO: TFloatField;
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
    QClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    QClientesFECHAALTA: TSQLTimeStampField;
    QClientesSUCURSAL: TIntegerField;
    QClientesZONA: TIntegerField;
    QClientesVENDEDOR: TStringField;
    QClientesULTIMOPAGO: TSQLTimeStampField;
    QClientesLISTAPRECIOS: TIntegerField;
    QClientesFECHANACIMIENTO: TSQLTimeStampField;
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
    QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
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
    QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
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
    QClientesDESDE_F8001: TSQLTimeStampField;
    QClientesHASTA_F8001: TSQLTimeStampField;
    QClientesID_TARJETACREDITO: TIntegerField;
    QClientesNRO_TARJETA_C: TStringField;
    QClientesNRO_SEG_TC: TStringField;
    QClientesID_BANCO: TIntegerField;
    QClientesNRO_CTA_BCO: TStringField;
    QClientesCODIGO_COORPORATIVO: TStringField;
    QClientesCUENTA_OPERATIVA: TStringField;
    QClientesTARJETA_CLIENTE: TStringField;
    QClientesVENCIMIENTO_TC: TSQLTimeStampField;
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
    QClientesID_ADMINISTRACION: TIntegerField;
    QClientesMUESTRAZONA: TStringField;
    QClientesMUESTRAIDGARANTE: TIntegerField;
    QClientesMUESTRAFACTURADEF: TStringField;
    QClientesMUESTRANCREDITODEF: TStringField;
    QClientesMUESTRANDEBITODEF: TStringField;
    QBuscaRtosFECHAVTA: TSQLTimeStampField;
    QProveedoresFECHAULTIMACOMPRA: TSQLTimeStampField;
    QProveedoresFECHAALTA: TSQLTimeStampField;
    QSaldosULTIMOPAGO: TSQLTimeStampField;
    QRecepMayorFECHARECEPCION: TSQLTimeStampField;
    CDSRtosFECHAVTA: TSQLTimeStampField;
    QRecepcionesFECHARECEPCION: TSQLTimeStampField;
    QBuscaAjustes: TFDQuery;
    QBuscaAjustesID_AJUSTECC: TIntegerField;
    QCodigoBarra: TFDQuery;
    QCodigoBarraMAX: TStringField;
    CDSVentaDetPRESENTACION_UNIDAD: TStringField;
    CDSVentaCabTIPO_OPERACION_EXPO: TStringField;
    CDSVentaCabMEDIO_TRANSPORTE_EXPO: TStringField;
    CDSVentaCabID_ADUANA: TIntegerField;
    CDSVentaCabREFERENCIA_EXPO: TStringField;
    CDSVentaCabCAMBIO_EXPO: TFloatField;
    CDSVentaCabID_TRANSPORTE: TIntegerField;
    CDSVentaCabMUESTRATRANSPORTE: TStringField;
    DSPTransporte: TDataSetProvider;
    CDSTransporte: TClientDataSet;
    QTransportes: TFDQuery;
    CDSTransporteNOMBRE: TStringField;
    CDSTransporteID: TIntegerField;
    QAduanas: TFDQuery;
    DSPAduanas: TDataSetProvider;
    CDSAduanaOrig: TClientDataSet;
    CDSAduanaOrigID: TIntegerField;
    CDSAduanaOrigCODIGO: TIntegerField;
    CDSAduanaOrigADUANA: TStringField;
    DSAduanaOrig: TDataSource;
    CDSVentaCabHONORARIOS: TFloatField;
    CDSVentaCabHONORARIOS_PROCENTAJ: TFloatField;
    CDSVentaCabDEDUCE_GASTOS: TStringField;
    CDSVentaCabID_DESTINO: TIntegerField;
    DSPPaises: TDataSetProvider;
    CDSPaises: TClientDataSet;
    QPaises: TFDQuery;
    CDSPaisesPAIS: TStringField;
    CDSPaisesID: TIntegerField;
    DSPaises: TDataSource;
    CDSVentaDetID_DET_REMITO: TIntegerField;
    QBuscadorNotas: TFDQuery;
    DSPBuscadorNotas: TDataSetProvider;
    CDSBuscadorNotas: TClientDataSet;
    CDSBuscadorNotasID: TIntegerField;
    CDSBuscadorNotasCODIGO: TIntegerField;
    CDSBuscadorNotasDETALLE: TStringField;
    CDSBuscadorNotasPORDEFECTO: TStringField;
    QNotas: TFDQuery;
    DSPNotas: TDataSetProvider;
    CDSNotas: TClientDataSet;
    QNroSerieNC: TFDQuery;
    QNroSerieNCID: TIntegerField;
    QNroSerieNCCODIGO_STK: TStringField;
    QNroSerieNCCODIGOSERIE: TStringField;
    QNroSerieNCFECHAINGRESO: TSQLTimeStampField;
    QNroSerieNCFECHAEGRESO: TSQLTimeStampField;
    QNroSerie: TFDQuery;
    CDSNotasCODIGO: TIntegerField;
    CDSNotasDETALLE: TStringField;
    CDSVentaDetUNITARIO_NETO_TOTAL: TFloatField;
    QComprobUSAR_CAEA: TStringField;
    CDSVentaCabCON_CAEA: TStringField;
    CDSVentaCabCAEA_INFORMADO: TStringField;
    QBuscaCodBarra: TFDQuery;
    QBuscaCodBarraID: TIntegerField;
    QBuscaCodBarraCODIGO_STK: TStringField;
    QBuscaCodBarraCODIGOBARRA: TStringField;
    QBuscaCodBarraPRESENTACION: TIntegerField;
    QBuscaCodBarraPRESENTACION_CANTIDAD: TFloatField;
    CDSVentaCabASOCIADO_ID_CPBTE: TIntegerField;
    CDSVentaCabFACTURA_DE_ANTICIPO: TStringField;
    CDSPersonalCOMISION: TFloatField;
    CDSListaPreciosEXCLUSIVO_EFECTIVO: TStringField;
    CDSPersonalMUESTRADEPOSITO: TIntegerField;
    CDSVentaDetRUBRO_STK: TStringField;
    CDSVentaDetSUBRUBRO_STK: TStringField;
    CDSVentaDetCTA_ORDEN_ID_RECEPCION: TIntegerField;
    CDSVentaDetCTA_ORDEN_NROCPBTE: TStringField;
    CDSVentaDetCTA_ORDEN_TIPOCPBTE: TStringField;
    CDSVentaDetCTA_ORDEN_CALSECPBTE: TStringField;
    CDSVentaCabQRIMAGE: TBlobField;
    CDSVentaCabCONDICIONPEDIDO: TIntegerField;
    QBuscaAjustesULTID: TIntegerField;
    CDSVentaCabKEY_PLANER: TStringField;
    QVentasEntregas: TFDQuery;
    DSPVentasEntregas: TDataSetProvider;
    CDSVentasEntregas: TClientDataSet;
    CDSVentasEntregasID_DET: TIntegerField;
    CDSVentasEntregasID_CAB: TIntegerField;
    CDSVentasEntregasMUESTRAFEHCA: TSQLTimeStampField;
    CDSVentasEntregasMUESTRATIPOCPBTE: TStringField;
    CDSVentasEntregasMUESTRANROCPBTE: TStringField;
    CDSVentasEntregasCODIGO: TStringField;
    CDSVentasEntregasMUESTRADETALLE: TStringField;
    CDSVentasEntregasCANTIDAD: TFloatField;
    CDSVentasEntregasCANTIDAD_RECIBIDA: TFloatField;
    CDSVentasEntregasDIFERENCIA: TFloatField;
    CDSVentasEntregasMUESTRANROCOMPLETO: TStringField;
    DSVentasEntregas: TDataSource;
    CDSVentaDetMUESTADIFERENCIAENTREGA: TFloatField;
    CDSVentaDetMUESTRAORDENPRODUCCION: TIntegerField;
    CDSVentaCabLOTEAFIP: TStringField;
    CDSVentaCabMUESTRAID_NC: TIntegerField;
    CDSVentaCabMUESTRANRONC: TStringField;
    CDSVentaCabMUESTRATIPONC: TStringField;
    CDSVentaCabMUESTRACLASENC: TStringField;
    mtRemitosFacturados: TFDMemTable;
    mtRemitosFacturadosID_RTO: TIntegerField;
    mtRemitosFacturadosNROFACT: TStringField;
    mtRemitosFacturadosNROREMITO: TStringField;
    mtRemitosFacturadosID_FAC: TIntegerField;
    QAsociados: TFDQuery;
    CDSAsociados: TClientDataSet;
    DSPAsociados: TDataSetProvider;
    DSAsociados: TDataSource;
    QAsociadosID: TIntegerField;
    QAsociadosID_CAB: TIntegerField;
    QAsociadosASOCIADO_TIPO: TIntegerField;
    QAsociadosASOCIADO_PTOVTA: TIntegerField;
    QAsociadosASOCIADO_NRO: TFloatField;
    QAsociadosASOCIADO_CPTEFECHA: TStringField;
    CDSAsociadosID: TIntegerField;
    CDSAsociadosID_CAB: TIntegerField;
    CDSAsociadosASOCIADO_TIPO: TIntegerField;
    CDSAsociadosASOCIADO_PTOVTA: TIntegerField;
    CDSAsociadosASOCIADO_NRO: TFloatField;
    CDSAsociadosASOCIADO_CPTEFECHA: TStringField;
    ibgId_Asociado: TIBGenerator;
    CDSEmpresaTASA_RET_IIBB: TFloatField;
    CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    CDSEmpresaPUNITORIOS: TFloatField;
    CDSEmpresaNRO_RENSPA: TStringField;
    CDSEmpresaNRO_RUCA: TIntegerField;
    CDSEmpresaCUIT_AUTORIZADO: TStringField;
    CDSEmpresaNOMBRE_AUTORIZADO: TStringField;
    CDSEmpresaID_CPOSTAL: TIntegerField;
    CDSEmpresaCOD_ACTIVIDAD: TStringField;
    CDSVentaCabCODIGO_ACTIVIDAD: TStringField;
    QCompAFIP: TFDQuery;
    CDSCompAFIP: TClientDataSet;
    DSPCOmpAFIP: TDataSetProvider;
    CDSCompAFIPDETALLE: TStringField;
    CDSCompAFIPTIPO: TStringField;
    CDSCompAFIPCOD: TIntegerField;
    CDSAsociadosTIPO: TStringField;
    CDSEmpresaNOMBRE_FANTASIA: TStringField;
    CDSEmpresaCODIGO_COT: TStringField;
    CDSEmpresaDIRECCION_NRO: TStringField;
    CDSVentaCabTRANSPORTE_UNIDAD: TIntegerField;
    CDSVentaCabTRANSPORTE_ADICIONAL: TIntegerField;
    CDSVentaCabID_CHOFER: TIntegerField;
    CDSVentaCabMUESTRACHOFER: TStringField;
    CDSVentaCabMUESTRATPDOCCHOFER: TStringField;
    CDSVentaCabMUESTRANRDOCCHOFER: TStringField;
    CDSVentaCabMUESTRADOMINIOUNIDADTR: TStringField;
    CDSVentaCabMUESTRAAUXILIARTR: TStringField;
    CDSVentaCabMUESTRADIRTRANSPORTE: TStringField;
    CDSVentaCabMUESTRATETRANSPORTE: TStringField;
    CDSVentaCabMUESTRALOCALITRANSPORTE: TStringField;
    CDSVentaCabMUESTRANOMBRETRANSPORTE: TStringField;
    CDSVentaCabMUESTRACONDIVATRANSPORTE: TStringField;
    CDSPercepcionIVA: TClientDataSet;
    DSPercepcionIVA: TDataSource;
    DSPPercepcionIVA: TDataSetProvider;
    CDSPercepcionIVAID_PERCEPCION: TIntegerField;
    CDSPercepcionIVACODIGO_PERCEPCION: TIntegerField;
    CDSPercepcionIVADETALLE: TStringField;
    CDSPercepcionIVAID_FCVTACAB: TIntegerField;
    CDSPercepcionIVANETO: TFloatField;
    CDSPercepcionIVATASA: TFloatField;
    CDSPercepcionIVAIMPORTE: TFloatField;
    CDSPercepcionIVACODIGOREGIMEN: TIntegerField;
    IBGPercepcionIVA: TIBGenerator;
    CDSVentaCabPERCIBE_IVA: TStringField;
    CDSVentaCabMINIMO_PERCI_IVA: TFloatField;
    CDSVentaDetPERCIBE_IVA: TStringField;
    CDSVentaDetTASA_PERCEP_IVA: TFloatField;
    CDSStockPERCIBE_IVA: TStringField;
    CDSStockID_TASA_PERCEP_IVA: TIntegerField;
    CDSVentaDetID_TASA_PERCEPCION_IVA: TIntegerField;
    CDSVentaDetPERCEPCION_IVA_DIFERENCIAL: TStringField;
    CDSEmpresaAG_PERCEPCION_IVA: TStringField;
    CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField;
    CDSStockAPLICA_TASA_DIF: TStringField;
    CDSVentaCabMUESTRA_UNI_TRANSPORTE: TStringField;
    CDSTransporteDIRECCION: TStringField;
    CDSTransporteTELEFONO: TStringField;
    CDSTransporteLOCALIDAD: TStringField;
    CDSTransporteCONDICION_IVA: TIntegerField;
    CDSTransporteCUIT: TStringField;
    DSTransporte: TDataSource;
    CDSVentaCabMUESTRACUITTRANSPORTE: TStringField;
    CDSVentaCabCOT: TStringField;
    CDSVentaCabMUESTRADIRECCION_CALLE: TStringField;
    CDSVentaCabMUESTRADIRECCION_NRO: TStringField;
    CDSVentaCabMUESTRADIRECCION_PISO: TStringField;
    CDSVentaCabMUESTRADIRECCION_DEPTO: TStringField;
    CDSVentaCabLETRACOT: TStringField;
    CDSStockPLU_SECCION: TStringField;
    QClientesPERCIBE_IVA: TStringField;
    CDSVentaDetPRESENTACION_TOLERANCIA: TFloatField;
    CDSStockPRESENTACION_TOLERANCIA: TFloatField;
    CDSSucursalCOT_CLAVE: TStringField;
    CDSSucursalCOT_CUIT: TStringField;
    CDSVentaCabMUESTRANOMBREUSUARIOREAL: TStringField;
    CDSBuscaLocalidadJurPROVINCIA: TStringField;
    CDSSucursalAPLICA_LEY15311: TStringField;
    CDSVentaCabMUESTRAAPLICALEY15311: TStringField;
    CDSVentaCabID_OBRA: TIntegerField;
    CDSVentaCabMUESTRAOBRA: TStringField;
    QMarcarRtoFacturado: TFDQuery;
    CDSVentaCabPROCESADA: TStringField;
    QPromo_Cantidad: TFDQuery;
    QPromo_CantidadCODIGO: TStringField;
    QPromo_CantidadCANT_DESDE: TFloatField;
    QPromo_CantidadDESCTO: TFloatField;
    QPromo_CantidadMODO: TStringField;
    QPromo_CantidadMUESTRADETALLE: TStringField;
    CDSVentaCabIMPORTE_PERCEPCION_IVA: TFloatField;
    CDSVentaCabMUESTRATELEFONO_1: TStringField;
    CDSVentaCabMUESTRATELEFONO_2: TStringField;
    CDSVentaCabMUESTRATELEFONOMOVIL: TStringField;
    CDSVentaCabNC_POR_DIFERENCIA: TStringField;
    CDSVtaDetNovedades: TClientDataSet;
    DSPVtaDetNovedades: TDataSetProvider;
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
    CDSVentaDetMUESTRAUNITARIO_CON_DSCTO: TFloatField;
    PROCEDURE DataModuleDestroy(Sender: TObject);
    PROCEDURE CDSVentaCabCODIGOSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSVentaCabSUCFACSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSVentaCabNUMEROFACSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSVentaCabLDRSetText(Sender: TField; CONST Text: STRING);
    PROCEDURE CDSVentaCabDepositoSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSVentaCabCONDICIONVTASetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSVentaDetCodigoArticuloSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSVentaDetUnitario_TotalGetText(Sender: TField;
      VAR Text: STRING; DisplayText: Boolean);
    PROCEDURE CDSVentaDetUnitario_TotalSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSVentaDetTotalGetText(Sender: TField; VAR Text: STRING;
      DisplayText: Boolean);
    PROCEDURE CDSVentaDetAfterPost(DataSet: TDataSet);
    PROCEDURE CDSVentaDetBeforePost(DataSet: TDataSet);
    PROCEDURE CDSVentaDetNewRecord(DataSet: TDataSet);
    PROCEDURE CDSVentaCabNewRecord(DataSet: TDataSet);
    PROCEDURE CDSVentaDetAfterInsert(DataSet: TDataSet);
    PROCEDURE CDSVentaCabBeforePost(DataSet: TDataSet);
    PROCEDURE CDSImpuestosNewRecord(DataSet: TDataSet);
    PROCEDURE CDSVentaDetCantidadSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSVentaDetDescuentoSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSVentaCabDSTOSetText(Sender: TField; CONST Text: STRING);
    procedure CDSVentaDetIVA_TasaSetText(Sender: TField;
      const Text: String);
    procedure CDSVentaCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSVentaCabVENDEDORSetText(Sender: TField;
      const Text: String);
    procedure CDSVentaCabFECHAVTASetText(Sender: TField;
      const Text: String);
    procedure CDSVentaCabNETOGRAV1GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CDSVentaCabSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure CDSVentaCabDSTOIMPORTEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CDSVtaSubDetalleBeforeInsert(DataSet: TDataSet);
    procedure CDSVtaSubDetalleNewRecord(DataSet: TDataSet);
    procedure CDSVtaSubDetalleSERIESetText(Sender: TField;
      const Text: String);
    procedure CDSVtaSubDetalleBeforePost(DataSet: TDataSet);
    procedure CDSVentaDetBeforeDelete(DataSet: TDataSet);
    procedure CDSVtaSubDetalleAfterPost(DataSet: TDataSet);
    procedure CDSVtaSubDetalleBeforeDelete(DataSet: TDataSet);
    procedure CDSVtaSubDetalleBeforeEdit(DataSet: TDataSet);
    procedure CDSVentaDetBeforeInsert(DataSet: TDataSet);
    procedure CDSVentaDetAfterScroll(DataSet: TDataSet);
    procedure CDSVentaCabNETOGRAV2GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CDSImpuestosIMPORTESetText(Sender: TField; const Text: string);
    procedure CDSVentaDetCalcFields(DataSet: TDataSet);
    procedure CDSVtaDetConsigNewRecord(DataSet: TDataSet);
    procedure CDSVentaCabPROVEEDORSetText(Sender: TField; const Text: string);
    procedure CDSVtaDetConsigID_MOV_RECEPCION_DETSetText(Sender: TField;
      const Text: string);
    procedure CDSVentaCabDSTOIMPORTESetText(Sender: TField; const Text: string);
    procedure CDSMov_CarnesNewRecord(DataSet: TDataSet);
    procedure CDSMov_CarnesMEDIA_1SetText(Sender: TField; const Text: string);
    procedure CDSFc_Prod_DetNewRecord(DataSet: TDataSet);
    procedure CDSFc_Prod_MovNewRecord(DataSet: TDataSet);
    procedure CDSFc_Prod_MovCODIGOSetText(Sender: TField; const Text: string);
    procedure CDSFc_Prod_MovCANTIDAD_REALSetText(Sender: TField;
      const Text: string);
    procedure CDSFc_Prod_DetBeforeDelete(DataSet: TDataSet);
    procedure CDSVentaDetCODIGOARTICULOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSFc_Prod_DetCANTIDADSetText(Sender: TField; const Text: string);
    procedure CDSFc_Prod_MovBeforePost(DataSet: TDataSet);
    procedure CDSVentaDetDETALLE_ADICIONALSetText(Sender: TField;
      const Text: string);
    procedure CDSVentaLoteNewRecord(DataSet: TDataSet);
    procedure CDSVentaLoteID_LOTESetText(Sender: TField; const Text: string);
    procedure CDSVentaDetAfterDelete(DataSet: TDataSet);
    procedure CDSVentaDetCANTIDAD_UNIDADESSetText(Sender: TField;
      const Text: string);
    procedure CDSVentaCabMUESTRACODIGOAFIPChange(Sender: TField);
    procedure CDSVentaCabMONEDA_CPBTEChange(Sender: TField);
    procedure CDSVentaCabAfterPost(DataSet: TDataSet);
//    procedure CDSVentaCabID_TRANSPORTESetText(Sender: TField; const Text: string);
    procedure CDSVentaCabHONORARIOS_PROCENTAJSetText(Sender: TField; const Text: string);
    procedure CDSVentaDetUNITARIO_NETO_TOTALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CDSAsociadosNewRecord(DataSet: TDataSet);
    procedure CDSAsociadosASOCIADO_PTOVTASetText(Sender: TField;
      const Text: string);
    procedure CDSAsociadosASOCIADO_NROSetText(Sender: TField;
      const Text: string);
    procedure CDSPercepcionIVANewRecord(DataSet: TDataSet);
    procedure CDSVentaCabPERCIBE_IVAChange(Sender: TField);
    procedure CDSVentaDetTOTALSetText(Sender: TField; const Text: string);
    procedure CDSVtaDetNovedadesNewRecord(DataSet: TDataSet);
    procedure AgregrarNovedadDetalle(DataSet:TDataSet; Modo:string);
    procedure CDSVentaDetAfterEdit(DataSet: TDataSet);
    procedure CDSVentaDetMUESTRAUNITARIO_CON_DSCTOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CDSVentaCabFECHAVTOSetText(Sender: TField; const Text: string);
  private
    { Private declarations }
    function  GetBloqueadeudor          : Boolean;
    function  GetControlaLteCredito     : Boolean;
    procedure VerificaPromos;



  public
   // TasaReal: Real;
    Var_TasaIva:Real;
    ClienteCtdo:Boolean;
    MascaraDetalleUnitario :String;
    MascaraDetalleCantidad :String;
    MascaraDetalleTotal    :String;
    MascaraDetalleDescuento:String;
    MascaraIvaImporte      :String;
    MascaraIvaTasa         :String;
    MascaraCabecera        :String;
    CorreoDestino          :String;
    CorreoDestino_2        :String;
    Renglones              :Integer;
    SucursalPercibeIIBB    :String;
    ArticuloGtia           :String;
    ArticuloAsegurado      :String;
    Poliza                 :String;
    F8001                  :Boolean;
    DesdeF8001,HastaF8001  :TDateTime;
    MargenUtilidad         :Extended;
    procedure CreditoExedido;
    procedure ReAsignarDetalle;
    procedure InformarCambiosPrecio;
    PROCEDURE HabilitarLabel;
    PROCEDURE CalcularTotales;
    PROCEDURE SumarDetalle;
    PROCEDURE AplicarMascarasNumericas;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    FUNCTION AsignarArticulo(Dato: STRING): Boolean;
    FUNCTION AsignarArticuloProduccion(Dato: STRING): Boolean;
    FUNCTION AsignarCliente(Dato: STRING): Boolean;
    FUNCTION AsignarLdr(Cliente: STRING; Dato: integer): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarCondVenta(Cliente: STRING; Dato: Integer): Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION AsignarVendedor(Dato: String): Boolean;
    procedure ReCalcularTodo;
    FUNCTION AsignarProveedor(Dato: String): Boolean;
    FUNCTION AsignarRecepcion(Dato: Integer): Boolean;
    procedure SincronizarConsignaciones;
    Function VerificaConsignaciones:Boolean;
    Function VerificaProduccion:boolean;
    procedure VerificaGtiaExtendida(Articulo:String;Cliente:String);
    procedure HayGtia;
    procedure ReCalculaGtia(Articulo:String;Cliente:String);
    Function SumarGtia:Integer;
    Function SumarGtiaImporte:Real;
    procedure GenerarCodigoBarra(var NroRipsa:String);
    procedure RevisionCodigoBarra(var NroRipsa:String);
    FUNCTION AsignarNotas(Dato: Integer): String;
    function BuscaCantXCodigoBarras(Codigo: string): extended;


    procedure GenerarDetalleProduccion;
    procedure ReCalcularIva;
    procedure ReCalcularIvaAuto;
   

  published

    property  BloqueaDeudor           : Boolean   read GetBloqueaDeudor;
    property  ControlaLteCredito      : Boolean   read GetControlaLteCredito;

    { Public declarations }
  END;

VAR
  DatosVentas: TDatosVentas;


IMPLEMENTATION

USES UFactura_2, ComposicionPrecio, DMBuscadoresForm,UDMain_FD,
     UBuscadorArticulos, UUltimaVtaCliente, UMuestraListaCodBarra,
     UMuestraUltimoNroCpbte,UMuestraSaldoCliente, DMStoreProcedureForm, ULogin,
     UClaveVerificada, UOrdenProduccion,DMOrdenProduccion;

{$R *.DFM}


function TDatosVentas.GetBloqueaDeudor          : Boolean;
begin
  Result    :=  DMMain_FD.BloqueaDeudor;
end;

function TDatosVentas.GetControlaLteCredito     : Boolean;
begin
  Result    :=  DMMain_FD.ControlaLteCredito;
end;

function TDatosVentas.BuscaCantXCodigoBarras(Codigo: string): extended;
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

procedure TDatosVentas.VerificaPromos;
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



procedure TDatosVentas.ReCalcularIva;
var ImpuestoOld,ImpuestoNew:Extended;
begin
  ImpuestoOld := 0;
  ImpuestoNew := 0;
  CDSImpuestos.DisableControls;
  CDSImpuestos.First;
  WHILE NOT (CDSImpuestos.Eof) DO
    BEGIN
      ImpuestoOld := CDSImpuestosImporte.AsFloat+ImpuestoOld;
      if CDSImpuestos.State=dsBrowse then
        CDSImpuestos.Edit;
      CDSImpuestosImporte.AsFloat:= RoundTo(CDSImpuestosNETO.AsFloat * CDSImpuestosTASA.AsFloat *0.01,-2);
      ImpuestoNew                := CDSImpuestosImporte.AsFloat+ImpuestoNew;
      CDSImpuestos.Next;
    END;
  if CDSImpuestos.State<>dsBrowse then
    CDSImpuestos.Post;

  CDSImpuestos.EnableControls;
  CDSVentaCabTOTAL.AsFloat:=CDSVentaCabTOTAL.AsFloat+(ImpuestoNew-ImpuestoOld);
  CDSImpuestos.First;
end;

procedure TDatosVentas.ReCalcularIvaAuto;
var ImpuestoOld,ImpuestoNew:Extended;
begin
  ImpuestoOld := 0;
  ImpuestoNew := 0;
  CDSImpuestos.DisableControls;
  CDSImpuestos.First;
  WHILE NOT (CDSImpuestos.Eof) DO
    BEGIN
      ImpuestoOld := CDSImpuestosImporte.AsFloat+ImpuestoOld;
      if CDSImpuestos.State=dsBrowse then
        CDSImpuestos.Edit;
      CDSImpuestosImporte.AsFloat:= RoundTo(CDSImpuestosNETO.AsFloat * CDSImpuestosTASA.AsFloat *0.01,-2);
      ImpuestoNew                := CDSImpuestosImporte.AsFloat+ImpuestoNew;
      CDSImpuestos.Next;
    END;
  if CDSImpuestos.State<>dsBrowse then
    CDSImpuestos.Post;
  CDSVentaCab.Edit;
  CDSVentaCabTOTAL.AsFloat:=CDSVentaCabTOTAL.AsFloat+(ImpuestoNew-ImpuestoOld);
  CDSVentaCab.Post;
  CDSVentaCab.ApplyUpdates(0);
  CDSImpuestos.ApplyUpdates(0);
  CDSImpuestos.EnableControls;
end;


procedure TDatosVentas.GenerarDetalleProduccion;
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
      CDSFc_Prod_Mov.Params[0].Clear;
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

procedure TDatosVentas.CreditoExedido;
var DateTem,desde1,desde2,Desde3,Desde4:TDateTime;
Escape:char;
begin
  Escape:=#27;

  QClientes.Close;
  QClientes.ParamByName('Codigo').Value:=CDSVentaCabCODIGO.AsString;
  QClientes.Open;

  if QClientesDEUDAMAYOR30.Value='S' then
    begin
      DateTem:= Date;
      DateTem:= IncDay(DateTem, QClientesDIAS_MAYOR_30.Value * -1);
      desde1:=DateTem;
      desde2:=IncMonth(desde1,-1);
      desde3:=IncMonth(desde2,-1);
      desde4:=IncMonth(Desde3,-1);

      QSaldos.Close;
      QSaldos.ParamByName('codigo').AsString := CDSVentaCabCODIGO.Value;
      QSaldos.ParamByName('Desde1').AsDate   := Desde1;
      QSaldos.ParamByName('Desde2').AsDate   := Desde2;
      QSaldos.ParamByName('Desde3').AsDate   := Desde3;
      QSaldos.ParamByName('Desde4').AsDate   := Desde3;
      QSaldos.Open;

      if ((Trunc(QSaldosSALDO.AsFloat*100))>DMMain_FD.ToleranciaDeuda) Then // antes era cero
        begin
          if Not(Assigned(FormSaldoUnCLiente)) then
            FormSaldoUnCLiente:=TFormSaldoUnCLiente.Create(Self);
          FormSaldoUnCLiente.Codigo := CDSVentaCabCODIGO.AsString;
          FormSaldoUnCLiente.Dias   := QClientesDIAS_MAYOR_30.Value;
          FormSaldoUnCLiente.showModal;
          if DMMain_FD.ControlaDeuda then
            begin
              ShowMessage('... No se puede facturar...necesita clave autorizada...');

              if not (Assigned(FormClaveVerificada)) then
                FormClaveVerificada := TFormClaveVerificada.Create(Self);
              FormClaveVerificada.ShowModal;
              if FormClaveVerificada.ModalResult=mrCancel then
                begin
                  if DatosVentas.CDSVentaDet.State in [dsInsert,dsEdit] Then
                    DatosVentas.CDSVentaDet.Cancel;
                  if DatosVentas.CDSImpuestos.State in [dsInsert,dsEdit] Then
                    DatosVentas.CDSImpuestos.Cancel;
                  if DatosVentas.CDSVtaSubDetalle.State in [dsInsert,dsEdit] Then
                    DatosVentas.CDSVtaSubDetalle.Cancel;
                  if DatosVentas.CDSVtaDetConsig.State in [dsInsert,dsEdit] Then
                    DatosVentas.CDSVtaDetConsig.Cancel;
                  if DatosVentas.CDSVentaCab.State in [dsInsert,dsEdit] Then
                    DatosVentas.CDSVentaCab.Cancel;

                  DatosVentas.CDSVentaCab.EmptyDataSet;
                  DatosVentas.CDSVentaDet.EmptyDataSet;
                  DatosVentas.CDSImpuestos.EmptyDataSet;
                  DatosVentas.CDSVtaSubDetalle.EmptyDataSet;

                  FormCpbte_2.OnKeyPress(FormCpbte_2,Escape);
                  if FormCpbte_2.Owner.Name='FormFacturaRemitoAgrupado' then
                     FormCpbte_2.Salir.Execute;// Close;
                  if FormCpbte_2.Owner.Name='FormFacturarRemitos' then
                     FormCpbte_2.Salir.Execute;// Close;
                  if FormCpbte_2.Owner.Name='FormNotaPedidoCliente' then
                     FormCpbte_2.Salir.Execute;// Close;
                end;
            end;
        end;
    end;
end;

function TDatosVentas.SumarGtiaImporte:Real;
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


function TDatosVentas.SumarGtia:Integer;
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

procedure TDatosVentas.ReCalculaGtia(Articulo:String;Cliente:String);
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
      if (CDSVentaDetMODO_GRAVAMEN.Value<>'') and ((CDSVentaCabDESGLOZAIVA.Value = 'N') or (FormCpbte_2.DiscriminaIva='N')) and
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

procedure TDatosVentas.HayGtia;
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
        DMBuscadores.QBuscaArticuloGtiaExt.Close;
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
          DMBuscadores.QBuscaArticuloGtiaExt.Close;
        end;
    end;
  FreeAndNil(CDSDetClon);
end;

procedure TDatosVentas.VerificaGtiaExtendida(Articulo:String;Cliente:String);
var CDSDetClon:TClientDataSet;
TasaCosto,TasaVta:Extended;
UnitarioGravado,UnitarioExento,UnitarioIva:Extended;
begin
  CDSVentaCabCON_GTIA_EXTENDIDA.Value := 'N';
  CDSVentaCabPOLIZA.Value             := '';
  DMBuscadores.QBuscaArticuloGtiaExt.Close;
  DMBuscadores.QBuscaArticuloGtiaExt.ParamByName('codigo').AsString:=Articulo;
  DMBuscadores.QBuscaArticuloGtiaExt.Open;
  if (DMBuscadores.QBuscaArticuloGtiaExtID.AsString<>'') then
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
      if (CDSVentaDetMODO_GRAVAMEN.Value<>'') and ((CDSVentaCabDESGLOZAIVA.Value = 'N') or (FormCpbte_2.DiscriminaIva='N') {(FormCpbte_2.DiscriminaIva='N')}) and
         (CDSVentaDetMODO_GRAVAMEN.Value[1] in ['G','E','M']) THEN
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
      CDSVentaDetMESES_GTIA.Value         := DMBuscadores.QBuscaArticuloGtiaExtDURACION.Value;
    end;
  DMBuscadores.QBuscaArticuloGtiaExt.Close;
  DMBuscadores.QGtia_Ext_Excepciones.Close;
end;

Function TDatosVentas.VerificaConsignaciones:boolean;
VAR P:TBookmark;
begin
  Result:= False;
  p     := CDSVtaDetConsig.GetBookmark;
  CDSVtaDetConsig.DisableControls;
  CDSVtaDetConsig.First;
  while not(CDSVtaDetConsig.Eof) and (Result=false) do
    begin
      if CDSVtaDetConsigID_MOV_RECEPCION_DET.AsString='' Then
        Result:=True;
      CDSVtaDetConsig.Next;
    end;
  CDSVtaDetConsig.GotoBookmark(p);
  CDSVtaDetConsig.EnableControls;
  CDSVtaDetConsig.FreeBookmark(p);
end;

Function TDatosVentas.VerificaProduccion:boolean;
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

procedure TDatosVentas.SincronizarConsignaciones;
VAR p:TBookmark;
begin
  // Rutina de control de Consignacion...
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


procedure TDatosVentas.ReAsignarDetalle;
VAR Puntero:TBookmark;
cont:Integer;
begin
//  Puntero:=CDSVentaDet.GetBookmark;
  if CDSVentaDet.Eof then
    CDSVentaDet.Prior;
  CDSVentaDet.fIRST;

  DMMain_FD.HayProduccion:=False;
  cont:=1;
  CDSVentaDet.First;
  CDSVentaDet.DisableControls;
  CDSVentaDet.AfterScroll :=nil;
  CDSVentaDet.AfterPost   :=nil;
  while Not(CDSVentaDet.Eof) do
    begin
      if CDSVentaDetDE_PRODUCCION.Value='S' then
        DMMain_FD.HayProduccion:=True;
      CDSVentaDet.edit;
      CDSVentaDetDESGLOZAIVA.Value   := CDSVentaCabDESGLOZAIVA.Value;
      CDSVentaDetDEPOSITO.Value      := CDSVentaCabDEPOSITO.Value;
      CDSVentaDetTIPOCPBTE.Value     := CDSVentaCabTIPOCPBTE.Value;
      CDSVentaDetCLASECPBTE.Value    := CDSVentaCabCLASECPBTE.Value;
      CDSVentaDetNROCPBTE.Value      := CDSVentaCabNROCPBTE.Value;
      CDSVentaDetRENGLON.AsFloat     := CDSVentaDetNRO.AsFloat;
      CDSVentaDetFECHAVTA.AsDateTime := CDSVentaCabFECHAVTA.AsDateTime;
      if CDSVentaCabTIPOCPBTE.Value='NC' then
        if CDSVentaCabNC_POR_DIFERENCIA.Value='S' then
          CDSVentaDetAFECTA_STOCK.Value:='N';
      Inc(cont);
      CDSVentaDet.Next;
    end;
  CDSVentaDet.fIRST;
  CDSVentaDet.AfterScroll :=CDSVentaDetAfterScroll;
  CDSVentaDet.AfterPost   :=CDSVentaDetAfterPost;
//  esta linea la puse por que cuando hacia NC desde RC, da error de no encontrar el Reg.
//  if CDSVentaDet.RecordCount>1 then
//    CDSVentaDet.GotoBookmark(Puntero);
//  CDSVentaDet.FreeBookmark(Puntero);

  CDSVentaDet.EnableControls;
end;

procedure TDatosVentas.InformarCambiosPrecio;
VAR Puntero:TBookmark;
Detalle:String;
begin
  if CDSVentaCabANULADO.Value<> 'S' Then
    begin
      Puntero:=CDSVentaDet.GetBookmark;
      CDSVentaDet.DisableControls;
      CDSVentaDet.First;
      while Not(CDSVentaDet.Eof) do
        begin
          if (CDSVentaDetUnitario_Total.NewValue<>CDSVentaDetUnitario_Total.OldValue) and
             (CDSVentaDetUnitario_Total.OldValue>0) Then
            begin
              DMMain_FD.fdcGestion.StartTransaction;
              try
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
                DMMain_FD.fdcGestion.Commit;
              except
                DMMain_FD.fdcGestion.Rollback;
                ShowMessage('NO se ingreso registro en el LogFile....!');
              end;
            end;
          CDSVentaDet.Next;
        end;
      CDSVentaDet.GotoBookmark(Puntero);
      CDSVentaDet.FreeBookmark(Puntero);
      CDSVentaDet.EnableControls;
  end;
end;

procedure TDatosVentas.ReCalcularTodo;
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
  //***************************************************************
  // Si no puede modificar precio el usuario pongo la
  // columna en la grilla como solo lectura
   FormCpbte_2.DBGrillaDetalle.Columns[5].ReadOnly:=Not(DMMain_FD.ModificaPrecioVta);
   FormCpbte_2.DBGrillaDetalle.Columns[6].ReadOnly:=Not(DMMain_FD.AplicaDescuento);
  //***************************************************************
  FormCpbte_2.Confirma.Execute;
end;


FUNCTION  TDatosVentas.AsignarProveedor(Dato: String): Boolean;
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

PROCEDURE TDatosVentas.HabilitarLabel;
BEGIN
  {Si la Factura no discrimina IVA}
  FormCpbte_2.DBGrillaIva.Visible        :=DatosVentas.CDSVentaCabDesglozaIva.AsString = 'S';
  FormCpbte_2.dbgPercepcionesIVA.Visible :=DatosVentas.CDSVentaCabPERCIBE_IVA.AsString = 'S';
  WITH FormCpbte_2 DO
    BEGIN
      dbeSuc.Enabled    :=DBCheckManual.Checked;
      dbeNumero.Enabled :=DBCheckManual.Checked;
      IF CDSVentaCab.State = dsBrowse THEN
        BEGIN
         // BtAnular.Enabled    :=(wwCDSVentaCabAnulado.Value = 'N');
         // btModificar.Enabled :=(wwCDSVentaCabAnulado.Value = 'N');
         // btModificar.Enabled :=(wwCDSVentaCabIMPRESO.Value = 'N');
        END;
    END;
END;

PROCEDURE TDatosVentas.CalcularTotales;
VAR
  Modo: TFPURoundingMode;
  Acumulador,AcumuladorPIVA,Descuento,TotalOld,TotalNew,
  TotalGral,NetoTotal,SumaTotal: Currency;//Extended;
  NetoGrav2,NetoExento2,NetoNoGrav2,
  NetoGrav1,NetoExento1,NetoNoGrav1:Currency;//Extended;
  ImpuestoNeto,ImpuestoImporte:currency;// Extended;
  Aux2,Aux1:Currency;
BEGIN
  CDSVentaCabTotal.AsFloat := 0;
  Acumulador               := 0;
  AcumuladorPIVA           := 0;
  Descuento                := CDSVentaCabDsto.AsFloat * 0.01;
  // Ultima modificacion 16/10/2017 agregado del  - Neto No Gravado -
  NetoGrav2                := RoundTo( CDSVentaCabNetoGrav1.AsFloat * (1 - Descuento),-3);
  NetoExento2              := RoundTo( CDSVentaCabNetoExen1.AsFloat * (1 - Descuento),-3);
  NetoNoGrav2              := RoundTo( CDSVentaCabNETONOGRAV1.AsFloat * (1 - Descuento),-3);

  Modo := GetRoundMode;
  SetRoundMode(rmUp);
  CDSVentaCabNETOGRAV2.AsFloat   := RoundTo(NetoGrav2,-2);
  CDSVentaCabNETONOGRAV2.AsFloat := RoundTo(NetoNoGrav2,-2);
  CDSVentaCabNETOEXEN2.AsFloat   := RoundTo(NetoExento2,-2);
  SetRoundMode(Modo);
  // Si percibo IB calculo la percepcion  // Si percibo IB calculo la percepcion
  if CDSVentaCabPERCIBE_IB.Value='S' Then
    begin
      if (TForm(FormCpbte_2.Owner).Name<>'FormImportacionFacturasVtaGral') then
        CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat := RoundTo (CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat * (1 - Descuento),-2);
    end
  else
    begin
      CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := 0;
      CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat       := 0;
    end;

  Aux1:=0;
  Aux2:=0;
  Aux1:=(CDSVentaCabNetoGrav1.AsFloat + CDSVentaCabNETOEXEN1.AsFloat + CDSVentaCabNETONOGRAV1.AsFloat);
  Aux2:=(CDSVentaCabNetoGrav2.AsFloat + CDSVentaCabNETOEXEN2.AsFloat + CDSVentaCabNETONOGRAV2.ASFloat);

  CDSVentaCabDSTOIMPORTE.AsFloat := Aux1 - Aux2;

  SumaTotal     := roundTo(CDSVentaCabNETOGRAV2.AsFloat +
                           CDSVentaCabNETOEXEN2.AsFloat +
                           CDSVentaCabNETONOGRAV2.AsFloat +
                           Acumulador +
                           CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat,-3);

  CDSVentaCabTOTAL.AsFloat := RoundTo(SumaTotal,-2);

  if IsZero(Descuento) then CDSVentaCabDSTOIMPORTE.AsFloat :=0;

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

        if Trunc(CDSVentaCabDSTO.AsFloat*100)<>0 then
          begin
            ImpuestoNETO                := RoundTo( TotalNew / (1+CDSImpuestosTASA.AsFloat*0.01),-3);
            ImpuestoNeto                := RoundTo( ImpuestoNeto,-2);
            ImpuestoIMPORTE             := TotalNew - ImpuestoNeto ;

            CDSImpuestosNETO.AsFloat    := ImpuestoNeto;
            CDSImpuestosIMPORTE.AsFloat := ImpuestoImporte;
          end;
        Acumulador                      := Acumulador + CDSImpuestosIMPORTE.AsFloat;
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
  // Calculo de Percepcion de IVA....
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

  FormCpbte_2.DBGrillaIva.Refresh;

  Modo:=GetRoundMode;
  SetRoundMode(rmUp);
  Acumulador     := RoundTo(Acumulador,-3);
  AcumuladorPIVA := RoundTo(AcumuladorPIVA,-3);

  SetRoundMode(Modo);

  Acumulador     := RoundTo(Acumulador,-2);
  AcumuladorPIVA := RoundTo(AcumuladorPIVA,-2);

  if (CDSVentaCabPERCIBE_IB.Value='S') and (CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat>DMMain_FD.Minim_Imp_IB_Perc)
    Then
      begin
        if (TForm(FormCpbte_2.Owner).Name<>'FormImportacionFacturasVtaGral') then
          CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat := RoundTo(CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat *
                                                            CDSVentaCabPERCEPCION_IB_TASA.AsFloat * 0.01,-2)
      end
  else
    begin
      CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat       := 0;
      CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := 0;
    end;

  SumaTotal     := roundTo(CDSVentaCabNETOGRAV2.AsFloat +
                           CDSVentaCabNETOEXEN2.AsFloat +
                           CDSVentaCabNETONOGRAV2.AsFloat +
                           Acumulador + AcumuladorPIVA +
                           CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat,-3);

  CDSVentaCabTOTAL.AsFloat := RoundTo(SumaTotal,-2);

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

  TotalGral := CDSVentaCabTOTAL.AsFloat -
               (CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat + AcumuladorPIVA +
                CDSVentaCabNETOEXEN2.AsFloat +
                CDSVentaCabNETONOGRAV2.AsFloat);
  NetoTotal := CDSVentaCabNETOGRAV2.AsFloat;// + CDSVentaCabNETOEXEN2.AsFloat;

  TRY
    if CDSVentaCabNETOGRAV2.AsFloat>0 Then
      Var_TasaIVA:= ((TotalGral/NetoTotal)-1)*100
    else
      Var_TasaIva:=0;
  EXCEPT
    ON EZeroDivide DO
      Var_TasaIva:=0;
  END;

//  CDSVentaCabNETOGRAV2.AsFloat  := StrToFloat( FormatFloat('0.00',(CDSVentaCabNETOGRAV1.AsFloat * (1 - Descuento))));  //RoundTo(CDSVentaCabNetoGrav1.AsFloat * (1 - Descuento), -2);
//  CDSVentaCabNETOGRAV1.AsFloat  := CDSVentaCabNETOGRAV1.AsFloat;

  // Para que se refresca el OnGetTex de Descuento.... lo reasgino de nuevo
  CDSVentaCabDSTOIMPORTE.AsFloat := (CDSVentaCabNETOGRAV1.AsFloat +
                                     CDSVentaCabNETOEXEN1.AsFloat +
                                     CDSVentaCabNETONOGRAV1.AsFloat) -
                                    (CDSVentaCabNETOGRAV2.AsFloat +
                                     CDSVentaCabNETOEXEN2.AsFloat +
                                     CDSVentaCabNETONOGRAV2.AsFloat);


  if IsZero(Descuento) then CDSVentaCabDSTOIMPORTE.AsFloat :=0;


END;

PROCEDURE TDatosVentas.SumarDetalle;
VAR
  Dscto      : Real;
  Puntero    : TBookmark;
  CantBultos : Extended;
  TotalNeto  : Extended;
  TotalFinal : Extended;
BEGIN
  Puntero     := CDSVentaDet.GetBookmark;
  TotalNeto   := 0;
  TotalFinal  := 0;
  CDSVentaDet.DisableControls;
  CDSVentaDet.First;
  IF CDSVentaCab.State = dsBrowse THEN
    CDSVentaCab.Edit;

  if (CDSVentaCabTIPOIVA.Value=3) Then  // si es consumidor final
    begin
      CDSVentaCabPERCIBE_IB.Value    := 'N';
      CDSVentaCabPERCIBE_IVA.Value   := 'N';
    end;

  CDSVentaCabNETOGRAV1.ASFloat                   :=0;
  CDSVentaCabNETOEXEN1.ASFloat                   :=0;
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
  WHILE (NOT CDSVentaDet.Eof) DO
    BEGIN
      Dscto := 1 - CDSVentaDetDescuento.AsFloat * 0.01;
      IF (CDSVentaDetTipoIva_Tasa.AsFloat <> 0) and (NOT (VarIsNull(CDSVentaDetTipoIva_Tasa.AsFloat))) and
         (Not(CDSVentaDetModo_Gravamen.AsString[1] in ['E','N'])) THEN
        BEGIN
          IF CDSImpuestos.Locate('Codigo_Gravamen',CDSVentaDetTipoIva_Tasa.Value, []) THEN
            BEGIN
              CDSImpuestos.Edit;
              CDSImpuestosNeto.AsFloat    := CDSImpuestosNeto.AsFloat + CDSVentaDetTOTAL_GRAVADO.AsFloat ;
              CDSImpuestosImporte.AsFloat := CDSImpuestosIMPORTE.AsFloat + CDSVentaDetIVA_TOTAL.AsFloat;
              CDSImpuestos.Post;
            END
          ELSE
            BEGIN
              CDSImpuestos.Insert;
              CDSImpuestosCODIGO_GRAVAMEN.Value   := CDSVentaDetTIPOIVA_TASA.AsInteger;
              CDSIva.Close;
              CDSIva.Params.ParamByName('id').Value := CDSVentaDetTIPOIVA_TASA.AsInteger;
              CDSIva.Open;
              CDSImpuestosDETALLE.Value     := CDSIvaDESCRIPCION.Value;
              CDSImpuestosID_FCVTACAB.Value := CDSVentaDetID_CABFAC.Value;
              CDSImpuestosNETO.AsFloat      := CDSVentaDetTOTAL_GRAVADO.AsFloat ;
              CDSImpuestosTASA.AsFloat      := CDSVentaDetIVA_TASA.AsFLoat;
              CDSImpuestosIMPORTE.AsFloat   := CDSImpuestosIMPORTE.AsFloat + CDSVentaDetIVA_TOTAL.AsFloat;
              CDSImpuestos.Post;
            END;
         // Suma Percepcion IVA ************************************************
         IF (CDSVentaCabPERCIBE_IVA.Value='S') and (CDSVentaCabINGRESA_LIBRO_IVA.Value='S') Then
           begin
             IF (CDSVentaDetPERCIBE_IVA.Value='S') then
               begin
                 if CDSPercepcionIVA.Locate('Codigo_percepcion',CDSVentaDetID_TASA_PERCEPCION_IVA.Value, []) THEN
                   BEGIN
                     CDSPercepcionIVA.Edit;
                     CDSPercepcionIVANETO.AsFloat    := CDSPercepcionIVANETO.AsFloat + CDSVentaDetTOTAL_GRAVADO.AsFloat ;
                     CDSPercepcionIVAIMPORTE.AsFloat := (CDSPercepcionIVANETO.AsFloat * CDSVentaDetTASA_PERCEP_IVA.AsFloat * 0.01);
                     CDSPercepcionIVA.Post;
                   END
                 ELSE
                   BEGIN
                     CDSPercepcionIVA.Insert;
                     CDSPercepcionIVACODIGO_PERCEPCION.Value := CDSVentaDetID_TASA_PERCEPCION_IVA.AsInteger;
                     CDSPercepcionIVADETALLE.Value           := 'Percep IVA %'+FormatFloat('0.00',CDSVentaDetTASA_PERCEP_IVA.AsFLoat) ;
                     CDSPercepcionIVAID_FCVTACAB.Value       := CDSVentaDetID_CABFAC.Value;
                     CDSPercepcionIVANETO.AsFloat            := CDSVentaDetTOTAL_GRAVADO.AsFloat;
                     CDSPercepcionIVATASA.AsFloat            := CDSVentaDetTASA_PERCEP_IVA.AsFLoat;
                     CDSPercepcionIVAIMPORTE.AsFloat         := CDSVentaDetTOTAL_GRAVADO.AsFloat * CDSVentaDetTASA_PERCEP_IVA.AsFloat * 0.01;
                     CDSPercepcionIVA.Post;
                   END;
               end;
           end;
        end;

//      CDSVentaCabNETOGRAV1.AsFloat := CDSVentaCabNETOGRAV1.AsFloat + CDSVentaDetTOTAL_GRAVADO.AsFloat;
      TotalNeto                    := TotalNeto + CDSVentaDetTOTAL_GRAVADO.AsFloat;
      TotalFinal                   := TotalFinal + (CDSVentaDetTOTAL_GRAVADO.AsFloat+CDSVentaDetIVA_TOTAL.Value);

      if (CDSVentaDetMODO_GRAVAMEN.Value='E') or
         (CDSVentaDetMODO_GRAVAMEN.Value='M') or
         (CDSVentaDetMODO_GRAVAMEN.Value='Y') or
         (CDSVentaDetMODO_GRAVAMEN.Value='I') then
        CDSVentaCabNETOEXEN1.AsFloat := CDSVentaDetTOTAL_EXENTO.AsFloat  + CDSVentaCabNETOEXEN1.AsFloat
      else
        if CDSVentaDetMODO_GRAVAMEN.Value='N' then // modificacion de acumulado Neto No Gravado
          CDSVentaCabNETONOGRAV1.AsFloat := CDSVentaDetTOTAL_EXENTO.AsFloat  + CDSVentaCabNETONOGRAV1.AsFloat;

      if ((CDSVentaDetGRAVADO_IB.Value='S') and (CDSVentaCabDESGLOZAIVA.Value='S') and (CDSVentaCabINGRESA_LIBRO_IVA.Value='S')) Then
        CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := CDSVentaDetTOTAL.AsFloat +
                                                          CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat
      else
        if ((CDSVentaDetGRAVADO_IB.Value='S') and (CDSVentaCabDESGLOZAIVA.Value='N') and (CDSVentaCabINGRESA_LIBRO_IVA.Value='S')) Then
          CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := CDSVentaDetTOTAL.AsFloat +
                                                            CDSVentaDetIVA_TOTAL.AsFloat +
        // Hablado con Marcos 26/03/2019 va sin el iva  >>  CDSVentaDetIVA_TOTAL.AsFloat +
                                                            CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat;
      CantBultos :=CantBultos+CDSVentaDetCANTIDAD.Value;
      CDSVentaDet.Next;
    END;

 // if IsZero(Var_TasaIva,0.10) then
  Var_TasaIva:=  ((TotalFinal/TotalNeto)-1)*100;

  CDSVentaCabNETOGRAV1.AsFloat   := TotalNeto;

  if CDSVentaCabNETOEXEN1.AsFloat <0.003 then CDSVentaCabNETOEXEN1.AsFloat:=0;

  CDSVentaCabNETOGRAV1.AsFloat   := RoundTo(CDSVentaCabNETOGRAV1.AsFloat,-4);
  CDSVentaCabNETOGRAV1.AsFloat   := RoundTo(CDSVentaCabNETOGRAV1.AsFloat,-3);

  CDSVentaCabNETONOGRAV1.AsFloat := RoundTo(CDSVentaCabNETONOGRAV1.AsFloat,-4);
  CDSVentaCabNETONOGRAV1.AsFloat := RoundTo(CDSVentaCabNETONOGRAV1.AsFloat,-3);

  CDSVentaCabNETOEXEN1.AsFloat   := RoundTo(CDSVentaCabNETOEXEN1.AsFloat,-4);
  CDSVentaCabNETOEXEN1.AsFloat   := RoundTo(CDSVentaCabNETOEXEN1.AsFloat,-3);

  CDSVentaCabCANT_BULTOS.Value   := Trunc(CantBultos);

  CDSVentaDet.GotoBookmark(Puntero);
  CDSVentaDet.FreeBookmark(Puntero);
  CDSVentaDet.EnableControls;
  { aca voy a los calculos de los totoales de la factura }
END;



procedure TDatosVentas.AgregrarNovedadDetalle(DataSet:TDataSet; Modo: string);
var coef:Extended;
begin
  coef:= 1 + (DataSet.FieldByName('IVA_TASA').AsFloat*0.01);
 
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

procedure TDatosVentas.AplicarMascarasNumericas;
VAR P,I:Byte;
M:String;
begin
  MascaraDetalleUnitario  :=  DMMain_FD.MascaraDetalleUnitario;      //DMMain_FD.QOpciones.Fields[0].AsString;
  M                       :=  MascaraDetalleUnitario;
  AnsireplaceStr(m,',','');
  AnsireplaceStr(m,'#','');
  p := LastDelimiter( '.', m );
  m := '0.'+copy(m,p+1,5);
  m := Trim(m);

  TFloatField(CDSVentaDetUnitario_Total).DisplayFormat :=MascaraDetalleUnitario;

  MascaraDetalleCantidad                               := DMMain_FD.MascaraDetalleCantidad;    ///DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSVentaDetCantidad).EditFormat          := M;
  TFloatField(CDSVentaDetCantidad).DisplayFormat       := MascaraDetalleCantidad;

  TFloatField(CDSVtaDetConsigCANTIDAD).EditFormat      := M;
  TFloatField(CDSVtaDetConsigCANTIDAD).DisplayFormat   := MascaraDetalleCantidad;

  MascaraDetalleDescuento:=',0.00';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSVentaDetDescuento).EditFormat         := '0.00';
  TFloatField(CDSVentaDetDescuento).DisplayFormat      := MascaraDetalleDescuento;

  MascaraDetalleTotal:=',0.00';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSVentaDetTotal).EditFormat           := '0.00';
  TFloatField(CDSVentaDetTotal).DisplayFormat        := MascaraDetalleTotal;

  MascaraIvaTasa:='0.0';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSVentaDetIVA_Tasa).EditFormat        := MascaraIvaTasa;
  TFloatField(CDSVentaDetIVA_Tasa).DisplayFormat     := MascaraIvaTasa;
  TFloatField(CDSVentaDetIVA_SobreTasa).EditFormat   := MascaraIvaTasa;
  TFloatField(CDSVentaDetIVA_SobreTasa).DisplayFormat:= MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).EditFormat           := MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).DisplayFormat        := MascaraIvaTasa;

  MascaraIvaImporte:=',0.00';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSImpuestosIMPORTE).EditFormat        := '0.00';
  TFloatField(CDSImpuestosIMPORTE).DisplayFormat     := MascaraIvaImporte;
  TFloatField(CDSImpuestosNETO).EditFormat           := '0.00';
  TFloatField(CDSImpuestosNETO).DisplayFormat        := MascaraIvaImporte;

  MascaraCabecera:=',0.00';//DMMain_FD.QOpciones.Fields[0].AsString;
  For i:=0 to CDSVentaCab.FieldCount-1 do
    begin
      if (CDSVentaCab.Fields[i].DataType=ftFMTBcd) Then
        begin
         // No respeto mas lo que venga de opciones fuerzo todo a dos decimales;
          TFloatField(CDSVentaCab.Fields[i]).EditFormat    := '0.00';
          TFloatField(CDSVentaCab.fields[i]).DisplayFormat := ',0.00';//MascaraCabecera;
        end
      else
        if (CDSVentaCab.Fields[i].DataType=ftFloat) Then
           begin
             // No respeto mas lo que venga de opciones fuerzo todo a dos decimales;
             TFloatField(CDSVentaCab.Fields[i]).EditFormat    := '0.00';
             TFloatField(CDSVentaCab.fields[i]).DisplayFormat := ',0.00';//MascaraCabecera;
          end;

    end;
  CDSVentaCabMONEDA_CPBTE_COTIZACION.EditFormat    := '0.000';
  CDSVentaCabMONEDA_CPBTE_COTIZACION.DisplayFormat := '0.000';
  CDSVentaCabDSTOIMPORTE.EditFormat                := '0.00';
  CDSVentaCabDSTOIMPORTE.DisplayFormat             := ',0.00';
  CDSVentaCabASOCIADO_NRO.EditFormat               := '00000000';
  CDSVentaCabASOCIADO_NRO.DisplayFormat            := '00000000';
end;

FUNCTION TDatosVentas.AsignarComprobante(Dato: Integer): Boolean;
Var DateTem,desde1,desde2,Desde3,Desde4:TDateTime;
Escape:Char;
BEGIN
  Escape:=#27;
  QComprob.Close;
  QComprob.ParamByName('id').Value  := dato;
  QComprob.ParamByName('suc').Value := CDSVentaCabSUCURSAL.Value;
  if FormCpbte_2.FiltraCpbteCondIva='S' Then
    QComprob.ParamByName('DesglozaIva').Value := CDSVentaCabDESGLOZAIVA.Value
  else
    QComprob.ParamByName('DesglozaIva').Value := '*';
  QComprob.Open;

  if Trim(QComprobCODIGO_AFIP.AsString)<>'' then
    CDSVentaCabMUESTRACODIGOAFIP.Value := QComprobCODIGO_AFIP.Value
  else
    CDSVentaCabMUESTRACODIGOAFIP.Value := '';


  IF NOT(QComprob.IsEmpty) and (DMMain_FD.Autoriza_Comprobante(dato)) then
    begin
      if (QComprobFISCAL.AsString[1]='S') {and (wwCDSVentaCabDESGLOZAIVA.AsString[1]=QComprobDESGLOZA_IVA.AsString[1])} THEN // verifico si esta autorizado
        BEGIN
          Result :=True;
          CDSVentaCabNUMEROFAC.Clear;
          CDSVentaCabSUCFAC.Clear;
          CDSVentaCabMUESTRACOMPROBANTE.Value   := QComprobDENOMINACION.Value;
          CDSVentaCabLETRAFAC.Value             := QComprobLETRA.Value;
          CDSVentaCabTIPOCPBTE.Value            := QComprobTIPO_COMPROB.Value;
          CDSVentaCabCLASECPBTE.Value           := QComprobCLASE_COMPROB.Value;
          FormCpbte_2.dbcheckNc_Contado.Enabled := CDSVentaCabTIPOCPBTE.Value='NC';
          FormCpbte_2.dbchNC_Diferencia.Enabled := CDSVentaCabTIPOCPBTE.Value='NC';
          Renglones                             := QComprobLINEAS_DETALLE.Value;
          ///// si es fiscal le desabilito el si puede o no ser manual
          FormCpbte_2.Calcula_iva_articulo      := QComprobCALCULA_IVA_ARTICULOS.Value='S';
          FormCpbte_2.Divide_iva                := QComprobDIVIDE_IVA.Value='S';
          FormCpbte_2.DBCheckManual.Enabled     := (QComprobFISCAL.Value='N');
          CDSVentaCabFACTURA_ELECTRONICA.Value  := 'N';
          CDSVentaCabCPTE_MANUAL.Value          := 'N';
          CDSVentaCabCON_CAEA.Value             := QComprobUSAR_CAEA.Value;
          if (QComprobDEPOSITO.AsString<>'') and (QComprobDEPOSITO.Value>0) then
            CDSVentaCabDepositoSetText(CDSVentaCabDeposito,QComprobDEPOSITO.AsString);
        END
      else
        BEGIN
          Result:=False;
          CDSVentaCabNUMEROFAC.Clear;
          CDSVentaCabSUCFAC.Clear;
          CDSVentaCabMUESTRACOMPROBANTE.Value  := '';
          CDSVentaCabLETRAFAC.Value            := '';
          CDSVentaCabCLASECPBTE.Value          := '';
          CDSVentaCabTIPOCPBTE.Value           := '';
          CDSVentaCabFACTURA_ELECTRONICA.Value := 'N';
          FormCpbte_2.Calcula_iva_articulo     := QComprobCALCULA_IVA_ARTICULOS.Value='S';
          FormCpbte_2.Divide_iva               := QComprobDIVIDE_IVA.Value='S';
          FormCpbte_2.DBCheckManual.Enabled    := (DMMain_FD.CargarFcVtaManual);
          Renglones                            := QComprobLINEAS_DETALLE.Value;
         // CDSVentaCabPERCIBE_IVA.Value         :='N';
        END;
      if (QComprobFISCAL.AsString[1]='N') THEN // verifico si esta autorizado
        BEGIN
          Result:=True;
          CDSVentaCabNUMEROFAC.Clear;
          CDSVentaCabSUCFAC.Clear;
          CDSVentaCabFACTURA_ELECTRONICA.Value  := QComprobFACTURAELECTRONICA.Value;
          CDSVentaCabMUESTRACOMPROBANTE.Value   := QComprobDENOMINACION.Value;
          CDSVentaCabLETRAFAC.Value             := QComprobLETRA.Value;
          CDSVentaCabTIPOCPBTE.Value            := QComprobTIPO_COMPROB.Value;
          CDSVentaCabCLASECPBTE.Value           := QComprobCLASE_COMPROB.Value;
          CDSVentaCabCON_CAEA.Value             := QComprobUSAR_CAEA.Value;
          Renglones                             := QComprobLINEAS_DETALLE.Value;
          FormCpbte_2.dbcheckNc_Contado.Enabled := CDSVentaCabTIPOCPBTE.Value='NC';
          FormCpbte_2.dbchNC_Diferencia.Enabled := CDSVentaCabTIPOCPBTE.Value='NC';
    ///// si es fiscal le desabilito el si puede o no ser manual
          FormCpbte_2.DBCheckManual.Enabled     := (QComprobFISCAL.Value='N') and
                                                   (DMMain_FD.CargarFcVtaManual);
          FormCpbte_2.Calcula_iva_articulo      := QComprobCALCULA_IVA_ARTICULOS.Value='S';
          FormCpbte_2.Divide_iva                := QComprobDIVIDE_IVA.Value='S';
          if (QComprobDEPOSITO.AsString<>'') and (QComprobDEPOSITO.Value>0) then
            CDSVentaCabDepositoSetText(CDSVentaCabDeposito,QComprobDEPOSITO.AsString);

          if QComprobNUMERARCION_PROPIA.Value='X' then
            CDSVentaCabCPTE_MANUAL.Value   :='S'
          else
            CDSVentaCabCPTE_MANUAL.Value   :='N';

          FormCpbte_2.DBCheckManual.Enabled      := QComprobNUMERARCION_PROPIA.Value='X';

        END;
    end
  ELSE
    BEGIN
      Result:=False;
      CDSVentaCabNUMEROFAC.Clear;
      CDSVentaCabSUCFAC.Clear;
      CDSVentaCabFACTURA_ELECTRONICA.Value := 'N';
      CDSVentaCabCON_CAEA.Value            := 'N';
      CDSVentaCabMUESTRACOMPROBANTE.Value  := '';
      CDSVentaCabLETRAFAC.Value            := '';
      CDSVentaCabCLASECPBTE.Value          := '';
      CDSVentaCabTIPOCPBTE.Value           := '';
      FormCpbte_2.Calcula_iva_articulo     := QComprobCALCULA_IVA_ARTICULOS.Value='S';
      FormCpbte_2.Divide_iva               := QComprobDIVIDE_IVA.Value='S';
      Renglones                            := 0;
      FormCpbte_2.DBCheckManual.Enabled    :=(DMMain_FD.CargarFcVtaManual);
    END;

  if (ClienteCtdo) and (CDSVentaCabTIPOCPBTE.Value<>'NC') then
    BEGIN
     // Result:=False;
      CDSVentaCabID_TIPOCOMPROBANTE.Clear;
      CDSVentaCabMUESTRACOMPROBANTE.Value  := '';
      CDSVentaCabLETRAFAC.Value            := '';
      CDSVentaCabCLASECPBTE.Value          := '';
      CDSVentaCabTIPOCPBTE.Value           := '';
      CDSVentaCabNUMEROFAC.Value           := '00000000';
      CDSVentaCabSUCFAC.Value              := '0000';
      CDSVentaCabFACTURA_ELECTRONICA.Value := 'N';
      CDSVentaCabCON_CAEA.Value            := 'N';
//      FormCpbte_2.Calcula_iva_articulo     :=QComprobCALCULA_IVA_ARTICULOS.Value='S';
      FormCpbte_2.Divide_iva               :=QComprobDIVIDE_IVA.Value='S';
      Renglones                            := 0;
      FormCpbte_2.DBCheckManual.Enabled    :=(DMMain_FD.CargarFcVtaManual);
//      Raise Exception.Create('Cliente de Contado...');
    END
  else
    if (ClienteCtdo) and (CDSVentaCabTIPOCPBTE.Value='NC') then
      CDSVentaCabNC_CONTADO.Value:='S';
  // si es NC y si hay dscto lo pongo en cero
  if (CDSVentaCabTIPOCPBTE.Value='NC') and (not DMMain_FD.TraerDscto_a_NC) Then
    CDSVentaCabDSTOSetText(CDSVentaCabDSTO,'0');

  //**********  si es ND y si hay dscto lo pongo en cero
  if (CDSVentaCabTIPOCPBTE.Value='ND') Then
    begin
      FormCpbte_2.dbchNC_Diferencia.Enabled := CDSVentaCabTIPOCPBTE.Value='ND';
      CDSVentaCabDSTOSetText(CDSVentaCabDSTO,'0');
    end;
  //********************************************************************************

  //********************************************************************************
  if FormCpbte_2.VerificaIvaCpbte then
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
          CDSInscripcion.Close;
        end;
    end;

  FormCpbte_2.EditarNro:='X';
  if QComprobNUMERARCION_PROPIA.Value<>'X' then
    begin
      FormCpbte_2.EditarNro:=QComprobEDITAR_NRO.Value;
      if FormCpbte_2.EditarNro='S' then
        CDSVentaCabCPTE_MANUAL.Value   :='S'
    end;
   if CDSVentaCabLETRAFAC.Value='E' then
     CDSVentaCabPERCIBE_IB.Value:='N';

  QComprob.Close;

END;

FUNCTION TDatosVentas.ASignarArticulo(Dato: STRING): Boolean;
var Gravado,Exento,Iva,Total,Margen,Dscto,PFinal, Cotizacion:Extended;
Enter:char;
Decimales:String;
FiltroRubUser:Boolean;
BEGIN
  IF DatosVentas.CDSVentaDet.State = dsBrowse THEN
    DatosVentas.CDSVentaDet.Edit;
  WITH DatosVentas DO
    BEGIN
      CDSStock.Close;
      CDSStock.Params.ParamByName('Codigo').Value:=Dato;
      CDSStock.Open;
      //Verifica Filtro por Rubro de Articulos....
      FiltroRubUser := DMMain_FD.FiltroRubroUsurio(DMMain_FD.UsuarioActivoId,CDSStockRUBRO_STK.Value);
      //************************************************************************************
      IF (( NOT(CDSStock.IsEmpty)) and (CDSStockCLASE_ARTICULO.Value<>0) and (CDSStockCLASE_ARTICULO.Value<>2) and
          (CDSStockCLASE_ARTICULO.Value<>4)) and (FiltroRubUser=False)  THEN
        BEGIN
          // ***********************************
          // asigno si es de producion.....
          // ***********************************
          if (CDSStockDEPRODUCCION.Value='S') and (CDSStockPRODUCCIONDIRECTA.Value='S') and
              FormCpbte_2.GenerarOProducion then
                CDSVentaDetDE_PRODUCCION.Value  := 'S'
          else
            CDSVentaDetDE_PRODUCCION.Value     := 'N';

          if CDSVentaCabTIPOCPBTE.Value='NC' then
            CDSVentaDetDE_PRODUCCION.Value     := 'N';
          // ***********************************
          //vacio todo los importes por si hay un cambio de codigo y no queden cargados los valores
          // ***********************************
          CDSVentaDetCantidad.AsFloat           := 0;
          CDSVentaDetUnitario_Total.AsFloat     := 0;
          CDSVentaDetUnitario_Gravado.AsFloat   := 0;
          CDSVentaDetUnitario_Exento.AsFloat    := 0;
          CDSVentaDetTotal.AsFloat              := 0;
          CDSVentaDetCONTROL_TRAZABILIDAD.Value := CDSStockCONTROL_TRAZABILIDAD.Value;
          CDSVentaDetMUESTRAIVAMODIFICADO.Value := CDSStockIVA_MODIFICADO.Value;
          // ***********************************
          // Verifica si Corresponde Factura A  Res.3668
          // ***********************************
          //ShowMessage(FormCpbte_2.Owner.Name); Ver propietario del Propietario
          if ((CDSVentaCabDESGLOZAIVA.Value='S') and (FormCpbte_2.Owner.Name='')) then
            begin

              if DMMain_FD.VerifRes3886(CDSStockSUBRUBRO_STK.AsString) then
                begin
                  if Not( (F8001) and ( (CDSVentaCabFECHAVTA.AsDateTime <= HastaF8001) and
                                        (CDSVentaCabFECHAVTA.AsDateTime >= DesdeF8001) ) ) then
                    ShowMessage('Para este rubro de Articulo debe presentar F 8001 Segun Res.AFIP 3668... Verifique esto... o genere el Formulario..');
                end;
            end;
          // ***********************************
          DMMain_FD.FechaUltimaActulizacionPrecio     := CDSStockFUAP.AsDateTime;
          CDSVentaDetIB_TASA.AsFloat                  := CDSStockMUESTRATASAIB.AsFloat;  // el codigo de Tasa
          CDSVentaDetGRAVADO_IB.Value                 := CDSStockGRAVADO_IB.Value;
          CDSVentaDetTIPOIB_TASA.Value                := CDSStockTASA_IB.Value;       // Codigo de IB
          CDSVentaDetCON_NRO_SERIE.Value              := CDSStockCONTROL_SERIE.Value;
          CDSVentaDetCON_CODIGO_BARRA.Value           := CDSStockUSA_CODIGOBARRA.Value;
          CDSVentaDetDetalle.AsString                 := CDSStockDetalle_Stk.AsString;
          CDSVentaDetDETALLE_ADICIONAL.AsString       := CDSStockDETALLE_STK_ADICIONAL.AsString;
          CDSVentaDetMUESTRACODALTERNATIVO.AsString   := CDSStockREEMPLAZO_STK.Value;
          CDSVentaDetUnidad.Value                     := CDSStockUnidad.Value;
          CDSVentaDetMESES_GTIA.Value                 := CDSStockGTIA_MESES.Value;
          CDSVentaDetCosto_Gravado.AsFloat            := (CDSStockFijacion_Precio_Gravado.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat);
          CDSVentaDetCosto_Exento.AsFloat             := (CDSStockFijacion_Precio_Exento.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat);
          CDSVentaDetCosto_Total.AsFloat              := (CDSStockFijacion_Precio_Total.AsFloat/CDSStockCONTENIDO_COMPRA.AsFLoat);
          CDSVentaDetAfecta_Stock.Value               := CDSStockControlaStock.Value;
          // Control de NC Por diferencias
          if CDSVentaCabNC_POR_DIFERENCIA.Value='S' then
            CDSVentaDetAFECTA_STOCK.Value :='N';

          CDSVentaDetModo_Gravamen.Value              := CDSStockModo_Gravamen.Value;
          CDSVentaDetTipoIva_Tasa.Value               := CDSStockTasa_Iva.Value;
          CDSVentaDetTipoIva_SobreTasa.Value          := CDSStockSobreTasa_Iva.Value;
          CDSVentaDetGRAVADO_IB.Value                 := CDSStockGRAVADO_IB.Value;
          CDSVentaDetPRECIO_EDITABLE.Value            := CDSStockEDITAPRECIO.Value;
          CDSVentaDetPERCIBE_IVA.AsString             := CDSStockPERCIBE_IVA.AsString;
          CDSVentaDetID_TASA_PERCEPCION_IVA.Value     := CDSStockID_TASA_PERCEP_IVA.Value;
          CDSVentaDetTASA_PERCEP_IVA.Value            := DMMain_FD.GetTasaPercepcionIVA(CDSStockID_TASA_PERCEP_IVA.Value);
          CDSVentaDetPERCEPCION_IVA_DIFERENCIAL.Value := CDSStockAPLICA_TASA_DIF.Value;

          if CDSStockPRESENTACION_CANTIDAD.ASFloat>0 then
            CDSVentaDetPRESENTACION_CANT.AsFloat   := CDSStockPRESENTACION_CANTIDAD.AsFloat
          else
            CDSVentaDetPRESENTACION_CANT.AsFloat   := 1;

          if CDSStockPRESENTACION_UNIDAD.AsString<>'' then
            CDSVentaDetPRESENTACION_UNIDAD.AsString   := CDSStockPRESENTACION_UNIDAD.AsString
          else
            CDSVentaDetPRESENTACION_UNIDAD.AsString   := CDSStockUNIDAD.AsString;

          CDSVentaDetPRESENTACION_TOLERANCIA.Value    := CDSStockPRESENTACION_TOLERANCIA.Value;

          if VarIsNull(CDSStockEDITAPRECIO.Value) then
            CDSVentaDetPRECIO_EDITABLE.Value:='S';
          //Asigno el deposito que tengo en el encabezado...
          CDSVentaDetDeposito.Value             :=CDSVentaCabDeposito.Value;
          //segun el tipo de inscripcion verifico si descrimina o no iva y si cobra Sobre tasa
          CDSVentaDetDesglozaIVA.Value          :=CDSVentaCabDesglozaIva.Value;
          CDSVentaDetCalcula_SobreTasa.Value    :=CDSVentaCabCalcula_SobreTasa.Value;
          // traigo los porcentajes de Iva
          CDSIva.Close;
          CDSIva.Params.ParamByName('id').Value :=CDSVentaDetTipoIva_Tasa.Value;
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

          if (FormCpbte_2.Calcula_iva_articulo=False) then
            CDSVentaDetIVA_Tasa.AsFloat:=0;

          if (FormCpbte_2.Calcula_iva_articulo=True) and (FormCpbte_2.Divide_iva=True) then
            CDSVentaDetIVA_Tasa.AsFloat := CDSVentaDetIVA_Tasa.AsFloat * 0.5;

          CDSVentaDetID_MONEDA.Value := CDSStockMONEDA.Value;

          QMonedas.Close;
          QMonedas.ParamByName('id').Value := CDSStockMONEDA.Value;
          QMonedas.Open;
          CDSVentaDetMUESTRAMONEDA.Value   := QMonedasSIGNO.Value;
          if QMonedasCOTIZACION.AsString<>'' then
            CDSVentaDetCOTIZACION.AsFloat := QMonedasCOTIZACION.AsFloat
          else
            CDSVentaDetCOTIZACION.AsFloat:=1;
          QMonedas.Close;

          QCodigoBarra.Close;
          QCodigoBarra.ParamByName('codigo').Value := CDSStockCODIGO_STK.Value;
          QCodigoBarra.Open;
          CDSVentaDetCODIGOBARRA.Value           := QCodigoBarraMAX.Value;
          QCodigoBarra.Close;

          Cotizacion                             := DMMain_FD.CotizacionCliente(CDSVentaCabCODIGO.AsString, CDSVentaDetID_MONEDA.AsInteger);
          if Cotizacion > 1 then
            CDSVentaDetCOTIZACION.AsFloat        := Cotizacion;

          CDSVentaDetCosto_Gravado.AsFloat       := (CDSVentaDetCOSTO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetCosto_Exento.AsFloat        := (CDSVentaDetCOSTO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetCosto_Total.AsFloat         := (CDSVentaDetCOSTO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

          DMMain_FD.CalculaPrecioVta_FD(CDSVentaCabINGRESA_LIBRO_IVA.Value,DMMain_FD.IdListaProveedor,CDSVentaCabLISTAPRECIO.Value,CDSVentaCabSUCURSAL.Value,CDSVentaCabDEPOSITO.Value,
                                        CDSVentaDetCODIGOARTICULO.AsString,CDSVentaCabCODIGO.AsString,CDSVentaCabTIPOCPBTE.Value,
                                        CDSVentaDetCOTIZACION.AsFloat,
                                        CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat,
                                        Gravado,exento,Total,Iva,Margen,dscto,PFinal);

          if (FormCpbte_2.Divide_iva=True) then
              Iva:=Iva/2;
          if (FormCpbte_2.Calcula_iva_articulo=False) then
              Iva:=0;


          CDSVentaDetUNITARIO_GRAVADO.AsFloat:=Gravado;
          // modificado el 17/10/2017
//          CDSVentaDetUNITARIO_GRAVADO.AsFloat:=(Gravado+Iva)/(1+(CDSVentaDetIVA_TASA.AsFloat*0.01));
          CDSVentaDetUNITARIO_EXENTO.AsFloat      := Exento;
          CDSVentaDetUNITARIO_TOTAL.AsFloat       := Total;
          CDSVentaDetUNITARIO_TOTAL_OLD.AsFloat   := Total;
          CDSVentaDetUNITARIO_TOTAL_OLD_2.AsFloat := Total;

          CDSVentaDetIVA_UNITARIO.AsFloat         := Iva;
          CDSVentaDetMARGEN.ASFloat               := Margen;
          CDSVentaDetDESCUENTO.ASFloat            := Dscto;
          //**********************************************
          // Asignar cantidad en 1 cuando es despachante..
          //***********************************************
          if FormCpbte_2.ModoDespachante1.Checked then
            begin
              CDSVentaDetCANTIDAD.Text:='1';
              FormCpbte_2.DBGrillaDetalle.SelectedIndex:=5;
            end;

          // ****************************************************
          // **** Cantidad desde PLU ********************************
          // ****************************************************
          if DMMain_FD.DesdePLU then
            begin
              Enter:=#13;
              if DMMain_FD.ModoPLU=0 then  //Precio
                begin
                  CDSVentaDetUnitario_TotalSetText(CDSVentaDetUNITARIO_TOTAL,FLoatToStr(StrToFloat(DMMain_FD.PrecioPLU)*DMMain_FD.PluCoeficiente{0.01}));
                  FormCpbte_2.DBGrillaDetalle.SelectedIndex:=5;
                 // FormCpbteCtdo_2.DBGrillaDetalleKeyPress(FormCpbteCtdo_2.DBGrillaDetalle,Enter);
                end
              else
                if DMMain_FD.ModoPLU=1 then //Cantidad
                  begin
                    CDSVentaDetCantidadSetText(CDSVentaDetCantidad,FLoatToStr(StrToFloat(DMMain_FD.PrecioPLU)*0.001));
                    FormCpbte_2.DBGrillaDetalle.SelectedIndex:=5;
                    FormCpbte_2.DBGrillaDetalleKeyPress(FormCpbte_2.DBGrillaDetalle,Enter);
                  end;
            end;
          // **** Fin desde PLU ********************************
          // ****************************************************
          // ************************************************************************************
           // para probar los decimales ....
          Decimales:=(Copy(MascaraDetalleUnitario,pos('.',MascaraDetalleUnitario)+1,length(MascaraDetalleUnitario)));

          if Length(Decimales)=2 then
            begin
              CDSVentaDetUNITARIO_GRAVADO.AsFloat := RoundTo(Gravado,-3);
              CDSVentaDetUNITARIO_EXENTO.AsFloat  := RoundTo(Exento,-3);
              CDSVentaDetUNITARIO_TOTAL.AsFloat   := RoundTo(Total,-3);

              CDSVentaDetUNITARIO_GRAVADO.AsFloat := RoundTo(CDSVentaDetUNITARIO_GRAVADO.AsFloat,-2);
              CDSVentaDetUNITARIO_EXENTO.AsFloat  := RoundTo(CDSVentaDetUNITARIO_EXENTO.AsFloat,-2);
              CDSVentaDetUNITARIO_TOTAL.AsFloat   := RoundTo(CDSVentaDetUNITARIO_TOTAL.AsFloat,-2);

            end
          else
          if Length(Decimales)=3 then
            begin
              CDSVentaDetUNITARIO_GRAVADO.AsFloat := RoundTo(Gravado,-4);
              CDSVentaDetUNITARIO_EXENTO.AsFloat  := RoundTo(Exento,-4);
              CDSVentaDetUNITARIO_TOTAL.AsFloat   := RoundTo(Total,-4);

              CDSVentaDetUNITARIO_GRAVADO.AsFloat := RoundTo(CDSVentaDetUNITARIO_GRAVADO.AsFloat,-3);
              CDSVentaDetUNITARIO_EXENTO.AsFloat  := RoundTo(CDSVentaDetUNITARIO_EXENTO.AsFloat,-3);
              CDSVentaDetUNITARIO_TOTAL.AsFloat   := RoundTo(CDSVentaDetUNITARIO_TOTAL.AsFloat,-3);
            end;

          VerificaGtiaExtendida(CDSVentaDetCODIGOARTICULO.AsString,CDSVentaCabCODIGO.AsString);
          // ************************************************************************************
          // Genera el detalle de produccion.....
          if (CDSVentaDetDE_PRODUCCION.Value='S') and (FormCpbte_2.GenerarOProducion) and (CDSVentaCabTIPOCPBTE.AsString<>'NC') then
            GenerarDetalleProduccion;
          FormCpbte_2.spProduccion.Enabled:= CDSVentaDetDE_PRODUCCION.Value='S';
          // ************************************************************************************

          // ****************************************************
          // **** Cantidad desde PLU ****************************
          if DMMain_FD.DesdePLU then
            begin
              Enter:=#13;
              if DMMain_FD.ModoPLU=0 then  //Precio
                begin
                  CDSVentaDetUnitario_TotalSetText(CDSVentaDetUNITARIO_TOTAL,FLoatToStr(StrToFloat(DMMain_FD.PrecioPLU)*0.01));
                  FormCpbte_2.DBGrillaDetalle.SelectedIndex:=5;
                  FormCpbte_2.DBGrillaDetalleKeyPress(FormCpbte_2.DBGrillaDetalle,Enter);
                end
              else
                if DMMain_FD.ModoPLU=1 then //Cantidad
                  begin
                    CDSVentaDetCantidadSetText(CDSVentaDetCantidad,FLoatToStr(StrToFloat(DMMain_FD.PrecioPLU)*0.001));
                    FormCpbte_2.DBGrillaDetalle.SelectedIndex:=5;
                    FormCpbte_2.DBGrillaDetalleKeyPress(FormCpbte_2.DBGrillaDetalle,Enter);
                  end;
            end;
          // **** Fin desde PLU *********************************
          // ****************************************************
          Result:=True;
        END
      ELSE
        Result:=False;
    END;
END;

FUNCTION TDatosVentas.ASignarArticuloProduccion(Dato: STRING): Boolean;
BEGIN
  IF DatosVentas.CDSFc_Prod_Mov.State = dsBrowse THEN
    DatosVentas.CDSFc_Prod_Mov.Edit;
  WITH DatosVentas DO
    BEGIN
      CDSStock.Close;
      CDSStock.Params.ParamByName('Codigo').Value:=Dato;
      CDSStock.Open;
      IF (( NOT (CDSStock.IsEmpty)) and (CDSStockCLASE_ARTICULO.AsInteger<>0)) THEN
        BEGIN
          CDSFc_Prod_MovCODIGO.AsString      := Dato;
          CDSFc_Prod_MovDETALLE.AsString     := CDSStockDETALLE_STK.AsString;
          CDSFc_Prod_MovAFECTA_STOCK.AsString:= CDSStockCONTROLASTOCK.AsString;
         // CDSFc_Prod_MovDEPOSITO_ORIGEN.Value:= CDSFc_Prod_Detde
          Result:=True;
        END
      ELSE
        Result:=False;
    END;
END;


FUNCTION TDatosVentas.AsignarCliente(Dato: STRING): Boolean;
Var Escape:Char;
d,m,a:word;
DateTem,desde1,desde2,desde3,desde4, IIBBDesde, IIBBHasta:TDateTime;
Ret,Perc, Cotizacion :Extended;
Juri:TJurisdiccion;
BEGIN
  Escape:=#27;
  WITH FormCpbte_2 DO
    BEGIN
      // por defecto todos son de cta cte.
      ClienteCtdo:=False;

      //**********************************************************
      // Verifico si se controla de deuda mayor del tiempo permitido
      //**********************************************************
//      DMMain_FD.QOpciones.Close;
//      DMMain_FD.QOpciones.ParamByName('Opcion').Value:='CTRDEUDA';
//      DMMain_FD.QOpciones.Open;
//      MensajeVto := DMMain_FD.QOpciones.Fields[0].AsString[1];
//      DMMain_FD.QOpciones.Close;

      //**********************************************************
      //**********************************************************
      // aca le pongo la tasa de percepcion de IIBB  General

      CDSVentaCabPERCIBE_IB.AsString          := IfThen( DMMain_FD.AgentePercepcionIB,'S','N');
      CDSVentaCabPERCEPCION_IB_TASA.AsFloat   := DMMain_FD.TasaPercepcionIB;

      QClientes.Close;
      QClientes.ParamByName('Codigo').Value   := Dato;
      QClientes.Open;
      if QClientesCODIGO.AsString<>'' then
        begin
          if DMMain_FD.ModificaSucursal=False Then
            begin
              if QClientesSUCURSAL.Value<>SucursalPorDefecto Then
                QClientes.Close;
            end;
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


          IF NOT (QClientes.IsEmpty) THEN
            BEGIN
              ClienteCtdo := (QClientesEMITE_FACTURA.Value='N');
              if ClienteCtdo and (CDSVentaCabTIPOCPBTE.Value='FC') then
                 ShowMessage('Cliente de Contado .. No se podría hacer factura en Cta.Cte...');
              FormCpbte_2.ImprimeSaldo := QClientesIMPRIME_SALDOFACTURA.Value;

              if (FormCpbte_2.Owner.Name<>'FormFacturaRemitoAgrupado') Then
                if (QClientesDEUDAMAYOR30.Value='S') and (CDSVentaCabTIPOCPBTE.Value='FC') then
                  begin
                    DateTem:= Date;
                    DateTem:= IncDay(DateTem, QClientesDIAS_MAYOR_30.Value * -1);

                    desde1 := DateTem;
                    desde2 := IncMonth(desde1,-1);
                    desde3 := IncMonth(desde2,-1);
                    desde4 := IncMonth(Desde3,-1);

                    QSaldos.Close;
                    QSaldos.ParamByName('codigo').AsString := Dato;//QClientesCODIGO.Value;// CDSVentaCabCODIGO.Value;
                    QSaldos.ParamByName('Desde1').AsDate   := Desde1;
                    QSaldos.ParamByName('Desde2').AsDate   := Desde2;
                    QSaldos.ParamByName('DESDE3').AsDate   := Desde3;
                    QSaldos.ParamByName('DESDE4').AsDate   := Desde4;
                    QSaldos.Open;

                    if ((Trunc(QSaldosSALDO.AsFloat*100))>0) and  (DMMain_FD.ControlaDeuda) Then             //(MensajeVto='S')
                      FormCpbte_2.jvAlerta.Execute;
                    QSaldos.Close;
                  end;

              DMStoreProcedure.QSaldoCtaCte.Close;
              DMStoreProcedure.QSaldoCtaCte.ParamByName('codigo').Value:=Dato;
              DMStoreProcedure.QSaldoCtaCte.Open;

              DMStoreProcedure.QSaldoRtos.Close;
              DMStoreProcedure.QSaldoRtos.ParamByName('codigo').Value  :=Dato;
              DMStoreProcedure.QSaldoRtos.Open;

              CDSVentaCabSALDO_ACTUAL_CC.AsFloat := DMStoreProcedure.QSaldoCtaCte.Fields[0].AsFloat;
              FormCpbte_2.Saldo.Caption          := FormatFloat(',0.00',0);
              FormCpbte_2.Lte.Caption            := FormatFloat(',0.00',0);
              FormCpbte_2.SaldoRto.Caption       := FormatFloat(',0.00',0);

              if DMStoreProcedure.QSaldoCtaCte.Fields[0].AsString<>'' Then
                FormCpbte_2.Saldo.Caption:=FormatFloat(',0.00',DMStoreProcedure.QSaldoCtaCte.Fields[0].AsFloat);
              if QClientesLIMITE_CREDITO.AsString<>'' Then
                FormCpbte_2.Lte.Caption  :=FormatFloat(',0.00',QClientesLIMITE_CREDITO.AsFloat);
              if DMStoreProcedure.QSaldoRtos.Fields[0].AsString<>'' Then
                FormCpbte_2.SaldoRto.Caption:=FormatFloat(',0.00',DMStoreProcedure.QSaldoRtos.Fields[0].AsFloat);

              FormCpbte_2.pnLimiteCto.Visible:=(QClientesLIMITE_CREDITO.AsString<>'');

              if (SucursalPercibeIIBB='N') Then
                CDSVentaCabPERCIBE_IB.Value := 'N';

              //***************************************************************************
              // aca controlo si percibe I.Brutos o No
              //***************************************************************************
              if (CDSVentaCabPERCIBE_IB.AsString[1]='S') and (FormCpbte_2.Owner.Name<>'FormImportacionFacturasVtaGral') Then
                begin
                  // Verifico si esta en el listado de Tasa Percepcion..
                  // el valor de la tasa se carga al hacer un nuevo comprobante
                  Perc      :=  CDSVentaCabPERCEPCION_IB_TASA.AsFloat;
                  Ret       :=  0;

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

                  // Percepcion Ley 15311..............
                  if CDSVentaCabPERCIBE_IB.AsString='S' then
                    if CDSVentaCabMUESTRAAPLICALEY15311.AsString='S' then
                      if DMMain_FD.TasaLey15311>0 then
                        if Perc>0 then
                          begin
                            Perc:=DMMain_FD.TasaLey15311;
                            CDSVentaCabPERCEPCION_IB_TASA.AsFloat       :=  Perc;
                          end;

                //**************************************************
                  if QClientesPERCIBIR_IB.Value='N' Then
                    CDSVentaCabPERCIBE_IB.Value:='N';
                  if (QClientesINSCRIPTO_MULTICONVENIO.Value='S') and
                     (CDSVentaCabFECHAVTA.AsDateTime <= QClientesFECHA_VENCIMI_DDJJ_MULTI.AsDateTime) Then
                       CDSVentaCabPERCIBE_IB.Value   := 'N'
                  else
                    if (QClientesINSCRIPTO_MULTICONVENIO.Value='S') and
                       (CDSVentaCabFECHAVTA.AsDateTime>QClientesFECHA_VENCIMI_DDJJ_MULTI.AsDateTime) Then
                      Begin
                        ShowMessage('Fecha de DDJJ Fuera de Termino..... Se aplica percepciones...');
                        CDSVentaCabPERCIBE_IB.Value   := 'S'
                      end;
                end
              else
                begin
                  // aca le pongo la tasa de percepcion de IIBB  General
  //                CDSVentaCabPERCIBE_IB.Value          := 0;
                  CDSVentaCabPERCEPCION_IB_TASA.AsFloat := 0;
                  // ******************************************************
                end;

      //***************************************************************************
      //***************************************************************************

              CDSVentaCabNOMBRE.AsString              := QClientesNOMBRE.AsString;
              CDSVentaCabRAZONSOCIAL.AsString         := QClientesRAZON_SOCIAL.ASString;
              CDSVentaCabCUIT.AsString                := '00-00000000-0';
              CDSVentaCabMUESTRACOORPORATIVO.AsString := QClientesCODIGO_COORPORATIVO.Value;
              CDSVentaCabZONA.Value                   := QClientesZONA.Value;
              CDSVentaCabMUESTRAZONA.Value            := QClientesMUESTRAZONA.Value;
              if (Trim(QClientesAVISO.AsString)<>'')
                 and (FormCpbte_2.Owner.Name<>'FormImportacionFacturasVtaGral')
                 and (FormCpbte_2.Owner.Name<>'FormFacturarRemitos')
                 and (FormCpbte_2.Owner.Name<>'FormFacturaRemitoAgrupado')
                 and (FormCpbte_2.Owner.Name<>'FormRecepRepartoExpress')
                 and (FormCpbte_2.Owner.Name<>'FormFacturarModelos')
                 and (FormCpbte_2.Owner.Name<>'FormFacturaPlantillas')
                 and (FormCpbte_2.Owner.Name<>'FormRecibo_2') then
                begin
                  FormCpbte_2.dskAviso.MessageText:=QClientesAVISO.AsString;
                  dskAviso.Execute;
                end;
              CDSVentaCabID_GARANTE.Value    := QClientesMUESTRAIDGARANTE.Value;

              if (QClientesNRO_DE_CUIT.AsString='') or (QClientesNRO_DE_CUIT.AsString[1]='-') Then
                CDSVentaCabCUIT.AsString:='00-00000000-0'
              ELSE
                CDSVentaCabCUIT.AsString        := QClientesNRO_DE_CUIT.AsString;

              if Length(CDSVentaCabCUIT.AsString)<13  then
                CDSVentaCabCUIT.AsString       := '00-00000000-0';

              if Trim(CDSVentaCabCUIT.AsString)='' then
                CDSVentaCabCUIT.AsString       := '00-00000000-0';

              if Length(CDSVentaCabCUIT.AsString)<13  then
                CDSVentaCabCUIT.AsString       := '00-00000000-0';

              if (CDSVentaCabCUIT.AsString<>'00-00000000-0') and (FormCpbte_2.Owner.Name<>'FormImportacionFacturasVtaGral') then
                begin
                  if ValidarCuit(CDSVentaCabCUIT.AsString) and (FormCpbte_2.Owner.Name<>'FormImportacionFacturasVtaGral') Then
                    CDSVentaCabCUIT.AsString        := QClientesNRO_DE_CUIT.AsString
                  else
                    begin
                      if MessageDlg('El numero de Cuit no es Valido... Verificar en la Ficha del Cliente...'+#13+
                                    'Continua y factura como consumido final?',mtConfirmation,mbYesNo,0)=mryes Then
                        begin
                          CDSVentaCabTIPOIVA.AsInteger   := 3;
                        end
                      else
                        begin
                          CDSVentaCabCODIGO.Clear;
                          CDSVentaCabNOMBRE.Clear;
                          CDSVentaCabRAZONSOCIAL.Clear;
                        end;
                    end;
                end;

              CDSVentaCabDIRECCION.AsString  := QClientesDIRECCION_COMERCIAL.AsString;

              if (CDSVentaCabTIPOIVA.AsInteger = 3) and ((CDSVentaCabCUIT.AsString='') or (CDSVentaCabCUIT.AsString='00-00000000-0')) Then  // si es consumidor final
                CDSVentaCabCUIT.AsString     := QClientesNRODOCUMENTO.AsString;

              CDSVentaCabCPOSTAL.AsString    := QClientesCPOSTAL.AsString;
              CDSVentaCabLOCALIDAD.AsString  := QClientesLOCALIDAD.AsString;
              CDSVentaCabZONA.AsInteger      := QClientesZONA.AsInteger;
              CorreoDestino                  := QClientesCORREOELECTRONICO.AsString;


              //**************************************************************************
              // si se usa asignacion de juridicion
              //**************************************************************************

              if DMMain_FD.FacturaPorJuridiccion then
                begin
                  if DMMain_FD.JurisdiccionIIBLocalidad(CDSVentaCabLOCALIDAD.AsString, Juri) then
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
              CDSVentaCabLdr.Clear;

              // asigno el comprobante segun condicion de Inscripcion
              // si el cliente no tiene asignado un comprobante traigo el que le corresponde por el tipo de Iva
              if not(ClienteCtdo) and (FormCpbte_2.Owner.Name<>'FormPresupuesto_2') then
                // Modificado 02/08/2024 para que tome el Comprobante elegido
                begin
                  if (QClientesSUCURSAL.AsInteger = CDSVentaCabSUCURSAL.AsInteger)    and
                     (Not(QClientesID_FACTURAPORDEFECTO.IsNUll))                      and
                     (QClientesID_FACTURAPORDEFECTO.AsInteger > 0)                    and
                     (Trim(QClientesMUESTRAFACTURADEF.AsString) <> '')
                 Then
                    CDSVentaCabID_TIPOCOMPROBANTE.Text  :=  QClientesID_FACTURAPORDEFECTO.AsString
                  else
                    CDSVentaCabID_TIPOCOMPROBANTE.Text  :=  DMMain_FD.CpbtePorDefecto('FC','V',CDSVentaCabSUCURSAL.AsInteger,CDSVentaCabDESGLOZAIVA.AsString,DMMain_fd.UsuarioActivoId);
                end
              else
                CDSVentaCabID_TIPOCOMPROBANTE.Clear;

              // Controlar el limite de credito *******
              if (Not(ControlaLteCredito)) and (FormCpbte_2.Owner.Name<>'FormImportacionFacturasVtaGral') and
                 (FormCpbte_2.Owner.Name<>'FormRecepRepartoExpress') and
                 ((DMStoreProcedure.QSaldoCtaCte.Fields[0].AsFloat + DMStoreProcedure.QSaldoRtos.Fields[0].AsFloat) > QClientesLIMITE_CREDITO.AsFloat + DMMain_FD.ToleranciaDeuda ) and
                 (QClientesLIMITE_CREDITO.AsFloat>0) and (CDSVentaCabTIPOCPBTE.Value='FC')  then
                  begin
                    // Es para bloequear o no la continuacion de la vta
                    if ((BloqueaDeudor) and (DMMain_FD.UsuarioAdministrador=False)) then
                      begin
                        if FormCpbte_2.Visible Then
                          ShowMessage('Cliente con saldo de '+ FormatFloat(',0.00',DMStoreProcedure.QSaldoCtaCte.Fields[0].AsFloat+DMStoreProcedure.QSaldoRtos.Fields[0].AsFloat ) +' que supera el credito premitido ... No se permiten Operaciones...');
                        sysUtils.Abort;
                        FormCpbte_2.OnKeyPress(FormCpbte_2,Escape);
                      end
                    else
                      if FormCpbte_2.Visible Then
                        ShowMessage('Cliente con saldo de '+ FormatFloat(',0.00',DMStoreProcedure.QSaldoCtaCte.Fields[0].AsFloat + DMStoreProcedure.QSaldoRtos.Fields[0].AsFloat ) +' que supera el credito premitido .... ');
                  end;
              //***************************************

              //Traigo el Primer LDR
              if DMMain_FD.GetPrimerLdr(dato)>-1 then
                CDSVentaCabLDRSetText(CDSVentaCabLDR,IntToStr(DMMain_FD.GetPrimerLdr(dato)))
              else
                begin
                  if FormCpbte_2.Visible Then
                    ShowMessage('No tiene Ldr cargado....');
                  CDSVentaCabLDR.Clear;
                  CDSVentaCabMUESTRALDR.Clear;
                end;

              //Traigo La primera condicion de vta por defecto
              if DMMain_FD.GetCondicionVtaPorDefecto(Dato)>-1 Then
                CDSVentaCabCONDICIONVTASetText(CDSVentaCabCONDICIONVTA,IntToSTr(DMMain_FD.GetCondicionVtaPorDefecto(Dato)))
              else
                begin
                  if FormCpbte_2.Visible Then
                    ShowMessage('No tiene Condiciones de Vta. cargadas....');
                  CDSVentaCabCONDICIONVTA.Clear;
                  CDSVentaCabMUESTRACONDVENTA.Clear;
                end;

              // si es NC pongo el descuento en 0(cero) si existe....
              if CDSVentaCabTIPOCPBTE.Value='NC' then
                CDSVentaCabDSTOSetText(CDSVentaCabDSTO,'0');

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
                  CDSPersonal.Close;
                end
              else
                begin
                  if (DMMain_FD.EmpleadoPorDefecto<>'') and (DMMain_FD.EmpleadoPorDefecto<>'-1')  then
                    CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR,DMMain_FD.EmpleadoPorDefecto);
                end;
              //***************************************************************
              // aca tomo la lista de precio del cliente si no dejo la que esta
              //***************************************************************
              CDSVentaCabLISTAPRECIO.AsInteger  :=  DMMain_FD.ListaPorDefecto (CDSVentaCabSUCURSAL.AsInteger); //DMMain_FD.AsignarListaPrecio(CDSVentaCabSUCURSAL.Value);
              QBuscaListaPrecio.Close;
              QBuscaListaPrecio.ParamByName('id').Value:=QClientesLISTAPRECIOS.Value;
              QBuscaListaPrecio.Open;
              if (QBuscaListaPrecioID.AsString<>'') and (QBuscaListaPrecioID.AsInteger>=0) then
                begin
                  if QClientesLISTAPRECIOS.AsString<>'' Then
                    BEGIN
                      CDSVentaCabLISTAPRECIO.Value:=QClientesLISTAPRECIOS.Value;
                      if (FormCpbte_2.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString<>'') and
                         (FormCpbte_2.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsInteger>-1)  Then
                        CDSVentaCabCondicionVtaSetText(CDSVentaCabCONDICIONVTA,FormCpbte_2.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString);
                    END
                  else
                    if (CDSVentaCabLISTAPRECIO.AsString<>'') and
                       (FormCpbte_2.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsInteger>-1) Then
                      CDSVentaCabCondicionVtaSetText(CDSVentaCabCONDICIONVTA,FormCpbte_2.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString);
                end;
              QBuscaListaPrecio.Close;
              //***************************************************************
              //***************************************************************
              if ((CDSVentaCabCUIT.AsString='00-00000000-0') or (CDSVentaCabCUIT.AsString=''))and
                 (CDSVentaCabDESGLOZAIVA.Value='S') and
                 (CDSVentaCabINGRESA_LIBRO_IVA.Value='S') then
                begin
                  if FormCpbte_2.Visible Then
                    ShowMessage('No hay Numero de Cuit Cargado... y esta como inscripto en IVA, Verificar en la Ficha del Cliente...');
                end;

              Cotizacion          := DMMain_FD.CotizacionCliente(CDSVentaCabCODIGO.AsString, CDSVentaDetID_MONEDA.AsInteger);

              if Cotizacion > 1 then
                CDSVentaCabMONEDA_CPBTE_COTIZACION.ASFloat  :=  Cotizacion;

              F8001               := QClientesPRESENTO_F8001.Value='S';
              DesdeF8001          := Trunc(QClientesDESDE_F8001.AsDateTime);
              HastaF8001          := Trunc(QClientesHASTA_F8001.AsDateTime);
              if QClientesPERCIBE_IVA.Value='N' then
                CDSVentaCabPERCIBE_IVA.Value:='N';

              result:=True;
            END;
        end
      ELSE
        Result:=False;
    END;


  DMStoreProcedure.QSaldoCtaCte.Close;
  DMMain_FD.QOpciones.Close;
END;

FUNCTION TDatosVentas.AsignarLdr(Cliente: STRING; Dato: integer): Boolean;
BEGIN
  CDSLdr.Close;
  CDSLdr.Params.ParamByName('Codigo').Value:=Cliente;
  CDSLdr.Params.ParamByName('Ldr').Value:=Dato;
  CDSLdr.Open;
  IF NOT (CDSLdr.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSVentaCabMuestraLdr.Value         := CDSLdrNombre.Value;
      CDSVentaCabMUESTRADIRECCIONLDR.Value:= CDSLdrDireccion.Value;
    END
  ELSE
    BEGIN
      CDSVentaCabMuestraLdr.Value         := '';
      CDSVentaCabMUESTRADIRECCIONLDR.Value:='';
      Result:=False;
    END;
  CDSLdr.Close;
END;

function TDatosVentas.AsignarNotas(Dato: Integer): String;
begin
  Result:='';
  CDSNotas.Close;
  CDSNotas.Params.ParamByName('codigo').Value:=Dato;
  CDSNotas.Open;
  if CDSNotasDETALLE.AsString<>'' then
    Result:=CDSNotasDETALLE.AsString;
  CDSNotas.Close;
end;

FUNCTION TDatosVentas.AsignarSucursal(Dato: Integer): Boolean;
var
  DepositoSuc     : Integer;
  Juri            : TJurisdiccion;
  TasaRet, TasaPer: Extended;
BEGIN
  DMMain_FD.Cuit_SUCURSAL       :='';
  DMMain_FD.Certificado_SUCURSAL:='';

  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value:=dato;
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
              CDSVentaCabJURIDICION_LOCALIDAD.Value := QLocalidadJurDefectoID.Value;
              CDSVentaCabJURIDICION.Value           := QLocalidadJurDefectoID_JURIDICION.Value;
            end;
          QLocalidadJurDefecto.Close;

          if DMMain_FD.JurisdiccionPorSucursal(CDSVentaCabSUCURSAL.AsInteger, Juri) then
            begin
              CDSVentaCabJURIDICION_LOCALIDAD.AsInteger := Juri.LOCALIDAD;        //DMMain_FD.QJuridiccionPorSucursalID_JURIDICION_LOCALIDAD.Value;
              CDSVentaCabJURIDICION.AsInteger           := Juri.ID;   //DMMain_FD.QJuridiccionPorSucursalMUESTRAJURIDICCION.Value;
            end;
        end;
      //**************************************************************************
      //**************************************************************************
      //***** si hay otro certificado ********************************************
      DMMain_FD.Cuit_SUCURSAL        := CDSSucursalCUIT.Value;
      DMMain_FD.Certificado_SUCURSAL := CDSSucursalCERTIFICADO_ELEC.Value;
      //**************************************************************************
      //**************************************************************************

      DepositoSuc                 := DMMain_FD.DepositoPorSucursal(CDSVentaCabSUCURSAL.AsInteger);
      if (DepositoSuc>0) and (DepositoSuc <> CDSVentaCabDeposito.AsInteger) then
        CDSVentaCabDeposito.Text        := IntToStr( DepositoSuc );
      CDSVentaCabID_TIPOCOMPROBANTE.Clear;
      CDSVentaCabMUESTRACOMPROBANTE.Clear;
      CDSVentaCabCLASECPBTE.Clear;
      CDSVentaCabTIPOCPBTE.Clear;
      CDSVentaCabSUCFAC.Value   :='';
      CDSVentaCabNUMEROFAC.Value:='';
      //aca cargo si la suc. le correspone
      //hacer  o no Percepcion de IIBB cuando la empresa
      //es Agente de percepcion
      SucursalPercibeIIBB := CDSSucursalAPLICA_PERCEPCION_IIBB.Value;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value:=CDSVentaCabCODIGO.Value;
      QClientes.Open;
//      DMMain_FD.QTasaPercep_Retencion_IIBB.Close;
//      DMMain_FD.QTasaPercep_Retencion_IIBB.ParamByName('cuit').Value:= QClientesNRO_DE_CUIT.AsString;
//      DMMain_FD.QTasaPercep_Retencion_IIBB.Open;
//      if DMMain_FD.QTasaPercep_Retencion_IIBBCUIT.AsString<>'' Then

      if DMMain_FD.TasaPerRetIIBB_CUIT(QClientesNRO_DE_CUIT.AsString, TasaPer, TasaRet) then
        CDSVentaCabPERCEPCION_IB_TASA.AsFloat :=   TasaPer //DMMain_FD.QTasaPercep_Retencion_IIBBTASA_PERCEPCION.AsFloat
      else
        if SucursalPercibeIIBB='N' Then
          begin
            CDSVentaCabPERCIBE_IB.AsString        := 'N';
            CDSVentaCabMUESTRAAPLICALEY15311.Value:= 'N';
          end
        else
          begin
            CDSVentaCabPERCIBE_IB.AsString        := 'S';
            CDSVentaCabMUESTRAAPLICALEY15311.Value:= CDSSucursalAPLICA_LEY15311.AsString;
          end;


      QClientes.Close;
//    ****************************************
//     ****************************************
 //     if ((TForm(Self.Owner)).Owner.Name<>'FormNotaPedidoCliente')   then
        begin
          DMBuscadores.CDSBuscaComprob.Close;
          DMBuscadores.CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
          DMBuscadores.CDSBuscaComprob.Open;
          if DMBuscadores.CDSBuscaComprob.RecordCount=1 Then
            begin
              CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
              if (FormCpbte_2.Visible=True) and  (FormCpbte_2.RxCCodigo.Visible=True) and ( FormCpbte_2.RxCCodigo.Enabled=True) then
                FormCpbte_2.RxCCodigo.SetFocus;
            end;
          DMBuscadores.CDSBuscaComprob.close;
        end;

      Result:=True;
      CDSVentaCabMuestraSucursal.Value:= CDSSucursalDetalle.Value;
      DMBuscadores.CDSBuscaComprob.Close;
      //**************************************************************************
      //****Asigno la Lsta Por defecto  o la primera *****************************
      //**************************************************************************
//      DMMain_FD.QListaPrecioPorDefecto.CLose;
//      DMMain_FD.QListaPrecioPorDefecto.Open;
//      if DMMain_FD.QListaPrecioPorDefecto.Fields[0].AsString<>'' Then
//        CDSVentaCabLISTAPRECIO.Value:=DMMain_FD.QListaPrecioPorDefecto.Fields[0].Value
//      else
//        begin
//          DMMain_FD.QPrimeraListaPrecios.Close;
//          DMMain_FD.QPrimeraListaPrecios.Open;
//          if DMMain_FD.QPrimeraListaPrecios.Fields[0].AsString<>'' Then
//            CDSVentaCabLISTAPRECIO.Value:=DMMain_FD.QPrimeraListaPrecios.Fields[0].Value;
//          DMMain_FD.QPrimeraListaPrecios.Close;
//       end;
//      DMMain_FD.QListaPrecioPorDefecto.CLose;
//      //***********************************************************
//      // Asigno la lista por sucursal
//      //***********************************************************
//      DMMain_FD.QListaDefectoSuc.Close;
//      DMMain_FD.QListaDefectoSuc.ParamByName('sucursal').Value:= CDSVentaCabSUCURSAL.Value;
//      DMMain_FD.QListaDefectoSuc.Open;
//      if (DMMain_FD.QListaDefectoSuc.Fields[0].AsString<>'') then
//        begin
//          CDSVentaCabLISTAPRECIO.Value:= DMMain_FD.QListaDefectoSuc.Fields[0].AsInteger;
//        end;
//       DMMain_FD.QListaDefectoSuc.Close;

       CDSVentaCabLISTAPRECIO.Value:= DMMain_FD.ListaPorDefecto(CDSVentaCabSUCURSAL.AsInteger);
       //***************************************************************
      // aca tomo la lista de precio del cliente si no dejo la que esta
      //***************************************************************
      if (CDSVentaCabCODIGO.AsString<>'') then
        begin
          QClientes.Close;
          QClientes.ParamByName('Codigo').Value:=CDSVentaCabCODIGO.AsString;
          QClientes.Open;
          QBuscaListaPrecio.Close;
          QBuscaListaPrecio.ParamByName('id').Value:=QClientesLISTAPRECIOS.Value;
          QBuscaListaPrecio.Open;
          if QBuscaListaPrecioID.AsString<>'' then
            begin
              CDSVentaCabLISTAPRECIO.Value:=QBuscaListaPrecioID.Value;
              if (FormCpbte_2.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString<>'') and
                 (FormCpbte_2.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsInteger>-1)  Then
              CDSVentaCabCondicionVtaSetText(CDSVentaCabCONDICIONVTA,FormCpbte_2.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString);
            end;
          QClientes.Close;
          QBuscaListaPrecio.Close;
        end;
      //***************************************************************
      //***************************************************************
    END
  ELSE
    Result:=False;
  CDSSucursal.Close;
END;

FUNCTION TDatosVentas.AsignarCondVenta(Cliente: STRING; Dato: Integer): Boolean;
BEGIN
  CDSCondVenta.Close;
  CDSCondVenta.Params.ParamByName('Codigo').Value     :=Cliente;
  CDSCondVenta.Params.ParamByName('CodigoPago').Value :=Dato;
  CDSCondVenta.Open;
  IF (CDSCondVentaCodigoPago.AsString<>'') THEN
    BEGIN
      Result:=True;
      CDSVentaCabMuestraCondVenta.Value := CDSCondVentaDetalle.Value;
      CDSVentaCabFECHAVTO.AsDateTime    := CDSVentaCabFECHAVTA.AsDateTime + CDSCondVentaDias.Value;
      CDSVentaCabDSTO.AsFloat           := CDSCondVentaDescuento.AsFloat;
    END
  ELSE
    Result:=False;
  CDSCondVenta.Close;
END;

FUNCTION TDatosVentas.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value:=Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.Eof) THEN
    BEGIN
      Result:=True;
      CDSVentaCabMuestraDeposito.Value:=CDSDepositoNOMBRE.Value;
    END
  ELSE
    Result:=False;
  CDSDeposito.Close;
END;

FUNCTION TDatosVentas.AsignarVendedor(Dato: String): Boolean;
BEGIN
  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('Codigo').Value:=Dato;
  CDSPersonal.Open;
  IF NOT (CDSPersonal.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSVentaCabMUESTRAVENDEDOR.Value  :=CDSPersonalNOMBRE.Value;
      CDSVentaCabCOMSIONVENDEDOR.AsFloat:=CDSPersonalCOMISION.AsFloat;
      // 12/02/2026 esto no se por que esta pero no lo borro lo comento para que no me afecte la asignacion
      //if CDSPersonalMUESTRADEPOSITO.AsString<>'' then
      //  CDSVentaCabDEPOSITO.Text:=CDSPersonalMUESTRADEPOSITO.ASString;
    END
  ELSE
    begin
      Result:=False;
      CDSVentaCabMUESTRAVENDEDOR.Clear;
      CDSVentaCabCOMSIONVENDEDOR.AsFloat:=0;
    end;
  CDSPersonal.Close;
END;

FUNCTION TDatosVentas.AsignarRecepcion(Dato: Integer): Boolean;
begin
  QRecepciones.close;
  QRecepciones.ParamByName('ID').Value:=Dato;
  QRecepciones.Open;
  if QRecepcionesID.AsString<>'' then
    begin
      Result:=True;
      if CDSVtaDetConsig.State=dsBrowse Then
        CDSVtaDetConsig.Edit;
      CDSVtaDetConsigID_MOV_RECEPCION_CAB.Value := QRecepcionesID_CABREC.Value;
      CDSVtaDetConsigID_MOV_RECEPCION_DET.Value := QRecepcionesID.Value;
      CDSVtaDetConsigMUESTRARECEPCIONNRO.Value  := QRecepcionesNROCPBTE.Value;
      CDSVtaDetConsigPRECIO_COMPRA.AsFloat      := QRecepcionesUNITARIO_TOTAL.AsFloat;
      if Trunc(CDSVtaDetConsigCANTIDAD.AsFloat  * 1000)> Trunc(QRecepcionesCANTIDAD_SALDO.AsFloat * 1000) then
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

PROCEDURE TDatosVentas.CDSVentaDetAfterPost(DataSet: TDataSet);
var Mensaje:String;
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
      if (CompareValue(CDSVentaDetUNITARIO_TOTAL.Value,CDSVentaDetUNITARIO_TOTAL_OLD.Value,0.1)<>EqualsValue) then
        begin
          Mensaje:='Modificacion Precio Detalle Articulo :'+FloatToStr(CDSVentaDetUNITARIO_TOTAL.Value)+' por '+
                    FloatToStr(CDSVentaDetUNITARIO_TOTAL_OLD.Value)+
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

  FormCpbte_2.pnAvisoFUAP.Visible:=False;
  //***************************************************************
  // Si no puede modificar precio el usuario pongo la
  // columna en la grilla como solo lectura
  FormCpbte_2.DBGrillaDetalle.Columns[6].ReadOnly:=Not(DMMain_FD.ModificaPrecioVta);
  FormCpbte_2.DBGrillaDetalle.Columns[7].ReadOnly:=Not(DMMain_FD.AplicaDescuento);
  //***************************************************************
  // ****** Sincronizo los datos con las Consignaciones **********
   if CDSVentaCabPOR_CTA_Y_ORDEN.Value='S' then
     if (CDSVentaCab.State in [dsInsert]) then
       SincronizarConsignaciones;
  //***************************************************************
  //***************************************************************
   if CDSVentaCab.State in [dsInsert] Then
     begin
       HayGtia;
       if (CDSVentaCabCON_GTIA_EXTENDIDA.Value='S') Then
         begin
           CDSVentaCabMESES_DE_GARANTIA.Value:=SumarGtia;
           CDSVentaCabVALOR_ASEGURADO.AsFloat:=SumarGtiaImporte;
         end;
     end;
  DMMain_FD.TopeDsctoLinea                := DMMain_FD.DsctoLineaTemp;
  FormCpbte_2.pnDetalleAdicional.Visible  := False;
  if FormCpbte_2.ModoDespachante1.Checked then
    CDSVentaDet.IndexFieldNames:='CODIGOARTICULO'
  else
    CDSVentaDet.IndexFieldNames:='RENGLON';
END;


PROCEDURE TDatosVentas.CDSVentaDetBeforePost(DataSet: TDataSet);
var i:integer;
//ControlaLineaCero:Boolean;
BEGIN
  if Renglones=0 Then renglones:=200;
  IF CDSVentaDet.State IN [dsInsert, dsEdit] THEN
    CDSVentaDetNroCpbte.Value:=CDSVentaCabLetraFac.Value + CDSVentaCabSucFac.Value + CDSVentaCabNumeroFac.Value;
  IF ((CDSVentaDetCodigoArticulo.AsString = '') OR (CDSVentaDet.RecordCount-1 > Renglones)) AND
     (CDSVentaDet.State IN [dsInsert])
    THEN
      BEGIN
        CDSVentaDet.Cancel;
        SysUtils.Abort;
      END;
  // Controlo el Marge de ganancia...
  if (CDSVentaDetMargen.AsFloat<MargenUtilidad) and
     ((CDSVentaCabTIPOCPBTE.AsString='FC') or (CDSVentaCabTIPOCPBTE.AsString = 'FO')) then
      begin
       // ShowMessage('El precio de Venta esta por debajo de la renta Minima');
        if DMMain_FD.VenderDebajoMinimo=False then
          begin
            ShowMessage('No está Autorizado a vender por debajo de la renta Minima...');
            CDSVentaDet.Cancel;
            SysUtils.Abort;
          end;
      end;
  if (CDSVentaDetTOTAL.AsFloat<=0) and ((CDSVentaCabTIPOCPBTE.AsString='FC') or (CDSVentaCabTIPOCPBTE.AsString = 'FO')) then
      begin
        if (DMMain_FD.ControlaLineaCero) and (CDSVentaCab.State=dsInsert) then
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

// if CDSVentaCabPOR_CTA_Y_ORDEN.Value='S' then
//    SincronizarConsignaciones;
END;

PROCEDURE TDatosVentas.CDSVentaDetNewRecord(DataSet: TDataSet);
BEGIN
  IF (CDSVentaDet.RecordCount > Renglones) THEN
    CDSVentaDet.Cancel
  ELSE
    BEGIN
      CDSVentaDetID.Value                         := IBGFc_Det.incrementFD(1);
      CDSVentaDetID_CabFac.Value                  := CDSVentaCabId_Fc.Value;
      CDSVentaDetRENGLON.AsInteger                := CDSVentaDet.RecordCount + 1;
      CDSVentaDetNRO.AsInteger                    := CDSVentaDetRENGLON.AsInteger;
      CDSVentaDetID_DET_REMITO.Value              := -1;
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
      CDSVentaDetMESES_GTIA.AsFloat               := 0;
      CDSVentaDetLOTE.Value                       := 0;
      CDSVentaDetGRUPO_DETALLE.Value              := 0;
      CDSVentaDetDE_PRODUCCION.Value              := 'N';
      CDSVentaDetUNITARIO_TOTAL_OLD.Value         := 0;
      CDSVentaDetUNITARIO_IVA_OLD.Value           := 0;
      CDSVentaDetUNI_C_REC.Value                  := 'N';
      CDSVentaDetUNITARIO_TOTAL_OLD_2.Value       := 0;
      CDSVentaDetMUESTRAUNITARIO_CON_DSCTO.Value  := 0;

      CDSVentaDetPRECIO_EDITABLE.Value            := 'S';
      CDSVentaDetITEM_OCOMPRA.Value               := CDSVentaDetRENGLON.AsInteger;
      CDSVentaDetCONTROL_TRAZABILIDAD.Value       := 'N';
      CDSVentaDetPRESENTACION_CANT.Value          := 1;
      CDSVentaDetPRESENTACION_TOLERANCIA.AsFloat  := 0;
      CDSVentaDetPERCIBE_IVA.Value                := 'N';
      CDSVentaDetTASA_PERCEP_IVA.Value            := 0;
      CDSVentaDetID_TASA_PERCEPCION_IVA.Value     := -1;
      CDSVentaDetPERCEPCION_IVA_DIFERENCIAL.Value := 'N'
    END;
  if FormCpbte_2<>NIl then
     if FormCpbte_2.DBGrillaDetalle.DataSource.DataSet.RecordCount>0 then
       FormCpbte_2.DBGrillaDetalle.SelectedIndex:=0;
END;

PROCEDURE TDatosVentas.CDSVentaCabNewRecord(DataSet: TDataSet);
var
  aux      : String;
  Juri     : TJurisdiccion;
BEGIN
  if FormCpbte_2.NroInterno<>'' then
    begin
      aux:=Trim(AnsiReplaceText(FormCpbte_2.NroInterno,'/',''));
      if AUx<>'' then
        begin
          aux:=IntToStr(StrToInt(Aux)+1);
          Insert('/',Aux,4);
        end;
    end;
  CDSVentaCabId_Fc.Value                     := IBGFc_Cab.incrementFD(1);
  CDSVentaCabNombre.AsString                 := '';
  CDSVentaCabRazonSocial.AsString            := '';
  CDSVentaCabCuit.AsString                   := '';
  CDSVentaCabDireccion.AsString              := '';
  CDSVentaCabTipoIVA.AsString                := '';
  CDSVentaCabCPostal.AsString                := '';
  CDSVentaCabLetraFac.AsString               := 'A';
  CDSVentaCabCpte_Manual.AsString            := 'N';
  CDSVentaCabImpreso.AsString                := 'N';
  CDSVentaCabINF_X.AsString                  := 'N';
  CDSVentaCabAnulado.AsString                := 'N';
  CDSVentaCabSucFac.AsString                 := '0000';
  CDSVentaCabNumeroFac.AsString              := '00000000';
  CDSventaCabDsto.ASFloat                    := 0;
  CDSVentaCabDSTOIMPORTE.AsFloat             := 0;
  CDSVentaCabVUELTO.AsFloat                  := 0;
  CDSVentaCabNetoExen1.AsFloat               := 0;
  CDSVentaCabNetoExen2.AsFloat               := 0;
  CDSVentaCabNETONOGRAV1.AsFloat             := 0;
  CDSVentaCabNETONOGRAV2.AsFloat             := 0;
  CDSVentaCabFechaVta.AsDateTime             := Date;
  CDSVentaCabFECHA_FISCAL.AsDateTime         := Date;
  CDSVentaCabNroRto.AsString                 := '';
  CDSVentaCabNroEntrega.AsInteger            := 1;
  CDSVentaCabDeposito.Clear;
  CDSVentaCabTipoCpbte.AsString              := '';
  CDSVentaCabREDUCIDA.AsString               := 'N';
  CDSVentaCabMUESTRAAPLICALEY15311.Value     := 'N';
  CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr(FormCpbte_2.SucursalPorDefecto));
  if FormCpbte_2.DepositoPorDefecto >-1 then
    CDSVentaCabDEPOSITOSetText(CDSVentaCabDEPOSITO,IntToStr(FormCpbte_2.DepositoPorDefecto))
  else
    CDSVentaCabDEPOSITOSetText(CDSVentaCabDEPOSITO,IntToStr(DMMain_FD.DepositoPorSucursal(FormCpbte_2.SucursalPorDefecto)));

  CDSVentaCabLIQUIDADA.Value                 := 'N';
  CDSVentaCabCOMSIONVENDEDOR.AsFloat         := 0;
  CDSVentaCabNC_CONTADO.Value                := 'N';
  CDSVentaCabUSUARIO.Value                   := DMMain_FD.UsuarioActivo;
  CDSVentaCabFECHA_HORA.AsDateTime           := now;
  CDSVentaCabCAJA_POR_DEFECTO.Value          := FormCpbte_2.CajaPorDefecto;
  CDSVentaCabPOR_CTA_Y_ORDEN.Value           := 'N';
  CDSVentaCabCON_GTIA_EXTENDIDA.Value        := 'N';
  CDSVentaCabMESES_DE_GARANTIA.AsFloat       := 0;
  CDSVentaCabPROVEEDOR.AsString              := '';
  CDSVentaCabTIPO_VTA.Value                  := 'M';
  CDSVentaCabVALORES_RECIBIDOS.AsFloat       := 0;
  CDSVentaCabCAE.Value                       := '0';
  CDSVentaCabCUOTAS_CC.Value                 := 1;
  CDSVentaCabINTERVALO_CUOTA.Value           := 30;
  CDSVentaCabPAGO_A_CTA.AsFloat              := 0;
  CDSVentaCabID_FC_CON_ADEL.Value            := -1;
  CDSVentaCabCENTRO_COSTO.Value              := -1;
  CDSVentaCabCAE_VENCIMIENTO.Clear;
  CDSVentaCabFACTURA_ELECTRONICA.Value       := 'N';
  CDSVentaCabPRIMER_VTO.AsDateTime           := Date;
  CDSVentaCabID_PEDIDO_MORPHI.AsInteger      := -1;
  CDSVentaCabMONEDA_CPBTE.Value              := 1;
  CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat := 1;
  FormCpbte_2.dblMoneda.KeyValue:=1;
  CDSVentaCabCANT_BULTOS.Value               := 0;
  CDSVentaCabCENTRO_COSTO.Value              := -1;
  CDSVentaCabID_PAIS.Value                   := -1;
  CDSVentaCabCUIT_PAIS.Value                 := '00-00000000-0';
  CDSVentaCabFECHA_CARGA.AsDateTime          := Date;
  CDSVentaCabNRO_INTERNO.Value               := '';
  CDSVentaCabFOB_TOTAL.Value                 := 0;
  CDSVentaCabNOTAS.Value                     := '';
  CDSVentaCabASOCIADO_TIPO.Value             := 0;
  CDSVentaCabASOCIADO_PTOVTA.Value           := 0;
  CDSVentaCabASOCIADO_NRO.Value              := 0;
  CDSVentaCabASOCIADO_CPTEFCH.Value          := '00000000';
  CDSVentaCabASOCIADO_ID_CPBTE.Value         := -1;
  CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR,DMMain_FD.EmpleadoPorDefecto);
  CDSVentaCabINF_X.Value                     := 'N';
  CDSVentaCabCBU.AsString                    := CDSEmpresaCBU.AsString;
  CDSVentaCabID_TRANSPORTE.Clear;//Value             := -1;
  CDSVentaCabMUESTRATRANSPORTE.Value         := '';
  CDSVentaCabCAMBIO_EXPO.Value               := 0;
  CDSVentaCabFOB_TOTAL.Value                 := 0;
  CDSVentaCabDOC_ADUANERO.Value              := '';
  CDSVentaCabNRO_INTERNO.Value               := '';
  CDSVentaCabHONORARIOS.Value                := 0;
  CDSVentaCabHONORARIOS_PROCENTAJ.Value      := 0;
  CDSVentaCabDEDUCE_GASTOS.VALUE             := 'N';
  CDSVentaCabCON_CAEA.VALUE                  := 'N';
  CDSVentaCabCAEA_INFORMADO.VALUE            := 'N';
  CDSVentaCabFACTURA_DE_ANTICIPO.AsString    := 'N';
  CDSVentaCabCONDICIONPEDIDO.Value           := -1;
  CDSVentaCabTRANSPORTE_UNIDAD.Value         := -1;
  CDSVentaCabTRANSPORTE_ADICIONAL.Value      := -1;
  CDSVentaCabID_CHOFER.Value                 := -1;
  if (Trim(CDSEmpresaCOD_ACTIVIDAD.AsString)='') then
    CDSVentaCabCODIGO_ACTIVIDAD.Value        := '**********'
  else
    CDSVentaCabCODIGO_ACTIVIDAD.Value        := CDSEmpresaCOD_ACTIVIDAD.AsString;
  CDSVentaCabMUESTRAOBRA.AsString            := '';
  CDSVentaCabID_OBRA.Value                   := -1;
  CDSVentaCabPROCESADA.Value                 :='S';
  CDSVentaCabNC_POR_DIFERENCIA.AsString      :='N';
    //  pongo la cotizacion y el tipo de moneda del comprobante
//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='MONEDAVTA';
//  DMMain_FD.QOpciones.Open;
//  if DMMain_FD.QOpciones.Fields[0].AsString<>'' then
//   CDSVentaCabMONEDA_CPBTE.Value           :=DMMain_FD.QOpciones.Fields[0].AsInteger
//  else
//    CDSVentaCabMONEDA_CPBTE.Value := 1;
//  DMMain_FD.QOpciones.Close;

   CDSVentaCabMONEDA_CPBTE.AsInteger	   :=	DMMain_FD.MonedaVta;
//  QMonedas.Close;
//  QMonedas.ParamByName('id').Value:=CDSVentaCabMONEDA_CPBTE.Value;
//  QMonedas.Open;
//
//  if QMonedasCOTIZACION.AsString<>'' Then
//    CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat := QMonedasCOTIZACION.AsFloat
//  else
//    CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFLoat := 1;
//
//  CDSVentaCabMUESTRAMONEDACPBTE.Value        := QMonedasMONEDA.Value;
//  CDSVentaCabMUESTRASIGNOMONEDACPBTE.Value   := QMonedasSIGNO.Value;
//  QMonedas.Close;

  CDSVentaCabTIPO_OPERACION_EXPO.AsString        := FormCpbte_2.UltimaTipoOp;
  CDSVentaCabID_ADUANA.Text                      := IntToStr(FormCpbte_2.UltimaAduanaOrigen);
  CDSVentaCabID_TRANSPORTE.Text                  := IntToStr(FormCpbte_2.UltimaTransp);//Integer;
  CDSVentaCabMUESTRANOMBRETRANSPORTE.Text        := FormCpbte_2.UltimaTranspNombre;

  CDSVentaCabFECHA_CARGA.AsDateTime              := FormCpbte_2.UltimaFechaCarga;// TDateTime;
  CDSVentaCabNRO_INTERNO.AsString                := FormCpbte_2.NroInterno;
  CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat     := QLstMonedasCOTIZACION.AsFloat;
  CDSVentaCabMUESTRASIGNOMONEDACPBTE.AsString    := QLstMonedasSIGNO.AsString;
  CDSVentaCabMUESTRAMONEDACPBTE.Value            := QLstMonedasMONEDA.Value;

  CDSVentaCabPOLIZA.Value                        := '';
  CDSVentaCabCON_GTIA_EXTENDIDA.Value            := 'N';
  CDSVentaCabVALOR_ASEGURADO.AsFloat             := 0;
  CDSVentaCabDEBE.AsFloat                        := 0;
  CDSVentaCabPERCEPCION_IB_TASA.AsFloat          := 0;
  CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat       := 0;
  CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := 0;
  CDSVentaCabPERCIBE_IB.AsString                 := BoolToStr(DMMain_FD.AgentePercepcionIB,True);
  CDSVentaCabPERCEPCION_IB_TASA.AsFloat          := DMMain_FD.TasaPercepcionIB;

  CDSVentaCabPERCIBE_IVA.Value                   := DMMain_FD.AgentePercepcionIVA;
  CDSVentaCabMINIMO_PERCI_IVA.Value              := DMMain_FD.Minim_Imp_Perc_IVA;
  CDSVentaCabFECHA_LIQUIDACION.Clear;
  CDSVentaCabJURIDICION.Clear;
  CDSVentaCabJURIDICION_LOCALIDAD.Clear;
  CDSVentaCabCOT.AsString                        := '';
  //**************************************************************************
  // si se usa asignacion de juridicion
  //**************************************************************************
  if DMMain_FD.FacturaPorJuridiccion then
    begin
      if DMMain_FD.JurisdiccionPorSucursal(CDSVentaCabSUCURSAL.AsInteger, Juri) then
        begin
          CDSVentaCabJURIDICION_LOCALIDAD.AsInteger       := Juri.LOCALIDAD;
          CDSVentaCabJURIDICION.AsInteger                 := Juri.ID;
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
  //****Asigno la Lista Por defecto o la lista asignada **********************
  //**************************************************************************
  CDSVentaCabLISTAPRECIO.AsInteger      :=  DMMain_FD.ListaPorDefecto(CDSVentaCabSUCURSAL.AsInteger);
  //***********************************************************
  //***********************************************************
  CDSVentaCabENVIAR_CPTE_MAIL.AsString  :='N';
  if FormCpbte_2.Visible then
    begin
      FormCpbte_2.dbeFechaVta.SetFocus;
      FormCpbte_2.dbeFechaVta.SelectAll;
    end;
  CDSVentaCabIDREMITO.Clear;
  CDSVentaCabTIPO_OPERACION_EXPO.Value   := FormCpbte_2.UltimaTipoOp;
  CDSVentaCabIMPORTE_PERCEPCION_IVA.Value:= 0;
END;

procedure TDatosVentas.CDSVentaDetAfterDelete(DataSet: TDataSet);
var N:Integer;
begin
  CDSVentaDet.AfterPost:=nil;
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
  CDSVentaDet.AfterPost:=CDSVentaDetAfterPost;

  VerificaPromos;
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
  FormCpbte_2.pnAvisoFUAP.Visible:=False;
  //***************************************************************
  // Si no puede modificar precio el usuario pongo la
  // columna en la grilla como solo lectura
  FormCpbte_2.DBGrillaDetalle.Columns[6].ReadOnly:=Not(DMMain_FD.ModificaPrecioVta);
  FormCpbte_2.DBGrillaDetalle.Columns[7].ReadOnly:=Not(DMMain_FD.AplicaDescuento);
  //***************************************************************
  // ****** sincronizo los datos con las consignaciones **********
   if CDSVentaCabPOR_CTA_Y_ORDEN.Value='S' then
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
   DMMain_FD.TopeDsctoLinea   :=DMMain_FD.DsctoLineaTemp;
   FormCpbte_2.pnDetalleAdicional.Visible:=False;
end;

procedure TDatosVentas.CDSVentaDetAfterEdit(DataSet: TDataSet);
begin
  CDSVentaDetUNITARIO_TOTAL_OLD.AsFloat   := CDSVentaDetUNITARIO_TOTAL.AsFloat;
  CDSVentaDetUNITARIO_TOTAL_OLD_2.AsFloat := CDSVentaDetUNITARIO_TOTAL.AsFloat;
end;

PROCEDURE TDatosVentas.CDSVentaDetAfterInsert(DataSet: TDataSet);
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
  ELSE IF (CDSVentaCabImpreso.Value = 'S') THEN
    BEGIN
      ShowMessage('No se puede modificar'#13'un comprobante ya impreso');
      SysUtils.Abort;
      IF CDSVentaDet.State IN [dsEdit, dsInsert] THEN
        CDSVentaDet.Cancel;
      IF CDSVentaCab.State IN [dsEdit, dsInsert] THEN
        CDSVentaCab.Cancel;
    END;
 // else FormCpbte_2.DBGrillaDetalle.SelectedIndex:=0;
END;

procedure TDatosVentas.CDSVentaCabAfterPost(DataSet: TDataSet);
var i:integer;
begin
 // For i:=0 to DatosVentas.CDSVentaCab.FieldCount-1 do
//    begin
//      if DatosVentas.CDSVentaCab.Fields[i].Required Then
//        ShowMessage(DatosVentas.CDSVentaCab.Fields[i].FieldName+' : '+
//                    DatosVentas.CDSVentaCab.Fields[i].AsString);
//    end;

end;

PROCEDURE TDatosVentas.CDSVentaCabBeforePost(DataSet: TDataSet);
var i:integer;
BEGIN
  if CDSVentaCabNC_CONTADO.Value='S' Then
    CDSVentaCabINGRESA_A_CTACTE.Value:='N';
  CDSVentaCabNroCpbte.Value:= CDSVentaCabLetraFac.Value +
                              CDSVentaCabSucFac.Value +
                              CDSVentaCabNumeroFac.Value;
  //  *****  controla los campos requeridos **************
//  For i:=0 to DatosVentas.CDSVentaCab.FieldCount-1 do
//    begin
//      if DatosVentas.CDSVentaCab.Fields[i].Required Then
//        ShowMessage(DatosVentas.CDSVentaCab.Fields[i].FieldName+' : '+
//                    DatosVentas.CDSVentaCab.Fields[i].AsString);
//    end;
  // *****************************************************
END;


PROCEDURE TDatosVentas.CDSVentaCabSUCFACSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  Sender.AsString:=Copy('00000000', 1, Sender.Size - Length(Text)) + Text;
  if (CDSVentaCabNUMEROFAC.AsString<>'') and  (Trim(CDSVentaCabNUMEROFAC.AsString)<>'00000000') and
     (DMMain_FD.VerificaNro(CDSVentaCabLETRAFAC.AsString,CDSVentaCabSUCFAC.AsString,
                            CDSVentaCabNUMEROFAC.AsString,CDSVentaCabTIPOCPBTE.AsString,
                            CDSVentaCabCLASECPBTE.AsString,CDSVentaCabSUCURSAL.AsInteger))
  then
    begin
      if Not(Assigned(FormMuestraUltimoProximoNroCpbte)) then
        FormMuestraUltimoProximoNroCpbte:=TFormMuestraUltimoProximoNroCpbte.Create(Self);
      FormMuestraUltimoProximoNroCpbte.letra   :=CDSVentaCabLETRAFAC.AsString;
      FormMuestraUltimoProximoNroCpbte.Suc     :=CDSVentaCabSUCFAC.AsString;
      FormMuestraUltimoProximoNroCpbte.Nro     :=CDSVentaCabNUMEROFAC.AsString;
      FormMuestraUltimoProximoNroCpbte.Tipo    :=CDSVentaCabTIPOCPBTE.AsString;
      FormMuestraUltimoProximoNroCpbte.Clase   :=CDSVentaCabCLASECPBTE.AsString;
      FormMuestraUltimoProximoNroCpbte.Sucursal:=CDSVentaCabSUCURSAL.AsInteger;
      FormMuestraUltimoProximoNroCpbte.ShowModal;
      if FormMuestraUltimoProximoNroCpbte.ModalResult=mrOk then
        Sender.AsString:=FormMuestraUltimoProximoNroCpbte.Nro
      else
        Sender.Clear;
    end;
//  else
//    Sender.Clear;
  CDSVentaCabNroCpbte.Value := CDSVentaCabLetraFac.Value + CDSVentaCabSucFac.Value + CDSVentaCabNumeroFac.Value;
END;

PROCEDURE TDatosVentas.CDSVentaCabNUMEROFACSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  Sender.AsString:=Copy('00000000', 1, Sender.Size - Length(Text)) + Text;

  if (CDSVentaCabSUCFAC.AsString<>'') and (DMMain_FD.VerificaNro(CDSVentaCabLETRAFAC.Value,CDSVentaCabSUCFAC.Value,
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
//    else Sender.Clear;
  CDSVentaCabNroCpbte.Value := CDSVentaCabLetraFac.Value + CDSVentaCabSucFac.Value + CDSVentaCabNumeroFac.Value;

END;

procedure TDatosVentas.CDSVentaCabPERCIBE_IVAChange(Sender: TField);
begin
  if FormCpbte_2<>nil then
    FormCpbte_2.dbgPercepcionesIVA.Visible:=CDSVentaCabPERCIBE_IVA.AsString='S';
end;

procedure TDatosVentas.CDSVentaCabPROVEEDORSetText(Sender: TField;
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
          FormCpbte_2.ceProveedor.SetFocus;
        END;
    end;
end;

PROCEDURE TDatosVentas.CDSVentaDetCodigoArticuloSetText(Sender: TField; CONST Text: STRING);
VAR S,CodTxt,Aux : STRING;
Enter   :Char;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      // Quitar enter de la cadena....
      CodTxt := AnsiReplaceStr(Text, #13, '');
      CodTxt := AnsiReplaceStr(CodTxt, #10, '');

      Sender.AsString := DMMain_FD.SearchCodigo(Trim(CodTxt),DSVentaDet,FormCpbte_2.VerCodigoALternativo1.Checked);
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
          FormBuscadorArticulos.ListaPrecio:= DatosVentas.CDSVentaCabLISTAPRECIO.Value;
          FormBuscadorArticulos.Esquema    := -1;
          FormBuscadorArticulos.Dato              := s;//Text;
          if FormBuscadorArticulos.Visible=False Then
            FormBuscadorArticulos.ShowModal;
          if FormBuscadorArticulos.Codigo<>'' Then
            begin
              IF CDSVentaDet.State = dsBrowse THEN
                CDSVentaDet.Edit;
              CDSVentaDetCodigoArticulo.Text      :=  FormBuscadorArticulos.Codigo;
            end
          else
            Sender.AsString:='';
        END;
      if DMMain_FD.EncontroCodigoBarra Then
        begin
          FormCpbte_2.DBGrillaDetalle.OnKeyPress(FormCpbte_2.DBGrillaDetalle,Enter);
//         FormCpbte_2.DBGrillaDetalle.OnKeyPress(FormCpbte_2.DBGrillaDetalle,Enter);
        end;

      if (DMMain_FD.EncontroCodigoBarra) Then
        begin
          CDSVentaDetCANTIDAD.Text  := FloatToStr(BuscaCantXCodigoBarras(CodTxt));
          if (FormCpbte_2.IngresoAutomatico='N') then
            FormCpbte_2.DBGrillaDetalle.OnKeyPress(FormCpbte_2.DBGrillaDetalle,Enter);
        end;
    END;
END;

PROCEDURE TDatosVentas.CDSVentaCabCODIGOSetText(Sender: TField;
  CONST Text: STRING);
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
          Sender.Clear;
          Aux:='';
          CDSVentaCabNOMBRE.Clear;
          FormCpbte_2.RxCCodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      FormCpbte_2.RxCCodigo.Text:=Aux;
      HabilitarLabel;
    end;
END;


PROCEDURE TDatosVentas.CDSVentaDetUnitario_TotalSetText(Sender: TField;CONST Text: STRING);
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

      if ((CDSVentaCabDESGLOZAIVA.Value='N') or (FormCpbte_2.DiscriminaIva='N')) and (CDSVentaDetMODO_GRAVAMEN.AsString[1] in ['G','M','I','Y']) Then
        begin
          P_Gravado                       := CDSVentaDetUNITARIO_GRAVADO.AsFloat / TasaIva;
          CDSVentaDetIVA_UNITARIO.AsFloat := CDSVentaDetUNITARIO_GRAVADO.AsFloat - P_Gravado;
          // *** Calculo el total de la linea
          Pt_Final   :=  (P_Gravado + CDSVentaDetIVA_UNITARIO.ASFloat) * Cantidad * Descuento;

          Modo:=GetRoundMode;
          SetRoundMode(rmUp);
          // antes usaba SimpleRoundTo()
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

      if ((CDSVentaCabDESGLOZAIVA.Value='N') or (FormCpbte_2.DiscriminaIva='N')) and (CDSVentaDetMODO_GRAVAMEN.AsString[1] in ['G','M','I','Y']) Then
        CDSVentaDetIVA_TOTAL.AsFloat     := (Pt_Final)-Pt_Gravado;

      CDSVentaDetTOTAL.AsFloat         := RoundTo((Pt_Gravado+Pt_Exento),-2);

      // hasta acca el SimpleRoundTo()

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

procedure TDatosVentas.CDSVentaLoteID_LOTESetText(Sender: TField;
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
      CDSVentaLoteID_LOTE.Value     := Sender.AsInteger;
      CDSVentaLoteDEPOSITO.Value    := CDSVentaCabDEPOSITO.Value;
      CDSVentaLoteLOTE.Value        := DMMain_FD.QStockLoteLote.Value;
      CDSVentaLoteDESPACHO.Value    := DMMain_FD.QStockLoteDESPACHO.Value;
      CDSVentaLoteFECHA.AsDateTime  := CDSVentaCabFECHAVTA.AsDateTime;
      if DMMain_FD.QStockLoteFECHA_VTO.AsString<>'' then
        CDSVentaLoteFECHAVTO.AsDateTime := DMMain_FD.QStockLoteFECHA_VTO.AsDateTime
      else
        CDSVentaLoteFECHAVTO.AsDateTime := Date;

      if CDSVentaCabTIPOCPBTE.Value='FC' then
        begin
          Estado:= Math.CompareValue(CDSVentaDetCANTIDAD.AsFloat,DMMain_FD.QStockLoteSALDO.AsFloat,0.02);
          if (Estado=EqualsValue) then
            CDSVentaLoteCANTIDAD.AsFloat:=DMMain_FD.QStockLoteSALDO.AsFloat
          else
            if (estado=GreaterThanValue) then
              begin
                if MessageDlg('La cantidad Disponible es Menor a la cargada, se ajusta la cantidad??',TMsgDlgType.mtConfirmation,mbYesNo,0,mbNo )=mrYes Then
                  begin
                    CDSVentaLoteCANTIDAD.AsFloat:=DMMain_FD.QStockLoteSALDO.AsFloat;
                    if CDSVentaDet.State=dsBrowse Then CDSVentaDet.Edit;
                    CDSVentaDetCantidadSetText(CDSVentaDetCantidad,FloatToStr(DMMain_FD.QStockLoteSALDO.AsFloat));
                  end;
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

procedure TDatosVentas.CDSVentaLoteNewRecord(DataSet: TDataSet);
begin
  CDSVentaLoteID_LOTE.Value     := -1;
  CDSVentaLoteID.Value          := IBGVtaLote.incrementFD(1);
  CDSVentaLoteID_DET.Value      := CDSVentaDetID.Value;
  CDSVentaLoteID_FC.Value       := CDSVentaDetID_CABFAC.Value;
  CDSVentaLoteCODIGO.Value      := CDSVentaDetCODIGOARTICULO.Value;
  CDSVentaLoteTIPO_COMPROB.Value:= CDSVentaCabTIPOCPBTE.Value;
  CDSVentaLoteDEPOSITO.Value    := CDSVentaDetDEPOSITO.Value;
  CDSVentaLoteFECHA.AsDateTime  := CDSVentaCabFECHAVTA.AsDateTime;
end;

procedure TDatosVentas.CDSVentaDetUNITARIO_NETO_TOTALGetText(Sender: TField; var Text: string; DisplayText: Boolean);
VAR
  Aux1: Extended;
begin
  if Not(CDSVentaDet.IsEmpty) then
    begin
      Aux1:=CDSVentaDetUNITARIO_NETO_TOTAL.AsFloat;
      if (CDSVentaDetMODO_GRAVAMEN.Value<>'') and (CDSVentaDetMODO_GRAVAMEN.Value[1] in ['G','M']) Then
        if (CDSVentaCabDESGLOZAIVA.Value='S') and (FormCpbte_2.DiscriminaIva='N') then
          Aux1:= CDSVentaDetUNITARIO_NETO_TOTAL.AsFloat  * (1 + (CDSVentaDetIVA_TASA.AsFloat*0.01))
        else
          if (CDSVentaCabDESGLOZAIVA.Value='N') then
             Aux1:= CDSVentaDetUNITARIO_NETO_TOTAL.AsFloat * (1 + (CDSVentaDetIVA_TASA.AsFloat*0.01));

      Text:= FormatFloat(MascaraDetalleUnitario,Aux1);
    end;
end;

PROCEDURE TDatosVentas.CDSVentaDetUnitario_TotalGetText(Sender: TField;
  VAR Text: STRING; DisplayText: Boolean);
VAR
  Aux1: Extended;
BEGIN
  if Not(CDSVentaDet.IsEmpty) then
    begin
      Aux1:=CDSVentaDetUNITARIO_TOTAL.AsFloat;
      if (CDSVentaDetMODO_GRAVAMEN.Value<>'') and (CDSVentaDetMODO_GRAVAMEN.Value[1] in ['G','M','I','Y']) Then
        if (CDSVentaCabDESGLOZAIVA.Value='S') and (FormCpbte_2.DiscriminaIva='N') then
          Aux1:= CDSVentaDetUNITARIO_TOTAL.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat
        else
          if (CDSVentaCabDESGLOZAIVA.Value='N')then
            Aux1:= CDSVentaDetUNITARIO_TOTAL.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat;
      Text:= FormatFloat(MascaraDetalleUnitario,Aux1);
    end;
END;

PROCEDURE TDatosVentas.CDSVentaDetTotalGetText(Sender: TField;
  VAR Text: STRING; DisplayText: Boolean);
VAR
  Aux1: Extended;
BEGIN
  if Not(CDSVentaCab.IsEmpty) then
    begin
      Aux1:=CDSVentaDetTOTAL.AsFloat;
      if (CDSVentaDetMODO_GRAVAMEN.Value<>'') and (CDSVentaDetMODO_GRAVAMEN.Value[1] in ['G','M','I','Y']) Then
        if (CDSVentaCabDESGLOZAIVA.Value='S') and (FormCpbte_2.DiscriminaIva='N') then
          Aux1:= CDSVentaDetTOTAL.AsFloat + CDSVentaDetIVA_TOTAL.AsFloat
        else
          if (CDSVentaCabDESGLOZAIVA.Value='N')then
            Aux1:= CDSVentaDetTOTAL.AsFloat + CDSVentaDetIVA_TOTAL.AsFloat;
      Text := FormatFloat(',0.00', Aux1);
    end;
END;


procedure TDatosVentas.CDSVentaDetTOTALSetText(Sender: TField;
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

procedure TDatosVentas.CDSAsociadosASOCIADO_NROSetText(Sender: TField;
  const Text: string);
begin
 Sender.AsString:=AnsiRightStr('00000000'+Text,8);
end;

procedure TDatosVentas.CDSAsociadosASOCIADO_PTOVTASetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=AnsiRightStr('00000'+Text,5);
end;

procedure TDatosVentas.CDSAsociadosNewRecord(DataSet: TDataSet);
begin
  CDSAsociadosID_CAB.Value        := CDSVentaCabID_FC.Value;
  CDSAsociadosID.Value            := ibgId_Asociado.IncrementFD(1);
  if CDSCompAFIP.Locate('TIPO','REC',[]) then
    CDSAsociadosASOCIADO_TIPO.Value := CDSCompAFIPCOD.Value;
end;

procedure TDatosVentas.CDSFc_Prod_DetBeforeDelete(DataSet: TDataSet);
begin
  CDSFc_Prod_Mov.First;
  while Not(CDSFc_Prod_Mov.Eof) do
    begin
      CDSFc_Prod_Mov.delete;
      CDSFc_Prod_Mov.First;
    end;
  CDSFc_Prod_Mov.Close;
  CDSFc_Prod_Mov.Params[0].Clear;
  CDSFc_Prod_Mov.Open;
end;


procedure TDatosVentas.CDSFc_Prod_DetCANTIDADSetText(Sender: TField;
  const Text: string);
begin
  if DatosVentas.CDSFc_Prod_Det.State=dsBrowse then
    DatosVentas.CDSFc_Prod_Det.Edit;
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

procedure TDatosVentas.CDSFc_Prod_DetNewRecord(DataSet: TDataSet);
begin
  CDSFc_Prod_DetID.Value              := IbgId_Det_Pro.incrementFD(1);
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

procedure TDatosVentas.CDSFc_Prod_MovBeforePost(DataSet: TDataSet);
begin
  if (CDSFc_Prod_MovCODIGO.AsString='') then
    begin
     // SysUtils.Abort;
      CDSFc_Prod_Mov.Cancel;
      SysUtils.Abort;
    end;
end;

procedure TDatosVentas.CDSFc_Prod_MovCANTIDAD_REALSetText(Sender: TField;
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

procedure TDatosVentas.CDSFc_Prod_MovCODIGOSetText(Sender: TField;
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

procedure TDatosVentas.CDSFc_Prod_MovNewRecord(DataSet: TDataSet);
begin
  CDSFc_Prod_MovID.Value                  := ibgId_mov_prod.incrementFD(1);
  CDSFc_Prod_MovID_FC_DET.Value           := CDSFc_Prod_DetID.Value;
  CDSFc_Prod_MovCODIGO.Value              := '';
  CDSFc_Prod_MovDETALLE.Value             := '';
  CDSFc_Prod_MovCANTIDAD_UNITARIA.AsFloat := 0;
  CDSFc_Prod_MovCANTIDAD_ESTIMADA.AsFloat := 0;
  CDSFc_Prod_MovCANTIDAD_REAL.AsFloat     := 0;
end;

procedure TDatosVentas.CDSImpuestosIMPORTESetText(Sender: TField;
  const Text: string);
begin
  sender.AsString:=Text;
  CDSVentaCabTOTAL.AsFloat := CDSVentaCabNETOGRAV2.AsFloat+
                              CDSVentaCabNETOEXEN2.AsFloat+
                              CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat+
                              CDSVentaCabDSTOIMPORTE.AsFloat;
  CDSImpuestos.First;
  While not(CDSImpuestos.Eof) do
    begin
      CDSVentaCabTOTAL.AsFloat := CDSVentaCabTOTAL.AsFloat+
                                  CDSImpuestosIMPORTE.AsFloat;
      CDSImpuestos.Next;
    end;

  if CDSImpuestos.State in [dsInsert,dsEdit] Then CDSImpuestos.Post;

end;

PROCEDURE TDatosVentas.CDSImpuestosNewRecord(DataSet: TDataSet);
BEGIN
  CDSImpuestosId_Impuesto.Value := IBGFc_Impuestos.incrementFD(1);
  CDSImpuestosID_FCVTACAB.Value := CDSVentaCabID_FC.Value;
  CDSImpuestosNETO.AsFloat      := 0;
  CDSImpuestosIMPORTE.AsFloat   := 0;
  CDSImpuestosTASA.AsFloat      := 0;

END;

procedure TDatosVentas.CDSMov_CarnesMEDIA_1SetText(Sender: TField;
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

procedure TDatosVentas.CDSMov_CarnesNewRecord(DataSet: TDataSet);
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
  CDSMov_CarnesID.Value           := ibgMov_Carne.incrementFD(1);
  CDSMov_CarnesT_KILOS.Value      := 0;
  CDSMov_CarnesT_MEDIAS.Value     := 0;

end;

procedure TDatosVentas.CDSPercepcionIVANewRecord(DataSet: TDataSet);
begin
  CDSPercepcionIVAID_Percepcion.Value     := IBGPercepcionIVA.IncrementFD(1);
  CDSPercepcionIVAID_FCVTACAB.Value       := CDSVentaCabID_FC.Value;
  CDSPercepcionIVACODIGOREGIMEN.Value     := -1;
  CDSPercepcionIVANETO.AsFloat            := 0;
  CDSPercepcionIVATASA.AsFloat            := 0;
  CDSPercepcionIVAIMPORTE.AsFloat         := 0;
  CDSPercepcionIVACODIGO_PERCEPCION.Value := -1;
end;

PROCEDURE TDatosVentas.CDSVentaCabDepositoSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo depósito no Válido');
          FormCpbte_2.RxCDeposito.SetFocus;
        END;
    END;
END;

PROCEDURE TDatosVentas.CDSVentaCabLDRSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarLdr( CDSVentaCabCodigo.Value, Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo L.D.R no Válido');
          FormCpbte_2.RxCLdr.SetFocus;
        END;
    END;
END;

procedure TDatosVentas.CDSVentaCabMONEDA_CPBTEChange(Sender: TField);
begin

  CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat  := QLstMonedasCOTIZACION.AsFloat;
  CDSVentaCabMUESTRASIGNOMONEDACPBTE.AsString := QLstMonedasSIGNO.AsString;
  CDSVentaCabMUESTRAMONEDACPBTE.Value         := QLstMonedasMONEDA.Value;
end;

procedure TDatosVentas.CDSVentaCabMUESTRACODIGOAFIPChange(Sender: TField);
begin
  if (CDSVentaCabMUESTRACODIGOAFIP.AsString='019') or (CDSVentaCabMUESTRACODIGOAFIP.AsString='021') then
    FormCpbte_2.pcModoFactura.ActivePageIndex:=1
  else
    FormCpbte_2.pcModoFactura.ActivePageIndex:=0;

  if FormCpbte_2.ModoDespachante1.Checked then
    FormCpbte_2.pcModoFactura.ActivePageIndex:=2;


end;

PROCEDURE TDatosVentas.CDSVentaCabCONDICIONVTASetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF (NOT (AsignarCondVenta( CDSVentaCabCodigo.Value, Sender.AsInteger))) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Cond.Vta no Válido');
          FormCpbte_2.RxCConVta.SetFocus;
        END;
    END;
END;

PROCEDURE TDatosVentas.DataModuleDestroy(Sender: TObject);
BEGIN
  DatosVentas:=NIL;
END;

procedure TDatosVentas.CDSVentaDetCalcFields(DataSet: TDataSet);
begin
  CDSVentaDetMUESTRAGANANCIA.AsFloat        := CDSVentaDetUNITARIO_TOTAL.AsFloat - CDSVentaDetCOSTO_TOTAL.AsFloat;
  if CDSVentaDetCANTIDAD.AsFloat>0 then
    CDSVentaDetUNITARIO_NETO_TOTAL.AsFloat  := CDSVentaDetTOTAL.AsFloat /CDSVentaDetCANTIDAD.AsFloat;
  CDSVentaDetMUESTRAUNITARIO_CON_DSCTO.Value:= CDSVentaDetUNITARIO_GRAVADO.AsFloat * CDSVentaDetDESCUENTO.ASFloat * 0.01 + CDSVentaDetUNITARIO_EXENTO.AsFloat;
end;

PROCEDURE TDatosVentas.CDSVentaDetCantidadSetText(Sender: TField;
  CONST Text: STRING);
VAR
  Aux1, Aux2, Aux3,decimal: Extended;
  TextAux:String;
BEGIN
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

      if (DMMain_FD.VenderSinStock=False) and (DatosVentas.CDSVentaCabTIPOCPBTE.Value<>'NC') and
         (DatosVentas.CDSVentaDetAfecta_Stock.Value='S') and (DatosVentas.CDSVentaCabIDREMITO.AsString='') Then
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
        if ((CDSVentaCabDesglozaIva.Value = 'S') and (FormCpbte_2.DiscriminaIva='N')) and (CDSVentaDetModo_Gravamen.Value[1] in ['G','M','I','Y']) THEN
          Aux2:= Aux2 + CDSVentaDetIVA_UNITARIO.AsFloat
        else
          if (CDSVentaCabDesglozaIva.Value = 'N') and (CDSVentaDetModo_Gravamen.Value[1] in ['G','M','I','Y']) THEN
            Aux2:= Aux2 + CDSVentaDetIVA_UNITARIO.AsFloat;


      TextAux:=MascaraDetalleUnitario;

      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);

      Aux3:= StrToFloat(FormatFloat(TextAux, (Aux1 + Aux2)));

      CDSVentaDetUnitario_TotalSetText(CDSVentaDetUNITARIO_TOTAL,FloatToStr(Aux3));

      // Control de Unidades de Ventas Con Contenido
      if Not(CDSVentaDetPRESENTACION_CANT.AsFloat=1) then
        begin
          if CDSVentaDetPRESENTACION_UNIDAD.Value=CDSVentaDetUNIDAD.Value Then
            begin
              CDSVentaDetCANTIDAD_UNIDADES.AsFloat:=Sender.AsFloat/CDSVentaDetPRESENTACION_CANT.AsFloat;
              decimal:= CDSVentaDetCANTIDAD_UNIDADES.AsFloat - Trunc(CDSVentaDetCANTIDAD_UNIDADES.AsFloat);
              if decimal<0.5 then CDSVentaDetCANTIDAD_UNIDADES.Value:=Trunc(CDSVentaDetCANTIDAD_UNIDADES.Value)
              else
              if decimal>0.5 then CDSVentaDetCANTIDAD_UNIDADES.Value:=Trunc(CDSVentaDetCANTIDAD_UNIDADES.Value)+1
              else
              if decimal=0.5 then CDSVentaDetCANTIDAD_UNIDADES.Value:=Trunc(CDSVentaDetCANTIDAD_UNIDADES.Value)+0.5;


              if (CompareValue(1,CDSVentaDetCANTIDAD_UNIDADES.AsFloat,CDSVentaDetPRESENTACION_TOLERANCIA.Value))<>EqualsValue then
                begin
                  ShowMessage('La Cantidad Unitaria no valida el promedio....(Valor Contenido: ' + FormatFloat(',0.00',CDSVentaDetPRESENTACION_CANT.AsFloat)+')');
                  //Sender.Value := 0;
                end;

            end
          else
            if CDSVentaDetPRESENTACION_UNIDAD.Value<>CDSVentaDetUNIDAD.Value Then
              CDSVentaDetCANTIDAD_UNIDADES.AsFloat:=Sender.AsFloat*CDSVentaDetPRESENTACION_CANT.AsFloat
        end
      else
        CDSVentaDetCANTIDAD_UNIDADES.AsFloat:=Sender.AsFloat;

      if FormCpbte_2.ExpresarUnidadesenEnteros1.Checked then
        CDSVentaDetCANTIDAD_UNIDADES.ASFloat:= RoundTo(CDSVentaDetCANTIDAD_UNIDADES.ASFloat,0);

    end;
END;


procedure TDatosVentas.CDSVentaDetCANTIDAD_UNIDADESSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString := Text;
  if Sender.AsFloat<1 then Sender.AsFloat:=CDSVentaDetCANTIDAD.AsFloat;
//  CDSVentaDetPRESENTACION_CANT.AsFloat:=CDSVentaDetCANTIDAD.AsFloat/Sender.AsFloat;
end;

procedure TDatosVentas.CDSVentaDetCODIGOARTICULOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if (FormCpbte_2<>nil) and (Trim(Sender.AsString)<>'') then
    begin
      if FormCpbte_2.VerCodigoAlternativo1.Checked=True then
        Text:=Trim(CDSVentaDetMUESTRACODALTERNATIVO.Value)
      else
        Text:=Trim(CDSVentaDetCODIGOARTICULO.Value);
    end;
end;

PROCEDURE TDatosVentas.CDSVentaDetDescuentoSetText(Sender: TField;
  CONST Text: STRING);
VAR
  PrecioUnitario: Extended;
BEGIN
  if Text<>'' Then
    begin
      Sender.AsString := Text;
      if (Sender.AsFloat > DMMain_FD.TopeDsctoLinea) then
        Sender.AsFloat:=DMMain_FD.TopeDsctoLinea;
      Sender.AsFloat  := RoundTo(Sender.AsFloat,-3);
      PrecioUnitario  := CDSVentaDetUNITARIO_TOTAL.AsFloat;
      if (CDSVentaDetModo_Gravamen.Value<>'') and (CDSVentaDetModo_Gravamen.Value[1] in ['G','M']) then
        if ((CDSVentaCabDesglozaIva.Value = 'S') and (FormCpbte_2.DiscriminaIva='N')) Then
          PrecioUnitario := CDSVentaDetUNITARIO_GRAVADO.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat + CDSVentaDetUNITARIO_EXENTO.AsFloat
        else
          if (CDSVentaCabDesglozaIva.Value = 'N')  Then
            PrecioUnitario := CDSVentaDetUNITARIO_GRAVADO.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat + CDSVentaDetUNITARIO_EXENTO.AsFloat;

      CDSVentaDetUnitario_TotalSetText(CDSVentaDetUNITARIO_TOTAL,FloatToStr(PrecioUnitario));
    end;
END;

procedure TDatosVentas.CDSVentaDetDETALLE_ADICIONALSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  formCpbte_2.pnDetalleAdicional.Visible:=False;
//  FormCpbte_2.DBGrillaDetalle.SelectedIndex:=5;
end;

PROCEDURE TDatosVentas.CDSVentaCabDSTOSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  Sender.AsString:= FormatFloat(MascaraCabecera,StrToFloatDef(Text,0));
//  Sender.AsString:= Text;
  if (Sender.AsFloat > DMMain_FD.TopeDsctoGral) then
     Sender.AsFloat := DMMain_FD.TopeDsctoGral;
  if Sender.AsFloat < 0 Then Sender.AsString:='0.00';
  SumarDetalle;
  CalcularTotales;
END;

procedure TDatosVentas.CDSVentaDetIVA_TasaSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:= FormatFloat(MascaraCabecera,StrToFloat(Text));
  CDSVentaDetIVA_SobreTasa.AsFloat := Sender.AsFloat * 0.5;
end;

procedure TDatosVentas.CDSVentaDetMUESTRAUNITARIO_CON_DSCTOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
var Aux1:Extended;
ImporteIva:Extended;
begin
  Text:=Sender.AsString;
  if Not(CDSVentaDet.IsEmpty) and (CDSVentaDetDESCUENTO.AsFloat>0)  then
    begin
      ImporteIva:= (CDSVentaDetUNITARIO_GRAVADO.AsFloat * (1-CDSVentaDetDESCUENTO.AsFloat * 0.01)) * CDSVentaDetIVA_TASA.AsFloat * 0.01;
      if (CDSVentaDetMODO_GRAVAMEN.Value<>'') and (CDSVentaDetMODO_GRAVAMEN.Value[1] in ['G','M','I','Y']) Then
        if (CDSVentaCabDESGLOZAIVA.Value='S') and (FormCpbte_2.DiscriminaIva='N') then
          Aux1:= CDSVentaDetMUESTRAUNITARIO_CON_DSCTO.AsFloat + ImporteIva
        else
          if (CDSVentaCabDESGLOZAIVA.Value='N')then
            Aux1:= CDSVentaDetMUESTRAUNITARIO_CON_DSCTO.AsFloat + ImporteIva;
      Text:= FormatFloat(MascaraDetalleUnitario,Aux1);
    end;
end;


procedure TDatosVentas.CDSVentaCabID_TIPOCOMPROBANTESetText(Sender: TField; const Text: String);
begin
  if (Text<>'') and (text[1]<>#13) and (CDSVentaCabCODIGO.AsString<>'' ) Then
  begin
    Sender.AsString:=Text;
    IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
      BEGIN
        Sender.AsString:= '';
        if FormCpbte_2.Visible then
          FormCpbte_2.RxCTipoCpbte.SetFocus;
      END;
    IF CDSVentaCab.State = dsInsert THEN
     FormCpbte_2.UltimoComprobante;
  end
  else
    begin
      Sender.Clear;
      CDSVentaCabMUESTRACOMPROBANTE.Clear;
    end;
  HabilitarLabel;
end;

{
procedure TDatosVentas.CDSVentaCabID_TRANSPORTESetText(Sender: TField; const Text: string);
begin
  IF (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      DatosVentas.QTransporte.Close;
      DatosVentas.QTransporte.ParamByName('id').Value:=Sender.AsInteger;
      DatosVentas.QTransporte.Open;
      if DatosVentas.QTransporteID.AsString<>'' then
        begin
          DatosVentas.CDSVentaCabID_TRANSPORTE.Value    :=DatosVentas.QTransporteID.Value;
          DatosVentas.CDSVentaCabMUESTRATRANSPORTE.Value:=DatosVentas.QTransporteNOMBRE.Value;
        end
      else
        begin
          DatosVentas.CDSVentaCabID_TRANSPORTE.Clear;
          DatosVentas.CDSVentaCabMUESTRATRANSPORTE.Value:='';
        end
    END;
end;
}

procedure TDatosVentas.CDSVentaCabVENDEDORSetText(Sender: TField;
  const Text: String);
begin
  IF (Text<>'') and (Text[1]<>#13) THEN
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

procedure TDatosVentas.CDSVentaCabFECHAVTASetText(Sender: TField;
  const Text: String);
var d,d2,m,m2,y,y2:word;
BEGIN
  sender.AsString:=Text;
  if (TForm(FormCpbte_2.Owner).Name<>'FormImportacionFacturasVtaGral') and
     (TForm(FormCpbte_2.Owner).Name<>'FormFiscalizacionLote') and
     (TForm(FormCpbte_2.Owner).Name<>'FormRecibo_2') Then
    begin
      if sender.AsString<>'' Then
        if (CDSVentaCab.State In [dsInsert,dsEdit]) Then
          begin
            Sender.AsString := Text;
            DecodeDate(Sender.AsDateTime,y,m,d);
            DecodeDate(Date,y2,m2,d2);
            DMStoreProcedure.QVerificaPeriodoFiscal.Close;
            DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:='V';
            DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value:=Sender.AsDateTime;
            DMStoreProcedure.QVerificaPeriodoFiscal.Open;
           if (DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C') or (y<1900) Then
              begin
                ShowMessage('Fecha no Valida, este período fiscal no esta permitido');
                CDSVentaCabFECHAVTA.Clear;
                Sender.Clear;
              end
            else
              begin
                CDSVentaCabFECHAVTA.AsDateTime := Sender.AsDateTime ;
                if ((Sender.AsDateTime<Date) or (Sender.AsDateTime>Date)) and ( CDSVentaCabCPTE_MANUAL.AsString='N') Then
                //if (y<y2) or (m<m2) or (d<d2) Then
                  begin
                   // Verifico si esta activa la opcion de controlar fecha
//                    DMMain_FD.QOpciones.Close;
//                    DMMain_FD.QOpciones.ParamByName('opcion').AsString:='CONTFECHAVTA';
//                    DMMain_FD.QOpciones.Open;
//                    if DMMain_FD.QOpciones.Fields[0].AsString='Si' Then
			           		if DMMain_FD.ControlaFechaVta then
                      begin
                        if MessageDlg('Fecha Fuera de Rango... Acepta Igual???',mtConfirmation,mbYesNo,0,mbNo)=mrNo then
                          begin
                            CDSVentaCabFECHAVTA.Clear;
                            Sender.AsDateTime:=Date;
                            IF (FormCpbte_2.Visible) and (FormCpbte_2.dbeFechaVta.Enabled) Then
                              FormCpbte_2.dbeFechaVta.SetFocus;
                          end
                        else
                          DMMain_FD.LogFileFD(1,2,'Modificacion Fecha en Fc.Nro'+' ('+CDSVentacabID_FC.AsString+') '+
                          CDSVentaCabTIPOCPBTE.AsString+'-'+CDSVentaCABNROCPBTE.AsString ,' FACVTA' );

                      end;
//                   DMMain_FD.QOpciones.Close;
                  end
                else
                  AsignarCondVenta(CDSVentaCabCODIGO.Value,CDSVentaCabCONDICIONVTA.Value);
              end;
            DMStoreProcedure.QVerificaPeriodoFiscal.Close;
          end;
        CDSVentaCabFECHA_FISCAL.AsDateTime := CDSVentaCabFECHAVTA.AsDateTime;
    end
  else
    begin
      sender.AsString:=Text;
      CDSVentaCabFECHA_FISCAL.AsDateTime := CDSVentaCabFECHAVTA.AsDateTime;
    end;

END;

procedure TDatosVentas.CDSVentaCabFECHAVTOSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
end;

procedure TDatosVentas.CDSVentaCabHONORARIOS_PROCENTAJSetText(Sender: TField; const Text: string);
var Aux:Extended;
begin
  Sender.AsString             := Text;
  Aux                         := CDSVentaCabFOB_TOTAL.Value * CDSVentaCabCAMBIO_EXPO.Value * Sender.AsFloat * 0.01;
  CDSVentaCabHONORARIOS.Value :=Aux;
  if CDSVentaDet.Locate('CODIGOARTICULO',Trim(FormCpbte_2.CodHonorarios),[]) then
    begin
      CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(Aux));
    end;
end;

procedure TDatosVentas.CDSVentaCabNETOGRAV1GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR TotalGral,NetoTotal,Aux:Extended;
begin
  if (FormCpbte_2<>Nil) and (Trim(CDSVentaCabNETOGRAV1.AsString)<>'') and (Trunc(Abs(CDSVentaCabNetoGrav1.AsFloat*1000))>0) Then
    begin
      if IsZero(CDSVentaCabNETOGRAV2.AsFloat,0.1) and (CDSVentaCab.State in [dsInsert,dsEdit]) Then
        CDSVentaCabNETOGRAV2.AsFloat:=CDSVentaCabNetoGrav1.AsFloat;

      NetoTotal := CDSVentaCabNetoGrav2.AsFloat;

      TotalGral := CDSVentaCabTotal.AsFloat -
                   (CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat +
                    CDSVentaCabNETOEXEN2.AsFloat +
                    CDSVentaCabNETONOGRAV2.ASFloat +
                    CDSVentaCabNETOGRAV2.AsFloat);

     // if CDSVentaCabNETOGRAV2.AsFloat>0 Then
     //   Var_TasaIVA:= ((TotalGral / NetoTotal)-1)*100
     // else
     //   Var_TasaIva:=0;

     // if Var_TasaIva<0 then Var_TasaIva :=0;

      Aux:=Sender.AsFloat;
      if (CDSVentaCabDESGLOZAIVA.Value='N') or (FormCpbte_2.DiscriminaIva='N') Then
        Aux:= Aux * (1+Var_TasaIva * 0.01);

      Aux:= RoundTo(Aux ,-4);
      Aux:= RoundTo(Aux ,-3);
      Aux:= RoundTo(Aux ,-2);
      Text:=FormatFloat(MascaraCabecera,Aux);
    end;
end;

procedure TDatosVentas.CDSVentaCabSUCURSALSetText(Sender: TField; const Text: String);
begin
 IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Sucursal No Valido');
          FormCpbte_2.RxCSucursal.SetFocus;
        END
      ELSE IF CDSVentaCab.State = dsInsert THEN
       FormCpbte_2.UltimoComprobante;
    END;
end;

procedure TDatosVentas.CDSVentaCabDSTOIMPORTEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR Aux,TotalGral,NetoTotal,Iva:Extended;
begin
  if (FormCpbte_2<>Nil) and (Sender.AsString<>'') and (Trunc(ABS(Sender.ASFloat*100))>0) Then
    begin
      NetoTotal:= CDSVentaCabNETOGRAV1.AsFloat - CDSVentaCabNETOGRAV2.AsFloat;
      Aux:= Sender.AsFloat;
      if (CDSVentaCabDESGLOZAIVA.Value='N') or (FormCpbte_2.DiscriminaIva='N') Then
        Aux:= Aux + NetoTotal * (Var_TasaIva * 0.01);

      aux:=RoundTo(Aux,-3);
      aux:=RoundTo(Aux,-2);

      Text:= FormatFloat(',0.00',Aux);
    end;

end;

procedure TDatosVentas.CDSVentaCabDSTOIMPORTESetText(Sender: TField;
  const Text: string);
var Aux1,Aux2,Importe:Extended;
begin
  Sender.AsString:=Text;
  Aux1:=(CDSVentaCabNETOGRAV1.AsFloat + CDSVentaCabNETOEXEN1.AsFloat + CDSVentaCabNETONOGRAV1.ASFloat);
  Aux2:=(CDSVentaCabNETOGRAV1.AsFloat + CDSVentaCabNETOEXEN1.AsFloat + CDSVentaCabNETONOGRAV1.ASFloat) - Sender.AsFloat;
  Importe:=((Aux1-Aux2)/Aux1)*100;
  if (CDSVentaCabDESGLOZAIVA.Value='N') or (FormCpbte_2.DiscriminaIva='N') Then
    Importe:= RoundTo((Importe/(1+(Var_TasaIva * 0.01))),-2);

  CDSVentaCabDSTOSetText(CDSVentaCabDSTO,FloatToStr(Importe));
end;

procedure TDatosVentas.CDSVtaSubDetalleBeforeInsert(DataSet: TDataSet);
begin
  if ((CDSVtaSubDetalle.RecordCount+1)> Trunc(CDSVentaDetCantidad.AsFloat)) Then
    begin
      sysutils.Abort;
      RAISE Exception.Create('No se pueden cargara mas items de los comprados...')
    end;
end;

procedure TDatosVentas.CDSVtaSubDetalleNewRecord(DataSet: TDataSet);
begin
  CDSVtaSubDetalleID.Value            :=IBGFcVtaSubDet.incrementFD(1);
  CDSVtaSubDetalleID_DETFAC.Value     :=CDSVentaDetId.Value;
  CDSVtaSubDetalleID_CABFAC.Value     :=CDSVentaCabID_FC.Value;
  CDSVtaSubDetalleTIPOCPBTE.Value     :=CDSVentaCabTIPOCPBTE.Value;
  CDSVtaSubDetalleCLASECPBTE.Value    :=CDSVentaCabCLASECPBTE.Value;
  CDSVtaSubDetalleFECHA.AsDateTime    :=CDSVentaCabFECHAVTA.AsDateTime;
  CDSVtaSubDetalleNROCPBTE.Value      :=CDSVentaCabNROCPBTE.Value;
  CDSVtaSubDetalleCODIGOARTICULO.Value:=CDSVentaDetCodigoArticulo.Value;
  CDSVtaSubDetalleDEPOSITO.Value      :=CDSVentaCabDeposito.Value;
  CDSVtaSubDetalleTipo.Value:='E';
  CDSVtaSubDetalleHACERINGRESO.Value  :=False;
  if CDSVtaSubDetalleTIPOCPBTE.Value='NC' Then
    CDSVtaSubDetalleTipo.Value:='I';

end;


procedure TDatosVentas.CDSVtaSubDetalleSERIESetText(Sender: TField;
  const Text: String);
var i:Integer;
IngSerieConVta:Boolean;
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
       // verifico si no fue ingresado en el comprobante
      i:=FormCpbte_2.CodigosSeries.IndexOf(UpperCase(Text));
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
              QNroSerie.ParamByName('codigo').Value         := CDSVentaDetCodigoArticulo.Value;
              QNroSerie.ParamByName('codigoserie').Value    := Sender.AsString;

              if DMMain_FD.SerieDeposito then
                QNroSerie.ParamByName('deposito').Value     := -1
              else
                QNroSerie.ParamByName('deposito').Value     := CDSVentaDetDeposito.Value;

              // verifico si ingreso el serie en ausencia por medio de la vta

              IngSerieConVta                                :=  DMMain_FD.SerieVta;

              QNroSerie.Open;
              IF (QNroSerie.Fields[0].AsString='') and (IngSerieConVta) THEN
                BEGIN
                  ShowMessage('Codigo Serie Inexistente, o en otro depósito, o ya fué entregado...');
                  if (MessageDlg('Continua con la carga igual, dando de alta el Nro.de Seria en forma automática...?',
                                  mtConfirmation, [mbYes, mbNo], 0)= 1) Then
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
                IF (QNroSerie.Fields[0].AsString='') and (IngSerieConVta) THEN
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
            end
          else
            if CDSVtaSubDetalleTIPO.Value='I' Then
              begin
                QNroSerieNC.Close;
                QNroSerieNC.ParamByName('codigo').Value      := CDSVentaDetCodigoArticulo.Value;
                QNroSerieNC.ParamByName('codigoserie').Value := Sender.AsString;
                QNroSerieNC.Open;
                IF (QNroSerieNC.Fields[0].AsString='')  THEN
                  BEGIN
                    ShowMessage('Codigo Serie Inexistente, ...');
                    Sender.Clear;
                  END;
                QNroSerieNC.Close;
              end;
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
    end;
end;

procedure TDatosVentas.CDSVtaSubDetalleBeforePost(DataSet: TDataSet);
begin
 IF ((CDSVtaSubDetalleSERIE.AsString = '') AND
     (CDSVtaSubDetalle.State IN [dsInsert, dsEdit]))
    THEN
    BEGIN
      CDSVtaSubDetalle.Cancel;
      SysUtils.Abort;
    END;
end;

procedure TDatosVentas.CDSVentaDetBeforeDelete(DataSet: TDataSet);
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

        DMMain_FD.LogFileFD(0,2,Detalle,'FACVTA');
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
      CDSVtaSubDetalle.First;
    end;

  CDSFc_Prod_Det.First;
  while Not(CDSFc_Prod_Det.Eof) do
    begin
      CDSFc_Prod_Det.delete;
      CDSFc_Prod_Det.First;
    end;

  CDSVentaLote.First;
  while Not(CDSVentaLote.Eof) do
    begin
      CDSVentaLote.delete;
      CDSVentaLote.First;
    end;

  if CDSVtaDetConsig.Locate('id_detfac',CDSVentaDetID.AsString,[]) Then
    CDSVtaDetConsig.Delete;
  if Not(CDSMov_Carnes.IsEmpty) then
    CDSMov_Carnes.Delete;

  AgregrarNovedadDetalle(DataSet,'D');
end;

procedure TDatosVentas.CDSVtaDetConsigID_MOV_RECEPCION_DETSetText(
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

procedure TDatosVentas.CDSVtaDetConsigNewRecord(DataSet: TDataSet);
begin
  CDSVtaDetConsigID.Value               := ibgFcVtaConsig.incrementFD(1);
  CDSVtaDetConsigID_CABFAC.Value        := CDSVentaDetId_CabFac.Value;
  CDSVtaDetConsigID_DETFAC.Value        := CDSVentaDetId.Value;
  CDSVtaDetConsigCODIGO.Value           := CDSVentaDetCODIGOARTICULO.Value;
  CDSVtaDetConsigDETALLE.Value          := CDSVentaDetDETALLE.Value;
  CDSVtaDetConsigCANTIDAD.AsFloat       := CDSVentaDetCantidad.AsFloat;
  CDSVtaDetConsigCODIGO_PROVEEDOR.Value := CDSVentaCabPROVEEDOR.Value;
  CDSVtaDetConsigLIQUIDADA.Value        := 'N';
  CDSVtaDetConsigPRECIO_VTA.AsFloat     := CDSVentaDetUNITARIO_TOTAL.AsFloat;
  CDSVtaDetConsigPRECIO_COMPRA.AsFloat  := 0;
  
end;

procedure TDatosVentas.CDSVtaDetNovedadesNewRecord(DataSet: TDataSet);
begin
  CDSVtaDetNovedadesID.Value              := ibgDetNovedades.IncrementFD(1);
  CDSVtaDetNovedadesID_CABFAC.Value       := CDSVentaCabID_FC.AsInteger;
  CDSVtaDetNovedadesFECHA_HORA.AsDateTime := Now;
  CDSVtaDetNovedadesUSUARIO.AsString      := DMMain_FD.UsuarioActivo;
  CDSVtaDetNovedadesTIPOCPBTE.AsString    := '';
  CDSVtaDetNovedadesPRECIO_OLD.AsFloat    := 0;
end;

procedure TDatosVentas.CDSVtaSubDetalleAfterPost(DataSet: TDataSet);
begin
  FormCpbte_2.CodigosSeries.Add(CDSVtaSubDetalleSERIE.Value);
end;

procedure TDatosVentas.CDSVtaSubDetalleBeforeDelete(DataSet: TDataSet);
VAR i:Integer;
begin
  i:=FormCpbte_2.CodigosSeries.IndexOf(CDSVtaSubDetalleSERIE.AsString);
    if i>=0 Then  FormCpbte_2.CodigosSeries.Delete(I);
end;

procedure TDatosVentas.CDSVtaSubDetalleBeforeEdit(DataSet: TDataSet);
begin
  CDSVtaSubDetalle.Delete;
end;

procedure TDatosVentas.CDSVentaDetBeforeInsert(DataSet: TDataSet);
begin
  IF (CDSVentaDet.RecordCount >= Renglones) or (CDSVentaCabCON_GTIA_EXTENDIDA.Value='S') THEN
    BEGIN
      CDSVentaDet.Cancel;
      showMessage('no se puede ingreasr mas renglones');
      SysUtils.Abort;
    END;
end;

procedure TDatosVentas.CDSVentaDetAfterScroll(DataSet: TDataSet);
begin
  FormCpbte_2.sbEstado.Panels[1].Text:='';
  if CDSVentaDetUnitario_Total.AsFloat<CDSVentaDetCosto_Total.AsFloat Then
    FormCpbte_2.sbEstado.Panels[1].Text:='Precio debajo del costo';
  if CDSVentaDetDE_PRODUCCION.AsString='S' Then
    FormCpbte_2.sbEstado.Panels[1].Text:='Alt+F12 Det.Produccion ';

  FormCpbte_2.spProduccion.Enabled:= CDSVentaDetDE_PRODUCCION.Value='S';

  if (FormCpbte_2.DBGrillaDetalle.SelectedIndex=5) and (CDSVentaDetDE_PRODUCCION.Value='S') then
    FormCpbte_2.EditarProduccion.Execute;

  FormCpbte_2.pnLote.Visible  := CDSVentaDetCONTROL_TRAZABILIDAD.Value='S';
end;

procedure TDatosVentas.CDSVentaCabNETOGRAV2GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR TotalGral,NetoTotal,Aux: Extended;
begin
  if (FormCpbte_2<>Nil) and (CDSVentaCabNetoGrav1.ASFloat>0) Then
    begin
      if IsZero(CDSVentaCabNETOGRAV2.AsFloat,0.01) Then
        CDSVentaCabNETOGRAV2.AsFloat:=CDSVentaCabNetoGrav1.AsFloat;

      NetoTotal := CDSVentaCabNetoGrav2.AsFloat;

      TotalGral := CDSVentaCabTotal.AsFloat -
                   (CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat +
                    CDSVentaCabNETOEXEN2.AsFloat +
                    CDSVentaCabNETONOGRAV2.ASFloat +
                    CDSVentaCabNetoGrav2.AsFloat);

    //  if CDSVentaCabNETOGRAV2.AsFloat>0 Then
    //    Var_TasaIVA:= ((TotalGral / NetoTotal)-1)*100
    //  else
    //    Var_TasaIva:=0;
    //  if Var_TasaIva<0 then Var_TasaIva :=0;

      Aux:=Sender.AsFloat;
      if (CDSVentaCabDESGLOZAIVA.Value='N') or (FormCpbte_2.DiscriminaIva='N') Then
        Aux:= Aux * (1+Var_TasaIva * 0.01);

      Aux:= RoundTo(Aux ,-4);
      Aux:= RoundTo(Aux ,-3);
      Aux:= RoundTo(Aux ,-2);
      Text:=FormatFloat(MascaraCabecera,Aux);
    end;
end;

procedure TDatosVentas.GenerarCodigoBarra(Var NroRipsa:String);
var Lote,i,Z,Acum,AuxInt,AuxInt2,Verificador:integer;
anio,mes,dia:word;
Aux,LoteStr,Cadena,Importe:String;
SaldoCC:Extended;
begin
  SaldoCC:=0;
  CDSRegFacturas.Append;
  CDSRegFacturasLOTE.Value       := 0;
  CDSRegFacturasID_FAC.Value     := FormCpbte_2.DSBase.DataSet.FieldByName('id_fc').Value;
  CDSRegFacturasCLIENTE.Value    := FormCpbte_2.DSBase.DataSet.FieldByName('codigo').Value;
  CDSRegFacturasFECHA.AsDateTime := FormCpbte_2.DSBase.DataSet.FieldByName('fechavta').Value;
  CDSRegFacturasIMPORTE.AsFloat  := FormCpbte_2.DSBase.DataSet.FieldByName('total').AsFloat;
  CDSRegFacturasSALDO_CC.AsFloat := SaldoCC;// esto se cambio para traer solo el saldo de servicions--- FormCpbte_2.DSBase.DataSet.FieldByName('saldo_actual_cc').Value;
  CDSRegFacturasTIPOCPBTE.Value  := FormCpbte_2.DSBase.DataSet.FieldByName('tipocpbte').Value;
  CDSRegFacturasCLACPBTE.Value   := FormCpbte_2.DSBase.DataSet.FieldByName('clasecpbte').Value;
  CDSRegFacturasNROCPBTE.Value   := FormCpbte_2.DSBase.DataSet.FieldByName('nrocpbte').Value;
  // inicio el codigo barra
  Cadena:='';
  Importe:=FormatFloat('000000.00',CDSRegFacturasIMPORTE.AsFloat);
  while not(Pos('.',Importe)=0) do
    delete(importe,Pos('.',Importe),1);
  Cadena:=Copy('0000',1,4-Length(Trim(NroRipsa)))+Trim(NroRipsa);
  Cadena:=Cadena+CDSRegFacturasCLIENTE.Value;
  Cadena:=Cadena+copy(CDSRegFacturasNROCPBTE.Value,2,12);
  Cadena:=Cadena+Importe;
  Acum:=0;
  for Z := 1 to Length(Cadena)  do
    begin
      if Z=1 then
        begin
          AuxInt:=StrToInt(Cadena[Z]) * 1;
          Acum  :=Acum+AuxInt;
        end
      else
        if (Z=2) or (Z=6) or (Z=10)or (Z=14)or (Z=18)or (Z=22)or (Z=26) or (Z=30) then
          begin
            AuxInt:=StrToInt(Cadena[Z]) * 3;
            Acum  :=Acum+AuxInt;
          end
        else
          if (Z=3) or (Z=7) or (Z=11)or (Z=15)or (Z=19)or (Z=23)or (Z=27)  then
            begin
              AuxInt:=StrToInt(Cadena[Z]) * 5;
              Acum  :=Acum+AuxInt;
            end
          else
            if (Z=4) or (Z=8) or (Z=12)or (Z=16)or (Z=20)or (Z=24)or (Z=28) then
              begin
                AuxInt:=StrToInt(Cadena[Z]) * 7;
                Acum  :=Acum+AuxInt;
              end
            else
              if (Z=5) or (Z=9) or (Z=13)or (Z=17)or (Z=21)or (Z=25)or (Z=29) then
                begin
                  AuxInt:=StrToInt(Cadena[Z]) * 9;
                  Acum  :=Acum+AuxInt;
                end;
    end;
  AuxInt  := Acum div 2;
  AuxInt2 := AuxInt div 10;

  Verificador:=AuxInt-(AuxInt2*10);

  CDSRegFacturasCODIGOBARRA.Value:=Cadena+IntToStr(Verificador);

  Cadena:='';
  if (CDSRegFacturasSALDO_CC.AsFloat>0) then
    Importe:=FormatFloat('000000.00',CDSRegFacturasSALDO_CC.AsFloat+CDSRegFacturasIMPORTE.AsFloat)
  else
    Importe:=FormatFloat('000000.00',CDSRegFacturasIMPORTE.AsFloat);
  while not(Pos('.',Importe)=0) do
    delete(importe,Pos('.',Importe),1);
  Cadena:=Copy('0000',1,4-Length(Trim(NroRipsa)))+Trim(NroRipsa);
  Cadena:=Cadena+CDSRegFacturasCLIENTE.Value;
  Cadena:=Cadena+'000000000000';
  Cadena:=Cadena+Importe;
  Acum:=0;
  for Z := 1 to Length(Cadena)  do
    begin
      if Z=1 then
        begin
          AuxInt:=StrToInt(Cadena[Z]) * 1;
          Acum  :=Acum+AuxInt;
        end
      else
        if (Z=2) or (Z=6) or (Z=10) or (Z=14) or (Z=18) or (Z=22) or (Z=26) or (Z=30) then
          begin
            AuxInt:=StrToInt(Cadena[Z]) * 3;
            Acum  :=Acum+AuxInt;
          end
        else
          if (Z=3) or (Z=7) or (Z=11) or (Z=15) or (Z=19) or (Z=23) or (Z=27)  then
            begin
              AuxInt:=StrToInt(Cadena[Z]) * 5;
              Acum  :=Acum+AuxInt;
            end
          else
            if (Z=4) or (Z=8) or (Z=12)or (Z=16)or (Z=20)or (Z=24)or (Z=28) then
              begin
                AuxInt:=StrToInt(Cadena[Z]) * 7;
                Acum  :=Acum+AuxInt;
              end
            else
              if (Z=5) or (Z=9) or (Z=13)or (Z=17)or (Z=21)or (Z=25)or (Z=29) then
                begin
                  AuxInt:=StrToInt(Cadena[Z]) * 9;
                  Acum  :=Acum+AuxInt;
                end;
    end;
  AuxInt  := Acum div 2;
  AuxInt2 := AuxInt div 10;

  Verificador:=AuxInt-(AuxInt2*10);

  CDSRegFacturasCODIGOBARRA_2.Value:=Cadena+IntToStr(Verificador);

  CDSRegFacturasNROCPBTE.Value  :=FormCpbte_2.DSBase.DataSet.FieldByName('nrocpbte').Value;

  CDSRegFacturas.Post;
end;

procedure TDatosVentas.RevisionCodigoBarra(Var NroRipsa:String);
var Lote,i,Z,Acum,AuxInt,AuxInt2,Verificador:integer;
anio,mes,dia:word;
Aux,LoteStr,Cadena,Importe:String;
SaldoCC:Extended;
begin
  //SaldoCC:=0;
  DMStoreProcedure.QSaldoCtaCte.Close;
  DMStoreProcedure.QSaldoCtaCte.ParamByName('codigo').Value:=FormCpbte_2.DSBase.DataSet.FieldByName('codigo').Value;
  DMStoreProcedure.QSaldoCtaCte.Open;
  SaldoCC       := RoundTo(DMStoreProcedure.QSaldoCtaCte.Fields[0].AsFloat,-3);
  SaldoCC       := RoundTo(SaldoCC,-2);

  if SaldoCC<0 then SAldoCC:=FormCpbte_2.DSBase.DataSet.FieldByName('total').AsFloat;
  
  DMStoreProcedure.QSaldoCtaCte.Close;

  CDSRegFacturas.Edit;
  CDSRegFacturasCLIENTE.Value   :=FormCpbte_2.DSBase.DataSet.FieldByName('codigo').Value;
  CDSRegFacturasFECHA.AsDateTime:=FormCpbte_2.DSBase.DataSet.FieldByName('fechavta').Value;
  CDSRegFacturasIMPORTE.AsFloat :=FormCpbte_2.DSBase.DataSet.FieldByName('total').AsFloat;
  CDSRegFacturasSALDO_CC.AsFloat:=SaldoCC;// esto se cambio para traer solo el saldo de servicions--- FormCpbte_2.DSBase.DataSet.FieldByName('saldo_actual_cc').Value;
  CDSRegFacturasTIPOCPBTE.Value :=FormCpbte_2.DSBase.DataSet.FieldByName('tipocpbte').Value;
  CDSRegFacturasCLACPBTE.Value  :=FormCpbte_2.DSBase.DataSet.FieldByName('clasecpbte').Value;
  CDSRegFacturasNROCPBTE.Value  :=FormCpbte_2.DSBase.DataSet.FieldByName('nrocpbte').Value;
  // inicio el codigo barra
  Cadena:='';
  Importe:=FormatFloat('000000.00',CDSRegFacturasIMPORTE.AsFloat);
  while not(Pos('.',Importe)=0) do
    delete(importe,Pos('.',Importe),1);
  Cadena:=Copy('0000',1,4-Length(Trim(NroRipsa)))+Trim(NroRipsa);
  Cadena:=Cadena+CDSRegFacturasCLIENTE.Value;
  Cadena:=Cadena+copy(CDSRegFacturasNROCPBTE.Value,2,12);
  Cadena:=Cadena+Importe;
  Acum:=0;
  for Z := 1 to Length(Cadena)  do
    begin
      if Z=1 then
        begin
          AuxInt:= StrToInt(Cadena[Z]) * 1;
          Acum  := Acum+AuxInt;
        end
      else
        if (Z=2) or (Z=6) or (Z=10) or (Z=14) or (Z=18) or (Z=22) or (Z=26) or (Z=30) then
          begin
            AuxInt:= StrToInt(Cadena[Z]) * 3;
            Acum  := Acum+AuxInt;
          end
        else
          if (Z=3) or (Z=7) or (Z=11) or (Z=15) or (Z=19) or (Z=23) or (Z=27) then
            begin
              AuxInt:= StrToInt(Cadena[Z]) * 5;
              Acum  := Acum+AuxInt;
            end
          else
            if (Z=4) or (Z=8) or (Z=12) or (Z=16) or (Z=20) or (Z=24) or (Z=28) then
              begin
                AuxInt:= StrToInt(Cadena[Z]) * 7;
                Acum  := Acum+AuxInt;
              end
            else
              if (Z=5) or (Z=9) or (Z=13) or (Z=17) or (Z=21) or (Z=25) or (Z=29) then
                begin
                  AuxInt:= StrToInt(Cadena[Z]) * 9;
                  Acum  := Acum+AuxInt;
                end;
    end;
  AuxInt  := Acum div 2;
  AuxInt2 := AuxInt div 10;

  Verificador:= AuxInt-(AuxInt2*10);

  CDSRegFacturasCODIGOBARRA.Value:=Cadena+IntToStr(Verificador);

  Cadena:='';
  if (CDSRegFacturasSALDO_CC.AsFloat>0) then
    Importe:=FormatFloat('000000.00',CDSRegFacturasSALDO_CC.AsFloat)
  else
    Importe:=FormatFloat('000000.00',CDSRegFacturasIMPORTE.AsFloat);
  while not(Pos('.',Importe)=0) do
    delete(importe,Pos('.',Importe),1);
  Cadena:=Copy('0000',1,4-Length(Trim(NroRipsa)))+Trim(NroRipsa);
  Cadena:=Cadena+CDSRegFacturasCLIENTE.Value;
  Cadena:=Cadena+'000000000000';
  Cadena:=Cadena+Importe;
  Acum:=0;
  for Z := 1 to Length(Cadena)  do
    begin
      if Z=1 then
        begin
          AuxInt:=StrToInt(Cadena[Z]) * 1;
          Acum  :=Acum+AuxInt;
        end
      else
        if (Z=2) or (Z=6) or (Z=10)or (Z=14)or (Z=18)or (Z=22)or (Z=26) or (Z=30)  then
          begin
            AuxInt:=StrToInt(Cadena[Z]) * 3;
            Acum  :=Acum+AuxInt;
          end
        else
          if (Z=3) or (Z=7) or (Z=11)or (Z=15)or (Z=19)or (Z=23)or (Z=27) then
            begin
              AuxInt:=StrToInt(Cadena[Z]) * 5;
              Acum  :=Acum+AuxInt;
            end
          else
            if (Z=4) or (Z=8) or (Z=12)or (Z=16)or (Z=20)or (Z=24)or (Z=28) then
              begin
                AuxInt:=StrToInt(Cadena[Z]) * 7;
                Acum  :=Acum+AuxInt;
              end
            else
              if (Z=5) or (Z=9) or (Z=13)or (Z=17)or (Z=21)or (Z=25)or (Z=29) then
                begin
                  AuxInt:=StrToInt(Cadena[Z]) * 9;
                  Acum  :=Acum+AuxInt;
                end;
    end;
  AuxInt  := Acum div 2;
  AuxInt2 := AuxInt div 10;

  Verificador:=AuxInt-(AuxInt2*10);

  CDSRegFacturasCODIGOBARRA_2.Value:=Cadena+IntToStr(Verificador);

  CDSRegFacturasNROCPBTE.Value  :=FormCpbte_2.DSBase.DataSet.FieldByName('nrocpbte').Value;

  CDSRegFacturas.Post;
end;

end.
