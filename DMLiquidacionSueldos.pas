unit DMLiquidacionSueldos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, IBGenerator,Dialogs,System.DateUtils;

type
  TDatosLiquidacionSueldo = class(TDataModule)
    QConceptosCate: TFDQuery;
    DSPConceptosCategorias: TDataSetProvider;
    CDSConceptosCategorias: TClientDataSet;
    CDSConceptosCategoriasID: TIntegerField;
    CDSConceptosCategoriasIDCATEGORIA: TIntegerField;
    CDSConceptosCategoriasIDCONCEPTO: TIntegerField;
    CDSConceptosCategoriasTIPO_CONCEPTO: TStringField;
    CDSConceptosCategoriasCONCEPTO: TStringField;
    CDSConceptosCategoriasCANTIDAD: TIntegerField;
    CDSConceptosCategoriasIMPORTE: TFloatField;
    CDSConceptosCategoriasPORCENTAJE: TFloatField;
    CDSConceptosCategoriasVALORHORA: TFloatField;
    CDSConceptosCategoriasTIPO_LIQUIDACION: TSmallintField;
    CDSConceptosCategoriasRENGLON: TIntegerField;
    QConcepto: TFDQuery;
    QConceptoID: TIntegerField;
    QConceptoTIPO: TStringField;
    QConceptoCONCEPTO: TStringField;
    QConceptoCALCULO: TStringField;
    QConceptoIMPORTE: TFloatField;
    QConceptoPORCENTAJE: TFloatField;
    QConceptoMINIMO: TFloatField;
    QConceptoCONCEPTOBASE: TIntegerField;
    QConceptoCOLUMNA: TIntegerField;
    QConceptoMAXIMO: TIntegerField;
    QConceptoVISIBLE: TStringField;
    QConceptoCONCEPTOBASE2: TIntegerField;
    QHoras: TFDQuery;
    QHorasCANITDADHORAS: TFloatField;
    QNovedades: TFDQuery;
    QEmpleado_: TFDQuery;
    QEmbargos: TFDQuery;
    DSPEmbargos: TDataSetProvider;
    CDSEmbargos: TClientDataSet;
    QLstEmpleados: TFDQuery;
    QProduccion: TFDQuery;
    QProduccionID: TIntegerField;
    QProduccionID_CONCEPTO: TIntegerField;
    QProduccionDETALLE: TStringField;
    QProduccionCANTIDAD: TFloatField;
    QProduccionVALOR_UNITARIO: TFloatField;
    QProduccionVALOR_TOTAL: TFloatField;
    QProduccionLEGAJO: TIntegerField;
    QProduccionLIQUIDADO: TStringField;
    QProduccionIDRECIBO: TIntegerField;
    QProduccionIDLUGAR: TIntegerField;
    QProduccionIDLIQUIDACION: TIntegerField;
    QProduccionMUESTRALUGAR: TStringField;
    DSProduccion: TDataSource;
    QHorasRecibos: TFDQuery;
    DSPHorasRecibo: TDataSetProvider;
    CDSHorasRecibo: TClientDataSet;
    DSHorasRecibo: TDataSource;
    QProduccionRecibo: TFDQuery;
    DSPPruccionRecibo: TDataSetProvider;
    CDSProduccionRecibo: TClientDataSet;
    DSProduccionRecibo: TDataSource;
    QDetalleRecibo: TFDQuery;
    QDetalleReciboID: TIntegerField;
    QDetalleReciboIDRECIBO: TIntegerField;
    QDetalleReciboTIPO: TStringField;
    QDetalleReciboIDCONCEPTO: TIntegerField;
    QDetalleReciboCONCEPTO: TStringField;
    QDetalleReciboCALCULO: TStringField;
    QDetalleReciboIMPORTE: TFloatField;
    QDetalleReciboPORCENTAJE: TFloatField;
    QDetalleReciboCANTIDAD: TFloatField;
    QDetalleReciboREMUNERACION: TFloatField;
    QDetalleReciboREMUNERACIONEXENTA: TFloatField;
    QDetalleReciboRETENCION: TFloatField;
    QDetalleReciboBASE: TFloatField;
    QDetalleReciboNUMERO: TIntegerField;
    DSPDetalleRecibos: TDataSetProvider;
    CDSDetalleRecibo: TClientDataSet;
    CDSDetalleReciboID: TIntegerField;
    CDSDetalleReciboIDRECIBO: TIntegerField;
    CDSDetalleReciboTIPO: TStringField;
    CDSDetalleReciboIDCONCEPTO: TIntegerField;
    CDSDetalleReciboCONCEPTO: TStringField;
    CDSDetalleReciboCALCULO: TStringField;
    CDSDetalleReciboIMPORTE: TFloatField;
    CDSDetalleReciboPORCENTAJE: TFloatField;
    CDSDetalleReciboCANTIDAD: TFloatField;
    CDSDetalleReciboREMUNERACION: TFloatField;
    CDSDetalleReciboREMUNERACIONEXENTA: TFloatField;
    CDSDetalleReciboRETENCION: TFloatField;
    CDSDetalleReciboBASE: TFloatField;
    CDSDetalleReciboNUMERO: TIntegerField;
    QRecibos: TFDQuery;
    DSPRecibos: TDataSetProvider;
    CDSRecibos: TClientDataSet;
    CDSRecibosID: TIntegerField;
    CDSRecibosIDLIQUIDACION: TIntegerField;
    CDSRecibosLEGAJO: TIntegerField;
    CDSRecibosNUMERO: TIntegerField;
    CDSRecibosNOMBRE: TStringField;
    CDSRecibosDIRECCIONEMPLEADO: TStringField;
    CDSRecibosCATEGORIA: TIntegerField;
    CDSRecibosSECCION: TIntegerField;
    CDSRecibosVALORHORA: TFloatField;
    CDSRecibosIDEMPLEADOR: TIntegerField;
    CDSRecibosEMPLEADOR: TStringField;
    CDSRecibosDIRECCIONEMPLEADOR: TStringField;
    CDSRecibosCAJAJUBILACION: TStringField;
    CDSRecibosLOCALIDAD: TStringField;
    CDSRecibosREMUNERACIONES: TFloatField;
    CDSRecibosREMUNERACIONESEXENTAS: TFloatField;
    CDSRecibosRETENCIONES: TFloatField;
    CDSRecibosNETO: TFloatField;
    CDSRecibosENLETRAS: TStringField;
    CDSRecibosACUMULADOAGUINALDO: TFloatField;
    CDSRecibosDEPOSITADO: TStringField;
    CDSRecibosCUITEMPLEADOR: TStringField;
    CDSRecibosCUIL_EMPLEADO: TStringField;
    CDSRecibosTIPO_LIQUIDACION: TIntegerField;
    CDSRecibosBASICO: TFloatField;
    CDSRecibosPERIODO: TStringField;
    CDSRecibosMUESTRATIPOLIQUIDACION: TStringField;
    CDSRecibosMUESTRACATEGORIA: TStringField;
    CDSRecibosFECHA: TSQLTimeStampField;
    CDSRecibosEMPLEADO: TStringField;
    CDSRecibosDESDE: TSQLTimeStampField;
    CDSRecibosHASTA: TSQLTimeStampField;
    CDSRecibosINGRESO: TSQLTimeStampField;
    CDSConceptosCategoriasSUELDO_BASICO: TFloatField;
    QEmpresa: TFDQuery;
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
    QCategorias: TFDQuery;
    QCategoriasID: TIntegerField;
    QCategoriasDETALLE: TStringField;
    QCategoriasVALORHORA: TFloatField;
    QCategoriasTIPO_LIQUIDACION: TSmallintField;
    QCategoriasSUELDO_BASICO: TFloatField;
    QLiquidacion: TFDQuery;
    QLiquidacionID: TIntegerField;
    QLiquidacionPERIODO: TStringField;
    QLiquidacionTIPOLIQUIDACION: TIntegerField;
    QLiquidacionFECHALIQUIDACION: TSQLTimeStampField;
    QLiquidacionDESDE: TSQLTimeStampField;
    QLiquidacionHASTA: TSQLTimeStampField;
    QLiquidacionDEPOSITO: TStringField;
    QLiquidacionCOBRO: TStringField;
    QLiquidacionBANCO: TStringField;
    QLiquidacionNETO: TFloatField;
    QLiquidacionCERRADA: TStringField;
    QLiquidacionID_EMPLEADOR: TIntegerField;
    QLiquidacionID_CATEGORIAS: TIntegerField;
    QLiquidacionID_LUGAR: TIntegerField;
    QLugar: TFDQuery;
    QLugarID: TIntegerField;
    QLugarDETALLE: TStringField;
    QLugarVALORHORA: TFloatField;
    QTipoLiquidacion: TFDQuery;
    QTipoLiquidacionID: TIntegerField;
    QTipoLiquidacionNOMBRE: TStringField;
    QProduccionFECHA: TSQLTimeStampField;
    QProduccionEMPLEADO: TStringField;
    ibgRecibos: TIBGenerator;
    QCategoria: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    SmallintField1: TSmallintField;
    FloatField2: TFloatField;
    DSPCategoria: TDataSetProvider;
    CDSCategoria: TClientDataSet;
    CDSCategoriaID: TIntegerField;
    CDSCategoriaDETALLE: TStringField;
    CDSCategoriaVALORHORA: TFloatField;
    CDSCategoriaTIPO_LIQUIDACION: TSmallintField;
    CDSCategoriaSUELDO_BASICO: TFloatField;
    ibgId_detalle: TIBGenerator;
    QNovedadesID: TIntegerField;
    QNovedadesDESDE: TSQLTimeStampField;
    QNovedadesHASTA: TSQLTimeStampField;
    QNovedadesLIQUIDADO: TStringField;
    QNovedadesIDCONCEPTO: TIntegerField;
    QNovedadesTIPO_CONCEPTO: TStringField;
    QNovedadesCONCEPTO: TStringField;
    QNovedadesCANTIDAD: TIntegerField;
    QNovedadesPORCENTAJE: TFloatField;
    CDSEmbargosEMPLEADO: TStringField;
    CDSEmbargosID: TIntegerField;
    CDSEmbargosID_CAB: TIntegerField;
    CDSEmbargosMONTO_FIJO: TFloatField;
    CDSEmbargosMONTO_MINIMO: TFloatField;
    CDSEmbargosPORCENTAJE1: TFloatField;
    CDSEmbargosPORCENTAJE2: TFloatField;
    CDSEmbargosIMPORTE_DEDUCCION: TFloatField;
    CDSEmbargosINCLUYE_EXENTO: TStringField;
    CDSHorasReciboID: TIntegerField;
    CDSHorasReciboEMPLEADO: TStringField;
    CDSHorasReciboLEGAJO: TIntegerField;
    CDSHorasReciboFECHA: TSQLTimeStampField;
    CDSHorasReciboENTRADA: TSQLTimeStampField;
    CDSHorasReciboSALIDA: TSQLTimeStampField;
    CDSHorasReciboCANITDADHORAS: TFloatField;
    CDSHorasReciboLIQUIDADO: TStringField;
    CDSHorasReciboIDLIQUIDACION: TIntegerField;
    CDSHorasReciboIDRECIBO: TIntegerField;
    CDSHorasReciboIDLUGAR: TIntegerField;
    CDSHorasReciboMUESTRALUGAR: TStringField;
    CDSProduccionReciboID: TIntegerField;
    CDSProduccionReciboFECHA: TSQLTimeStampField;
    CDSProduccionReciboID_CONCEPTO: TIntegerField;
    CDSProduccionReciboDETALLE: TStringField;
    CDSProduccionReciboCANTIDAD: TFloatField;
    CDSProduccionReciboVALOR_UNITARIO: TFloatField;
    CDSProduccionReciboVALOR_TOTAL: TFloatField;
    CDSProduccionReciboLEGAJO: TIntegerField;
    CDSProduccionReciboLIQUIDADO: TStringField;
    CDSProduccionReciboIDRECIBO: TIntegerField;
    CDSProduccionReciboIDLUGAR: TIntegerField;
    CDSProduccionReciboIDLIQUIDACION: TIntegerField;
    CDSProduccionReciboEMPLEADO: TStringField;
    DSRecibos: TDataSource;
    DSDetalleRecibos: TDataSource;
    CDSEmpleado: TClientDataSet;
    DSPEmpleado: TDataSetProvider;
    CDSEmpleadoCODIGO: TStringField;
    CDSEmpleadoNOMBRE: TStringField;
    CDSEmpleadoDOMICILIO: TStringField;
    CDSEmpleadoLOCALIDAD: TIntegerField;
    CDSEmpleadoTELEFONO_1: TStringField;
    CDSEmpleadoTELEFONO_2: TStringField;
    CDSEmpleadoCTACONTABLE: TIntegerField;
    CDSEmpleadoCARGO: TIntegerField;
    CDSEmpleadoCATEGORIA: TIntegerField;
    CDSEmpleadoFECHA_INGRESO: TSQLTimeStampField;
    CDSEmpleadoFECHA_NACIMIENTO: TSQLTimeStampField;
    CDSEmpleadoESTADO_CIVIL: TStringField;
    CDSEmpleadoCOMISION: TFloatField;
    CDSEmpleadoVALORHORA: TFloatField;
    CDSEmpleadoAUTORIZAOC: TStringField;
    CDSEmpleadoSECTORDECOMPRA: TStringField;
    CDSEmpleadoCORREO: TStringField;
    CDSEmpleadoPOLITICACOMISION: TIntegerField;
    CDSEmpleadoMODODEPENDENCIA: TStringField;
    CDSEmpleadoVENDEDOR: TStringField;
    CDSEmpleadoCOBRADOR: TStringField;
    CDSEmpleadoACTIVO: TStringField;
    CDSEmpleadoMAX_OC_AUTORIZAR: TFloatField;
    CDSEmpleadoSUCURSAL: TIntegerField;
    CDSEmpleadoCUIL: TStringField;
    CDSEmpleadoCLAVEWEB: TStringField;
    CDSEmpleadoCODIGO_RELOJ: TStringField;
    CDSEmpleadoLEGAJO: TStringField;
    CDSEmpleadoAFILIADO: TStringField;
    CDSEmpleadoMUESTRACATEGORIA: TStringField;
    CDSEmpresaAG_PERCEPCION_IVA: TStringField;
    CDSEmpresaCOD_ACTIVIDAD: TStringField;
    CDSEmpresaNOMBRE_FANTASIA: TStringField;
    CDSEmpresaDIRECCION_NRO: TStringField;
    CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField;
    QRecibosID: TIntegerField;
    QRecibosFECHA: TSQLTimeStampField;
    QRecibosIDLIQUIDACION: TIntegerField;
    QRecibosEMPLEADO: TStringField;
    QRecibosLEGAJO: TIntegerField;
    QRecibosNUMERO: TIntegerField;
    QRecibosNOMBRE: TStringField;
    QRecibosDIRECCIONEMPLEADO: TStringField;
    QRecibosCATEGORIA: TIntegerField;
    QRecibosINGRESO: TSQLTimeStampField;
    QRecibosSECCION: TIntegerField;
    QRecibosVALORHORA: TFloatField;
    QRecibosIDEMPLEADOR: TIntegerField;
    QRecibosEMPLEADOR: TStringField;
    QRecibosDIRECCIONEMPLEADOR: TStringField;
    QRecibosCAJAJUBILACION: TStringField;
    QRecibosLOCALIDAD: TStringField;
    QRecibosREMUNERACIONES: TFloatField;
    QRecibosREMUNERACIONESEXENTAS: TFloatField;
    QRecibosRETENCIONES: TFloatField;
    QRecibosNETO: TFloatField;
    QRecibosENLETRAS: TStringField;
    QRecibosACUMULADOAGUINALDO: TFloatField;
    QRecibosDEPOSITADO: TStringField;
    QRecibosCUITEMPLEADOR: TStringField;
    QRecibosCUIL_EMPLEADO: TStringField;
    QRecibosDESDE: TSQLTimeStampField;
    QRecibosHASTA: TSQLTimeStampField;
    QRecibosTIPO_LIQUIDACION: TIntegerField;
    QRecibosBASICO: TFloatField;
    QRecibosPERIODO: TStringField;
    QRecibosMUESTRATIPOLIQUIDACION: TStringField;
    QRecibosMUESTRACATEGORIA: TStringField;
    CDSLiquidacion: TClientDataSet;
    CDSLiquidacionID: TIntegerField;
    CDSLiquidacionPERIODO: TStringField;
    CDSLiquidacionTIPOLIQUIDACION: TIntegerField;
    CDSLiquidacionFECHALIQUIDACION: TSQLTimeStampField;
    CDSLiquidacionDESDE: TSQLTimeStampField;
    CDSLiquidacionHASTA: TSQLTimeStampField;
    CDSLiquidacionDEPOSITO: TStringField;
    CDSLiquidacionCOBRO: TStringField;
    CDSLiquidacionBANCO: TStringField;
    CDSLiquidacionNETO: TFloatField;
    CDSLiquidacionCERRADA: TStringField;
    CDSLiquidacionID_EMPLEADOR: TIntegerField;
    CDSLiquidacionID_CATEGORIAS: TIntegerField;
    CDSLiquidacionID_LUGAR: TIntegerField;
    DSPLiquidacion: TDataSetProvider;
    QHorasTrabajadas: TFDQuery;
    QHorasTrabajadasID: TIntegerField;
    QHorasTrabajadasEMPLEADO: TStringField;
    QHorasTrabajadasLEGAJO: TIntegerField;
    QHorasTrabajadasFECHA: TSQLTimeStampField;
    QHorasTrabajadasENTRADA: TSQLTimeStampField;
    QHorasTrabajadasSALIDA: TSQLTimeStampField;
    QHorasTrabajadasCANITDADHORAS: TFloatField;
    QHorasTrabajadasLIQUIDADO: TStringField;
    QHorasTrabajadasIDLIQUIDACION: TIntegerField;
    QHorasTrabajadasIDRECIBO: TIntegerField;
    QHorasTrabajadasIDLUGAR: TIntegerField;
    QHorasTrabajadasMUESTRALUGAR: TStringField;
    QUltimaLiqi: TFDQuery;
    QNovedadesIMPORTE: TFloatField;
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSRecibosNewRecord(DataSet: TDataSet);
    procedure CDSRecibosReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CDSDetalleReciboNewRecord(DataSet: TDataSet);
    procedure CDSDetalleReciboAfterPost(DataSet: TDataSet);
    procedure CDSDetalleReciboAfterDelete(DataSet: TDataSet);
    procedure CDSDetalleReciboIDCONCEPTOSetText(Sender: TField;
      const Text: string);
    procedure CDSDetalleReciboREMUNERACIONEXENTASetText(Sender: TField;
      const Text: string);
    procedure CDSDetalleReciboRETENCIONSetText(Sender: TField;
      const Text: string);
    procedure CDSDetalleReciboREMUNERACIONSetText(Sender: TField;
      const Text: string);
    procedure CDSLiquidacionNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure Sumar;
    { Public declarations }
  end;

