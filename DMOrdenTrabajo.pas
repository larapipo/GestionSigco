unit DMOrdenTrabajo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBGenerator, Db, DBClient, Provider, variants, Librerias, FMTBcd, SqlExpr,
  FireDAC.Stan.Intf,  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,StrUtils, Vcl.ComCtrls;

type
  TCategoriaProductos = record
      ID: integer;
      Detalle: string;
  end;


  TDatosOrdenDeTrabajo = class(TDataModule)
    DSPOTrabajoCab: TDataSetProvider;
    DSPStock: TDataSetProvider;
    DSPCondVenta: TDataSetProvider;
    DSPOTrabajoDet: TDataSetProvider;
    DSPClientes: TDataSetProvider;
    DSPInscripcion: TDataSetProvider;
    DSPDeposito: TDataSetProvider;
    DSPIva: TDataSetProvider;
    DSPSucursal: TDataSetProvider;
    DSPLdr: TDataSetProvider;
    ibgOT_Det: TIBGenerator;
    ibgOT_Cab: TIBGenerator;
    DSPOTrabajoMov: TDataSetProvider;
    ibgOT_Mov: TIBGenerator;
    DSPBuscaProducto: TDataSetProvider;
    DSPBuscadorProductos: TDataSetProvider;
    DSOperador: TDataSource;
    DSPImpuestos: TDataSetProvider;
    ibgImpuesto: TIBGenerator;
    DSPEmpresa: TDataSetProvider;
    DSPPenalizaciones: TDataSetProvider;
    CDSPenalizaciones: TClientDataSet;
    DSPenalizaciones: TDataSource;
    DSListaPrecios: TDataSource;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    DSPBuscaVendedor: TDataSetProvider;
    CDSBuscaVendedor: TClientDataSet;
    CDSBuscaVendedorCODIGO: TStringField;
    CDSBuscaVendedorNOMBRE: TStringField;
    CDSOTrabajoCab: TClientDataSet;
    CDSOTrabajoCabID_OT: TIntegerField;
    CDSOTrabajoCabCLASECPBTE: TStringField;
    CDSOTrabajoCabNROCPBTE: TStringField;
    CDSOTrabajoCabDESCRIPCION: TMemoField;
    CDSOTrabajoCabPRODUCTO: TIntegerField;
    CDSOTrabajoCabLETRAOT: TStringField;
    CDSOTrabajoCabSUCOT: TStringField;
    CDSOTrabajoCabNUMEROOT: TStringField;
    CDSOTrabajoCabFECHAINICIO: TSQLTimeStampField;
    CDSOTrabajoCabFECHAESTIMADA: TSQLTimeStampField;
    CDSOTrabajoCabFECHAFINAL: TSQLTimeStampField;
    CDSOTrabajoCabCONDICIONVTA: TIntegerField;
    CDSOTrabajoCabANULADO: TStringField;
    CDSOTrabajoCabNRORTO: TStringField;
    CDSOTrabajoCabIMPRESO: TStringField;
    CDSOTrabajoCabSUCURSAL: TIntegerField;
    CDSOTrabajoCabDEPOSITO: TIntegerField;
    CDSOTrabajoCabCALCULA_SOBRETASA: TStringField;
    CDSOTrabajoCabDESGLOZAIVA: TStringField;
    CDSOTrabajoCabRESPONSABLE_OT: TStringField;
    CDSOTrabajoCabUSUARIO: TStringField;
    CDSOTrabajoCabESTADO: TIntegerField;
    CDSOTrabajoCabPRIORIDAD_INICIAL: TSmallintField;
    CDSOTrabajoCabDELTA_PRIORIDAD: TSmallintField;
    CDSOTrabajoCabPRIORIDAD: TSmallintField;
    CDSOTrabajoCabENTREGADO: TStringField;
    CDSOTrabajoCabCODIGO: TStringField;
    CDSOTrabajoCabLDR: TIntegerField;
    CDSOTrabajoCabNOMBRE: TStringField;
    CDSOTrabajoCabRAZONSOCIAL: TStringField;
    CDSOTrabajoCabDIRECCION: TStringField;
    CDSOTrabajoCabTIPOIVA: TIntegerField;
    CDSOTrabajoCabCUIT: TStringField;
    CDSOTrabajoCabCPOSTAL: TStringField;
    CDSOTrabajoCabLOCALIDAD: TStringField;
    CDSOTrabajoCabZONA: TIntegerField;
    CDSOTrabajoCabFACTURA_ID_COMPROBANTE: TIntegerField;
    CDSOTrabajoCabFACTURANRO: TStringField;
    CDSOTrabajoCabFACTURA_ID: TIntegerField;
    CDSOTrabajoCabFACTURA_TIPO: TStringField;
    CDSOTrabajoCabFACTURA_CLASE: TStringField;
    CDSOTrabajoCabFECHAFACTURA: TSQLTimeStampField;
    CDSOTrabajoCabRESPONSABLE_TURNO: TStringField;
    CDSOTrabajoCabARCHIVADA: TStringField;
    CDSOTrabajoCabRECLAMADA: TStringField;
    CDSOTrabajoCabTOTALHORAS: TSQLTimeStampField;
    CDSOTrabajoCabOBSERVACION1: TMemoField;
    CDSOTrabajoCabLISTAPRECIO: TIntegerField;
    CDSOTrabajoCabMAILENVIADO: TStringField;
    CDSOTrabajoCabMUESTRACONDVENTA: TStringField;
    CDSOTrabajoCabMUESTRADEPOSITO: TStringField;
    CDSOTrabajoCabMUESTRASUCURSAL: TStringField;
    CDSOTrabajoCabMUESTRALDR: TStringField;
    CDSOTrabajoCabMUESTRAIVA: TStringField;
    CDSOTrabajoCabMUESTRACOMPROBANTE: TStringField;
    CDSOTrabajoCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSOTrabajoCabMUESTRARESPONSABLEOT: TStringField;
    CDSOTrabajoCabMUESTRARESPONSABLETURNO: TStringField;
    CDSOTrabajoCabMUESTRATIPOFACTURA: TStringField;
    CDSOTrabajoCabMUESTRATELEFONO1: TStringField;
    CDSOTrabajoCabMUESTRATELEFONO2: TStringField;
    CDSOTrabajoDet: TClientDataSet;
    CDSOTrabajoDetID: TIntegerField;
    CDSOTrabajoDetID_CABOT: TIntegerField;
    CDSOTrabajoDetTIPOCPBTE: TStringField;
    CDSOTrabajoDetCLASECPBTE: TStringField;
    CDSOTrabajoDetNROCPBTE: TStringField;
    CDSOTrabajoDetCODIGOARTICULO: TStringField;
    CDSOTrabajoDetDETALLE: TStringField;
    CDSOTrabajoDetUNIDAD: TStringField;
    CDSOTrabajoDetDESGLOZAIVA: TStringField;
    CDSOTrabajoDetMODO_GRAVAMEN: TStringField;
    CDSOTrabajoDetTIPOIVA_TASA: TIntegerField;
    CDSOTrabajoDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSOTrabajoDetDEPOSITO: TIntegerField;
    CDSOTrabajoDetAFECTA_STOCK: TStringField;
    CDSOTrabajoDetCALCULA_SOBRETASA: TStringField;
    CDSOTrabajoDetGRAVADO_IB: TStringField;
    DSOTrabajoDet: TDataSource;
    CDSImpuestos: TClientDataSet;
    DSImpuestos: TDataSource;
    CDSOTrabajoMov: TClientDataSet;
    CDSOTrabajoMovNomOperario: TStringField;
    CDSOTrabajoMovNewReg: TBooleanField;
    CDSOTrabajoMovID: TIntegerField;
    CDSOTrabajoMovID_OTCAB: TIntegerField;
    CDSOTrabajoMovDETALLE: TMemoField;
    CDSOTrabajoMovHORAINICIO: TSQLTimeStampField;
    CDSOTrabajoMovHORAFINAL: TSQLTimeStampField;
    CDSOTrabajoMovPRUDUCTO: TIntegerField;
    CDSOTrabajoMovTOTALTIEMPO: TSQLTimeStampField;
    CDSOTrabajoMovCLIENTE: TStringField;
    CDSOTrabajoMovOPERARIO: TStringField;
    CDSOTrabajoMovMAILENVIADO: TStringField;
    CDSOTrabajoDetNEWREG: TBooleanField;
    DSOTrabajoMov: TDataSource;
    CDSCondVenta: TClientDataSet;
    CDSStock: TClientDataSet;
    CDSBuscaProducto: TClientDataSet;
    CDSBuscaProductoID: TIntegerField;
    CDSClientes: TClientDataSet;
    CDSEmpresa: TClientDataSet;
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
    CDSDeposito: TClientDataSet;
    CDSDepositoID: TIntegerField;
    CDSDepositoNOMBRE: TStringField;
    CDSDepositoSUCURSAL: TIntegerField;
    CDSIva: TClientDataSet;
    CDSIvaCODIGO: TIntegerField;
    CDSIvaDESCRIPCION: TStringField;
    CDSIvaTASA: TFMTBCDField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSBuscadorProductos: TClientDataSet;
    CDSBuscadorProductosDESCRIPCION: TStringField;
    CDSBuscadorProductosID: TIntegerField;
    CDSOperarios: TClientDataSet;
    DSPOperarios: TDataSetProvider;
    CDSOperariosNOMBRE: TStringField;
    CDSOperariosCODIGO: TStringField;
    CDSListaPrecios: TClientDataSet;
    DSPListaPrecios: TDataSetProvider;
    CDSListaPreciosID: TIntegerField;
    CDSListaPreciosNOMBRE: TStringField;
    CDSListaPreciosF_PAGO: TIntegerField;
    CDSPersonalCARGO: TIntegerField;
    CDSPersonalCATEGORIA: TIntegerField;
    CDSPersonalCTACONTABLE: TIntegerField;
    CDSPersonalDOMICILIO: TStringField;
    CDSPersonalESTADO_CIVIL: TStringField;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalTELEFONO_2: TStringField;
    CDSPersonalMUESTRACARGO: TStringField;
    CDSPersonalMUESTRACATEGORIA: TStringField;
    CDSPersonalTELEFONO_1: TStringField;
    CDSPersonalLOCALIDAD: TIntegerField;
    CDSPersonalMUESTRALOCALIDAD: TStringField;
    CDSPersonalMUESTRACPOSTAL: TStringField;
    CDSPersonalCODIGO: TStringField;
    CDSPersonalAUTORIZAOC: TStringField;
    CDSPersonalSECTORDECOMPRA: TStringField;
    CDSPersonalCORREO: TStringField;
    CDSPersonalPOLITICACOMISION: TIntegerField;
    CDSPersonalMODODEPENDENCIA: TStringField;
    CDSPersonalVENDEDOR: TStringField;
    CDSPersonalCOBRADOR: TStringField;
    CDSPersonalACTIVO: TStringField;
    CDSPersonalFECHA_INGRESO: TSQLTimeStampField;
    CDSPersonalFECHA_NACIMIENTO: TSQLTimeStampField;
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
    CDSOTrabajoCabTIPOCPBTE: TStringField;
    CDSOTrabajoCabOT_ANTERIOR_ID: TIntegerField;
    CDSOTrabajoCabOT_ANTERIOR_NROCPBTE: TStringField;
    CDSOTrabajoCabTELEFONO1: TStringField;
    CDSOTrabajoCabTELEFONO2: TStringField;
    CDSOTrabajoCabCORREOELECTRONICO: TStringField;
    CDSOTrabajoCabMUESTRACELULAR: TStringField;
    CDSOTrabajoCabMUESTRANRODOC: TStringField;
    CDSOTrabajoCabDESCRIPCIONPRODUCTO: TStringField;
    CDSOTrabajoCabIDENTIFICADORPRODUCTO: TStringField;
    DSPBuscaLdr: TDataSetProvider;
    CDSBuscaLdr: TClientDataSet;
    CDSBuscaLdrCODIGO_CLIENTE: TStringField;
    CDSBuscaLdrCODIGO_LDR: TIntegerField;
    CDSBuscaLdrDIRECCION: TStringField;
    CDSBuscaLdrNOMBRE: TStringField;
    CDSBuscaLdrCPOSTAL: TStringField;
    CDSMotivos: TClientDataSet;
    DSPMotivos: TDataSetProvider;
    DSMotivos: TDataSource;
    CDSMotivosID: TIntegerField;
    CDSMotivosDETALLE: TStringField;
    CDSMotivosPOR_DEFECTO: TStringField;
    CDSOTrabajoCabMOTIVO_OTRABAJO: TIntegerField;
    CDSOTrabajoCabFECHA_HORA: TSQLTimeStampField;
    CDSOTrabajoCabFECHAESTIMADAFIN: TSQLTimeStampField;
    CDSOTrabajoCabTELEFONO_CELULAR: TStringField;
    CDSBuscaComprobEN_USO: TStringField;
    CDSBuscaComprobCODIGO_AFIP: TStringField;
    CDSBuscaComprobULTIMONRO: TIntegerField;
    QPrimerConVta: TFDQuery;
    QTraerRecargoDeLista: TFDQuery;
    QTraerRecargoDeListaRECARGO: TFloatField;
    QPrimerLdr: TFDQuery;
    QPrecioEspecial: TFDQuery;
    QPrecioEspecialPRECIOPACTADO: TFloatField;
    QAnulacionFD: TFDQuery;
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
    QDepositoStkSECTOR: TStringField;
    QDepositoStkUBICACION: TStringField;
    QDepositoStkFULTAJUSTE: TSQLTimeStampField;
    QDepositoStkUNIDADES: TFloatField;
    QDepositoStkAVISO_MINIMOSTOCK: TStringField;
    QMonedas: TFDQuery;
    QMotivos: TFDQuery;
    QVerificaProducto: TFDQuery;
    QVerificaProductoID: TIntegerField;
    QVerificaProductoID_CATEGORIA: TIntegerField;
    QVerificaProductoIDENTIFICADOR: TStringField;
    QVerificaProductoDESCRIPCION: TStringField;
    QVerificaProductoPROPIETARIO: TStringField;
    QVerificaProductoOBS: TStringField;
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
    QBuscaComp: TFDQuery;
    QBuscadorProductos: TFDQuery;
    QMonedasID: TIntegerField;
    QMonedasMONEDA: TStringField;
    QMonedasCOTIZACION: TFloatField;
    QMonedasSIGNO: TStringField;
    QMonedasORDEN: TSmallintField;
    QMonedasCOTIZACION_COMPRA: TFloatField;
    DSPOTrabajoSubDet: TDataSetProvider;
    CDSOTrabajoSubDet: TClientDataSet;
    DSOTrabajosSubDet: TDataSource;
    ibgSubDet: TIBGenerator;
    QBuscadorDeposito: TFDQuery;
    QBuscadorDepositoID: TIntegerField;
    QBuscadorDepositoNOMBRE: TStringField;
    DSPBuscadorDeposito: TDataSetProvider;
    CDSBuscadorDeposito: TClientDataSet;
    CDSOTrabajoDetCON_NROSERIE: TStringField;
    CDSBuscaNroSerie: TClientDataSet;
    DSPBuscaNroSerie: TDataSetProvider;
    QBuscaNroSerie: TFDQuery;
    CDSBuscaNroSerieID: TIntegerField;
    CDSBuscaNroSerieCODIGO_STK: TStringField;
    CDSBuscaNroSerieCODIGOSERIE: TStringField;
    CDSBuscaNroSerieFECHAINGRESO: TSQLTimeStampField;
    CDSBuscaNroSerieFECHAEGRESO: TSQLTimeStampField;
    CDSBuscaNroSerieDEPOSITO: TIntegerField;
    QNroSerie: TFDQuery;
    QNroSerieID: TIntegerField;
    QNroSerieCODIGO_STK: TStringField;
    QNroSerieCODIGOSERIE: TStringField;
    QNroSerieFECHAINGRESO: TSQLTimeStampField;
    QNroSerieFECHAEGRESO: TSQLTimeStampField;
    CDSOTrabajoSubDetID: TIntegerField;
    CDSOTrabajoSubDetID_DETOT: TIntegerField;
    CDSOTrabajoSubDetID_CABOT: TIntegerField;
    CDSOTrabajoSubDetCODIGOARTICULO: TStringField;
    CDSOTrabajoSubDetSERIE: TStringField;
    CDSOTrabajoSubDetDEPOSITO: TIntegerField;
    CDSOTrabajoSubDetTIPO: TStringField;
    DSPOTrabajoConsumible: TDataSetProvider;
    CDSOTrabajoConsumible: TClientDataSet;
    DSOTrabajoConsumible: TDataSource;
    ibgOTrabajoConsumible: TIBGenerator;
    CDSOTrabajoConsumibleID: TIntegerField;
    CDSOTrabajoConsumibleID_CABOT: TIntegerField;
    CDSOTrabajoConsumibleCODIGO: TStringField;
    CDSOTrabajoConsumibleMUESTRASTOCK: TStringField;
    CDSOTrabajoConsumibleCANT_ESTIMADA: TSingleField;
    CDSOTrabajoConsumibleCANT_CONSUMIDA: TSingleField;
    CDSOTrabajoConsumiblePRECIO_UNITARIO: TSingleField;
    CDSOTrabajoConsumibleAFECTA_STOCK: TStringField;
    CDSOTrabajoConsumibleTOTAL: TFloatField;
    CDSOTrabajoCabID_AJUSTE_STOCK: TIntegerField;
    CDSOTrabajoCabMUESTRANROAJUSTE: TStringField;
    DSPModelos: TDataSetProvider;
    CDSModelos: TClientDataSet;
    QBuscaModelos: TFDQuery;
    CDSModelosMODELO: TStringField;
    QBuscaIdent: TFDQuery;
    QBuscaIdentID: TIntegerField;
    ibgProducto: TIBGenerator;
    CDSOTrabajoCabOBSERVACION2: TMemoField;
    QUltCodProducto: TFDQuery;
    QUltCodProductoID: TIntegerField;
    CDSOTrabajoDetFECHAVTA: TSQLTimeStampField;
    CDSOTrabajoMovFECHA: TSQLTimeStampField;
    QPenalizaciones: TFDQuery;
    CDSPenalizacionesID: TIntegerField;
    CDSPenalizacionesID_OT: TIntegerField;
    CDSPenalizacionesNRO_OT: TStringField;
    CDSPenalizacionesFECHA: TSQLTimeStampField;
    CDSPenalizacionesEMPLEADO: TStringField;
    CDSPenalizacionesPUNTOS: TFloatField;
    CDSPenalizacionesMOTIVO: TStringField;
    QOTrabajoSubDet: TFDQuery;
    QOTrabajoConsumible: TFDQuery;
    QCategoriaPorDef: TFDQuery;
    QCategoriaPorDefID: TIntegerField;
    CDSProducto: TClientDataSet;
    CDSProductoID: TIntegerField;
    CDSProductoID_CATEGORIA: TIntegerField;
    CDSProductoIDENTIFICADOR: TStringField;
    CDSProductoDESCRIPCION: TStringField;
    CDSProductoPROPIETARIO: TStringField;
    CDSProductoOBS: TStringField;
    CDSProductoMARCA: TStringField;
    CDSProductoMODELO: TStringField;
    CDSProductoMUESTRACATEGORIA: TStringField;
    CDSProductoMUESTRAPROPIETARIO: TStringField;
    CDSProductoMUESTRAMARCA: TStringField;
    CDSBuscaProductoIDENTIFICADOR: TStringField;
    CDSBuscaProductoDESCRIPCION: TStringField;
    CDSBuscaProductoID_CATEGORIA: TIntegerField;
    CDSBuscaProductoPROPIETARIO: TStringField;
    CDSBuscaProductoOBS: TStringField;
    CDSBuscaProductoMARCA: TStringField;
    CDSBuscaProductoMODELO: TStringField;
    CDSBuscaProductoMUESTRACATEGORIA: TStringField;
    CDSBuscaProductoMUESTRAPROPIETARIO: TStringField;
    CDSBuscaProductoMUESTRAMARCA: TStringField;
    QCategoriaPorDefDETALLE: TStringField;
    CDSCondVentaCODIGOCLIENTE: TStringField;
    CDSCondVentaCODIGOPAGO: TIntegerField;
    CDSCondVentaPOR_DEFECTO: TStringField;
    CDSCondVentaDETALLE: TStringField;
    CDSCondVentaDIAS: TIntegerField;
    CDSOTrabajoCabNETOGRAV1: TFloatField;
    CDSOTrabajoCabNETOGRAV2: TFloatField;
    CDSOTrabajoCabDSTO: TFloatField;
    CDSOTrabajoCabDSTOIMPORTE: TFloatField;
    CDSOTrabajoCabNETOEXEN1: TFloatField;
    CDSOTrabajoCabNETOEXEN2: TFloatField;
    CDSOTrabajoCabTOTAL: TFloatField;
    CDSOTrabajoCabDEBE: TFloatField;
    CDSOTrabajoCabPUNTOS: TFloatField;
    CDSOTrabajoCabSENIA: TFloatField;
    CDSOTrabajoCabPROBLEMA: TMemoField;
    CDSOTrabajoCabPASSWORD: TStringField;
    CDSOTrabajoCabPATRON: TStringField;
    CDSOTrabajoDetCANTIDAD: TFloatField;
    CDSOTrabajoDetUNITARIO_TOTAL: TFloatField;
    CDSOTrabajoDetUNITARIO_GRAVADO: TFloatField;
    CDSOTrabajoDetUNITARIO_EXENTO: TFloatField;
    CDSOTrabajoDetIVA_TASA: TFloatField;
    CDSOTrabajoDetIVA_SOBRETASA: TFloatField;
    CDSOTrabajoDetCOSTO_GRAVADO: TFloatField;
    CDSOTrabajoDetCOSTO_EXENTO: TFloatField;
    CDSOTrabajoDetCOSTO_TOTAL: TFloatField;
    CDSOTrabajoDetDESCUENTO: TFloatField;
    CDSOTrabajoDetTOTAL: TFloatField;
    CDSOTrabajoDetMARGEN: TFloatField;
    CDSOTrabajoDetCOTIZACION: TFloatField;
    CDSOTrabajoDetID_MONEDA: TIntegerField;
    CDSImpuestosID_OTCAB: TIntegerField;
    CDSImpuestosID_IMPUESTO: TIntegerField;
    CDSImpuestosCODIGO_GRAVAMEN: TIntegerField;
    CDSImpuestosDETALLE: TStringField;
    CDSImpuestosNETO: TFloatField;
    CDSImpuestosTASA: TFloatField;
    CDSImpuestosIMPORTE: TFloatField;
    CDSCondVentaDESCUENTO: TFloatField;
    CDSCondVentaDESCUENTO_FPAGO: TFloatField;
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
    CDSStockUNIDAD: TStringField;
    CDSStockCONTROLASTOCK: TStringField;
    CDSStockCLASE_ARTICULO: TIntegerField;
    CDSStockMODO_GRAVAMEN: TStringField;
    CDSStockGRAVADO_IB: TStringField;
    CDSStockTASA_IB: TIntegerField;
    CDSStockACTUALIZACOSTO: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockCONTENIDO_COMPRA: TFloatField;
    CDSStockMONEDA: TIntegerField;
    CDSStockPRESENTACION_UNIDAD: TStringField;
    CDSStockPRESENTACION_CANTIDAD: TFloatField;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesNOMBRE_COMPLETO: TStringField;
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
    CDSClientesNRO_DE_CUIT: TStringField;
    CDSClientesACTIVO: TStringField;
    CDSClientesSUCURSAL: TIntegerField;
    CDSClientesVENDEDOR: TStringField;
    CDSClientesTIPODOCUMENTO: TSmallintField;
    CDSClientesNRODOCUMENTO: TStringField;
    CDSClientesCORREOELECTRONICO: TStringField;
    CDSClientesCORREOELECTRONICO_2: TStringField;
    CDSClientesID_FACTURAPORDEFECTO: TIntegerField;
    CDSClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    CDSClientesID_TIKETPORDEFECTO: TIntegerField;
    CDSClientesID_RECIBOPORDEFECTO: TIntegerField;
    CDSStockCONTROL_SERIE: TStringField;
    CDSClientesZONA: TIntegerField;
    CDSOTrabajoDetRENGLON: TFloatField;
    CDSBuscadorProductosMODELO: TStringField;
    CDSPersonalVALORHORA: TFloatField;
    CDSPersonalCOMISION: TFloatField;
    CDSBuscadorProductosMUESTRAMARCA: TStringField;
    QOTrabajoMatafuegos: TFDQuery;
    DSPOTrabajoMatafuegos: TDataSetProvider;
    CDSOTrabajoMatafuegos: TClientDataSet;
    DSOTrabajoMatafuegos: TDataSource;
    ibgOTrabajoMatafuegos: TIBGenerator;
    QOTrabajoConsumibleID: TIntegerField;
    QOTrabajoConsumibleID_CABOT: TIntegerField;
    QOTrabajoConsumibleCODIGO: TStringField;
    QOTrabajoConsumibleMUESTRASTOCK: TStringField;
    QOTrabajoConsumibleCANT_ESTIMADA: TSingleField;
    QOTrabajoConsumibleCANT_CONSUMIDA: TSingleField;
    QOTrabajoConsumiblePRECIO_UNITARIO: TSingleField;
    QOTrabajoConsumibleTOTAL: TFloatField;
    QOTrabajoConsumibleAFECTA_STOCK: TStringField;
    QOTrabajoSubDetID: TIntegerField;
    QOTrabajoSubDetID_DETOT: TIntegerField;
    QOTrabajoSubDetID_CABOT: TIntegerField;
    QOTrabajoSubDetCODIGOARTICULO: TStringField;
    QOTrabajoSubDetSERIE: TStringField;
    QOTrabajoSubDetDEPOSITO: TIntegerField;
    QOTrabajoSubDetTIPO: TStringField;
    QBuscaMatafuego: TFDQuery;
    QMatafuego: TFDQuery;
    QMatafuegoID: TIntegerField;
    QMatafuegoNUMERO_MATAFUEGO: TStringField;
    QMatafuegoAGENTE: TStringField;
    QMatafuegoCAPACIDAD: TFloatField;
    QMatafuegoFECHA_FABICACION: TSQLTimeStampField;
    QMatafuegoMARCA: TStringField;
    QBuscaMatafuegoID: TIntegerField;
    QBuscaMatafuegoNUMERO_MATAFUEGO: TStringField;
    QBuscaMatafuegoAGENTE: TStringField;
    QBuscaMatafuegoCAPACIDAD: TFloatField;
    QBuscaMatafuegoFECHA_FABICACION: TSQLTimeStampField;
    QBuscaMatafuegoMARCA: TStringField;
    DSBuscaMatafuego: TDataSource;
    QOTrabajoMatafuegosID: TIntegerField;
    QOTrabajoMatafuegosID_OT: TIntegerField;
    QOTrabajoMatafuegosID_MATAFUEGO: TIntegerField;
    QOTrabajoMatafuegosNUMERO_MATAFUEGO: TStringField;
    QOTrabajoMatafuegosAGENTE: TStringField;
    QOTrabajoMatafuegosCAPACIDAD: TFloatField;
    QOTrabajoMatafuegosMARCA: TStringField;
    QOTrabajoMatafuegosAPROBADO: TStringField;
    QOTrabajoMatafuegosOPCION_PH: TStringField;
    QOTrabajoMatafuegosOPCION_VALVULA: TStringField;
    QOTrabajoMatafuegosOPCION_MANOMETRO: TStringField;
    QOTrabajoMatafuegosOPCION_PLACA: TStringField;
    QOTrabajoMatafuegosOPCION_MANGA: TStringField;
    QOTrabajoMatafuegosOPCION_TOBERA: TStringField;
    QOTrabajoMatafuegosOPCION_SUNCHO: TStringField;
    QOTrabajoMatafuegosOPCION_PINTURA: TStringField;
    QOTrabajoMatafuegosTIPO_TRABAJO: TIntegerField;
    CDSOTrabajoMatafuegosID: TIntegerField;
    CDSOTrabajoMatafuegosID_OT: TIntegerField;
    CDSOTrabajoMatafuegosID_MATAFUEGO: TIntegerField;
    CDSOTrabajoMatafuegosNUMERO_MATAFUEGO: TStringField;
    CDSOTrabajoMatafuegosAGENTE: TStringField;
    CDSOTrabajoMatafuegosCAPACIDAD: TFloatField;
    CDSOTrabajoMatafuegosMARCA: TStringField;
    CDSOTrabajoMatafuegosAPROBADO: TStringField;
    CDSOTrabajoMatafuegosOPCION_PH: TStringField;
    CDSOTrabajoMatafuegosOPCION_VALVULA: TStringField;
    CDSOTrabajoMatafuegosOPCION_MANOMETRO: TStringField;
    CDSOTrabajoMatafuegosOPCION_PLACA: TStringField;
    CDSOTrabajoMatafuegosOPCION_MANGA: TStringField;
    CDSOTrabajoMatafuegosOPCION_TOBERA: TStringField;
    CDSOTrabajoMatafuegosOPCION_SUNCHO: TStringField;
    CDSOTrabajoMatafuegosOPCION_PINTURA: TStringField;
    CDSOTrabajoMatafuegosTIPO_TRABAJO: TIntegerField;
    CDSBuscaVendedorCOMISION: TFloatField;
    CDSOTrabajoCabMUESTRAPRODUCTO: TStringField;
    CDSOTrabajoCabMUESTRAMODELOPRODUCTO: TStringField;
    CDSOTrabajoCabMUESTRACATEGORIAPRODUCTO: TStringField;
    DSPProducto: TDataSetProvider;
    CDSOTrabajoCabMUESTRAMARCAPRODUCTO: TStringField;
    QOTrabajoMatafuegosFECHA_FABICACION: TSQLTimeStampField;
    QOTrabajoMatafuegosFECHA_PH: TSQLTimeStampField;
    QOTrabajoMatafuegosFECHA_REALIZADO: TSQLTimeStampField;
    CDSOTrabajoMatafuegosFECHA_FABICACION: TSQLTimeStampField;
    CDSOTrabajoMatafuegosFECHA_PH: TSQLTimeStampField;
    CDSOTrabajoMatafuegosFECHA_REALIZADO: TSQLTimeStampField;
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
    CDSEmpresaTASA_RET_IIBB: TFloatField;
    CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    CDSEmpresaPUNITORIOS: TFloatField;
    CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    CDSEmpresaNRO_RENSPA: TStringField;
    CDSEmpresaNRO_RUCA: TIntegerField;
    CDSEmpresaCUIT_AUTORIZADO: TStringField;
    CDSEmpresaNOMBRE_AUTORIZADO: TStringField;
    CDSEmpresaCBU: TStringField;
    CDSEmpresaID_CPOSTAL: TIntegerField;
    CDSEmpresaCOD_ACTIVIDAD: TStringField;
    CDSEmpresaNOMBRE_FANTASIA: TStringField;
    CDSEmpresaCODIGO_COT: TStringField;
    CDSEmpresaDIRECCION_NRO: TStringField;
    CDSEmpresaAG_PERCEPCION_IVA: TStringField;
    CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField;
    CDSEmpresaTASA_LEY15311: TFloatField;
    CDSEmpresaDIRECCION_OPERACION: TStringField;
    CDSSucursalRECARGO: TFloatField;
    procedure CDSOTrabajoCabNewRecord(DataSet: TDataSet);
    procedure CDSOTrabajoCabSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoCabDEPOSITOSetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoCabSUCOTSetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoCabNUMEROOTSetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoCabNETOGRAV2GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CDSOTrabajoCabCODIGOSetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoCabDESGLOZAIVAChange(Sender: TField);
    procedure CDSOTrabajoCabDSTOSetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoCabNETOGRAV1GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CDSOTrabajoCabLDRSetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoCabPRODUCTOSetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoDetNewRecord(DataSet: TDataSet);
    procedure CDSOTrabajoDetBeforePost(DataSet: TDataSet);
    procedure CDSImpuestosNewRecord(DataSet: TDataSet);
    procedure CDSOTrabajoMovNewRecord(DataSet: TDataSet);
    procedure CDSOTrabajoMovHORAINICIOSetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoMovHORAFINALSetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoMovFECHASetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoDetUNITARIO_TOTALSetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoDetCODIGOARTICULOSetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoDetCANTIDADSetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoDetUNITARIO_TOTALGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CDSOTrabajoDetIVA_TASASetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoDetDESCUENTOSetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoDetTOTALGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure CDSOTrabajoDetAfterDelete(DataSet: TDataSet);
    procedure CDSOTrabajoDetAfterInsert(DataSet: TDataSet);
    procedure CDSOTrabajoDetAfterPost(DataSet: TDataSet);
    procedure CDSOTrabajoCabFACTURA_ID_COMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoMovBeforePost(DataSet: TDataSet);
    procedure DSOTrabajoDetStateChange(Sender: TObject);
    procedure CDSOTrabajoCabCONDICIONVTASetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoCabRESPONSABLE_OTSetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoCabRESPONSABLE_TURNOSetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoCabFECHAINICIOSetText(Sender: TField;
      const Text: String);
    procedure CDSOTrabajoMovAfterPost(DataSet: TDataSet);
    procedure CDSOTrabajoMovAfterDelete(DataSet: TDataSet);
    procedure CDSPenalizacionesNewRecord(DataSet: TDataSet);
    procedure CDSOTrabajoMovBeforeEdit(DataSet: TDataSet);
    procedure CDSOTrabajoDetBeforeEdit(DataSet: TDataSet);
    procedure CDSOTrabajoDetBeforeDelete(DataSet: TDataSet);
    procedure CDSOTrabajoMovBeforeDelete(DataSet: TDataSet);
    procedure CDSOTrabajoMovAfterOpen(DataSet: TDataSet);
    procedure CDSOTrabajoMovBeforeOpen(DataSet: TDataSet);
    procedure CDSOTrabajoDetAfterOpen(DataSet: TDataSet);
    procedure CDSOTrabajoDetBeforeOpen(DataSet: TDataSet);
    procedure CDSOTrabajoDetBeforeInsert(DataSet: TDataSet);
    procedure CDSOTrabajoCabHORAChange(Sender: TField);
    procedure CDSOTrabajoDetAfterEdit(DataSet: TDataSet);
    procedure sebdervDETALLEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSOTrabajoMovDETALLEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSOTrabajoSubDetNewRecord(DataSet: TDataSet);
    procedure CDSOTrabajoSubDetSERIESetText(Sender: TField; const Text: string);
    procedure CDSOTrabajoSubDetAfterPost(DataSet: TDataSet);
    procedure CDSOTrabajoSubDetBeforeDelete(DataSet: TDataSet);
    procedure CDSOTrabajoConsumibleNewRecord(DataSet: TDataSet);
    procedure CDSOTrabajoConsumibleCODIGOSetText(Sender: TField;
      const Text: string);
    procedure CDSOTrabajoConsumibleCANT_ESTIMADASetText(Sender: TField;
      const Text: string);
    procedure CDSOTrabajoConsumibleCANT_CONSUMIDASetText(Sender: TField;
      const Text: string);
    procedure CDSOTrabajoConsumiblePRECIO_UNITARIOSetText(Sender: TField;
      const Text: string);
    procedure CDSOTrabajoConsumibleAfterPost(DataSet: TDataSet);
    procedure CDSOTrabajoConsumibleAfterDelete(DataSet: TDataSet);
    procedure CDSOTrabajoCabIDENTIFICADORPRODUCTOSetText(Sender: TField;
      const Text: string);

    procedure CDSProductoNewRecord(DataSet: TDataSet);
    procedure CDSOTrabajoMatafuegosNewRecord(DataSet: TDataSet);
    procedure CDSOTrabajoMatafuegosNUMERO_MATAFUEGOSetText(Sender: TField;
      const Text: string);
  private
    { Private declarations }
    FCpbtePorDef: integer;
  public
    { Public declarations }
    NuevoProd              :boolean;
    TasaReal: Real;
    MascaraDetalleUnitario :String;
    MascaraDetalleCantidad :String;
    MascaraDetalleTotal    :String;
    MascaraDetalleDescuento:String;
    MascaraIvaImporte      :String;
    MascaraIvaTasa         :String;
    MascaraCabecera        :String;
    Renglones              :Byte;
    ActivoEventoMov,
    ActivoEventoDet        :Boolean; // lo uso como flage para habilitar el evento de BeforeEdit y Deleted
    CorreoDestino          :String;
    CorreoDestino_2        :String;
    procedure CalculaPrecioVta;
    PROCEDURE AplicarMascarasNumericas;
    PROCEDURE HabilitarLabel;
    PROCEDURE CalcularTotales;
    PROCEDURE SumarDetalle;
    Procedure SumarHoras;
    FUNCTION SumarConsumibles:Extended;
    FUNCTION AsignarArticulo(Dato: STRING): Boolean;
    FUNCTION AsignarConsumible(Dato: STRING): Boolean;
    FUNCTION AsignarProducto(Dato: integer): Boolean;
    FUNCTION AsignarLdr(Cliente: STRING; Dato: integer): Boolean;
    FUNCTION AsignarCliente(Dato: STRING): Boolean;
    FUNCTION AsignarCondVenta(Cliente: STRING; Dato: Integer): Boolean;
    FUNCTION AsignarOperador(Dato: String;Op:Byte): Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    
    function  BuscaIdent(const Text: string): string;
   // function  NuevoProducto: string;
    function  UltCodProducto: integer;
    function  CategoriaPorDef: TCategoriaProductos;

    property  CpbtePorDef:  integer read FCpbtePorDef write FCpbtePorDef;
  end;

