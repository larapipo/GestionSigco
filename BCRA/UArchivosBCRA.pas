unit UArchivosBCRA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,StrUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,System.zip,
  JvThread, AdvCircularProgress, AdvProgressBar, JvWaitingGradient,ShellApi,
  Vcl.Samples.Spin, System.ImageList;

type
  TFormArchivosBCRA = class(TFormABMBase)
    AdvProgress: TAdvProgressBar;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbTamanio: TLabel;
    lbRegActual: TLabel;
    Label5: TLabel;
    btLeerArchivosBCRA: TButton;
    memoLog: TMemo;
    mCheques: TMemo;
    btImportar: TButton;
    btBorrarChe: TButton;
    spLimite: TSpinEdit;
    lwArchivos: TListView;
    btMensual: TButton;
    QProcesado: TFDQuery;
    QProcesadoNOMBRE: TStringField;
    QCheques: TFDQuery;
    QBorrarChe: TFDQuery;
    QBuscaChe: TFDQuery;
    QBuscaCheID: TIntegerField;
    jvThImportar: TJvThread;
    JvTImportarMensual: TJvThread;
    JvThBorrado: TJvThread;
    OpenDialog1: TOpenDialog;
    IdHTTP1: TIdHTTP;
    QIngresaProcesado: TFDQuery;
    lbCantidadBorrar: TLabel;
    btGeneral: TButton;
    procedure btImportarClick(Sender: TObject);
    procedure btLeerArchivosBCRAClick(Sender: TObject);
    procedure btBorrarCheClick(Sender: TObject);
    procedure btMensualClick(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure lwArchivosDblClick(Sender: TObject);
    procedure jvThImportarExecute(Sender: TObject; Params: Pointer);
    procedure jvThImportarFinish(Sender: TObject);
    procedure JvTImportarMensualExecute(Sender: TObject; Params: Pointer);
    procedure JvTImportarMensualFinish(Sender: TObject);
    procedure JvThBorradoExecute(Sender: TObject; Params: Pointer);
    procedure JvThBorradoFinish(Sender: TObject);
    procedure btGeneralClick(Sender: TObject);
  private
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure JvThImportacionExecute(Sender: TObject; Params: Pointer);
    { Private declarations }
  public
    { Public declarations }
    Cancelar       : Boolean;
    ArchiProcesado : String;
    LstArchivos    : TStringList;
    PathMensual    : String;
    function TamanoFichero(sFileToExamine: string) : Longword;
    function GetHTMLContent(const AURL: string): string;
    procedure GetURLZip(const AContent: string; Alist:TStrings; const Prefijo: string = '''../zips/cheques/'; const Sufijo: string = '.zip''');
    function ExtractFileNameFromURL(const AURL: string): string;
    function DescargarFileURL(const AURL: string): string;
    function DonwloadListZIP (const APageBase, AURL:string; AList:TStrings):string;
    procedure BorrarCheques_File;
    procedure MensajeEstado(m:String);
    procedure MensajeEstado_IniciandoSecuencia;
    procedure MensajeEstado_Descomprimiendo;
    procedure MensajeEstado_3;
    procedure MensajeEstado_LecturaPagina;
    procedure MensajeEstado_Error;
    procedure MensajeEstado_DescargadnoURLZip;
    procedure MensajeEstado_DescargaZip;
    procedure MensajeEstado_DescargaFinalizada;
    procedure MensajeEstado_ProcesoFinalizado;
    procedure MensajeEstado_Novedades;
    procedure MensajeEstado_ProcesoBorrado;
    procedure MensajeEstado_FinProcesoBorrado;
    procedure MensajeEstado_CantidadReg;

    function DescomprimiZip(F:String):boolean;
    procedure LeerArchivoCheques;
    procedure LeerArchivoMensual(Path:String);
    procedure LeerArchivoNovedades;
    procedure IncProgreso;
    procedure BorrarArchivos(Ruta:String);
    procedure BorrarDirectrio(Ruta:String);

  end;

var
  FormArchivosBCRA: TFormArchivosBCRA;

implementation

{$R *.dfm}

uses UDMain_FD;

function TFormArchivosBCRA.TamanoFichero(sFileToExamine: string) : Longword;
var
  FileHandle: THandle;
  FileSize: Longword;
  d1: Double;
begin
  FileHandle := CreateFile(PChar(sFileToExamine),
    GENERIC_READ,0, {exclusivo} nil, {seguridad} OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
  FileSize   := GetFileSize(FileHandle, nil);
  Result     := FileSize;
  CloseHandle(FileHandle);
end;

//Rutina de Borrar Directorio
procedure TFormArchivosBCRA.BorrarArchivos(Ruta: String);
var
  SR: TSearchRec;
begin
  if FindFirst(Ruta + '*.*', $23 , SR)= 0 then
    repeat
      DeleteFile(Ruta+'\'+SR.Name);
    until FindNext(SR) <> 0;
end;

procedure TFormArchivosBCRA.BorrarCheques_File;
var i:integer;
begin
  AdvProgress.Min      := 0;
  AdvProgress.Max      := mCheques.Lines.Count;
  AdvProgress.Position := 0;
  JvThBorrado.Synchronize(MensajeEstado_ProcesoBorrado);
  for i:= 0 to mCheques.Lines.Count-1 do
    begin
      if Cancelar then
        Exit;
      JvThBorrado.Synchronize(IncProgreso);
      QBorrarChe.Close;
      QBorrarChe.ParamByName('NROCHEQUE').Value:=Trim(mCheques.Lines[i]);
      QBorrarChe.ExecSQL;
      QBorrarChe.Close;
    end;
  mCheques.Clear;
  JvThBorrado.Synchronize(MensajeEstado_ProcesoFinalizado);

end;

procedure TFormArchivosBCRA.BorrarDirectrio(Ruta:String);
var
  FileOpInfo: TShFileOpStruct;
begin
  FillChar(FileOpInfo, SizeOf(FileOpInfo), 0);
  FileOpInfo.wFunc := FO_DELETE;
  FileOpInfo.pFrom := PChar(Ruta + '\*.*');
  FileOpInfo.fFlags := FOF_NOCONFIRMATION;

  ShFileOperation(FileOpInfo);
end;



procedure TFormArchivosBCRA.btImportarClick(Sender: TObject);
begin
  inherited;
 // Screen.Cursor                := crHourGlass;
  btImportar.Enabled           := False;
  btBorrarChe.Enabled          := False;
  sbEstado.SimpleText          := 'Inicio Carga Novedades..';
  Application.ProcessMessages;
  advProgress.Visible          := True;
  jvThImportar.FreeOnTerminate := True;
  jvThImportar.Execute(self);
end;


procedure TFormArchivosBCRA.btLeerArchivosBCRAClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  Application.ProcessMessages;
  DonwloadListZIP('http://www.bcra.gob.ar/', 'cheques/actualiza.asp', LstArchivos);// lbArchivos.Items);
  Application.ProcessMessages;
  Screen.Cursor:=crDefault;
end;


procedure TFormArchivosBCRA.btMensualClick(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute Then
    if OpenDialog1.FileName<>'' then
      begin
        PathMensual                  := OpenDialog1.FileName;
        lbTamanio.Caption            := IntToStr(Trunc(TamanoFichero(PathMensual)/83));
        btImportar.Enabled           := False;
        btBorrarChe.Enabled          := False;
        MensajeEstado('Incicio de carga archivo mensual...');
        sbEstado.SimpleText          := 'Inicio Carga Mensual..';
        advProgress.Visible          := True;
        JvTImportarMensual.FreeOnTerminate := True;
        JvTImportarMensual.Execute(Self)
      end;
end;

procedure TFormArchivosBCRA.btGeneralClick(Sender: TObject);
begin
  inherited;
  btImportar.Enabled           := False;
  btBorrarChe.Enabled          := False;
  sbEstado.SimpleText          := 'Inicio Depuracion Archivos de Cheques..';
  advProgress.Visible          := True;
  JvThBorrado.FreeOnTerminate  := True;
  JvThBorrado.Execute(self);
end;

procedure TFormArchivosBCRA.CancelarExecute(Sender: TObject);
begin
  //inherited;
//  inherited;
  Cancelar  :=True;
  btImportar.Enabled     := True;
  btBorrarChe.Enabled    := True;
end;

procedure TFormArchivosBCRA.btBorrarCheClick(Sender: TObject);
begin
  inherited;
  btImportar.Enabled           := False;
  btBorrarChe.Enabled          := False;
  sbEstado.SimpleText          := 'Inicio Depuracion Archivos de Cheques..';
  advProgress.Visible          := True;
  JvThBorrado.FreeOnTerminate  := True;
  JvThBorrado.Execute(self);
end;


{ Borra el directorio completo
procedure TFormArchivosBCRA.btLeerArchivosBCRAClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  Application.ProcessMessages;
  DonwloadListZIP('http://www.bcra.gob.ar/', 'cheques/actualiza.asp', lbArchivos.Items);
  Application.ProcessMessages;
  Screen.Cursor:=crDefault;
end;
}

function TFormArchivosBCRA.GetHTMLContent(const AURL: string): string;
begin
  Result := '';
  if AURL <> '' then
  try
    try
      Result := IdHTTP1.Get(AURL);
    finally
      if (IdHTTP1.ResponseCode <> 200) then
        begin
          Result := '';
          MessageDlg(IdHTTP1.ResponseText, mtError, [mbOK], 0);
        end;
    end;
  except
    on E: Exception do
      MessageDlg(E.message, mtError, [mbOK], 0);
  end;
end;


procedure TFormArchivosBCRA.GetURLZip(const AContent: string; Alist:TStrings; const Prefijo: string = '''../zips/cheques/'; const Sufijo: string = '.zip''');
var
  inicio, fin, longitud:Integer;
  AFile:string;
  Contador:Integer;
  Lista   : TListItem;
  Posi:Integer;
begin
  //Alist.clear;
  inicio   := 1;
  Contador := 1;
  sbEstado.SimpleText:='';
  while (inicio > 0) and (Contador<=spLimite.Value) do
    begin
      // Para limitar la cantidad de archivos puse este contador
      COntador:=Contador+1;
      // localiza el inicio de la cadena de descarga
      inicio := Pos(Prefijo, AContent, inicio);
      if inicio > 0 then
        begin
          // localiza el fin de la cadena de descarga
          fin := Pos(Sufijo, AContent, inicio);
          if (fin > inicio) then
            begin
              // calcula la longitud
              longitud := (fin + Sufijo.Length) - inicio;
                //extrae la cadena
              AFile := Copy(AContent, inicio, longitud);
              // la cadena esta en formato '../XXX/XXX.zip'
              // se elimina las comillas iniciales y finales y los dos puntos
              //  Alist.Add(AFile.Replace('''', '').Replace('../', ''));
              //end;
              sbEstado.SimpleText:='Leyendo Archivo...'+AFile;
              Application.ProcessMessages;
              inicio := fin + 1;
              //******************************************************************/
              posi:=Pos('.zip',AFIle);
              QProcesado.Close;
              QProcesado.ParamByName('nombre').AsString:=Copy(Afile,Posi-8,8);
              QProcesado.Open;
              Lista:=lwArchivos.Items.Add;
              if QProcesadoNOMBRE.Value='' then
                Lista.Checked :=False
              else
                Lista.Checked:=True;
              Lista.SubItems.Add(AFile.Replace('''', '').Replace('../', ''));
            end;
        end;
    end;
end;

//  function GetURLZip(const AContent: string; const Prefijo: string = '''../zips/cheques/'; const Sufijo: string = '.zip'''): string;
//  var
//    inicio, fin, longitud:Integer;
//  begin
//    jvThCheques.Synchronize(MensajeEstado_DescargadnoURLZip);
//    Result := '';
//    // localiza el inicio de la cadena de descarga
//    inicio := Pos(Prefijo, AContent);
//    if inicio > 0 then begin
//      // localiza el fin de la cadena de descarga
//      fin := Pos(Sufijo, AContent, inicio);
//      if (fin > inicio) then begin
//        // calcula la longitud
//        longitud := (fin + Sufijo.Length) - inicio;
//                //extrae la cadena
//        Result := Copy(AContent, inicio, longitud);
//        // la cadena esta en formato '../XXX/XXX.zip'
//        // se elimina las comillas iniciales y finales y los dos puntos
//        Result := result.Replace('''', '').Replace('../', '');
//      end;
//    end;
//  end;

function TFormArchivosBCRA.ExtractFileNameFromURL(const AURL: string): string;
   /// este proceso separa las partes de una URL y obtiene solo la ultima parte.
   /// no esta optimizado en cuanto que pudiera llevar parámetros o no ser un nombre del fichero valido.
   /// pero para este caso en concreto es suficiente
Begin
  with TStringList.Create do
    try
      StrictDelimiter := true;
      Delimiter := '/';
      DelimitedText := AURL;
      Result := Strings[count - 1];
    finally
      Free;
    end;
End;

function TFormArchivosBCRA.DescargarFileURL(const AURL: string): string;
var
  s: TStream;
  LocalFileName:string;
  PathDescarga:String;
begin
  LocalFileName:='';
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'ArchivosBCRA') then
    CreateDir(ExtractFilePath(ParamStr(0))+'ArchivosBCRA');
  PathDescarga:=ExtractFilePath(ParamStr(0))+'ArchivosBCRA\';
  BorrarDirectrio(PathDescarga);

  Result := '';

  try
    //  LocalFileName := ExtractFilePath(Application.ExeName) + ExtractFileNameFromURL(AURL);
    LocalFileName := PathDescarga + ExtractFileNameFromURL(AURL);

    s := TFileStream.Create(LocalFileName, fmCreate);
    try
      IdHttp1.Get(AURL, s);
      if IdHTTP1.ResponseCode = 200 then
        result := LocalFileName
      else
        MessageDlg(IdHTTP1.ResponseText, mtError, [mbOK], 0);
    finally
      s.Free;
    end;
  except
    on E: Exception do
      MessageDlg(E.message, mtWarning, [mbOK], 0);
  end;
  IdHTTP1.Disconnect;
end;


// function TFormArchivosBCRA.DonwloadListZIP (const APageBase, AURL:string; AList:TStrings):string;
//  var
//    HTMLContent,          //Contenido de la pagina en HTML
//    LocalFileZip: string; // Ruta local al fichero ZIP
//  begin
//    // Se descarga el contenido de la pagina en formato HTML
//    HTMLContent := GetHTMLContent(APageBase + AURL);
//    if (HTMLContent = '') then
//      MessageDlg('No se ha podido realizar la descarga', mtError, [mbOK], 0)
//    else begin
//      // Se busca la primera URL a un fichero ZIP
//      GetURLZip(HTMLContent, AList);
//    end;
//  end;
// function DonwloadZIP (const APageBase, AURL:string):string;
//  var
//    HTMLContent,          //Contenido de la pagina en HTML
//    URLZip: string;        // URL al fichero ZIP
//    LocalFileZip: string; // Ruta local al fichero ZIP
//  begin
//    // Se descarga el contenido de la pagina en formato HTML
//    jvThCheques.Synchronize(MensajeEstado_DescargaZip);
//
//    HTMLContent := GetHTMLContent(APageBase + AURL);
//    if (HTMLContent = '') then
//      begin
//        jvThCheques.Synchronize(MensajeEstado_Error);
//       // MessageDlg('No se ha podido realizar la descarga', mtError, [mbOK], 0);
//      end
//    else
//      begin
//        // Se busca la primera URL a un fichero ZIP
//        URLZip := GetURLZip(HTMLContent);
//        if URLZip = '' then
//          begin
//            jvThCheques.Synchronize(MensajeEstado_Error);
////            MessageDlg('No se ha podido extraer la URL del fichero ZIP', mtError, [mbOK], 0);
//          end
//        else
//          begin
//            LocalFileZip := DescargarFileURL(APageBase + URLZip);
//            if LocalFileZip = '' then
//              begin
//                jvThCheques.Synchronize(MensajeEstado_Error);
////                MessageDlg('No se ha podido descargar el fichero ZIP desde la URL ', mtError, [mbOK], 0);
//              end
//            else
//              begin
//                jvThCheques.Synchronize(MensajeEstado_DescargaZip);
//                result := LocalFileZip;
//              end;
//          end;
//      end;
//  end;

function TFormArchivosBCRA.DescomprimiZip(F:String):boolean;
Var
  PathZip:String;
  Zip :TZipFile;
Begin
  Zip := TZipFile.Create;
  Try
    Zip.Open (F, zmRead);
    Zip.ExtractAll(ExtractFilePath(ParamStr(0))+'ArchivosBCRA\');
  Finally
    Zip.Free;
  End;
end;

function TFormArchivosBCRA.DonwloadListZIP(const APageBase, AURL: string;
  AList: TStrings): string;
var
  HTMLContent,          //Contenido de la pagina en HTML
  LocalFileZip: string; // Ruta local al fichero ZIP
begin
    // Se descarga el contenido de la pagina en formato HTML
    HTMLContent := GetHTMLContent(APageBase + AURL);
    if (HTMLContent = '') then
      MessageDlg('No se ha podido realizar la descarga de la Pagina el BCRA', mtError, [mbOK], 0)
    else
      begin
        // Se busca la primera URL a un fichero ZIP
        GetURLZip(HTMLContent, AList);
      end;
end;


procedure TFormArchivosBCRA.DSBaseStateChange(Sender: TObject);
begin
//  inherited;
end;

procedure TFormArchivosBCRA.FormClose(Sender: TObject;
  var Action: TCloseAction);
var Path:String;
begin
  Path:=ExtractFilePath(ParamStr(0))+'ArchivosBCRA\cheques\';
  BorrarArchivos(Path);
  inherited;
  Action:=caFree;
end;

procedure TFormArchivosBCRA.FormCreate(Sender: TObject);
begin
  inherited;
  Cancelar             := False;
  advProgress.Position := 0;
  AdvProgress.Visible  := False;
end;

procedure TFormArchivosBCRA.FormDestroy(Sender: TObject);
begin
  inherited;
  FormArchivosBCRA := nil;
end;

procedure TFormArchivosBCRA.IncProgreso;
begin
  AdvProgress.Position := AdvProgress.Position+1;
  lbRegActual.Caption  := IntToStr(AdvProgress.Position);
  Application.ProcessMessages;
end;

procedure TFormArchivosBCRA.JvThBorradoExecute(Sender: TObject;
  Params: Pointer);
begin
 // inherited;
  BorrarCheques_File;
  JvThBorrado.Terminate;
end;


procedure TFormArchivosBCRA.JvThBorradoFinish(Sender: TObject);
begin
  btImportar.Enabled     := True;
  btBorrarChe.Enabled    := True;
  sbEstado.SimpleText    := '..';
  btImportar.Click;
end;

procedure TFormArchivosBCRA.JvThImportacionExecute(Sender: TObject;
  Params: Pointer);
begin
  inherited;
  LeerArchivoCheques;
end;


procedure TFormArchivosBCRA.jvThImportarExecute(Sender: TObject;
  Params: Pointer);
begin
  inherited;
  LeerArchivoCheques;
  jvThImportar.Terminate;
end;


procedure TFormArchivosBCRA.jvThImportarFinish(Sender: TObject);
begin
  inherited;
  QIngresaProcesado.Close;
  QIngresaProcesado.ParamByName('nombre').Value:=ArchiProcesado;
  QIngresaProcesado.ExecSQL;
  QIngresaProcesado.Close;
  sbEstado.SimpleText    :='..';
  btImportar.Enabled     := True;
  btBorrarChe.Enabled    := True;
end;


procedure TFormArchivosBCRA.JvTImportarMensualExecute(Sender: TObject;
  Params: Pointer);
begin
  inherited;
  LeerArchivoMensual(PathMensual);
  JvTImportarMensual.Terminated;
end;



procedure TFormArchivosBCRA.JvTImportarMensualFinish(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText    :='..';
  btImportar.Enabled     := True;
  btBorrarChe.Enabled    := True;
end;

procedure TFormArchivosBCRA.LeerArchivoCheques;
var
  F       :TextFile;
  Path    :String;
  Rec     :TSearchRec;
  Renglon,Monto :String;
  Fecha_1,Fecha_2:TDate;
  D,M,A   :Word;
  Valor   :Extended;
  Arch    :TStringList;
begin

  Path:=ExtractFilePath(ParamStr(0))+'ArchivosBCRA\cheques\al*.txt';
  FindFirst(Path,faAnyFile,Rec);
  Path:=ExtractFilePath(ParamStr(0))+'ArchivosBCRA\cheques\';

  arch := TStringList.Create;
  arch.LoadFromFile(Path+rec.Name);

  AssignFile(f,Path+rec.Name);
  Reset(F);
  jvThImportar.Synchronize(MensajeEstado_Novedades);
  AdvProgress.Min     := 0;
  advProgress.Max     := Arch.Count;//(Architxt);
  lbTamanio.Caption   := IntToStr(advProgress.Max);
  advProgress.Position:= 0;
  while (Not Eof(F)) and (Cancelar<>True) do
    begin
      jvThImportar.Synchronize(IncProgreso);
      ReadLn(F,Renglon);
      if Trim(Copy(Renglon,22, 8))<>'' then
        begin
          A:=StrToInt(Copy(Renglon,22, 4));
          M:=StrToInt(Copy(Renglon,26, 2));
          D:=StrToInt(Copy(Renglon,28, 2));
          Fecha_1 := EncodeDate(A,M,D);
        end;

      if Trim(Copy(Renglon,46, 8))<>'' then
        begin
          A:=StrToInt(Copy(Renglon,46, 4));
          M:=StrToInt(Copy(Renglon,50, 2));
          D:=StrToInt(Copy(Renglon,52, 2));
          Fecha_2 := EncodeDate(A,M,D);
        end;

      QBuscaChe.Close;
      QBuscaChe.ParamByName('cuit').Value      :=Copy(Renglon, 1,11);
      QBuscaChe.ParamByName('nrocheque').Value :=Trim(Copy(Renglon,12,10));
      QBuscaChe.Open;
      if QBuscaCheID.AsString='' then
        begin
          QCheques.Close;
          QCheques.ParamByName('cuit').AsString         := Copy(Renglon, 1,11);
          QCheques.ParamByName('nro_cheque').AsString   := Trim(Copy(Renglon,12,10));
          if Trim(Copy(Renglon,22, 8))<>'' then
            QCheques.ParamByName('fecha_rechazo').AsDate  := Fecha_1
          else
            QCheques.ParamByName('fecha_rechazo').Clear;

          Valor:= StrToFloat(Copy(Renglon,31,13));
          Monto:= FormatFloat('0.00',Valor*0.01);

          QCheques.ParamByName('monto').AsFloat         := StrToFloat(Monto);
          QCheques.ParamByName('causal').ASInteger      := StrToInt(Copy(Renglon,45, 1));

          if Trim(Copy(Renglon,46, 8))<>'' then
            QCheques.ParamByName('fecha_levanta').AsDate  := Fecha_2
          ELSE
            QCheques.ParamByName('fecha_levanta').Clear;

          QCheques.ParamByName('ley25326_16').AsString  := Copy(Renglon,54, 1);
          QCheques.ParamByName('ley25326_38').AsString  := Copy(Renglon,55, 1);
          QCheques.ParamByName('cuit_persona').AsString := Copy(Renglon,56,11);
          QCheques.ParamByName('pago_multa').AsString   := Copy(Renglon,67,15);
          QCheques.ExecSQL;
          QCheques.Close;
        end;
      QBuscaChe.Close;
    end;
  QBuscaChe.Close;
  advProgress.Visible:=False;
  CloseFile(f);
end;

procedure TFormArchivosBCRA.LeerArchivoMensual(Path:String);
var
  F       :TextFile;
  Rec     :TSearchRec;
  Renglon,Monto :String;
  Fecha_1,Fecha_2:TDate;
  D,M,A   :Word;
  Valor   :Extended;
  Arch    :TStringList;
 begin
 // arch := TStringList.Create;
 // arch.LoadFromFile(Path);
  AdvProgress.Min     := 0;
  advProgress.Max     := Trunc(TamanoFichero(Path)/83); //;fileSize(F);//  Arch.Count;//(Architxt);

  AssignFile(f,Path);
  Reset(F);
  advProgress.Position:= 0;

  while (Not Eof(F)) and (Cancelar<>True) do
    begin
      JvTImportarMensual.Synchronize(IncProgreso);
      ReadLn(F,Renglon);
      if Trim(Copy(Renglon,22, 8))<>'' then
        begin
          A:=StrToInt(Copy(Renglon,22, 4));
          M:=StrToInt(Copy(Renglon,26, 2));
          D:=StrToInt(Copy(Renglon,28, 2));
          Fecha_1 := EncodeDate(A,M,D);
        end;

      if Trim(Copy(Renglon,46, 8))<>'' then
        begin
          A:=StrToInt(Copy(Renglon,46, 4));
          M:=StrToInt(Copy(Renglon,50, 2));
          D:=StrToInt(Copy(Renglon,52, 2));
          Fecha_2 := EncodeDate(A,M,D);
        end;

  //    QBuscaChe.Close;
  //    QBuscaChe.ParamByName('cuit').Value      :=Copy(Renglon, 1,11);
  //    QBuscaChe.ParamByName('nrocheque').Value :=Trim(Copy(Renglon,12,10));
  //    QBuscaChe.Open;
   //   if QBuscaCheID.AsString='' then
        begin
          QCheques.Close;
          QCheques.ParamByName('cuit').AsString         := Copy(Renglon, 1,11);
          QCheques.ParamByName('nro_cheque').AsString   := Trim(Copy(Renglon,12,10));
          if Trim(Copy(Renglon,22, 8))<>'' then
            QCheques.ParamByName('fecha_rechazo').AsDate  := Fecha_1
          else
            QCheques.ParamByName('fecha_rechazo').Clear;

          if (Trim(Copy(Renglon,31,13))<>'') then
            Valor:= StrToFloat(Copy(Renglon,31,13))
          else
            Valor:=0;
          Monto:= FormatFloat('0.00',Valor*0.01);

          QCheques.ParamByName('monto').AsFloat         := StrToFloat(Monto);
          QCheques.ParamByName('causal').ASInteger      := StrToInt(Copy(Renglon,45, 1));

          if Trim(Copy(Renglon,46, 8))<>'' then
            QCheques.ParamByName('fecha_levanta').AsDate  := Fecha_2
          ELSE
            QCheques.ParamByName('fecha_levanta').Clear;

          QCheques.ParamByName('ley25326_16').AsString  := Copy(Renglon,54, 1);
          QCheques.ParamByName('ley25326_38').AsString  := Copy(Renglon,55, 1);
          QCheques.ParamByName('cuit_persona').AsString := Copy(Renglon,56,11);
          QCheques.ParamByName('pago_multa').AsString   := Copy(Renglon,67,15);
          QCheques.ExecSQL;
          QCheques.Close;
        end;
      QBuscaChe.Close;
    end;
  QBuscaChe.Close;
  advProgress.Visible:=False;
  CloseFile(f);
end;

procedure TFormArchivosBCRA.LeerArchivoNovedades;
var
  F       :TextFile;
  Path    :String;
  Rec     :TSearchRec;
  Arch    :TStringList;
begin
  Path:=ExtractFilePath(ParamStr(0))+'ArchivosBCRA\cheques\ba*.txt';
  FindFirst(Path,faAnyFile,Rec);
  Path:=ExtractFilePath(ParamStr(0))+'ArchivosBCRA\cheques\';

  arch := TStringList.Create;
  arch.LoadFromFile(Path+rec.Name);

  AssignFile(f,Path+rec.Name);
  Reset(F);

  mCheques.Lines.AddStrings(Arch);
  CloseFile(f);
  lbCantidadBorrar.Caption:=IntToStr(mCheques.Lines.Count-1);
end;


procedure TFormArchivosBCRA.lwArchivosDblClick(Sender: TObject);
var
  LocalFileZip: string;
  IdPos:Integer;
begin
  if Not(lwArchivos.Items.Item[lwArchivos.ItemIndex].Checked) then
    begin
      sbEstado.SimpleText:= 'Procesando Archivo...' + lwArchivos.Items.Item[lwArchivos.ItemIndex].SubItems[0];
      MensajeEstado_DescargaZip;
      with lwArchivos do
        if ItemIndex >= 0 then begin
          LocalFileZip := DescargarFileURL('http://www.bcra.gob.ar/' + lwArchivos.Items.Item[lwArchivos.ItemIndex].SubItems[0]);
          IdPos          := Pos('.zip',lwArchivos.Items.Item[lwArchivos.ItemIndex].SubItems[0]);
          ArchiProcesado := Copy(lwArchivos.Items.Item[lwArchivos.ItemIndex].SubItems[0],IdPos-8,8);
          if LocalFileZip = '' then
            MessageDlg('No se ha podido descargar el fichero ZIP desde la URL ', mtError, [mbOK], 0)
          else
            begin
            //  MessageDlg(LocalFileZip, mtInformation, [mbOK], 0);
              MensajeEstado_DescargaFinalizada;
              DescomprimiZip(LocalFileZip);
              MensajeEstado_Novedades;
              LeerArchivoNovedades;
            end;
        end;
    end
  else
    ShowMessage('Archivo Procesado...');
end;

//procedure TFormArchivosBCRA.lbArchivosDblClick(Sender: TObject);
//var
//  LocalFileZip: string;
//  IdPos:Integer;
//begin
//  sbEstado.SimpleText:= 'Procesando Archivo...'+lbArchivos.items[lbArchivos.ItemIndex];
//  MensajeEstado_DescargaZip;
//  with lbArchivos do
//    if ItemIndex >= 0 then begin
//      LocalFileZip := DescargarFileURL('http://www.bcra.gob.ar/' + items[ItemIndex]);
//      IdPos          := Pos('.zip',items[ItemIndex]);
//      ArchiProcesado := Copy(items[ItemIndex],IdPos-8,8);
//      if LocalFileZip = '' then
//        MessageDlg('No se ha podido descargar el fichero ZIP desde la URL ', mtError, [mbOK], 0)
//      else
//        begin
//        //  MessageDlg(LocalFileZip, mtInformation, [mbOK], 0);
//          MensajeEstado_DescargaFinalizada;
//          DescomprimiZip(LocalFileZip);
//          MensajeEstado_Novedades;
//          LeerArchivoNovedades;
//        end;
//    end;
//end;

procedure TFormArchivosBCRA.MensajeEstado(m: String);
begin
  memoLog.Lines.Add(m);
  Application.ProcessMessages;
end;

procedure TFormArchivosBCRA.MensajeEstado_IniciandoSecuencia;
begin
  memoLog.Lines.Add('Iniciandop Secuencia..');
  Application.ProcessMessages;
end;

procedure TFormArchivosBCRA.MensajeEstado_Descomprimiendo;
begin
  memoLog.Lines.Add('Descomprimiendo Archivo ....');
  Application.ProcessMessages;
end;

procedure TFormArchivosBCRA.MensajeEstado_3;
begin
  memoLog.Lines.Add('Proceso Finalizado..');
  Application.ProcessMessages;
end;

procedure TFormArchivosBCRA.MensajeEstado_CantidadReg;
begin
  AdvProgress.Max:= memoLog.Lines.Add('Descargando URL ...');
  Application.ProcessMessages;
end;

procedure TFormArchivosBCRA.MensajeEstado_DescargadnoURLZip;
begin
  memoLog.Lines.Add('Descargando URL ...');
  Application.ProcessMessages;
end;

procedure TFormArchivosBCRA.MensajeEstado_DescargaFinalizada;
begin
  memoLog.Lines.Add('Descarga Finaliza Archivo .Zip..');
  Application.ProcessMessages;
end;

procedure TFormArchivosBCRA.MensajeEstado_DescargaZip;
begin
  memoLog.Lines.Add('Iniciando Descarga Archivo .Zip..');
  Application.ProcessMessages;
end;

procedure TFormArchivosBCRA.MensajeEstado_Error;
begin
  memoLog.Lines.Add('Error de Proceso ..');
  Application.ProcessMessages;
end;

procedure TFormArchivosBCRA.MensajeEstado_FinProcesoBorrado;
begin
  memoLog.Lines.Add('Fin de Borrado de Cheques...');
  Application.ProcessMessages;
end;

procedure TFormArchivosBCRA.MensajeEstado_LecturaPagina;
begin
  memoLog.Lines.Add('Leyendo sitio Web BCRA ..');
  Application.ProcessMessages;
end;

procedure TFormArchivosBCRA.MensajeEstado_Novedades;
begin
  memoLog.Lines.Add('Cargando Novedades de Cheques ..');
  Application.ProcessMessages;
end;

procedure TFormArchivosBCRA.MensajeEstado_ProcesoBorrado;
begin
  memoLog.Lines.Add('Iniciando Proceso de Borrado Cheques ....');
  Application.ProcessMessages;
end;

procedure TFormArchivosBCRA.MensajeEstado_ProcesoFinalizado;
begin
  memoLog.Lines.Add('Fin de Proceso BCRA ..');
  Application.ProcessMessages;
end;

end.
end.
