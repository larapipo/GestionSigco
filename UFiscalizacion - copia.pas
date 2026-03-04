unit UFiscalizacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,Provider, DBClient,Math,IniFiles, ComCtrls,
  Buttons, IdBaseComponent, IdComponent, IdRawBase, IdRawClient, IdIcmpClient,WInInet,
  Vcl.OleServer, FEAFIPLib_TLB,Librerias, Vcl.Menus, AdvCombo, ColCombo,Registry;
  {$D+}
type
  TFormFiscalizacion = class(TForm)
    sbEstado: TStatusBar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lbCAEAnterior: TLabel;
    lbVtoAnterior: TLabel;
    edNumero: TEdit;
    edCAE: TEdit;
    edVencimiento: TEdit;
    btCerrar: TButton;
    btFiscalizar: TBitBtn;
    edPuntoVta: TEdit;
    edAnterior: TEdit;
    chbCerrar: TCheckBox;
    btFiscalizar2: TBitBtn;
    Label6: TLabel;
    edNumeroActual: TEdit;
    edCaeOtorgado: TEdit;
    Label7: TLabel;
    edVto: TEdit;
    Label8: TLabel;
    btBuscar: TBitBtn;
    chFecha: TCheckBox;
    ChImprimir: TCheckBox;
    TabSheet3: TTabSheet;
    MemoConsulta: TMemo;
    btConsultaCpbtes: TBitBtn;
    IdIcmpClient: TIdIcmpClient;
    chVerLog: TCheckBox;
    mLog: TMemo;
    chAplicaAjuste: TCheckBox;
    edNroFactura: TEdit;
    Label9: TLabel;
    chbControlaNumeracion: TCheckBox;
    chbNCRechazada: TCheckBox;
    PopupMenu1: TPopupMenu;
    VerificarConeccion1: TMenuItem;
    btProxy: TButton;
    cbProxys: TColumnComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btCerrarClick(Sender: TObject);
    procedure btFiscalizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure btFiscalizar2Click(Sender: TObject);
    procedure btConsultaCpbtesClick(Sender: TObject);
    procedure VerificarConeccion1Click(Sender: TObject);
    procedure btProxyClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    FResultado     : WideString;
    FPtoVenta      : Integer;
    FTipoComp      : Integer;
    FCAE           : WideString;
    FVencimiento   : WideString;
    FNombre        : WideString;
    FDomicilio     : WideString;
    FNumero        : Double;
    FNumeroActual  : Double;
    FFechaVta      : WideString;
    FFechaVto      : WideString;
    FFecha         : WideString;
    FCuitVdor      : Extended;
    FCuitComp      : Extended;
    FCuitPais      : Extended;
    FTotal         : Extended;
    FTotalExento   : Extended;
    FTotalNetoNoGrav : Extended;
    FTotalNeto     : Extended;
    FTotalIIBB     : Extended;
    FTasaIIBB      : Extended;
    FBaseImpIIBB   : Extended;
    FID_Comprobante: String;
    FTipoNumero    : String;
    FDatosImp,
    FDatosDet      : TClientDataSet;
    FRevision      : Boolean;
    FAjustar       : Boolean;
    FImprimir      : Boolean;
    FURLWSAA       : String;
    FURLWSW        : String;
    FURLWSW_EX     : String;
    FTipoDocumento : Integer;
    FMoneda        : Integer;
    FProcesoOk     : Boolean;
    FMonedaCotiz   : Double;
    FCbu           : String;
    FAsociado_Tipo     :Integer;
    FAsociado_PtoVta   :Integer;
    FAsociado_Nro      :Double;
    FAsociado_CpbteFch :String;

  public
    { Public declarations }
    Certificado,Clave:String;
    ArchivoIni       :TIniFile;
    IdTransferencia  :Double;
    UltimaFechaVta   :WideString;
    FileLog          :TextFile;
    DirectorioLog    :String;
    NombreArchivo    :String;
    procedure MensajeEstado(Cadena:String);
    procedure Fiscalizar;
    procedure Fiscalizar_E;
    procedure Consultar;
    procedure Consultar_E;
    procedure ConsultarPorNro;
    function HayInternet: boolean;
    function SetConnectionOptions(ProxyName: String; ProxyOverride: String; Use:bool): bool;
    procedure EnableProxy(Server: String);
  published

    Property Resultado:WideString read FResultado write FResultado;
    Property PtoVenta:Integer read FPtoVenta write FPtoVenta;
    Property TipoComp:Integer read FTipoComp write FTipoComp;
    Property CAE:WideString read FCAE write FCAE;
    Property Vencimiento:WideString read FVencimiento write FVencimiento;
    Property Nombre:WideString read FNombre write FNombre;
    Property ID_Comprobante:String read FID_Comprobante write FID_Comprobante;
    Property TipoNumero:String read FTipoNumero write FTipoNumero;
    Property Domicilio:WideString read FDomicilio write FDomicilio;
    Property Numero:Double read FNumero write FNumero;
    Property CuitVdor:Extended read FCuitVdor write FCuitVdor;
    Property CuitComp:Extended read FCuitComp write FCuitComp;
    Property CuitPais:Extended read FCuitPais write FCuitPais;
    Property FechaVta:WideString read FFechaVta write FFechaVta;
    Property FechaVto:WideString read FFechaVto write FFechaVto;
    Property Total:Extended read FTotal write FTotal;
    Property TotalExento:Extended read FTotalExento write FTotalExento;
    Property TotalNetoNoGrav:Extended read FTotalNetoNoGrav write FTotalNetoNoGrav;
    Property TotalNeto:Extended read FTotalNeto write FTotalNeto;
    Property TotalIIBB:Extended read FTotalIIBB write FTotalIIBB;
    Property TasaIIBB:Extended read FTasaIIBB write FTasaIIBB;
    Property BaseImpIIBB:Extended read FBaseImpIIBB write FBaseImpIIBB;
    Property DatosImp:TClientDataSet read FDatosImp write FDatosImp;
    Property DatosDet:TClientDataSet read FDatosDet write FDatosDet;
    Property URLWSAA:String read FURLWSAA write FURLWSAA;// = 'https://wsaahomo.afip.gov.ar/ws/services/LoginCms';
    Property URLWSW:String read FURLWSW write FURLWSW;// = 'https://wswhomo.afip.gov.ar/wsfev1/service.asmx';
    Property URLWSW_EX:String read FURLWSW_EX write FURLWSW_EX;// = 'https://wswhomo.afip.gov.ar/wsfexv1/service.asmx';
    Property TipoDocumento:Integer read FTipoDocumento write FTipoDocumento;
    Property NumeroActual:Double read FNumeroActual write FNumeroActual;
    Property Revision:Boolean read FRevision write FRevision;
    Property Ajustar:Boolean read FAjustar write FAjustar;
    Property Imprimir:Boolean read FImprimir write FImprimir;
    property ProcesoOk:Boolean read FProcesoOk write  FProcesoOk;
    property Moneda:Integer read FMoneda write  FMoneda;
    property MonedaCotiz:Double read FMonedaCotiz write FMonedaCotiz;
    property Cbu:String read FCbu write FCbu;

    property Asociado_Tipo:Integer read FAsociado_Tipo write FAsociado_Tipo;
    property Asociado_PtoVta :Integer read FAsociado_PtoVta write FAsociado_PtoVta;
    property Asociado_Nro :Double read FAsociado_Nro write FAsociado_Nro;
    property Asociado_CpbteFch :String read FAsociado_CpbteFch write FAsociado_CpbteFch;
  end;

