unit DMGastosBancarios;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDatosGastosBco = class(TDataModule)
    DSPBuscaIVA: TDataSetProvider;
    DSPBuscaPercepIIBB: TDataSetProvider;
    CDSBuscaPercepIIBB: TClientDataSet;
    CDSBuscaPercepIIBBCODIGO: TIntegerField;
    CDSBuscaPercepIIBBDESCRIPCION: TStringField;
    CDSBuscaPercepIIBBCOLUMNA: TSmallintField;
    CDSBuscaPercepIIBBJURIDICION: TIntegerField;
    CDSBuscaIVA: TClientDataSet;
    CDSBuscaIVACODIGO: TIntegerField;
    CDSBuscaIVADESCRIPCION: TStringField;
    CDSBuscaIVACOLUMNA: TSmallintField;
    DSPBuscaPercepIVA: TDataSetProvider;
    CDSBuscaPercepIVA: TClientDataSet;
    CDSBuscaPercepIVACODIGO: TIntegerField;
    CDSBuscaPercepIVADESCRIPCION: TStringField;
    CDSBuscaIVATASA: TFloatField;
    CDSBuscaPercepIIBBTASA: TFloatField;
    CDSBuscaPercepIIBBMINIMOAPLICABLE: TFloatField;
    QCtaBco: TFDQuery;
    QCtaBcoID_CUENTA: TIntegerField;
    QCtaBcoID_TIPO_CTA: TIntegerField;
    QCtaBcoNOMBRE: TStringField;
    QCtaBcoNRO_CUENTA: TStringField;
    QCtaBcoID_BANCO: TIntegerField;
    QCtaBcoCUIT: TStringField;
    QCtaBcoRAZONSOCIAL: TStringField;
    QCtaBcoMUESTRABANCO: TStringField;
    QConcepto: TFDQuery;
    QConceptoCODIGO: TStringField;
    QConceptoDETALLE: TStringField;
    QGravamen: TFDQuery;
    QGravamenCODIGO: TIntegerField;
    QGravamenDESCRIPCION: TStringField;
    QGravamenTASA: TFloatField;
    QGravamenCOLUMNA: TSmallintField;
    QPercepIva: TFDQuery;
    QPercepIvaCODIGO: TIntegerField;
    QPercepIvaDESCRIPCION: TStringField;
    QPercepIvaTASA: TFloatField;
    QPercepIvaMINIMOAPLICABLE: TFloatField;
    QPercepIvaCOLUMNA: TSmallintField;
    QPercepIvaCODIGOREGIMEN: TIntegerField;
    QPercepIB: TFDQuery;
    QPercepIBCODIGO: TIntegerField;
    QPercepIBDESCRIPCION: TStringField;
    QPercepIBTASA: TFloatField;
    QPercepIBMINIMOAPLICABLE: TFloatField;
    QPercepIBCOLUMNA: TSmallintField;
    QPercepIBJURIDICION: TIntegerField;
    QRetenciones: TFDQuery;
    QMov_PerIVA: TFDQuery;
    QMov_PerIVAID: TIntegerField;
    QMov_PerIVACODIGO_PERCEPCION: TIntegerField;
    QMov_PerIVADETALLE: TStringField;
    QMov_PerIVAID_GASTOS_CAB: TIntegerField;
    QMov_PerIVANETO: TFloatField;
    QMov_PerIVATASA: TFloatField;
    QMov_PerIVAIMPORTE: TFloatField;
    QMov_PerIVACODIGOREGIMEN: TIntegerField;
    QMov_IIBB: TFDQuery;
    QMov_IIBBID: TIntegerField;
    QMov_IIBBCODIGO_PERCEPCION: TIntegerField;
    QMov_IIBBDETALLE: TStringField;
    QMov_IIBBID_GASTO_CAB: TIntegerField;
    QMov_IIBBNETO: TFloatField;
    QMov_IIBBTASA: TFloatField;
    QMov_IIBBIMPORTE: TFloatField;
    QMov_IIBBJURIDICION: TIntegerField;
    QMov_Iva: TFDQuery;
    QMov_IvaID: TIntegerField;
    QMov_IvaID_GASTO_CAB: TIntegerField;
    QMov_IvaCODIGO_GRAVAMEN: TIntegerField;
    QMov_IvaDETALLE: TStringField;
    QMov_IvaNETO: TFloatField;
    QMov_IvaTASA: TFloatField;
    QMov_IvaIMPORTE: TFloatField;
    QGastoCab: TFDQuery;
    QGastoCabID: TIntegerField;
    QGastoCabTIPOCPBTE: TStringField;
    QGastoCabCLASECPBTE: TStringField;
    QGastoCabID_CTA_CAJA: TIntegerField;
    QGastoCabCTA_CAJA: TStringField;
    QGastoCabFECHA: TSQLTimeStampField;
    QGastoCabID_BANCO: TIntegerField;
    QGastoCabBANCO: TStringField;
    QGastoCabNUMERO_CTA: TStringField;
    QGastoCabNROCPBTE: TStringField;
    QGastoCabTOTAL: TFloatField;
    QGastoCabFECHAFISCAL: TSQLTimeStampField;
    QGastoCabTIPO: TStringField;
    QGastoCabCUIT: TStringField;
    QGastoCabSUCURSAL: TIntegerField;
    QGastoCabRAZONSOCIAL: TStringField;
    QGastoCabING_LIBROIVA: TStringField;
    QGastoCabCONTABILIZA: TStringField;
    QGastoDet: TFDQuery;
    QBuscadorCtaBco: TFDQuery;
    QBuscadorCtaBcoID_CUENTA: TIntegerField;
    QBuscadorCtaBcoID_TIPO_CTA: TIntegerField;
    QBuscadorCtaBcoNOMBRE: TStringField;
    QBuscadorCtaBcoNRO_CUENTA: TStringField;
    QBuscadorCtaBcoID_BANCO: TIntegerField;
    QBuscadorCtaBcoCUIT: TStringField;
    QBuscadorCtaBcoRAZONSOCIAL: TStringField;
    QBuscadorConcepto: TFDQuery;
    QBuscadorConceptoDETALLE: TStringField;
    QBuscadorConceptoCODIGO: TStringField;
    QBuscadorTRetencion: TFDQuery;
    QBuscadorTRetencionID_RETENCION: TIntegerField;
    QBuscadorTRetencionDETALLE: TStringField;
    QBuscadorTRetencionTIPO: TSmallintField;
    QBorraMovimiento: TFDQuery;
    QJuridicion: TFDQuery;
    QRegimen: TFDQuery;
    QJuridicionCODIGO: TIntegerField;
    QJuridicionDETALLE: TStringField;
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
    spIngresos_Egresos_bco: TFDStoredProc;
    spIngreso_Retenciones: TFDStoredProc;
    QGastoCabIDRESUMEN: TLargeintField;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DatosGastosBco: TDatosGastosBco;

implementation

uses DMBuscadoresForm,UDMain_FD;
{$R *.dfm}

procedure TDatosGastosBco.DataModuleDestroy(Sender: TObject);
begin
  DatosGastosBco:=NIL;
end;

end.
