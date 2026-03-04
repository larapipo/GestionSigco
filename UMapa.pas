unit UMapa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, Vcl.ExtCtrls,
  VCL.TMSFNCCustomControl, VCL.TMSFNCWebBrowser, VCL.TMSFNCMaps,
  VCL.TMSFNCGoogleMaps;

type
  TFormMapa = class(TForm)
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMapa: TFormMapa;

implementation

{$R *.dfm}

procedure TFormMapa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TFormMapa.FormCreate(Sender: TObject);
begin
//  TMSFNCGoogleMaps1.DeInitialize;
//  TMSFNCGoogleMaps1.Initialize;
end;

procedure TFormMapa.FormDestroy(Sender: TObject);
begin
  FormMapa:=Nil;
end;

procedure TFormMapa.FormShow(Sender: TObject);
begin

//  TMSFNCGoogleMaps1.BeginUpdate;
//  TMSFNCGoogleMaps1.APIKey   := 'AIzaSyBQVibb5ZW1yflpnTTxjq41qgSEhjdb8Hg';
//  TMSFNCGoogleMaps1.EndUpdate;

end;

end.