var
  DatosOrdenDeTrabajo: TDatosOrdenDeTrabajo;
  ID_Det_Serie  : Integer;
implementation

uses UOrdenDeTrabajo, UDMain_FD, DMBuscadoresForm,
  UBuscadorArticulos;
{$R *.DFM}


procedure TDatosOrdenDeTrabajo.CalculaPrecioVta;
VAR Recargo: Variant;
begin
  if CDSOTrabajoDetCOSTO_TOTAL.AsFloat=0 Then Exit;
  if CDSOTrabajoDet.State=dsBrowse Then
    CDSOTrabajoDet.Edit;
  // ******* Aplico el Recargo de la Lista de Precios
  QTraerRecargoDeLista.Close;
  QTraerRecargoDeLista.ParamByName('Lista').Value   := CDSOTrabajoCabLISTAPRECIO.Value;
  QTraerRecargoDeLista.ParamByName('Articulo').Value:= CDSOTrabajoDetCODIGOARTICULO.Value;
  QTraerRecargoDeLista.OPen;
  IF NOT (QTraerRecargoDeLista.IsEmpty) THEN
    BEGIN
      Recargo:=QTraerRecargoDeListaRECARGO.AsFloat;
      IF (NOT (VarIsNull(Recargo))) AND (Recargo <> 0) THEN
        BEGIN
          CDSOTrabajoDetUNITARIO_GRAVADO.AsFloat := CDSOTrabajoDetCOSTO_GRAVADO.AsFloat * (1 + (Recargo * 0.01));
          CDSOTrabajoDetUNITARIO_EXENTO.AsFloat  := CDSOTrabajoDetCOSTO_EXENTO.AsFloat * (1 + (Recargo * 0.01));
          CDSOTrabajoDetUNITARIO_TOTAL.AsFloat   := CDSOTrabajoDetCOSTO_TOTAL.AsFloat * (1 + (Recargo * 0.01));
        END
    else
      BEGIN
        CDSOTrabajoDetUNITARIO_GRAVADO.AsFloat := CDSOTrabajoDetCOSTO_GRAVADO.AsFloat;
        CDSOTrabajoDetUNITARIO_EXENTO.AsFloat  := CDSOTrabajoDetCOSTO_EXENTO.AsFloat;
        CDSOTrabajoDetUNITARIO_TOTAL.AsFloat   := CDSOTrabajoDetCOSTO_TOTAL.AsFloat;
      END;
    end
  else
    BEGIN
      CDSOTrabajoDetUNITARIO_GRAVADO.AsFloat := CDSOTrabajoDetCOSTO_GRAVADO.AsFloat;
      CDSOTrabajoDetUNITARIO_EXENTO.AsFloat  := CDSOTrabajoDetCOSTO_EXENTO.AsFloat;
      CDSOTrabajoDetUNITARIO_TOTAL.AsFloat   := CDSOTrabajoDetCOSTO_TOTAL.AsFloat;
    END;
  QTraerRecargoDeLista.Close;
