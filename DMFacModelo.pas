unit DMFacModelo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBGenerator, Db, DBClient,  Provider,
  Librerias,Variants, FMTBcd, SqlExpr,Math, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDatosModelo = class(TDataModule)
    DSPModeloCab: TDataSetProvider;
    DSPStock: TDataSetProvider;
    DSPCondVenta: TDataSetProvider;
    DSPModeloDet: TDataSetProvider;
    DSPImpuestos: TDataSetProvider;
    DSPClientes: TDataSetProvider;
    DSPInscripcion: TDataSetProvider;
    DSPDeposito: TDataSetProvider;
    DSPIva: TDataSetProvider;
    DSPSucursal: TDataSetProvider;
    DSPLdr: TDataSetProvider;
    IBGFc_Det: TIBGenerator;
    IBGFc_Cab: TIBGenerator;
    IBGFc_Impuestos: TIBGenerator;
    CDSDeposito: TClientDataSet;
    CDSDepositoID: TIntegerField;
    CDSDepositoNOMBRE: TStringField;
    CDSDepositoSUCURSAL: TIntegerField;
    CDSBuscaDeposito: TClientDataSet;
    CDSBuscaDepositoNOMBRE: TStringField;
    CDSBuscaDepositoID: TIntegerField;
    DSPBuscaDeposito: TDataSetProvider;
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
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalCOMISION: TFloatField;
    DSPBuscaVendedor: TDataSetProvider;
    CDSBuscaVendedor: TClientDataSet;
    CDSBuscaVendedorCODIGO: TStringField;
    CDSBuscaVendedorNOMBRE: TStringField;
    CDSBuscaVendedorCOMISION: TFloatField;
    DSPBuscaCondVenta: TDataSetProvider;
    CDSBuscaCondVenta: TClientDataSet;
    CDSBuscaCondVentaCODIGOCLIENTE: TStringField;
    CDSBuscaCondVentaCODIGOPAGO: TIntegerField;
    CDSBuscaCondVentaDESCUENTO: TFloatField;
    CDSBuscaCondVentaPOR_DEFECTO: TStringField;
    CDSBuscaCondVentaDETALLE: TStringField;
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
    CDSModeloCab: TClientDataSet;
    CDSModeloCabID_FC: TIntegerField;
    CDSModeloCabTIPOCPBTE: TStringField;
    CDSModeloCabCLASECPBTE: TStringField;
    CDSModeloCabLETRA: TStringField;
    CDSModeloCabCODIGO: TStringField;
    CDSModeloCabNOMBRE: TStringField;
    CDSModeloCabRAZONSOCIAL: TStringField;
    CDSModeloCabDIRECCION: TStringField;
    CDSModeloCabCPOSTAL: TStringField;
    CDSModeloCabLOCALIDAD: TStringField;
    CDSModeloCabTIPOIVA: TIntegerField;
    CDSModeloCabCUIT: TStringField;
    CDSModeloCabCONDICIONVTA: TIntegerField;
    CDSModeloCabSUCURSAL: TIntegerField;
    CDSModeloCabZONA: TIntegerField;
    CDSModeloCabLDR: TIntegerField;
    CDSModeloCabDEPOSITO: TIntegerField;
    CDSModeloCabCALCULA_SOBRETASA: TStringField;
    CDSModeloCabDESGLOZAIVA: TStringField;
    CDSModeloCabINGRESA_A_CTACTE: TStringField;
    CDSModeloCabINGRESA_LIBRO_IVA: TStringField;
    CDSModeloCabVENDEDOR: TStringField;
    CDSModeloCabGRUPO: TIntegerField;
    CDSModeloCabMUESTRACONDVENTA: TStringField;
    CDSModeloCabMUESTRADEPOSITO: TStringField;
    CDSModeloCabMUESTRASUCURSAL: TStringField;
    CDSModeloCabMUESTRALDR: TStringField;
    CDSModeloCabMUESTRAIVA: TStringField;
    CDSModeloCabMUESTRACOMPROBANTE: TStringField;
    CDSModeloCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSModeloCabMUESTRAVENDEDOR: TStringField;
    CDSCondVenta: TClientDataSet;
    CDSCondVentaCODIGOCLIENTE: TStringField;
    CDSCondVentaCODIGOPAGO: TIntegerField;
    CDSCondVentaDESCUENTO: TFloatField;
    CDSCondVentaPOR_DEFECTO: TStringField;
    CDSCondVentaDETALLE: TStringField;
    CDSCondVentaDIAS: TIntegerField;
    CDSCondVentaDESCUENTO_FPAGO: TFloatField;
    CDSImpuestos: TClientDataSet;
    CDSImpuestosID_IMPUESTO: TIntegerField;
    CDSImpuestosID_FCMODELOCAB: TIntegerField;
    CDSImpuestosCODIGO_GRAVAMEN: TIntegerField;
    CDSImpuestosDETALLE: TStringField;
    DSVentaDet: TDataSource;
    DSImpuestos: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalRECARGO: TFloatField;
    CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    CDSModeloDet: TClientDataSet;
    CDSModeloDetID: TIntegerField;
    CDSModeloDetID_CABMODELO: TIntegerField;
    CDSModeloDetTIPOCPBTE: TStringField;
    CDSModeloDetCLASECPBTE: TStringField;
    CDSModeloDetCODIGOARTICULO: TStringField;
    CDSModeloDetDETALLE: TStringField;
    CDSModeloDetUNIDAD: TStringField;
    CDSModeloDetDESGLOZAIVA: TStringField;
    CDSModeloDetMODO_GRAVAMEN: TStringField;
    CDSModeloDetTIPOIVA_TASA: TIntegerField;
    CDSModeloDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSModeloDetDEPOSITO: TIntegerField;
    CDSModeloDetAFECTA_STOCK: TStringField;
    CDSModeloDetCALCULA_SOBRETASA: TStringField;
    CDSModeloDetGRAVADO_IB: TStringField;
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
    CDSLdr: TClientDataSet;
    CDSLdrCODIGO_CLIENTE: TStringField;
    CDSLdrCODIGO_LDR: TIntegerField;
    CDSLdrNOMBRE: TStringField;
    CDSLdrDIRECCION: TStringField;
    CDSLdrCPOSTAL: TStringField;
    DSPBuscaLdr: TDataSetProvider;
    CDSBuscaLdr: TClientDataSet;
    CDSBuscaLdrCODIGO_CLIENTE: TStringField;
    CDSBuscaLdrCODIGO_LDR: TIntegerField;
    CDSBuscaLdrDIRECCION: TStringField;
    CDSBuscaLdrNOMBRE: TStringField;
    CDSBuscaLdrCPOSTAL: TStringField;
    DSPBuscaComprob: TDataSetProvider;
    CDSBuscaComprob: TClientDataSet;
    DSPListaGrupo: TDataSetProvider;
    CDSListaGrupo: TClientDataSet;
    CDSListaGrupoID: TIntegerField;
    CDSListaGrupoDETALLE: TStringField;
    DSListaGrupo: TDataSource;
    CDSBuscaComprobID_COMPROBANTE: TIntegerField;
    CDSBuscaComprobTIPO_COMPROB: TStringField;
    CDSBuscaComprobCLASE_COMPROB: TStringField;
    CDSBuscaComprobDENOMINACION: TStringField;
    CDSBuscaComprobSUCURSAL: TIntegerField;
    CDSBuscaComprobLETRA: TStringField;
    CDSBuscaComprobPREFIJO: TStringField;
    CDSBuscaComprobNUMERO: TStringField;
    CDSModeloDetID_MONEDA: TIntegerField;
    QModeloCab: TFDQuery;
    QModeloCabID_FC: TIntegerField;
    QModeloCabTIPOCPBTE: TStringField;
    QModeloCabCLASECPBTE: TStringField;
    QModeloCabLETRA: TStringField;
    QModeloCabCODIGO: TStringField;
    QModeloCabNOMBRE: TStringField;
    QModeloCabRAZONSOCIAL: TStringField;
    QModeloCabDIRECCION: TStringField;
    QModeloCabCPOSTAL: TStringField;
    QModeloCabLOCALIDAD: TStringField;
    QModeloCabTIPOIVA: TIntegerField;
    QModeloCabCUIT: TStringField;
    QModeloCabCONDICIONVTA: TIntegerField;
    QModeloCabNETOGRAV1: TFloatField;
    QModeloCabNETOGRAV2: TFloatField;
    QModeloCabDSTO: TFloatField;
    QModeloCabDSTOIMPORTE: TFloatField;
    QModeloCabNETOEXEN1: TFloatField;
    QModeloCabNETOEXEN2: TFloatField;
    QModeloCabTOTAL: TFloatField;
    QModeloCabSUCURSAL: TIntegerField;
    QModeloCabZONA: TIntegerField;
    QModeloCabLDR: TIntegerField;
    QModeloCabDEPOSITO: TIntegerField;
    QModeloCabCALCULA_SOBRETASA: TStringField;
    QModeloCabDESGLOZAIVA: TStringField;
    QModeloCabINGRESA_A_CTACTE: TStringField;
    QModeloCabINGRESA_LIBRO_IVA: TStringField;
    QModeloCabVENDEDOR: TStringField;
    QModeloCabGRUPO: TIntegerField;
    QModeloCabMUESTRACONDVENTA: TStringField;
    QModeloCabMUESTRADEPOSITO: TStringField;
    QModeloCabMUESTRASUCURSAL: TStringField;
    QModeloCabMUESTRALDR: TStringField;
    QModeloCabMUESTRAIVA: TStringField;
    QModeloCabMUESTRACOMPROBANTE: TStringField;
    QModeloCabID_TIPOCOMPROBANTE: TIntegerField;
    QModeloCabMUESTRAVENDEDOR: TStringField;
    CDSModeloCabNETOGRAV1: TFloatField;
    CDSModeloCabNETOGRAV2: TFloatField;
    CDSModeloCabDSTO: TFloatField;
    CDSModeloCabDSTOIMPORTE: TFloatField;
    CDSModeloCabNETOEXEN1: TFloatField;
    CDSModeloCabNETOEXEN2: TFloatField;
    CDSModeloCabTOTAL: TFloatField;
    QModeloDet: TFDQuery;
    QModeloDetID: TIntegerField;
    QModeloDetID_CABMODELO: TIntegerField;
    QModeloDetTIPOCPBTE: TStringField;
    QModeloDetCLASECPBTE: TStringField;
    QModeloDetRENGLON: TFloatField;
    QModeloDetCODIGOARTICULO: TStringField;
    QModeloDetDETALLE: TStringField;
    QModeloDetUNIDAD: TStringField;
    QModeloDetCANTIDAD: TFloatField;
    QModeloDetUNITARIO_TOTAL: TFloatField;
    QModeloDetUNITARIO_GRAVADO: TFloatField;
    QModeloDetUNITARIO_EXENTO: TFloatField;
    QModeloDetDESGLOZAIVA: TStringField;
    QModeloDetMODO_GRAVAMEN: TStringField;
    QModeloDetIVA_TASA: TFloatField;
    QModeloDetTIPOIVA_TASA: TIntegerField;
    QModeloDetIVA_SOBRETASA: TFloatField;
    QModeloDetTIPOIVA_SOBRETASA: TIntegerField;
    QModeloDetCOSTO_GRAVADO: TFloatField;
    QModeloDetCOSTO_EXENTO: TFloatField;
    QModeloDetCOSTO_TOTAL: TFloatField;
    QModeloDetDESCUENTO: TFloatField;
    QModeloDetTOTAL: TFloatField;
    QModeloDetDEPOSITO: TIntegerField;
    QModeloDetMARGEN: TFloatField;
    QModeloDetAFECTA_STOCK: TStringField;
    QModeloDetCALCULA_SOBRETASA: TStringField;
    QModeloDetGRAVADO_IB: TStringField;
    QModeloDetID_MONEDA: TIntegerField;
    QModeloDetCOTIZACION: TFloatField;
    QModeloDetIVA_UNITARIO: TFloatField;
    QModeloDetIVA_TOTAL: TFloatField;
    QModeloDetTOTAL_GRAVADO: TFloatField;
    QModeloDetTOTAL_EXENTO: TFloatField;
    CDSModeloDetRENGLON: TFloatField;
    CDSModeloDetUNITARIO_TOTAL: TFloatField;
    CDSModeloDetUNITARIO_GRAVADO: TFloatField;
    CDSModeloDetUNITARIO_EXENTO: TFloatField;
    CDSModeloDetCOSTO_GRAVADO: TFloatField;
    CDSModeloDetCOSTO_EXENTO: TFloatField;
    CDSModeloDetCOSTO_TOTAL: TFloatField;
    CDSModeloDetIVA_UNITARIO: TFloatField;
    CDSModeloDetIVA_TOTAL: TFloatField;
    CDSModeloDetTOTAL_GRAVADO: TFloatField;
    CDSModeloDetTOTAL_EXENTO: TFloatField;
    CDSModeloDetCANTIDAD: TFloatField;
    CDSModeloDetIVA_TASA: TFloatField;
    CDSModeloDetIVA_SOBRETASA: TFloatField;
    CDSModeloDetDESCUENTO: TFloatField;
    CDSModeloDetTOTAL: TFloatField;
    CDSModeloDetMARGEN: TFloatField;
    CDSModeloDetCOTIZACION: TFloatField;
    QImpuestos: TFDQuery;
    CDSImpuestosNETO: TFloatField;
    CDSImpuestosTASA: TFloatField;
    CDSImpuestosIMPORTE: TFloatField;
    QPrimerConVta: TFDQuery;
    QPrimerLdr: TFDQuery;
    QPrecioEspecial: TFDQuery;
    QPrecioEspecialPRECIOPACTADO: TFloatField;
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
    QBuscaComprob: TFDQuery;
    QListaGrupo: TFDQuery;
    QMonedas: TFDQuery;
    QMonedasID: TIntegerField;
    QMonedasMONEDA: TStringField;
    QMonedasCOTIZACION: TFloatField;
    QMonedasSIGNO: TStringField;
    QMonedasORDEN: TSmallintField;
    QMonedasCOTIZACION_COMPRA: TFloatField;
    QTraerRecargoDeLista: TFDQuery;
    QTraerRecargoDeListaRECARGO: TFloatField;
    QListaPrecioPorDefecto: TFDQuery;
    QListaPrecioPorDefectoID: TIntegerField;
    QListaPrecioPorDefectoF_PAGO: TIntegerField;
    QCoefPrecio: TFDQuery;
    QDepositoStk: TFDQuery;
    QBuscador: TFDQuery;
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
    procedure CDSModeloCabNewRecord(DataSet: TDataSet);
    procedure CDSModeloDetNewRecord(DataSet: TDataSet);
    procedure CDSModeloCabLDRSetText(Sender: TField; const Text: String);
    procedure CDSModeloCabDEPOSITOSetText(Sender: TField;
      const Text: String);
    procedure CDSModeloCabNETOGRAV1GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CDSModeloCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSModeloCabCONDICIONVTASetText(Sender: TField;
      const Text: String);
    procedure CDSModeloCabVENDEDORSetText(Sender: TField;
      const Text: String);
    procedure CDSModeloCabSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure CDSModeloDetCODIGOARTICULOSetText(Sender: TField;
      const Text: String);
    procedure CDSModeloDetUNITARIO_TOTALSetText(Sender: TField;
      const Text: String);
    procedure CDSModeloDetCANTIDADSetText(Sender: TField;
      const Text: String);
    procedure CDSModeloDetUNITARIO_TOTALGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CDSModeloDetIVA_TASASetText(Sender: TField;
      const Text: String);
    procedure CDSModeloDetDESCUENTOSetText(Sender: TField;
      const Text: String);
    procedure CDSModeloDetTOTALGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CDSModeloCabDSTOSetText(Sender: TField;
      const Text: String);
    procedure CDSModeloCabDESGLOZAIVAChange(Sender: TField);
    procedure CDSModeloCabCODIGOSetText(Sender: TField;
      const Text: String);
    procedure CDSModeloDetAfterPost(DataSet: TDataSet);
    procedure CDSModeloDetAfterInsert(DataSet: TDataSet);
    procedure CDSModeloDetBeforePost(DataSet: TDataSet);
    procedure CDSImpuestosNewRecord(DataSet: TDataSet);
    procedure CDSModeloCabNETOGRAV2GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Var_TasaIva:Real;
    MascaraDetalleUnitario :String;
    MascaraDetalleCantidad :String;
    MascaraDetalleTotal    :String;
    MascaraDetalleDescuento:String;
    MascaraIvaImporte      :String;
    MascaraIvaTasa         :String;
    MascaraCabecera        :String;
    Renglones              :Byte;
    procedure CalculaPrecioVta;
    PROCEDURE HabilitarLabel;
    PROCEDURE CalcularTotales;
    PROCEDURE SumarDetalle;
    PROCEDURE AplicarMascarasNumericas;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    FUNCTION AsignarArticulo(Dato: STRING): Boolean;
    FUNCTION AsignarCliente(Dato: STRING): Boolean;
    FUNCTION AsignarLdr(Cliente: STRING; Dato: integer): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarCondVenta(Cliente: STRING; Dato: Integer): Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION AsignarVendedor(Dato: String): Boolean;

  end;

