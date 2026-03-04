unit DMImportacionComp;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, WideStrings,
  Data.DBXInterBase;

type
  TDatosImportacioComp = class(TDataModule)
    QFcCompCab: TSQLQuery;
    DSPFcCompCab: TDataSetProvider;
    CDSFcCompCab: TClientDataSet;
    CDSFcCompCabID_FC: TIntegerField;
    CDSFcCompCabTIPOCPBTE: TStringField;
    CDSFcCompCabCLASECPBTE: TStringField;
    CDSFcCompCabNROCPBTE: TStringField;
    CDSFcCompCabCODIGO: TStringField;
    CDSFcCompCabLETRAFAC: TStringField;
    CDSFcCompCabSUCFAC: TStringField;
    CDSFcCompCabNUMEROFAC: TStringField;
    CDSFcCompCabNOMBRE: TStringField;
    CDSFcCompCabRAZONSOCIAL: TStringField;
    CDSFcCompCabDIRECCION: TStringField;
    CDSFcCompCabCPOSTAL: TStringField;
    CDSFcCompCabLOCALIDAD: TStringField;
    CDSFcCompCabTIPOIVA: TIntegerField;
    CDSFcCompCabCUIT: TStringField;
    CDSFcCompCabFECHACOMPRA: TSQLTimeStampField;
    CDSFcCompCabFECHAVTO: TSQLTimeStampField;
    CDSFcCompCabCONDICIONCOMPRA: TIntegerField;
    CDSFcCompCabANULADO: TStringField;
    CDSFcCompCabORDENCOMPRA: TStringField;
    CDSFcCompCabN_OPERACION2: TFMTBCDField;
    CDSFcCompCabNETOGRAV1: TFMTBCDField;
    CDSFcCompCabDSTO: TFMTBCDField;
    CDSFcCompCabDSTOIMPORTE: TFMTBCDField;
    CDSFcCompCabNETOGRAV2: TFMTBCDField;
    CDSFcCompCabNETOEXEN1: TFMTBCDField;
    CDSFcCompCabNETOEXEN2: TFMTBCDField;
    CDSFcCompCabIMPORTEEXCLUIDO2: TFMTBCDField;
    CDSFcCompCabIMPORTEEXCLUIDO1: TFMTBCDField;
    CDSFcCompCabTOTAL: TFMTBCDField;
    CDSFcCompCabDEBE: TFMTBCDField;
    CDSFcCompCabAPLICA: TStringField;
    CDSFcCompCabOBSERVACION1: TStringField;
    CDSFcCompCabOBSERVACION2: TStringField;
    CDSFcCompCabSUCURSALCOMPRA: TIntegerField;
    CDSFcCompCabZONA: TIntegerField;
    CDSFcCompCabDEPOSITO: TIntegerField;
    CDSFcCompCabDESGLOZAIVA: TStringField;
    CDSFcCompCabCALCULA_SOBRETASA: TStringField;
    CDSFcCompCabFECHAFISCAL: TSQLTimeStampField;
    CDSFcCompCabNETOMONOTRIBUTO1: TFMTBCDField;
    CDSFcCompCabNETOMONOTRIBUTO2: TFMTBCDField;
    CDSFcCompCabCPBTE_INTERNO: TStringField;
    CDSFcCompCabINGRESA_A_CTACTE: TStringField;
    CDSFcCompCabINGRESA_LIBRO_IVA: TStringField;
    CDSFcCompCabREDUCIDA: TStringField;
    CDSFcCompCabTIPO_PROVEEDOR: TStringField;
    CDSFcCompCabJURIDICCION: TIntegerField;
    CDSFcCompCabPERCEPCION_IB_BASEIMPONIBLE: TFMTBCDField;
    CDSFcCompCabFECHA_HORA: TSQLTimeStampField;
    CDSFcCompCabUSUARIO: TStringField;
    CDSFcCompCabTOTAL_UNIDADES: TFMTBCDField;
    CDSFcCompCabMONEDA_CPBTE: TIntegerField;
    CDSFcCompCabMONEDA_CPBTE_COTIZACION: TFMTBCDField;
    CDSFcCompCabNUMERO_OPERACION: TStringField;
    DSFcCompCab: TDataSource;
    DSFcCompDet: TDataSource;
    CDSFcCompDet: TClientDataSet;
    CDSFcCompDetID: TIntegerField;
    CDSFcCompDetID_CABFAC: TIntegerField;
    CDSFcCompDetTIPOCPBTE: TStringField;
    CDSFcCompDetCLASECPBTE: TStringField;
    CDSFcCompDetNROCPBTE: TStringField;
    CDSFcCompDetCODIGOPROVEEDOR: TStringField;
    CDSFcCompDetRENGLON: TFMTBCDField;
    CDSFcCompDetFECHACOMPRA: TSQLTimeStampField;
    CDSFcCompDetCODIGOARTICULO: TStringField;
    CDSFcCompDetDETALLE: TStringField;
    CDSFcCompDetUNIDAD: TStringField;
    CDSFcCompDetCANTIDAD: TFMTBCDField;
    CDSFcCompDetUNIDADES_TOTAL: TFloatField;
    CDSFcCompDetUNIDADES_EXENTO: TFloatField;
    CDSFcCompDetUNIDADES_GRAVADO: TFloatField;
    CDSFcCompDetUNITARIO_TOTAL: TFloatField;
    CDSFcCompDetUNITARIO_EXENTO: TFloatField;
    CDSFcCompDetUNITARIO_GRAVADO: TFloatField;
    CDSFcCompDetDESGLOZAIVA: TStringField;
    CDSFcCompDetMODO_GRAVAMEN: TStringField;
    CDSFcCompDetIVA_TASA: TFMTBCDField;
    CDSFcCompDetTIPOIVA_TASA: TIntegerField;
    CDSFcCompDetIVA_SOBRETASA: TFMTBCDField;
    CDSFcCompDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSFcCompDetCOSTO_TOTAL: TFloatField;
    CDSFcCompDetCOSTO_EXENTO: TFloatField;
    CDSFcCompDetCOSTO_GRAVADO: TFloatField;
    CDSFcCompDetDESCUENTO: TFMTBCDField;
    CDSFcCompDetTOTAL: TFMTBCDField;
    CDSFcCompDetDEPOSITO: TIntegerField;
    CDSFcCompDetMARGEN: TFMTBCDField;
    CDSFcCompDetAFECTA_STOCK: TStringField;
    CDSFcCompDetCALCULA_SOBRETASA: TStringField;
    CDSFcCompDetCOSTO_IMP_INTERNO: TFMTBCDField;
    CDSFcCompDetUNIDADES_IMP_INTERNOS: TFMTBCDField;
    CDSFcCompDetUNITARIO_IMP_INTERNO: TFMTBCDField;
    CDSFcCompDetCON_NRO_SERIE: TStringField;
    CDSFcCompDetID_RECEPCION_CAB: TIntegerField;
    CDSFcCompDetID_RECEPCION_DET: TIntegerField;
    CDSFcCompDetNRORECEPCION: TStringField;
    CDSFcCompDetGRAVADO_IB: TStringField;
    CDSFcCompDetID_MONEDA: TIntegerField;
    CDSFcCompDetCOTIZACION: TFMTBCDField;
    DSPFcCompDet: TDataSetProvider;
    QFcCompDet: TSQLQuery;
    QFcCompImp: TSQLQuery;
    DSPFcCompImp: TDataSetProvider;
    CDSFcCompImp: TClientDataSet;
    CDSFcCompImpID_IMPUESTO: TIntegerField;
    CDSFcCompImpCODIGO_GRAVAMEN: TIntegerField;
    CDSFcCompImpDETALLE: TStringField;
    CDSFcCompImpID_FCCOMPCAB: TIntegerField;
    CDSFcCompImpNETO: TFMTBCDField;
    CDSFcCompImpTASA: TFMTBCDField;
    CDSFcCompImpIMPORTE: TFMTBCDField;
    DSFcCompImp: TDataSource;
    QCondPago: TSQLQuery;
    DSPCondPago: TDataSetProvider;
    CDSCondPago: TClientDataSet;
    CDSCondPagoID: TIntegerField;
    CDSCondPagoID_FC: TIntegerField;
    CDSCondPagoTIPOCPBTE: TStringField;
    CDSCondPagoNROCPBTE: TStringField;
    CDSCondPagoCODIGO: TStringField;
    CDSCondPagoITEM: TIntegerField;
    CDSCondPagoFECHA: TSQLTimeStampField;
    CDSCondPagoDSCTO: TFMTBCDField;
    CDSCondPagoIMPORTE: TFMTBCDField;
    CDSCondPagoCLASECPBTE: TStringField;
    DSCondPago: TDataSource;
    DSFcCompPerIva: TDataSource;
    CDSFcCompPerIva: TClientDataSet;
    CDSFcCompPerIvaID_PERCEPCION: TIntegerField;
    CDSFcCompPerIvaCODIGO_PERCEPCION: TIntegerField;
    CDSFcCompPerIvaDETALLE: TStringField;
    CDSFcCompPerIvaID_FCCOMPCAB: TIntegerField;
    CDSFcCompPerIvaNETO: TFMTBCDField;
    CDSFcCompPerIvaTASA: TFMTBCDField;
    CDSFcCompPerIvaIMPORTE: TFMTBCDField;
    CDSFcCompPerIvaCODIGOREGIMEN: TIntegerField;
    DSPFcCompPerIva: TDataSetProvider;
    QFcCompPerIva: TSQLQuery;
    CDSFcCompPerIB: TClientDataSet;
    CDSFcCompPerIBID_PERCEPCION: TIntegerField;
    CDSFcCompPerIBCODIGO_PERCEPCION: TIntegerField;
    CDSFcCompPerIBDETALLE: TStringField;
    CDSFcCompPerIBID_FCCOMPCAB: TIntegerField;
    CDSFcCompPerIBNETO: TFMTBCDField;
    CDSFcCompPerIBTASA: TFMTBCDField;
    CDSFcCompPerIBIMPORTE: TFMTBCDField;
    CDSFcCompPerIBJURIDICION: TIntegerField;
    DSFcCompPerIB: TDataSource;
    DSPFcCompPerIB: TDataSetProvider;
    QFcCompPerIB: TSQLQuery;
    SQLConectionImportacion: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DatosImportacioComp: TDatosImportacioComp;

implementation

{$R *.dfm}

end.
