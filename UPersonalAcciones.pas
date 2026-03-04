unit UPersonalAcciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, ImgList,
  DB,   ActnList, ComCtrls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, Provider,
  DBClient, Mask, DBCtrls, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormPersonalAcciones = class(TFormABMBase)
    CDSAccion: TClientDataSet;
    DSPAccion: TDataSetProvider;
    CDSAccionID: TIntegerField;
    CDSAccionDETALLE: TStringField;
    Label1: TLabel;
    dbeId: TDBEdit;
    Label2: TLabel;
    dbeDetalle: TDBEdit;
    CDSBuscadorAccion: TClientDataSet;
    DSPBuscadorAccion: TDataSetProvider;
    CDSBuscadorAccionID: TIntegerField;
    CDSBuscadorAccionDETALLE: TStringField;
    QAccion: TFDQuery;
    QAccionID: TIntegerField;
    QAccionDETALLE: TStringField;
    QBuscadorAcc: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSAccionNewRecord(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPersonalAcciones: TFormPersonalAcciones;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormPersonalAcciones.BorrarExecute(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormPersonalAcciones.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorAccion.Close;
  CDSBuscadorAccion.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscadorAccion.Close;
end;

procedure TFormPersonalAcciones.CancelarExecute(Sender: TObject);
begin
  CDSAccion.Close;
  CDSAccion.Params.ParamByName('id').Clear;
  CDSAccion.Open;
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormPersonalAcciones.CDSAccionNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSAccionID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1
  else
    CDSAccionID.Value:=1;
  QUltimoCodigo2.Close;

end;

procedure TFormPersonalAcciones.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSAccionID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormPersonalAcciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
end;

procedure TFormPersonalAcciones.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSAccion,DSPAccion);
  CDSAccion.Open;
  Tabla:='Personal_accion';
  Campo:='id';
end;

procedure TFormPersonalAcciones.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPersonalAcciones:=nil;
end;

procedure TFormPersonalAcciones.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormPersonalAcciones.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSAccion.Close;
  CDSAccion.Params.ParamByName('id').Value:=StrToInt(datoNew);
  CDSAccion.Open;
end;

end.
