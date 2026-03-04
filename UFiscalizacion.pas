unit UFiscalizacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,Provider, DBClient,Math,IniFiles, ComCtrls,
  Buttons, IdBaseComponent, IdComponent, IdRawBase, IdRawClient, IdIcmpClient,WInInet, xmldom,
  XMLIntf, msxmldom, XMLDoc,
  Vcl.OleServer, FEAFIPLib_TLB,Librerias, Vcl.Menus, AdvCombo, ColCombo, Registry, JvComponentBase, JvThread,
  System.Win.ComObj,StrUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option,System.DateUtils,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,System.NetEncoding,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,DelphiZXingQRCode,System.JSON,System.IOUtils;
  {$D+}
type
  TFormFiscalizacion = class(TForm)
    sbEstado: TStatusBar;
    PageControl1: TPageControl;
    pFiscalizar: TTabSheet;
    pRevision: TTabSheet;
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
    btAsignar: TBitBtn;
    Label6: TLabel;
    edNumeroActual: TEdit;
    edCaeOtorgado: TEdit;
    Label7: TLabel;
    edVto: TEdit;
    Label8: TLabel;
    btBuscar: TBitBtn;
    chFecha: TCheckBox;
    ChImprimir: TCheckBox;
    pConsulta: TTabSheet;
    MemoConsulta: TMemo;
    btConsultaCpbtes: TBitBtn;
    IdIcmpClient: TIdIcmpClient;
    chVerLog: TCheckBox;
    mLog: TMemo;
    chAplicaAjuste: TCheckBox;
    edNroFactura: TEdit;
    Label9: TLabel;
    chbControlaNumeracion: TCheckBox;
    chbNCRechazada_OLD: TCheckBox;
    PopupMenu1: TPopupMenu;
    VerificarConeccion1: TMenuItem;
    JvHiloConsulta: TJvThread;
    btProxy: TButton;
    cbProxys: TColumnComboBox;
    pagOtros: TTabSheet;
    mActividades: TMemo;
    btConsultaActividades: TBitBtn;
    pagMonedas: TTabSheet;
    mMonedas: TMemo;
    ConsultarMonedas: TBitBtn;
    rgModoNC_MiPyme: TRadioGroup;
    rgModoFacturacion_MiPyme: TRadioGroup;
    pagPuntosVtas: TTabSheet;
    mPuntosVenta: TMemo;
    btPuntosVtas: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btCerrarClick(Sender: TObject);
    procedure btFiscalizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure btAsignarClick(Sender: TObject);
    procedure btConsultaCpbtesClick(Sender: TObject);
    procedure chVerLogClick(Sender: TObject);
    procedure VerificarConeccion1Click(Sender: TObject);
    procedure btProxyClick(Sender: TObject);
    procedure Recupera;
    procedure FormActivate(Sender: TObject);
	  function  ErrorServAfip:boolean;
    procedure btConsultaActividadesClick(Sender: TObject);
    procedure ConsultarMonedasClick(Sender: TObject);
    procedure btPuntosVtasClick(Sender: TObject);
  private
    { Private declarations }
    FResultado         : WideString;
    FPtoVenta          : Integer;
    FTipoComp          : Integer;
    FCAE               : WideString;
    FVencimiento       : WideString;
    FNombre            : WideString;
    FDomicilio         : WideString;
    FNumero            : Double;
    FNumeroActual      : Double;
    FNumeroInt         : Int64;
    FFechaVta          : WideString;
    FFechaVto          : WideString;
    FFecha             : WideString;
    FCuitVdor          : Extended;
    FCuitComp          : Extended;
    FCuitPais          : Extended;
    FTotal             : Extended;
    FTotalExento       : Extended;
    FTotalNetoNoGrav   : Extended;
    FTotalNeto         : Extended;
    FTotalIIBB         : Extended;
    FTasaIIBB          : Extended;
    FBaseImpIIBB       : Extended;
    FID_Comprobante    : String;
    FTipoNumero        : String;
    FCodActividad      : string;
    FDatosImp,
    FDatosDet,
    FDatosAsociados,
    FDatosPercepciones   : TClientDataSet;
    FRevision            : Boolean;
    FAjustar             : Boolean;
    FImprimir            : Boolean;
    FURLWSAA             : String;
    FURLWSW              : String;
    FURLWSW_EX           : String;
    FTipoDocumento       : Integer;
    FMoneda              : Integer;
    FProcesoOk           : Boolean;
    FMonedaCotiz         : Double;
    FCbu                 : String;
    FAsociado_Tipo       : Integer;
    FAsociado_PtoVta     : Integer;
    FAsociado_Nro        : Double;
    FAsociado_CpbteFch   : String;
    FNombreIni           : String;
    FQRImage             : TBitMap;
    FCertificadoSucursal : String;
    FIncoterm            : WideString;
    FTipoIvaComp         : Integer;
// Modificacion de AutoRun
    FAutoRun: Boolean;
    procedure WMStartAutoRun(var Msg: TMessage); message WM_USER + 100;
// *************************************
    function VerificaRepetido : Boolean;
    function VerificaFactura  : Boolean;
    function VerificaCAE(const CAE: string) : Boolean;
    procedure Fiscalizar_JC;
    procedure Fiscalizar_E_JC;
    function BuildImage(Text: string): TBitmap;
    function ParseISO8601WithOffset(const S: string): TDateTime;
    procedure ConsultarJC;
    procedure ConsultarPorNroJC;
    function Base64Url(const S: string): string;
    function GeneraQR_AFIP(const D: String): string;



  public
    { Public declarations }
    Certificado,Clave:String;
    ArchivoIni       :TIniFile;
    IdTransferencia  :Double;
    UltimaFechaVta   :WideString;
    FileLog          :TextFile;
    DirectorioLog    :String;
    NombreArchivo    :String;
    AfipResponde     :Boolean;
    ROk              :Boolean;
    MaxWaitSegs      :Integer;
    Continuar        :Boolean;
    VFecha,
    VPrefijo,
    VNroCuit,
    VNeto,
    VNetoExento,
    VIva,
    VNumero,
    VAlic,
    VImporteAlic,
    VImporte,
    VCodAFIP,
    VCAE,
    VCAEVto         :string;
// Modificacion para Autorun
    procedure EjecutarProcesoAutomatico;
// **************************************
    procedure MensajeEstado(Cadena:String);
    procedure Fiscalizar;
    procedure Consultar;
    procedure Consultar_E;
    procedure ConsultarJC_E;
    procedure ConsultarPorNroJC_E;
    procedure ConsultarPorNro;
    procedure DisplayNodoRenglon(Nodo:IXMLNode  );
    function  HayInternet: boolean;
    function  SetConnectionOptions(ProxyName: String; ProxyOverride: String; Use:bool): bool;
    procedure EnableProxy(Server: String);

    function  GenerarQR( ver        : Integer;
                        fecha      : string;   cuit       : double;
                        ptoVta     : Integer;  tipoComp   : Integer;
                        nroCmp     : Integer;  importe    : double;
                        moneda     : string;   ctz        : double;
                        tipoDocRec : Integer;  nroDocRec  : double;
                        tipoCodAut : string;   codAut     : double): TBitmap;

  published
// Modificacion para Autorun
    property AutoRun: Boolean read FAutoRun write FAutoRun;
//**********************
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
    Property NumeroInt:Int64 read FNumeroInt write FNumeroInt;
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
    property NombreIni:String read FNombreIni write FNombreIni;
    property QRImage:TBitmap read FQRImage write FQRImage;
    property Asociado_Tipo:Integer read FAsociado_Tipo write FAsociado_Tipo;
    property Asociado_PtoVta :Integer read FAsociado_PtoVta write FAsociado_PtoVta;
    property Asociado_Nro :Double read FAsociado_Nro write FAsociado_Nro;
    property Asociado_CpbteFch :String read FAsociado_CpbteFch write FAsociado_CpbteFch;
    property CertificadoSucursal :String read FCertificadoSucursal write FCertificadoSucursal;
    property DatosAsociados:TClientDataSet read FDatosAsociados write FDatosAsociados;
    property CodigoActividad: String read FCodActividad write FCodActividad;
    property Incoterms :WideString read FIncoterm write FIncoterm;
    property DatosPercecpionIVA: TClientDataSet read FDatosPercepciones write FDatosPercepciones;
    property TipoIvaComp:Integer write FTipoIvaComp;
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

 TQRData_ = record
    ver        : Integer;   // siempre 1 por ahora
    fecha      : String;    // fecha de emisión
    cuit       : Int64;     // emisor
    ptoVta     : Integer;
    tipoCmp    : Integer;
    nroCmp     : Integer;
    importe    : Currency;  // total
    moneda     : string;    // p.ej. 'PES'
    ctz        : Double;    // cotización vs ARS
    tipoDocRec : Integer;   // 80 = CUIT, 96 = DNI, etc. (0 si no corresponde)
    nroDocRec  : Int64;     // 0 si no corresponde
    tipoCodAut : Char;      // 'E' = CAE  'A' = CAEA
    codAut     : Int64;
  end;

  var
  FormFiscalizacion: TFormFiscalizacion;


implementation

uses
  UDMain_FD,FE_Utils2,UArca_Fex, UFiscalizarLote;

{$R *.dfm}

var  wsfev1: Iwsfev1;
     wsfex1: Iwsfexv1;
     ClaseCertificado : ICertificado;
const
// **** Tipo de IVA ****
  NOGRAVDO = 1;//  1	No Gravado
  EXENTO   = 2;//  2	Exento
  CEROIVA  = 3;//  3	0%
  IVA105   = 4;//  4	10.50%
  IVA21    = 5;//  5	21%
  IVA27    = 6;//  6	27%

