unit UReproweb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DateUtils , StrUtils, OpenSSLUtils, XMLDoc, XMLIntf,
  wsagr_h,wsagr_p,
  LoginCms_H,LoginCms_P,
  Vcl.ExtCtrls;
const
 // CNT_WSAA_DIRECTORIO_LLAVE = 'llaves\';
//  CNT_WSAA_LLVE_PRIVADA     = 'Privada2.key';
//  CNT_WSAA_CERTIFICADO      = 'Prueba2019.crt';
  CNT_WSAA_ARCHIVO_SALIDA   = 'TA.XML';
//  CNT_WSAA_CUIT_SOLICITANTE = '20129063662';

type
  TFormReproWeb = class(TForm)
    btConsultar: TButton;
    edCuitProveedor: TEdit;
    edRespuesta: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edPerido: TEdit;
    Label3: TLabel;
    pnCabecera: TPanel;
    pnBase: TPanel;
    Memo: TMemo;
    Panel1: TPanel;
    procedure btConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    FModo          : Integer;//H o P
    FCuitEmpresa   : String;
    FCuitProveedor : String;
    FClavePrivada  : String;
    FCertificado   : String;
    FPeriodo       : TDateTime;
    FCodigoReq     : String;

    { Private declarations }
    procedure ExtraerTokenSing(strArchivo: WideString; var strToken, strSign: WideString; var strFechaFinalizacion: string);
    function GenUniqueId(): Integer;
    function CrearFirma(strDirectorio: WideString): string;
    function VerificarFechaFinalizacion(StrFecha: string): boolean;

    function EnviaTicket_H(ta, strDirectorio: widestring): wsagr_h.Auth;
    procedure Consultar_H;

    function EnviaTicket_P(ta, strDirectorio: widestring): wsagr_p.Auth;
    procedure Consultar_P;

  public

    { Public declarations }
  published
    property Modo :Integer read FModo write FModo;
    property CuitEmpresa :String read FCuitEmpresa write FCuitEmpresa;
    property CuitProveedor :String read FCuitProveedor write FCuitProveedor;
    property ClavePrivada :String read FClavePrivada write FClavePrivada;
    property Certificado :String read FCertificado write FCertificado;
    property Periodo :TDateTime read FPeriodo write FPeriodo;
    property CodigoReq :String read FCodigoReq write FCodigoReq;
  end;

var
  FormReproWeb : TFormReproWeb;

implementation

uses
 LibEay32;
{$R *.dfm}

procedure TFormReproWeb.ExtraerTokenSing(StrArchivo: WideString; var StrToken, StrSign: WideString; var StrFechaFinalizacion: string);
var
   XML       : TXMLDocument;
   ChildNode : IXMLNode;
   i,j       : Integer;
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

procedure TFormReproWeb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (FCodigoReq<>'0') and
     (FCodigoReq<>'1') and
     (FCodigoReq<>'2') and
     (FCodigoReq<>'3') and
     (FCodigoReq<>'4') and
     (FCodigoReq<>'5') and
     (FCodigoReq<>'6') then FCodigoReq:='';

  Action:=caFree;

end;

procedure TFormReproWeb.FormCreate(Sender: TObject);
begin
 // AutoSize:=True;
end;

procedure TFormReproWeb.FormDestroy(Sender: TObject);
begin
  FormReproWeb:=nil;
end;

procedure TFormReproWeb.FormShow(Sender: TObject);
begin
  FCuitEmpresa         := AnsiReplaceText(FCuitEmpresa,'-','');
  FCuitProveedor       := AnsiReplaceText(FCuitProveedor,'-','');
  edPerido.Text        := FormatDateTime('MM/yyyy',FPeriodo);
  edCuitProveedor.Text := FCuitProveedor;
end;

function TFormReproWeb.GenUniqueId(): Integer;
var
  i: real;
  s: string;
begin
  s:= FloatToStr(now);
  i:= strtoFloat(s);
  Result := Trunc(i);
end;

procedure TFormReproWeb.Consultar_H;
var
  H            : wsagr_h.WSAgrSoap;
  oConsulta    : wsagr_h.ResConsulta;
  StrDirectorio: WideString;
  ResCodigo    : wsagr_h.ResConsultaCodResp;
  VCUit        : wsagr_h.Array_Of_long;
  Auto         : wsagr_h.Auth;
  Ta           : String;
  CodNdx:Integer;
