unit DMStoreProcedureForm;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,Vcl.Graphics;

type
  TDMStoreProcedure = class(TDataModule)
    spControlDepositosStock: TFDStoredProc;
    QControlFondos: TFDQuery;
    spBorrarAplicacionesVta: TFDStoredProc;
    QComprob_User: TFDQuery;
    QSaldoCtaCte: TFDQuery;
    spMovCtaCteComp_Grupo: TFDStoredProc;
    spCorrigeIVAFacVta: TFDStoredProc;
    spMarcarCheRemplzados: TFDStoredProc;
    QExistenciaStockArticuloDepo_old: TFDQuery;
    QExistenciaStockArticuloDepo_oldCANTIDAD: TFloatField;
    spRenumeraMov_caja_recibos: TFDStoredProc;
    QDepositoArti: TFDQuery;
    QDepositoArtiID_DEPOSITO: TIntegerField;
    QDepositoArtiCODIGO_DEPOSITO: TIntegerField;
    QDepositoArtiCODIGO_STK: TStringField;
    QDepositoArtiSUCURSAL: TIntegerField;
    QDepositoArtiINICIAL: TFloatField;
    QDepositoArtiMINIMO: TFloatField;
    QDepositoArtiMEDIO: TFloatField;
    QDepositoArtiFISICO: TFloatField;
    QDepositoArtiRECARGO: TFloatField;
    QDepositoArtiFUAPRECIOS: TSQLTimeStampField;
    QSucursal: TFDQuery;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QSucursalDIRECCION: TStringField;
    QSucursalLOCALIDAD: TStringField;
    QSucursalTELEFONO1: TStringField;
    QSucursalTELEFONO2: TStringField;
    QSucursalRECARGO: TFloatField;
    QSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    spBorrarAplicacionesComp: TFDStoredProc;
    spCorrigeFechaTx: TFDStoredProc;
    spAplicaCtrCosto: TFDStoredProc;
    QActualizaVencimiento: TFDQuery;
    FMTBCDField1: TFloatField;
    spGravar_2: TFDStoredProc;
    spMarcarComisionaFC: TFDStoredProc;
    spAgregarLote: TFDStoredProc;
    spcambiaNroDBX: TFDStoredProc;
    QConfirmaExistencia: TFDQuery;
    QBorraLoteAjusteComp: TFDQuery;
    QBorraLoteAjusteVta: TFDQuery;
    spAgregarMovEfectivo: TFDStoredProc;
    QPasaACtaCOmpra: TFDQuery;
    QPasaACtaVta: TFDQuery;
    spActualizaContadorCpbte: TFDStoredProc;
    spActualizaNro_CAE_VTOFD: TFDStoredProc;
    spNumeroCpbte: TFDStoredProc;
    spActualiza_Cotiz_CpbteFD: TFDStoredProc;
    QPrecioEspecial: TFDQuery;
    QPrecioEspecialPRECIOPACTADO: TFloatField;
    QPrecioEspecialDESCUENTO: TFloatField;
    QTraerRecargoDeLista: TFDQuery;
    QTraerRecargoDeListaRECARGO: TFloatField;
    QTraerRecargoDeListaPRECIO_GRAVADO: TFloatField;
    QTraerRecargoDeListaPRECIO_EXENTO: TFloatField;
    QTraerRecargoDeListaPRECIO: TFloatField;
    QTraerRecargoDeListaIVA_IMPORTE: TFloatField;
    QTraerRecargoDeListaDESCUENTO: TFloatField;
    QContendido: TFDQuery;
    QContendidoCONTENIDO_COMPRA: TFloatField;
    QCoefPrecio: TFDQuery;
    QCoefPrecioMAX: TFloatField;
    QVerificaPeriodoFiscal: TFDQuery;
    QProximoNroFc: TFDQuery;
    QProximoNroFcO_LETRA: TStringField;
    QProximoNroFcO_SUC: TStringField;
    QProximoNroFcO_NUMERO: TStringField;
    QBorrarMovCajaFD: TFDQuery;
    spMarcarImpresoFD: TFDStoredProc;
    QBorrarCAEFD: TFDQuery;
    spMovACtaCCVta_GrupoFD: TFDStoredProc;
    spAbreCajaFD: TFDStoredProc;
    spBorraFcVtaCabFD: TFDStoredProc;
    spCierraCajaFD: TFDStoredProc;
    spVerificaFechaFcVtaDetFD: TFDStoredProc;
    spMovACtaCCComp_GrupoFD: TFDStoredProc;
    spVerificaFechaFcCompDetFD: TFDStoredProc;
    spRearmarMovStockFD: TFDStoredProc;
    spcambiaNroFD: TFDStoredProc;
    spRearmarMovBcoFD: TFDStoredProc;
    spIngresaReempValores: TFDStoredProc;
    QSaldoRtos: TFDQuery;
    QSaldoRtosSALDORTO: TFloatField;
    QExistenciaStockArticuloDepo: TFDQuery;
    spIngresarMovTC: TFDStoredProc;
    spEgresoMovEfectivo: TFDStoredProc;
    QExistenciaStockArticuloDepoCANTIDAD: TFloatField;
    QPrecioPorCantidad: TFDQuery;
    QPrecioPorCantidadCANTIDAD: TFloatField;
    QPrecioPorCantidadPRECIO_EXENTO: TFloatField;
    QPrecioPorCantidadPRECIO_GRAVADO: TFloatField;
    QPrecioPorCantidadIVA_IMPORTE: TFloatField;
    QPrecioPorCantidadPRECIO: TFloatField;
    spOrdenarMovStock_FD: TFDStoredProc;
    spMarcarPresupuestoFD: TFDStoredProc;
    QPrecioPromocion: TFDQuery;
    QPrecioPromocionCODIGO: TStringField;
    QPrecioPromocionDESCUENTO: TFloatField;
    QPrecioPromocionPRECIO: TFloatField;
    QPrecioPromocionDESDE: TSQLTimeStampField;
    QPrecioPromocionHASTA: TSQLTimeStampField;
    QPrecioPromocionSOLOCLIENTES: TStringField;
    QPrecioPromocionAPLICA_LUNES: TStringField;
    QPrecioPromocionAPLICA_MARTES: TStringField;
    QPrecioPromocionAPLICA_MIERCOLES: TStringField;
    QPrecioPromocionAPLICA_JUEVES: TStringField;
    QPrecioPromocionAPLICA_VIERNES: TStringField;
    QPrecioPromocionAPLICA_SABADOS: TStringField;
    QPrecioPromocionAPLICA_DOMINGO: TStringField;
    QPrecioPromocionAPLICA_ALL_DAYS: TStringField;
    QTraerRecargoDeListaEXCLUSIVO_EFECTIVO: TStringField;
    spGenerarRtoProduccion: TFDStoredProc;
    spGravarLogFD_: TFDStoredProc;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    Function MarcarFcVtaImpresa(FId:Integer):Boolean;
    Function ActualizaCAE_VTO(Id:Integer;Fecha:TDateTime;CAE:String;FechaVtoCAE:TDateTime;NumeroStr:String;QRImage:TBitMap):Boolean;
    Function Actualiza_Cotiz_Cpbte(Id:Integer;Cotizacion:Extended):Boolean;
    Function BorrarCAE(Id:Integer):Boolean;
    Function CCVtaActa_Grupo(Id:Integer):Integer;
    Function CCCompActa_Grupo(Id:Integer):Integer;
    function GenerarRtoProduccion(Id_FC:Integer;Leyenda:String):Boolean;
    Function MarcarFcVtaNoImpresa(FId:Integer):Boolean;

    { Public declarations }
  end;