var
  DatosLiquidacionSueldo: TDatosLiquidacionSueldo;

implementation

uses UDMain_fd;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

Procedure TDatosLiquidacionSueldo.Sumar;
var p:TBookmark;
begin
  inherited;
  p:=CDSDetalleRecibo.GetBookmark;
  CDSDetalleRecibo.First;
  CDSDetalleRecibo.DisableControls;
  if CDSRecibos.State=dsBrowse tHEN
    CDSRecibos.Edit;
  CDSRecibosREMUNERACIONES.Value       :=0;
  CDSRecibosREMUNERACIONESEXENTAS.Value:=0;
  CDSRecibosRETENCIONES.Value          :=0;
  CDSRecibosNETO.Value                 :=0;
  while not(CDSDetalleRecibo.Eof) do
    begin
      CDSRecibosREMUNERACIONES.Value       :=CDSRecibosREMUNERACIONES.Value+CDSDetalleReciboREMUNERACION.vALUE ;
      CDSRecibosREMUNERACIONESEXENTAS.Value:=CDSRecibosREMUNERACIONESEXENTAS.Value+CDSDetalleReciboREMUNERACIONEXENTA.vALUE;
      CDSRecibosRETENCIONES.Value          :=CDSRecibosRETENCIONES.Value+CDSDetalleReciboRETENCION.vALUE;
      CDSDetalleRecibo.Next;
    end;
  CDSRecibosNETO.Value     := CDSRecibosREMUNERACIONES.Value + CDSRecibosREMUNERACIONESEXENTAS.Value-CDSRecibosRETENCIONES.Value;
  CDSLiquidacionNETO.Value := CDSLiquidacionNETO.Value + CDSRecibosNETO.Value;
  CDSDetalleRecibo.GotoBookmark(p);
  CDSDetalleRecibo.FreeBookmark(p);
  CDSDetalleRecibo.EnableControls;
