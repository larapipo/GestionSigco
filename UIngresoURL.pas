unit UIngresoURL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TFormURL = class(TForm)
    pn1: TPanel;
    edURL: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FUrl:string;
  public
    { Public declarations }
  published
    property Url:string read FUrl write FUrl;
  end;

var
  FormURL: TFormURL;

implementation

{$R *.dfm}

procedure TFormURL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FUrl:=edURL.Text;
  Action:=caFree;
end;

procedure TFormURL.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormURL.FormDestroy(Sender: TObject);
begin
  FormURL:=nil;
end;

procedure TFormURL.FormShow(Sender: TObject);
begin
  edURL.Text:=FUrl;
end;

end.