type
  INTERNET_PER_CONN_OPTION = record
  dwOption: DWORD;
  case integer of
    0:(dwValue:  DWORD;);
    1:(pszValue:  LPTSTR;);
    2:(ftValue:   FILETIME;);
  end;
  LPINTERNET_PER_CONN_OPTION = ^INTERNET_PER_CONN_OPTION;

type
  INTERNET_PER_CONN_OPTION_LIST = record
  dwSize:        DWORD;
  pszConnection: LPTSTR;
  dwOptionCount: DWORD;
  dwOptionError: DWORD;
  pOptions: LPINTERNET_PER_CONN_OPTION;
  end;
  LPINTERNET_PER_CONN_OPTION_LIST = ^INTERNET_PER_CONN_OPTION_LIST;

  var
  FormFiscalizacion: TFormFiscalizacion;

implementation

{$R *.dfm}
uses
  DMMainForm_2; // Generarla Importando el TypeLib despues de Registrar la Dll
var  wsfev1: Iwsfev1;
     wsfex1: Iwsfexv1;
     ClaseCertificado : ICertificado;
const
//tipos de comprobantes
  FACTURAS_A         = 001;   NOTAS_DEBITO_A     = 002;
  NOTAS_CREDITO_A    = 003;   RECIBOS_A          = 004;
  CONTADO_A          = 005;   FACTURAS_B         = 006;
  NOTAS_DEBITO_B     = 007;   NOTAS_CREDITO_B    = 008;
  RECIBOS_B          = 009;   CONTADO_B          = 010;
  FACTURAS_C         = 011;   NOTAS_DEBITO_C     = 012;
  NOTAS_CREDITO_C    = 013;   DOCUMENTO_ADUANERO = 014;
  RECIBOS_C          = 015;   CONTADO_C          = 016;
  FACTURAS_EXPORTACION  = 019; NOTAS_DEBITO_EXTERIOR=020;
  NOTAS_CREDITO_EXTERIOR =021; FACTURAS_PERMISO_EXPORTACION_SIMPLIFICADO =022;

  CUIT =80;
  CUIL =86;
  DNI  =96;
  SINCLASIFICAR =99;
// **** Tipo de IVA ****
  NOGRAVDO =1;//  1	No Gravado
  EXENTO   =2;//  2	Exento
  CEROIVA  =3;//  3	0%
  IVA105   =4;//  4	10.50%
  IVA21    =5;//  5	21%
  IVA27    =6;//  6	27%


procedure TFormFiscalizacion.MensajeEstado(Cadena:String);
begin
  mLog.Lines.Add(DateTimeToStr(now)+':'+cadena);

  if FileExists(NombreArchivo) then
    Append(FileLog)
  else
    Rewrite(FileLog);

  WriteLn( FileLog, DateTimeToStr(now)+':'+cadena);

end;


function TFormFiscalizacion.SetConnectionOptions(ProxyName, ProxyOverride: String; Use: bool): bool;
var
    list: INTERNET_PER_CONN_OPTION_LIST;
    dwBufSize: DWORD;
    Options: array[0..2] of INTERNET_PER_CONN_OPTION;
begin
    dwBufSize:= sizeof(list);

    // Rellenammos lo básico de la estructura list.
    list.dwSize:= sizeof(list);

    // NULL == LAN, en otro caso es el nombre de la conexión.
    list.pszConnection:= nil;

    // Vamos a trabajar con tres opciones.
    list.dwOptionCount:= 3;
    list.pOptions:= @(Options[0]);

    // flags.
    Options[0].dwOption:= 1; //INTERNET_PER_CONN_FLAGS;
    if(Use) then
      Options[0].dwValue:= 1 or 2 //PROXY_TYPE_DIRECT or PROXY_TYPE_PROXY;
    else
      Options[0].dwValue:= 0;

    // proxy name.
    Options[1].dwOption:= 2; //INTERNET_PER_CONN_PROXY_SERVER;
    Options[1].pszValue:= PCHAR(ProxyName);

    // proxy override.
    Options[2].dwOption:= 3; //INTERNET_PER_CONN_PROXY_BYPASS;
    Options[2].pszValue:= PCHAR(ProxyOverride);
    list.pOptions:= @(Options[0]);
    // options on the connection.
    Result:= InternetSetOption(nil, 75 {INTERNET_OPTION_PER_CONNECTION_OPTION}, @list, dwBufSize);

    // Obligamos a refrescar y notificamos el cambio al sistema...
    InternetSetOption(0, INTERNET_OPTION_REFRESH, 0, 0);
    InternetSetOption(0, INTERNET_OPTION_SETTINGS_CHANGED, 0, 0);
end;

procedure TFormFiscalizacion.VerificarConeccion1Click(Sender: TObject);
begin
  VerificarConeccion1.Checked:=not(VerificarConeccion1.Checked);
end;

//function WebIng(URL: PCHAR): boolean;
//var
//  hNet, hUrl: Pointer;
//  BytesRead: DWORD;
//  Buffer: array [0..64] of char;
//begin
//  Result    := false;
//  BytesRead := 0;
//
//  if InternetAttemptConnect(0) <> ERROR_SUCCESS then exit;
//
//  hNet:= InternetOpen('WebIng', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
//  if hNet <> nil then
//  begin
//    hUrl:= InternetOpenUrl(hNet, URL, nil, 0, INTERNET_FLAG_RELOAD {or INTERNET_FLAG_NO_AUTH}, 0);
//    if hUrl <> nil then
//    begin
//      ZeroMemory(@Buffer[0], sizeof(Buffer));
//      Result := InternetReadFile(hUrl, @Buffer[0], sizeof(Buffer), BytesRead);
//      Result := Result and (BytesRead > 0);
//      InternetCloseHandle(hUrl);
//    end;
//    InternetCloseHandle(hNet);
//  end;
//  Result:= Result and (Pos('Accesso Denegado', Buffer) = 0);
//end;


