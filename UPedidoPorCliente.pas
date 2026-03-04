unit UPedidoPorCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Grids, DBGrids, ExtCtrls, DB, DBClient, Provider, SqlExpr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormPedidoPorCliente = class(TForm)
    DSPArticulosClientes: TDataSetProvider;
    CDSArticulosClientes: TClientDataSet;
    CDSArticulosClientesCODIGO: TStringField;
    CDSArticulosClientesNOMBRE: TStringField;
    DSArticulosClientes: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    CDSArticulosClientesID: TIntegerField;
    CDSArticulosClientesNROCPBTE: TStringField;
    QArticulosClientes: TFDQuery;
    CDSArticulosClientesCANTIDAD_FALTANTE: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    PCodigo:String;
    { Private declarations }
  public
    { Public declarations }
  published
    property Codigo:String read PCodigo Write PCodigo;
  end;

var
  FormPedidoPorCliente: TFormPedidoPorCliente;

implementation

uses UNotaPedidoCliente,UDMain_FD;

{$R *.dfm}

procedure TFormPedidoPorCliente.DBGrid1DblClick(Sender: TObject);
begin
  if Not(Assigned(FormNotaPedidoCliente)) Then
    FormNotaPedidoCliente :=TFormNotaPedidoCliente.Create(Application);
  FormNotaPedidoCliente.DatoNew  :=CDSArticulosClientesID.AsString;
  FormNotaPedidoCliente.TipoCpbte:='PC';
  FormNotaPedidoCliente.Recuperar.Execute;
  FormNotaPedidoCliente.Show;
 
end;

procedure TFormPedidoPorCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFormPedidoPorCliente.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormPedidoPorCliente.FormDestroy(Sender: TObject);
begin
  FormPedidoPorcliente:=Nil;
end;

procedure TFormPedidoPorCliente.FormShow(Sender: TObject);
begin
  CDSArticulosClientes.Close;
  CDSArticulosClientes.Params.ParamByName('codigo').AsString:=PCodigo;
  CDSArticulosClientes.Open;
end;

end.
