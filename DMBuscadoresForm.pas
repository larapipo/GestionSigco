unit DMBuscadoresForm;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDMBuscadores = class(TDataModule)
    QBuscaDeposito: TFDQuery;
    QBuscaDepositoID: TIntegerField;
    QBuscaDepositoNOMBRE: TStringField;
    QBuscaSucursal_old: TFDQuery;
    QBuscaUnidades: TFDQuery;
    QBuscaPresentacion: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    QBuscaUnidadesID: TIntegerField;
    QBuscaUnidadesSIGLAS: TStringField;
    QBuscaUnidadesDESCRIPCION: TStringField;
    QBuscaMoneda: TFDQuery;
    QBuscaMonedaID: TIntegerField;
    QBuscaMonedaMONEDA: TStringField;
    QBuscaMonedaCOTIZACION: TFloatField;
    QBuscaMonedaSIGNO: TStringField;
    QBuscaMonedaORDEN: TSmallintField;
    QBuscaMonedaCOTIZACION_COMPRA: TFloatField;
    QBuscaGruposVtaDetalle: TFDQuery;
    QBuscaGruposVtaDetalleID: TIntegerField;
    QBuscaGruposVtaDetalleGRUPO: TStringField;
    QBuscaLdr: TFDQuery;
    QBuscaLdrCODIGO_CLIENTE: TStringField;
    QBuscaLdrCODIGO_LDR: TIntegerField;
    QBuscaLdrNOMBRE: TStringField;
    QBuscaLdrDIRECCION: TStringField;
    QBuscaLdrCPOSTAL: TStringField;
    QBuscaNroSerie: TFDQuery;
    QBuscaCodigoBarra: TFDQuery;
    QBuscaCodigoBarraCODIGOBARRA: TStringField;
    QBuscaCodigoBarraDETALLE_STK: TStringField;
    QBuscaCodigoBarraCODIGO_STK: TStringField;
    QConsultaCodigoSerie: TFDQuery;
    QBuscaSerieTransito: TFDQuery;
    QBuscaSerieTransitoSERIE: TStringField;
    QBuscaInscripcion: TFDQuery;
    QBuscaInscripcionCODIGO: TIntegerField;
    QBuscaInscripcionDETALLE: TStringField;
    QBuscaInscripcionAPLICAPERCEPCIONIVA: TStringField;
    QBuscaInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    QBuscaCondCompraProvee: TFDQuery;
    QBuscaCondCompraProveeCODIGOPAGO: TIntegerField;
    QBuscaCondCompraProveeCODIGOPROVEE: TStringField;
    QBuscaCondCompraProveeDETALLE: TStringField;
    QBuscaCondCompraProveeDIAS: TIntegerField;
    QBuscaCondCompraProveeDESCUENTO: TFloatField;
    QBuscaCondCompraProveeDESCUENTO_FPAGO: TFloatField;
    QBuscaRubrosProv: TFDQuery;
    QBuscaFPago: TFDQuery;
    QBuscaTasaRetIIBB: TFDQuery;
    QBuscaTasaRetGanancia: TFDQuery;
    QBuscaCPostal: TFDQuery;
    QBuscaPersonal: TFDQuery;
    QBuscaPersonalNOMBRE: TStringField;
    QBuscaPersonalCODIGO: TStringField;
    QBuscaBancos: TFDQuery;
    QBuscaBancosID_BANCO: TIntegerField;
    QBuscaBancosNOMBRE: TStringField;
    QBuscaBancosDIRECCION: TStringField;
    QBuscaBancosTELEFONOS: TStringField;
    QBuscaTCredito: TFDQuery;
    QBuscaTCreditoID_TC: TIntegerField;
    QBuscaTCreditoDESCRIPCION: TStringField;
    QBuscaTCreditoMONEDA: TIntegerField;
    QBuscaTCreditoCODIGOARTICULO: TStringField;
    QBuscaTCreditoRAZONSOCIAL: TStringField;
    QBuscaCtaCajaBco: TFDQuery;
    QBuscaFormaPago: TFDQuery;
    QBuscaFormaPagoID_FPAGO: TIntegerField;
    QBuscaFormaPagoID_TPAGO: TIntegerField;
    QBuscaFormaPagoDESCRIPCION: TStringField;
    QBuscaFormaPagoCOTIZACION: TFloatField;
    QBuscaFormaPagoSIGNO: TStringField;
    QBuscaFormaPagoMONEDA: TIntegerField;
    QBuscaCajaCab: TFDQuery;
    QBuscaCajaCabID_CAJA: TIntegerField;
    QBuscaCajaCabID_CUENTA_CAJA: TIntegerField;
    QBuscaCajaCabFECHA_INCIO: TSQLTimeStampField;
    QBuscaCajaCabFECHA_CIERRE: TSQLTimeStampField;
    QBuscaCajaCabSALDO_INCIAL: TFloatField;
    QBuscaCajaCabESTADO: TIntegerField;
    QBuscaCajaCabOBS: TMemoField;
    QBuscaCajaCabNUMEROCAJA: TIntegerField;
    QBuscaCajaCabMUESTRACAJA: TStringField;
    QBuscaTarjetaCredito_Comp: TFDQuery;
    QBuscaTarjetaCredito_CompID: TIntegerField;
    QBuscaTarjetaCredito_CompNRO_TARJETA: TStringField;
    QBuscaTarjetaCredito_CompNOMBRE: TStringField;
    QBuscaTarjetaCredito_CompID_BANCO: TIntegerField;
    QBuscaTarjetaCredito_CompMONEDA: TIntegerField;
    QBuscaTarjetaCredito_CompID_TCREDITO: TIntegerField;
    QBuscaTarjetaCredito_CompMUESTRATARJETACREDITO: TStringField;
    QBuscaTarjetaCredito_CompMUESTRABANCO: TStringField;
    QBuscaVendedores: TFDQuery;
    QBuscaVendedoresCODIGO: TStringField;
    QBuscaVendedoresNOMBRE: TStringField;
    QBuscaVendedoresCOMISION: TFloatField;
    QBuscaZona: TFDQuery;
    QBuscaZonaID_ZONA: TIntegerField;
    QBuscaZonaDETALLE: TStringField;
    QBuscaFC_Vta: TFDQuery;
    QBuscaNC_Vta: TFDQuery;
    QBuscaND_Vta: TFDQuery;
    QBuscaTk_Vta: TFDQuery;
    QBuscaFO_Vta: TFDQuery;
    QBuscaCategorias: TFDQuery;
    QBuscaCategoriasID: TIntegerField;
    QBuscaCategoriasDETALLE: TStringField;
    QBuscaGrupoAbonos: TFDQuery;
    QBuscaCondVentaCliente: TFDQuery;
    QBuscaCondVentaClienteCODIGOCLIENTE: TStringField;
    QBuscaCondVentaClienteCODIGOPAGO: TIntegerField;
    QBuscaCondVentaClienteDESCUENTO: TFloatField;
    QBuscaCondVentaClientePOR_DEFECTO: TStringField;
    QBuscaCondVentaClienteDETALLE: TStringField;
    QBuscaCondVentaClienteDIAS: TIntegerField;
    QBuscaCondVentaClienteDESCUENTO_FPAGO: TFloatField;
    QBuscaCobradores: TFDQuery;
    QBuscaCobradoresCODIGO: TStringField;
    QBuscaCobradoresNOMBRE: TStringField;
    QBuscaCPostalID_POSTAL: TIntegerField;
    QBuscaCPostalCODIGO_POSTAL: TStringField;
    QBuscaCPostalDETALLE_POSTAL: TStringField;
    QBuscaCPostalTELEDISCADO: TStringField;
    QBuscaCPostalPROVINCIA: TIntegerField;
    QBuscaLocalidadJuri: TFDQuery;
    QBuscaLocalidadJuriID: TIntegerField;
    QBuscaLocalidadJuriID_JURIDICION: TIntegerField;
    QBuscaLocalidadJuriLOCALIDAD: TStringField;
    QBuscaLocalidadJuriPOR_DEFECTO: TStringField;
    QBuscaArticuloGtiaExt: TFDQuery;
    QGtia_Ext_Excepciones: TFDQuery;
    QGtia_Ext_ExcepcionesTASA_COSTO: TFloatField;
    QGtia_Ext_ExcepcionesTASA_VTA: TFloatField;
    QBuscaArticuloGtiaExtID: TIntegerField;
    QBuscaArticuloGtiaExtCODIGO: TStringField;
    QBuscaArticuloGtiaExtDURACION: TIntegerField;
    QBuscaArticuloGtiaExtPOLIZA: TStringField;
    QBuscaArticuloGtiaExtTASA_COSTO: TFloatField;
    QBuscaArticuloGtiaExtTASA_VTA: TFloatField;
    QBuscaCorreoProveedor: TFDQuery;
    QBuscaCorreoProveedorCORREO: TStringField;
    QBuscaCtaCajaBcoID_CUENTA: TIntegerField;
    QBuscaCtaCajaBcoID_TIPO_CTA: TIntegerField;
    QBuscaCtaCajaBcoNOMBRE: TStringField;
    QBuscaCtaCajaBcoNRO_CUENTA: TStringField;
    QBuscaCtaCajaBcoID_BANCO: TIntegerField;
    QBuscaCtaCajaBcoCUIT: TStringField;
    QBuscaCtaCajaBcoRAZONSOCIAL: TStringField;
    QBuscaDepositoSUCURSAL: TIntegerField;
    QBuscaDepositoCENTRALIZA_STOCK: TStringField;
    QBuscaCtaCaja: TFDQuery;
    QConsultaCodigoSerieCODIGO_STK: TStringField;
    QBuscaAcopio_Borrar: TFDQuery;
    QBuscaAcopio_BorrarID: TIntegerField;
    QBuscaAutorizanOC: TFDQuery;
    StringField2: TStringField;
    StringField3: TStringField;
    FMTBCDField1: TFloatField;
    QBuscaAutorizanOCMAX_OC_AUTORIZAR: TFloatField;
    QBuscaStock: TFDQuery;
    QBuscaStockCODIGO_STK: TStringField;
    DSPBuscaComprob: TDataSetProvider;
    CDSBuscaComprob: TClientDataSet;
    CDSBuscaComprobTIPO_COMPROB: TStringField;
    CDSBuscaComprobCLASE_COMPROB: TStringField;
    CDSBuscaComprobDENOMINACION: TStringField;
    CDSBuscaComprobLETRA: TStringField;
    CDSBuscaComprobPREFIJO: TStringField;
    CDSBuscaComprobNUMERO: TStringField;
    CDSBuscaComprobID_COMPROBANTE: TIntegerField;
    CDSBuscaComprobSUCURSAL: TIntegerField;
    CDSBuscaComprobNUMERARCION_PROPIA: TStringField;
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
    CDSBuscaComprobEN_USO: TStringField;
    QStockCodigo_Detalle: TFDQuery;
    QStockCodigo_DetalleCODIGO_STK: TStringField;
    QStockCodigo_DetalleDETALLE_STK: TStringField;
    QBuscaCliente: TFDQuery;
    QBuscaRC: TFDQuery;
    QBuscaStockCLASE_ARTICULO: TIntegerField;
    QBuscaLotes: TFDQuery;
    QBuscaRubrosCliente: TFDQuery;
    QBuscaNroSerieID: TIntegerField;
    QBuscaNroSerieCODIGO_STK: TStringField;
    QBuscaNroSerieCODIGOSERIE: TStringField;
    QBuscaNroSerieFECHAINGRESO: TSQLTimeStampField;
    QBuscaNroSerieFECHAEGRESO: TSQLTimeStampField;
    QBuscaNroSerieDEPOSITO: TIntegerField;
    DSPBuscaArtRtosPendientes: TDataSetProvider;
    CDSBuscaArtRtosPendientes: TClientDataSet;
    CDSBuscaArtRtosPendientesID: TIntegerField;
    CDSBuscaArtRtosPendientesCODIGOARTICULO: TStringField;
    CDSBuscaArtRtosPendientesDETALLE: TStringField;
    CDSBuscaArtRtosPendientesTIPOCPBTE: TStringField;
    CDSBuscaArtRtosPendientesCLASECPBTE: TStringField;
    CDSBuscaArtRtosPendientesNROCPBTE: TStringField;
    CDSBuscaArtRtosPendientesCODIGO: TStringField;
    CDSBuscaArtRtosPendientesNOMBRE: TStringField;
    CDSBuscaArtRtosPendientesID_RTO: TIntegerField;
    QBuscaPersonalACTIVO: TStringField;
    QLstMotAjClientes: TFDQuery;
    QLstMotAjProvee: TFDQuery;
    QOperacionesAFIP: TFDQuery;
    QCaracteresAFIP: TFDQuery;
    QCortesAFIP: TFDQuery;
    QTipoLiqAFIP: TFDQuery;
    QMotivosAFIP: TFDQuery;
    QRazaAFIP: TFDQuery;
    QTributosAFIP: TFDQuery;
    QGastosAFIP: TFDQuery;
    QBuscaStockDETALLE_STK: TStringField;
    QBuscaStockPLU: TFDQuery;
    QBuscaStockPLUCODIGO_STK: TStringField;
    QBuscaStockPLUCLASE_ARTICULO: TIntegerField;
    QBuscaStockPLUDETALLE_STK: TStringField;
    QBuscaMarca: TFDQuery;
    QBuscaSucursal: TFDQuery;
    QBuscaComprob: TFDQuery;
    QBuscaIva: TFDQuery;
    QBuscaPercepIva: TFDQuery;
    QBuscaPercepIB: TFDQuery;
    QBuscaComprobID_COMPROBANTE: TIntegerField;
    QBuscaComprobTIPO_COMPROB: TStringField;
    QBuscaComprobCLASE_COMPROB: TStringField;
    QBuscaComprobDENOMINACION: TStringField;
    QBuscaComprobSUCURSAL: TIntegerField;
    QBuscaComprobLETRA: TStringField;
    QBuscaComprobPREFIJO: TStringField;
    QBuscaComprobNUMERARCION_PROPIA: TStringField;
    QBuscaComprobNUMERO: TStringField;
    QBuscaComprobTOMA_NRO_DE: TIntegerField;
    QBuscaComprobAFECTA_IVA: TStringField;
    QBuscaComprobAFECTA_CC: TStringField;
    QBuscaComprobDESGLOZA_IVA: TStringField;
    QBuscaComprobCOMPRA_VENTA: TStringField;
    QBuscaComprobCOPIAS: TIntegerField;
    QBuscaComprobREPORTE: TStringField;
    QBuscaComprobIMPRIME: TStringField;
    QBuscaComprobFISCAL: TStringField;
    QBuscaComprobNOMBREIMPRESORA: TStringField;
    QBuscaComprobPENDIENTEIMPRESION: TStringField;
    QBuscaComprobLINEAS_DETALLE: TSmallintField;
    QBuscaComprobCALCULA_IVA_ARTICULOS: TStringField;
    QBuscaComprobDEFECTO: TStringField;
    QBuscaComprobCAJA_DEFECTO: TIntegerField;
    QBuscaComprobDIVIDE_IVA: TStringField;
    QBuscaComprobFACTURAELECTRONICA: TStringField;
    QBuscaComprobEN_USO: TStringField;
    QBuscaComprobCODIGO_AFIP: TStringField;
    QBuscaComprobID_AJUSTECC: TIntegerField;
    QBuscaComprobCENTRO_COSTO: TIntegerField;
    QBuscaComprobFILTRO_COMPROBANTES: TStringField;
    QBuscaComprobDEPOSITO: TIntegerField;
    QBuscaComprobULTIMONRO: TIntegerField;
    QBuscaComprobEDITAR_NRO: TStringField;
    CDSBuscaComprobFACTURAELECTRONICA: TStringField;
    QConsultaPorCodAlt: TFDQuery;
    QConsultaPorCodAltCODIGO_STK: TStringField;
    QConsultaPorCodAltCODALT: TStringField;
    QConsultaPorCodAltDETALLE_STK: TStringField;
    QConsultaPorCodAltPROVEEDOR: TStringField;
    QBuscaArtRtosPendientes: TFDQuery;
    CDSBuscaArtRtosPendientesCANTIDAD: TFloatField;
    QBuscaTablaPrecioDet: TFDQuery;
    QBuscaTablaPrecioDetID: TIntegerField;
    QBuscaTablaPrecioDetID_CAB: TIntegerField;
    QBuscaTablaPrecioDetCODIGO: TIntegerField;
    QBuscaTablaPrecioDetPRECIO1: TFloatField;
    QBuscaTablaPrecioDetPRECIO2: TFloatField;
    QBuscaTablaPrecioCab: TFDQuery;
    QBuscaRC_FD: TFDQuery;
    QBuscaCPostalFD: TFDQuery;
    QDesctoArticulo: TFDQuery;
    QDesctoArticuloDESCUENTO: TFloatField;
    QBuscaCompAfip: TFDQuery;
    QBuscaCompAfipCODIGO: TStringField;
    QBuscaCompAfipDETALLE: TStringField;
    QBuscaListaPrecios: TFDQuery;
    QBuscaListaPreciosID: TIntegerField;
    QBuscaListaPreciosNOMBRE: TStringField;
    QBuscaListaPreciosF_PAGO: TIntegerField;
    QBuscaListaPreciosEXCLUSIVO_EFECTIVO: TStringField;
    QBuscaSubRubroFD: TFDQuery;
    QBuscaSubRubroFDCODIGO_SUBRUBRO: TStringField;
    QBuscaSubRubroFDDETALLE_SUBRUBRO: TStringField;
    QBuscaSubRubroFDCODIGO_RUBRO: TStringField;
    QBuscaRubroFD: TFDQuery;
    QBuscaRubroFDCODIGO_RUBRO: TStringField;
    QBuscaRubroFDDETALLE_RUBRO: TStringField;
    QBuscaRubroFDCONTROL_RUBRO: TStringField;
    QBuscaRubroFDFUERA_PROMO: TStringField;
    QBuscaRubroFDORDEN: TIntegerField;
    QBuscaxCuitProvee: TFDQuery;
    QBuscaxCuitProveeCODIGO: TStringField;
    QBuscaListaPreciosACTUALIZA_EXCEPCION: TStringField;
    QBuscaLocalidadJuriPROVINCIA: TStringField;
    CDSBuscaComprobCODIGO_AFIP: TStringField;
    QBuscaDepositoACTIVO: TStringField;
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSBuscaComprobFISCALGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSBuscaComprobFACTURAELECTRONICAGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetCorreoProveedor(Codigo:String):String;
    function GetAcopioFactura(id:Integer):Boolean;
    function GetHayRemitos(Id: Integer): Boolean;
  published

  end;

