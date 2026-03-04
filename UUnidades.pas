unit UUnidades;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs,
  UABMBase, Provider, DBClient, Db, ActnList, StdCtrls, Buttons,
  ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls,
  Mask, ToolWin, FMTBcd, SqlExpr, Vcl.DBCtrls, JvAppStorage, JvAppIniStorage,
  JvComponentBase, System.Actions, Vcl.ComCtrls, Vcl.ExtCtrls, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormUnidades = class(TFormABMBase)
    CDSUnidades: TClientDataSet;
    DSPUnidades: TDataSetProvider;
    CDSUnidadesID: TIntegerField;
    CDSUnidadesSIGLAS: TStringField;
    CDSUnidadesDESCRIPCION: TStringField;
    Label1: TLabel;
    dbeId: TDBEdit;
    Label2: TLabel;
    dbeSigla: TDBEdit;
    Label3: TLabel;
    dbeDescripcion: TDBEdit;
    DSPBuscaUnidades: TDataSetProvider;
    CDSBuscaUnidades: TClientDataSet;
    CDSBuscaUnidadesID: TIntegerField;
    CDSBuscaUnidadesSIGLAS: TStringField;
    CDSBuscaUnidadesDESCRIPCION: TStringField;
    QUnidades: TFDQuery;
    QUnidadesID: TIntegerField;
    QUnidadesSIGLAS: TStringField;
    QUnidadesDESCRIPCION: TStringField;
    procedure CDSUnidadesNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUnidades: TFormUnidades;

implementation

{$R *.DFM}
uses UDMain_FD, DMBuscadoresForm;

procedure TFormUnidades.CDSUnidadesNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  IF QUltimoCodigo2.Fields[0].AsString<>'' THEN
    CDSUnidadesID.Value := QUltimoCodigo2.Fields[0].AsInteger + 1
  ELSE
    CDSUnidadesID.Value := 1;
  QUltimoCodigo2.Close;
end;

procedure TFormUnidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormUnidades.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  AddClientDataSet(CDSUnidades,DSPUnidades);
  Tabla:='Unidades';
  Campo:='id';
  CDSUnidades.Open;
  SinBDE:=2;
end;

procedure TFormUnidades.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaUnidades.Close;
  CDSBuscaUnidades.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    begin
      DatoNew:=IntToStr(ComBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscaUnidades.Close;
end;

procedure TFormUnidades.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSUnidades.Close;
  CDSUnidades.Params.ParamByName('id').Value:= DatoNew;
  CDSUnidades.Open;
end;

procedure TFormUnidades.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSUnidadesID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormUnidades.FormDestroy(Sender: TObject);
begin
  inherited;
  FormUnidades:=nil;
end;

end.
