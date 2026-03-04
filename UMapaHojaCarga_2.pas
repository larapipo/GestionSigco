unit UMapaHojaCarga_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, VCL.TMSFNCTypes,
  VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCMapsCommonTypes, VCL.TMSFNCCustomControl, VCL.TMSFNCWebBrowser,
  VCL.TMSFNCMaps, VCL.TMSFNCCustomComponent, VCL.TMSFNCCloudBase,
  VCL.TMSFNCDirections;

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
  TFormMapaHojaCarga_2 = class(TForm)
    pnCab: TPanel;
    pnPie: TPanel;
    pnBase: TPanel;
    TMSFNCMaps1: TTMSFNCMaps;
    TMSFNCDirections1: TTMSFNCDirections;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FLstDirecciones: TStringList;
    procedure CargarRuta;
    procedure CargarMarcadores;
  public
    { Public declarations }
  published
    property ListaDirecciones: TStringList read FLstDirecciones write FLstDirecciones;// SetListaDirecciones;
  end;

var
  FormMapaHojaCarga_2: TFormMapaHojaCarga_2;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormMapaHojaCarga_2.CargarMarcadores;
var
  I  : Integer;
  Obj: TDireccionObj;
  C  : TTMSFNCMapsCoordinateRec;
begin
//  if (FLstDirecciones = nil) or (FLstDirecciones.Count = 0) then
//    Exit;
//  TMSFNCMaps1.BeginUpdate;
//  try
//    TMSFNCMaps1.Markers.Clear;
//    if FLstDirecciones.Count>0 then
//      begin
//        for I := 0 to FLstDirecciones.Count - 1 do
//        begin
//          Obj := TDireccionObj(FLstDirecciones.Objects[I]);
//          if Assigned(Obj) then
//            begin
//              C := CreateCoordinate(Obj.Lat, Obj.Lng);
//              if (c.Longitude>0) and (c.Latitude>0) then
//                TMSFNCMaps1.AddMarker(C, Format('%d - %s', [I + 1, Obj.Cliente]));
//            end;
//        end;
//      end;
//  finally
//    TMSFNCMaps1.EndUpdate;
//  end;
end;

procedure TFormMapaHojaCarga_2.CargarRuta;
begin
//
end;

procedure TFormMapaHojaCarga_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=TCloseAction.caFree;
end;



procedure TFormMapaHojaCarga_2.FormShow(Sender: TObject);
begin
  if Assigned(FLstDirecciones) then
    ShowMessage('Cantidad de direcciones: ' + IntToStr(FLstDirecciones.Count))
  else
    ShowMessage('ListaDirecciones no asignada');

end;

end.
