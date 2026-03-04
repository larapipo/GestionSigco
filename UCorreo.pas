unit UCorreo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, IdComponent, IdTCPServer, IdSMTPServer, IdBaseComponent,
  IdMessage, IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP,
  ExtCtrls, ComCtrls, ActnList, Buttons, IdExplicitTLSClientServerBase,
  IdSMTPBase,IdAttachmentFile, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL,
  IdGlobal,IniFiles,
  IdException, IdSSLOpenSSLHeaders,StrUtils, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Datasnap.DBClient, Datasnap.Provider, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvComponentBase, JvRichEditToHtml, Vcl.OleCtrls, SHDocVw,
  JvExStdCtrls, JvRichEdit;

type
  TFormCorreo = class(TForm)
    smtp: TIdSMTP;
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    edDireccion: TEdit;
    Label1: TLabel;
    stBar: TStatusBar;
    SpeedButton1: TSpeedButton;
    ActionList1: TActionList;
    Enviar: TAction;
    Mail: TIdMessage;
    chbConfirmacion: TCheckBox;
    Label2: TLabel;
    edCopia: TEdit;
    Label3: TLabel;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    QNtotaCorreo: TFDQuery;
    QNtotaCorreoID: TIntegerField;
    QNtotaCorreoTEXTO: TMemoField;
    DSPNotasCorreo: TDataSetProvider;
    CDSNotasCorreo: TClientDataSet;
    CDSNotasCorreoID: TIntegerField;
    CDSNotasCorreoTEXTO: TMemoField;
    edCuerpoMensaje: TMemo;
    JvRichEditToHtml1: TJvRichEditToHtml;
    QMailing: TFDQuery;
    QMailingID: TIntegerField;
    QMailingTEXTO: TMemoField;
    DSPMailing: TDataSetProvider;
    CDSMailing: TClientDataSet;
    CDSMailingID: TIntegerField;
    CDSMailingTEXTO: TMemoField;
    JvRichEditToHtml2: TJvRichEditToHtml;
    procedure smtpStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: String);
    procedure smtpConnected(Sender: TObject);
    procedure smtpDisconnected(Sender: TObject);
    procedure EnviarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure smtpWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure smtpWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
  private
    { Private declarations }
    FCorreoDestino,FCCopia,
    FCorreoOrigen,
    FNombreServidorCorreo,
    FNombreCuentaCorreo,
    FDestinatario,
    FRemitente,
    FAsunto,
    FClave,
    FAutenticacion,
    FCuerpoCorreo:string;
    FAdjuntos:TStrings;
    FPuerto:Integer;
    FMetodoSSL:Integer;
  public
    MetodoSSL,UsaTLS,ModoSSL:Integer;
    SASL     :String;
    { Public declarations }
  published
    property CorreoDestino:String Read FCorreoDestino write FCorreoDestino;
    property CCopia:String Read FCCopia write FCCopia;
    property CorreoOrigen:String Read FCorreoOrigen Write FCorreoOrigen;
    property NombreServidorCorreo:String Read FNombreServidorCorreo Write FNombreServidorCorreo;
    property NombreCuentaCorreo:String Read FNombreCuentaCorreo Write FNombreCuentaCorreo;
    property Remitente :String Read FRemitente write FRemitente;
    property Destinatario :String Read FDestinatario write FDestinatario;
    property Asunto:String Read FAsunto Write FAsunto;
    property Autenticacion:String Read FAutenticacion Write FAutenticacion;
    property CuerpoCorreo:String Read FCuerpoCorreo Write FCuerpoCorreo;
    property Puerto:Integer Read FPuerto Write FPuerto;
    property Clave:String Read FClave Write FClave;
    property Adjuntos:TStrings Read FAdjuntos Write FAdjuntos;

  end;

var
  FormCorreo: TFormCorreo;

implementation

{$R *.DFM}

uses UDMain_FD;

procedure TFormCorreo.smtpStatus(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: String);
begin
  stBar.SimpleText:=AStatusText;
end;

procedure TFormCorreo.smtpConnected(Sender: TObject);
begin
  stBar.SimpleText:='Conectando al servicio de correo...';
end;

procedure TFormCorreo.smtpDisconnected(Sender: TObject);
begin
  stBar.SimpleText:='Mensaje enviado...';
end;