var
  DatosModelo: TDatosModelo;

implementation

uses UFacModelo, DMBuscadoresForm,UDMain_FD;

{$R *.DFM}

procedure TDatosModelo.CalculaPrecioVta;
VAR Recargo: Variant;
Coef:Real;
ListaPrecio:Integer;
begin
  if CDSModeloDetCosto_Total.AsFloat=0 Then Exit;
  if CDSModeloDet.State=dsBrowse Then
    CDSModeloDet.Edit;
  QListaPrecioPorDefecto.CLose;
  QListaPrecioPorDefecto.Open;
  if Not(QListaPrecioPorDefecto.Fields[0].AsString='') Then
    ListaPrecio:=QListaPrecioPorDefecto.Fields[0].Value
  else
    ListaPrecio:=1;
  QListaPrecioPorDefecto.CLose;

  // ******* Aplico el Recargo de la Lista de Precios
  QTraerRecargoDeLista.Close;
  QTraerRecargoDeLista.ParamByName('Lista').Value   :=ListaPrecio;
  QTraerRecargoDeLista.ParamByName('Articulo').Value:=CDSModeloDetCodigoArticulo.Value;
  QTraerRecargoDeLista.OPen;
  IF NOT (QTraerRecargoDeLista.IsEmpty) THEN
    BEGIN
      Recargo:=QTraerRecargoDeListaRECARGO.AsFloat;
      IF (NOT (VarIsNull(Recargo))) AND (Recargo <> 0) THEN
        BEGIN
          QCoefPrecio.Close;
          QCoefPrecio.ParamByName('codigo').Value  :=CDSModeloCabCODIGO.Value;
          QCoefPrecio.ParamByName('id_lista').Value:=ListaPrecio;
          QCoefPrecio.Open;
          if QCoefPrecio.Fields[0].AsString='' Then
            coef:=1
          else
            coef:=QCoefPrecio.Fields[0].Value;
          QCoefPrecio.Close;

          CDSModeloDetUnitario_Gravado.AsFloat:= (CDSModeloDetCosto_Gravado.AsFloat * (1 + (Recargo * 0.01))) * Coef;
          CDSModeloDetUnitario_Exento.AsFloat := (CDSModeloDetCosto_Exento.AsFloat * (1 + (Recargo * 0.01))) * Coef;
          CDSModeloDetUnitario_Total.AsFloat  := (CDSModeloDetCosto_Total.AsFloat * (1 + (Recargo * 0.01))) * Coef;
        END
    else
      BEGIN
        CDSModeloDetUnitario_Gravado.AsFloat:= CDSModeloDetCosto_Gravado.AsFloat;
        CDSModeloDetUnitario_Exento.AsFloat := CDSModeloDetCosto_Exento.AsFloat;
        CDSModeloDetUnitario_Total.AsFloat  := CDSModeloDetCosto_Total.AsFloat;
      END;
    end
  else
    BEGIN
      CDSModeloDetUnitario_Gravado.AsFloat := CDSModeloDetCosto_Gravado.AsFloat;
      CDSModeloDetUnitario_Exento.AsFloat  := CDSModeloDetCosto_Exento.AsFloat;
      CDSModeloDetUnitario_Total.AsFloat   := CDSModeloDetCosto_Total.AsFloat;
    END;
  QTraerRecargoDeLista.Close;