//******** Aplico recargo por Deposito de Vta *******
  QDepositoStk.Close;
  QDepositoStk.ParamByName('Codigo_Deposito').Value:= CDSOTrabajoDetDEPOSITO.Value;
  QDepositoStk.ParamByName('Codigo').Value         := CDSOTrabajoDetCODIGOARTICULO.Value;
  QDepositoStk.Open;
  IF NOT (QDepositoStk.IsEmpty) THEN
    BEGIN
      Recargo:=QDepositoStkRecargo.AsFloat;
      IF (NOT (VarIsNull(Recargo))) AND (Recargo <> 0) THEN
        BEGIN
          CDSOTrabajoDetUNITARIO_GRAVADO.AsFloat := CDSOTrabajoDetUNITARIO_GRAVADO.AsFloat * (1 + (Recargo * 0.01));
          CDSOTrabajoDetUNITARIO_EXENTO.AsFloat  := CDSOTrabajoDetUNITARIO_EXENTO.AsFloat * (1 + (Recargo * 0.01));
          CDSOTrabajoDetUNITARIO_TOTAL.AsFloat   := CDSOTrabajoDetUNITARIO_TOTAL.AsFloat * (1 + (Recargo * 0.01));
        END
    END;
  QDepositoStk.Close;
// ******** Aplico recargo por Sucursal ************
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value:= CDSOTrabajoCabSUCURSAL.Value;
  CDSSucursal.Open;
  Recargo := CDSSucursalRecargo.AsFloat;
  IF (NOT (VarIsNull(Recargo))) AND (Recargo <> 0) THEN
    BEGIN
      CDSOTrabajoDetUNITARIO_GRAVADO.AsFloat := CDSOTrabajoDetUNITARIO_GRAVADO.AsFloat * (1 + (Recargo * 0.01));
      CDSOTrabajoDetUNITARIO_EXENTO.AsFloat  := CDSOTrabajoDetUNITARIO_EXENTO.AsFloat * (1 + (Recargo * 0.01));
      CDSOTrabajoDetUNITARIO_TOTAL.AsFloat   := CDSOTrabajoDetUNITARIO_TOTAL.AsFloat * (1 + (Recargo * 0.01));
    END;
  CDSSucursal.Close;
// ******* Aplico Precio Especial cliente
  QPrecioEspecial.CLose;
  QPrecioEspecial.ParamByName('cliente').AsString := CDSOTrabajoCabCODIGO.Value;
  QPrecioEspecial.ParamByName('articulo').AsString:= CDSOTrabajoDetCODIGOARTICULO.Value;
  QPrecioEspecial.Open;
  if Not(QPrecioEspecial.IsEmpty) Then
    CDSOTrabajoDetUNITARIO_TOTALSetText(CDSOTrabajoDetUNITARIO_TOTAL,QPrecioEspecial.Fields[0].AsString);
  QPrecioEspecial.CLose;
end;



procedure TDatosOrdenDeTrabajo.AplicarMascarasNumericas;
VAR I:Byte;
begin
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETUNITARI';
  DMMain_FD.QOpciones.Open;
  MascaraDetalleUnitario := DMMain_FD.QOpciones.Fields[0].AsString;
  TFMTBCDField(CDSOTrabajoDetUNITARIO_TOTAL).EditFormat      :=MascaraDetalleUnitario;
  TFMTBCDField(CDSOTrabajoDetUNITARIO_TOTAL).DisplayFormat   :=MascaraDetalleUnitario;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETCANTIDA';
  DMMain_FD.QOpciones.Open;
  MascaraDetalleCantidad := DMMain_FD.QOpciones.Fields[0].AsString;
  TFMTBCDField(CDSOTrabajoDetCANTIDAD).EditFormat    := MascaraDetalleCantidad;
  TFMTBCDField(CDSOTrabajoDetCANTIDAD).DisplayFormat := MascaraDetalleCantidad;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETDESCUEN';
  DMMain_FD.QOpciones.Open;
  MascaraDetalleDescuento:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFMTBCDField(CDSOTrabajoDetDESCUENTO).EditFormat    :=MascaraDetalleDescuento;
  TFMTBCDField(CDSOTrabajoDetDESCUENTO).DisplayFormat :=MascaraDetalleDescuento;

  MascaraDetalleTotal:=',0.00';
  TFMTBCDField(CDSOTrabajoDetTOTAL).EditFormat           := MascaraDetalleTotal;
  TFMTBCDField(CDSOTrabajoDetTOTAL).DisplayFormat        := MascaraDetalleTotal;

  MascaraIvaTasa:=',0.0';
  TFMTBCDField(CDSOTrabajoDetIVA_TASA).EditFormat        := MascaraIvaTasa;
  TFMTBCDField(CDSOTrabajoDetIVA_TASA).DisplayFormat     := MascaraIvaTasa;
  TFMTBCDField(CDSOTrabajoDetIVA_SOBRETASA).EditFormat   := MascaraIvaTasa;
  TFMTBCDField(CDSOTrabajoDetIVA_SobreTasa).DisplayFormat:= MascaraIvaTasa;
  TFMTBCDField(CDSImpuestosTASA).EditFormat              := MascaraIvaTasa;
  TFMTBCDField(CDSImpuestosTASA).DisplayFormat           := MascaraIvaTasa;

  MascaraIvaImporte:=',0.00';
  TFMTBCDField(CDSImpuestosIMPORTE).EditFormat           := MascaraIvaImporte;
  TFMTBCDField(CDSImpuestosIMPORTE).DisplayFormat        := MascaraIvaImporte;

  MascaraCabecera:=',0.00';
  For i:=0 to CDSOTrabajoCab.FieldCount-1 do
    begin
      if (CDSOTrabajoCab.Fields[i].DataType=ftFMTBcd) Then
       begin
          TFMTBCDField(CDSOTrabajoCab.Fields[i]).EditFormat   :=MascaraCabecera;
          TFMTBCDField(CDSOTrabajoCab.fields[i]).DisplayFormat:=MascaraCabecera;
       end;
    end;
  DMMain_FD.QOpciones.Close;
end;

PROCEDURE TDatosOrdenDeTrabajo.HabilitarLabel;
BEGIN
  {Si la Factura no discrimina IVA}
  FormOrdenDeTrabajo.DBGrillaIva.Visible:=DatosOrdenDeTrabajo.CDSOTrabajoCabDESGLOZAIVA.Value = 'S';
  WITH FormOrdenDeTrabajo DO
    BEGIN
      IF CDSOTrabajoCab.State = dsBrowse THEN
        BEGIN
//          BtAnular.Enabled    :=(wwCDSOTrabajoCabANULADO.Value = 'N');
          btModificar.Enabled :=(CDSOTrabajoCabANULADO.Value = 'N');
          btModificar.Enabled :=(CDSOTrabajoCabIMPRESO.Value = 'N');
        END;
    END;
END;

PROCEDURE TDatosOrdenDeTrabajo.CalcularTotales;
VAR
  Acumulador: Real;
  Neto: Real;
