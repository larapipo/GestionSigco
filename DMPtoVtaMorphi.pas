unit DMPtoVtaMorphi;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  Datasnap.Provider, Datasnap.DBClient, REST.Types, REST.Response.Adapter,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,StrUtils;

type
  TDatosImportaPtoVtaMorphi = class(TDataModule)
    DSSucursal: TDataSource;
    DSCajas: TDataSource;
    DSFPago: TDataSource;
    DSEgresos: TDataSource;
    RESTClientSucursal: TRESTClient;
    RESTRequestSucursal: TRESTRequest;
    RESTResponseSucursal: TRESTResponse;
    RESTResponseDataSetAdapter2: TRESTResponseDataSetAdapter;
    MTSucursal: TFDMemTable;
    MTSucursalCOD_SUCURSAL: TWideStringField;
    MTSucursalCOD_EMPRESA: TWideStringField;
    MTSucursalNOMBRE: TWideStringField;
    MTSucursalDIRECCION: TWideStringField;
    MTSucursalCIUDAD: TWideStringField;
    MTSucursalPROVINCIA: TWideStringField;
    MTSucursalCOD_POSTAL: TWideStringField;
    MTSucursalTELEFONO: TWideStringField;
    MTSucursalEMAIL: TWideStringField;
    MTSucursalSERVERNAME_EXTERNO: TWideStringField;
    MTSucursalDATABASEPATH: TWideStringField;
    MTSucursalRANGO_CLIENTES: TWideStringField;
    MTSucursalRANGO_PROVEEDORES: TWideStringField;
    MTSucursalREPLICACIONACTIVA: TWideStringField;
    MTSucursalREPLICACIONCONFIG: TWideStringField;
    MTSucursalLATITUD: TWideStringField;
    MTSucursalLONGITUD: TWideStringField;
    RESTClientCajas: TRESTClient;
    RESTRequestCajas: TRESTRequest;
    RESTResponseCajas: TRESTResponse;
    RESTResponseDataSetAdapterCajas: TRESTResponseDataSetAdapter;
    MTCajas: TFDMemTable;
    MTCajasINDICE: TWideStringField;
    MTCajasCTE_CODIGO: TWideStringField;
    MTCajasNOMMBRESUCURSAL: TWideStringField;
    MTCajasFECHA_APERTURA: TWideStringField;
    MTCajasFECHA_CIERRE: TWideStringField;
    MTCajasINFORME: TWideStringField;
    MTCajasPREFIJO: TWideStringField;
    MTCajasNUMERO: TWideStringField;
    MTCajasFAC_MONTO: TWideStringField;
    MTCajasFAC_IVA: TWideStringField;
    MTCajasFAC_II: TWideStringField;
    MTCajasFAC_PERCEP: TWideStringField;
    MTCajasNC_MONTO: TWideStringField;
    MTCajasNC_IVA: TWideStringField;
    MTCajasNC_II: TWideStringField;
    MTCajasNC_PERCEP: TWideStringField;
    MTCajasTOTAL_NETO_F: TWideStringField;
    MTCajasTOTAL_EGRESOS: TWideStringField;
    MTCajasTOTAL_INGRESOS: TWideStringField;
    MTCajasTOTAL_CAJA: TWideStringField;
    MTCajasULTIMA_FAC_A: TWideStringField;
    MTCajasULTIMA_FAC_B: TWideStringField;
    MTCajasULTIMA_NC_A: TWideStringField;
    MTCajasULTIMA_NC_B: TWideStringField;
    MTCajasSUCURSAL: TWideStringField;
    RESTClientFPago: TRESTClient;
    RESTRequestFPago: TRESTRequest;
    RESTResponseFPago: TRESTResponse;
    RESTResponseDataSetAdapterFPago: TRESTResponseDataSetAdapter;
    MTFPago: TFDMemTable;
    MTFPagoINDICE: TWideStringField;
    MTFPagoINDICE_CAJA: TWideStringField;
    MTFPagoCOD_PAGO: TWideStringField;
    MTFPagoDESC_FORMAPAGO: TWideStringField;
    MTFPagoIMPORTE: TWideStringField;
    MTFPagoLOTE_CCARD: TWideStringField;
    RESTClientEgresos: TRESTClient;
    RESTRequestEgresos: TRESTRequest;
    RESTResponseEgresos: TRESTResponse;
    RESTResponseDataSetAdapterEgresos: TRESTResponseDataSetAdapter;
    MTEgresos: TFDMemTable;
    MTEgresosINDICE: TWideStringField;
    MTEgresosINDICE_CAJA: TWideStringField;
    MTEgresosCTE_CODIGO: TWideStringField;
    MTEgresosTIPO: TWideStringField;
    MTEgresosRUBRO_CAJA: TWideStringField;
    MTEgresosRUBRO: TWideStringField;
    MTEgresosDESCRIPCION: TWideStringField;
    MTEgresosIMPORTE: TWideStringField;
    DSCtasGastos: TDataSource;
    RESTClientCtasGastos: TRESTClient;
    RESTRequestCtasGastos: TRESTRequest;
    RESTResponseCtasGastos: TRESTResponse;
    RESTResponseDataSetAdapterCtasGastos: TRESTResponseDataSetAdapter;
    MTCtasGastos: TFDMemTable;
    MTCtasGastosCODIGO: TWideStringField;
    MTCtasGastosTIPO: TWideStringField;
    MTCtasGastosNOMBRE: TWideStringField;
    MTCtasGastosINHABILITADO: TWideStringField;
    MTCtasGastosCOD_TIPOVALOR: TWideStringField;
    spAgregarGasto: TFDStoredProc;
    MTFPagoIMPORTE_VALUE: TFloatField;
    MTEgresosIMPORTE_VALUE: TFloatField;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    MTCajasRESULTADO: TFloatField;
    procedure MTCajasAfterScroll(DataSet: TDataSet);
    procedure MTSucursalAfterOpen(DataSet: TDataSet);
    procedure MTFPagoCalcFields(DataSet: TDataSet);
    procedure MTEgresosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    FPathBase      : String;
    FApiKey        : String;
    DiaCompleto    : String;
    DiferenciaCaja : Extended;
    DiferenciaTotal: Extended;
    procedure ConsultaFPago_Egresos(var FPago,FGastos:Extended);
    { Public declarations }
  end;

