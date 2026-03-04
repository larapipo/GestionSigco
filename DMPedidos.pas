unit DMPedidos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,StrUtils,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, IBGenerator;

type
  TDatosPedidos = class(TDataModule)
    QPedidoCab: TFDQuery;
    QPedidoCabID: TIntegerField;
    QPedidoCabCLIENTE: TStringField;
    QPedidoCabMUESTRANOMBRE: TStringField;
    QPedidoCabFACTURADO: TStringField;
    QPedidoCabMUESTRAIVA: TIntegerField;
    QPedidoCabPEDIDO_PREVISION: TStringField;
    QPedidoCabESTADO_PREVISION: TStringField;
    QPedidoCabID_PREVISION: TIntegerField;
    QPedidoCabID_FACTURA: TIntegerField;
    QPedidoCabTIPO_FACTURA: TStringField;
    QPedidoCabNOTAS: TStringField;
    QPedidoCabFECHA: TSQLTimeStampField;
    QPedidoCabFECHA_ENVIO: TSQLTimeStampField;
    QPedidoCabFECHA_HORA: TSQLTimeStampField;
    QPedidoCabVTO_PREVISION: TSQLTimeStampField;
    QPedidoCabPEDIDO_ESTABLE: TStringField;
    QPedidoCabDIA: TSmallintField;
    DSPPedidoCab: TDataSetProvider;
    CDSPedidoCab: TClientDataSet;
    CDSPedidoCabID: TIntegerField;
    CDSPedidoCabCLIENTE: TStringField;
    CDSPedidoCabMUESTRANOMBRE: TStringField;
    CDSPedidoCabFACTURADO: TStringField;
    CDSPedidoCabMUESTRAIVA: TIntegerField;
    CDSPedidoCabPEDIDO_PREVISION: TStringField;
    CDSPedidoCabESTADO_PREVISION: TStringField;
    CDSPedidoCabID_PREVISION: TIntegerField;
    CDSPedidoCabID_FACTURA: TIntegerField;
    CDSPedidoCabTIPO_FACTURA: TStringField;
    CDSPedidoCabNOTAS: TStringField;
    CDSPedidoCabFECHA: TSQLTimeStampField;
    CDSPedidoCabFECHA_ENVIO: TSQLTimeStampField;
    CDSPedidoCabFECHA_HORA: TSQLTimeStampField;
    CDSPedidoCabVTO_PREVISION: TSQLTimeStampField;
    CDSPedidoCabPEDIDO_ESTABLE: TStringField;
    CDSPedidoCabDIA: TSmallintField;
    CDSPedidoDet: TClientDataSet;
    CDSPedidoDetID: TIntegerField;
    CDSPedidoDetIDCAB: TIntegerField;
    CDSPedidoDetCODIGO: TStringField;
    CDSPedidoDetMUESTRADETALLE: TStringField;
    CDSPedidoDetCANTIDAD_PEDIDA: TFloatField;
    CDSPedidoDetCANTIDAD_UNID_PED: TFloatField;
    CDSPedidoDetCANTIDAD_UNID_ENTR: TFloatField;
    CDSPedidoDetCANTIDAD_PRESENTACION: TFloatField;
    CDSPedidoDetMUESTRASUBRUB: TStringField;
    CDSPedidoDetMUESTRAIDGRUPO: TIntegerField;
    CDSPedidoDetMUESTRAGRUPO: TStringField;
    CDSPedidoDetMUESTRAORDENGRUPO: TIntegerField;
    CDSPedidoDetORDEN_GRUPO: TStringField;
    CDSPedidoDetMUESTRAORDENPLA: TIntegerField;
    CDSPedidoDetTOTALPEDIDO: TAggregateField;
    DSPPedidoDet: TDataSetProvider;
    QPedidoDet: TFDQuery;
    QPedidoDetID: TIntegerField;
    QPedidoDetIDCAB: TIntegerField;
    QPedidoDetCODIGO: TStringField;
    QPedidoDetMUESTRADETALLE: TStringField;
    QPedidoDetCANTIDAD_PEDIDA: TFloatField;
    QPedidoDetCANTIDAD_UNID_PED: TFloatField;
    QPedidoDetCANTIDAD_UNID_ENTR: TFloatField;
    QPedidoDetCANTIDAD_PRESENTACION: TFloatField;
    QPedidoDetMUESTRASUBRUB: TStringField;
    QPedidoDetMUESTRAIDGRUPO: TIntegerField;
    QPedidoDetMUESTRAGRUPO: TStringField;
    QPedidoDetMUESTRAORDENGRUPO: TIntegerField;
    QPedidoDetMUESTRAORDENPLA: TIntegerField;
    QBuscadorPedido: TFDQuery;
    DSPBuscadorPedido: TDataSetProvider;
    CDSBuscadorPedido: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    CDSBuscadorPedidoFECHA: TSQLTimeStampField;
    CDSBuscadorPedidoPEDIDO_ESTABLE: TStringField;
    CDSBuscadorPedidoPEDIDO_PREVISION: TStringField;
    StringField3: TStringField;
    CDSBuscadorPedidoDIASEMANA: TStringField;
    IntegerField1: TIntegerField;
    ibgCab: TIBGenerator;
    ibgDet: TIBGenerator;
    QStock: TFDQuery;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockPRESENTACION_CANTIDAD: TFloatField;
    CDSStockMUESTRARUBRO: TStringField;
    CDSStockMUESTRASUBRUBRO: TStringField;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesNOMBRE_COMPLETO: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesDIRECCION_PARTICULAR: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesTELEFONO_PARTICULAR: TStringField;
    QClientesTELEFONO_COMERCIAL_1: TStringField;
    QClientesTELEFONO_COMERCIAL_2: TStringField;
    QClientesTELEFONO_CELULAR: TStringField;
    QClientesID_COD_POSTAL: TIntegerField;
    QClientesCPOSTAL: TStringField;
    QClientesLOCALIDAD: TStringField;
    QClientesCONDICION_IVA: TIntegerField;
    QClientesEMITE_REMITO: TStringField;
    QClientesEMITE_FACTURA: TStringField;
    QClientesNRO_DE_CUIT: TStringField;
    QClientesACTIVO: TStringField;
    QClientesLIMITE_CREDITO: TFloatField;
    QClientesSALDOINICIAL: TFloatField;
    QClientesOBSERVACIONES: TMemoField;
    QClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    QClientesFECHAALTA: TSQLTimeStampField;
    QClientesSUCURSAL: TIntegerField;
    QClientesZONA: TIntegerField;
    QClientesVENDEDOR: TStringField;
    QClientesULTIMOPAGO: TSQLTimeStampField;
    QClientesLISTAPRECIOS: TIntegerField;
    QClientesFECHANACIMIENTO: TSQLTimeStampField;
    QClientesTIPODOCUMENTO: TSmallintField;
    QClientesNRODOCUMENTO: TStringField;
    QClientesCORREOELECTRONICO: TStringField;
    QClientesCORREOELECTRONICO_2: TStringField;
    QClientesID_FACTURAPORDEFECTO: TIntegerField;
    QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    QClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    QClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    QClientesID_TIKETPORDEFECTO: TIntegerField;
    QClientesID_RECIBOPORDEFECTO: TIntegerField;
    QClientesTIPOABONO: TStringField;
    QClientesID_PLANTILLA: TIntegerField;
    QClientesPERCIBIR_IB: TStringField;
    QClientesINSCRIPTO_MULTICONVENIO: TStringField;
    QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    QClientesCONTACTO: TStringField;
    QClientesTELEFONO_CONTACTO: TStringField;
    QClientesCOBRADOR: TStringField;
    QClientesCATEGORIA: TIntegerField;
    QClientesLONGITUD: TStringField;
    QClientesLATITUD: TStringField;
    QClientesDIRECCION_CALLE: TStringField;
    QClientesDIRECCION_NUMERO: TStringField;
    QClientesDIRECCION_PISO: TStringField;
    QClientesDIRECCION_DEPTO: TStringField;
    QClientesDEUDAMAYOR30: TStringField;
    QClientesDIAS_MAYOR_30: TIntegerField;
    QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    QClientesMES_ABONOANUAL: TIntegerField;
    QClientesFRANQUICIA: TStringField;
    QClientesID_DEPOSITO_FRANQUICIA: TIntegerField;
    QClientesID_TRANSPORTE: TIntegerField;
    QClientesIMPRIME_SALDOFACTURA: TStringField;
    QClientesCORTAR_SERVICIO: TStringField;
    QClientesCON_PLANPAGO: TStringField;
    QClientesDIRECCION_POSTAL: TStringField;
    QClientesCALLE_1: TStringField;
    QClientesCALLE_2: TStringField;
    QClientesVENDER_DE_CTDO: TStringField;
    QClientesPRESENTO_F8001: TStringField;
    QClientesDESDE_F8001: TSQLTimeStampField;
    QClientesHASTA_F8001: TSQLTimeStampField;
    QClientesID_TARJETACREDITO: TIntegerField;
    QClientesNRO_TARJETA_C: TStringField;
    QClientesNRO_SEG_TC: TStringField;
    QClientesID_BANCO: TIntegerField;
    QClientesNRO_CTA_BCO: TStringField;
    QClientesCODIGO_COORPORATIVO: TStringField;
    QClientesCUENTA_OPERATIVA: TStringField;
    QClientesTARJETA_CLIENTE: TStringField;
    QClientesVENCIMIENTO_TC: TSQLTimeStampField;
    QClientesFOTO: TBlobField;
    QClientesCON_MONITOREO: TStringField;
    QClientesCON_GPRS: TStringField;
    QClientesCON_HOSTING: TStringField;
    QClientesCOMUNITARIO: TStringField;
    QClientesID_PRESTADOR: TIntegerField;
    QClientesMES_ADICIONAL: TIntegerField;
    QClientesMES_SEMESTRAL: TIntegerField;
    QClientesMOROSO: TStringField;
    QClientesPLANTILLA_CIVA: TStringField;
    QClientesOBSERVACIONES1: TStringField;
    QClientesOBSERVACIONES2: TStringField;
    QClientesAVISO: TStringField;
    QClientesRUBRO: TIntegerField;
    QClientesENVIAR_CPTE_MAIL: TStringField;
    QClientesNRO_IP: TStringField;
    QClientesCHEQUES: TStringField;
    QClientesID_ADMINISTRACION: TIntegerField;
    QClientesMUESTRAZONA: TStringField;
    QClientesMUESTRAIDGARANTE: TIntegerField;
    QHayRtos: TFDQuery;
    QHayRtosCOUNT: TIntegerField;
    QUpdateOrdenPlantilla: TFDQuery;
    QPrevision: TFDQuery;
    DSPPrevision: TDataSetProvider;
    CDSPrevision: TClientDataSet;
    CDSPrevisionID: TIntegerField;
    CDSPrevisionIDCAB: TIntegerField;
    CDSPrevisionCODIGO: TStringField;
    CDSPrevisionCANTIDAD_PEDIDA: TFloatField;
    CDSPrevisionCANTIDAD_UNID_PED: TFloatField;
    CDSPrevisionCANTIDAD_UNID_ENTR: TFloatField;
    CDSPrevisionCANTIDAD_PRESENTACION: TFloatField;
    CDSPrevisionFACTURADO: TStringField;
    CDSPrevisionPEDIDO_PREVISION: TStringField;
    CDSPrevisionMUESTRASUBRUB: TStringField;
    CDSPrevisionMUESTRADETALLE: TStringField;
    CDSPrevisionFECHA: TSQLTimeStampField;
    QComprobante: TFDQuery;
    DSPComprobante: TDataSetProvider;
    CDSComprobante: TClientDataSet;
    CDSComprobanteID_COMPROBANTE: TIntegerField;
    CDSComprobanteTIPO_COMPROB: TStringField;
    CDSComprobanteCLASE_COMPROB: TStringField;
    CDSComprobanteDENOMINACION: TStringField;
    CDSComprobanteSUCURSAL: TIntegerField;
    CDSComprobanteLETRA: TStringField;
    CDSComprobantePREFIJO: TStringField;
    CDSComprobanteNUMERARCION_PROPIA: TStringField;
    CDSComprobanteNUMERO: TStringField;
    CDSComprobanteTOMA_NRO_DE: TIntegerField;
    CDSComprobanteAFECTA_IVA: TStringField;
    CDSComprobanteAFECTA_CC: TStringField;
    CDSComprobanteDESGLOZA_IVA: TStringField;
    CDSComprobanteCOMPRA_VENTA: TStringField;
    CDSComprobanteCOPIAS: TIntegerField;
    CDSComprobanteREPORTE: TStringField;
    CDSComprobanteIMPRIME: TStringField;
    CDSComprobanteFISCAL: TStringField;
    CDSComprobanteNOMBREIMPRESORA: TStringField;
    CDSComprobantePENDIENTEIMPRESION: TStringField;
    CDSComprobanteLINEAS_DETALLE: TSmallintField;
    CDSComprobanteCALCULA_IVA_ARTICULOS: TStringField;
    CDSComprobanteDEFECTO: TStringField;
    QComprobantePorDefecto: TFDQuery;
    DSPComprobantePorDefecto: TDataSetProvider;
    CDSComprobantePorDefecto: TClientDataSet;
    QStock_x_SubRubro: TFDQuery;
    QStock_x_SubRubroCODIGO_STK: TStringField;
    QPedidoCabHAY_PENDIENTES: TStringField;
    CDSPedidoCabHAY_PENDIENTES: TStringField;
    spGeneraPendiente: TFDStoredProc;
    QPedidoCabID_PEDIDO_ORIGEN: TIntegerField;
    CDSPedidoCabID_PEDIDO_ORIGEN: TIntegerField;
    QPedidoCabMUESTRANROCPBTE: TStringField;
    CDSPedidoCabMUESTRANROCPBTE: TStringField;
    CDSBuscadorPedidoMUESTRANROCPBTE: TStringField;
    CDSBuscadorPedidoID_PEDIDO_ORIGEN: TIntegerField;
    QPedidoCabESTADO: TIntegerField;
    CDSPedidoCabESTADO: TIntegerField;
    CDSBuscadorPedidoMUESTRAESTADO: TStringField;
    QPedidoCabMUESTRAESTADO: TStringField;
    CDSPedidoCabMUESTRAESTADO: TStringField;
    spMarcarPedido: TFDStoredProc;
    QPedidoCabID_SECTOR: TIntegerField;
    CDSPedidoCabID_SECTOR: TIntegerField;
    CDSBuscadorPedidoMUESTRASECTOR: TStringField;
    procedure CDSPedidoDetCANTIDAD_PEDIDASetText(Sender: TField;
      const Text: string);
    procedure CDSPedidoDetCANTIDAD_UNID_ENTRSetText(Sender: TField;
      const Text: string);
    procedure CDSPedidoCabCLIENTESetText(Sender: TField; const Text: string);
    procedure CDSPedidoCabNewRecord(DataSet: TDataSet);
    procedure CDSPedidoDetCalcFields(DataSet: TDataSet);
    procedure CDSPedidoDetNewRecord(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSPedidoDetAfterPost(DataSet: TDataSet);
    procedure CDSPedidoCabHAY_PENDIENTESGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CDSPedidoDetBeforeEdit(DataSet: TDataSet);
    procedure CDSBuscadorPedidoID_PEDIDO_ORIGENGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure control_cantidad;

  end;

var
  DatosPedidos: TDatosPedidos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses UPedidos,UDMain_FD;

procedure TDatosPedidos.CDSBuscadorPedidoID_PEDIDO_ORIGENGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:=CDSBuscadorPedidoID_PEDIDO_ORIGEN.AsString;
  if CDSBuscadorPedidoID_PEDIDO_ORIGEN.Value<0 then
    Text:='';
end;

procedure TDatosPedidos.CDSPedidoCabCLIENTESetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Copy('000000',1,6-Length(Text))+Text;
  QClientes.Close;
  QClientes.ParamByName('codigo').Value:=Sender.AsString;
  QClientes.Open;
  CDSPedidoCabMUESTRANOMBRE.AsString:=QClientesNOMBRE.Value;
  QClientes.Close;

  CDSPrevision.Close;
  CDSPrevision.Params.ParamByName('CLIENTE').Value:= Sender.AsString;
  CDSPrevision.Open;
  CDSPrevision.Filtered:=False;
  CDSPrevision.Filter:='(CANTIDAD_UNID_ENTR>0) or (CANTIDAD_UNID_PED>0)';
  CDSPrevision.Filtered:= True;

  FormPedidos.cxGridDBTableView1.DataController.Groups.FullExpand;
  FormPedidos.tsPrevision.TabVisible := not(CDSPrevision.IsEmpty);
  if (CDSPrevisionIDCAB.AsString<>'')  then
    CDSPedidoCabID_PREVISION.Value:=CDSPrevisionIDCAB.Value;
end;

procedure TDatosPedidos.CDSPedidoCabHAY_PENDIENTESGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if CDSPedidoCabHAY_PENDIENTES.Value='S' then
    Text:='Con Pendientes'
  else
    Text:='';
end;

procedure TDatosPedidos.CDSPedidoCabNewRecord(DataSet: TDataSet);
begin
  CDSPedidoCabID.Value                  := ibgCab.IncrementFD(1);
  CDSPedidoCabFECHA.AsDateTime          := date;
  CDSPedidoCabFACTURADO.AsString        := 'N';
  CDSPedidoCabPEDIDO_PREVISION.AsString := 'N';
  CDSPedidoCabESTADO_PREVISION.AsString := 'A';
  CDSPedidoCabPEDIDO_ESTABLE.AsString   := 'N';
  CDSPedidoCabID_PREVISION.Value        := -1;
  CDSPedidoCabID_PEDIDO_ORIGEN.Value    := -1;
  CDSPedidoCabVTO_PREVISION.AsDateTime  := date+7;
  CDSPedidoCabFECHA_HORA.AsDateTime     := Now;
  CDSPedidoCabHAY_PENDIENTES.Value      := 'N';
end;

procedure TDatosPedidos.CDSPedidoDetAfterPost(DataSet: TDataSet);
begin
  control_cantidad;
end;

procedure TDatosPedidos.CDSPedidoDetBeforeEdit(DataSet: TDataSet);
begin
 if (CDSPedidoCabFACTURADO.Value='S') then
    begin
      CDSPedidoDet.Cancel;
      System.SysUtils.Abort;
    end;
end;

procedure TDatosPedidos.CDSPedidoDetCalcFields(DataSet: TDataSet);
begin
   CDSPedidoDetORDEN_GRUPO.Value := AnsiRightStr('000'+CDSPedidoDetMUESTRAORDENGRUPO.AsString,3)+'-'+CDSPedidoDetMUESTRAGRUPO.AsString;
end;

procedure TDatosPedidos.CDSPedidoDetCANTIDAD_PEDIDASetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSPedidoDetCANTIDAD_UNID_PED.AsFloat :=Sender.AsFloat*CDSPedidoDetCANTIDAD_PRESENTACION.AsFloat;
  CDSPedidoDetCANTIDAD_UNID_ENTR.AsFloat:=Sender.AsFloat*CDSPedidoDetCANTIDAD_PRESENTACION.AsFloat;
  if CDSPedidoCabPEDIDO_PREVISION.Value='S' then
    CDSPedidoDetCANTIDAD_UNID_ENTR.AsFloat:=0;
end;

procedure TDatosPedidos.CDSPedidoDetCANTIDAD_UNID_ENTRSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  if CDSPedidoDetCANTIDAD_PEDIDA.AsFloat<=0 then
    Sender.AsFloat:=0;
end;

procedure TDatosPedidos.CDSPedidoDetNewRecord(DataSet: TDataSet);
begin
  CDSPedidoDetIDCAB.Value:= CDSPedidoCabID.Value;
  CDSPedidoDetID.Value   := ibgDet.IncrementFD(1);
end;

procedure TDatosPedidos.control_cantidad;
var P:TBookmark;
Valor1,Valor2:Integer;
Res:String;
begin
  p:=CDSPedidoDet.GetBookmark;
  CDSPedidoDet.DisableControls;
  CDSPedidoDet.First;
  Res:='N';

  while not(CDSPedidoDet.Eof) and (Res='N') do
    begin
      Valor1:=Trunc(CDSPedidoDetCANTIDAD_UNID_PED.Value*100);
      Valor2:=Trunc(CDSPedidoDetCANTIDAD_UNID_ENTR.Value*100);
      if (valor1-valor2)>0 then
        Res:='S';
      CDSPedidoDet.Next;
    end;
  CDSPedidoDet.GotoBookmark(p);
  CDSPedidoDet.FreeBookmark(P);
  CDSPedidoDet.EnableControls;

  if CDSPedidoCab.State=dsBrowse then
    CDSPedidoCab.Edit;
  CDSPedidoCabHAY_PENDIENTES.Value:=res;
  //CDSPedidoCab.Post;
end;

procedure TDatosPedidos.DataModuleDestroy(Sender: TObject);
begin
  DatosPedidos:=nil;
end;

end.
