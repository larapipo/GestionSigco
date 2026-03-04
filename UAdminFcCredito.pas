unit UAdminFcCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, DateUtils , StrUtils, OpenSSLUtils, XMLDoc, XMLIntf,
  Vcl.ComCtrls, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  wsagr_h,wsagr_p,
  LoginCms_H,LoginCms_P,
  FECredService_H,
  FECredService_P,
  Vcl.Buttons;

const
  CNT_WSAA_ARCHIVO_SALIDA   = 'TACREDITO.XML';

type
  TFormAdministracionFcCredito = class(TForm)
    pnPrincipal: TPanel;
    pnPie: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    pnCabezera: TPanel;
    Panel1: TPanel;
    btConsultaComporbantes: TBitBtn;
    ActionList1: TActionList;
    ConsultarComprobantes: TAction;
    procedure ConsultarComprobantesExecute(Sender: TObject);
  private
    FModo          : Integer;//H o P
    FCuitEmpresa   : String;
    FClavePrivada  : String;
    FCertificado   : String;

    { Private declarations }
    procedure ExtraerTokenSing(strArchivo: WideString; var strToken, strSign: WideString; var strFechaFinalizacion: string);
    function GenUniqueId(): Integer;
    function CrearFirma(strDirectorio: WideString): string;
    function VerificarFechaFinalizacion(StrFecha: string): boolean;

    function EnviaTicket_H(ta, strDirectorio: widestring): wsagr_h.Auth;
    function EnviaTicket_P(ta, strDirectorio: widestring): FECredService_P.AuthRequestType;
   public
    { Public declarations }
   published

     property Modo :Integer read FModo write FModo;
     property CuitEmpresa :String read FCuitEmpresa write FCuitEmpresa;
     property ClavePrivada :String read FClavePrivada write FClavePrivada;
     property Certificado :String read FCertificado write FCertificado;

  end;

var
  FormAdministracionFcCredito: TFormAdministracionFcCredito;

implementation

{$R *.dfm}

{ TFormAdministracionFcCredito }


procedure TFormAdministracionFcCredito.ConsultarComprobantesExecute(
  Sender: TObject);
var
  StrDirectorio: String;

  H            : FECredService_P.FECredServicePortType;
  Ta           : String;
  Auto         : FECredService_P.AuthRequestType;
  Consulta     : FECredService_P.ConsultarMontoObligadoRecepcionReturnType;
  Respuesta    : FECredService_P.ConsultarMontoObligadoRecepcionRequestType;
begin
  StrDirectorio := ExtractFilePath(ParamStr(0));
  h             := FECredService_P.GetFECredServicePortType(True,'',nil);
  Ta            := CrearFirma(strDirectorio);
  Auto          := EnviaTicket_P(TA, strDirectorio);
  if (Auto <> nil) then
    begin
       Consulta := FECredService_P.ConsultarMontoObligadoRecepcionReturnType.Create;
       //Consulta := H.consultarMontoObligadoRecepcion(RESPUESTA);
       //Consulta.authRequest;

    end;

end;

function TFormAdministracionFcCredito.CrearFirma( strDirectorio: WideString): string;
var
  Signer   : TMessageSigner;
 // Ruta     : Pwidechar;
  Firma    : String;
  Position : integer;
  FGeneracion,FExpiracion: TDateTime;

begin

 // ruta        := Pwidechar(strDirectorio);

  FGeneracion := now();
  FExpiracion := IncMinute(FGeneracion, 300);

  Signer      := TMessageSigner.Create;

//  Signer.LoadPrivateKey( Ruta + CNT_WSAA_LLVE_PRIVADA, '');
//  Signer.LoadCertificate(Ruta + CNT_WSAA_CERTIFICADO);

  Signer.LoadPrivateKey(FClavePrivada, '');
  Signer.LoadCertificate(FCertificado);

  Signer.PlainMessage := '<?xml version="1.0" encoding="UTF-8" ?>'+
                         '<loginTicketRequest version="1.0">'+
                         '<header>'+
                         '<uniqueId>' + IntToStr(GenUniqueId()) + '</uniqueId>'+
                         '<generationTime>' + formatdatetime('yyyy-MM-dd', fgeneracion) + 'T' + formatdatetime('hh:mm', fgeneracion) + ':00-03:00</generationTime>' +
                         '<expirationTime>' + formatdatetime('yyyy-MM-dd', fexpiracion) + 'T' + formatdatetime('hh:mm', fexpiracion) + ':00-03:00</expirationTime>' +
                         '</header>' +
                         '<service>"wsfecred</service>' +
                         '</loginTicketRequest>';

  Signer.MIMESign;

  Firma    := Signer.SignedMessage;
  Firma    := Rightstr(Firma, length(Firma) - 188); // *********** AGREGUE 2
  Position := AnsiPos('==', Firma);

  if Modo=0 then
    begin
      if Position <> 0 then
        delete(Firma, Position + 2, Length(Firma)); //******** SUME 2 A LA POSICION PARA QUE INCLUYA LOS ==
  //    Firma := LeftStr(Firma, Length(Firma) - 1);
    end;

//  AssignFile(Fichero, strDirectorio+'\firma.txt');
//  Rewrite(Fichero);
//  Write(Fichero, Firma);
//  CloseFile(Fichero);
  Result := Firma;
end;