//******** Aplico recargo por Deposito de Vta *******
  QDepositoStk.Close;
  QDepositoStk.ParamByName('Codigo_Deposito').Value:= CDSModeloDetDeposito.Value;
  QDepositoStk.ParamByName('Codigo').Value         := CDSModeloDetCodigoArticulo.Value;
  QDepositoStk.Open;
  IF NOT (QDepositoStk.IsEmpty) THEN
    BEGIN
      Recargo:=QDepositoStkRecargo.AsFloat;
      IF (NOT (VarIsNull(Recargo))) AND (Recargo <> 0) THEN
        BEGIN
          CDSModeloDetUnitario_Gravado.AsFloat:= CDSModeloDetUnitario_Gravado.AsFloat * (1 + (Recargo * 0.01));
          CDSModeloDetUnitario_Exento.AsFloat := CDSModeloDetUnitario_Exento.AsFloat * (1 + (Recargo * 0.01));
          CDSModeloDetUnitario_Total.AsFloat  := CDSModeloDetUnitario_Total.AsFloat * (1 + (Recargo * 0.01));
//          wwCDSVentaDetUnitario_Gravado.Value:= Moneda3D(' ',MascaraDetalleUnitario,(wwCDSVentaDetUnitario_Gravado.Value * (1 + (Recargo * 0.01))));
//          wwCDSVentaDetUnitario_Exento.Value := Moneda3D(' ',MascaraDetalleUnitario,(wwCDSVentaDetUnitario_Exento.Value * (1 + (Recargo * 0.01))));
//          wwCDSVentaDetUnitario_Total.Value  := Moneda3D(' ',MascaraDetalleUnitario,(wwCDSVentaDetUnitario_Total.Value * (1 + (Recargo * 0.01))));

        END
    END;
  QDepositoStk.Close;
// ******** Aplico recargo por Sucursal ************
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value:= CDSModeloCabSucursal.Value;
  CDSSucursal.Open;
  Recargo:=CDSSucursalRecargo.AsFloat;
  IF (NOT (VarIsNull(Recargo))) AND (Recargo <> 0) THEN
    BEGIN
      CDSModeloDetUnitario_Gravado.AsFloat := CDSModeloDetUnitario_Gravado.AsFloat * (1 + (Recargo * 0.01));
      CDSModeloDetUnitario_Exento.AsFloat  := CDSModeloDetUnitario_Exento.AsFloat * (1 + (Recargo * 0.01));
      CDSModeloDetUnitario_Total.AsFloat   := CDSModeloDetUnitario_Total.AsFloat * (1 + (Recargo * 0.01));
//      wwCDSVentaDetUnitario_Gravado.Value := Moneda3D(' ',MascaraDetalleUnitario,(wwCDSVentaDetUnitario_Gravado.Value * (1 + (Recargo * 0.01))));
//      wwCDSVentaDetUnitario_Exento.Value  := Moneda3D(' ',MascaraDetalleUnitario,(wwCDSVentaDetUnitario_Exento.Value * (1 + (Recargo * 0.01))));
//      wwCDSVentaDetUnitario_Total.Value   := Moneda3D(' ',MascaraDetalleUnitario,(wwCDSVentaDetUnitario_Total.Value * (1 + (Recargo * 0.01))));
    END;
  CDSSucursal.Close;
// ******* Aplico Precio Especial cliente
  QPrecioEspecial.CLose;
  QPrecioEspecial.ParamByName('cliente').AsString :=CDSModeloCabCODIGO.Value;
  QPrecioEspecial.ParamByName('articulo').AsString:=CDSModeloDetCodigoArticulo.Value;
  QPrecioEspecial.Open;
  if Not(QPrecioEspecial.IsEmpty) Then
    CDSModeloDetUnitario_TotalSetText(CDSModeloDetUnitario_Total,QPrecioEspecial.Fields[0].AsString);
  QPrecioEspecial.CLose;
// ********* Calculo el Margen ************
  if (CDSModeloDetCosto_Total.AsFloat>0) and (CDSModeloDetUnitario_Total.AsFloat>0) then
      CDSModeloDetMargen.AsFloat:= ((CDSModeloDetUnitario_Total.AsFloat-CDSModeloDetCosto_Total.AsFloat)/
                                    CDSModeloDetUnitario_Total.AsFloat)*100
  else
    CDSModeloDetMargen.AsFloat:= 100;
// **************************************************************
// ****** Aca Calculo el Importe del Iva ** Nueva calculo del Iva
  CDSModeloDetIVA_UNITARIO.AsFloat:=  CDSModeloDetUNITARIO_GRAVADO.AsFloat -
                                      RoundTo(CDSModeloDetUNITARIO_GRAVADO.AsFloat /
                                     ( 1+ CDSModeloDetIVA_TASA.AsFloat * 0.01),DMMain_FD.DecRedondeo);

  CDSModeloDetIVA_UNITARIO.AsFloat:=  CDSModeloDetUNITARIO_GRAVADO.AsFloat * CDSModeloDetIVA_TASA.AsFloat * 0.01;

//11 **************************************************************
// **************************************************************

end;



PROCEDURE TDatosModelo.HabilitarLabel;
BEGIN
  {Si la Factura no discrimina IVA}
  FormFacModelo.DBGrillaIva.Visible:=DatosModelo.CDSModeloCabDesglozaIva.Value = 'S';
END;

PROCEDURE TDatosModelo.CalcularTotales;
VAR
  Acumulador,Descuento,TotalOld,TotalNew,
   TotalGral,NetoTotal,Neto: Extended;
BEGIN
  CDSModeloCabTotal.Asfloat:= 0;
  Acumulador            := 0;
  Descuento             := CDSModeloCabDsto.AsFloat * 0.01;
  CDSModeloCabNETOGRAV2.AsFloat  := RoundTo(CDSModeloCabNetoGrav1.AsFloat * (1 - Descuento), -2);
  CDSModeloCabNETOEXEN2.AsFloat  := RoundTo(CDSModeloCabNetoExen1.AsFloat * (1 - Descuento), -2);

  CDSModeloCabDSTOIMPORTE.AsFloat := (CDSModeloCabNetoGrav1.AsFloat + CDSModeloCabNETOEXEN1.AsFloat) -
                                     (CDSModeloCabNetoGrav2.AsFloat + CDSModeloCabNETOEXEN2.AsFloat);

  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
  WHILE NOT (CDSimpuestos.Eof) DO
    BEGIN
      TotalOld := CDSImpuestosNETO.AsFloat+CDSImpuestosIMPORTE.AsFloat;
      TotalNew := RoundTo(TotalOld * (1 - Descuento),-2);
      CDSImpuestos.Edit;
      CDSImpuestosNETO.AsFloat    := 0;
      CDSImpuestosNETO.AsFloat    := TotalOld - CDSImpuestosIMPORTE.AsFloat;
      if Trunc(CDSModeloCabDSTO.AsFloat*100)<>0 then
        begin
          CDSImpuestosNETO.AsFloat    := TotalNew / (1+CDSImpuestosTASA.AsFloat*0.01);
          CDSImpuestosIMPORTE.AsFloat := TotalNew - CDSImpuestosNETO.AsFloat ;
        end;
      Acumulador                  := Acumulador + CDSImpuestosIMPORTE.AsFloat;
      CDSImpuestos.Next;
    END;
  CDSImpuestos.EnableControls;

  CDSModeloCabTotal.AsFloat := RoundTo(CDSModeloCabNetoGrav2.AsFloat +
                                    CDSModeloCabNetoExen2.AsFloat +
                                    Acumulador,-2);
  TotalGral := CDSModeloCabTotal.AsFloat;
  NetoTotal := CDSModeloCabNetoGrav2.AsFloat + CDSModeloCabNETOEXEN2.AsFloat;

  TRY
    if CDSModeloCabNetoGrav2.AsFloat>0 Then
