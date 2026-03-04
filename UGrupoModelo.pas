unit UGrupoModelo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Provider, DBClient,
  Db, ActnList,StdCtrls, Buttons, ToolWin,
  ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr, Vcl.Mask, Vcl.DBCtrls, JvAppStorage, JvAppIniStorage,
  JvComponentBase, System.Actions, Vcl.ComCtrls, Vcl.ExtCtrls, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormGrupoModelo = class(TFormABMBase)
    CDSGrupo: TClientDataSet;
    DSPGrupo: TDataSetProvider;
    CDSGrupoID: TIntegerField;
    CDSGrupoDETALLE: TStringField;
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeDetalle: TDBEdit;
    DSPBuscaGrupo: TDataSetProvider;
    CDSBuscaGrupo: TClientDataSet;
    CDSBuscaGrupoID: TIntegerField;
    CDSBuscaGrupoDETALLE: TStringField;
    QBuscaGrupo: TFDQuery;
    QGrupo: TFDQuery;
    QGrupoID: TIntegerField;
    QGrupoDETALLE: TStringField;
    procedure CDSGrupoNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGrupoModelo: TFormGrupoModelo;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormGrupoModelo.CDSGrupoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSGrupoID.Value:=1
  else
    CDSGrupoID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1;
  QUltimoCodigo2.Close;
end;

procedure TFormGrupoModelo.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSGrupoID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormGrupoModelo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormGrupoModelo.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AddClientDataSet(CDSGrupo,DSPGrupo);
  Tabla:='gruposmodelo';
  Campo:='id';
  CDSGrupo.OPen;
end;

procedure TFormGrupoModelo.FormDestroy(Sender: TObject);
begin
  inherited;
  FormGrupoModelo:=nil;
end;

procedure TFormGrupoModelo.RecuperarExecute(Sender: TObject);
begin
  inherited;
   CDSGrupo.Close;
   CDSGrupo.Params.ParamByName('id').Value:=StrToInt(DatoNew);
   CDSGrupo.OPen;
end;

procedure TFormGrupoModelo.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeDetalle.SetFocus;
end;

procedure TFormGrupoModelo.BorrarExecute(Sender: TObject);
begin
  if MessageDlg('Si hace una Operacón de Borrado, puede ser que luego algunas funciones de grupos no funcionen...',mtWarning,mbOKCancel,0)=mrOk Then
  inherited;

end;

procedure TFormGrupoModelo.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaGrupo.Close;
  CDSBuscaGrupo.OPen;
  comBuscadorBase.Execute;
  if ComBuscadorBase.rOk Then
      begin
        DatoNew:=IntToStr(ComBuscadorBase.Id);
        Recuperar.Execute;
      end;
  CDSBuscaGrupo.Close;
end;

end.