function TFormAdministracionFcCredito.EnviaTicket_H(ta, strDirectorio: widestring): wsagr_h.Auth;
var
  WS_H                 : LoginCMS_H.LoginCMS;
  oStringList          : TStringList;
  StrArchivo           : WideString;
  StrToken, strSign    : WideString;
  StrFechaFinalizacion : string;
  oAutenticacion       : wsagr_h.Auth;
  bNuevaBusqueda       : boolean;
begin
  oAutenticacion := nil;
  strArchivo     := strDirectorio + CNT_WSAA_ARCHIVO_SALIDA;
  ExtraerTokenSing(strArchivo, strToken, strSign, strFechaFinalizacion);
  bNuevaBusqueda := not(VerificarFechaFinalizacion(strFechaFinalizacion));

  if ((trim(strFechaFinalizacion) = '') Or (bNuevaBusqueda = true)) then
    begin
      oStringList      := TStringList.Create();
      WS_H             := LoginCms_H.GetLoginCMS;
      oStringList.Text := WS_H.loginCms(ta);
      oStringList.SaveToFile(strArchivo);
      oStringList.Free;
      ExtraerTokenSing(strArchivo, strToken, strSign, strFechaFinalizacion);
    end;

  if (trim(strFechaFinalizacion) <> '') then
  begin
    oAutenticacion       := wsagr_h.Auth.Create;
    oAutenticacion.Token := StrToken;
    oAutenticacion.Sign  := StrSign;
//    oAutenticacion.Cuit  := StrToInt64(CNT_WSAA_CUIT_SOLICITANTE);
    oAutenticacion.Cuit  := StrToInt64(FCuitEmpresa);
  end;
  Result := oAutenticacion;
end;

function TFormAdministracionFcCredito.EnviaTicket_P(ta,strDirectorio: widestring): FECredService_P.AuthRequestType;
var
  WS_P                 : LoginCms_P.LoginCMS;
  oStringList          : TStringList;
  StrArchivo           : WideString;
  StrToken, strSign    : WideString;
  StrFechaFinalizacion : string;
  oAutenticacion       : FECredService_P.AuthRequestType;
  bNuevaBusqueda       : boolean;
begin
  oAutenticacion := nil;
  strArchivo     := strDirectorio + CNT_WSAA_ARCHIVO_SALIDA;
  ExtraerTokenSing(strArchivo, strToken, strSign, strFechaFinalizacion);
  bNuevaBusqueda := not(VerificarFechaFinalizacion(strFechaFinalizacion));

  if ((trim(strFechaFinalizacion) = '') Or (bNuevaBusqueda = true)) then
    begin
      oStringList      := TStringList.Create();
      WS_p             := LoginCms_p.GetLoginCMS;
      oStringList.Text := WS_P.loginCms(ta);
      oStringList.SaveToFile(strArchivo);
      oStringList.Free;
      ExtraerTokenSing(strArchivo, strToken, strSign, strFechaFinalizacion);
    end;

  if (trim(strFechaFinalizacion) <> '') then
  begin
    oAutenticacion       := FECredService_P.AuthRequestType.Create;
    oAutenticacion.Token := StrToken;
    oAutenticacion.Sign  := StrSign;
//    oAutenticacion.Cuit  := StrToInt64(CNT_WSAA_CUIT_SOLICITANTE);
    oAutenticacion.cuitRepresentada  := StrToInt64(FCuitEmpresa);
  end;
  Result := oAutenticacion;
end;

procedure TFormAdministracionFcCredito.ExtraerTokenSing(strArchivo: WideString;
  var strToken, strSign: WideString; var strFechaFinalizacion: string);
var
   XML       : TXMLDocument;
   ChildNode : IXMLNode;

begin
  StrToken             := '';
  StrSign              := '';
  StrFechaFinalizacion := '';
  if FileExists(StrArchivo) then
    begin
      XML := TXMLDocument.Create(Self);
      try
        XML.Active := True;
        // Carga el archivo creado
        XML.LoadFromFile(StrArchivo);
        // Lee un Nodo o Registro
        ChildNode            := XML.DocumentElement.ChildNodes[0];
        StrFechaFinalizacion := ChildNode.ChildNodes['expirationTime'].Text;
        ChildNode            := XML.DocumentElement.ChildNodes[1];
        StrToken             := ChildNode.ChildNodes['token'].Text;
        StrSign              := ChildNode.ChildNodes['sign'].Text;
        XML.Active           := False;
      finally
        XML := nil;
      end;
    end;
end;

function TFormAdministracionFcCredito.GenUniqueId: Integer;
var
  i: real;
  s: string;
begin
  s:= FloatToStr(now);
  i:= strtoFloat(s);
  Result := Trunc(i);
end;

function TFormAdministracionFcCredito.VerificarFechaFinalizacion(
  StrFecha: string): boolean;
var
  bFechaValida        : boolean;
  dtFechaFinalizacion : TDateTime;
  oFormatFecha        : TFormatSettings;
begin
  bFechaValida := False;
  if (trim(strFecha) <> '') then
    begin
      strFecha := LeftStr(strFecha, 19);
      with oFormatFecha do
        begin
          ShortDateFormat := 'yyyy-MM-dd';
          DateSeparator   := '-';
          TimeSeparator   := ':';
        end;
      dtFechaFinalizacion := StrToDateTime(strFecha, oFormatFecha);
      dtFechaFinalizacion := IncMinute(dtFechaFinalizacion, -60);
      bFechaValida        := (now() < dtFechaFinalizacion);
    end;
  Result := bFechaValida;
end;

end.
