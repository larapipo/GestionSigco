unit UAvisoProceso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  JvExControls,
  JvAnimatedImage, JvGIFCtrl, ExtCtrls, JvExExtCtrls, JvSecretPanel;

type
  TFormProceso = class(TForm)
    Panel1: TPanel;
    RxGif: TJvGIFAnimator;
    pnMensaje: TJvSecretPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FMensaje:String;
    { Private declarations }
  public

    { Public declarations }
  public
    property Mensaje :string read FMensaje write FMensaje;
  end;

var
  FormProceso: TFormProceso;

implementation

{$R *.DFM}

procedure TFormProceso.FormCreate(Sender: TObject);
begin
  Autosize :=True;
end;

procedure TFormProceso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Sleep(1000);
  Action:=caFree;
end;

procedure TFormProceso.FormDestroy(Sender: TObject);
begin
  FormProceso:=Nil;
end;

procedure TFormProceso.FormShow(Sender: TObject);
begin
  Left:=50;
  Top :=50;
  pnMensaje.Lines.Clear;
  pnMensaje.Lines.Add(Mensaje);
  RxGif.Animate     :=True;
 // pnMensaje.Active  :=True;
  Application.ProcessMessages;
end;

end.
