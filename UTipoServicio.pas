unit UTipoServicio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  DBClient, Provider, Mask, DBCtrls, JvAppStorage, JvAppIniStorage,
  System.Actions, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormTipoServicio = class(TFormABMBase)
    DSPTipo: TDataSetProvider;
    CDSTipo: TClientDataSet;
    CDSTipoID: TIntegerField;
    CDSTipoDETALLE: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    edId: TDBEdit;
    eddetalle: TDBEdit;
    QUltimoCodigoMAX: TIntegerField;
    DSPBuscador: TDataSetProvider;
    CDSBuscador: TClientDataSet;
    CDSBuscadorID: TIntegerField;
    CDSBuscadorDETALLE: TStringField;
    QTipo: TFDQuery;
    QTipoID: TIntegerField;
    QTipoDETALLE: TStringField;
    QBuscador: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CDSTipoNewRecord(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTipoServicio: TFormTipoServicio;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormTipoServicio.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.Close;
  CDSBuscador.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    BEGIN
     DatoNew:= intToStr(comBuscadorBase.Id);
     Recuperar.Execute;
    END;
  CDSBuscador.Close;
end;

procedure TFormTipoServicio.CDSTipoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' then
    CDSTipoID.Value:=1
  else
    CDSTipoID.Value:=QUltimoCodigo2.Fields[0].Value+1;
  QUltimoCodigo2.Close;
end;

procedure TFormTipoServicio.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSTipoID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;

end;

procedure TFormTipoServicio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormTipoServicio.FormCreate(Sender: TObject);
begin
  inherited;
  sinbde:=2;
  AddClientDataSet(CDSTipo,DSPTipo);
  CDSTipo.OPen;
  Tabla:='TIPO_SERVICIO';
  Campo:='ID';

end;

procedure TFormTipoServicio.FormDestroy(Sender: TObject);
begin
  inherited;
  FormTipoServicio:=nil;
end;

procedure TFormTipoServicio.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSTipo.Close;
  CDSTipo.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSTipo.Open;
end;

end.
