unit UCantidadPedir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits;

type
  TFormCantidadPedir = class(TForm)
    edCantidad: TJvCalcEdit;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edCantidadKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    FCantidad:Extended;
  public
    { Public declarations }
  published
    property Cantidad:Extended read FCantidad write FCantidad;


  end;

var
  FormCantidadPedir: TFormCantidadPedir;

implementation

{$R *.dfm}

procedure TFormCantidadPedir.edCantidadKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_RETURN then Close;

end;

procedure TFormCantidadPedir.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FCantidad:=edCantidad.Value;
  Action:=cafree;
end;

procedure TFormCantidadPedir.FormCreate(Sender: TObject);
begin
  edCantidad.Value:=0;
  FCantidad       :=0;
end;

procedure TFormCantidadPedir.FormDestroy(Sender: TObject);
begin
  FormCantidadPedir:=nil;
end;

end.
