unit UUnidadesTR_Anexos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, JvAppStorage,
  JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Datasnap.DBClient,
  Datasnap.Provider, Vcl.Mask, Vcl.DBCtrls, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormUnidadesAnexos = class(TFormABMBase)
    DSPUnidades: TDataSetProvider;
    CDSUnidades: TClientDataSet;
    CDSUnidadesID: TIntegerField;
    CDSUnidadesDESCRIPCION: TStringField;
    DSPBuscador: TDataSetProvider;
    CDSBuscador: TClientDataSet;
    CDSBuscadorDESCRIPCION: TStringField;
    CDSBuscadorID: TIntegerField;
    DSBuscador: TDataSource;
    Label1: TLabel;
    edId: TDBEdit;
    edtDescripcio: TDBEdit;
    Label2: TLabel;
    QUnidades: TFDQuery;
    QUnidadesID: TIntegerField;
    QUnidadesDESCRIPCION: TStringField;
    QBuscador: TFDQuery;
    procedure CDSUnidadesNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUnidadesAnexos: TFormUnidadesAnexos;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormUnidadesAnexos.AgregarExecute(Sender: TObject);
begin
  inherited;
  edtDescripcio.SetFocus;
end;

procedure TFormUnidadesAnexos.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.Close;
  CDSBuscador.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk then
    begin
      DatoNew := IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscador.Close;
end;

procedure TFormUnidadesAnexos.CDSUnidadesNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' then
  CDSUnidadesID.Value:=QUltimoCodigo2.Fields[0].Value+1
  else
  CDSUnidadesID.Value:=1;
end;

procedure TFormUnidadesAnexos.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSUnidadesID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormUnidadesAnexos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormUnidadesAnexos.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSUnidades,DSPUnidades);
  CDSUnidades.Open;
  Tabla:='UNID_AUX_TR';
  Campo:='ID';
end;

procedure TFormUnidadesAnexos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormUnidadesAnexos:=nil;
end;

procedure TFormUnidadesAnexos.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSUnidades.Close;
  CDSUnidades.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSUnidades.Open;
end;

end.
