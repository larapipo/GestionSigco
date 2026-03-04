unit UCtroCosto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, StdCtrls, Mask, DBCtrls, DB, DBClient, Provider,
  SqlExpr, JvComponentBase, JvFormPlacement, ImgList,
  ActnList, ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons,
  ToolWin, ExtCtrls, JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormCtroCosto = class(TFormABMBase)
    QCtros: TFDQuery;
    DSPCtros: TDataSetProvider;
    CDSCtros: TClientDataSet;
    QCtrosID: TIntegerField;
    QCtrosDESCRIPCION: TStringField;
    CDSCtrosID: TIntegerField;
    CDSCtrosDESCRIPCION: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    dbeCod: TDBEdit;
    dbeDetalle: TDBEdit;
    QBuscaCtro: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DSPBuscaCtro: TDataSetProvider;
    CDSBuscaCtro: TClientDataSet;
    DBCheckBox1: TDBCheckBox;
    QCtrosPOR_DEFECTO: TStringField;
    CDSCtrosPOR_DEFECTO: TStringField;
    QCtrosACTIVO: TStringField;
    CDSCtrosACTIVO: TStringField;
    DBCheckBox2: TDBCheckBox;
    CDSBuscaCtroID: TIntegerField;
    CDSBuscaCtroDESCRIPCION: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure CDSCtrosNewRecord(DataSet: TDataSet);
    procedure AgregarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCtroCosto: TFormCtroCosto;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormCtroCosto.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeDetalle.SetFocus;
end;

procedure TFormCtroCosto.BuscarExecute(Sender: TObject);
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

procedure TFormCtroCosto.CancelarExecute(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormCtroCosto.CDSCtrosNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' Then
    CDSCtrosID.Value:=QUltimoCodigo2.Fields[0].Value+1
  else
    CDSCtrosID.Value:=1;
  CDSCtrosPOR_DEFECTO.Value:='N';
  CDSCtrosACTIVO.Value     :='S';
  QUltimoCodigo2.Close;
end;

procedure TFormCtroCosto.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:= CDSCtrosID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormCtroCosto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CDSCtros.Close;
  inherited;
  Action:=caFree;
end;

procedure TFormCtroCosto.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AddClientDataSet(CDSCtros,DSPCtros);
  Tabla:='centro_costo';
  Campo:='ID';
  CDSCtros.Open;
end;

procedure TFormCtroCosto.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCtroCosto:=nil;
end;

procedure TFormCtroCosto.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSCtros.Close;
  CDSCtros.Params.ParamByName('id').Value:= DatoNew;
  CDSCtros.Open;
end;

end.
