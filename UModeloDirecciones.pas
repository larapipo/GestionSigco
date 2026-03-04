unit UModeloDirecciones;

interface

uses
  System.SysUtils, System.Classes, VCL.TMSFNCGeocoding, UHojaDeCarga;

type
  TDirecciones = class
  private
    FGeo: TTMSFNCGeocoding;
  public
    constructor Create(AGeo: TTMSFNCGeocoding);
    procedure GeocodificarLista(Lista: TStringList);
  end;

implementation

{ TDirecciones }

constructor TDirecciones.Create(AGeo: TTMSFNCGeocoding);
begin
  FGeo := AGeo;
end;

procedure TDirecciones.GeocodificarLista(Lista: TStringList);
var
  I: Integer;
  Obj: TDireccionObj;
  Req: TTMSFNCGeocodingRequest;
begin
//  for I := 0 to Lista.Count - 1 do
  begin
//    Obj := TDireccionObj(Lista.Objects[I]);
//    if (Obj.Lat = 0) and (Obj.Lng = 0) then
//    begin
//      Req := TTMSFNCGeocodingRequest.Create;
//      try
//        Req.Address := Obj.Direccion;
//        Req.TagObject := Obj; // vínculo con el objeto
//        FGeo.Geocode(Req);
//      finally
//        Req.Free;
//      end;
//    end;
  end;
end;

end.
