unit DMCompraReducida;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, IBGenerator, Db, Provider, DBClient, 
 Librerias, FMTBcd, SqlExpr;

type
  TDatosCompraReducida = class(TDataModule)
    DSPCompraCab: TDataSetProvider;
    DSPProveedor: TDataSetProvider;
    DSPCondCompra: TDataSetProvider;
    DSPIva: TDataSetProvider;
    DSPSucursal: TDataSetProvider;
    DSPImpuestos: TDataSetProvider;
    DSPPercepcionIVA: TDataSetProvider;
    DSPPercepcionIB: TDataSetProvider;
    DSPDeposito: TDataSetProvider;
    IBGFcCompCab: TIBGenerator;
    IBGImpuestos: TIBGenerator;
    IBGPercepcionIB: TIBGenerator;
    IBGPercepcionIVA: TIBGenerator;
    DSPInscripcion: TDataSetProvider;
    DSPCajaMov: TDataSetProvider;
    DSPMovEfectivo: TDataSetProvider;
    IBGId_Efectivo: TIBGenerator;
    IBGId_Caja_Mov: TIBGenerator;
    DSPCajaCab: TDataSetProvider;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    CDSCondCompra: TClientDataSet;
    CDSCondCompraCODIGOPROVEE: TStringField;
    CDSCondCompraCODIGOPAGO: TIntegerField;
    CDSCondCompraDETALLE: TStringField;
    CDSCondCompraDIAS: TIntegerField;
    CDSCondCompraDESCUENTO: TFMTBCDField;
    CDSCondCompraDESCUENTO_FPAGO: TFMTBCDField;
    DSPBuscaCondCompra: TDataSetProvider;
    CDSBuscaCondCompra: TClientDataSet;
    StringField: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    FloatField2: TFloatField;
    DSPTasaPercepIVA: TDataSetProvider;
    CDSTasaPercepIVA: TClientDataSet;
    CDSTasaPercepIVACODIGO: TIntegerField;
    CDSTasaPercepIVADESCRIPCION: TStringField;
    CDSTasaPercepIVATASA: TFMTBCDField;
    CDSTasaPercepIVAMINIMOAPLICABLE: TFMTBCDField;
    CDSTasaPercepIVACOLUMNA: TSmallintField;
    CDSTasaPercepIVACODIGOREGIMEN: TIntegerField;
    DSPTasaPercepIIBB: TDataSetProvider;
    CDSTasaPercepIIBB: TClientDataSet;
    CDSTasaPercepIIBBCODIGO: TIntegerField;
    CDSTasaPercepIIBBDESCRIPCION: TStringField;
    CDSTasaPercepIIBBTASA: TFMTBCDField;
    CDSTasaPercepIIBBMINIMOAPLICABLE: TFMTBCDField;
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
    CDSCompraCabFECHACOMPRA: TSQLTimeStampField;
    CDSCompraCabFECHAVTO: TSQLTimeStampField;
    CDSCompraCabCONDICIONCOMPRA: TIntegerField;
    CDSCompraCabANULADO: TStringField;
    CDSCompraCabORDENCOMPRA: TStringField;
    CDSCompraCabN_OPERACION2: TFMTBCDField;
    CDSCompraCabNETOGRAV1: TFMTBCDField;
    CDSCompraCabDSTO: TFMTBCDField;
    CDSCompraCabDSTOIMPORTE: TFMTBCDField;
    CDSCompraCabNETOGRAV2: TFMTBCDField;
    CDSCompraCabNETOEXEN1: TFMTBCDField;
    CDSCompraCabNETOEXEN2: TFMTBCDField;
    CDSCompraCabIMPORTEEXCLUIDO2: TFMTBCDField;
    CDSCompraCabIMPORTEEXCLUIDO1: TFMTBCDField;
    CDSCompraCabTOTAL: TFMTBCDField;
    CDSCompraCabDEBE: TFMTBCDField;
    CDSCompraCabAPLICA: TStringField;
    CDSCompraCabOBSERVACION1: TStringField;
    CDSCompraCabOBSERVACION2: TStringField;
    CDSCompraCabSUCURSALCOMPRA: TIntegerField;
    CDSCompraCabZONA: TIntegerField;
    CDSCompraCabDEPOSITO: TIntegerField;
    CDSCompraCabDESGLOZAIVA: TStringField;
    CDSCompraCabCALCULA_SOBRETASA: TStringField;
    CDSCompraCabFECHAFISCAL: TSQLTimeStampField;
    CDSCompraCabNETOMONOTRIBUTO1: TFMTBCDField;
    CDSCompraCabNETOMONOTRIBUTO2: TFMTBCDField;
    CDSCompraCabCPBTE_INTERNO: TStringField;
    CDSCompraCabINGRESA_A_CTACTE: TStringField;
    CDSCompraCabINGRESA_LIBRO_IVA: TStringField;
    CDSCompraCabREDUCIDA: TStringField;
    CDSCompraCabTIPO_PROVEEDOR: TStringField;
    CDSCompraCabJURIDICCION: TIntegerField;
    CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE: TFMTBCDField;
    CDSCompraCabFECHA_HORA: TSQLTimeStampField;
    CDSCompraCabUSUARIO: TStringField;
    CDSCompraCabTOTAL_UNIDADES: TFMTBCDField;
    CDSCompraCabMONEDA_CPBTE: TIntegerField;
    CDSCompraCabMONEDA_CPBTE_COTIZACION: TFMTBCDField;
    CDSCompraCabMUESTRACONDCOMPRA: TStringField;
    CDSCompraCabMUESTRADEPOSITO: TStringField;
    CDSCompraCabMUESTRASUCURSAL: TStringField;
    CDSCompraCabMUESTRACOMPROBANTE: TStringField;
    CDSCompraCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSCompraCabMUESTRAMONEDACPBTE: TStringField;
    CDSCompraCabMUESTRASIGNOMONEDACPBTE: TStringField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalRECARGO: TFMTBCDField;
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
    CDSProveedorSALDO_INICIAL: TFMTBCDField;
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
    CDSProveedorMUESTRATASARETIIBB: TFMTBCDField;
    CDSProveedorMUESTRAMINIMPONIRETIIBB: TFMTBCDField;
    CDSDeposito: TClientDataSet;
    CDSDepositoID: TIntegerField;
    CDSDepositoNOMBRE: TStringField;
    CDSDepositoSUCURSAL: TIntegerField;
    CDSImpuestos: TClientDataSet;
    CDSImpuestosID_IMPUESTO: TIntegerField;
    CDSImpuestosCODIGO_GRAVAMEN: TIntegerField;
    CDSImpuestosDETALLE: TStringField;
    CDSImpuestosID_FCCOMPCAB: TIntegerField;
    CDSImpuestosNETO: TFMTBCDField;
    CDSImpuestosTASA: TFMTBCDField;
    CDSImpuestosIMPORTE: TFMTBCDField;
    DSImpuestos: TDataSource;
    CDSIva: TClientDataSet;
    CDSIvaCODIGO: TIntegerField;
    CDSIvaDESCRIPCION: TStringField;
    CDSIvaTASA: TFMTBCDField;
    CDSPercepcionIVA: TClientDataSet;
    CDSPercepcionIVAID_PERCEPCION: TIntegerField;
    CDSPercepcionIVACODIGO_PERCEPCION: TIntegerField;
    CDSPercepcionIVADETALLE: TStringField;
    CDSPercepcionIVAID_FCCOMPCAB: TIntegerField;
    CDSPercepcionIVANETO: TFMTBCDField;
    CDSPercepcionIVATASA: TFMTBCDField;
    CDSPercepcionIVAIMPORTE: TFMTBCDField;
    CDSPercepcionIVACODIGOREGIMEN: TIntegerField;
    DSPercepcionIVA: TDataSource;
    CDSPercepcionIB: TClientDataSet;
    CDSPercepcionIBID_PERCEPCION: TIntegerField;
    CDSPercepcionIBCODIGO_PERCEPCION: TIntegerField;
    CDSPercepcionIBDETALLE: TStringField;
    CDSPercepcionIBID_FCCOMPCAB: TIntegerField;
    CDSPercepcionIBNETO: TFMTBCDField;
    CDSPercepcionIBTASA: TFMTBCDField;
    CDSPercepcionIBIMPORTE: TFMTBCDField;
    CDSPercepcionIBJURIDICION: TIntegerField;
    DSPercepcionIB: TDataSource;
    CDSInscripcion: TClientDataSet;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    wwCDSCajaCab: TClientDataSet;
    wwCDSCajaCabID_CAJA: TIntegerField;
    wwCDSCajaCabID_CUENTA_CAJA: TIntegerField;
    wwCDSCajaCabFECHA_INCIO: TDateTimeField;
    wwCDSCajaCabFECHA_CIERRE: TDateTimeField;
    wwCDSCajaCabSALDO_INCIAL: TFloatField;
    wwCDSCajaCabESTADO: TIntegerField;
    wwCDSCajaCabOBS: TMemoField;
    wwCDSCajaCabMUESTRACTACAJA: TStringField;
    wwCDSCajaMov: TClientDataSet;
    wwCDSCajaMovID_MOV_CAJA: TIntegerField;
    wwCDSCajaMovID_CAJA: TIntegerField;
    wwCDSCajaMovFECHA_CAJA: TDateTimeField;
    wwCDSCajaMovFECHA_OPERACION: TDateTimeField;
    wwCDSCajaMovTIPO_OPERACION: TStringField;
    wwCDSCajaMovID_COMPROBANTE: TIntegerField;
    wwCDSCajaMovTIPO_COMPROB: TStringField;
    wwCDSCajaMovNRO_COMPROBANTE: TStringField;
    wwCDSCajaMovHABER: TFloatField;
    wwCDSCajaMovDEBE: TFloatField;
    wwCDSCajaMovID_TPAGO: TIntegerField;
    wwCDSCajaMovID_FPAGO: TIntegerField;
    wwCDSCajaMovUNIDADES: TFloatField;
    wwCDSCajaMovCOTIZACION: TFloatField;
    wwCDSCajaMovMUESTRAFORMAPAGO: TStringField;
    wwCDSCajaMovCLASE_COMPROB: TStringField;
    wwCDSCajaMovID_CUENTA_CAJA: TIntegerField;
    wwCDSCajaMovMONEDA: TIntegerField;
    wwCDSCajaMovMUESTRAIDCTACAJA: TIntegerField;
    wwCDSCajaMovMUESTRACAJA: TStringField;
    wwCDSMovEfectivo: TClientDataSet;
    wwCDSMovEfectivoID_EFECTIVO: TIntegerField;
    wwCDSMovEfectivoID_CAJA: TIntegerField;
    wwCDSMovEfectivoID_MOV_CAJA: TIntegerField;
    wwCDSMovEfectivoID_FPAGO: TIntegerField;
    wwCDSMovEfectivoCOTIZACION: TFloatField;
    wwCDSMovEfectivoUNIDADES: TFloatField;
    wwCDSMovEfectivoIMPORTE: TFloatField;
    wwCDSMovEfectivoID_CUENTA_CAJA: TIntegerField;
    wwCDSMovEfectivoMONEDA: TIntegerField;
    wwQCajaMov: TSQLQuery;
    wwQCajaMovID_MOV_CAJA: TIntegerField;
    wwQCajaMovID_CAJA: TIntegerField;
    wwQCajaMovFECHA_CAJA: TDateTimeField;
    wwQCajaMovFECHA_OPERACION: TDateTimeField;
    wwQCajaMovTIPO_OPERACION: TStringField;
    wwQCajaMovID_COMPROBANTE: TIntegerField;
    wwQCajaMovTIPO_COMPROB: TStringField;
    wwQCajaMovNRO_COMPROBANTE: TStringField;
    wwQCajaMovHABER: TFloatField;
    wwQCajaMovDEBE: TFloatField;
    wwQCajaMovID_TPAGO: TIntegerField;
    wwQCajaMovID_FPAGO: TIntegerField;
    wwQCajaMovUNIDADES: TFloatField;
    wwQCajaMovCOTIZACION: TFloatField;
    wwQCajaMovMUESTRAFORMAPAGO: TStringField;
    wwQCajaMovCLASE_COMPROB: TStringField;
    wwQCajaMovID_CUENTA_CAJA: TIntegerField;
    wwQCajaMovMONEDA: TIntegerField;
    wwQCajaMovMUESTRAIDCTACAJA: TIntegerField;
    wwQCajaMovMUESTRACAJA: TStringField;
    wwQMovEfectivo: TSQLQuery;
    wwQMovEfectivoID_EFECTIVO: TIntegerField;
    wwQMovEfectivoID_CAJA: TIntegerField;
    wwQMovEfectivoID_MOV_CAJA: TIntegerField;
    wwQMovEfectivoID_FPAGO: TIntegerField;
    wwQMovEfectivoCOTIZACION: TFloatField;
    wwQMovEfectivoUNIDADES: TFloatField;
    wwQMovEfectivoIMPORTE: TFloatField;
    wwQMovEfectivoID_CUENTA_CAJA: TIntegerField;
    wwQMovEfectivoMONEDA: TIntegerField;
    QComprob: TSQLQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QVerifiComprob: TSQLQuery;
    QGravamen: TSQLQuery;
    QGravamenCODIGO: TIntegerField;
    QGravamenDESCRIPCION: TStringField;
    QGravamenTASA: TFloatField;
    QPercepIva: TSQLQuery;
    QPercepIvaCODIGO: TIntegerField;
    QPercepIvaDESCRIPCION: TStringField;
    QPercepIvaTASA: TFloatField;
    QPercepIvaMINIMOAPLICABLE: TFloatField;
    QPercepIB: TSQLQuery;
    QPercepIBCODIGO: TIntegerField;
    QPercepIBDESCRIPCION: TStringField;
    QPercepIBTASA: TFloatField;
    QPercepIBMINIMOAPLICABLE: TFloatField;
    QPrimerConComp: TSQLQuery;
    QFormaPago: TSQLQuery;
    QFormaPagoID_FPAGO: TIntegerField;
    QFormaPagoID_TPAGO: TIntegerField;
    QFormaPagoDESCRIPCION: TStringField;
    QFormaPagoCOTIZACION: TFloatField;
    QFormaPagoSIGNO: TStringField;
    QFormaPagoMONEDA: TIntegerField;
    QBuscaComprob: TSQLQuery;
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
    procedure CDSCompraCabSucFacSetText(Sender: TField;
      const Text: String);
    procedure CDSCompraCabNumeroFacSetText(Sender: TField;
      const Text: String);
    procedure CDSCompraCabCondicionCompraSetText(Sender: TField;
      const Text: String);
    procedure CDSCompraCabDSTOSetText(Sender: TField;
      const Text: String);
    procedure CDSCompraCabFECHACOMPRASetText(Sender: TField;
      const Text: String);
    procedure CDSCompraCabCodigoSetText(Sender: TField;
      const Text: String);
    procedure CDSCompraCabNewRecord(DataSet: TDataSet);
    procedure CDSCompraCabBeforePost(DataSet: TDataSet);
    procedure CDSCompraCabNetoGrav1SetText(Sender: TField;
      const Text: String);
    procedure CDSImpuestosCODIGO_GRAVAMENSetText(Sender: TField;
      const Text: String);
    procedure CDSPercepcionIVACODIGO_PERCEPCIONSetText(Sender: TField;
      const Text: String);
    procedure CDSPercepcionIBCODIGO_PERCEPCIONSetText(Sender: TField;
      const Text: String);
    procedure CDSImpuestosNETOSetText(Sender: TField;
      const Text: String);
    procedure CDSPercepcionIVANETOSetText(Sender: TField;
      const Text: String);
    procedure CDSPercepcionIBNETOSetText(Sender: TField;
      const Text: String);
    procedure CDSCompraCabNETOEXEN1SetText(Sender: TField;
      const Text: String);
    procedure CDSCompraCabIMPORTEEXCLUIDO1SetText(Sender: TField;
      const Text: String);
    procedure CDSCompraCabNETOMONOTRIBUTO1SetText(Sender: TField;
      const Text: String);
    procedure CDSCompraCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSCompraCabSUCURSALCOMPRASetText(Sender: TField;
      const Text: String);
    procedure CDSImpuestosNewRecord(DataSet: TDataSet);
    procedure CDSPercepcionIVANewRecord(DataSet: TDataSet);
    procedure CDSPercepcionIBNewRecord(DataSet: TDataSet);
    procedure wwCDSCajaMovNewRecord(DataSet: TDataSet);
    procedure CDSImpuestosIMPORTESetText(Sender: TField;
      const Text: String);
    procedure CDSPercepcionIVAIMPORTESetText(Sender: TField;
      const Text: String);
    procedure CDSPercepcionIBIMPORTESetText(Sender: TField;
      const Text: String);
    procedure CDSCompraCabFECHAFISCALSetText(Sender: TField;
      const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
    PerciveIva: STRING;
    PerciveIB: STRING;
    Detalle_PercepcionIVA : STRING;
    Detalle_PercepcionIB  : STRING;
    Codigo_PercepcionIva  : Integer;
    Codigo_PercepcionIB   : Integer;
    Tasa_PercepcionIva    : Real;
    Tasa_PercepcionIB     : Real;
    Minimo_PercepcionIva  : Real;
    Minimo_PercepcionIB   : Real;
    MascaraIvaImporte      :String;
    MascaraIvaTasa         :String;
    MascaraCabecera        :String;

    PROCEDURE HabilitarLabel;
    FUNCTION AsignaProveedor(Dato: STRING): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarCondCompra(Proveedor: STRING; Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    PROCEDURE VerificaComprobante;
    PROCEDURE CalcularTotales;
    procedure AplicarMascarasNumericas;
    function AsignaIva(dato:integer):boolean;
    function AsignaPrecepcionIva(dato:integer):boolean;
    function AsignaPrecepcionIB(dato:integer):boolean;
  end;

var
  DatosCompraReducida: TDatosCompraReducida;

implementation

USES UCompraReducidaCtaCte, DMMainForm_2,
     DMBuscadoresForm, DMStoreProcedureForm;

{$R *.DFM}

PROCEDURE TDatosCompraReducida.VerificaComprobante;
begin
  if CDSCompraCab.state=dsInsert Then
    begin
      QVerifiComprob.Close;
      QVerifiComprob.ParamByName('Nro').Value   :=CDSCompraCabNROCPBTE.Value;
      QVerifiComprob.ParamByName('clase').Value :=CDSCompraCabCLASECPBTE.Value;
      QVerifiComprob.ParamByName('Tipo').Value  :=CDSCompraCabTIPOCPBTE.Value;
      QVerifiComprob.ParamByName('codigo').Value:=CDSCompraCabCodigo.Value;
      QVerifiComprob.Open;
      if QVerifiComprob.Fields[0].AsString<>'' Then
        begin
          ShowMessage('Este comprobante fué ingresado.... verifique....!!!');
     //     wwCDSCompraCabLetraFac.Clear;
          CDSCompraCabSucFac.Clear;
          CDSCompraCabNumeroFac.Clear;
          FormCompraCtaCteReducida.dbeSuc.SetFocus;
      end;
    QVerifiComprob.Close;
  end;
end;

PROCEDURE TDatosCompraReducida.HabilitarLabel;
BEGIN
  {Si la Factura no discrimina IVA}
   FormCompraCtaCteReducida.dbgIva.Visible          :=CDSCompraCabDESGLOZAIVA.Value = 'S';
   FormCompraCtaCteReducida.dbgPercepcionIVA.Visible:=PerciveIva = 'S';
   FormCompraCtaCteReducida.dbgPercepcionIB.Visible :=PerciveIB = 'S';
   FormCompraCtaCteReducida.RxLabel4.Visible        :=CDSCompraCabDESGLOZAIVA.Value = 'S';
   FormCompraCtaCteReducida.RxLabel2.Visible        :=PerciveIva = 'S';
   FormCompraCtaCteReducida.RxLabel3.Visible        :=PerciveIB = 'S';
END;


FUNCTION TDatosCompraReducida.AsignaProveedor(Dato: STRING): Boolean;
BEGIN
  WITH DatosCompraReducida.CDSProveedor, DatosCompraReducida DO
    BEGIN
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := Dato;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.Eof) THEN
        BEGIN
          CDSCompraCabNombre.AsString      := CDSProveedorNombre.AsString;
          CDSCompraCabRazonSocial.AsString := CDSProveedorRazon_Social.ASString;
          CDSCompraCabCuit.AsString        := CDSProveedorN_de_CUIT.AsString;
          CDSCompraCabDireccion.AsString   := CDSProveedorDireccion.AsString;
          CDSCompraCabTipoIVA.Value        := CDSProveedorCondicion_IVA.Value;
          CDSCompraCabCPostal.AsString     := CDSProveedorCod_Postal.AsString;
          CDSCompraCabLocalidad.AsString   := CDSProveedorLocalidad.AsString;
          CDSInscripcion.Close;
          CDSInscripcion.Params.ParamByName('Codigo').Value := CDSCompraCabTipoIva.Value;
          CDSInscripcion.Open;
          IF NOT (CDSInscripcion.Eof) THEN
            begin
              CDSCompraCabCALCULA_SOBRETASA.Value := CDSInscripcionCobraSobretasa.Value;
              CDSCompraCabDESGLOZAIVA.Value       := CDSInscripcionDISCRIMINAIVA.Value;
            end;
          CDSInscripcion.Close;
          PerciveIva                          := CDSProveedorRetiene_IVA.Value;
          PerciveIB                           := CDSProveedorRetiene_IB.Value;
          FormCompraCtaCteReducida.dbgPercepcionIVA.Enabled := PerciveIva = 'S';
          FormCompraCtaCteReducida.dbgPercepcionIB.Enabled  := PerciveIB = 'S';
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
                  if CDSCompraCabTIPOCPBTE.Value='NC' Then
                    Minimo_PercepcionIva  := 0;
                  Detalle_PercepcionIVA := CDSTasaPercepIVADESCRIPCION.Value;
                end;
            END;
          IF PerciveIB = 'S' THEN
            BEGIN
              Codigo_PercepcionIB := CDSProveedorId_Perc_IBB.Value;
              CDSTasaPercepIIBB.Close;
              CDSTasaPercepIIBB.Params.ParamByName('id').value := Codigo_PercepcionIB;
              CDSTasaPercepIIBB.Open;
              if not(CDSTasaPercepIIBB.IsEmpty) then
                begin
                  Tasa_PercepcionIB    := CDSTasaPercepIIBBTASA.AsFloat;
                  Minimo_PercepcionIB  := CDSTasaPercepIIBBMINIMOAPLICABLE.AsFloat;
                  if CDSCompraCabTIPOCPBTE.Value='NC' Then
                    Minimo_PercepcionIB  := 0;
                  Detalle_PercepcionIB := CDSTasaPercepIIBBDESCRIPCION.Value;
                end;
            END;
          //Asigno el comprobante
          DMMain_2.CDSCompPorTipo.Close;
          DMMain_2.CDSCompPorTipo.Params.ParamByName('desglozaIva').Value:=CDSCompraCabDESGLOZAIVA.Value;
          DMMain_2.CDSCompPorTipo.Params.ParamByName('sucursal').Value   :=FormCompraCtaCteReducida.SucursalPorDefecto;
          DMMain_2.CDSCompPorTipo.Params.ParamByName('compraventa').Value:='C';
          DMMain_2.CDSCompPorTipo.Params.ParamByName('tipo').Value       :='FC';
          DMMain_2.CDSCompPorTipo.Open;
          DMMain_2.CDSCompPorTipo.First;
          if DMMain_2.CDSCompPorTipo.Fields[0].AsString<>'' Then
            CDSCompraCabID_TIPOCOMPROBANTESetText(CDSCompraCabID_TIPOCOMPROBANTE,DMMain_2.CDSCompPorTipo.Fields[0].AsString);

          QPrimerConComp.CLose;
          QPrimerConComp.ParamByName('codigo').AsString:=Dato;
          QPrimerConComp.Open;
          if Not(QPrimerConComp.IsEmpty) Then
            if QPrimerConComp.Fields[0].AsString<>'' Then
              CDSCompraCabCondicionCompraSetText(CDSCompraCabCondicionCompra,QPrimerConComp.Fields[0].AsString)
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


FUNCTION TDatosCompraReducida.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value:=dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      QBuscaComprob.close;
      QBuscaComprob.ParamByName('suc').Value:=Dato;
      QBuscaComprob.Open;
      CDSCompraCabID_TIPOCOMPROBANTE.Clear;
      CDSCompraCabMUESTRACOMPROBANTE.Clear;
      if QBuscaComprob.RecordCount=1 Then
        begin
          DatosCompraReducida.CDSCompraCabID_TIPOCOMPROBANTESetText(DatosCompraReducida.CDSCompraCabID_TIPOCOMPROBANTE,QBuscaComprob.fieldByName('Id_comprobante').AsString);
          FormCompraCtaCteReducida.RxDBECodigo.SetFocus;
        end;
      QBuscaComprob.Close;
      Result:=True;
      CDSCompraCabMuestraSucursal.Value:=CDSSucursalDetalle.Value;
    END
  ELSE
    BEGIN
      Result:=False;
      CDSCompraCabMuestraSucursal.Value:= '';
    END;
END;


FUNCTION TDatosCompraReducida.AsignarCondCompra(Proveedor: STRING; Dato: Integer):
  Boolean;
BEGIN
  CDSCondCompra.Close;
  CDSCondCompra.Params.ParamByName('Codigo').Value := Proveedor;
  CDSCondCompra.Params.ParamByName('CodigoPago').Value := Dato;
  CDSCondCompra.Open;
  IF NOT (CDSCondCompra.Eof) THEN
    BEGIN
      Result := True;
      CDSCompraCabMuestraCondCompra.Value := CDSCondCompraDetalle.Value;
      CDSCompraCabFECHAVTO.AsDateTime := CDSCompraCabFECHACOMPRA.AsDateTime +
                                    CDSCondCompraDias.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSCompraCabMuestraCondCompra.Value := '';
    END;
  CDSCondCompra.Close;
END;

FUNCTION TDatosCompraReducida.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSCompraCabSUCURSALCOMPRA.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      FormCompraCtaCteReducida.RxDBECondCompra.Enabled:=True;
      FormCompraCtaCteReducida.RxDBECondCompra.Color  :=clWindow;
      FormCompraCtaCteReducida.dbeFechaVencimiento.Enabled:=True;
      FormCompraCtaCteReducida.dbeFechaVencimiento.Color:=clWindow;
      CDSCompraCabMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSCompraCabLetraFac.Value           := QComprobLETRA.Value;
      CDSCompraCabTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSCompraCabCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
      CDSCompraCabCondicionCompra.Clear;
      CDSCompraCabMUESTRACONDCOMPRA.Clear; // SetText(wwCDSCompraCabCondicionCompra,'');
      if QComprobTIPO_COMPROB.Value='FO' Then
        begin
          CDSCompraCabCondicionCompra.Value:=0;
          CDSCompraCabMUESTRACONDCOMPRA.Value:='CONTADO';
          FormCompraCtaCteReducida.RxDBECondCompra.Enabled:=False;
          FormCompraCtaCteReducida.RxDBECondCompra.Color  :=clBtnFace;
          FormCompraCtaCteReducida.dbeFechaVencimiento.Enabled:=False;
          FormCompraCtaCteReducida.dbeFechaVencimiento.Color:=clBtnFace;
          CDSCompraCabFECHAVTO.Value:=CDSCompraCabFECHACOMPRA.Value;
        end;
    END
  ELSE
    BEGIN
      Result := False;
      CDSCompraCabMUESTRACOMPROBANTE.Value := '';
      CDSCompraCabLetraFac.Value           := '';
      CDSCompraCabTIPOCPBTE.Value          := '';
      CDSCompraCabCLASECPBTE.Value         := '';
      CDSCompraCabCondicionCompra.Clear;
      CDSCompraCabMUESTRACONDCOMPRA.Value  :='';
    END;
  //
END;

function TDatosCompraReducida.AsignaIva(dato:Integer):boolean;
begin
  QGravamen.close;
  QGravamen.ParamByName('codigo').Value:=Dato;
  QGravamen.Open;
  if Not(QGravamen.IsEmpty) Then
    begin
      Result:=True;
      CDSImpuestosDETALLE.Value:=QGravamenDESCRIPCION.Value;
      CDSImpuestosTASA.AsFloat  :=QGravamenTASA.Value;
    end
  else
    begin
      Result:=False;
      CDSImpuestosDETALLE.Value:='';
      CDSImpuestosTASA.AsFloat :=0;
    end;
end;

function TDatosCompraReducida.AsignaPrecepcionIva(dato:Integer):boolean;
begin
  QPercepIva.close;
  QPercepIva.ParamByName('codigo').Value:=Dato;
  QPercepIva.Open;
  if Not(QPercepIva.IsEmpty) Then
    begin
      Result:=True;
      CDSPercepcionIVADETALLE.Value:=QPercepIvaDESCRIPCION.Value;
      CDSPercepcionIVATASA.AsFloat   :=QPercepIvaTASA.Value;
    end
  else
    begin
      Result:=False;
      CDSPercepcionIVADETALLE.Value:='';
      CDSPercepcionIVATASA.AsFloat :=0;
    end;
end;

function TDatosCompraReducida.AsignaPrecepcionIB(dato:Integer):boolean;
begin
  QPercepIB.close;
  QPercepIB.ParamByName('codigo').Value:=Dato;
  QPercepIB.Open;
  if Not(QPercepIB.IsEmpty) Then
    begin
      Result:=True;
      CDSPercepcionIBDETALLE.Value:=QPercepIBDESCRIPCION.Value;
      CDSPercepcionIBTASA.AsFloat :=QPercepIBTASA.Value;
    end
  else
    begin
      Result:=False;
      CDSPercepcionIBDETALLE.Value:='';
      CDSPercepcionIBTASA.AsFloat   :=0;
    end;
end;


PROCEDURE TDatosCompraReducida.CalcularTotales;
VAR
  Acumulador: Real;
//  Neto: Real;
BEGIN
  CDSCompraCabTotal.AsFloat := 0;
  Acumulador := 0;
  CDSCompraCabNetoGrav2.AsFloat      := CDSCompraCabNetoGrav1.AsFloat * (1 - CDSCompraCabDsto.AsFloat * 0.01);
  CDSCompraCabNetoExen2.AsFloat      := CDSCompraCabNetoExen1.AsFloat * (1 - CDSCompraCabDsto.AsFloat * 0.01);
  CDSCompraCabNETOMONOTRIBUTO2.AsFloat:= CDSCompraCabNETOMONOTRIBUTO1.AsFloat * (1 - CDSCompraCabDsto.AsFloat * 0.01);
  CDSCompraCabIMPORTEEXCLUIDO2.AsFloat:= CDSCompraCabIMPORTEEXCLUIDO1.AsFloat * (1 - CDSCompraCabDsto.AsFloat * 0.01);
  CDSCompraCabDstoImporte.AsFloat     := (CDSCompraCabNetoGrav1.AsFloat + CDSCompraCabNetoExen1.AsFloat + CDSCompraCabNETOMONOTRIBUTO1.AsFloat + CDSCompraCabIMPORTEEXCLUIDO1.AsFloat) * CDSCompraCabDsto.AsFloat * 0.01;
  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
  WHILE NOT (CDSImpuestos.Eof) DO
    BEGIN
      Acumulador                  := Acumulador + CDSImpuestosImporte.AsFloat;
      CDSImpuestos.Next;
    END;
  CDSImpuestos.EnableControls;
  FormCompraCtaCteReducida.dbgIva.Refresh;
  CDSCompraCabTotal.AsFloat     := Moneda3D(' ',MascaraCabecera,CDSCompraCabNetoGrav2.AsFloat + CDSCompraCabNETOMONOTRIBUTO2.AsFloat + CDSCompraCabNetoExen2.AsFloat + CDSCompraCabIMPORTEEXCLUIDO2.AsFloat + Acumulador);
  CDSPercepcionIVA.First;
  CDSPercepcionIB.First;
  IF (PerciveIva = 'S') THEN
     CDSCompraCabTotal.AsFloat       := Moneda3D(' ',MascaraCabecera,CDSCompraCabTotal.AsFloat + CDSPercepcionIVAImporte.AsFloat);
  IF (PerciveIB = 'S') THEN
     CDSCompraCabTotal.AsFloat       := Moneda3D(' ',MascaraCabecera,CDSCompraCabTotal.AsFloat + CDSPercepcionIBImporte.AsFloat);
END;

procedure TDatosCompraReducida.AplicarMascarasNumericas;
VAR I:Byte;
begin

  DMMain_2.QOpciones.Close;
  DMMain_2.QOpciones.ParamByName('Opcion').AsString:='IVATASA';
  DMMain_2.QOpciones.Open;
  MascaraIvaTasa:=DMMain_2.QOpciones.Fields[0].AsString;
  TFloatField(CDSImpuestosTASA).EditFormat           := MascaraIvaTasa;
  TFloatField(CDSImpuestosTASA).DisplayFormat        := MascaraIvaTasa;
  TFloatField(CDSPercepcionIVATASA).EditFormat       :=MascaraIvaTasa;
  TFloatField(CDSPercepcionIVATASA).DisplayFormat    :=MascaraIvaTasa;
  TFloatField(CDSPercepcionIBTASA).EditFormat        :=MascaraIvaTasa;
  TFloatField(CDSPercepcionIBTASA).DisplayFormat     :=MascaraIvaTasa;



  DMMain_2.QOpciones.Close;
  DMMain_2.QOpciones.ParamByName('Opcion').AsString:='IVAIMPORTES';
  DMMain_2.QOpciones.Open;
  MascaraIvaImporte:=DMMain_2.QOpciones.Fields[0].AsString;
  TFloatField(CDSImpuestosIMPORTE).EditFormat           := MascaraIvaImporte;
  TFloatField(CDSImpuestosIMPORTE).DisplayFormat        := MascaraIvaImporte;
  TFloatField(CDSPercepcionIVAIMPORTE).EditFormat       := MascaraIvaImporte;
  TFloatField(CDSPercepcionIVAIMPORTE).DisplayFormat    := MascaraIvaImporte;
  TFloatField(CDSPercepcionIBIMPORTE).EditFormat        := MascaraIvaImporte;
  TFloatField(CDSPercepcionIBIMPORTE).DisplayFormat     := MascaraIvaImporte;


  DMMain_2.QOpciones.Close;
  DMMain_2.QOpciones.ParamByName('Opcion').AsString:='VTACABECERA';
  DMMain_2.QOpciones.Open;
  MascaraCabecera:=DMMain_2.QOpciones.Fields[0].AsString;
  For i:=0 to CDSCompraCab.FieldCount-1 do
    begin
      if (CDSCompraCab.Fields[i].DataType=ftBCD) or
         (CDSCompraCab.Fields[i].DataType=ftFMTBcd) or
         (CDSCompraCab.Fields[i].DataType=ftFloat) Then
       begin
          TFloatField(CDSCompraCab.Fields[i]).EditFormat   := MascaraCabecera;
          TFloatField(CDSCompraCab.fields[i]).DisplayFormat:= MascaraCabecera;
       end;
    end;
  TFloatField(CDSImpuestosNETO).EditFormat         := MascaraCabecera;
  TFloatField(CDSImpuestosNETO).DisplayFormat      := MascaraCabecera;
  TFloatField(CDSPercepcionIVANETO).EditFormat     := MascaraCabecera;
  TFloatField(CDSPercepcionIVANETO).DisplayFormat  := MascaraCabecera;
  TFloatField(CDSPercepcionIBNETO).EditFormat      := MascaraCabecera;
  TFloatField(CDSPercepcionIBNETO).DisplayFormat   := MascaraCabecera;

  DMMain_2.QOpciones.Close;
end;

procedure TDatosCompraReducida.CDSCompraCabSucFacSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString := Copy('00000000000', 1, Sender.Size-Length(Text)) + Text;
  CDSCompraCabNROCPBTE.Value:=CDSCompraCabLetraFac.Value+CDSCompraCabSucFac.Value+CDSCompraCabNumeroFac.Value;
  VerificaComprobante;
end;

procedure TDatosCompraReducida.CDSCompraCabNumeroFacSetText(
  Sender: TField; const Text: String);
begin
  Sender.AsString := Copy('00000000000', 1, Sender.Size-Length(Text)) + Text;
  CDSCompraCabNROCPBTE.Value:=CDSCompraCabLetraFac.Value+CDSCompraCabSucFac.Value+CDSCompraCabNumeroFac.Value;
  VerificaComprobante;
end;

procedure TDatosCompraReducida.CDSCompraCabCondicionCompraSetText(
  Sender: TField; const Text: String);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarCondCompra(CDSCompraCabCodigo.Value,Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo No Valido');
          FormCompraCtaCteReducida.RxDBECondCompra.SetFocus;
        END;
    end;

end;

procedure TDatosCompraReducida.CDSCompraCabDSTOSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString := Text;
  CalcularTotales;
  FormCompraCtaCteReducida.dbeDscto.SetFocus;
end;

procedure TDatosCompraReducida.CDSCompraCabFECHACOMPRASetText(
  Sender: TField; const Text: String);
var d,m,y:word;
BEGIN
  Sender.AsString:=Text;
  if DatosCompraReducida.CDSCompraCabFECHAFISCAL.AsString='' then
    DatosCompraReducida.CDSCompraCabFECHAFISCAL.AsDateTime:=Sender.AsDateTime;

//  if sender.AsString<>'' Then
//    if CDSCompraCab.State In [dsInsert,dsEdit] Then
//      begin
//        Sender.AsString := Text;
//        DecodeDate(Sender.AsDateTime,y,m,d);
//        begin
//          spVerificaPeriodFiscal.Close;
//          spVerificaPeriodFiscal.ParamByName('anio').Value:=y;
//          spVerificaPeriodFiscal.ParamByName('mes').Value :=m;
//          spVerificaPeriodFiscal.ParamByName('compra_venta').Value:='C';
//          spVerificaPeriodFiscal.ExecProc;
//          if (StrToDate(Sender.AsString)>Date) Then
//            begin
//              ShowMessage('Fecha fuera de rango');
//              CDSCompraCabFECHAFISCAL.Clear;
//              Sender.Clear;
//            end
//          else
//            if spVerificaPeriodFiscal.ParamByName('estado').Value='C' Then
//              begin
//                ShowMessage('Fecha no Valida, este período fiscal no esta permitido');
//                CDSCompraCabFECHAFISCAL.Clear;
//                Sender.Clear;
//              end
//            else
//              CDSCompraCabFECHAFISCAL.AsDateTime:=Sender.AsDateTime ;
//          spVerificaPeriodFiscal.Close;
//        end;
//      end;
END;

procedure TDatosCompraReducida.CDSCompraCabFECHAFISCALSetText(Sender: TField;
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
              ShowMessage('Fecha fuera de rango');
              CDSCompraCabFECHAFISCAL.Clear;
              FormCompraCtaCteReducida.dbeFechaFiscal.Clear;
              Sender.Clear;
              // esto se agrega...
              CDSCompraCabFECHAFISCAL.AsDateTime:=Date;

              FormCompraCtaCteReducida.dbeFechaFiscal.SetFocus;
            end
          else
            if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
              begin
                ShowMessage('Fecha no Valida, este período fiscal no esta permitido');
                CDSCompraCabFECHAFISCAL.Clear;
                Sender.Clear;
                FormCompraCtaCteReducida.dbeFechaFiscal.SetFocus;
              end
            else
              CDSCompraCabFECHAFISCAL.AsDateTime:=Sender.AsDateTime ;
          DMStoreProcedure.QVerificaPeriodoFiscal.Close;
        end;
      end;
end;

procedure TDatosCompraReducida.CDSCompraCabCodigoSetText(Sender: TField;
  const Text: String);
begin
  if (Text<>#13) and (Text<>'') Then
    begin
      Sender.AsString := Copy('000000', 1, Sender.Size-length(text)) + Text;
      IF NOT (AsignaProveedor(Sender.AsString)) THEN
        BEGIN
          ShowMessage('Codigo Proveedor No válido');
          Sender.AsString := '';
          //SysUtils.Abort;
          FormCompraCtaCteReducida.RxDBECodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      HabilitarLabel;
      FormCompraCtaCteReducida.RxDBECodigo.Text := Sender.AsString;
    end;

end;

procedure TDatosCompraReducida.CDSCompraCabNewRecord(DataSet: TDataSet);
begin
  CDSCompraCabId_Fc.Value           := IBGFcCompCab.IncrementIBX(1);
  CDSCompraCabFechaCompra.AsDateTime:= Date;
  CDSCompraCabFECHAFISCAL.AsDateTime:= Date;
  CDSCompraCabCodigo.Value          := '';
  CDSCompraCabAnulado.Value         := 'N';
  CDSCompraCabTipoIVA.AsString      := '';
  CDSCompraCabLetraFac.AsString     := '';
  CDSCompraCabCondicionCompra.Clear;
  CDSCompraCabDstoImporte.AsFloat   := 0;
  CDSCompraCabDsto.AsFloat          := 0;
  CDSCompraCabNetoGrav1.AsFloat     := 0;
  CDSCompraCabNetoGrav2.AsFloat     := 0;
  CDSCompraCabNETOEXEN1.AsFloat     := 0;
  CDSCompraCabNETOEXEN2.AsFloat     := 0;
  CDSCompraCabNETOMONOTRIBUTO1.AsFloat:= 0;
  CDSCompraCabNETOMONOTRIBUTO2.AsFloat:= 0;
  CDSCompraCabDSTO.AsFloat          := 0;
  CDSCompraCabDSTOIMPORTE.AsFloat   := 0;
  CDSCompraCabIMPORTEEXCLUIDO1.AsFloat:= 0;
  CDSCompraCabIMPORTEEXCLUIDO2.AsFloat:= 0;
  CDSCompraCabSUCURSALCOMPRASetText(CDSCompraCabSUCURSALCOMPRA,IntToStr(FormCompraCtaCteReducida.SucursalPorDefecto));
  CDSCompraCabREDUCIDA.Value:='S';
  CDSCompraCabDeposito.Value:=FormCompraCtaCteReducida.DepositoPorDefecto;
  CDSCompraCabCPBTE_INTERNO.Value   := 'N';
  CDSCompraCabFECHA_HORA.AsDateTime:=now;
  CDSCompraCabUSUARIO.Value:=DMMain_2.UsuarioActivo;
end;

procedure TDatosCompraReducida.CDSCompraCabBeforePost(DataSet: TDataSet);
begin
  CDSCompraCabNroCpbte.AsString := CDSCompraCabLetraFac.AsString + CDSCompraCabSucFac.AsString + CDSCompraCabNumeroFac.AsString;
  if CDSCompraCabTIPOCPBTE.Value='FO' Then
    begin
      wwCDSCajaMov.Insert;
      if wwCDSCajaMov.State <> dsBrowse Then
        wwCDSCajaMov.Post;
      if wwCDSMovEfectivo.State <> dsBrowse Then
        wwCDSMovEfectivo.Post;
     // wwCDSMovEfectivo.Insert;
    end;

end;

procedure TDatosCompraReducida.CDSCompraCabNetoGrav1SetText(
  Sender: TField; const Text: String);
begin
   Sender.AsString:=Text;
   CalcularTotales;
end;

procedure TDatosCompraReducida.CDSImpuestosCODIGO_GRAVAMENSetText(
  Sender: TField; const Text: String);
begin
  if (Text<>#13) and (Text<>'') Then
    begin
      if CDSImpuestos.State =dsbrowse Then CDSImpuestos.Edit;
      Sender.AsString:=Text;
      if Not(AsignaIva(Sender.AsInteger)) Then
        begin
          ShowMessage('Dato No Valido');
          Sender.Clear;
        end;
    END;
end;

procedure TDatosCompraReducida.CDSPercepcionIVACODIGO_PERCEPCIONSetText(
  Sender: TField; const Text: String);
begin
  if (Text<>#13) and (Text<>'') Then
    begin
      if CDSPercepcionIVA.State =dsbrowse Then CDSPercepcionIVA.Edit;
      Sender.AsString:=Text;
      if Not(AsignaPrecepcionIva(Sender.AsInteger)) Then
        begin
          ShowMessage('Dato No Valido');
          Sender.Clear;
        end;
    END;

end;

procedure TDatosCompraReducida.CDSPercepcionIBCODIGO_PERCEPCIONSetText(
  Sender: TField; const Text: String);
begin
  if (Text<>#13) and (Text<>'') Then
    begin
      if CDSPercepcionIB.State =dsbrowse Then CDSPercepcionIB.Edit;
      Sender.AsString:=Text;
      if Not(AsignaPrecepcionIB(Sender.AsInteger)) Then
        begin
          ShowMessage('Dato No Valido');
          Sender.Clear;
        end;
    END;

end;

procedure TDatosCompraReducida.CDSImpuestosNETOSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=Text;
  CDSImpuestosIMPORTE.AsFloat:= Moneda3D(' ',MascaraIvaImporte,CDSImpuestosTASA.AsFloat*Sender.AsFloat*0.01);
  CalcularTotales;
end;

procedure TDatosCompraReducida.CDSPercepcionIVANETOSetText(
  Sender: TField; const Text: String);
begin
  Sender.AsString:=Text;
  CDSPercepcionIVAIMPORTE.AsFloat:=Moneda3D(' ',MascaraIvaImporte,CDSPercepcionIVATASA.AsFloat*Sender.AsFloat*0.01);
  CalcularTotales;
end;

procedure TDatosCompraReducida.CDSPercepcionIBNETOSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=Text;
  CDSPercepcionIBIMPORTE.AsFloat:= Moneda3D(' ',MascaraCabecera,CDSPercepcionIBTASA.AsFloat*Sender.AsFloat*0.01);
  CalcularTotales;
end;

procedure TDatosCompraReducida.CDSCompraCabNETOEXEN1SetText(
  Sender: TField; const Text: String);
begin
  Sender.AsString:=Text;
  CalcularTotales;
end;

procedure TDatosCompraReducida.CDSCompraCabIMPORTEEXCLUIDO1SetText(
  Sender: TField; const Text: String);
begin
  Sender.AsString:=Text;
  CalcularTotales;
end;

procedure TDatosCompraReducida.CDSCompraCabNETOMONOTRIBUTO1SetText(
  Sender: TField; const Text: String);
begin
  Sender.AsString:=Text;
  CalcularTotales;
end;

procedure TDatosCompraReducida.CDSCompraCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
        BEGIN
          ShowMessage('Dato no Valido');
          Sender.AsString := '';
          FormCompraCtaCteReducida.RxCTipoCpbte.SetFocus;
        END
      ELSE
        begin
          FormCompraCtaCteReducida.UltimoComprobante;
          HabilitarLabel;
        end;
    end;

end;

procedure TDatosCompraReducida.CDSCompraCabSUCURSALCOMPRASetText(
  Sender: TField; const Text: String);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Sucursal No Valido');
          FormCompraCtaCteReducida.RxDBESucursal.SetFocus;
        END;
    end;
end;

procedure TDatosCompraReducida.CDSImpuestosNewRecord(DataSet: TDataSet);
begin
  CDSImpuestosId_Impuesto.Value := IBGImpuestos.IncrementIBX(1);
  CDSImpuestosID_FCCOMPCAB.Value:= CDSCompraCabID_FC.Value;
  CDSImpuestosNETO.AsFloat:=0;
  CDSImpuestosTASA.AsFloat:=0;
  CDSImpuestosIMPORTE.AsFloat:=0;
end;

procedure TDatosCompraReducida.CDSPercepcionIVANewRecord(
  DataSet: TDataSet);
begin
  CDSPercepcionIVAID_Percepcion.Value := IBGPercepcionIVA.IncrementIBX(1);
  CDSPercepcionIVAID_FCCOMPCAB.Value  := CDSCompraCabID_FC.Value;
  CDSPercepcionIVANETO.AsFloat:=0;
  CDSPercepcionIVATASA.AsFloat:=0;
  CDSPercepcionIVAIMPORTE.AsFloat:=0;;
end;

procedure TDatosCompraReducida.CDSPercepcionIBNewRecord(
  DataSet: TDataSet);
begin
  CDSPercepcionIBID_Percepcion.Value := IBGPercepcionIB.IncrementIBX(1);
  CDSPercepcionIBID_FCCOMPCAB.Value  := CDSCompraCabID_FC.Value;
end;

procedure TDatosCompraReducida.wwCDSCajaMovNewRecord(DataSet: TDataSet);
begin
  wwCDSCajaCab.Close;
  wwCDSCajaCab.Params.ParamByName('id').Value:=FormCompraCtaCteReducida.CajaPorDefecto;
  wwCDSCajaCab.Open;
  if Not(wwCDSCajaCab.IsEmpty) Then
    begin
      wwCDSCajaMovID_MOV_CAJA.Value    :=IBGId_Caja_Mov.Increment(1);
      wwCDSCajaMovID_CAJA.Value        :=wwCDSCajaCabID_CAJA.Value;
      wwCDSCajaMovFECHA_CAJA.Value     :=wwCDSCajaCabFECHA_INCIO.Value;
      wwCDSCajaMovFECHA_OPERACION.AsDateTime:= CDSCompraCabFECHACOMPRA.AsDateTime;
      wwCDSCajaMovTIPO_OPERACION.Value :='E';
      wwCDSCajaMovID_COMPROBANTE.Value := CDSCompraCabID_FC.Value;
      wwCDSCajaMovTIPO_COMPROB.Value   := CDSCompraCabTIPOCPBTE.Value;
      wwCDSCajaMovNRO_COMPROBANTE.Value:= CDSCompraCabNROCPBTE.Value;
      wwCDSCajaMovHABER.Value          := CDSCompraCabTOTAL.AsFloat;
      wwCDSCajaMovDEBE.Value           := 0;
      QFormaPago.Close;
      QFormaPago.Open;
      QFormaPago.First;
      wwCDSCajaMovID_TPAGO.Value       :=1;
      wwCDSCajaMovID_FPAGO.Value       :=QFormaPagoID_FPAGO.Value;
      wwCDSCajaMovUNIDADES.Value       :=CDSCompraCabTOTAL.AsFloat;
      wwCDSCajaMovCOTIZACION.Value     :=QFormaPagoCOTIZACION.Value;
      wwCDSCajaMovCLASE_COMPROB.Value  :=CDSCompraCabCLASECPBTE.Value;
      wwCDSCajaMovID_CUENTA_CAJA.Value :=wwCDSCajaCabID_CUENTA_CAJA.Value;
      wwCDSCajaMovMONEDA.Value         :=QFormaPagoMONEDA.Value;
      QFormaPago.Close;
      wwCDSMovEfectivo.Insert;
      wwCDSMovEfectivoID_EFECTIVO.Value    :=IBGId_Efectivo.Increment(1);
      wwCDSMovEfectivoID_CAJA.Value        :=wwCDSCajaMovID_CAJA.Value;
      wwCDSMovEfectivoID_MOV_CAJA.Value    :=wwCDSCajaMovID_MOV_CAJA.Value;
      wwCDSMovEfectivoID_FPAGO.Value       :=wwCDSCajaMovID_FPAGO.Value;
      wwCDSMovEfectivoCOTIZACION.Value     :=wwCDSCajaMovCOTIZACION.Value;
      wwCDSMovEfectivoUNIDADES.Value       :=wwCDSCajaMovUNIDADES.Value;
      wwCDSMovEfectivoIMPORTE.Value        :=CDSCompraCabTOTAL.AsFloat;
      wwCDSMovEfectivoID_CUENTA_CAJA.Value :=wwCDSCajaMovID_CUENTA_CAJA.Value;
      wwCDSMovEfectivoMONEDA.Value         :=wwCDSCajaMovMONEDA.Value;
    end
  else
    ShowMessage('La Caja por defecto esta cerrada...');
  wwCDSCajaCab.Close;

end;

procedure TDatosCompraReducida.CDSImpuestosIMPORTESetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=Text;
  CalcularTotales;
end;

procedure TDatosCompraReducida.CDSPercepcionIVAIMPORTESetText(
  Sender: TField; const Text: String);
begin
  Sender.AsString:=Text;
  CalcularTotales;
end;

procedure TDatosCompraReducida.CDSPercepcionIBIMPORTESetText(
  Sender: TField; const Text: String);
begin
  Sender.AsString:=Text;
  CalcularTotales;
end;

END.
