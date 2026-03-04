unit USeparadorTXT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFormSepardorTXT = class(TForm)
    pnBase: TPanel;
    Label1: TLabel;
    edCaracter: TEdit;
    btCancel: TBitBtn;
    btOk: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
  private
    { Private declarations }
    FCaracter:String;
  public
    { Public declarations }
  published
    property Caracter:String read FCaracter write FCaracter;
  end;

var
  FormSepardorTXT: TFormSepardorTXT;

implementation

{$R *.dfm}

procedure TFormSepardorTXT.btCancelClick(Sender: TObject);
begin
  FCaracter:= ',';
end;

procedure TFormSepardorTXT.btOkClick(Sender: TObject);
VAR S:String;
begin
  S:=edCaracter.Text;
  FCaracter:= S;
end;

procedure TFormSepardorTXT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TFormSepardorTXT.FormDestroy(Sender: TObject);
begin
  FormSepardorTXT:=nil;
end;

end.
