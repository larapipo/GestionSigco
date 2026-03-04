unit UNextBin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, JvAppStorage, JvAppIniStorage,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,IniFiles,
  AdvUtil, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, Vcl.Mask, JvExMask,
  JvToolEdit,DateUtils,IdFTP,ShellApi, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.VCLUI.Wait;

type
  TFormNextByn = class(TFormABMBase)
    QStockFisico: TFDQuery;
    QArticulos: TFDQuery;
    QClientesRutas: TFDQuery;
    PageControl1: TPageControl;
    pagStockFisico: TTabSheet;
    pagArticulos: TTabSheet;
    pagClientesRutas: TTabSheet;
    dbgStockFisico: TDBAdvGrid;
    dbgArticulos: TDBAdvGrid;
    dbgClientesRutas: TDBAdvGrid;
    Panel2: TPanel;
    NroEmpresa: TLabel;
    Panel3: TPanel;
    QPersonalComercial: TFDQuery;
    QComprobantes: TFDQuery;
    QClientes: TFDQuery;
    pagPersonalComercial: TTabSheet;
    pagRutasVentas: TTabSheet;
    dbgPersonalComercial: TDBAdvGrid;
    pagComprobantes: TTabSheet;
    pagClientes: TTabSheet;
    dbgComprobantes: TDBAdvGrid;
    Label2: TLabel;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    Label3: TLabel;
    UpDown1: TUpDown;
    QRutasVtas: TFDQuery;
    DSStockFisico: TDataSource;
    DSClientesRutas: TDataSource;
    DSPersonalComercial: TDataSource;
    DSRutasVtas: TDataSource;
    DSArticulos: TDataSource;
    DSComprobantes: TDataSource;
    DSClientes: TDataSource;
    btExcel: TBitBtn;
    ToolButton1: TToolButton;
    SaveDialog1: TSaveDialog;
    edEmpresa: TMaskEdit;
    edPathListados: TEdit;
    spPathListados: TSpeedButton;
    Label47: TLabel;
    QStockFisicoCODIGODEPOSITO: TIntegerField;
    QStockFisicoCODIGOARTICULO: TStringField;
    QStockFisicoCANTIDADDECIMAL: TFloatField;
    QStockFisicoFECHASTOCK: TDateField;
    QStockFisicoVENCIMIENTOLOTE: TDateField;
    QClientesRutasCODIGOSUCURSAL: TIntegerField;
    QClientesRutasCODIGOFUERZA: TIntegerField;
    QClientesRutasCODIGOMODOATENCION: TStringField;
    QClientesRutasCODIGORUTA: TIntegerField;
    QClientesRutasCODIGOCLIENTE: TStringField;
    QPersonalComercialCODIGOSUCURSAL: TIntegerField;
    QPersonalComercialCODIGOPERSONAL: TStringField;
    QPersonalComercialDESCRIPCION: TStringField;
    QPersonalComercialCARGO: TStringField;
    QPersonalComercialANULADO: TIntegerField;
    QPersonalComercialCODIGOFUERZA: TIntegerField;
    QRutasVtasCODIGOSUCURSAL: TIntegerField;
    QRutasVtasCODIGOFUERZA: TIntegerField;
    QRutasVtasCODIGOMODOATENCION: TStringField;
    QRutasVtasCODIGORUTA: TIntegerField;
    QRutasVtasDESCRIPCIONRUTA: TStringField;
    QRutasVtasCODIGOPERSONAL: TStringField;
    QRutasVtasPERIODICIDAD: TIntegerField;
    QRutasVtasSEMANA: TIntegerField;
    QRutasVtasATIENDELUNES: TIntegerField;
    QRutasVtasATIENDEMARTES: TIntegerField;
    QRutasVtasATIENDEMIERCOLES: TIntegerField;
    QRutasVtasATIENDEJUEVES: TIntegerField;
    QRutasVtasATIENDEVIERNES: TIntegerField;
    QRutasVtasATIENDESABADO: TIntegerField;
    QRutasVtasATIENDEDOMINGO: TIntegerField;
    QComprobantesTIPOCOMPROBANTE: TStringField;
    QComprobantesLETRACOMPROBANTE: TStringField;
    QComprobantesSERIECOMPROBANTE: TStringField;
    QComprobantesNUMEROCOMPROBANTE: TStringField;
    QComprobantesCODIGOFUERZA: TIntegerField;
    QComprobantesESVENTA: TStringField;
    QComprobantesCODIGOARTICULO: TStringField;
    QComprobantesDESCRIPCIONARTICULO: TStringField;
    QComprobantesUNIDADESPORBULTO: TIntegerField;
    QComprobantesCANTIDADDECIMAL: TFloatField;
    QComprobantesBONIFICACION: TFloatField;
    QComprobantesFECHAPEDIDO: TDateField;
    QComprobantesCODIGOCLIENTE: TStringField;
    QComprobantesCODIGOSUCURSAL: TIntegerField;
    QComprobantesNOMBRECLIENTE: TStringField;
    QComprobantesTIPOCONTRIBUYENTE: TStringField;
    QComprobantesCodigoEmpresaFactura: TIntegerField;
    QArticulosCODIGOARTICULO: TStringField;
    QArticulosDESCRIPCIONARTICULO: TStringField;
    QArticulosUNIDADESXBULTO: TIntegerField;
    QArticulosVALORUMEDIDA: TIntegerField;
    QClientesCODIGOCLIENTE: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesDOMICILIO: TStringField;
    QClientesIDCANALAGRUPA: TIntegerField;
    QClientesDESCCANALAGRUPA: TStringField;
    QClientesIDSUBCANAL: TIntegerField;
    QClientesDESCSUBCANALAGRUPA: TStringField;
    QClientesFECHAALTA: TDateField;
    QClientesANULADO: TStringField;
    QClientesTIPOCONTRIBUYENTE: TStringField;
    QClientesIDTIPODOCUMENTO: TIntegerField;
    QClientesCODIGOLOCALIDAD: TStringField;
    QClientesDESCRIPCIONLOCALIDAD: TStringField;
    QClientesDESCPROVINCIA: TStringField;
    QClientesCODIGOSUCURSAL: TIntegerField;
    QPersonalComercialCODIGOPERSONALSUPERIOR: TStringField;
    QArticulosANULADO: TStringField;
    dbgClientes: TDBAdvGrid;
    QComprobantesPRECIOUNITARIOBRUTO: TFloatField;
    QComprobantesNUMEROLINEA: TFloatField;
    QComprobantesFECHACOMPROBANTE: TDateField;
    QClientesRutasFECHADESDE: TStringField;
    QClientesRutasFECHAHASTA: TStringField;
    QClientesCODLISTAPRECIO: TStringField;
    dbgRutasVentas: TDBAdvGrid;
    QRutasVtasFECHADESDE: TStringField;
    QComprobantesANULADO: TStringField;
    EnviarFTP: TAction;
    Button1: TButton;
    Action1: TAction;
    ProgressBar1: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure spPathListadosClick(Sender: TObject);
    procedure QComprobantesCalcFields(DataSet: TDataSet);
    procedure SubirArchivo(Archivo:string);
    procedure EnviarFTPExecute(Sender: TObject);
  private
    { Private declarations }
  public
    procedure LeerArchivos;
    { Public declarations }
  end;

