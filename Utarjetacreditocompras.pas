unit UTarjetaCreditoCompras;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase,  ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, DBClient, Provider,   Mask, DBCtrls, JvComponentBase,
  ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr, JvExMask, JvToolEdit, Data.DB, JvAppStorage, JvAppIniStorage,
  System.Actions, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormTarjetaCreditoCompra = class(TFormABMBase)
    DSPTarjaCreditoCompra: TDataSetProvider;
    CDSTarjaCreditoCompra: TClientDataSet;
    CDSTarjaCreditoCompraID_BANCO: TIntegerField;
    CDSTarjaCreditoCompraID_TCREDITO: TIntegerField;
    Label1: TLabel;
    dbeId: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    dbeNombre: TDBEdit;
    Label5: TLabel;
    dbeNombreBanco: TDBEdit;
    Label6: TLabel;
    dbeNombreTarjeta: TDBEdit;
    BuscarTarjeta: TAction;
    BuscarBanco: TAction;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DSMoneda: TDataSource;
    Label7: TLabel;
    dbeMuestraCuit: TDBEdit;
    CDSTarjaCreditoCompraID: TIntegerField;
    CDSTarjaCreditoCompraNRO_TARJETA: TStringField;
    CDSTarjaCreditoCompraNOMBRE: TStringField;
    CDSTarjaCreditoCompraMONEDA: TIntegerField;
    CDSTarjaCreditoCompraMUESTRATARJETACREDITO: TStringField;
    CDSTarjaCreditoCompraMUESTRACUIT: TStringField;
    CDSTarjaCreditoCompraMUESTRABANCO: TStringField;
    CDSTarjaCreditoCompraMUESTRARAZONSOCIAL: TStringField;
    CDSBuscaTarjeta: TClientDataSet;
    DSPBuscaTarjeta: TDataSetProvider;
    CDSBuscaTarjetaID_TC: TIntegerField;
    CDSBuscaTarjetaDESCRIPCION: TStringField;
    CDSBuscaTarjetaMONEDA: TIntegerField;
    CDSBuscaBanco: TClientDataSet;
    DSPBuscaBanco: TDataSetProvider;
    CDSBuscaBancoID_BANCO: TIntegerField;
    CDSBuscaBancoNOMBRE: TStringField;
    CDSBuscaMoneda: TClientDataSet;
    DSPBuscaMoneda: TDataSetProvider;
    CDSBuscaMonedaID: TIntegerField;
    CDSBuscaMonedaMONEDA: TStringField;
    dbcIdtarjeta: TJvDBComboEdit;
    dbcIdBanco: TJvDBComboEdit;
    CDSBuscaTarjeta_Comp: TClientDataSet;
    DSPBuscaTarjeta_Comp: TDataSetProvider;
    CDSBuscaTarjeta_CompID: TIntegerField;
    CDSBuscaTarjeta_CompNRO_TARJETA: TStringField;
    CDSBuscaTarjeta_CompNOMBRE: TStringField;
    CDSBuscaTarjeta_CompMUESTRATARJETACREDITO: TStringField;
    CDSTCredito: TClientDataSet;
    DSPTCredito: TDataSetProvider;
    CDSTCreditoID_TC: TIntegerField;
    CDSTCreditoDESCRIPCION: TStringField;
    CDSTCreditoMONEDA: TIntegerField;
    CDSTCreditoCODIGOARTICULO: TStringField;
    CDSTCreditoID_CUENTA_BANCO: TIntegerField;
    CDSTCreditoDIAS_ACREDITACION: TSmallintField;
    CDSTCreditoCUIT: TStringField;
    CDSTCreditoRAZONSOCIAL: TStringField;
    CDSTCreditoMUESTRAARTICULO: TStringField;
    CDSTCreditoMUESTRACTABCO: TStringField;
    CDSTCreditoMUESTRANROCTABCO: TStringField;
    CDSBancos: TClientDataSet;
    DSPBancos: TDataSetProvider;
    CDSBancosID_BANCO: TIntegerField;
    CDSBancosNOMBRE: TStringField;
    CDSBancosDIRECCION: TStringField;
    CDSBancosTELEFONOS: TStringField;
    CDSBancosSUCURSAL: TStringField;
    CDSBancosLOCALIDAD: TStringField;
    ComBuscadorTarjeta: TComBuscador;
    ComBuscadorBanco: TComBuscador;
    QBancos: TFDQuery;
    procedure BuscarTarjetaExecute(Sender: TObject);
    procedure CDSTarjaCreditoCompraID_TCREDITOSetText(Sender: TField;
      const Text: String);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSTarjaCreditoCompraID_BANCOSetText(Sender: TField;
      const Text: String);
    procedure BuscarBancoExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSTarjaCreditoCompraNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function AsignarTarjetCredito(Dato:Integer):boolean;
    function AsignarBanco(Dato:Integer):boolean;

  end;