var
  DMStoreProcedure: TDMStoreProcedure;

implementation

uses UDMain_FD;
{$R *.dfm}

function TDMStoreProcedure.ActualizaCAE_VTO(Id: Integer; Fecha: TDateTime;
  CAE: String; FechaVtoCAE: TDateTime; NumeroStr: String;QRImage:TBitMap): Boolean;
var
  MQr    :TMemoryStream;
begin
  MQr:=TMemoryStream.Create;
  QRImage.SaveToStream(MQr);// LoadFromStream();
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spActualizaNro_CAE_VTOFD.Close;
    spActualizaNro_CAE_VTOFD.Params.ParamByName('Id').Value            := Id;
    spActualizaNro_CAE_VTOFD.Params.ParamByName('Fecha').Value         := Fecha;
    spActualizaNro_CAE_VTOFD.Params.ParamByName('Cae').Value           := Cae;
    spActualizaNro_CAE_VTOFD.Params.ParamByName('CaeVencimiento').Value:= FechaVtoCae;
    spActualizaNro_CAE_VTOFD.Params.ParamByName('Numero').Value        := NumeroStr;
    spActualizaNro_CAE_VTOFD.Params.ParamByName('QRIMAGE').LoadFromStream(MQr,ftBlob);
    spActualizaNro_CAE_VTOFD.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    spActualizaNro_CAE_VTOFD.Close;
    Result:=True;
  Except
    DMMain_FD.fdcGestion.Rollback;
    spActualizaNro_CAE_VTOFD.Close;
    Result:=False;
  end;

  FreeAndNil(MQr);