var
  FormNextByn: TFormNextByn;

implementation

uses UDMain_FD, UBuscaDirectorio,ucurl,ShlObj;
{$R *.dfm}


procedure BorrarArchivos(const vOrigen:string);
var
SearchRec: TSearchRec;
begin
  if FindFirst(vOrigen+'\*.*', faAnyFile, SearchRec) = 0 then
   repeat
     Deletefile(vOrigen+'\'+SearchRec.name);
   until (FindNext(SearchRec) <> 0);
   FindClose(SearchRec);
end;

///////////////////////////////////

//////////////////////////////////

function BorrarCarpeta(const vOrigen: string) : boolean;
// usa estas Unit ShlObj,ShellApi;
var
  vCarpetas: TSHFileOpStruct;
begin
  // Inicializamos la variable vCarpetas
  FillChar(vCarpetas, SizeOf(vCarpetas), #0);

  // Preparamos las propiedades de vCarpetas para borrar
  vCarpetas.wFunc := FO_DELETE;
  vCarpetas.Wnd := GetDesktopWindow;
  vCarpetas.pFrom := PChar(vOrigen+#0#0);

  // Cargamos las banderas de
  // FOF_NOCONFIRMATION -> no pide confirmación para copiar
  // FOF_SILENT -> no muestra el dialogo de progreso
  // FOF_ALLOWUNDO -> preserva la información para deshacer, si es posible
  vCarpetas.fFlags := FOF_NOCONFIRMATION or FOF_SILENT or FOF_ALLOWUNDO;

  // Ejecutamos el proceso con ShFileOperation y si devuelve 0, la operación es un éxito
  Result := (ShFileOperation(vCarpetas) = 0);
end;

//////////////////////////////////////////////////////////////////
// Rutina envio sFTp
function ReadFromStream(Buffer: PAnsiChar; Size, Count: Integer;
  Stream: TStream): Integer; cdecl;
begin
  Result:= Stream.Read(Buffer^,Size*Count) div Size;
end;

function SaveToStream(Buffer: PAnsiChar; Size, Count: Integer;
  Stream: TStream): Integer; cdecl;
begin
  Result:= Stream.Write(Buffer^,Size*Count) div Size;
end;

function Subir(Usuario, Clave, URL, Archivo: AnsiString): Boolean;
var
  Curl: TCURL;
  Stream: TFileStream;
  Resultado:Boolean;
begin
  Result:= FALSE;
  Curl:= curl_easy_init;
  if Curl <> nil then
  try
    // Indicamos que muestre mensajes de todo lo que va haciendo
    if curl_easy_setopt(Curl, CURLOPT_VERBOSE, TRUE) <> CURLE_OK then
      Exit;
    // Le decimos que uses SSL
    if curl_easy_setopt(Curl, CURLOPT_USE_SSL, CURLUSESSL_ALL) <> CURLE_OK then
      Exit;
    // No verificamos la identidad del servidor, suponemos que es quien dice ser.
    if curl_easy_setopt(Curl, CURLOPT_SSL_VERIFYPEER, FALSE) <> CURLE_OK then
      Exit;
    // Indicamos el usuario
    if curl_easy_setopt(Curl, CURLOPT_USERNAME, PAnsiChar(Usuario)) <> CURLE_OK then
      Exit;
    // El password
    if curl_easy_setopt(Curl, CURLOPT_PASSWORD, PAnsiChar(Clave)) <> CURLE_OK then
      Exit;
    // La URL del tipo: sftp://servidor/rutadelfichero
    if curl_easy_setopt(Curl, CURLOPT_URL, PAnsiChar(URL)) <> CURLE_OK then
      Exit;
    // Le indicamos que funcion debe usar para leer el stream
    if curl_easy_setopt(Curl, CURLOPT_READFUNCTION, @ReadFromStream) <> CURLE_OK then
      Exit;
    // Creamos un stream a partir de un archivo
    Stream:= TFileStream.Create(Archivo,fmOpenRead);
    try
      // Aqui le indicamos el stream que debe subir
      if curl_easy_setopt(Curl, CURLOPT_INFILE, Stream) <> CURLE_OK then
        Exit;
      // Aqui le indicamos que la operacion es de subida
      if curl_easy_setopt(Curl, CURLOPT_UPLOAD, TRUE) <> CURLE_OK then
        Exit;
      // Ejecutamos el comando
      Result:= curl_easy_perform(Curl) = CURLE_OK;
      if Result=FALSE then
        ShowMessage('Fallo envio Archivo '+Archivo);
    finally
      Stream.Free;
    end;
  finally
    curl_easy_cleanup(Curl);
  end;
end;

/////////////////////////////////////////////////////////////////////////////////

procedure TFormNextByn.btExcelClick(Sender: TObject);
begin
  inherited;
  if Trim(edPathListados.Text)<>'' then
    begin
      BorrarArchivos(edPathListados.Text);

      Screen.Cursor:=crHourGlass;
      dbgStockFisico.Delimiter       := ';';
      dbgStockFisico.QuoteEmptyCells := False;
      dbgStockFisico.CSVTrimSpaces   := True;

      dbgStockFisico.SaveToCSV(edPathListados.Text+'\StockFisico'+edEmpresa.Text+FormatDateTime('YYYYMMDDHHMMSS',Now)+'.csv',True);

      dbgArticulos.Delimiter:=';';
      dbgArticulos.QuoteEmptyCells := False;
      dbgArticulos.CSVTrimSpaces   := True;

      dbgArticulos.SaveToCSV(edPathListados.Text+'\Articulos'+edEmpresa.Text+FormatDateTime('YYYYMMDDHHMMSS',Now)+'.csv',True);

      dbgClientesRutas.Delimiter:=';';
      dbgClientesRutas.QuoteEmptyCells := False;
      dbgClientesRutas.CSVTrimSpaces   := True;

      dbgClientesRutas.SaveToCSV(edPathListados.Text+'\ClientesRuta'+edEmpresa.Text+FormatDateTime('YYYYMMDDHHMMSS',Now)+'.csv',True);

      dbgPersonalComercial.Delimiter:=';';
      dbgPersonalComercial.QuoteEmptyCells := False;
      dbgPersonalComercial.CSVTrimSpaces   := True;

      dbgPersonalComercial.SaveToCSV(edPathListados.Text+'\PersonalComercial'+edEmpresa.Text+FormatDateTime('YYYYMMDDHHMMSS',Now)+'.csv',True);

      dbgRutasVentas.Delimiter:=';';
      dbgRutasVentas.QuoteEmptyCells := False;
      dbgRutasVentas.CSVTrimSpaces   := True;

      dbgRutasVentas.SaveToCSV(edPathListados.Text+'\RutasDeVenta'+edEmpresa.Text+FormatDateTime('YYYYMMDDHHMMSS',Now)+'.csv',True);

      dbgComprobantes.Delimiter:=';';
      dbgComprobantes.QuoteEmptyCells := False;
      dbgComprobantes.CSVTrimSpaces   := True;

      dbgComprobantes.SaveToCSV(edPathListados.Text+'\Comprobantes'+edEmpresa.Text+FormatDateTime('YYYYMMDDHHMMSS',Now)+'.csv',True);

      dbgClientes.Delimiter:=';';
      dbgClientes.QuoteEmptyCells := False;
      dbgClientes.CSVTrimSpaces   := True;

      dbgClientes.SaveToCSV(edPathListados.Text+'\Clientes'+edEmpresa.Text+FormatDateTime('YYYYMMDDHHMMSS',Now)+'.csv',True);

      Screen.Cursor:=crDefault;
      ShowMessage('Archivos Generados...');
    end
  else
    ShowMessage('Indicar Ubicacion...');
end;

procedure TFormNextByn.BuscarExecute(Sender: TObject);
begin
  inherited;
  QStockFisico.Close;
  QStockFisico.Open;

  QClientesRutas.Close;
  QClientesRutas.Open;

  QPersonalComercial.Close;
  QPersonalComercial.Open;

  QRutasVtas.Close;
  QRutasVtas.Open;

  QArticulos.Close;
  QArticulos.Open;

  QComprobantes.Close;
  QComprobantes.ParamByName('desde').AsDate:=desde.Date;
  QComprobantes.ParamByName('hasta').AsDate:=hasta.Date;

  QComprobantes.Open;

  QClientes.Close;
  QClientes.Open;


end;

procedure TFormNextByn.EnviarFTPExecute(Sender: TObject);
begin
  inherited;
  LeerArchivos;
end;

procedure TFormNextByn.LeerArchivos;
var
  Busqueda   : TSearchRec;
  iResultado : Integer;
  FDirectorio:string;
begin
  // Nos aseguramos que termine en contrabarra
  Screen.Cursor:=crHourGlass;
  FDirectorio := edPathListados.Text+'\';
  iResultado  := FindFirst( FDirectorio + '*.csv', faAnyFile, Busqueda );
  sbEstado.Panels[1].Text:='//';
  ProgressBar1.Position:= 0;
  while iResultado = 0 do
    begin
      if iResultado=0 then
        begin
          sbEstado.Panels[1].Text:='Enviando archivo :'+Busqueda.Name;
          ProgressBar1.Position  := ProgressBar1.Position+1;
          Application.ProcessMessages;
          //Subir('tester','password','sftp://192.168.50.107:2222/'+busqueda.Name,FDirectorio+Busqueda.Name);
          Subir('1789Dearma$','0MwX3$GXjp','sftp://fileserver.nextbyn.com:2222/'+Busqueda.Name,FDirectorio+Busqueda.Name);
          if ( Busqueda.Attr and faArchive = faArchive ) and ( Busqueda.Attr and faDirectory <> faDirectory ) then
            iResultado := FindNext( Busqueda );

        end;
    end;

   Screen.Cursor:=crDefault;




  FindClose( Busqueda ) ;

end;


procedure TFormNextByn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  ArchivoIni      := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ArchivosByn.ini');
  ArchivoINI.WriteString('Empresa', 'Numero', edEmpresa.Text);
  ArchivoINI.WriteString('Listado', 'Path', edPathListados.Text);
  ArchivoIni.Free;
  Action:=caFree;
end;

procedure TFormNextByn.FormCreate(Sender: TObject);
Var d,m,y:word;
begin
  inherited;
  AutoSize:=False;
  ArchivoIni          := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ArchivosByn.ini');
  edEmpresa.Text      := ArchivoINI.ReadString('Empresa', 'Numero', '');
  edPathListados.Text := ArchivoINI.ReadString('Listado', 'Path', '');

  ArchivoIni.Free;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,-1);
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(Desde.Date))+1;
end;

procedure TFormNextByn.FormDestroy(Sender: TObject);
begin
  inherited;
  FormNextByn:=nil;
end;



procedure TFormNextByn.QComprobantesCalcFields(DataSet: TDataSet);
begin
  inherited;
  QComprobantesCodigoEmpresaFactura.Value:=StrToInt(edEmpresa.Text);
end;

procedure TFormNextByn.spPathListadosClick(Sender: TObject);
begin
  if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    edPathListados.Text :=FormBuscaDirectorio.Directorio
  else
    edPathListados.Text :='';
end;

procedure TFormNextByn.SubirArchivo(Archivo: string);
var  FTP: TIdFTP;
begin
  FTP := TIdFTP.Create( nil );
  FTP.Username := '1789Dearma$';
  FTP.Password := '0MwX3$GXjp';
  FTP.Host     := 'fileserver.nextbyn.com';
  FTP.Port     := 2222;
  try
    FTP.Connect;
  except
    raise Exception.Create( 'No se ha podido conectar con el servidor ' + FTP.Host );
  end;

  FTP.ChangeDir( edPathListados.Text );
  FTP.Put( Archivo, ExtractFileName( Archivo ), False );
  FTP.Disconnect;
  FTP.Free;


end;



procedure TFormNextByn.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var y,m,d:Word;
begin
  inherited;
  DecodeDate(Desde.Date,y,m,d);
  if Button=btnext Then
    if m=12 Then
      begin
        m:=1;y:=y+1;
      end
    else
      m:=m+1
  else
    if Button=btPrev Then
      if m=1 Then
        begin
          m:=12;y:=y-1;
        end
      else
        m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
end;

end.