{
Id : 1  Desc: IVA Responsable Inscripto Ctes clase : A/M/C
Id : 4  Desc: IVA Sujeto Exento Ctes clase : B/C
Id : 5  Desc: Consumidor Final Ctes clase : C/49
Id : 6  Desc: Responsable Monotributo Ctes clase : A/M/C
Id : 7  Desc: Sujeto No Categorizado Ctes clase : B/C
Id : 8  Desc: Proveedor del Exterior Ctes clase : B/C
Id : 9  Desc: Cliente del Exterior Ctes clase : B/C
Id : 10 Desc: IVA Liberado – Ley N° 19.640 Ctes clase : B/C
Id : 13 Desc: Monotributista Social Ctes clase : A/M/C
Id : 15 Desc: IVA No Alcanzado Ctes clase : B/C
Id : 16 Desc: Monotributo Trabajador Independiente Promovido Ctes clase : A/M/C
}

function TFormFiscalizacion.Base64Url(const S: string): string;
var Base64Str:string;
begin
  Base64Str := TNetEncoding.Base64.Encode(s);
  Result     := StringReplace(Base64Str, sLineBreak, '', [rfReplaceAll]);
end;

function TFormFiscalizacion.GeneraQR_AFIP( const D: String): string;
begin
  Result := 'https://www.afip.gob.ar/fe/qr/?p=' + Base64Url(D);
end;


function TFormFiscalizacion.ParseISO8601WithOffset(const S: string): TDateTime;
var
  BaseDate: TDateTime;
  OffsetHours, OffsetMinutes: Integer;
  Sign: Integer;
  P: Integer;
  OffsetStr: string;
begin
  // Extraer fecha sin offset
  P := LastDelimiter('+-', S);  // busca último '+' o '-'
  if P = 0 then
    raise Exception.Create('Formato inválido');

  BaseDate := ISO8601ToDate(Copy(S, 1, P-1));

  // Procesar offset
  OffsetStr := Copy(S, P, MaxInt); // Ej: '-03:00'
  if OffsetStr[1] = '-' then
    Sign := -1
  else
    Sign := 1;

  OffsetHours   := StrToInt(Copy(OffsetStr, 2, 2));
  OffsetMinutes := StrToInt(Copy(OffsetStr, 5, 2));

  // Ajustar
  Result := IncHour(BaseDate, -Sign * OffsetHours);
  Result := IncMinute(Result, -Sign * OffsetMinutes);
end;


function TFormFiscalizacion.BuildImage(Text: string): TBitmap;
var
  QRCode: TDelphiZXingQRCode;
  Row, Column, Scale: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.Data      := Text;
    QRCode.Encoding  := TQRCodeEncoding(qrUTF8NoBOM);
    QRCode.QuietZone := 4;

    Scale  := 2; // Aumenta el tamaño visual del QR (cada "pixel" se dibuja más grande)
    Result := TBitmap.Create;
    Result.SetSize(QRCode.Columns * Scale, QRCode.Rows * Scale);
    Result.PixelFormat := pf24bit;

    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if QRCode.IsBlack[Row, Column] then
          Result.Canvas.Brush.Color := clBlack
        else
          Result.Canvas.Brush.Color := clWhite;

        // Dibuja un rectángulo en vez de un solo píxel
        Result.Canvas.FillRect(Rect(
          Column * Scale,
          Row * Scale,
          (Column + 1) * Scale,
          (Row + 1) * Scale));
      end;
    end;
  finally
    QRCode.Free;
  end;
end;

function  TFormFiscalizacion.ErrorServAfip:boolean;
begin
  if MessageDlg('SERVIDOR DE AFIP NO RESPONDE!!!  Intente nuevamente Más tarde.' +
                ' (Posible solución: Reinicie el módem).',
               mtError,[mbOk],0)=mrOk then
    btCerrar.Click;
end;

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
  list     : INTERNET_PER_CONN_OPTION_LIST;
  dwBufSize: DWORD;
  Options  : array[0..2] of INTERNET_PER_CONN_OPTION;
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


procedure TFormFiscalizacion.btConsultaActividadesClick(Sender: TObject);
var respuesta:TStrings;
begin
  mActividades.Lines.Clear;
  respuesta         :=dmFE1.GetActividades(Trunc(FCuitVdor));
  mActividades.Lines:=respuesta;
 end;

procedure TFormFiscalizacion.ConsultarMonedasClick(Sender: TObject);
var respuesta:TStrings;
begin
  mMonedas.Lines.Clear;
  respuesta     :=dmFE1.GetMonedas(Trunc(FCuitVdor));
  mMonedas.Lines:=respuesta;
end;

procedure TFormFiscalizacion.btAsignarClick(Sender: TObject);
var Fecha:String;
Moneda:String;
begin
  if (FTipoComp=19) or (FTipoComp=21) then
    begin
      if Trim(edCaeOtorgado.Text)<>'' then
        begin
          if FMoneda=1 then Moneda:='PES'
          else
            if FMoneda=2 Then Moneda:='DOL';
          FResultado      := 'A';
          FNumeroInt      := StrToInt(edNumeroActual.Text);//  (FNumero);
          FCAE            := edCaeOtorgado.Text;
          FVencimiento    := edVto.Text;
          FRevision       := True;
          Fecha           := copy(FFechaVta,1,4)+'-'+ copy(FFechaVta,5,2)+'-'+copy(FFechaVta,7,2);

          dmFE1.ArchivoQR := System.IOUtils.TPath.GetTempPath + 'OPTAL_FE_QR.bmp';
          if dmFE1.GenerarQR(1,Fecha,FCuitVdor,FPtoVenta,FTipoComp,FNumeroInt,
                             FTotal,Moneda,FMonedaCotiz,
                             FTipoDocumento, Trunc(FCuitComp) ,'E',StrToFloat(FCAE)) Then
            begin
              FQRImage:=dmFE1.fqrbmp;// TBitmap.Create;
            end;
          btCerrar.Click;
        end
    end
  else
    if Trim(edCaeOtorgado.Text)<>'' then
      begin
        if FMoneda=1 then Moneda:='PES'
        else
          if FMoneda=2 Then Moneda:='DOL';
        FResultado      := 'A';
        FNumeroInt      := StrToInt(edNumeroActual.Text);//  (FNumero);
        FCAE            := edCaeOtorgado.Text;
        FVencimiento    := edVto.Text;
        FRevision       := True;
        Fecha           := copy(FFechaVta,1,4)+'-'+ copy(FFechaVta,5,2)+'-'+copy(FFechaVta,7,2);

        dmFE1.ArchivoQR := System.IOUtils.TPath.GetTempPath + 'OPTAL_FE_QR.bmp';
        if dmFE1.GenerarQR(1,Fecha,FCuitVdor,FPtoVenta,FTipoComp,FNumeroInt,
                           FTotal,Moneda,FMonedaCotiz,
                           FTipoDocumento, Trunc(FCuitComp) ,'E',StrToFloat(FCAE)) Then
          begin
            FQRImage:=dmFE1.fqrbmp;// TBitmap.Create;
   //         FQRImage.LoadFromFile(dmFE1.ArchivoQr);
          end;
        btCerrar.Click;
      end
    else
    ShowMessage('No Hay CAE para Asignar....');
end;

function TFormFiscalizacion.HayInternet: boolean;
var
  i: Integer;
begin
  Result:= True;
  if VerificarConeccion1.Checked then
    begin
      MensajeEstado('Haciendo PING https://www.google.com.ar.........');

      if WebIng('https://www.google.com.ar') then
        Result:=True
      else
        Result:= False;
//
      if Result then
        MensajeEstado('PING Positivo....')
      else
        MensajeEstado('PING Fallido....');
    end
  else
    MensajeEstado('Verificacion Coneccion Omitida....');

end;

procedure TFormFiscalizacion.Recupera;
begin
  try
    ROk          := dmFE1.RecuperaLastCMP(FPtoVenta, FTipoComp, FNumeroInt);
    AfipResponde := True;
  except
    MensajeEstado(' ARCA NO RESPONDE ');
  end;
end;

//Llamada:
procedure TFormFiscalizacion.btFiscalizarClick(Sender: TObject);
begin
  MensajeEstado('Clik en Boton Fiscalizar...........');
  if (Trim(FCAE)='') then
    begin
      MensajeEstado('Comienza proceso de Fiscalizar...........');
      btFiscalizar.Enabled:=False;
      if (FTipoComp=19) or (FTipoComp=21) then
        Fiscalizar_E_JC
        //Fiscalizar_E
      else
       Fiscalizar_JC;
    end
  else
    MensajeEstado('No se Inicia , Existe CAE (Clik Fiscalizar)...........');
end;

procedure TFormFiscalizacion.chVerLogClick(Sender: TObject);
begin
  mLog.Visible:= chVerLog.Checked;
end;


procedure TFormFiscalizacion.btProxyClick(Sender: TObject);
begin
  ShowMessage(cbProxys.ColumnItems[cbProxys.ItemIndex,0]+':'+
              cbProxys.ColumnItems[cbProxys.ItemIndex,1]);
  if Trim(cbProxys.ColumnItems[cbProxys.ItemIndex,1])='' then
    begin
      SetConnectionOptions('','', True);
    end
  else
    SetConnectionOptions(cbProxys.ColumnItems[cbProxys.ItemIndex,0]+':'+
                         cbProxys.ColumnItems[cbProxys.ItemIndex,1], '', true);
 end;

procedure TFormFiscalizacion.btPuntosVtasClick(Sender: TObject);
var respuesta:TStrings;
begin
  mPuntosVenta.Lines.Clear;
  Respuesta          := dmFE1.GetPuntosVenta(Trunc(FCuitVdor));
  mPuntosVenta.Lines := respuesta;
end;

procedure TFormFiscalizacion.btConsultaCpbtesClick(Sender: TObject);
var respuesta:TStrings;
begin
  MemoConsulta.Lines.Clear;
  Respuesta         := dmFE1.GetTiposComprobantes(Trunc(FCuitVdor));
  MemoConsulta.Lines:=respuesta;
end;

procedure TFormFiscalizacion.btBuscarClick(Sender: TObject);
begin
  if (FTipoComp=19) or (FTipoComp=21) then
    ConsultarPorNroJC_E
  else
    ConsultarPorNroJC;
