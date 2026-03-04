unit UGoogleMap;

interface

uses
  IniFiles,shellapi,
  Winapi.Windows,
  System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Forms, Vcl.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  System.ImageList, Vcl.ImgList, Vcl.Controls, IBGenerator,
  Vcl.Menus, Data.DB, Datasnap.Provider, Datasnap.DBClient, System.Classes,
  System.Actions, Vcl.ActnList, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.StdCtrls, JvExControls, JvDBLookup,
  VCL.TMSFNCTypes,
  VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCMapsCommonTypes,
  VCL.TMSFNCCustomControl,
  VCL.TMSFNCWebBrowser,
  VCL.TMSFNCMaps,
  VCL.TMSFNCCustomComponent,
  VCL.TMSFNCCloudBase,
  VCL.TMSFNCGeocoding, JvComponentBase, JvFormPlacement, JvAppStorage,
  JvAppIniStorage;

type

  TFormGoogleMap = class(TForm)
    pnCabecera: TPanel;
    edtLat: TEdit;
    edtLng: TEdit;
    edLugar: TEdit;
    btClientes: TButton;
    lb1: TLabel;
    lb2: TLabel;
    sbEstadoPie: TStatusBar;
    pbClientes: TProgressBar;
    lb3: TLabel;
    ActionList: TActionList;
    CargarMapa: TAction;
    UbicarLocalidad: TAction;
    UbicarCoord: TAction;
    QClientes: TFDQuery;
    CDSClientes: TClientDataSet;
    DSPClientes: TDataSetProvider;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesLATITUD: TStringField;
    CDSClientesLONGITUD: TStringField;
    DSBuscaCategorias: TDataSource;
    CDSBuscaCategorias: TClientDataSet;
    DSPBuscaCategorias: TDataSetProvider;
    DSBuscaZonas: TDataSource;
    CDSBuscaZonas: TClientDataSet;
    CDSBuscaZonasID_ZONA: TIntegerField;
    CDSBuscaZonasDETALLE: TStringField;
    DSPBuscaZonas: TDataSetProvider;
    DSPBuscaVendedores: TDataSetProvider;
    CDSBuscaVendedores: TClientDataSet;
    CDSBuscaVendedoresCODIGO: TStringField;
    CDSBuscaVendedoresNOMBRE: TStringField;
    DSBuscaVendedores: TDataSource;
    QLstClientes: TFDQuery;
    QLstClientesCODIGO: TStringField;
    QLstClientesNOMBRE: TStringField;
    QLstClientesRAZON_SOCIAL: TStringField;
    QLstClientesDIRECCION_COMERCIAL: TStringField;
    QLstClientesTELEFONO_COMERCIAL_1: TStringField;
    QLstClientesTELEFONO_COMERCIAL_2: TStringField;
    QLstClientesNRO_DE_CUIT: TStringField;
    QLstClientesCORREOELECTRONICO: TStringField;
    QLstClientesCONTACTO: TStringField;
    QLstClientesTELEFONO_CONTACTO: TStringField;
    QLstClientesOBSERVACIONES: TMemoField;
    QLstClientesLOCALIDAD: TStringField;
    QLstClientesVENDEDOR: TStringField;
    QLstClientesZONA: TIntegerField;
    QLstClientesSUCURSAL: TIntegerField;
    QLstClientesCPOSTAL: TStringField;
    QLstClientesMUESTRAVENDEDOR: TStringField;
    QLstClientesMUESTRAZONA: TStringField;
    QLstClientesMUESTRACOBRADOR: TStringField;
    QLstClientesMUESTRASUCURSAL: TStringField;
    QLstClientesMUESTRAINSCRIPCION: TStringField;
    QLstClientesTELEDISCADO: TStringField;
    DSPLstClientes: TDataSetProvider;
    CDSLstClientes: TClientDataSet;
    CDSLstClientesCODIGO: TStringField;
    CDSLstClientesNOMBRE: TStringField;
    CDSLstClientesRAZON_SOCIAL: TStringField;
    CDSLstClientesDIRECCION_COMERCIAL: TStringField;
    CDSLstClientesTELEFONO_COMERCIAL_1: TStringField;
    CDSLstClientesTELEFONO_COMERCIAL_2: TStringField;
    CDSLstClientesSUCURSAL: TIntegerField;
    CDSLstClientesNRO_DE_CUIT: TStringField;
    CDSLstClientesZONA: TIntegerField;
    CDSLstClientesVENDEDOR: TStringField;
    CDSLstClientesCORREOELECTRONICO: TStringField;
    CDSLstClientesCONTACTO: TStringField;
    CDSLstClientesTELEFONO_CONTACTO: TStringField;
    CDSLstClientesOBSERVACIONES: TMemoField;
    CDSLstClientesCPOSTAL: TStringField;
    CDSLstClientesLOCALIDAD: TStringField;
    CDSLstClientesMUESTRAVENDEDOR: TStringField;
    CDSLstClientesMUESTRASUCURSAL: TStringField;
    CDSLstClientesMUESTRAZONA: TStringField;
    CDSLstClientesMUESTRAINSCRIPCION: TStringField;
    CDSLstClientesMUESTRACOBRADOR: TStringField;
    CDSLstClientesTELEDISCADO: TStringField;
    DSLstClientes: TDataSource;
    Panel2: TPanel;
    btSalir: TBitBtn;
    dbcSucursal: TJvDBLookupCombo;
    dbcVendedor: TJvDBLookupCombo;
    dbcZona: TJvDBLookupCombo;
    dbcCategorias: TJvDBLookupCombo;
    rgEstados: TRadioGroup;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    DSBuscaSucursal: TDataSource;
    CDSBuscaCategoriasID: TIntegerField;
    CDSBuscaCategoriasDETALLE: TStringField;
    btMapa: TButton;
    btCancelar: TBitBtn;
    PopupMenu1: TPopupMenu;
    CrearZona1: TMenuItem;
    Label2: TLabel;
    Borrar1: TMenuItem;
    cbColorPoligono: TColorBox;
    btCargar: TButton;
    CDSLstZonas: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DSLstZonas: TDataSource;
    QZonasCoordenadas: TFDQuery;
    QZonasCoordenadasID: TIntegerField;
    QZonasCoordenadasID_ZONA: TIntegerField;
    QZonasCoordenadasPOSICION: TStringField;
    QZonasCoordenadasCOLOR: TIntegerField;
    CDSZonasCoordenadas: TClientDataSet;
    DSPZonasCoordenadas: TDataSetProvider;
    CDSZonasCoordenadasID: TIntegerField;
    CDSZonasCoordenadasID_ZONA: TIntegerField;
    CDSZonasCoordenadasPOSICION: TStringField;
    CDSZonasCoordenadasCOLOR: TIntegerField;
    ibgZona: TIBGenerator;
    QBorrarZonas: TFDQuery;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField2: TStringField;
    IntegerField4: TIntegerField;
    QZonasCoordenadasDETALLE: TStringField;
    CDSZonasCoordenadasDETALLE: TStringField;
    edDetalle: TEdit;
    btGuardar: TButton;
    btModificaZona: TBitBtn;
    btBorrarZona: TBitBtn;
    btn1: TBitBtn;
    ImageList1: TImageList;
    ActionList1: TActionList;
    Editar: TAction;
    Borrar: TAction;
    Crear: TAction;
    SpeedButton1: TSpeedButton;
    Guardar: TAction;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesTELEFONO_COMERCIAL_1: TStringField;
    CDSClientesTELEFONO_COMERCIAL_2: TStringField;
    CDSClientesCPOSTAL: TStringField;
    CDSClientesMUESTRASUCURSAL: TStringField;
    CDSClientesSUCURSAL: TIntegerField;
    CDSClientesMUESTRAZONA: TStringField;
    CDSClientesNRO_DE_CUIT: TStringField;
    CDSClientesMUESTRAINSCRIPCION: TStringField;
    CDSClientesZONA: TIntegerField;
    CDSClientesVENDEDOR: TStringField;
    CDSClientesCORREOELECTRONICO: TStringField;
    CDSClientesCONTACTO: TStringField;
    CDSClientesTELEFONO_CONTACTO: TStringField;
    CDSClientesOBSERVACIONES: TMemoField;
    CDSClientesMUESTRAVENDEDOR: TStringField;
    CDSClientesMUESTRACOBRADOR: TStringField;
    CDSClientesTELEDISCADO: TStringField;
    CDSClientesCATEGORIA: TIntegerField;
    CDSClientesLOCALIDAD_1: TStringField;
    CDSClientesPROVINCIA: TStringField;
    QVentasAnuales: TFDQuery;
    dbcLocalidad: TJvDBLookupCombo;
    DSPLocalidades: TDataSetProvider;
    CDSLocalidades: TClientDataSet;
    DSLocalidades: TDataSource;
    CDSLocalidadesID_POSTAL: TIntegerField;
    CDSLocalidadesDETALLE_POSTAL: TStringField;
    edAPIKey: TEdit;
    Label4: TLabel;
    Button1: TButton;
    MapServiceCombo: TComboBox;
    TMSFNCGeocoding1: TTMSFNCGeocoding;
    edAdress: TEdit;
    TMSFNCMaps1: TTMSFNCMaps;
    JvFormStorage1: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
