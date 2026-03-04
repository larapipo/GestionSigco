unit UABMBase;

interface

uses
  Windows, Messages, SysUtils, Classes, Forms,  Db,
  ActnList, Controls, StdCtrls, Buttons, ToolWin, ComCtrls,
  ExtCtrls, contnrs, CDSUtil, DBClient,IniFiles, Provider, Dialogs,
  dbGrids,  dbctrls, ImgList, JvExControls, JvGradient,Printers,
  Variants, JvLabel, JvDBControls, JvComponentBase, JvFormPlacement,
  FMTBcd, SqlExpr, JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvDialogs,
  System.ImageList, AdvSearchList, AdvSearchEdit, DBAdvSearchEdit, DBAdvSearchList, Math;

type
  TFormABMBase = class(TForm)
    pnPrincipal: TPanel;
    ToolBar1: TToolBar;
    ActionList1: TActionList;
    Agregar: TAction;
    Borrar: TAction;
    Modificar: TAction;
    Confirma: TAction;
    Cancelar: TAction;
    Buscar: TAction;
    DSBase: TDataSource;
    btNuevo: TBitBtn;
    btBorrar: TBitBtn;
    btModificar: TBitBtn;
    btCancelar: TBitBtn;
    btConfirma: TBitBtn;
    btBuscar: TBitBtn;
    Panel1: TPanel;
    btSalir: TBitBtn;
    Salir: TAction;
    Prev: TAction;
    Next: TAction;
    Pr: TSpeedButton;
    Ne: TSpeedButton;
    Recuperar: TAction;
    ImageList1: TImageList;
    sbEstado: TStatusBar;
    DBStatusLabel1: TJvDBStatusLabel;
    JvFormStorage: TJvFormStorage;
    QUltimoCodigo: TSQLQuery;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    ComBuscadorBase: TComBuscador;
    QBrowse2: TFDQuery;
    QUltimoCodigo2: TFDQuery;
    Search: TAction;
    ImageListDos: TImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SalirExecute(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N501Click(Sender: TObject);
    procedure N751Click(Sender: TObject);
    procedure N1001Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvSearchEnter(Sender: TObject);
    procedure AdvSearchExit(Sender: TObject);
    procedure AdvSearchSelect(Sender: TObject);
    procedure AdvSearchButtonClick(Sender: TObject);
    procedure AdvSearchKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure SearchExecute(Sender: TObject);                                     
    function  SearchInDet : Boolean;
  private
     { Private declarations }
    ArrayCds: TObjectList;
    ArrayDsp: TObjectList;
    OnApply:  TAfterApply;
    FSGrid:   TDBGrid;
  public
    { Public declarations }
    SinBDE:Byte;
    ArchivoIni,
    GeneralIni        :TIniFile;
    Imprime           :String;
    SucursalPorDefecto:Integer;
    SucursalAdmin     :Integer;
    CajaPorDefecto    :Integer;
    DepositoPorDefecto:Integer;
    TipoBaseDatos     :Integer;

    IngresoAutomatico,
    FiltraCpbteCondIva,
    VerificaCambioPrecio,
    VerificaCambioPrecioCompra,
    ClientePorDefecto,
    ProveedorPorDefecto :String;
    GravamenPorDefecto  :String;
    TIvaPorDefecto,STIvaPorDefecto,InscripcionPorDefecto,
    PrCpbte,PrListados,
    PrDefault,UnidadesPorDefecto,
    RangoFechasCCVta,
    RangoFechasCCCompra,
    RangoFechasEmpleado,DatosSinBDEKey,DatosContableKey :Integer;
    UsaBDE,DatosSinBDEPath  :String;
    Datos,Agenda            :String;
    PadronIIBBWeb,UsaConceptoRecargoTC,
    ReproWeb, ReproWebAuto,AplicaIvaDif,Ready           :Boolean;
   // ControlaCodigo,CodigoAlfa :String;
    PrNomCpbte,PrNomListados,
    PrNomDefault,
    // path varios
    PathFreezerCtaCte,PathFreezerCtdo,PathTxStock,PathTxStockCtral,PathAjStock,
    PrCpbteDefecto,PrListadoDefecto  :String;
    ScannerSerie,DiscriminaIva,Icono :String;
    PuertoCom          :Integer;
    MinCCVta,MaxCCVta,
    MinCCComp,MaxCCComp:Real;
    MonedaStock        :Integer;
    IdBalanza          :Integer;
    VentanaEfecto,
    PrecioArticulo,SeguimientoCtroCosto,ControlaImpresion,
    DetalleArticulo,NotaVtaCtdo    :Boolean;
    Campo,
    DatoNew,DatoOld,
    Tabla,TipoCpbte,
    Condicion          :String;
    // Generacion de archivos de Stock *****************
    GenerarArchivoTXStk,GenerarArchivoAjStk : Boolean;
    Host               :String;
    // Variables de Correo ******
    DirCorreo,NombreCuenta,
    AsuntoCorreo,NombreServidor,
    Clave,Autotenticacion,SASL,Remitente:String;
    MetodoSSL,UsaTLS,ModoSSL,
    Puerto:Integer;
    FueModificado,CantidadNegativaPresupuesto :Boolean;
    VerificaIvaCpbte,VerificaNroCpbte,VerificaCheRcBCRA,VerificaCuitRc,
    ConfirmaAutoEnvioCorreoFc,ControlaNroFiscal    :Boolean;
    ClaveElectronica,CertificadoElectronico,URLWSAA,URLWSW,URLWSW_EX:String;
    URLBcra:String;
    ModoFcElectronica  :Byte;
    GenerarOProducion  :Boolean;
    PedirConfirmacionOP:Boolean;
    Enter_CB            :Boolean;
    // Variables para Abonos...
    DiasAbono,CargoAbono:Integer;
    //**********************************
    // Despachante
    CodHonorarios,CodAnticipos    :string;
    TokenWispro      : string;
    ApiKeyGoogle     : string;

    FSearch          : TDBAdvSearchEdit;
    MonitoreoPath    : String;
    MonitoreoActivo  : Boolean;
    //COT
    COTClave:string;
    COTModo:Integer;

    procedure AddClientDataSet(CDS: TClientDataSet; DSP: TDataSetProvider);
    procedure CancelarCambios;
    procedure VirtualUIGetUploadDir(Sender: TObject; var Directory: string; var Handled: Boolean);
    procedure VirtualUIDownloadEnd(Sender:TObject;Const FileName:String);
    function  GetIdTipoCpbte(Op:string; Suc :Integer; TC, CC, Letra :string) :Integer;
    procedure SearchAssignGrid (AGrid: TDBGrid ); 
    procedure Refresh;

  end;

var
  FormABMBase: TFormABMBase;

const
  ancho = 1024; // Ancho del dise&ntilde;o
  alto = 768;  // Alto del dise&ntilde;o

implementation

uses UDMain_FD;

{$R *.DFM}

//*************** Procedimientos para el uso VirtualUI *************

procedure TFormABMBase.Refresh;
begin      
  if (DSBase.DataSet.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) and (FSGrid = nil)  then
    Recuperar.Execute;
end;

function TFormABMBase.GetIdTipoCpbte(Op:string; Suc:Integer; TC, CC, Letra :string): Integer;
var Q:TFDQuery;
begin
  Q             := TFDQuery.Create(Application);
  Q.Connection  := DMMain_FD.fdcGestion;
  Q.SQL.Text    := 'select c.id_comprobante from comprobantes c '+
                   'where c.compra_venta="'+Op+'" and '+
                         'c.sucursal='+IntToStr(Suc)+' and '+
                         'c.tipo_comprob="'+TC+'" and '+
                         'c.clase_comprob="'+CC+'" and '+
                         'c.letra="'+Letra+'"';
  Q.Open;
  if not Q.IsEmpty then
    begin
      Q.First;
      Result  :=  Q.Fields[0].AsInteger;
    end
  else
    Result  :=  -1;
  Q.Close;
  Q.Free;
end;

procedure TFormABMBase.VirtualUIDownloadEnd(Sender: TObject; const filename: string);
begin
  //ShowMessage(Format('Archivo %s.'#13#10#13#10' Ver su carpeta de descargas', [FileName]));
end;

procedure TFormABMBase.VirtualUIGetUploadDir(Sender: TObject; var Directory: string;
  var Handled: Boolean);
begin
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Descargas') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Descargas');

  Directory := ExtractFilePath(ParamStr(0))+'Descargas';
  Handled := True;
