unit UPlantillasNoFacturadas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Data.DB;

type
  TFormPlantillasNoFacturables = class(TForm)
    pnNoFacturables: TJvPanel;
    dbgPlantillasNo: TJvDBGrid;
    btCerrar: TBitBtn;
    procedure btCerrarClick(Sender: TObject);
    procedure dbgPlantillasNoDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPlantillasNoFacturables: TFormPlantillasNoFacturables;

implementation

uses  UFacturarPlantillas, UClientes_2;
{$R *.dfm}

procedure TFormPlantillasNoFacturables.btCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormPlantillasNoFacturables.dbgPlantillasNoDblClick(Sender: TObject);
begin
  if Not(Assigned(FormClientes_2)) then
    FormClientes_2:=TFormClientes_2.Create(Self);
  FormClientes_2.DatoNew:= dbgPlantillasNo.DataSource.DataSet.FieldByName('CODIGO').AsString;
  FormClientes_2.Recuperar.Execute;
  FormClientes_2.Show;
end;

procedure TFormPlantillasNoFacturables.FormDestroy(Sender: TObject);
begin
  FormPlantillasNoFacturables:=nil;
end;

end.