//    procedure btnAddMarkerClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btClientesClick(Sender: TObject);
 //   procedure CargarMapaExecute(Sender: TObject);
//    procedure UbicarLocalidadExecute(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure CrearZona1Click(Sender: TObject);
    procedure BtcancelarPolyClick(Sender: TObject);
    procedure btCargarClick(Sender: TObject);
    procedure CDSZonasCoordenadasNewRecord(DataSet: TDataSet);
    procedure CrearExecute(Sender: TObject);
    procedure edAPIKeyChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MapServiceComboChange(Sender: TObject);
    procedure TMSFNCGeocoding1GetGeocoding(Sender: TObject;
      const ARequest: TTMSFNCGeocodingRequest;
      const ARequestResult: TTMSFNCCloudBaseRequestResult);
    procedure TMSFNCMaps1MapClick(Sender: TObject;
      AEventData: TTMSFNCMapsEventData);
  private
    FLat:Double;
    FLng:Double;
    { Private declarations }
  public
    { Public declarations }
    Stop : Boolean;
    PoligonoIndex :Integer;
    ArchivoIni:TIniFile;
  published
    property Longitu:Double read FLat write FLat ;
    property Latitud:Double read FLng write FLng ;
  end;

var
  FormGoogleMap: TFormGoogleMap;

  MarkerLat,
  MarkerLng : Double;

