unit DMNPedidoCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, Provider,   Librerias,
  IBGenerator, Variants, FMTBcd, SqlExpr,Math,System.StrUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TDatosNPedidoClientes = class(TDataModule)
    DSPNotaPedidoCab: TDataSetProvider;
    DSPNotaPedidoDet: TDataSetProvider;
    CDSNotaPedidoCab: TClientDataSet;
    CDSNotaPedidoDet: TClientDataSet;
    DSPInscripcion: TDataSetProvider;
    DSPLdr: TDataSetProvider;
    DSPDeposito: TDataSetProvider;
    DSPIva: TDataSetProvider;
    DSPNotaPedidoImp: TDataSetProvider;
    CDSNotaPedidoImp: TClientDataSet;
    DSPSucursal: TDataSetProvider;
    IBGNP_Cab: TIBGenerator;
    IBGNP_Det: TIBGenerator;
    IBGImpuesto: TIBGenerator;
    DSNotaPedidoDet: TDataSource;
    DSNotaPedidoImp: TDataSource;
    CDSNPCabXML: TClientDataSet;
    CDSNPDetXML: TClientDataSet;
    CDSDeposito: TClientDataSet;
    CDSDepositoID: TIntegerField;
    CDSDepositoNOMBRE: TStringField;
    CDSDepositoSUCURSAL: TIntegerField;
    CDSBuscaDeposito: TClientDataSet;
    CDSBuscaDepositoNOMBRE: TStringField;
    CDSBuscaDepositoID: TIntegerField;
    DSPBuscaDeposito: TDataSetProvider;
    CDSExistencia: TClientDataSet;
    DSPExistencia: TDataSetProvider;
    CDSExistenciaCODIGO_STK: TStringField;
    CDSExistenciaDETALLE_STK: TStringField;
    CDSExistenciaFISICO: TFloatField;
    CDSExistenciaCOMPROMETIDO: TFloatField;
    CDSExistenciaSALDO: TFloatField;
    CDSExistenciaDEPOSITO_STK: TIntegerField;
    CDSExistenciaEN_TRANSITO: TFloatField;
    CDSExistenciaDEPOSITO_NOMBRE: TStringField;
    DSExistencia: TDataSource;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    DSPBuscaVendedor: TDataSetProvider;
    CDSBuscaVendedor: TClientDataSet;
    CDSBuscaLdr: TClientDataSet;
    DSPBuscaLdr: TDataSetProvider;
    CDSBuscaLdrCODIGO_CLIENTE: TStringField;
    CDSBuscaLdrCODIGO_LDR: TIntegerField;
    CDSBuscaLdrNOMBRE: TStringField;
    CDSBuscaLdrDIRECCION: TStringField;
    CDSBuscaLdrCPOSTAL: TStringField;
    CDSBuscaCondVenta: TClientDataSet;
    DSPBuscaCondVenta: TDataSetProvider;
    CDSBuscaCondVentaCODIGOCLIENTE: TStringField;
    CDSBuscaCondVentaCODIGOPAGO: TIntegerField;
    CDSBuscaCondVentaDETALLE: TStringField;
    CDSBuscaCondVentaDIAS: TIntegerField;
    CDSCondVenta: TClientDataSet;
    DSPCondVenta: TDataSetProvider;
    CDSCondVentaCODIGOCLIENTE: TStringField;
    CDSCondVentaCODIGOPAGO: TIntegerField;
    CDSCondVentaDESCUENTO: TFloatField;
    CDSCondVentaPOR_DEFECTO: TStringField;
    CDSCondVentaDETALLE: TStringField;
    CDSCondVentaDIAS: TIntegerField;
    CDSCondVentaDESCUENTO_FPAGO: TFloatField;
    CDSClientes: TClientDataSet;
    DSPClientes: TDataSetProvider;
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
    CDSNotaPedidoCabID: TIntegerField;
    CDSNotaPedidoCabTIPOCPBTE: TStringField;
    CDSNotaPedidoCabCLASECPBTE: TStringField;
    CDSNotaPedidoCabNROCPBTE: TStringField;
    CDSNotaPedidoCabCODIGO: TStringField;
    CDSNotaPedidoCabLETRANP: TStringField;
    CDSNotaPedidoCabSUCNP: TStringField;
    CDSNotaPedidoCabNUMERONP: TStringField;
    CDSNotaPedidoCabNOMBRE: TStringField;
    CDSNotaPedidoCabRAZONSOCIAL: TStringField;
    CDSNotaPedidoCabDIRECCION: TStringField;
    CDSNotaPedidoCabCPOSTAL: TStringField;
    CDSNotaPedidoCabLOCALIDAD: TStringField;
    CDSNotaPedidoCabTIPOIVA: TIntegerField;
    CDSNotaPedidoCabCUIT: TStringField;
    CDSNotaPedidoCabLISTAPRECIO: TIntegerField;
    CDSNotaPedidoCabFECHAPEDIDO: TSQLTimeStampField;
    CDSNotaPedidoCabFECHAVTO: TSQLTimeStampField;
    CDSNotaPedidoCabCONDICIONVTA: TIntegerField;
    CDSNotaPedidoCabNETOGRAV1: TFloatField;
    CDSNotaPedidoCabNETOGRAV2: TFloatField;
    CDSNotaPedidoCabDSTO: TFloatField;
    CDSNotaPedidoCabDSTOIMPORTE: TFloatField;
    CDSNotaPedidoCabNETOEXEN1: TFloatField;
    CDSNotaPedidoCabNETOEXEN2: TFloatField;
    CDSNotaPedidoCabTOTAL: TFloatField;
    CDSNotaPedidoCabDEBE: TFloatField;
    CDSNotaPedidoCabIMPRESO: TStringField;
    CDSNotaPedidoCabOBSERVACION1: TStringField;
    CDSNotaPedidoCabOBSERVACION2: TStringField;
    CDSNotaPedidoCabSUCURSAL: TIntegerField;
    CDSNotaPedidoCabZONA: TIntegerField;
    CDSNotaPedidoCabLDR: TIntegerField;
    CDSNotaPedidoCabDEPOSITO: TIntegerField;
    CDSNotaPedidoCabCALCULA_SOBRETASA: TStringField;
    CDSNotaPedidoCabDESGLOZAIVA: TStringField;
    CDSNotaPedidoCabCOMISIONVENDEDOR: TFloatField;
    CDSNotaPedidoCabVENDEDOR: TStringField;
    CDSNotaPedidoCabUSUARIO: TStringField;
    CDSNotaPedidoCabRENGLONES: TSmallintField;
    CDSNotaPedidoCabORIGEN_ID_NOTA_PEDIDO: TIntegerField;
    CDSNotaPedidoCabORIGEN_TIPOCPBTE: TStringField;
    CDSNotaPedidoCabORIGEN_NROCPBTE: TStringField;
    CDSNotaPedidoCabCOPIA: TSmallintField;
    CDSNotaPedidoCabENTREGA_ID_CPBTE: TIntegerField;
    CDSNotaPedidoCabENTREGA_TIPOCPBTE: TStringField;
    CDSNotaPedidoCabENTREGA_NROCPBTE: TStringField;
    CDSNotaPedidoCabESTADO: TStringField;
    CDSNotaPedidoCabPRESUPUESTO_ID: TIntegerField;
    CDSNotaPedidoCabPRESUPUESTO_NROCPBTE: TStringField;
    CDSNotaPedidoCabMUESTRACONDVENTA: TStringField;
    CDSNotaPedidoCabMUESTRADEPOSITO: TStringField;
    CDSNotaPedidoCabMUESTRASUCURSAL: TStringField;
    CDSNotaPedidoCabMUESTRALDR: TStringField;
    CDSNotaPedidoCabMUESTRAIVA: TStringField;
    CDSNotaPedidoCabMUESTRACOMPROBANTE: TStringField;
    CDSNotaPedidoCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSNotaPedidoCabMUESTRAVENDEDOR: TStringField;
    CDSNotaPedidoDetID: TIntegerField;
    CDSNotaPedidoDetID_CABNP: TIntegerField;
    CDSNotaPedidoDetTIPOCPBTE: TStringField;
    CDSNotaPedidoDetCLASECPBTE: TStringField;
    CDSNotaPedidoDetNROCPBTE: TStringField;
    CDSNotaPedidoDetRENGLON: TFloatField;
    CDSNotaPedidoDetFECHAPEDIOD: TSQLTimeStampField;
    CDSNotaPedidoDetCODIGOARTICULO: TStringField;
    CDSNotaPedidoDetDETALLE: TStringField;
    CDSNotaPedidoDetUNIDAD: TStringField;
    CDSNotaPedidoDetCANTIDAD_PEDIDIA: TFloatField;
    CDSNotaPedidoDetCANTIDAD_ENTREGADA: TFloatField;
    CDSNotaPedidoDetCANTIDAD_FALTANTE: TFloatField;
    CDSNotaPedidoDetDESGLOZAIVA: TStringField;
    CDSNotaPedidoDetMODO_GRAVAMEN: TStringField;
    CDSNotaPedidoDetIVA_TASA: TFloatField;
    CDSNotaPedidoDetTIPOIVA_TASA: TIntegerField;
    CDSNotaPedidoDetIVA_SOBRETASA: TFloatField;
    CDSNotaPedidoDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSNotaPedidoDetDESCUENTO: TFloatField;
    CDSNotaPedidoDetTOTAL: TFloatField;
    CDSNotaPedidoDetDEPOSITO: TIntegerField;
    CDSNotaPedidoDetMARGEN: TFloatField;
    CDSNotaPedidoDetAFECTA_STOCK: TStringField;
    CDSNotaPedidoDetCALCULA_SOBRETASA: TStringField;
    CDSNotaPedidoDetGRAVADO_IB: TStringField;
    CDSNotaPedidoImpID_IMPUESTO: TIntegerField;
    CDSNotaPedidoImpID_NPCAB: TIntegerField;
    CDSNotaPedidoImpCODIGO_GRAVAMEN: TIntegerField;
    CDSNotaPedidoImpDETALLE: TStringField;
    CDSNotaPedidoImpNETO: TFloatField;
    CDSNotaPedidoImpTASA: TFloatField;
    CDSNotaPedidoImpIMPORTE: TFloatField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalRECARGO: TFloatField;
    CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    QPrimerLdr: TFDQuery;
    QPrimerConVta: TFDQuery;
    CDSIva: TClientDataSet;
    CDSIvaCODIGO: TIntegerField;
    CDSIvaDESCRIPCION: TStringField;
    CDSIvaTASA: TFloatField;
    CDSIvaCOLUMNA: TSmallintField;
    QCondVentaDefecto: TFDQuery;
    CDSBuscaVendedorCODIGO: TStringField;
    CDSBuscaVendedorNOMBRE: TStringField;
    CDSBuscaVendedorCOMISION: TFloatField;
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
    QTraerRecargoDeLista: TFDQuery;
    QTraerRecargoDeListaRECARGO: TFloatField;
    QPrecioEspecial: TFDQuery;
    QPrecioEspecialPRECIOPACTADO: TFloatField;
    DSPListaPrecios: TDataSetProvider;
    CDSListaPrecios: TClientDataSet;
    CDSListaPreciosID: TIntegerField;
    CDSListaPreciosNOMBRE: TStringField;
    CDSListaPreciosF_PAGO: TIntegerField;
    DSListaPrecios: TDataSource;
    QBuscaListaPrecio: TFDQuery;
    QBuscaListaPrecioID: TIntegerField;
    QDepositoStk: TFDQuery;
    QBuscaPedidoFC: TFDQuery;
    QBuscaPedidoRT: TFDQuery;
    QBuscaPedidoNP: TFDQuery;
    QComprob: TFDQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QComprobLINEAS_DETALLE: TSmallintField;
    QBuscaPedidoNPTIPOCPBTE: TStringField;
    QBuscaPedidoNPCLASECPBTE: TStringField;
    QBuscaPedidoNPNROCPBTE: TStringField;
    QBuscaPedidoNPFECHAVTA: TSQLTimeStampField;
    QBuscaPedidoFCTIPOCPBTE: TStringField;
    QBuscaPedidoFCCLASECPBTE: TStringField;
    QBuscaPedidoFCNROCPBTE: TStringField;
    QBuscaPedidoFCFECHAVTA: TSQLTimeStampField;
    QBuscaPedidoRTTIPOCPBTE: TStringField;
    QBuscaPedidoRTCLASECPBTE: TStringField;
    QBuscaPedidoRTNROCPBTE: TStringField;
    QBuscaPedidoRTFECHAVTA: TSQLTimeStampField;
    spMarcarNP: TFDStoredProc;
    spAnular: TFDStoredProc;
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
    CDSNotaPedidoDetNRO: TIntegerField;
    QStockPrecio: TFDQuery;
    QStockPrecioCOSTO_TOTAL: TFloatField;
    QStockPrecioPRECIO: TFloatField;
    QStockPrecioCOSTO_EXENTO: TFloatField;
    QStockPrecioCOSTO_GRAVADO: TFloatField;
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
    CDSNotaPedidoDetID_MONEDA: TIntegerField;
    CDSNotaPedidoDetCOTIZACION: TFloatField;
    QMonedas: TFDQuery;
    QMonedasID: TIntegerField;
    QMonedasMONEDA: TStringField;
    QMonedasCOTIZACION: TFloatField;
    QMonedasSIGNO: TStringField;
    QMonedasORDEN: TSmallintField;
    QMonedasCOTIZACION_COMPRA: TFloatField;
    CDSNotaPedidoDetIVA_TOTAL: TFloatField;
    CDSNotaPedidoDetTOTAL_GRAVADO: TFloatField;
    CDSNotaPedidoDetTOTAL_EXENTO: TFloatField;
    QCoefPrecio: TFDQuery;
    QCoefPrecioMAX: TFloatField;
    CDSNotaPedidoDetCOSTO_EXENTO: TFloatField;
    CDSNotaPedidoDetCOSTO_GRAVADO: TFloatField;
    CDSNotaPedidoDetCOSTO_TOTAL: TFloatField;
    CDSNotaPedidoDetUNITARIO_EXENTO: TFloatField;
    CDSNotaPedidoDetUNITARIO_GRAVADO: TFloatField;
    CDSNotaPedidoDetIVA_UNITARIO: TFloatField;
    CDSNotaPedidoDetUNITARIO_TOTAL: TFloatField;
    spDesmarcarNP: TFDStoredProc;
    spVerificaHuerfanas: TFDStoredProc;
    CDSNotaPedidoDetMUESTRASIGNO: TStringField;
    CDSNotaPedidoDetMUESTRACODALTERNATIVO: TStringField;
    CDSNotaPedidoDetCANTIDAD_UNIDADES: TFloatField;
    CDSNotaPedidoDetPRESENTACION_CANTI: TFloatField;
    CDSPersonalCOMISION: TFloatField;
    CDSNotaPedidoCabFACTURA_ID: TIntegerField;
    CDSNotaPedidoCabFACTURA_NROCPBTE: TStringField;
    CDSNotaPedidoCabID_PEDIDO_MOVIL: TIntegerField;
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSNotaPedidoCabLDRSetText(Sender: TField;
      const Text: String);
    procedure CDSNotaPedidoCabDEPOSITOSetText(Sender: TField;
      const Text: String);
    procedure CDSNotaPedidoCabNETOGRAV1GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CDSNotaPedidoCabDSTOSetText(Sender: TField;
      const Text: String);
    procedure CDSNotaPedidoCabCODIGOSetText(Sender: TField;
      const Text: String);
    procedure CDSNotaPedidoCabCONDICIONVTASetText(Sender: TField;
      const Text: String);
    procedure CDSNotaPedidoCabNETOGRAV2GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CDSNotaPedidoCabSUCNPSetText(Sender: TField;
      const Text: String);
    procedure CDSNotaPedidoCabNUMERONPSetText(Sender: TField;
      const Text: String);
    procedure CDSNotaPedidoCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSNotaPedidoCabVENDEDORSetText(Sender: TField;
      const Text: String);
    procedure CDSNotaPedidoCabSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure CDSNotaPedidoDetCODIGOARTICULOSetText(Sender: TField;
      const Text: String);
    procedure CDSNotaPedidoDetCANTIDAD_PEDIDIASetText(Sender: TField;
      const Text: String);
    procedure CDSNotaPedidoDetUNITARIO_TOTALSetText(Sender: TField;
      const Text: String);
    procedure CDSNotaPedidoDetUNITARIO_TOTALGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CDSNotaPedidoCabBeforePost(DataSet: TDataSet);
    procedure CDSNotaPedidoCabNewRecord(DataSet: TDataSet);
    procedure CDSNotaPedidoDetAfterDelete(DataSet: TDataSet);
    procedure CDSNotaPedidoDetAfterInsert(DataSet: TDataSet);
    procedure CDSNotaPedidoDetAfterPost(DataSet: TDataSet);
    procedure CDSNotaPedidoDetBeforePost(DataSet: TDataSet);
    procedure CDSNotaPedidoDetNewRecord(DataSet: TDataSet);
    procedure CDSNotaPedidoDetCANTIDAD_ENTREGADASetText(Sender: TField;
      const Text: String);
    procedure CDSNotaPedidoDetCalcFields(DataSet: TDataSet);
    procedure CDSNotaPedidoImpNewRecord(DataSet: TDataSet);
    procedure CDSNotaPedidoDetCODIGOARTICULOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
    CodAlternativo:Boolean;
  public
    { Public declarations }
    TasaReal: Real;
    Renglones:Byte;
    MascaraDetalleUnitario :String;
    MascaraDetalleCantidad :String;
    MascaraDetalleTotal    :String;
    MascaraDetalleDescuento:String;
    MascaraIvaImporte      :String;
    MascaraIvaTasa         :String;
    MascaraCabecera        :String;
    CorreoDestino          :String;
 //   procedure CalculaPrecioVta_FD;
    PROCEDURE AplicarMascarasNumericas;
    PROCEDURE CalcularTotales;
    PROCEDURE SumarDetalle;