begin
  StrDirectorio := ExtractFilePath(ParamStr(0));// + CNT_WSAA_DIRECTORIO_LLAVE;
  h             := wsagr_h.GetWSAgrSoap(True,'',nil);
  Ta            := CrearFirma(strDirectorio);
  Auto          := EnviaTicket_H(TA, strDirectorio);
  if (Auto <> nil) then
    begin
      SetLength(Vcuit,1);   //este es el tamaño del arreglo

      VCUit[0]   := StrToInt64(edCuitProveedor.Text);

      oConsulta := wsagr_h.ResConsulta.Create;
      oConsulta := h.Consulta(Auto, edPerido.Text, VCuit);

      Memo.Clear;
      Memo.Lines.Add('Perido            : '+ oConsulta.Det[0].Pdo);
      Memo.Lines.Add('Cod Respuesta     : '+ oConsulta.Det[0].Rsp);
      Memo.Lines.Add('Codigo Transaccion: '+ oConsulta.Det[0].RTran);
      Memo.Lines.Add('Fecha Transaccion : '+ oConsulta.Det[0].FTran);
      Memo.Lines.Add('Observaciones     : '+ oConsulta.Det[0].CodObs);

      if oConsulta.Det[0].Rsp<>'' then
        CodNdx:= StrToInt(oConsulta.Det[0].Rsp)
      else
        CodNdx:= 0;

      ResCodigo:= wsagr_h.ResConsultaCodResp.Create;
      ResCodigo:= h.ConsultaCodResp(Auto);

      Memo.Lines.Add('<<<<<< Respuesta >>>>>>>>>>>>');
      Memo.Lines.Add(ResCodigo.Rsp[CodNdx].Code+' - '+ResCodigo.Rsp[CodNdx].Msg);
      Memo.Lines.Add(ResCodigo.Rsp[CodNdx].Msg);

      edRespuesta.Text := ResCodigo.Rsp[CodNdx].Code+' - '+ ResCodigo.Rsp[CodNdx].Msg;
      FCodigoReq       := ResCodigo.Rsp[CodNdx].Code;

    end
  else
    begin
      FCodigoReq:= '';
      Memo.Lines.Add('********************************************************************');
      Memo.Lines.Add('*** ERROR: No se genero correctamente el código de autorización. ***');
      Memo.Lines.Add('********************************************************************');
    end;
end;

procedure TFormReproWeb.Consultar_P;
var
  H            : wsagr_P.WSAgrSoap;
  oConsulta    : wsagr_P.ResConsulta;
  StrDirectorio: WideString;
  ResCodigo    : wsagr_P.ResConsultaCodResp;
  VCUit        : wsagr_P.Array_Of_long;
  Auto         : wsagr_P.Auth;
  Ta           : String;
  CodNdx:Integer;
begin
  StrDirectorio := ExtractFilePath(ParamStr(0));// + CNT_WSAA_DIRECTORIO_LLAVE;
  h             := wsagr_P.GetWSAgrSoap(True,'',nil);
  Ta            := CrearFirma(strDirectorio);
  Auto          := EnviaTicket_P(TA, strDirectorio);
  if (Auto <> nil) then
    begin
      SetLength(Vcuit,1);   //este es el tamaño del arreglo

      VCUit[0]  := StrToInt64(edCuitProveedor.Text);

      oConsulta := wsagr_P.ResConsulta.Create;
      oConsulta := H.Consulta(Auto,edPerido.Text, VCuit);

      Memo.Clear;
      Memo.Lines.Add('Perido            : '+ oConsulta.Det[0].Pdo);
      Memo.Lines.Add('Cod Respuesta     : '+ oConsulta.Det[0].Rsp);
      Memo.Lines.Add('Codigo Transaccion: '+ oConsulta.Det[0].RTran);
      Memo.Lines.Add('Fecha Transaccion : '+ oConsulta.Det[0].FTran);
      Memo.Lines.Add('Observaciones     : '+ oConsulta.Det[0].CodObs);

      CodNdx:= StrToInt(oConsulta.Det[0].Rsp);

      ResCodigo := wsagr_P.ResConsultaCodResp.Create;
      ResCodigo := h.ConsultaCodResp(Auto);

      Memo.Lines.Add('<<<<<< Respuesta >>>>>>>>>>>>');
      Memo.Lines.Add(ResCodigo.Rsp[CodNdx].Code+' - '+ResCodigo.Rsp[CodNdx].Msg);
      Memo.Lines.Add(ResCodigo.Rsp[CodNdx].Msg);

      edRespuesta.Text := ResCodigo.Rsp[CodNdx].Code+' - '+ ResCodigo.Rsp[CodNdx].Msg;
      FCodigoReq       := ResCodigo.Rsp[CodNdx].Code;

    end
  else
    begin
      FCodigoReq:= '';
      Memo.Lines.Add('********************************************************************');
      Memo.Lines.Add('*** ERROR: No se genero correctamente el código de autorización. ***');
      Memo.Lines.Add('********************************************************************');
    end;

end;

function TFormReproWeb.CrearFirma(StrDirectorio: WideString): String;
var
  Signer   : TMessageSigner;
  Ruta     : Pwidechar;
  Firma    : String;
  Position : integer;
  FGeneracion,FExpiracion: TDateTime;
  Fichero: TextFile;
begin

  ruta        := Pwidechar(strDirectorio);

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
                         '<service>wsagr</service>' +
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

function TFormReproWeb.VerificarFechaFinalizacion(strFecha: string): boolean;
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

function TFormReproWeb.EnviaTicket_H(ta, strDirectorio: widestring): wsagr_h.Auth;
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

function TFormReproWeb.EnviaTicket_P(ta, strDirectorio: widestring): wsagr_p.Auth;
var
  WS_P                 : LoginCms_P.LoginCMS;
  oStringList          : TStringList;
  StrArchivo           : WideString;
  StrToken, strSign    : WideString;
  StrFechaFinalizacion : string;
  oAutenticacion       : wsagr_p.Auth;
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
    oAutenticacion       := wsagr_P.Auth.Create;
    oAutenticacion.Token := StrToken;
    oAutenticacion.Sign  := StrSign;
//    oAutenticacion.Cuit  := StrToInt64(CNT_WSAA_CUIT_SOLICITANTE);
    oAutenticacion.Cuit  := StrToInt64(FCuitEmpresa);
  end;
  Result := oAutenticacion;
end;

procedure TFormReproWeb.btConsultarClick(Sender: TObject);
begin
  if FModo=0 then //Prueba
    Consultar_H
  else
    if FModo=1 then // Produccion
      Consultar_P;
end;

end.
