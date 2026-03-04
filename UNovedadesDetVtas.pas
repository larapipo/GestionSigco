unit UNovedadesDetVtas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Datasnap.DBClient, Vcl.StdCtrls, Vcl.Buttons;

type
  TFormNovedadesDetVentas = class(TForm)
    pnBase: TPanel;
    pnPie: TPanel;
    dbgNovedades: TDBGrid;
    DSNovedades: TDataSource;
    btCerrar: TBitBtn;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btCerrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FCDS:TClientDataSet;
  public
    { Public declarations }
  published
    property CDS:TClientDataSet read FCDS write FCDS;
  end;

var
  FormNovedadesDetVentas: TFormNovedadesDetVentas;

implementation

{$R *.dfm}

procedure TFormNovedadesDetVentas.btCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormNovedadesDetVentas.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
end;

procedure TFormNovedadesDetVentas.FormResize(Sender: TObject);
begin
  if FormNovedadesDetVentas<>nil then
    if FormNovedadesDetVentas.Width<>870 then
      FormNovedadesDetVentas.Width:=870;
end;

procedure TFormNovedadesDetVentas.FormShow(Sender: TObject);
var
  I: Integer;
begin
  DSNovedades.DataSet:=Fcds;
  for I := 0 to dbgNovedades.Columns.Count-1 do
    dbgNovedades.Columns[I].Title.Alignment:=taCenter;
end;

end.
