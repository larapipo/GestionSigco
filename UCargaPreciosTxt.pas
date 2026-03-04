unit UCargaPreciosTxt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TformCargaPreciosTxt = class(TForm)
    Panel1: TPanel;
    Memo: TMemo;
    Label2: TLabel;
    edPath: TEdit;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    OpenDialog: TOpenDialog;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCargaPreciosTxt: TformCargaPreciosTxt;
  ArchiTxt:TextFile;

implementation

{$R *.dfm}

procedure TformCargaPreciosTxt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TformCargaPreciosTxt.FormCreate(Sender: TObject);
begin
  Autosize:=true;
end;

procedure TformCargaPreciosTxt.FormDestroy(Sender: TObject);
begin
  formCargaPreciosTxt:=nil;
end;

procedure TformCargaPreciosTxt.SpeedButton1Click(Sender: TObject);
begin
 if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        edPath.Text:=OpenDialog.FileName;
        AssignFile(ArchiTxt, OpenDialog.FileName);
        Reset(ArchiTxt);
        Memo.Lines.LoadFromFile(OpenDialog.FileName);
//        lbReg.Caption:=IntToStr(MemoText.Lines.Count-1);
      end
    else
      ShowMessage('No hay archivo Seleccionado');
end;

end.
