unit UCargos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase,  Db, ActnList, ImgList, StdCtrls, Buttons,
  ToolWin, ComCtrls, ExtCtrls, DBClient,  Provider, Mask,
  JvLabel, JvDBControls, FMTBcd, SqlExpr, Vcl.DBCtrls, JvAppStorage,
  JvAppIniStorage, JvComponentBase, JvFormPlacement, System.Actions,
  JvExControls, JvGradient, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormCargos = class(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    dbeCodigo: TDBEdit;
    dbeNombre: TDBEdit;
    DSPCargo: TDataSetProvider;
    QBuscadorCargo: TFDQuery;
    CDSBuscadorCargo: TClientDataSet;
    DSPBuscadorCargo: TDataSetProvider;
    QCargo: TFDQuery;
    QCargoID: TIntegerField;
    QCargoDETALLE: TStringField;
    CDSCargo: TClientDataSet;
    CDSCargoID: TIntegerField;
    CDSCargoDETALLE: TStringField;
    CDSBuscadorCargoID: TIntegerField;
    CDSBuscadorCargoDETALLE: TStringField;
    procedure CDSCargoNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCargos: TFormCargos;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormCargos.CDSCargoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString ='' Then
    CDSCargoID.Value:=1
  else
    CDSCargoID.Value:=QUltimoCodigo2.Fields[0].AsInteger + 1;
  QUltimoCodigo2.Close;
  dbeNombre.SetFocus;
end;

procedure TFormCargos.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSCargoID.AsString;
  inherited;
  Recuperar.Execute;

end;

procedure TFormCargos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormCargos.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde := 2;
  AddClientDataSet(CDSCargo,DSPCargo);
  CDSCargo.Open;
  Tabla :='Cargo';
  Campo :='id';
end;

procedure TFormCargos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCargos:=nil;
end;

procedure TFormCargos.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSCargo.Close;
  CDSCargo.Params.ParamByName('id').Value := StrToInt(DatoNew);
  CDSCargo.Open;

end;

procedure TFormCargos.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorCargo.Close;
  CDSBuscadorCargo.Open;
  ComBuscadorBase.Execute;
  IF comBuscadorBase.rOk THEN
    BEGIN
      CDSCargo.Close;
      CDSCargo.Params.ParamByName('id').Value := ComBuscadorBase.Id;
      CDSCargo.Open;
    END;
  CDSBuscadorCargo.Close;
end;

end.
