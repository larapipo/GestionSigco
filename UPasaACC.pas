unit UPasaACC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB,   ExtCtrls, DBClient, Provider,
  JvExControls, JvDBLookup, Buttons, IBGenerator, JvGradient, FMTBcd, DBXCommon,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvGroupBox, AdvOfficeButtons, FireDAC.Phys.Intf, FireDAC.DApt.Intf;

type
  TFormTransformaFactura = class(TForm)
    pnPrincipal: TPanel;
    DSComprobantes: TDataSource;
    edSuc: TEdit;
    edNum: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    DSSucursal: TDataSource;
    Label3: TLabel;
    DSPFcVtaCab: TDataSetProvider;
    CDSFcVtaCab: TClientDataSet;
    CDSFcVtaDet: TClientDataSet;
    DSPFcVtaImp: TDataSetProvider;
    CDSFcVtaImp: TClientDataSet;
    DSPFcVtaDet: TDataSetProvider;
    CDSFcVtaCabXML: TClientDataSet;
    CDSFcVtaDetXML: TClientDataSet;
    CDSFcVtaImpXML: TClientDataSet;
    cbTipo: TComboBox;
    Label4: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    dbcComprobantes: TJvDBLookupCombo;
    DSDepositos: TDataSource;
    dbcDeposito: TJvDBLookupCombo;
    Label5: TLabel;
    Label6: TLabel;
    dbcCaja: TJvDBLookupCombo;
    DSCaja: TDataSource;
    btsalir: TBitBtn;
    btOk: TBitBtn;
    IBGFcVtaCab: TIBGenerator;
    IBGFcVtaDet: TIBGenerator;
    IBGImpuestos: TIBGenerator;
    DSFcVtaImpXML: TDataSource;
    DSFcVtaDetXML: TDataSource;
    DSFcVtaCabXML: TDataSource;
    edLetra: TEdit;
    chImpresos: TCheckBox;
    QCaja: TFDQuery;
    QCajaID_CAJA: TIntegerField;
    QCajaID_CUENTA_CAJA: TIntegerField;
    QCajaNUMEROCAJA: TIntegerField;
    QCajaMUESTRACAJA: TStringField;
    QComprobantes: TFDQuery;
    QComprobantesID_COMPROBANTE: TIntegerField;
    QComprobantesTIPO_COMPROB: TStringField;
    QComprobantesCLASE_COMPROB: TStringField;
    QComprobantesDENOMINACION: TStringField;
    QComprobantesSUCURSAL: TIntegerField;
    QComprobantesLETRA: TStringField;
    QComprobantesPREFIJO: TStringField;
    QComprobantesNUMERARCION_PROPIA: TStringField;
    QComprobantesNUMERO: TStringField;
    QComprobantesTOMA_NRO_DE: TIntegerField;
    QComprobantesAFECTA_IVA: TStringField;
    QComprobantesAFECTA_CC: TStringField;
    QComprobantesDESGLOZA_IVA: TStringField;
    QComprobantesCOMPRA_VENTA: TStringField;
    QComprobantesCOPIAS: TIntegerField;
    QComprobantesREPORTE: TStringField;
    QComprobantesIMPRIME: TStringField;
    QComprobantesFISCAL: TStringField;
    QComprobantesNOMBREIMPRESORA: TStringField;
    QComprobantesPENDIENTEIMPRESION: TStringField;
    QComprobantesLINEAS_DETALLE: TSmallintField;
    QComprobantesCALCULA_IVA_ARTICULOS: TStringField;
    QComprobantesDEFECTO: TStringField;
    QComprobantesCAJA_DEFECTO: TIntegerField;
    QComprobantesDIVIDE_IVA: TStringField;
    QComprobantesFACTURAELECTRONICA: TStringField;
    QComprobantesEN_USO: TStringField;
    QComprobantesCODIGO_AFIP: TStringField;
    QComprobantesID_AJUSTECC: TIntegerField;
    QComprobantesCENTRO_COSTO: TIntegerField;
    QComprobantesFILTRO_COMPROBANTES: TStringField;
    QComprobantesDEPOSITO: TIntegerField;
    QComprobantesULTIMONRO: TIntegerField;
    QComprobantesEDITAR_NRO: TStringField;
    QDepositos: TFDQuery;
    QDepositosID: TIntegerField;
    QDepositosNOMBRE: TStringField;
    QDepositosSUCURSAL: TIntegerField;
    QDepositosCENTRALIZA_STOCK: TStringField;
    QSucursal: TFDQuery;
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
    QPrimerConVta: TFDQuery;
    QFcVtaCab: TFDQuery;
    QFcVtaCabID_FC: TIntegerField;
    QFcVtaCabTIPOCPBTE: TStringField;
    QFcVtaCabCLASECPBTE: TStringField;
    QFcVtaCabCODIGO: TStringField;
    QFcVtaCabNROCPBTE: TStringField;
    QFcVtaCabLETRAFAC: TStringField;
    QFcVtaCabSUCFAC: TStringField;
    QFcVtaCabNUMEROFAC: TStringField;
    QFcVtaCabNOMBRE: TStringField;
    QFcVtaCabRAZONSOCIAL: TStringField;
    QFcVtaCabDIRECCION: TStringField;
    QFcVtaCabCPOSTAL: TStringField;
    QFcVtaCabLOCALIDAD: TStringField;
    QFcVtaCabTIPOIVA: TIntegerField;
    QFcVtaCabCUIT: TStringField;
    QFcVtaCabLISTAPRECIO: TIntegerField;
    QFcVtaCabFECHAVTA: TSQLTimeStampField;
    QFcVtaCabFECHAVTO: TSQLTimeStampField;
    QFcVtaCabFECHA_FISCAL: TSQLTimeStampField;
    QFcVtaCabCONDICIONVTA: TIntegerField;
    QFcVtaCabANULADO: TStringField;
    QFcVtaCabNRORTO: TStringField;
    QFcVtaCabN_OPERACION2: TFloatField;
    QFcVtaCabNETOGRAV1: TFloatField;
    QFcVtaCabNETOGRAV2: TFloatField;
    QFcVtaCabNETONOGRAV1: TFloatField;
    QFcVtaCabNETONOGRAV2: TFloatField;
    QFcVtaCabDSTO: TFloatField;
    QFcVtaCabDSTOIMPORTE: TFloatField;
    QFcVtaCabNETOEXEN1: TFloatField;
    QFcVtaCabNETOEXEN2: TFloatField;
    QFcVtaCabTOTAL: TFloatField;
    QFcVtaCabDEBE: TFloatField;
    QFcVtaCabIMPRESO: TStringField;
    QFcVtaCabOBSERVACION1: TStringField;
    QFcVtaCabOBSERVACION2: TStringField;
    QFcVtaCabCPTE_MANUAL: TStringField;
    QFcVtaCabSUCURSAL: TIntegerField;
    QFcVtaCabFACTURANRO: TStringField;
    QFcVtaCabZONA: TIntegerField;
    QFcVtaCabLDR: TIntegerField;
    QFcVtaCabDEPOSITO: TIntegerField;
    QFcVtaCabCALCULA_SOBRETASA: TStringField;
    QFcVtaCabDESGLOZAIVA: TStringField;
    QFcVtaCabNROENTREGA: TIntegerField;
    QFcVtaCabINGRESA_A_CTACTE: TStringField;
    QFcVtaCabINGRESA_LIBRO_IVA: TStringField;
    QFcVtaCabTIPO_REMITO: TStringField;
    QFcVtaCabIDREMITO: TIntegerField;
    QFcVtaCabREDUCIDA: TStringField;
    QFcVtaCabCOMSIONVENDEDOR: TFloatField;
    QFcVtaCabLIQUIDADA: TStringField;
    QFcVtaCabFECHA_LIQUIDACION: TSQLTimeStampField;
    QFcVtaCabVENDEDOR: TStringField;
    QFcVtaCabUSUARIO: TStringField;
    QFcVtaCabNC_CONTADO: TStringField;
    QFcVtaCabCAJA_POR_DEFECTO: TIntegerField;
    QFcVtaCabNRO_Z: TIntegerField;
    QFcVtaCabVALORES_RECIBIDOS: TFloatField;
    QFcVtaCabPERCEPCION_IB_TASA: TFloatField;
    QFcVtaCabPERCEPCION_IB_IMPORTE: TFloatField;
    QFcVtaCabPERCIBE_IB: TStringField;
    QFcVtaCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField;
    QFcVtaCabRENGLONES: TSmallintField;
    QFcVtaCabFECHA_HORA: TSQLTimeStampField;
    QFcVtaCabNOTAPEDIDO_ID: TIntegerField;
    QFcVtaCabNOTAPEDIDO_NROCPBTE: TStringField;
    QFcVtaCabID_FC_CLON: TIntegerField;
    QFcVtaCabPRESUPUESTO_ID: TIntegerField;
    QFcVtaCabPRESUPUESTO_NROCPBTE: TStringField;
    QFcVtaCabMONEDA_CPBTE: TIntegerField;
    QFcVtaCabMONEDA_CPBTE_COTIZACION: TFloatField;
    QFcVtaCabPOR_CTA_Y_ORDEN: TStringField;
    QFcVtaCabPROVEEDOR: TStringField;
    QFcVtaCabTIPO_VTA: TStringField;
    QFcVtaCabID_RECEPCION_GTIA: TIntegerField;
    QFcVtaCabJURIDICION: TIntegerField;
    QFcVtaCabJURIDICION_LOCALIDAD: TIntegerField;
    QFcVtaCabCON_GTIA_EXTENDIDA: TStringField;
    QFcVtaCabMESES_DE_GARANTIA: TIntegerField;
    QFcVtaCabPOLIZA: TStringField;
    QFcVtaCabVALOR_ASEGURADO: TFloatField;
    QFcVtaCabABONO_PERIODO: TStringField;
    QFcVtaCabNUMERO_OPERACION: TStringField;
    QFcVtaCabSALDO_ACTUAL_CC: TFloatField;
    QFcVtaCabID_NOTA_CAMBIO: TIntegerField;
    QFcVtaCabCAE: TStringField;
    QFcVtaCabCAE_VENCIMIENTO: TSQLTimeStampField;
    QFcVtaCabFACTURA_ELECTRONICA: TStringField;
    QFcVtaCabCANT_BULTOS: TIntegerField;
    QFcVtaCabCUOTAS_CC: TIntegerField;
    QFcVtaCabINTERVALO_CUOTA: TIntegerField;
    QFcVtaCabID_GARANTE: TIntegerField;
    QFcVtaCabPAGO_A_CTA: TFloatField;
    QFcVtaCabID_FC_CON_ADEL: TIntegerField;
    QFcVtaCabPRIMER_VTO: TSQLTimeStampField;
    QFcVtaCabANTICIPO_VTO: TSQLTimeStampField;
    QFcVtaCabCENTRO_COSTO: TIntegerField;
    QFcVtaCabID_PEDIDO_MORPHI: TIntegerField;
    QFcVtaCabID_PAIS: TSmallintField;
    QFcVtaCabCUIT_PAIS: TStringField;
    QFcVtaCabDOC_ADUANERO: TStringField;
    QFcVtaCabFECHA_CARGA: TSQLTimeStampField;
    QFcVtaCabNRO_INTERNO: TStringField;
    QFcVtaCabFOB_TOTAL: TFloatField;
    QFcVtaCabNOTAS: TStringField;
    QFcVtaCabDESTINO_DOCUMENTO: TStringField;
    QFcVtaCabPERMISO_EMBARQUE: TStringField;
    QFcVtaCabINCOTERMS: TStringField;
    QFcVtaCabCBU: TStringField;
    QFcVtaCabASOCIADO_TIPO: TIntegerField;
    QFcVtaCabASOCIADO_PTOVTA: TIntegerField;
    QFcVtaCabASOCIADO_NRO: TFloatField;
    QFcVtaCabASOCIADO_CPTEFCH: TStringField;
    QFcVtaCabINF_X: TStringField;
    QFcVtaCabTIPO_OPERACION_EXPO: TStringField;
    QFcVtaCabMEDIO_TRANSPORTE_EXPO: TStringField;
    QFcVtaCabID_ADUANA: TIntegerField;
    QFcVtaCabREFERENCIA_EXPO: TStringField;
    QFcVtaCabCAMBIO_EXPO: TFloatField;
    QFcVtaCabVUELTO: TFloatField;
    QFcVtaCabID_TRANSPORTE: TIntegerField;
    QFcVtaCabID_DESTINO: TIntegerField;
    QFcVtaCabHONORARIOS: TFloatField;
    QFcVtaCabHONORARIOS_PROCENTAJ: TFloatField;
    QFcVtaCabDEDUCE_GASTOS: TStringField;
    QFcVtaDet: TFDQuery;
    QFcVtaDetID: TIntegerField;
    QFcVtaDetID_CABFAC: TIntegerField;
    QFcVtaDetTIPOCPBTE: TStringField;
    QFcVtaDetCLASECPBTE: TStringField;
    QFcVtaDetNROCPBTE: TStringField;
    QFcVtaDetRENGLON: TFloatField;
    QFcVtaDetFECHAVTA: TSQLTimeStampField;
    QFcVtaDetCODIGOARTICULO: TStringField;
    QFcVtaDetDETALLE: TStringField;
    QFcVtaDetUNIDAD: TStringField;
    QFcVtaDetMODO_GRAVAMEN: TStringField;
    QFcVtaDetCANTIDAD: TFloatField;
    QFcVtaDetUNIDADES_GRAVADO: TFloatField;
    QFcVtaDetUNIDADES_EXENTO: TFloatField;
    QFcVtaDetUNIDADES_TOTAL: TFloatField;
    QFcVtaDetCOSTO_GRAVADO: TFloatField;
    QFcVtaDetCOSTO_EXENTO: TFloatField;
    QFcVtaDetCOSTO_TOTAL: TFloatField;
    QFcVtaDetUNITARIO_GRAVADO: TFloatField;
    QFcVtaDetIVA_UNITARIO: TFloatField;
    QFcVtaDetUNITARIO_EXENTO: TFloatField;
    QFcVtaDetUNITARIO_TOTAL: TFloatField;
    QFcVtaDetDESGLOZAIVA: TStringField;
    QFcVtaDetTOTAL_EXENTO: TFloatField;
    QFcVtaDetTOTAL_GRAVADO: TFloatField;
    QFcVtaDetIVA_TOTAL: TFloatField;
    QFcVtaDetTOTAL: TFloatField;
    QFcVtaDetTIPOIVA_TASA: TIntegerField;
    QFcVtaDetTIPOIVA_SOBRETASA: TIntegerField;
    QFcVtaDetIVA_TASA: TFloatField;
    QFcVtaDetIVA_SOBRETASA: TFloatField;
    QFcVtaDetDESCUENTO: TFloatField;
    QFcVtaDetDEPOSITO: TIntegerField;
    QFcVtaDetMARGEN: TFloatField;
    QFcVtaDetAFECTA_STOCK: TStringField;
    QFcVtaDetCALCULA_SOBRETASA: TStringField;
    QFcVtaDetGRAVADO_IB: TStringField;
    QFcVtaDetCON_NRO_SERIE: TStringField;
    QFcVtaDetCON_CODIGO_BARRA: TStringField;
    QFcVtaDetIB_TASA: TFloatField;
    QFcVtaDetTIPOIB_TASA: TIntegerField;
    QFcVtaDetLOTE: TIntegerField;
    QFcVtaDetPRECIO_EDITABLE: TStringField;
    QFcVtaDetID_MONEDA: TIntegerField;
    QFcVtaDetCOTIZACION: TFloatField;
    QFcVtaDetDETALLE_ADICIONAL: TStringField;
    QFcVtaDetGRUPO_DETALLE: TIntegerField;
    QFcVtaDetCTA_ORDEN_ID_RECEPCION: TIntegerField;
    QFcVtaDetCTA_ORDEN_NROCPBTE: TStringField;
    QFcVtaDetCTA_ORDEN_TIPOCPBTE: TStringField;
    QFcVtaDetCTA_ORDEN_CALSECPBTE: TStringField;
    QFcVtaDetMESES_GTIA: TIntegerField;
    QFcVtaDetCODIGOBARRA: TStringField;
    QFcVtaDetDE_PRODUCCION: TStringField;
    QFcVtaDetUNITARIO_TOTAL_OLD: TFloatField;
    QFcVtaDetUNITARIO_IVA_OLD: TFloatField;
    QFcVtaDetUNI_C_REC: TStringField;
    QFcVtaDetITEM_OCOMPRA: TIntegerField;
    QFcVtaDetCONTROL_TRAZABILIDAD: TStringField;
    QFcVtaDetCANTIDAD_UNIDADES: TFloatField;
    QFcVtaDetPRESENTACION_CANT: TFloatField;
    QFcVtaDetPRESENTACION_UNIDAD: TStringField;
    QFcVtaDetID_DET_REMITO: TIntegerField;
    QFcVtaImp: TFDQuery;
    QFcVtaImpID_IMPUESTO: TIntegerField;
    QFcVtaImpID_FCVTACAB: TIntegerField;
    QFcVtaImpCODIGO_GRAVAMEN: TIntegerField;
    QFcVtaImpDETALLE: TStringField;
    QFcVtaImpNETO: TFloatField;
    QFcVtaImpTASA: TFloatField;
    QFcVtaImpIMPORTE: TFloatField;
    CDSFcVtaCabID_FC: TIntegerField;
    CDSFcVtaCabTIPOCPBTE: TStringField;
    CDSFcVtaCabCLASECPBTE: TStringField;
    CDSFcVtaCabCODIGO: TStringField;
    CDSFcVtaCabNROCPBTE: TStringField;
    CDSFcVtaCabLETRAFAC: TStringField;
    CDSFcVtaCabSUCFAC: TStringField;
    CDSFcVtaCabNUMEROFAC: TStringField;
    CDSFcVtaCabNOMBRE: TStringField;
    CDSFcVtaCabRAZONSOCIAL: TStringField;
    CDSFcVtaCabDIRECCION: TStringField;
    CDSFcVtaCabCPOSTAL: TStringField;
    CDSFcVtaCabLOCALIDAD: TStringField;
    CDSFcVtaCabTIPOIVA: TIntegerField;
    CDSFcVtaCabCUIT: TStringField;
    CDSFcVtaCabLISTAPRECIO: TIntegerField;
    CDSFcVtaCabFECHAVTA: TSQLTimeStampField;
    CDSFcVtaCabFECHAVTO: TSQLTimeStampField;
    CDSFcVtaCabFECHA_FISCAL: TSQLTimeStampField;
    CDSFcVtaCabCONDICIONVTA: TIntegerField;
    CDSFcVtaCabANULADO: TStringField;
    CDSFcVtaCabNRORTO: TStringField;
    CDSFcVtaCabN_OPERACION2: TFloatField;
    CDSFcVtaCabNETOGRAV1: TFloatField;
    CDSFcVtaCabNETOGRAV2: TFloatField;
    CDSFcVtaCabNETONOGRAV1: TFloatField;
    CDSFcVtaCabNETONOGRAV2: TFloatField;
    CDSFcVtaCabDSTO: TFloatField;
    CDSFcVtaCabDSTOIMPORTE: TFloatField;
    CDSFcVtaCabNETOEXEN1: TFloatField;
    CDSFcVtaCabNETOEXEN2: TFloatField;
    CDSFcVtaCabTOTAL: TFloatField;
    CDSFcVtaCabDEBE: TFloatField;
    CDSFcVtaCabIMPRESO: TStringField;
    CDSFcVtaCabOBSERVACION1: TStringField;
    CDSFcVtaCabOBSERVACION2: TStringField;
    CDSFcVtaCabCPTE_MANUAL: TStringField;
    CDSFcVtaCabSUCURSAL: TIntegerField;
    CDSFcVtaCabFACTURANRO: TStringField;
    CDSFcVtaCabZONA: TIntegerField;
    CDSFcVtaCabLDR: TIntegerField;
    CDSFcVtaCabDEPOSITO: TIntegerField;
    CDSFcVtaCabCALCULA_SOBRETASA: TStringField;
    CDSFcVtaCabDESGLOZAIVA: TStringField;
    CDSFcVtaCabNROENTREGA: TIntegerField;
    CDSFcVtaCabINGRESA_A_CTACTE: TStringField;
    CDSFcVtaCabINGRESA_LIBRO_IVA: TStringField;
    CDSFcVtaCabTIPO_REMITO: TStringField;
    CDSFcVtaCabIDREMITO: TIntegerField;
    CDSFcVtaCabREDUCIDA: TStringField;
    CDSFcVtaCabCOMSIONVENDEDOR: TFloatField;
    CDSFcVtaCabLIQUIDADA: TStringField;
    CDSFcVtaCabFECHA_LIQUIDACION: TSQLTimeStampField;
    CDSFcVtaCabVENDEDOR: TStringField;
    CDSFcVtaCabUSUARIO: TStringField;
    CDSFcVtaCabNC_CONTADO: TStringField;
    CDSFcVtaCabCAJA_POR_DEFECTO: TIntegerField;
    CDSFcVtaCabNRO_Z: TIntegerField;
    CDSFcVtaCabVALORES_RECIBIDOS: TFloatField;
    CDSFcVtaCabPERCEPCION_IB_TASA: TFloatField;
    CDSFcVtaCabPERCEPCION_IB_IMPORTE: TFloatField;
    CDSFcVtaCabPERCIBE_IB: TStringField;
    CDSFcVtaCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField;
    CDSFcVtaCabRENGLONES: TSmallintField;
    CDSFcVtaCabFECHA_HORA: TSQLTimeStampField;
    CDSFcVtaCabNOTAPEDIDO_ID: TIntegerField;
    CDSFcVtaCabNOTAPEDIDO_NROCPBTE: TStringField;
    CDSFcVtaCabID_FC_CLON: TIntegerField;
    CDSFcVtaCabPRESUPUESTO_ID: TIntegerField;
    CDSFcVtaCabPRESUPUESTO_NROCPBTE: TStringField;
    CDSFcVtaCabMONEDA_CPBTE: TIntegerField;
    CDSFcVtaCabMONEDA_CPBTE_COTIZACION: TFloatField;
    CDSFcVtaCabPOR_CTA_Y_ORDEN: TStringField;
    CDSFcVtaCabPROVEEDOR: TStringField;
    CDSFcVtaCabTIPO_VTA: TStringField;
    CDSFcVtaCabID_RECEPCION_GTIA: TIntegerField;
    CDSFcVtaCabJURIDICION: TIntegerField;
    CDSFcVtaCabJURIDICION_LOCALIDAD: TIntegerField;
    CDSFcVtaCabCON_GTIA_EXTENDIDA: TStringField;
    CDSFcVtaCabMESES_DE_GARANTIA: TIntegerField;
    CDSFcVtaCabPOLIZA: TStringField;
    CDSFcVtaCabVALOR_ASEGURADO: TFloatField;
    CDSFcVtaCabABONO_PERIODO: TStringField;
    CDSFcVtaCabNUMERO_OPERACION: TStringField;
    CDSFcVtaCabSALDO_ACTUAL_CC: TFloatField;
    CDSFcVtaCabID_NOTA_CAMBIO: TIntegerField;
    CDSFcVtaCabCAE: TStringField;
    CDSFcVtaCabCAE_VENCIMIENTO: TSQLTimeStampField;
    CDSFcVtaCabFACTURA_ELECTRONICA: TStringField;
    CDSFcVtaCabCANT_BULTOS: TIntegerField;
    CDSFcVtaCabCUOTAS_CC: TIntegerField;
    CDSFcVtaCabINTERVALO_CUOTA: TIntegerField;
    CDSFcVtaCabID_GARANTE: TIntegerField;
    CDSFcVtaCabPAGO_A_CTA: TFloatField;
    CDSFcVtaCabID_FC_CON_ADEL: TIntegerField;
    CDSFcVtaCabPRIMER_VTO: TSQLTimeStampField;
    CDSFcVtaCabANTICIPO_VTO: TSQLTimeStampField;
    CDSFcVtaCabCENTRO_COSTO: TIntegerField;
    CDSFcVtaCabID_PEDIDO_MORPHI: TIntegerField;
    CDSFcVtaCabID_PAIS: TSmallintField;
    CDSFcVtaCabCUIT_PAIS: TStringField;
    CDSFcVtaCabDOC_ADUANERO: TStringField;
    CDSFcVtaCabFECHA_CARGA: TSQLTimeStampField;
    CDSFcVtaCabNRO_INTERNO: TStringField;
    CDSFcVtaCabFOB_TOTAL: TFloatField;
    CDSFcVtaCabNOTAS: TStringField;
    CDSFcVtaCabDESTINO_DOCUMENTO: TStringField;
    CDSFcVtaCabPERMISO_EMBARQUE: TStringField;
    CDSFcVtaCabINCOTERMS: TStringField;
    CDSFcVtaCabCBU: TStringField;
    CDSFcVtaCabASOCIADO_TIPO: TIntegerField;
    CDSFcVtaCabASOCIADO_PTOVTA: TIntegerField;
    CDSFcVtaCabASOCIADO_NRO: TFloatField;
    CDSFcVtaCabASOCIADO_CPTEFCH: TStringField;
    CDSFcVtaCabINF_X: TStringField;
    CDSFcVtaCabTIPO_OPERACION_EXPO: TStringField;
    CDSFcVtaCabMEDIO_TRANSPORTE_EXPO: TStringField;
    CDSFcVtaCabID_ADUANA: TIntegerField;
    CDSFcVtaCabREFERENCIA_EXPO: TStringField;
    CDSFcVtaCabCAMBIO_EXPO: TFloatField;
    CDSFcVtaCabVUELTO: TFloatField;
    CDSFcVtaCabID_TRANSPORTE: TIntegerField;
    CDSFcVtaCabID_DESTINO: TIntegerField;
    CDSFcVtaCabHONORARIOS: TFloatField;
    CDSFcVtaCabHONORARIOS_PROCENTAJ: TFloatField;
    CDSFcVtaCabDEDUCE_GASTOS: TStringField;
    CDSFcVtaDetID: TIntegerField;
    CDSFcVtaDetID_CABFAC: TIntegerField;
    CDSFcVtaDetTIPOCPBTE: TStringField;
    CDSFcVtaDetCLASECPBTE: TStringField;
    CDSFcVtaDetNROCPBTE: TStringField;
    CDSFcVtaDetRENGLON: TFloatField;
    CDSFcVtaDetFECHAVTA: TSQLTimeStampField;
    CDSFcVtaDetCODIGOARTICULO: TStringField;
    CDSFcVtaDetDETALLE: TStringField;
    CDSFcVtaDetUNIDAD: TStringField;
    CDSFcVtaDetMODO_GRAVAMEN: TStringField;
    CDSFcVtaDetCANTIDAD: TFloatField;
    CDSFcVtaDetUNIDADES_GRAVADO: TFloatField;
    CDSFcVtaDetUNIDADES_EXENTO: TFloatField;
    CDSFcVtaDetUNIDADES_TOTAL: TFloatField;
    CDSFcVtaDetCOSTO_GRAVADO: TFloatField;
    CDSFcVtaDetCOSTO_EXENTO: TFloatField;
    CDSFcVtaDetCOSTO_TOTAL: TFloatField;
    CDSFcVtaDetUNITARIO_GRAVADO: TFloatField;
    CDSFcVtaDetIVA_UNITARIO: TFloatField;
    CDSFcVtaDetUNITARIO_EXENTO: TFloatField;
    CDSFcVtaDetUNITARIO_TOTAL: TFloatField;
    CDSFcVtaDetDESGLOZAIVA: TStringField;
    CDSFcVtaDetTOTAL_EXENTO: TFloatField;
    CDSFcVtaDetTOTAL_GRAVADO: TFloatField;
    CDSFcVtaDetIVA_TOTAL: TFloatField;
    CDSFcVtaDetTOTAL: TFloatField;
    CDSFcVtaDetTIPOIVA_TASA: TIntegerField;
    CDSFcVtaDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSFcVtaDetIVA_TASA: TFloatField;
    CDSFcVtaDetIVA_SOBRETASA: TFloatField;
    CDSFcVtaDetDESCUENTO: TFloatField;
    CDSFcVtaDetDEPOSITO: TIntegerField;
    CDSFcVtaDetMARGEN: TFloatField;
    CDSFcVtaDetAFECTA_STOCK: TStringField;
    CDSFcVtaDetCALCULA_SOBRETASA: TStringField;
    CDSFcVtaDetGRAVADO_IB: TStringField;
    CDSFcVtaDetCON_NRO_SERIE: TStringField;
    CDSFcVtaDetCON_CODIGO_BARRA: TStringField;
    CDSFcVtaDetIB_TASA: TFloatField;
    CDSFcVtaDetTIPOIB_TASA: TIntegerField;
    CDSFcVtaDetLOTE: TIntegerField;
    CDSFcVtaDetPRECIO_EDITABLE: TStringField;
    CDSFcVtaDetID_MONEDA: TIntegerField;
    CDSFcVtaDetCOTIZACION: TFloatField;
    CDSFcVtaDetDETALLE_ADICIONAL: TStringField;
    CDSFcVtaDetGRUPO_DETALLE: TIntegerField;
    CDSFcVtaDetCTA_ORDEN_ID_RECEPCION: TIntegerField;
    CDSFcVtaDetCTA_ORDEN_NROCPBTE: TStringField;
    CDSFcVtaDetCTA_ORDEN_TIPOCPBTE: TStringField;
    CDSFcVtaDetCTA_ORDEN_CALSECPBTE: TStringField;
    CDSFcVtaDetMESES_GTIA: TIntegerField;
    CDSFcVtaDetCODIGOBARRA: TStringField;
    CDSFcVtaDetDE_PRODUCCION: TStringField;
    CDSFcVtaDetUNITARIO_TOTAL_OLD: TFloatField;
    CDSFcVtaDetUNITARIO_IVA_OLD: TFloatField;
    CDSFcVtaDetUNI_C_REC: TStringField;
    CDSFcVtaDetITEM_OCOMPRA: TIntegerField;
    CDSFcVtaDetCONTROL_TRAZABILIDAD: TStringField;
    CDSFcVtaDetCANTIDAD_UNIDADES: TFloatField;
    CDSFcVtaDetPRESENTACION_CANT: TFloatField;
    CDSFcVtaDetPRESENTACION_UNIDAD: TStringField;
    CDSFcVtaDetID_DET_REMITO: TIntegerField;
    CDSFcVtaImpID_IMPUESTO: TIntegerField;
    CDSFcVtaImpID_FCVTACAB: TIntegerField;
    CDSFcVtaImpCODIGO_GRAVAMEN: TIntegerField;
    CDSFcVtaImpDETALLE: TStringField;
    CDSFcVtaImpNETO: TFloatField;
    CDSFcVtaImpTASA: TFloatField;
    CDSFcVtaImpIMPORTE: TFloatField;
    spIngresaMovCajaFD: TFDStoredProc;
    QFcVtaCabASOCIADO_ID_CPBTE: TIntegerField;
    CDSFcVtaCabASOCIADO_ID_CPBTE: TIntegerField;
    CDSFcVtaPercXML: TClientDataSet;
    DSFcVtaPercXML: TDataSource;
    QFcVtaCabCODIGO_ACTIVIDAD: TStringField;
    QFcVtaCabTRANSPORTE_UNIDAD: TIntegerField;
    QFcVtaCabTRANSPORTE_ADICIONAL: TIntegerField;
    QFcVtaCabID_CHOFER: TIntegerField;
    QFcVtaCabPERCIBE_IVA: TStringField;
    QFcVtaCabMINIMO_PERCI_IVA: TFloatField;
    QFcVtaCabCOT: TStringField;
    CDSFcVtaCabCODIGO_ACTIVIDAD: TStringField;
    CDSFcVtaCabTRANSPORTE_UNIDAD: TIntegerField;
    CDSFcVtaCabTRANSPORTE_ADICIONAL: TIntegerField;
    CDSFcVtaCabID_CHOFER: TIntegerField;
    CDSFcVtaCabPERCIBE_IVA: TStringField;
    CDSFcVtaCabMINIMO_PERCI_IVA: TFloatField;
    CDSFcVtaCabCOT: TStringField;
    QFcVtaDetPERCIBE_IVA: TStringField;
    QFcVtaDetTASA_PERCEP_IVA: TFloatField;
    QFcVtaDetID_TASA_PERCEPCION_IVA: TIntegerField;
    QFcVtaDetPERCEPCION_IVA_DIFERENCIAL: TStringField;
    QFcVtaDetPRESENTACION_TOLERANCIA: TFloatField;
    CDSFcVtaDetPERCIBE_IVA: TStringField;
    CDSFcVtaDetTASA_PERCEP_IVA: TFloatField;
    CDSFcVtaDetID_TASA_PERCEPCION_IVA: TIntegerField;
    CDSFcVtaDetPERCEPCION_IVA_DIFERENCIAL: TStringField;
    CDSFcVtaDetPRESENTACION_TOLERANCIA: TFloatField;
    IBGPercepcionIVA: TIBGenerator;
    DSPPercepcionIVA: TDataSetProvider;
    CDSPercepcionIVA: TClientDataSet;
    CDSPercepcionIVAID_PERCEPCION: TIntegerField;
    CDSPercepcionIVACODIGO_PERCEPCION: TIntegerField;
    CDSPercepcionIVADETALLE: TStringField;
    CDSPercepcionIVAID_FCVTACAB: TIntegerField;
    CDSPercepcionIVANETO: TFloatField;
    CDSPercepcionIVATASA: TFloatField;
    CDSPercepcionIVAIMPORTE: TFloatField;
    CDSPercepcionIVACODIGOREGIMEN: TIntegerField;
    DSPercepcionIVA: TDataSource;
    QPercepcionIvaVta: TFDQuery;
    QPercepcionIvaVtaID_PERCEPCION: TIntegerField;
    QPercepcionIvaVtaCODIGO_PERCEPCION: TIntegerField;
    QPercepcionIvaVtaDETALLE: TStringField;
    QPercepcionIvaVtaID_FCVTACAB: TIntegerField;
    QPercepcionIvaVtaNETO: TFloatField;
    QPercepcionIvaVtaTASA: TFloatField;
    QPercepcionIvaVtaIMPORTE: TFloatField;
    QPercepcionIvaVtaCODIGOREGIMEN: TIntegerField;
    chModoFiscal: TAdvOfficeRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure edSucExit(Sender: TObject);
    procedure edNumExit(Sender: TObject);
    procedure dbcSucursalChange(Sender: TObject);
    procedure cbTipoChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btsalirClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure dbcComprobantesChange(Sender: TObject);
    procedure QComprobantesFISCALGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QComprobantesFACTURAELECTRONICAGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure chModoFiscalRadioButtonClick(Sender: TObject);
  private
    { Private declarations }
    FIdFactura:integer;
    FSucursal :Integer;
    FDeposito :Integer;
    FTipoCpbte:String;
    FLetra:String;
    FPrefijo:String;
    FNumero:String;
    FTransformada:Boolean;
    FLeyenda:String;
    FFiscal:string;
  public
    { Public declarations }
  published
    property sucursal:integer read FSucursal write FSucursal;
    property Deposito:integer read FDeposito write FDeposito;
    property Letra:String read FLetra write FLetra;
    property Prefijo:String read FPrefijo write FPrefijo;
    property Numero:String read FNumero write FNumero;
    property Transformada:Boolean read FTransformada write FTransformada;
    property IdFactura:Integer read FIdFactura write FIdFactura;
    property Leyenda:String read FLeyenda write FLeyenda;
    property Fiscal:String read FFiscal write FFiscal ;

  end;

