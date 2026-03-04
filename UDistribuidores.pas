unit UDistribuidores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls;

type
  TFormDistribuidores = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDistribuidores: TFormDistribuidores;

implementation

{$R *.DFM}

procedure TFormDistribuidores.FormCreate(Sender: TObject);
begin
    AutoSIze:=True;
end;

procedure TFormDistribuidores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormDistribuidores.FormDestroy(Sender: TObject);
begin
  FormDistribuidores:=nil;
end;

end.
