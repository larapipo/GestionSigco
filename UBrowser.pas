unit UBrowser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, ExtCtrls, OleCtrls, SHDocVw;

type
  TFormBrowser = class(TForm)
    WebBrowser1: TWebBrowser;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Close: TBitBtn;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure CloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FpathURL:String;
  public
    { Public declarations }
  published
    property pathUrl:String  read FpathUrl write FpathUrl;
  end;

var
  FormBrowser: TFormBrowser;

implementation

{$R *.dfm}

procedure TFormBrowser.CloseClick(Sender: TObject);
begin
 // WebBrowser1.CleanupInstance;
  Close;
end;

procedure TFormBrowser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBrowser.FormDestroy(Sender: TObject);
begin
  FormBrowser:=nil;
end;

procedure TFormBrowser.FormShow(Sender: TObject);
begin
  Edit1.Text:=FpathURL;
  WebBrowser1.Navigate(Edit1.Text);
  StatusBar1.SimplePanel:=True;
  StatusBar1.SimpleText :=WebBrowser1.LocationURL;
end;

procedure TFormBrowser.SpeedButton1Click(Sender: TObject);
begin
  WebBrowser1.Navigate(Edit1.Text);
  StatusBar1.SimplePanel:=True;
  StatusBar1.SimpleText :=WebBrowser1.LocationURL;
  //WebBrowser1.PutProperty();
  //WebBrowser1.GoSearch;
end;

end.