var
    FormTransformaFactura: TFormTransformaFactura;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormTransformaFactura.btOkClick(Sender: TObject);
var
Nombre,NumeroXML,TipoXML,ClaseXML:String;
I:iNTEGER;
ASC_Tipo,ASC_PtoVta: Integer;
ASC_Nro            : Double;
ASC_CpbteFch       : String;
ASC_IDCPBTE        : Integer;
Detalle            : String;
begin
  FIdFactura:=-1;
  if VarIsNull(dbcCaja.KeyValue) Then
    RAISE Exception.Create('No hay caja seleccionada');
  if Trim(dbcSucursal.Text)='' then
    RAISE Exception.Create('Falta Sucursal...');

  if Trim(dbcComprobantes.Text)='' then
    RAISE Exception.Create('Falta Comprobante...');

  if Trim(dbcDeposito.Text)='' then
    RAISE Exception.Create('Falta Deposito...');

  CDSFcVtaCab.Open;
  CDSFcVtaDet.Open;
  CDSFcVtaImp.Open;
  CDSPercepcionIVA.Open;

  CDSFcVtaCabXML.First;
  while not(CDSFcVtaCabXML.Eof) do
    begin
      begin
        //Inserto la cabecera
        CDSFcVtaCab.Insert;
        For i:=0 to CDSFcVtaCabXML.FieldCount-1 do
          begin
            if CDSFcVtaCab.FindField(CDSFcVtaCabXML.Fields[i].FieldName)<>nil Then
              begin
                Nombre:=CDSFcVtaCabXML.Fields[i].FieldName;
                CDSFcVtaCab.FieldByName(Nombre).Value := CDSFcVtaCabXML.FieldByName(Nombre).Value;
                if Nombre='NROCPBTE' then NumeroXML   := CDSFcVtaCabXML.FieldByName(Nombre).Value;
                if Nombre='TIPOCPBTE' then TipoXML    := CDSFcVtaCabXML.FieldByName(Nombre).Value;
                if Nombre='CLASECPBTE' then ClaseXML  := CDSFcVtaCabXML.FieldByName(Nombre).Value;
                try
                 // if CDSFcVtaCabXML.FieldByName('TIPOCPBTE').Value='NC' then
                    begin
                      if CDSFcVtaCabXML.FieldByName('MUESTRACODIGOAFIP').AsString<>'' then
                        if Nombre='ASOCIADO_TIPO' then ASC_Tipo        := CDSFcVtaCabXML.FieldByName('MUESTRACODIGOAFIP').AsInteger
                      else
                        if Nombre='ASOCIADO_TIPO' then ASC_Tipo        := 1;
                      if Nombre='ASOCIADO_PTOVTA' then ASC_PtoVta    := CDSFcVtaCabXML.FieldByName('SUCFAC').AsInteger;
                      if Nombre='ASOCIADO_NRO' then ASC_Nro          := CDSFcVtaCabXML.FieldByName('NUMEROFAC').AsFloat;
                      if Nombre='ASOCIADO_CPTEFCH' then ASC_CpbteFch := FormatDateTime('yyyymmdd', CDSFcVtaCabXML.FieldByName('FECHAVTA').AsDateTime);
                      if Nombre='ASOCIADO_ID_CPBTE' then ASC_IDCPBTE := CDSFcVtaCabXML.FieldByName('ID_FC').AsInteger;
                    end;
                finally

                end;
              end;
          end;

        CDSFcVtaCab.FieldByName('sucursal').Value               := dbcSucursal.LookupSource.DataSet.FieldByName('Codigo').Value;
        CDSFcVtaCab.FieldByName('TipoCpbte').Value              := cbTipo.Text;
        CDSFcVtaCab.FieldByName('ClaseCpbte').Value             := dbcComprobantes.LookupSource.DataSet.FieldByName('Clase_comprob').Value;
        CDSFcVtaCab.FieldByName('deposito').Value               := dbcDeposito.LookupSource.DataSet.FieldByName('id').Value;
        CDSFcVtaCab.FieldByName('caja_por_defecto').Value       := dbcCaja.KeyValue;
        CDSFcVtaCab.FieldByName('Letrafac').Value               := edLetra.Text;
        CDSFcVtaCab.FieldByName('sucfac').Value                 := edSuc.Text;
        CDSFcVtaCab.FieldByName('Numerofac').Value              := edNum.Text;
        CDSFcVtaCab.FieldByName('NroCpbte').Value               := CDSFcVtaCab.FieldByName('LetraFac').Value+
                                                                   CDSFcVtaCab.FieldByName('SucFac').Value+
                                                                   CDSFcVtaCab.FieldByName('NumeroFac').Value;
        CDSFcVtaCab.FieldByName('Ingresa_a_ctacte').Value       := dbcComprobantes.LookupSource.DataSet.FieldByName('Afecta_cc').Value;
        CDSFcVtaCab.FieldByName('Ingresa_Libro_iva').Value      := dbcComprobantes.LookupSource.DataSet.FieldByName('Afecta_IVA').Value;
        CDSFcVtaCab.FieldByName('DesglozaIva').Value            := dbcComprobantes.LookupSource.DataSet.FieldByName('Desgloza_Iva').Value;
        CDSFcVtaCab.FieldByName('CAE').AsString                 := '0';
        CDSFcVtaCab.FieldByName('FACTURA_ELECTRONICA').AsString := 'N';
        CDSFcVtaCab.FieldByName('CAE_VENCIMIENTO').Clear;
        CDSFcVtaCab.FieldByName('Usuario').AsString             := DMMain_FD.UsuarioActivo;
        CDSFcVtaCab.FieldByName('FECHA_HORA').AsDateTime        := Now;
        CDSFcVtaCab.FieldByName('ANULADO').AsString             := 'N';

        CDSFcVtaCab.FieldByName('FECHA_FISCAL').AsDateTime      := CDSFcVtaCabFECHAVTA.AsDateTime;
        if (Tag=99) OR (TAG=98) then // es nota de credito automatica
          begin
            CDSFcVtaCab.FieldByName('FECHAVTA').AsDateTime      := Date;
            CDSFcVtaCab.FieldByName('FECHA_FISCAL').AsDateTime  := CDSFcVtaCabFECHAVTA.AsDateTime;
            CDSFcVtaCab.FieldByName('OBSERVACION1').AsString    := FLeyenda;
            CDSFcVtaCabASOCIADO_TIPO.Value                      := ASC_Tipo;
            CDSFcVtaCabASOCIADO_PTOVTA.Value                    := ASC_PtoVta;
            CDSFcVtaCabASOCIADO_NRO.Value                       := ASC_Nro;
            CDSFcVtaCabASOCIADO_CPTEFCH.Value                   := ASC_CpbteFch;
            CDSFcVtaCabASOCIADO_ID_CPBTE.Value                  := ASC_IDCPBTE;
          end;

        if dbcComprobantes.LookupSource.DataSet.FieldByName('FACTURAELECTRONICA').Value='S' then
          CDSFcVtaCab.FieldByName('FACTURA_ELECTRONICA').AsString :='S';

        if cbTipo.Text<>'NC' then
           CDSFcVtaCab.FieldByName('NC_contado').Value        :='N';

        if cbTipo.Text='FO' then
          begin
            CDSFcVtaCab.FieldByName('CondicionVta').Value := 0;
            CDSFcVtaCab.FieldByName('FechaVto').Value     := CDSFcVtaCab.FieldByName('FechaVta').Value;
          end
        else
          if (cbTipo.Text<>'FO') and (CDSFcVtaCab.FieldByName('CondicionVta').Value=0) then
             begin
               QPrimerConVta.Close;
               QPrimerConVta.ParamByName('codigo').Value:=CDSFcVtaCab.FieldByName('codigo').Value;
               QPrimerConVta.Open;
               CDSFcVtaCab.FieldByName('CondicionVta').Value:=QPrimerConVta.Fields[0].AsInteger;
               QPrimerConVta.Close;
             end;

        CDSFcVtaCab.FieldByName('id_fc').Value:=IBGFcVtaCab.IncrementFD(1);
        if (CDSFcVtaCabLETRAFAC.Value='B') and (CDSFcVtaCabTIPOIVA.Value=1) Then
           raise Exception.Create('No es compatible con la condicion de Iva ');

        //Paso al Detalle
        if (tag=98) Then // Si biene de una NC por Diferencia de Entregas
           begin
             CDSFcVtaDetXML.Filter:='MUESTADIFERENCIAENTREGA >0';
             CDSFcVtaDetXML.Filtered:=True;
           end;

        CDSFcVtaDetXML.First;
        while not(CDSFcVtaDetXML.Eof) do
          begin
            //Inserto Detalle

            CDSFcVtaDet.Insert;
            For i:=0 to CDSFcVtaDetXML.FieldCount-1 do
              begin
                if CDSFcVtaDet.FindField(CDSFcVtaDetXML.Fields[i].FieldName)<>nil Then
                  begin
                    Nombre:=CDSFcVtaDetXML.Fields[i].FieldName;
                    CDSFcVtaDet.FieldByName(Nombre).Value:=CDSFcVtaDetXML.FieldByName(Nombre).Value;
                  end;
              end;
            CDSFcVtaDet.FieldByName('id').Value         := IBGFcVtaDet.IncrementFD(1);
            CDSFcVtaDet.FieldByName('id_cabfac').Value  := CDSFcVtaCab.FieldByName('id_fc').Value;
            CDSFcVtaDet.FieldByName('deposito').Value   := dbcDeposito.LookupSource.DataSet.FieldByName('id').Value;
            CDSFcVtaDet.FieldByName('tipoCpbte').Value  := cbTipo.Text;
            CDSFcVtaDet.FieldByName('ClaseCpbte').Value := dbcComprobantes.LookupSource.DataSet.FieldByName('Clase_comprob').Value;
            CDSFcVtaDet.FieldByName('NroCpbte').Value   := CDSFcVtaCab.FieldByName('NroCpbte').Value;
            CDSFcVtaDet.FieldByName('desglozaiva').Value:= CDSFcVtaCab.FieldByName('DesglozaIva').Value;
            CDSFcVtaDet.FieldByName('FECHAVTA').Value   := CDSFcVtaCab.FieldByName('FECHAVTA').Value;

            if Tag=98 then
              CDSFcVtaDetCANTIDAD.AsFloat                 := CDSFcVtaDetXML.FieldByName('MUESTADIFERENCIAENTREGA').AsFLoat;

            CDSFcVtaDet.Post;
            CDSFcVtaDetXML.Next;
          end;


        //Paso al Iva
        CDSFcVtaImpXML.First;
        while not(CDSFcVtaImpXML.Eof) do
          begin
            //Inserto Detalle
            CDSFcVtaImp.Insert;
            For i:=0 to CDSFcVtaImpXML.FieldCount-1 do
              begin
                if CDSFcVtaImp.FindField(CDSFcVtaImpXML.Fields[i].FieldName)<>nil Then
                  begin
                    Nombre:=CDSFcVtaImpXML.Fields[i].FieldName;
                    CDSFcVtaImp.FieldByName(Nombre).Value:=CDSFcVtaImpXML.FieldByName(Nombre).Value;
                  end;
              end;
            CDSFcVtaImp.FieldByName('id_impuesto').Value  := IBGImpuestos.IncrementFD(1);
            CDSFcVtaImp.FieldByName('id_FcVtaCab').Value  := CDSFcVtaCab.FieldByName('id_fc').Value;
            CDSFcVtaImp.Post;
            CDSFcVtaImpXML.Next;
          end;

   //Paso al PercpIva
        CDSFcVtaPercXML.First;
        while not(CDSFcVtaPercXML.Eof) do
          begin
            //Inserto Detalle
            CDSPercepcionIVA.Insert;
            For i:=0 to CDSFcVtaPercXML.FieldCount-1 do
              begin
                if CDSPercepcionIVA.FindField(CDSFcVtaPercXML.Fields[i].FieldName)<>nil Then
                  begin
                    Nombre:=CDSFcVtaPercXML.Fields[i].FieldName;
                    CDSPercepcionIVA.FieldByName(Nombre).Value:=CDSFcVtaPercXML.FieldByName(Nombre).Value;
                  end;
              end;
            CDSPercepcionIVA.FieldByName('id_percepcion').Value  := IBGImpuestos.IncrementFD(1);
            CDSPercepcionIVA.FieldByName('id_FcVtaCab').Value    := CDSFcVtaCab.FieldByName('id_fc').Value;
            CDSPercepcionIVA.Post;
            CDSFcVtaPercXML.Next;
          end;
        CDSFcVtaCabCAJA_POR_DEFECTO.Value:=dbcCaja.KeyValue;
        if chImpresos.Checked then
          CDSFcVtaCabIMPRESO.Value         :='N'
        else
          CDSFcVtaCabIMPRESO.Value         :='S';


        // para controlar campos requeridos...