end;


procedure TDatosLiquidacionSueldo.CDSDetalleReciboAfterDelete(
  DataSet: TDataSet);
begin
  Sumar;
end;

procedure TDatosLiquidacionSueldo.CDSDetalleReciboAfterPost(DataSet: TDataSet);
begin
  Sumar;
end;

procedure TDatosLiquidacionSueldo.CDSDetalleReciboIDCONCEPTOSetText(
  Sender: TField; const Text: string);
begin
  if CDSDetalleRecibo.State = dsBrowse Then
    CDSDetalleRecibo.Edit;
  Sender.AsString:=Text;
  QConcepto.Close;
  QConcepto.ParamByName('id').Value    := Sender.AsInteger;
  QConcepto.Open;
  if QConceptoID.AsString<>'' Then
    begin
//      CDSDetalleRecibo.Append;
      CDSDetalleReciboID.Value                 := ibgId_detalle.IncrementFD(1);
      CDSDetalleReciboIDRECIBO.Value           := CDSRecibosID.Value;
      CDSDetalleReciboIDCONCEPTO.Value         := QConceptoID.Value;
      CDSDetalleReciboCONCEPTO.Value           := QConceptoCONCEPTO.Value;
      CDSDetalleReciboCANTIDAD.Value           := 1;
      CDSDetalleReciboREMUNERACION.Value       := 0;
      CDSDetalleReciboREMUNERACIONEXENTA.Value := 0;
      CDSDetalleReciboRETENCION.Value          := 0;
      CDSDetalleReciboTIPO.Value               := QConceptoTIPO.Value;
      CDSDetalleReciboIMPORTE.Value            := 0;
      CDSDetalleReciboPORCENTAJE.Value         := 0;
      CDSDetalleReciboBASE.Value               := 0;
      CDSDetalleRecibo.Post;
    end
  else
    CDSDetalleRecibo.Cancel;
