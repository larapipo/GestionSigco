unit DMSaldosClientes;

interface

uses

  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient,
  Datasnap.Provider, Data.FMTBcd, Data.SqlExpr, Math;

type
  TDatosSaldoClientes = class(TDataModule)
    QSaldosClientes: TFDQuery;
    QFiltroC: TFDQuery;
    QMovCC_2: TFDQuery;
    QMovAplicacion: TFDQuery;
    QGarantes: TFDQuery;
    QMovCC: TFDQuery;
    QMovACta: TFDQuery;
    DSPSaldosClientes: TDataSetProvider;
    CDSSaldosCliente: TClientDataSet;
    CDSSaldosClienteCODIGO: TStringField;
    CDSSaldosClienteRAZON_SOCIAL: TStringField;
    CDSSaldosClienteNOMBRE: TStringField;
    CDSSaldosClienteDIRECCION_COMERCIAL: TStringField;
    CDSSaldosClienteTELEFONO_COMERCIAL_1: TStringField;
    CDSSaldosClienteCPOSTAL: TStringField;
    CDSSaldosClienteLOCALIDAD: TStringField;
    CDSSaldosClienteTELEFONO_COMERCIAL_2: TStringField;
    CDSSaldosClienteVENDEDOR: TStringField;
    CDSSaldosClienteZONA: TIntegerField;
    CDSSaldosClienteCORREOELECTRONICO: TStringField;
    CDSSaldosClienteACTIVO: TStringField;
    CDSSaldosClienteSALDO: TFloatField;
    CDSSaldosClienteCUIT: TStringField;
    CDSSaldosClienteTELEDISCADO: TStringField;
    CDSSaldosClienteSeleccion: TBooleanField;
    CDSSaldosClienteCELULAR: TStringField;
    CDSSaldosClienteNOMBRE_COMPLETO: TStringField;
    CDSSaldosClienteLIMITE_CREDITO: TFloatField;
    CDSGarantes: TClientDataSet;
    CDSGarantesNOMBRE: TStringField;
    CDSGarantesDIRECCION: TStringField;
    CDSGarantesTELEFONO1: TStringField;
    DSPGarantes: TDataSetProvider;
    CDSMovCC: TClientDataSet;
    CDSMovCCCODIGO: TStringField;
    CDSMovCCDETALLE: TStringField;
    CDSMovCCTIPO_VTA: TStringField;
    CDSMovCCID_MOVCCVTA: TIntegerField;
    CDSMovCCTIPOCPBTE: TStringField;
    CDSMovCCCLASECPBTE: TStringField;
    CDSMovCCID_CPBTE: TIntegerField;
    CDSMovCCRAZON_SOCIAL: TStringField;
    CDSMovCCMORA: TIntegerField;
    CDSMovCCINTERES: TFloatField;
    CDSMovCCCUOTA: TIntegerField;
    DSPMovCC: TDataSetProvider;
    DSSaldosClientes: TDataSource;
    CDSMovCCDEBE: TFloatField;
    CDSMovCCSALDO: TFloatField;
    CDSMovCCHABER: TFloatField;
    DSMovACta: TDataSource;
    CDSMovACta: TClientDataSet;
    CDSMovACtaID: TIntegerField;
    CDSMovACtaID_MOV: TIntegerField;
    CDSMovACtaCLIENTE: TStringField;
    CDSMovACtaID_CPBTE: TIntegerField;
    CDSMovACtaTIPOCPBTE: TStringField;
    CDSMovACtaCLASECPBTE: TStringField;
    CDSMovACtaNUMEROCPBTE: TStringField;
    CDSMovACtaDETALLE: TStringField;
    CDSMovACtaID_COMPROBANTE: TIntegerField;
    DSPMovACta: TDataSetProvider;
    CDSMovACtaIMPORTE: TFloatField;
    CDSMovAplicacion: TClientDataSet;
    CDSMovAplicacionTIPOCPBTE: TStringField;
    CDSMovAplicacionCLASECPBTE: TStringField;
    CDSMovAplicacionNUMEROCPBTE: TStringField;
    CDSMovAplicacionDETALLE: TStringField;
    CDSMovAplicacionID_MOV: TIntegerField;
    CDSMovAplicacionID_MOVCCVTA: TIntegerField;
    CDSMovAplicacionCLIENTE: TStringField;
    CDSMovAplicacionID_CPBTE: TIntegerField;
    CDSMovAplicacionAPLICA_ID_CPBTE: TIntegerField;
    CDSMovAplicacionAPLICA_TIPOCPBTE: TStringField;
    CDSMovAplicacionAPLICA_CLASECPBTE: TStringField;
    CDSMovAplicacionAPLICA_NROCPBTE: TStringField;
    CDSMovAplicacionCONCILIADO: TStringField;
    DSPMovAplicacion: TDataSetProvider;
    DSMovCC: TDataSource;
    DSMovAplicacion: TDataSource;
    CDSMovAplicacionIMPORTE: TFloatField;
    DSMovCC_2: TDataSource;
    CDSMovCC_2: TClientDataSet;
    CDSMovCC_2CODIGO: TStringField;
    CDSMovCC_2RAZON_SOCIAL: TStringField;
    DSPMovCC_2: TDataSetProvider;
    CDSMovCC_2SALDO: TFloatField;
    DSPFiltroCab: TDataSetProvider;
    CDSFiltroCab: TClientDataSet;
    CDSFiltroCabID: TIntegerField;
    CDSFiltroCabDETALLE: TStringField;
    DSFiltroCab: TDataSource;
    DSFiltroDet: TDataSource;
    CDSFiltroDet: TClientDataSet;
    CDSFiltroDetID: TIntegerField;
    CDSFiltroDetID_CAB: TIntegerField;
    CDSFiltroDetID_CPBTE: TIntegerField;
    CDSFiltroDetMUESTRACOMPROBANTE: TStringField;
    CDSFiltroDetMUESTRATIPO: TStringField;
    CDSFiltroDetMUESTRACLASE: TStringField;
    CDSFiltroDetMUESTRASUC: TStringField;
    DSPFiltroDet: TDataSetProvider;
    QFiltroD: TFDQuery;
    spBorrarTemporales: TFDStoredProc;
    spGeneraMov: TFDStoredProc;
    QUltimoMovTemporal: TFDQuery;
    CDSFiltroCabGRUPO: TSmallintField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    CDSCobrador: TClientDataSet;
    CDSCobradorNOMBRE: TStringField;
    CDSCobradorCODIGO: TStringField;
    DSPCobrador: TDataSetProvider;
    CDSZona: TClientDataSet;
    CDSZonaID_ZONA: TIntegerField;
    CDSZonaDETALLE: TStringField;
    DSPZona: TDataSetProvider;
    CDSCPostal: TClientDataSet;
    DSPCPostal: TDataSetProvider;
    DSPCategorias: TDataSetProvider;
    CDSCategorias: TClientDataSet;
    CDSCategoriasID: TIntegerField;
    CDSCategoriasDETALLE: TStringField;
    CDSEmpresa: TClientDataSet;
    DSPEmpresa: TDataSetProvider;
    CDSVendedor: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    DSPVendedor: TDataSetProvider;
    CDSMovCCFECHAVTA: TSQLTimeStampField;
    CDSMovCCFECHAVTO: TSQLTimeStampField;
    CDSMovAplicacionFECHA: TSQLTimeStampField;
    CDSSaldosClienteULTIMOPAGO: TSQLTimeStampField;
    CDSSaldosClienteFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSMovACtaFECHA: TSQLTimeStampField;
    CDSMovCCSaldoTotal: TAggregateField;
    CDSMovACtaTotal: TAggregateField;
    CDSTotales: TClientDataSet;
    CDSTotalesSaldoCC: TFloatField;
    CDSTotalesSaldoACta: TFloatField;
    CDSTotalesSaldoFinal: TFloatField;
    DSTotales: TDataSource;
    CDSGarantesCODIGOCLIENTE: TStringField;
    CDSGarantesID: TIntegerField;
    CDSSaldosClienteNOMBREVENDEDOR: TStringField;
    CDSSaldosClienteCOND_PAGO: TStringField;
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
    procedure CDSSaldosClienteAfterScroll(DataSet: TDataSet);
    procedure CDSMovCCCalcFields(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSSaldosClienteAfterOpen(DataSet: TDataSet);
    procedure CDSMovCCAfterScroll(DataSet: TDataSet);
    procedure CDSTotalesSaldoCCChange(Sender: TField);
    procedure CDSTotalesSaldoACtaChange(Sender: TField);
    procedure CDSMovACtaAfterScroll(DataSet: TDataSet);
    procedure CDSSaldosClienteBeforeClose(DataSet: TDataSet);
  private
    { Private declarations }
  public
     Punitorio:Extended;
    { Public declarations }
  end;

var
  DatosSaldoClientes: TDatosSaldoClientes;

implementation


USES UDMain_FD, USaldosClientes,DMBuscadoresForm;

{$R *.dfm}


procedure TDatosSaldoClientes.CDSMovACtaAfterScroll(DataSet: TDataSet);
begin
  if not CDSMovACtaTotal.IsNull then
    CDSTotalesSaldoACta.AsFloat   := CDSMovACtaTotal.Value
  else
    CDSTotalesSaldoACta.AsFloat   := 0;

end;

procedure TDatosSaldoClientes.CDSMovCCAfterScroll(DataSet: TDataSet);
begin
  if not CDSMovCCSaldoTotal.IsNull then
    CDSTotalesSaldoCC.AsFloat     :=  CDSMovCCSaldoTotal.Value
  else
    CDSTotalesSaldoCC.AsFloat     :=  0;
end;

procedure TDatosSaldoClientes.CDSMovCCCalcFields(DataSet: TDataSet);
begin
  CDSMovCCMORA.Value          := Abs(Trunc( CDSMovCCFECHAVTO.AsDateTime - Date));
  CDSMovCCINTERES.AsFloat     := CDSMovCCSALDO.AsFloat * ((Punitorio/365) * CDSMovCCMORA.Value * 0.01);
end;

procedure TDatosSaldoClientes.CDSSaldosClienteAfterOpen(DataSet: TDataSet);
begin
  if CDSTotales.State in [dsInsert, dsEdit] then
    CDSTotales.Close;
  CDSTotales.CreateDataSet;
  CDSTotales.Append;
  CDSTotalesSaldoCC.AsFloat     :=  0;
  CDSTotalesSaldoACta.AsFloat   :=  0;
  CDSTotalesSaldoFinal.AsFloat  :=  0;

end;

procedure TDatosSaldoClientes.CDSSaldosClienteAfterScroll(DataSet: TDataSet);
var Aux_Saldos,Aux_ACta:Real;
begin
//  DatosSaldoClientes.CDSMovCC.Filtered:=False;
//  DatosSaldoClientes.CDSMovCC.Filter:='FECHAVTO <= '+''''+DateToStr(FormSaldosClientes.edfechaVto.Date)+'''';
//  DatosSaldoClientes.CDSMovCC.Filtered:= FormSaldosClientes.chFiltroVto.Checked;

{  CDSGarantes.Close;
  CDSGarantes.Params.ParamByName('codigo').AsString  :=  CDSSaldosClienteCODIGO.AsString;
  CDSGarantes.Open;

  Aux_Saldos:=0;
  if CDSSaldosClienteSeleccion.Value=True then
    begin
      if CDSMovCC.State in [dsBrowse] then
      begin
        CDSMovCC.First;
        cdsMovCC.DisableControls;
        while not(CdsMovCC.Eof) Do
          begin
            Aux_Saldos:=CDSMovCCSALDO.AsFloat+Aux_Saldos;
            CDSMovCC.Next;
          end;
        CDSMovCC.First;
        cdsMovCC.EnableControls;

        Aux_ACta:=0;
        CDSMovACta.First;
        CDSMovACta.DisableControls;
        while not(CDSMovACta.Eof) Do
          begin
            Aux_ACta:=Aux_ACta+CDSMovACtaIMPORTE.AsFloat;
            CDSMovACta.Next;
          end;
        CDSMovACta.First;
        CDSMovACta.EnableControls;
      end;
      FormSaldosClientes.edSaldos.Value  := Aux_Saldos;
      FormSaldosClientes.edACta.Value    := Aux_ACta;
    end;

  FormSaldosClientes.edTotal.Value:=Aux_Saldos-Aux_ACta; }
end;

procedure TDatosSaldoClientes.CDSSaldosClienteBeforeClose(DataSet: TDataSet);
begin
  CDSGarantes.Close;
end;

procedure TDatosSaldoClientes.CDSTotalesSaldoACtaChange(Sender: TField);
begin
  CDSTotalesSaldoFinal.AsFloat  := CDSTotalesSaldoCC.AsFloat - Sender.AsFloat;

end;

procedure TDatosSaldoClientes.CDSTotalesSaldoCCChange(Sender: TField);
begin
  CDSTotalesSaldoFinal.AsFloat  := Sender.AsFloat - CDSTotalesSaldoACta.AsFloat;
end;

procedure TDatosSaldoClientes.DataModuleDestroy(Sender: TObject);
begin
  DatosSaldoClientes:=nil;
end;

end.