//        For i:=0 to CDSFcVtaCab.FieldCount-1 do
//          begin
//            if CDSFcVtaCab.FindField(CDSFcVtaCab.Fields[i].FieldName)<>nil Then
//              begin
//                Nombre:=CDSFcVtaCab.Fields[i].FieldName;
//                if (CDSFcVtaCab.FieldByName(Nombre).Required=True)
//                  Then ShowMessage('Campo : '+Nombre +  '= '+(CDSFcVtaCab.FieldByName(Nombre).AsString));
//              end;
//          end;

        CDSFcVtaCab.Post;

        if CDSFcVtaCab.State<>dsbrowse Then CDSFcVtaCab.Post;
        if CDSFcVtaDet.State<>dsbrowse Then CDSFcVtaDet.Post;
        if CDSFcVtaImp.State<>dsbrowse Then CDSFcVtaImp.Post;
        if CDSPercepcionIVA.State<>dsbrowse Then CDSPercepcionIVA.Post;

        DMMain_FD.fdcGestion.StartTransaction;
        Try
          // Si es de contado ingreso el mov de caja
          CDSFcVtaCab.ApplyUpdates(0);
          CDSFcVtaDet.ApplyUpdates(0);
          CDSFcVtaImp.ApplyUpdates(0);
          CDSPercepcionIVA.ApplyUpdates(0);

          if (CDSFcVtaCabTIPOCPBTE.Value='FO')  Then
            begin
              spIngresaMovCajaFD.Close;
              spIngresaMovCajaFD.ParamByName('ID_CPBTE').AsInteger       := CDSFcVtaCabID_FC.AsInteger;
              spIngresaMovCajaFD.ParamByName('tipo_comprob').AsString    := CDSFcVtaCabTIPOCPBTE.AsString;
              spIngresaMovCajaFD.ParamByName('clase_comprob').AsString   := CDSFcVtaCabCLASECPBTE.AsString;
              spIngresaMovCajaFD.ParamByName('nrocpbte').AsString        := CDSFcVtaCabNROCPBTE.AsString;
              spIngresaMovCajaFD.ParamByName('id_cuenta_caja').AsInteger := dbcCaja.KeyValue;
              spIngresaMovCajaFD.ParamByName('fecha_movimiento').AsDate  := CDSFcVtaCabFECHAVTA.AsDateTime;
              spIngresaMovCajaFD.ParamByName('debe').AsFloat             := CDSFcVtaCabTOTAL.AsFloat;
              spIngresaMovCajaFD.ParamByName('haber').AsFloat            := 0;
              spIngresaMovCajaFD.ParamByName('tipooperacion').AsString   := 'I';
              spIngresaMovCajaFD.ExecProc;
              spIngresaMovCajaFD.Close;
            end;

          if CDSFcVtaCabXML.FieldByName('Anulado').Value='S' Then
            begin
              CDSFcVtaCab.edit;
              CDSFcVtaCab.FieldByName('Anulado').Value:='S';
              CDSFcVtaCab.Post;
              CDSFcVtaCab.ApplyUpdates(0);
            end;

          spIngresaMovCajaFD.Close;
          // **** Ingreso en el Log File  **************
          Detalle:= 'Fac.Clonada Para Tansformar: '+TipoXML+'-'+ClaseXML+'-'+NumeroXML+' a '+
                    cbTipo.Text+'-'+
                    dbcComprobantes.LookupSource.DataSet.FieldByName('Clase_comprob').Value+'-'+
                    edLetra.Text+edSuc.Text+edNum.Text+
                    ' Cliente: '+
                    CDSFcVtaCabRAZONSOCIAL.Value+
                    ' Importe: '+
                    FormatFloat('0.00',CDSFcVtaCabTOTAL.AsFloat);

          DMMain_FD.LogFileFD(0,5,Detalle,'FACVTA');
          // ******************************************
          DMMain_FD.fdcGestion.Commit;

          FTransformada := True;
          FIdFactura    := CDSFcVtaCabID_FC.Value;
          CDSFcVtaCab.Close;
          CDSFcVtaDet.Close;
          CDSFcVtaImp.Close;
          CDSPercepcionIVA.Close;

        except
          spIngresaMovCajaFD.Close;
          DMMain_FD.fdcGestion.Rollback;
          FTransformada:=False;
          FIdFactura:=-1;
          CDSFcVtaCab.Close;
          CDSFcVtaDet.Close;
          CDSFcVtaImp.Close;
          CDSPercepcionIVA.Close;
          ShowMessage('Transacción no finalizada....!');
        end;
      CDSFcVtaCabXML.Next;
      end;
      if FTransformada then
        ShowMessage('Operación Exitosa .... Finalizada...');
      CDSFcVtaCabXML.Close;
      CDSFcVtaImpXML.Close;
      CDSFcVtaDetXML.Close;
      CDSFcVtaPercXML.Close;
      btsalirClick(Sender);
    end;