end;

procedure TDatosLiquidacionSueldo.CDSDetalleReciboNewRecord(DataSet: TDataSet);
begin
  CDSDetalleReciboIDRECIBO.Value := CDSRecibosID.Value;
  CDSDetalleReciboID.Value       := ibgId_detalle.IncrementFD(1);
  CDSDetalleReciboNUMERO.Value   := CDSRecibosNUMERO.Value;

end;

procedure TDatosLiquidacionSueldo.CDSDetalleReciboREMUNERACIONEXENTASetText(
  Sender: TField; const Text: string);
begin
  Sender.AsString:=Text;
  if DatosLiquidacionSueldo.CDSDetalleRecibo.State<>dsBrowse Then
    DatosLiquidacionSueldo.CDSDetalleRecibo.Post;
end;

procedure TDatosLiquidacionSueldo.CDSDetalleReciboREMUNERACIONSetText(
  Sender: TField; const Text: string);
begin
  Sender.AsString:=Text;
  if DatosLiquidacionSueldo.CDSDetalleRecibo.State<>dsBrowse Then
    DatosLiquidacionSueldo.CDSDetalleRecibo.Post;
end;

procedure TDatosLiquidacionSueldo.CDSDetalleReciboRETENCIONSetText(
  Sender: TField; const Text: string);
