unit UArticulosUsadosRtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Data.DB;

type
  TFormArticulosUsadosRtos = class(TForm)
    dbgArticulos: TDBGrid;
    pnBase: TPanel;
    BitBtn1: TBitBtn;
    DSArticulos: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgArticulosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormArticulosUsadosRtos: TFormArticulosUsadosRtos;

implementation

{$R *.dfm}

uses URemitos;

procedure TFormArticulosUsadosRtos.dbgArticulosDblClick(Sender: TObject);
begin
  if Assigned(FormRemitos) then
    FreeAndNil(FormRemitos);
  if Not(Assigned(FormRemitos)) then
    FormRemitos :=TFormRemitos.Create(Application);
  FormRemitos.DatoNew  :=DSArticulos.DataSet.FieldByName('id_rto').AsString;
  FormRemitos.TipoCpbte:='RE';

  FormRemitos.Recuperar.Execute;
  FormRemitos.Show;
end;

procedure TFormArticulosUsadosRtos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormArticulosUsadosRtos.FormDestroy(Sender: TObject);
begin
  FormArticulosUsadosRtos:=nil;
end;

end.