end;

procedure TFormTransformaFactura.btsalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFormTransformaFactura.cbTipoChange(Sender: TObject);
begin
  QComprobantes.Close;
  QComprobantes.ParamByName('sucursal').Value := dbcSucursal.KeyValue;
  QComprobantes.ParamByName('tipo').Value     := cbTipo.Text;
  QComprobantes.ParamByName('iva').Value      := FFiscal;
  if (FLetra<>'A') and (FLetra<>'B') and (FLetra<>'C') then
    QComprobantes.ParamByName('Letra').Value      := '*'
  else
    QComprobantes.ParamByName('Letra').Value      := FLetra;
  QComprobantes.Open;
end;

procedure TFormTransformaFactura.chModoFiscalRadioButtonClick(Sender: TObject);
begin
 case chModoFiscal.ItemIndex of
    0:FFiscal:='S';
    1:FFiscal:='N';
    2:FFiscal:='*';
  end;
  QComprobantes.Close;
  QComprobantes.ParamByName('sucursal').Value := dbcSucursal.KeyValue;
  QComprobantes.ParamByName('tipo').Value     := cbTipo.Text;
  QComprobantes.ParamByName('iva').Value      := FFiscal;
  if (FLetra<>'A') and (FLetra<>'B') and (FLetra<>'C') then
    QComprobantes.ParamByName('Letra').Value      := '*'
  else
    QComprobantes.ParamByName('Letra').Value      := FLetra;
  QComprobantes.Open;