//    FUNCTION ControlCantidades:Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    FUNCTION AsignarArticulo(Dato: STRING): Boolean;
    FUNCTION AsignarCliente(Dato: STRING): Boolean;
    FUNCTION AsignarLdr(Cliente: STRING; Dato: integer): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarCondVenta(Cliente: STRING; Dato: Integer): Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION AsignarVendedor(Dato: String): Boolean;
    FUNCTION HayParaFacturar(Datos:TClientDataSet):Boolean;
    FUNCTION GeneraCopiaNP(Datos:TClientDataSet):Boolean;
 // published
//    Property VerCodigoAlternativo:Boolean read CodAlternativo write CodAlternativo;
  end;

var
  DatosNPedidoClientes: TDatosNPedidoClientes;

implementation

uses UNotaPedidoCliente, UDMain_FD,DMBuscadoresForm,UMuestraListaCodBarra,
     UBuscadorArticulos, DMStoreProcedureForm;
{$R *.DFM}


//procedure TDatosNPedidoClientes.CalculaPrecioVta_FD;
//VAR Recargo,Coef:Extended;
//begin
//  if CDSNotaPedidoDetCOSTO_TOTAL.AsFloat = 0 Then Exit;
//  if CDSNotaPedidoDet.State=dsBrowse Then
//    CDSNotaPedidoDet.Edit;
//// ***** Aplico el Recargo de la Lista de Precios
//  QTraerRecargoDeLista.Close;
//  QTraerRecargoDeLista.ParamByName('Lista').Value   :=CDSNotaPedidoCabLISTAPRECIO.Value;
//  QTraerRecargoDeLista.ParamByName('Articulo').Value:=CDSNotaPedidoDetCodigoArticulo.Value;
//  QTraerRecargoDeLista.OPen;
//  IF NOT (QTraerRecargoDeLista.IsEmpty) THEN
//    BEGIN
//      Recargo:=QTraerRecargoDeListaRECARGO.AsFloat;
//      IF (NOT (VarIsNull(Recargo))) AND (Recargo <> 0) THEN
//        BEGIN
//          QCoefPrecio.Close;
//          QCoefPrecio.ParamByName('codigo').Value  :=CDSNotaPedidoCabCODIGO.Value;
//          QCoefPrecio.ParamByName('id_lista').Value:=CDSNotaPedidoCabLISTAPRECIO.Value;
//          QCoefPrecio.Open;
//          if QCoefPrecio.Fields[0].AsString='' Then
//            coef:=1
//          else
//            coef:=QCoefPrecio.Fields[0].Value;
//          QCoefPrecio.Close;
//
//          CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat:= RoundTo(CDSNotaPedidoDetCosto_Gravado.AsFloat * (1 + (Recargo * 0.01) ),DMMain_FD.DecRedondeo) * Coef;
//          CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat := RoundTo(CDSNotaPedidoDetCosto_Exento.AsFloat * (1 + (Recargo * 0.01) ),DMMain_FD.DecRedondeo) * Coef;
//          CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat  := CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat + CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;
//
//        END
//      else
//        BEGIN
//          CDSNotaPedidoDetUnitario_Gravado.Value:= CDSNotaPedidoDetCosto_Gravado.Value;
//          CDSNotaPedidoDetUnitario_Exento.Value := CDSNotaPedidoDetCosto_Exento.Value;
//          CDSNotaPedidoDetUnitario_Total.Value  := CDSNotaPedidoDetCosto_Total.Value;
//        END;
//    end
//  else
//    BEGIN
//      CDSNotaPedidoDetUnitario_Gravado.Value:= CDSNotaPedidoDetCosto_Gravado.Value;
//      CDSNotaPedidoDetUnitario_Exento.Value := CDSNotaPedidoDetCosto_Exento.Value;
//      CDSNotaPedidoDetUnitario_Total.Value  := CDSNotaPedidoDetCosto_Total.Value;
//    END;
//  QTraerRecargoDeLista.Close;
////******** Aplico recargo por Deposito de Vta *******
//  QDepositoStk.Close;
//  QDepositoStk.ParamByName('Codigo_Deposito').Value:= CDSNotaPedidoDetDeposito.Value;
//  QDepositoStk.ParamByName('Codigo').Value         := CDSNotaPedidoDetCodigoArticulo.Value;
//  QDepositoStk.Open;
//  IF NOT (QDepositoStk.IsEmpty) THEN
//    BEGIN
//      Recargo:=QDepositoStkRecargo.AsFloat;
//      IF (NOT (VarIsNull(Recargo))) AND (Recargo <> 0) THEN
//        BEGIN
//          CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat := RoundTo(CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat * (1 + (Recargo * 0.01)),DMMain_FD.DecRedondeo);
//          CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat  := RoundTo(CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat * (1 + (Recargo * 0.01)),DMMain_FD.DecRedondeo);
//          CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat   := CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat + CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;
//        END
//    END;
//  QDepositoStk.Close;
//// ******** Aplico recargo por Sucursal ***
//  CDSSucursal.Close;
//  CDSSucursal.Params.ParamByName('Codigo').Value := CDSNotaPedidoCabSucursal.Value;
//  CDSSucursal.Open;
//  Recargo := CDSSucursalRecargo.AsFloat;
//  IF (NOT (VarIsNull(Recargo))) AND (Recargo <> 0) THEN
//    BEGIN
//      CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat := RoundTo(CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat * (1 + (Recargo * 0.01)),DMMain_FD.DecRedondeo);
//      CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat  := RoundTo(CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat * (1 + (Recargo * 0.01)),DMMain_FD.DecRedondeo);
//      CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat   := CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat + CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;
//
//    END;
//  CDSSucursal.Close;
//// ******* Aplico Precio Especial cliente
//  QPrecioEspecial.CLose;
//  QPrecioEspecial.ParamByName('cliente').AsString :=CDSNotaPedidoCabCODIGO.Value;
//  QPrecioEspecial.ParamByName('articulo').AsString:=CDSNotaPedidoDetCodigoArticulo.Value;
//  QPrecioEspecial.Open;
//  if Not(QPrecioEspecial.IsEmpty) Then
//    CDSNotaPedidoDetUnitario_TotalSetText(CDSNotaPedidoDetUnitario_Total,QPrecioEspecial.Fields[0].AsString);
//  QPrecioEspecial.CLose;
//
//  // **************************************************************
//  // ****** Aca Calculo el Importe del Iva ** Nueva calculo del Iva
//  // **************************************************************
//  CDSNotaPedidoDetIVA_UNITARIO.AsFloat :=  RoundTo(CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat * (1 + CDSNotaPedidoDetIVA_TASA.AsFloat * 0.01),DMMain_FD.DecRedondeo) - CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat;
//  // **************************************************************
//  // **************************************************************
////  if (CDSNotaPedidoDetDESGLOZAIVA.Value='S') and (FormNotaPedidoCliente.DiscriminaIva='N') then
////    CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat:=CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat+CDSNotaPedidoDetIVA_UNITARIO.AsFloat
////  else
////    if (CDSNotaPedidoDetDESGLOZAIVA.Value='N') Then
////      CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat:=CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat+CDSNotaPedidoDetIVA_UNITARIO.AsFloat
//
//end;

