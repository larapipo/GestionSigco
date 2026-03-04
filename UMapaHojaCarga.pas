unit UMapaHojaCarga;

interface
 {$D+}
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomControl,
  VCL.TMSFNCWebBrowser, VCL.TMSFNCMaps, VCL.TMSFNCGoogleMaps, Vcl.ExtCtrls,
  VCL.TMSFNCCustomComponent, VCL.TMSFNCCloudBase, VCL.TMSFNCGeocoding,
  VCL.TMSFNCDirections, Vcl.StdCtrls, VCL.TMSFNCMapsCommonTypes, AdvUtil,
  Data.DB, Vcl.Grids, AdvObj, BaseGrid, AdvGrid,System.Generics.Collections,
  Vcl.Buttons,Vcl.Printers, Vcl.ActnMan, Vcl.ActnColorMaps;


type
  TDireccionObj = class
  public
    Id       : Integer;
    Cliente  : string;
    Direccion: string;
    Lat      : Double;
    Lng      : Double;
  end;

type
  TFormMapaHojaCarga = class(TForm)
    pnCabecera: TPanel;
    pnPie: TPanel;
    TMSFNCMaps1: TTMSFNCMaps;
    pnMapa: TPanel;
    TMSFNCDirections1: TTMSFNCDirections;
    btCargarRutas: TButton;
    BitBtn1: TBitBtn;
    XPColorMap1: TXPColorMap;   // 🚩 agregado
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TMSFNCDirections1GetDirections(Sender: TObject;
      const ARequest: TTMSFNCDirectionsRequest;
      const ARequestResult: TTMSFNCCloudBaseRequestResult);
    procedure TMSFNCMaps1MapInitialized(Sender: TObject);
    procedure TMSFNCDirections1GetDirectionsResult(Sender: TObject;
      const AResult: TTMSFNCDirectionsRequest);
    procedure btCargarRutasClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TMSFNCMaps1CaptureScreenShot(Sender: TObject;
      AScreenShot: TTMSFNCBitmap);

  private
    FLstDirecciones: TStringList;
    procedure CargarRuta;
    procedure CargarMarcadores;
  public
    //
  published
    property LstDirecciones: TStringList read FLstDirecciones write FLstDirecciones;// SetListaDirecciones;
  end;

type
  TSegment = record
    A, B: TTMSFNCMapsCoordinate;
  end;

var
  FSegments: TArray<TSegment>;
  FSegIndex: Integer;

var
  FormMapaHojaCarga: TFormMapaHojaCarga;

implementation

{$R *.dfm}
uses UDMain_FD;


procedure TFormMapaHojaCarga.BitBtn1Click(Sender: TObject);
var
  bmp: TBitmap;
begin
  bmp := TBitmap.Create;
  //TMSFNCMaps1.Savetoimage
  try
    //TMSFNCMaps1.SaveToImage(bmp);  // captura el mapa renderizado
    Printer.BeginDoc;
    Printer.Canvas.StretchDraw(
      Rect(0, 0, Printer.PageWidth, Printer.PageHeight),
      bmp
    );
    Printer.EndDoc;
  finally
    bmp.Free;
  end;
end;



procedure TFormMapaHojaCarga.btCargarRutasClick(Sender: TObject);
begin
  CargarRuta;
end;

procedure TFormMapaHojaCarga.CargarMarcadores;
var
  I  : Integer;
  Obj: TDireccionObj;
  C  : TTMSFNCMapsCoordinateRec;
  Marker: TTMSFNCMapsMarker;
begin
  if (FLstDirecciones = nil) or (FLstDirecciones.Count = 0) then
    Exit;

  TMSFNCMaps1.BeginUpdate;
  try
    TMSFNCMaps1.Markers.Clear;

    for I := 0 to FLstDirecciones.Count - 1 do
      begin
        Obj := TDireccionObj(FLstDirecciones.Objects[I]);
        if Assigned(Obj) then
          begin
            C      := CreateCoordinate(Obj.Lat, Obj.Lng);
            Marker := TMSFNCMaps1.AddMarker(C, Format('%d - %s', [I + 1, Obj.Cliente+'-'+Obj.Direccion]));
            if I = 0 then
              Marker.IconURL := 'https://maps.gstatic.com/mapfiles/ms2/micons/green-dot.png' // base
            else
              if I = FLstDirecciones.Count - 1 then
                Marker.IconURL := 'https://maps.gstatic.com/mapfiles/ms2/micons/blue-dot.png'  // destino final
              else
                Marker.IconURL := 'https://maps.gstatic.com/mapfiles/ms2/micons/red-dot.png';   // clientes
          end;
      end;
  finally
    TMSFNCMaps1.EndUpdate;
  end;
end;


procedure TFormMapaHojaCarga.TMSFNCDirections1GetDirections(Sender: TObject;
  const ARequest: TTMSFNCDirectionsRequest;
  const ARequestResult: TTMSFNCCloudBaseRequestResult);
var
  Arr: TTMSFNCMapsCoordinateRecArray;
  PL:  TTMSFNCMapsPolyline;
begin
  if ARequest.ErrorMessage <> '' then
    begin
      ShowMessage('Directions error: ' + ARequest.ErrorMessage);
      Exit;
    end;

  if (ARequest.Items = nil) or (ARequest.Items.Count = 0) then
    begin
      ShowMessage('Directions: no se recibieron rutas');
      Exit;
    end;

  if ARequest.Items[0].Coordinates.Count = 0 then
    begin
      ShowMessage('Directions: la ruta no trajo coordenadas');
      Exit;
    end;

  Arr := ARequest.Items[0].Coordinates.ToArray;

  TMSFNCMaps1.BeginUpdate;
  try
    TMSFNCMaps1.Polylines.Clear;

    PL             := TMSFNCMaps1.AddPolyline(Arr);
    PL.StrokeWidth := 4;   // gruesa para que SE VEA
    PL.StrokeColor := gcBlue;

    TMSFNCMaps1.ZoomToBounds(Arr);
  finally
    TMSFNCMaps1.EndUpdate;
  end;