procedure TFormFiscalizacion.btFiscalizar2Click(Sender: TObject);
begin
  if Trim(edCaeOtorgado.Text)<>'' then
    begin
      FResultado   := 'A';
      FNumero      := FNumeroActual;
      FCAE         := edCaeOtorgado.Text;
      FVencimiento := edVto.Text;
      FRevision    := True;
      btCerrar.Click;
    end
  else
    ShowMessage('No Hay CAE para Asignar....');
end;

function TFormFiscalizacion.HayInternet: boolean;
const
  SITIOS: array[1..2] of string =('www.google.com.ar','www.yahoo.com');
var
  i: Integer;
begin
  Result:= True;
//  i:= 0;
//  begin
//    IdIcmpClient.Host:= 'www.google.com.ar';//  'wswhomo.afip.gov.ar';
//    try
//      IdIcmpClient.Ping;
//      result := ( IdICMPClient.ReplyStatus.BytesReceived > 0 );
//    except
//      Result:= False;
//    end;
//  end;

//  if VerificarConeccion1.Checked then
//    begin
//      MensajeEstado('Haciendo PING https://wswhomo.afip.gov.ar.........');
//
//      if WebIng(PCHAR('https://wswhomo.afip.gov.ar')) then
//        Result:=True
//      else
//        Result:= False;
//
//      if Result then
//        MensajeEstado('PING Positivo....')
//      else
//        MensajeEstado('PING Fallido....');
//    end
//  else
//    MensajeEstado('Verificacion Coneccion Omitida....');

end;

//Llamada:
procedure TFormFiscalizacion.btFiscalizarClick(Sender: TObject);
begin
  MensajeEstado('Clik en Boton Fiscalizar...........');
  if (Trim(FCAE)='') then
    begin
      MensajeEstado('Comienza proceso de Fiscalizar...........');
      btFiscalizar.Enabled:=False;
      if (FTipoComp=19) or (FTipoComp=21) then Fiscalizar_E else
        Fiscalizar;
    end
  else
    MensajeEstado('No se Inicia , Existe CAE (Clik Fiscalizar)...........');
 // btFiscalizar.Enabled:=True;

end;


procedure TFormFiscalizacion.btProxyClick(Sender: TObject);
begin
 // SetConnectionOptions('proxy.mi.empresa-data.com:8080', '', true);
//  SetConnectionOptions(cbProxys.ToString.Items( 'proxy.mi.empresa-data.com:8080', '', true);
  ShowMessage(cbProxys.ColumnItems[cbProxys.ItemIndex,0]+':'+
              cbProxys.ColumnItems[cbProxys.ItemIndex,1]);
  if Trim(cbProxys.ColumnItems[cbProxys.ItemIndex,1])='' then
    begin
      SetConnectionOptions('','', True);
   //   EnableProxy('');
    end
  else
    SetConnectionOptions(cbProxys.ColumnItems[cbProxys.ItemIndex,0]+':'+
                         cbProxys.ColumnItems[cbProxys.ItemIndex,1], '', true);

  end;

procedure TFormFiscalizacion.btConsultaCpbtesClick(Sender: TObject);
var respuesta:WideString;
begin
 // ClaseCertificado:=coCertificado.Create;
  MemoConsulta.Lines.Clear;
  wsfev1.ParamGetTiposCbte(respuesta);
  MemoConsulta.Lines.Add(respuesta);
 // if ClaseCertificado.CargarInformacionCertificado(Certificado,Clave) Then
 // ClaseCertificado.MostrarInformacionCertificado;
//  FreeAndNil(ClaseCertificado);
  //ShowMessage(respuesta);
end;

procedure TFormFiscalizacion.btBuscarClick(Sender: TObject);
begin
  ConsultarPorNro;
end;

