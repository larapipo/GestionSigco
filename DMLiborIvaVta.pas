unit DMLiborIvaVta;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,System.StrUtils;

type
  TDatosLibroIvaVta = class(TDataModule)
    DSPIIBBJuridiccion: TDataSetProvider;
    CDSIIBBJuridiccion: TClientDataSet;
    CDSIIBBJuridiccionJURIDICION: TIntegerField;
    CDSIIBBJuridiccionJURIDICION_DETALLE: TStringField;
    CDSIIBBJuridiccionNETO: TFloatField;
    DSPLibroIvaVenta: TDataSetProvider;
    CDSLibroIvaVenta: TClientDataSet;
    CDSLibroIvaVentaID: TIntegerField;
    CDSLibroIvaVentaMUESTRA_IVA: TStringField;
    CDSLibroIvaVentaTIPO_CPBTE: TStringField;
    CDSLibroIvaVentaCLASE_CPBTE: TStringField;
    CDSLibroIvaVentaNRO_CPBTE: TStringField;
    CDSLibroIvaVentaRAZON_SOCIAL: TStringField;
    CDSLibroIvaVentaCONDICION_IVA: TIntegerField;
    CDSLibroIvaVentaCUIT: TStringField;
    CDSLibroIvaVentaSUCURSALVENTA: TIntegerField;
    CDSLibroIvaVentaANULADO: TStringField;
    CDSLibroIvaVentaTOTAL_REC: TFloatField;
    CDSLibroIvaVentaCOL1_REC: TFloatField;
    CDSLibroIvaVentaCOL2_REC: TFloatField;
    CDSLibroIvaVentaCOL3_REC: TFloatField;
    CDSLibroIvaVentaCOL4_REC: TFloatField;
    CDSLibroIvaVentaCOL5_REC: TFloatField;
    CDSLibroIvaVentaNETO_EXENTO_REC: TFloatField;
    CDSLibroIvaVentaNETO_GRAVADO_REC: TFloatField;
    CDSLibroIvaVentaJURIDICION: TIntegerField;
    CDSLibroIvaVentaJURIDICION_LOCALIDAD: TIntegerField;
    CDSLibroIvaVentaJURIDICION_DETALLE: TStringField;
    CDSLibroIvaVentaPREFIJO: TStringField;
    CDSLibroIvaVentaNUMERO: TStringField;
    CDSLibroIvaVentaLETRA: TStringField;
    CDSLibroIvaVentaTIPODOCUMENTO: TStringField;
    CDSLibroIvaVentaALCICUOTA: TFloatField;
    CDSLibroIvaVentaCUIT_LIMPIO: TStringField;
    CDSLibroIvaVentaMUESTRACOMPROBANTE: TStringField;
    CDSLibroIvaVentaCODIGO_AFIP: TStringField;
    DSPTitulos: TDataSetProvider;
    CDSTitulos: TClientDataSet;
    CDSTitulosCOLUMNA: TSmallintField;
    CDSTitulosDETALLE: TStringField;
    DSPTotales: TDataSetProvider;
    CDSTotales: TClientDataSet;
    CDSTotalesSUCURSALVENTA: TIntegerField;
    CDSTotalesTIPO_CPBTE: TStringField;
    CDSTotalesMUESTRASUCURSAL: TStringField;
    DSLibroIvaVenta: TDataSource;
    DSTitulos: TDataSource;
    DSTotales: TDataSource;
    DSPEmpresa: TDataSetProvider;
    CDSEmpresa: TClientDataSet;
    DSLibroIvaDet: TDataSource;
    DSPLibroIvaDet: TDataSetProvider;
    CDSLibroIvaDet: TClientDataSet;
    CDSLibroIvaDetID: TIntegerField;
    CDSLibroIvaDetID_LIBRO_IVA: TIntegerField;
    DSPTipoCpbte: TDataSetProvider;
    CDSTipoCpbte: TClientDataSet;
    CDSTipoCpbteDETALLE: TStringField;
    CDSTipoCpbteSIGLA: TStringField;
    DSTipoCpbte: TDataSource;
    DSPTotalesPorCategoria: TDataSetProvider;
    CDSTotalesPorCategoria: TClientDataSet;
    CDSTotalesPorCategoriaSUCURSAL: TIntegerField;
    CDSTotalesPorCategoriaMUESTRASUCURSAL: TStringField;
    CDSTotalesPorCategoriaTIPOIVA: TIntegerField;
    CDSTotalesPorCategoriaTIPOCPBTE: TStringField;
    CDSTotalesPorCategoriaCLASECPBTE: TStringField;
    CDSTotalesPorCategoriaLETRAFAC: TStringField;
    CDSTotalesPorCategoriaMUESTRACOMPROBANTE: TStringField;
    CDSTotalesPorCategoriaMUESTRAINSCRIPCION: TStringField;
    CDSTotalesPorCategoriaTOTAL_SUMANETO_IMPUESTO: TFloatField;
    DSTotalesPorCategoria: TDataSource;
    DSPIvaHolister: TDataSetProvider;
    CDSIvaHolister: TClientDataSet;
    DSIvaHolister: TDataSource;
    CDSVtaVizcay: TClientDataSet;
    CDSVtaVizcayTIPOCOMPROBANTE: TStringField;
    CDSVtaVizcayPUNTOVENTA: TStringField;
    CDSVtaVizcayNUMERO: TStringField;
    CDSVtaVizcayDENOMINACIONRECEPTOR: TStringField;
    CDSVtaVizcayTIPODOCUMENTORECEPTOR: TIntegerField;
    CDSVtaVizcayDOCUMENTORECEPTOR: TStringField;
    DSPVtaVizcay: TDataSetProvider;
    DSCompIVADeb: TDataSource;
    DSCompIVACre: TDataSource;
    CDSCompIVADeb: TClientDataSet;
    CDSCompIVADebDETALLE: TStringField;
    CDSCompIVADebID_IVA: TIntegerField;
    CDSCompIVADebIVA_DESCRIPCION: TStringField;
    CDSCompIVACre: TClientDataSet;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    DSPComposicionIVA: TDataSetProvider;
    CDSDebitos: TClientDataSet;
    CDSDebitosCONDICION_IVA: TIntegerField;
    CDSDebitosMUESTRA_IVA: TStringField;
    CDSCreditos: TClientDataSet;
    CDSCreditosCONDICION_IVA: TIntegerField;
    CDSCreditosMUESTRA_IVA: TStringField;
    DSPCreditos: TDataSetProvider;
    DSPDebitos: TDataSetProvider;
    QLibroIvaVenta: TFDQuery;
    CDSLibroIvaVentaNETO_EXENTO: TFloatField;
    CDSLibroIvaVentaNETO_GRAVADO: TFloatField;
    CDSLibroIvaVentaPERC_IB: TFloatField;
    CDSLibroIvaVentaTOTAL: TFloatField;
    CDSLibroIvaVentaCOL1: TFloatField;
    CDSLibroIvaVentaCOL2: TFloatField;
    CDSLibroIvaVentaCOL3: TFloatField;
    CDSLibroIvaVentaCOL4: TFloatField;
    CDSLibroIvaVentaCOL5: TFloatField;
    QIIBBJuridiccion: TFDQuery;
    CDSIIBBJuridiccionIMPUESTO: TFloatField;
    QTitulos: TFDQuery;
    QTotal: TFDQuery;
    CDSTotalesTASA: TFloatField;
    CDSTotalesNETO: TFloatField;
    CDSTotalesIMPUESTO: TFloatField;
    QLibroIvaDet: TFDQuery;
    QTipoCp: TFDQuery;
    QTotalesPorCateg: TFDQuery;
    CDSTotalesPorCategoriaTASA: TFloatField;
    CDSTotalesPorCategoriaMUESTRANETO: TFloatField;
    CDSTotalesPorCategoriaMUESTRAIMPUESTO: TFloatField;
    CDSTotalesPorCategoriaTOTAL: TFloatField;
    CDSTotalesPorCategoriaTOTALNETO: TFloatField;
    CDSTotalesPorCategoriaTOTALEXENTO: TFloatField;
    CDSTotalesPorCategoriaTOTALIIBB: TFloatField;
    QComposicionIva: TFDQuery;
    CDSCompIVADebNETO_GRAVADO: TFloatField;
    CDSCompIVADebTASA_1: TFloatField;
    CDSCompIVADebTASA_2: TFloatField;
    CDSCompIVADebTASA_3: TFloatField;
    CDSCompIVADebTASA_4: TFloatField;
    CDSCompIVADebNETO_EXENTO: TFloatField;
    CDSCompIVADebIIBB: TFloatField;
    CDSCompIVADebTOTAL: TFloatField;
    CDSCompIVADebTOTALCALCULADO: TFloatField;
    CDSCompIVADebNETO1: TFloatField;
    CDSCompIVADebNETO2: TFloatField;
    CDSCompIVADebNETO3: TFloatField;
    CDSCompIVADebNETO4: TFloatField;
    CDSCompIVADebPORCTASA_1: TFloatField;
    CDSCompIVADebPORCTASA_2: TFloatField;
    CDSCompIVADebPORCTASA_3: TFloatField;
    CDSCompIVADebPORCTASA_4: TFloatField;
    CDSCompIVACreNETO1: TFloatField;
    CDSCompIVACreNETO2: TFloatField;
    CDSCompIVACreNETO3: TFloatField;
    CDSCompIVACreNETO4: TFloatField;
    CDSCompIVACreNETO_GRAVADO: TFloatField;
    CDSCompIVACreNETO_EXENTO: TFloatField;
    CDSCompIVACreIIBB: TFloatField;
    CDSCompIVACreTOTALCALCULADO: TFloatField;
    CDSCompIVACreTOTAL: TFloatField;
    CDSCompIVACrePORCTASA_1: TFloatField;
    CDSCompIVACrePORCTASA_2: TFloatField;
    CDSCompIVACrePORCTASA_3: TFloatField;
    CDSCompIVACrePORCTASA_4: TFloatField;
    CDSCompIVACreTASA_1: TFloatField;
    CDSCompIVACreTASA_2: TFloatField;
    CDSCompIVACreTASA_3: TFloatField;
    CDSCompIVACreTASA_4: TFloatField;
    QDeb: TFDQuery;
    CDSDebitosEXENTO: TFloatField;
    CDSDebitosNETOGRAVADO: TFloatField;
    CDSDebitosPERCEPIIBB: TFloatField;
    CDSDebitosIVA: TFloatField;
    CDSDebitosTASA1: TFloatField;
    CDSDebitosIVA1: TFloatField;
    CDSDebitosTASA2: TFloatField;
    CDSDebitosIVA2: TFloatField;
    CDSDebitosTASA3: TFloatField;
    CDSDebitosIVA3: TFloatField;
    CDSDebitosTASA4: TFloatField;
    CDSDebitosIVA4: TFloatField;
    CDSDebitosTOTAL: TFloatField;
    QCred: TFDQuery;
    CDSCreditosEXENTO: TFloatField;
    CDSCreditosNETOGRAVADO: TFloatField;
    CDSCreditosPERCEPIIBB: TFloatField;
    CDSCreditosIVA: TFloatField;
    CDSCreditosTASA1: TFloatField;
    CDSCreditosIVA1: TFloatField;
    CDSCreditosTASA2: TFloatField;
    CDSCreditosIVA2: TFloatField;
    CDSCreditosTASA3: TFloatField;
    CDSCreditosIVA3: TFloatField;
    CDSCreditosTASA4: TFloatField;
    CDSCreditosIVA4: TFloatField;
    CDSCreditosTOTAL: TFloatField;
    QIvaHolister: TFDQuery;
    QVtaVizcay: TFDQuery;
    CDSVtaVizcayNETO21: TFloatField;
    CDSVtaVizcayIVA21: TFloatField;
    CDSVtaVizcayBRUTO21: TFloatField;
    CDSVtaVizcayNETO10_5: TFloatField;
    CDSVtaVizcayIVA10_5: TFloatField;
    CDSVtaVizcayBRUTO10_5: TFloatField;
    CDSVtaVizcayNETO27: TFloatField;
    CDSVtaVizcayIVA27: TFloatField;
    CDSVtaVizcayBRUTO27: TFloatField;
    CDSVtaVizcayEXENTO: TFloatField;
    CDSVtaVizcayIMPUESTOSINTERNOS: TFloatField;
    CDSLibroIvaDetTASA: TFloatField;
    CDSLibroIvaDetIMPORTE: TFloatField;
    CDSLibroIvaDetCOLUMNA: TSmallintField;
    CDSLibroIvaDetNETO: TFloatField;
    CDSLibroIvaVentaID_CPBTE: TIntegerField;
    CDSLibroIvaVentaPERC_IB_REC: TFloatField;
    QComposicionIvaDETALLE: TStringField;
    QComposicionIvaID_IVA: TIntegerField;
    QComposicionIvaIVA_DESCRIPCION: TStringField;
    QComposicionIvaNETO1: TFloatField;
    QComposicionIvaNETO2: TFloatField;
    QComposicionIvaNETO3: TFloatField;
    QComposicionIvaNETO4: TFloatField;
    QComposicionIvaNETO_GRAVADO: TFloatField;
    QComposicionIvaTASA_1: TFloatField;
    QComposicionIvaTASA_2: TFloatField;
    QComposicionIvaTASA_3: TFloatField;
    QComposicionIvaTASA_4: TFloatField;
    QComposicionIvaNETO_EXENTO: TFloatField;
    QComposicionIvaIIBB: TFloatField;
    QComposicionIvaTOTAL: TFloatField;
    QComposicionIvaTOTALCALCULADO: TFloatField;
    QComposicionIvaPORCTASA_1: TFloatField;
    QComposicionIvaPORCTASA_2: TFloatField;
    QComposicionIvaPORCTASA_3: TFloatField;
    QComposicionIvaPORCTASA_4: TFloatField;
    CDSCompIVADebCred: TClientDataSet;
    DSCompIVADebCred: TDataSource;
    CDSCompIVADebCredDETALLE: TStringField;
    CDSCompIVADebCredID_IVA: TIntegerField;
    CDSCompIVADebCredIVA_DESCRIPCION: TStringField;
    CDSCompIVADebCredNETO1: TFloatField;
    CDSCompIVADebCredNETO2: TFloatField;
    CDSCompIVADebCredNETO3: TFloatField;
    CDSCompIVADebCredNETO4: TFloatField;
    CDSCompIVADebCredNETO_GRAVADO: TFloatField;
    CDSCompIVADebCredTASA_1: TFloatField;
    CDSCompIVADebCredTASA_2: TFloatField;
    CDSCompIVADebCredTASA_3: TFloatField;
    CDSCompIVADebCredTASA_4: TFloatField;
    CDSCompIVADebCredNETO_EXENTO: TFloatField;
    CDSCompIVADebCredIIBB: TFloatField;
    CDSCompIVADebCredTOTAL: TFloatField;
    CDSCompIVADebCredTOTALCALCULADO: TFloatField;
    CDSCompIVADebCredPORCTASA_1: TFloatField;
    CDSCompIVADebCredPORCTASA_2: TFloatField;
    CDSCompIVADebCredPORCTASA_3: TFloatField;
    CDSCompIVADebCredPORCTASA_4: TFloatField;
    spAgruparLibroFD: TFDStoredProc;
    QMaxID: TFDQuery;
    QMinID: TFDQuery;
    CDSIIBBJuridiccionNETO_CAL: TFloatField;
    CDSIIBBJuridiccionTIPO_CPBTE: TStringField;
    CDSIIBBJuridiccionIMPUESTO_CAL: TFloatField;
    CDSIIBBJuridiccionIMPORTEIVA: TFloatField;
    CDSIIBBJuridiccionIMPORTEIVA_CAL: TFloatField;
    CDSLibroIvaVentaFECHA: TSQLTimeStampField;
    CDSLibroIvaVentaCOL6: TFloatField;
    CDSLibroIvaVentaFECHAVTO: TSQLTimeStampField;
    CDSVtaVizcayFECHAEMISION: TSQLTimeStampField;
    CDSLibroIvaVentaPERC_IVA: TFloatField;
    QComposicionIvaPERCIVA: TFloatField;
    CDSCompIVADebPERCIVA: TFloatField;
    CDSCompIVACrePERCIVA: TFloatField;
    CDSCompIVADebCredPERCIVA: TFloatField;
    CDSDebitosPERCEPIVA: TFloatField;
    CDSCreditosPERCEPIVA: TFloatField;
    CDSTotalesPorCategoriaTOTALPERCIVA: TFloatField;
    CDSLibroIvaVentaPERC_IVA_REC: TFloatField;
    CDSIvaHolisterFECHA: TSQLTimeStampField;
    CDSIvaHolisterTIPO_CPBTE: TStringField;
    CDSIvaHolisterLETRA: TStringField;
    CDSIvaHolisterNRO_CPBTE: TStringField;
    CDSIvaHolisterRAZON_SOCIAL: TStringField;
    CDSIvaHolisterCONDICION_IVA: TIntegerField;
    CDSIvaHolisterCUIT: TStringField;
    CDSIvaHolisterNETO_GRAVADO: TFloatField;
    CDSIvaHolisterALICUOTA: TFloatField;
    CDSIvaHolisterIVALIQ: TFloatField;
    CDSIvaHolisterIVADEBITO: TFloatField;
    CDSIvaHolisterNETO_EXENTO: TFloatField;
    CDSIvaHolisterTOTAL: TFloatField;
    CDSIvaHolisterMUESTRA_IVA: TStringField;
    FDQuery1: TFDQuery;
    CDSIIBBJuridiccionMUESTRAJURIDICCION: TStringField;
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
    procedure CDSLibroIvaVentaCalcFields(DataSet: TDataSet);
    procedure CDSTitulosAfterOpen(DataSet: TDataSet);
    procedure CDSCompIVACreAfterOpen(DataSet: TDataSet);
    procedure CDSCompIVADebAfterOpen(DataSet: TDataSet);
    procedure CDSIvaHolisterCalcFields(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSCompIVADebCredAfterOpen(DataSet: TDataSet);
    procedure CDSIIBBJuridiccionCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DatosLibroIvaVta: TDatosLibroIvaVta;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDMain_FD;
{$R *.dfm}

procedure TDatosLibroIvaVta.CDSCompIVACreAfterOpen(DataSet: TDataSet);
begin
  DatosLibroIvaVta.CDSCompIVACreTASA_1.DisplayLabel:=FormatFloat('0.00',DatosLibroIvaVta.CDSCompIVACrePORCTASA_1.AsFloat)+'%';
  DatosLibroIvaVta.CDSCompIVACreTASA_2.DisplayLabel:=FormatFloat('0.00',DatosLibroIvaVta.CDSCompIVACrePORCTASA_2.AsFloat)+'%';
  DatosLibroIvaVta.CDSCompIVACreTASA_3.DisplayLabel:=FormatFloat('0.00',DatosLibroIvaVta.CDSCompIVACrePORCTASA_3.AsFloat)+'%';
  DatosLibroIvaVta.CDSCompIVACreTASA_4.DisplayLabel:=FormatFloat('0.00',DatosLibroIvaVta.CDSCompIVACrePORCTASA_4.AsFloat)+'%';
end;

procedure TDatosLibroIvaVta.CDSCompIVADebAfterOpen(DataSet: TDataSet);
begin
  DatosLibroIvaVta.CDSCompIVADebTASA_1.DisplayLabel:=FormatFloat('0.00',DatosLibroIvaVta.CDSCompIVADebPORCTASA_1.AsFloat)+'%';
  DatosLibroIvaVta.CDSCompIVADebTASA_2.DisplayLabel:=FormatFloat('0.00',DatosLibroIvaVta.CDSCompIVADebPORCTASA_2.AsFloat)+'%';
  DatosLibroIvaVta.CDSCompIVADebTASA_3.DisplayLabel:=FormatFloat('0.00',DatosLibroIvaVta.CDSCompIVADebPORCTASA_3.AsFloat)+'%';
  DatosLibroIvaVta.CDSCompIVADebTASA_4.DisplayLabel:=FormatFloat('0.00',DatosLibroIvaVta.CDSCompIVADebPORCTASA_4.AsFloat)+'%';
end;

procedure TDatosLibroIvaVta.CDSCompIVADebCredAfterOpen(DataSet: TDataSet);
begin
  DatosLibroIvaVta.CDSCompIVADebCredTASA_1.DisplayLabel:=FormatFloat('0.00',DatosLibroIvaVta.CDSCompIVADebCredPORCTASA_1.AsFloat)+'%';
  DatosLibroIvaVta.CDSCompIVADebCredTASA_2.DisplayLabel:=FormatFloat('0.00',DatosLibroIvaVta.CDSCompIVADebCredPORCTASA_2.AsFloat)+'%';
  DatosLibroIvaVta.CDSCompIVADebCredTASA_3.DisplayLabel:=FormatFloat('0.00',DatosLibroIvaVta.CDSCompIVADebCredPORCTASA_3.AsFloat)+'%';
  DatosLibroIvaVta.CDSCompIVADebCredTASA_4.DisplayLabel:=FormatFloat('0.00',DatosLibroIvaVta.CDSCompIVADebCredPORCTASA_4.AsFloat)+'%';
end;

procedure TDatosLibroIvaVta.CDSIIBBJuridiccionCalcFields(DataSet: TDataSet);
begin
  CDSIIBBJuridiccionNETO_CAL.Value       := CDSIIBBJuridiccionNETO.Value;
  CDSIIBBJuridiccionIMPUESTO_CAL.Value   := CDSIIBBJuridiccionIMPUESTO.Value;
  CDSIIBBJuridiccionIMPORTEIVA_CAL.Value := CDSIIBBJuridiccionIMPORTEIVA.Value;
  if CDSIIBBJuridiccionTIPO_CPBTE.Value='NC' then
     begin
       CDSIIBBJuridiccionNETO_CAL.Value       := CDSIIBBJuridiccionNETO.Value * -1;
       CDSIIBBJuridiccionIMPUESTO_CAL.Value   := CDSIIBBJuridiccionIMPUESTO.Value * -1;
       CDSIIBBJuridiccionIMPORTEIVA_CAL.Value := CDSIIBBJuridiccionIMPORTEIVA.Value * -1;

     end;
end;

procedure TDatosLibroIvaVta.CDSIvaHolisterCalcFields(DataSet: TDataSet);
begin
  {
  if DatosLibroIvaVta.CDSIvaHolisterTIPO_CPBTE.Value='NC' then
    begin
      DatosLibroIvaVta.CDSIvaHolisterNETO_EXENTO_REC.Value :=DatosLibroIvaVta.CDSIvaHolisterNETO_EXENTO.AsFloat*-1;
      DatosLibroIvaVta.CDSIvaHolisterNETO_GRAVADO_REC.Value:=DatosLibroIvaVta.CDSIvaHolisterNETO_GRAVADO.AsFloat*-1;
      DatosLibroIvaVta.CDSIvaHolisterNETO_GRAVADO_REC.Value:=DatosLibroIvaVta.CDSIvaHolisterNETO_GRAVADO.AsFloat*-1;

     end
  else
    begin
      DatosLibroIvaVta.CDSIvaHolisterNETO_EXENTO_REC.Value  := DatosLibroIvaVta.CDSIvaHolisterNETO_EXENTO.AsFloat;
      DatosLibroIvaVta.CDSIvaHolisterNETO_GRAVADO_REC.Value := DatosLibroIvaVta.CDSIvaHolisterNETO_GRAVADO.AsFloat;
       DatosLibroIvaVta.CDSIvaHolisterTOTAL_REC.Value        := DatosLibroIvaVta.CDSIvaHolisterTOTAL.AsFloat;
    end;
   DatosLibroIvaVta.CDSIvaHolisterLETRA.Value     :=Copy(DatosLibroIvaVta.CDSIvaHolisterNRO_CPBTE.AsString,1,1);
  DatosLibroIvaVta.CDSIvaHolisterPREFIJO.Value    :=Copy(DatosLibroIvaVta.CDSIvaHolisterNRO_CPBTE.AsString,2,4);
  DatosLibroIvaVta.CDSIvaHolisterNUMERO.Value     :=Copy(DatosLibroIvaVta.CDSIvaHolisterNRO_CPBTE.AsString,6,8);
  if DatosLibroIvaVta.CDSIvaHolisterCONDICION_IVA.Value=3 then DatosLibroIvaVta.CDSIvaHolisterTIPODOCUMENTO.Value:='96'
  else
  if DatosLibroIvaVta.CDSIvaHolisterCONDICION_IVA.Value<>3 then DatosLibroIvaVta.CDSIvaHolisterTIPODOCUMENTO.Value:='80';
  DatosLibroIvaVta.CDSIvaHolisterCUIT_LIMPIO.Value:=AnsiReplaceStr(DatosLibroIvaVta.CDSIvaHolisterCUIT.Value,'-','');
  }
end;

procedure TDatosLibroIvaVta.CDSLibroIvaVentaCalcFields(DataSet: TDataSet);
begin
  if DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='NC' then
    begin
      DatosLibroIvaVta.CDSLibroIvaVentaNETO_EXENTO_REC.Value  := DatosLibroIvaVta.CDSLibroIvaVentaNETO_EXENTO.AsFloat*-1;
      DatosLibroIvaVta.CDSLibroIvaVentaNETO_GRAVADO_REC.Value := DatosLibroIvaVta.CDSLibroIvaVentaNETO_GRAVADO.AsFloat*-1;
      DatosLibroIvaVta.CDSLibroIvaVentaTOTAL_REC.Value        := DatosLibroIvaVta.CDSLibroIvaVentaTOTAL.AsFloat*-1;
      DatosLibroIvaVta.CDSLibroIvaVentaCOL1_REC.Value         := DatosLibroIvaVta.CDSLibroIvaVentaCOL1.AsFloat*-1;
      DatosLibroIvaVta.CDSLibroIvaVentaCOL2_REC.Value         := DatosLibroIvaVta.CDSLibroIvaVentaCOL2.AsFloat*-1;
      DatosLibroIvaVta.CDSLibroIvaVentaCOL3_REC.Value         := DatosLibroIvaVta.CDSLibroIvaVentaCOL3.AsFloat*-1;
      DatosLibroIvaVta.CDSLibroIvaVentaCOL4_REC.Value         := DatosLibroIvaVta.CDSLibroIvaVentaCOL4.AsFloat*-1;
      DatosLibroIvaVta.CDSLibroIvaVentaCOL5_REC.Value         := DatosLibroIvaVta.CDSLibroIvaVentaCOL5.AsFloat*-1;
      DatosLibroIvaVta.CDSLibroIvaVentaPERC_IB_REC.Value      := DatosLibroIvaVta.CDSLibroIvaVentaPERC_IB.AsFloat*-1;
      DatosLibroIvaVta.CDSLibroIvaVentaPERC_IVA_REC.Value     := DatosLibroIvaVta.CDSLibroIvaVentaPERC_IVA.AsFloat*-1;
    end
  else
    begin
      DatosLibroIvaVta.CDSLibroIvaVentaNETO_EXENTO_REC.Value  := DatosLibroIvaVta.CDSLibroIvaVentaNETO_EXENTO.AsFloat;
      DatosLibroIvaVta.CDSLibroIvaVentaNETO_GRAVADO_REC.Value := DatosLibroIvaVta.CDSLibroIvaVentaNETO_GRAVADO.AsFloat;
      DatosLibroIvaVta.CDSLibroIvaVentaTOTAL_REC.Value        := DatosLibroIvaVta.CDSLibroIvaVentaTOTAL.AsFloat;
      DatosLibroIvaVta.CDSLibroIvaVentaCOL1_REC.Value         := DatosLibroIvaVta.CDSLibroIvaVentaCOL1.AsFloat;
      DatosLibroIvaVta.CDSLibroIvaVentaCOL2_REC.Value         := DatosLibroIvaVta.CDSLibroIvaVentaCOL2.AsFloat;
      DatosLibroIvaVta.CDSLibroIvaVentaCOL3_REC.Value         := DatosLibroIvaVta.CDSLibroIvaVentaCOL3.AsFloat;
      DatosLibroIvaVta.CDSLibroIvaVentaCOL4_REC.Value         := DatosLibroIvaVta.CDSLibroIvaVentaCOL4.AsFloat;
      DatosLibroIvaVta.CDSLibroIvaVentaCOL5_REC.Value         := DatosLibroIvaVta.CDSLibroIvaVentaCOL5.AsFloat;
      DatosLibroIvaVta.CDSLibroIvaVentaPERC_IB_REC.Value      := DatosLibroIvaVta.CDSLibroIvaVentaPERC_IB.AsFloat;
      DatosLibroIvaVta.CDSLibroIvaVentaPERC_IVA_REC.Value     := DatosLibroIvaVta.CDSLibroIvaVentaPERC_IVA.AsFloat;

    end;
  DatosLibroIvaVta.CDSLibroIvaVentaLETRA.Value   := Copy(DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString,1,1);
  DatosLibroIvaVta.CDSLibroIvaVentaPREFIJO.Value := Copy(DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString,2,4);
  DatosLibroIvaVta.CDSLibroIvaVentaNUMERO.Value  := Copy(DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString,6,8);
  if DatosLibroIvaVta.CDSLibroIvaVentaCONDICION_IVA.Value=3 then DatosLibroIvaVta.CDSLibroIvaVentaTIPODOCUMENTO.Value:='96'
  else
  if DatosLibroIvaVta.CDSLibroIvaVentaCONDICION_IVA.Value<>3 then DatosLibroIvaVta.CDSLibroIvaVentaTIPODOCUMENTO.Value:='80';
  DatosLibroIvaVta.CDSLibroIvaVentaALCICUOTA.Value:=21;
  DatosLibroIvaVta.CDSLibroIvaVentaCUIT_LIMPIO.Value:= AnsiReplaceStr(DatosLibroIvaVta.CDSLibroIvaVentaCUIT.Value,'-','');
end;

procedure TDatosLibroIvaVta.CDSTitulosAfterOpen(DataSet: TDataSet);
begin
  DatosLibroIvaVta.CDSTitulos.First;
  DatosLibroIvaVta.CDSLibroIvaVentaCOL1.DisplayLabel    :=DatosLibroIvaVta.CDSTitulosDETALLE.Value;
  DatosLibroIvaVta.CDSLibroIvaVentaCOL1_REC.DisplayLabel:=DatosLibroIvaVta.CDSTitulosDETALLE.Value;

  DatosLibroIvaVta.CDSTitulos.Next;
  DatosLibroIvaVta.CDSLibroIvaVentaCOL2.DisplayLabel    :=DatosLibroIvaVta.CDSTitulosDETALLE.Value;
  DatosLibroIvaVta.CDSLibroIvaVentaCOL2_REC.DisplayLabel:=DatosLibroIvaVta.CDSTitulosDETALLE.Value;

  DatosLibroIvaVta.CDSTitulos.Next;
  DatosLibroIvaVta.CDSLibroIvaVentaCOL3.DisplayLabel    :=DatosLibroIvaVta.CDSTitulosDETALLE.Value;
  DatosLibroIvaVta.CDSLibroIvaVentaCOL3_REC.DisplayLabel:=DatosLibroIvaVta.CDSTitulosDETALLE.Value;

  DatosLibroIvaVta.CDSTitulos.Next;
  DatosLibroIvaVta.CDSLibroIvaVentaCOL4.DisplayLabel    :=DatosLibroIvaVta.CDSTitulosDETALLE.Value;
  DatosLibroIvaVta.CDSLibroIvaVentaCOL4_REC.DisplayLabel:=DatosLibroIvaVta.CDSTitulosDETALLE.Value;

  DatosLibroIvaVta.CDSTitulos.Next;

  if (DatosLibroIvaVta.CDSTitulos.Eof) Then
    begin
     DatosLibroIvaVta.CDSLibroIvaVentaCOL5.DisplayLabel    :='--';
     DatosLibroIvaVta.CDSLibroIvaVentaCOL5_REC.DisplayLabel:='--';
    end
  else
    begin
     DatosLibroIvaVta.CDSLibroIvaVentaCOL5.DisplayLabel    :=DatosLibroIvaVta.CDSTitulosDETALLE.Value;
     DatosLibroIvaVta.CDSLibroIvaVentaCOL5_REC.DisplayLabel:=DatosLibroIvaVta.CDSTitulosDETALLE.Value;
    end
end;

procedure TDatosLibroIvaVta.DataModuleDestroy(Sender: TObject);
begin
  DatosLibroIvaVta:=nil;
end;

end.