procedure TDatosNPedidoClientes.AplicarMascarasNumericas;
VAR I:Byte;
begin
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETUNITARI';
  DMMain_FD.QOpciones.Open;
  MascaraDetalleUnitario:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSNotaPedidoDetUnitario_Total).EditFormat    :=MascaraDetalleUnitario;
  TFloatField(CDSNotaPedidoDetUnitario_Total).DisplayFormat :=MascaraDetalleUnitario;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETCANTIDA';
  DMMain_FD.QOpciones.Open;
  MascaraDetalleCantidad:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSNotaPedidoDetCANTIDAD_PEDIDIA).EditFormat    :=MascaraDetalleCantidad;
  TFloatField(CDSNotaPedidoDetCANTIDAD_PEDIDIA).DisplayFormat :=MascaraDetalleCantidad;
  TFloatField(CDSNotaPedidoDetCANTIDAD_ENTREGADA).EditFormat    :=MascaraDetalleCantidad;
  TFloatField(CDSNotaPedidoDetCANTIDAD_ENTREGADA).DisplayFormat :=MascaraDetalleCantidad;
  TFloatField(CDSNotaPedidoDetCANTIDAD_FALTANTE).EditFormat    :=MascaraDetalleCantidad;
  TFloatField(CDSNotaPedidoDetCANTIDAD_FALTANTE).DisplayFormat :=MascaraDetalleCantidad;



  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETDESCUEN';
  DMMain_FD.QOpciones.Open;
  MascaraDetalleDescuento:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSNotaPedidoDetDescuento).EditFormat    :=MascaraDetalleDescuento;
  TFloatField(CDSNotaPedidoDetDescuento).DisplayFormat :=MascaraDetalleDescuento;


  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETTOTAL';
  DMMain_FD.QOpciones.Open;
  MascaraDetalleTotal:=',0.00';//DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSNotaPedidoDetTotal).EditFormat        := MascaraDetalleTotal;
  TFloatField(CDSNotaPedidoDetTotal).DisplayFormat     := MascaraDetalleTotal;


  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='IVATASA';
  DMMain_FD.QOpciones.Open;
  MascaraIvaTasa:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSNotaPedidoDetIVA_Tasa).EditFormat        := MascaraIvaTasa;
  TFloatField(CDSNotaPedidoDetIVA_Tasa).DisplayFormat     := MascaraIvaTasa;
  TFloatField(CDSNotaPedidoDetIVA_SobreTasa).EditFormat   := MascaraIvaTasa;
  TFloatField(CDSNotaPedidoDetIVA_SobreTasa).DisplayFormat:= MascaraIvaTasa;
  TFloatField(CDSNotaPedidoImpTASA).EditFormat            := MascaraIvaTasa;
  TFloatField(CDSNotaPedidoImpTASA).DisplayFormat         := MascaraIvaTasa;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='IVAIMPORTES';
  DMMain_FD.QOpciones.Open;
  MascaraIvaImporte:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSNotaPedidoImpIMPORTE).EditFormat        := MascaraIvaImporte;
  TFloatField(CDSNotaPedidoImpIMPORTE).DisplayFormat     := MascaraIvaImporte;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTACABECERA';
  DMMain_FD.QOpciones.Open;
  MascaraCabecera:='0.00';//DMMain_FD.QOpciones.Fields[0].AsString;
  For i:=0 to CDSNotaPedidoCab.FieldCount-1 do
    begin
      if (CDSNotaPedidoCab.Fields[i].DataType=ftFMTBcd) Then
       begin
         // TFloatField(CDSNotaPedidoDet.Fields[i]).EditMask:='###,##0.0';
          TFloatField(CDSNotaPedidoCab.Fields[i]).EditFormat   :=MascaraCabecera;
          TFloatField(CDSNotaPedidoCab.fields[i]).DisplayFormat:=MascaraCabecera;
       end;
    end;

  DMMain_FD.QOpciones.Close;
end;

PROCEDURE TDatosNPedidoClientes.CalcularTotales;
VAR
  Acumulador,Descuento,TotalOld,TotalNew,
  TotalGral,NetoTotal,Neto: Extended;
BEGIN
  CDSNotaPedidoCabTotal.AsFloat := 0;
  Acumulador               := 0;
  Descuento                := CDSNotaPedidoCabDsto.AsFloat * 0.01;
  CDSNotaPedidoCabNETOGRAV2.AsFloat  := RoundTo(CDSNotaPedidoCabNetoGrav1.AsFloat * (1 - Descuento), -2);
  CDSNotaPedidoCabNETOEXEN2.AsFloat  := RoundTo(CDSNotaPedidoCabNetoExen1.AsFloat * (1 - Descuento), -2);

  // Si percibo IB calculo la percepcion

  CDSNotaPedidoCabDSTOIMPORTE.AsFloat := (CDSNotaPedidoCabNetoGrav1.AsFloat + CDSNotaPedidoCabNETOEXEN1.AsFloat) -
                                    (CDSNotaPedidoCabNetoGrav2.AsFloat + CDSNotaPedidoCabNETOEXEN2.AsFloat);

  CDSNotaPedidoImp.First;
  CDSNotaPedidoImp.DisableControls;
    WHILE NOT (CDSNotaPedidoImp.Eof) DO
      BEGIN
        TotalOld := CDSNotaPedidoImpNETO.AsFloat+CDSNotaPedidoImpIMPORTE.AsFloat;
        TotalNew := RoundTo(TotalOld * (1 - Descuento),-2);
        CDSNotaPedidoImp.Edit;
        CDSNotaPedidoImpNETO.AsFloat    := 0;
        CDSNotaPedidoImpNETO.AsFloat    := TotalOld - CDSNotaPedidoImpIMPORTE.AsFloat;
        if Trunc(CDSNotaPedidoCabDSTO.AsFloat*100)<>0 then
          begin
            CDSNotaPedidoImpNETO.AsFloat    := TotalNew / (1+CDSNotaPedidoImpTASA.AsFloat*0.01);
            CDSNotaPedidoImpIMPORTE.AsFloat := TotalNew - CDSNotaPedidoImpNETO.AsFloat ;
          end;
        Acumulador                  := Acumulador + CDSNotaPedidoImpIMPORTE.AsFloat;
        CDSNotaPedidoImp.Next;
      END;
    CDSNotaPedidoImp.EnableControls;
    FormNotaPedidoCliente.DBGrillaIva.Refresh;


    CDSNotaPedidoCabTotal.AsFloat := RoundTo(CDSNotaPedidoCabNetoGrav2.AsFloat +
                                     CDSNotaPedidoCabNetoExen2.AsFloat +
                                     Acumulador ,-2);
    { DONE -cMensajes :
    TasaReal: esta tasa la uso como multiplicador para cuando el cliente es del tipo
    Monotributo o consumidor final, as'i muestro los importe con el Iva
    incluido.
    No esta con formato para que la cuenta me de bien..... creo...}

//   ( ( Total/ neto )- 1 ) x 100 = Tasa de Iva usada

  TotalGral := CDSNotaPedidoCabTotal.AsFloat ;
  NetoTotal := CDSNotaPedidoCabNetoGrav2.AsFloat + CDSNotaPedidoCabNETOEXEN2.AsFloat;

{  TRY
    if CDSNotaPedidoCabNetoGrav2.AsFloat>0 Then
      Var_TasaIVA:= RoundTo(((TotalGral/NetoTotal)-1) * 100,-2)
    else
      Var_TasaIva:=0;
  EXCEPT
    ON EZeroDivide DO
      Var_TasaIva:=0;
  END;
 }
  CDSNotaPedidoCabNETOGRAV2.AsFloat  := RoundTo(CDSNotaPedidoCabNetoGrav1.AsFloat * (1 - Descuento), -2);
  CDSNotaPedidoCabNetoGrav1.AsFloat  := CDSNotaPedidoCabNetoGrav1.AsFloat;
  // Para que se refresca el OnGetTex de Descuento.... lo reasgino de nuevo
  CDSNotaPedidoCabDSTOIMPORTE.AsFloat := (CDSNotaPedidoCabNetoGrav1.AsFloat + CDSNotaPedidoCabNETOEXEN1.AsFloat) -
                                    (CDSNotaPedidoCabNetoGrav2.AsFloat + CDSNotaPedidoCabNETOEXEN2.AsFloat);

  CDSNotaPedidoCabNetoGrav2.AsFloat :=(CDSNotaPedidoCabNetoGrav1.AsFloat -(CDSNotaPedidoCabNetoGrav1.AsFloat * CDSNotaPedidoCabDsto.AsFloat * 0.01));
  CDSNotaPedidoCabNetoGrav1.AsFloat :=(CDSNotaPedidoCabNetoGrav1.AsFloat);
END;