begin
  Sender.AsString:=Text;
  if DatosLiquidacionSueldo.CDSDetalleRecibo.State<>dsBrowse Then
    DatosLiquidacionSueldo.CDSDetalleRecibo.Post;
end;

procedure TDatosLiquidacionSueldo.CDSLiquidacionNewRecord(DataSet: TDataSet);
var d,m,y:Word;
begin
  inherited;
  QUltimaLiqi.Close;
  QUltimaLiqi.Open;
  if QUltimaLiqi.Fields[0].AsString='' Then
    CDSLiquidacionID.Value:=1
  else
    CDSLiquidacionID.Value          :=QUltimaLiqi.Fields[0].AsInteger+1;
  QUltimaLiqi.Close;
  CDSLiquidacionFECHALIQUIDACION.AsDateTime :=Date;
  CDSLiquidacionCERRADA.Value               :='N';
  DecodeDate(date,y,m,d);
  CDSLiquidacionDESDE.AsDateTime   := EncodeDate(y,m,1);
  CDSLiquidacionHASTA.AsDateTime   := EncodeDate(y,m,DaysInMonth(CDSLiquidacionDESDE.AsDateTime));
  CDSLiquidacionPERIODO.Value      := IntToStr(y)+copy('00',1,2-length(IntToStr(m)))+IntToStr(m);
  CDSLiquidacionID_EMPLEADOR.Value := 1;
  CDSLiquidacionID_LUGAR.Value     := -1;