BEGIN
  CDSOTrabajoCabTOTAL.AsFloat := 0;
  Acumulador:=0;
  CDSOTrabajoCabNetoGrav2.AsFloat  := CDSOTrabajoCabNetoGrav1.AsFloat -(CDSOTrabajoCabNetoGrav1.AsFloat * CDSOTrabajoCabDsto.AsFloat * 0.01);
  CDSOTrabajoCabNetoExen2.AsFloat  := CDSOTrabajoCabNetoExen1.AsFloat -(CDSOTrabajoCabNetoExen1.AsFloat * CDSOTrabajoCabDsto.AsFloat * 0.01);
  CDSOTrabajoCabDstoImporte.AsFloat:=(CDSOTrabajoCabNetoGrav1.AsFloat + CDSOTrabajoCabNetoExen1.AsFloat) * CDSOTrabajoCabDsto.AsFloat * 0.01;
  CDSImpuestos.First;
  WHILE NOT (CDSimpuestos.Eof) DO
    BEGIN
      CDSImpuestos.Edit;
      Neto:=CDSImpuestosNeto.AsFloat;
      CDSImpuestosNeto.AsFloat  := 0;
      CDSImpuestosNeto.AsFloat  := Neto * (1-CDSOTrabajoCabDsto.AsFloat/100);
      CDSImpuestosImporte.AsFloat := 0;
      CDSImpuestosImporte.AsFloat := CDSImpuestosNeto.AsFloat *(CDSimpuestosTasa.AsFloat /100);
      Acumulador                  := Acumulador + CDSImpuestosImporte.AsFloat;
      CDSImpuestos.Next;
    END;
  CDSOTrabajoCabTotal.AsFloat := Moneda3D('+',MascaraCabecera, CDSOTrabajoCabNetoGrav2.AsFloat + CDSOTrabajoCabNetoExen2.AsFloat + Acumulador);
  IF CDSOTrabajoCabTotal.AsFloat > 0 THEN
    { TODO -cMensajes :
    TasaReal: esta tasa la uso como multiplicador para cuando el cliente es del tipo
    Monotributo o consumidor final, as'i muestro los importe con el Iva
    incluido.
    No esta con formato para que la cuenta me de bien..... creo...}
  TRY
    TasaReal:=(((CDSOTrabajoCabTotal.AsFloat - CDSOTrabajoCabNetoGrav2.AsFloat) *100) / CDSOTrabajoCabNetoGrav2.AsFloat);
  EXCEPT
    ON EZeroDivide DO
      TasaReal:=0;
  END;
  CDSOTrabajoCabNetoGrav2.AsFloat  :=(CDSOTrabajoCabNetoGrav1.AsFloat -(CDSOTrabajoCabNetoGrav1.AsFloat * CDSOTrabajoCabDsto.AsFloat * 0.01));
  CDSOTrabajoCabNetoGrav1.AsFloat  := CDSOTrabajoCabNetoGrav1.AsFloat;
END;

PROCEDURE TDatosOrdenDeTrabajo.SumarHoras;
VAR Horas:TDateTime;
begin
  CDSOTrabajoMov.First;
  Horas:=0;
  while not(CDSOTrabajoMov.Eof) DO
    begin
      Horas:=Horas+CDSOTrabajoMovTOTALTIEMPO.AsDateTime;
      CDSOTrabajoMov.Next;
    end;
  if CDSOTrabajoCab.State<>dsBrowse then
    CDSOTrabajoCabTOTALHORAS.AsDateTime := Horas;
end;

function TDatosOrdenDeTrabajo.SumarConsumibles:Extended;
var Aux:Extended;
CDSClone:TClientDataSet;
begin
   CDSClone:=TClientDataSet.Create(nil);
   CDSClone.CloneCursor(CDSOTrabajoConsumible,true);
   CDSClone.First;
   Aux:=0;
   while not(CDSClone.eof) do
     begin
       Aux:=Aux+CDSClone.FieldByName('Total').AsFloat;
       CDSClone.Next;
     end;
   Result:=Aux;
end;

PROCEDURE TDatosOrdenDeTrabajo.SumarDetalle;
VAR
  Dscto: Real;
BEGIN
  CDSOTrabajoDet.DisableControls;
  CDSOTrabajoDet.First;
  IF CDSOTrabajoCab.State = dsBrowse THEN
    CDSOTrabajoCab.Edit;
  CDSOTrabajoCabNetoGrav1.ASFloat:=0;
  CDSOTrabajoCabNetoExen1.ASFloat:=0;
  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
  WHILE NOT (CDSImpuestos.Eof) DO
    BEGIN
      CDSImpuestos.Edit;
      CDSImpuestosNeto.AsFloat:=0;
      CDSImpuestos.Next;
    END;
  WHILE (NOT CDSOTrabajoDet.Eof) DO
    BEGIN
      Dscto:=(100 - CDSOTrabajoDetDescuento.AsFloat) * 0.01;
      IF (CDSOTrabajoDetTipoIva_Tasa.AsFloat <> 0) AND (NOT (VarIsNull(CDSOTrabajoDetTipoIva_Tasa.Value))) AND (CDSOTrabajoDetModo_Gravamen.Value <> 'E') THEN
        BEGIN
          IF CDSImpuestos.Locate('Codigo_Gravamen',CDSOTrabajoDetTipoIva_Tasa.Value, []) THEN
            BEGIN
              CDSImpuestos.Edit;
              CDSImpuestosNeto.AsFloat    := CDSOTrabajoDetUnitario_Gravado.AsFLoat * Dscto * CDSOTrabajoDetCantidad.AsFloat + CDSImpuestosNeto.AsFloat;
              CDSImpuestosTasa.AsFloat    := CDSOTrabajoDetIVA_Tasa.AsFloat;
              CDSImpuestosImporte.AsFloat := CDSImpuestosNeto.AsFloat * (CDSImpuestosTasa.AsFloat /100);
              CDSImpuestos.Post;
            END
          ELSE
            BEGIN
              CDSImpuestos.Insert;
              CDSImpuestosCodigo_Gravamen.Value:= CDSOTrabajoDetTipoIva_Tasa.AsInteger;
              CDSIva.Close;
              CDSIva.Params.ParamByName('id').Value:= CDSOTrabajoDetTipoIva_Tasa.AsInteger;
              CDSIva.Open;
              CDSImpuestosDetalle.Value    := CDSIvaDescripcion.Value;
              CDSImpuestosID_OTCAB.Value   := CDSOTrabajoDetID_CABOT.Value;
              CDSImpuestosNeto.AsFloat     := CDSOTrabajoDetUnitario_Gravado.AsFloat * Dscto * CDSOTrabajoDetCantidad.AsFloat + CDSImpuestosNeto.AsFloat;
              CDSImpuestosTasa.AsFloat     := CDSOTrabajoDetIVA_Tasa.AsFloat;
              CDSImpuestosImporte.AsFloat  := CDSImpuestosNeto.AsFloat * ( CDSImpuestosTasa.AsFloat /100);
              CDSImpuestos.Post;
            END;
          IF CDSOTrabajoDetCalcula_SobreTasa.Value = 'S' THEN
            BEGIN
              IF CDSImpuestos.Locate('Codigo_Gravamen',CDSOTrabajoDetTipoIva_SobreTasa.Value, []) THEN
                BEGIN
                  CDSImpuestos.Edit;
                  CDSImpuestosNeto.AsFloat    := CDSOTrabajoDetUnitario_Gravado.AsFloat * Dscto * CDSOTrabajoDetCantidad.AsFloat + CDSImpuestosNeto.AsFloat;
                  CDSImpuestosTasa.AsFloat    := CDSOTrabajoDetIVA_Tasa.AsFloat;
                  CDSImpuestosImporte.AsFloat := CDSImpuestosNeto.AsFloat * ( CDSImpuestosTasa.AsFloat /100);
                  CDSImpuestos.Post;
                END
              ELSE
                BEGIN
                  CDSImpuestos.Insert;
                  CDSImpuestosCodigo_Gravamen.Value    := CDSOTrabajoDetTipoIva_Tasa.AsInteger;
                  CDSIva.Close;
                  CDSIva.Params.ParamByName('id').Value:= CDSOTrabajoDetTipoIva_Tasa.AsInteger;
                  CDSIva.Open;
                  CDSImpuestosDetalle.Value            := CDSIvaDescripcion.Value;
                  CDSImpuestosID_OTCAB.Value           := CDSOTrabajoDetID_CABOT.Value;
                  CDSImpuestosNeto.AsFloat             := CDSOTrabajoDetUnitario_Gravado.AsFloat * Dscto * CDSOTrabajoDetCantidad.AsFloat + CDSImpuestosNeto.AsFloat;
                  CDSImpuestosTasa.AsFloat             := CDSOTrabajoDetIVA_Tasa.AsFloat;
                  CDSImpuestosImporte.AsFloat          := CDSImpuestosNeto.AsFloat * (CDSImpuestosTasa.AsFloat /100);
                  CDSImpuestos.Post;
                END;
            END;
        END;
      CDSOTrabajoCabNetoGrav1.AsFloat := CDSOTrabajoDetUnitario_Gravado.AsFloat * Dscto * CDSOTrabajoDetCantidad.AsFloat + CDSOTrabajoCabNetoGrav1.AsFloat;
      CDSOTrabajoCabNetoExen1.AsFloat := CDSOTrabajoDetUnitario_Exento.AsFloat * Dscto * CDSOTrabajoDetCantidad.AsFloat + CDSOTrabajoCabNetoExen1.AsFloat;

      CDSOTrabajoDet.Next;
    END;
  CDSOTrabajoDet.EnableControls;
  { aca voy a los calculos de los totoales de la factura }
END;

FUNCTION TDatosOrdenDeTrabajo.ASignarArticulo(Dato: STRING): Boolean;
var Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
Enter:char;
BEGIN
  Enter:=#13;
  IF DatosOrdenDeTrabajo.CDSOTrabajoDet.State = dsBrowse THEN
    DatosOrdenDeTrabajo.CDSOTrabajoDet.Edit;
  WITH DatosOrdenDeTrabajo DO
    BEGIN
      CDSStock.Close;
      CDSStock.Params.ParamByName('Codigo').Value:=Dato;
      CDSStock.Open;
      IF NOT (CDSStock.IsEmpty) THEN
        BEGIN
          //vacio todo los importes por si hay un cambio de codigo y no queden cargados los valores
          CDSOTrabajoDetCANTIDAD.AsFloat         := 0;
          CDSOTrabajoDetUnitario_Total.AsFloat   := 0;
          CDSOTrabajoDetUnitario_Gravado.AsFloat := 0;
          CDSOTrabajoDetUnitario_Exento.AsFloat  := 0;
          CDSOTrabajoDetTotal.AsFloat            := 0;
          CDSOTrabajoDetDetalle.AsString         := CDSStockDetalle_Stk.AsString;
          CDSOTrabajoDetUnidad.Value             := CDSStockUnidad.Value;
          CDSOTrabajoDetCosto_Gravado.Value      := CDSStockFijacion_Precio_Gravado.AsFloat;
          CDSOTrabajoDetCosto_Exento.Value       := CDSStockFijacion_Precio_Exento.AsFloat;
          CDSOTrabajoDetCosto_Total.Value        := CDSStockFijacion_Precio_Total.AsFloat;
          CDSOTrabajoDetAfecta_Stock.Value       := CDSStockControlaStock.Value;
          CDSOTrabajoDetModo_Gravamen.Value      := CDSStockModo_Gravamen.Value;
          CDSOTrabajoDetTipoIva_Tasa.Value       := CDSStockTasa_Iva.Value;
          CDSOTrabajoDetTipoIva_SobreTasa.Value  := CDSStockSobreTasa_Iva.Value;
          CDSOTrabajoDetGRAVADO_IB.Value         := CDSStockGRAVADO_IB.Value;
          //Asigno el deposito que tengo en el encabezado...
          CDSOTrabajoDetDeposito.Value           := CDSOTrabajoCabDEPOSITO.Value;
          //segun el tipo de inscripcion verifico si descrimina o no iva y si cobra Sobre tasa

          // esto era antes 25/05/2014, se fuerza a que no
          //CDSOTrabajoDetDesglozaIVA.Value        := CDSOTrabajoCabDESGLOZAIVA.Value;
          //CDSOTrabajoDetCalcula_SobreTasa.Value  := CDSOTrabajoCabCALCULA_SOBRETASA.Value;

          //25/05/2014 aca lo vuelvo todo con iva modifiacion, antes se hacia comandad por la cabecera
          CDSOTrabajoDetDesglozaIVA.Value        := 'N';
          CDSOTrabajoDetCalcula_SobreTasa.Value  := 'N';
          CDSOTrabajoDetCON_NROSERIE.Value       := CDSStockCONTROL_SERIE.Value;
          CDSOTrabajoDetID_MONEDA.Value          := CDSStockMONEDA.Value;

          QMonedas.Close;
          QMonedas.ParamByName('id').Value := CDSStockMONEDA.Value;
          QMonedas.Open;
         // CDSVentaDetMUESTRAMONEDA.Value   := QMonedasSIGNO.Value;
          if QMonedasCOTIZACION.AsString<>'' then
            CDSOTrabajoDetCOTIZACION.AsFloat := QMonedasCOTIZACION.AsFloat
          else
            CDSOTrabajoDetCOTIZACION.AsFloat:=1;
          QMonedas.Close;

          // traigo los porcentajes de Iva
          CDSIva.Close;
          CDSIva.Params.ParamByName('id').Value  := CDSOTrabajoDetTipoIva_Tasa.Value;
          CDSIva.Open;
          IF NOT (CDSIva.IsEmpty) THEN
            CDSOTrabajoDetIVA_Tasa.AsFloat := CDSIvaTasa.AsFloat;
          CDSIva.Close;
          CDSIva.Params.ParamByName('id').Value := CDSOTrabajoDetTipoIva_SobreTasa.Value;
          CDSIva.Open;
          IF NOT (CDSIva.IsEmpty) THEN
            CDSOTrabajoDetIVA_SobreTasa.AsFloat   := CDSIvaTasa.AsFloat;

         DMMain_FD.CalculaPrecioVta_FD('N', DMMain_FD.IdListaProveedor, CDSOTrabajoCabLISTAPRECIO.Value,CDSOTrabajoCabSUCURSAL.Value,CDSOTrabajoCabDEPOSITO.Value,
                                    CDSOTrabajoDetCODIGOARTICULO.AsString,CDSOTrabajoCabCODIGO.AsString, CDSOTrabajoCabTIPOCPBTE.Value,
                                    CDSOTrabajoDetCOTIZACION.AsFloat, 1,
                                    Gravado, Exento, Total, Iva, Margen, Dscto, PFinal);


          CDSOTrabajoDetUNITARIO_GRAVADO.AsFloat:=Gravado;
          CDSOTrabajoDetUNITARIO_EXENTO.AsFloat :=Exento;
          CDSOTrabajoDetUNITARIO_TOTAL.AsFloat  :=Total;
//        CDSOTrabajoDetIVA_UNITARIO.AsFloat    :=Iva;
          CDSOTrabajoDetMARGEN.ASFloat          :=Margen;
          CDSOTrabajoDetDESCUENTO.ASFloat       :=Dscto;

          if (DMMain_FD.EncontroCodigoSerie) Then
            begin
              Enter       := #13;
              ID_Det_Serie:= CDSOTrabajoDetID.Value;
              CDSOTrabajoDetCANTIDADSetText(CDSOTrabajoDetCANTIDAD,'1');
              FormOrdenDeTrabajo.DBGrillaDetalle.SelectedIndex:=4;
              FormOrdenDeTrabajo.DBGrillaDetalleKeyPress(FormOrdenDeTrabajo.DBGrillaDetalle,Enter);
            end;
          Result:=True;
        END
      ELSE
        Result:=False;
    END;
END;

FUNCTION TDatosOrdenDeTrabajo.AsignarProducto(Dato: integer): Boolean;
BEGIN
  Result:=False;
  CDSBuscaProducto.Close;
  CDSBuscaProducto.Params.ParamByName('id').Value:=Dato;
  CDSBuscaProducto.Open;
  IF NOT (CDSBuscaProducto.IsEmpty) THEN
    BEGIN
      CDSProducto.Close;
      CDSProducto.ParamByName('id').Value :=  Dato;
      CDSProducto.Open;
      if not(CDSProducto.IsEmpty) then
        begin
          CDSOTrabajoCabDESCRIPCIONPRODUCTO.Value      := CDSProductoDESCRIPCION.Value;
          CDSOTrabajoCabMUESTRAPRODUCTO.Value          := CDSProductoDESCRIPCION.Value;
          CDSOTrabajoCabMUESTRAMARCAPRODUCTO.Value     := CDSProductoMUESTRAMARCA.Value;
          CDSOTrabajoCabMUESTRACATEGORIAPRODUCTO.Value := CDSProductoMUESTRACATEGORIA.Value;
          CDSOTrabajoCabMUESTRAMODELOPRODUCTO.Value    := CDSProductoMODELO.Value;
          Result:=True;
        END;
      CDSProducto.Close;
      CDSBuscaProducto.Close;
    END;
END;


