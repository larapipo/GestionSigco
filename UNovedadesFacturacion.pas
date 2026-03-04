unit UNovedadesFacturacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, Buttons;

type
  TFormNovedadesFacturacion = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    lwNovedades: TListView;
    SaveDialog1: TSaveDialog;
    btConfirma: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNovedadesFacturacion: TFormNovedadesFacturacion;

implementation

{$R *.dfm}

procedure TFormNovedadesFacturacion.btConfirmaClick(Sender: TObject);
  var
   i, j : Integer;
   F : TFileStream;
   Buffer : String;

begin

   SetCurrentDir(ExtractFilePath( Application.ExeName));

   if SaveDialog1.Execute then
    if SaveDialog1.FileName<>'' then
        F := TFileStream.Create(SaveDialog1.FileName, fmCreate);

   for i := 0 to lwNovedades.Items.Count - 1 do
   begin

      Buffer := Buffer + lwNovedades.Items.Item[i].Caption + ',';

      for j := 0 to lwNovedades.Items.Item[i].SubItems.Count - 1 do
         Buffer := Buffer + lwNovedades.Items.Item[i].SubItems.Strings[j] + ',';

      Delete(Buffer, Length(Buffer), 1);
      Buffer := Buffer + #13 + #10;
      F.Write(Buffer[1], Length(Buffer));
      Buffer := EmptyStr;

   end;

   F.Free;
end;

procedure TFormNovedadesFacturacion.Button1Click(Sender: TObject);
begin
  FormNovedadesFacturacion.Visible:=False;
end;

procedure TFormNovedadesFacturacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  Action:=caFree;
end;

procedure TFormNovedadesFacturacion.FormCreate(Sender: TObject);
begin
  AutoSize:=true;
end;

procedure TFormNovedadesFacturacion.FormDestroy(Sender: TObject);
begin
  FormNovedadesFacturacion:=nil;
end;

end.
