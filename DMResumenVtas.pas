unit DMResumenVtas;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  TDatosResumenVtas = class(TDataModule)
    QMovimientos_2_old: TSQLQuery;
    QEntregas_old: TSQLQuery;
    QVentas_old: TSQLQuery;
    QVentasFiltrada_old: TSQLQuery;
    QVentasDiaria_old: TSQLQuery;
    QSucursales_old: TSQLQuery;
    QSaldoGastos_old: TSQLQuery;
    QGasto_Compra_old: TSQLQuery;
    QFinanciero_old: TSQLQuery;
    QInfCruzado_old: TSQLQuery;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DatosResumenVtas: TDatosResumenVtas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDatosResumenVtas.DataModuleDestroy(Sender: TObject);
begin
  DatosResumenVtas:=nil;
end;

end.
