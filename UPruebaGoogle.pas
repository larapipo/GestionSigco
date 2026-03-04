unit UPruebaGoogle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCMapsCommonTypes,
  VCL.TMSFNCCustomControl, VCL.TMSFNCWebBrowser, VCL.TMSFNCMaps, Vcl.ToolWin,
  Vcl.ComCtrls, VCL.TMSFNCGoogleMaps, AdvCustomControl, AdvWebBrowser,
  Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormTestGoogleMap = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    TMSFNCGoogleMaps1: TTMSFNCGoogleMaps;
    WebBrowser1: TWebBrowser;
    Splitter1: TSplitter;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTestGoogleMap: TFormTestGoogleMap;

implementation

{$R *.dfm}

procedure TFormTestGoogleMap.Button1Click(Sender: TObject);
begin
   WebBrowser1.Navigate('http://www.google.com/');
    TMSFNCGoogleMaps1.Navigate;
end;

procedure TFormTestGoogleMap.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormTestGoogleMap.FormDestroy(Sender: TObject);
begin
  FormTestGoogleMap:=nil;
end;

procedure TFormTestGoogleMap.FormShow(Sender: TObject);
begin
  TMSFNCGoogleMaps1.ApiKey:='AIzaSyBQVibb5ZW1yflpnTTxjq41qgSEhjdb8Hg';
  TMSFNCGoogleMaps1.Navigate;

  WebBrowser1.Silent:=True;

end;

end.
