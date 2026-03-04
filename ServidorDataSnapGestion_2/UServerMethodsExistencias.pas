unit UServerMethodsExistencias;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Data.DB, Data.SqlExpr, Datasnap.Provider;

type
  TServerMethodsExistencia = class(TDSServerModule)
    DSPStock: TDataSetProvider;
    QStock: TSQLQuery;
    QRubro: TSQLQuery;
    QRubroCODIGO_RUBRO: TStringField;
    QRubroDETALLE_RUBRO: TStringField;
    DSPRubro: TDataSetProvider;
    QStockGral: TSQLQuery;
    DSPStockGral: TDataSetProvider;
    QDepositos: TSQLQuery;
    DSPDepositos: TDataSetProvider;
    QSubRubro: TSQLQuery;
    DSPSubRubro: TDataSetProvider;
    QMarca: TSQLQuery;
    DSPMarca: TDataSetProvider;
    DSPListaPrecios: TDataSetProvider;
    QListaPrecios: TSQLQuery;
    intgrfldQListaPrecID_LISTA: TIntegerField;
    QListaPreciosNOMBRE: TStringField;
    QMovimientos_2: TSQLQuery;
    QMovimientos: TSQLQuery;
    DSPMovimientos_2: TDataSetProvider;
    DSPMovimientos: TDataSetProvider;
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
