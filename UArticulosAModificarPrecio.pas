unit UArticulosAModificarPrecio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, FMTBcd, SqlExpr,
  Provider, DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormArticulosAModificarPrecio = class(TForm)
    pnPrincipal  : TPanel;
    DSArticulos  : TDataSource;
    dbgArticuos  : TDBGrid;
    btCancel: TBitBtn;
    btOk: TBitBtn;
    CDSArticulos : TClientDataSet;
    DSPArticulos : TDataSetProvider;
    CDSArticulosCODIGO_STK: TStringField;
    CDSArticulosDETALLE_STK: TStringField;
    CDSArticulosFUAP: TSQLTimeStampField;
    CDSArticulosFIJACION_PRECIO_TOTAL: TFloatField;
    CDSArticulosMIN: TFloatField;
    QArtic: TFDQuery;
    procedure btOkClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    FFechaLimite:TDateField;
    { Private declarations }
  public
    { Public declarations }
  published
    property FechaLimite:TDateField read FFechaLimite write FFechaLimite;
  end;

var
  FormArticulosAModificarPrecio: TFormArticulosAModificarPrecio;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormArticulosAModificarPrecio.btOkClick(Sender: TObject);
begin
  Tag:=1;
  Close;
end;

procedure TFormArticulosAModificarPrecio.btCancelClick(Sender: TObject);
begin
  Tag:=0;
  Close;
end;

procedure TFormArticulosAModificarPrecio.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormArticulosAModificarPrecio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormArticulosAModificarPrecio.FormDestroy(Sender: TObject);
begin
  FormArticulosAModificarPrecio:=nil;
end;

procedure TFormArticulosAModificarPrecio.FormResize(Sender: TObject);
begin
  if FormArticulosAModificarPrecio<>nil then
    if FormArticulosAModificarPrecio.Width<>651 then
      FormArticulosAModificarPrecio.Width:=651;

end;

end.