var
  DMBuscadores: TDMBuscadores;

implementation

Uses UDMain_FD;

{$R *.dfm}

procedure TDMBuscadores.CDSBuscaComprobFACTURAELECTRONICAGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.AsString='S' then
    Text:='**'
  else
    Text:='';
end;

procedure TDMBuscadores.CDSBuscaComprobFISCALGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.AsString='S' then
    Text:='**'
  else
    Text:='';
end;

procedure TDMBuscadores.DataModuleDestroy(Sender: TObject);
begin
  DMBuscadores:=nil;
end;

function TDMBuscadores.GetAcopioFactura(id: Integer): Boolean;
var Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=DMMain_FD.fdcGestion;
  Q.SQL.Text:='select   coalesce(cab.id,-1) from merca_enacopio_cab cab where cab.id_Factura = :id';
  Q.ParamByName('id').Value:=id;
  Q.Open;
  if Q.Fields[0].Value>-1 then
    result:=True
  else
    result:=False;
  FreeAndNil(Q);
end;

function TDMBuscadores.GetCorreoProveedor(Codigo: String): String;
var Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=DMMain_FD.fdcGestion;
  q.SQL.Text:='select p.correo from  POVEEDOR p where p.codigo=:codigo';
  Q.ParamByName('codigo').Value:=Codigo;
  Q.Open;
  if q.Fields[0].AsString<>'' then
    result:=q.Fields[0].AsString
  else
    result:='';
  FreeAndNil(q);
end;

function TDMBuscadores.GetHayRemitos(Id: Integer): Boolean;
var Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=DMMain_FD.fdcGestion;
  Q.SQL.Text:='select count(r.id_rto) from rtocab r where r.idfactura ='+ IntToStr(id);
  Q.Open;
  result:=(q.Fields[0].AsInteger>0);
  Q.Close;
  FreeAndNil(q);
end;

end.
