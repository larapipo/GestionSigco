unit UMotivosVales;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  Datasnap.Provider, Data.DB, Datasnap.DBClient, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormMotivosPersonal = class(TFormABMBase)
    CDSMotivo: TClientDataSet;
    ComBuscador1: TComBuscador;
    CDSBuscador: TClientDataSet;
    DSPBuscador: TDataSetProvider;
    DSPMotivo: TDataSetProvider;
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeNombre: TDBEdit;
    CDSMotivoID: TIntegerField;
    CDSMotivoDETALLE: TStringField;
    CDSBuscadorID: TIntegerField;
    CDSBuscadorDETALLE: TStringField;
    QMotivo: TFDQuery;
    QMotivoID: TIntegerField;
    QMotivoDETALLE: TStringField;
    QBuscador: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSMotivoNewRecord(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMotivosPersonal: TFormMotivosPersonal;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormMotivosPersonal.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.Close;
  CDSBuscador.Open;
  comBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    BEGIN
      CDSMotivo.Close;
      CDSMotivo.Params.ParamByName('id').Value := IntToStr(comBuscadorBase.Id);
      CDSMotivo.Open;
    END;
  CDSBuscador.Close;
end;

procedure TFormMotivosPersonal.CDSMotivoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSMotivoID.Value:=1
  else
    CDSMotivoID.Value:=QUltimoCodigo2.Fields[0].AsInteger + 1;
  QUltimoCodigo2.Close;
  dbeNombre.SetFocus;
//  CDSMovVA_CALENDARIO.AsString:='N';
end;

procedure TFormMotivosPersonal.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSMotivoID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormMotivosPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormMotivosPersonal.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSMotivo,DSPMotivo);
  CDSMotivo.Open;
  Tabla:='TABLA_MOTIVO_VALE';
  Campo:='id';
end;

procedure TFormMotivosPersonal.FormDestroy(Sender: TObject);
begin
  inherited;
  FormMotivosPersonal:=nil;
end;

procedure TFormMotivosPersonal.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSMotivo.Close;
  CDSMotivo.Params.ParamByName('id').Value := StrToInt(DatoNew);
  CDSMotivo.Open;
end;

end.