var
  FormTarjetaCreditoCompra: TFormTarjetaCreditoCompra;

implementation

uses UDMain_FD, DMBuscadoresForm;

{$R *.DFM}

function TFormTarjetaCreditoCompra.AsignarTarjetCredito(Dato:Integer):boolean;
begin
  CDSTCredito.Close;
  CDSTCredito.Params.ParamByName('id').Value:=Dato;
  CDSTCredito.Open;
  if CDSBuscaTarjetaID_TC.AsString<>'' Then
    begin
      Result:=True;
      CDSTarjaCreditoCompraMUESTRATARJETACREDITO.Value:=CDSTCreditoRAZONSOCIAL.Value;
      CDSTarjaCreditoCompraMUESTRACUIT.Value          :=CDSTCreditoCUIT.Value;
      CDSTarjaCreditoCompraID_TCREDITO.Value          :=CDSTCreditoID_TC.Value;
    end
  else
    begin
      Result:=False;
      CDSTarjaCreditoCompraMUESTRATARJETACREDITO.Value:='';
      CDSTarjaCreditoCompraMUESTRACUIT.Value          :='';
      CDSTarjaCreditoCompraID_TCREDITO.Clear;
    end;
end;

function TFormTarjetaCreditoCompra.AsignarBanco(Dato:Integer):boolean;
begin
  CDSBancos.Close;
  CDSBancos.Params.ParamByName('id').Value:=Dato;
  CDSBancos.Open;
  if CDSBancosID_BANCO.AsString<>'' Then
    begin
      Result:=True;
      CDSTarjaCreditoCompraMUESTRABANCO.Value:=CDSBancosNOMBRE.Value;
      CDSTarjaCreditoCompraID_BANCO.Value    :=CDSBancosID_BANCO.Value;
    end
  else
    begin
      Result:=False;
      CDSTarjaCreditoCompraMUESTRABANCO.Value:='';
      CDSTarjaCreditoCompraID_BANCO.Clear;
    end;
 end;


procedure TFormTarjetaCreditoCompra.BuscarTarjetaExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaTarjeta.Close;
  CDSBuscaTarjeta.Open;
  comBuscadorTarjeta.Execute;
  if comBuscadorTarjeta.rOk Then
      CDSTarjaCreditoCompraID_TCREDITOSetText(CDSTarjaCreditoCompraID_TCREDITO,IntToStr(comBuscadorTarjeta.Id));
  CDSBuscaTarjeta.Close;
end;

procedure TFormTarjetaCreditoCompra.CDSTarjaCreditoCompraID_TCREDITOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if (Text<>#13) and (Text<>'') Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarTarjetCredito(Sender.AsInteger)) Then
        begin
          ShowMessage('Dato no Válido....');
          Sender.Clear;
        end;
     end;
end;

procedure TFormTarjetaCreditoCompra.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AddClientDataSet(CDSTarjaCreditoCompra,DSPTarjaCreditoCompra);
  CDSTarjaCreditoCompra.Open;
  CDSBuscaMoneda.Open;
  Campo:='id';
  Tabla:='tarjetacredito_comp'
end;

procedure TFormTarjetaCreditoCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSTarjaCreditoCompra.close;
  CDSBuscaMoneda.Close;

  Action:=caFree;
end;

procedure TFormTarjetaCreditoCompra.FormDestroy(Sender: TObject);
begin
  inherited;
  FormTarjetaCreditoCompra:=Nil;
end;

procedure TFormTarjetaCreditoCompra.CDSTarjaCreditoCompraID_BANCOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
 if (Text<>#13) and (Text<>'') Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarBanco(Sender.AsInteger)) Then
        begin
          ShowMessage('Dato no Válido....');
          Sender.Clear;
        end;
     end;
end;

procedure TFormTarjetaCreditoCompra.BuscarBancoExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaBanco.Close;
  CDSBuscaBanco.Open;
  comBuscadorBanco.Execute;
  if comBuscadorBanco.rOk Then
    CDSTarjaCreditoCompraID_BANCOSetText(CDSTarjaCreditoCompraID_BANCO,IntToStr(comBuscadorBanco.Id));
  CDSBuscaBanco.Close;
end;

procedure TFormTarjetaCreditoCompra.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeNombre.SetFocus;
end;

procedure TFormTarjetaCreditoCompra.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaTarjeta_comp.Close;
  CDSBuscaTarjeta_comp.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscaTarjeta_comp.Close;
end;

procedure TFormTarjetaCreditoCompra.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSTarjaCreditoCompra.Close;
  CDSTarjaCreditoCompra.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSTarjaCreditoCompra.Open;
end;

procedure TFormTarjetaCreditoCompra.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSTarjaCreditoCompraID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormTarjetaCreditoCompra.CDSTarjaCreditoCompraNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSTarjaCreditoCompraID.Value:=1
  else
    CDSTarjaCreditoCompraID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1;
  QUltimoCodigo2.Close;

end;

end.