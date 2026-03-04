UNIT DMClientes;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, Provider,StrUtils,
  Variants, FMTBcd, SqlExpr, IBGenerator, dateUtils, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, IniFiles;

TYPE
  TDatosClientes = CLASS(TDataModule)
    DSPClientes: TDataSetProvider;
    DSPLdr: TDataSetProvider;
    DSPCondVenta: TDataSetProvider;
    DSPLstClientes: TDataSetProvider;
    DSBuscaFc: TDataSource;
    DSListaPrecios: TDataSource;
    DSBuscaFO: TDataSource;
    CDSCondVenta: TClientDataSet;
    CDSCondVentaCODIGOPAGO: TIntegerField;
    CDSCondVentaDETALLE: TStringField;
    DSFCondVenta: TDataSource;
    DSCoeficientes: TDataSource;
    DSPCoeficientes: TDataSetProvider;
    CDSCoeficientes: TClientDataSet;
    CDSCoeficientesCODIGO: TStringField;
    CDSCoeficientesID_LISTA_PRECIO: TIntegerField;
    CDSCoeficientesPOR_DEFECTO: TStringField;
    DSBuscaZonas: TDataSource;
    DSBuscaVendedores: TDataSource;
    DSLstClientes: TDataSource;
    CDSLstClientes: TClientDataSet;
    CDSLstClientesCODIGO: TStringField;
    CDSLstClientesNOMBRE: TStringField;
    CDSLstClientesRAZON_SOCIAL: TStringField;
    CDSLstClientesDIRECCION_COMERCIAL: TStringField;
    CDSLstClientesTELEFONO_COMERCIAL_1: TStringField;
    CDSLstClientesTELEFONO_COMERCIAL_2: TStringField;
    CDSLstClientesCPOSTAL: TStringField;
    CDSLstClientesLOCALIDAD: TStringField;
    CDSLstClientesMUESTRASUCURSAL: TStringField;
    CDSLstClientesSUCURSAL: TIntegerField;
    CDSLstClientesMUESTRAZONA: TStringField;
    CDSLstClientesNRO_DE_CUIT: TStringField;
    CDSLstClientesMUESTRAINSCRIPCION: TStringField;
    CDSLstClientesZONA: TIntegerField;
    CDSLstClientesVENDEDOR: TStringField;
    CDSLstClientesCORREOELECTRONICO: TStringField;
    CDSLstClientesCONTACTO: TStringField;
    CDSLstClientesTELEFONO_CONTACTO: TStringField;
    CDSLstClientesOBSERVACIONES: TMemoField;
    CDSLstClientesMUESTRAVENDEDOR: TStringField;
    CDSLstClientesMUESTRACOBRADOR: TStringField;
    DSPLstConVenta: TDataSetProvider;
    CDSLstCondVenta: TClientDataSet;
    CDSLstCondVentaCODIGOCLIENTE: TStringField;
    CDSLstCondVentaCODIGOPAGO: TIntegerField;
    CDSLstCondVentaPOR_DEFECTO: TStringField;
    CDSLstCondVentaMUESTRATIPOPAGO: TStringField;
    CDSLstClientesTELEDISCADO: TStringField;
    DSPGruposAbonos: TDataSetProvider;
    CDSGruposAbonos: TClientDataSet;
    DSBuscaND: TDataSource;
    DSBuscaNC: TDataSource;
    DSCategorias: TDataSource;
    DSBuscaTk: TDataSource;
    DSPPostal: TDataSetProvider;
    CDSPostal: TClientDataSet;
    CDSPostalID_POSTAL: TIntegerField;
    CDSPostalCODIGO_POSTAL: TStringField;
    CDSPostalDETALLE_POSTAL: TStringField;
    CDSPostalTELEDISCADO: TStringField;
    CDSPostalPROVINCIA: TIntegerField;
    DSPFPago: TDataSetProvider;
    CDSFPago: TClientDataSet;
    CDSFPagoCODIGO: TIntegerField;
    CDSFPagoDETALLE: TStringField;
    CDSFPagoDIAS: TIntegerField;
    CDSFPagoDESCUENTO: TFloatField;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalCOMISION: TFloatField;
    DSPBuscaVendedor: TDataSetProvider;
    CDSBuscaVendedor: TClientDataSet;
    CDSBuscaVendedorCODIGO: TStringField;
    CDSBuscaVendedorNOMBRE: TStringField;
    CDSBuscaVendedorCOMISION: TFloatField;
    CDSClientes: TClientDataSet;
    CDSClientesNOMBRE: TStringField;
    CDSClientesCODIGO: TStringField;
    CDSClientesNRO_DE_CUIT: TStringField;
    CDSClientesID_COD_POSTAL: TIntegerField;
    CDSClientesVENDEDOR: TStringField;
    CDSClientesCOBRADOR: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesDIRECCION_PARTICULAR: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesTELEFONO_PARTICULAR: TStringField;
    CDSClientesTELEFONO_COMERCIAL_1: TStringField;
    CDSClientesTELEFONO_COMERCIAL_2: TStringField;
    CDSClientesTELEFONO_CELULAR: TStringField;
    CDSClientesCPOSTAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesCONDICION_IVA: TIntegerField;
    CDSClientesEMITE_REMITO: TStringField;
    CDSClientesEMITE_FACTURA: TStringField;
    CDSClientesACTIVO: TStringField;
    CDSClientesLIMITE_CREDITO: TFloatField;
    CDSClientesSALDOINICIAL: TFloatField;
    CDSClientesOBSERVACIONES: TMemoField;
    CDSClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSClientesFECHAALTA: TSQLTimeStampField;
    CDSClientesSUCURSAL: TIntegerField;
    CDSClientesZONA: TIntegerField;
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
    CDSLdr: TClientDataSet;
    CDSLdrCODIGO_CLIENTE: TStringField;
    CDSLdrCODIGO_LDR: TIntegerField;
    CDSLdrNOMBRE: TStringField;
    CDSLdrDIRECCION: TStringField;
    CDSLdrCPOSTAL: TStringField;
    DSLdr: TDataSource;
    CDSCondVentaCODIGOCLIENTE: TStringField;
    CDSCondVentaDESCUENTO: TFloatField;
    CDSCondVentaPOR_DEFECTO: TStringField;
    CDSCondVentaDIAS: TIntegerField;
    CDSCondVentaDESCUENTO_FPAGO: TFloatField;
    DSPBuscaZona: TDataSetProvider;
    CDSBuscaZona: TClientDataSet;
    CDSBuscaZonaID_ZONA: TIntegerField;
    CDSBuscaZonaDETALLE: TStringField;
    DSZona: TDataSource;
    DSPBuscaInscripcion: TDataSetProvider;
    CDSBuscaInscripcion: TClientDataSet;
    CDSBuscaInscripcionCODIGO: TIntegerField;
    CDSBuscaInscripcionDETALLE: TStringField;
    CDSBuscaInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSBuscaInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    DSBuscaInscripcion: TDataSource;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    DSBuscaSucursal: TDataSource;
    QUltimoLdr: TFDQuery;
    QUltimoLdrCODIGOLDR: TIntegerField;
    QBuscaCodigo: TFDQuery;
    CDSBuscaFC: TClientDataSet;
    DSPBuscaFC: TDataSetProvider;
    CDSBuscaFCID_COMPROBANTE: TIntegerField;
    CDSBuscaFCTIPO_COMPROB: TStringField;
    CDSBuscaFCCLASE_COMPROB: TStringField;
    CDSBuscaFCDENOMINACION: TStringField;
    CDSBuscaFCSUCURSAL: TIntegerField;
    CDSBuscaFCLETRA: TStringField;
    CDSBuscaFCPREFIJO: TStringField;
    CDSBuscaFCNUMERARCION_PROPIA: TStringField;
    CDSBuscaFCNUMERO: TStringField;
    CDSBuscaNC: TClientDataSet;
    CDSBuscaNCID_COMPROBANTE: TIntegerField;
    CDSBuscaNCTIPO_COMPROB: TStringField;
    CDSBuscaNCCLASE_COMPROB: TStringField;
    CDSBuscaNCDENOMINACION: TStringField;
    CDSBuscaNCSUCURSAL: TIntegerField;
    CDSBuscaNCLETRA: TStringField;
    CDSBuscaNCPREFIJO: TStringField;
    CDSBuscaNCNUMERARCION_PROPIA: TStringField;
    CDSBuscaNCNUMERO: TStringField;
    DSPBuscaNC: TDataSetProvider;
    DSPBuscaND: TDataSetProvider;
    CDSBuscaND: TClientDataSet;
    CDSBuscaNDID_COMPROBANTE: TIntegerField;
    CDSBuscaNDTIPO_COMPROB: TStringField;
    CDSBuscaNDCLASE_COMPROB: TStringField;
    CDSBuscaNDDENOMINACION: TStringField;
    CDSBuscaNDSUCURSAL: TIntegerField;
    CDSBuscaNDLETRA: TStringField;
    CDSBuscaNDPREFIJO: TStringField;
    CDSBuscaNDNUMERARCION_PROPIA: TStringField;
    CDSBuscaNDNUMERO: TStringField;
    DSPBuscaTk: TDataSetProvider;
    CDSBuscaTk: TClientDataSet;
    DSPBuscaFO: TDataSetProvider;
    CDSBuscaFO: TClientDataSet;
    CDSBuscaFOID_COMPROBANTE: TIntegerField;
    CDSBuscaFOTIPO_COMPROB: TStringField;
    CDSBuscaFOCLASE_COMPROB: TStringField;
    CDSBuscaFODENOMINACION: TStringField;
    CDSBuscaFOSUCURSAL: TIntegerField;
    CDSBuscaFOLETRA: TStringField;
    CDSBuscaFOPREFIJO: TStringField;
    CDSBuscaFONUMERARCION_PROPIA: TStringField;
    CDSBuscaFONUMERO: TStringField;
    QBuscaCondiciondePago: TFDQuery;
    QFacClientes: TFDQuery;
    QPreClientes: TFDQuery;
    QRecibos: TFDQuery;
    IntegerField3: TIntegerField;
    CDSCategorias: TClientDataSet;
    DSPCategorias: TDataSetProvider;
    CDSCategoriasID: TIntegerField;
    CDSCategoriasDETALLE: TStringField;
    QMovCC: TFDQuery;
    DSBuscaSucursales: TDataSource;
    CDSListaPrecios: TClientDataSet;
    DSPListaPrecios: TDataSetProvider;
    CDSListaPreciosID: TIntegerField;
    CDSListaPreciosNOMBRE: TStringField;
    QTasaIIBB: TFDQuery;
    QTasaIIBBTASA_PERCEPCION: TFloatField;
    QTasaIIBBTASA_RETENCION: TFloatField;
    QGrupos: TFDQuery;
    QGruposID: TIntegerField;
    QGruposDETALLE: TStringField;
    QGruposPRECIO1: TFloatField;
    QGruposPRECIO2: TFloatField;
    CDSBuscaGrupoAbonos: TClientDataSet;
    DSPBuscaGrupoAbonos: TDataSetProvider;
    CDSBuscaGrupoAbonosID: TIntegerField;
    CDSBuscaGrupoAbonosDETALLE: TStringField;
    CDSBuscaGrupoAbonosPRECIO1: TFloatField;
    CDSBuscaGrupoAbonosPRECIO2: TFloatField;
    QGruposAbonos: TFDQuery;
    QGruposAbonosID_CUPON_GRUPO: TIntegerField;
    QGruposAbonosCLIENTE: TStringField;
    QGruposAbonosDETALLE: TStringField;
    QGruposAbonosPRECIO1: TFloatField;
    QGruposAbonosPRECIO2: TFloatField;
    CDSGruposAbonosID_CUPON_GRUPO: TIntegerField;
    CDSGruposAbonosCLIENTE: TStringField;
    CDSGruposAbonosDETALLE: TStringField;
    CDSGruposAbonosPRECIO1: TFloatField;
    CDSGruposAbonosPRECIO2: TFloatField;
    QLstCondVenta: TFDQuery;
    CDSLstCondVentaDESCUENTO: TFloatField;
    QCoeficientes: TFDQuery;
    QCoeficientesCODIGO: TStringField;
    QCoeficientesID_LISTA_PRECIO: TIntegerField;
    QCoeficientesPOR_DEFECTO: TStringField;
    QCoeficientesCOEFICIENTE: TFloatField;
    CDSCoeficientesCOEFICIENTE: TFloatField;
    CDSBuscaZonas: TClientDataSet;
    DSPBuscaZonas: TDataSetProvider;
    CDSBuscaZonasID_ZONA: TIntegerField;
    CDSBuscaZonasDETALLE: TStringField;
    CDSBuscaVendedores: TClientDataSet;
    DSPBuscaVendedores: TDataSetProvider;
    CDSBuscaVendedoresCODIGO: TStringField;
    CDSBuscaVendedoresNOMBRE: TStringField;
    CDSBuscaSucursales: TClientDataSet;
    DSPBuscaSucursales: TDataSetProvider;
    CDSBuscaSucursalesCODIGO: TIntegerField;
    CDSBuscaSucursalesDETALLE: TStringField;
    DSPBuscaCobrador: TDataSetProvider;
    CDSBuscaCobrador: TClientDataSet;
    CDSBuscaCobradorCODIGO: TStringField;
    CDSBuscaCobradorNOMBRE: TStringField;
    CDSBuscaCPostal: TClientDataSet;
    DSPBuscaCPostal: TDataSetProvider;
    CDSBuscaCPostalDETALLE_POSTAL: TStringField;
    CDSBuscaCPostalCODIGO_POSTAL: TStringField;
    CDSBuscaCPostalID_POSTAL: TIntegerField;
    CDSBuscaCPostalTELEDISCADO: TStringField;
    CDSBuscaCPostalPROVINCIA: TIntegerField;
    CDSClientesTIPOABONO: TStringField;
    CDSClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    CDSClientesMES_ABONOANUAL: TIntegerField;
    CDSBuscaTkID_COMPROBANTE: TIntegerField;
    CDSBuscaTkTIPO_COMPROB: TStringField;
    CDSBuscaTkCLASE_COMPROB: TStringField;
    CDSBuscaTkDENOMINACION: TStringField;
    CDSBuscaTkSUCURSAL: TIntegerField;
    CDSBuscaTkLETRA: TStringField;
    CDSBuscaTkPREFIJO: TStringField;
    CDSBuscaTkNUMERARCION_PROPIA: TStringField;
    CDSBuscaTkNUMERO: TStringField;
    CDSClientesFRANQUICIA: TStringField;
    CDSClientesDIAS_MAYOR_30: TIntegerField;
    CDSClientesID_DEPOSITO_FRANQUICIA: TIntegerField;
    DSPBuscaDeposito: TDataSetProvider;
    CDSBuscaDeposito: TClientDataSet;
    CDSBuscaDepositoNOMBRE: TStringField;
    CDSBuscaDepositoID: TIntegerField;
    DSBuscaDeposito: TDataSource;
    QTransporte: TFDQuery;
    DSPTransporte: TDataSetProvider;
    CDSTransporte: TClientDataSet;
    CDSTransporteID: TIntegerField;
    CDSTransporteNOMBRE: TStringField;
    CDSTransporteDIRECCION: TStringField;
    CDSTransporteTELEFONO: TStringField;
    CDSTransporteLOCALIDAD: TStringField;
    DSTransporte: TDataSource;
    CDSClientesID_TRANSPORTE: TIntegerField;
    QLstCondVentaCODIGOCLIENTE: TStringField;
    QLstCondVentaCODIGOPAGO: TIntegerField;
    QLstCondVentaDESCUENTO: TFloatField;
    QLstCondVentaPOR_DEFECTO: TStringField;
    QLstCondVentaMUESTRATIPOPAGO: TStringField;
    CDSClientesIMPRIME_SALDOFACTURA: TStringField;
    DSGrupoAbonos: TDataSource;
    DSPBuscaCategorias: TDataSetProvider;
    CDSBuscaCategorias: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DSBuscaCategorias: TDataSource;
    CDSClientesCORTAR_SERVICIO: TStringField;
    CDSClientesCON_PLANPAGO: TStringField;
    CDSClientesDIRECCION_POSTAL: TStringField;
    CDSClientesCALLE_1: TStringField;
    CDSClientesCALLE_2: TStringField;
    DSPContrato: TDataSetProvider;
    CDSContrato: TClientDataSet;
    CDSContratoCODIGO: TStringField;
    CDSContratoNRO_CONTRATO: TStringField;
    CDSContratoTIPO_SERVICIO: TIntegerField;
    CDSContratoFECHA_SOLICITUD: TSQLTimeStampField;
    CDSContratoFECHA_INSTALACION: TSQLTimeStampField;
    CDSContratoINCIO_SERVICIO: TSQLTimeStampField;
    CDSContratoLUGAR_INSTALACION: TStringField;
    CDSContratoCOSTO_INICAL: TFloatField;
    CDSContratoOBS: TMemoField;
    DSPClientesAnexos: TDataSetProvider;
    CDSClientesAnexos: TClientDataSet;
    DSClientesAnexos: TDataSource;
    CDSClientesAnexosID: TIntegerField;
    CDSClientesAnexosCLIENTE: TStringField;
    CDSClientesAnexosARCHIVO: TStringField;
    ibgAnexo: TIBGenerator;
    QTipoServicio: TFDQuery;
    DSPTipoServicio: TDataSetProvider;
    CDSTipoServicio: TClientDataSet;
    CDSTipoServicioID: TIntegerField;
    CDSTipoServicioDETALLE: TStringField;
    DSTipoServicio: TDataSource;
    CDSLstClientesCATEGORIA: TIntegerField;
    CDSLstClientesMUESTRATIPOSERVICIO: TStringField;
    DSPGrupoPlantillas: TDataSetProvider;
    CDSGrupoPlantillas: TClientDataSet;
    CDSGrupoPlantillasID: TIntegerField;
    CDSGrupoPlantillasDETALLE: TStringField;
    DSGruposPlantillas: TDataSource;
    DSPlantillas: TDataSource;
    QPlantillas: TFDQuery;
    DSPPlantillas: TDataSetProvider;
    CDSPlantillas: TClientDataSet;
    QPlantillasCODIGO: TStringField;
    QPlantillasID: TIntegerField;
    CDSPlantillasCODIGO: TStringField;
    CDSPlantillasID: TIntegerField;
    CDSPlantillasMUESTRAPLANTILLA: TStringField;
    CDSClientesVENDER_DE_CTDO: TStringField;
    QCondAbono: TFDQuery;
    DSPCondAbono: TDataSetProvider;
    CDSCondAbono: TClientDataSet;
    DSCondAbono: TDataSource;
    QCondAbonoID: TIntegerField;
    QCondAbonoCODIGO: TStringField;
    QCondAbonoDETALLE: TStringField;
    QCondAbonoDESDE: TSQLTimeStampField;
    QCondAbonoHASTA: TSQLTimeStampField;
    QCondAbonoPRECIO: TFloatField;
    QCondAbonoESTADO: TStringField;
    CDSCondAbonoID: TIntegerField;
    CDSCondAbonoCODIGO: TStringField;
    CDSCondAbonoDETALLE: TStringField;
    CDSCondAbonoDESDE: TSQLTimeStampField;
    CDSCondAbonoHASTA: TSQLTimeStampField;
    CDSCondAbonoPRECIO: TFloatField;
    CDSCondAbonoESTADO: TStringField;
    ibgCondAbono: TIBGenerator;
    QCondAbonoPRECIO_2: TFloatField;
    CDSCondAbonoPRECIO_2: TFloatField;
    CDSClientesCORREOELECTRONICO_2: TStringField;
    CDSLstClientesTELEFONO_CELULAR: TStringField;
    CDSClientesPRESENTO_F8001: TStringField;
    CDSClientesDESDE_F8001: TSQLTimeStampField;
    CDSClientesHASTA_F8001: TSQLTimeStampField;
    CDSClientesID_TARJETACREDITO: TIntegerField;
    CDSClientesNRO_TARJETA_C: TStringField;
    CDSClientesNRO_SEG_TC: TStringField;
    CDSClientesID_BANCO: TIntegerField;
    CDSClientesNRO_CTA_BCO: TStringField;
    QTCreditos: TFDQuery;
    DSPTCredito: TDataSetProvider;
    CDSTCredito: TClientDataSet;
    CDSTCreditoID_TC: TIntegerField;
    CDSTCreditoDESCRIPCION: TStringField;
    DSTCredito: TDataSource;
    QBancos: TFDQuery;
    DSPBancos: TDataSetProvider;
    CDSBancos: TClientDataSet;
    DSBancos: TDataSource;
    CDSBancosID_BANCO: TIntegerField;
    CDSBancosNOMBRE: TStringField;
    CDSClientesCODIGO_COORPORATIVO: TStringField;
    CDSClientesMUESTRACTACOORPORATIVA: TStringField;
    QPlantillasTOTAL: TFloatField;
    CDSPlantillasTOTAL: TFloatField;
    CDSLstClientesLISTAPRECIOS: TIntegerField;
    DSBuscaCobrador: TDataSource;
    CDSClientesCUENTA_OPERATIVA: TStringField;
    CDSClientesTARJETA_CLIENTE: TStringField;
    CDSClientesVENCIMIENTO_TC: TSQLTimeStampField;
    CDSClientesFOTO: TBlobField;
    CDSClientesCON_MONITOREO: TStringField;
    CDSClientesCON_GPRS: TStringField;
    CDSClientesCON_HOSTING: TStringField;
    CDSClientesCOMUNITARIO: TStringField;
    DSPCodRipsa: TDataSetProvider;
    CDSCodRipsa: TClientDataSet;
    DSCodRipsa: TDataSource;
    CDSCodRipsaCODIGO: TStringField;
    CDSCodRipsaCODIGO_RIPSA: TStringField;
    QPrestadores: TFDQuery;
    DSPPrestadores: TDataSetProvider;
    CDSPrestadores: TClientDataSet;
    CDSPrestadoresID: TIntegerField;
    CDSPrestadoresNOMBRE: TStringField;
    DSPrestadores: TDataSource;
    CDSLstPrestadores: TClientDataSet;
    DSLstPrestadores: TDataSource;
    CDSClientesID_PRESTADOR: TIntegerField;
    CDSLstPrestadoresID: TIntegerField;
    CDSLstPrestadoresNOMBRE: TStringField;
    CDSClientesID_RECIBOPORDEFECTO: TIntegerField;
    DSPBuscaRC: TDataSetProvider;
    CDSBuscaRC: TClientDataSet;
    DSBuscaRC: TDataSource;
    CDSBuscaRCID_COMPROBANTE: TIntegerField;
    CDSBuscaRCTIPO_COMPROB: TStringField;
    CDSBuscaRCCLASE_COMPROB: TStringField;
    CDSBuscaRCDENOMINACION: TStringField;
    CDSBuscaRCSUCURSAL: TIntegerField;
    CDSBuscaRCLETRA: TStringField;
    CDSBuscaRCPREFIJO: TStringField;
    CDSBuscaRCNUMERARCION_PROPIA: TStringField;
    CDSBuscaRCNUMERO: TStringField;
    CDSClientesNOMBRE_COMPLETO: TStringField;
    CDSClientesMES_ADICIONAL: TIntegerField;
    CDSClientesMES_SEMESTRAL: TIntegerField;
    DSPClientesGarantes: TDataSetProvider;
    CDSClientesGarantes: TClientDataSet;
    CDSClientesGarantesID: TIntegerField;
    CDSClientesGarantesCODIGOCLIENTE: TStringField;
    CDSClientesGarantesNOMBRE: TStringField;
    CDSClientesGarantesDIRECCION: TStringField;
    CDSClientesGarantesLOCALIDAD: TStringField;
    CDSClientesGarantesCPOSTAL: TStringField;
    CDSClientesGarantesTELEFONO1: TStringField;
    CDSClientesGarantesTELEFONO2: TStringField;
    CDSClientesGarantesCELULAR: TStringField;
    CDSClientesGarantesEMAIL: TStringField;
    CDSClientesGarantesPOR_DEFECTO: TStringField;
    ibgGarante: TIBGenerator;
    CDSClientesMOROSO: TStringField;
    QCtrMorosos: TFDQuery;
    CDSCtrMorosos: TClientDataSet;
    DSPCtrMorosos: TDataSetProvider;
    CDSCtrMorososCLIENTE: TStringField;
    CDSCtrMorososNOMBRE: TStringField;
    CDSCtrMorososDIRECCION_COMERCIAL: TStringField;
    CDSCtrMorososSUM: TFloatField;
    DSCtrMorosos: TDataSource;
    CDSCtrMorososMOROSO: TStringField;
    CDSClientesPLANTILLA_CIVA: TStringField;
    CDSClientesOBSERVACIONES1: TStringField;
    CDSClientesOBSERVACIONES2: TStringField;
    CDSLstClientesNRODOCUMENTO: TStringField;
    CDSLstClientesTIPODOCUMENTO: TSmallintField;
    QPrecioDet: TFDQuery;
    DSPPrecioDet: TDataSetProvider;
    CDSPrecioDet: TClientDataSet;
    DSPrecioDet: TDataSource;
    CDSClientesAVISO: TStringField;
    CDSPrecioDetTOTAL: TFloatField;
    CDSPrecioDetMASIVA: TStringField;
    CDSLstClientesMUESTRAPRESTADOR: TStringField;
    CDSLstClientesOBSERVACIONES1: TStringField;
    CDSLstClientesOBSERVACIONES2: TStringField;
    CDSLstClientesCON_MONITOREO: TStringField;
    CDSLstClientesCON_HOSTING: TStringField;
    CDSLstClientesCON_GPRS: TStringField;
    CDSClientesRUBRO: TIntegerField;
    DSPBuscaRubrosCLi: TDataSetProvider;
    CDSRubrosCLi: TClientDataSet;
    CDSRubrosCLiID: TIntegerField;
    CDSRubrosCLiDETALLE: TStringField;
    DSBuscaRubrosCLi: TDataSource;
    CDSLdrLOCALIDAD: TStringField;
    DSPBuscaFPago: TDataSetProvider;
    CDSBuscaFPago: TClientDataSet;
    CDSBuscaFPagoCODIGO: TIntegerField;
    CDSBuscaFPagoDETALLE: TStringField;
    CDSBuscaFPagoDIAS: TIntegerField;
    CDSBuscaFPagoDESCUENTO: TFloatField;
    CDSLstClientesTARJETA_CLIENTE: TStringField;
    CDSClientesMUESTRAIDGARANTE: TIntegerField;
    CDSClientesID_PLANTILLA: TIntegerField;
    CDSClientesENVIAR_CPTE_MAIL: TStringField;
    CDSClientesNRO_IP: TStringField;
    QOt: TFDQuery;
    DSPOt: TDataSetProvider;
    CDSOt: TClientDataSet;
    CDSOtID_OT: TIntegerField;
    CDSOtTIPOCPBTE: TStringField;
    CDSOtRESPONSABLE_OT: TStringField;
    CDSOtCLASECPBTE: TStringField;
    CDSOtNROCPBTE: TStringField;
    CDSOtCODIGO: TStringField;
    CDSOtNOMBRE: TStringField;
    CDSOtFECHAINICIO: TSQLTimeStampField;
    CDSOtFECHAESTIMADA: TSQLTimeStampField;
    CDSOtFECHAFINAL: TSQLTimeStampField;
    CDSOtTOTAL: TFloatField;
    CDSOtRESPONSABLE: TStringField;
    CDSOtMUESTRAESTADO: TStringField;
    DSOt: TDataSource;
    CDSClientesCHEQUES: TStringField;
    QFacModeloDetalle: TFDQuery;
    DSFacModeloDetalle: TDataSource;
    CDSClientesID_ADMINISTRACION: TIntegerField;
    QLstClientes: TFDQuery;
    CDSLstClientesMUESTRACOMPCTACTA: TStringField;
    CDSLstClientesMUESTRAGRUPOABONADO: TStringField;
    CDSLstClientesMUESTRATC: TStringField;
    CDSLstClientesNUMEROTARJETA: TStringField;
    CDSLstClientesNUMMEROSEGURIDADTC: TStringField;
    DSPLstGrupoAbonados: TDataSetProvider;
    CDSLstGrupoAbonados: TClientDataSet;
    DSLstGruposAbonos: TDataSource;
    QLstGruposAb: TFDQuery;
    QActualizaCuitFD: TFDQuery;
    QActualizaMorosoFD: TFDQuery;
    QGruposPlantillas: TFDQuery;
    CDSGrupoPlantillasTOTAL: TFloatField;
    QBuscarCuit: TFDQuery;
    QBuscarCuitCODIGO: TStringField;
    CDSClientesNICKNAME_MERCADOPAGO: TStringField;
    CDSLstClientesCUENTA_OPERATIVA: TStringField;
    CDSClientesFECHA_INACTIVO: TSQLTimeStampField;
    CDSLstClientesMUESTRALISTAPRECIOS: TStringField;
    CDSLstClientesVENCIMIENTOTC: TDateField;
    CDSLstClientesFECHAULTIMACOMPRA: TDateField;
    CDSClientesPERCIBE_IVA: TStringField;
    QNubCeo: TFDQuery;
    DSPNubCeo: TDataSetProvider;
    CDSNubCeo: TClientDataSet;
    DSNubCeo: TDataSource;
    QNubCeoCODIGO: TStringField;
    QNubCeoREF_COMERCIO: TLargeintField;
    CDSNubCeoCODIGO: TStringField;
    CDSNubCeoREF_COMERCIO: TLargeintField;
    QNubCeoID_CTA_CAJA_BANCO: TIntegerField;
    CDSNubCeoID_CTA_CAJA_BANCO: TIntegerField;
    QCtaBanco: TFDQuery;
    DSCtaBanco: TDataSource;
    QCtaBancoID_CUENTA: TIntegerField;
    QCtaBancoNOMBRE: TStringField;
    QCtaBancoNRO_CUENTA: TStringField;
    CDSNubCeoNOMBRECUENTA: TStringField;
    QEsquemas: TFDQuery;
    DSEsquemas: TDataSource;
    CDSClientesESQUEMALISTA: TIntegerField;
    CDSLdrPROVINCIA: TIntegerField;
    CDSLdrEMAIL: TStringField;
    PROCEDURE CDSClientesBeforePost(DataSet: TDataSet);
    PROCEDURE CDSClientesCodigoSetText(Sender: TField; CONST Text: STRING);
    PROCEDURE CDSClientesNewRecord(DataSet: TDataSet);
    PROCEDURE CDSLdrNewRecord(DataSet: TDataSet);
    PROCEDURE CDSLdrPostError(DataSet: TDataSet; E: EDatabaseError;
      VAR Action: TDataAction);
    PROCEDURE CDSClientesid_cod_postalSetText(Sender: TField;
      CONST Text: STRING);
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSClientesNombreSetText(Sender: TField; const Text: String);
    procedure CDSClientesNro_de_CUITSetText(Sender: TField; const Text: String);
    procedure CDSClientesVENDEDORSetText(Sender: TField; const Text: String);
    procedure CDSCondVentaCODIGOPAGOSetText(Sender: TField; const Text: string);
    procedure CDSCondVentaNewRecord(DataSet: TDataSet);
    procedure CDSCondVentaBeforePost(DataSet: TDataSet);
    procedure CDSCoeficientesNewRecord(DataSet: TDataSet);
    procedure CDSClientesCOBRADORSetText(Sender: TField; const Text: string);
    procedure CDSGruposAbonosID_CUPON_GRUPOSetText(Sender: TField;
      const Text: string);
    procedure CDSGruposAbonosNewRecord(DataSet: TDataSet);
    procedure CDSClientesSUCURSALChange(Sender: TField);
    procedure CDSContratoNewRecord(DataSet: TDataSet);
    procedure CDSContratoNRO_CONTRATOSetText(Sender: TField;
      const Text: string);
    procedure CDSClientesAnexosNewRecord(DataSet: TDataSet);
    procedure CDSPlantillasNewRecord(DataSet: TDataSet);
    procedure CDSPlantillasBeforeInsert(DataSet: TDataSet);
    procedure CDSClientesTIPOABONOChange(Sender: TField);
    procedure CDSPlantillasBeforePost(DataSet: TDataSet);
    procedure CDSPlantillasBeforeEdit(DataSet: TDataSet);
    procedure CDSCondAbonoNewRecord(DataSet: TDataSet);
    procedure CDSCondAbonoBeforePost(DataSet: TDataSet);
    procedure CDSCondAbonoDESDESetText(Sender: TField; const Text: string);
    procedure CDSCondAbonoHASTASetText(Sender: TField; const Text: string);
    procedure CDSPlantillasMUESTRAPLANTILLAChange(Sender: TField);
    procedure CDSCodRipsaNewRecord(DataSet: TDataSet);
    procedure CDSClientesGarantesNewRecord(DataSet: TDataSet);
    procedure CDSClientesCUENTA_OPERATIVAGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CDSNubCeoNewRecord(DataSet: TDataSet);
    { procedure wwDSFPagoStateChange(Sender: TObject); }
  private
    { Private declarations }

  public
    { Public declarations }
    Old_Codigo: String;
    FUNCTION AsignaLocalida(Dato: integer): Boolean;
    FUNCTION AsignaFPago(Dato: integer): Boolean;
    FUNCTION AsignaVendedor(Dato: String): Boolean;
    FUNCTION AsignaCobrador(Dato: String): Boolean;
    FUNCTION AsignaGrupo(Dato: integer): Boolean;
    function CodigoFree:  string;
  END;

