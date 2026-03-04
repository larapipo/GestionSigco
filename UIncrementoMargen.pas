unit UIncrementoMargen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFormIncrementoMargen = class(TForm)
    pnBase: TPanel;
    edValor: TEdit;
    Label1: TLabel;
    pnPie: TPanel;
    btCancel: TBitBtn;
    btOk: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
  private
    { Private declarations }
    FIncremento:Extended;
  public
    { Public declarations }
  published
    property Incremenal:Extended read FIncremento write FIncremento;
  end;

var
  FormIncrementoMargen: TFormIncrementoMargen;

implementation

{$R *.dfm}

procedure TFormIncrementoMargen.btCancelClick(Sender: TObject);
begin
   FIncremento:=0;
end;

procedure TFormIncrementoMargen.btOkClick(Sender: TObject);
begin
  FIncremento:=StrToFloat( edValor.Text);
end;

procedure TFormIncrementoMargen.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

end.
