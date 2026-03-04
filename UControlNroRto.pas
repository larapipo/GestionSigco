unit UControlNroRto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFormControlNroRto = class(TForm)
    pnPrincipal: TPanel;
    Label1: TLabel;
    edLetra: TEdit;
    edSuc: TEdit;
    edNum: TEdit;
    btOk: TBitBtn;
    btcancelar: TBitBtn;
    procedure btOkClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure edSucExit(Sender: TObject);
    procedure edNumExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    FSuc :String;
    FNum :String;
    FLet :String;
    { Private declarations }
  public
    { Public declarations }
  published
    property Suc:String read FSuc write FSuc;
    property Num:String read FNum write FNum;
    property Let:String read FLet write FLet;
end;


var
  FormControlNroRto: TFormControlNroRto;

implementation

{$R *.dfm}

procedure TFormControlNroRto.btcancelarClick(Sender: TObject);
begin
  ModalResult:=mrCancel;

end;

procedure TFormControlNroRto.btOkClick(Sender: TObject);
begin
  edNum.Text:=copy('00000000',1,8-length(trim(edNum.Text)))+trim(edNum.Text);
  edSuc.Text:=copy('00000000',1,4-length(trim(edSuc.Text)))+trim(edSuc.Text);

  FSuc:=edSuc.Text;
  FLet:=edLetra.Text;
  FNum:=edNum.Text;
  ModalResult:=mrOk;
 end;

procedure TFormControlNroRto.edNumExit(Sender: TObject);
begin
  edNum.Text:=copy('00000000',1,8-length(trim(edNum.Text)))+trim(edNum.Text);
end;

procedure TFormControlNroRto.edSucExit(Sender: TObject);
begin
  edSuc.Text:=copy('00000000',1,4-length(trim(edSuc.Text)))+trim(edSuc.Text);
end;

procedure TFormControlNroRto.FormActivate(Sender: TObject);
begin
  Show;
  FormControlNroRto.BringToFront;
end;

procedure TFormControlNroRto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFormControlNroRto.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormControlNroRto.FormDestroy(Sender: TObject);
begin
 FormControlNroRto:=nil;
end;

procedure TFormControlNroRto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)
    then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
  if Key = #27 then
    if btCancelar.Enabled Then
      btcancelar.Click;

end;

procedure TFormControlNroRto.FormShow(Sender: TObject);
begin
  edLetra.Text:=FLet;
  edSuc.Text  :=FSuc;
  edNum.Text  :=FNum;
  edSuc.SetFocus;
  FormControlNroRto.BringToFront;
end;

end.