end;

procedure TDatosLiquidacionSueldo.CDSRecibosNewRecord(DataSet: TDataSet);
begin
  DatosLiquidacionSueldo.CDSRecibosID.Value                    := DatosLiquidacionSueldo.ibgRecibos.IncrementFD(1);
  DatosLiquidacionSueldo.CDSRecibosNUMERO.Value                := DatosLiquidacionSueldo.CDSRecibosID.Value;
  DatosLiquidacionSueldo.CDSRecibosEMPLEADOR.Value             := DatosLiquidacionSueldo.CDSEmpresaNOMBRE.Value;//dbcEmpleador.Text;
  DatosLiquidacionSueldo.CDSRecibosLOCALIDAD.Value             := DatosLiquidacionSueldo.CDSEmpresaLOCALIDAD.Value;//dbcEmpleador.LookupSource.DataSet.fieldByName('Localidad').Value;
  DatosLiquidacionSueldo.CDSRecibosDIRECCIONEMPLEADOR.Value    := DatosLiquidacionSueldo.CDSEmpresaDIRECCION.Value;;
  DatosLiquidacionSueldo.CDSRecibosCUITEMPLEADOR.Value         := DatosLiquidacionSueldo.CDSEmpresaCUIT.Value;
  DatosLiquidacionSueldo.CDSRecibosDIRECCIONEMPLEADOR.Value    := DatosLiquidacionSueldo.CDSEmpresaDIRECCION.Value;//CDSBaseID_EMPLEADOR.Value;
  DatosLiquidacionSueldo.CDSRecibosCAJAJUBILACION.Value        := '***';
  DatosLiquidacionSueldo.CDSRecibosCATEGORIA.Value             := -1;
  DatosLiquidacionSueldo.CDSRecibosREMUNERACIONES.Value        := 0;
  DatosLiquidacionSueldo.CDSRecibosREMUNERACIONESEXENTAS.Value := 0;
  DatosLiquidacionSueldo.CDSRecibosRETENCIONES.Value           := 0;
  DatosLiquidacionSueldo.CDSRecibosNETO.Value                  := 0;

  DatosLiquidacionSueldo.CDSRecibosACUMULADOAGUINALDO.Value    := 0;


end;

procedure TDatosLiquidacionSueldo.CDSRecibosReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  ShowMessage(e.Message);
end;

procedure TDatosLiquidacionSueldo.DataModuleDestroy(Sender: TObject);
begin
  DatosLiquidacionSueldo:=nil;
end;

end.