end;

procedure TFormFiscalizacion.btCerrarClick(Sender: TObject);
begin
  Continuar :=  False;
  Close;
end;


procedure TformFiscalizacion.Consultar_E;
VAR OldCAE,OldVto:WideString;
begin
  wsfex1.CUIT := FCuitVdor;  //20129063662; // Cuit del vendedor
  wsfex1.URL  := URLWSW_EX;
//    if wsfev1.login('C:\OpenSSL-WIn32\bin\Claves\certificado.crt', 'C:\OpenSSL-WIn32\bin\Claves\privada.key', URLWSAA) then
  try
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

  except
    ShowMessage (wsfex1.ErrorDesc);
    edAnterior.Text := '00000000';
    edNumero.Text   := '1';
  end;
end;

procedure TFormFiscalizacion.EjecutarProcesoAutomatico;
begin
  // ACÁ ponés el proceso que querés que arranque solo.
   chFecha.Checked                := True;
   chbControlaNumeracion.Checked  := False;
   chbCerrar.Checked              := True;
   ChImprimir.Checked             := False;
   btFiscalizarClick(btFiscalizar);
  // btConsultaCpbtesClick(btConsultaCpbtes);
  // o una rutina tuya directa.
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
    end;
  finally
    Free;
  end;
end;

function  TFormFiscalizacion.VerificaRepetido     : Boolean;
var
  AXML: TXMLDocument;  Nodo: IXMLNode;  Prefijo, CodAfip: Integer; Cuit, Importe: Extended;
begin
  AXML                := TXMLDocument.Create(Application);
  AXML.XML.Text       := wsfev1.XMLResponse;
  AXML.Active         := True;
  Nodo                := AXML.DocumentElement;
  DisplayNodoRenglon(Nodo);
  Result    :=  (TryStrToInt(VPrefijo,Prefijo))             and
                (TryStrToInt(VCodAfip, CodAfip))            and
                (TryStrToFloat(VNroCuit,CUIT))              and
                (TryStrToFloat(VImporte,Importe))           and
                (TipoComp  = CodAfip)                       and
                (PtoVenta  = Prefijo)                       and
                (CuitComp  = CUIT   )                       and
                (abs(Total - Importe) < 0.1);
  AXML.Free;
end;

procedure TFormFiscalizacion.WMStartAutoRun(var Msg: TMessage);
begin
  EjecutarProcesoAutomatico;
end;

function  TFormFiscalizacion.VerificaFactura      : Boolean;
var
  QSQLf: TFDQuery;
begin
  QSQLf            := TFDQuery.Create(nil);
  QSQLf.Connection := DMMain_FD.fdcGestion;

  QSQLf.Open(
       'select f.id_fc from fcvtacab f    '+
       '  left join comprobantes c on c.sucursal = f.sucursal and      '+
       '                         c.letra         = f.letrafac and      '+
       '                         c.prefijo       = f.sucfac  and       '+
       '                         c.tipo_comprob  = f.tipocpbte and     '+
       '                         c.clase_comprob = f.clasecpbte        '+
       ' where   f.factura_electronica=''S'' and c.codigo_afip = :codigo and  '+
       '         f.sucfac = :ptovta and f.numerofac = :nrocpbte      ',

       [  RightStr('000' + IntToStr(TipoComp),3),
          RightStr('0000' + IntToStr(PtoVenta),4),
          RightStr('00000000' + FloatToStr(NumeroActual),8) ]);
  Result  :=  QSQLf.IsEmpty;
  QSQLf.Close;
  QSQLf.Free;
end;


function  TFormFiscalizacion.VerificaCAE  (const CAE: string): Boolean;
var
  QSQL: TFDQuery;
begin
  QSQL            := TFDQuery.Create(Application);
  QSQL.Connection := DMMain_FD.fdcGestion;
  QSQL.Open('select f.id_fc from fcvtacab f where f.CAE = :CAE ', [CAE]);
  Result          :=  QSQL.IsEmpty;
  QSQL.Close;
  FreeAndNil(QSQL);
end;


procedure TformFiscalizacion.Consultar;
VAR OldCAE,OldVto:WideString;
begin
  wsfev1.CUIT := FCuitVdor;  //20129063662; // Cuit del vendedor
  wsfev1.URL  := URLWSW;
  MensajeEstado('Varificando Internet desde procedimiento Consultar ...');
  if HayInternet then
    begin
      MensajeEstado('Login desde Consulta...');
      wsfev1.Reset;
      if wsfev1.login(Certificado,Clave,URLWSAA) then
        begin
          MensajeEstado('Login Ok.....');
          try
            MensajeEstado('Recuperando Ultimo Comprobante ... Pto de Vta>'+IntToStr(FPtoVenta)+' Tipo Comp>'+IntToStr(FTipoComp));
            wsfev1.Reset;
            if not wsfev1.RecuperaLastCMP(FPtoVenta, FTipoComp, FNumero) then
              begin
                MensajeEstado(' Error Recuperando Ultimo Comprobante ...Pto de Vta>'+IntToStr(FPtoVenta)+' Tipo COmp>'+IntToStr(FTipoComp));
                ShowMessage (wsfev1.ErrorDesc+'('+IntToStr(wsfev1.ErrorCode)+')');
                Exit;
                btCerrar.Click;
              end
            else
              begin
                if (varisnull(FNumero)) then
                  FNumero:=0;
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

                    if (VerificaRepetido) and
                       (MessageDlg(' Los datos coinciden con los últimos fiscalizados: \n ' +
                                   ' Fecha: ' + VFecha + ' / Nro: ' + VNumero  +
                                   ' / Cuit: '+ VNroCuit + ' / Importe: ' + VImporte + '. \n' +
                                   ' Fiscaliza de todos modos? ', mtWarning, [mbYes,mbNo],0) = mrNo)
                    then
                      Continuar :=  False;
                  end
                else
                  begin
                    MensajeEstado('(10)Fallo Consulta Ultimo CAE ...... ');
                    wsfev1.Reset;
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

procedure TformFiscalizacion.ConsultarJC;
VAR OldCAE,OldVto:WideString;
DatosCpm: TDatosComprobante;
begin
  MensajeEstado('Varificando Internet desde procedimiento Consultar ...');
  if HayInternet then
    begin
      MensajeEstado('Login desde Consulta...');
      dmFE1.Reset;
      if dmFE1.CheckLogin(Trunc(FCuitVdor)) then
        begin
          MensajeEstado('Login Ok.....');
          try
            MensajeEstado('Recuperando Ultimo Comprobante ... Pto de Vta>'+IntToStr(FPtoVenta)+' Tipo Comp>'+IntToStr(FTipoComp));
            dmFE1.Reset;
            if not dmFE1.RecuperaLastCMP(FPtoVenta, FTipoComp, FNumeroInt) then
              begin
                MensajeEstado(' Error Recuperando Ultimo Comprobante ...Pto de Vta>'+IntToStr(FPtoVenta)+' Tipo COmp>'+IntToStr(FTipoComp));
                ShowMessage (dmFE1.ErrorDesc);
                Exit;
                btCerrar.Click;
              end
            else
              begin
                if (varisnull(FNumeroInt)) then
                  FNumeroInt:=0;
                MensajeEstado('Ultimo Comprobante ...> '+IntToStr(FNumeroInt));
                MensajeEstado('Trayendo CAE del Ultimo Comprobante ...> '+IntToStr(FNumeroInt));
                if dmFE1.ConsultarComprobanteDetallado(FPtoVenta,FTipoComp, FNumeroInt,DatosCpm) then
                  begin
                    if (varisnull(FNumeroInt)) then
                      FNumeroInt:=0;
                    lbCAEAnterior.Caption:='CAE.:'+DatosCpm.CAE;
                    lbVtoAnterior.Caption:='Vto.:'+DatosCpm.CAEFchVto;
                    MensajeEstado('CAE del Ultimo Comprobante ...> '+DatosCpm.CAE);
                    edAnterior.Text := IntToStr(FNumeroInt);
                    edAnterior.Text := copy('00000000',1,8-length(IntToStr(FNumeroInt)))+IntToStr(FNumeroInt);
                    edNumero.Text   := '';

//                    if (VerificaRepetido) and
//                       (MessageDlg(' Los datos coinciden con los últimos fiscalizados: \n ' +
//                                   ' Fecha: ' + VFecha + ' / Nro: ' + VNumero  +
//                                   ' / Cuit: '+ VNroCuit + ' / Importe: ' + VImporte + '. \n' +
//                                   ' Fiscaliza de todos modos? ', mtWarning, [mbYes,mbNo],0) = mrNo)
//                    then
//                      Continuar :=  False;
                  end
                else
                  begin
                    MensajeEstado('(10)Fallo Consulta Ultimo CAE ...... ');
                    dmFE1.Reset;
                    btCerrar.Click;
                  end;
              end;
          except
            MensajeEstado('Fallo de Internet o de Acceso a la AFIP');
            ShowMessage('Fallo de Operacion de Accesos Servicios de Consulta AFIP');
            dmFE1.Reset;
            btFiscalizar.Enabled:=False;
            btCerrar.Click;
          end;
        end
      else
        begin
          edAnterior.Text := '00000000';
          edNumero.Text   := '1';
          btCerrar.Click;
        end;
      dmFE1.Reset;
    end
  else
    begin
      MensajeEstado('Fallo de Internet ...... ');
      ShowMessage('No Hay Coneccion de Internet...');
      btFiscalizar.Enabled:=False;
      Close;// Close;
    end;

end;

