unit UServerMethodsBuscadorCliente;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TServerModuleBuscadorCliente = class(TDSServerModule)
    QSucursal: TSQLQuery;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    QCliente: TSQLQuery;
    DSPClientes: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }
uses UServerContainer;

{$R *.dfm}

end.
