unit UNotasVersion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, ComCtrls, DBCtrls, Provider,
  DBClient, JvExStdCtrls, JvRichEdit, JvDBRichEdit;

type
  TFormNotas = class(TForm)
    bt1: TBitBtn;
    redt1: TRichEdit;
    procedure bt1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNotas: TFormNotas;

implementation

{$R *.dfm}


procedure TFormNotas.bt1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNotas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=caFree;
end;

procedure TFormNotas.FormDestroy(Sender: TObject);
begin
  FormNotas:=nil;
end;

procedure TFormNotas.FormShow(Sender: TObject);
var path:string;
begin
  path:=ExtractFilePath(ParamStr(0));
  redt1.Lines.LoadFromFile(path+'NotasVersion.rtf');
end;

end.