end;

procedure TFormTransformaFactura.dbcComprobantesChange(Sender: TObject);
begin
  edLetra.Text:=dbcComprobantes.LookupSource.DataSet.FieldByName('Letra').Value;
  if ( dbcComprobantes.LookupSource.DataSet.FieldByName('Prefijo').AsString<>'' ) then
    begin
      edSuc.Text  :=dbcComprobantes.LookupSource.DataSet.FieldByName('Prefijo').Value;
      edNum.Text  :=dbcComprobantes.LookupSource.DataSet.FieldByName('Numero').Value;
    end;
end;

procedure TFormTransformaFactura.dbcSucursalChange(Sender: TObject);
begin
  QComprobantes.Close;
  QComprobantes.ParamByName('sucursal').Value := dbcSucursal.KeyValue;
  QComprobantes.ParamByName('tipo').Value     := cbTipo.Text;
  QComprobantes.ParamByName('iva').Value      := FFiscal;
  if (FLetra<>'A') and (FLetra<>'B') and (FLetra<>'C') then
    QComprobantes.ParamByName('Letra').Value      := '*'
  else
    QComprobantes.ParamByName('Letra').Value      := FLetra;
  QComprobantes.Open;

  QDepositos.Close;
  QDepositos.ParamByName('suc').Value:=-1;//dbcSucursal.KeyValue;
  QDepositos.Open;