procedure TFormCorreo.smtpWork(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
   ProgressBar1.Position:=AWorkCount;
end;

procedure TFormCorreo.smtpWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
  ProgressBar1.Max:= smtp.MsgLineLength;
  ProgressBar1.Min:= 1;

end;

procedure TFormCorreo.EnviarExecute(Sender: TObject);
var Aux:String;
begin
 // mail.Create(self);
//  CorreoDestino:=Trim(edDireccion.Text);
  CorreoDestino:=Trim(edDireccion.Text);
  if CorreoDestino='' Then
    Raise Exception.Create('Falta correo destino...');

  CCopia:=Trim(edCopia.Text);

  with smtp do
   begin
     Port     := Puerto;
     Host     := NombreServidorCorreo;
     Username := NombreCuentaCorreo;
     Password := Clave;
   end;

   with mail do
   begin
     Recipients.Clear;
     Recipients.Add;
     Recipients[0].Name    := Destinatario;
     Recipients[0].Address := Trim(CorreoDestino);
     From.Name             := Remitente;
     From.Address          := CorreoOrigen;
     Subject               := Asunto;
     IsEncoded:=True;

     Body.Text             := edCuerpoMensaje.Text;
     if chbConfirmacion.Checked then
       ReceiptRecipient.Address  := CorreoOrigen;
     if Trim(CCopia)<>'' then
       begin
         //CCList.Clear;
         CCList.Add;
         CCList[0].Address :=Trim(FCCopia);
       end;
//      SaveToFile('C:\Correo_'+Destinatario,tRUE);
   end;
   Aux:=Copy(NombreServidorCorreo,pos('.',NombreServidorCorreo)+1,Length(NombreServidorCorreo));
   Aux:=Copy(Aux,1,pos('.',Aux)-1);

 //  smtp.IOHandler:=nil;
   if AnsiMatchStr(Aux,['gmail','hotmail']) or (Puerto=465) or (Puerto=587) then
     begin

       smtp.IOHandler := IdSSLIOHandlerSocketOpenSSL1;

       IdSSLIOHandlerSocketOpenSSL1.Port                   := puerto;
       IdSSLIOHandlerSocketOpenSSL1.Host                   := NombreServidorCorreo;
      // MetodoSSL :=6;

       case MetodoSSL of
         0: IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvSSLv2;
         1: IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvSSLv23;
         2: IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvSSLv3;
         3: IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvTLSv1;
         4: IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvTLSv1_1;
         5: IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvTLSv1_2;
         6: IdSSLIOHandlerSocketOpenSSL1.SSLOptions.SSLVersions := [sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2];
       end;
     //  (sslvSSLv2, sslvSSLv23, sslvSSLv3, sslvTLSv1,sslvTLSv1_1,sslvTLSv1_2)

       IdSSLIOHandlerSocketOpenSSL1.SSLOptions.VerifyMode  := [];
       IdSSLIOHandlerSocketOpenSSL1.SSLOptions.VerifyDepth := 0;

       case ModoSSL of
         0: IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode  := sslmUnassigned;
         1: IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode  := sslmClient;
         2: IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode  := sslmServer;
         3: IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode  := sslmBoth;
       end;

       case usaTls of
         0:smtp.UseTLS := utUseExplicitTLS;
         1:smtp.UseTLS := utNoTLSSupport;
         2:smtp.UseTLS := utUseImplicitTLS;
         3:smtp.UseTLS := utUseRequireTLS;
       end;
     end;

//   if (Adjunto<>'') then
//     TIdAttachmentFile.create(mail.MessageParts, Adjunto);
   //*************** Adjuntos *************
   for var I := 0 to Adjuntos.Count - 1 do
     if FileExists(Adjuntos[I]) then
       TIdAttachmentFile.Create(mail.MessageParts, Adjuntos[I]);


   try
     if smtp.Connected=False then
     smtp.Connect;
     try
       smtp.Send(mail);
     except
       on E: Exception do
         ShowMessage(E.Message);
     end;
   except
     ShowMessage('Coneccion a Servicio de correo interrumpida..');
     if smtp.Connected then
       smtp.Disconnect;
   end;

  Close;

  ProgressBar1.Position:=0;
end;

procedure TFormCorreo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action  :=caFree;
  Adjuntos.Clear;
end;

procedure TFormCorreo.FormCreate(Sender: TObject);
var ArchivoIni:TIniFile;
Archivo:TextFile;
S:string;
ReadStream:TStringStream;
begin
  AutoSize  :=True;
  FAdjuntos := TStringList.Create;
  IdSSLOpenSSLHeaders.Load;
  edDireccion.Text := FCorreoDestino;
  edCopia.Text     := FCCopia;

  ArchivoIni     := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  Puerto         := ArchivoIni.ReadInteger('Correo', 'puerto', 25);
  SASL           := ArchivoIni.ReadString('Correo',  'AutenticacionSASL', 'N');
  MetodoSSL      := ArchivoIni.ReadInteger('Correo', 'MetodoSSL', 0);
  UsaTLS         := ArchivoIni.ReadInteger('Correo', 'UsaTLS', 1);
  ModoSSL        := ArchivoIni.ReadInteger('Correo', 'Modo', 0);

  ArchivoIni.Free;

  CDSMailing.Close;
  CDSMailing.Open;

  CDSNotasCorreo.Close;
  CDSNotasCorreo.Open;

  if (Trim(CDSNotasCorreoTEXTO.AsString)<>'') Then
    edCuerpoMensaje.Text:=CDSNotasCorreoTEXTO.Text;

  if (Trim(CDSMailingTEXTO.AsString)<>'') Then
      edCuerpoMensaje.Text:=CDSMailingTEXTO.AsString;

  CDSNotasCorreo.Close;
  CDSMailing.Close;
end;

procedure TFormCorreo.FormDestroy(Sender: TObject);
begin
  FAdjuntos.Free;
  FormCorreo:=nil;
end;

procedure TFormCorreo.FormShow(Sender: TObject);
begin
  if NombreServidorCorreo='' then
    begin
      ShowMessage('Falta configurar el correo... ver en configuración local...');
      Close;
    end
  else
    begin
      if Autenticacion='S' Then
        begin
          if  SASL='N' Then
            smtp.AuthType :=satDefault else
          if  SASL='S' Then
            smtp.AuthType :=satSASL;
          //smtp.AuthType :=satDefault;
        end
      else
        smtp.AuthType :=satNone;

      edDireccion.Text:=CorreoDestino;
    end;
  edCopia.Text        := Trim(CCopia);

//  CDSNotasCorreo.Close;
//  CDSNotasCorreo.Open;
//  if (CDSNotasCorreoTEXTO.AsString<>'') then
//    edCuerpoMensaje.Text:= '';//CuerpoCorreo;
//
//  if (CDSNotasCorreoTEXTO.AsString<>'') and (Trim(edCuerpoMensaje.Text)='') then
//    edCuerpoMensaje.Text:=CDSNotasCorreoTEXTO.AsString;

  BringToFront;
  CDSNotasCorreo.Close;

end;

end.