implementation

uses UDMain_FD, DMBuscadoresForm;
{$R *.dfm}

function EjecutarShell(const Archivo, Params: string; Mostrar: Word; esperar: boolean): Boolean;
var
  Info: TShellExecuteInfo;
begin
  FillChar(Info, SizeOf(Info), 0);
  Info.cbSize := SizeOf(Info);
  Info.fMask := SEE_MASK_FLAG_NO_UI or SEE_MASK_FLAG_DDEWAIT or SEE_MASK_NOCLOSEPROCESS;
  Info.lpVerb := PChar('Open');
  Info.lpFile := PChar(Archivo);
  Info.lpParameters := PChar(Params);
  //Info.lpDirectory := PChar(ExtractFilePath(Archivo));
  Info.nShow := Mostrar;
  Result := ShellExecuteEx(@Info);
  if not Result then exit;
  if esperar then WaitForSingleObject(Info.hProcess, INFINITE);
  CloseHandle(Info.hProcess);
end;

procedure TFormGoogleMap.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //*************************************************************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'GoogleMap.ini');
  ArchivoIni.WriteString('Lugar', 'Lugar', edLugar.Text);
  //ArchivoIni.WriteString('ApiKey', 'ApiKey', fncMapa.APIKey);

  ArchivoIni.Free;
   //*************************************************************

  CDSBuscaCategorias.Close;
  CDSBuscaZonas.Close;
  CDSBuscaVendedores.Close;
  CDSBuscaSucursal.Close;
  CDSLstZonas.Close;
  CDSLocalidades.Close;
  Action:=caFree;
end;

procedure TFormGoogleMap.FormCreate(Sender: TObject);
begin
  AutoSize       :=False;
  CDSBuscaCategorias.Open;
  CDSBuscaZonas.Open;
  CDSBuscaVendedores.Open;
  CDSBuscaSucursal.Open;
  CDSLstZonas.Open;
  CDSLocalidades.Open;
  MapServiceComboChange(Self);
  if edAPIKey.Text <> '' then
    TMSFNCMaps1.APIKey := DMMain_FD.GetApiKeyGoogle;
  TMSFNCGeocoding1.APIKey:= edAPIKey.Text;
  // dato sugerido en un correo del Servicio Tecnico
  //SetLength(TrueBoolStrs, 1);
  //TrueBoolStrs[0] := 'S';

 end;

procedure TFormGoogleMap.FormDestroy(Sender: TObject);
begin
  FormGoogleMap:=nil;
end;

