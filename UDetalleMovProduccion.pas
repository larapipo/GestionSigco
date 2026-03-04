unit UDetalleMovProduccion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB;

type
  TFormDetalleMovimientosProduccion = class(TForm)
    dbgMovimientos: TDBGrid;
    pnBase: TPanel;
    DSMovProduccion: TDataSource;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDetalleMovimientosProduccion: TFormDetalleMovimientosProduccion;

implementation

uses UPanificacionProduccion;
{$R *.dfm}

procedure TFormDetalleMovimientosProduccion.FormDestroy(Sender: TObject);
begin
  FormDetalleMovimientosProduccion:=nil;
end;

end.