procedure TFormFiscalizacion.btCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TformFiscalizacion.Consultar;
VAR OldCAE,OldVto:WideString;
ROk:Boolean;
begin
  wsfev1.CUIT := FCuitVdor;  //20129063662; // Cuit del vendedor
  wsfev1.URL  := URLWSW;
  MensajeEstado('Varificando Internet desde procedimiento Consultar ...');

  //    if wsfev1.login('C:\OpenSSL-WIn32\bin\Claves\certificado.crt', 'C:\OpenSSL-WIn32\bin\Claves\privada.key', URLWSAA) then
  if HayInternet then
    begin
      MensajeEstado('Login desde Inicio de Consulta...');
      if wsfev1.login(Certificado,Clave,URLWSAA) then
        begin
          MensajeEstado('Login Ok.....');
          ROk:=True;
          try
            MensajeEstado('Recuperando Ultimo Comprobante ... Pto de Vta>'+IntToStr(FPtoVenta)+' Tipo Comp>'+IntToStr(FTipoComp));

            try
              ROk:=wsfev1.RecuperaLastCMP(FPtoVenta, FTipoComp, FNumero);
            except
              ROk:=False;
              MensajeEstado(wsfev1.ErrorDesc+#13+'Fallo Intento Recuperar Ultimo Nro (AFIP) ...Pto de Vta>'+IntToStr(FPtoVenta)+' Tipo COmp>'+IntToStr(FTipoComp));
            end;

            // esta linea precedia antes.... para no hacer dos veces lo mismo cambio a la variable ROk
            // if not wsfev1.RecuperaLastCMP(FPtoVenta, FTipoComp, FNumero) then
            if not ROk then
              begin
                MensajeEstado(' Error Recuperando (AFIP) Ultimo Comprobante ...Pto de Vta>'+IntToStr(FPtoVenta)+' Tipo COmp>'+IntToStr(FTipoComp));
                ShowMessage (wsfev1.ErrorDesc);
                Exit;
                btCerrar.Click;
              end
            else
              begin
                if (varisnull(FNumero)) then
                  FNumero:=0;
                //**************************************************************
                // A revisar o terminar
//                with DMMain_2 DO
//                  begin
//                    QBuscaNroFac.Close;
//                    QBuscaNroFac.ParamByName('letra').Value    :=Letra;
//                    QBuscaNroFac.ParamByName('sucfac').Value   :=SucFac;
//                    QBuscaNroFac.ParamByName('numfac').Value   :=NumFac;
//                    QBuscaNroFac.ParamByName('sucursal').Value :=Sucursal;
//                    if ((tipo='FC') or (Tipo='FO') or (Tipo='TK') ) then
//                      begin
//                        if ((tipo='FC') or (Tipo='FO')) then
//                          begin
//                            QBuscaNroFac.ParamByName('tipo').Value     :='FC';
//                            QBuscaNroFac.ParamByName('tipo2').Value    :='FO';
//                          end
//                        else
//                          if (tipo='TK') then
//                            begin
//                              QBuscaNroFac.ParamByName('tipo').Value     :='TK';
//                              QBuscaNroFac.ParamByName('tipo2').Value    :='TK';
//                            end
//                      end
//                    else
//                      if (tipo='NC') then
//                        begin
//                          QBuscaNroFac.ParamByName('tipo').Value     :='NC';
//                          QBuscaNroFac.ParamByName('tipo2').Value    :='NC';
//                        end
//                      else
//                        if (tipo='ND') then
//                          begin
//                            QBuscaNroFac.ParamByName('tipo').Value     :='ND';
//                            QBuscaNroFac.ParamByName('tipo2').Value    :='ND';
//                          end;
//                    QBuscaNroFac.Open;
//                    Result := QBuscaNroFac.Fields[0].AsString<>'';
//                    QBuscaNroFac.Close;
//                    if Result then
//                      ShowMessage('Este numero ya está ingresado para esta sucursal ....(..)');
//                  end;
                //**************************************************************
                MensajeEstado('Ultimo Comprobante ...> '+FloatToStr(FNumero));
                MensajeEstado('Trayendo CAE del Ultimo Comprobante ...> '+FloatToStr(FNumero));
                if wsfev1.CmpConsultar(FTipoComp,FPtoVenta, FNumero,OldCAE,OldVto) then
                  begin
                    if (varisnull(FNumero)) then
                      FNumero:=0;
                    lbCAEAnterior.Caption:='CAE.:'+OldCAE;
                    lbVtoAnterior.Caption:='Vto.:'+OldVto;
                    MensajeEstado('CAE del Ultimo Comprobante ...> '+OldCAE);
                    edAnterior.Text := FloatToStr(FNumero);
                    edAnterior.Text := copy('00000000',1,8-length(FloatToStr(FNumero)))+FloatToStr(FNumero);
                    edNumero.Text   := '';
                  end
                else
                  begin
                    MensajeEstado('(10)Fallo Consulta Ultimo CAE ...... ');
                    wsfev1.Reset;
                    //btFiscalizar.Enabled:=False;
                    btCerrar.Click;
                  end;
              end;
          except
            MensajeEstado('Fallo de Internet o de Acceso a la AFIP');
            ShowMessage('Fallo de Operacion de Accesos Servicios de Consulta AFIP');
            wsfev1.Reset;
            btFiscalizar.Enabled:=False;
            btCerrar.Click;
          end;
        end
      else
        begin
          ShowMessage('Fallo Login de Coneccion con Servidor AFIP....');
          edAnterior.Text := '00000000';
          edNumero.Text   := '1';
          btCerrar.Click;
        end;
      wsfev1.Reset;
    end
  else
    begin
      MensajeEstado('Fallo de Internet ...... ');

      ShowMessage('No Hay Coneccion de Internet...');
      btFiscalizar.Enabled:=False;
      Close;// Close;
    end;

end;

procedure TformFiscalizacion.Consultar_E;
VAR OldCAE,OldVto:WideString;
begin
  wsfex1.CUIT := FCuitVdor;  //20129063662; // Cuit del vendedor
  wsfex1.URL  := URLWSW_EX;
//    if wsfev1.login('C:\OpenSSL-WIn32\bin\Claves\certificado.crt', 'C:\OpenSSL-WIn32\bin\Claves\privada.key', URLWSAA) then
  if wsfex1.login(Certificado,Clave,URLWSAA) then
    begin
      if not wsfex1.RecuperaLastCMP(FPtoVenta, FTipoComp, FNumero,FFecha) then
        ShowMessage (wsfex1.ErrorDesc)
      else
        begin
          if (varisnull(fnumero)) then
            FNumero:=0;
          wsfex1.CmpConsultar(FTipoComp,FPtoVenta, FNumero,OldCAE,OldVto);
          lbCAEAnterior.Caption:='CAE.:'+OldCAE;
          lbVtoAnterior.Caption:='Vto.:'+OldVto;
          edAnterior.Text := FloatToStr(FNumero);
          edAnterior.Text := copy('00000000',1,8-length(FloatToStr(FNumero)))+FloatToStr(FNumero);
          edNumero.Text   := '';
        end;
    end
  else
    begin
      edAnterior.Text := '00000000';
      edNumero.Text   := '1';
    end;
//  wsfex1.Reset;
end;

procedure TFormFiscalizacion.EnableProxy(Server: String);
begin
  with TRegistry.Create do
  try
    RootKey:= HKEY_CURRENT_USER;
    if OpenKey('Software\Microsoft\Windows\CurrentVersion\Internet Settings',FALSE) then
    begin
      WriteInteger('ProxyEnable',0);
      WriteString('ProxyServer',Server);
      // WriteString('ProxyOverride','<local>'); // Usar si hace falta
    end;
  finally
    Free;
  end;
end;

procedure TformFiscalizacion.ConsultarPorNro;
VAR OldCAE,OldVto:WideString;
begin
  wsfev1.CUIT := FCuitVdor;  //20129063662; // Cuit del vendedor
  wsfev1.URL  := URLWSW;
  if wsfev1.login(Certificado,Clave,URLWSAA) then
    begin
      if wsfev1.CmpConsultar(FTipoComp,FPtoVenta, FNumeroActual,OldCAE,OldVto) Then
        begin
          edCaeOtorgado.Text  :=OldCAE;
          edVto.Text          :=OldVto
        end
    end;

end;
{
ImporteAjuste:=0;
Neto21 :=0;
Neto105:=0;
Neto27 :=0;
FDatosImp.First;
while not(FDatosImp.Eof) do
  begin
    case FDatosImp.FieldByName('codigo_gravamen').AsInteger of
      1:Neto21 := RoundTo(FDatosImp.FieldByName('Importe').AsFloat/(FDatosImp.FieldByName('Tasa').AsFloat*0.01),-2);
      4:Neto105:= RoundTo(FDatosImp.FieldByName('Importe').AsFloat/(FDatosImp.FieldByName('Tasa').AsFloat*0.01),-2);
      2:Neto27 := RoundTo(FDatosImp.FieldByName('Importe').AsFloat/(FDatosImp.FieldByName('Tasa').AsFloat*0.01),-2);
    end;
    FDatosImp.Next;
  end;
}

procedure TFormFiscalizacion.Fiscalizar;
var
  Estado:Boolean;
  Reproceso       : Widestring;
  ImporteAjuste,ImporteIva,ImporteIvaCal,
  ImporteIvaCal21,ImporteIvaCal105,ImporteIvaCal27: Extended;
begin

  //PtoVta   := 1; // Un Punto de Venta dado de alta en la AFIP;
  //TipoComp := FACTURAS_A;  //1; // Factura A(Ver excel referencias codigos AFIP documentacion.rar)
  //CAE := '';
  //Vencimiento := '';
  MensajeEstado('Verificando Internet');
  if HayInternet=False then
    begin
      MensajeEstado('Sin Coneccion');
      Raise Exception.Create('No se puede realizar la op...');
      Exit;
    end
  else
    MensajeEstado('Internet Ok.');

  Resultado := '';
  Reproceso := '';
  //nro := 0;
  if chFecha.Checked then
    begin
      MensajeEstado('Cambia a la Fecha del Dia.... ');
      FechaVta := FormatDateTime('yyyymmdd', Now());
      FechaVto := FormatDateTime('yyyymmdd', Now());
    end;
  //wsfev1      := Cowsfev1.Create;

  wsfev1.CUIT := FCuitVdor;  //20129063662; // Cuit del vendedor
  wsfev1.URL  := URLWSW;

  //if wsfev1.login('C:\OpenSSL-WIn32\bin\Claves\certificado.crt', 'C:\OpenSSL-WIn32\bin\Claves\privada.key', URLWSAA) then

  MensajeEstado('Logeando contra AFIP....');
  if wsfev1.login(Certificado,Clave,URLWSAA) then
    begin
      //wsfev1.Token no se si se usa
      try
        Estado:=wsfev1.RecuperaLastCMP(FPtoVenta, FTipoComp, FNumero);

      except
        ShowMessage('Error de AFIP... NO hay servicio de Consulta Disponible..... Espere solucion de AFIP');
        Exit;
      end;
      MensajeEstado('Login ok ...');
      MensajeEstado('Buscando Ultimo Numero para :'+'Pto de Vta:'+IntToStr(FPtoVenta)+'.. Tipo Comp.:'+IntToStr(FTipoComp)+'....');

      if not wsfev1.RecuperaLastCMP(FPtoVenta, FTipoComp, FNumero) then
        begin
          MensajeEstado('Error de Busqueda Ultimo Numero para Pto de Vta:'+IntToStr(FPtoVenta)+'.. Tipo Comp.:'+IntToStr(FTipoComp)+'....');
          ShowMessage (wsfev1.ErrorDesc);
        end
      else
        begin
          MensajeEstado('Nuemero Recuperado para Pto de Vta:'+IntToStr(FPtoVenta)+'..Tipo Comp.:'+IntToStr(FTipoComp)+'>>>.'+FloatToStr(FNumero));
          if (VarIsNull(FNumero)) then
            FNumero:=0;
          edAnterior.Text := copy('00000000',1,8-length(FloatToStr(FNumero)))+FloatToStr(FNumero);
          FNumero         := FNumero + 1;

          if chbControlaNumeracion.Checked then
            begin
              if Trunc(FNumeroActual)>Trunc(FNumero) then
                begin
                  MensajeEstado('El Numero de Cpbte es Mayor al Ultimo Fiscalizado.... El Numero deberia ser el '+FormatFloat('00000000',FNumero));
                  ShowMessage('El Numero de Cpbte es Mayor al Ultimo Fiscalizado.... El Numero deberia ser el '+FormatFloat('00000000',FNumero));
                  Exit;
                end
              else
                if Trunc(FNumeroActual)<Trunc(FNumero) then
                  begin
                    MensajeEstado('El Numero de Cpbte ya fue Fizcalizado....El Numero deberia ser el '+FormatFloat('00000000',FNumero));
                    ShowMessage ('El Numero de Cpbte ya fue Fizcalizado....... Verificar....El Numero deberia ser el '+FormatFloat('00000000',FNumero));
                    Exit;
                  end;
            end;

          MensajeEstado('Reset de wsfev1');
          wsfev1.Reset;
          // esto me devuelve el ultimo rno de factura
          // if wsfev1.RecuperaLastCMP(FPtoVenta,FTipoComp,Salida) Then
          // ShowMessage('Salida:'+FloatToStr(Salida));
          edNumero.Text  :=copy('00000000',1,8-length(FloatToStr(FNumero)))+FloatToStr(FNumero);
          // Productos y servicios....(3)
          if FTipoDocumento=99 then FCuitComp:=0;
          // para ajustar el total por el iva ************************
          ImporteAjuste    := 0;
          ImporteIvaCal21  := 0;
          ImporteIvaCal105 := 0;
          ImporteIvaCal27  := 0;

          if Not((FTipoComp=11) or  (FTipoComp=13)) then
            begin
              FDatosImp.First;
              while not(FDatosImp.Eof) do
                begin
                  MensajeEstado('Acumulando IVA calculando Ajuste..');

                  ImporteIva     :=0;
                  ImporteIvaCal  :=0;
                  ImporteIva     :=(FDatosImp.FieldByName('Importe').AsFloat);
                  ImporteIvaCal  :=(FDatosImp.FieldByName('Neto').AsFloat*FDatosImp.FieldByName('Tasa').AsFloat*0.01);
                  ImporteIva     :=Roundto((FDatosImp.FieldByName('Importe').AsFloat),-2);
                  ImporteIvaCal  :=RoundTo((FDatosImp.FieldByName('Neto').AsFloat*FDatosImp.FieldByName('Tasa').AsFloat*0.01),-2);

                  case FDatosImp.FieldByName('codigo_gravamen').AsInteger of
                    1: ImporteIvaCal21   := ImporteIvaCal;
                    4: ImporteIvaCal105  := ImporteIvaCal;
                    2: ImporteIvaCal27   := ImporteIvaCal;
                  end;
                  if ((Abs(ImporteIva-ImporteIvaCal))>0.01) then
                    ImporteAjuste:=ImporteAjuste+ImporteIvaCal-ImporteIva;
                  MensajeEstado('Importe Ajuste..:'+FloatToStr(ImporteAjuste));
                  FDatosImp.Next;
                end;
            end;

          // *********************************************************
          Ajustar:=True;
          if ((ImporteAjuste*100)<=1) then
            begin
              Ajustar       := False;
              ImporteAjuste := 0;
            end;
          if CompareValue(ImporteAjuste,0.02)=-1 Then
            begin
              Ajustar       := False;
              ImporteAjuste := 0;
            end;
          // *********************************************************

          if Not(chAplicaAjuste.Checked) then
            ImporteAjuste := 0;

          if ((FTipoComp=11) or  (FTipoComp=13)) then
            begin
              ImporteIvaCal21   := 0;
              ImporteIvaCal105  := 0;
              ImporteIvaCal27   := 0;
              FTotalNeto        := FTotal + ImporteAjuste;
              FTotalExento      := 0;
            end;

          if Not(chAplicaAjuste.Checked) then
            ImporteAjuste := 0;

          if FTipoComp in [202,203,207,208,212,213] then FFechaVto:='';


          MensajeEstado('Carga Variables de Factura(AgregarFactura)>'+' Tipo Doc:'+ IntToStr(FTipoDocumento)+
                                                                      ' Cuit Comp:'+ FloatToStr(FCuitComp)+
                                                                      ' Numero   :'+ FloatToStr(FNumero)+
                                                                      ' Fecha    :'+ FFechaVta);
          MensajeEstado('Tipo Documento... '+IntToStr(FTipoDocumento));
          MensajeEstado('Cuit ............ '+FloatToStr(FCuitComp));
          MensajeEstado('Nro.Desde ....... '+FloatToStr(FNumero));
          MensajeEstado('Fecha  .......... '+(FFechaVta));
          MensajeEstado('Ajustes(Adic).... '+FloatToStr(ImporteAjuste));
          MensajeEstado('Neto No Gravado.. '+FloatToStr(FTotalNetoNoGrav));
          MensajeEstado('Neto ............ '+FloatToStr(FTotalNeto));
          MensajeEstado('Exento........... '+FloatToStr(FTotalExento));
          MensajeEstado('Total ........... '+FloatToStr(FTotal));
          MensajeEstado('Carga Variables de Factura...Ok');
          MensajeEstado('Procesar IVA.........');
          wsfev1.AgregaFactura(3,FTipoDocumento, FCuitComp, FNumero, FNumero, FFechaVta, FTotal,FTotalNetoNoGrav,FTotalNeto-ImporteAjuste,FTotalExento, FFechaVta, FFechaVta, FFechaVto, 'PES', 1);

           if Not((FTipoComp=11) or  (FTipoComp=13)) then
            begin
              FDatosImp.First;
              while not(FDatosImp.Eof) do
                begin
                  MensajeEstado('Carga Iva (Agregar Iva): Alicuota Cod:'+FDatosImp.FieldByName('codigo_gravamen').AsString);

                  case FDatosImp.FieldByName('codigo_gravamen').AsInteger of
                    1:wsfev1.AgregaIVA(IVA21 ,RoundTo(FDatosImp.FieldByName('Neto').AsFloat,-2),
                                              ImporteIvaCal21);// RoundTo(FDatosImp.FieldByName('Importe').AsFloat,-2));
                    4:wsfev1.AgregaIVA(IVA105,RoundTo(FDatosImp.FieldByName('Neto').AsFloat,-2),
                                              ImporteIvaCal105);// RoundTo(FDatosImp.FieldByName('Importe').AsFloat,-2));
                    2:wsfev1.AgregaIVA(IVA27, RoundTo(FDatosImp.FieldByName('Neto').AsFloat,-2),
                                              ImporteIvaCal27);// RoundTo(FDatosImp.FieldByName('Importe').AsFloat,-2));
                  end;
                  FDatosImp.Next;
                  MensajeEstado('Tasa 21% ......... '+FloatToStr(ImporteIvaCal21));
                  MensajeEstado('Tasa 10.51% ...... '+FloatToStr(ImporteIvaCal105));
                  MensajeEstado('Tasa 27% ......... '+FloatToStr(ImporteIvaCal27));

                end;
              MensajeEstado('Fin Carga Iva (Agregar Iva)');
            end;
          //// Ultm agreado 01/04/2021 erro en NC ND
          if (FTipoComp=3) or (FTipoComp=8) or (FTipoComp=2) or (FTipoComp=7) or (FTipoComp=12)then
            wsfev1.AgregaCompAsoc(FAsociado_Tipo,FAsociado_PtoVta,FAsociado_Nro,FCuitComp,FAsociado_CpbteFch);

          if TotalIIBB>0 then
            begin
              MensajeEstado('Carga IIBB (Agregar Tributo)');
              wsfev1.AgregaTributo(2,'PERCEP IIBB', roundto(FBaseImpIIBB,-2), RoundTo(FTasaIIBB,-2), roundto(FTotalIIBB,-2));
              MensajeEstado('Tasa Percep.IIBB . '+FloatToStr(FTasaIIBB));
              MensajeEstado('Percep.IIBB ...... '+FloatToStr(FTotalIIBB));
            end;
          //****************************************************************
          // ******************** Factura de Credito ***********************
          //****************************************************************

          if FTipoComp in [201,206,211] then
            wsfev1.AgregaOpcional('2101',FCbu);
          if FTipoComp in [202,203,207,208,212,213] then
            begin
              MensajeEstado('Asociado Documento... '+IntToStr(FAsociado_Tipo));
              MensajeEstado('Asociado Pto Vta..... '+IntToStr(FAsociado_PtoVta));
              MensajeEstado('Asociado Documento... '+FloatToStr(FAsociado_Nro));
              MensajeEstado('Asociado Cuit........ '+FloatToStr(FCuitVdor));
              MensajeEstado('Asociado Cbte Fecha.. '+FAsociado_CpbteFch);
              if chbNCRechazada.Checked=False then
                wsfev1.AgregaOpcional('22','N')
              else
                if chbNCRechazada.Checked=True then
                  wsfev1.AgregaOpcional('22','S');
               wsfev1.AgregaCompAsoc(FAsociado_Tipo,FAsociado_PtoVta,FAsociado_Nro,FCuitVdor,FAsociado_CpbteFch);
            end;
          if FTipoComp in [201,206,211] then
            wsfev1.AgregaOpcional('27','SCA');



          //****************************************************************
          //****************************************************************
          try
            MensajeEstado('Pedido de Autorizacion ................');
            if wsfev1.Autorizar(FPtoVenta, FTipoComp) then
              begin
                try
                  MensajeEstado('Leer respuesta de autorizacion ...........');
                  if wsfev1.AutorizarRespuesta(0, FCAE, FVencimiento, FResultado, Reproceso) Then
                    begin
                      MensajeEstado('Respuesta de Autorizacion = ('+FResultado+') -- CAE: '+FCAE);
                      If FResultado = 'A' Then
                        begin
                          MensajeEstado('Autorizada = ('+FResultado+') ... CAE:'+FCAE+' Nro.:'+FloatToStr(FNumero)+' Fecha:'+FFechaVta);
                          MensajeEstado('////////// Fin');
                          FProcesoOk        := True;
                          edCAE.Text        := FCAE;
                          edVencimiento.Text:= FVencimiento;
                          if chbCerrar.Checked then
                            btCerrar.Click;
                        end
                      else
                        begin
                          MensajeEstado('*** No Autorizada ****** >>>'+wsfev1.AutorizarRespuestaObs(0));
                          ShowMessage(wsfev1.AutorizarRespuestaObs(0));
                          btCerrar.Click;
                        end;
                    end
                  else
                    MensajeEstado('** ** Error Pedido de Autorizacion (5)');

                except
                  MensajeEstado('** ** Error de Respuesta de Autorizacion (1)');
                  ShowMessage('Hubo error Respuesta de Autorizacion al solicitar el CAE...');
                end;
              end
            else
              begin
                MensajeEstado('Error de Autorizacion:'+wsfev1.ErrorDesc);
                ShowMessage(wsfev1.ErrorDesc);
                btCerrar.Click;
              end;
          except
            MensajeEstado('** ** Error de Solicitud (2)');
            ShowMessage('Hubo error al solicitar el CAE...');
            btCerrar.Click;
          end;
        end
    end
  else
    begin
      MensajeEstado('** ** Error:'+wsfev1.ErrorDesc+'(3)');
      ShowMessage(wsfev1.ErrorDesc);
      btCerrar.Click;
    end;
  wsfev1.Reset;
end;

procedure TFormFiscalizacion.Fiscalizar_E;
var
  Reproceso: Widestring;
  CodUnidad: Integer;
  NroCuit  : WideString;
  MonedaId : WideString;
  MonFecha : WideString;
begin
    //PtoVta   := 1; // Un Punto de Venta dado de alta en la AFIP;
    //TipoComp := FACTURAS_A;  //1; // Factura A(Ver excel referencias codigos AFIP documentacion.rar)
    //CAE := '';
    //Vencimiento := '';
    Resultado := '';
    Reproceso := '';
    //nro := 0;
    //FechaComp := FormatDateTime('yyyymmdd', Now());
    //wsfev1      := Cowsfev1.Create;
    wsfev1.CUIT := FCuitVdor;  //20129063662; // Cuit del vendedor
    wsfex1.URL  := URLWSW_EX;
    //if wsfev1.login('C:\OpenSSL-WIn32\bin\Claves\certificado.crt', 'C:\OpenSSL-WIn32\bin\Claves\privada.key', URLWSAA) then
    if wsfex1.login(Certificado,Clave,URLWSAA) then
      begin

        if not wsfex1.RecuperaLastCMP(FPtoVenta, FTipoComp, FNumero,UltimaFechaVta) then
          ShowMessage (wsfex1.ErrorDesc)
        else
          begin
            If Not wsfex1.UltimoIdTrans(IdTransferencia) Then
              begin
                ShowMessage (wsfex1.ErrorDesc);
                Exit;
             end;
             IdTransferencia:= IdTransferencia+1;
             if (VarIsNull(FNumero)) then
               FNumero:=0;
             edAnterior.Text := copy('00000000',1,8-length(FloatToStr(FNumero)))+FloatToStr(FNumero);
             FNumero := FNumero + 1;
             // esto me devuelve el ultimo rno de factura
             edNumero.Text:=copy('00000000',1,8-length(FloatToStr(FNumero)))+FloatToStr(FNumero);

             if FMoneda=1 Then
               begin
                 MonedaId:='PES';
                 wsfex1.ParamGetCotizacion('PES',FMonedaCotiz,MonFecha);
               end
             else
             if FMoneda=2 Then
               begin
                 MonedaId:='DOL';
                 wsfex1.ParamGetCotizacion('DOL',FMonedaCotiz,MonFecha);
               end;
{
procedure AgregaFactura(Id: Double;
                        Fecha_cbte: WideString;
                        Tipo_cbte: Integer;
                        Punto_vta: Integer;
                        Cbte_nro: Double;
                        Tipo_expo: Integer;
                        Permiso_existente: WideString;
                        Dst_cmp: Integer;
                        Cliente: WideString;
                        Cuit_pais_cliente: Double;
                        Domicilio_cliente: WideString;
                        Id_impositivo: WideString;
                        Moneda_Id: WideString;
                        Moneda_ctz: Double;
                        Obs_comerciales: WideString;
                        Imp_total: Double;
                        Obs: WideString;
                        Forma_pago: WideString;
                        Incoterms: WideString;
                        Incoterms_ds: WideString;
                        Idioma_cbte: Integer);
}


             MensajeEstado('Carga Variables de Factura(AgregarFactura)>'+' Tipo Doc:'+ IntToStr(FTipoDocumento)+
                                                                         ' Cuit Comp:'+ FloatToStr(FCuitComp)+
                                                                         ' Numero   :'+ FloatToStr(FNumero)+
                                                                         ' Fecha    :'+ FFechaVta);
             MensajeEstado('Tipo Comprobante. '+IntToStr(FTipoComp));
             MensajeEstado('Tipo Documento... '+IntToStr(FTipoDocumento));
             MensajeEstado('Cuit Pais........ '+FloatToStr(FCuitPais));
             MensajeEstado('Nro.Desde ....... '+FloatToStr(FNumero));
             MensajeEstado('Fecha  .......... '+(FFechaVta));
             MensajeEstado('Ajustes(Adic).... '+FloatToStr(0));
             MensajeEstado('Neto No Gravado.. '+FloatToStr(FTotalNetoNoGrav));
             MensajeEstado('Neto ............ '+FloatToStr(FTotalNeto));
             MensajeEstado('Exento........... '+FloatToStr(FTotalExento));
             MensajeEstado('Total ........... '+FloatToStr(FTotal));
             MensajeEstado('Carga Variables de Factura...Ok');
             MensajeEstado('Procesar IVA.........');
             wsfex1.AgregaFactura(IdTransferencia, FFechaVta,
                                  FTipoComp, FPtoVenta, FNumero,
                                  2,
                                  '',
                                  208,
                                  FNombre,
                                  FCuitPais,
                                  Domicilio,
                                  '',
                                  MonedaId,
                                  FMonedaCotiz,
                                  '',
                                  FTotal,
                                  '',
                                  'Contado',
                                  'DES',
                                  '',
                                  1);
             //wsfex1.AgregaItem('11111', 'remera', 1, 1, 100, 100, 0);
             FDatosDet.First;
             while not(FDatosDet.Eof) do
              begin
                if FDatosDet.FieldByName('Unidad').AsString='UNI' then
                  CodUnidad:=7
                else
                if FDatosDet.FieldByName('Unidad').AsString='LTR' then
                  CodUnidad:=5
                else
                if FDatosDet.FieldByName('Unidad').AsString='MET' then
                  CodUnidad:=3
                else
                if FDatosDet.FieldByName('Unidad').AsString='KGR' then
                  CodUnidad:=1
                else
                  CodUnidad:=7;

                wsfex1.AgregaItem(FDatosDet.FieldByName('CodigoArticulo').AsString,
                                  FDatosDet.FieldByName('Detalle').AsString,
                                  FDatosDet.FieldByName('Cantidad').AsFloat,
                                  CodUnidad,
                                  FDatosDet.FieldByName('UNITARIO_TOTAL').AsFloat,
                                  FDatosDet.FieldByName('TOTAL').AsFloat,
                                  FDatosDet.FieldByName('Descuento').AsFloat);
                FDatosDet.Next;
              end;
             MensajeEstado('Pedido de Autorizacion ................');
             If wsfex1.Autorizar Then
               begin
                 wsfex1.AutorizarRespuesta(FCAE, FVencimiento, FResultado, Reproceso);
                 If FResultado = 'A' Then
                   begin
                     edCAE.Text        :=FCAE;
                     edVencimiento.Text:=FVencimiento;
//                    ShowMessage('Felicitaciones! Si ve este mensaje instalo correctamente FEAFIP. CAE y Vencimiento ' +
//                      ':' + CAE + ' ' + Vencimiento)
                     MensajeEstado('Autorizada = ('+FResultado+') ... CAE:'+FCAE+' Nro.:'+FloatToStr(FNumero)+' Fecha:'+FFechaVta);
                     MensajeEstado('////////// Fin');
                     if chbCerrar.Checked then
                       btCerrar.Click;
                   end
                 else
                   begin
                     MensajeEstado('*** No Autorizada ****** >>>'+wsfex1.AutorizarRespuestaObs);
                   end;
               end
             else
               begin
                 MensajeEstado('Error de Autorizacion:'+wsfex1.ErrorDesc);
                 ShowMessage(wsfex1.ErrorDesc);
               end;
        end
    end
  else
    ShowMessage(wsfex1.ErrorDesc);
//  wsfex1.Reset;
end;


procedure TFormFiscalizacion.FormActivate(Sender: TObject);
begin
  BringToFront;
end;

procedure TFormFiscalizacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CloseFile( FileLog );
  FImprimir         := ChImprimir.Checked;
  ArchivoIni        := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_2.NombreIni);
  ArchivoIni.WriteBool('FacturaEelectronica', 'cerrar', chbCerrar.Checked);
  ArchivoIni.WriteBool('FacturaEelectronica', 'Imprimir', ChImprimir.Checked);
  ArchivoIni.WriteBool('FacturaEelectronica', 'VerLog', chVerLog.Checked);
  ArchivoIni.WriteBool('FacturaEelectronica', 'VerificaInternet', VerificarConeccion1.Checked);
  ArchivoIni.WriteInteger('FacturaEelectronica', 'Proxy', cbProxys.ItemIndex);

  ArchivoIni.free;
 // FreeAndNil(wsfev1);
 // FreeAndNil(wsfex1);

  Action  :=cafree;
