unit UCondicionesCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DMCtasCtesComp, Grids, DBGrids;

type
  TFormCondiciones = class(TForm)
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCondiciones: TFormCondiciones;

implementation

{$R *.DFM}


procedure TFormCondiciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
BEGIN
  Action:=caFree;
  FormCondiciones:=nil;
end;

procedure TFormCondiciones.FormCreate(Sender: TObject);
begin
 AutoSize:=True;
end;

end.
