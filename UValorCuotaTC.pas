unit UValorCuotaTC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, JvExMask, JvToolEdit, JvBaseEdits, ExtCtrls;

type
  TFormValorCuotaTC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edCuota: TJvCalcEdit;
    btOk: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
    FValor:Real;
  public
    { Public declarations }
  published
    property Valor:real read FValor write FValor;
  end;

var
  FormValorCuotaTC: TFormValorCuotaTC;

implementation

{$R *.dfm}

procedure TFormValorCuotaTC.btOkClick(Sender: TObject);
begin
  FValor:=edCuota.Value;
end;

procedure TFormValorCuotaTC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormValorCuotaTC.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormValorCuotaTC.FormDestroy(Sender: TObject);
begin
  FormValorCuotaTC:=nil;
end;

procedure TFormValorCuotaTC.FormShow(Sender: TObject);
begin
  edCuota.Value:=FValor;
end;

end.