VAR
  DatosClientes: TDatosClientes;

IMPLEMENTATION

USES DMBuscadoresForm, UClientes_2, UDMain_FD;

{$R *.DFM}


function TDatosClientes.CodigoFree: string;
var
  QCodigoFree : TFDQuery;
begin
  QCodigoFree :=  TFDQuery.Create(Self);
  QCodigoFree.Connection  :=  DMMain_FD.fdcGestion;
  QCodigoFree.SQL.Text    :=  'select * from buscar_codigo_free';
  QCodigoFree.Open;
  if QCodigoFree.IsEmpty then
    Result  :=  ''
  else
    Result  :=  QCodigoFree.Fields[0].AsString;
  QCodigoFree.Close;
  QCodigoFree.Free;
end;

FUNCTION TDatosClientes.AsignaLocalida(Dato: integer): Boolean;
  BEGIN
    CDSPostal.Close;
    CDSPostal.Params.ParamByName('id').Value := Dato;
    // wwLookupLocalidades.LookupTable.fieldByName('id_Postal').Value;
    CDSPostal.Open;
    IF NOT(CDSPostal.IsEmpty) THEN
    BEGIN
      result := True;
      CDSClientesCPOSTAL.Value := CDSPostalCODIGO_POSTAL.Value;
      CDSClientesLOCALIDAD.Value := CDSPostalDETALLE_POSTAL.Value;
      CDSClientesMUESTRATELEDISCADO.Value := CDSPostalTELEDISCADO.Value;
      CDSClientesID_COD_POSTAL.Value := Dato;
    END
    ELSE
    begin
      result := False;
      CDSClientesCPOSTAL.Clear;
      CDSClientesLOCALIDAD.Clear;
      CDSClientesMUESTRATELEDISCADO.Clear;
      CDSClientesID_COD_POSTAL.Clear;
    end;
    CDSPostal.Close;
  END;

