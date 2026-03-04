unit UControlChePropio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  Datasnap.Provider, Datasnap.DBClient, JvAppStorage, JvAppIniStorage,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormControlChequesDuplicados = class(TFormABMBase)
    QCheques: TSQLQuery;
    CDSCheques: TClientDataSet;
    DSPCheques: TDataSetProvider;
    DSCheques: TDataSource;
    dbgErrores: TJvDBGrid;
    Label1: TLabel;
    QChePropio: TSQLQuery;
    DSPChePropio: TDataSetProvider;
    QChePropioID_CHEQUE_PRO: TIntegerField;
    QChePropioID_CAJA: TIntegerField;
    QChePropioID_MOV_CAJA: TIntegerField;
    QChePropioID_FPAGO: TIntegerField;
    QChePropioID_CHEQUERA: TIntegerField;
    QChePropioID_BANCO: TIntegerField;
    QChePropioFECHA_EMISION: TSQLTimeStampField;
    QChePropioFECHA_COBRO: TSQLTimeStampField;
    QChePropioORDEN_DE: TStringField;
    QChePropioNUMERO: TIntegerField;
    QChePropioUNIDADES: TFMTBCDField;
    QChePropioIMPORTE: TFMTBCDField;
    QChePropioCOTIZACION: TFMTBCDField;
    QChePropioID_CUENTA_CAJA: TIntegerField;
    QChePropioID_CUENTA_BANCO: TIntegerField;
    QChePropioMONEDA: TIntegerField;
    QChePropioOBSERVACIONES: TStringField;
    QChePropioANULADO: TStringField;
    QChePropioID_CPBTE_ANULACION_REEMP: TIntegerField;
    QChePropioID_CAJA_MOV_ANULACION: TIntegerField;
    QChePropioDEBITADO: TStringField;
    QChePropioFECHA_DEBITO: TSQLTimeStampField;
    CDSChePropio: TClientDataSet;
    CDSChePropioID_CHEQUE_PRO: TIntegerField;
    CDSChePropioID_CAJA: TIntegerField;
    CDSChePropioID_MOV_CAJA: TIntegerField;
    CDSChePropioID_FPAGO: TIntegerField;
    CDSChePropioID_CHEQUERA: TIntegerField;
    CDSChePropioID_BANCO: TIntegerField;
    CDSChePropioFECHA_EMISION: TSQLTimeStampField;
    CDSChePropioFECHA_COBRO: TSQLTimeStampField;
    CDSChePropioORDEN_DE: TStringField;
    CDSChePropioNUMERO: TIntegerField;
    CDSChePropioUNIDADES: TFMTBCDField;
    CDSChePropioIMPORTE: TFMTBCDField;
    CDSChePropioCOTIZACION: TFMTBCDField;
    CDSChePropioID_CUENTA_CAJA: TIntegerField;
    CDSChePropioID_CUENTA_BANCO: TIntegerField;
    CDSChePropioMONEDA: TIntegerField;
    CDSChePropioOBSERVACIONES: TStringField;
    CDSChePropioANULADO: TStringField;
    CDSChePropioID_CPBTE_ANULACION_REEMP: TIntegerField;
    CDSChePropioID_CAJA_MOV_ANULACION: TIntegerField;
    CDSChePropioDEBITADO: TStringField;
    CDSChePropioFECHA_DEBITO: TSQLTimeStampField;
    DSChePropio: TDataSource;
    dbgCheques: TJvDBGrid;
    CDSChequesID_MOV_CAJA: TIntegerField;
    CDSChequesCANTIDAD_FILAS: TIntegerField;
    QComprobante: TSQLQuery;
    QComprobanteID_COMPROBANTE: TIntegerField;
    QComprobanteTIPO_COMPROB: TStringField;
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSChequesAfterScroll(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgChequesDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlChequesDuplicados: TFormControlChequesDuplicados;

implementation

{$R *.dfm}
uses UOPago_2, UCompraCtdo_2, UEgresoCaja, UDepositosBancarios;

procedure TFormControlChequesDuplicados.BuscarExecute(Sender: TObject);
begin
 // inherited;
  CDSCheques.Close;
  CDSCheques.Open;
end;

procedure TFormControlChequesDuplicados.CDSChequesAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  CDSChePropio.Close;
  CDSChePropio.Params.ParamByName('idmov').Value:=CDSChequesID_MOV_CAJA.Value;
  CDSChePropio.Open;
end;

procedure TFormControlChequesDuplicados.ConfirmaExecute(Sender: TObject);
begin
 // inherited;
  CDSChePropio.ApplyUpdates(0);
  CDSCheques.Close;
  CDSCheques.Open;
end;

procedure TFormControlChequesDuplicados.dbgChequesDblClick(Sender: TObject);
begin
  inherited;
  QComprobante.Close;
  QComprobante.ParamByName('id').Value:=CDSChequesID_MOV_CAJA.Value;
  QComprobante.Open;
  if QComprobante.Fields[0].AsString<>'' then
    begin
      if QComprobanteTIPO_COMPROB.Value='OP' then
        begin
          IF NOT (Assigned(FormOPago_2)) THEN
            FormOPago_2:= TFormOPago_2.Create(self);
          FormOPago_2.DatoNew    := QComprobanteID_COMPROBANTE.AsString;
          FormOPago_2.TipoCpbte  := QComprobanteTIPO_COMPROB.AsString;
          FormOPago_2.Recuperar.Execute;
          FormOPago_2.Show;
        end
      else
        if QComprobanteTIPO_COMPROB.Value='FO' then
          begin
            IF NOT (Assigned(FormCompraCtdo_2)) THEN
              FormCompraCtdo_2   := TFormCompraCtdo_2.Create(self);
            FormCompraCtdo_2.DatoNew   := QComprobanteID_COMPROBANTE.AsString;
            FormCompraCtdo_2.TipoCpbte := QComprobanteTIPO_COMPROB.AsString;
            FormCompraCtdo_2.Recuperar.Execute;
            FormCompraCtdo_2.Show;
          end
        else
          if QComprobanteTIPO_COMPROB.Value='EC' then
            begin
              IF NOT (Assigned(FormEgresoCaja)) THEN
                FormEgresoCaja   := TFormEgresoCaja.Create(self);
              FormEgresoCaja.DatoNew   := QComprobanteID_COMPROBANTE.AsString;
              FormEgresoCaja.TipoCpbte := QComprobanteTIPO_COMPROB.AsString;
              FormEgresoCaja.Recuperar.Execute;
              FormEgresoCaja.Show;
          end
        else
          if QComprobanteTIPO_COMPROB.Value='DP' then
            begin
              IF NOT (Assigned(FormDepositosBancarios)) THEN
                FormDepositosBancarios   := TFormDepositosBancarios.Create(self);
              FormDepositosBancarios.DatoNew   := QComprobanteID_COMPROBANTE.AsString;;
              FormDepositosBancarios.TipoCpbte := QComprobanteTIPO_COMPROB.AsString;
              FormDepositosBancarios.Recuperar.Execute;
              FormDepositosBancarios.Show;
            end;


    end;
end;

procedure TFormControlChequesDuplicados.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormControlChequesDuplicados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlChequesDuplicados.FormCreate(Sender: TObject);
begin
  inherited;
  CDSCheques.Close;
  CDSCheques.Open;
end;

procedure TFormControlChequesDuplicados.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlChequesDuplicados:=nil;
end;

end.
