unit UCategorias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBClient, Provider, StdCtrls, Mask, DBCtrls,
  Db, DBTables, ActnList,
  JvExControls, JvGradient, JvComponentBase, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvAppStorage, JvAppIniStorage, System.Actions,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.ImgList, Vcl.Buttons,
  CompBuscador, vcl.wwDialog, vcl.wwIDlg;

type
  TFormCategorias = class(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    dbeCodigo: TDBEdit;
    dbeNombre: TDBEdit;
    DSPCategoria: TDataSetProvider;
    Label3: TLabel;
    dbeValorHora: TDBEdit;
    QBuscadorCategoria: TSQLQuery;
    CDSBuscadorCategoria: TClientDataSet;
    DSPBuscadorCategoria: TDataSetProvider;
    CDSBuscadorCategoriaID: TIntegerField;
    CDSBuscadorCategoriaDETALLE: TStringField;
    QCategoria: TSQLQuery;
    QCategoriaID: TIntegerField;
    QCategoriaDETALLE: TStringField;
    QCategoriaVALORHORA: TFMTBCDField;
    CDSCategoria: TClientDataSet;
    CDSCategoriaID: TIntegerField;
    CDSCategoriaDETALLE: TStringField;
    CDSCategoriaVALORHORA: TFMTBCDField;
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

uses DMMainForm_2;

{$R *.DFM}

procedure TFormCategorias.CDSCategoriaNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo.Close;
  QUltimoCodigo.Open;
  if QUltimoCodigo.Fields[0].AsString='' Then
    CDSCategoriaID.Value:=1
  else
    CDSCategoriaID.Value:=QUltimoCodigo.Fields[0].AsInteger + 1;
  QUltimoCodigo.Close;
  dbeNombre.SetFocus;
  CDSCategoriaVALORHORA.AsFloat:=0;
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
  SinBDE:=1;
  AddClientDataSet(CDSCategoria,DSPCategoria);
  CDSCategoria.Open;
  Tabla:='categoria';
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
