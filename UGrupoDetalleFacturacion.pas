unit UGrupoDetalleFacturacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, Provider, DB, DBClient, JvComponentBase, JvFormPlacement,
  ImgList,  ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Data.FMTBcd, Vcl.Mask, Vcl.DBCtrls, JvAppStorage, JvAppIniStorage,
  Data.SqlExpr, System.Actions, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormGrupoDetalleFactura = class(TFormABMBase)
    CDSGrupo: TClientDataSet;
    DSPGrupo: TDataSetProvider;
    CDSGrupoID: TIntegerField;
    CDSGrupoGRUPO: TStringField;
    Label1: TLabel;
    dbeGrupo: TDBEdit;
    Label2: TLabel;
    dbeCodigo: TDBEdit;
    QGrupo: TFDQuery;
    QGrupoID: TIntegerField;
    QGrupoGRUPO: TStringField;
    QBuscaGrupo: TFDQuery;
    CDSBuscaGrupo: TClientDataSet;
    DSPBuscaGrupo: TDataSetProvider;
    CDSBuscaGrupoID: TIntegerField;
    CDSBuscaGrupoGRUPO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSGrupoNewRecord(DataSet: TDataSet);
    procedure CDSGrupoIDSetText(Sender: TField; const Text: string);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGrupoDetalleFactura: TFormGrupoDetalleFactura;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormGrupoDetalleFactura.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeGrupo.SetFocus;
end;

procedure TFormGrupoDetalleFactura.BorrarExecute(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;

end;

procedure TFormGrupoDetalleFactura.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaGrupo.Close;
  CDSBuscaGrupo.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    BEGIN
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    END;
  CDSBuscaGrupo.Close;
end;

procedure TFormGrupoDetalleFactura.CancelarExecute(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;

end;

procedure TFormGrupoDetalleFactura.CDSGrupoIDSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
end;

procedure TFormGrupoDetalleFactura.CDSGrupoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSGrupoIDSetText(CDSGrupoID,'1')
  else
    CDSGrupoIDSetText(CDSGrupoID,IntToStr(QUltimoCodigo2.Fields[0].AsInteger + 1));
  QUltimoCodigo2.Close;
end;

procedure TFormGrupoDetalleFactura.ConfirmaExecute(Sender: TObject);
begin
  datonew:=CDSGrupoID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;

end;

procedure TFormGrupoDetalleFactura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSGrupo.Close;
  Action:=caFree;
end;

procedure TFormGrupoDetalleFactura.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSGrupo,DSPGrupo);
  CDSGrupo.Open;
  Tabla:='GRUPOS_DETALLEFACTURACION';
  Campo:='id';
end;

procedure TFormGrupoDetalleFactura.FormDestroy(Sender: TObject);
begin
  inherited;
  FormGrupoDetalleFactura:=nil;
end;

procedure TFormGrupoDetalleFactura.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSGrupo.Close;
  CDSGrupo.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSGrupo.Open;
end;

end.
