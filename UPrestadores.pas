unit UPrestadores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Provider, DB, DBClient, StdCtrls, Mask, DBCtrls,
  SqlExpr, JvComponentBase, JvFormPlacement, ImgList,
  ActnList, ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons,
  ToolWin, ExtCtrls, JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormPrestadores = class(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    dbeDetalle: TDBEdit;
    DBEdit1: TDBEdit;
    CDSPrestadores: TClientDataSet;
    CDSPrestadoresID: TIntegerField;
    DSPPretadores: TDataSetProvider;
    CDSBuscadorPrestadores: TClientDataSet;
    DSPBuscadorPrestadores: TDataSetProvider;
    CDSBuscadorPrestadoresID: TIntegerField;
    CDSBuscadorPrestadoresNOMBRE: TStringField;
    CDSPrestadoresNOMBRE: TStringField;
    QBuscadorPrestadores: TFDQuery;
    QPrestadores: TFDQuery;
    QPrestadoresID: TIntegerField;
    QPrestadoresNOMBRE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CDSPrestadoresNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrestadores: TFormPrestadores;

implementation

{$R *.dfm}

uses UDMain_FD;

procedure TFormPrestadores.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorPrestadores.Close;
  CDSBuscadorPrestadores.Open;
  comBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    BEGIN
      DatoNew := IntToStr(ComBuscadorBase.id);
      Recuperar.Execute;
    END;
  CDSBuscadorPrestadores.Close;
end;

procedure TFormPrestadores.CDSPrestadoresNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSPrestadoresID.Value:=1
  else
    CDSPrestadoresID.Value:=QUltimoCodigo2.Fields[0].AsInteger + 1;
  QUltimoCodigo2.Close;
  dbeDetalle.SetFocus;
end;

procedure TFormPrestadores.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSPrestadoresID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormPrestadores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormPrestadores.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=1;
  AutoSize:=True;
  AddClientDataSet(CDSPrestadores,DSPPretadores);
  CDSPrestadores.OPen;
  Tabla:='prestadores';
  Campo:='id';
end;

procedure TFormPrestadores.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPrestadores:=nil;
end;

procedure TFormPrestadores.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSPrestadores.Close;
  CDSPrestadores.Params.ParamByName('id').Value :=StrToInt(DatoNew);
  CDSPrestadores.Open;

end;

end.