PROCEDURE TDatosNPedidoClientes.SumarDetalle;
VAR
  Dscto: Real;
  Puntero:TBookmark;
BEGIN
  Puntero:=CDSNotaPedidoDet.GetBookmark;
  CDSNotaPedidoDet.DisableControls;
  CDSNotaPedidoDet.First;
  IF CDSNotaPedidoCab.State = dsBrowse THEN
    CDSNotaPedidoCab.Edit;
  CDSNotaPedidoCabNetoGrav1.ASFloat:=0;
  CDSNotaPedidoCabNetoExen1.ASFloat:=0;
  CDSNotaPedidoImp.First;
  CDSNotaPedidoImp.DisableControls;
  WHILE NOT (CDSNotaPedidoImp.Eof) DO
    BEGIN
      CDSNotaPedidoImp.Edit;
      CDSNotaPedidoImpNeto.AsFloat   :=0;
      CDSNotaPedidoImpIMPORTE.AsFloat:=0;
      CDSNotaPedidoImp.Next;
    END;
  WHILE (NOT CDSNotaPedidoDet.Eof) DO
    BEGIN
      Dscto := 1 - CDSNotaPedidoDetDescuento.AsFloat * 0.01;
      IF (CDSNotaPedidoDetTipoIva_Tasa.AsFloat <> 0) AND (NOT (VarIsNull(CDSNotaPedidoDetTipoIva_Tasa.AsFloat))) AND (CDSNotaPedidoDetModo_Gravamen.Value <> 'E') THEN
        BEGIN
          IF CDSNotaPedidoImp.Locate('Codigo_Gravamen',CDSNotaPedidoDetTipoIva_Tasa.Value, []) THEN
            BEGIN
              CDSNotaPedidoImp.Edit;
              CDSNotaPedidoImpNeto.AsFloat    := CDSNotaPedidoImpNeto.AsFloat +CDSNotaPedidoDetTOTAL_GRAVADO.AsFloat ;
              CDSNotaPedidoImpTasa.AsFloat    := CDSNotaPedidoDetIVA_Tasa.AsFloat;
              CDSNotaPedidoImpImporte.AsFloat := CDSNotaPedidoImpIMPORTE.AsFloat + CDSNotaPedidoDetIVA_TOTAL.AsFloat;
              CDSNotaPedidoImp.Post;
            END
          ELSE
            BEGIN
              CDSNotaPedidoImp.Insert;
              CDSNotaPedidoImpCODIGO_GRAVAMEN.Value   := CDSNotaPedidoDetTIPOIVA_TASA.AsInteger;
              CDSIva.Close;
              CDSIva.Params.ParamByName('id').Value := CDSNotaPedidoDetTIPOIVA_TASA.AsInteger;
              CDSIva.Open;
              CDSNotaPedidoImpDETALLE.Value     := CDSIvaDESCRIPCION.Value;
              CDSNotaPedidoImpID_NPCAB.Value    := CDSNotaPedidoDetID_CABNP.Value;
              CDSNotaPedidoImpNETO.AsFloat      := CDSNotaPedidoImpNeto.AsFloat + CDSNotaPedidoDetTOTAL_GRAVADO.AsFloat ;
              CDSNotaPedidoImpTASA.AsFloat      := CDSNotaPedidoDetIVA_TASA.AsFLoat;
              CDSNotaPedidoImpIMPORTE.AsFloat   := CDSNotaPedidoImpIMPORTE.AsFloat + CDSNotaPedidoDetIVA_TOTAL.AsFloat;
              CDSNotaPedidoImp.Post;
            END;
        END;
      CDSNotaPedidoCabNETOGRAV1.AsFloat := CDSNotaPedidoDetTOTAL_GRAVADO.AsFloat + CDSNotaPedidoCabNETOGRAV1.AsFloat;
      CDSNotaPedidoCabNETOEXEN1.AsFloat := CDSNotaPedidoDetTOTAL_EXENTO.AsFloat  + CDSNotaPedidoCabNetoExen1.AsFloat;

      CDSNotaPedidoDet.Next;
    END;
  CDSNotaPedidoDet.GotoBookmark(Puntero);
  CDSNotaPedidoDet.EnableControls;
  CDSNotaPedidoDet.FreeBookmark(puntero);
  { aca voy a los calculos de los totoales de la factura }
END;

FUNCTION TDatosNPedidoClientes.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value:=dato;
  QComprob.ParamByName('suc').Value:=CDSNotaPedidoCabSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSNotaPedidoCabMUESTRACOMPROBANTE.Value:=QComprobDENOMINACION.Value;
      CDSNotaPedidoCabLETRANP.Value           :=QComprobLETRA.Value;
      CDSNotaPedidoCabTIPOCPBTE.Value         :=QComprobTIPO_COMPROB.Value;
      CDSNotaPedidoCabCLASECPBTE.Value        :=QComprobCLASE_COMPROB.Value;
      Renglones                               :=QComprobLINEAS_DETALLE.Value;
    END
  ELSE
    BEGIN
      Result:=False;
      CDSNotaPedidoCabMUESTRACOMPROBANTE.Value:= '';
      CDSNotaPedidoCabLETRANP.Value           := '';
      CDSNotaPedidoCabCLASECPBTE.Value        := '';
      CDSNotaPedidoCabTIPOCPBTE.Value         := '';
      Renglones                          := 0;
    END;
END;

FUNCTION TDatosNPedidoClientes.ASignarArticulo(Dato: STRING): Boolean;
var Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
BEGIN
  IF CDSNotaPedidoDet.State = dsBrowse THEN
    CDSNotaPedidoDet.Edit;
  WITH DatosNPedidoClientes DO
    BEGIN
      CDSStock.Close;
      CDSStock.Params.ParamByName('Codigo').Value:=Dato;
      CDSStock.Open;
       IF (NOT (CDSStock.IsEmpty)) and (CDSStockCLASE_ARTICULO.Value<>0) THEN
        BEGIN
          //vacio todo los importes por si hay un cambio de codigo y no queden cargados los valores
          CDSNotaPedidoDetCANTIDAD_PEDIDIA.AsFloat :=0;
          CDSNotaPedidoDetUnitario_Total.AsFloat   :=0;
          CDSNotaPedidoDetUnitario_Gravado.AsFloat :=0;
          CDSNotaPedidoDetUnitario_Exento.AsFloat  :=0;
          CDSNotaPedidoDetTotal.AsFloat            :=0;
          CDSNotaPedidoDetMUESTRACODALTERNATIVO.Value:=CDSStockREEMPLAZO_STK.Value;

          CDSNotaPedidoDetID_MONEDA.Value    := CDSStockMONEDA.Value;
          QMonedas.Close;
          QMonedas.ParamByName('id').Value   := CDSStockMONEDA.Value;
          QMonedas.Open;
          if QMonedasCOTIZACION.AsString<>'' then
            CDSNotaPedidoDetCOTIZACION.AsFloat := QMonedasCOTIZACION.AsFloat
          else
          CDSNotaPedidoDetCOTIZACION.AsFloat:=1;
          CDSNotaPedidoDetMUESTRASIGNO.Value:=QMonedasSIGNO.Value;
          QMonedas.Close;

          CDSNotaPedidoDetDetalle.AsString       := CDSStockDetalle_Stk.AsString;
          CDSNotaPedidoDetUnidad.Value           := CDSStockUnidad.Value;
          CDSNotaPedidoDetCosto_Gravado.AsFloat  := (CDSStockFijacion_Precio_Gravado.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat)*CDSNotaPedidoDetCOTIZACION.AsFloat;
          CDSNotaPedidoDetCosto_Exento.AsFloat   := (CDSStockFijacion_Precio_Exento.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat)*CDSNotaPedidoDetCOTIZACION.AsFloat;
          CDSNotaPedidoDetCosto_Total.AsFloat    := (CDSStockFijacion_Precio_Total.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat)*CDSNotaPedidoDetCOTIZACION.AsFloat;
          // aca lo pongo al costo sin conversion( nuevo 31-07-2012
          // Muestro con la moneda original , no hago la conversion
          CDSNotaPedidoDetCosto_Gravado.AsFloat  := (CDSStockFijacion_Precio_Gravado.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat);
          CDSNotaPedidoDetCosto_Exento.AsFloat   := (CDSStockFijacion_Precio_Exento.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat);
          CDSNotaPedidoDetCosto_Total.AsFloat    := (CDSStockFijacion_Precio_Total.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat);

          CDSNotaPedidoDetAfecta_Stock.Value      := CDSStockControlaStock.Value;
          CDSNotaPedidoDetModo_Gravamen.Value     := CDSStockModo_Gravamen.Value;
          CDSNotaPedidoDetTipoIva_Tasa.Value      := CDSStockTasa_Iva.Value;
          CDSNotaPedidoDetTipoIva_SobreTasa.Value := CDSStockSobreTasa_Iva.Value;

          CDSNotaPedidoDetPRESENTACION_CANTI.AsFloat := CDSStockPRESENTACION_CANTIDAD.AsFloat;
          //Asigno el deposito que tengo en el encabezado...
          CDSNotaPedidoDetDeposito.Value:=CDSNotaPedidoCabDeposito.Value;
          //segun el tipo de inscripcion verifico si descrimina o no iva y si cobra Sobre tasa
          CDSNotaPedidoDetDesglozaIVA.Value      := CDSNotaPedidoCabDesglozaIva.Value;
          CDSNotaPedidoDetCalcula_SobreTasa.Value:= CDSNotaPedidoCabCalcula_SobreTasa.Value;
          // traigo los porcentajes de Iva
          CDSIva.Close;
          CDSIva.Params.ParamByName('id').Value:= CDSNotaPedidoDetTipoIva_Tasa.Value;
          CDSIva.Open;
          IF NOT (CDSIva.IsEmpty) THEN
            CDSNotaPedidoDetIVA_Tasa.Value:=CDSIvaTasa.Value;
          CDSIva.Close;
          CDSIva.Params.ParamByName('id').Value:= CDSNotaPedidoDetTipoIva_SobreTasa.Value;
          CDSIva.Open;
          IF NOT (CDSIva.IsEmpty) THEN
            CDSNotaPedidoDetIVA_SobreTasa.Value:=CDSIvaTasa.Value;

          QMonedas.Close;
          QMonedas.ParamByName('id').Value := CDSStockMONEDA.Value;
          QMonedas.Open;
          if QMonedasCOTIZACION.AsString<>'' then
            CDSNotaPedidoDetCOTIZACION.AsFloat := QMonedasCOTIZACION.AsFloat
          else
            CDSNotaPedidoDetCOTIZACION.AsFloat:=1;
          QMonedas.Close;

          DMMain_FD.CalculaPrecioVta_FD('N',DMMain_FD.IdListaProveedor,CDSNotaPedidoCabLISTAPRECIO.Value,CDSNotaPedidoCabSUCURSAL.Value,CDSNotaPedidoCabDEPOSITO.Value,
                                        CDSNotaPedidoDetCODIGOARTICULO.AsString,CDSNotaPedidoCabCODIGO.AsString,CDSNotaPedidoCabTIPOCPBTE.Value,
                                        CDSNotaPedidoDetCOTIZACION.AsFloat,
                                        1,
                                        Gravado,exento,Total,Iva,Margen,dscto,PFinal);


          CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat:=Gravado;
          CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat :=Exento;
          CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat  :=Total;
          CDSNotaPedidoDetIVA_UNITARIO.AsFloat    :=Iva;
          CDSNotaPedidoDetMARGEN.ASFloat          :=Margen;
          CDSNotaPedidoDetDESCUENTO.ASFloat       :=Dscto;

