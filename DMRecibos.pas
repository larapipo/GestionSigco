UNIT DMRecibos;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, Provider,Librerias,
  IBGenerator, FMTBcd, SqlExpr,Math,Variants, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,System.StrUtils;

TYPE
  TDatosRecibos = CLASS(TDataModule)
    DSPRecibo: TDataSetProvider;
    DSPClientes: TDataSetProvider;
    DSPSucrusal: TDataSetProvider;
    DSPMovAplicaCCVta: TDataSetProvider;
    DSPMovCCVta: TDataSetProvider;
    IBGId_recibo: TIBGenerator;
    IBGId_AplicacionCCVta: TIBGenerator;
    IBGId_Retenciones: TIBGenerator;
    DSPEmpresa: TDataSetProvider;
    DSPRetenciones: TDataSetProvider;
    DSRetenciones: TDataSource;
    DSJur_Reg: TDataSource;
    DSPMovACta: TDataSetProvider;
    CDSMovACta: TClientDataSet;
    DSMovACta: TDataSource;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalVENDEDOR: TStringField;
    CDSPersonalCOBRADOR: TStringField;
    DSPBuscaCobrador: TDataSetProvider;
    CDSBuscaCobrador: TClientDataSet;
    CDSBuscaCobradorCODIGO: TStringField;
    CDSBuscaCobradorNOMBRE: TStringField;
    CDSRecibo: TClientDataSet;
    CDSReciboID_RC: TIntegerField;
    CDSReciboTIPOCPBTE: TStringField;
    CDSReciboCLASECPBTE: TStringField;
    CDSReciboNROCPBTE: TStringField;
    CDSReciboCODIGO: TStringField;
    CDSReciboLETRARC: TStringField;
    CDSReciboSUCRC: TStringField;
    CDSReciboNUMERORC: TStringField;
    CDSReciboNOMBRE: TStringField;
    CDSReciboRAZONSOCIAL: TStringField;
    CDSReciboDIRECCION: TStringField;
    CDSReciboCPOSTAL: TStringField;
    CDSReciboLOCALIDAD: TStringField;
    CDSReciboTIPOIVA: TIntegerField;
    CDSReciboCUIT: TStringField;
    CDSReciboFECHA: TSQLTimeStampField;
    CDSReciboANULADO: TStringField;
    CDSReciboVENDEDOR: TStringField;
    CDSReciboSALDO_APLICAR: TFloatField;
    CDSReciboIMPRESO: TStringField;
    CDSReciboOBSERVACION1: TStringField;
    CDSReciboOBSERVACION2: TStringField;
    CDSReciboSUCURSAL: TIntegerField;
    CDSReciboZONA: TIntegerField;
    CDSReciboTOTAL_NETO: TFloatField;
    CDSReciboPORCENTAJE_DSCTO: TFloatField;
    CDSReciboIMPORTE_DSCTO: TFloatField;
    CDSReciboTOTAL: TFloatField;
    CDSReciboUSUARIO: TStringField;
    CDSReciboFECHA_HORA: TSQLTimeStampField;
    CDSReciboCPBTE_MANUAL: TStringField;
    CDSReciboNC_ID: TIntegerField;
    CDSReciboNC_TIPOCPBTE: TStringField;
    CDSReciboNC_CLASECPBTE: TStringField;
    CDSReciboNC_NROCOMPROB: TStringField;
    CDSReciboN_OPERACION2: TFloatField;
    CDSReciboMUESTRASUCURSAL: TStringField;
    CDSReciboMUESTRACOMPROBANTE: TStringField;
    CDSReciboID_TIPOCOMPROBANTE: TIntegerField;
    CDSReciboMUESTRAVENDEDOR: TStringField;
    CDSReciboMUESTRAIVA: TStringField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSClientes: TClientDataSet;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesCPOSTAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesNRO_DE_CUIT: TStringField;
    CDSClientesCONDICION_IVA: TIntegerField;
    CDSClientesZONA: TIntegerField;
    CDSClientesSUCURSAL: TIntegerField;
    CDSClientesVENDEDOR: TStringField;
    CDSClientesCOBRADOR: TStringField;
    CDSEmpresa: TClientDataSet;
    CDSEmpresaNombre: TStringField;
    CDSEmpresaActividad: TStringField;
    CDSEmpresaDireccion: TStringField;
    CDSEmpresaLocalidad: TStringField;
    CDSEmpresaCorreo: TStringField;
    CDSEmpresaTelefono1: TStringField;
    CDSEmpresaTelefono2: TStringField;
    CDSEmpresaLogo: TGraphicField;
    CDSEmpresaCuit: TStringField;
    CDSMovAplicaCCVta: TClientDataSet;
    DSMovAplicaCCVta: TDataSource;
    CDSMovAplicaCCVtaID_MOV: TIntegerField;
    CDSMovAplicaCCVtaID_MOVCCVTA: TIntegerField;
    CDSMovAplicaCCVtaFECHA: TSQLTimeStampField;
    CDSMovAplicaCCVtaCLIENTE: TStringField;
    CDSMovAplicaCCVtaID_CPBTE: TIntegerField;
    CDSMovAplicaCCVtaTIPOCPBTE: TStringField;
    CDSMovAplicaCCVtaCLASECPBTE: TStringField;
    CDSMovAplicaCCVtaNUMEROCPBTE: TStringField;
    CDSMovAplicaCCVtaIMPORTE: TFloatField;
    CDSMovAplicaCCVtaAPLICA_ID_CPBTE: TIntegerField;
    CDSMovAplicaCCVtaAPLICA_TIPOCPBTE: TStringField;
    CDSMovAplicaCCVtaAPLICA_CLASECPBTE: TStringField;
    CDSMovAplicaCCVtaAPLICA_NROCPBTE: TStringField;
    CDSMovAplicaCCVtaDETALLE: TStringField;
    CDSMovAplicaCCVtaCONCILIADO: TStringField;
    CDSMovAplicaCCVtaMUESTRAFECHACPBTE: TSQLTimeStampField;
    CDSMovAplicaCCVtaMUESTRATOTALFC: TFloatField;
    CDSMovCCVta: TClientDataSet;
    DSMovCCVta: TDataSource;
    CDSMovCCVtaID_MOVCCVTA: TIntegerField;
    CDSMovCCVtaID_CPBTE: TIntegerField;
    CDSMovCCVtaCLIENTE: TStringField;
    CDSMovCCVtaFECHAVTA: TSQLTimeStampField;
    CDSMovCCVtaFECHAVTO: TSQLTimeStampField;
    CDSMovCCVtaTIPOCPBTE: TStringField;
    CDSMovCCVtaCLASECPBTE: TStringField;
    CDSMovCCVtaNROCPBTE: TStringField;
    CDSMovCCVtaDEBE: TFloatField;
    CDSMovCCVtaHABER: TFloatField;
    CDSMovCCVtaSALDO: TFloatField;
    CDSMovCCVtaDETALLE: TStringField;
    CDSMovCCVtaMUESTRAAPAGAR: TFloatField;
    QGrupoCpbte: TFDQuery;
    QGrupoCpbteID_GRUPO: TIntegerField;
    QCheUsado: TFDQuery;
    QRetenciones: TFDQuery;
    QRetencionesID_MOV_RETENCIONES: TIntegerField;
    QRetencionesID_RETENCION: TIntegerField;
    QRetencionesDETALLE: TStringField;
    QRetencionesTIPOCPBTE: TStringField;
    QRetencionesCLASECPBTE: TStringField;
    QRetencionesNROCPBTE: TStringField;
    QRetencionesID_CPBTE: TIntegerField;
    QRetencionesFECHA: TSQLTimeStampField;
    QRetencionesFECHA_RETENCION: TSQLTimeStampField;
    QRetencionesNRO_RETENCION: TStringField;
    QRetencionesIMPORTE: TFloatField;
    QRetencionesCODIGO_CLIENTE: TStringField;
    QRetencionesCUIT_CLIENTE: TStringField;
    QRetencionesJURIDICCION: TIntegerField;
    QRetencionesNOMBRE_CLIENTE: TStringField;
    CDSRetenciones: TClientDataSet;
    CDSRetencionesID_RETENCION: TIntegerField;
    CDSRetencionesID_MOV_RETENCIONES: TIntegerField;
    CDSRetencionesDETALLE: TStringField;
    CDSRetencionesTIPOCPBTE: TStringField;
    CDSRetencionesCLASECPBTE: TStringField;
    CDSRetencionesNROCPBTE: TStringField;
    CDSRetencionesID_CPBTE: TIntegerField;
    CDSRetencionesFECHA: TSQLTimeStampField;
    CDSRetencionesNRO_RETENCION: TStringField;
    CDSRetencionesIMPORTE: TFloatField;
    CDSRetencionesCODIGO_CLIENTE: TStringField;
    CDSRetencionesCUIT_CLIENTE: TStringField;
    CDSRetencionesJURIDICCION: TIntegerField;
    CDSRetencionesNOMBRE_CLIENTE: TStringField;
    QMovACta: TFDQuery;
    QMovACtaID_MOV: TIntegerField;
    QMovACtaFECHA: TSQLTimeStampField;
    QMovACtaCLIENTE: TStringField;
    QMovACtaID_CPBTE: TIntegerField;
    QMovACtaTIPOCPBTE: TStringField;
    QMovACtaCLASECPBTE: TStringField;
    QMovACtaNUMEROCPBTE: TStringField;
    QMovACtaIMPORTE: TFloatField;
    QMovACtaDETALLE: TStringField;
    CDSMovACtaID_MOV: TIntegerField;
    CDSMovACtaFECHA: TSQLTimeStampField;
    CDSMovACtaCLIENTE: TStringField;
    CDSMovACtaID_CPBTE: TIntegerField;
    CDSMovACtaTIPOCPBTE: TStringField;
    CDSMovACtaCLASECPBTE: TStringField;
    CDSMovACtaNUMEROCPBTE: TStringField;
    CDSMovACtaIMPORTE: TFloatField;
    CDSMovACtaDETALLE: TStringField;
    QVerificaValoresTransferidos: TFDQuery;
    spCalcular_Porcentaje_: TFDStoredProc;
    CDSTRetencion: TClientDataSet;
    DSPTRetencion: TDataSetProvider;
    CDSTRetencionID_RETENCION: TIntegerField;
    CDSTRetencionDETALLE: TStringField;
    CDSTRetencionTIPO: TSmallintField;
    CDSRetencionesFECHA_RETENCION: TSQLTimeStampField;
    CDSBuscaTRetencion: TClientDataSet;
    DSPBuscaTRetencion: TDataSetProvider;
    CDSBuscaTRetencionID_RETENCION: TIntegerField;
    CDSBuscaTRetencionDETALLE: TStringField;
    CDSImpuestosFac: TClientDataSet;
    DSPImpuestosFac: TDataSetProvider;
    QImpuestosFac: TFDQuery;
    CDSImpuestosFacID_IMPUESTO: TIntegerField;
    CDSImpuestosFacID_FCVTACAB: TIntegerField;
    CDSImpuestosFacCODIGO_GRAVAMEN: TIntegerField;
    CDSImpuestosFacDETALLE: TStringField;
    CDSImpuestosFacNETO: TFloatField;
    CDSImpuestosFacTASA: TFloatField;
    CDSImpuestosFacIMPORTE: TFloatField;
    CDSDetallesNC: TClientDataSet;
    DSPDetalleNC: TDataSetProvider;
    QDetallesNc: TFDQuery;
    QDetallesNcID: TIntegerField;
    QDetallesNcCODIGO: TStringField;
    QDetallesNcDETALLE: TStringField;
    CDSDetallesNCID: TIntegerField;
    CDSDetallesNCCODIGO: TStringField;
    CDSDetallesNCDETALLE: TStringField;
    QBorrarNc: TFDQuery;
    DSPInscripcion: TDataSetProvider;
    CDSInscripcion: TClientDataSet;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    CDSReciboNUMERO_OPERACION: TStringField;
    CDSReciboNRO_RECIBO_INTERMO: TIntegerField;
    CDSReciboID_REC_CUPON: TIntegerField;
    CDSClientesID_RECIBOPORDEFECTO: TIntegerField;
    CDSReciboIMPORTE_RECARGO: TFloatField;
    CDSMovAplicaCCVtaMUESTRAMORA: TIntegerField;
    CDSEmpresaPUNITORIOS: TFloatField;
    CDSMovCCVtaMUESTRAMORA: TIntegerField;
    CDSMovCCVtaMUESTRAPUNITORIO: TFloatField;
    CDSReciboLOTE_COBRO_TC: TStringField;
    CDSMovCCVtaNRO_CUOTA: TIntegerField;
    CDSMovCCVtaSELECCION: TBooleanField;
    CDSClientesACTIVO: TStringField;
    CDSReciboMUESTRANCREDITO: TStringField;
    CDSMovCCVtaMUESTRAGRUPO: TIntegerField;
    CDSMovCCVtaMUESTRATOTAL: TFloatField;
    CDSMovCCVtaMUESTRATIPOVTA: TStringField;
    CDSRetencionesMUESTRAJURIDICCION: TStringField;
    QJur_Reg: TFDQuery;
    DSPJur_Reg: TDataSetProvider;
    CDSJur_Reg: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    CDSClientesCODIGO_COORPORATIVO: TStringField;
    CDSClientesMUESTRACOBRADOR: TStringField;
    CDSClientesTIPOABONO: TStringField;
    CDSClientesCHEQUES: TStringField;
    CDSReciboMUESTRACHEQUES: TStringField;
    QBuscaTRetencion: TFDQuery;
    QCaja_Estado: TFDQuery;
    QCalcular_PorcentajeFD: TFDQuery;
    QCaja_EstadoESTADO: TIntegerField;
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
    QComprobDEFECTO: TStringField;
    QComprobCAJA_DEFECTO: TIntegerField;
    QComprobCOMPRA_VENTA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QComprobIMPRIME: TStringField;
    QFacturaFD: TFDQuery;
    QFacturaFDNETOEXEN2: TFloatField;
    QNDPorDefecto: TFDQuery;
    QNDPorDefectoID_NOTADEBITOPORDEFECTO: TIntegerField;
    QNDPorDefectoDENOMINACION: TStringField;
    QNDPorDefectoCLASE_COMPROB: TStringField;
    QNDPorDefectoTIPO_COMPROB: TStringField;
    QNDPorDefectoSUCURSAL: TIntegerField;
    QNCPorDefecto: TFDQuery;
    QNCPorDefectoID_NOTACREDITOPORDEFECTO: TIntegerField;
    QNCPorDefectoDENOMINACION: TStringField;
    QNCPorDefectoCLASE_COMPROB: TStringField;
    QNCPorDefectoTIPO_COMPROB: TStringField;
    QNCPorDefectoSUCURSAL: TIntegerField;
    QTipoFcCab: TFDQuery;
    QTipoFcCabTIPO_VTA: TStringField;
    CDSPersonalCOMISION: TFloatField;
    CDSEmpresaPROVINCIA: TIntegerField;
    CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    CDSEmpresaCOD_ACTIVIDAD: TStringField;
    CDSEmpresaNOMBRE_FANTASIA: TStringField;
    QEmpresa: TFDQuery;
    QEmpresaNOMBRE: TStringField;
    QEmpresaACTIVIDAD: TStringField;
    QEmpresaDIRECCION: TStringField;
    QEmpresaLOCALIDAD: TStringField;
    QEmpresaCORREO: TStringField;
    QEmpresaTELEFONO1: TStringField;
    QEmpresaTELEFONO2: TStringField;
    QEmpresaCUIT: TStringField;
    QEmpresaCONDICIONIVA: TStringField;
    QEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    QEmpresaLOGO: TBlobField;
    QEmpresaCPOSTAL: TStringField;
    QEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    QEmpresaAG_RET_GANANCIA: TStringField;
    QEmpresaAG_RET_ING_BRUTOS: TStringField;
    QEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    QEmpresaTASA_PERCEPCION_IB: TFloatField;
    QEmpresaMINO_IMP_PERCEP_IB: TFloatField;
    QEmpresaPROVINCIA: TIntegerField;
    QEmpresaTASA_RET_IIBB: TFloatField;
    QEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    QEmpresaPUNITORIOS: TFloatField;
    QEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    QEmpresaNRO_RENSPA: TStringField;
    QEmpresaNRO_RUCA: TIntegerField;
    QEmpresaCUIT_AUTORIZADO: TStringField;
    QEmpresaNOMBRE_AUTORIZADO: TStringField;
    QEmpresaCBU: TStringField;
    QEmpresaID_CPOSTAL: TIntegerField;
    QEmpresaCOD_ACTIVIDAD: TStringField;
    QEmpresaNOMBRE_FANTASIA: TStringField;
    QRcTemp: TFDQuery;
    QRcTempDet: TFDQuery;
    CDSRcTem: TClientDataSet;
    CDSRcTempDet: TClientDataSet;
    DSPRcTemp: TDataSetProvider;
    DSPRcTempDet: TDataSetProvider;
    QRcTempID: TIntegerField;
    QRcTempCLIENTE: TStringField;
    QRcTempNOMBRE: TStringField;
    QRcTempFECHAPAGO: TSQLTimeStampField;
    QRcTempIMPORTE: TFloatField;
    QRcTempDetID: TIntegerField;
    QRcTempDetID_DET: TIntegerField;
    QRcTempDetCLIENTE: TStringField;
    QRcTempDetID_TPAGO: TIntegerField;
    QRcTempDetID_FPAGO: TIntegerField;
    QRcTempDetFECHAPAGO: TSQLTimeStampField;
    QRcTempDetFECHAEMISION: TSQLTimeStampField;
    QRcTempDetFECHACOBRO: TSQLTimeStampField;
    QRcTempDetID_BANCO: TIntegerField;
    QRcTempDetNUMERO: TIntegerField;
    QRcTempDetIMPORTE: TFloatField;
    CDSRcTempDetID: TIntegerField;
    CDSRcTempDetID_DET: TIntegerField;
    CDSRcTempDetCLIENTE: TStringField;
    CDSRcTempDetID_TPAGO: TIntegerField;
    CDSRcTempDetID_FPAGO: TIntegerField;
    CDSRcTempDetFECHAPAGO: TSQLTimeStampField;
    CDSRcTempDetFECHAEMISION: TSQLTimeStampField;
    CDSRcTempDetFECHACOBRO: TSQLTimeStampField;
    CDSRcTempDetID_BANCO: TIntegerField;
    CDSRcTempDetNUMERO: TIntegerField;
    CDSRcTempDetIMPORTE: TFloatField;
    CDSRcTemID: TIntegerField;
    CDSRcTemCLIENTE: TStringField;
    CDSRcTemNOMBRE: TStringField;
    CDSRcTemFECHAPAGO: TSQLTimeStampField;
    CDSRcTemIMPORTE: TFloatField;
    CDSReciboID_OBRA: TIntegerField;
    CDSReciboMUESTRAOBRA: TStringField;
    CDSReciboMONEDA_ALTERNATIVA: TIntegerField;
    CDSReciboCOTIZACION: TFloatField;
    CDSReciboMUESTRASIGNOMONEDA: TStringField;
    DSLstMonedas: TDataSource;
    QLstMonedas: TFDQuery;
    QLstMonedasID: TIntegerField;
    QLstMonedasMONEDA: TStringField;
    QLstMonedasCOTIZACION: TFloatField;
    QLstMonedasSIGNO: TStringField;
    QLstMonedasORDEN: TSmallintField;
    QLstMonedasCOTIZACION_COMPRA: TFloatField;
    DSPLstMonedas: TDataSetProvider;
    CDSLstMonedas: TClientDataSet;
    CDSLstMonedasID: TIntegerField;
    CDSLstMonedasMONEDA: TStringField;
    CDSLstMonedasCOTIZACION: TFloatField;
    CDSLstMonedasSIGNO: TStringField;
    CDSLstMonedasORDEN: TSmallintField;
    CDSLstMonedasCOTIZACION_COMPRA: TFloatField;
    QAPlicacionNC: TFDQuery;
    DSAplicacionNC: TDataSource;
    QAPlicacionNCID_MOV: TIntegerField;
    QAPlicacionNCAPLICA_TIPOCPBTE: TStringField;
    QAPlicacionNCAPLICA_CLASECPBTE: TStringField;
    QAPlicacionNCAPLICA_NROCPBTE: TStringField;
    QAPlicacionNCDETALLE: TStringField;
    QAPlicacionNCIMPORTE: TFloatField;
    CDSReciboMUESTANCIMPORTE: TFloatField;
    PROCEDURE CDSReciboCODIGOSetText(Sender: TField; CONST Text: STRING);
    PROCEDURE CDSReciboSUCURSALSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSReciboNUMERORCSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSReciboNewRecord(DataSet: TDataSet);
    PROCEDURE CDSMovAplicaCCVtaAfterPost(DataSet: TDataSet);
    PROCEDURE CDSMovAplicaCCVtaBeforeDelete(DataSet: TDataSet);
    PROCEDURE CDSMovAplicaCCVtaAfterDelete(DataSet: TDataSet);
    PROCEDURE CDSMovAplicaCCVtaIMPORTESetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSReciboSUCRCSetText(Sender: TField; CONST Text: STRING);
    PROCEDURE CDSReciboTOTALSetText(Sender: TField; CONST Text: STRING);
    PROCEDURE CDSReciboLETRARCSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSRetencionesID_RETENCIONSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSMovAplicaCCVtaNewRecord(DataSet: TDataSet);
    PROCEDURE CDSRetencionesNewRecord(DataSet: TDataSet);
    PROCEDURE CDSRetencionesAfterPost(DataSet: TDataSet);
    procedure CDSReciboID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSRetencionesFECHA_RETENCIONSetText(Sender: TField;
      const Text: String);
    procedure CDSRetencionesBeforePost(DataSet: TDataSet);
    procedure CDSReciboVENDEDORSetText(Sender: TField; const Text: string);
    procedure CDSRetencionesAfterDelete(DataSet: TDataSet);
    procedure CDSMovAplicaCCVtaBeforePost(DataSet: TDataSet);
    procedure CDSReciboPORCENTAJE_DSCTOSetText(Sender: TField;
      const Text: string);
    procedure CDSReciboIMPORTE_DSCTOSetText(Sender: TField;
      const Text: string);
    procedure CDSReciboTOTAL_NETOSetText(Sender: TField; const Text: string);
    procedure CDSMovCCVtaCalcFields(DataSet: TDataSet);
    procedure CDSMovCCVtaMUESTRAAPAGARSetText(Sender: TField;
      const Text: string);
    procedure CDSRetencionesMUESTRAJURIDICCIONChange(Sender: TField);
    procedure CDSReciboTOTALGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSReciboTOTAL_NETOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSReciboIMPORTE_DSCTOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    SumaAplicaciones: Extended;
    SumaRetenciones : Real;
    MascaraGral     : String;
    CodigoInUse     : String;
    TotalInUse      : Real;
    CorreoDestino   : String;
    FUNCTION AsignarCobrador(Dato: STRING): Boolean;
    FUNCTION AsignarCliente(Dato: STRING): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarRetencion(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;

    PROCEDURE CalcularAplicaciones;
    procedure SumarAplicaciones;
    PROCEDURE calcularRetenciones;

    PROCEDURE AplicaMascaraNumerica;

    { Public declarations }
  END;
{$D+}
VAR
  DatosRecibos: TDatosRecibos;

IMPLEMENTATION

USES URecibo_2, DMBuscadoresForm, USumaAplicacionesRc,
     UDMain_FD, ULstChequesBCRA, UClientModuleBCRA, UMuestraUltimoNroCpbte;

{$R *.DFM}




FUNCTION TDatosRecibos.AsignarCobrador(Dato: STRING): Boolean;
begin
  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('Codigo').Value:=Dato;
  CDSPersonal.Open;
  IF (NOT (CDSPersonal.IsEmpty)) and (CDSPersonalCOBRADOR.Value='S') THEN
    BEGIN
      Result:=True;
      CDSReciboMUESTRAVENDEDOR.Value:=CDSPersonalNOMBRE.Value;
    END
  ELSE
    begin
      Result:=False;
      CDSReciboMUESTRAVENDEDOR.Clear;
    end;
  CDSPersonal.Close;
end;

FUNCTION TDatosRecibos.AsignarCliente(Dato: STRING): Boolean;
var Continua:Boolean;
VCuit:String;
BEGIN
  Continua:=True;
  CDSClientes.Close;
  CDSClientes.Params.ParamByName('Codigo').Value := Dato;
  CDSClientes.Open;

  if CDSClientesCODIGO.AsString<>'' then
    begin
      if Trim(CDSClientesCODIGO_COORPORATIVO.AsString)<>'' then
        begin
          Continua:=False;
          ShowMessage('Esta cuenta este en un grupo de una cta coorporativa,'+#13+
                      'el Codigo de esa Cta es '+ CDSClientesCODIGO_COORPORATIVO.AsString+#13+
                      'Dirigir los pagos a esa cta...');
        end;

      if (NOT (CDSClientes.Eof)) and (CDSClientesACTIVO.Value<>'S') and
          ((TForm(Self.Owner)).Owner.Name<>'FormImportarMercadoPago') then
        if MessageDlg('Cliente en Condicion No Activo... Continua..?..',mtConfirmation,mbYesNo,0,mbyes)=mrNo Then
          begin
            Continua:=False;
            FormRecibo_2.BuscarPendientes.Execute;
          end;

      IF ((CDSClientesCODIGO.AsString<>'') and (Continua=True)) THEN
        BEGIN
          VCuit:=CDSClientesNRO_DE_CUIT.Value;
          while Pos('-',VCuit)<>0 do
            delete(VCuit,Pos('-',VCuit),1);

          if DMMain_FD.GetUsaBCRA and ((TForm(Self.Owner)).Owner.Name<>'FormImportarMercadoPago') and
                                  ((TForm(Self.Owner)).Owner.Name<>'FormCobranza_x_lote') and
                                  ((TForm(Self.Owner)).Owner.Name<>'FormReciboExpress') then
            begin
              if FormRecibo_2.VerificaCheRcBCRA   then
              if WebIng(('https://wswhomo.afip.gov.ar')) and WebIng((FormRecibo_2.URLBcra+':8080/datasnap/rest/TServerMethods/GetChequesBCRA'))  then
                begin
                  IF NOT (Assigned(CModuleBCRA)) THEN
                    CModuleBCRA := TCModuleBCRA.Create(Self);
                  CModuleBCRA.RESTClient.BaseURL := FormRecibo_2.URLBcra+':8080/datasnap/rest/TServerMethods/GetChequesBCRA';
                  try
                    CModuleBCRA.RESTRequest.Params.ParameterByName('cuit').Value := vCuit;
                    CModuleBCRA.RESTRequest.Execute;
                    if (CModuleBCRA.RESTRequest.Response.StatusCode=200) Then
                      begin
                        if CModuleBCRA.mtCheque.recordCount>0 then
                          begin
                            CModuleBCRA.mtCheque.First;
                            if (Trim(CModuleBCRA.mtCheque.FieldByName('NRO_CHEQUE').AsString)<>'')  Then
                              begin
                                if Not(Assigned(FormLstCheRechazados)) Then
                                  FormLstCheRechazados:=TFormLstCheRechazados.Create(Self);
                                FormLstCheRechazados.mtTabla := CModuleBCRA.mtCheque;
                                FormLstCheRechazados. ShowModal;
                              end;
                          end;
                      end
                    else
                    ShowMessage('Servidor de BCRA no disponible');// no se consulto
                  Except
                    ShowMessage('Fallo en Consulta de BCRA o No disponible');// no se consulto
                  end;
                end
              else
                ShowMessage('Sericio de BCRA no disponible');// no se consulto
            end;

          CDSReciboMUESTRACHEQUEs.AsString := CDSClientesCHEQUES.AsString;
          if CDSReciboMUESTRACHEQUEs.AsString[1]='N' then
            FormRecibo_2. FrameMovValoresIngreso1.tsChe3.TabVisible:=False
          else
            FormRecibo_2. FrameMovValoresIngreso1.tsChe3.TabVisible:=True;

          CDSReciboNOMBRE.AsString         := CDSClientesNombre.AsString;
          CDSReciboRAZONSOCIAL.AsString    := CDSClientesRazon_Social.ASString;
          CDSReciboCUIT.AsString           := CDSClientesNro_de_Cuit.AsString;
          CDSReciboDIRECCION.AsString      := CDSClientesDireccion_Comercial.AsString;
          CDSReciboTIPOIVA.AsInteger       := CDSClientesCondicion_Iva.AsInteger;
          CDSReciboCPOSTAL.AsString        := CDSClientesCPostal.AsString;
          CDSReciboLOCALIDAD.AsString      := CDSClientesLocalidad.AsString;
          CDSReciboZONA.AsInteger          := CDSClientesZona.AsInteger;
          if (Trim(CDSClientesID_RECIBOPORDEFECTO.AsString)<>'') then
            begin
              CDSReciboSUCURSALSetText(CDSReciboSUCURSAL,CDSClientesSUCURSAL.AsString);
              CDSReciboID_TIPOCOMPROBANTESetText(CDSReciboID_TIPOCOMPROBANTE,CDSClientesID_RECIBOPORDEFECTO.AsString);
            end;
          if CDSClientesCOBRADOR.AsString<>'' then
            CDSReciboVENDEDORSetText(CDSReciboVENDEDOR,CDSClientesCOBRADOR.Value);
          FormRecibo_2.BuscarPendientes.Execute;

          //wwCDSReciboSUCURSALSetText(wwCDSReciboSUCURSAL,wwCDSClientesSucursal.AsString);
          // Para tomar el ultimo numero de Comprobante
          Result := True;
        END
    end
  ELSE
    Result := False;
END;

FUNCTION TDatosRecibos.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      Result := True;
      CDSReciboMuestraSucursal.Value := CDSSucursalDetalle.Value;
      CDSReciboID_TIPOCOMPROBANTE.Clear;
      CDSReciboMUESTRACOMPROBANTE.Clear;
      CDSReciboSUCRC.Value   :='';
      CDSReciboNUMERORC.Value:='';

      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal=:suc and compra_venta= ''V'' and '+
                                                ' (tipo_comprob = ''RC'') ';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      DMBuscadores.CDSBuscaComprob.Open;

     if DMBuscadores.CDSBuscaComprob.RecordCount=1 Then
        begin
          DatosRecibos.CDSReciboID_TIPOCOMPROBANTESetText(DatosRecibos.CDSReciboID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
          if (FormRecibo_2.RxDBECodigo.Enabled) and (FormRecibo_2.RxDBECodigo.Visible) and (FormRecibo_2.Visible) then
            FormRecibo_2.RxDBECodigo.SetFocus;
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
                  DatosRecibos.CDSReciboID_TIPOCOMPROBANTESetText(DatosRecibos.CDSReciboID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
                  if FormRecibo_2.Visible=True then

                  FormRecibo_2.RxDBECodigo.SetFocus;
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
                      DatosRecibos.CDSReciboID_TIPOCOMPROBANTESetText(DatosRecibos.CDSReciboID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
                       if FormRecibo_2.Visible=True then
                      FormRecibo_2.RxDBECodigo.SetFocus;
                    end;
               end;
            end;
        end;
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.Filter:='';
      DMBuscadores.CDSBuscaComprob.Filtered:=False;
    END
  ELSE
    BEGIN
      Result := False;
      CDSReciboMuestraSucursal.Value := '';
    END;
   CDSSucursal.Close;
END;

FUNCTION TDatosRecibos.AsignarRetencion(Dato: Integer): Boolean;
BEGIN
//  CDSRegimen.Close;
//  CDSJuridicion.Close;

  CDSTRetencion.Close;
  CDSTRetencion.Params.ParamByName('Id').Value := dato;
  CDSTRetencion.Open;

  CDSJur_Reg.Close;
  IF NOT (CDSTRetencion.IsEmpty) THEN
    BEGIN
      Result := True;
      FormRecibo_2.dbgRetenciones.Columns[1].PickList.Clear;
      if DatosRecibos.CDSTRetencionTIPO.Value=1 Then // Retencion Iva
        begin
          DatosRecibos.CDSJur_Reg.CommandText:= 'select * from REGIMENRETENCIONIVA ';
          DatosRecibos.CDSJur_Reg.Open;
          DatosRecibos.CDSJur_Reg.First;
          while Not(DatosRecibos.CDSJur_Reg.Eof) do
            begin
              FormRecibo_2.dbgRetenciones.Columns[1].PickList.Add(DatosRecibos.CDSJur_Reg.FieldByName('codigo').AsString);
              DatosRecibos.CDSJur_Reg.Next;
            end;
        end
      else
        if DatosRecibos.CDSTRetencionTIPO.Value=2 Then  // Retencio IIBB
          begin
            DatosRecibos.CDSJur_Reg.CommandText:= 'select * from juridiccion ';
            DatosRecibos.CDSJur_Reg.Open;
            DatosRecibos.CDSJur_Reg.First;
            while Not(DatosRecibos.CDSJur_Reg.Eof) do
              begin
                FormRecibo_2.dbgRetenciones.Columns[1].PickList.Add(DatosRecibos.CDSJur_Reg.FieldByName('codigo').AsString);
                DatosRecibos.CDSJur_Reg.Next;
              end;
          end;
      DatosRecibos.CDSRetencionesDETALLE.Value := DatosRecibos.CDSTRetencionDETALLE.Value;
    END
  ELSE
    Result := False;
  CDSJur_Reg.Close;
END;

FUNCTION TDatosRecibos.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('Id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSReciboSUCURSAL.Value;
  QComprob.Open;

  FormRecibo_2.BuscarPendientes.Execute;

  IF NOT(QComprob.IsEmpty) and (DMMain_FD.Autoriza_Comprobante(dato)) THEN // verifico si esta autorizado
    BEGIN
      Result := True;
      FormRecibo_2.GrupoRec := -1;
      //*****************************************************************************
      // Seccion Nueva , asigna la caja segun el comprobante seleccionado  10/12/2012
      //*****************************************************************************
      if (TForm(Self.Owner)).Owner.Name <>'FormLecturaXML' then
        begin
          if (QComprobCAJA_DEFECTO.AsString<>'') and (QComprobCAJA_DEFECTO.Value>0) then
            FormRecibo_2.CajaPorDefecto:=QComprobCAJA_DEFECTO.Value
          else
            begin
              // estas lineas se agregan para el resumen de caja***********************
              if (TForm(Self.Owner)).Owner.Name<>'FormCajaResumen' then
                FormRecibo_2.CajaPorDefecto:=DMMain_FD.CajaSeleccionada;
            end;
        end;
      //*****************************************************************************
      //*****************************************************************************

      CDSReciboMUESTRACOMPROBANTE.Value   := QComprobDENOMINACION.Value;
      CDSReciboLETRARC.Value              := QComprobLETRA.Value;
      CDSReciboTIPOCPBTE.Value            := QComprobTIPO_COMPROB.Value;
      CDSReciboCLASECPBTE.Value           := QComprobCLASE_COMPROB.Value;
      CDSReciboCPBTE_MANUAL.Value         :='N';
      if QComprobNUMERARCION_PROPIA.Value='X' then
        CDSReciboCPBTE_MANUAL.Value :='S';
      FormRecibo_2.dbchkCPTE_MANUAL.Checked :=QComprobNUMERARCION_PROPIA.Value='X';
      // aca veo de que grupo de comprobantes es el recibo
      if DMMain_FD.HayFiltros then
        begin
          DMMain_FD.QGrupoCpbteVta.Close;
          DMMain_FD.QGrupoCpbteVta.ParamByName('id_comprobante').Value:=Dato;
          DMMain_FD.QGrupoCpbteVta.Open;
          if DMMain_FD.QGrupoCpbteVta.Fields[0].AsString<>'' then
            FormRecibo_2.GrupoRec:=DMMain_FD.QGrupoCpbteVta.Fields[0].Value
          else
            FormRecibo_2.GrupoRec := -1;
          DMMain_FD.QGrupoCpbteVta.Close;
        end;
    END
  ELSE
    BEGIN
      Result := False;
      CDSReciboMUESTRACOMPROBANTE.Value := '';
      CDSReciboLETRARC.Value            := '';
      CDSReciboTIPOCPBTE.Value          := '';
      CDSReciboCLASECPBTE.Value         := '';
    END;
  if ( Trim(CDSReciboCODIGO.Value)<>'') and ( Trim(CDSReciboNOMBRE.Value)<>'') then
    FormRecibo_2.BuscarPendientes.Execute;
  FormRecibo_2.lbGrupo.Caption:='Grupo('+intToStr(FormRecibo_2.GrupoRec)+')';
END;

PROCEDURE TDatosRecibos.CalcularAplicaciones;
var DiasMora:Integer;
DebitoParcial:Extended;
BEGIN
 DiasMora:=0; // Esta Variable la uso para acumular los dias de mora...
  if CDSRecibo.State=dsInsert then
    CDSReciboIMPORTE_RECARGO.AsFloat:=0;
  SumaAplicaciones := 0;
  IF CDSRecibo.State = dsBrowse THEN
   CDSRecibo.Edit;
  CDSReciboSALDO_APLICAR.Value := CDSReciboTOTAL.Value;
  CDSMovAplicaCCVta.DisableControls;
  CDSMovAplicaCCVta.First;
  WHILE NOT (CDSMovAplicaCCVta.Eof) DO
    BEGIN
      DebitoParcial                  := 0;
      SumaAplicaciones               := SumaAplicaciones + CDSMovAplicaCCVtaIMPORTE.AsFloat;
      CDSReciboSALDO_APLICAR.AsFloat := CDSReciboTOTAL.AsFloat - SumaAplicaciones;
      IF (Trunc(CDSReciboSALDO_APLICAR.AsFloat*1000) = 0 ) THEN
        CDSReciboSALDO_APLICAR.AsFloat := 0;
      DiasMora:=CDSMovAplicaCCVtaMUESTRAMORA.Value;
      if CDSRecibo.State=dsInsert then
        begin
          DebitoParcial       := (CDSMovAplicaCCVtaIMPORTE.AsFloat * DiasMora * CDSEmpresaPUNITORIOS.AsFloat )/36500;
          CDSReciboIMPORTE_RECARGO.AsFloat := CDSReciboIMPORTE_RECARGO.AsFloat+ DebitoParcial;
        end;
      CDSMovAplicaCCVta.Next;
    END;
//  DiasMora:= Trunc(DiasMora / CDSMovAplicaCCVta.RecordCount);

  CDSMovAplicaCCVta.EnableControls;
  FormRecibo_2.ceTotalAplicaciones.Text := FormatFloat(MascaraGral,SumaAplicaciones);
//  if CDSRecibo.State=dsInsert then
//    begin
//      CDSReciboIMPORTE_RECARGO.AsFloat:= (SumaAplicaciones *  DiasMora * CDSEmpresaPUNITORIOS.AsFloat )/36500;
//    end;                                  //capital*tasa*dias / 36500

  begin
    if (CDSReciboTOTAL_NETO.AsFloat>0) then
      CDSReciboPORCENTAJE_DSCTO.AsFloat:=RoundTo((CDSReciboIMPORTE_DSCTO.AsFloat/CDSReciboTOTAL_NETO.AsFloat)* 100,-2);
  end;
END;

PROCEDURE TDatosRecibos.SumarAplicaciones;
VAR CDSClon:TClientDataSet;
BEGIN
  SumaAplicaciones := 0;
  CDSClon:=TClientDataSet.Create(self);
  CDSClon.CloneCursor(CDSMovAplicaCCVta,True);
  CDSClon.First;
  WHILE NOT (CDSClon.Eof) DO
    BEGIN
      SumaAplicaciones               := SumaAplicaciones + CDSClon.FieldByName('IMPORTE').AsFloat;
      CDSClon.Next;
    END;
  FormRecibo_2.ceTotalAplicaciones.Value := SumaAplicaciones;
  FreeAndNil(CDSClon);
END;


PROCEDURE TDatosRecibos.CalcularRetenciones;
VAR CDSClon:TClientDataSet;
BEGIN
  SumaRetenciones := 0;
  CDSClon:=TClientDataSet.Create(self);
  CDSClon.CloneCursor(CDSRetenciones,True);
  CDSClon.First;
  WHILE NOT (CDSClon.Eof) DO
    BEGIN
      SumaRetenciones := SumaRetenciones + CDSClon.FieldByName('IMPORTE').AsFloat;
      CDSClon.Next;
    END;
  FormRecibo_2.ceTotalRetenciones.Text := FormatFloat(MascaraGral, SumaRetenciones);
  FreeAndNil(CDSClon);
END;

procedure TDatosRecibos.AplicaMascaraNumerica;
begin
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='RECIBOS';
  DMMain_FD.QOpciones.Open;
  MascaraGral:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSReciboSALDO_APLICAR).EditFormat      :=MascaraGral;
  TFloatField(CDSReciboTOTAL).EditFormat              :=MascaraGral;
  TFloatField(CDSReciboTOTAL_NETO).EditFormat         :=MascaraGral;
  TFloatField(CDSReciboMUESTANCIMPORTE).EditFormat    :=MascaraGral;
  TFloatField(CDSReciboMUESTANCIMPORTE).DisplayFormat :=MascaraGral;

  TFloatField(CDSMovAplicaCCVtaIMPORTE).EditFormat    :=MascaraGral;
  TFloatField(CDSMovCCVtaDEBE).EditFormat             :=MascaraGral;
  TFloatField(CDSMovCCVtaHABER).EditFormat            :=MascaraGral;
  TFloatField(CDSMovCCVtaSALDO).EditFormat            :=MascaraGral;
  TFloatField(CDSMovCCVtaMUESTRAAPAGAR).EditFormat    :=MascaraGral;

  TFloatField(CDSRetencionesIMPORTE).EditFormat       :=MascaraGral;
  TFloatField(CDSMovACtaIMPORTE).EditFormat           :=MascaraGral;

  TFloatField(CDSReciboSALDO_APLICAR).DisplayFormat   :=MascaraGral;
  TFloatField(CDSReciboTOTAL).DisplayFormat           :=MascaraGral;
  TFloatField(CDSReciboTOTAL_NETO).DisplayFormat      :=MascaraGral;
  TFloatField(CDSMovAplicaCCVtaIMPORTE).DisplayFormat :=MascaraGral;
  TFloatField(CDSMovCCVtaDEBE).DisplayFormat          :=MascaraGral;
  TFloatField(CDSMovCCVtaHABER).DisplayFormat         :=MascaraGral;
  TFloatField(CDSMovCCVtaSALDO).DisplayFormat         :=MascaraGral;
  TFloatField(CDSMovCCVtaMUESTRAAPAGAR).DisplayFormat :=MascaraGral;

  TFloatField(CDSReciboPORCENTAJE_DSCTO).DisplayFormat   :=MascaraGral;
  TFloatField(CDSReciboIMPORTE_DSCTO).DisplayFormat      :=MascaraGral;

end;

PROCEDURE TDatosRecibos.CDSReciboCODIGOSetText(Sender: TField;
  CONST Text: STRING);
VAR
  Aux: STRING;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      CodigoInUse:=CDSReciboCODIGO.Value;
      Aux := Text;
      Aux := Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString := Aux;
      IF NOT (AsignarCliente(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Cliente No válido');
          Sender.AsString := '';
          Aux:='';
          FormRecibo_2.RxDBECodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      FormRecibo_2.RxDBECodigo.Text := Aux;
      IF (CDSReciboCODIGO.Value<>'') and (CodigoInUse<>'') THEN
        IF CodigoInUse <> Sender.AsString THEN
          BEGIN
            //ShowMessage('El cambio de Cliente borrara todas las apliaciones echas en este comprobante');
            CDSMovAplicaCCVta.First;
            WHILE NOT (CDSMovAplicaCCVta.Eof) DO
              BEGIN
                CDSMovAplicaCCVta.Delete;
                CDSMovAplicaCCVta.First;
              END;
          END;

    end;
END;

PROCEDURE TDatosRecibos.CDSReciboSUCURSALSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString := Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Sucursal No Valido');
          SysUtils.Abort;
        END
      ELSE IF (CDSRecibo.State = dsInsert) and (CDSReciboNROCPBTE.Value='') THEN
        UltimoComprobante;
    END;
END;

PROCEDURE TDatosRecibos.CDSReciboNUMERORCSetText(Sender: TField;
  CONST Text: STRING);
VAR
  Aux: STRING;
BEGIN
  Aux := Text;
  Aux := Copy('00000000', 1, 8 - Length(Aux)) + Aux;
  Sender.AsString := Aux;
  CDSReciboNROCPBTE.Value := CDSReciboLETRARC.Value + CDSReciboSUCRC.Value + CDSReciboNUMERORC.Value;
//  QBuscaRcRepetido.Close;
//  QBuscaRcRepetido.ParamByName('clase').Value    := CDSReciboCLASECPBTE.Value;
//  QBuscaRcRepetido.ParamByName('suc').Value      := CDSReciboSUCRC.Value;
//  QBuscaRcRepetido.ParamByName('num').Value      := CDSReciboNUMERORC.Value;
//  QBuscaRcRepetido.ParamByName('sucursal').Value := CDSReciboSUCURSAL.Value;
//  QBuscaRcRepetido.Open;
//  if QBuscaRcRepetido.Fields[0].AsString<>'' then
  if (DMMain_FD.BuscarRecibo(CDSReciboCLASECPBTE.AsString,CDSReciboLETRARC.AsString,CDSReciboSUCRC.AsString,CDSReciboNUMERORC.Value,CDSReciboSUCURSAL.Value)) then
    begin
    //  Sender.Clear;
    //  CDSReciboSUCRC.Clear;
    //  ShowMessage('Numero ya Ingresado....');
    //  CDSReciboCPBTE_MANUAL.Value:='S';
    //  FormRecibo_2.dbeSuc.SetFocus;
      if Not(Assigned(FormMuestraUltimoProximoNroCpbte)) then
          FormMuestraUltimoProximoNroCpbte:=TFormMuestraUltimoProximoNroCpbte.Create(Self);
        FormMuestraUltimoProximoNroCpbte.letra   :=CDSReciboLETRARC.Value;
        FormMuestraUltimoProximoNroCpbte.Suc     :=CDSReciboSUCRC.Value;
        FormMuestraUltimoProximoNroCpbte.Nro     :=CDSReciboNUMERORC.Value;
        FormMuestraUltimoProximoNroCpbte.Tipo    :=CDSReciboTIPOCPBTE.Value;
        FormMuestraUltimoProximoNroCpbte.Clase   :=CDSReciboCLASECPBTE.Value;
        FormMuestraUltimoProximoNroCpbte.Sucursal:=CDSReciboSUCURSAL.Value;
        FormMuestraUltimoProximoNroCpbte.ShowModal;
        if FormMuestraUltimoProximoNroCpbte.ModalResult=mrOk then
          Sender.AsString:=FormMuestraUltimoProximoNroCpbte.Nro
        else
          Sender.Clear;

    end;

END;

procedure TDatosRecibos.CDSReciboPORCENTAJE_DSCTOSetText(Sender: TField;
  const Text: string);
begin
  //**
{  if Trunc(SumaAplicaciones*100)<=0 then
    begin
      Sender.AsString:='0';
      ShowMessage('Debe indicar los comprobantes afectados....');
    end
  else
    Sender.AsString:=Text;
  wwCDSReciboIMPORTE_DSCTO.Value:=Sender.AsFloat * 0.01 * SumaAplicaciones;
  if Trunc(wwCDSReciboIMPORTE_DSCTO.Value)>Trunc(SumaAplicaciones *100) then
    begin
      Sender.AsString:='0';
      wwCDSReciboIMPORTE_DSCTO.Value:=0;
      ShowMessage('Esta haciendo un descuento de mas del 100%...');
    end;
}

  CDSMovAplicaCCVta.First;
  WHILE NOT (CDSMovAplicaCCVta.Eof) DO
    BEGIN
      CDSMovAplicaCCVta.Delete;
      CDSMovAplicaCCVta.First;
    END;

  Sender.AsString:=Text;
  CDSReciboIMPORTE_DSCTO.AsFloat := Sender.AsFloat * 0.01 * CDSReciboTOTAL_NETO.AsFloat;
  CDSReciboTOTAL.AsFloat         := CDSReciboTOTAL_NETO.AsFloat - CDSReciboIMPORTE_DSCTO.AsFloat;
  CDSReciboSALDO_APLICAR.AsFloat := CDSReciboTOTAL.AsFloat;
end;

PROCEDURE TDatosRecibos.CDSReciboNewRecord(DataSet: TDataSet);
BEGIN
  CDSReciboID_RC.Value              := IBGId_recibo.IncrementFD(1);
  CDSReciboFECHA.AsDateTime         := Date;
  CDSReciboSALDO_APLICAR.AsFloat    := 0;
  CDSReciboTOTAL.AsFloat            := 0;
  CDSReciboTOTAL_NETO.AsFloat       := 0;
  CDSReciboANULADO.Value            := 'N';
  CDSReciboIMPRESO.Value            := 'N';
  CDSReciboCODIGO.Value             := '';
  CDSReciboSUCURSALSetText(CDSReciboSUCURSAL,IntToStr(FormRecibo_2.SucursalPorDefecto));
  CDSReciboUSUARIO.Value            := DMMain_FD.UsuarioActivo;
  CDSReciboFECHA_HORA.AsDateTime    := Now;
  CDSReciboIMPORTE_DSCTO.AsFloat    := 0;
  CDSReciboIMPORTE_RECARGO.ASFloat  := 0;
  CDSReciboPORCENTAJE_DSCTO.AsFloat := 0;
  CDSReciboNC_ID.Clear;
  CDSReciboNC_TIPOCPBTE.Value       := '';
  CDSReciboNC_CLASECPBTE.Value      := '';
  CDSReciboNC_NROCOMPROB.Value      := '';
  CDSReciboLOTE_COBRO_TC.Value      := '';
  CDSReciboSALDO_APLICAR.AsFloat    := 0;
  CDSReciboID_OBRA.Value            := -1;
  CDSReciboMUESTRAOBRA.AsString     := '';
  CDSReciboMONEDA_ALTERNATIVA.Value := 1;
  CDSReciboCOTIZACION.Value         := 1;

  CDSReciboID_REC_CUPON.Clear;
END;

PROCEDURE TDatosRecibos.CDSMovAplicaCCVtaAfterPost(DataSet: TDataSet);
BEGIN
  //  wwCDSReciboSALDO_APLICAR.Value:=wwCDSReciboSALDO_APLICAR.Value-wwCDSMovAplicaCCVtaIMPORTE.Value;
  IF CDSMovCCVta.Locate('Id_MovCCVta', CDSMovAplicaCCVtaID_MOVCCVTA.Value, []) THEN
    BEGIN
      CDSMovCCVta.Edit;
      CDSMovCCVtaSALDO.AsFloat := CDSMovCCVtaSALDO.AsFloat - CDSMovAplicaCCVtaIMPORTE.AsFloat;
      IF CDSMovCCVtaSALDO.AsFloat < 0.01 THEN
        CDSMovCCVtaSALDO.AsFloat := 0;
      CDSMovCCVta.Post;
      CalcularAplicaciones;
    END;
END;

PROCEDURE TDatosRecibos.CDSMovAplicaCCVtaBeforeDelete(DataSet: TDataSet);
BEGIN
  //  wwCDSReciboSALDO_APLICAR.Value:=wwCDSReciboSALDO_APLICAR.Value+wwCDSMovAplicaCCVtaIMPORTE.Value;
  IF CDSMovCCVta.Locate('Id_MovCCVta', CDSMovAplicaCCVtaID_MOVCCVTA.Value, []) THEN
    BEGIN
      CDSMovCCVta.Edit;
      CDSMovCCVtaSALDO.AsFloat := CDSMovCCVtaSALDO.AsFloat + CDSMovAplicaCCVtaIMPORTE.AsFloat;
      if CDSMovCCVtaSALDO.AsFloat>CDSMovCCVtaDEBE.AsFloat then
        CDSMovCCVtaSALDO.AsFloat := CDSMovCCVtaDEBE.AsFloat;
      CDSMovCCVta.Post;
    END;
END;

procedure TDatosRecibos.CDSMovAplicaCCVtaBeforePost(DataSet: TDataSet);
begin
 if (CDSMovAplicaCCVtaIMPORTE.AsFloat>CDSMovCCVtaSALDO.AsFloat) and (CDSRecibo.State in [dsInsert]) then
   CDSMovAplicaCCVtaIMPORTE.AsFloat:=CDSMovCCVtaSALDO.AsFloat;
end;

PROCEDURE TDatosRecibos.CDSMovAplicaCCVtaAfterDelete(DataSet: TDataSet);
BEGIN
  CalcularAplicaciones;
END;

PROCEDURE TDatosRecibos.CDSMovAplicaCCVtaIMPORTESetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  if CDSMovAplicaCCVtaID_MOVCCVTA.AsString<>'' then
    begin
      Sender.AsString := ReplaceText(Text,',','');
      CDSMovAplicaCCVta.Post;
    end;
END;

PROCEDURE TDatosRecibos.CDSReciboSUCRCSetText(Sender: TField;
  CONST Text: STRING);
VAR
  Aux: STRING;
BEGIN
  Aux := Text;
  Aux := Copy('0000', 1, 4 - Length(Aux)) + Aux;
  Sender.AsString := Aux;
  CDSReciboNROCPBTE.Value := CDSReciboLETRARC.Value + CDSReciboSUCRC.Value + CDSReciboNUMERORC.Value;
END;



procedure TDatosRecibos.CDSReciboTOTALGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if FormRecibo_2<>nil then
    begin
      if FormRecibo_2.VerMonedaAlternartiva.Checked then
        Text:=FormatFloat(MascaraGral,Sender.AsFloat/CDSReciboCOTIZACION.AsFloat)
      else
        Text:=FormatFloat(MascaraGral,Sender.AsFloat);
     // FormRecibo_2.DSBase.DataSet.Refresh;
    end;
end;

PROCEDURE TDatosRecibos.CDSReciboTOTALSetText(Sender: TField;
  CONST Text: STRING);
var p:integer;
Cadena:String;
BEGIN
  Cadena          := Text;
  Cadena          := ReplaceText(Cadena,',','');
  Sender.AsString := Cadena;

  Sender.AsFloat  := Moneda3D(' ',MascaraGral,Sender.AsFloat);

  if ((Int(Sender.AsFloat)<Int(TotalInUse))or
     (frac(Sender.AsFloat)<Frac(TotalInUse))) and
     (FloatToStr(TotalInUse)<>'0') Then
    BEGIN
     // ShowMessage('El Importe Ingresado a cambiado por otro de menor valor,se borrara todas las apliaciones echas en este comprobante');
      CDSMovAplicaCCVta.First;
      WHILE NOT (CDSMovAplicaCCVta.Eof) DO
        BEGIN
          CDSMovAplicaCCVta.Delete;
          CDSMovAplicaCCVta.First;
        END;
      END;

  CDSReciboSALDO_APLICAR.AsFloat := (Sender.AsFloat - SumaAplicaciones);

  TotalInUse:=Moneda3D(' ',MascaraGral,Sender.AsFloat);
  CDSReciboIMPORTE_DSCTO.AsFloat    := 0;
  CDSReciboPORCENTAJE_DSCTO.AsFloat := 0;
  CDSReciboTOTAL_NETO.AsFloat       := CDSReciboTOTAL.AsFloat;
//  Sender.AsString := FloatToStr(Moneda3D(' ',MascaraGral,StrToFloat(Text)));
 // wwCDSReciboSALDO_APLICAR.Value := Sender.AsFloat;
END;

procedure TDatosRecibos.CDSReciboTOTAL_NETOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if FormRecibo_2<>nil then
    begin
      if FormRecibo_2.VerMonedaAlternartiva.Checked then
        Text:=FormatFloat(MascaraGral,Sender.AsFloat/CDSReciboCOTIZACION.AsFloat)
      else
        Text:=FormatFloat(MascaraGral,Sender.AsFloat);
     // FormRecibo_2.DSBase.DataSet.Refresh;
    end;
end;

procedure TDatosRecibos.CDSReciboTOTAL_NETOSetText(Sender: TField;
  const Text: string);
var p:integer;
Cadena:String;
BEGIN
  Cadena:=Text;
  while pos(',',Cadena)<>0 Do
   delete(Cadena,pos(',',Cadena),1);

  Sender.AsString:=Cadena;

  Sender.AsFloat:= Moneda3D(' ',MascaraGral,Sender.AsFloat);

  if ((Int(Sender.AsFloat)<Int(TotalInUse))or
     (frac(Sender.AsFloat)<Frac(TotalInUse))) and
     (FloatToStr(TotalInUse)<>'0') Then
    BEGIN
     // ShowMessage('El Importe Ingresado a cambiado por otro de menor valor,se borrara todas las apliaciones echas en este comprobante');
      CDSMovAplicaCCVta.First;
      WHILE NOT (CDSMovAplicaCCVta.Eof) DO
        BEGIN
          CDSMovAplicaCCVta.Delete;
          CDSMovAplicaCCVta.First;
        END;
      END;

  CDSReciboSALDO_APLICAR.AsFloat := (Sender.AsFloat - SumaAplicaciones);

  TotalInUse:=Moneda3D(' ',MascaraGral,Sender.AsFloat);
  CDSReciboIMPORTE_DSCTO.AsFloat    := 0;
  CDSReciboPORCENTAJE_DSCTO.AsFloat := 0;
  CDSReciboTOTAL.AsFloat            := Sender.AsFloat;
 //  Sender.AsString := FloatToStr(Moneda3D(' ',MascaraGral,StrToFloat(Text)));
 // wwCDSReciboSALDO_APLICAR.Value := Sender.AsFloat;
END;

procedure TDatosRecibos.CDSReciboVENDEDORSetText(Sender: TField;
  const Text: string);
begin
IF (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=copy('000000',1,Sender.Size-Length(Text))+Text;
      IF (NOT (AsignarCobrador(Sender.AsString))) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Vendedor no Válido');
          //FormCpbte_2.RxCConVta.SetFocus;
        END;
    END;
end;

PROCEDURE TDatosRecibos.CDSReciboLETRARCSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  Sender.AsString := Text;
  CDSReciboNROCPBTE.Value := CDSReciboLETRARC.Value + CDSReciboSUCRC.Value + CDSReciboNUMERORC.Value;
END;

PROCEDURE TDatosRecibos.CDSRetencionesID_RETENCIONSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  IF CDSRetenciones.State = dsBrowse THEN
    CDSRetenciones.Edit;
  Sender.AsString := Text;
  IF NOT (AsignarRetencion(Sender.AsInteger)) THEN
    BEGIN
      ShowMessage('Codigo no válido');
      Sender.AsString := '';
    END;
END;

procedure TDatosRecibos.CDSRetencionesMUESTRAJURIDICCIONChange(Sender: TField);
begin
 // CDSRetencionesDETALLE.Value:=CDSRetencionesMUESTRAJURIDICCION.LookupResultField;
end;

PROCEDURE TDatosRecibos.CDSMovAplicaCCVtaNewRecord(DataSet: TDataSet);
BEGIN
  CDSMovAplicaCCVtaID_MOV.Value      := IBGId_AplicacionCCVta.IncrementFD(1);
  CDSMovAplicaCCVtaID_CPBTE.Value    := CDSReciboID_RC.Value;
  CDSMovAplicaCCVtaTIPOCPBTE.Value   := CDSReciboTIPOCPBTE.Value;
  CDSMovAplicaCCVtaNUMEROCPBTE.Value := CDSReciboNROCPBTE.Value;
  CDSMovAplicaCCVtaFECHA.Value       := CDSReciboFECHA.Value;
  CDSMovAplicaCCVtaCLASECPBTE.Value  := CDSReciboCLASECPBTE.Value;
  CDSMovAplicaCCVtaDETALLE.Value     := CDSReciboCLASECPBTE.Value + '-' + CDSReciboLETRARC.Value + '-' + CDSReciboSUCRC.Value + '-' +
                                        CDSReciboNUMERORC.Value;
  CDSMovAplicaCCVtaCONCILIADO.Value  :='N';                                      
END;

procedure TDatosRecibos.CDSMovCCVtaCalcFields(DataSet: TDataSet);
begin
//  QTipoFcCab.Close;
//  QTipoFcCab.ParamByName('id').Value:= CDSMovCCVtaID_CPBTE.Value;
//  QTipoFcCab.Open;
//  CDSMovCCVtaTIPO.Value:=QTipoFcCabTIPO_VTA.AsString;
//  QTipoFcCab.Close;
  CDSMovCCVtaMUESTRAMORA.Value:= Trunc(CDSReciboFECHA.AsDateTime) - Trunc(CDSMovCCVtaFECHAVTO.AsDateTime);
  if (CDSMovCCVtaMUESTRAMORA.Value<0) then
    CDSMovCCVtaMUESTRAMORA.Value:=0;
  CDSMovCCVtaMUESTRAPUNITORIO.AsFloat:=(CDSMovCCVtaSALDO.AsFLoat * CDSMovCCVtaMUESTRAMORA.Value * CDSEmpresaPUNITORIOS.AsFloat) / 36500;
//  (CDSMovAplicaCCVtaIMPORTE.AsFloat * DiasMora * CDSEmpresaPUNITORIOS.AsFloat )/36500
end;

procedure TDatosRecibos.CDSMovCCVtaMUESTRAAPAGARSetText(Sender: TField;
  const Text: string);
Var Cadena:String;
begin
  if MessageDlg('Modifica el importe???',mtConfirmation,mbYesNo,0,mbNo)= mrYes then
    begin
      Cadena:=Text;
      while pos(',',Cadena)<>0 Do
        delete(Cadena,pos(',',Cadena),1);
      Sender.AsString:=Cadena;
      if Sender.AsFloat>CDSMovCCVtaSALDO.AsFloat then
        Sender.AsFloat:=CDSMovCCVtaSALDO.AsFloat;
      if Sender.AsFloat<0 then
        Sender.AsFloat:=CDSMovCCVtaSALDO.AsFloat;
      FormSumaAplicacionesRc.SumaAplicado;

  end;
end;

PROCEDURE TDatosRecibos.CDSRetencionesNewRecord(DataSet: TDataSet);
BEGIN
  CDSRetencionesID_MOV_RETENCIONES.Value := IBGId_Retenciones.IncrementFD(1);
  CDSRetencionesID_CPBTE.Value           := CDSReciboID_RC.Value;
  CDSRetencionesTIPOCPBTE.Value          := CDSReciboTIPOCPBTE.Value;
  CDSRetencionesCLASECPBTE.Value         := CDSReciboCLASECPBTE.Value;
  CDSRetencionesNROCPBTE.Value           := CDSReciboNROCPBTE.Value;
  CDSRetencionesCODIGO_CLIENTE.Value     := CDSReciboCODIGO.Value;
  CDSRetencionesNOMBRE_CLIENTE.Value     := CDSReciboRAZONSOCIAL.Value;
  CDSRetencionesCUIT_CLIENTE.Value       := CDSReciboCUIT.Value;
  CDSRetencionesFECHA.Value              := CDSReciboFECHA.Value;
  CDSRetencionesFECHA_RETENCION.Value    := CDSReciboFECHA.Value;
  CDSRetencionesIMPORTE.AsFloat          := 0;
  CDSRetencionesNRO_RETENCION.Value      := '0000000000';

END;


procedure TDatosRecibos.CDSRetencionesAfterDelete(DataSet: TDataSet);
begin
  calcularRetenciones;
end;

PROCEDURE TDatosRecibos.CDSRetencionesAfterPost(DataSet: TDataSet);
BEGIN
  calcularRetenciones;
END;

procedure TDatosRecibos.CDSReciboID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString := Text;
      IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
        BEGIN
          ShowMessage('Dato no válido');
          Sender.AsString := '';
        END;
      IF (CDSRecibo.State = dsInsert) and (CDSReciboCPBTE_MANUAL.Value='N') THEN
        UltimoComprobante;
    END;
end;

procedure TDatosRecibos.CDSReciboIMPORTE_DSCTOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if FormRecibo_2<>nil then
    begin
      if FormRecibo_2.VerMonedaAlternartiva.Checked then
        Text:=FormatFloat(MascaraGral,Sender.AsFloat/CDSReciboCOTIZACION.AsFloat)
      else
        Text:=FormatFloat(MascaraGral,Sender.AsFloat);
     // FormRecibo_2.DSBase.DataSet.Refresh;
    end;
end;

procedure TDatosRecibos.CDSReciboIMPORTE_DSCTOSetText(Sender: TField;
  const Text: string);
begin
 CDSMovAplicaCCVta.First;
 WHILE NOT (CDSMovAplicaCCVta.Eof) DO
    BEGIN
      CDSMovAplicaCCVta.Delete;
      CDSMovAplicaCCVta.First;
    END;
  Sender.AsString:=Text;
  CDSReciboPORCENTAJE_DSCTO.AsFloat :=(Sender.AsFloat/CDSReciboTOTAL_NETO.AsFloat) * 100;
  CDSReciboTOTAL.AsFloat            := CDSReciboTOTAL_NETO.AsFloat - Sender.AsFloat;
  CDSReciboSALDO_APLICAR.AsFloat    := CDSReciboTOTAL.AsFloat;
end;

procedure TDatosRecibos.CDSRetencionesFECHA_RETENCIONSetText(
  Sender: TField; const Text: String);
VAR MesRet,AnioRet,MesRec,AnioRec,dia:word;
begin
  Sender.AsString:=Text;
  if Text<>'' Then
    begin
      DecodeDate(CDSReciboFECHA.AsDateTime,AnioRec,MesRec,dia);
      DecodeDate(Sender.AsDateTime,AnioRet,MesRet,dia);
      if Not((MesRet=MesRec) and (AnioRet=AnioRec)) Then
        begin
          //Sender.Clear;
          ShowMessage('El mes o el año de la retención difiere con la del recibo.......')
        end
     end;
end;

procedure TDatosRecibos.CDSRetencionesBeforePost(DataSet: TDataSet);
begin
  if (Trunc(CDSRetencionesIMPORTE.AsFloat * 1000) = 0) or (CDSRetencionesIMPORTE.AsString='') Then
    begin
      SysUtils.Abort;
      CDSRetenciones.Cancel;
      ShowMessage('La Retención no puede tener valor cero');
    end;

end;

END.