end;


function TDMStoreProcedure.Actualiza_Cotiz_Cpbte(Id: Integer;
  Cotizacion: Extended): Boolean;
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spActualiza_Cotiz_CpbteFD.Close;
    spActualiza_Cotiz_CpbteFD.ParamByName('ID_CPBTE').AsInteger :=Id;
    spActualiza_Cotiz_CpbteFD.ParamByName('COTIZACION').AsFLoat :=Cotizacion;
    spActualiza_Cotiz_CpbteFD.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    spActualiza_Cotiz_CpbteFD.Close;
  except
    DMMain_FD.fdcGestion.Rollback;
    spActualiza_Cotiz_CpbteFD.Close;
    Result:=False;
  end;

end;

function TDMStoreProcedure.BorrarCAE(Id: Integer): Boolean;
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    QBorrarCAEFD.Close;
    QBorrarCAEFD.ParamByName('id').Value :=Id;
    QBorrarCAEFD.ExecSQL;
    DMMain_FD.fdcGestion.Commit;
    QBorrarCAEFD.Close;
  except
    DMMain_FD.fdcGestion.Rollback;
    QBorrarCAEFD.Close;
    Result:=False;
  end;
end;

function TDMStoreProcedure.CCCompActa_Grupo(Id: Integer): Integer;
begin
  spMovACtaCCComp_GrupoFD.Close;
  spMovACtaCCComp_GrupoFD.ParamByName('Id_Mov').Value:= Id;
  spMovACtaCCComp_GrupoFD.ExecProc;
  if spMovACtaCCComp_GrupoFD.ParamByName('id_grupo').AsString<>'' then
    Result:=spMovACtaCCComp_GrupoFD.ParamByName('id_grupo').Value
  else
    Result:=-1;
  spMovACtaCCComp_GrupoFD.Close;
end;

function TDMStoreProcedure.CCVtaActa_Grupo(Id: Integer): Integer;
begin
  spMovACtaCCVta_GrupoFD.Close;
  spMovACtaCCVta_GrupoFD.ParamByName('Id_Mov').Value:= Id;
  spMovACtaCCVta_GrupoFD.ExecProc;
  if spMovACtaCCVta_GrupoFD.ParamByName('id_grupo').AsString<>'' then
    Result:=spMovACtaCCVta_GrupoFD.ParamByName('id_grupo').Value
  else
    Result:=-1;
  spMovACtaCCVta_GrupoFD.Close;
end;

procedure TDMStoreProcedure.DataModuleDestroy(Sender: TObject);
begin
  DMStoreProcedure:=nil;
end;

function TDMStoreProcedure.GenerarRtoProduccion(Id_FC:INTEGER;Leyenda:String):Boolean;
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spGenerarRtoProduccion.Close;
    spGenerarRtoProduccion.ParamByName('ID_FC').Value            :=ID_FC;
    spGenerarRtoProduccion.ParamByName('LEYENDA').Value          :=Leyenda;
    spGenerarRtoProduccion.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    spGenerarRtoProduccion.close;
    Result:=True;
  except
    DMMain_FD.fdcGestion.Rollback;
    spGenerarRtoProduccion.close;
    Result:=False;
  end;

end;

Function TDMStoreProcedure.MarcarFcVtaImpresa(FId: Integer):Boolean;
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spMarcarImpresoFD.Close;
    spMarcarImpresoFD.Params[0].Value :=FId;
    spMarcarImpresoFD.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    spMarcarImpresoFD.close;
    Result:=True;
  except
    DMMain_FD.fdcGestion.Rollback;
    spMarcarImpresoFD.close;
    Result:=False;
  end;
end;

function TDMStoreProcedure.MarcarFcVtaNoImpresa(FId: Integer): Boolean;
var Query:TFDQuery;
begin
  Query            := TFDQuery.Create(Self);
  Query.SQL.Text   := ' update fcvtacab fc set fc.impreso=''N'' where fc.id_fc='+IntToStr(FID);
  Query.Connection := DMMain_FD.fdcGestion;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    Query.ExecSQL;
    DMMain_FD.fdcGestion.Commit;
    Query.Close;
    Result := True;
  except
    DMMain_FD.fdcGestion.Rollback;
    Query.Close;
    Result := False;
  end;
  FreeAndNil(Query);
end;

end.
