unit UServerContainer;

interface

uses System.SysUtils, System.Classes,
  Datasnap.DSTCPServerTransport, IniFiles,
  Datasnap.DSServer, Datasnap.DSCommonServer,
  Datasnap.DSAuth, IPPeerServer, Data.DBXInterBase, Data.DB, Data.SqlExpr,
  vcl.dialogs,Data.DBXCommon;

type
  TServerContainer = class(TDataModule)
    DSServer: TDSServer;
    DSTCPServerTransport: TDSTCPServerTransport;
    DSServerClass: TDSServerClass;
    DSServerClassGestion: TDSServerClass;
    DSServerConfiguraIni: TDSServerClass;
    GestionPtoVta: TSQLConnection;
    DSServerTransferecias: TDSServerClass;
    DSServerBuscadorCliente: TDSServerClass;
    DSServerAjusteStock: TDSServerClass;
    DSServerBuscadores: TDSServerClass;
    DSServerExistencias: TDSServerClass;
    DSServerListados: TDSServerClass;
    procedure DataModuleCreate(Sender: TObject);
    procedure DSServerTransfereciasGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSServerConfiguraIniGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSServerClassGestionGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSServerClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSServerBuscadorClienteGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSServerAjusteStockGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSServerBuscadoresGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSServerExistenciasGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSServerListadosGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
//    procedure DSServerConnect(DSConnectEventObject: TDSConnectEventObject);
//    procedure DSServerDisconnect(DSConnectEventObject: TDSConnectEventObject);


  private
    { Private declarations }
  public
  end;

var
  ServerContainer: TServerContainer;

implementation

uses Winapi.Windows, UServerMethods, UServerMethodsTransferencias, {UServidor,}
  UServerMethodsGral, UServerMethodsConfiguraIni, UServerMethodsBuscadorCliente,
  UServerMethodsAjustesStock, UServerMethodsBuscadores,
  UServerMethodsExistencias,UServerMethodsListado;

{$R *.dfm}

procedure TServerContainer.DataModuleCreate(Sender: TObject);
var
  ArchivoIni: TIniFile;
  edPathBase: String;
  ConFirb: Boolean;
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'ServidorDS.ini');
  edPathBase := Trim(ArchivoIni.ReadString('base', 'path', 'Localhost'));
  ArchivoIni.Free;


//  FormServidor.lbMotor.Caption := '//';
//  if FormServidor.rgTipoMotor.ItemIndex = 0 then
  BEGIN
    GestionPtoVta.Params.Clear;
    GestionPtoVta.Params.Add('DriverUnit=Data.DBXInterBase');
    GestionPtoVta.Params.Add('DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver190.bpl');
    GestionPtoVta.Params.Add('DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borland.Data.DbxCommonDriver,Version=19.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b');
    GestionPtoVta.Params.Add('MetaDataPackageLoader=TDBXInterbaseMetaDataCommandFactory,DbxInterBaseDriver190.bpl');
    GestionPtoVta.Params.Add('MetaDataAssemblyLoader=Borland.Data.TDBXInterbaseMetaDataCommandFactory,Borland.Data.DbxInterBaseDriver,Version=19.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b');
    GestionPtoVta.Params.Add('GetDriverFunc=getSQLDriverINTERBASE');
    GestionPtoVta.Params.Add('LibraryName=dbxint.dll');
    GestionPtoVta.Params.Add('LibraryNameOsx=libsqlib.dylib');
    GestionPtoVta.Params.Add('VendorLib=GDS32.DLL');
    GestionPtoVta.Params.Add('VendorLibWin64=ibclient64.dll');
    GestionPtoVta.Params.Add('VendorLibOsx=libgds.dylib');
    GestionPtoVta.Params.Add('Database=' + edPathBase);
    GestionPtoVta.Params.Add('User_Name=sysdba');
    GestionPtoVta.Params.Add('Password=regulador');
    GestionPtoVta.Params.Add('Role=RoleName');
    GestionPtoVta.Params.Add('MaxBlobSize=-1');
    GestionPtoVta.Params.Add('LocaleCode=0000');
    GestionPtoVta.Params.Add('IsolationLevel=ReadCommitted');
    GestionPtoVta.Params.Add('SQLDialect=1');
    GestionPtoVta.Params.Add('CommitRetain=False');
    GestionPtoVta.Params.Add('WaitOnLocks=True');
    GestionPtoVta.Params.Add('TrimChar=False');
    GestionPtoVta.Params.Add('DisplayDriverName=InterBase Server');
    GestionPtoVta.Params.Add('BlobSize=-1');
    GestionPtoVta.Params.Add('ErrorResourceFile=');
    GestionPtoVta.Params.Add('RoleName=RoleName');
    GestionPtoVta.Params.Add('ServerCharSet=');
    GestionPtoVta.Params.Add('Trim Char=False');
    GestionPtoVta.Params.Add('SEP=');
    GestionPtoVta.Params.Add('Filters={}');
