unit UServerMethodsListado;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Datasnap.Provider, Data.DB, Data.SqlExpr;

type
  TServerModuleListado = class(TDSServerModule)
    QFcCab: TSQLQuery;
    QFcDet: TSQLQuery;
    DSPFcCab: TDataSetProvider;
    DSPFcDet: TDataSetProvider;
    DataSetProvider3: TDataSetProvider;
    DataSetProvider4: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses UServerContainer;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

