unit UBuscadorBaseDatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvGradient, StdCtrls, Buttons, ExtCtrls;

type
  TFormBuscadorBaseDatos = class(TForm)
    OpenDialog1: TOpenDialog;
    pnBase: TPanel;
    edPath: TEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    JvGradient1: TJvGradient;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    FPath:String;
  public
    { Public declarations }
  published
   property Path:String Read FPath Write FPath;
  end;

var
  FormBuscadorBaseDatos: TFormBuscadorBaseDatos;

implementation

{$R *.dfm}

procedure TFormBuscadorBaseDatos.BitBtn1Click(Sender: TObject);
begin
  Fpath:=edPath.Text;
end;

procedure TFormBuscadorBaseDatos.BitBtn2Click(Sender: TObject);
begin
  Fpath:='';
end;

procedure TFormBuscadorBaseDatos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorBaseDatos.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormBuscadorBaseDatos.FormDestroy(Sender: TObject);
begin
  FormBuscadorBaseDatos:=Nil;
end;

procedure TFormBuscadorBaseDatos.SpeedButton1Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
    if OpenDialog1.FileName<>'' then
      edPath.Text:=OpenDialog1.FileName;
end;

end.
