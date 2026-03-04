unit UBuscaDirectorio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, FileCtrl, ExtCtrls, Mask, JvExMask, JvDialogs,
  JvBaseDlg, JvConnectNetwork, JvExStdCtrls, JvListBox, JvDriveCtrls, JvToolEdit,
  JvExControls, JvGradient,IniFiles;

type
  TFormBuscaDirectorio = class(TForm)
    pnPrincipal: TPanel;
    edDiretorio: TJvDirectoryEdit;
    lbDirectorio: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    btCancelar: TBitBtn;
    btOk: TBitBtn;
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edDiretorioButtonClick(Sender: TObject);
    procedure edDiretorioChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FDirectorio:String;
  public
    //Directorio:String;
    ArchivoIni:TIniFile;
    DirectorioTemp:String;
  published
    property Directorio:String read FDirectorio write FDirectorio;
    { Public declarations }
  end;

var
  FormBuscaDirectorio: TFormBuscaDirectorio;

implementation

{$R *.DFM}

procedure TFormBuscaDirectorio.btOkClick(Sender: TObject);
begin
  FDirectorio:=edDiretorio.Directory;
end;

procedure TFormBuscaDirectorio.btCancelarClick(Sender: TObject);
begin
  FDirectorio:='';
end;

procedure TFormBuscaDirectorio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  ArchivoIni                   := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Directorio.ini');
  ArchivoIni.WriteString('Directorio', 'Path', lbDirectorio.Caption);
  ArchivoIni.Free;

end;

procedure TFormBuscaDirectorio.FormDestroy(Sender: TObject);
begin
  FormBuscaDirectorio:=nil;
end;

procedure TFormBuscaDirectorio.FormShow(Sender: TObject);
begin
  edDiretorio.Text      :=FDirectorio;
  edDiretorio.Directory :=FDirectorio;
  edDiretorio.Directory :=DirectorioTemp;

end;

procedure TFormBuscaDirectorio.edDiretorioButtonClick(Sender: TObject);
begin
  edDiretorio.Text     :='';
  edDiretorio.Directory:='';
end;

procedure TFormBuscaDirectorio.edDiretorioChange(Sender: TObject);
begin
  lbDirectorio.Caption:=edDiretorio.Directory;
end;


procedure TFormBuscaDirectorio.FormCreate(Sender: TObject);
begin
   AutoSize:=True;
   Position:=poOwnerFormCenter;
   ArchivoIni                   := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Directorio.ini');
   DirectorioTemp               := ArchivoIni.ReadString('Directorio', 'Path', '');
   ArchivoIni.Free;

   edDiretorio.Text      :=DirectorioTemp;
   edDiretorio.Directory :=DirectorioTemp;

end;

end.
