unit UGraficoEgresos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.DBChart,
  VCLTee.TeeDBCrossTab, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, Data.DB;

type
  TFormGraficoEgresos = class(TForm)
    Panel1: TPanel;
    DBCrossTabSource1: TDBCrossTabSource;
    DBChart1: TDBChart;
    Egresos: TBarSeries;
    Series1: TBarSeries;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGraficoEgresos: TFormGraficoEgresos;

implementation

{$R *.dfm}
uses UFlujoFondos;
procedure TFormGraficoEgresos.FormCreate(Sender: TObject);
begin
  Panel1.Align  := alClient;
  DBChart1.Align:= alClient;
end;

end.