end;

procedure TFormTransformaFactura.edNumExit(Sender: TObject);
begin
  edNum.Text:=copy('00000000',1,8-length(trim(edNum.Text)))+trim(edNum.Text);

end;

procedure TFormTransformaFactura.edSucExit(Sender: TObject);
begin
  edSuc.Text:=copy('00000000',1,4-length(trim(edSuc.Text)))+trim(edSuc.Text);
end;

procedure TFormTransformaFactura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QSucursal.Close;
  QComprobantes.Close;
  QCaja.Close;
  QDepositos.Close;
  CDSFcVtaCab.Close;
  CDSFcVtaDet.Close;
  CDSFcVtaImp.Close;

  CDSFcVtaCabXML.Close;
  CDSFcVtaDetXML.Close;
  CDSFcVtaImpXML.Close;

  Action:=cafree;
end;

procedure TFormTransformaFactura.FormCreate(Sender: TObject);
begin
  AutoSize:=true;
  if Tag=99 Then chImpresos.Checked:=True;
end;

procedure TFormTransformaFactura.FormDestroy(Sender: TObject);
begin
  FormTransformaFactura:=nil;
end;

procedure TFormTransformaFactura.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) and
    (not (ActiveControl is Tbutton)) and
    (not (ActiveControl is TFrame)) and
    (not (ActiveControl is TDBMemo))
    then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TFormTransformaFactura.FormShow(Sender: TObject);
