unit UCategoriaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, Provider, DB, DBClient, ImgList,
  ActnList, ComCtrls, JvExControls,
  JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, Mask, DBCtrls,
  JvComponentBase, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormCategoriasClientes = class(TFormABMBase)
    CDSCategorias: TClientDataSet;
    DSPCategorias: TDataSetProvider;
    CDSCategoriasID: TIntegerField;
    CDSCategoriasDETALLE: TStringField;
    Label1: TLabel;
    dbeDetalle: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    CDSBuscadorCategoria: TClientDataSet;
    DSPBuscadorcategoria: TDataSetProvider;
    CDSBuscadorCategoriaID: TIntegerField;
    CDSBuscadorCategoriaDETALLE: TStringField;
    QCategorias: TFDQuery;
    QCategoriasID: TIntegerField;
    QCategoriasDETALLE: TStringField;
    QCategoriasHABILITADA: TStringField;
    QBuscadorCategoria: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CDSCategoriasNewRecord(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCategoriasClientes: TFormCategoriasClientes;


implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormCategoriasClientes.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorCategoria.Close;
  CDSBuscadorCategoria.Open;
  comBuscadorBase.Execute;
  IF comBuscadorBase.rOk THEN
    BEGIN
      DatoNew :=IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    END;
  CDSBuscadorCategoria.Close;
end;

procedure TFormCategoriasClientes.CDSCategoriasNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSCategoriasID.Value:=1
  else
    CDSCategoriasID.Value:=QUltimoCodigo2.Fields[0].AsInteger + 1;
  QUltimoCodigo2.Close;
  dbeDetalle.SetFocus;
end;

procedure TFormCategoriasClientes.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSCategoriasID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormCategoriasClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormCategoriasClientes.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AutoSize:=True;
  AddClientDataSet(CDSCategorias,DSPCategorias);
  CDSCategorias.OPen;
  Tabla:='CLIENTES_CATEGORIAS';
  Campo:='id';
end;

procedure TFormCategoriasClientes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCategoriasClientes:=nil;
end;

procedure TFormCategoriasClientes.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSCategorias.Close;
  CDSCategorias.Params.ParamByName('id').Value :=StrToInt(DatoNew);
  CDSCategorias.Open;

end;

end.
