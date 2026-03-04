unit UPrecios_x_Cantidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExControls, JvGradient, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, JvAppStorage,
  JvAppIniStorage, JvComponentBase, JvFormPlacement, Data.DB;

type
  TFormPreciosPorCantidades = class(TForm)
    pnPreciosPorCant: TPanel;
    dbgPrecioCantidad: TDBGrid;
    DBNavigator1: TDBNavigator;
    btCerrar: TBitBtn;
    JvFormStorage: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btCerrarClick(Sender: TObject);
    procedure dbgPrecioCantidadColEnter(Sender: TObject);
    procedure dbgPrecioCantidadKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPreciosPorCantidades: TFormPreciosPorCantidades;

implementation

uses  DMStock, UDMain_FD;
{$R *.dfm}

procedure TFormPreciosPorCantidades.btCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormPreciosPorCantidades.dbgPrecioCantidadColEnter(Sender: TObject);
begin
  if (dbgPrecioCantidad.SelectedIndex>1) and (dbgPrecioCantidad.SelectedIndex<6) then
    dbgPrecioCantidad.SelectedIndex:=6;

end;

procedure TFormPreciosPorCantidades.dbgPrecioCantidadKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key=#13 then
    begin
      if dbgPrecioCantidad.SelectedIndex<5 then
        dbgPrecioCantidad.SelectedIndex:=dbgPrecioCantidad.SelectedIndex+1
      else
        begin
          dbgPrecioCantidad.DataSource.DataSet.Append;
          dbgPrecioCantidad.SelectedIndex:=0;
        end;

    end;
end;

procedure TFormPreciosPorCantidades.FormCreate(Sender: TObject);
begin
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
end;

procedure TFormPreciosPorCantidades.FormDestroy(Sender: TObject);
begin
  FormPreciosPorCantidades:=nil;
end;

end.