//      Var_TasaIVA:=(((wwCDSVentaCabTotal.Value-wwCDSVentaCabPERCEPCION_IB_IMPORTE.Value )- wwCDSVentaCabNetoGrav2.Value) / wwCDSVentaCabNetoGrav2.Value)*100
      Var_TasaIVA:= RoundTo(((TotalGral/NetoTotal)-1) * 100,-2)
    else
      Var_TasaIva:=0;
  EXCEPT
    ON EZeroDivide DO
      Var_TasaIva:=0;
  END;
 // CDSVentaCabNetoGrav2.AsFloat  := CDSVentaCabNetoGrav1.AsFloat * ( 1 - CDSVentaCabDsto.AsFloat * 0.01);
 // CDSVentaCabNetoGrav1.AsFloat  := CDSVentaCabNetoGrav1.AsFloat;
  // Para que se refresca el OnGetTex de Descuento.... lo reasgino de nuevo
  CDSModeloCabDSTOIMPORTE.AsFloat := (CDSModeloCabNetoGrav1.AsFloat + CDSModeloCabNETOEXEN1.AsFloat) -
                                  (CDSModeloCabNetoGrav2.AsFloat + CDSModeloCabNETOEXEN2.AsFloat);
END;

PROCEDURE TDatosModelo.SumarDetalle;
VAR
  Dscto: Real;
BEGIN
  CDSModeloDet.DisableControls;
  CDSModeloDet.First;
  IF CDSModeloCab.State = dsBrowse THEN
    CDSModeloCab.Edit;
  CDSModeloCabNetoGrav1.ASFloat:=0;
  CDSModeloCabNetoExen1.ASFloat:=0;
  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
  WHILE NOT (CDSImpuestos.Eof) DO
    BEGIN
      CDSImpuestos.Edit;
      CDSImpuestosNeto.AsFloat:=0;
      CDSImpuestosIMPORTE.AsFloat:=0;
      CDSImpuestos.Next;
    END;
  WHILE (NOT CDSModeloDet.Eof) DO
    BEGIN
      Dscto := 1 - CDSModeloDetDescuento.AsFloat / 100;
      IF (CDSModeloDetTIPOIVA_TASA.AsFloat <> 0) AND (NOT (VarIsNull(CDSModeloDetTIPOIVA_TASA.Value))) AND (CDSModeloDetMODO_GRAVAMEN.Value <> 'E') THEN
        BEGIN
         IF CDSImpuestos.Locate('Codigo_Gravamen',CDSModeloDetTipoIva_Tasa.Value, []) THEN
            BEGIN
              CDSImpuestos.Edit;
              CDSImpuestosNeto.AsFloat    := CDSImpuestosNeto.AsFloat +CDSModeloDetTOTAL_GRAVADO.AsFloat ;
              CDSImpuestosTasa.AsFloat    := CDSModeloDetIVA_Tasa.AsFloat;
              CDSImpuestosImporte.AsFloat := CDSImpuestosIMPORTE.AsFloat + CDSModeloDetIVA_TOTAL.AsFloat;
              CDSImpuestos.Post;
            END
          ELSE
            BEGIN
              CDSImpuestos.Insert;
              CDSImpuestosCODIGO_GRAVAMEN.Value     := CDSModeloDetTIPOIVA_TASA.AsInteger;
              CDSIva.Close;
              CDSIva.Params.ParamByName('id').Value := CDSModeloDetTIPOIVA_TASA.AsInteger;
              CDSIva.Open;
              CDSImpuestosDETALLE.Value     := CDSIvaDESCRIPCION.Value;
              CDSImpuestosID_FCMODELOCAB.Value := CDSModeloDetID_CABMODELO.Value;
              CDSImpuestosNETO.AsFloat      := CDSImpuestosNeto.AsFloat + CDSModeloDetTOTAL_GRAVADO.AsFloat ;
              CDSImpuestosTASA.AsFloat      := CDSModeloDetIVA_TASA.AsFLoat;
              CDSImpuestosIMPORTE.AsFloat   := CDSImpuestosIMPORTE.AsFloat + CDSModeloDetIVA_TOTAL.AsFloat;
              CDSImpuestos.Post;
            END;

        {  IF (CDSModeloDetCALCULA_SOBRETASA.Value = 'S') and (CDSModeloDetDesglozaIVA.Value ='S') THEN
            BEGIN
              IF CDSImpuestos.Locate('Codigo_Gravamen', CDSModeloDetTIPOIVA_SOBRETASA.Value, []) THEN
                BEGIN
                  CDSImpuestos.Edit;
                  CDSImpuestosNeto.AsFloat   := CDSModeloDetUnitario_Gravado.AsFloat * Dscto * CDSModeloDetCantidad.AsFloat + CDSImpuestosNeto.AsFloat;
                  CDSImpuestosTasa.AsFloat   := CDSModeloDetIVA_Tasa.AsFloat;
                  CDSImpuestosImporte.AsFloat:= CDSImpuestosNeto.AsFloat * ( CDSImpuestosTasa.AsFloat /100);
                  CDSImpuestos.Post;
                END
              ELSE
                BEGIN
                  CDSImpuestos.Insert;
                  CDSImpuestosCodigo_Gravamen.Value     := CDSModeloDetTipoIva_SobreTasa.AsInteger;
                  CDSIva.Close;
                  CDSIva.Params.ParamByName('id').Value := CDSModeloDetTipoIva_SobreTasa.AsInteger;
                  CDSIva.Open;
                  CDSImpuestosDetalle.Value            := CDSIvaDescripcion.Value;
                  CDSImpuestosID_FCMODELOCAB.Value     := CDSModeloDetID_CABMODELO.Value;
                  CDSImpuestosNeto.AsFloat    := CDSModeloDetUNITARIO_GRAVADO.AsFloat * Dscto * CDSModeloDetCANTIDAD.AsFloat + CDSImpuestosNETO.AsFloat;
                  CDSImpuestosTasa.AsFloat    := CDSModeloDetIVA_TASA.AsFloat;
                  CDSImpuestosImporte.AsFloat := CDSImpuestosNeto.AsFloat * ( CDSImpuestosTASA.AsFloat / 100);
                  CDSImpuestos.Post;
                END;
            END;
         }
        END;
      CDSModeloCabNETOGRAV1.AsFloat := CDSModeloDetTOTAL_GRAVADO.AsFloat + CDSModeloCabNETOGRAV1.AsFloat;
      CDSModeloCabNETOEXEN1.AsFloat := CDSModeloDetTOTAL_EXENTO.AsFloat  + CDSModeloCabNetoExen1.AsFloat;

      CDSModeloDet.Next;
    END;
  CDSModeloDet.EnableControls;
  { aca voy a los calculos de los totoales de la factura }
END;

procedure TDatosModelo.AplicarMascarasNumericas;
VAR I:Byte;
begin
  MascaraDetalleUnitario:=DMMain_FD.MascaraDetalleUnitario;
  TFloatField(CDSModeloDetUnitario_Total).EditFormat    :=MascaraDetalleUnitario;
  TFloatField(CDSModeloDetUnitario_Total).DisplayFormat :=MascaraDetalleUnitario;

  MascaraDetalleCantidad:=DMMain_FD.MascaraDetalleCantidad;
  TFloatField(CDSModeloDetCantidad).EditFormat    :=MascaraDetalleCantidad;
  TFloatField(CDSModeloDetCantidad).DisplayFormat :=MascaraDetalleCantidad;

  MascaraDetalleDescuento:=DMMain_FD.MascaraDetalleDescuento;
  TFloatField(CDSModeloDetDescuento).EditFormat    :=MascaraDetalleDescuento;
  TFloatField(CDSModeloDetDescuento).DisplayFormat :=MascaraDetalleDescuento;


  MascaraDetalleTotal:=',0.00';//DMMain_FD.MascaraDetalleTotal;
  TFloatField(CDSModeloDetTotal).EditFormat        := MascaraDetalleTotal;
  TFloatField(CDSModeloDetTotal).DisplayFormat     := MascaraDetalleTotal;

  MascaraIvaTasa:=DMMain_FD.MascaraIvaTasa;
  TFloatField(CDSModeloDetIVA_TASA).EditFormat        := MascaraIvaTasa;
  TFloatField(CDSModeloDetIVA_TASA).DisplayFormat     := MascaraIvaTasa;
  TFloatField(CDSModeloDetIVA_SOBRETASA).EditFormat   := MascaraIvaTasa;
  TFloatField(CDSModeloDetIVA_SOBRETASA).DisplayFormat:= MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).EditFormat            := MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).DisplayFormat         := MascaraIvaTasa;

  MascaraIvaImporte:=DMMain_FD.MascaraIvaImporte;
  TFloatField(CDSImpuestosIMPORTE).EditFormat        := MascaraIvaImporte;
  TFloatField(CDSImpuestosIMPORTE).DisplayFormat     := MascaraIvaImporte;

  MascaraCabecera:=',0.00';///DMMain_FD.MascaraCabecera
  For i:=0 to CDSModeloCab.FieldCount-1 do
    begin
      if (CDSModeloCab.Fields[i].DataType=ftFloat) or
         (CDSModeloCab.Fields[i].DataType=ftFMTBcd) Then
       begin
         // TFloatField(wwCDSModeloDet.Fields[i]).EditMask:='###,##0.0';
          TFloatField(CDSModeloCab.Fields[i]).EditFormat   :=MascaraCabecera;
          TFloatField(CDSModeloCab.fields[i]).DisplayFormat:=MascaraCabecera;
       end;
    end;
