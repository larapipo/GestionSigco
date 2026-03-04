unit UJuridiccion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Provider, DBClient, DB, StdCtrls, Mask, DBCtrls, JvComponentBase,
  ImgList,   ActnList,
  ComCtrls, JvExControls, JvGradient, Buttons, ToolWin, Data.FMTBcd,
  JvAppStorage, JvAppIniStorage, Data.SqlExpr, JvFormPlacement, System.Actions,
  JvLabel, JvDBControls, Vcl.ExtCtrls, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormJuridiccion = class(TFormABMBase)
    CDSJuridiccion: TClientDataSet;
    DSPJuridiccion: TDataSetProvider;
    CDSJuridiccionCODIGO: TIntegerField;
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label3: TLabel;
    dbeDetalle: TDBEdit;
    CDSJuridiccionDETALLE: TStringField;
    QJuridiccion: TSQLQuery;
    QJuridiccionCODIGO: TIntegerField;
    QJuridiccionDETALLE: TStringField;
    QBuscaJuri: TSQLQuery;
    QBuscaJuriDETALLE: TStringField;
    IntegerField1: TIntegerField;
    CDSBuscaJuridicion: TClientDataSet;
    DSPBuscaJuridicion: TDataSetProvider;
    CDSBuscaJuridicionDETALLE: TStringField;
    CDSBuscaJuridicionCODIGO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
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
  FormJuridiccion: TFormJuridiccion;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormJuridiccion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  action:=cafree;
end;

procedure TFormJuridiccion.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=1;
  AddClientDataSet(CDSJuridiccion,DSPJuridiccion);
  CDSJuridiccion.Open;
  AutoSize:=True;
  Tabla:='Juridiccion';
  Campo:='Codigo';
end;

procedure TFormJuridiccion.FormDestroy(Sender: TObject);
begin
  inherited;
  FormJuridiccion:=nil;
end;

procedure TFormJuridiccion.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaJuridicion.Close;
  CDSBuscaJuridicion.OPen;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    begin
      DatoNew:=IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscaJuridicion.Close;
end;

procedure TFormJuridiccion.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSJuridiccion.Close;
  CDSJuridiccion.Params.ParamByName('Codigo').Value:=StrToInt(DatoNew);
  CDSJuridiccion.Open;
end;

procedure TFormJuridiccion.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSJuridiccionCODIGO.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormJuridiccion.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeCodigo.SetFocus;
end;

end.