FUNCTION TDatosOrdenDeTrabajo.AsignarLdr(Cliente: STRING; Dato: integer): Boolean;
BEGIN
  CDSLdr.Close;
  CDSLdr.Params.ParamByName('Codigo').Value := Cliente;
  CDSLdr.Params.ParamByName('Ldr').Value    := Dato;
  CDSLdr.Open;
  IF NOT (CDSLdr.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSOTrabajoCabMUESTRALDR.Value := CDSLdrNombre.Value;
    END
  ELSE
    BEGIN
      CDSOTrabajoCabMUESTRALDR.Value:= '';
      Result:=False;
    END;
  CDSLdr.Close;
END;


FUNCTION TDatosOrdenDeTrabajo.AsignarCliente(Dato: STRING): Boolean;
BEGIN
  WITH FormOrdenDeTrabajo DO
    BEGIN
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value:=Dato;
      CDSClientes.Open;
      IF NOT (CDSClientes.Eof) THEN
        BEGIN
          CDSOTrabajoCabNOMBRE.AsString       := CDSClientesNombre.AsString;
          CDSOTrabajoCabRazonSocial.AsString  := CDSClientesRazon_Social.ASString;
          CDSOTrabajoCabCuit.AsString         := CDSClientesNro_de_Cuit.AsString;
          CDSOTrabajoCabDireccion.AsString    := CDSClientesDireccion_Comercial.AsString;
          CDSOTrabajoCabTipoIVA.AsInteger     := CDSClientesCondicion_Iva.Value;
          CDSOTrabajoCabCPostal.AsString      := CDSClientesCPostal.AsString;
          CDSOTrabajoCabLocalidad.AsString    := CDSClientesLocalidad.AsString;
          CDSOTrabajoCabZona.AsInteger        := CDSClientesZona.AsInteger;
          CDSOTrabajoCabMUESTRATELEFONO1.Value:= CDSClientesTELEFONO_COMERCIAL_1.Value;
          CDSOTrabajoCabMUESTRATELEFONO2.Value:= CDSClientesTELEFONO_COMERCIAL_2.Value;
          CDSOTrabajoCabTELEFONO1.Value       := CDSClientesTELEFONO_COMERCIAL_1.Value;
          CDSOTrabajoCabTELEFONO2.Value       := CDSClientesTELEFONO_COMERCIAL_2.Value;
          CDSOTrabajoCabTELEFONO_CELULAR.Value  := CDSClientesTELEFONO_CELULAR.Value;
          CDSOTrabajoCabCORREOELECTRONICO.Value := CDSClientesCORREOELECTRONICO.Value;
          CDSOTrabajoCabLdr.Clear;
//***************************************************************************************************
//******* de acuerdo al tipo de condicion de iva del cliente traigo el tipo de inscripcion
          CDSInscripcion.Close;
          CDSInscripcion.Params.ParamByName('Codigo').Value := CDSOTrabajoCabTIPOIVA.Value;
          CDSInscripcion.Open;
          IF NOT (CDSInscripcion.Eof) THEN
            BEGIN
              CDSOTrabajoCabCalcula_SobreTasa.Value:= CDSInscripcionCobraSobretasa.Value;
              CDSOTrabajoCabDESGLOZAIVA.Value      := CDSInscripcionDISCRIMINAIVA.Value;
            END;

          // Fuerzo a q no discrimine...... Astesano (30/04/2013)

        //  CDSOTrabajoCabCalcula_SobreTasa.Value:= 'N';
        //  CDSOTrabajoCabDESGLOZAIVA.Value      := 'N';
          // 25/05/2014 lo volvi a poner como antes segun la condicion de iva
          // asigno el comprobante segun condicoin de Inscripcion
          // si el cliente no tiene asignado un comprobante traigo el que le
          // corresponde por el tipo de Iva,
          // al hacer esto pongo en le comprobante de O de Trabajo se discrimna o no iva para la factura
          // y asi hago los calculos en los detalle segun fuese la factura si se hace...
          //***************************************************************************************************
          if (CDSClientesSUCURSAL.AsInteger = CDSOTrabajoCabSUCURSAL.AsInteger) and
             (Not(CDSClientesID_FACTURAPORDEFECTO.IsNull)) and
             (CDSClientesID_FACTURAPORDEFECTO.AsInteger > 0)
          Then
             CDSOTrabajoCabFACTURA_ID_COMPROBANTE.Text      :=  CDSClientesID_FACTURAPORDEFECTO.AsString
          else
            if FCpbtePorDef <> 0 then
              CDSOTrabajoCabFACTURA_ID_COMPROBANTE.Text     :=  IntToStr(FCpbtePorDef)
            else
              CDSOTrabajoCabFACTURA_ID_COMPROBANTE.Text     :=  DMMain_FD.CpbtePorDefecto('FC','V', DatosOrdenDeTrabajo.CDSOTrabajoCabSUCURSAL.AsInteger,
                                                                                         CDSOTrabajoCabDESGLOZAIVA.AsString,DMMain_FD.UsuarioActivoId);

          //Traigo el Primer LDR
          QPrimerLdr.CLose;
          QPrimerLdr.ParamByName('codigo').AsString:=Dato;
          QPrimerLdr.Open;
          if Not(QPrimerLdr.IsEmpty) Then
            if QPrimerLdr.Fields[0].AsString<>'' Then
              CDSOTrabajoCabLDRSetText(CDSOTrabajoCabLDR,QPrimerLdr.Fields[0].AsString)
            else
              begin
                ShowMessage('No tiene Ldr cargado....');
                CDSOTrabajoCabLDR.Clear;
                CDSOTrabajoCabMUESTRALDR.Clear;
              end;
          QPrimerLdr.CLose;
          //Traigo La primera condicion de vta
          QPrimerConVta.CLose;
          QPrimerConVta.ParamByName('codigo').AsString:=Dato;
          QPrimerConVta.Open;
          if Not(QPrimerConVta.IsEmpty) Then
            if QPrimerConVta.Fields[0].AsString<>'' Then
              CDSOTrabajoCabCONDICIONVTASetText(CDSOTrabajoCabCONDICIONVTA,QPrimerConVta.Fields[0].AsString)
            else
              begin
                ShowMessage('No tiene Condiciones de Vta. cargadas....');
                CDSOTrabajoCabCONDICIONVTA.Clear;
                CDSOTrabajoCabMUESTRACONDVENTA.Clear;
              end;
          QPrimerConVta.CLose;

          if CDSClientesVENDEDOR.AsString<>'' Then
            begin
              CDSPersonal.Close;
              CDSPersonal.Params.ParamByName('Codigo').Value:=CDSClientesVENDEDOR.AsString;
              CDSPersonal.Open;
              IF NOT (CDSPersonal.IsEmpty) THEN
                CDSOTrabajoCabRESPONSABLE_OTSetText(CDSOTrabajoCabRESPONSABLE_OT,CDSClientesVENDEDOR.AsString)
              else
                if (DMMain_FD.EmpleadoPorDefecto<>'') and (DMMain_FD.EmpleadoPorDefecto<>'-1')  then
                  CDSOTrabajoCabRESPONSABLE_OTSetText(CDSOTrabajoCabRESPONSABLE_OT,DMMain_FD.EmpleadoPorDefecto);
              CDSPersonal.Close;
            end
          else
            begin
              if (DMMain_FD.EmpleadoPorDefecto<>'') and (DMMain_FD.EmpleadoPorDefecto<>'-1')  then
                CDSOTrabajoCabRESPONSABLE_OTSetText(CDSOTrabajoCabRESPONSABLE_OT,DMMain_FD.EmpleadoPorDefecto);
            end;


          if (Trim(RxCProducto.Text)<>'') then
            begin
              QVerificaProducto.Close;
              QVerificaProducto.ParamByName('id').Value     := StrToInt(Trim(RxCProducto.Text));
              QVerificaProducto.ParamByName('codigo').Value := CDSOTrabajoCabCODIGO.AsString;
              QVerificaProducto.Open;
              IF (QVerificaProducto.IsEmpty) THEN
                begin
                  CDSOTrabajoCabPRODUCTO.Clear;
                  CDSOTrabajoCabDESCRIPCIONPRODUCTO.Clear;
                end;
            end;
          result:=True;
        END
      ELSE
        Result:=False;
    END;
END;



FUNCTION TDatosOrdenDeTrabajo.AsignarCondVenta(Cliente: STRING; Dato: Integer): Boolean;
BEGIN
  CDSCondVenta.Close;
  CDSCondVenta.Params.ParamByName('Codigo').Value    :=Cliente;
  CDSCondVenta.Params.ParamByName('CodigoPago').Value:=Dato;
  CDSCondVenta.Open;
  IF NOT (CDSCondVenta.Eof) THEN
    BEGIN
      Result:=True;
      CDSOTrabajoCabMUESTRACONDVENTA.Value := CDSCondVentaDetalle.Value;
      CDSOTrabajoCabDSTO.Value             := CDSCondVentaDescuento.Value;
    END
  ELSE
    Result:=False;
  CDSCondVenta.Close;
END;

function TDatosOrdenDeTrabajo.AsignarConsumible(Dato: STRING): Boolean;
var QAux:TFDQuery;
begin
   CDSStock.Close;
   CDSStock.Params.ParamByName('codigo').AsString:=Dato;
   CDSStock.Open;
   IF NOT (CDSStock.IsEmpty) THEN
     BEGIN
       QAux:=TFDQuery.Create(nil);
       QAux.Connection:=DMMain_FD.fdcGestion;
       QAux.SQL.Text:= 'select l.precio from listaprecioespecialart l where l.id_cab ='+CDSOTrabajoCabLISTAPRECIO.AsString+' and l.codigoarticulo = '+Dato;
       QAux.Open;
       CDSOTrabajoConsumibleMUESTRASTOCK.AsString   := CDSStockDetalle_Stk.AsString;
       CDSOTrabajoConsumiblePRECIO_UNITARIOSetText(CDSOTrabajoConsumiblePRECIO_UNITARIO,QAux.Fields[0].AsString);
       CDSOTrabajoConsumibleAFECTA_STOCK.Value:=CDSStockCONTROLASTOCK.Value;
       QAux.Close;
       FreeAndNil(QAux);
       Result:=True;
     END
   else
     Result:=False;
   CDSStock.Close;
end;

FUNCTION TDatosOrdenDeTrabajo.AsignarOperador(Dato: String;Op:Byte): Boolean;
VAR OldResponsable:String;
BEGIN
  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('codigo').Value:=Dato;
  CDSPersonal.Open;
  IF NOT (CDSPersonal.IsEmpty) THEN
    BEGIN
      Result:=True;
      if Op=0 Then
        begin
          OldResponsable:= '';
          OldResponsable:= CDSOTrabajoCabMUESTRARESPONSABLEOT.Value;
          CDSOTrabajoCabMUESTRARESPONSABLEOT.Value:= CDSPersonalNOMBRE.Value;
          if CDSOTrabajoCab.State=dsEdit Then
            begin
              CDSOTrabajoMov.Insert;
              CDSOTrabajoMovFECHA.AsDateTime      := Date;
              CDSOTrabajoMovHORAINICIO.AsDateTime := Now;
              CDSOTrabajoMovHORAFINAL.AsDAteTime  := Now;
              CDSOTrabajoMovDETALLE.Value   :='SACOT: Responsable: '+ CDSOTrabajoCabMUESTRARESPONSABLEOT.Value;
              CDSOTrabajoMov.Post;
            end;
        end
      else
        if Op=1 Then
          begin
            OldResponsable:='';
            OldResponsable:= CDSOTrabajoCabMUESTRARESPONSABLETURNO.Value;
            CDSOTrabajoCabMUESTRARESPONSABLETURNO.Value:=CDSPersonalNOMBRE.Value;
            if CDSOTrabajoCab.State=dsEdit Then
              begin
                CDSOTrabajoMov.Insert;
                CDSOTrabajoMovFECHA.AsDateTime      := Date;
                CDSOTrabajoMovHORAINICIO.AsDateTime := Now;
                CDSOTrabajoMovHORAFINAL.AsDateTime  := Now;
                CDSOTrabajoMovDETALLE.Value   :='SACOT: Asignada a '+ CDSOTrabajoCabMUESTRARESPONSABLETURNO.Value;
                CDSOTrabajoMov.Post;
              end;
          end;
    END
  ELSE
    begin
      Result:=False;
      if Op=0 Then
        CDSOTrabajoCabMUESTRARESPONSABLEOT.Value:=''
      else
        if Op=1 Then
          CDSOTrabajoCabMUESTRARESPONSABLETURNO.Value:='';
    end;
  CDSPersonal.Close;
END;

FUNCTION TDatosOrdenDeTrabajo.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value:=Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.Eof) THEN
    BEGIN
      Result:=True;
      CDSOTrabajoCabMUESTRADEPOSITO.Value := CDSDepositoNombre.Value;
    END
  ELSE
    Result:=False;
  CDSDeposito.Close;
END;

FUNCTION TDatosOrdenDeTrabajo.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value:=dato;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSOTrabajoCabFACTURA_ID_COMPROBANTE.Clear;
      CDSOTrabajoCabMUESTRATIPOFACTURA.Clear;
      CDSOTrabajoCabMUESTRACOMPROBANTE.Value:= QComprobDENOMINACION.Value;
      CDSOTrabajoCabLETRAOT.Value           := QComprobLETRA.Value;
      CDSOTrabajoCabTIPOCPBTE.Value         := QComprobTIPO_COMPROB.Value;
      CDSOTrabajoCabCLASECPBTE.Value        := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result:=False;
      CDSOTrabajoCabFACTURA_ID_COMPROBANTE.Clear;
      CDSOTrabajoCabMUESTRATIPOFACTURA.Clear;
      CDSOTrabajoCabMUESTRACOMPROBANTE.Value:= '';
      CDSOTrabajoCabLETRAOT.Value           := '';
      CDSOTrabajoCabTIPOCPBTE.Value         := '';
      CDSOTrabajoCabCLASECPBTE.Value        := '';
    END;
END;

