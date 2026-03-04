unit UServidor;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls,IniFiles, Vcl.Buttons,Midas, MidasLib;

type
  TForm1 = class(TForm)
    lbEstado: TLabel;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    lbMotor: TLabel;
    Label2: TLabel;
    btIniciar: TBitBtn;
    edPath: TEdit;
    rgTipoMotor: TRadioGroup;
    edPuerto: TEdit;
    pnEstado: TPanel;
    OpenDialog1: TOpenDialog;
    procedure btIniciarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ArchivoIni: TIniFile;
  end;

var
  Form1: TForm1;

implementation

uses UServerContainer;
{$R *.dfm}

procedure TForm1.btIniciarClick(Sender: TObject);
begin
 if Not(ServerContainer.DSServer.Started) then
  begin
    UServerContainer.ServerContainer.DSTCPServerTransport.Port := StrToInt(edPuerto.Text);
    UServerContainer.ServerContainer.DSServer.Start;
    btIniciar.Font.Color := clGreen;
    btIniciar.Caption    := 'Stop';
    lbEstado.Font.Color  := clGreen;
    lbEstado.Caption     := 'Servidor Iniciado';
    pnEstado.Color       := clGreen;
    pnEstado.Caption     := 'Iniciado...';
  end
  else
  begin
    UServerContainer.ServerContainer.DSServer.Stop;
    btIniciar.Font.Color := clRed;
    btIniciar.Caption    := 'Iniciar';
    lbEstado.Font.Color  := clRed;
    lbEstado.Caption     := 'Servidor Detenido';
    pnEstado.Color       := clRed;
    pnEstado.Caption     := 'Detenido...';

  end
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'ServidorDS.ini');
  ArchivoIni.WriteString('base', 'path', edPath.Text);
  ArchivoIni.WriteString('base', 'puerto', edPuerto.Text);
  ArchivoIni.WriteInteger('base', 'Tipo', rgTipoMotor.ItemIndex);
  ArchivoIni.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ArchivoIni  := TIniFile.Create(ExtractFilePath(ParamStr(0)) +  'ServidorDS.ini');
  edPath.Text := Trim(ArchivoIni.ReadString('base', 'path', ''));
  edPuerto.Text:=Trim(ArchivoIni.ReadString('base', 'puerto', '211'));
  rgTipoMotor.ItemIndex := ArchivoIni.ReadInteger('base', 'Tipo', 0);
  ArchivoIni.Free;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    edPath.Text := OpenDialog1.FileName;
end;

end.

