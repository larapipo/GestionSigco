unit UFtp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ActnList, Buttons, ExtCtrls,IniFiles, System.Actions;

type
  TFormFTP = class(TForm)
    pnPrincipal: TPanel;
    btSend: TBitBtn;
    mEstados: TMemo;
    Label2: TLabel;
    ActionList1: TActionList;
    GroupBox1: TGroupBox;
    edHost: TEdit;
    Send: TAction;
    Salir: TAction;
    btSalir: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure NMFTP1TransactionStart(Sender: TObject);
    procedure NMFTP1TransactionStop(Sender: TObject);
    procedure NMFTP1Connect(Sender: TObject);
    procedure NMFTP1ConnectionFailed(Sender: TObject);
    procedure SendExecute(Sender: TObject);
    procedure NMFTP1ListItem(Listing: String);
    procedure NMFTP1Error(Sender: TComponent; Errno: Word; Errmsg: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFTP: TFormFTP;

implementation

{$R *.DFM}

procedure TFormFTP.FormCreate(Sender: TObject);
Var
GeneralIni:TIniFile;
BEGIN
  AutoSize := True;
  mEstados.Clear;
  GeneralIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'General.Ini');
  edHost.Text:=GeneralIni.ReadString('Host', 'Host', '');
  GeneralIni.Free;

end;

procedure TFormFTP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormFTP.FormDestroy(Sender: TObject);
begin
  FormFTP:=nil;
end;

procedure TFormFTP.SalirExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormFTP.NMFTP1TransactionStart(Sender: TObject);
begin
  mEstados.Lines.Add('Incio de Transmisión....');
end;

procedure TFormFTP.NMFTP1TransactionStop(Sender: TObject);
begin
  mEstados.Lines.Add('Fin de Transmisión....');
end;

procedure TFormFTP.NMFTP1Connect(Sender: TObject);
begin
  mEstados.Lines.Add('Coneccion con Host..Ok...');
end;

procedure TFormFTP.NMFTP1ConnectionFailed(Sender: TObject);
begin
  mEstados.Lines.Add('Fallo de conección...');
end;

procedure TFormFTP.SendExecute(Sender: TObject);
begin
  ChDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
  //NMFTP1.UploadAppend
 // NMFTP1.Host:=Trim(edHost.Text);
 // if NMFTP1.Connected=False Then
 //  try NMFTP1.Connect;Except end;
 // if NMFTP1.Connected Then
 //   begin
 //     NMFTP1.Nlist;
 //   end;  
  
end;

procedure TFormFTP.NMFTP1ListItem(Listing: String);
begin
  mEstados.Lines.add(listing);
end;

procedure TFormFTP.NMFTP1Error(Sender: TComponent; Errno: Word;
  Errmsg: String);
begin
  ShowMessage('Error detectado ..:'+Errmsg);
end;

end.
