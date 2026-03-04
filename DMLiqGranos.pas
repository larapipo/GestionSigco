unit DMLiqGranos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient,
  Datasnap.Provider, IBGenerator,Dialogs;

type
  TDatosLiqGranos = class(TDataModule)
    QLiqCab: TFDQuery;
    QLiqDeducciones: TFDQuery;
    QLiqRetenciones: TFDQuery;
    QLiq_Puertos: TFDQuery;
    QLiq_GradosGranos: TFDQuery;
    QLiqDeduccionesID: TIntegerField;
    QLiqDeduccionesID_LIQ: TIntegerField;
    QLiqDeduccionesCONCEPTOS: TStringField;
    QLiqDeduccionesPORCENTAJE: TFloatField;
    QLiqDeduccionesBASE_CALCULO: TFloatField;
    QLiqDeduccionesALICUOTA: TFloatField;
    QLiqDeduccionesIMPORTE_IVA: TFloatField;
    QLiqDeduccionesDEDUCIONES: TFloatField;
    QLiq_GradosGranosCODIGO: TStringField;
    QLiq_GradosGranosDETALLE: TStringField;
    QLiq_PuertosCODIGO: TIntegerField;
    QLiq_PuertosDESCRIPCION: TStringField;
    QLiq_TActividad: TFDQuery;
    QLiq_TActividadCODIGO: TIntegerField;
    QLiq_TActividadDETALLE: TStringField;
    QLiq_TCertificado: TFDQuery;
    QLiq_TDeducion: TFDQuery;
    QBuscaSucursal: TFDQuery;
    QClientes: TFDQuery;
    QLiq_TRetencion: TFDQuery;
    QSucursal: TFDQuery;
    QLiq_TGranos: TFDQuery;
    QLiq_TCertificadoCODIGO: TIntegerField;
    QLiq_TCertificadoDETALLE: TStringField;
    QLiq_TDeducionCODIGO: TStringField;
    QLiq_TDeducionDETALLE: TStringField;
    QLiq_TGranosID: TIntegerField;
    QLiq_TGranosDETALLE: TStringField;
    QLiq_TRetencionCODIGO: TStringField;
    QLiq_TRetencionDETALLE: TStringField;
    QLiqCabID_LQ: TIntegerField;
    QLiqCabFECHAFISCAL: TSQLTimeStampField;
    QLiqCabTIPOCPBTE: TStringField;
    QLiqCabCLASECPBTE: TStringField;
    QLiqCabTIPO_OPERACION: TIntegerField;
    QLiqCabTIPO_ACTIVIDAD: TIntegerField;
    QLiqCabNROCPBTE: TStringField;
    QLiqCabLETRAFAC: TStringField;
    QLiqCabSUCFAC: TStringField;
    QLiqCabNUMEROFAC: TStringField;
    QLiqCabCODIGO: TStringField;
    QLiqCabNOMBRE: TStringField;
    QLiqCabRAZONSOCIAL: TStringField;
    QLiqCabDIRECCION: TStringField;
    QLiqCabCPOSTAL: TStringField;
    QLiqCabLOCALIDAD: TStringField;
    QLiqCabTIPOIVA: TIntegerField;
    QLiqCabCUIT: TStringField;
    QLiqCabOBSERVACION1: TStringField;
    QLiqCabOBSERVACION2: TStringField;
    QLiqCabINGRESA_A_CTACTE: TStringField;
    QLiqCabINGRESA_LIBRO_IVA: TStringField;
    QLiqCabMERCADERIA_NROPBTE: TStringField;
    QLiqCabMERCADERIA_GRADO: TStringField;
    QLiqCabMERCADERIA_FACTOR: TFloatField;
    QLiqCabMERCADERIA_CON_PROTEI: TFloatField;
    QLiqCabMERCADERIA_PESO: TFloatField;
    QLiqCabMERCADERIA_PROCEDEN: TIntegerField;
    QLiqCabOPERACION_CANTIDAD: TFloatField;
    QLiqCabOPERACION_PRECIOKG: TFloatField;
    QLiqCabOPERACION_SUBTOT: TFloatField;
    QLiqCabOPERACION_ALICUOTA: TFloatField;
    QLiqCabOPERACION_IMPO_IVA: TFloatField;
    QLiqCabOPERACION_OPER_CIVA: TFloatField;
    QLiqCabCONDICION_PRECIO_TN: TFloatField;
    QLiqCabCONDICION_GRADO: TStringField;
    QLiqCabCONDICION_GRANO: TIntegerField;
    QLiqCabCONDICION_FLETE: TFloatField;
    QLiqCabCONDICION_PUERTO: TIntegerField;
    QLiqCabTOTAL_OPERACION: TFloatField;
    QLiqCabTOTAL_RET_AFIP: TFloatField;
    QLiqCabNETO_A_PAGAR: TFloatField;
    QLiqCabTOTAL_PERCEPCIONES: TFloatField;
    QLiqCabTOTAL_OTRAS_RETENCIONES: TFloatField;
    QLiqCabIVARG2300: TFloatField;
    QLiqCabTOTAL_DEDUCIONES: TFloatField;
    QLiqCabPAGO_SEGUN_COND: TFloatField;
    QLiqCabFECHA_HORA: TSQLTimeStampField;
    QLiqCabUSUARIO: TStringField;
    DSPLiqCab: TDataSetProvider;
    CDSLiqCab: TClientDataSet;
    DSPLiqDeducciones: TDataSetProvider;
    CDSLiqDeducciones: TClientDataSet;
    CDSLiqRetenciones: TClientDataSet;
    DSpLiqRetenciones: TDataSetProvider;
    CDSLiqDeduccionesID: TIntegerField;
    CDSLiqDeduccionesID_LIQ: TIntegerField;
    CDSLiqDeduccionesCONCEPTOS: TStringField;
    CDSLiqDeduccionesPORCENTAJE: TFloatField;
    CDSLiqDeduccionesBASE_CALCULO: TFloatField;
    CDSLiqDeduccionesALICUOTA: TFloatField;
    CDSLiqDeduccionesIMPORTE_IVA: TFloatField;
    CDSLiqDeduccionesDEDUCIONES: TFloatField;
    ibgCab: TIBGenerator;
    ibgDeduciones: TIBGenerator;
    ibgRetenciones: TIBGenerator;
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
    CDSEmpresaTASA_PERCEPCION_IB: TFMTBCDField;
    CDSEmpresaMINO_IMP_PERCEP_IB: TFMTBCDField;
    CDSEmpresaPROVINCIA: TIntegerField;
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
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    QLiqCabSUCURSAL: TIntegerField;
    DSGradosGranos: TDataSource;
    DSTCertificados: TDataSource;
    DSTDeducion: TDataSource;
    DSTGranos: TDataSource;
    DSTRetenciones: TDataSource;
    DSPuertos: TDataSource;
    DSTActividad: TDataSource;
    DSDeducciones: TDataSource;
    DSRetenciones: TDataSource;
    QLiqCabID_TIPOCOMPROBANTE: TIntegerField;
    QLiqCabFECHA: TSQLTimeStampField;
    QLiqCabMUESTRASUCURSAL: TStringField;
    QLiqCabMUESTRACOMPROBANTE: TStringField;
    CDSLiqCabID_LQ: TIntegerField;
    CDSLiqCabFECHA: TSQLTimeStampField;
    CDSLiqCabFECHAFISCAL: TSQLTimeStampField;
    CDSLiqCabTIPOCPBTE: TStringField;
    CDSLiqCabCLASECPBTE: TStringField;
    CDSLiqCabTIPO_OPERACION: TIntegerField;
    CDSLiqCabTIPO_ACTIVIDAD: TIntegerField;
    CDSLiqCabNROCPBTE: TStringField;
    CDSLiqCabLETRAFAC: TStringField;
    CDSLiqCabSUCFAC: TStringField;
    CDSLiqCabNUMEROFAC: TStringField;
    CDSLiqCabCODIGO: TStringField;
    CDSLiqCabNOMBRE: TStringField;
    CDSLiqCabRAZONSOCIAL: TStringField;
    CDSLiqCabDIRECCION: TStringField;
    CDSLiqCabCPOSTAL: TStringField;
    CDSLiqCabLOCALIDAD: TStringField;
    CDSLiqCabTIPOIVA: TIntegerField;
    CDSLiqCabCUIT: TStringField;
    CDSLiqCabOBSERVACION1: TStringField;
    CDSLiqCabOBSERVACION2: TStringField;
    CDSLiqCabINGRESA_A_CTACTE: TStringField;
    CDSLiqCabINGRESA_LIBRO_IVA: TStringField;
    CDSLiqCabMERCADERIA_NROPBTE: TStringField;
    CDSLiqCabMERCADERIA_GRADO: TStringField;
    CDSLiqCabMERCADERIA_FACTOR: TFloatField;
    CDSLiqCabMERCADERIA_CON_PROTEI: TFloatField;
    CDSLiqCabMERCADERIA_PESO: TFloatField;
    CDSLiqCabMERCADERIA_PROCEDEN: TIntegerField;
    CDSLiqCabOPERACION_CANTIDAD: TFloatField;
    CDSLiqCabOPERACION_PRECIOKG: TFloatField;
    CDSLiqCabOPERACION_SUBTOT: TFloatField;
    CDSLiqCabOPERACION_ALICUOTA: TFloatField;
    CDSLiqCabOPERACION_IMPO_IVA: TFloatField;
    CDSLiqCabOPERACION_OPER_CIVA: TFloatField;
    CDSLiqCabCONDICION_PRECIO_TN: TFloatField;
    CDSLiqCabCONDICION_GRADO: TStringField;
    CDSLiqCabCONDICION_GRANO: TIntegerField;
    CDSLiqCabCONDICION_FLETE: TFloatField;
    CDSLiqCabCONDICION_PUERTO: TIntegerField;
    CDSLiqCabTOTAL_OPERACION: TFloatField;
    CDSLiqCabTOTAL_RET_AFIP: TFloatField;
    CDSLiqCabNETO_A_PAGAR: TFloatField;
    CDSLiqCabTOTAL_PERCEPCIONES: TFloatField;
    CDSLiqCabTOTAL_OTRAS_RETENCIONES: TFloatField;
    CDSLiqCabIVARG2300: TFloatField;
    CDSLiqCabTOTAL_DEDUCIONES: TFloatField;
    CDSLiqCabPAGO_SEGUN_COND: TFloatField;
    CDSLiqCabFECHA_HORA: TSQLTimeStampField;
    CDSLiqCabUSUARIO: TStringField;
    CDSLiqCabSUCURSAL: TIntegerField;
    CDSLiqCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSLiqCabMUESTRASUCURSAL: TStringField;
    CDSLiqCabMUESTRACOMPROBANTE: TStringField;
    CDSLiqRetencionesID: TIntegerField;
    CDSLiqRetencionesID_LIQ: TIntegerField;
    CDSLiqRetencionesCONCEPTO: TStringField;
    CDSLiqRetencionesCERT_RET: TStringField;
    CDSLiqRetencionesIMP_CERT_RET: TFloatField;
    CDSLiqRetencionesFECHA_CERT: TSQLTimeStampField;
    CDSLiqRetencionesBASE_CALCULO: TFloatField;
    CDSLiqRetencionesALICUOTA: TFloatField;
    CDSLiqRetencionesRETENCION: TFloatField;
    CDSLiqDeduccionesMUESTRACONCEPTO: TStringField;
    CDSLiqRetencionesMUESTRACONCPETO: TStringField;
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
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QSucursalDIRECCION: TStringField;
    QSucursalLOCALIDAD: TStringField;
    QSucursalTELEFONO1: TStringField;
    QSucursalTELEFONO2: TStringField;
    QSucursalRECARGO: TFloatField;
    QSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    QSucursalGENERA_XML_COMUN: TStringField;
    QSucursalHOST: TStringField;
    QSucursalCERTIFICADO_ELEC: TStringField;
    QSucursalCUIT: TStringField;
    QSucursalRAZONSOCIAL: TStringField;
    QGravamen: TFDQuery;
    QLiqCabOPERACION_COD_ALICUOTAIVA: TIntegerField;
    CDSLiqCabOPERACION_COD_ALICUOTAIVA: TIntegerField;
    CDSLiqCabMUESTRACOD_IVA: TFloatField;
    DSGravamen: TDataSource;
    QGravamenCODIGO: TIntegerField;
    QGravamenDESCRIPCION: TStringField;
    QGravamenTASA: TFloatField;
    QLiqCabCOE: TStringField;
    CDSLiqCabCOE: TStringField;
    QLiq_TRetencionSUMA: TIntegerField;
    CDSLiqRetencionesSUMA: TIntegerField;
    CDSLiqRetencionesDETALLE: TStringField;
    QLiqRetencionesID: TIntegerField;
    QLiqRetencionesID_LIQ: TIntegerField;
    QLiqRetencionesCONCEPTO: TStringField;
    QLiqRetencionesDETALLE: TStringField;
    QLiqRetencionesCERT_RET: TStringField;
    QLiqRetencionesIMP_CERT_RET: TFloatField;
    QLiqRetencionesFECHA_CERT: TSQLTimeStampField;
    QLiqRetencionesBASE_CALCULO: TFloatField;
    QLiqRetencionesALICUOTA: TFloatField;
    QLiqRetencionesRETENCION: TFloatField;
    QLiqRetencionesSUMA: TIntegerField;
    QLiqDeduccionesDETALLE: TStringField;
    QLiqDeduccionesCOD_ALICUOTA: TIntegerField;
    CDSLiqDeduccionesDETALLE: TStringField;
    CDSLiqDeduccionesCOD_ALICUOTA: TIntegerField;
    CDSLiqDeduccionesMUESTRAIVA: TFloatField;
    procedure CDSLiqCabNewRecord(DataSet: TDataSet);
    procedure CDSLiqDeduccionesNewRecord(DataSet: TDataSet);
    procedure CDSLiqRetencionesNewRecord(DataSet: TDataSet);
    procedure CDSLiqCabSUCURSALSetText(Sender: TField; const Text: string);
    procedure CDSLiqCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: string);
    procedure CDSLiqCabNUMEROFACSetText(Sender: TField; const Text: string);
    procedure CDSLiqCabSUCFACSetText(Sender: TField; const Text: string);
    procedure CDSLiqCabCODIGOSetText(Sender: TField; const Text: string);
    procedure CDSLiqDeduccionesBASE_CALCULOSetText(Sender: TField;
      const Text: string);
    procedure CDSLiqDeduccionesALICUOTASetText(Sender: TField;
      const Text: string);
    procedure CDSLiqCabOPERACION_ALICUOTASetText(Sender: TField;
      const Text: string);
    procedure CDSLiqCabOPERACION_SUBTOTChange(Sender: TField);
    procedure CDSLiqCabOPERACION_PRECIOKGSetText(Sender: TField;
      const Text: string);
    procedure CDSLiqRetencionesALICUOTASetText(Sender: TField;
      const Text: string);
    procedure CDSLiqCabOPERACION_CANTIDADSetText(Sender: TField;
      const Text: string);
    procedure CDSLiqDeduccionesIMPORTE_IVASetText(Sender: TField;
      const Text: string);
    procedure CDSLiqCabOPERACION_OPER_CIVAChange(Sender: TField);
    procedure CDSLiqRetencionesBeforePost(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSLiqDeduccionesAfterPost(DataSet: TDataSet);
    procedure CDSLiqRetencionesAfterPost(DataSet: TDataSet);
    procedure QLiq_TActividadBeforeInsert(DataSet: TDataSet);
    procedure QLiq_TActividadNewRecord(DataSet: TDataSet);
    procedure QLiq_TActividadAfterPost(DataSet: TDataSet);
    procedure QLiq_PuertosNewRecord(DataSet: TDataSet);
    procedure QLiq_PuertosBeforeInsert(DataSet: TDataSet);
    procedure QLiq_TGranosBeforeInsert(DataSet: TDataSet);
    procedure QLiq_TGranosNewRecord(DataSet: TDataSet);
    procedure QLiq_PuertosAfterPost(DataSet: TDataSet);
    procedure QLiq_TGranosAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Aux:Integer;
    FUNCTION AsignarCliente(Dato: STRING): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;

  end;

var
  DatosLiqGranos: TDatosLiqGranos;

implementation

uses UDMain_FD, DMBuscadoresForm,ULiqGranos;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

FUNCTION TDatosLiqGranos.AsignarCliente(Dato: STRING): Boolean;
Var Escape:Char;
d,m,a:word;
BEGIN
  Escape:=#27;
  WITH FormLiqGranos DO
    BEGIN
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value:=Dato;
      QClientes.Open;
      if QClientesCODIGO.AsString<>'' then
        begin
          CDSLiqCabNOMBRE.AsString     := QClientesNOMBRE.AsString;
          CDSLiqCabRAZONSOCIAL.AsString:= QClientesRAZON_SOCIAL.ASString;
          CDSLiqCabCUIT.AsString       := QClientesNRO_DE_CUIT.AsString;// '00-00000000-0';

          CDSLiqCabDIRECCION.AsString  := QClientesDIRECCION_COMERCIAL.AsString;
          CDSLiqCabTIPOIVA.AsInteger   := QClientesCONDICION_IVA.Value;

          result:=True;
        end
      ELSE
        Result:=False;
    END;
END;


FUNCTION TDatosLiqGranos.AsignarComprobante(Dato: Integer): Boolean;
Var DateTem,desde1,desde2,Desde3,Desde4:TDateTime;
Escape:Char;
BEGIN
  Escape:=#27;
  QComprob.Close;
  QComprob.ParamByName('id').Value  := dato;
  QComprob.ParamByName('suc').Value := CDSLiqCabSUCURSAL.Value;
  QComprob.Open;

  IF NOT(QComprob.IsEmpty)  then
    begin
        BEGIN
          Result:=True;
          CDSLiqCabNUMEROFAC.Clear;
          CDSLiqCabSUCFAC.Clear;
          CDSLiqCabMUESTRACOMPROBANTE.Value  :=QComprobDENOMINACION.Value;
          CDSLiqCabLETRAFAC.Value            :=QComprobLETRA.Value;
          CDSLiqCabTIPOCPBTE.Value           :=QComprobTIPO_COMPROB.Value;
          CDSLiqCabCLASECPBTE.Value          :=QComprobCLASE_COMPROB.Value;
        END
    END;

END;

FUNCTION TDatosLiqGranos.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  QSucursal.Close;
  QSucursal.ParamByName('Codigo').Value:=dato;
  QSucursal.Open;
  IF NOT (QSucursal.IsEmpty) THEN
    BEGIN

      CDSLiqCabID_TIPOCOMPROBANTE.Clear;
      CDSLiqCabMUESTRACOMPROBANTE.Clear;
      CDSLiqCabCLASECPBTE.Clear;
      CDSLiqCabTIPOCPBTE.Clear;
      CDSLiqCabSUCFAC.Value   :='';
      CDSLiqCabNUMEROFAC.Value:='';

      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal = :suc and compra_venta = ''V'' and '+
                                                    '(tipo_comprob = ''LG'' ) order by sucursal , tipo_comprob ';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value := DatosLiqGranos.CDSLiqCabSucursal.Value;
      DMBuscadores.CDSBuscaComprob.Open;

      if DMBuscadores.CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSLiqCabID_TIPOCOMPROBANTESetText(CDSLiqCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
          if (FormLiqGranos.Visible=True) and  (FormLiqGranos.RxCCodigo.Visible=True) and ( FormLiqGranos.RxCCodigo.Enabled=True) then
            FormLiqGranos.RxCCodigo.SetFocus;
        end;
      DMBuscadores.CDSBuscaComprob.close;
      Result:=True;
      CDSLiqCabMuestraSucursal.Value:= QSucursalDetalle.Value;
      DMBuscadores.CDSBuscaComprob.Close;
    END
  ELSE
    Result:=False;
  QSucursal.Close;
END;

procedure TDatosLiqGranos.CDSLiqCabCODIGOSetText(Sender: TField;
  const Text: string);
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
          CDSLiqCabNOMBRE.Clear;
          FormLiqGranos.RxCCodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      FormLiqGranos.RxCCodigo.Text:=Aux;
    end;
end;

procedure TDatosLiqGranos.CDSLiqCabID_TIPOCOMPROBANTESetText(Sender: TField;
  const Text: string);
begin
 if (Text<>'') and (text[1]<>#13)  Then
  begin
    Sender.AsString:=Text;
    IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
      BEGIN
        Sender.AsString:= '';
        FormLiqGranos.RxCTipoCpbte.SetFocus;
      END;
    IF CDSLiqCab.State = dsInsert THEN
     FormLiqGranos.UltimoComprobante;
  end;
end;

procedure TDatosLiqGranos.CDSLiqCabNewRecord(DataSet: TDataSet);
begin
  CDSLiqCabID_LQ.AsInteger                 := ibgCab.IncrementFD(1);
  CDSLiqCabFECHA.AsDateTime                := Date;
  CDSLiqCabFECHAFISCAL.AsDateTime          := Date;
  CDSLiqCabFECHA_HORA.AsDateTime           := Now;
  CDSLiqCabTIPO_ACTIVIDAD.Value            := 1;
  CDSLiqCabTIPO_OPERACION.Value            := 1;
  CDSLiqCabINGRESA_A_CTACTE.Value          := 'S';
  CDSLiqCabINGRESA_LIBRO_IVA.Value         := 'S';
  CDSLiqCabMERCADERIA_FACTOR.Value         := 0;
  CDSLiqCabMERCADERIA_GRADO.Value          := '';
  CDSLiqCabMERCADERIA_CON_PROTEI.Value     := 0;
  CDSLiqCabMERCADERIA_PESO.Value           := 0;
  CDSLiqCabOPERACION_CANTIDAD.Value        := 0;
  CDSLiqCabOPERACION_PRECIOKG.Value        := 0;
  CDSLiqCabOPERACION_SUBTOT.Value          := 0;
  CDSLiqCabOPERACION_ALICUOTA.Value        := 0;
  CDSLiqCabOPERACION_IMPO_IVA.Value        := 0;
  CDSLiqCabOPERACION_OPER_CIVA.Value       := 0;
  CDSLiqCabOPERACION_COD_ALICUOTAIVA.Value := 1;
  CDSLiqCabCONDICION_PRECIO_TN.Value       := 0;
  CDSLiqCabCONDICION_GRADO.AsString        := 'G1';
  CDSLiqCabCONDICION_GRANO.Value           := 1;
  CDSLiqCabCONDICION_FLETE.Value           := 0;
  CDSLiqCabCONDICION_PUERTO.Value          := 0;
  CDSLiqCabTOTAL_OPERACION.Value           := 0;
  CDSLiqCabTOTAL_RET_AFIP.Value            := 0;
  CDSLiqCabTOTAL_PERCEPCIONES.Value        := 0;
  CDSLiqCabTOTAL_OTRAS_RETENCIONES.Value   := 0;
  CDSLiqCabTOTAL_DEDUCIONES.Value          := 0;
  CDSLiqCabNETO_A_PAGAR.Value              := 0;
  CDSLiqCabIVARG2300.Value                 := 0;
  CDSLiqCabPAGO_SEGUN_COND.Value           := 0;
  CDSLiqCabUSUARIO.Value                   := DMMain_FD.UsuarioActivo;

  CDSLiqCabSUCURSALSetText(CDSLiqCabSUCURSAL,IntToStr(FormLiqGranos.SucursalPorDefecto));
end;

procedure TDatosLiqGranos.CDSLiqCabNUMEROFACSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Copy('00000000', 1, Sender.Size - Length(Text)) + Text;
end;

procedure TDatosLiqGranos.CDSLiqCabOPERACION_ALICUOTASetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSLiqCabOPERACION_IMPO_IVA.AsFloat := Sender.AsFloat*CDSLiqCabOPERACION_SUBTOT.AsFloat*0.01;
  CDSLiqCabOPERACION_OPER_CIVA.AsFloat:= CDSLiqCabOPERACION_SUBTOT.AsFloat + CDSLiqCabOPERACION_IMPO_IVA.AsFloat;
  CDSLiqCabIVARG2300.Value            := CDSLiqCabOPERACION_IMPO_IVA.AsFloat;
end;

procedure TDatosLiqGranos.CDSLiqCabOPERACION_CANTIDADSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSLiqCabOPERACION_SUBTOT.AsFloat  := (CDSLiqCabCONDICION_PRECIO_TN.AsFloat/1000) * Sender.AsFloat;
  CDSLiqCabOPERACION_PRECIOKG.AsFloat:= CDSLiqCabCONDICION_PRECIO_TN.AsFloat/1000;
end;

procedure TDatosLiqGranos.CDSLiqCabOPERACION_OPER_CIVAChange(Sender: TField);
begin
  CDSLiqCabTOTAL_OPERACION.AsFloat:=CDSLiqCabOPERACION_OPER_CIVA.AsFloat;
end;

procedure TDatosLiqGranos.CDSLiqCabOPERACION_PRECIOKGSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSLiqCabOPERACION_SUBTOT.AsFloat:=CDSLiqCabOPERACION_CANTIDAD.AsFloat*sENDER.AsFloat;
end;

procedure TDatosLiqGranos.CDSLiqCabOPERACION_SUBTOTChange(Sender: TField);
begin
  CDSLiqCabOPERACION_IMPO_IVA.AsFloat := CDSLiqCabOPERACION_ALICUOTA.AsFloat * CDSLiqCabOPERACION_SUBTOT.AsFloat*0.01;
  CDSLiqCabOPERACION_OPER_CIVA.AsFloat:=CDSLiqCabOPERACION_SUBTOT.AsFloat + CDSLiqCabOPERACION_IMPO_IVA.AsFloat;
end;

procedure TDatosLiqGranos.CDSLiqCabSUCFACSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Copy('00000000', 1, Sender.Size - Length(Text)) + Text;
end;

procedure TDatosLiqGranos.CDSLiqCabSUCURSALSetText(Sender: TField;
  const Text: string);
begin
  IF (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          FormLiqGranos.RxCSucursal.SetFocus;
        END
      ELSE IF CDSLiqCab.State = dsInsert THEN
       FormLiqGranos.UltimoComprobante;
    END;
end;

procedure TDatosLiqGranos.CDSLiqDeduccionesAfterPost(DataSet: TDataSet);
begin
  CDSLiqCabTOTAL_DEDUCIONES.AsFloat :=0;
  CDSLiqDeducciones.First;
  if CDSLiqDeducciones.RecordCount>1 then
    while CDSLiqDeducciones.Eof do
      begin
        CDSLiqCabTOTAL_DEDUCIONES.AsFloat:=CDSLiqCabTOTAL_DEDUCIONES.AsFloat + CDSLiqDeduccionesDEDUCIONES.AsFloat;
        CDSLiqDeducciones.Next;
      end
  else
    CDSLiqCabTOTAL_DEDUCIONES.AsFloat:=CDSLiqCabTOTAL_DEDUCIONES.AsFloat + CDSLiqDeduccionesDEDUCIONES.AsFloat;
  CDSLiqDeducciones.First;
  CDSLiqCabOPERACION_IMPO_IVA.Value:= CDSLiqCabIVARG2300.Value;
  CDSLiqCabNETO_A_PAGAR.Value   := CDSLiqCabTOTAL_OPERACION.Value-CDSLiqCabTOTAL_RET_AFIP.Value-CDSLiqCabTOTAL_OTRAS_RETENCIONES.Value;
  CDSLiqCabPAGO_SEGUN_COND.Value:=CDSLiqCabNETO_A_PAGAR.Value - CDSLiqCabIVARG2300.Value;

end;

procedure TDatosLiqGranos.CDSLiqDeduccionesALICUOTASetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  if Sender.AsFloat>0 then
    begin
      CDSLiqDeduccionesIMPORTE_IVA.Value  := CDSLiqDeduccionesBASE_CALCULO.AsFloat * Sender.AsFloat * 0.01;
      CDSLiqDeduccionesDEDUCIONES.AsFloat := Sender.AsFloat+CDSLiqDeduccionesIMPORTE_IVA.Value;
    end
  else
    begin
      CDSLiqDeduccionesIMPORTE_IVA.Value := 0;
      CDSLiqDeduccionesDEDUCIONES.AsFloat:= CDSLiqDeduccionesBASE_CALCULO.Value;
    end


end;

procedure TDatosLiqGranos.CDSLiqDeduccionesBASE_CALCULOSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSLiqDeduccionesIMPORTE_IVA.Value := Sender.AsFloat*CDSLiqDeduccionesALICUOTA.AsFloat * 0.01;
  if CDSLiqDeduccionesIMPORTE_IVA.Value>0 then
    CDSLiqDeduccionesDEDUCIONES.AsFloat:= Sender.AsFloat+CDSLiqDeduccionesIMPORTE_IVA.Value
  else
    CDSLiqDeduccionesDEDUCIONES.AsFloat:= Sender.AsFloat;

end;

procedure TDatosLiqGranos.CDSLiqDeduccionesIMPORTE_IVASetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString;
  CDSLiqRetencionesRETENCION.AsFloat:=CDSLiqRetencionesBASE_CALCULO.AsFloat + Sender.AsFloat;
end;

procedure TDatosLiqGranos.CDSLiqDeduccionesNewRecord(DataSet: TDataSet);
begin
  CDSLiqDeduccionesID.Value           := ibgDeduciones.IncrementFD(1);
  CDSLiqDeduccionesID_LIQ.Value       := CDSLiqCabID_LQ.Value;
  CDSLiqDeduccionesPORCENTAJE.Value   := 0;
  CDSLiqDeduccionesBASE_CALCULO.Value := 0;
  CDSLiqDeduccionesALICUOTA.Value     := 0;
  CDSLiqDeduccionesIMPORTE_IVA.Value  := 0;
  CDSLiqDeduccionesDEDUCIONES.Value   := 0;
  CDSLiqDeduccionesCOD_ALICUOTA.Value := 1;
  CDSLiqDeduccionesDETALLE.Value      := '';
end;

procedure TDatosLiqGranos.CDSLiqRetencionesAfterPost(DataSet: TDataSet);
begin
  CDSLiqCabTOTAL_RET_AFIP.AsFloat         :=0;
  CDSLiqCabTOTAL_OTRAS_RETENCIONES.AsFloat:=0;

  if CDSLiqRetenciones.RecordCount>1 then
    begin
      CDSLiqRetenciones.First;
      while Not(CDSLiqRetenciones.Eof) do
        begin
          if CDSLiqRetencionesSUMA.value=1 then  // Afip
            CDSLiqCabTOTAL_RET_AFIP.AsFloat         :=CDSLiqCabTOTAL_RET_AFIP.AsFloat+CDSLiqRetencionesRETENCION.AsFloat;
          if CDSLiqRetencionesSUMA.value<>1 then // Otras retenciones - Ingresos Brutoe
            CDSLiqCabTOTAL_OTRAS_RETENCIONES.AsFloat:=CDSLiqCabTOTAL_OTRAS_RETENCIONES.AsFloat+CDSLiqRetencionesRETENCION.AsFloat;

          CDSLiqRetenciones.Next;
        end;
    end
  else
    BEGIN
      if CDSLiqRetencionesSUMA.value=1 then
        CDSLiqCabTOTAL_RET_AFIP.AsFloat:=CDSLiqCabTOTAL_RET_AFIP.AsFloat+CDSLiqRetencionesRETENCION.AsFloat;
      if CDSLiqRetencionesSUMA.value<>1 then // Otras retenciones - Ingresos Brutoe
        CDSLiqCabTOTAL_OTRAS_RETENCIONES.AsFloat:=CDSLiqCabTOTAL_OTRAS_RETENCIONES.AsFloat+CDSLiqRetencionesRETENCION.AsFloat;
    END;
  CDSLiqRetenciones.First;
  CDSLiqCabOPERACION_IMPO_IVA.Value:= CDSLiqCabIVARG2300.Value;
  CDSLiqCabNETO_A_PAGAR.Value      := CDSLiqCabTOTAL_OPERACION.Value-CDSLiqCabTOTAL_RET_AFIP.Value-CDSLiqCabTOTAL_OTRAS_RETENCIONES.Value;
  CDSLiqCabPAGO_SEGUN_COND.Value   :=CDSLiqCabNETO_A_PAGAR.Value - CDSLiqCabIVARG2300.Value;
end;

procedure TDatosLiqGranos.CDSLiqRetencionesALICUOTASetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  if Sender.AsFloat>0 then
    CDSLiqRetencionesRETENCION.AsFloat:=CDSLiqRetencionesBASE_CALCULO.AsFloat*Sender.AsFloat*0.01
  else
    CDSLiqRetencionesRETENCION.AsFloat:=CDSLiqRetencionesBASE_CALCULO.AsFloat;
end;

procedure TDatosLiqGranos.CDSLiqRetencionesBeforePost(DataSet: TDataSet);
begin
  CDSLiqRetencionesSUMA.Value:=CDSLiqRetencionesMUESTRACONCPETO.LookupDataSet.FieldByName('SUMA').Value;

end;

procedure TDatosLiqGranos.CDSLiqRetencionesNewRecord(DataSet: TDataSet);
begin
  CDSLiqRetencionesID.Value             := ibgRetenciones.IncrementFD(1);
  CDSLiqRetencionesID_LIQ.Value         := CDSLiqCabID_LQ.Value;
  CDSLiqRetencionesIMP_CERT_RET.AsFloat := 0;
  CDSLiqRetencionesBASE_CALCULO.AsFloat := 0;
  CDSLiqRetencionesRETENCION.AsFloat    := 0;
  CDSLiqRetencionesALICUOTA.AsFloat     := 0;
  CDSLiqRetencionesDETALLE.AsString     := '';
end;

procedure TDatosLiqGranos.DataModuleDestroy(Sender: TObject);
begin
  DatosLiqGranos:=NIL;
end;

procedure TDatosLiqGranos.QLiq_PuertosAfterPost(DataSet: TDataSet);
begin
  QLiq_Puertos.ApplyUpdates(0);
end;

procedure TDatosLiqGranos.QLiq_PuertosBeforeInsert(DataSet: TDataSet);
var QCodigo:TFDQuery;
begin
  QCodigo:=TFDQuery.Create(Self);
  QCodigo.Connection:=DMMain_FD.fdcGestion;
  QCodigo.Open('select max(codigo) from LIQGRANOS_Puertos');
  Aux:=QCodigo.Fields[0].Value+1;
end;

procedure TDatosLiqGranos.QLiq_PuertosNewRecord(DataSet: TDataSet);
begin
  QLiq_PuertosCODIGO.Value:=Aux;
end;

procedure TDatosLiqGranos.QLiq_TActividadAfterPost(DataSet: TDataSet);
begin
  QLiq_TActividad.ApplyUpdates(0);
end;

procedure TDatosLiqGranos.QLiq_TActividadBeforeInsert(DataSet: TDataSet);
var QCodigo:TFDQuery;
begin
  QCodigo:=TFDQuery.Create(Self);
  QCodigo.Connection:=DMMain_FD.fdcGestion;
  QCodigo.Open('select max(codigo) from LIQGRANOS_TIPOACTIVIDAD');
  Aux:=QCodigo.Fields[0].Value+1;
end;

procedure TDatosLiqGranos.QLiq_TActividadNewRecord(DataSet: TDataSet);
begin
  QLiq_TActividadCODIGO.Value:=Aux;
end;

procedure TDatosLiqGranos.QLiq_TGranosAfterPost(DataSet: TDataSet);
begin
  QLiq_TGranos.ApplyUpdates(0);
end;

procedure TDatosLiqGranos.QLiq_TGranosBeforeInsert(DataSet: TDataSet);
var QCodigo:TFDQuery;
begin
  QCodigo:=TFDQuery.Create(Self);
  QCodigo.Connection:=DMMain_FD.fdcGestion;
  QCodigo.Open('select max(id) from LIQGRANOS_tipograno');
  Aux:=QCodigo.Fields[0].Value+1;
end;


procedure TDatosLiqGranos.QLiq_TGranosNewRecord(DataSet: TDataSet);
begin
  QLiq_TGranosID.Value:=Aux;
end;

end.
