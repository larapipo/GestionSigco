unit UTipoObra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Mask, Vcl.DBCtrls;

type
  TFormTipoObra = class(TFormABMBase)
    QTipo: TFDQuery;
    CDSTipo: TClientDataSet;
    DSPTipo: TDataSetProvider;
    CDSTipoID: TIntegerField;
    CDSTipoDETALLE: TStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    QBuscador: TFDQuery;
    QBuscadorID: TIntegerField;
    QBuscadorDETALLE: TStringField;
    procedure CDSTipoNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTipoObra: TFormTipoObra;



implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormTipoObra.BuscarExecute(Sender: TObject);
begin
  inherited;
  QBuscador.Close;
  QBuscador.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    if ComBuscadorBase.Id>-1 then
      begin
        DatoNew:=IntToStr(ComBuscadorBase.Id);
        Recuperar.Execute;
      end;
  QBuscador.Close;
end;

procedure TFormTipoObra.CDSTipoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' Then
    CDSTipoID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1
  else
    CDSTipoID.Value:=1;
  QUltimoCodigo2.Close;

end;

procedure TFormTipoObra.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSTipoID.AsString;
  inherited;
  Recuperar.Execute;

end;

procedure TFormTipoObra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormTipoObra.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSTipo,DSPTipo);
  CDSTipo.Open;
  Campo:='id';
  Tabla:='Obras_Tipo';

end;

procedure TFormTipoObra.FormDestroy(Sender: TObject);
begin
  inherited;
  FormTipoObra:=nil;
end;

procedure TFormTipoObra.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSTipo.Close;
  CDSTipo.Params.ParamByName('id').AsString:=DatoNew;
  CDSTipo.Open;
end;

end.
