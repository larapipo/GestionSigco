unit UPresentaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, ImgList,
  DB,   ActnList, ComCtrls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, Provider,
  DBClient, Mask, DBCtrls, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, AdvSmoothButton;

type
  TFormpresentaciones = class(TFormABMBase)
    CDSPresentacion: TClientDataSet;
    DSPPresentacion: TDataSetProvider;
    CDSPresentacionID: TIntegerField;
    CDSPresentacionDETALLE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    CDSBuscaPresentacion: TClientDataSet;
    DSPBuscaPresentacion: TDataSetProvider;
    CDSBuscaPresentacionID: TIntegerField;
    CDSBuscaPresentacionDETALLE: TStringField;
    QPresentacion: TFDQuery;
    QPresentacionID: TIntegerField;
    QPresentacionDETALLE: TStringField;
    procedure CDSPresentacionNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formpresentaciones: TFormpresentaciones;

implementation

{$R *.dfm}
uses UDMain_FD,DMBuscadoresForm;

procedure TFormpresentaciones.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaPresentacion.Close;
  CDSBuscaPresentacion.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscaPresentacion.Close;
end;

procedure TFormpresentaciones.CDSPresentacionNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' then
    CDSPresentacionID.Value:=1
  else
    CDSPresentacionID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1;
  QUltimoCodigo2.Close;

end;

procedure TFormpresentaciones.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSPresentacionID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormpresentaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormpresentaciones.FormCreate(Sender: TObject);
begin
  inherited;
  AddClientDataSet(CDSPresentacion,DSPPresentacion);
  CDSPresentacion.Open;
  Tabla:='presentacion';
  Campo:='id';
  SinBDE:=2;
end;

procedure TFormpresentaciones.FormDestroy(Sender: TObject);
begin
  inherited;
  Formpresentaciones:=nil;
end;

procedure TFormpresentaciones.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSPresentacion.Close;
  CDSPresentacion.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSPresentacion.Open;
end;

end.
