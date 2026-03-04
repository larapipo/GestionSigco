unit UCodigoProveedor_stock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB,   ExtCtrls, FMTBcd,
  Provider, DBClient, SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormCodigoDeProveedores_Stock = class(TForm)
    pnCodigos: TPanel;
    DSCodigoProveedores: TDataSource;
    dbgCodigoProveedores: TDBGrid;
    btSalir: TBitBtn;
    CDSCodigoProveedores: TClientDataSet;
    DSPCodigoProveedores: TDataSetProvider;
    CDSCodigoProveedoresCODIGO: TStringField;
    CDSCodigoProveedoresCODIGO_PROVEEDOR: TStringField;
    CDSCodigoProveedoresMUESTRAPROVEEDOR: TStringField;
    CDSCodigoProveedoresFECHA: TSQLTimeStampField;
    QCodigoProv: TFDQuery;
    CDSCodigoProveedoresPRECIO: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    FCodigo:String;
    { Public declarations }
  published
    Property codigo:String Read FCodigo Write FCodigo;
  end;

var
  FormCodigoDeProveedores_Stock: TFormCodigoDeProveedores_Stock;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormCodigoDeProveedores_Stock.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCodigoDeProveedores_Stock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSCodigoProveedores.Close;
  Action:=caFree;
end;

procedure TFormCodigoDeProveedores_Stock.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormCodigoDeProveedores_Stock.FormDestroy(Sender: TObject);
begin
  FormCodigoDeProveedores_Stock:=nil;
end;

procedure TFormCodigoDeProveedores_Stock.FormShow(Sender: TObject);
begin
  CDSCodigoProveedores.Close;
  CDSCodigoProveedores.Params.ParamByName('codigo').AsString:=FCodigo;
  CDSCodigoProveedores.Open;
end;

end.