FUNCTION TDatosOrdenDeTrabajo.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value:=dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.IsEmpty) THEN
    BEGIN
      CDSOTrabajoCabID_TIPOCOMPROBANTE.Clear;
      CDSOTrabajoCabMUESTRACOMPROBANTE.Clear;
      CDSOTrabajoCabFACTURA_ID_COMPROBANTE.Clear;
      CDSOTrabajoCabMUESTRATIPOFACTURA.Clear;
      CDSOTrabajoCabFACTURA_TIPO.Value      :='';
      CDSOTrabajoCabFACTURA_CLASE.Value     :='';

      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      CDSBuscaComprob.Open;
      CDSBuscaComprob.Filtered:=False;
      CDSBuscaComprob.Filter:='';

      if CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSOTrabajoCabID_TIPOCOMPROBANTESetText(CDSOTrabajoCabID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
        end
      else
        begin
          CDSBuscaComprob.Filter:='DEFECTO = ''S'' ';
          CDSBuscaComprob.Filtered:=True;
          CDSBuscaComprob.First;
          if CDSBuscaComprobID_COMPROBANTE.AsString<>'' then
            CDSOTrabajoCabID_TIPOCOMPROBANTESetText(CDSOTrabajoCabID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString)
          else
            begin
              CDSBuscaComprob.Filtered:=False;
              CDSBuscaComprob.Filter:='';
              CDSBuscaComprob.First;
              if CDSBuscaComprobID_COMPROBANTE.AsString<>'' then
                CDSOTrabajoCabID_TIPOCOMPROBANTESetText(CDSOTrabajoCabID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString)
            end;
        end;

      Result:=True;
      CDSOTrabajoCabMUESTRASUCURSAL.Value:= CDSSucursalDetalle.Value;
    END
  ELSE
    Result:=False;
  CDSBuscaComprob.Filtered:=False;
  CDSBuscaComprob.Filter:='';
  CDSSucursal.Close;
END;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabNewRecord(
  DataSet: TDataSet);
begin
  CDSOTrabajoCabID_OT.value                   := ibgOT_Cab.IncrementFD(1);
  CDSOTrabajoCabNOMBRE.AsString               := '';
  CDSOTrabajoCabRAZONSOCIAL.AsString          := '';
  CDSOTrabajoCabCuit.AsString                 := '';
  CDSOTrabajoCabDIRECCION.AsString            := '';
  CDSOTrabajoCabTIPOIVA.AsString              := '';
  CDSOTrabajoCabCPOSTAL.AsString              := '';
  CDSOTrabajoCabIMPRESO.AsString              := 'N';
  CDSOTrabajoCabANULADO.AsString              := 'N';
  CDSOTrabajoCabSUCOT.AsString                := '0000';
  CDSOTrabajoCabNUMEROOT.AsString             := '00000000';
  CDSOTrabajoCabDSTO.ASFloat                  := 0;
  CDSOTrabajoCabNETOEXEN1.AsFloat             := 0;
  CDSOTrabajoCabNETOEXEN2.AsFloat             := 0;
  CDSOTrabajoCabFECHAINICIO.AsDateTime        := Date;
  CDSOTrabajoCabESTADO.Value                  := 0;
  CDSOTrabajoCabSENIA.AsFloat                 := 0;
  CDSOTrabajoCabDEPOSITO.Clear;
  CDSOTrabajoCabTIPOCPBTE.AsString            := '';
  CDSOTrabajoCabCLASECPBTE.AsString           := '';
  CDSOTrabajoCabLETRAOT.AsString              := '';
  CDSOTrabajoCabPRIORIDAD.Value               := 1;
  CDSOTrabajoCabDELTA_PRIORIDAD.Value         := 1;
  CDSOTrabajoCabPUNTOS.AsFloat                := 1;
  CDSOTrabajoCabMOTIVO_OTRABAJO.AsInteger     := 1;
  CDSOTrabajoCabFACTURA_TIPO.Value            := '';
  CDSOTrabajoCabFACTURA_CLASE.Value           := '';
  CDSOTrabajoCabFACTURA_ID.Value              := 0;
  CDSOTrabajoCabFACTURANRO.Value              := '';
  CDSOTrabajoCabFACTURA_ID_COMPROBANTE.Value  := 0;
  CDSOTrabajoCabARCHIVADA.Value               := 'N';
  CDSOTrabajoCabRECLAMADA.Value               := 'N';
  CDSOTrabajoCabENTREGADO.Value               := 'N';
  CDSOTrabajoCabTOTALHORAS.AsDateTime         := 0;
  CDSOTrabajoCabESTADO.Value                  := 0;
  CDSOTrabajoCabMAILENVIADO.AsString          := 'N';
  CDSOTrabajoCabOT_ANTERIOR_ID.Value          := -1;
  CDSOTrabajoCabID_AJUSTE_STOCK.Value         := -1;
  CDSOTrabajoCabMUESTRANROAJUSTE.Value        := '';
  CDSOTrabajoCabOT_ANTERIOR_NROCPBTE.AsString := '';
  CDSOTrabajoCabDESCRIPCIONPRODUCTO.AsString  := '';
  CDSOTrabajoCabMOTIVO_OTRABAJO.Value         := -1;

  if (IntToStr(FormOrdenDeTrabajo.SucursalPorDefecto)<>'') Then
    CDSOTrabajoCabSUCURSALSetText(CDSOTrabajoCabSUCURSAL,IntToStr(FormOrdenDeTrabajo.SucursalPorDefecto));
  if (IntToStr(FormOrdenDeTrabajo.DepositoPorDefecto)<>'') Then
    CDSOTrabajoCabDEPOSITOSetText(CDSOTrabajoCabDEPOSITO,IntToStr(FormOrdenDeTrabajo.DepositoPorDefecto));
  CDSOTrabajoCabFECHA_HORA.AsDateTime         := Now;
  CDSOTrabajoCabUSUARIO.Value                 := DMMain_FD.UsuarioActivo;

  CDSOTrabajoCabFECHAESTIMADA.AsDateTime      := Date;
  CDSOTrabajoCabFECHAESTIMADAFIN.AsDateTime   := Date+5;


  //**************************************************************************
  //****Asigno la Lista Por defecto o la lista asignada **********************
  //**************************************************************************
  CDSOTrabajoCabLISTAPRECIO.Value:=DMMain_FD.ListaPorDefecto(CDSOTrabajoCabSUCURSAL.Value);
  //***********************************************************
  //***********************************************************

  FormOrdenDeTrabajo.NivelPrioridad.Progress  := 0 ;
//  FormOrdenDeTrabajo.dbeFechaInicio.SetFocus;
//  FormOrdenDeTrabajo.dbeFechaInicio.SelectAll;

//  If (FormOrdenDeTrabajo.EmpleadoPorDefecto<>'') and (FormOrdenDeTrabajo.EmpleadoPorDefecto<>'-1') Then
//    CDSOTrabajoCabRESPONSABLE_OTSetText(CDSOTrabajoCabRESPONSABLE_OT,FormOrdenDeTrabajo.EmpleadoPorDefecto);

  CDSOTrabajoCabCODIGO.Text         :=  FormOrdenDeTrabajo.ClientePorDefecto;

  if (FormOrdenDetrabajo.Campo1<>'') then

  CDSOTrabajoCabDESCRIPCION.AsString:=  FormOrdenDetrabajo.Campo1+#13+#13+
                                        FormOrdenDetrabajo.Campo2+#13+#13+
                                        FormOrdenDetrabajo.Campo3+#13+#13+
                                        FormOrdenDetrabajo.Campo4;
  CDSMotivos.Filtered   := False;
  CDSMotivos.Filter     := 'POR_DEFECTO = ''S'' ';
  CDSMotivos.Filtered   := True;
  CDSMotivos.First;
  CDSOTrabajoCabMOTIVO_OTRABAJO.Value := CDSMotivosID.Value;
  CDSMotivos.Filtered   := False;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabSUCURSALSetText(
  Sender: TField; const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Sucursal No Valido');
//          FormOrdenDeTrabajo.RxCSucursal.SetFocus;
        END
      ELSE IF CDSOTrabajoCab.State = dsInsert THEN
        UltimoComprobante;
    END;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoConsumibleAfterDelete(
  DataSet: TDataSet);
begin
  FormOrdenDeTrabajo.edTotal.Value:=SumarConsumibles;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoConsumibleAfterPost(
  DataSet: TDataSet);
begin
  FormOrdenDeTrabajo.edTotal.Value:=SumarConsumibles;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoConsumibleCANT_CONSUMIDASetText(
  Sender: TField; const Text: string);
begin
  Sender.AsString:=Text;
  CDSOTrabajoConsumibleTOTAL.Value:=Sender.AsFloat * CDSOTrabajoConsumiblePRECIO_UNITARIO.Value;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoConsumibleCANT_ESTIMADASetText(
  Sender: TField; const Text: string);
begin
  Sender.AsString:=Text;
  CDSOTrabajoConsumibleCANT_CONSUMIDASetText(CDSOTrabajoConsumibleCANT_CONSUMIDA,Sender.AsString);
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoConsumibleCODIGOSetText(
  Sender: TField; const Text: string);
var s:string;
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      Sender.AsString := DMMain_FD.SearchCodigo(Text,DSOTrabajoConsumible,False);
      S:= Sender.AsString;

      IF NOT (AsignarConsumible(S)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Dato no Valido');
         END;
    end;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoConsumibleNewRecord(
  DataSet: TDataSet);
begin
  CDSOTrabajoConsumibleID.Value           := ibgOTrabajoConsumible.IncrementFD(1);
  CDSOTrabajoConsumibleID_CABOT.Value     := CDSOTrabajoCabID_OT.Value;
  CDSOTrabajoConsumibleAFECTA_STOCK.Value := 'N';
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoConsumiblePRECIO_UNITARIOSetText(
  Sender: TField; const Text: string);
begin
  Sender.AsString:=Text;
  CDSOTrabajoConsumibleTOTAL.Value:=Sender.AsFloat*CDSOTrabajoConsumibleCANT_CONSUMIDA.Value;
end;


function TDatosOrdenDeTrabajo.BuscaIdent(const Text: string): string;
begin
  QBuscaIdent.Close;
  QBuscaIdent.ParamByName('identificador').Value  :=  Trim(Text);
  QBuscaIdent.Open;
  if not QBuscaIdent.IsEmpty then
    Result  :=  QBuscaIdentID.AsString
  else
    Result  :=  '';
  QBuscaIdent.Close;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabIDENTIFICADORPRODUCTOSetText(
  Sender: TField; const Text: string);
Var IdAux: string;
begin
  IdAux :=  '';
  Sender.AsString :=  Trim(Text);
  IdAux :=  BuscaIdent(Text);
  if IdAux<>'' then
    CDSOTrabajoCabPRODUCTO.Text :=  IdAux;

//  else
//    CDSOTrabajoCabPRODUCTO.AsString :=  NuevoProducto;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Dato no Valido');
        END;
      IF CDSOTrabajoCab.State = dsInsert THEN
        UltimoComprobante;
    end;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabDEPOSITOSetText(
  Sender: TField; const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo depósito no Válido o no Definido');
          FormOrdenDeTrabajo.Cancelar.Execute;
        END;
    END;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabSUCOTSetText(Sender: TField;
  const Text: String);
VAR
  Aux: STRING;
BEGIN
  Aux:=Text;
  Aux:=Copy('0000', 1, 4 - Length(Aux)) + Aux;
  Sender.AsString:=Aux;
  CDSOTrabajoCabNROCPBTE.Value := CDSOTrabajoCabLETRAOT.Value +
                                  CDSOTrabajoCabSUCOT.Value +
                                  CDSOTrabajoCabNUMEROOT.Value;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabNUMEROOTSetText(
  Sender: TField; const Text: String);
VAR
  Aux: STRING;
BEGIN
  Aux:=Text;
  Aux:=Copy('00000000', 1, 8 - Length(Aux)) + Aux;
  Sender.AsString:=Aux;
  CDSOTrabajoCabNROCPBTE.Value := CDSOTrabajoCabLETRAOT.Value +
                                  CDSOTrabajoCabSUCOT.Value +
                                  CDSOTrabajoCabNUMEROOT.Value;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabNETOGRAV2GetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
VAR Aux:Real;
begin
  Aux:=(Sender.AsFloat);
  IF CDSOTrabajoDetDESGLOZAIVA.Value = 'N' THEN
    Aux:=(Aux + (Aux * TasaReal * 0.01));
  Text:=FormatFloat(MascaraCabecera,Aux);
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabCODIGOSetText(
  Sender: TField; const Text: String);
VAR
  Aux: STRING;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if CDSOTrabajoCab.State=dsBrowse Then
        CDSOTrabajoCab.Edit;
      Aux:=Text;
      Aux:=Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString:=Aux;
      IF NOT (AsignarCliente(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Cliente No válido');
          Sender.AsString:= '';
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      FormOrdenDeTrabajo.RxCCodigo.Text:=Aux;
    end;
END;


procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabDESGLOZAIVAChange(
  Sender: TField);
begin
//  FormOrdenDeTrabajo.DBGrillaIva.Visible := CDSOTrabajoCabDESGLOZAIVA.Value = 'S';
  FormOrdenDeTrabajo.DBGrillaIva.Visible := False;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabDSTOSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=Text;
  SumarDetalle;
  CalcularTotales;

end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabNETOGRAV1GetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
VAR
  Aux: real;
BEGIN
  Aux:=(Sender.AsFloat);
  IF CDSOTrabajoDetDESGLOZAIVA.Value = 'N' THEN
    Aux:=(Aux + (Aux * TasaReal * 0.01));
  Text:=FormatFloat(MascaraCabecera,Aux);
END;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabLDRSetText(Sender: TField;
  const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarLdr(CDSOTrabajoCabCODIGO.Value, Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo L.D.R no Válido');
        END;
    END;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabPRODUCTOSetText(
  Sender: TField; const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      if CDSOTrabajoCab.State = dsBrowse Then
        CDSOTrabajoCab.Edit;
      Sender.AsString:=Text;
      IF NOT (AsignarProducto(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Producto No Valido');
        END;
    END;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoDetNewRecord(DataSet: TDataSet);
begin
  IF (CDSOTrabajoDet.RecordCount > Renglones) THEN
    CDSOTrabajoDet.Cancel
  ELSE
    BEGIN
      CDSOTrabajoDetID.Value                := IBGOT_Det.IncrementFD(1);
      CDSOTrabajoDetID_CABOT.Value          := CDSOTrabajoCabID_OT.Value;
      CDSOTrabajoDetRENGLON.AsInteger       := CDSOTrabajoDet.RecordCount + 1;
      CDSOTrabajoDetDETALLE.Value           := '';
      CDSOTrabajoDetUNIDAD.Value            := '';
      CDSOTrabajoDetCANTIDAD.AsFloat        := 0;
      CDSOTrabajoDetCOSTO_EXENTO.AsFloat    := 0;
      CDSOTrabajoDetCOSTO_GRAVADO.AsFloat   := 0;
      CDSOTrabajoDetCOSTO_TOTAL.AsFloat     := 0;
      CDSOTrabajoDetUNITARIO_EXENTO.AsFloat := 0;
      CDSOTrabajoDetUNITARIO_GRAVADO.AsFloat:= 0;
      CDSOTrabajoDetUNITARIO_TOTAL.AsFloat  := 0;
      CDSOTrabajoDetTOTAL.AsFloat           := 0;
      CDSOTrabajoDetDESCUENTO.AsFloat       := 0;
      CDSOTrabajoDetIVA_TASA.AsFloat        := 0;
      CDSOTrabajoDetIVA_SOBRETASA.AsFloat   := 0;
//      CDSOTrabajoDetDESGLOZAIVA.Value       := CDSOTrabajoCabDESGLOZAIVA.Value;

      CDSOTrabajoDetDESGLOZAIVA.Value       := 'N';
      CDSOTrabajoDetMODO_GRAVAMEN.Value     := '';
      CDSOTrabajoDetTIPOIVA_TASA.Value      := 0;
      CDSOTrabajoDetNROCPBTE.AsString       := CDSOTrabajoCabNROCPBTE.AsString;
      CDSOTrabajoDetFECHAVTA.AsDateTime     := CDSOTrabajoCabFECHAINICIO.AsDateTime;
      CDSOTrabajoDetTIPOCPBTE.AsString      := CDSOTrabajoCabTIPOCPBTE.AsString;
      CDSOTrabajoDetCLASECPBTE.AsString     := CDSOTrabajoCabCLASECPBTE.AsString;
      CDSOTrabajoDetCON_NROSERIE.Value      := 'N';

    END;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoDetBeforePost(
  DataSet: TDataSet);                                                                     
begin
  IF CDSOTrabajoDet.State IN [dsInsert, dsEdit] THEN
    CDSOTrabajoDetNROCPBTE.Value := CDSOTrabajoCabLETRAOT.Value +
                                    CDSOTrabajoCabSUCOT.Value +
                                    CDSOTrabajoCabNUMEROOT.Value;
  IF ((CDSOTrabajoDetCODIGOARTICULO.AsString = '') OR
    (CDSOTrabajoDet.RecordCount > Renglones)) AND
    (CDSOTrabajoDet.State IN [dsInsert, dsEdit])
  THEN
    BEGIN
      CDSOTrabajoDet.Cancel;
      if CDSOTrabajoSubDet.State<>dsBrowse then
        CDSOTrabajoSubDet.Cancel;
      SysUtils.Abort;
    END;
  if  (CDSOTrabajoDet.State in [dsEdit,dsInsert]) and (CDSOTrabajoDetCON_NROSERIE.Value='S') and (Trim(CDSOTrabajoSubDetSERIE.Value)='')  then
    BEGIN
      CDSOTrabajoDet.Cancel;
      if CDSOTrabajoSubDet.State<>dsBrowse then
        CDSOTrabajoSubDet.Cancel;
      SysUtils.Abort;
      ShowMessage('Falta Nro de Serie....');
    END;

end;

procedure TDatosOrdenDeTrabajo.CDSImpuestosNewRecord(DataSet: TDataSet);
begin
  CDSImpuestosID_IMPUESTO.Value := IBGImpuesto.IncrementFD(1);
  CDSImpuestosID_OTCAB.Value    := CDSOTrabajoCabID_OT.Value;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoMovNewRecord( DataSet: TDataSet);
begin
  CDSOTrabajoMovID.Value         := IBGOT_Mov.IncrementFD(1);
  CDSOTrabajoMovID_OTCAB.Value   := CDSOTrabajoCabID_OT.Value;
  CDSOTrabajoMovPRUDUCTO.Value   := CDSOTrabajoCabPRODUCTO.Value;
  CDSOTrabajoMovFECHA.AsDateTime := date;
  CDSOTrabajoMovCLIENTE.Value    := CDSOTrabajoCabCODIGO.Value;
  CDSOTrabajoMovOPERARIO.Value   := DMMain_FD.EmpleadoPorDefecto;
  CDSOTrabajoMovMAILENVIADO.Value:= CDSOTrabajoCabMAILENVIADO.Value;

  if CDSOTrabajoMovOPERARIO.AsString='' Then
    CDSOTrabajoMovOPERARIO.Value := CDSOTrabajoCabRESPONSABLE_TURNO.Value;
  CDSOTrabajoMovNewReg.Value     := True;
  CDSOTrabajoMovHORAINICIOSetText(CDSOTrabajoMovHORAINICIO,TimeToStr(now));
  CDSOTrabajoMovHORAFINALSetText(CDSOTrabajoMovHORAFINAL,TimeToStr(now));

end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoSubDetAfterPost(DataSet: TDataSet);
begin
  FormOrdenDeTrabajo.CodigosSeries.Add(CDSOTrabajoSubDetSERIE.Value);
  if (Trim(CDSOTrabajoSubDetSERIE.Value)='') then
    CDSOTrabajoSubDet.Delete;

end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoSubDetBeforeDelete(DataSet: TDataSet);
VAR i:Integer;
begin
  i:=FormOrdenDeTrabajo.CodigosSeries.IndexOf(CDSOTrabajoSubDetSERIE.Value);
    if i>=0 Then  FormOrdenDeTrabajo.CodigosSeries.Delete(I);
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoSubDetNewRecord(DataSet: TDataSet);
begin
  CDSOTrabajoSubDetID.Value                := ibgSubDet.IncrementFD(1);
  CDSOTrabajoSubDetID_DETOT.Value          := CDSOTrabajoDetID.Value;
  CDSOTrabajoSubDetID_CABOT.Value          := CDSOTrabajoDetID_CABOT.Value;
  CDSOTrabajoSubDetCODIGOARTICULO.AsString := CDSOTrabajoDetCODIGOARTICULO.AsString;
  CDSOTrabajoSubDetDEPOSITO.Value          := CDSOTrabajoCabDEPOSITO.Value;
  CDSOTrabajoSubDetTIPO.Value              := 'E';
 end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoSubDetSERIESetText(Sender: TField;
  const Text: string);
var i:Integer;
IngSerieConVta:String;
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
       i:=FormOrdenDeTrabajo.CodigosSeries.IndexOf(UpperCase(Text));
      if i>=0 Then
        begin
          Sender.Clear;
          showmessage('Codigo de Serie Ingresado ...... ');
          SysUtils.Abort;
        end;

      if CDSOTrabajoSubDet.State=dsBrowse Then
        CDSOTrabajoSubDet.Append;
      Sender.AsString:=UpperCase(Trim(Text));
      if (CDSOTrabajoDetCON_NROSERIE.Value='S') Then
        begin
          if CDSOTrabajoSubDetTIPO.Value='E' Then
            begin
              QNroSerie.Close;
              QNroSerie.ParamByName('codigo').Value     := CDSOTrabajoDetCODIGOARTICULO.Value;
              QNroSerie.ParamByName('codigoserie').Value:= Sender.AsString;
              DMMain_FD.QOpciones.Close;
              DMMain_FD.QOpciones.ParamByName('opcion').Value:='SERIEDEPOSITO';
              DMMain_FD.QOpciones.Open;
              if DMMain_FD.QOpciones.Fields[0].AsString[1]='S' Then
                QNroSerie.ParamByName('deposito').Value:= -1
              else
                QNroSerie.ParamByName('deposito').Value := CDSOTrabajoCabDEPOSITO.Value;
              // verifico si ingreso el serie en ausencia por medio de la vta
              DMMain_FD.QOpciones.Close;
              DMMain_FD.QOpciones.ParamByName('opcion').Value:='INGSERIEVTA';
              DMMain_FD.QOpciones.Open;
              IngSerieConVta:=DMMain_FD.QOpciones.Fields[0].AsString[1];
              DMMain_FD.QOpciones.Close;
              QNroSerie.Open;
              IF (QNroSerie.Fields[0].AsString='') and (IngSerieConVta='S') THEN
                BEGIN
                  ShowMessage('Codigo Serie Inexistente, o en otro depósito, o ya fué entregado...');
                  if (MessageDlg('Continua con la carga igual, dando de alta el Nro.de Seria en forma automática...?',
                                  mtConfirmation, [mbYes, mbNo], 0)= 1) Then
                    begin
                      Sender.Clear;
                      CDSOTrabajoSubDetSERIE.AsString:='';
                    end;
                END
              else
                IF (QNroSerie.Fields[0].AsString='') THEN
                  begin
                    Sender.Clear;
                    if CDSOTrabajoSubDet.RecordCount=1 Then
                     CDSOTrabajoSubDet.Delete;

                    CDSOTrabajoSubDet.Cancel;
                    ShowMessage('No Encontrado...');
                  end;
              QNroSerie.Close;
            end;
        end;
    end;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoMovHORAINICIOSetText( Sender: TField; const Text: String);
begin
  Sender.AsString:=Text;
  CDSOTrabajoMovTOTALTIEMPO.AsDateTime := Sender.AsDateTime - CDSOTrabajoMovHORAFINAL.AsDateTime;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoMovHORAFINALSetText(
  Sender: TField; const Text: String);
begin
  Sender.AsString:=Text;
  CDSOTrabajoMovTOTALTIEMPO.AsDateTime := Sender.AsDateTime - CDSOTrabajoMovHORAFINAL.AsDateTime;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoMovFECHASetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=tEXT;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoDetUNITARIO_TOTALSetText(
  Sender: TField; const Text: String);
VAR Num, P_Exento, P_Gravado,Pt_Exento,
    Pt_Gravado,Pt_Final, Descuento,Cantidad,TasaIva,Aux1,Aux2,Aux3,ImporteIva:  Extended;
  TextAux:String;
BEGIN
  if Text<>'' Then
    begin
      Num:=Moneda3D(' ',MascaraDetalleUnitario,StrToFloat(Text));
      IF CDSOTrabajoDetMODO_GRAVAMEN.Value <> '' THEN
        CASE CDSOTrabajoDetMODO_GRAVAMEN.Value[1] OF
          'E': CDSOTrabajoDetUNITARIO_EXENTO.AsFloat :=Num;
          'G': CDSOTrabajoDetUNITARIO_GRAVADO.AsFloat:=Num;
        END;

      Aux1:= CDSOTrabajoDetUNITARIO_EXENTO.AsFloat;
      Aux2:= CDSOTrabajoDetUNITARIO_GRAVADO.AsFloat;
      IF (CDSOTrabajoDetDESGLOZAIVA.Value = 'N') and  (CDSOTrabajoDetMODO_GRAVAMEN.AsString[1] in ['G','M']) THEN
        Aux2:= Aux2 / (1 + (CDSOTrabajoDetIVA_TASA.AsFloat /100));

      CDSOTrabajoDetUNITARIO_GRAVADO.AsFloat := Aux2;

      Aux3:=Aux1 + Aux2;
      CDSOTrabajoDetTOTAL.AsFloat := CDSOTrabajoDetCANTIDAD.AsFloat * Aux3 *(1- CDSOTrabajoDetDESCUENTO.AsFloat * 0.01);
      Sender.AsString:= FloatToStr(Aux3);
    end;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoDetCODIGOARTICULOSetText(Sender: TField; const Text: String);
VAR S,CodTxt,Aux,CodAlternativo: STRING;
QSerie  :TFDQuery;
Enter   :Char;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      // Quitar enter de la cadena....
      CodTxt:=AnsiReplaceStr(Text, #13, '');
      CodTxt:=AnsiReplaceStr(CodTxt, #10, '');

      Sender.AsString := DMMain_FD.SearchCodigo(CodTxt,DSOTrabajoDet,False);
      S:= Sender.AsString;
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
          FormBuscadorArticulos.ListaPrecio := DatosOrdenDeTrabajo.CDSOTrabajoCabLISTAPRECIO.Value;
          FormBuscadorArticulos.Esquema     := -1;
          FormBuscadorArticulos.Dato              := s;//Text;
          if FormBuscadorArticulos.Visible=False Then
            FormBuscadorArticulos.ShowModal;
          if FormBuscadorArticulos.Codigo<>'' Then
            begin
              IF CDSOTrabajoDet.State = dsBrowse THEN
                CDSOTrabajoDet.Edit;
              CDSOTrabajoDetCODIGOARTICULOSetText(CDSOTrabajoDetCODIGOARTICULO,FormBuscadorArticulos.Codigo);
              if DMMain_FD.EncontroCodigoSerie then
                begin
                  CDSOTrabajoSubDet.Append;
                  CDSOTrabajoSubDetSERIE.Value:=CodTxt;
                end;
            end
          else
            Sender.AsString:='';
        END;
      if DMMain_FD.EncontroCodigoSerie then
        begin
          //Verifico deposito ...
          QSerie:=TFDQuery.Create(self);
          QSerie.Connection :=DMMain_FD.fdcGestion;
          QSerie.SQL.Text:='select s.id,s.codigo_stk from stock_series s where s.codigoserie = '+
                           ''''+codTxt+''''+' and s.deposito = '+''+CDSOTrabajoCabDEPOSITO.AsString+'';
          QSerie.Open;
          if QSerie.Fields[0].AsString<>'' then
            begin
              CDSOTrabajoSubDet.Append;
              CDSOTrabajoSubDetID_DETOT.Value       := ID_Det_Serie;
              CDSOTrabajoSubDetCODIGOARTICULO.Value := s;
              CDSOTrabajoSubDetSERIESetText(CDSOTrabajoSubDetSERIE,CodTxt);
              CDSOTrabajoSubDet.Post;
            end
          else
            begin
              CDSOTrabajoDet.Delete;
              CDSOTrabajoDet.Cancel;
              CDSOTrabajoSubDet.Cancel;
              ShowMessage('EL serie no se Encontro en el deposito Indicado....');
            end;
          FreeAndNil(QSerie);
        end
      else
        if DMMain_FD.EncontroCodigoBarra Then
          begin
            FormOrdenDeTrabajo.DBGrillaDetalle.OnKeyPress(FormOrdenDeTrabajo.DBGrillaDetalle,Enter);
        end;
    END;
END;


procedure TDatosOrdenDeTrabajo.CDSOTrabajoDetCANTIDADSetText(
  Sender: TField; const Text: String);
VAR
  Aux1, Aux2, Aux3: real;
BEGIN
  if Text<>'' Then
    begin
      Sender.AsString := Text;
      if (CDSOTrabajoDetCON_NROSERIE.AsString='S') AND (Sender.AsFloat>1) then Sender.AsString:='1';
      Sender.AsFloat  := Moneda3D(' ',MascaraDetalleCantidad,Sender.AsFloat);
      Aux1            := CDSOTrabajoDetUNITARIO_EXENTO.AsFloat;
      Aux2            := CDSOTrabajoDetUNITARIO_GRAVADO.AsFloat;
      Aux3            := Aux1 + Aux2;
      CDSOTrabajoDetTOTAL.AsFloat := CDSOTrabajoDetCANTIDAD.AsFloat * Aux3 * (1- CDSOTrabajoDetDESCUENTO.AsFloat/100);
    end;
END;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoDetUNITARIO_TOTALGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
VAR
  Aux1, Aux2, Aux3: Extended;
BEGIN

  Aux1:= CDSOTrabajoDetUNITARIO_EXENTO.AsFloat;
  Aux2:= CDSOTrabajoDetUNITARIO_GRAVADO.AsFloat;
  if (CDSOTrabajoDetMODO_GRAVAMEN.AsString<>'') then
    IF (CDSOTrabajoDetDESGLOZAIVA.Value = 'N') and  (CDSOTrabajoDetMODO_GRAVAMEN.AsString[1] in ['G','M']) THEN
      Aux2:= Aux2 * (1+CDSOTrabajoDetIVA_TASA.AsFloat /100);
  Aux2:= Moneda3D('+',MascaraDetalleUnitario,Aux2);
  Aux3:= Aux1 + Aux2;
  Text:= FormatFloat(MascaraDetalleUnitario,Aux3);//FloatToStrF(Aux3, ffFixed, 6, 3);
END;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoDetIVA_TASASetText(
  Sender: TField; const Text: String);
begin
  Sender.AsString:=FloatToStr(Moneda3D(' ',MascaraCabecera,StrToFloat(Text)));
  CDSOTrabajoDetIVA_SOBRETASA.AsFloat := Sender.AsFloat*0.5;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoDetDESCUENTOSetText(
  Sender: TField; const Text: String);
VAR
  Aux1, Aux2, Aux3: real;
BEGIN
  if Text<>'' Then
    begin
      Sender.AsString :=Text;
      Sender.AsFloat  :=Moneda3D('+',MascaraDetalleDescuento,Sender.AsFloat);
      Aux1:= CDSOTrabajoDetUNITARIO_EXENTO.AsFloat;
      Aux2:= CDSOTrabajoDetUNITARIO_GRAVADO.AsFloat;
      Aux3:=Aux1 + Aux2;
      CDSOTrabajoDetTOTAL.AsFloat := CDSOTrabajoDetCANTIDAD.AsFloat * Aux3 * (1- CDSOTrabajoDetDESCUENTO.AsFloat/100);
    end;
END;


procedure TDatosOrdenDeTrabajo.CDSOTrabajoDetTOTALGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR
  Aux1: real;
BEGIN
  Aux1 := Sender.AsFloat;
  IF CDSOTrabajoDetDESGLOZAIVA.Value = 'N' THEN
    Aux1 := Moneda3D('+',MascaraDetalleTotal,Aux1 * (1 + CDSOTrabajoDetIVA_Tasa.AsFloat * 0.01));
  Text := FormatFloat(MascaraDetalleTotal, Aux1);
END;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoDetAfterDelete(
  DataSet: TDataSet);
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

procedure TDatosOrdenDeTrabajo.CDSOTrabajoDetAfterEdit(DataSet: TDataSet);
begin
  // **** Ingreso en el Log File  **************
  DMMain_FD.LogFileFD(1,2,'Modif.Linea O.de Trabajo:'+ CDSOTrabajoCabNROCPBTE.AsString+' Cliente: '+
                          CDSOTrabajoCabCODIGO.ASString+':'+ CDSOTrabajoCabNOMBRE.ASString+
                          ' Antes: '+ CDSOTrabajoDetDETALLE.OldValue+'...'+FormatFloat(',0.00',CDSOTrabajoDetTOTAL.OldValue)+
                          '//Nuevo: '+ CDSOTrabajoDetDETALLE.NewValue+'...'+FormatFloat(',0.00',CDSOTrabajoDetTOTAL.NewValue),
                          'OTRABAJO');
 // ******************************************

end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoDetAfterInsert(
  DataSet: TDataSet);
begin
  IF (CDSOTrabajoDet.RecordCount > Renglones) THEN
    BEGIN
      ShowMessage('No se pueden Ingresar más Items' + #13 +
        'Evento - (AfterInsert)');
      SysUtils.Abort;
      CDSOTrabajoDet.Cancel;
    END
  ELSE IF (CDSOTrabajoCabCodigo.AsString = '') THEN
    BEGIN
      SysUtils.Abort;
      CDSOTrabajoDet.Cancel;
    END;

//  ELSE IF (wwCDSVentaCabImpreso.Value = 'S') THEN
//    BEGIN
//      ShowMessage('No se puede modificar'#13'un comprobante ya impreso');
//      SysUtils.Abort;
//      IF wwCDSVentaDet.State IN [dsEdit, dsInsert] THEN
//        wwCDSVentaDet.Cancel;
//      IF wwCDSVentaCab.State IN [dsEdit, dsInsert] THEN
//        wwCDSVentaCab.Cancel;
//    END;

end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoDetAfterPost(
  DataSet: TDataSet);
begin
 // if ActivoEventoDet Then
  begin
  if CDSOTrabajoSubDet.State<>dsBrowse then
    CDSOTrabajoSubDet.Post;
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
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_ID_COMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if Trim(Text) <> '' then
    begin
      if CDSOTrabajoCab.State=dsBrowse Then
        CDSOTrabajoCab.Edit;
      Sender.AsString:=text;
      QComprob.Close;
      QComprob.ParamByName('id').Value:=Sender.AsInteger;
      QComprob.Open;
      if Not(QComprob.IsEmpty) Then
        begin
          CDSOTrabajoCabDESGLOZAIVA.AsString     :=QComprobDESGLOZA_IVA.AsString;
          // Fuerzo Siempre no discrimina ... Astesano (30/04/2013)
          // CDSOTrabajoCabDESGLOZAIVA.Value       :='N';
         // lo vuelvo a comentar lo anterior

          if CDSOTrabajoCab.State = dsInsert then
            CDSOTrabajoCabMUESTRATIPOFACTURA.AsString :=QComprobDENOMINACION.AsString;
          CDSOTrabajoCabFACTURA_TIPO.AsString         :=QComprobTIPO_COMPROB.AsString;
          CDSOTrabajoCabFACTURA_CLASE.AsString        :=QComprobCLASE_COMPROB.AsString;

          CDSInscripcion.Close;
          CDSInscripcion.Params.ParamByName('Codigo').Value := CDSOTrabajoCabTIPOIVA.AsInteger;
          CDSInscripcion.Open;
          IF (CDSInscripcionCODIGO.AsString<>'') Then
            BEGIN
              if (CDSInscripcionDISCRIMINAIVA.AsString='S') Then
                begin
                  if (QComprobDESGLOZA_IVA.AsString='N') and (QComprobAFECTA_IVA.AsString='S') then
                    begin
                       CDSOTrabajoCabFACTURA_ID_COMPROBANTE.Clear;
                       CDSOTrabajoCabMUESTRATIPOFACTURA.Clear;
                       CDSOTrabajoCabFACTURA_TIPO.AsString      :='';
                       CDSOTrabajoCabFACTURA_CLASE.AsString     :='';
                       ShowMessage('Comprobante no permitido para la condición de iva del cliente....');
                     end;
                end
              else
                if (CDSInscripcionDISCRIMINAIVA.Value='N') Then
                  begin
                    if (QComprobDESGLOZA_IVA.Value='S') then
                      begin
                        CDSOTrabajoCabFACTURA_ID_COMPROBANTE.Clear;
                        CDSOTrabajoCabMUESTRATIPOFACTURA.Clear;
                        CDSOTrabajoCabFACTURA_TIPO.AsString      :='';
                        CDSOTrabajoCabFACTURA_CLASE.AsString     :='';
                        ShowMessage('Comprobante no permitido para la condición de iva del cliente....');
                      end;
                  end;
            end;
          CDSInscripcion.Close;
        end
      else
        begin
          Sender.Clear;
          CDSOTrabajoCabDESGLOZAIVA.Clear;
          CDSOTrabajoCabMUESTRATIPOFACTURA.Clear;
          CDSOTrabajoCabFACTURA_TIPO.AsString      :='';
          CDSOTrabajoCabFACTURA_CLASE.AsString     :='';
          ShowMessage('Hay un error en el tipo de Factura a Asignar.....');
        end;
    end
  else
    begin
      Sender.Clear;
      CDSOTrabajoCabMUESTRATIPOFACTURA.Clear;
    end;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoMovBeforePost(
  DataSet: TDataSet);
begin
  CDSOTrabajoMovTOTALTIEMPO.AsDateTime := CDSOTrabajoMovHORAFINAL.AsDateTime - CDSOTrabajoMovHORAINICIO.AsDateTime;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoMovDETALLEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
var
    l:TStringList;
    s:WideString;
    RE:TRichEdit;
    ss:TStringStream;
begin
  if Not(CDSOTrabajoMov.IsEmpty) AND (cdsotRABAJOcAB.State = DSbROWSE) then
  begin
    ss := TStringStream.Create;
    s  := DatosOrdenDeTrabajo.CDSOTrabajoMOVDetalle.Value; // Input String
    RE := TRichEdit.CreateParented(HWND_MESSAGE);
    l  := TStringList.Create;
    l.Add(s);
    ss.Position := 0;
    l.SaveToStream(ss);
    ss.Position := 0;
    RE.Lines.LoadFromStream(ss);
    Text := RE.Text; // Output String
    FreeAndNil(ss);
  end
  else
  Text:=Sender.AsString;
end;

procedure TDatosOrdenDeTrabajo.sebdervDETALLEGetText(Sender: TField;
  var Text : string; DisplayText: Boolean);
//Var  AText : String Absolute Text; // Trampilla para meter el parámetro "Text" al With

var
    l:TStringList;
    s:WideString;
    RE:TRichEdit;
    ss:TStringStream;
begin
  if Not(CDSOTrabajoMov.IsEmpty) then
  begin
    ss := TStringStream.Create;
    s  := DatosOrdenDeTrabajo.CDSOTrabajoMOVDetalle.Value; // Input String
    RE := TRichEdit.CreateParented(HWND_MESSAGE);
    l  := TStringList.Create;
    l.Add(s);
    ss.Position := 0;
    l.SaveToStream(ss);
    ss.Position := 0;
    RE.Lines.LoadFromStream(ss);
    Text := RE.Text; // Output String
    FreeAndNil(ss);
  end;

//redtTemporal : TRichEdit;
//sTexto      : string;
//begin
//  if Not(CDSOTrabajoMov.IsEmpty) then
//    begin
//      redtTemporal := TRichEdit.Create(Self);
//      with redtTemporal do
//        begin
//          redtTemporal.PlainText := False;
//          Parent                 := FormOrdenDeTrabajo;
//          redtTemporal.Text      := CDSOTrabajoMovDETALLE.AsString;// Sender.AsString;// Query.FieldValues['Campo'];
//          redtTemporal.PlainText := True;
//          sTexto                 := redtTemporal.Lines.Text;
//          Free;
//        end;
//      Text := sTexto;
//    end;




// if Not(CDSOTrabajoMov.IsEmpty) then
//    begin
//      With TRichEdit.Create(nil) Do // Construimos el objeto "al vuelo" (sin usar una variable)
//        Try
//          Visible := False; // Evitamos efecto de "parpadeo"
//          Parent  := FormOrdenDeTrabajo; // Para que no marque error al leer su texto
//          Text    := Sender.AsString; // Asignamos el valor de cualquiera que sea el campo RTF en turno (Sender)
//          AText   := Lines.Text; // Esto devuelve texto plano aunque PlainText sea False
//        Finally // Try-Finally asegura que siempre se llamará a lo que esté en Finally (aunque haya error)
//          Free; // Convencionalmente es preferible llamar a Free que a Destroy
//        End;
//    end;
end;


procedure TDatosOrdenDeTrabajo.DSOTrabajoDetStateChange(Sender: TObject);
begin
  if (CDSOTrabajoCab.state=dsBrowse) and
     (DSOTrabajoDet.DataSet.State in [dsEdit,dsInsert]) Then
    CDSOTrabajoCab.Edit;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabCONDICIONVTASetText(
  Sender: TField; const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarCondVenta(CDSOTrabajoCabCODIGO.AsString,Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo L.D.R no Válido');
        END;
    END;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabRESPONSABLE_OTSetText(
  Sender: TField; const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      if CDSOTrabajoCab.State = dsBrowse Then
        CDSOTrabajoCab.Edit;
      Sender.AsString:=copy('000000',1,Sender.Size-Length(Text))+Text;
      if (FormOrdenDeTrabajo.EstuvoAsignado=False)
        {and (wwCDSOTrabajoCabRESPONSABLE_TURNO.AsString='')} Then
        CDSOTrabajoCabRESPONSABLE_TURNOSetText(CDSOTrabajoCabRESPONSABLE_TURNO,Sender.AsString);
      if (FormOrdenDeTrabajo.EstuvoAsignado=True)
        and (CDSOTrabajoCabRESPONSABLE_TURNO.AsString='') Then
        CDSOTrabajoCabRESPONSABLE_TURNOSetText(CDSOTrabajoCabRESPONSABLE_TURNO,Sender.AsString);

      IF (NOT (AsignarOperador(Sender.AsString,0))) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Operador no Válido');
          //FormCpbte_2.RxCConVta.SetFocus;
        END;
    END;

end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabRESPONSABLE_TURNOSetText(
  Sender: TField; const Text: String);
begin
  IF Text<>'' THEN
    IF  (Text<>'') and (Text[1]<>#13) THEN
      BEGIN
        if CDSOTrabajoCab.State = dsBrowse Then
          CDSOTrabajoCab.Edit;
        Sender.AsString:=copy('000000',1,Sender.Size-Length(Text))+Text;
        IF (NOT (AsignarOperador(Sender.AsString,1))) THEN
          BEGIN
            Sender.AsString:= '';
            ShowMessage('Codigo Operador no Válido');
          END;
      END;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabFECHAINICIOSetText(
  Sender: TField; const Text: String);
begin
  if CDSOTrabajoCab.State in [dsEdit,dsInsert] Then
    begin
      Sender.AsString:=Text;
      CDSOTrabajoCabFECHAESTIMADA.AsDateTime := Sender.AsDateTime;
    end;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoCabHORAChange(Sender: TField);
begin
 // CDSOTrabajoCabHORA_FIN.AsDateTime  := CDSOTrabajoCabHORA.AsDateTime+(1/24);
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoMovAfterPost(
  DataSet: TDataSet);
begin
  SumarHoras;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoMatafuegosNewRecord(
  DataSet: TDataSet);
begin

  CDSOTrabajoMatafuegosID.Value                := ibgOTrabajoMatafuegos.IncrementFD(1);
  CDSOTrabajoMatafuegosID_OT.Value             := CDSOTrabajoCabID_OT.Value;
  CDSOTrabajoMatafuegosID_MATAFUEGO.Value      := -1;
  CDSOTrabajoMatafuegosNUMERO_MATAFUEGO.Value  := '';
  CDSOTrabajoMatafuegosAGENTE.Value            := '';
  CDSOTrabajoMatafuegosCAPACIDAD.Value         := 0;
  CDSOTrabajoMatafuegosMARCA.Value             := '';
  CDSOTrabajoMatafuegosOPCION_PH.Value         := 'N';
  CDSOTrabajoMatafuegosOPCION_VALVULA.Value    := 'N';
  CDSOTrabajoMatafuegosOPCION_MANOMETRO.Value  := 'N';
  CDSOTrabajoMatafuegosOPCION_PLACA.Value      := 'N';
  CDSOTrabajoMatafuegosOPCION_MANGA.Value      := 'N';
  CDSOTrabajoMatafuegosOPCION_TOBERA.Value     := 'N';
  CDSOTrabajoMatafuegosOPCION_SUNCHO.Value     := 'N';
  CDSOTrabajoMatafuegosOPCION_PINTURA.Value    := 'N';
  CDSOTrabajoMatafuegosTIPO_TRABAJO.Value      := 0;

end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoMatafuegosNUMERO_MATAFUEGOSetText(
  Sender: TField; const Text: string);
begin
  Sender.AsString:=Text;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoMovAfterDelete( DataSet: TDataSet);
begin
  SumarHoras;
end;

procedure TDatosOrdenDeTrabajo.CDSPenalizacionesNewRecord(DataSet: TDataSet);
begin
  CDSPenalizacionesID_OT.Value      := CDSOTrabajoCabID_OT.Value;
  CDSPenalizacionesNRO_OT.Value     := CDSOTrabajoCabNROCPBTE.Value;
  CDSPenalizacionesEMPLEADO.Value   := CDSOTrabajoCabRESPONSABLE_OT.Value;
  CDSPenalizacionesFECHA.AsDateTime := Date;
  CDSPenalizacionesPUNTOS.AsFloat   := 0;
  CDSPenalizacionesMOTIVO.Value     := '';
end;

function  TDatosOrdenDeTrabajo.UltCodProducto: integer;
begin
  QUltCodProducto.Close;
  QUltCodProducto.Open;
  if QUltCodProducto.IsEmpty then
    Result  :=  0
  else
    Result  :=  QUltCodProductoID.AsInteger;
  QUltCodProducto.Close;

end;

function  TDatosOrdenDeTrabajo.CategoriaPorDef: TCategoriaProductos;
begin
  QCategoriaPorDef.Close;
  QCategoriaPorDef.Open;
  if QCategoriaPorDef.IsEmpty then
    begin
      Result.ID       := -1;
      Result.Detalle  := '';
    end
  else
    begin
      Result.ID       := QCategoriaPorDefID.AsInteger;
      Result.Detalle  := QCategoriaPorDefDETALLE.AsString;
    end;
  QCategoriaPorDef.Close;

end;


procedure TDatosOrdenDeTrabajo.CDSProductoNewRecord(DataSet: TDataSet);
var
  CatPorDef : TCategoriaProductos;
begin
  CatPorDef := CategoriaPorDef;
  CDSProductoID.AsInteger                 :=  UltCodProducto + 1;
  CDSProductoID_CATEGORIA.AsInteger       :=  CatPorDef.ID;
  CDSProductoMUESTRACATEGORIA.AsString    :=  CatPorDef.Detalle;
  CDSProductoPROPIETARIO.AsString         :=  CDSOTrabajoCabCODIGO.AsString;// '';
  CDSProductoIDENTIFICADOR.AsString       :=  '';
  CDSProductoDESCRIPCION.AsString         :=  '';
  NuevoProd                               := True;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoMovBeforeEdit(DataSet: TDataSet);
begin
  if ActivoEventoMov=True Then
    if (DMMain_FD.ModificaLineaOT=False) and (CDSOTrabajoMovNewReg.Value=False) Then
      begin
        ShowMessage('No está autorizado para esta Operación');
        sysutils.Abort;
      end;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoDetBeforeEdit(
  DataSet: TDataSet);
begin
  if ActivoEventoDet=True Then
    begin
      if (CDSOTrabajoCabFACTURA_ID.AsString='') or (CDSOTrabajoCabFACTURA_ID.AsString='0') Then
        begin
          if (DMMain_FD.ModificaLineaOT=False) Then
            begin
              ShowMessage('No está autorizado para esta Operación');
              sysutils.Abort;
            end;
        end
      else
        begin
          ShowMessage('Ya fué Facturado, no se puede modificar');
          sysutils.Abort;
        end;
    end;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoDetBeforeDelete(
  DataSet: TDataSet);
begin
  if ActivoEventoDet=True Then
    begin
      if (CDSOTrabajoCabFACTURA_ID.AsString='') or (CDSOTrabajoCabFACTURA_ID.AsString='0') Then
        begin
          if DMMain_FD.BorraLineaOT=False Then
            begin
              ShowMessage('No está autorizado para esta Operación');
              sysutils.Abort;
            end;
        end
      else
        begin
          ShowMessage('Ya fué Facturado, no se puede borrar');
          sysutils.Abort;
        end;
      // **** Ingreso en el Log File  **************

      DMMain_FD.LogFileFD(1,2,'Borrado Linea O.de Trabajo:'+ CDSOTrabajoCabNROCPBTE.AsString+' Cliente: '+
                               CDSOTrabajoCabCODIGO.ASString+':'+ CDSOTrabajoCabNOMBRE.ASString+
                              ' Descripcion: '+ CDSOTrabajoDetCODIGOARTICULO.AsString+'-'+CDSOTrabajoDetDETALLE.AsString,
                              'OTRABAJO');
      // ******************************************
      if not(CDSOTrabajoSubDet.IsEmpty) then
        CDSOTrabajoSubDet.Delete;
    end;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoMovBeforeDelete(
  DataSet: TDataSet);
begin
  if ActivoEventoMov=True Then
    if (DMMain_FD.BorraLineaOT=False) and (CDSOTrabajoMovNewReg.Value=False) Then
      begin
        ShowMessage('No está autorizado para esta Operación');
        sysutils.Abort;
      end;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoMovAfterOpen(
  DataSet: TDataSet);
begin
 // CDSOTrabajoMov.First;
//  while not(CDSOTrabajoMov.Eof) DO
//    begin
//      CDSOTrabajoMov.Edit;
//      CDSOTrabajoMovNewReg.Value:=False;
//      CDSOTrabajoMov.Next;
//    end;
//  ActivoEventoMov:=True;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoMovBeforeOpen(
  DataSet: TDataSet);
begin
 // ActivoEventoMov:=False;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoDetAfterOpen(
  DataSet: TDataSet);
begin
 // CDSOTrabajoDet.First;
//  while not(CDSOTrabajoDet.Eof) DO
//    begin
//      CDSOTrabajoDet.Edit;
//      CDSOTrabajoDetNewReg.Value:=False;
//      CDSOTrabajoDet.Next;
//    end;
//  ActivoEventoDet:=True;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoDetBeforeOpen(
  DataSet: TDataSet);
begin
//  ActivoEventoDet:=False;
end;

procedure TDatosOrdenDeTrabajo.CDSOTrabajoDetBeforeInsert(
  DataSet: TDataSet);
begin
  if (CDSOTrabajoCabFACTURA_ID.AsString<>'') and  (CDSOTrabajoCabFACTURA_ID.AsString<>'0')Then
    begin
      ShowMessage('Orden ya Facturada, no se pude ingresar mas Items.');
      sysutils.Abort;
    end;
end;

end.
