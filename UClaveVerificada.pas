unit UClaveVerificada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls;

type
  TFormClaveVerificada = class(TForm)
    pnBase: TPanel;
    btOk: TBitBtn;
    edNumero: TMaskEdit;
    edClave: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    btCancelar: TBitBtn;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure edClaveChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Intentos:Byte;
  end;

var
  FormClaveVerificada: TFormClaveVerificada;

implementation

{$R *.dfm}

procedure TFormClaveVerificada.btCancelarClick(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TFormClaveVerificada.btOkClick(Sender: TObject);
var Cadena1,Cadena2,Aux:String;
Suma1,Suma2:Integer;
begin
  Cadena1:=(edNumero.Text);
  Cadena2:=(edClave.Text);
  if (length(Cadena2))<>7 then
    ShowMessage('La clave tiene que ser de 7 caracteres')
  else
    begin
      Suma1:=StrToInt(Cadena1[2])+StrToInt(Cadena1[3])+StrToInt(Cadena1[5]);
      while Suma1>9 do
        begin
          Aux:=IntToStr(Suma1);
          Suma1:=StrToInt(Aux[1])+StrToInt(Aux[2]);
        end;

      Suma2:=StrToInt(Cadena2[2])+StrToInt(Cadena2[3])+StrToInt(Cadena2[5]);

      while Suma2>9 do
        begin
          Aux:=IntToStr(Suma2);
          Suma2:=StrToInt(Aux[1])+StrToInt(Aux[2]);
        end;

      if Not((Suma1=Suma2) and (Suma2=StrToInt(Cadena2[7]))) then
        begin
          ShowMessage('Clave incorrecta...');
          FormClaveVerificada.ModalResult:=mrCancel;
        end
      else
        ModalResult:=mrOk;
    end;
end;

procedure TFormClaveVerificada.edClaveChange(Sender: TObject);
var Cadena1,Cadena2,Aux:String;
Suma1,Suma2:Integer;
begin
  Cadena1:= Trim(edNumero.Text);
  Cadena2:= Trim(edClave.Text);
  if (Length(Cadena1)=Length(cadena2)) then
    begin
      Suma1  := StrToInt(Cadena1[2])+StrToInt(Cadena1[3])+StrToInt(Cadena1[5]);
      while Suma1>9 do
        begin
          Aux:=IntToStr(Suma1);
          Suma1:=StrToInt(Aux[1])+StrToInt(Aux[2]);
        end;

      if (Cadena2<>'') and (Cadena2[2]<>'') and (Cadena2[3]<>'') and (Cadena2[5]<>'') and
         (Cadena2[2]<>'_') and (Cadena2[3]<>'_') and (Cadena2[5]<>'_') then
        begin
          Suma2:=StrToInt(Cadena2[2])+StrToInt(Cadena2[3])+StrToInt(Cadena2[5]);
          while Suma2>9 do
            begin
              Aux  :=IntToStr(Suma2);
              Suma2:=StrToInt(Aux[1])+StrToInt(Aux[2]);
            end;
        end;

      if (Length(Cadena1)=Length(cadena2)) then
        begin
          Intentos:=Intentos+1;
          if (Cadena2<>'') and (Cadena2[7]<>'') and (Cadena2[7]<>'_') and
            (copy(cadena1,1,6)<> copy(cadena2,1,6)) Then
              btOk.Enabled:=((Suma1=Suma2) and (Suma2=StrToInt(Cadena2[7]))) and (Cadena1<>Cadena2)
          else
            btOk.Enabled:=False;
          if Intentos>3 then
            begin
              ShowMessage('Intentos Superados... vuelva a pedir la clave...');
              btCancelar.Click;
            end;
        end;
    end;
end;

procedure TFormClaveVerificada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormClaveVerificada.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  edNumero.Text:='0000000';
  while StrToInt(edNumero.Text)<999999 do
    edNumero.Text:=IntToStr(Random(9999999));
  Intentos:=1;
end;

procedure TFormClaveVerificada.FormDestroy(Sender: TObject);
begin
FormClaveVerificada:=nil;
end;

procedure TFormClaveVerificada.SpeedButton1Click(Sender: TObject);
begin
  edNumero.Text:='0000000';
  while StrToInt(edNumero.Text)<999999 do
    edNumero.Text:=IntToStr(Random(9999999));
end;

end.