procedure TformFiscalizacion.ConsultarJC_E;
VAR FechaCpbte,OldCAE,OldVto:WideString;
Cpbte_Nro:Double;
begin
  MensajeEstado('Varificando Internet desde procedimiento Consultar ...');
  if HayInternet then
    begin
      MensajeEstado('Login desde Consulta...');
      //dmFEX.Reset;
      if dmFEX.CheckLogin(Trunc(FCuitVdor)) then
        begin
          MensajeEstado('Login Ok.....');
          try
            MensajeEstado('Recuperando Ultimo Comprobante ... Pto de Vta>'+IntToStr(FPtoVenta)+' Tipo Comp>'+IntToStr(FTipoComp));
            if not dmFEX.RecuperaLastCMP(FPtoVenta, FTipoComp, Cpbte_Nro,FechaCpbte) then
              begin
                MensajeEstado(' Error Recuperando Ultimo Comprobante ...Pto de Vta>'+IntToStr(FPtoVenta)+' Tipo Comp>'+IntToStr(FTipoComp));
                ShowMessage ('error de recupero');
                Exit;
                btCerrar.Click;
              end
            else
              begin
                FNumeroInt:=Trunc(Cpbte_Nro);
                if (varisnull(FNumeroInt)) then
                  FNumeroInt:=0;
                MensajeEstado('Ultimo Comprobante ...> '+IntToStr(FNumeroInt));
                MensajeEstado('Trayendo CAE del Ultimo Comprobante ...> '+IntToStr(FNumeroInt));
                if dmFEX.CmpConsultar(FTipoComp,FPtoVenta, Cpbte_Nro,OldCAE,FechaCpbte) then
                  begin
                    FNumeroInt:=Trunc(Cpbte_Nro);
                    if (varisnull(FNumeroInt)) then
                      FNumeroInt:=0;
                    lbCAEAnterior.Caption:='CAE.:'+OldCAE;
                    lbVtoAnterior.Caption:='Vto.:'+FechaCpbte;
                    MensajeEstado('CAE del Ultimo Comprobante ...> '+OldCAE);
                    edAnterior.Text := IntToStr(FNumeroInt);
                    edAnterior.Text := copy('00000000',1,8-length(FormatFloat('00000000',Cpbte_Nro)))+FormatFloat('00000000',Cpbte_Nro);
                    edNumero.Text   := '';
                  end
                else
                  begin
                    MensajeEstado('(10)Fallo Consulta Ultimo CAE ...... ');
//                    dmFE1.Reset;
                    btCerrar.Click;
                  end;
              end;
          except
            MensajeEstado('Fallo de Internet o de Acceso a la AFIP');
            ShowMessage('Fallo de Operacion de Accesos Servicios de Consulta AFIP');
            dmFE1.Reset;
            btFiscalizar.Enabled:=False;
            btCerrar.Click;
          end;
        end
      else
        begin
          edAnterior.Text := '00000000';
          edNumero.Text   := '1';
          btCerrar.Click;
        end;
  //    dmFE1.Reset;
    end
  else
    begin
      MensajeEstado('Fallo de Internet ...... ');
      ShowMessage('No Hay Coneccion de Internet...');
      btFiscalizar.Enabled:=False;
      Close;// Close;
    end;

end;

procedure TformFiscalizacion.DisplayNodoRenglon(Nodo:IXMLNode  );
var i:Integer;
Cadena:String;
NodoPadre:String;
begin
  if (Nodo.NodeType=ntElement) and (Nodo.IsTextElement) then
    begin
     NodoPadre:= Nodo.ParentNode.NodeName;
     if (Nodo.NodeName='CbteFch') and (NodoPadre='ResultGet') then
       VFecha:=FormatDateTime('yyyymmdd',(EncodeDate( StrToInt(Copy(Nodo.NodeValue,1,4)),
                                                      StrToInt(Copy(Nodo.NodeValue,5,2)),
                                                      StrToInt(Copy(Nodo.NodeValue,7,2)))))
     else
       if Nodo.NodeName='PtoVta' then
         VPrefijo:=(Copy('0000',1,4-Length(Nodo.NodeValue))+Nodo.NodeValue)
       else
         if Nodo.NodeName='CbteDesde' then
           VNumero:=(Copy('00000000',1,8-Length(Nodo.NodeValue))+Nodo.NodeValue)
         else
           if Nodo.NodeName='DocNro' then
             VNroCuit:=Nodo.NodeValue
           else
             if Nodo.NodeName='ImpNeto' then
               VNeto:=formatFloat(',0.00', StrToFloat(Nodo.NodeValue))
             else
               if Nodo.NodeName='ImpIVA' then
                 VIva:= formatFloat(',0.00', StrToFloat(Nodo.NodeValue))
               else
                 if Nodo.NodeName='ImpTotal' then
                   VImporte:=formatFloat(',0.00', StrToFloat(Nodo.NodeValue))
                 else
                   if Nodo.NodeName='CodAutorizacion' then
                     VCAE:=Nodo.NodeValue
                   else
                     if Nodo.NodeName='FchVto' then
                       VCAEVto:=Nodo.NodeValue
                     else
                       if Nodo.NodeName='ImpOpEx' then
                         VNetoExento:=Nodo.NodeValue
                       else
                         if Nodo.NodeName='Alic' then
                           VALic:=Nodo.NodeValue
                         else
                           if Nodo.NodeName='ImpTrib' then
                             VImporteAlic:=Nodo.NodeValue
                           else
                             if Nodo.NodeName='CbteTipo' then
                               VCodAFIP:=Nodo.NodeValue

    end;

  for i  := 0 to Nodo.ChildNodes.Count - 1 do
    begin
      DisplayNodoRenglon(Nodo.ChildNodes[I]);
    end;

end;

procedure TformFiscalizacion.ConsultarPorNro;
VAR
  OldCAE,OldVto:WideString;
begin
  wsfev1.CUIT := FCuitVdor;  //20129063662; // Cuit del vendedor
  wsfev1.URL  := URLWSW;
  if wsfev1.login(Certificado,Clave,URLWSAA) then
    begin
      if wsfev1.CmpConsultar(FTipoComp,FPtoVenta, FNumeroActual,OldCAE,OldVto) Then
        begin
          edCaeOtorgado.Text  :=OldCAE;
          edVto.Text          :=OldVto;
          if not VerificaCAE(OldCAE) then
            begin
              ShowMessage(' Ya existe una factura con este CAE. Revisar en "Ventas", "Fiscalizar por lotes"');
              btAsignar.Enabled  :=  False;
            end;
        end;
    end;
end;

procedure TformFiscalizacion.ConsultarPorNroJC;
VAR
  DatosCmp:TDatosComprobante;
begin
  if dmFE1.CheckLogin(Trunc(FCuitVdor)) then
    begin
      if dmFE1.ConsultarComprobanteDetallado(FPtoVenta,FTipoComp, StrToInt(edNumeroActual.Text),DatosCmp) Then
        begin
          edCaeOtorgado.Text  := DatosCmp.CAE;
          edVto.Text          := DatosCmp.CAEFchVto;
          FMonedaCotiz        := DatosCmp.MonCotiz;
         // FMoneda             := StrToInt(DatosCmp.MonId);
          if not VerificaCAE(DatosCmp.CAE) then
            begin
              ShowMessage(' Ya existe una factura con este CAE. Revisar en "Ventas", "Fiscalizar por lotes"');
              btAsignar.Enabled  :=  False;
            end;
        end;
    end;
end;

procedure TformFiscalizacion.ConsultarPorNroJC_E;
VAR
  DatosCmp:TFacturaFEX;
  Nro:Double;
begin
  dmFEX.InicializarServicio(URLWSAA,URLWSW_EX,Certificado,Clave);
  if dmFEX.CheckLogin(Trunc(FCuitVdor)) then
    begin
      Nro:=StrToFloat(edNumeroActual.Text);
      if dmFEX.CmpConsultarRecord(FTipoComp,FPtoVenta, Nro,DatosCmp) Then
        begin
          edCaeOtorgado.Text  := DatosCmp.Cae;
          edVto.Text          := DatosCmp.Fch_venc_Cae;
          FMonedaCotiz        := StrToFloat(DatosCmp.Moneda_ctz);
         // FMoneda             := StrToInt(DatosCmp.MonId);
          if not VerificaCAE(DatosCmp.CAE) then
            begin
              ShowMessage(' Ya existe una factura con este CAE. Revisar en "Ventas", "Fiscalizar por lotes"');
              btAsignar.Enabled  :=  False;
            end;
        end;
    end;
end;


procedure TFormFiscalizacion.Fiscalizar_JC;
var
  Estado:Boolean;
  Reproceso       : Widestring;
  ImporteAjuste,ImporteIva,ImporteIvaCal,
  ImporteIvaCal21,ImporteIvaCal105,ImporteIvaCal27: Extended;
  FechaQr,StrMoneda:String;
  IvaCompradorJC:Integer;