//    FormServidor.lbMotor.Caption := 'Interbase';
//  END
//  else
//  begin
//    GestionPtoVta.Params.Add('DriverUnit=Data.DBXFirebird');
//    GestionPtoVta.Params.Add('DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver190.bpl');
//    GestionPtoVta.Params.Add('DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borland.Data.DbxCommonDriver,Version=19.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b');
//    GestionPtoVta.Params.Add('MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFirebirdDriver190.bpl');
//    GestionPtoVta.Params.Add('MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandFactory,Borland.Data.DbxFirebirdDriver,Version=19.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b');
//    GestionPtoVta.Params.Add('GetDriverFunc=getSQLDriverINTERBASE');
//    GestionPtoVta.Params.Add('LibraryName=dbxfb.dll');
//    GestionPtoVta.Params.Add('LibraryNameOsx=libsqlfb.dylib');
//    GestionPtoVta.Params.Add('VendorLib=fbclient.dll');
//    GestionPtoVta.Params.Add('VendorLibWin64=fbclient.dll');
//    GestionPtoVta.Params.Add('VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird');
//    GestionPtoVta.Params.Add('Database=' + edPathBase);
//    // :\Proyectos Delphi\GestionComercial\Tablas IB\GestionV3.LAR
//    GestionPtoVta.Params.Add('User_Name=sysdba');
//    GestionPtoVta.Params.Add('Password=regulador');
//    GestionPtoVta.Params.Add('Role=RoleName');
//    GestionPtoVta.Params.Add('MaxBlobSize=-1');
//    GestionPtoVta.Params.Add('LocaleCode=0000');
//    GestionPtoVta.Params.Add('IsolationLevel=ReadCommitted');
//    GestionPtoVta.Params.Add('SQLDialect=1 ');
//    GestionPtoVta.Params.Add('CommitRetain=False');
//    GestionPtoVta.Params.Add('WaitOnLocks=True');
//    GestionPtoVta.Params.Add('TrimChar=False');
//    GestionPtoVta.Params.Add('BlobSize=-1');
//    GestionPtoVta.Params.Add('ErrorResourceFile=');
//    GestionPtoVta.Params.Add('RoleName=RoleName');
//    GestionPtoVta.Params.Add('ServerCharSet=');
//    GestionPtoVta.Params.Add('Trim Char=False');
//    FormServidor.lbMotor.Caption := 'Firebird';
  end;

  try
    GestionPtoVta.Connected := True;
  except
    on e: Exception do
    begin
      ShowMessage('Verificar el Alias de la Base de Datos.....' + e.Message);
      GestionPtoVta.Connected := False;
    end;
  end;
end;

procedure TServerContainer.DSServerAjusteStockGetClass(DSServerClass
  : TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TServerMethodsAjustesStock;
end;

procedure TServerContainer.DSServerBuscadorClienteGetClass
  (DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TServerModuleBuscadorCliente;
end;

procedure TServerContainer.DSServerBuscadoresGetClass(DSServerClass
  : TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TServerModuleBuscadores
end;

procedure TServerContainer.DSServerClassGestionGetClass(DSServerClass
  : TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TServerModuleGeneral;
end;

procedure TServerContainer.DSServerClassGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
  PersistentClass := TServerMethods;
end;

procedure TServerContainer.DSServerConfiguraIniGetClass(DSServerClass
  : TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TServerMethodsConfiguraIni;
end;

procedure TServerContainer.DSServerExistenciasGetClass(DSServerClass
  : TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TServerMethodsExistencia;
end;

procedure TServerContainer.DSServerListadosGetClass(
  DSServerClass: TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass:= TServerModuleListado;
end;

procedure TServerContainer.DSServerTransfereciasGetClass(DSServerClass
  : TDSServerClass; var PersistentClass: TPersistentClass);
begin
  PersistentClass := TServerMethodsTransferecias;
end;

//procedure TServerContainer.DSServerConnect(DSConnectEventObject: TDSConnectEventObject);
//begin
 // FormServidor.mNovedades.Lines.Add('Coneccion Entrante de Ip :' + DSConnectEventObject.ChannelInfo.ClientInfo.IpAddress);
//  FormServidor.mNovedades.Lines.Add('Cliente Port.:' + DSConnectEventObject.ChannelInfo.ClientInfo.ClientPort);
//  FormServidor.mNovedades.Lines.Add('Info.:' + DSConnectEventObject.ChannelInfo.Info);
//  FormServidor.mNovedades.Lines.Add(' ------------------------------------');

//end;

//procedure TServerContainer.DSServerDisconnect(DSConnectEventObject: TDSConnectEventObject);
//begin
//  FormServidor.mNovedades.Lines.Add('Se desconecto Ip :' + DSConnectEventObject.ChannelInfo.ClientInfo.IpAddress);
//  FormServidor.mNovedades.Lines.Add('Info.:' + DSConnectEventObject.ChannelInfo.Info);
//  FormServidor.mNovedades.Lines.Add(' ------------------------------------');
//end;


//procedure TServerContainer.SQLMonitor1LogTrace(Sender: TObject;
//  TraceInfo: TDBXTraceInfo);
//begin
// FormServidor.mSql.Lines := TStrings(SQLMonitor1.TraceList);
//end;


// procedure TServerContainer.SQLMonitor1LogTrace(Sender: TObject;
// TraceInfo: TDBXTraceInfo);
// begin
// // entre o SQLConnection e o banco de dados
// FormServidor.mSql.Lines := TStrings(SQLMonitor1.TraceList);
// end;

end.
