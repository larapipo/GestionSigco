unit UCondicionPago;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, Mask, DBCtrls, Db, ActnList, ImgList,
  Buttons, ToolWin, ComCtrls, ExtCtrls, DBClient, Provider,
  JvDBControls, FMTBcd, SqlExpr, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement, System.Actions, JvLabel, JvExControls, JvGradient,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormCondicionPago = class(TFormABMBase)
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    dbeCodigo: TDBEdit;
    dbeDetalle: TDBEdit;
    dbeDias: TDBEdit;
    dbeDescto: TDBEdit;
    DSPCondicionPago: TDataSetProvider;
    CDSBuscadorCondicionPago: TClientDataSet;
    DSPBuscadorCondicionPago: TDataSetProvider;
    CDSBuscadorCondicionPagoCODIGO: TIntegerField;
    CDSBuscadorCondicionPagoDETALLE: TStringField;
    CDSBuscadorCondicionPagoDIAS: TIntegerField;
    CDSCondicionPago: TClientDataSet;
    CDSCondicionPagoCODIGO: TIntegerField;
    CDSCondicionPagoDETALLE: TStringField;
    CDSCondicionPagoDIAS: TIntegerField;
    CDSCondicionPagoDESCUENTO: TFloatField;
    QBuscadorCondicionP: TFDQuery;
    CDSBuscadorCondicionPagoDESCUENTO: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDSCondicionPagoNewRecord(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure DSBaseDataChange(Sender: TObject; Field: TField);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCondicionPago: TFormCondicionPago;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormCondicionPago.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormCondicionPago.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCondicionPago:=nil;
end;

procedure TFormCondicionPago.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSCondicionPago,DSPCondicionPago);
  Tabla:='F_Pago';
  Campo:='codigo';
  CDSCondicionPago.Open;
end;

procedure TFormCondicionPago.CDSCondicionPagoNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSCondicionPagoCodigo.value:=1
  else
    CDSCondicionPagoCodigo.Value:=QUltimoCodigo2.Fields[0].AsInteger+1;
  QUltimoCodigo2.Close;
  CDSCondicionPagoDias.Value       :=0;
  CDSCondicionPagoDESCUENTO.AsFloat:=0;
end;

procedure TFormCondicionPago.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorCondicionPago.Close;
  CDSBuscadorCondicionPago.Open;
  comBuscadorBase.Execute;
    if ComBuscadorBase.rOk Then
      begin
        DatoNew:=IntToStr(ComBuscadorBase.id);
        Recuperar.Execute;
      end;
  CDSBuscadorCondicionPago.Close;
end;

procedure TFormCondicionPago.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeCodigo.SetFocus;
end;

procedure TFormCondicionPago.DSBaseDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  dbeCodigo.Enabled:=DSBase.State in [dsInsert];
end;

procedure TFormCondicionPago.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSCondicionPago.Close;
  CDSCondicionPago.Params.ParamByName('Codigo').Value:= DatoNew;
  CDSCondicionPago.OPen;
end;

procedure TFormCondicionPago.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:= CDSCondicionPagoCodigo.AsString;
  inherited;
  Recuperar.Execute;
end;

end.