FUNCTION TDatosClientes.AsignaFPago(Dato: integer): Boolean;
  BEGIN
    CDSFPago.Close;
    CDSFPago.Params.ParamByName('Codigo').Value := Dato;
    CDSFPago.Open;
    IF NOT(CDSFPago.Eof) THEN
    BEGIN
      result := True;
      DatosClientes.CDSCondVentaDESCUENTO.AsFloat := CDSFPagoDESCUENTO.AsFloat;
      DatosClientes.CDSCondVentaDETALLE.Value := CDSFPagoDETALLE.Value;
    END
    ELSE
    BEGIN
      ShowMessage('Codigo no Valido');
      // SysUtils.Abort;
      result := False;
    END;
  END;

FUNCTION TDatosClientes.AsignaVendedor(Dato: String): Boolean;
  BEGIN
    CDSPersonal.Close;
    CDSPersonal.Params.ParamByName('codigo').Value := Dato;
    CDSPersonal.Open;
    IF NOT(CDSPersonal.Eof) THEN
    BEGIN
      result := True;
      CDSClientesMUESTRAVENDEDOR.Value := CDSPersonalNOMBRE.Value;
    END
    ELSE
    BEGIN
      CDSClientesMUESTRAVENDEDOR.Value := '';
      result := False;
    END;
    CDSPersonal.Close;
  END;

