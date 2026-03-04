unit UListCpbteNoImportados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Vcl.Menus;

type
  TFormListaNoImportados = class(TForm)
    Panel1: TPanel;
    btConfirma: TBitBtn;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    SeleccionarTodo1: TMenuItem;
    mLista: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Archivo:TextFile;
  end;

var
  FormListaNoImportados: TFormListaNoImportados;

implementation

{$R *.dfm}

procedure TFormListaNoImportados.btConfirmaClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
    if SaveDialog1.FileName<>'' then
      mLista.Lines.SaveToFile( SaveDialog1.FileName);
end;

procedure TFormListaNoImportados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormListaNoImportados.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
end;

procedure TFormListaNoImportados.FormDestroy(Sender: TObject);
begin
  FormListaNoImportados:=nil;
end;

end.
