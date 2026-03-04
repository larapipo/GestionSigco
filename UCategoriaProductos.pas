unit UCategoriaProductos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls,Buttons, StdCtrls, ToolWin,
  ExtCtrls, DBClient,  Provider, Mask, DBCtrls, JvComponentBase,
  ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr, Data.DB, JvAppStorage, JvAppIniStorage,
  System.Actions, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormCategoriaProductos = class(TFormABMBase)
    DSPCategoria: TDataSetProvider;
    Label1: TLabel;
    dbeId: TDBEdit;
    Label2: TLabel;
    dbeDetalle: TDBEdit;
    QCategoriaProducto: TFDQuery;
    QCategoriaProductoID: TIntegerField;
    QCategoriaProductoDETALLE: TStringField;
    CDSCategoria: TClientDataSet;
    CDSCategoriaID: TIntegerField;
    CDSCategoriaDETALLE: TStringField;
    QBuscadorCat: TFDQuery;
    CDSBuscadorCategoria: TClientDataSet;
    DSPBuscadorCategoria: TDataSetProvider;
    CDSBuscadorCategoriaID: TIntegerField;
    CDSBuscadorCategoriaDETALLE: TStringField;
    chPorDef: TDBCheckBox;
    QCategoriaProductoPORDEFECTO: TStringField;
    CDSCategoriaPORDEFECTO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure CDSCategoriaNewRecord(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCategoriaProductos: TFormCategoriaProductos;

implementation

uses UDMain_fd;
{$R *.DFM}

procedure TFormCategoriaProductos.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSCategoria,DSPCategoria);
  CDSCategoria.Open;
  Tabla:='categoria_productos';
  Campo:='id';
end;

procedure TFormCategoriaProductos.CDSCategoriaNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].asstring='' Then
    CDSCategoriaID.Value:=1
  else
    CDSCategoriaID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1;
  CDSCategoriaPORDEFECTO.Value:='N';

  QUltimoCodigo2.close;
  dbeDetalle.SetFocus;
end;

procedure TFormCategoriaProductos.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorCategoria.close;
  CDSBuscadorCategoria.Open;
  comBuscadorBase.Execute;
  IF comBuscadorBase.rOk Then
     begin
       DatoNew:=IntToStr(comBuscadorBase.Id);
       Recuperar.Execute;
     end;
  CDSBuscadorCategoria.close;
end;

procedure TFormCategoriaProductos.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSCategoria.Close;
  CDSCategoria.Params.ParamByName('ID').Value:=StrToInt(DatoNew);
  CDSCategoria.Open;
  DatoNew:=''+DatoNew+'';
end;

procedure TFormCategoriaProductos.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSCategoriaID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormCategoriaProductos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormCategoriaProductos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCategoriaProductos:=nil;
end;

end.