FUNCTION TDatosClientes.AsignaCobrador(Dato: String): Boolean;
  BEGIN
    CDSPersonal.Close;
    CDSPersonal.Params.ParamByName('codigo').Value := Dato;
    CDSPersonal.Open;
    IF NOT(CDSPersonal.Eof) THEN
    BEGIN
      result := True;
      CDSClientesMUESTRACOBRADOR.Value := CDSPersonalNOMBRE.Value;
    END
    ELSE
    BEGIN
      CDSClientesMUESTRACOBRADOR.Value := '';
      result := False;
    END;
    CDSPersonal.Close;
  END;

FUNCTION TDatosClientes.AsignaGrupo(Dato: integer): Boolean;
  BEGIN
    QGrupos.Close;
    QGrupos.ParamByName('id').Value := Dato;
    QGrupos.Open;
    IF NOT(QGrupos.Eof) THEN
    BEGIN
      result := True;
      CDSGruposAbonosDETALLE.Value := QGruposDETALLE.Value;
    END
    ELSE
    BEGIN
      CDSGruposAbonosDETALLE.Value := '';
      result := False;
    END;
    QGrupos.Close;
  END;

procedure TDatosClientes.CDSCodRipsaNewRecord(DataSet: TDataSet);
  begin
    CDSCodRipsaCODIGO_RIPSA.Value := '';
    CDSCodRipsaCODIGO.Value := CDSClientesCODIGO.Value;
  end;

