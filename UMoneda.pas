unit UMoneda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBClient,  Provider, StdCtrls, Mask, DBCtrls,
  Db, ActnList,  ImgList, Buttons, ToolWin, ComCtrls, ExtCtrls,
  JvExMask, JvSpin, JvDBSpinEdit, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr, JvAppStorage, JvAppIniStorage, System.Actions,
  JvComponentBase, JvExControls, JvGradient, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormMonedas = class(TFormABMBase)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DSPMoneda: TDataSetProvider;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    CDSMonedas: TClientDataSet;
    Label5: TLabel;
    JvDBSpinEdit1: TJvDBSpinEdit;
    dbeCOTIZACION: TDBEdit;
    lb1: TLabel;
    CDSMonedasID: TIntegerField;
    CDSMonedasMONEDA: TStringField;
    CDSMonedasSIGNO: TStringField;
    CDSMonedasORDEN: TSmallintField;
    CDSBuscaMoneda: TClientDataSet;
    DSPBuscaMoneda: TDataSetProvider;
    CDSBuscaMonedaID: TIntegerField;
    CDSBuscaMonedaMONEDA: TStringField;
    CDSBuscaMonedaSIGNO: TStringField;
    CDSBuscaMonedaORDEN: TSmallintField;
    QBuscaMoneda: TFDQuery;
    CDSBuscaMonedaCOTIZACION: TFloatField;
    CDSBuscaMonedaCOTIZACION_COMPRA: TFloatField;
    QUsadaStock: TFDQuery;
    QUsadaCompra: TFDQuery;
    QMonedas: TFDQuery;
    QMonedasID: TIntegerField;
    QMonedasMONEDA: TStringField;
    QMonedasCOTIZACION: TFloatField;
    QMonedasSIGNO: TStringField;
    QMonedasORDEN: TSmallintField;
    QMonedasCOTIZACION_COMPRA: TFloatField;
    CDSMonedasCOTIZACION: TFloatField;
    CDSMonedasCOTIZACION_COMPRA: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CDSMonedasNewRecord(DataSet: TDataSet);
    procedure BorrarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMonedas: TFormMonedas;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormMonedas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormMonedas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormMonedas:=nil;
end;

procedure TFormMonedas.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AddClientDataSet(CDSMonedas,DSPMoneda);
  Tabla:='Monedas';
  Campo:='id';
  CDSMonedas.Open;
end;

procedure TFormMonedas.BorrarExecute(Sender: TObject);
var Usada:Boolean;
begin
  QUsadaStock.Close;
  QUsadaStock.ParamByName('moneda').Value:=CDSMonedasID.Value;
  QUsadaStock.Open;
  Usada:=QUsadaStock.Fields[0].AsInteger<>0;
  QUsadaStock.Close;
  if Usada=False then
    begin
      QUsadaCompra.Close;
      QUsadaCompra.ParamByName('moneda').Value:=CDSMonedasID.Value;
      QUsadaCompra.Open;
      Usada:=QUsadaCompra.Fields[0].AsInteger<>0;
      QUsadaCompra.Close;
    end;
  if Usada=False then
    inherited
  else
   ShowMessage('Moneda usada en Compras o en Stock... no se puede borrar...');

end;

procedure TFormMonedas.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaMoneda.Close;
  CDSBuscaMoneda.Open;
  comBuscadorBase.Execute;
    if comBuscadorBase.rOk Then
      begin
        DatoNew:=IntToStr(comBuscadorBase.Id);
        Recuperar.Execute;
      end;
  CDSBuscaMoneda.Close;
end;

procedure TFormMonedas.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSMonedas.Close;
  CDSMonedas.Params.ParamByName('id').Value:= DatoNew;
  CDSMonedas.Open;
end;

procedure TFormMonedas.CDSMonedasNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSMonedasID.Value:=1
  else
    CDSMonedasID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1;
  QUltimoCodigo2.Close;
  CDSMonedasORDEN.Value:=CDSMonedasID.Value;
end;

procedure TFormMonedas.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSMonedasID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormMonedas.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

end.