end;

FUNCTION TDatosModelo.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSModeloCabSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSModeloCabMUESTRACOMPROBANTE.Value:=QComprobDENOMINACION.Value;
      CDSModeloCabLETRA.Value             :=QComprobLETRA.Value;
      CDSModeloCabTIPOCPBTE.Value         :=QComprobTIPO_COMPROB.Value;
      CDSModeloCabCLASECPBTE.Value        :=QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result:=False;
      CDSModeloCabMUESTRACOMPROBANTE.Value:= '';
      CDSModeloCabLETRA.Value             := '';
      CDSModeloCabCLASECPBTE.Value        := '';
      CDSModeloCabTIPOCPBTE.Value         := '';
    END;
END;

FUNCTION TDatosModelo.ASignarArticulo(Dato: STRING): Boolean;
VAR
  Recargo: Variant;
BEGIN
  IF DatosModelo.CDSModeloDet.State = dsBrowse THEN
    DatosModelo.CDSModeloDet.Edit;
  WITH DatosModelo DO
    BEGIN
      CDSStock.Close;
      CDSStock.Params.ParamByName('Codigo').Value:=Dato;
      CDSStock.Open;
      IF NOT (CDSStock.IsEmpty) THEN
        BEGIN
          //vacio todo los importes por si hay un cambio de codigo y no queden cargados los valores
          CDSModeloDetCANTIDAD.AsFloat         := 0;
          CDSModeloDetUNITARIO_TOTAL.AsFloat   := 0;
          CDSModeloDetUNITARIO_GRAVADO.AsFloat := 0;
          CDSModeloDetUNITARIO_EXENTO.AsFloat  := 0;
          CDSModeloDetTOTAL.AsFloat            := 0;
          CDSModeloDetDETALLE.AsString         := CDSStockDETALLE_STK.AsString;
          CDSModeloDetUNIDAD.Value             := CDSStockUNIDAD.Value;
          CDSModeloDetCOSTO_GRAVADO.AsFloat    := CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
          CDSModeloDetCOSTO_EXENTO.AsFloat     := CDSStockFIJACION_PRECIO_EXENTO.AsFloat;
          CDSModeloDetCOSTO_TOTAL.AsFloat      := CDSStockFIJACION_PRECIO_TOTAL.AsFloat;
          CDSModeloDetAFECTA_STOCK.Value       := CDSStockCONTROLASTOCK.Value;
          CDSModeloDetMODO_GRAVAMEN.Value      := CDSStockMODO_GRAVAMEN.Value;
          CDSModeloDetTIPOIVA_TASA.Value       := CDSStockTASA_IVA.Value;
          CDSModeloDetTIPOIVA_SOBRETASA.Value  := CDSStockSOBRETASA_IVA.Value;
          CDSModeloDetGRAVADO_IB.Value         := CDSStockGRAVADO_IB.Value;
          //Asigno el deposito que tengo en el encabezado...
          CDSModeloDetDEPOSITO.Value           := CDSModeloCabDeposito.Value;
          //segun el tipo de inscripcion verifico si descrimina o no iva y si cobra Sobre tasa
          CDSModeloDetDESGLOZAIVA.Value        := CDSModeloCabDesglozaIva.Value;
          CDSModeloDetCALCULA_SOBRETASA.Value  := CDSModeloCabCalcula_SobreTasa.Value;
          // traigo los porcentajes de Iva
          CDSIva.Close;
          CDSIva.Params.ParamByName('id').Value:= CDSModeloDetTIPOIVA_TASA.Value;
          CDSIva.Open;
          IF NOT (CDSIva.IsEmpty) THEN
            CDSModeloDetIVA_Tasa.Value:= CDSIvaTasa.AsFloat;
          CDSIva.Close;
          CDSIva.Params.ParamByName('id').Value:= CDSModeloDetTipoIva_SobreTasa.Value;
          CDSIva.Open;
          IF NOT (CDSIva.IsEmpty) THEN
            CDSModeloDetIVA_SOBRETASA.Value := CDSIvaTasa.AsFloat;
          //Me fijo la moenda del Item
          CDSModeloDetID_MONEDA.Value:=CDSStockMONEDA.Value;

          QMonedas.Close;
          QMonedas.ParamByName('id').Value := CDSStockMONEDA.Value;
          QMonedas.Open;
          if QMonedasCOTIZACION.AsString<>'' then
            CDSModeloDetCOTIZACION.AsFloat := QMonedasCOTIZACION.AsFloat
          else
            CDSModeloDetCOTIZACION.AsFloat:=1;
          QMonedas.Close;

          CDSModeloDetCosto_Gravado.AsFloat := CDSModeloDetCosto_Gravado.AsFloat * CDSModeloDetCOTIZACION.AsFloat;
          CDSModeloDetCosto_Exento.AsFloat  := CDSModeloDetCosto_Exento.AsFloat * CDSModeloDetCOTIZACION.AsFloat;
          CDSModeloDetCosto_Total.AsFloat   := CDSModeloDetCosto_Total.AsFloat * CDSModeloDetCOTIZACION.AsFloat;

          CalculaPrecioVta;

          // Aplico Descuento Por condicion de vta cliente

          Result:=True;
        END
      ELSE
        Result:=False;
    END;
END;

FUNCTION TDatosModelo.AsignarCliente(Dato: STRING): Boolean;
BEGIN
  WITH FormFacModelo DO
    BEGIN
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value:=Dato;
      CDSClientes.Open;
      IF NOT (CDSClientes.Eof) THEN
        BEGIN
          CDSModeloCabNombre.AsString     := CDSClientesNombre.AsString;
          CDSModeloCabRazonSocial.AsString:= CDSClientesRazon_Social.ASString;
          CDSModeloCabCuit.AsString       := CDSClientesNro_de_Cuit.AsString;
          CDSModeloCabDireccion.AsString  := CDSClientesDireccion_Comercial.AsString;
          CDSModeloCabTipoIVA.AsInteger   := CDSClientesCondicion_Iva.Value;
          CDSModeloCabCPostal.AsString    := CDSClientesCPostal.AsString;
          CDSModeloCabLocalidad.AsString  := CDSClientesLocalidad.AsString;
          CDSModeloCabZona.AsInteger      := CDSClientesZona.AsInteger;
         // IF wwCDSClientesSUCURSAL.Value <> wwCDSModeloCabSucursal.Value THEN
         //   wwCDSModeloCabSucursalSetText(wwCDSModeloCabSucursal,wwCDSClientesSucursal.AsString);
          CDSModeloCabLdr.Clear;
          CDSInscripcion.Close;
          CDSInscripcion.Params.ParamByName('Codigo').Value:= CDSModeloCabTipoIva.Value;
          CDSInscripcion.Open;
          IF NOT (CDSInscripcion.Eof) THEN
            BEGIN
              CDSModeloCabCALCULA_SOBRETASA.Value:= CDSInscripcionCOBRASOBRETASA.Value;
              CDSModeloCabMUESTRAIVA.Value       := CDSInscripcionDETALLE.Value;
              CDSModeloCabDESGLOZAIVA.Value      := CDSInscripcionDISCRIMINAIVA.Value;
            END;
          //asigno el comprobante segun condicoin de Inscripcion
          // si el cliente no tiene asignado un comprobante traigo el que le
          // corresponde por el tipo de Iva
           if (CDSClientesSUCURSAL.Value=CDSModeloCabSUCURSAL.Value) and
              (Not(VarIsNull(CDSClientesID_FACTURAPORDEFECTO.Value))) and
              (CDSClientesID_FACTURAPORDEFECTO.Value<>0) Then
                 CDSModeloCabID_TIPOCOMPROBANTESetText(CDSModeloCabID_TIPOCOMPROBANTE,CDSClientesID_FACTURAPORDEFECTO.AsString)
            else
              begin