var
  DatosImportaPtoVtaMorphi: TDatosImportaPtoVtaMorphi;

implementation
uses UImportarVtas_PtoVta;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDatosImportaPtoVtaMorphi.ConsultaFPago_Egresos(var FPago,FGastos:Extended);
var Aux:Extended;
begin
  if MTCajasINDICE.Value<>'' then
    begin
      MTFPago.Close;
      DSFPago.DataSet                                                := MTFPago;
      RESTClientFPago.BaseURL                                        := 'http://'+FPathBase+'/morphi/api1/sistema/formapagoporcaja';
      RESTRequestFPago.Params.ParameterByName('apikey').Value        := FApikey;//'682A596A206CACED5937';//TokenWispro;//  'ac268ab1-6924-4b53-92b1-7ec37dd27fbb';
      RESTRequestFPago.Params.ParameterByName('indice_caja').Value   := MTCajasINDICE.Value;//'682A596A206CACED5937';//TokenWispro;//  'ac268ab1-6924-4b53-92b1-7ec37dd27fbb';
      // ESTO ES NUEVO *************
      RESTRequestFPago.Params.ParameterByName('dia_completo').Value  := DiaCompleto;// 'False';//'682A596A206CACED5937';//TokenWispro;//  'ac268ab1-6924-4b53-92b1-7ec37dd27fbb';
      //
      try
        RESTRequestFPago.Execute;
      except
      end;

      MTEgresos.Close;
      RESTClientEgresos.BaseURL                                      := 'http://'+FPathBase+'/morphi/api1/sistema/egresoscaja';
      RESTRequestEgresos.Params.ParameterByName('apikey').Value      := FApiKey;//'682A596A206CACED5937';//TokenWispro;//  'ac268ab1-6924-4b53-92b1-7ec37dd27fbb';
      RESTRequestEgresos.Params.ParameterByName('indice_caja').Value := MTCajasINDICE.Value;//'682A596A206CACED5937';//TokenWispro;//  'ac268ab1-6924-4b53-92b1-7ec37dd27fbb';
      try
        if Abs(MTCajasTOTAL_EGRESOS.AsFloat)>0 then
          RESTRequestEgresos.Execute;
      except
      end;

      Aux:=0;
      if MTFPago.RecordCount>0 then
        begin
          MTFPago.First;
          while not(MTFPago.Eof) do
            begin
              Aux:=Aux+StrToFloat(MTFPagoIMPORTE.Value);
              MTFPago.Next;
            end;
        end;
      FPago:=Aux;

      Aux:=0;
      if MTEgresos.RecordCount>0 then
        begin
          MTEgresos.First;
          while not(MTEgresos.Eof) do
            begin
              Aux:=Aux+StrToFloat(MTEgresosIMPORTE.Value);
              MTEgresos.Next;
            end;
        end;
      FGastos:=Aux;
    end;
  DiferenciaCaja := FPago - MTCajasTOTAL_NETO_F.AsFloat;
  DiferenciaTotal:= FPago - MTCajasRESULTADO.AsFloat;
  FormImportarVtas_PtoVtaMorphi.edDiferenciaSaldo.Text:= FormatFloat(',0.00;-,0.00',DiferenciaCaja);
  FormImportarVtas_PtoVtaMorphi.edFaltante.Text       := FormatFloat(',0.00;-,0.00',DiferenciaTotal);

end;

procedure TDatosImportaPtoVtaMorphi.MTCajasAfterScroll(DataSet: TDataSet);
var A,B:Extended;
begin
  ConsultaFPago_Egresos(A,B);

end;

procedure TDatosImportaPtoVtaMorphi.MTEgresosCalcFields(DataSet: TDataSet);
begin
  if Trim(MTEgresosIMPORTE.AsString)<>'' then
    MTEgresosIMPORTE_VALUE.AsFloat:=StrToFLoat(MTEgresosIMPORTE.AsString)
  else
    MTEgresosIMPORTE_VALUE.ASFloat:=0;
end;

procedure TDatosImportaPtoVtaMorphi.MTFPagoCalcFields(DataSet: TDataSet);
begin
  if Trim(MTFPagoIMPORTE.AsString)<>'' then
    MTFPagoIMPORTE_VALUE.AsFloat:=StrToFloat(MTFPagoIMPORTE.AsString)
  else
    MTFPagoIMPORTE_VALUE.AsFloat:=0;
end;

procedure TDatosImportaPtoVtaMorphi.MTSucursalAfterOpen(DataSet: TDataSet);
begin
  MTSucursal.IndexFieldNames:='NOMBRE';
end;

end.