//        CalculaPrecioVta_FD;
          Result:=True;
        END
      ELSE
        Result:=False;
    END;
END;

FUNCTION TDatosNPedidoClientes.AsignarCliente(Dato: STRING): Boolean;
Var Escape:Char;
BEGIN
  Escape:=#27;
  CDSClientes.Close;
  CDSClientes.Params.ParamByName('Codigo').Value:=Dato;
  CDSClientes.Open;
  IF NOT (CDSClientes.Eof) THEN
    BEGIN
      if CDSClientesACTIVO.Value<>'S' Then
         begin
            ShowMessage('Cliente Inactivo ... No se puede Generar Operación...');
            sysUtils.Abort;
            FormNotaPedidoCliente.OnKeyPress(FormNotaPedidoCliente,Escape);
         end;

      CorreoDestino                       := CDSClientesCORREOELECTRONICO.Value;
      CDSNotaPedidoCabNombre.AsString     := CDSClientesNombre.AsString;
      CDSNotaPedidoCabRazonSocial.AsString:= CDSClientesRazon_Social.ASString;
      CDSNotaPedidoCabCuit.AsString       := CDSClientesNro_de_Cuit.AsString;
      CDSNotaPedidoCabDireccion.AsString  := CDSClientesDireccion_Comercial.AsString;
      CDSNotaPedidoCabTipoIVA.AsInteger   := CDSClientesCondicion_Iva.Value;
      CDSNotaPedidoCabCPostal.AsString    := CDSClientesCPostal.AsString;
      CDSNotaPedidoCabLocalidad.AsString  := CDSClientesLocalidad.AsString;
      CDSNotaPedidoCabZona.AsInteger      := CDSClientesZona.AsInteger;
      CDSNotaPedidoCabLdr.Clear;
      CDSInscripcion.Close;
      CDSInscripcion.Params.ParamByName('Codigo').Value:= CDSNotaPedidoCabTipoIva.Value;
      CDSInscripcion.Open;
      IF NOT (CDSInscripcion.Eof) THEN
        BEGIN
          CDSNotaPedidoCabCalcula_SobreTasa.Value:= CDSInscripcionCobraSobretasa.Value;
          CDSNotaPedidoCabDESGLOZAIVA.Value      := CDSInscripcionDISCRIMINAIVA.Value;   //*********
          CDSNotaPedidoCabMUESTRAIVA.Value       := CDSInscripcionDETALLE.Value
        END;
      FormNotaPedidoCliente.DBGrillaIva.Visible :=CDSNotaPedidoCabDESGLOZAIVA.Value = 'S';

      QPrimerLdr.CLose;
      QPrimerLdr.ParamByName('codigo').AsString:=Dato;
      QPrimerLdr.Open;
      if Not(QPrimerLdr.IsEmpty) Then
        if QPrimerLdr.Fields[0].AsString<>'' Then
          CDSNotaPedidoCabLDRSetText(CDSNotaPedidoCabLDR,QPrimerLdr.Fields[0].AsString)
        else
          begin
            ShowMessage('No tiene Ldr cargado....');
            CDSNotaPedidoCabLDR.Clear;
            CDSNotaPedidoCabMUESTRALDR.Clear;
          end;
      QPrimerLdr.CLose;
      //Traigo La condicion de vta or defecto
      QCondVentaDefecto.CLose;
      QCondVentaDefecto.ParamByName('codigo').AsString:=Dato;
      QCondVentaDefecto.Open;
      if (Not(QCondVentaDefecto.IsEmpty)) and
          (QCondVentaDefecto.Fields[0].AsString<>'') Then
          CDSNotaPedidoCabCONDICIONVTASetText(CDSNotaPedidoCabCONDICIONVTA,QCondVentaDefecto.Fields[0].AsString)
        else
          begin
           //Traigo La primera condicion de vta
            QPrimerConVta.CLose;
            QPrimerConVta.ParamByName('codigo').AsString:=Dato;
            QPrimerConVta.Open;
            if Not(QPrimerConVta.IsEmpty) Then
              if QPrimerConVta.Fields[0].AsString<>'' Then
                CDSNotaPedidoCabCONDICIONVTASetText(CDSNotaPedidoCabCONDICIONVTA,QPrimerConVta.Fields[0].AsString)
              else
                begin
                  ShowMessage('No tiene Condiciones de Vta. cargadas....');
                  CDSNotaPedidoCabCONDICIONVTA.Clear;
                  CDSNotaPedidoCabMUESTRACONDVENTA.Clear;
                end;
            QPrimerConVta.CLose;
          end;
      QCondVentaDefecto.CLose;

      if CDSClientesVENDEDOR.AsString<>'' Then
        CDSNotaPedidoCabVENDEDORSetText(CDSNotaPedidoCabVENDEDOR,CDSClientesVENDEDOR.AsString)
      else
        CDSNotaPedidoCabVENDEDORSetText(CDSNotaPedidoCabVENDEDOR,DMMain_FD.EmpleadoPorDefecto);
     // aca tomo la lista de precio del cliente si no dejo la que esta
      QBuscaListaPrecio.Close;
      QBuscaListaPrecio.ParamByName('id').Value:=CDSClientesLISTAPRECIOS.Value;
      QBuscaListaPrecio.Open;
      if QBuscaListaPrecioID.AsString<>'' then
        begin
          if CDSClientesLISTAPRECIOS.AsString<>'' Then
            BEGIN
              CDSNotaPedidoCabLISTAPRECIO.Value:=CDSClientesLISTAPRECIOS.Value;
              if ((FormNotaPedidoCliente.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString<>'') and
                 (FormNotaPedidoCliente.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsInteger>-1)) Then
              CDSNotaPedidoCabCONDICIONVTASetText(CDSNotaPedidoCabCONDICIONVTA,FormNotaPedidoCliente.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString);
            END
          else
            if (CDSNotaPedidoCabLISTAPRECIO.AsString<>'') and (FormNotaPedidoCliente.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsInteger>-1) Then
              CDSNotaPedidoCabCondicionVtaSetText(CDSNotaPedidoCabCONDICIONVTA,FormNotaPedidoCliente.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString);
        end;
       result:=True;
    END
  ELSE
    Result:=False;

  DMMain_FD.QOpciones.Close;
END;