begin
  if FFiscal='' then
    FFiscal:='*';
  if FFiscal='*' then
    chModoFiscal.ItemIndex:=2
   else
     if FFiscal='S' then
      chModoFiscal.ItemIndex:=0
     else
       if FFiscal='N' then
         chModoFiscal.ItemIndex:=1;


  QSucursal.Close;
  QSucursal.Open;

  QSucursal.Locate('codigo',FSucursal,[]);

  dbcSucursal.KeyValue := FSucursal;
 // dbcDeposito.KeyValue := FDeposito;

  QComprobantes.Close;
  QComprobantes.ParamByName('sucursal').Value := dbcSucursal.KeyValue;
  QComprobantes.ParamByName('tipo').Value     := cbTipo.Text;
  QComprobantes.ParamByName('iva').Value      := FFiscal;
  if (FLetra<>'A') and (FLetra<>'B') and (FLetra<>'C') then
    QComprobantes.ParamByName('Letra').Value      := '*'
  else
    QComprobantes.ParamByName('Letra').Value      := FLetra;
  QComprobantes.Open;


  QDepositos.Close;
  QDepositos.ParamByName('suc').Value         := dbcSucursal.KeyValue;
  QDepositos.Open;

  QCaja.Close;
  QCaja.Open;

  if DMMain_FD.CajaSeleccionada>0 Then
    dbcCaja.KeyValue:=DMMain_FD.CajaSeleccionada;

  edSuc.Text  :=Prefijo;
  edNum.Text  :=Numero;
  edLetra.Text:=Letra;

  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');

