unit DMCtaCteVta;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider,
  Datasnap.DBClient;

type
  TDatosCCVta = class(TDataModule)
    DSPListaClientes: TDataSetProvider;
    QListaClientes: TFDQuery;
    CDSListaClientes: TClientDataSet;
    CDSListaClientesCODIGO: TStringField;
    CDSListaClientesNOMBRE: TStringField;
    CDSListaClientesSeleccion: TBooleanField;
    DSListaClientes: TDataSource;
    DSPMovCC: TDataSetProvider;
    QMovCC: TFDQuery;
    QSaldoIni: TFDQuery;
    QSaldoIniDEBE: TFloatField;
    QSaldoIniHABER: TFloatField;
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
    QClientesSUCURSAL: TIntegerField;
    QClientesZONA: TIntegerField;
    QClientesVENDEDOR: TStringField;
    QClientesLISTAPRECIOS: TIntegerField;
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
    QClientesPERCIBIR_IB: TStringField;
    QClientesINSCRIPTO_MULTICONVENIO: TStringField;
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
    QClientesTIPOABONO: TStringField;
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
    QClientesID_TARJETACREDITO: TIntegerField;
    QClientesNRO_TARJETA_C: TStringField;
    QClientesNRO_SEG_TC: TStringField;
    QClientesID_BANCO: TIntegerField;
    QClientesNRO_CTA_BCO: TStringField;
    QClientesCODIGO_COORPORATIVO: TStringField;
    QClientesCUENTA_OPERATIVA: TStringField;
    QClientesTARJETA_CLIENTE: TStringField;
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
    QClientesMUESTRACOORPORATIVO: TStringField;
    DSPSaldoInicial: TDataSetProvider;
    CDSSaldoInicial: TClientDataSet;
    CDSMovCC: TClientDataSet;
    CDSMovCCTIPOCPBTE: TStringField;
    CDSMovCCDETALLE: TStringField;
    CDSMovCCSaldoCC: TFloatField;
    CDSMovCCCLIENTE: TStringField;
    CDSMovCCNROCPBTE: TStringField;
    CDSMovCCID_CPBTE: TIntegerField;
    CDSMovCCID_MOVCCVTA: TIntegerField;
    CDSMovCCID_COMPROBANTE: TIntegerField;
    CDSMovCCCLASECPBTE: TStringField;
    CDSMovCCTIPO: TStringField;
    CDSMovCCOBSERVACIONES: TStringField;
    CDSMovCCCUOTA: TIntegerField;
    CDSMovCCID_MONEDA: TIntegerField;
    CDSMovCCSIGNOMONEDA: TStringField;
    CDSMovCCFC_CONSOLIDAD: TStringField;
    CDSMovCCID_AJUSTE_CONSOLIDA: TIntegerField;
    CDSMovCCSUCURSAL: TIntegerField;
    CDSMovCCCTA_ASOCIADA: TStringField;
    CDSMovCCANIOMES: TStringField;
    CDSMovCCSALDOCC_REC: TFloatField;
    CDSCtaCte: TClientDataSet;
    DSPCheRec: TDataSetProvider;
    CDSCheRec: TClientDataSet;
    DSCheRec: TDataSource;
    QCheRec: TFDQuery;
    CDSCheRecID_CHEQUE_TER: TIntegerField;
    CDSCheRecID_BANCO: TIntegerField;
    CDSCheRecMUESTRABANCO: TStringField;
    CDSCheRecMUESTRACLIENTE: TStringField;
    CDSCheRecFIRMANTE: TStringField;
    CDSCheRecCUIT: TStringField;
    CDSCheRecDESTINO: TStringField;
    CDSCheRecNUMERO: TIntegerField;
    CDSCheRecMUESTRAIDREC: TIntegerField;
    CDSCheRecMUESTRATIPORC: TStringField;
    CDSCheRecMUESTRACLASEREC: TStringField;
    CDSCheRecMUESTRANROREC: TStringField;
    CDSMovCCDEBE: TFloatField;
    CDSMovCCHABER: TFloatField;
    CDSMovCCSALDO: TFloatField;
    CDSMovCCCOTIZACION: TFloatField;
    CDSSaldoInicialDEBE: TFloatField;
    CDSSaldoInicialHABER: TFloatField;
    CDSMovCCFECHAVTA: TSQLTimeStampField;
    CDSMovCCFECHAVTO: TSQLTimeStampField;
    CDSCheRecFECHA_ENTRADA: TSQLTimeStampField;
    CDSCheRecFECHA_SALIDA: TSQLTimeStampField;
    CDSCheRecFECHA_EMISION: TSQLTimeStampField;
    CDSCheRecFECHA_COBRO: TSQLTimeStampField;
    QClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    QClientesFECHAALTA: TSQLTimeStampField;
    QClientesULTIMOPAGO: TSQLTimeStampField;
    QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    QClientesVENCIMIENTO_TC: TSQLTimeStampField;
    QClientesFECHANACIMIENTO: TSQLTimeStampField;
    QClientesDESDE_F8001: TSQLTimeStampField;
    QClientesHASTA_F8001: TSQLTimeStampField;
    CDSCheRecIMPORTE: TFloatField;
    CDSListaClientesRAZON_SOCIAL: TStringField;
    CDSListaClientesDIRECCION_COMERCIAL: TStringField;
    CDSListaClientesSALDO: TFloatField;
    QCtaCte: TFDQuery;
    DSPCtaCte: TDataSetProvider;
    CDSCtaCteID_MOVCCVTA: TIntegerField;
    CDSCtaCteID_CPBTE: TIntegerField;
    CDSCtaCteCLIENTE: TStringField;
    CDSCtaCteFECHAVTA: TSQLTimeStampField;
    CDSCtaCteFECHAVTO: TSQLTimeStampField;
    CDSCtaCteTIPOCPBTE: TStringField;
    CDSCtaCteCLASECPBTE: TStringField;
    CDSCtaCteNROCPBTE: TStringField;
    CDSCtaCteDEBE: TFloatField;
    CDSCtaCteHABER: TFloatField;
    CDSCtaCteSALDO: TFloatField;
    CDSCtaCteDETALLE: TStringField;
    CDSCtaCteNRO_CUOTA: TIntegerField;
    CDSCtaCteID_MONEDA: TIntegerField;
    CDSCtaCteCOTIZACION: TFloatField;
    CDSCtaCteSALDOCC: TFloatField;
    CDSMovCCREMITOS: TStringField;
    CDSMovCCMUESTRAOBRA: TStringField;
    CDSMovObra: TClientDataSet;
    CDSMovObraID_MOVCCVTA: TIntegerField;
    CDSMovObraID_CPBTE: TIntegerField;
    CDSMovObraCLIENTE: TStringField;
    CDSMovObraFECHAVTA: TSQLTimeStampField;
    CDSMovObraFECHAVTO: TSQLTimeStampField;
    CDSMovObraTIPOCPBTE: TStringField;
    CDSMovObraCLASECPBTE: TStringField;
    CDSMovObraNROCPBTE: TStringField;
    CDSMovObraDEBE: TFloatField;
    CDSMovObraHABER: TFloatField;
    CDSMovObraSALDO: TFloatField;
    CDSMovObraDETALLE: TStringField;
    CDSMovObraID_COMPROBANTE: TIntegerField;
    CDSMovObraTIPO: TStringField;
    CDSMovObraOBSERVACIONES: TStringField;
    CDSMovObraCUOTA: TIntegerField;
    CDSMovObraID_MONEDA: TIntegerField;
    CDSMovObraCOTIZACION: TFloatField;
    CDSMovObraSIGNOMONEDA: TStringField;
    CDSMovObraFC_CONSOLIDAD: TStringField;
    CDSMovObraID_AJUSTE_CONSOLIDA: TIntegerField;
    CDSMovObraSUCURSAL: TIntegerField;
    CDSMovObraCTA_ASOCIADA: TStringField;
    CDSMovObraREMITOS: TStringField;
    CDSMovObraID_OBRA: TIntegerField;
    CDSMovObraMUESTRAOBRA: TStringField;
    CDSMovObraSALDOCC_REC: TFloatField;
    CDSMovObraSALDO_RECIBO: TFloatField;
    CDSListaClientesSALDOINICIAL: TFloatField;
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSMovCCCalcFields(DataSet: TDataSet);
    procedure CDSMovCCFC_CONSOLIDADGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSMovCCHABERGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSMovCCSaldoCCGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSMovCCSALDOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSMovCCSIGNOMONEDAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSMovCCDEBEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSMovObraCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DatosCCVta: TDatosCCVta;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses  UDMain_FD,UCtaCteVta;
{$R *.dfm}