end;


procedure TFormMapaHojaCarga.TMSFNCDirections1GetDirectionsResult(
  Sender: TObject; const AResult: TTMSFNCDirectionsRequest);
var
  Polyline: TTMSFNCMapsPolyline;
begin
  if (AResult.ErrorMessage <> '') then
  begin
    ShowMessage('Error en ruta: ' + AResult.ErrorMessage);
    Exit;
  end;

  if (AResult.Items = nil) or (AResult.Items.Count = 0) then
  begin
    ShowMessage('Directions: sin items de ruta');
    Exit;
  end;

  if AResult.Items[0].Coordinates.Count = 0 then
  begin
    ShowMessage('Directions: tramo sin coordenadas');
    Exit;
  end;

  Polyline := TMSFNCMaps1.Polylines.Add;
  Polyline.StrokeColor := gcBlue;
  Polyline.StrokeOpacity := 0.9;
  Polyline.StrokeWidth := 4;
  Polyline.Coordinates.Assign(AResult.Items[0].Coordinates);

  Inc(FSegIndex);
  if FSegIndex <= High(FSegments) then
    begin
      TMSFNCDirections1.GetDirections(
        Format('%f,%f', [FSegments[FSegIndex].A.Latitude, FSegments[FSegIndex].A.Longitude]),
        Format('%f,%f', [FSegments[FSegIndex].B.Latitude, FSegments[FSegIndex].B.Longitude])
      );
    end
  else
    begin
      if TMSFNCMaps1.Polylines.Count > 0 then
        TMSFNCMaps1.ZoomToBounds(TMSFNCMaps1.Polylines[0].Coordinates.ToArray);
    end;
end;


procedure TFormMapaHojaCarga.TMSFNCMaps1CaptureScreenShot(Sender: TObject;
  AScreenShot: TTMSFNCBitmap);
begin
  //save
end;

procedure TFormMapaHojaCarga.TMSFNCMaps1MapInitialized(Sender: TObject);
begin
  CargarMarcadores;
end;

procedure TFormMapaHojaCarga.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormMapaHojaCarga.FormCreate(Sender: TObject);
begin
  // Inicializar proveedor Google
  TMSFNCMaps1.Service               := msGoogleMaps;
  TMSFNCMaps1.APIKey                := DMMain_FD.GetApiKeyGoogle;
  TMSFNCDirections1.Service         := dsGoogle;
  TMSFNCDirections1.APIKey          := DMMain_FD.GetApiKeyGoogle;
end;

procedure TFormMapaHojaCarga.FormDestroy(Sender: TObject);
begin
  FormMapaHojaCarga:=nil;
  inherited;
end;

procedure TFormMapaHojaCarga.CargarRuta;
var
  Origin, Dest: TTMSFNCMapsCoordinateRec;
  WayPoints: TTMSFNCMapsCoordinateRecArray;
  I, W: Integer;
  Obj: TDireccionObj;
  Optimize: Boolean;
begin
  if (FLstDirecciones = nil) or (FLstDirecciones.Count < 2) then Exit;

  Obj    := TDireccionObj(FLstDirecciones.Objects[0]);
  Origin := CreateCoordinate(Obj.Lat, Obj.Lng);

  Obj := TDireccionObj(FLstDirecciones.Objects[FLstDirecciones.Count-1]);
  Dest := CreateCoordinate(Obj.Lat, Obj.Lng);

  // Waypoints intermedios
  if FLstDirecciones.Count > 2 then
    begin
      SetLength(WayPoints, FLstDirecciones.Count - 2);
      W := 0;
      for I := 1 to FLstDirecciones.Count - 2 do
        begin
          Obj := TDireccionObj(FLstDirecciones.Objects[I]);
          WayPoints[W] := CreateCoordinate(Obj.Lat, Obj.Lng);
          Inc(W);
        end;
    end
  else
    WayPoints := nil;

  // 🚀 Activar optimización de waypoints
  Optimize := True;

  // Configurar servicio
  TMSFNCDirections1.Service := dsGoogle;
 // TMSFNCDirections1.UseGoogleRoutes := True;   // requiere Routes API habilitada

  // Llamada completa a Directions
  TMSFNCDirections1.GetDirections(
    Origin,
    Dest,
    nil,              // callback opcional
    'RutaOptimizada', // ID
    nil,              // datapointer opcional
    False,            // alternativas
    tmDriving,        // modo de viaje
    WayPoints,        // puntos intermedios
    Optimize,         // optimizar orden de waypoints
    'es-AR',          // idioma/localización
    mlmDefault,       // modo de localización
    False             // evitar peajes
  );
end;

procedure TFormMapaHojaCarga.FormShow(Sender: TObject);
begin
  // Configurar servicios (ajusta si ya lo definiste en el DFM)
  TMSFNCMaps1.Service         := msGoogleMaps;
  TMSFNCDirections1.Service   := dsGoogle; // Google Directions
  TMSFNCMaps1.APIKey          := 'AIzaSyBQVibb5ZW1yflpnTTxjq41qgSEhjdb8Hg'; // ya la tenés en el DFM
end;


end.
