unit UMovSalidaChe3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, FMTBcd, Provider, DB, DBClient, SqlExpr, ExtCtrls,
  StdCtrls, Mask, DBCtrls, JvExMask, JvToolEdit, JvDBControls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormMovSalidaChe3 = class(TForm)
    dbgCheques: TDBGrid;
    CDSMov: TClientDataSet;
    DSMov: TDataSource;
    DSPMov: TDataSetProvider;
    CDSMovID_CHEQUE_TER: TIntegerField;
    CDSMovID_MOV_CAJA: TIntegerField;
    CDSMovFECHA_ENTRADA: TSQLTimeStampField;
    CDSMovFECHA_EMISION: TSQLTimeStampField;
    CDSMovFECHA_COBRO: TSQLTimeStampField;
    CDSMovFECHA_SALIDA: TSQLTimeStampField;
    CDSMovORIGEN: TStringField;
    CDSMovID_BANCO: TIntegerField;
    CDSMovNOMBRE: TStringField;
    CDSMovNUMERO: TIntegerField;
    CDSMovDESTINO: TStringField;
    CDSMovID_MOV_CAJA_EGRESOS: TIntegerField;
    CDSMovTIPO_COMPROB: TStringField;
    CDSMovCLASE_COMPROB: TStringField;
    CDSMovID_COMPROBANTE: TIntegerField;
    CDSMovNRO_COMPROBANTE: TStringField;
    CDSMovDETALLEOPERACION: TStringField;
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    cxDBSpinEdit1: TDBEdit;
    cxDBSpinEdit2: TDBEdit;
    Label3: TLabel;
    cxDBSpinEdit3: TDBEdit;
    Label4: TLabel;
    cxDBDateEdit1: TJvDBDateEdit;
    QMov: TFDQuery;
    CDSMovIMPORTE: TFloatField;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgChequesDblClick(Sender: TObject);
  private
    { Private declarations }
    FIdChe:Integer;
  public
    { Public declarations }
  published
    property IdChe3:Integer read FIdChe Write FIdChe;
  end;

var
  FormMovSalidaChe3: TFormMovSalidaChe3;

implementation

{$R *.dfm}
uses UDMain_FD, UOPago_2, UEgresoCaja, UCompraCtdo_2, UDepositosBancarios;

procedure TFormMovSalidaChe3.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMovSalidaChe3.dbgChequesDblClick(Sender: TObject);
begin
  if CDSMovTIPO_COMPROB.Value='OP' then
    begin
      if FormOPago_2<>nil then
        FreeAndNil(FormOPago_2);
      if Not(Assigned(FormOPago_2)) then
        FormOPago_2:=TFormOPago_2.Create(Application);
      FormOPago_2.DatoNew   := CDSMovID_COMPROBANTE.AsString;
      FormOPago_2.TipoCpbte := 'OP';
      FormOPago_2.Recuperar.Execute;
      FormOPago_2.Show;
    end
  else
    if CDSMovTIPO_COMPROB.Value='EC' then
      begin
        if FormEgresoCaja<>nil then
          FreeAndNil(FormEgresoCaja);
        if Not(Assigned(FormEgresoCaja)) then
          FormEgresoCaja:=TFormEgresoCaja.Create(Application);
        FormEgresoCaja.DatoNew   := CDSMovID_COMPROBANTE.AsString;
        FormEgresoCaja.TipoCpbte := 'EC';
        FormEgresoCaja.Recuperar.Execute;
        FormEgresoCaja.Show;
      end
    else
      if CDSMovTIPO_COMPROB.Value='FO' then
        begin
          if FormCompraCtdo_2<>nil then
            FreeAndNil(FormCompraCtdo_2);
          if Not(Assigned(FormCompraCtdo_2)) then
            FormCompraCtdo_2:=TFormCompraCtdo_2.Create(Application);
          FormCompraCtdo_2.DatoNew   := CDSMovID_COMPROBANTE.AsString;
          FormCompraCtdo_2.TipoCpbte := 'FO';
          FormCompraCtdo_2.Recuperar.Execute;
          FormCompraCtdo_2.Show;
        end
      else
        if CDSMovTIPO_COMPROB.Value='DP' then
          begin
            if Not(Assigned(FormDepositosBancarios)) then
              FormDepositosBancarios:=TFormDepositosBancarios.Create(Application);
            FormDepositosBancarios.DatoNew   := CDSMovID_COMPROBANTE.AsString;
            FormDepositosBancarios.TipoCpbte := 'DP';
            FormDepositosBancarios.Recuperar.Execute;
            FormDepositosBancarios.Show;
          end;


end;

procedure TFormMovSalidaChe3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormMovSalidaChe3.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormMovSalidaChe3.FormDestroy(Sender: TObject);
begin
  FormMovSalidaChe3:=nil;
end;

procedure TFormMovSalidaChe3.FormShow(Sender: TObject);
begin
  CDSMov.Close;
  CDSMov.Params.ParamByName('id_cheque').Value:=FIdChe;
  CDSMov.Open;
end;

end.