//procedure TDatosCCVta.CDSListaClientesAfterScroll(DataSet: TDataSet);
//var Debe,Haber,SaldoInicial:Extended;
//begin

 // if DatosCCVta.CDSListaClientesSeleccion.Value then
//    begin
//      DatosCCVta.CDSMovCC_2.Close;
//      DatosCCVta.CDSMovCC_2.CommandText:= 'select * from MOV_CTACTE_VTA (:codigo,:desde,:hasta ) '+ FormCtaCteVta.Condiciones +
//                                          ' order by fechavta,tipocpbte ';
//      DatosCCVta.CDSMovCC_2.Params.ParamByName('Codigo').Value := DatosCCVta.CDSListaClientesCODIGO.AsString;
//      DatosCCVta.CDSMovCC_2.Params.ParamByName('Desde').Value  := FormCtaCteVta.Desde_2.Date;
//      DatosCCVta.CDSMovCC_2.Params.ParamByName('Hasta').Value  := FormCtaCteVta.Hasta_2.Date;
//      DatosCCVta.CDSMovCC_2.Open;
//
//      Debe  := 0;//Saldo;
//      Haber := 0;
//      DatosCCVta.CDSMovCC_2.First;
//      DatosCCVta.CDSMovCC_2.DisableControls;
//      WHILE NOT (DatosCCVta.CDSMovCC_2.Eof) DO
//        BEGIN
//          Debe  := DatosCCVta.CDSMovCC_2DEBE.AsFloat + Debe;
//          Haber := DatosCCVta.CDSMovCC_2HABER.AsFloat + Haber;
//          DatosCCVta.CDSMovCC_2.Edit;
//          DatosCCVta.CDSMovCC_2SaldoCC.Value := Debe - Haber;
//          DatosCCVta.CDSMovCC_2.Next;
//        END;
//      DatosCCVta.CDSMovCC_2.EnableControls;
//    end;
//end;

