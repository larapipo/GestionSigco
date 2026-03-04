unit UServerMethodsConfiguraIni;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TServerMethodsConfiguraIni = class(TDSServerModule)
    QCaja: TSQLQuery;
    DSPCaja: TDataSetProvider;
    QCliente: TSQLQuery;
    DSPClientes: TDataSetProvider;
    QPersonal: TSQLQuery;
    DSPPersonal: TDataSetProvider;
    QMonedas: TSQLQuery;
    DSPMonedas: TDataSetProvider;
    QTasaIva: TSQLQuery;
    DSPTasaIva: TDataSetProvider;
    QUnidades: TSQLQuery;
    DSPUnidades: TDataSetProvider;
    QDepositos: TSQLQuery;
    DSPDepositos: TDataSetProvider;
    QInscripcion: TSQLQuery;
    DSPInscripcion: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses UServerContainer;
{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

end.
