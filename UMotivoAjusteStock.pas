unit UMotivoAjusteStock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Datasnap.DBClient, Datasnap.Provider, Data.DB,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormMotivoAjustesStock = class(TFormABMBase)
    DSPMov: TDataSetProvider;
    CDSMov: TClientDataSet;
    CDSBuscadorMov: TClientDataSet;
    CDSBuscadorMovDETALLE: TStringField;
    CDSBuscadorMovID: TIntegerField;
    DSPBuscadorMov: TDataSetProvider;
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeNombre: TDBEdit;
    CDSMovID: TIntegerField;
    CDSMovDETALLE: TStringField;
    QMov: TFDQuery;
    QMovID: TIntegerField;
    QMovDETALLE: TStringField;
    QBuscadorMov: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CDSMovNewRecord(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMotivoAjustesStock: TFormMotivoAjustesStock;

implementation

USES UDMain_FD;

{$R *.dfm}

procedure TFormMotivoAjustesStock.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorMov.Close;
  CDSBuscadorMov.Open;
  comBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    BEGIN
      CDSMov.Close;
      CDSMov.Params.ParamByName('id').Value := IntToStr(comBuscadorBase.Id);
      CDSMov.Open;
    END;
  CDSBuscadorMov.Close;
end;

procedure TFormMotivoAjustesStock.CDSMovNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSMovID.Value:=1
  else
    CDSMovID.Value:=QUltimoCodigo2.Fields[0].AsInteger + 1;
  QUltimoCodigo2.Close;
  dbeNombre.SetFocus;
end;

procedure TFormMotivoAjustesStock.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSMovID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormMotivoAjustesStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormMotivoAjustesStock.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSMov,DSPMov);
  CDSMov.Open;
  Tabla:='TABLA_MOTIVO_AJ_STOCK';
  Campo:='id';
end;

procedure TFormMotivoAjustesStock.FormDestroy(Sender: TObject);
begin
  inherited;
  FormMotivoAjustesStock:=nil;
end;

procedure TFormMotivoAjustesStock.RecuperarExecute(Sender: TObject);
begin
  CDSMov.Close;
  CDSMov.Params.ParamByName('id').Value := DatoNew;
  CDSMov.Open;
end;

end.
