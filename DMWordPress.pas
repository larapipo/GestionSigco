unit DMWordPress;

interface

uses
  System.SysUtils, System.Classes, REST.Types, REST.Client,
  REST.Authenticator.OAuth, Data.Bind.Components, Data.Bind.ObjectScope,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter;

type
  TDatosWordPress = class(TDataModule)
    DSProductos: TDataSource;
    mtProductos: TFDMemTable;
    mtCategorias: TFDMemTable;
    DSCategorias: TDataSource;
    mtProducto: TFDMemTable;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DatosWordPress: TDatosWordPress;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDatosWordPress.DataModuleDestroy(Sender: TObject);
begin
  DatosWordPress:=nil;
end;

end.
