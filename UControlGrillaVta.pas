unit UControlGrillaVta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, Data.DB;

type
  TFormControlDetalle = class(TForm)
    Panel1: TPanel;
    DBGrillaDetalle_2: TDBGrid;
    btCerrar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btCerrarClick(Sender: TObject);
    procedure DBGrillaDetalle_2ColEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlDetalle: TFormControlDetalle;

implementation

{$R *.dfm}

procedure TFormControlDetalle.btCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormControlDetalle.DBGrillaDetalle_2ColEnter(Sender: TObject);
begin
  IF DBGrillaDetalle_2.SelectedIndex = 0 THEN
    DBGrillaDetalle_2.SelectedIndex := 1;
  IF DBGrillaDetalle_2.SelectedIndex = 2 THEN
    DBGrillaDetalle_2.SelectedIndex := 3;
end;

procedure TFormControlDetalle.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormControlDetalle.FormDestroy(Sender: TObject);
begin
  FormControlDetalle:=nil;
end;

end.
