unit UCategorias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBClient, Provider, StdCtrls, Mask, DBCtrls, Db, ActnList,
  JvExControls, JvGradient, JvComponentBase, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvAppStorage, JvAppIniStorage, System.Actions,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.ImgList, Vcl.Buttons,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormCategorias = class(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    dbeCodigo: TDBEdit;
    dbeNombre: TDBEdit;
    DSPCategoria: TDataSetProvider;
    Label3: TLabel;
    dbeValorHora: TDBEdit;
    CDSBuscadorCategoria: TClientDataSet;
    DSPBuscadorCategoria: TDataSetProvider;
    CDSBuscadorCategoriaID: TIntegerField;
    CDSBuscadorCategoriaDETALLE: TStringField;
    CDSCategoria: TClientDataSet;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    QCategoria: TFDQuery;
    QBuscadorCategoria: TFDQuery;
    QCategoriaID: TIntegerField;
    QCategoriaDETALLE: TStringField;
    QCategoriaVALORHORA: TFloatField;
    QCategoriaSUELDO_BASICO: TFloatField;
    CDSCategoriaID: TIntegerField;
    CDSCategoriaDETALLE: TStringField;
    CDSCategoriaVALORHORA: TFloatField;
    CDSCategoriaSUELDO_BASICO: TFloatField;
    QUltimoCodigo2MAX: TIntegerField;
    procedure CDSCategoriaNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCategorias: TFormCategorias;

implementation

uses DMMainForm_2,UDMain_FD;

{$R *.DFM}

procedure TFormCategorias.CDSCategoriaNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSCategoriaID.Value:=1
  else
    CDSCategoriaID.Value:=QUltimoCodigo2.Fields[0].AsInteger + 1;
  QUltimoCodigo2.Close;
  dbeNombre.SetFocus;
  CDSCategoriaVALORHORA.AsFloat    :=0;
  CDSCategoriaSUELDO_BASICO.AsFloat:=0;
end;

procedure TFormCategorias.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSCategoriaID.AsString;
  inherited;
  Recuperar.Execute;

end;

procedure TFormCategorias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormCategorias.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSCategoria,DSPCategoria);
  CDSCategoria.Open;
  Tabla:='personal_categoria';
  Campo:='id';
end;

procedure TFormCategorias.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCategorias:=nil;
end;

procedure TFormCategorias.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSCategoria.Close;
  CDSCategoria.Params.ParamByName('id').Value := StrToInt(DatoNew);
  CDSCategoria.Open;
end;

procedure TFormCategorias.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorCategoria.Close;
  CDSBuscadorCategoria.Open;
  ComBuscadorBase.Execute;
  IF ComBuscadorBase.rOk THEN
    BEGIN
      CDSCategoria.Close;
      CDSCategoria.Params.ParamByName('id').Value :=ComBuscadorBase.Id;
      CDSCategoria.Open;
    END;
  CDSBuscadorCategoria.Close;

end;


end.