end;

procedure TFormFiscalizacion.FormCreate(Sender: TObject);
var Dato:String;

 path:String;

begin
  wsfev1  := Nil;
  wsfex1  := Nil;
  wsfev1  := Cowsfev1.Create;
  wsfex1  := Cowsfexv1.Create;
 // wsfexv1  := Nil;
//  wsfexv1  := Cowsfexv1.Create;
  path := ExtractFilePath(ParamStr(0));
  path := path+'Proxys.txt';
  if FileExists(path) then
    cbProxys.ComboItems.LoadFromFile(path);

  ArchivoIni                    := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_2.NombreIni);
  Clave                         := ArchivoIni.ReadString('FacturaEelectronica', 'Clave', '');
  Certificado                   := ArchivoIni.ReadString('FacturaEelectronica', 'Certificado', '');
  chbCerrar.Checked             := ArchivoIni.ReadBool('FacturaEelectronica', 'cerrar', False);
  ChImprimir.Checked            := ArchivoIni.ReadBool('FacturaEelectronica', 'Imprimir', False);
  chVerLog.Checked              := ArchivoIni.ReadBool('FacturaEelectronica', 'VerLog', True);
  chbControlaNumeracion.Checked := ArchivoIni.ReadBool('FacturaEelectronica', 'ControlNro', True);
  VerificarConeccion1.Checked   := ArchivoIni.ReadBool('FacturaEelectronica', 'VerificaInternet', True);
  cbProxys.ItemIndex            := ArchivoIni.ReadInteger('FacturaEelectronica', 'Proxy', 0);
  ArchivoIni.free;

  sbEstado.Panels[0].Text       := 'Certificado:'+Certificado;
  sbEstado.Panels[1].Text       := 'Clave:'+Clave;
  FVencimiento                  := '';
  FCAE                          := '';
  AutoSize                      := True;
  PageControl1.ActivePageIndex  := 0;
  btFiscalizar.Enabled          := True;
  mLog.Visible                  := chVerLog.Checked;
  mLog.Clear;
  // directorio del Log *************************
  DirectorioLog := ExtractFilePath(ParamStr(0))+'\Log_Electronica_'+FormatDateTime('ddmmyy',Date);
  if Not(DirectoryExists(DirectorioLog)) then
    CreateDir(DirectorioLog);
  FProcesoOk:=False;