end;

//*************** Procedimientos para el uso de Base de Datos *************

procedure TFormABMBase.AddClientDataSet(CDS: TClientDataSet; DSP: TDataSetProvider);
begin
  ArrayCds.Add(CDS);
  ArrayDsp.Add(DSP);
end;

//procedure TFormABMBase.GrabarDatos(DB: TDatabase);
//begin
//  CDSApplyUpdates(DB, ArrayCds, ArrayDsp, OnApply);
//end;

procedure TFormABMBase.CancelarCambios;
begin
  CDSCancelUpdates(ArrayCds);
end;

//********* Fin de rutinas de Base de Datos ***************

procedure TFormABMBase.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // Linera Array DataSet
 // FreeAndNil(ArrayCds);
 // FreeAndNil(ArrayDsp);
  Action := caFree;
end;

procedure TFormABMBase.FormCreate(Sender: TObject);
var I:Integer;
ClaveAux,Aux:String;
begin
  SinBde:=1;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AutoSize := True;
  ArrayCds := TObjectList.Create;
  ArrayDsp := TObjectList.Create;
  //Busco en donde estoy parado dentro del dir. y levanto el ini
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  GeneralIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'General.ini');
  //*************************************************************
  // Opciones del Ini GENERAL
  //*************************************************************
  Datos                    := GeneralIni.ReadString('Datos', 'Datos', 'GestionV3');
  Icono                    := GeneralIni.ReadString('Icono', 'Path', '');
  UsaBDE                   := GeneralIni.ReadString('Datos', 'BDE', 'S');
  DatosSinBDEPath          := GeneralIni.ReadString('Datos', 'DatosSinBDEPath','');
  DatosSinBDEKey           := GeneralIni.ReadInteger('Datos','DatosSinBDEKey',-1);
  DatosContableKey         := GeneralIni.ReadInteger('Datos','DatosContableKey',-1);
  TipoBaseDatos            := GeneralIni.ReadInteger('Datos', 'BaseDatos',0);  // 0 interbase -- 1 firebird
  ProveedorPorDefecto       := GeneralIni.ReadString('Proveedor','Proveedor','');
  TIvaPorDefecto            := GeneralIni.ReadInteger('Iva','Tasa',1);
  STIvaPorDefecto           := GeneralIni.ReadInteger('Iva','SobreTasa',1);
  GravamenPorDefecto        := GeneralIni.ReadString('Gravamen','gravamen','G');
  UnidadesPorDefecto        := GeneralIni.ReadInteger('Unidad','Unidad',1);
  InscripcionPorDefecto     := GeneralIni.ReadInteger('Inscripcion','Inscripcion',1);
  MonedaStock               := GeneralIni.ReadInteger('MonedaStock','Moneda',0);
  GenerarOProducion         := GeneralIni.ReadBool('produccion','produccion',False);
  PedirConfirmacionOP       := GeneralIni.ReadBool('produccion','confirmacion',False);
  PrecioArticulo            := GeneralIni.ReadBool('stock','modificaprecio',True);
  DetalleArticulo           := GeneralIni.ReadBool('stock','modificadetalle',True);
  NotaVtaCtdo               := GeneralIni.ReadBool('FcElectronica','NotaVtaCtdo',False);
  ControlaImpresion         := GeneralIni.ReadBool('ControlaImpresion','Impresion',True);
  PadronIIBBWeb             := GeneralIni.ReadBool('Padron','PadronIIBBWeb',False);
  DiasAbono                 := GeneralIni.ReadInteger('Abonos','Dias',0);
  CargoAbono                := GeneralIni.ReadInteger('Abonos','Cargo',0);
  UsaConceptoRecargoTC      := GeneralIni.ReadBool('articulo', 'usarConceptoTC', False);
  URLBcra                   := GeneralIni.ReadString('BCRA', 'URL', '');
  VerificaCheRcBCRA         := GeneralIni.ReadBool('BCRA','VerificaRc',False);
  VerificaCuitRc            := GeneralIni.ReadBool('CUIT','VerificaCuit',False);

  ConfirmaAutoEnvioCorreoFc := GeneralIni.ReadBool('CorreoFC','ConfirmaEnvioCorreo',False);
  ReproWeb                  := GeneralIni.ReadBool('REPROWEB','Consultar',False);
  ReproWebAuto              := GeneralIni.ReadBool('REPROWEB','Automatica',False);
  AplicaIvaDif              := GeneralIni.ReadBool('IvaDif','Aplicar',False);
  CodHonorarios             := GeneralIni.ReadString('Despachante', 'Honorario', '');
  CodAnticipos              := GeneralIni.ReadString('Anticipo', 'cod', '');

  MonitoreoPath             := GeneralIni.ReadString('Monitoreo', 'path', '');
  MonitoreoActivo           := GeneralIni.ReadBool('Monitoreo','Activo',False);

  TokenWispro               := GeneralIni.ReadString('wispro', 'token', '');
  ApiKeyGoogle              := GeneralIni.ReadString('GOOGLE', 'APIKEY','');

  COTClave                  := GeneralIni.ReadString('COT', 'Clave', '');
  COTModo                   := GeneralIni.ReadInteger('COT', 'Modo', 0);

  //  VerificaCuitRc        := GeneralIni.ReadBool('CUIT','VerificaCuit',False);

  // Fin Ini GENERAL ********************************************
  //*************************************************************

  // Opciones del Ini Local *************************************
  //*************************************************************
  Host                       := ArchivoIni.ReadString('Host', 'Host', '');
  //Replicar                  := ArchivoIni.ReadBool('Replicar', 'Replicar', False);
  PrNomCpbte                 := ArchivoIni.ReadString('Impresoras', 'Comprobantes', '');
  PrNomListados              := ArchivoIni.ReadString('Impresoras', 'Listados', '');
  PrCpbteDefecto             := ArchivoIni.ReadString('Impresoras', 'ComprobanteDefecto','N');
  PrListadoDefecto           := ArchivoIni.ReadString('Impresoras', 'ListadoDefecto','N');
  VerificaIvaCpbte           := ArchivoIni.ReadBool('Iva', 'Cpbte',False);
  VerificaNroCpbte           := ArchivoIni.ReadBool('control', 'NumeracionCpbte',False);
  SucursalPorDefecto         := ArchivoIni.ReadInteger('Sucursal', 'Sucursal',1);
  DepositoPorDefecto         := ArchivoIni.ReadInteger('Deposito', 'Deposito', 0);
  Agenda                     := ArchivoIni.ReadString('Agenda', 'Agenda', 'N');
  //EmpleadoPorDefecto         := ArchivoIni.ReadString('Empleado', 'Empleado', '');
  ClientePorDefecto          := ArchivoIni.ReadString('Cliente', 'Cliente', '');
  RangoFechasCCVta           := ArchivoIni.ReadInteger('RangoFechas', 'CtaCteVta', 1);
  RangoFechasCCCompra        := ArchivoIni.ReadInteger('RangoFechas', 'CtaCteComp', 1);
  RangoFechasEmpleado        := ArchivoIni.ReadInteger('RangoFechas', 'CtaCteEmpleado', 1);
  DiscriminaIva              := ArchivoIni.ReadString('DiscriminaIva', 'Discrimina', 'S');
  FiltraCpbteCondIva         := ArchivoIni.ReadString('FiltraCpbteCondIva', 'Filtra', 'S');
  IngresoAutomatico          := ArchivoIni.ReadString('IngresoAutomatico', 'Ingreso', 'N');
  VentanaEfecto              := ArchivoIni.ReadString('EfectoVentana', 'Efecto', 'N')='S';
  MinCCVta                   := ArchivoIni.ReadFloat('SaldoCC', 'Minimo', 0);
  MaxCCVta                   := ArchivoIni.ReadFloat('SaldoCC', 'Maximo', 100000);
  MinCCComp                  := ArchivoIni.ReadFloat('SaldoCCComp', 'Minimo', 0);
  MaxCCComp                  := ArchivoIni.ReadFloat('SaldoCCComp', 'Maximo', 100000);
  VerificaCambioPrecio       := ArchivoIni.ReadString('Control', 'VerificaCambioPrecio', 'S');
  VerificaCambioPrecioCompra := ArchivoIni.ReadString('Control', 'VerificaCambioPrecioCompra', 'S');
  // ***** Ubicacione de archivos Factura Electronica ...*****************
  ClaveElectronica           := ArchivoIni.ReadString('FacturaEelectronica', 'Clave', '');
  CertificadoElectronico     := ArchivoIni.ReadString('FacturaEelectronica', 'Certificado', '');
  URLWSAA                    := ArchivoIni.ReadString('FacturaEelectronica', 'URLWSAA','https://wsaahomo.afip.gov.ar/ws/services/LoginCms');
  URLWSW                     := ArchivoIni.ReadString('FacturaEelectronica', 'URLWSW','https://wswhomo.afip.gov.ar/wsfev1/service.asmx');
  URLWSW_EX                  := ArchivoIni.ReadString('FacturaEelectronica', 'URLWSW_EX','https://wswhomo.afip.gov.ar/wsfexv1/service.asmx');
  ModoFcElectronica          := ArchivoIni.ReadInteger('FacturaEelectronica', 'Modo',0);//Modo de Prueba.... por defecto
  ControlaNroFiscal          := ArchivoIni.ReadBool('FacturaEelectronica', 'ControlNro', True);
  // **** Opciones de Correo ***********
  DirCorreo                  := ArchivoIni.ReadString('Correo', 'DirCorreo', '');
  NombreCuenta               := ArchivoIni.ReadString('Correo', 'NombreCuenat', '');
  AsuntoCorreo               := ArchivoIni.ReadString('Correo', 'AsuntoCorreo', '');
  NombreServidor             := ArchivoIni.ReadString('Correo', 'NombreServido', '');
  Clave                      := ArchivoIni.ReadString('Correo', 'Clave', '');
  Autotenticacion            := ArchivoIni.ReadString('Correo', 'Autenticacion', 'S');
  Remitente                  := ArchivoIni.ReadString('Correo', 'Remitente', '');
  Puerto                     := ArchivoIni.ReadInteger('Correo', 'puerto', 25);
  SASL                       := ArchivoIni.ReadString('Correo', 'AutenticacionSASL', 'N');
  MetodoSSL                  := ArchivoIni.ReadInteger('Correo','MetodoSSL', 0);
  UsaTLS                     := ArchivoIni.ReadInteger('Correo','UsaTLS', 1);
  ModoSSL                    := ArchivoIni.ReadInteger('Correo', 'Modo', 0);
  //******************************************************************************
  CantidadNegativaPresupuesto:=ArchivoIni.ReadBool('Presupuesto', 'cantidadnegativa', False);

  DMMain_FD.DecRedondeo       := ArchivoIni.ReadInteger('redondeo','decimales', -3);
  PathFreezerCtaCte          := ArchivoIni.ReadString('Freezer','pathCtaCte','c:\gestion\facturas frezadas');
  PathFreezerCtdo            := ArchivoIni.ReadString('Freezer','pathCtdo','c:\gestion\facturas frezadas');
  //**** Control de Transferencias de Stock ********************************************
  SucursalAdmin              := ArchivoIni.ReadInteger('stock', 'SucursalAdmin',-1);
  PathTxStock                := ArchivoIni.ReadString('stock', 'Transferencia','c:\');
  PathTxStockCtral           := ArchivoIni.ReadString('stock', 'TransferenciaCtral','c:\');
  PathAjStock                := ArchivoIni.ReadString('stock', 'AjustesStock','c:\');
  // balanza
  ScannerSerie               := ArchivoIni.ReadString('Scanner', 'Activo', 'N');
  Aux:= ArchivoIni.ReadString('Scanner', 'Puerto', '3');
  if Aux='' then Aux:='1';

  if SucursalPorDefecto<0 then SucursalPorDefecto:=1;


  PuertoCom                  := StrToInt(Aux);
  idBalanza                  := StrToInt(ArchivoIni.ReadString('Scanner', 'Id', '1'));

  Enter_CB                   := (ArchivoIni.ReadString('CodigoBarra', 'Enter', 'N')='S');

  // ***** Opciones de Reportes ************************************************************
  // ****************************************************************************************
  PathFreezerCtaCte          := ArchivoIni.ReadString('Freezer','pathCtaCte','c:\gestion\facturas frezadas');
  PathFreezerCtdo            := ArchivoIni.ReadString('Freezer','pathCtdo','c:\gestion\facturas frezadas');

  GenerarArchivoTXStk        := ArchivoIni.ReadBool('stock', 'GenerarArchivoTX',False);
  GenerarArchivoAjStk        := ArchivoIni.ReadBool('stock', 'GenerarArchivoAJ',False);
  // ***********************************************************************************
  SeguimientoCtroCosto       := ArchivoIni.ReadBool('stock', 'SeguimientoCosto',False);
  // Desencripto la clave

  claveAux:='';
  //if clave<>'' Then
  //for I :=1 to length(Clave) do
  //  begin
  //    ClaveAux:=ClaveAux+Chr(255-Ord(clave[i]));
  //  end;
  //Clave:=ClaveAux;

  // Fin Ini Local **********************************************
  //*************************************************************
  ArchivoIni.Free;
  GeneralIni.Free;
  // Tomo la Impresora por defecto.
  prNomDefault:=Printer.Printers.Strings[Printer.PrinterIndex];
  // si en alguno de los casos uso la impresora por defecto
  // igualo el nro de impresora a la imp. que le corresponde
  if (PrListadoDefecto='S') or (PrListadoDefecto='s') Then
    PrNomListados:=PrNomDefault;
  if (PrCpbteDefecto='S') or (PrCpbteDefecto='s') Then
    PrNomCpbte:=PrNomDefault;

  PrCpbte     :=Printer.Printers.IndexOf(PrNomCpbte);
  PrListados  :=Printer.Printers.IndexOf(PrNomListados);
  PrDefault   :=Printer.Printers.IndexOf(PrNomDefault);

  //  ArchivoIni:=NIL;
  QBrowse2.sql.Clear;
  QBrowse2.SQL.Add('select min('+''+campo+''+') from '+''+tabla+''+' where '+''+campo+''+'>'+''+DatoNew+'');

  if (DMMain_FD.CajaSeleccionada<>null) Then
    CajaPorDefecto       := DMMain_FD.CajaSeleccionada;

  if FSearch<>nil then
    FSearch.Free;
end;

procedure TFormABMBase.FormDestroy(Sender: TObject);
begin
  FormABMBase := nil;
 // ArrayCds.Clear;
 // ArrayDsp.Clear;
end;


procedure TFormABMBase.SearchExecute(Sender: TObject);
begin
  SearchInDet;
end;

procedure TFormABMBase.SearchAssignGrid(AGrid: TDBGrid);
begin
  FSGrid    :=  AGrid;
end;

function  TFormABMBase.SearchInDet : Boolean;
var
  AControl: TControl;         ADataSet: TClientDataSet;
  x: byte;    DSSearch: TDataSource;    ACol: TDBColumnItem;
begin
  if FSGrid <> nil then
    begin              
      if FSGrid.Parent <> nil then
        AControl                    :=  FSGrid.Parent
      else
        AControl                    :=  pnPrincipal;

      if FSearch = nil then
        begin
          ADataSet                      :=  (FSGrid.DataSource.DataSet as TClientDataSet);

          DSSearch                      :=  TDataSource.Create(Self);
          DSSearch.DataSet              :=  ADataSet;

          FSearch                       :=  TDBAdvSearchEdit.Create(Self);
          FSearch.Name                  :=  'FSearch';

          FSearch.Parent                :=  (AControl as TWinControl);
          FSearch.ListSource            :=  DSSearch;

          FSearch.Align                 :=  alTop;
          FSearch.Margins.Top           :=  2;
          FSearch.Margins.Bottom        :=  2;
          FSearch.Margins.Right         :=  Ceil( AControl.Width * 0.2);
          FSearch.Margins.Left          :=  2;
          FSearch.AlignWithMargins      :=  True;
          FSearch.DropDownWidth         :=  Ceil (AControl.Width * 0.4);
          FSearch.SearchButton.Caption  :=  'X';
          FSearch.CategoryButton.Visible:=  False;
          FSearch.OnEnter               :=  AdvSearchEnter;
          FSearch.OnExit                :=  AdvSearchExit;
          FSearch.OnSelect              :=  AdvSearchSelect;
          FSearch.OnSearchButtonClick   :=  AdvSearchButtonClick;
          FSearch.OnKeyDown             :=  AdvSearchKeyDown;
          FSearch.Columns.Clear;
          for x := 0 to 2 do
            begin
              ACol  := (FSearch.Columns.Add as TDBColumnItem);
              case x of
                0:  begin
                      ACol.DataField  :=  'ID';
                      ACol.Visible    :=  False;
                    end;
                1:  begin
                      ACol.DataField  :=  'CODIGOARTICULO';
                      ACol.Width      :=  Ceil (FSearch.DropDownWidth * 0.3);
                    end;
                2:  begin
                      ACol.DataField  :=  'DETALLE';
                      ACol.Width      :=  Ceil (FSearch.DropDownWidth * 0.68);
                    end;
              end;
            end;

          FSearch.FilterCondition.AllColumns  :=  True;
          FSearch.FilterCondition.Column      :=  2;

        end;

      FSearch.Show;
      FSearch.SelectAll;
      Result  :=  True;
      FSearch.SetFocus;
    end;
end;


procedure TFormABMBase.AdvSearchEnter(Sender: TObject);
begin
  (Sender as TDBAdvSearchEdit).SelectAll;
end;

procedure TFormABMBase.AdvSearchExit(Sender: TObject);
begin
  (Sender as TDBAdvSearchEdit).Hide;
  if (FSGrid <> nil)  and
     (FSGrid.Visible) and 
     (FSGrid.Enabled) 
  then
    FSGrid.SetFocus;
 // (Sender as TDBAdvSearchEdit).Free;
end;

procedure TFormABMBase.AdvSearchSelect(Sender: TObject);
var
  ACol: TDBColumnItem; ASearch: TDBAdvSearchEdit;
begin
  ASearch :=  (Sender as TDBAdvSearchEdit);
  if ASearch.Columns.Count > 0 then
    begin
      ACol  :=  (ASearch.Columns.Items[0] as TDBColumnItem);
      ASearch.ListSource.DataSet.Locate(ACol.DataField, ASearch.SearchList.SelectedItem.Captions[0],[]);
    end;
  AdvSearchExit(ASearch);
end;

procedure TFormABMBase.AdvSearchKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_ESCAPE then
    AdvSearchExit(Sender as TDBAdvSearchEdit);

end;

procedure TFormABMBase.AdvSearchButtonClick(Sender: TObject);
begin
  (Sender as TDBAdvSearchEdit).Hide;
end;

procedure TFormABMBase.DSBaseStateChange(Sender: TObject);
begin
  Agregar.Enabled     := DSBase.State in [dsBrowse];
  Cancelar.Enabled    := DSBase.State in [dsEdit, dsInsert];
  Confirma.Enabled    := DSBase.State in [dsEdit, dsInsert];
  Buscar.Enabled      := DSBase.State in [dsBrowse];
  pnPrincipal.Enabled := DSBase.State <> dsBrowse;
  Borrar.Enabled      := (DSBase.State in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty));
  Modificar.Enabled   := (DSBase.State in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty));

  Prev.Enabled :=(DSBase.State in [dsBrowse]);
  Next.Enabled :=(DSBase.State in [dsBrowse]);
  if DSBase.DataSet.IsEmpty then
    begin
      Prev.Enabled:=False;
      next.Enabled:=False;
    end;
 // if (btNuevo.Visible=True) and (DSBase.State in [dsBrowse]) then
 //   btNuevo.SetFocus;

  
  Search.Enabled               := (FSGrid <> nil) and (DSBase.DataSet.State <> dsInactive) and (Not(DSBase.DataSet.IsEmpty));
end;

procedure TFormABMBase.AgregarExecute(Sender: TObject);
begin
 // if btNuevo.Visible then
  FueModificado:=False;
  DSBase.DataSet.Insert;
end;

procedure TFormABMBase.BorrarExecute(Sender: TObject);
begin
//  if btBorrar.Visible then
    begin
      if not (DSBase.DataSet.IsEmpty) then
      begin
        if MessageDlg('Está por hacer una operación de borrado.. Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes Then
          begin
            DSBase.DataSet.Delete;
            if SinBDE=1 Then
                CDSApplyUpdatesFD(DMMain_FD.fdcGestion, ArrayCds, ArrayDsp, OnApply)
             else
              if SinBDE=2 Then
                CDSApplyUpdatesFD(DMMain_FD.fdcGestion, ArrayCds, ArrayDsp, OnApply);

            Borrar.Enabled := False;
            Modificar.Enabled := False;
          end;
          //GrabarDatos(DatosPrincipales.Database);
      end
      else
        ShowMessage('No hay datos para borrar');
      if (btNuevo.Enabled) and (btNuevo.Visible=True) Then
      btNuevo.Setfocus;
    end;
end;

procedure TFormABMBase.ModificarExecute(Sender: TObject);
begin
  if btModificar.Visible then
    begin
      if not (DSBase.DataSet.IsEmpty) then
      begin
        DSBase.DataSet.Edit;
        FueModificado:=True;
      end
      else
        ShowMessage('No hay datos para modificar');
    end;

end;

procedure TFormABMBase.ConfirmaExecute(Sender: TObject);
begin
 // if btConfirma.Visible then
    begin
      try
        if DSBase.DataSet.State <> dsBrowse then
          DSBase.DataSet.Post;
        if SinBDE=0 then
              CDSApplyUpdatesFD(DMMain_FD.fdcGestion, ArrayCds, ArrayDsp, OnApply)
        else
          if SinBDE=1 then
              CDSApplyUpdatesFD(DMMain_FD.fdcGestion, ArrayCds, ArrayDsp, OnApply)
          else
            if SinBDE=2 then
              CDSApplyUpdatesFD(DMMain_FD.fdcGestion, ArrayCds, ArrayDsp, OnApply);

        if (btNuevo.Enabled) and (btNuevo.Visible) and (Self.Visible) then
          btNuevo.SetFocus;
        Borrar.Enabled    := False;
        Modificar.Enabled := False;
      except
        on e: exception do
          begin
            DMMain_FD.LogFileFD(1,1,'Error de CDS..:'+e.Message,'ABM');
            ShowMessage(e.message);
          end;
      end;
    end;
    Ready := True;
   //  GrabarDatos(DatosPrincipales.Database );
end;

procedure TFormABMBase.CancelarExecute(Sender: TObject);
begin
  if btCancelar.Visible then
    begin
      DSBase.DataSet.Cancel;
      //DSBase.DataSet.Modified Cancel;
      CDSCancelUpdates(ArrayCds);
      Borrar.Enabled     := False;
      Modificar.Enabled  := False;
    //  btBorrar.Enabled   := False;
    //  btModificar.Enabled:= False;
      if (btNuevo.Enabled) and (btNuevo.Visible) then
        btNuevo.SetFocus;
  end;
  ModalResult := mrCancel;
  //CancelarCambios;
end;


procedure TFormABMBase.BuscarExecute(Sender: TObject);
begin
  // rutina de busqueda
end;

procedure TFormABMBase.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and
    (not (ActiveControl is Tbutton)) and
    (not (ActiveControl is TFrame)) and
    (not (ActiveControl is TDBMemo)) and
    (not (ActiveControl is TDBGrid))
    then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
  if Key = #27 then
    if btCancelar.Enabled Then
      Cancelar.Execute;

  if (Key in ['0'..'9','a'..'z','A'..'Z','-','.']) and
   (FSGrid <> nil) and
   (ActiveControl = FSGrid) and
   (DSBase.State = dsBrowse) and
   (Search.Enabled)
  then
    begin
      Search.Execute;
      if FSearch <> nil then
        begin
          FSearch.Text      :=  Key;
          FSearch.SelStart  :=  1;
        end;

    end;
end;

procedure TFormABMBase.SalirExecute(Sender: TObject);
begin
  if btSalir.Visible then
    begin
      if DSBase.State in [dsEdit,dsInsert] Then
        begin
          if MessageDlg('Cierra la ventana y anula los cambios?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
           Close;
        end
      else
        Close;
    end;
end;

procedure TFormABMBase.PrevExecute(Sender: TObject);
begin
  if Pr.Visible then
    begin
      if (DatoNew<>'') and (Not(DSBase.DataSet.IsEmpty)) Then
        begin
          DatoOld:=DatoNew;
          QBrowse2.Close;
          QBrowse2.SQL.Clear;
          QBrowse2.SQL.Add('select max('+''+campo+''+') from '+''+tabla+''+' where '+''+campo+''+' < '+''''+DatoNew+''''+''+Condicion+'');
          QBrowse2.Open;
          if QBrowse2.Fields[0].AsString='' Then
            begin
              QBrowse2.Close;
              QBrowse2.SQL.Clear;
              QBrowse2.SQL.Add('select max('+''+campo+''+') from '+''+tabla+''+' where '+''+campo+''+' > '+''''+DatoOld+''''+''+Condicion+'');
              QBrowse2.Open;
            end;
          DatoNew:=QBrowse2.Fields[0].AsString;
          if DatoNew='' Then  DatoNew:=DatoOld;
          QBrowse2.Close;
          if DatoNew<>'' Then
          Recuperar.Execute;
        end;
    end;
end;


procedure TFormABMBase.NextExecute(Sender: TObject);
begin
  if Ne.Visible then
    begin
      if (DatoNew<>'') and (Not(DSBase.DataSet.IsEmpty)) Then
        begin
          DatoOld:=DatoNew;
          QBrowse2.Close;
          QBrowse2.SQL.Clear;
          QBrowse2.SQL.Add('select min('+''+campo+''+') from '+''+tabla+''+' where '+''+campo+''+' > '+''''+DatoNew+''''+''+Condicion+'');
          QBrowse2.Open;
          if QBrowse2.Fields[0].AsString='' Then
            begin
              QBrowse2.Close;
              QBrowse2.SQL.Clear;
              QBrowse2.SQL.Add('select min('+''+campo+''+') from '+''+tabla+''+' where '+''+campo+''+' < '+''''+DatoOld+''''+''+Condicion+'');
              QBrowse2.Open;
            end;
          DatoNew:=QBrowse2.Fields[0].AsString;
          if DatoNew='' Then DatoNew:=DatoOld;
          QBrowse2.Close;
          Recuperar.Execute;
        end;
    end;
end;

procedure TFormABMBase.RecuperarExecute(Sender: TObject);
begin
  //Aca va el codigo segun el Form

end;

procedure TFormABMBase.FormShow(Sender: TObject);
begin
  if VentanaEfecto Then
    begin
      AnimateWindow(Handle,150,aw_activate or AW_SLIDE or AW_HOR_POSITIVE);
      RedrawWindow(Handle,nil,0,RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN);
    end;
  if (btNuevo.Visible=True) and (btNuevo.Enabled=True) Then
    btNuevo.SetFocus;
  FueModificado:=False;
 // BringToFront;
  DBStatusLabel1.Visible:=btNuevo.Visible;
end;

procedure TFormABMBase.N501Click(Sender: TObject);
begin
  ScaleBy(50,100);
end;

procedure TFormABMBase.N751Click(Sender: TObject);
begin
  ScaleBy(75,100);
end;

procedure TFormABMBase.N1001Click(Sender: TObject);
begin
  ScaleBy(100,100);
end;

end.



