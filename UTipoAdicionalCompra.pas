unit UTipoAdicionalCompra;

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
  TFormAdicionalesCompra = class(TFormABMBase)
    Label1: TLabel;
    dbeCod: TDBEdit;
    dbeDetalle: TDBEdit;
    Label2: TLabel;
    QCtros: TFDQuery;
    DSPCtros: TDataSetProvider;
    CDSCtros: TClientDataSet;
    CDSBuscaCtro: TClientDataSet;
    IntegerField2: TIntegerField;
    DSPBuscaCtro: TDataSetProvider;
    QBuscaCtro: TFDQuery;
    QCtrosID: TIntegerField;
    QCtrosDETALLE: TStringField;
    CDSCtrosID: TIntegerField;
    CDSCtrosDETALLE: TStringField;
    CDSBuscaCtroDETALLE: TStringField;
    procedure ConfirmaExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure CDSCtrosNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdicionalesCompra: TFormAdicionalesCompra;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormAdicionalesCompra.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeDetalle.SetFocus;
end;

procedure TFormAdicionalesCompra.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaCtro.Close;
  CDSBuscaCtro.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscaCtro.Close;
end;

procedure TFormAdicionalesCompra.CancelarExecute(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormAdicionalesCompra.CDSCtrosNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' Then
    CDSCtrosID.Value:=QUltimoCodigo2.Fields[0].Value+1
  else
    CDSCtrosID.Value:=1;

  QUltimoCodigo2.Close;
end;

procedure TFormAdicionalesCompra.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:= CDSCtrosID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormAdicionalesCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAdicionalesCompra.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AddClientDataSet(CDSCtros,DSPCtros);
  Tabla:='TIPO_ADICIONAL_CCCOMP';
  Campo:='ID';
  CDSCtros.Open;
end;

procedure TFormAdicionalesCompra.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAdicionalesCompra:=nil;
end;

procedure TFormAdicionalesCompra.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSCtros.Close;
  CDSCtros.Params.ParamByName('id').Value:= DatoNew;
  CDSCtros.Open;
end;

end.
