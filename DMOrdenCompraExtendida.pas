unit DMOrdenCompraExtendida;

interface

uses
  SysUtils, Classes, DB, Provider, DBClient, DBTables;

type
  TDatosOrdenCompraExtendida = class(TDataModule)
    CDSOCCab: TClientDataSet;
    DSPOCCab: TDataSetProvider;
    CDSOCDet: TClientDataSet;
    CDSOCImpuesto: TClientDataSet;
    CDSOCVtos: TClientDataSet;
    DSPOCDet: TDataSetProvider;
    DSPOCImpuesto: TDataSetProvider;
    DSPOCVtos: TDataSetProvider;
    DSOCDet: TDataSource;
    DSOCImpuesto: TDataSource;
    DSOCVtos: TDataSource;
    CDSOCCabID_OC: TIntegerField;
    CDSOCCabTIPOCPBTE: TStringField;
    CDSOCCabCLASECPBTE: TStringField;
    CDSOCCabNROCPBTE: TStringField;
    CDSOCCabCODIGO: TStringField;
    CDSOCCabLETRA: TStringField;
    CDSOCCabSUC: TStringField;
    CDSOCCabNUMERO: TStringField;
    CDSOCCabNOMBRE: TStringField;
    CDSOCCabRAZONSOCIAL: TStringField;
    CDSOCCabDIRECCION: TStringField;
    CDSOCCabCPOSTAL: TStringField;
    CDSOCCabLOCALIDAD: TStringField;
    CDSOCCabTIPOIVA: TIntegerField;
    CDSOCCabCUIT: TStringField;
    CDSOCCabFECHA: TDateTimeField;
    CDSOCCabFECHAVTO: TDateTimeField;
    CDSOCCabCONDICIONCOMPRA: TIntegerField;
    CDSOCCabANULADO: TStringField;
    CDSOCCabN_OPERACION2: TFloatField;
    CDSOCCabNETOGRAV1: TFloatField;
    CDSOCCabNETOGRAV2: TFloatField;
    CDSOCCabDSTO: TFloatField;
    CDSOCCabDSTOIMPORTE: TFloatField;
    CDSOCCabNETOEXEN1: TFloatField;
    CDSOCCabNETOEXEN2: TFloatField;
    CDSOCCabIMPORTEEXCLUIDO1: TFloatField;
    CDSOCCabIMPORTEEXCLUIDO2: TFloatField;
    CDSOCCabNETOMONOTRIBUTO1: TFloatField;
    CDSOCCabNETOMONOTRIBUTO2: TFloatField;
    CDSOCCabTOTAL: TFloatField;
    CDSOCCabIMPRESO: TStringField;
    CDSOCCabSUCURSAL: TIntegerField;
    CDSOCCabDEPOSITO: TIntegerField;
    CDSOCCabAUTORIZO: TStringField;
    CDSOCCabREALIZO: TStringField;
    CDSOCCabCALCULA_SOBRETASA: TStringField;
    CDSOCCabDESGLOZAIVA: TStringField;
    CDSOCCabESTADO: TStringField;
    CDSOCCabFECHAAUTORIZACION: TDateTimeField;
    CDSOCCabFECHACUMPLIDA: TDateTimeField;
    CDSOCCabOBSERVACIONES: TMemoField;
    CDSOCCabNOTAS: TStringField;
    CDSOCCabUSUARIO: TStringField;
    CDSOCCabTRANSPORTE: TIntegerField;
    CDSOCCabTIPO: TSmallintField;
    CDSOCCabMUESTRACONDCOMPRA: TStringField;
    CDSOCCabMUESTRADEPOSITO: TStringField;
    CDSOCCabMUESTRASUCURSAL: TStringField;
    CDSOCCabMUESTRACOMPROBANTE: TStringField;
    CDSOCCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSOCCabMUESTRAREALIZO: TStringField;
    CDSOCCabMUESTRAAUTORIZO: TStringField;
    CDSOCDetID: TIntegerField;
    CDSOCDetID_CABOC: TIntegerField;
    CDSOCDetTIPOCPBTE: TStringField;
    CDSOCDetCLASECPBTE: TStringField;
    CDSOCDetNROCPBTE: TStringField;
    CDSOCDetRENGLON: TFloatField;
    CDSOCDetFECHA: TDateTimeField;
    CDSOCDetCODIGOARTICULO: TStringField;
    CDSOCDetDETALLE: TStringField;
    CDSOCDetUNIDAD: TStringField;
    CDSOCDetCANTIDADPEDIDA: TFloatField;
    CDSOCDetUNITARIO_TOTAL: TFloatField;
    CDSOCDetUNITARIO_GRAVADO: TFloatField;
    CDSOCDetUNITARIO_EXENTO: TFloatField;
    CDSOCDetDESGLOZAIVA: TStringField;
    CDSOCDetIVA_TASA: TFloatField;
    CDSOCDetTIPOIVA_TASA: TIntegerField;
    CDSOCDetIVA_SOBRETASA: TFloatField;
    CDSOCDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSOCDetSUCURSAL: TIntegerField;
    CDSOCDetDEPOSITO: TIntegerField;
    CDSOCDetCALCULA_SOBRETASA: TStringField;
    CDSOCDetMODO_GRAVAMEN: TStringField;
    CDSOCDetTOTAL: TFloatField;
    CDSOCDetID_COMP_REC: TIntegerField;
    CDSOCDetTIPO_COMP_REC: TStringField;
    CDSOCDetCLASE_COMP_REC: TStringField;
    CDSOCDetNRO_COMP_REC: TStringField;
    CDSOCVtosID: TIntegerField;
    CDSOCVtosID_OCCAB: TIntegerField;
    CDSOCVtosDIAS: TSmallintField;
    CDSOCVtosFECHA_VENCIMIEMTO: TDateTimeField;
    CDSOCVtosIMPORTE: TFloatField;
    CDSOCImpuestoID_IMPUESTO: TIntegerField;
    CDSOCImpuestoCODIGO_GRAVAMEN: TIntegerField;
    CDSOCImpuestoDETALLE: TStringField;
    CDSOCImpuestoID_OCCAB: TIntegerField;
    CDSOCImpuestoNETO: TFloatField;
    CDSOCImpuestoTASA: TFloatField;
    CDSOCImpuestoIMPORTE: TFloatField;
    QBuscaComprob: TQuery;
    QTransportes: TQuery;
    DSTransportes: TDataSource;
    procedure CDSOCCabSUCSetText(Sender: TField; const Text: string);
    procedure CDSOCCabNUMEROSetText(Sender: TField; const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DatosOrdenCompraExtendida: TDatosOrdenCompraExtendida;

implementation

{$R *.dfm}
uses DMMainForm;

procedure TDatosOrdenCompraExtendida.CDSOCCabNUMEROSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString := Copy('00000000', 1, Sender.Size - Length(Text)) + Text;
  CDSOCCabNROCPBTE.Value:=CDSOCCabLetra.Value+CDSOCCabSuc.Value+CDSOCCabNumero.Value;

end;

procedure TDatosOrdenCompraExtendida.CDSOCCabSUCSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString := Copy('00000000', 1, Sender.Size - Length(Text)) + Text;
  CDSOCCabNROCPBTE.Value:=CDSOCCabLetra.Value+CDSOCCabSuc.Value+CDSOCCabNumero.Value;
end;

end.
