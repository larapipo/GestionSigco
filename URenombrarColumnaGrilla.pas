unit URenombrarColumnaGrilla;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, JvExControls, JvGradient;

type
  TFormRenombrarColumnaGrilla = class(TForm)
    pnNombre: TPanel;
    edActual: TEdit;
    edNuevo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    spOk: TSpeedButton;
    spCancel: TSpeedButton;
    JvGradient1: TJvGradient;
    procedure FormCreate(Sender: TObject);
    procedure spCancelClick(Sender: TObject);
    procedure spOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
   FNombre:String;
  public
    { Public declarations }
  published
    property Nombre:string read fNombre write FNombre;
  end;

var
  FormRenombrarColumnaGrilla: TFormRenombrarColumnaGrilla;

implementation

{$R *.dfm}

procedure TFormRenombrarColumnaGrilla.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormRenombrarColumnaGrilla.FormCreate(Sender: TObject);
begin
  AutoSize:=true;
  edActual.Text:='';//FNombre;
  edNuevo.Text:=edActual.Text;
end;

procedure TFormRenombrarColumnaGrilla.FormDestroy(Sender: TObject);
begin
  FormRenombrarColumnaGrilla:=nil;
end;

procedure TFormRenombrarColumnaGrilla.FormShow(Sender: TObject);
begin
  edActual.Text:=FNombre;
  edNuevo.Text:=edActual.Text;
end;

procedure TFormRenombrarColumnaGrilla.spCancelClick(Sender: TObject);
begin
  FNombre:=edActual.Text;
  Close;
end;

procedure TFormRenombrarColumnaGrilla.spOkClick(Sender: TObject);
begin
  FNombre:=edNuevo.Text;
  Close;
end;

end.