procedure TDatosClientes.CDSCoeficientesNewRecord(DataSet: TDataSet);
  begin
    CDSCoeficientesCODIGO.Value := CDSClientesCODIGO.Value;
    CDSCoeficientesCOEFICIENTE.Value := 1;
    CDSCoeficientesPOR_DEFECTO.Value := 'N';
  end;

procedure TDatosClientes.CDSCondAbonoBeforePost(DataSet: TDataSet);
  begin
    if (CDSCondAbonoPRECIO.AsFloat <= 0) or (CDSCondAbonoDESDE.AsDateTime <= 0)
    then
    begin
      CDSCondAbono.Cancel;
      SysUtils.Abort;
    end;

  end;

procedure TDatosClientes.CDSCondAbonoDESDESetText(Sender: TField;
  const Text: string);
  begin
    if trim(Text) <> '' then
      try
        Sender.AsDateTime := strtodate(Text);
      except
        ShowMessage('Formato de Fecha Incorrecta');
      end;
  end;

procedure TDatosClientes.CDSCondAbonoHASTASetText(Sender: TField;
  const Text: string);
  begin
    if trim(Text) <> '' then
      try
        Sender.AsDateTime := strtodate(Text);
      except
        ShowMessage('Formato de Fecha Incorrecta');
      end;
  end;

