unit UIngresaNroOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExControls, JvGradient, ExtCtrls;

type
  TFormIngresaNroOP = class(TForm)
    pncab: TPanel;
    JvGradient1: TJvGradient;
    Label1: TLabel;
    edAnio: TEdit;
    edNumero: TEdit;
    pnPie: TPanel;
    btOk: TBitBtn;
    BitBtn1: TBitBtn;
    procedure edAnioExit(Sender: TObject);
    procedure edNumeroExit(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
   FPrefijo:String;
   FNumero:String;
  public
    { Public declarations }
  published
    Property Prefijo:string read FPrefijo write FPrefijo;
    Property Numero:string read FNumero write FNumero;
  end;

var
  FormIngresaNroOP: TFormIngresaNroOP;

implementation

{$R *.dfm}

procedure TFormIngresaNroOP.BitBtn1Click(Sender: TObject);
begin
  FPrefijo:='';
  FNumero :='';
  Close;
end;

procedure TFormIngresaNroOP.btOkClick(Sender: TObject);
begin
  edAnio.Text  :=copy('0000',1,4-length(Trim(edAnio.Text)))+Trim(edAnio.Text);
  edNumero.Text:=copy('0000',1,4-length(Trim(edNumero.Text)))+Trim(edNumero.Text);

  FPrefijo:=edAnio.Text;
  FNumero :=edNumero.Text;
end;

procedure TFormIngresaNroOP.edAnioExit(Sender: TObject);
begin
 edAnio.Text:=copy('0000',1,4-length(Trim(edAnio.Text)))+Trim(edAnio.Text);
end;

procedure TFormIngresaNroOP.edNumeroExit(Sender: TObject);
begin
 edNumero.Text:=copy('0000',1,4-length(Trim(edNumero.Text)))+Trim(edNumero.Text);
end;

procedure TFormIngresaNroOP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormIngresaNroOP.FormCreate(Sender: TObject);
begin
  AutoSize:=true;
  edAnio.Text:=FPrefijo;
  edNumero.Text:=''; 
end;

procedure TFormIngresaNroOP.FormDestroy(Sender: TObject);
begin
  FormIngresaNroOP:=nil;
end;

procedure TFormIngresaNroOP.FormShow(Sender: TObject);
begin
  edAnio.Text   :=FPrefijo;
  edNumero.Text :='';
  edNumero.SetFocus;
end;

end.