//                DMMain_FD.CDSCompPorTipo.Close;
//                DMMain_FD.CDSCompPorTipo.Params.ParamByName('desglozaIva').Value := CDSModeloCabDESGLOZAIVA.Value;
//                DMMain_FD.CDSCompPorTipo.Params.ParamByName('sucursal').Value    := SucursalPorDefecto;
//                DMMain_FD.CDSCompPorTipo.Params.ParamByName('compraventa').Value := 'V';
//                DMMain_FD.CDSCompPorTipo.Params.ParamByName('tipo').Value        := 'FC';
//                DMMain_FD.CDSCompPorTipo.Open;
//                DMMain_FD.CDSCompPorTipo.First;
//                if DMMain_FD.CDSCompPorTipo.Fields[0].AsString<>'' Then
//                  CDSModeloCabID_TIPOCOMPROBANTESetText(CDSModeloCabID_TIPOCOMPROBANTE,DMMain_FD.CDSCompPorTipo.Fields[0].AsString);

                if DMMain_FD.CpbtePorTipo('FC','V',SucursalPorDefecto,CDSModeloCabDESGLOZAIVA.Value)<>'' then
                  CDSModeloCabID_TIPOCOMPROBANTESetText(CDSModeloCabID_TIPOCOMPROBANTE,DMMain_FD.CpbtePorTipo('FC','V',SucursalPorDefecto,CDSModeloCabDESGLOZAIVA.Value));

              end;
          //Traigo el Primer LDR
          QPrimerLdr.CLose;
          QPrimerLdr.ParamByName('codigo').AsString:=Dato;
          QPrimerLdr.Open;
          if Not(QPrimerLdr.IsEmpty) Then
            if QPrimerLdr.Fields[0].AsString<>'' Then
              CDSModeloCabLDRSetText(CDSModeloCabLDR,QPrimerLdr.Fields[0].AsString)
            else
              begin
                ShowMessage('No tiene Ldr cargado....');
                CDSModeloCabLDR.Clear;
                CDSModeloCabMUESTRALDR.Clear;
              end;
          QPrimerLdr.CLose;
          //Traigo La primera condicion de vta
          QPrimerConVta.CLose;
          QPrimerConVta.ParamByName('codigo').AsString:=Dato;
          QPrimerConVta.Open;
          if Not(QPrimerConVta.IsEmpty) Then
            if QPrimerConVta.Fields[0].AsString<>'' Then
              CDSModeloCabCONDICIONVTASetText(CDSModeloCabCONDICIONVTA,QPrimerConVta.Fields[0].AsString)
            else
              begin
                ShowMessage('No tiene Condiciones de Vta. cargadas....');
                CDSModeloCabCONDICIONVTA.Clear;
                CDSModeloCabMUESTRACONDVENTA.Clear;
              end;
          QPrimerConVta.CLose;
          if CDSClientesVENDEDOR.AsString<>'' Then
            CDSModeloCabVENDEDORSetText(CDSModeloCabVENDEDOR,CDSClientesVENDEDOR.AsString)
          else
            CDSModeloCabVENDEDORSetText(CDSModeloCabVENDEDOR,DMMain_FD.EmpleadoPorDefecto);
//          RxCDeposito.SetFocus;
          result:=True;
        END
      ELSE
        Result:=False;
    END;
END;


function TDatosModelo.AsignarLdr(Cliente:String;Dato:Integer):Boolean;
begin
  CDSLdr.Close;
  CDSLdr.Params.ParamByName('Codigo').Value:=Cliente;
  CDSLdr.Params.ParamByName('Ldr').Value:=Dato;
  CDSLdr.Open;
  IF NOT (CDSLdr.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSModeloCabMUESTRALDR.Value:=CDSLdrNOMBRE.Value;
    END
  ELSE
    BEGIN
      CDSModeloCabMUESTRALDR.Value:= '';
      Result:=False;
    END;
  CDSLdr.Close;
end;

FUNCTION TDatosModelo.AsignarCondVenta(Cliente: STRING; Dato: Integer): Boolean;
BEGIN
  CDSCondVenta.Close;
  CDSCondVenta.Params.ParamByName('Codigo').Value     := Cliente;
  CDSCondVenta.Params.ParamByName('CodigoPago').Value := Dato;
  CDSCondVenta.Open;
  IF NOT (CDSCondVenta.Eof) THEN
    BEGIN
      Result:=True;
      CDSModeloCabMuestraCondVenta.Value:= CDSCondVentaDetalle.Value;
      CDSModeloCabDSTO.AsFloat          := CDSCondVentaDescuento.AsFloat;
    END
  ELSE
    Result:=False;
  CDSCondVenta.Close;
END;

FUNCTION TDatosModelo.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value:=dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.IsEmpty) THEN
    BEGIN
      CDSModeloCabID_TIPOCOMPROBANTE.Clear;
      CDSModeloCabMUESTRACOMPROBANTE.Clear;
      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      CDSBuscaComprob.Open;
      if CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSModeloCabID_TIPOCOMPROBANTESetText(CDSModeloCabID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          FormFacModelo.RxCCodigo.SetFocus;
        end;
      Result:=True;
      CDSModeloCabMuestraSucursal.Value := CDSSucursalDetalle.Value;
    END
  ELSE
    Result:=False;
  CDSSucursal.Close;
END;

FUNCTION TDatosModelo.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value:=Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.Eof) THEN
    BEGIN
      Result:=True;
      CDSModeloCabMuestraDeposito.Value:= CDSDepositoNOMBRE.Value;
    END
  ELSE
    Result:=False;
  CDSDeposito.Close;
END;