procedure TDatosCCVta.CDSMovCCCalcFields(DataSet: TDataSet);
begin
  CDSMovCCANIOMES.Value    := FormatDateTime('YYYY-MM',CDSMovCCFECHAVTA.AsDateTime);
  CDSMovCCSALDOCC_REC.Value:= CDSMovCCDEBE.AsFloat-CDSMovCCHABER.AsFloat;
end;

procedure TDatosCCVta.CDSMovCCDEBEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var Aux:Extended;
begin
  if Not(FormCtaCteVta=nil) then
    begin
      Aux :=CDSMovCCDEBE.AsFloat;
      if (CDSMovCCCOTIZACION.AsString<>'') and (CDSMovCCCOTIZACION.AsFloat>0) and (FormCtaCteVta.chbMoneda.Checked) then
        Aux:=Aux/CDSMovCCCOTIZACION.AsFloat;
      Text:=FormatFloat(',0.00',Aux);
    end;
 // dbgMovimientos.Refresh
end;


procedure TDatosCCVta.CDSMovCCFC_CONSOLIDADGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if DatosCCVta.CDSMovCCFC_CONSOLIDAD.Value='S' then
    Text:='*'
  else
    Text:='';
end;

procedure TDatosCCVta.CDSMovCCHABERGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var Aux:Extended;
begin
  if Not(FormCtaCteVta=nil) then
    begin
      Aux :=DatosCCVta.CDSMovCCHABER.AsFloat;
      if (DatosCCVta.CDSMovCCCOTIZACION.AsString<>'') and (DatosCCVta.CDSMovCCCOTIZACION.AsFloat>0) and (FormCtaCteVta.chbMoneda.Checked) then
        Aux:=Aux/DatosCCVta.CDSMovCCCOTIZACION.AsFloat;
      Text:=FormatFloat(',0.00',Aux);
    end;
end;

procedure TDatosCCVta.CDSMovCCSaldoCCGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var Aux:Extended;
begin
  if Not(FormCtaCteVta=nil) then
    begin
      Aux :=CDSMovCCSaldoCC.AsFloat;
      if (CDSMovCCCOTIZACION.AsString<>'') and (CDSMovCCCOTIZACION.AsFloat>0) and (FormCtaCteVta.chbMoneda.Checked) then
        Aux:=Aux/CDSMovCCCOTIZACION.AsFloat;
      Text:=FormatFloat(',0.00',Aux);
    end;
end;

procedure TDatosCCVta.CDSMovCCSALDOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
var Aux:Extended;
begin
  if Not(FormCtaCteVta=nil) then
    begin
      Aux :=CDSMovCCSALDO.AsFloat;
      if (CDSMovCCCOTIZACION.AsString<>'') and (CDSMovCCCOTIZACION.AsFloat>0) and (FormCtaCteVta.chbMoneda.Checked) then
        Aux:=Aux/CDSMovCCCOTIZACION.AsFloat;
      Text:=FormatFloat(',0.00',Aux);
    end;
end;

procedure TDatosCCVta.CDSMovCCSIGNOMONEDAGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Not(FormCtaCteVta=nil) then
    begin
      Text:=CDSMovCCSIGNOMONEDA.Value;
      if Not(FormCtaCteVta.chbMoneda.Checked) then
        Text:='$';
    end;
end;

procedure TDatosCCVta.CDSMovObraCalcFields(DataSet: TDataSet);
begin
  CDSMovObraSALDOCC_REC.Value:= CDSMovObraDEBE.AsFloat-CDSMovObraHABER.AsFloat;
end;

procedure TDatosCCVta.DataModuleDestroy(Sender: TObject);
begin
  DatosCCVta := NIL;
end;

end.
