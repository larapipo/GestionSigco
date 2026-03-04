unit UTiempoCobroFactura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Provider, DBClient, DB, SqlExpr, KControls, KGrids, ExtCtrls;

type
  TForm1 = class(TForm)
    pnBase: TPanel;
    pnCabecera: TPanel;
    pnPie: TPanel;
    KGrid1: TKGrid;
    QVtas: TSQLQuery;
    CDSVtas: TClientDataSet;
    DSPVtas: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
Uses DMMainForm_2;

end.