FUNCTION TDatosModelo.AsignarVendedor(Dato: String): Boolean;
BEGIN
  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('Codigo').Value:=Dato;
  CDSPersonal.Open;
  IF NOT (CDSPersonal.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSModeloCabMUESTRAVENDEDOR.Value := CDSPersonalNOMBRE.Value;
    END
  ELSE
    begin
      Result:=False;
      CDSModeloCabMUESTRAVENDEDOR.Clear;
    end;
  CDSPersonal.Close;
END;


procedure TDatosModelo.CDSModeloCabNewRecord(DataSet: TDataSet);
begin
  CDSModeloCabID_FC.Value:=IBGFc_Cab.IncrementFD(1);
  CDSModeloCabNombre.AsString      := '';
  CDSModeloCabRazonSocial.AsString := '';
  CDSModeloCabCuit.AsString        := '';
  CDSModeloCabDireccion.AsString   := '';
  CDSModeloCabTipoIVA.AsString     := '';
  CDSModeloCabCPostal.AsString     := '';
  CDSModeloCabLetra.AsString       := 'A';
  CDSModeloCabDsto.ASFloat         := 0;
  CDSModeloCabDSTOIMPORTE.AsFloat  := 0;
  CDSModeloCabNetoExen1.AsFloat    := 0;
  CDSModeloCabNetoExen2.AsFloat    := 0;
  CDSModeloCabDeposito.Clear;
  CDSModeloCabTipoCpbte.AsString   := '';
  CDSModeloCabSucursalSetText(CDSModeloCabSucursal,IntToStr(FormFacModelo.SucursalPorDefecto));
  CDSModeloCabDEPOSITOSetText(CDSModeloCabDEPOSITO,IntToStr(FormFacModelo.DepositoPorDefecto));

end;

procedure TDatosModelo.CDSModeloDetNewRecord(DataSet: TDataSet);
begin
  IF (CDSModeloDet.RecordCount > Renglones) THEN
    CDSModeloDet.Cancel
  ELSE
    BEGIN
      CDSModeloDetID.Value               := IBGFc_Det.IncrementFD(1);
      CDSModeloDetRENGLON.AsInteger      := CDSModeloDet.RecordCount + 1;
      CDSModeloDetDETALLE.Value          := '';
      CDSModeloDetUNIDAD.Value           := '';
      CDSModeloDetCANTIDAD.AsFloat       := 0;
      CDSModeloDetCOSTO_EXENTO.AsFloat   := 0;
      CDSModeloDetCOSTO_GRAVADO.AsFloat  := 0;
      CDSModeloDetCOSTO_TOTAL.AsFloat    := 0;
      CDSModeloDetUNITARIO_EXENTO.AsFloat:= 0;
      CDSModeloDetUNITARIO_GRAVADO.AsFloat := 0;
      CDSModeloDetUNITARIO_TOTAL.AsFloat := 0;
      CDSModeloDetTOTAL.AsFloat          := 0;
      CDSModeloDetDESCUENTO.AsFloat      := 0;
      CDSModeloDetIVA_TASA.AsFloat       := 0;
      CDSModeloDetIva_SobreTasa.AsFloat  := 0;
      CDSModeloDetDESGLOZAIVA.Value      := CDSModeloCabDESGLOZAIVA.Value;
      CDSModeloDetMODO_GRAVAMEN.Value    := '';
      CDSModeloDetTIPOIVA_TASA.AsFloat   := 0;
      CDSModeloDetID_CABMODELO.Value     := CDSModeloCabId_Fc.Value;
      CDSModeloDetTipoCpbte.AsString     := CDSModeloCabTipoCpbte.AsString;
      CDSModeloDetCLASECPBTE.AsString    := CDSModeloCabCLASECPBTE.AsString;
    END;

end;

procedure TDatosModelo.CDSModeloCabLDRSetText(Sender: TField;
  const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarLdr(CDSModeloCabCodigo.Value, Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo L.D.R no Válido');
          FormFacModelo.RxCLdr.SetFocus;
        END;
    END;

end;

procedure TDatosModelo.CDSModeloCabDEPOSITOSetText(Sender: TField;
  const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo depósito no Válido');
          FormFacModelo.RxCDeposito.SetFocus;
        END;
    END;

end;

procedure TDatosModelo.CDSModeloCabNETOGRAV1GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR AUx:Real;
begin
  Aux:=Sender.AsFloat;
  if CDSModeloCabDESGLOZAIVA.Value='N' Then
    Aux:=Aux * (1+Var_TasaIva * 0.01);
  Text:=FormatFloat(MascaraCabecera,Aux);
end;

procedure TDatosModelo.CDSModeloCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  if (Text<>'') and (text[1]<>#13) Then
  begin
    Sender.AsString:=Text;
    IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
      BEGIN
        Sender.AsString:= '';
        ShowMessage('Dato no Valido');
        FormFacModelo.RxCTipoCpbte.SetFocus;
      END;
    IF CDSModeloCab.State = dsInsert THEN
      UltimoComprobante;
  end;

end;

procedure TDatosModelo.CDSModeloCabCONDICIONVTASetText(Sender: TField;
  const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF (NOT (AsignarCondVenta(CDSModeloCabCodigo.Value, Sender.AsInteger))) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Cond.Vta no Válido');
          FormFacModelo.RxCConVta.SetFocus;
        END;
    END;

end;

procedure TDatosModelo.CDSModeloCabVENDEDORSetText(Sender: TField;
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

procedure TDatosModelo.CDSModeloCabSUCURSALSetText(Sender: TField;
  const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Sucursal No Valido');
          FormFacModelo.RxCSucursal.SetFocus;
        END
      ELSE IF CDSModeloCab.State = dsInsert THEN
        UltimoComprobante;
    END;

end;

procedure TDatosModelo.CDSModeloDetCODIGOARTICULOSetText(Sender: TField;
  const Text: String);
VAR
  S: STRING;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if CDSModeloDet.State=dsBrowse Then
        CDSModeloDet.edit;
      S:=Text;
      if DMMain_FD.JustificaCodigo='D' Then
        S:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S)) + S
      else
        if DMMain_FD.JustificaCodigo='I' Then
          S:=S+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S));
      Sender.AsString:=S; ;

      IF AsignarArticulo(s) = False THEN
        BEGIN
          ShowMessage('Codigo de Artículo Inválido...!!!');
          Sender.AsString:= '';
          SysUtils.Abort;
      //wwCDSVentaDet.Cancel;
       END;
    end;
end;

procedure TDatosModelo.CDSModeloDetUNITARIO_TOTALSetText(Sender: TField; const Text: String);
VAR Num, P_Exento, P_Gravado,Pt_Exento,
    Pt_Gravado,Pt_Final, Descuento,Cantidad,TasaIva,Aux3,ImporteIva:  Extended;
  TextAux,
  Decimales:String;
  Modo: TFPURoundingMode;
BEGIN
  if ((Text<>'') and (CDSModeloDetCODIGOARTICULO.AsString<>'')) Then
    begin
      TextAux:=Text;
      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);
      if CDSModeloDet.State=dsBrowse Then CDSModeloDet.Edit;

      Num:=StrToFloat(TextAux);

      IF CDSModeloDetMODO_GRAVAMEN.Value <> '' THEN
        CASE CDSModeloDetMODO_GRAVAMEN.Value[1] OF
          'E','N': CDSModeloDetUNITARIO_EXENTO.AsFloat := Num;
          'G': CDSModeloDetUNITARIO_GRAVADO.AsFloat:= Num;
          'M','I','Y':CDSModeloDetUNITARIO_GRAVADO.AsFloat:= Num-CDSModeloDetUNITARIO_EXENTO.AsFloat
        END;
      Cantidad  := CDSModeloDetCANTIDAD.AsFloat;
      Descuento := 1 - CDSModeloDetDESCUENTO.AsFloat * 0.01;
      TasaIva   := 1 + CDSModeloDetIVA_TASA.AsFloat * 0.01;

      P_Exento  := CDSModeloDetUNITARIO_EXENTO.AsFloat ;
      P_Gravado := CDSModeloDetUNITARIO_GRAVADO.AsFloat;

      // calculo el total de la linea
      Pt_Gravado :=  P_Gravado * Cantidad * Descuento;
      Pt_Exento  :=  P_Exento * Cantidad * Descuento;
      // calculo de IVA
      ImporteIva :=  (Pt_gravado * TasaIva)- Pt_Gravado;

      CDSModeloDetIVA_UNITARIO.AsFloat := (P_Gravado * TasaIva) - P_Gravado;

      if ((CDSModeloCABDESGLOZAIVA.Value='N') ) and (CDSModeloDetMODO_GRAVAMEN.AsString[1] in ['G','M']) Then
        begin
          P_Gravado                        := CDSModeloDetUNITARIO_GRAVADO.AsFloat / TasaIva;
          CDSModeloDetIVA_UNITARIO.AsFloat := CDSModeloDetUNITARIO_GRAVADO.AsFloat - P_Gravado;
          // *** Calculo el total de la linea
          Pt_Final   :=  (P_Gravado + CDSModeloDetIVA_UNITARIO.ASFloat) * Cantidad * Descuento;
          Pt_Final   :=  RoundTo(Pt_Final,-3);
          Pt_Final   :=  RoundTo(Pt_Final,-2);
          Pt_Gravado :=  Pt_Final  / TasaIva;
          Pt_Gravado :=  RoundTo(Pt_Gravado,-3);
          Pt_Gravado :=  RoundTo(Pt_Gravado,-2);

          Pt_Exento  :=  P_Exento * Cantidad * Descuento;
          // Calculo de IVA
          ImporteIva :=  Pt_Final - Pt_gravado;
        end;

      CDSModeloDetUNITARIO_GRAVADO.AsFloat:=P_Gravado;

      CDSModeloDetTOTAL_GRAVADO.AsFloat   := RoundTo(Pt_Gravado,-3);

      CDSModeloDetTOTAL_EXENTO.AsFloat    := RoundTo(Pt_Exento,-3);

      ImporteIva                         := RoundTo(ImporteIva,-3);
      CDSModeloDetIVA_TOTAL.AsFloat       := RoundTo(ImporteIva,-3);

      // esto pisa las 2 lineas anteriores no las borro para probar

      if ((CDSModeloCabDESGLOZAIVA.Value='N') ) and (CDSModeloDetMODO_GRAVAMEN.AsString[1] in ['G','M']) Then
        CDSModeloDetIVA_TOTAL.AsFloat     := (Pt_Final)-Pt_Gravado;


      CDSModeloDetTOTAL.AsFloat         := RoundTo((Pt_Gravado+Pt_Exento),-2);

      // **************** Calculo el Margen ******************
      if (CDSModeloDetCOSTO_TOTAL.AsFloat>0) and (CDSModeloDetUNITARIO_TOTAL.AsFloat>0) then
          CDSModeloDetMARGEN.AsFloat := RoundTo(((CDSModeloDetUNITARIO_TOTAL.AsFloat - CDSModeloDetCosto_Total.AsFloat)/
                                                 CDSModeloDetUNITARIO_TOTAL.AsFloat)*100,-2)
      else
        CDSModeloDetMARGEN.AsFloat:= 100;
      // *****************************************************

      Aux3:= (P_Gravado+P_Exento);

      Sender.AsString := FloatToStr(Aux3);

      if (CDSModeloDetMODO_GRAVAMEN.Value[1] in['E','N']) and (CDSModeloDetUNITARIO_GRAVADO.AsFloat>0) Then
        begin
          Sender.AsString:='0';
          CDSModeloDetUNITARIO_GRAVADO.AsFloat:=0;
          CDSModeloDetUNITARIO_EXENTO.AsFloat :=0;
          CDSModeloDetUNITARIO_TOTAL.AsFloat  :=0;
          CDSModeloDetTOTAL.AsFloat           :=0;
          raise Exception.Create('El artículo Figura Como Exento y tiene Costo Gravado...');
        end;
      if (CDSModeloDetMODO_GRAVAMEN.Value[1]='G') and (CDSModeloDetUNITARIO_EXENTO.AsFloat>0) Then
        begin
          Sender.AsString:='0';
          CDSModeloDetUNITARIO_GRAVADO.AsFloat:=0;
          CDSModeloDetUNITARIO_EXENTO.AsFloat :=0;
          CDSModeloDetUNITARIO_TOTAL.AsFloat  :=0;
          CDSModeloDetTOTAL.AsFloat           :=0;
          raise Exception.Create('El artículo Figura Como Gravado y tiene Costo exento...');
        end;
   end;
  Decimales:=(Copy(MascaraDetalleUnitario,pos('.',MascaraDetalleUnitario)+1,length(MascaraDetalleUnitario)));

  if Length(Decimales)=2 then
    begin
      //Primero con 3 decimales y despues 2
      CDSModeloDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSModeloDetUNITARIO_GRAVADO.AsFloat,-3);
      CDSModeloDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSModeloDetUNITARIO_EXENTO.AsFloat,-3);
      CDSModeloDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSModeloDetUNITARIO_TOTAL.AsFloat,-3);
      Modo:=GetRoundMode;
      SetRoundMode(rmUp);
      CDSModeloDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSModeloDetIVA_UNITARIO.AsFloat,-3);
      SetRoundMode(Modo);

      CDSModeloDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSModeloDetUNITARIO_GRAVADO.AsFloat,-2);
      CDSModeloDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSModeloDetUNITARIO_EXENTO.AsFloat,-2);
      CDSModeloDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSModeloDetUNITARIO_TOTAL.AsFloat,-2);
      CDSModeloDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSModeloDetIVA_UNITARIO.AsFloat,-2);
    end;
  if Length(Decimales)=3 then
    begin
      CDSModeloDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSModeloDetUNITARIO_GRAVADO.AsFloat,-4);
      CDSModeloDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSModeloDetUNITARIO_EXENTO.AsFloat,-4);
      CDSModeloDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSModeloDetUNITARIO_TOTAL.AsFloat,-4);
      Modo:=GetRoundMode;
      SetRoundMode(rmUp);
      CDSModeloDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSModeloDetIVA_UNITARIO.AsFloat,-4);
      SetRoundMode(Modo);

      CDSModeloDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSModeloDetUNITARIO_GRAVADO.AsFloat,-3);
      CDSModeloDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSModeloDetUNITARIO_EXENTO.AsFloat,-3);
      CDSModeloDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSModeloDetUNITARIO_TOTAL.AsFloat,-3);
      CDSModeloDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSModeloDetIVA_UNITARIO.AsFloat,-3);
    end;

