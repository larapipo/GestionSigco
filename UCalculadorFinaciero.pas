unit UCalculadorFinaciero;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, StdCtrls, Provider, DBClient, SqlExpr, JvExControls,
  JvDBLookup, ExtCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits,Math,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormCalculadorFinanciero = class(TForm)
    Panel1: TPanel;
    edMonto: TJvCalcEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    edAnticipo: TJvCalcEdit;
    Label3: TLabel;
    edFianaciar: TJvCalcEdit;
    Label4: TLabel;
    edTotalFianciado: TJvCalcEdit;
    Bevel2: TBevel;
    dbcTarjeta: TJvDBLookupCombo;
    edValorCuota: TJvCalcEdit;
    Label5: TLabel;
    CDSBuscaTCredito: TClientDataSet;
    DSPBuscaTCredito: TDataSetProvider;
    DSTarjeta: TDataSource;
    CDSBuscaTCreditoID_TC: TIntegerField;
    CDSBuscaTCreditoDESCRIPCION: TStringField;
    CDSBuscaTCreditoMONEDA: TIntegerField;
    CDSBuscaTCreditoCODIGOARTICULO: TStringField;
    CDSBuscaTCreditoRAZONSOCIAL: TStringField;
    Label6: TLabel;
    DSCoeficientes: TDataSource;
    dbcCuota: TJvDBLookupCombo;
    edCoeficiente: TJvCalcEdit;
    Bevel3: TBevel;
    Label7: TLabel;
    Bevel4: TBevel;
    QCoeficiente: TFDQuery;
    QCoeficienteID: TIntegerField;
    QCoeficienteID_TC: TIntegerField;
    QCoeficienteCUOTAS: TIntegerField;
    QCoeficienteCOEFICIENTE: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dbcTarjetaClick(Sender: TObject);
    procedure dbcCuotaChange(Sender: TObject);
    procedure edCoeficienteChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edMontoChange(Sender: TObject);
    procedure edAnticipoChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCalculadorFinanciero: TFormCalculadorFinanciero;

implementation

uses DMBuscadoresForm,UDMain_FD;
{$R *.dfm}

procedure TFormCalculadorFinanciero.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormCalculadorFinanciero.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSBuscaTCredito.Open;
  QCoeficiente.Close;
  QCoeficiente.ParamByName('id_tc').Value:=CDSBuscaTCreditoID_TC.Value;
  QCoeficiente.Open;
  edMonto.Value          := 0;
  edAnticipo.Value       := 0;
  edFianaciar.Value      := 0;
  edCoeficiente.Value    := 0;
  edValorCuota.Value     := 0;
  edTotalFianciado.Value := 0;

end;

procedure TFormCalculadorFinanciero.FormDestroy(Sender: TObject);
begin
  FormCalculadorFinanciero:=nil;
end;

procedure TFormCalculadorFinanciero.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_UP) and (not (ActiveControl is TJvDBLookupCombo)) then
    begin
      perform(wm_nextdlgctl, 0, -1);
      key := 0;
    end
  else
    if (key=VK_DOWN) and (not (ActiveControl is TJvDBLookupCombo)) then
      begin
        perform(wm_nextdlgctl, 0, 0);
        key := 0;
      end;
end;

procedure TFormCalculadorFinanciero.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
    if (Key = #13)
    then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
  if Key = #27 then
    Close;
end;

procedure TFormCalculadorFinanciero.dbcCuotaChange(Sender: TObject);
var cta:integer;
begin
  if Not(varisnull(dbcCuota.LookupSource.DataSet.FieldByName('coeficiente').Value)) then
    edCoeficiente.Value:=dbcCuota.LookupSource.DataSet.FieldByName('coeficiente').Value
  else
    edCoeficiente.Value:=0;

 if (Trim(dbcCuota.Text)<>'')  then
    cta:=StrToInt(dbcCuota.Text)
  else
    cta:=1;

  edValorCuota.Value    := RoundTo((edFianaciar.Value * edCoeficiente.Value)/cta ,-2);
  edTotalFianciado.Value:= roundTo(edValorCuota.Value * cta,-2);

end;

procedure TFormCalculadorFinanciero.dbcTarjetaClick(Sender: TObject);
begin
  QCoeficiente.Close;
  QCoeficiente.ParamByName('id_tc').Value:=CDSBuscaTCreditoID_TC.Value;
  QCoeficiente.Open;
  if QCoeficiente.RecordCount>0 Then
    begin
      dbcCuota.LookupSource.DataSet.First;
      dbcCuota.KeyValue:=QCoeficienteID.Value;
    end;

  //dbcCuota
end;

procedure TFormCalculadorFinanciero.edAnticipoChange(Sender: TObject);
begin
  edFianaciar.Value:=edMonto.Value-edAnticipo.Value;
end;

procedure TFormCalculadorFinanciero.edCoeficienteChange(Sender: TObject);
var cta:Integer;
begin
  if (Trim(dbcCuota.Text)<>'')  then
    cta:=StrToInt(dbcCuota.Text)
  else
    cta:=1;

  edValorCuota.Value    := RoundTo((edFianaciar.Value* edCoeficiente.Value)/cta,-2 );
  edTotalFianciado.Value:= roundTo(edValorCuota.Value * cta,-2);
end;

procedure TFormCalculadorFinanciero.edMontoChange(Sender: TObject);
begin
  edFianaciar.Value:=edMonto.Value-edAnticipo.value;
end;

end.
