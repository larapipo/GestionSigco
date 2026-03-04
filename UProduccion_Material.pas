unit UProduccion_Material;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, CompBuscador, JvAppStorage, JvAppIniStorage, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormProduccionMateriales = class(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    DSPMaterial: TDataSetProvider;
    CDSMaterial: TClientDataSet;
    CDSMaterialID: TIntegerField;
    CDSMaterialDETALLE: TStringField;
    CDSBuscador: TClientDataSet;
    CDSBuscadorDETALLE: TStringField;
    CDSBuscadorID: TIntegerField;
    DSPBuscador: TDataSetProvider;
    edId: TDBEdit;
    edDetalle: TDBEdit;
    QMaterial: TFDQuery;
    QMaterialID: TIntegerField;
    QMaterialDETALLE: TStringField;
    QBuscador: TFDQuery;
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CDSMaterialNewRecord(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProduccionMateriales: TFormProduccionMateriales;

implementation

{$R *.dfm}

uses UDMain_FD;

procedure TFormProduccionMateriales.AgregarExecute(Sender: TObject);
begin
  inherited;
  edDetalle.SetFocus;
end;

procedure TFormProduccionMateriales.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.Close;
  CDSBuscador.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk then
    begin
      DatoNew := IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscador.Close;
end;

procedure TFormProduccionMateriales.CDSMaterialNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSMaterialID.Value:=QUltimoCodigo2.Fields[0].Value+1
  else
    CDSMaterialID.Value:=1;
  QUltimoCodigo2.Close;

end;

procedure TFormProduccionMateriales.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSMaterialID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormProduccionMateriales.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE :=2;
  AddClientDataSet(CDSMaterial,DSPMaterial);
  CDSMaterial.Open;
  Tabla:='ORDENPRODUCCION_TMATERIAL';
  Campo:='ID';
end;

procedure TFormProduccionMateriales.FormDestroy(Sender: TObject);
begin
  inherited;
  FormProduccionMateriales:=nil;
end;

procedure TFormProduccionMateriales.RecuperarExecute(Sender: TObject);
begin
  CDSMaterial.Close;
  CDSMaterial.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSMaterial.Open;
end;

end.