FUNCTION TDatosNPedidoClientes.AsignarLdr(Cliente: STRING; Dato: integer): Boolean;
BEGIN
  CDSLdr.Close;
  CDSLdr.Params.ParamByName('Codigo').Value:=Cliente;
  CDSLdr.Params.ParamByName('Ldr').Value:=Dato;
  CDSLdr.Open;
  IF NOT (CDSLdr.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSNotaPedidoCabMuestraLdr.Value:=CDSLdrNombre.Value;
    END
  ELSE
    BEGIN
      CDSNotaPedidoCabMuestraLdr.Value:= '';
      Result:=False;
    END;
  CDSLdr.Close;
END;

FUNCTION TDatosNPedidoClientes.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value:=dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.IsEmpty) THEN
    BEGIN
      CDSNotaPedidoCabID_TIPOCOMPROBANTE.Clear;
      CDSNotaPedidoCabMUESTRACOMPROBANTE.Clear;
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal = :suc and ' +
                                                ' compra_venta = ''V'' and (tipo_comprob= ''PC'') ';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value         := Dato;
      DMBuscadores.CDSBuscaComprob.Open;
      if DMBuscadores.CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSNotaPedidoCabID_TIPOCOMPROBANTESetText(CDSNotaPedidoCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          FormNotaPedidoCliente.RxCCodigo.SetFocus;
        end
      else
        begin
          DMBuscadores.CDSBuscaComprob.Filtered:=False;
          DMBuscadores.CDSBuscaComprob.Filter  :='(DEFECTO = ''S'' ) and ( EN_USO = ''S'' )';
          DMBuscadores.CDSBuscaComprob.Filtered:=True;
          if DMBuscadores.CDSBuscaComprob.RecordCount>0 then
            begin
              DMBuscadores.CDSBuscaComprob.First;
              if DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString<>'' then
                begin
                  CDSNotaPedidoCabID_TIPOCOMPROBANTESetText(CDSNotaPedidoCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
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
                      CDSNotaPedidoCabID_TIPOCOMPROBANTESetText(CDSNotaPedidoCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
                    end;
               end;
            end;
        end;
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.Filter:='';
      DMBuscadores.CDSBuscaComprob.Filtered:=False;

      Result:=True;
      CDSNotaPedidoCabMuestraSucursal.Value:=CDSSucursalDetalle.Value;

      //**************************************************************************
      //****Asigno la Lsta Por defecto  o la primera *****************************
      //**************************************************************************
      CDSNotaPedidoCabLISTAPRECIO.Value:=DMMain_FD.ListaPorDefecto;
      //***********************************************************
      // Asigno la lista por sucursal
      //***********************************************************
      CDSNotaPedidoCabLISTAPRECIO.Value:= DMMain_FD.listaPorDefecto(DMMain_FD.SucursalPorDef);
       //***************************************************************
      // aca tomo la lista de precio del cliente si no dejo la que esta
      //***************************************************************
      if (CDSNotaPedidoCabCODIGO.AsString<>'') then
        begin
          CDSClientes.Close;
          CDSClientes.Params.ParamByName('Codigo').Value:=CDSNotaPedidoCabCODIGO.AsString;
          CDSClientes.Open;
          QBuscaListaPrecio.Close;
          QBuscaListaPrecio.ParamByName('id').Value:=CDSClientesLISTAPRECIOS.Value;
          QBuscaListaPrecio.Open;
          if QBuscaListaPrecioID.AsString<>'' then
            begin
              CDSNotaPedidoCabLISTAPRECIO.Value:=QBuscaListaPrecioID.Value;
              if (FormNotaPedidoCliente.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString<>'') and
                 (FormNotaPedidoCliente.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsInteger>-1)  Then
              CDSNotaPedidoCabCondicionVtaSetText(CDSNotaPedidoCabCONDICIONVTA,FormNotaPedidoCliente.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString);
            end;
          CDSClientes.Close;
          QBuscaListaPrecio.Close;
        end;
      //***************************************************************
      //***************************************************************


    END
  ELSE
    Result:=False;
  CDSSucursal.Close;
END;

FUNCTION TDatosNPedidoClientes.AsignarCondVenta(Cliente: STRING; Dato: Integer): Boolean;
BEGIN
  CDSCondVenta.Close;
  CDSCondVenta.Params.ParamByName('Codigo').Value:=Cliente;
  CDSCondVenta.Params.ParamByName('CodigoPago').Value:=Dato;
  CDSCondVenta.Open;
  IF NOT (CDSCondVenta.Eof) THEN
    BEGIN
      Result:=True;
      CDSNotaPedidoCabMuestraCondVenta.Value := CDSCondVentaDetalle.Value;
      CDSNotaPedidoCabFECHAVTO.AsDateTime    := CDSNotaPedidoCabFECHAPEDIDO.AsDateTime + CDSCondVentaDIAS.AsInteger;
      CDSNotaPedidoCabDSTO.AsFloat           := CDSCondVentaDESCUENTO.AsFloat;
    END
  ELSE
    Result:=False;
  CDSCondVenta.Close;
END;

FUNCTION TDatosNPedidoClientes.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value:=Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.Eof) THEN
    BEGIN
      Result:=True;
      CDSNotaPedidoCabMuestraDeposito.Value:=CDSDepositoNOMBRE.Value;
    END
  ELSE
    Result:=False;
  CDSDeposito.Close;
END;

FUNCTION TDatosNPedidoClientes.AsignarVendedor(Dato: String): Boolean;
BEGIN
  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('codigo').Value:=Dato;
  CDSPersonal.Open;
  IF NOT (CDSPersonal.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSNotaPedidoCabMUESTRAVENDEDOR.Value   := CDSPersonalNOMBRE.Value;
      CDSNotaPedidoCabCOMISIONVENDEDOR.AsFloat:= CDSPersonalCOMISION.AsFloat;
    END
  ELSE
    begin
      Result:=False;
      CDSNotaPedidoCabMUESTRAVENDEDOR.Clear;
      CDSNotaPedidoCabCOMISIONVENDEDOR.Clear;
    end;
  CDSPersonal.Close;
END;

function TDatosNPedidoClientes.HayParaFacturar(Datos:TClientDataSet):Boolean;
begin
  Result:=False;
  Datos.First;
  while (Not(Datos.Eof)) and (Result=False) DO
    begin
      if Datos.FieldByName('CANTIDAD_ENTREGADA').Value>0 Then Result:=True;
      Datos.Next;
    end;
end;

function TDatosNPedidoClientes.GeneraCopiaNP(Datos:TClientDataSet):Boolean;
begin
  Result:=False;
  Datos.First;
  while (Not(Datos.Eof)) and (Result=False) DO
    begin
      if Datos.FieldByName('CANTIDAD_FALTANTE').Value>0 Then Result:=True;
      Datos.Next;
    end;
end;

procedure TDatosNPedidoClientes.DataModuleDestroy(Sender: TObject);
begin
  DatosNPedidoClientes:=nil;
end;

procedure TDatosNPedidoClientes.CDSNotaPedidoCabLDRSetText(Sender: TField;
  const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarLdr(CDSNotaPedidoCabCodigo.Value, Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo L.D.R no Válido');
          FormNotaPedidoCliente.RxCLdr.SetFocus;
        END;
    END;
end;

procedure TDatosNPedidoClientes.CDSNotaPedidoCabDEPOSITOSetText(
  Sender: TField; const Text: String);
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

procedure TDatosNPedidoClientes.CDSNotaPedidoCabNETOGRAV1GetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
VAR
  Aux: real;
BEGIN
  Aux:=(Sender.AsFloat);
  IF CDSNotaPedidoCabDesglozaIva.Value = 'N' THEN
    Aux:=(Aux + (Aux * TasaReal * 0.01));
  Text:=FormatFloat(MascaraCabecera,Aux);
END;

procedure TDatosNPedidoClientes.CDSNotaPedidoCabDSTOSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=Text;
  SumarDetalle;
  CalcularTotales;
end;

procedure TDatosNPedidoClientes.CDSNotaPedidoCabCODIGOSetText(
  Sender: TField; const Text: String);
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
          FormNotaPedidoCliente.RxCCodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      FormNotaPedidoCliente.RxCCodigo.Text:=Aux;
    end;  
END;

procedure TDatosNPedidoClientes.CDSNotaPedidoCabCONDICIONVTASetText(
  Sender: TField; const Text: String);
begin
 IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF (NOT (AsignarCondVenta(CDSNotaPedidoCabCodigo.Value, Sender.AsInteger))) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Cond.Vta no Válido');
          FormNotaPedidoCliente.RxCConVta.SetFocus;
        END;
    END;
end;

procedure TDatosNPedidoClientes.CDSNotaPedidoCabNETOGRAV2GetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
VAR Aux:Real;
begin
  Aux:=(Sender.AsFloat);
  IF CDSNotaPedidoCabDesglozaIva.Value = 'N' THEN
    Aux:=(Aux + (Aux * TasaReal * 0.01));
  Text:=FormatFloat(MascaraCabecera,Aux);

end;

procedure TDatosNPedidoClientes.CDSNotaPedidoCabSUCNPSetText(
  Sender: TField; const Text: String);
VAR
  Aux: STRING;
BEGIN
  Aux:=Text;
  Aux:=Copy('0000', 1, 4 - Length(Aux)) + Aux;
  Sender.AsString:=Aux;
  CDSNotaPedidoCabNROCPBTE.Value := CDSNotaPedidoCabLETRANP.Value + CDSNotaPedidoCabSUCNP.Value +
  CDSNotaPedidoCabNUMERONP.Value;
end;

procedure TDatosNPedidoClientes.CDSNotaPedidoCabNUMERONPSetText(
  Sender: TField; const Text: String);
begin
 Sender.AsString:=Copy('000000000', 1, Sender.Size - Length(Text)) + Text;
  CDSNotaPedidoCabNROCPBTE.Value := CDSNotaPedidoCabLETRANP.Value + CDSNotaPedidoCabSUCNP.Value + CDSNotaPedidoCabNUMERONP.Value;

end;

procedure TDatosNPedidoClientes.CDSNotaPedidoCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
 if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Dato no Valido');
          FormNotaPedidoCliente.RxCTipoCpbte.SetFocus;
        END;
      IF CDSNotaPedidoCab.State = dsInsert THEN
        UltimoComprobante;
    end;
end;

procedure TDatosNPedidoClientes.CDSNotaPedidoCabVENDEDORSetText(
  Sender: TField; const Text: String);
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

procedure TDatosNPedidoClientes.CDSNotaPedidoCabSUCURSALSetText(
  Sender: TField; const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Sucursal No Valido');
          FormNotaPedidoCliente.RxCSucursal.SetFocus;
        END
      ELSE IF CDSNotaPedidoCab.State = dsInsert THEN
        UltimoComprobante;
    END;
end;

procedure TDatosNPedidoClientes.CDSNotaPedidoDetCODIGOARTICULOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
if FormNotaPedidoCliente<>nil then
    begin
      if FormNotaPedidoCliente.VerCodigoAlternativo1.Checked=True then
        Text:=Trim(CDSNotaPedidoDetMUESTRACODALTERNATIVO.Value)
      else
       Text:=Trim(CDSNotaPedidoDetCODIGOARTICULO.Value);
    end;

//  if VerCodigoAlternativo then
//    Text:=Trim(CDSNotaPedidoDetMUESTRACODALTERNATIVO.Value)
//  else
//    Text:=Trim(CDSNotaPedidoDetCODIGOARTICULO.Value);
end;

procedure TDatosNPedidoClientes.CDSNotaPedidoDetCODIGOARTICULOSetText(
  Sender: TField; const Text: String);
VAR S,CodTxt,Aux: STRING;
Enter:Char;
BEGIN
  Enter:=#13;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      If CDSNotaPedidoDet.State=dsBrowse Then
        CDSNotaPedidoDet.edit;

     DMBuscadores.QBuscaStock.Close;
      CodTxt:=copy(Text,1,8);

      if FormNotaPedidoCliente.VerCodigoAlternativo1.Checked then
        CodTxt:='********';

      if DMMain_FD.JustificaCodigo='D' Then
        CodTxt:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(CodTxt)) + CodTxt
      else
        if DMMain_FD.JustificaCodigo='I' Then
          CodTxt:=CodTxt+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(CodTxt));
      DMBuscadores.QBuscaStock.ParamByName('Codigo').Value:=CodTxt;
      DMbuscadores.QBuscaStock.Open;
      if Trim(DMBuscadores.QbuscaStockCODIGO_STK.AsString)<>'' then
         Sender.AsString:=DMBuscadores.QbuscaStockCODIGO_STK.Value;

      if Trim(DMBuscadores.QbuscaStockCODIGO_STK.AsString)='' then
        begin
          DMMain_FD.CDSCodigoBarra.Close;
          DMMain_FD.CDSCodigoBarra.Params.ParamByName('CodigoBarra').AsString:=Text;
          DMMain_FD.CDSCodigoBarra.Open;
          If DMMain_FD.CDSCodigoBarra.Fields[0].AsString='' Then
            begin
              DMMain_FD.CDSCodigoBarra.Close;
              DMMain_FD.CDSCodigoBarra.Params.ParamByName('CodigoBarra').AsString:=Copy(Text,1,length(Trim(Text))-1);
              DMMain_FD.CDSCodigoBarra.Open;
            end;
          If DMMain_FD.CDSCodigoBarra.Fields[0].AsString<>'' Then
            begin
              if DMMain_FD.CDSCodigoBarra.RecordCount>1 Then
                begin
                  if Not(Assigned(FormMuestraListaCodigoBarra)) Then
                    FormMuestraListaCodigoBarra:=TFormMuestraListaCodigoBarra.Create(application);
                  FormMuestraListaCodigoBarra.CodigoBarra:=UpperCase(Text);
                  FormMuestraListaCodigoBarra.ShowModal;
                  Sender.AsString:=FormMuestraListaCodigoBarra.Codigo;
                end
              else
                Sender.AsString:=DMMain_FD.CDSCodigoBarra.Fields[0].AsString;
              DMMain_FD.EncontroCodigoBarra:=True;
            end;
        end;


        //**************************************
        // Busqueda por PLU Balanza
        DMMain_FD.DesdePLU:=False;
        If (DMMain_FD.CDSCodigoBarra.Fields[0].AsString='') and (Sender.ASString='') Then
          begin
            DMMain_FD.DesdePLU:=False;
            //Busca PLU Agregado para los chinos
            if Length(Trim(Text))>8 then
              CodTxt:= Copy(Trim(Text),DMMain_FD.CodInicioPlu,DMMain_FD.CodLongPlu)
            else
              CodTxt:='';
            if CodTxt<>'' then
              begin
                CodTxt:= '00000000'+CodTxt;
                CodTxt:= AnsiRightStr(CodTxt,5);
                DMbuscadores.QBuscaStockPLU.Close;
                DMBuscadores.QBuscaStockPLU.ParamByName('Codigo').Value:=CodTxt;
                DMbuscadores.QBuscaStockPLU.Open;
                if Not(DMbuscadores.QBuscaStockPLU.IsEmpty) then
                  begin
                    DMMain_FD.DesdePLU := True;
                    Sender.AsString   := DMbuscadores.QBuscaStockPLUCODIGO_STK.AsString;
                    Aux      := Copy(Trim(Text),DMMain_FD.PesoInioPLU,DMMain_FD.PesoLongPLU);
                    if Aux='' then Aux:='0';
                    DMMain_FD.PrecioPlu:= Aux;
                  end
                else
                  Sender.AsString:='';
              end
            else
              Sender.AsString:='';
          end;
        //********* fin Busqueda PLU ********************
        //***********************************************
        if (DMMain_FD.DesdePLU=False) and (Sender.AsString='') Then
          begin
            // BUsco por el serie ...
            DMBuscadores.QConsultaCodigoSerie.Close;
            DMBuscadores.QConsultaCodigoSerie.ParamByName('CodigoSerie').AsString:=UpperCase(Text);
            DMBuscadores.QConsultaCodigoSerie.Open;
            If DMBuscadores.QConsultaCodigoSerieCODIGO_STK.AsString='' Then
              begin
                // Sender.AsString:=Text;
                DMMain_FD.EncontroCodigoBarra:=False;
                // **** BUsco por Alternativo **************************...
                DMBuscadores.QConsultaPorCodAlt.Close;
                DMBuscadores.QConsultaPorCodAlt.ParamByName('Codigo').AsString:=Trim(Text);
                DMBuscadores.QConsultaPorCodAlt.Open;
                If DMBuscadores.QConsultaPorCodAltCODIGO_STK.AsString='' Then
                  begin
                    Sender.AsString             :=Text;
                    DMMain_FD.EncontroCodigoBarra:=False;
                  end
                else
                  begin
                    Sender.AsString:=DMBuscadores.QConsultaPorCodAltCODIGO_STK.AsString;
                    DMMain_FD.EncontroCodigoBarra:=False;
                  end;
                //***************************************************
              end
            else
              begin
                Sender.AsString:=DMBuscadores.QConsultaCodigoSerieCODIGO_STK.AsString;
                DMMain_FD.EncontroCodigoBarra:=True;
              end;
            DMBuscadores.QConsultaCodigoSerie.Close;
          end;

      DMBuscadores.QbuscaStock.Close;

      S:=Sender.AsString;
      if DMMain_FD.JustificaCodigo='D' Then
        S:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S)) + S
      else
        if DMMain_FD.JustificaCodigo='I' Then
          S:=S+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S));

      Sender.AsString:=S;
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
          FormBuscadorArticulos.ListaPrecio:= DatosNPedidoClientes.CDSNotaPedidoCabLISTAPRECIO.Value;
          FormBuscadorArticulos.Esquema    := -1;
          FormBuscadorArticulos.Dato              := s;//Text;
          if FormBuscadorArticulos.Visible=False Then
            FormBuscadorArticulos.ShowModal;
          if FormBuscadorArticulos.Codigo<>'' Then
            begin
              IF CDSNotaPedidoDet.State = dsBrowse THEN
                CDSNotaPedidoDet.Edit;
              CDSNotaPedidoDetCodigoArticuloSetText(CDSNotaPedidoDetCodigoArticulo,FormBuscadorArticulos.Codigo);
            end
          else
            Sender.AsString:='';
        END;
      if DMMain_FD.EncontroCodigoBarra Then
        FormNotaPedidoCliente.DBGrillaDetalle.OnKeyPress(FormNotaPedidoCliente.DBGrillaDetalle,Enter);
    end;