procedure TFormGoogleMap.FormShow(Sender: TObject);
begin
  //TMSFNCGoogleMaps1.Initialize;
  TMSFNCMaps1.APIKey := edAPIKey.Text;
  TMSFNCMaps1.DeInitialize;
  TMSFNCMaps1.Initialize;
  TMSFNCMaps1.Service:=msGoogleMaps;
end;

procedure TFormGoogleMap.MapServiceComboChange(Sender: TObject);
begin
  case MapServiceCombo.ItemIndex of
    0: TMSFNCMaps1.Service := msGoogleMaps;
    1: TMSFNCMaps1.Service := msHere;
    2: TMSFNCMaps1.Service := msBingMaps;
    3: TMSFNCMaps1.Service := msAzureMaps;
    4: TMSFNCMaps1.Service := msMapBox;
    5: TMSFNCMaps1.Service := msTomTom;
    6: TMSFNCMaps1.Service := msOpenLayers;
    7: TMSFNCMaps1.Service := msMapKit;
   end;

 TMSFNCMaps1.ReInitialize;
end;

procedure TFormGoogleMap.TMSFNCGeocoding1GetGeocoding(Sender: TObject;
  const ARequest: TTMSFNCGeocodingRequest;
  const ARequestResult: TTMSFNCCloudBaseRequestResult);
var
 I: Integer;
 it: TTMSFNCGeocodingItem;
 FStartAddress, FEndAddress: TTMSFNCMapsCoordinateRec;
 f:TTMSFNCMapsMarker;

begin
 for I := 0 to ARequest.Items.Count - 1 do
   begin
     it := ARequest.Items[I];
     if ARequest.ID = 'origin' then
       begin
         FStartAddress := it.Coordinate.ToRec;
         TMSFNCMaps1.SetCenterCoordinate(FStartAddress);                   //'http://myIconURL.png'
         TMSFNCMaps1.AddMarker(FStartAddress,CDSClientesNOMBRE.AsString);
       end;
     if ARequest.ID = 'destination' then
       begin
         FEndAddress := it.Coordinate.ToRec;
         TMSFNCMaps1.AddMarker(FEndAddress);
       end;
   end;
end;




procedure TFormGoogleMap.TMSFNCMaps1MapClick(Sender: TObject;
  AEventData: TTMSFNCMapsEventData);
var m:TTMSFNCMapsMarker;
  begin
  edtLng.Text := AEventData.Coordinate.Longitude.ToString;
  edtLat.Text := AEventData.Coordinate.Latitude.ToString;

  TMSFNCGeocoding1.APIKey := edAPIKey.Text;
  TMSFNCGeocoding1.GetReverseGeocoding(AEventData.Coordinate.ToRec,
    procedure(const ARequest: TTMSFNCGeocodingRequest;
        const ARequestResult: TTMSFNCCloudBaseRequestResult)
    var
      I: Integer;
    begin
      if ARequest.Items.Count > 0 then
      begin
       {m :=  TTMSFNCMapsMarkers}( TMSFNCMaps1.AddMarker(ARequest.Items[0].Coordinate.ToRec, ARequest.Items[I].Address));
       //m.draggable:=true;
       edAdress.Text := ARequest.Items[I].Address;
      end
      else
        ShowMessage('Address Not Found');
    end);
end;

procedure TFormGoogleMap.BtcancelarPolyClick(Sender: TObject);
begin
 // lbCoordenadas.Clear;
 // pnCrearZona.Visible:=False;
end;

procedure TFormGoogleMap.btCancelarClick(Sender: TObject);
begin
  Stop:=True;
 // TMSFNCMaps1.ClearMarkers;
end;

procedure TFormGoogleMap.btClientesClick(Sender: TObject);
var

  sLat,
  sLng,Otro,Nombre,textoBuscar : String;
  Contador:Integer;