END;


procedure TDatosModelo.CDSModeloDetCANTIDADSetText(Sender: TField;
  const Text: String);
VAR
  Aux1, Aux2, Aux3: Extended;
  TextAux:String;
begin
  if Text<>'' Then
    begin
      TextAux:=Text;
      if (TextAux[1]='-') Then Delete(TextAux,1,1);

      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);
      Sender.AsString := TextAux;

      Aux1:= CDSModeloDetUNITARIO_EXENTO.AsFloat;
      Aux2:= CDSModeloDetUNITARIO_GRAVADO.AsFloat;

      if (CDSModeloDetModo_Gravamen.Value<>'') Then
        IF ((CDSModeloCabDesglozaIva.Value = 'N') or (FormFacModelo.DiscriminaIva='N')) and
          (CDSModeloDetModo_Gravamen.Value[1] in ['G','E']) THEN
              Aux2:= Aux2 + CDSModeloDetIVA_UNITARIO.AsFloat;

       Aux3:= Aux1 + Aux2;

      CDSModeloDetUnitario_TotalSetText(CDSModeloDetUNITARIO_TOTAL,FloatToStr(Aux3));
    end;
END;

procedure TDatosModelo.CDSModeloDetUNITARIO_TOTALGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR
  Aux1: Extended;
BEGIN
  Aux1:=CDSModeloDetUNITARIO_TOTAL.AsFloat;
  if (CDSModeloDetMODO_GRAVAMEN.Value<>'') and (CDSModeloDetMODO_GRAVAMEN.Value[1] in ['G','M']) Then
    if (CDSModeloCabDESGLOZAIVA.Value='S') and (FormFacModelo.DiscriminaIva='N') then
      Aux1:= CDSModeloDetUNITARIO_TOTAL.AsFloat + CDSModeloDetIVA_UNITARIO.AsFloat
    else
      if (CDSModeloCabDESGLOZAIVA.Value='N')then
        Aux1:= CDSModeloDetUNITARIO_TOTAL.AsFloat + CDSModeloDetIVA_UNITARIO.AsFloat;

  Text:= FormatFloat(MascaraDetalleUnitario,Aux1);
END;

procedure TDatosModelo.CDSModeloDetIVA_TASASetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=FloatToStr(Moneda3D(' ',MascaraCabecera,StrToFloat(Text)));
  CDSModeloDetIVA_SOBRETASA.AsFloat := Sender.AsFloat*0.5;
end;

procedure TDatosModelo.CDSModeloDetDESCUENTOSetText(Sender: TField;
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
      PrecioUnitario  := CDSModeloDetUNITARIO_TOTAL.AsFloat;
      if (CDSModeloDetModo_Gravamen.Value<>'') and (CDSModeloDetModo_Gravamen.Value[1] in ['G','M']) then
        if ((CDSModeloCabDesglozaIva.Value = 'S') and (FormFacModelo.DiscriminaIva='N')) Then
          PrecioUnitario := CDSModeloDetUNITARIO_GRAVADO.AsFloat + CDSModeloDetIVA_UNITARIO.AsFloat
        else
          if (CDSModeloCabDesglozaIva.Value = 'N')  Then
            PrecioUnitario := CDSModeloDetUNITARIO_GRAVADO.AsFloat + CDSModeloDetIVA_UNITARIO.AsFloat;

      CDSModeloDetUnitario_TotalSetText(CDSModeloDetUNITARIO_TOTAL,FloatToStr(PrecioUnitario));
    end;

end;

procedure TDatosModelo.CDSModeloDetTOTALGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR
  Aux1: Extended;
BEGIN
  Aux1:=CDSModeloDetTOTAL.AsFloat;
  if (CDSModeloDetMODO_GRAVAMEN.Value<>'') and (CDSModeloDetMODO_GRAVAMEN.Value[1] in ['G','M']) Then
    if (CDSModeloCabDESGLOZAIVA.Value='S') and (FormFacModelo.DiscriminaIva='N') then
      Aux1:= CDSModeloDetTOTAL.AsFloat + CDSModeloDetIVA_TOTAL.AsFloat
    else
      if (CDSModeloCabDESGLOZAIVA.Value='N')then
        Aux1:= CDSModeloDetTOTAL.AsFloat + CDSModeloDetIVA_TOTAL.AsFloat;
  Text := FormatFloat(',0.00', Aux1);
END;


procedure TDatosModelo.CDSModeloCabDSTOSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=FloatToStr(Moneda3D(' ',MascaraCabecera,StrToFloat(Text)));
  CalcularTotales;
end;

procedure TDatosModelo.CDSModeloCabDESGLOZAIVAChange(Sender: TField);
begin
  FormFacModelo.DBGrillaIva.Visible := CDSModeloCabDESGLOZAIVA.Value = 'S';
end;

procedure TDatosModelo.CDSModeloCabCODIGOSetText(Sender: TField;
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
          FormFacModelo.RxCCodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      FormFacModelo.RxCCodigo.Text:=Aux;
    end;
END;

procedure TDatosModelo.CDSModeloDetAfterPost(DataSet: TDataSet);
begin
  SumarDetalle;
  CalcularTotales;
  // Borrar Los renglones con valor 0 (cero)....
  CDSImpuestos.EnableControls;
  CDSImpuestos.First;
  WHILE NOT (CDSimpuestos.Eof) DO
    BEGIN
      IF (CDSImpuestosIMPORTE.AsFloat <= 0) OR ( CDSImpuestosTASA.AsFloat <= 0) THEN
        begin
          CDSImpuestos.Delete;
          CDSImpuestos.First;
        end
      else
        CDSImpuestos.Next;
    END;

end;

procedure TDatosModelo.CDSModeloDetAfterInsert(DataSet: TDataSet);
begin
  IF (CDSModeloDet.RecordCount > Renglones) THEN
    BEGIN
      ShowMessage('No se pueden Ingresar más Items' + #13 +
        'Evento - (AfterInsert)');
      SysUtils.Abort;
      CDSModeloDet.Cancel;
    END
  ELSE IF (CDSModeloCabCodigo.AsString = '') THEN
    BEGIN
      SysUtils.Abort;
      CDSModeloDet.Cancel;
    END;
end;

procedure TDatosModelo.CDSModeloDetBeforePost(DataSet: TDataSet);
begin
  IF ((CDSModeloDetCODIGOARTICULO.AsString = '') OR
    (CDSModeloDet.RecordCount > Renglones)) AND
    (CDSModeloDet.State IN [dsInsert, dsEdit])
    THEN
    BEGIN
      CDSModeloDet.Cancel;
      SysUtils.Abort;
    END;

end;

procedure TDatosModelo.CDSImpuestosNewRecord(DataSet: TDataSet);
begin
  CDSImpuestosId_Impuesto.Value   := IBGFc_Impuestos.IncrementFD(1);
  CDSImpuestosID_FCMODELOCAB.Value:= CDSModeloCabID_FC.Value;
end;

procedure TDatosModelo.CDSModeloCabNETOGRAV2GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR AUx:Real;
begin
  Aux:=Sender.AsFloat;
  if CDSModeloCabDESGLOZAIVA.Value='N' Then
    Aux:=Aux * (1+Var_TasaIva * 0.01);
  Text:=FormatFloat(MascaraCabecera,Aux);

end;

procedure TDatosModelo.DataModuleDestroy(Sender: TObject);
begin
  DatosModelo:=nil;
end;

end.