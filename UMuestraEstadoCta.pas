unit UMuestraEstadoCta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExControls, JvGradient, ExtCtrls;

type
  TformEstadoCta = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    JvGradient1: TJvGradient;
    btCerra: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    lbSaldo: TLabel;
    lbLimite: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btCerraClick(Sender: TObject);
  private
    { Private declarations }
    PSaldo,PLimite:String;
  public
    { Public declarations }
  published
    property Saldo:String read PSaldo write PSaldo;
    property Limite:String read PLimite write PLimite;

  end;

var
  formEstadoCta: TformEstadoCta;

implementation

{$R *.dfm}

procedure TformEstadoCta.btCerraClick(Sender: TObject);
begin
  Close;
end;

procedure TformEstadoCta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TformEstadoCta.FormCreate(Sender: TObject);
begin
  AutoSize:=true;
end;

procedure TformEstadoCta.FormDestroy(Sender: TObject);
begin
  formEstadoCta:=nil;
end;

procedure TformEstadoCta.FormShow(Sender: TObject);
begin
  lbSaldo.Caption:=Limite;
  lbSaldo.Caption:=Saldo;
end;

end.