end;

procedure TDatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_PEDIDIASetText(
  Sender: TField; const Text: String);
VAR
  Aux1, Aux2, Aux3: Extended;
  TextAux:String;
BEGIN
  if Text<>'' Then
    begin
      TextAux:=Text;
      if (TextAux[1]='-') Then Delete(TextAux,1,1);

      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);
      Sender.AsString := TextAux;

      // Verific tambien si no viene de un rto....

      if (DMMain_FD.VenderSinStock=False) and (DatosNPedidoClientes.CDSNotaPedidoDetAfecta_Stock.Value='S') Then
         begin
           DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
           DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('codigo').AsString    :=CDSNotaPedidoDetCodigoArticulo.Value;
           DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('deposito').AsInteger :=CDSNotaPedidoCabDeposito.Value;
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

      Aux1:= CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;
      Aux2:= CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat;

      if (CDSNotaPedidoDetModo_Gravamen.Value<>'') then
        if ((CDSNotaPedidoCabDesglozaIva.Value = 'S') and (FormNotaPedidoCliente.DiscriminaIva='N')) and (CDSNotaPedidoDetModo_Gravamen.Value[1] in ['G','M']) THEN
          Aux2:= Aux2 + CDSNotaPedidoDetIVA_UNITARIO.AsFloat
        else
          if (CDSNotaPedidoCabDesglozaIva.Value = 'N') and (CDSNotaPedidoDetModo_Gravamen.Value[1] in ['G','M']) THEN
            Aux2:= Aux2 + CDSNotaPedidoDetIVA_UNITARIO.AsFloat;

      Aux3:= Aux1 + Aux2;

      if CDSNotaPedidoDetPRESENTACION_CANTI.AsFloat>0 then
        CDSNotaPedidoDetCANTIDAD_UNIDADES.AsFloat:= Sender.AsFloat/CDSNotaPedidoDetPRESENTACION_CANTI.AsFloat
      else
        CDSNotaPedidoDetCANTIDAD_UNIDADES.AsFloat:= Sender.AsFloat;

      CDSNotaPedidoDetUnitario_TotalSetText(CDSNotaPedidoDetUNITARIO_TOTAL,FloatToStr(Aux3));
      CDSNotaPedidoDetCANTIDAD_FALTANTE.AsFloat:=CDSNotaPedidoDetCANTIDAD_PEDIDIA.AsFloat;
    end;
END;

procedure TDatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_TOTALSetText(
  Sender: TField; const Text: String);
VAR Num, P_Exento, P_Gravado,Pt_Exento, Pt_Gravado,Pt_Final, Descuento,Cantidad,TasaIva,Aux3,ImporteIva:  Extended;
  TextAux:String;
BEGIN
  if Text<>'' Then
    begin
      TextAux:=Text;
      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);
      if CDSNotaPedidoDet.State=dsBrowse Then CDSNotaPedidoDet.Edit;

      Num:=StrToFloat(TextAux);

      IF CDSNotaPedidoDetMODO_GRAVAMEN.Value <> '' THEN
        CASE CDSNotaPedidoDetMODO_GRAVAMEN.Value[1] OF
          'E': CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat := Num;
          'G': CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat:= Num;
          'M','I','Y':CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat:= Num-CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;
        END;
      Cantidad  := CDSNotaPedidoDetCANTIDAD_PEDIDIA.AsFloat;
      Descuento := 1 - CDSNotaPedidoDetDESCUENTO.AsFloat * 0.01;
      TasaIva   := 1 + CDSNotaPedidoDetIVA_TASA.AsFloat * 0.01;

      P_Exento  := CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat ;
      P_Gravado := CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat;

      // calculo el total de la linea
      Pt_Gravado :=  P_Gravado * Cantidad * Descuento;
      Pt_Exento  :=  P_Exento * Cantidad * Descuento;
      // calculo de IVA
      ImporteIva :=  (Pt_gravado * TasaIva)- Pt_Gravado;

      CDSNotaPedidoDetIVA_UNITARIO.AsFloat := (P_Gravado * TasaIva) - P_Gravado;

      if ((CDSNotaPedidoCabDESGLOZAIVA.Value='N') or (FormNotaPedidoCliente.DiscriminaIva='N')) and (CDSNotaPedidoDetMODO_GRAVAMEN.AsString[1] in ['G','M']) Then
        begin
          P_Gravado:= CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat / TasaIva;
          CDSNotaPedidoDetIVA_UNITARIO.AsFloat := CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat - P_Gravado;
          // *** Calculo el total de la linea
          Pt_Final   :=  (P_Gravado + CDSNotaPedidoDetIVA_UNITARIO.ASFloat) * Cantidad * Descuento;
          Pt_Gravado :=  Pt_Final  / TasaIva;
          Pt_Exento  :=  P_Exento * Cantidad * Descuento;
          // Calculo de IVA
          ImporteIva :=  Pt_Final - Pt_gravado;
        end;

      CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat :=P_Gravado;

      CDSNotaPedidoDetTOTAL_GRAVADO.AsFloat :=  RoundTo(Pt_Gravado,-2);
      CDSNotaPedidoDetTOTAL_EXENTO.AsFloat  :=  RoundTo(Pt_Exento,-2);
      ImporteIva:=RoundTo(ImporteIva,-3);
      CDSNotaPedidoDetIVA_TOTAL.AsFloat     :=  RoundTo(ImporteIva,-2);

      CDSNotaPedidoDetTOTAL.AsFloat         :=  RoundTo((Pt_Gravado+Pt_Exento),-2);

      // **************** Calculo el Margen ******************
      if (CDSNotaPedidoDetCOSTO_TOTAL.AsFloat>0) and (CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat>0) then
          CDSNotaPedidoDetMARGEN.AsFloat := RoundTo(((CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat - CDSNotaPedidoDetCosto_Total.AsFloat)/
                                                 CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat)*100,-2)
      else
        CDSNotaPedidoDetMARGEN.AsFloat:= 100;
      // *****************************************************

      Aux3:= (P_Gravado+P_Exento);

      Sender.AsString := FloatToStr(Aux3);

      if (CDSNotaPedidoDetMODO_GRAVAMEN.Value[1]='E') and (CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat>0) Then
        begin
          Sender.AsString:='0';
          CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat:=0;
          CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat :=0;
          CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat  :=0;
          CDSNotaPedidoDetTOTAL.AsFloat           :=0;
          raise Exception.Create('El artículo Figura Como Exento y tiene Costo Gravado...');
        end;
      if (CDSNotaPedidoDetMODO_GRAVAMEN.Value[1]='G') and (CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat>0) Then
        begin
          Sender.AsString:='0';
          CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat:=0;
          CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat :=0;
          CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat  :=0;
          CDSNotaPedidoDetTOTAL.AsFloat           :=0;
          raise Exception.Create('El artículo Figura Como Gravado y tiene Costo exento...');
        end;

   end;
END;


procedure TDatosNPedidoClientes.CDSNotaPedidoImpNewRecord(DataSet: TDataSet);
begin
   CDSNotaPedidoImpID_IMPUESTO.Value:=IBGImpuesto.IncrementFD(1);
   CDSNotaPedidoImpID_NPCAB.Value:= CDSNotaPedidoCabID.Value;
end;

procedure TDatosNPedidoClientes.CDSNotaPedidoDetUNITARIO_TOTALGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
VAR
  Aux1: Extended;
BEGIN
  Aux1:=CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat;
  if (CDSNotaPedidoDetMODO_GRAVAMEN.Value<>'') and (CDSNotaPedidoDetMODO_GRAVAMEN.Value[1] in ['G','M']) Then
    if (CDSNotaPedidoCabDESGLOZAIVA.Value='S') and (FormNotaPedidoCliente.DiscriminaIva='N') then
      Aux1:= CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat + CDSNotaPedidoDetIVA_UNITARIO.AsFloat
    else
      if (CDSNotaPedidoCabDESGLOZAIVA.Value='N')then
        Aux1:= CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat + CDSNotaPedidoDetIVA_UNITARIO.AsFloat;

  Text:= FormatFloat(MascaraDetalleUnitario,Aux1);
END;


procedure TDatosNPedidoClientes.CDSNotaPedidoCabBeforePost(
  DataSet: TDataSet);
begin
  CDSNotaPedidoCabNroCpbte.Value := CDSNotaPedidoCabLETRANP.Value + CDSNotaPedidoCabSUCNP.Value +
                                    CDSNotaPedidoCabNUMERONP.Value;
end;

procedure TDatosNPedidoClientes.CDSNotaPedidoCabNewRecord(
  DataSet: TDataSet);