end;

procedure TFormFiscalizacion.FormDestroy(Sender: TObject);
begin
  FormFiscalizacion:=nil;
end;

procedure TFormFiscalizacion.FormShow(Sender: TObject);
begin
  edPuntoVta.Text    := IntToStr(FPtoVenta);
  if FloatToStr(FNumeroActual)='' then FNumeroActual:=0;

  edNumeroActual.Text := FloatToStr(FNumeroActual);
  edNroFactura.Text   := FloatToStr(FNumeroActual);

  FRevision           := False;
  NombreArchivo       := DirectorioLog+'\ID_'+FID_Comprobante+'_'+'PtodeVta_'+IntToStr(FPtoVenta)+'_NroAct_'+FloatToStr(FNumeroActual)+'.txt';
  AssignFile( FileLog, NombreArchivo);
  mLog.Clear;
  MensajeEstado('////// COMIENZO DE PROCESO  ////////////////////////////////');
  MensajeEstado('Preparando Inicio .................');
  MensajeEstado('Numero Temporal.:'+'Pto de Vta:'+IntToStr(FPtoVenta)+' Nro Actual:'+FloatToStr(FNumeroActual));
  MensajeEstado('Cliente...: '+Nombre);
  MensajeEstado('Cuit......: '+FloatToStr(FCuitComp));
  //MensajeEstado('Tipo/Nro..: '+FTipoNumero);

  MensajeEstado('Varificando Internet....');

  if HayInternet then
    begin
      if FTipoComp=19 then Consultar_E else
        begin
          MensajeEstado('Haciendo Consulta a la Afip');
          Consultar;
        end;
    end
   else
     begin
       MensajeEstado('No Hay Servicio de Consulta de Afip');
       ShowMessage('No hay coneccion con el servidor de la Afip...');
       btFiscalizar.Enabled:=false;
       btCerrarClick(Sender);
       Close;
     end;
  BringToFront;
  FResultado:='';
end;

end.