begin
  btFiscalizar.Enabled:=False;
  MensajeEstado('Verificando Internet');
  if HayInternet=False then
    begin
      MensajeEstado('Sin Conexión');
      Raise Exception.Create('No se puede realizar la op...');
      Exit;
    end
  else
    MensajeEstado('Internet Ok.');

  Resultado := '';
  Reproceso := '';
  if chFecha.Checked then
    begin
      MensajeEstado('Cambia a la Fecha del Día.... ');
      FechaVta := FormatDateTime('yyyymmdd', Now());
      FechaVto := FormatDateTime('yyyymmdd', Now());
    end;
  MensajeEstado('Inicio ... Reset de wsfev1');

  MensajeEstado('Logeando contra AFIP....');

  if dmFE1.CheckLogin(Trunc(FCuitVdor)) then
    begin
      MensajeEstado('Login ok ...');
      MensajeEstado('Buscando Ultimo Numero para :'+'Pto de Vta:'+IntToStr(FPtoVenta)+'.. Tipo Comp.:'+IntToStr(FTipoComp)+'....');
      if not dmFE1.RecuperaLastCMP(FPtoVenta, FTipoComp, FNumeroInt) then
        begin
          MensajeEstado('Error de Busqueda Ultimo Numero para Pto de Vta:'+IntToStr(FPtoVenta)+'.. Tipo Comp.:'+IntToStr(FTipoComp)+'....');
          ShowMessage (dmFE1.ErrorDesc);
        end
      else
        begin
          MensajeEstado('Nuemero Recuperado para Pto de Vta:'+IntToStr(FPtoVenta)+'..Tipo Comp.:'+IntToStr(FTipoComp)+'>>>.'+IntToStr(FNumeroInt));
          if (VarIsNull(FNumeroInt)) then
            FNumeroInt:=0;
          edAnterior.Text := copy('00000000',1,8-length(IntToStr(FNumeroInt)))+IntToStr(FNumeroInt);
          FNumeroInt         := FNumeroInt + 1;

          if chbControlaNumeracion.Checked then
            begin
              if Trunc(FNumeroActual)>(FNumeroInt) then
                begin
                  MensajeEstado('El Numero de Cpbte es Mayor al Ultimo Fiscalizado.... El Numero deberia ser el '+FormatFloat('00000000',FNumeroInt));
                  ShowMessage('El Numero de Cpbte es Mayor al Ultimo Fiscalizado.... El Numero deberia ser el '+FormatFloat('00000000',FNumeroInt));
                  Exit;
                end
              else
                if Trunc(FNumeroActual)<(FNumeroInt) then
                  begin
                    MensajeEstado('El Numero de Cpbte ya fue Fizcalizado....El Numero debería ser el '+FormatFloat('00000000',FNumeroInt));
                    ShowMessage ('El Numero de Cpbte ya fue Fizcalizado....... Verificar....El Numero debería ser el '+FormatFloat('00000000',FNumeroInt));
                    Exit;
                  end;
            end;

          edNumero.Text  :=copy('00000000',1,8-length(IntToStr(FNumeroInt)))+IntToStr(FNumeroInt);
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

                  ImporteIva     := 0;
                  ImporteIvaCal  := 0;
                  ImporteIva     := (FDatosImp.FieldByName('Importe').AsFloat);
                  ImporteIvaCal  := (FDatosImp.FieldByName('Neto').AsFloat*FDatosImp.FieldByName('Tasa').AsFloat*0.01);
                  ImporteIva     := Roundto((FDatosImp.FieldByName('Importe').AsFloat),-2);
                  ImporteIvaCal  := RoundTo((FDatosImp.FieldByName('Neto').AsFloat*FDatosImp.FieldByName('Tasa').AsFloat*0.01),-2);

                  case FDatosImp.FieldByName('codigo_gravamen').AsInteger of
                    1:   ImporteIvaCal21   := ImporteIvaCal;
                    4,6: ImporteIvaCal105  := ImporteIvaCal;
                    2:   ImporteIvaCal27   := ImporteIvaCal;
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
           begin
             ImporteAjuste := 0;
             Ajustar       := False;
           end;

          if ((FTipoComp=11) or  (FTipoComp=13)) then
            begin
              ImporteIvaCal21   := 0;
              ImporteIvaCal105  := 0;
              ImporteIvaCal27   := 0;
              FTotalNeto        := roundTo( FTotal + ImporteAjuste,-4);
              FTotalNeto        := roundTo( FTotalNeto,-3);
              FTotalNeto        := roundTo( FTotalNeto,-2);

              FTotalExento      := 0;
            end;

          if Not(chAplicaAjuste.Checked) then
            ImporteAjuste := 0;

          if FTipoComp in [202,203,207,208,212,213] then FFechaVto:='';


          MensajeEstado('Carga Variables de Factura(AgregarFactura)>'+' Tipo Doc :'+ IntToStr(FTipoDocumento)+
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

          dmFE1.Reset;
          if Moneda=1  then StrMoneda:='PES' else
          if Moneda=2  then StrMoneda:='DOL';
          if Moneda=3  then StrMoneda:='060';

          //  Asignacion de Condicion de IVA
          //
          case FTipoIvaComp of
             1:IvaCompradorJC  :=1;
             3:IvaCompradorJC  :=5;
             6:IvaCompradorJC  :=4;
             4:IvaCompradorJC  :=4;
             2,5:IvaCompradorJC:=6;
            end;


          dmFE1.AgregaFactura(3,FTipoDocumento, Trunc(FCuitComp), FNumeroInt, FNumeroInt,
                              FFechaVta, FTotal,FTotalNetoNoGrav,FTotalNeto-ImporteAjuste,FTotalExento,
                              FFechaVta, FFechaVta, FFechaVto, StrMoneda, MonedaCotiz, IvaCompradorJC);

           if Not((FTipoComp=11) or  (FTipoComp=13)) then
            begin
              FDatosImp.First;
              while not(FDatosImp.Eof) do
                begin
                  MensajeEstado('Carga Iva (Agregar Iva): Alicuota Cod:'+FDatosImp.FieldByName('codigo_gravamen').AsString);

                  case FDatosImp.FieldByName('codigo_gravamen').AsInteger of
                    1:dmFE1.AgregaIVA(IVA21 ,RoundTo(FDatosImp.FieldByName('Neto').AsFloat,-2),ImporteIvaCal21);
                    4:dmFE1.AgregaIVA(IVA105,RoundTo(FDatosImp.FieldByName('Neto').AsFloat,-2),ImporteIvaCal105);
                    2:dmFE1.AgregaIVA(IVA27, RoundTo(FDatosImp.FieldByName('Neto').AsFloat,-2),ImporteIvaCal27);
                  end;
                  FDatosImp.Next;
                  MensajeEstado('Tasa 21% ......... '+FloatToStr(ImporteIvaCal21));
                  MensajeEstado('Tasa 10.51% ...... '+FloatToStr(ImporteIvaCal105));
                  MensajeEstado('Tasa 27% ......... '+FloatToStr(ImporteIvaCal27));

                end;
              MensajeEstado('Fin Carga Iva (Agregar Iva)');
            end;
          //// Ultm agreado 01/04/2021 erro en NC ND
          if (FTipoComp=3) or (FTipoComp=8) or (FTipoComp=2) or (FTipoComp=7) or (FTipoComp=12) or (FTipoComp=13) then
            dmFE1.AgregaCompAsoc(FAsociado_Tipo,FAsociado_PtoVta,Trunc(FAsociado_Nro),Trunc(FCuitVdor),FAsociado_CpbteFch);

          if FTotalIIBB>0 then
            begin
              MensajeEstado('Carga IIBB (Agregar Tributo)');
              dmFE1.AgregaTributo(2,'PERCEP IIBB', roundto(FBaseImpIIBB,-2), RoundTo(FTasaIIBB,-2), roundto(FTotalIIBB,-2));
              MensajeEstado('Tasa Percep.IIBB . '+FloatToStr(FTasaIIBB));
              MensajeEstado('Percep.IIBB ...... '+FloatToStr(FTotalIIBB));
            end;

          if FDatosPercepciones.RecordCount>0 then
            begin
              FDatosPercepciones.First;
              while not(FDatosPercepciones.Eof) do
                begin
                  MensajeEstado('Percecpion Iva (Agregar Tributo)');
                  dmFE1.AgregaTributo(1,'PERCEP IVA', roundto(FDatosPercepciones.FieldByName('NETO').Value,-2),
                                                      roundto(FDatosPercepciones.FieldByName('TASA').Value,-2),
                                                      roundto(FDatosPercepciones.FieldByName('IMPORTE').Value,-2));
                  MensajeEstado('Tasa Percep.IVA . '+FloatToStr(FDatosPercepciones.FieldByName('TASA').Value));
                  MensajeEstado('Percep.IVA ...... '+FloatToStr(FDatosPercepciones.FieldByName('IMPORTE').Value));
                  FDatosPercepciones.Next;
                end;
            end;

          {
          Otros Tributos
          Código	Descripción
           01	Impuestos nacionales
           02	Impuestos provinciales
           03	Impuestos municipales
           04	Impuestos internos
           99	Otros
           }
          //****************************************************************
          // ******************** Factura de Credito ***********************
          //****************************************************************

          if FTipoComp in [201,206,211] then
            dmFE1.AgregaOpcional('2101',FCbu);

          if FTipoComp in [202,203,207,208,212,213] then
            begin
              MensajeEstado('Asociado Documento... '+IntToStr(FAsociado_Tipo));
              MensajeEstado('Asociado Pto Vta..... '+IntToStr(FAsociado_PtoVta));
              MensajeEstado('Asociado Documento... '+FloatToStr(FAsociado_Nro));
              MensajeEstado('Asociado Cuit........ '+FloatToStr(FCuitVdor));
              MensajeEstado('Asociado Cbte Fecha.. '+FAsociado_CpbteFch);

              case rgModoNC_MiPyme.ItemIndex of
               0:dmFE1.AgregaOpcional('22','S');
               1:dmFE1.AgregaOpcional('22','N');
              end;
              dmFE1.AgregaCompAsoc(FAsociado_Tipo,FAsociado_PtoVta,Trunc(FAsociado_Nro),Trunc(FCuitVdor),FAsociado_CpbteFch);
            end;

          if FTipoComp in [201,206,211] then
            case rgModoFacturacion_MiPyme.ItemIndex of
              0:dmFE1.AgregaOpcional('27','SCA');
              1:dmFE1.AgregaOpcional('27','ADC');
            end;
            //wsfev1.AgregaOpcional('27','SCA');

          if (FDatosAsociados<>nil) and (FDatosAsociados.RecordCount>0) then
            begin
              MensajeEstado('Carga de Actividad:.'+FCodActividad);
              if (FCodActividad<>'**********') and (Trim(FCodActividad)<>'') then
                dmFE1.AgregaActividad(StrToInt(FCodActividad));
              FDatosAsociados.First;
              while NOT(FDatosAsociados.Eof) do
                begin
                  MensajeEstado('/// Remitos Carnicos Asociado Documento... ');
                  MensajeEstado('Asociado Tipo Docu... '+IntToStr(FDatosAsociados.FieldByName('ASOCIADO_TIPO').AsInteger));
                  MensajeEstado('Asociado Pto Vta..... '+IntToStr(FDatosAsociados.FieldByName('ASOCIADO_PTOVTA').Value));
                  MensajeEstado('Asociado Nro Docu.... '+FloatToStr(FDatosAsociados.FieldByName('ASOCIADO_NRO').Value));
                  MensajeEstado('Asociado Cuit........ '+FloatToStr(FCuitVdor));
                  MensajeEstado('Asociado Cbte Fecha.. '+Copy(FDatosAsociados.FieldByName('ASOCIADO_CPTEFECHA').AsString,5,4)+
                                                         Copy(FDatosAsociados.FieldByName('ASOCIADO_CPTEFECHA').AsString,3,2)+
                                                         Copy(FDatosAsociados.FieldByName('ASOCIADO_CPTEFECHA').AsString,1,2));
                  dmFE1.AgregaCompAsoc(FDatosAsociados.FieldByName('ASOCIADO_TIPO').AsInteger,
                                       FDatosAsociados.FieldByName('ASOCIADO_PTOVTA').Value,
                                       FDatosAsociados.FieldByName('ASOCIADO_NRO').Value,
                                       Trunc(FCuitVdor),
                                       Copy(FDatosAsociados.FieldByName('ASOCIADO_CPTEFECHA').AsString,5,4)+
                                       Copy(FDatosAsociados.FieldByName('ASOCIADO_CPTEFECHA').AsString,3,2)+
                                       Copy(FDatosAsociados.FieldByName('ASOCIADO_CPTEFECHA').AsString,1,2));
                  FDatosAsociados.Next;
                end;
            end;

          //****************************************************************
          //****************************************************************
          try
            MensajeEstado('Pedido de Autorizacion ................');

            if dmFE1.Autorizar(FPtoVenta, FTipoComp) then
              begin
                try
                  MensajeEstado('Leer respuesta de autorizacion ...........');
                  if dmFE1.AutorizarRespuesta(0, FCAE, FVencimiento, FResultado, Reproceso) Then
                    begin
                      MensajeEstado('Respuesta de Autorizacion = ('+FResultado+') -- CAE: '+FCAE);
                      If FResultado = 'A' Then
                        begin
                          MensajeEstado('Autorizada = ('+FResultado+') ... CAE:'+FCAE+' Nro.:'+FloatToStr(FNumero)+' Fecha:'+FFechaVta);
                          MensajeEstado('////////// Fin');
                          FProcesoOk        := True;
                          edCAE.Text        := FCAE;
                          edVencimiento.Text:= FVencimiento;
                          FechaQr           := copy(FFechaVta,1,4)+'-'+ copy(FFechaVta,5,2)+'-'+copy(FFechaVta,7,2);
                          //tipoCodAut := 'E';  // A = CAEA; E = CAE
                          dmFE1.ArchivoQR := System.IOUtils.TPath.GetTempPath + 'OPTAL_FE_QR.bmp';
                          if dmFE1.GenerarQR(1,FechaQr,FCuitVdor,FPtoVenta,FTipoComp,FNumeroInt,
                                             FTotal,StrMoneda,MonedaCotiz,
                                             TipoDocumento, Trunc(FCuitComp) ,'E',StrToFloat(FCAE)) Then
                            begin
                              FQRImage:=dmFE1.fQRBMP;
                              //FQRImage:=TBitmap.Create;
                              //FQRImage.LoadFromFile(dmFE1.ArchivoQr);
                            end;

                          if chbCerrar.Checked then
                            btCerrar.Click;
                        end
                      else
                        begin
                          MensajeEstado('*** No Autorizada ****** >>>'+wsfev1.AutorizarRespuestaObs(0));
                          ShowMessage(dmFE1.AutorizarRespuestaObs(0));
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
                MensajeEstado('Error de Autorizacion:'+dmFE1.ErrorDesc);
                ShowMessage(dmFE1.ErrorDesc);
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
      MensajeEstado('** ** Error:'+dmFE1.ErrorDesc+'(3)');
      ShowMessage(dmFE1.ErrorDesc);
      btCerrar.Click;
    end;
  dmFE1.Reset;
end;


procedure TFormFiscalizacion.Fiscalizar;
var
  Estado:Boolean;
  Reproceso       : Widestring;
  ImporteAjuste,ImporteIva,ImporteIvaCal,
  ImporteIvaCal21,ImporteIvaCal105,ImporteIvaCal27: Extended;
  FechaQr,StrMoneda:String;
begin
  btFiscalizar.Enabled:=False;
  MensajeEstado('Verificando Internet');
  if HayInternet=False then
    begin
      MensajeEstado('Sin Conexión');
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
      MensajeEstado('Cambia a la Fecha del Día.... ');
      FechaVta := FormatDateTime('yyyymmdd', Now());
      FechaVto := FormatDateTime('yyyymmdd', Now());
    end;
  //wsfev1      := Cowsfev1.Create;
  MensajeEstado('Inicio ... Reset de wsfev1');

  wsfev1.Depurar:=tRUE;

  wsfev1.CUIT := FCuitVdor;  //20129063662; // Cuit del vendedor
  wsfev1.URL  := URLWSW;

  //wsfev1.a

  MensajeEstado('Logeando contra AFIP....');
  if wsfev1.login(Certificado,Clave,URLWSAA) then
    begin
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
                    MensajeEstado('El Numero de Cpbte ya fue Fizcalizado....El Numero debería ser el '+FormatFloat('00000000',FNumero));
                    ShowMessage ('El Numero de Cpbte ya fue Fizcalizado....... Verificar....El Numero debería ser el '+FormatFloat('00000000',FNumero));
                    Exit;
                  end;
            end;

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

                  ImporteIva     := 0;
                  ImporteIvaCal  := 0;
                  ImporteIva     := (FDatosImp.FieldByName('Importe').AsFloat);
                  ImporteIvaCal  := (FDatosImp.FieldByName('Neto').AsFloat*FDatosImp.FieldByName('Tasa').AsFloat*0.01);
                  ImporteIva     := Roundto((FDatosImp.FieldByName('Importe').AsFloat),-2);
                  ImporteIvaCal  := RoundTo((FDatosImp.FieldByName('Neto').AsFloat*FDatosImp.FieldByName('Tasa').AsFloat*0.01),-2);

                  case FDatosImp.FieldByName('codigo_gravamen').AsInteger of
                    1:   ImporteIvaCal21   := ImporteIvaCal;
                    4,6: ImporteIvaCal105  := ImporteIvaCal;
                    2:   ImporteIvaCal27   := ImporteIvaCal;
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
           begin
             ImporteAjuste := 0;
             Ajustar       := False;
           end;

          if ((FTipoComp=11) or  (FTipoComp=13)) then
            begin
              ImporteIvaCal21   := 0;
              ImporteIvaCal105  := 0;
              ImporteIvaCal27   := 0;
              FTotalNeto        := roundTo( FTotal + ImporteAjuste,-4);
              FTotalNeto        := roundTo( FTotalNeto,-3);
              FTotalNeto        := roundTo( FTotalNeto,-2);

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

          wsfev1.Reset;
          if Moneda=1  then StrMoneda:='PES' else
          if Moneda=2  then StrMoneda:='DOL';


          //wsfev1.ParamGetTiposMonedas()
          //  Concepto Int(2) 2 Servicios
          //                  3 Productos y Servicios
          wsfev1.AgregaFactura(3,FTipoDocumento, FCuitComp, FNumero, FNumero, FFechaVta, FTotal,FTotalNetoNoGrav,FTotalNeto-ImporteAjuste,FTotalExento, FFechaVta, FFechaVta, FFechaVto, StrMoneda, MonedaCotiz);
          //  if (FCodActividad<>'**********') and (Trim(FCodActividad)<>'') then
          //    wsfev1.AgregaActividad(StrToInt(FCodActividad));

           if Not((FTipoComp=11) or  (FTipoComp=13)) then
            begin
              FDatosImp.First;
              while not(FDatosImp.Eof) do
                begin
                  MensajeEstado('Carga Iva (Agregar Iva): Alicuota Cod:'+FDatosImp.FieldByName('codigo_gravamen').AsString);

                  case FDatosImp.FieldByName('codigo_gravamen').AsInteger of
                    1:wsfev1.AgregaIVA(IVA21 ,RoundTo(FDatosImp.FieldByName('Neto').AsFloat,-2),ImporteIvaCal21);// RoundTo(FDatosImp.FieldByName('Importe').AsFloat,-2));
                    4:wsfev1.AgregaIVA(IVA105,RoundTo(FDatosImp.FieldByName('Neto').AsFloat,-2),ImporteIvaCal105);// RoundTo(FDatosImp.FieldByName('Importe').AsFloat,-2));
                    2:wsfev1.AgregaIVA(IVA27, RoundTo(FDatosImp.FieldByName('Neto').AsFloat,-2),ImporteIvaCal27);// RoundTo(FDatosImp.FieldByName('Importe').AsFloat,-2));
                  end;
                  FDatosImp.Next;
                  MensajeEstado('Tasa 21% ......... '+FloatToStr(ImporteIvaCal21));
                  MensajeEstado('Tasa 10.51% ...... '+FloatToStr(ImporteIvaCal105));
                  MensajeEstado('Tasa 27% ......... '+FloatToStr(ImporteIvaCal27));

                end;
              MensajeEstado('Fin Carga Iva (Agregar Iva)');
            end;
          //// Ultm agreado 01/04/2021 erro en NC ND
          if (FTipoComp=3) or (FTipoComp=8) or (FTipoComp=2) or (FTipoComp=7) or (FTipoComp=12) or (FTipoComp=13) then
            wsfev1.AgregaCompAsoc(FAsociado_Tipo,FAsociado_PtoVta,FAsociado_Nro,FCuitVdor,FAsociado_CpbteFch);

          if FTotalIIBB>0 then
            begin
              MensajeEstado('Carga IIBB (Agregar Tributo)');
              wsfev1.AgregaTributo(2,'PERCEP IIBB', roundto(FBaseImpIIBB,-2), RoundTo(FTasaIIBB,-2), roundto(FTotalIIBB,-2));
              MensajeEstado('Tasa Percep.IIBB . '+FloatToStr(FTasaIIBB));
              MensajeEstado('Percep.IIBB ...... '+FloatToStr(FTotalIIBB));
            end;

          if FDatosPercepciones.RecordCount>0 then
            begin
              FDatosPercepciones.First;
              while not(FDatosPercepciones.Eof) do
                begin
                  MensajeEstado('Percecpion Iva (Agregar Tributo)');
                  wsfev1.AgregaTributo(1,'PERCEP IVA', roundto(FDatosPercepciones.FieldByName('NETO').Value,-2),
                                                       roundto(FDatosPercepciones.FieldByName('TASA').Value,-2),
                                                       roundto(FDatosPercepciones.FieldByName('IMPORTE').Value,-2));
                  MensajeEstado('Tasa Percep.IVA . '+FloatToStr(FDatosPercepciones.FieldByName('TASA').Value));
                  MensajeEstado('Percep.IVA ...... '+FloatToStr(FDatosPercepciones.FieldByName('IMPORTE').Value));
                  FDatosPercepciones.Next;
                end;
            end;

          {
          Otros Tributos
          Código	Descripción
           01	Impuestos nacionales
           02	Impuestos provinciales
           03	Impuestos municipales
           04	Impuestos internos
           99	Otros
           }
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

              case rgModoNC_MiPyme.ItemIndex of
               0:wsfev1.AgregaOpcional('22','S');
               1:wsfev1.AgregaOpcional('22','N');
              end;
              wsfev1.AgregaCompAsoc(FAsociado_Tipo,FAsociado_PtoVta,FAsociado_Nro,FCuitVdor,FAsociado_CpbteFch);
            end;

          if FTipoComp in [201,206,211] then
            case rgModoFacturacion_MiPyme.ItemIndex of
              0:wsfev1.AgregaOpcional('27','SCA');
              1:wsfev1.AgregaOpcional('27','ADC');
            end;
            //wsfev1.AgregaOpcional('27','SCA');

          if (FDatosAsociados<>nil) and (FDatosAsociados.RecordCount>0) then
            begin
              MensajeEstado('Carga de Actividad:.'+FCodActividad);
              if (FCodActividad<>'**********') and (Trim(FCodActividad)<>'') then
                wsfev1.AgregaActividad(StrToInt(FCodActividad));
              FDatosAsociados.First;
              while NOT(FDatosAsociados.Eof) do
                begin
                  MensajeEstado('/// Remitos Carnicos Asociado Documento... ');
                  MensajeEstado('Asociado Tipo Docu... '+IntToStr(FDatosAsociados.FieldByName('ASOCIADO_TIPO').AsInteger));
                  MensajeEstado('Asociado Pto Vta..... '+IntToStr(FDatosAsociados.FieldByName('ASOCIADO_PTOVTA').Value));
                  MensajeEstado('Asociado Nro Docu.... '+FloatToStr(FDatosAsociados.FieldByName('ASOCIADO_NRO').Value));
                  MensajeEstado('Asociado Cuit........ '+FloatToStr(FCuitVdor));
                  MensajeEstado('Asociado Cbte Fecha.. '+Copy(FDatosAsociados.FieldByName('ASOCIADO_CPTEFECHA').AsString,5,4)+
                                                         Copy(FDatosAsociados.FieldByName('ASOCIADO_CPTEFECHA').AsString,3,2)+
                                                         Copy(FDatosAsociados.FieldByName('ASOCIADO_CPTEFECHA').AsString,1,2));
                  wsfev1.AgregaCompAsoc(FDatosAsociados.FieldByName('ASOCIADO_TIPO').AsInteger,
                                        FDatosAsociados.FieldByName('ASOCIADO_PTOVTA').Value,
                                        FDatosAsociados.FieldByName('ASOCIADO_NRO').Value,
                                        FCuitVdor,
                                        Copy(FDatosAsociados.FieldByName('ASOCIADO_CPTEFECHA').AsString,5,4)+
                                        Copy(FDatosAsociados.FieldByName('ASOCIADO_CPTEFECHA').AsString,3,2)+
                                        Copy(FDatosAsociados.FieldByName('ASOCIADO_CPTEFECHA').AsString,1,2));
                  FDatosAsociados.Next;
                end;
            end;

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
                          FechaQr        := copy(FFechaVta,1,4)+'-'+ copy(FFechaVta,5,2)+'-'+copy(FFechaVta,7,2);
                          //tipoCodAut := 'E';  // A = CAEA; E = CAE
                          if dmFE1.GenerarQR(1,FechaQr,FCuitVdor,FPtoVenta,FTipoComp,Trunc(FNumero),
                                               FTotal,StrMoneda,MonedaCotiz,
                                               TipoDocumento, FCuitComp ,'E',StrToFloat(FCAE)) Then

                          FQRImage:=dmFE1.fQRBMP;
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



procedure TFormFiscalizacion.Fiscalizar_E_JC;
VAR OldCAE,OldVto:WideString;
  DatosCpm  : TDatosComprobante;
  MonFecha  : string;
  MonedaID  : string;
  CodUnidad : Integer;
  Reproceso : Widestring;
  FechaQr  : String;
  MonedaCancelacion:String;
  Cotiz:Double;
begin
    if dmFEX.CheckLogin(Trunc(FCuitVdor)) then
      begin
        if not dmFEX.RecuperaLastCMP(FPtoVenta, FTipoComp, FNumero,UltimaFechaVta) then
          ShowMessage ('error')
        else
          begin
             if (VarIsNull(FNumero)) then
               FNumero:=0;
             edAnterior.Text := copy('00000000',1,8-length(FloatToStr(FNumero)))+FloatToStr(FNumero);
             FNumero         := FNumero + 1;
             edNumero.Text   := copy('00000000',1,8-length(FloatToStr(FNumero)))+FloatToStr(FNumero);
             IdTransferencia := dmFEX.GetLastID+1;
             if FMoneda=1 Then
               begin
                 dmFEX.GetCotizacion('PES', FMonedaCotiz,MonFecha);
                 if FMonedaCotiz<=0 then FMonedaCotiz:=1;
                   MonedaID       :='PES';
                 MonedaCancelacion:='N';
               end
             else
               if FMoneda=2 Then
                 begin
                   if (TipoComp<>21) and (TipoComp<>3) and (TipoComp<>8) then
                     dmFEX.GetCotizacion('DOL',cotiz,MonFecha);
                   MonedaID         :='DOL';
                   MonedaCancelacion:='N';
                 end;

            if chFecha.Checked then
              begin
                MensajeEstado('Cambia a la Fecha del Día.... ');
                FechaVta := FormatDateTime('yyyymmdd', Now());
                FechaVto := FormatDateTime('yyyymmdd', Now());
              end;



             MensajeEstado('Carga Variables de Factura(AgregarFactura)>'+' Tipo Doc:'+ IntToStr(FTipoDocumento)+
                                                                         ' Cuit Comp:'+ FloatToStr(FCuitPais)+
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

             if FTipoComp in [21,20] then
               dmFEX.AgregaFactura( IdTransferencia, FFechaVta,
                                    FTipoComp, FPtoVenta, FNumero,
                                    2,
                                    '',
                                    208,
                                    FNombre,
                                    FCuitPais,
                                    FDomicilio,
                                    '',
                                    MonedaId,
                                    FMonedaCotiz,
                                    '',
                                    FTotal,
                                    '',
                                    'Contado',
                                    FIncoterm,//    'DES',
                                    '',
                                    1,'',MonedaCancelacion)
             else
               dmFEX.AgregaFactura(IdTransferencia, FFechaVta,
                                    FTipoComp, FPtoVenta, FNumero,
                                    2,
                                    '',
                                    208,
                                    FNombre,
                                    FCuitPais,
                                    FDomicilio,
                                    '',
                                    MonedaId,
                                    FMonedaCotiz,
                                    '',
                                    FTotal,
                                    '',
                                    'Contado',
                                    FIncoterm,//    'DES',
                                    '',
                                    1,FechaVta,MonedaCancelacion);
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

                 dmFEX.AgregaItem(FDatosDet.FieldByName('CodigoArticulo').AsString,
                                   FDatosDet.FieldByName('Detalle').AsString,
                                   FDatosDet.FieldByName('Cantidad').AsFloat,
                                   CodUnidad,
                                   FDatosDet.FieldByName('UNITARIO_TOTAL').AsFloat,
                                   FDatosDet.FieldByName('TOTAL').AsFloat,
                                   FDatosDet.FieldByName('Descuento').AsFloat);
                 FDatosDet.Next;
               end;
             if FTipoComp in [21,20] then
               begin
                 MensajeEstado('Asociado Documento... '+IntToStr(FAsociado_Tipo));
                 MensajeEstado('Asociado Pto Vta..... '+IntToStr(FAsociado_PtoVta));
                 MensajeEstado('Asociado Documento... '+FloatToStr(FAsociado_Nro));
                 MensajeEstado('Asociado Cuit........ '+FloatToStr(FCuitVdor));
                 MensajeEstado('Asociado Cbte Fecha.. '+FAsociado_CpbteFch);
                 dmFEX.AgregaCompAsoc(FAsociado_Tipo,FAsociado_PtoVta,FAsociado_Nro,FCuitVdor);
               end;

             MensajeEstado('Pedido de Autorizacion ................');
             If dmFEX.Autorizar Then
               begin
                 dmFEX.AutorizarRespuesta(FCAE, FVencimiento, FResultado, Reproceso);
                 If FResultado = 'A' Then
                   begin
                     edCAE.Text        :=FCAE;
                     FNumeroInt        :=Trunc(FNumero); // este es ele numero para pasar como numero generado
                     edVencimiento.Text:=FVencimiento;
                     MensajeEstado('Autorizada = ('+FResultado+') ... CAE:'+FCAE+' Nro.:'+FloatToStr(FNumero)+' Fecha:'+FFechaVta);
                     MensajeEstado('////////// Fin');

                     FechaQr     := copy(FFechaVta,1,4)+'-'+ copy(FFechaVta,5,2)+'-'+copy(FFechaVta,7,2);
                     if dmFE1.GenerarQR(1,FechaQr,FCuitVdor,FPtoVenta,FTipoComp,Trunc(FNumero),
                                          FTotal,MonedaId,FMonedaCotiz,
                                          FTipoDocumento, FCuitPais ,'E',StrToFloat(FCAE)) Then
                     FQRImage    := dmFE1.fQRBMP;
                     if chbCerrar.Checked then
                       btCerrar.Click;
                   end
                 else
                   MensajeEstado('*** No Autorizada ****** >>>'+dmFEX.AutorizarRespuestaObs);
               end
             else
               begin
                 MensajeEstado('Error de Autorizacion:'+dmFEX.AutorizarRespuestaObs);
                 ShowMessage(dmFEX.AutorizarRespuestaObs);
               end;
          end
      end
  else
    ShowMessage(dmFEX.AutorizarRespuestaObs);
  //wsfex1.Reset;
end;

procedure TFormFiscalizacion.FormActivate(Sender: TObject);
begin
  if Continuar then  BringToFront
  else
    ModalResult :=  mrCancel;
end;

procedure TFormFiscalizacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    if not(JvHiloConsulta.Terminated) then
    JvHiloConsulta.Terminate;
    try
      CloseFile( FileLog );
    Except
      Exit
    end;
    FImprimir          := ChImprimir.Checked;
    ArchivoIni         := TIniFile.Create(FNombreIni);
    if ArchivoIni<>nil then
      begin
        try
          ArchivoIni.WriteBool('FacturaEelectronica', 'cerrar', chbCerrar.Checked);
          ArchivoIni.WriteBool('FacturaEelectronica', 'Imprimir', ChImprimir.Checked);
          ArchivoIni.WriteBool('FacturaEelectronica', 'VerLog', chVerLog.Checked);
          ArchivoIni.WriteBool('FacturaEelectronica', 'VerificaInternet', VerificarConeccion1.Checked);
          ArchivoIni.WriteInteger('FacturaElectronica','TiempoMaxEsperaAfip',MaxWaitSegs);
          ArchivoIni.WriteInteger('FacturaEelectronica', 'Proxy', cbProxys.ItemIndex);
          ArchivoIni.WriteInteger('FacturaEelectronica', 'Modo', rgModoFacturacion_MiPyme.ItemIndex);

        finally
          ArchivoIni.Free;
        end;
      end;
  finally
    Action  :=cafree;
  end;
end;

procedure TFormFiscalizacion.FormCreate(Sender: TObject);
var Dato:String;
  path:String;
begin
  wsfev1  := Nil;
  wsfex1  := Nil;
  wsfev1  := Cowsfev1.Create;
  wsfex1  := Cowsfexv1.Create;

  Continuar :=  True;

  AfipResponde                 := False;
  path := ExtractFilePath(ParamStr(0));
  path := path+'Proxys.txt';
  if FileExists(path) then
    cbProxys.ComboItems.LoadFromFile(path);

  // directorio del Log *************************
  DirectorioLog := ExtractFilePath(ParamStr(0))+'\Log_Electronica_'+FormatDateTime('ddmmyy',Date);
  if Not(DirectoryExists(DirectorioLog)) then
    CreateDir(DirectorioLog);
  FProcesoOk:=False;
  // DM_FacturaElectronica:=TDM_FacturaElectronica.Create(self);

end;

procedure TFormFiscalizacion.FormDestroy(Sender: TObject);
begin
  FormFiscalizacion:=nil;
end;

procedure TFormFiscalizacion.FormShow(Sender: TObject);
begin
  ArchivoIni                         := TIniFile.Create(FNombreIni);
  Clave                              := ArchivoIni.ReadString('FacturaEelectronica', 'Clave', '');
  Certificado                        := ArchivoIni.ReadString('FacturaEelectronica', 'Certificado', '');
  chbCerrar.Checked                  := ArchivoIni.ReadBool('FacturaEelectronica', 'cerrar', False);
  ChImprimir.Checked                 := ArchivoIni.ReadBool('FacturaEelectronica', 'Imprimir', False);
  chVerLog.Checked                   := ArchivoIni.ReadBool('FacturaEelectronica', 'VerLog', True);
  chbControlaNumeracion.Checked      := ArchivoIni.ReadBool('FacturaEelectronica', 'ControlNro', True);
  VerificarConeccion1.Checked        := ArchivoIni.ReadBool('FacturaEelectronica', 'VerificaInternet', True);
  cbProxys.ItemIndex                 := ArchivoIni.ReadInteger('FacturaEelectronica', 'Proxy', 0);
  MaxWaitSegs                        := ArchivoIni.ReadInteger('FacturaElectronica','TiempoMaxEsperaAfip',10);
  rgModoFacturacion_MiPyme.ItemIndex := ArchivoIni.ReadInteger('FacturaEelectronica', 'Modo', 0);
  ArchivoIni.free;

  if Trim(FCertificadoSucursal)<>'' then
    Certificado := Trim(FCertificadoSucursal);

  sbEstado.Panels[0].Text           := 'Certificado:'+Certificado;
  sbEstado.Panels[1].Text           := 'Clave:'+Clave;
  FVencimiento                      := '';
  FCAE                              := '';
  AutoSize                          := True;
  PageControl1.ActivePageIndex      := 0;
  btFiscalizar.Enabled              := True;
  mLog.Visible                      := chVerLog.Checked;
  mLog.Clear;

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
  MensajeEstado('Certificado.:'+Certificado);
  MensajeEstado('Clave Privada.:'+Clave);

  MensajeEstado('Preparando Inicio .................');

  MensajeEstado('Numero Temporal.:'+'Pto de Vta:'+IntToStr(FPtoVenta)+' Nro Actual:'+FloatToStr(FNumeroActual));
  MensajeEstado('Cliente...: '+Nombre);
  MensajeEstado('Cuit......: '+FloatToStr(FCuitComp));
  //MensajeEstado('Tipo/Nro..: '+FTipoNumero);

  MensajeEstado('Varificando Internet....');

  // Inicio de Feafip JC
  dmFE1.InicializarServicio(FURLWSAA,FURLWSW,Certificado,Clave);
  dmFEX.InicializarServicio(FURLWSAA,FURLWSW_EX,Certificado,Clave);

  Application.ProcessMessages;
  if HayInternet then
    begin
      if (FTipoComp=19) or (FTipoComp=21) then
        ConsultarJC_E
        //Consultar_E
      else
        begin
          MensajeEstado('Haciendo Consulta a la Afip');
          ConsultarJC;
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
  FResultado:='';
  if Continuar then
    BringToFront
  else
    FormFiscalizacion.ModalResult :=  mrCancel;
 // modificacion Autorun Para Fiscalizar directo
  if FAutoRun then
    PostMessage(Handle, WM_USER + 100, 0, 0);
 //
end;


function TFormFiscalizacion.GenerarQR( ver        : Integer;
  fecha      : string;                 cuit       : double;
  ptoVta     : Integer;                tipoComp   : Integer;
  nroCmp     : Integer;                importe    : double;
  moneda     : string;                 ctz        : double;
  tipoDocRec : Integer;                nroDocRec  : double;
  tipoCodAut : string;                 codAut     : double): TBitmap;
var
  Qr:IQr;
  Path:String;
  Bmp:TBitmap;
  BitmapQR:TBitmap;
  DatosQR:TQRData_;
  Stream: TMemoryStream;
  JSONObj: TJSONObject;
  JSONStr:string;
begin
  bmp                := TBitmap.Create;

  DatosQR.ver        := ver;
  DatosQR.fecha      := fecha;
  DatosQR.cuit       := Trunc(cuit);
  DatosQR.ptoVta     := ptoVta;
  DatosQR.tipoCmp    := tipoComp;
  DatosQR.nroCmp     := nroCmp;
  DatosQR.importe    := importe;
  DatosQR.moneda     := moneda;
  DatosQR.ctz        := ctz;
  DatosQR.tipoDocRec := tipoDocRec;
  DatosQR.nroDocRec  := Trunc(nroDocRec);
  DatosQR.tipoCodAut := tipoCodAut[1];
  DatosQR.codAut     := Trunc(codAut);

  JSONObj := TJSONObject.Create;

  JSONObj.AddPair('ver', TJSONNumber.Create(Ver));
  JSONObj.AddPair('fecha', fecha);
  JSONObj.AddPair('cuit', TJSONNumber.Create(CUIT));
  JSONObj.AddPair('ptoVta', TJSONNumber.Create(PtoVta));
  JSONObj.AddPair('tipoCmp', TJSONNumber.Create(IntToStr(tipoComp)));
  JSONObj.AddPair('nroCmp', TJSONNumber.Create(nroCmp));
  JSONObj.AddPair('importe', TJSONNumber.Create(Importe));
  JSONObj.AddPair('moneda', 'PES');
  JSONObj.AddPair('ctz', TJSONNumber.Create(ctz));
  JSONObj.AddPair('tipoDocRec', TJSONNumber.Create(tipoDocRec));
  JSONObj.AddPair('nroDocRec', TJSONNumber.Create(nroDocRec));
  JSONObj.AddPair('tipoCodAut', 'E');
  JSONObj.AddPair('codAut', TJSONNumber.Create(codAut));

  JSONStr := JSONObj.ToString;
  //  Generar y guardar QR como imagen en campo blob
  BitmapQR := BuildImage(GeneraQR_AFIP(JsonStr));
  Stream   := TMemoryStream.Create;
    try
      BitmapQR.SaveToStream(Stream);
      Stream.Position := 0;
      Bmp.LoadFromStream(Stream);
    finally
      Stream.Free;
      BitmapQR.Free;
    end;
  Result:=Bmp;
end;



end.