begin
  CDSNotaPedidoCabID.Value                 := IBGNP_Cab.IncrementFD(1);
  CDSNotaPedidoCabNombre.AsString          := '';
  CDSNotaPedidoCabRazonSocial.AsString     := '';
  CDSNotaPedidoCabCuit.AsString            := '';
  CDSNotaPedidoCabDireccion.AsString       := '';
  CDSNotaPedidoCabTipoIVA.AsString         := '';
  CDSNotaPedidoCabCPostal.AsString         := '';
  CDSNotaPedidoCabLETRANP.AsString         := 'X';
  CDSNotaPedidoCabID_PEDIDO_MOVIL.Value    := -1;
  CDSNotaPedidoCabImpreso.AsString         := 'N';
  CDSNotaPedidoCabESTADO.AsString          := 'N';
  CDSNotaPedidoCabSUCNP.AsString           := '0000';
  CDSNotaPedidoCabNUMERONP.AsString        := '00000000';
  CDSNotaPedidoCabDsto.ASFloat             := 0;
  CDSNotaPedidoCabNetoExen1.AsFloat        := 0;
  CDSNotaPedidoCabNetoExen2.AsFloat        := 0;
  CDSNotaPedidoCabFECHAPEDIDO.AsDateTime   := Date;
  CDSNotaPedidoCabDeposito.Clear;
  CDSNotaPedidoCabTipoCpbte.AsString       := '';
  CDSNotaPedidoCabCOMISIONVENDEDOR.AsFloat := 0;
  CDSNotaPedidoCabUSUARIO.Value            := DMMain_FD.UsuarioActivo;

  CDSNotaPedidoCabSUCURSALSetText(CDSNotaPedidoCabSUCURSAL,IntToStr(FormNotaPedidoCliente.SucursalPorDefecto));
  CDSNotaPedidoCabDEPOSITOSetText(CDSNotaPedidoCabDEPOSITO,IntToStr(FormNotaPedidoCliente.DepositoPorDefecto));

  //**************************************************************************
  //****Asigno la Lista Por defecto o la lista asignada **********************
  //**************************************************************************
  CDSNotaPedidoCabLISTAPRECIO.Value := DMMain_FD.ListaPorDefecto;
  //***********************************************************
  // Asigno la lista por sucursal
  //***********************************************************
  CDSNotaPedidoCabLISTAPRECIO.Value := DMMain_FD.ListaPorDefecto(DMMain_FD.SucursalPorDef);
  //***********************************************************
  //***********************************************************
  CDSNotaPedidoCabPRESUPUESTO_ID.Value       := -1;
  CDSNotaPedidoCabPRESUPUESTO_NROCPBTE.Value := '';

  CDSNotaPedidoCabFACTURA_ID.Value           := -1;
  CDSNotaPedidoCabFACTURA_NROCPBTE.Value     := '';

  FormNotaPedidoCliente.dbeFechaVta.SetFocus;
  FormNotaPedidoCliente.dbeFechaVta.SelectAll;
  CDSNotaPedidoCabCOPIA.Value                := 0;
end;

procedure TDatosNPedidoClientes.CDSNotaPedidoDetAfterDelete(
  DataSet: TDataSet);
begin
  SumarDetalle;
  CalcularTotales;
  // Borrar Los renglones con valor 0 (cero)....
  CDSNotaPedidoImp.EnableControls;
  CDSNotaPedidoImp.First;
  WHILE NOT (CDSNotaPedidoImp.Eof) DO
    BEGIN
      IF (Trunc(CDSNotaPedidoImpImporte.AsFloat * 1000) <= 0) OR (Trunc(CDSNotaPedidoImpTasa.AsFloat * 1000) <= 0)
        THEN
        CDSNotaPedidoImp.Delete;
      CDSNotaPedidoImp.Next;
    END;
end;

procedure TDatosNPedidoClientes.CDSNotaPedidoDetAfterInsert(
  DataSet: TDataSet);
begin
IF (CDSNotaPedidoDet.RecordCount > Renglones) THEN
    BEGIN
      ShowMessage('No se pueden Ingresar más Items' + #13 +
        'Evento - (AfterInsert)');
      SysUtils.Abort;
      CDSNotaPedidoDet.Cancel;
    END
  ELSE IF (CDSNotaPedidoCabCODIGO.AsString = '') OR (CDSNotaPedidoCabNUMERONP.AsString
    = '') THEN
    BEGIN
      SysUtils.Abort;
      CDSNotaPedidoDet.Cancel;
    END
  ELSE IF (CDSNotaPedidoCabImpreso.Value = 'S') THEN
    BEGIN
      ShowMessage('No se puede modificar'#13'un comprobante ya impreso');
      SysUtils.Abort;
      IF CDSNotaPedidoDet.State IN [dsEdit, dsInsert] THEN
        CDSNotaPedidoDet.Cancel;
      IF CDSNotaPedidoCab.State IN [dsEdit, dsInsert] THEN
        CDSNotaPedidoCab.Cancel;
    END;
end;

procedure TDatosNPedidoClientes.CDSNotaPedidoDetAfterPost(
  DataSet: TDataSet);
begin
  SumarDetalle;
  CalcularTotales;

  // Borrar Los renglones con valor 0 (cero)....
  CDSNotaPedidoImp.EnableControls;
  CDSNotaPedidoImp.First;
  WHILE NOT (CDSNotaPedidoImp.Eof) DO
    BEGIN
      IF (Trunc(CDSNotaPedidoImpImporte.AsFloat * 1000) <= 0) OR (Trunc(CDSNotaPedidoImpTasa.AsFloat * 1000) <= 0)
        THEN
        CDSNotaPedidoImp.Delete;
      CDSNotaPedidoImp.Next;
    END;
  FormNotaPedidoCliente.HayPendientes;
end;

procedure TDatosNPedidoClientes.CDSNotaPedidoDetBeforePost(
  DataSet: TDataSet);
begin
  IF CDSNotaPedidoDet.State IN [dsInsert, dsEdit] THEN
    CDSNotaPedidoDetNROCPBTE.Value:=CDSNotaPedidoCabLETRANP.Value + CDSNotaPedidoCabSUCNP.Value + CDSNotaPedidoCabNUMERONP.Value;
  IF ((CDSNotaPedidoDetCodigoArticulo.AsString = '') OR (CDSNotaPedidoDet.RecordCount-1 > Renglones)) AND
    (CDSNotaPedidoDet.State IN [dsInsert, dsEdit])
    THEN
    BEGIN
      CDSNotaPedidoDet.Cancel;
      SysUtils.Abort;
    END;
end;

procedure TDatosNPedidoClientes.CDSNotaPedidoDetNewRecord(
  DataSet: TDataSet);
begin
IF (CDSNotaPedidoDet.RecordCount > Renglones) THEN
    CDSNotaPedidoDet.Cancel
  ELSE
    BEGIN
      CDSNotaPedidoDetID.Value                   := IBGNP_Det.IncrementFD(1);
      CDSNotaPedidoDetID_CABNP.Value             := CDSNotaPedidoCabID.Value;
      CDSNotaPedidoDetRENGLON.AsInteger          := CDSNotaPedidoDet.RecordCount + 1;
      CDSNotaPedidoDetNRO.AsInteger              := CDSNotaPedidoDetRENGLON.AsInteger;

      CDSNotaPedidoDetDETALLE.Value              := '';
      CDSNotaPedidoDetUNIDAD.Value               := '';
      CDSNotaPedidoDetCANTIDAD_PEDIDIA.AsFloat   := 0;
      CDSNotaPedidoDetCANTIDAD_ENTREGADA.AsFloat := 0;
      CDSNotaPedidoDetCANTIDAD_FALTANTE.AsFloat  := 0;

      CDSNotaPedidoDetCOSTO_EXENTO.AsFloat       := 0;
      CDSNotaPedidoDetCOSTO_GRAVADO.AsFloat      := 0;
      CDSNotaPedidoDetCOSTO_TOTAL.AsFloat        := 0;
      CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat    := 0;
      CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat   := 0;
      CDSNotaPedidoDetUNITARIO_TOTAL.AsFloat     := 0;
      CDSNotaPedidoDetTOTAL.AsFloat              := 0;
      CDSNotaPedidoDetDESCUENTO.AsFloat          := 0;
      CDSNotaPedidoDetIVA_TASA.AsFloat           := 0;
      CDSNotaPedidoDetIVA_SOBRETASA.AsFloat      := 0;
      CDSNotaPedidoDetDESGLOZAIVA.Value          := '';
      CDSNotaPedidoDetMODO_GRAVAMEN.Value        := '';
      CDSNotaPedidoDetTIPOIVA_TASA.AsFloat       := 0;
      CDSNotaPedidoDetIVA_UNITARIO.AsFloat       := 0;
      CDSNotaPedidoDetIVA_TOTAL.AsFloat          := 0;
      CDSNotaPedidoDetTOTAL_GRAVADO.AsFloat      := 0;
      CDSNotaPedidoDetTOTAL_EXENTO.AsFloat       := 0;
      CDSNotaPedidoDetPRESENTACION_CANTI.AsFloat := 1;
      CDSNotaPedidoDetCANTIDAD_UNIDADES.AsFloat  := 0;

      CDSNotaPedidoDetNroCpbte.AsString          := CDSNotaPedidoCabNroCpbte.AsString;
      CDSNotaPedidoDetFECHAPEDIOD.AsDateTime     := CDSNotaPedidoCabFECHAPEDIDO.AsDateTime;
      CDSNotaPedidoDetTIPOCPBTE.AsString         := CDSNotaPedidoCabTipoCpbte.AsString;
      CDSNotaPedidoDetCLASECPBTE.AsString        := CDSNotaPedidoCabCLASECPBTE.AsString;
    END;
end;

procedure TDatosNPedidoClientes.CDSNotaPedidoDetCalcFields(DataSet: TDataSet);
begin
  //  CDSNotaPedidoDetNRO.Value:=CDSNotaPedidoDet.RecNo;
//  if (CDSNotaPedidoDet.State in [dsInsert])  then
//    CDSNotaPedidoDetNRO.Value:=CDSNotaPedidoDet.RecordCount+1;
end;

procedure TDatosNPedidoClientes.CDSNotaPedidoDetCANTIDAD_ENTREGADASetText(
  Sender: TField; const Text: String);
Var TextAux:String;
begin
  if (Text<>#13) and (Text<>'') Then
    begin
     TextAux:=Text;
      if (TextAux[1]='-') Then Delete(TextAux,1,1);
      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);
      Sender.AsString := TextAux;
     if (CDSNotaPedidoDetCANTIDAD_PEDIDIA.AsFloat - CDSNotaPedidoDetCANTIDAD_ENTREGADA.AsFloat)<0 Then
        begin
          Sender.AsString:='0';
          CDSNotaPedidoDetCANTIDAD_FALTANTE.AsFloat:= CDSNotaPedidoDetCANTIDAD_PEDIDIA.AsFloat;

          raise Exception.Create(' No se pueden sacar mas items de lo pedido');
        end
      else
         CDSNotaPedidoDetCANTIDAD_FALTANTE.AsFloat:= CDSNotaPedidoDetCANTIDAD_PEDIDIA.AsFloat -
                                                     CDSNotaPedidoDetCANTIDAD_ENTREGADA.AsFloat;
     if CDSNotaPedidoDetPRESENTACION_CANTI.AsFloat>0 then
       CDSNotaPedidoDetCANTIDAD_UNIDADES.AsFloat:= Sender.AsFloat/CDSNotaPedidoDetPRESENTACION_CANTI.AsFloat
     else
       CDSNotaPedidoDetCANTIDAD_UNIDADES.AsFloat:= Sender.AsFloat;
     end;
end;

end.