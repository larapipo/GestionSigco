unit UImagen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TFormImagen = class(TForm)
    imgFoto: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FFoto:String;
  public
    { Public declarations }
  published
    property Foto:String read FFoto write FFoto;

  end;

var
  FormImagen: TFormImagen;

implementation

{$R *.dfm}

procedure TFormImagen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormImagen.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormImagen.FormDestroy(Sender: TObject);
begin
  FormImagen:=nil;
end;

procedure TFormImagen.FormShow(Sender: TObject);
begin
 // imgFoto.AutoSize:=True;

  imgFoto.Picture.LoadFromFile(Foto);

 // AutoSize:=True;
end;

end.