begin
  Stop:=False;
  TMSFNCMaps1.BeginUpdate;
  TMSFNCMaps1.ClearMarkers;
  TMSFNCMaps1.EndUpdate;

  CDSClientes.Close;
  CDSClientes.Params.ParamByName('id_Localidad').Value:= dbclocalidad.KeyValue;

  CDSClientes.Params.ParamByName('sucursal').Value :=dbcSucursal.KeyValue;
  CDSClientes.Params.ParamByName('vendedor').Value :=dbcVendedor.KeyValue;
  CDSClientes.Params.ParamByName('zona').Value     :=dbcZona.KeyValue;
  CDSClientes.Params.ParamByName('categoria').Value:=dbcCategorias.KeyValue;

  case rgEstados.ItemIndex of
    0:CDSClientes.Params.ParamByName('activo').Value :='*';
    1:CDSClientes.Params.ParamByName('activo').Value :='S';
    2:CDSClientes.Params.ParamByName('activo').Value :='N';
    3:CDSClientes.Params.ParamByName('activo').Value :='G';
  end;

  CDSClientes.Open;
  pbClientes.Max:=0;
  if (CDSClientes.RecordCount-1>0) then
    pbClientes.Max:=CDSClientes.RecordCount-1;

  pbClientes.Min:=0;
  CDSClientes.First;
  while Not(CDSClientes.Eof) and (Stop=False) do
    begin
      Contador:=Contador+1;
      pbClientes.Position:= pbClientes.Position+1;
      sbEstadoPie.Panels[0].Text:='Procesando Clientes ..'+IntToStr(CDSClientes.RecordCount)+'/'+IntToStr(pbClientes.Position);
      if  (CDSClientesDIRECCION_COMERCIAL.AsString<>'') then
        begin
          if CDSClientesDIRECCION_COMERCIAL.AsString<>'' then
            Otro :=  CDSClientesDIRECCION_COMERCIAL.Value
          else
            Otro:='SD';
          sbEstadoPie.Panels[1].Text:= CDSClientesNOMBRE.Value+'-'+ CDSClientesDIRECCION_COMERCIAL.Value;
          Application.ProcessMessages;
          Nombre:=Trim(CDSClientesNOMBRE.Value);
          Nombre:=StringReplace(Nombre,'-',' ',[rfReplaceAll]);
          Nombre:=StringReplace(Nombre,'''',' ',[rfReplaceAll]);

          TextoBuscar:=( CDSClientesPROVINCIA.Value+','+CDSClientesLOCALIDAD.Value+','+CDSClientesDIRECCION_COMERCIAL.Value );

          Contador:=0;

          TMSFNCMaps1.BeginUpdate;
          TMSFNCGeocoding1.GetGeocoding(CDSClientesDIRECCION_COMERCIAL.AsString+','+CDSClientesLOCALIDAD.AsString, nil, 'origin');
          TMSFNCMaps1.EndUpdate;

        end;
      Application.ProcessMessages;
      Sleep(100);
//      if Contador>10 then
//        begin
//          Contador:=0;
//          Sleep(500);
//        end;
      CDSClientes.Next;
    end;
//  Win.execScript('GoogleMap.Actualizar()', 'JavaScript');
    sbEstadoPie.Panels[0].Text:='';
    pbClientes.Position :=0;

end;




procedure TFormGoogleMap.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFormGoogleMap.Button1Click(Sender: TObject);
begin
  //ShellExecute(0,'OPEN','Wordpad.exe', Nil, Nil, SW_SHOW);
 // WinExec(PChar('notepad.exe'),SW_SHOWNORMAL);
 EjecutarShell('C:\Proyectos Delphi\Ejemplo Google Map Directions\demo', '', SW_SHOWNORMAL, fALSE);
end;

procedure TFormGoogleMap.btCargarClick(Sender: TObject);
var Lista:TStringList;
I:Integer;

begin


  CDSZonasCoordenadas.Close;

  CDSZonasCoordenadas.Open;
  CDSZonasCoordenadas.First;
  while Not(CDSZonasCoordenadas.Eof) do
    begin

      CDSZonasCoordenadas.Next;
    end;
    CDSZonasCoordenadas.Close;

end;

procedure TFormGoogleMap.CDSZonasCoordenadasNewRecord(DataSet: TDataSet);
begin
  CDSZonasCoordenadasID.Value:=ibgZona.IncrementFD(1);
end;

procedure TFormGoogleMap.CrearExecute(Sender: TObject);
begin
  //lbCoordenadas.Clear;
  //pnCrearZona.visible:=True;
end;

procedure TFormGoogleMap.CrearZona1Click(Sender: TObject);
begin
  //pnCrearZona.Visible:=True;
end;


procedure TFormGoogleMap.edAPIKeyChange(Sender: TObject);
begin
 if edAPIKey.Text <> '' then
    TMSFNCMaps1.APIKey := edAPIKey.Text; // TMSFNCGoogleMaps1.Initialize;
 // TMSFNCGoogleMaps1.BeginUpdate;
//
//  TMSFNCGoogleMaps1.EndUpdate;
end;

end.
