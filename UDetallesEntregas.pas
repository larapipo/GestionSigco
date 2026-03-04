unit UDetallesEntregas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Datasnap.DBClient;

type
  TFormDetalleEntregas = class(TForm)
    pnCabecera: TPanel;
    pnPie: TPanel;
    pnDetalle: TPanel;
    DBGrid1: TDBGrid;
    DSDetalle: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    FDataSource:TClientDataSet;
    { Public declarations }
  property
    DataSource:TClientDataSet write FDataSource;
  end;

var
  FormDetalleEntregas: TFormDetalleEntregas;

implementation

{$R *.dfm}

procedure TFormDetalleEntregas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=caFree;
end;

procedure TFormDetalleEntregas.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
  DSDetalle.DataSet:=FDataSource;
end;

procedure TFormDetalleEntregas.FormDestroy(Sender: TObject);
begin
  FormDetalleEntregas:=nil;
end;

procedure TFormDetalleEntregas.FormResize(Sender: TObject);
begin
  if FormDetalleEntregas<>nil then
    if FormDetalleEntregas.Width<>649 Then
      FormDetalleEntregas.Width:=649;

end;

procedure TFormDetalleEntregas.FormShow(Sender: TObject);
begin
  DSDetalle.DataSet:=FDataSource;
end;

end.
