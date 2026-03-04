unit UMotivosOT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  JvAppStorage, JvAppIniStorage, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormMotivosOTrabajo = class(TFormABMBase)
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeNombre: TDBEdit;
    DSPMov: TDataSetProvider;
    CDSMov: TClientDataSet;
    CDSMovID: TIntegerField;
    CDSMovDETALLE: TStringField;
    CDSMovPOR_DEFECTO: TStringField;
    chDefecto: TDBCheckBox;
    DSPBuscadorMov: TDataSetProvider;
    CDSBuscadorMov: TClientDataSet;
    CDSBuscadorMovID: TIntegerField;
    CDSBuscadorMovDETALLE: TStringField;
    CDSBuscadorMovPOR_DEFECTO: TStringField;
    QMov: TFDQuery;
    QBuscadorMov: TFDQuery;
    QMovID: TIntegerField;
    QMovDETALLE: TStringField;
    QMovPOR_DEFECTO: TStringField;
    procedure BuscarExecute(Sender: TObject);
    procedure CDSMovNewRecord(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMotivosOTrabajo: TFormMotivosOTrabajo;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormMotivosOTrabajo.BuscarExecute(Sender: TObject);
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

procedure TFormMotivosOTrabajo.CDSMovNewRecord(DataSet: TDataSet);
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
  CDSMovPOR_DEFECTO.AsString  :='N';
//  CDSMovVA_CALENDARIO.AsString:='N';
end;

procedure TFormMotivosOTrabajo.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSMovID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormMotivosOTrabajo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormMotivosOTrabajo.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSMov,DSPMov);
  CDSMov.Open;
  Tabla:='ORDENTRABAJO_MOTIVO';
  Campo:='id';
end;

procedure TFormMotivosOTrabajo.FormDestroy(Sender: TObject);
begin
  inherited;
  FormMotivosOTrabajo:=nil;
end;

procedure TFormMotivosOTrabajo.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSMov.Close;
  CDSMov.Params.ParamByName('id').Value := StrToInt(DatoNew);
  CDSMov.Open;
end;

end.