//  if Not(Assigned(FormBuscaDirectorio)) Then
//    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
//  FormBuscaDirectorio.Directorio:=(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
//  FormBuscaDirectorio.ShowModal;

//  if FormBuscaDirectorio.ModalResult=mrOk Then
    begin
      CDSFcVtaCabXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcVtaCab.XML');
      CDSFcVtaDetXML.MasterSource   :=DSFcVtaCabXML;
      CDSFcVtaDetXML.MasterFields   :='id_fc';
      CDSFcVtaDetXML.IndexFieldNames:='id_cabfac';
      CDSFcVtaDetXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\fcvtadet.xml');
      CDSFcVtaImpXML.MasterSource   :=DSFcVtaCabXML;
      CDSFcVtaImpXML.MasterFields   :='id_fc';
      CDSFcVtaImpXML.IndexFieldNames:='ID_FCVTACAB';
      CDSFcVtaImpXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\fcvtaimp.xml');
      CDSFcVtaCabXML.IndexFieldNames:='nrocpbte';

      CDSFcVtaPercXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcVtaPerc.XML');
     

    end;
//  else
//   ShowMessage('Directorio no valido...');

  FTransformada:=False;
  if (Tag=99) or (Tag=98) Then
    begin
     chImpresos.Checked   := True;
     dbcDeposito.KeyValue := CDSFcVtaCabXML.FieldByName('Deposito').Value;
     dbcComprobantes.LookupSource.DataSet.Locate('LETRA',Letra,[]);
   end;


end;

procedure TFormTransformaFactura.QComprobantesFACTURAELECTRONICAGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.AsString='S' then
    Text:='Elect'
  else
    Text:='-----';
end;

procedure TFormTransformaFactura.QComprobantesFISCALGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.AsString='S' then
    Text:='Fiscal'
  else
    Text:='-----';


end;

end.