procedure TDatosClientes.CDSCondAbonoNewRecord(DataSet: TDataSet);
  begin
    CDSCondAbonoID.Value := ibgCondAbono.IncrementFD(1);
    CDSCondAbonoCODIGO.Value := CDSClientesCODIGO.Value;
    CDSCondAbonoDESDE.AsDateTime := date;
    CDSCondAbonoHASTA.AsDateTime := date + 30;
    CDSCondAbonoPRECIO.AsFloat := 0;
    CDSCondAbonoPRECIO_2.AsFloat := 0;

    CDSCondAbonoESTADO.AsString := 'S'
  end;

procedure TDatosClientes.CDSCondVentaBeforePost(DataSet: TDataSet);
  begin
    IF (VarIsNull(CDSCondVentaCODIGOPAGO.Value)) THEN
      CDSCondVenta.Cancel;
  end;

procedure TDatosClientes.CDSCondVentaCODIGOPAGOSetText(Sender: TField;
  const Text: string);
  var
    cod: String;
    CDSClone: TClientDataSet;
  begin
    if (Text <> '') and (Text <> #13) then
    begin
      IF CDSCondVenta.State = dsBrowse THEN
        CDSCondVenta.Edit;
      // Sender.AsString := Text;
      CDSClone := TClientDataSet.Create(self);
      CDSClone.CloneCursor(CDSCondVenta, True);
      CDSCondVenta.DisableControls;
      cod := VarToStr(CDSClone.Lookup('codigopago', Text, 'codigopago'));
      CDSCondVenta.EnableControls;
      if cod = '' then
      begin
        IF CDSCondVenta.State = dsBrowse THEN
          CDSCondVenta.Edit;
        Sender.AsString := Text;
        IF Not(AsignaFPago(Sender.AsInteger)) THEN
        BEGIN
          Sender.Clear;
          CDSCondVenta.Cancel;
          // FormClientes_2.dbgCondVenta.SelectedIndex := 0;
        END;
      end
      else
      begin
        ShowMessage('Codigo ya usado....!!!');
        if Not(CDSCondVenta.State in [dsBrowse]) then
          CDSCondVenta.Cancel;
        // Sender.Clear;
        // FormClientes_2.dbgCondVenta.SelectedIndex := 0;
      end;
      CDSClone.Free;
    end;

  end;

procedure TDatosClientes.CDSCondVentaNewRecord(DataSet: TDataSet);
  begin
    CDSCondVentaCODIGOCLIENTE.Value := CDSClientesCODIGO.Value;
    CDSCondVentaPOR_DEFECTO.Value   := 'N';
    CDSCondVentaDESCUENTO.AsFloat   := 0;
    CDSCondVentaDIAS.Value          := 0;
    CDSCondVentaDETALLE.Value       := '';
  end;

procedure TDatosClientes.CDSContratoNewRecord(DataSet: TDataSet);
  begin
    CDSContratoCODIGO.Value               := CDSClientesCODIGO.Value;
    CDSContratoFECHA_SOLICITUD.AsDateTime := date;
    CDSContratoTIPO_SERVICIO.Value        := 0;
  end;

procedure TDatosClientes.CDSContratoNRO_CONTRATOSetText(Sender: TField;
  const Text: string);
  begin
    Sender.AsString := copy('0000000000', 1, 10 - length(Text)) + Text;
  end;

procedure TDatosClientes.CDSGruposAbonosID_CUPON_GRUPOSetText(Sender: TField;
  const Text: string);
  begin
    if (Text <> '') and (Text <> #13) Then
    begin
      if (CDSGruposAbonos.State = dsBrowse) then
        CDSGruposAbonos.Edit;

      Sender.AsString := Text;
      if Not(AsignaGrupo(Sender.AsInteger)) then
      begin
        Sender.Clear;
        ShowMessage('dato no Valido..');
      end;
    end;
  end;

procedure TDatosClientes.CDSGruposAbonosNewRecord(DataSet: TDataSet);
  begin
    CDSGruposAbonosCLIENTE.Value := CDSClientesCODIGO.Value;
  end;

procedure TDatosClientes.CDSClientesAnexosNewRecord(DataSet: TDataSet);
  begin
    CDSClientesAnexosID.Value      := ibgAnexo.IncrementFD(1);
    CDSClientesAnexosCLIENTE.Value := CDSClientesCODIGO.Value;
    CDSClientesAnexosARCHIVO.Value := '';
  end;

PROCEDURE TDatosClientes.CDSClientesBeforePost(DataSet: TDataSet);
  BEGIN
    IF CDSClientesRAZON_SOCIAL.AsString = '' THEN
      CDSClientesRAZON_SOCIAL.AsString := CDSClientesNOMBRE.AsString;
    IF CDSClientesFECHAALTA.AsString = '' Then
      CDSClientesFECHAALTA.AsDateTime := date;
    if CDSClientesFECHAULTIMACOMPRA.AsString = '' Then
      CDSClientesFECHAULTIMACOMPRA.AsDateTime := date;

  END;

procedure TDatosClientes.CDSClientesCOBRADORSetText(Sender: TField;
  const Text: string);
  begin
    if (Text <> '') and (Text[1] <> #13) Then
    begin
      Sender.AsString := copy('000000', 1, Sender.Size - length(Text)) + Text;
      IF NOT(AsignaCobrador(Sender.AsString)) THEN
      BEGIN
        Sender.AsString := '';
        ShowMessage('Codigo No Válido');
      END;
    end;
  end;

PROCEDURE TDatosClientes.CDSClientesCodigoSetText(Sender: TField;
  CONST Text: STRING);
  BEGIN

    Sender.AsString := copy('000000', 1, Sender.Size - length(Text)) + Text;
    // FormClientes_2.dbeCodigo.Text:=Sender.AsString;//lo agrego por efecto visual

    QBuscaCodigo.Close;
    QBuscaCodigo.ParamByName('codigo').Value := Sender.AsString;
    QBuscaCodigo.Open;
    if Not(QBuscaCodigo.IsEmpty) Then
      begin
        ShowMessage('Codigo no válido.....');
        Sender.AsString := Old_Codigo;
        // FormClientes_2.dbeCodigo.SetFocus;
        // FormClientes_2.dbeCodigo.SelectAll;
      end;
    QBuscaCodigo.Close;

  END;

procedure TDatosClientes.CDSClientesCUENTA_OPERATIVAGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:= AnsiRightStr('-----------'+Sender.AsString,10);
end;

procedure TDatosClientes.CDSClientesGarantesNewRecord(DataSet: TDataSet);
  begin
    CDSClientesGarantesID.Value := ibgGarante.IncrementFD(1);
    // CDSClientesGarantes. RecordCount+1;//  ibgGarante.IncrementFD(1);
    CDSClientesGarantesCODIGOCLIENTE.Value := CDSClientesCODIGO.Value;
  end;

PROCEDURE TDatosClientes.CDSClientesNewRecord(DataSet: TDataSet);
var
  IntAux: integer;
BEGIN

  CDSClientesCODIGO.AsString              := DMMain_FD.UltimoCodigoCli;
  Old_Codigo                              := CDSClientesCODIGO.Value;
  CDSClientesFECHAALTA.AsDateTime         := date;
  CDSClientesFECHAULTIMACOMPRA.AsString   := '';
  CDSClientesDIRECCION_COMERCIAL.Value    := '';
  CDSClientesDIRECCION_PARTICULAR.Value   := '';
  CDSClientesACTIVO.Value                 := 'S';
  CDSClientesCHEQUES.Value                := 'S';
  CDSClientesEMITE_REMITO.Value           := 'S';
  CDSClientesEMITE_FACTURA.Value          := 'S';
  CDSClientesVENDER_DE_CTDO.Value         := 'S';
  CDSClientesDEUDAMAYOR30.Value           := 'N';
  CDSClientesFRANQUICIA.Value             := 'N';
  CDSClientesMOROSO.Value                 := 'N';
  CDSClientesPLANTILLA_CIVA.Value         := 'N';
  CDSClientesAVISO.Value                  := '';
  CDSClientesNRO_IP.Value                 := '';
  CDSClientesLIMITE_CREDITO.AsFloat       := 0;
  CDSClientesMES_ABONOANUAL.Value         := 1;
  CDSClientesMES_SEMESTRAL.Value          := 0;
  CDSClientesTIPOABONO.Value              := 'X';
  CDSClientesDIAS_MAYOR_30.Value          := 30;
  CDSClientesTARJETA_CLIENTE.Value        := '';
  CDSClientesCUENTA_OPERATIVA.Value       := '';
  CDSClientesOBSERVACIONES1.Value         := '';
  CDSClientesOBSERVACIONES2.Value         := '';
  CDSClientesRUBRO.Value                  := -1;
  CDSClientesIMPRIME_SALDOFACTURA.Value   := 'S';
  CDSClientesID_DEPOSITO_FRANQUICIA.Value := -1;
  CDSClientesID_PLANTILLA.Value           := -1;
  CDSClientesID_ADMINISTRACION.Value      := -1;
  CDSClientesPERCIBE_IVA.Value            := 'S';
  CDSClientesID_COD_POSTAL.Text           := DMMain_FD.CPostalPorDef;

  CDSClientesVENCIMIENTO_TC.Clear;
  CDSClientesFECHA_INCIO_FC_ABONO.Clear;
  CDSClientesCONDICION_IVA.Value          := DMMain_FD.InscripcionPorDefecto;

  QBuscaCondiciondePago.Close;
  QBuscaCondiciondePago.Open;
  if CDSClientesCODIGO.AsString <> '' then
  begin
    CDSCondVenta.Insert;
    CDSCondVentaCODIGOPAGOSetText(CDSCondVentaCODIGOPAGO,QBuscaCondiciondePago.Fields[0].AsString);
    CDSCondVenta.Post;
  end;
  QBuscaCondiciondePago.Close;

  CDSClientesNRO_DE_CUIT.Value      := '00-00000000-0';
  // FormClientes_2.dbeCodigo.SetFocus;
  CDSClientesPERCIBIR_IB.Value      := 'S';
  CDSClientesFECHA_VENCIMI_DDJJ_MULTI.Clear;
  CDSClientesINSCRIPTO_MULTICONVENIO.Value := 'N';
  if (IntToStr(FormClientes_2.SucursalPorDefecto) <> '') then
    CDSClientesSUCURSAL.Value := FormClientes_2.SucursalPorDefecto;
  CDSClientesCATEGORIA.Value        := -1;
  CDSClientesID_FACTURAPORDEFECTO.Clear;
  CDSClientesID_FACTURACONTADOPORDEFECTO.Clear;
  CDSClientesID_NOTADEBITOPORDEFECTO.Clear;
  CDSClientesID_NOTACREDITOPORDEFECTO.Clear;
  CDSClientesID_TIKETPORDEFECTO.Clear;
  CDSClientesCORTAR_SERVICIO.Value   := 'S';
  CDSClientesCON_PLANPAGO.Value      := 'N';
  CDSClientesCON_PLANPAGO.Value      := 'N';
  CDSClientesPRESENTO_F8001.Value    := 'N';
  CDSClientesID_TARJETACREDITO.Value := -1;
  CDSClientesID_BANCO.Value          := -1;
  CDSClientesNRO_TARJETA_C.Value     := '';
  CDSClientesNRO_CTA_BCO.Value       := '';
  CDSClientesNRO_SEG_TC.Value        := '';
  CDSClientesCON_MONITOREO.Value     := 'N';
  CDSClientesCON_GPRS.Value          := 'N';
  CDSClientesCON_HOSTING.Value       := 'N';
  CDSClientesCOMUNITARIO.Value       := 'N';
  CDSClientesENVIAR_CPTE_MAIL.Value  := 'N';
  CDSClientesTIPODOCUMENTO.Value     := 0;
  CDSClientesESQUEMALISTA.Value      := -1;
END;

PROCEDURE TDatosClientes.CDSLdrNewRecord(DataSet: TDataSet);
  BEGIN
    CDSLdrCODIGO_CLIENTE.Value := CDSClientesCODIGO.Value;
    QUltimoLdr.Close;
    QUltimoLdr.ParamByName('Codigo').Value := CDSClientesCODIGO.Value;
    QUltimoLdr.Open;
    IF (QUltimoLdr.IsEmpty) THEN
      CDSLdrCODIGO_LDR.Value := 0
    ELSE
      CDSLdrCODIGO_LDR.Value := QUltimoLdrCODIGOLDR.Value + 1;

  END;

PROCEDURE TDatosClientes.CDSLdrPostError(DataSet: TDataSet; E: EDatabaseError;
  VAR Action: TDataAction);
  BEGIN
    IF Action = daFail THEN
    BEGIN
      ShowMessage('Codigo duplicado o no Ingresado');
      Action := daAbort;
    END;

  END;

procedure TDatosClientes.CDSNubCeoNewRecord(DataSet: TDataSet);
begin
  CDSNubCeoCODIGO.Value:=CDSClientesCODIGO.AsString;
end;

procedure TDatosClientes.CDSPlantillasBeforeEdit(DataSet: TDataSet);
  begin
    if (CDSClientesTIPOABONO.Value = 'X') or (CDSPlantillas.RecordCount > 1)
    then
      CDSPlantillas.Cancel;
  end;

procedure TDatosClientes.CDSPlantillasBeforeInsert(DataSet: TDataSet);
  begin
    if (CDSClientesTIPOABONO.Value = 'X') or (CDSPlantillas.RecordCount > 0)
    then
      CDSPlantillas.Cancel;
  end;

procedure TDatosClientes.CDSPlantillasBeforePost(DataSet: TDataSet);
  begin
    if (CDSClientesTIPOABONO.Value = 'X') or (CDSPlantillas.RecordCount > 1)
    then
    begin
      CDSPlantillas.Cancel;

    end;
    if CDSPlantillasCODIGO.AsString = '' then
    begin
      CDSPlantillas.Cancel;

    end;

  end;

procedure TDatosClientes.CDSPlantillasMUESTRAPLANTILLAChange(Sender: TField);
  begin
    // CDSPlantillasTOTAL.AsFloat:=CDSPlantillasMUESTRAPLANTILLA.LookupDataSet.FieldByName('total').AsFloat;
  end;

procedure TDatosClientes.CDSPlantillasNewRecord(DataSet: TDataSet);
  begin
    CDSPlantillasCODIGO.Value := CDSClientesCODIGO.Value;
  end;

PROCEDURE TDatosClientes.CDSClientesid_cod_postalSetText(Sender: TField;
  CONST Text: STRING);
  BEGIN
    if (Text <> '') and (Text[1] <> #13) Then
    begin
      Sender.AsString := Text;
      IF NOT(AsignaLocalida(Sender.AsInteger)) THEN
      BEGIN
        Sender.AsString := '';
        ShowMessage('Codigo No Válido');
      END;
    end;
  END;

procedure TDatosClientes.DataModuleDestroy(Sender: TObject);
  begin
    DatosClientes := nil;
  end;

procedure TDatosClientes.CDSClientesNombreSetText(Sender: TField;
  const Text: String);
  begin
    Sender.AsString := Text;
    CDSClientesRAZON_SOCIAL.Value := trim(Text);
    CDSClientesNOMBRE_COMPLETO.Value := trim(Text);
  end;

procedure TDatosClientes.CDSClientesNro_de_CUITSetText(Sender: TField;
  const Text: String);
  var
    Suma: integer;
    NroValidacion: integer;
  begin
    // aca biene con formato 00-00000000-0
    if (Text[1] <> '') and (Text[1] <> ' ') and (Text[2] <> ' ') and
      (Text[4] <> ' ') and (Text[5] <> ' ') and (Text[6] <> ' ') and
      (Text[7] <> ' ') and (Text[8] <> ' ') and (Text[9] <> ' ') and
      (Text[10] <> ' ') and (Text[11] <> ' ') and (Text[13] <> ' ') Then
    begin
      Suma := StrToInt(copy(Text, 1, 1)) * 5 + StrToInt(copy(Text, 2, 1)) * 4 +
        StrToInt(copy(Text, 4, 1)) * 3 + StrToInt(copy(Text, 5, 1)) * 2 +
        StrToInt(copy(Text, 6, 1)) * 7 + StrToInt(copy(Text, 7, 1)) * 6 +
        StrToInt(copy(Text, 8, 1)) * 5 + StrToInt(copy(Text, 9, 1)) * 4 +
        StrToInt(copy(Text, 10, 1)) * 3 + StrToInt(copy(Text, 11, 1)) * 2;
      if ((Suma mod 11) <> 0) then
      begin
        if ((11 - (Suma mod 11)) <> StrToInt(copy(Text, 13, 1))) and
          ((Suma mod 11) < 10) Then
        begin
          NroValidacion := 11 - (Suma mod 11);
          if NroValidacion >= 10 then
            NroValidacion := 1;

          if MessageDlg('Numero de cuit no válido....' + #13 +
            'el numero de validación que le corresponde es ' +
            IntToStr(NroValidacion) + #13 + 'lo corrije?', mtInformation,
            [mbYes, mbNo], 0) = mrYes Then
            Sender.AsString := copy(Text, 1, 12) + IntToStr(NroValidacion)
          else
            Sender.AsString := '';
          // FormClientes_2.dbeCuit.SetFocus;
        end
        else
          Sender.AsString := Text;
      end
      else if ((Suma mod 11) = 0) then
      begin
        if StrToInt(copy(Text, 13, 1)) <> 0 Then
        begin
          ShowMessage('Numero de cuit no valido....');
          Sender.AsString := '';
          // FormClientes_2.dbeCuit.SetFocus;
        end
        else
          Sender.AsString := Text;
      end;
      if (copy(Text, 1, 2) <> '00') and (copy(Text, 1, 2) <> '20') and
        (copy(Text, 1, 2) <> '23') and (copy(Text, 1, 2) <> '27') and
        (copy(Text, 1, 2) <> '24') and (copy(Text, 1, 2) <> '30') and
        (copy(Text, 1, 2) <> '34') and (copy(Text, 1, 2) <> '50') and
        (copy(Text, 1, 2) <> '55') and (copy(Text, 1, 2) <> '33') Then
      begin
        Sender.AsString := '';
        ShowMessage
          ('El prefijo no se corresponde con las opciones 20/23/24/27/30/33/34....');
      end;
    end;
    if Sender.AsString <> '' Then
    begin
      QBuscarCuit.Close;
      QBuscarCuit.ParamByName('Cuit').Value := Sender.AsString;
      QBuscarCuit.Open;
      IF NOT(QBuscarCuit.IsEmpty) THEN
      BEGIN
        IF MessageDlg
          ('Este Número de cuit ya fué ingresado, Ignora y continua o cancela.....',
          mtInformation, [mbIgnore, mbCancel], 0) = mrCancel THEN
            begin
              if Assigned(FormClientes_2) then
                FormClientes_2.Cancelar.Execute;
            end;
      END;
    end;
  end;

procedure TDatosClientes.CDSClientesSUCURSALChange(Sender: TField);
  begin
    if CDSClientes.State in [dsInsert, dsEdit] then
    begin
      DatosClientes.CDSClientesID_FACTURAPORDEFECTO.Clear;
      DatosClientes.CDSClientesID_FACTURACONTADOPORDEFECTO.Clear;
      DatosClientes.CDSClientesID_NOTADEBITOPORDEFECTO.Clear;
      DatosClientes.CDSClientesID_NOTACREDITOPORDEFECTO.Clear;
      DatosClientes.CDSClientesID_TIKETPORDEFECTO.Clear;
      DatosClientes.CDSClientesID_RECIBOPORDEFECTO.Clear;
    end;
  end;

procedure TDatosClientes.CDSClientesTIPOABONOChange(Sender: TField);
  begin
    if CDSClientesTIPOABONO.Value = 'X' then
      if Not(CDSPlantillas.IsEmpty) then
      begin
        CDSPlantillas.Delete;
        FormClientes_2.dbgPlantilla.Refresh;
        // CDSPlantillas.Refresh;
      end;

  end;

procedure TDatosClientes.CDSClientesVENDEDORSetText(Sender: TField;
  const Text: String);
  begin
    if (Text <> '') and (Text[1] <> #13) Then
    begin
      Sender.AsString := copy('000000', 1, Sender.Size - length(Text)) + Text;
      IF NOT(AsignaVendedor(Sender.AsString)) THEN
      BEGIN
        Sender.AsString := '';
        ShowMessage('Codigo No Válido');
      END;
    end;

  end;

END.
