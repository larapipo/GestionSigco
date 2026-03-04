unit UCodigoBarra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvExControls, JvGradient,
  ExtCtrls, DBCtrls, Data.DB, Vcl.Buttons;

type
  TFormCodigosBarra = class(TForm)
    pnPrincipal: TPanel;
    dbgCodigosBarras: TJvDBGrid;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCodigosBarra: TFormCodigosBarra;

implementation

{$R *.dfm}
uses DMStock;

procedure TFormCodigosBarra.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

end.
