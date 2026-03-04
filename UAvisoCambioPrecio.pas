unit UAvisoCambioPrecio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFormAvisoCambioPrecio = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edTexto: TEdit;
    btAceptar: TBitBtn;
    btcancelar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   FTexto:String;
  published
    PROPERTY Texto: STRING read FTexto write FTexto;
  end;

var
  FormAvisoCambioPrecio: TFormAvisoCambioPrecio;

implementation

{$R *.DFM}

procedure TFormAvisoCambioPrecio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormAvisoCambioPrecio.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormAvisoCambioPrecio.FormDestroy(Sender: TObject);
begin
  FormAvisoCambioPrecio:=nil;
end;

procedure TFormAvisoCambioPrecio.FormShow(Sender: TObject);
begin
  FTexto:='';
end;

procedure TFormAvisoCambioPrecio.btAceptarClick(Sender: TObject);
begin
  if edTexto.Text<>'' Then
    begin
      FTexto:=edTexto.Text;
    //  FormAvisoCambioPrecio.ModalResult:=mrOk;
    //  Close;
    end
  else
    FTexto:='Cambio de Precio Sin Informar Causa';

end;

procedure TFormAvisoCambioPrecio.btcancelarClick(Sender: TObject);
begin
//  FormAvisoCambioPrecio.ModalResult:=mrCancel;
  FTexto:='';
  Close;
end;

end.
