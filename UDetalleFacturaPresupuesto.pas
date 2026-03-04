unit UDetalleFacturaPresupuesto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, AdvPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.DBClient,
  Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormDetallePresuFac = class(TForm)
    pnBase: TPanel;
    dbgPresuDetalle: TDBGrid;
    dbgfacdetalle: TDBGrid;
    QDetalleFactura: TFDQuery;
    QDetallePresu: TFDQuery;
    DSPDetallePresu: TDataSetProvider;
    DSPDetalleFactura: TDataSetProvider;
    CDSDetalleFactura: TClientDataSet;
    CDSDetalleFacturaCODIGOARTICULO: TStringField;
    CDSDetalleFacturaDETALLE: TStringField;
    CDSDetalleFacturaCANTIDAD: TFloatField;
    CDSDetalleFacturaUNITARIO_TOTAL: TFloatField;
    CDSDetalleFacturaTOTAL: TFloatField;
    CDSDetallePresu: TClientDataSet;
    CDSDetallePresuCODIGOARTICULO: TStringField;
    CDSDetallePresuDETALLE: TStringField;
    CDSDetallePresuCANTIDAD: TFloatField;
    CDSDetallePresuUNITARIO_TOTAL: TFloatField;
    CDSDetallePresuTOTAL: TFloatField;
    DSDetallePresu: TDataSource;
    DSDetalleFactura: TDataSource;
    Panel1: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgPresuDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    FIdfc:integer;
    FIdPr:Integer;
  public
    { Public declarations }
  published
    property IdFc :Integer read FidFc write FIdFc;
    property IdPr :Integer read FidPr write FIdPr;

  end;

var
  FormDetallePresuFac: TFormDetallePresuFac;

implementation

{$R *.dfm}

uses UDMain_FD;

procedure TFormDetallePresuFac.dbgPresuDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  FieldName: string;
  PresuValue, FacturaValue: string;
begin
//  DBGPresuDetalle.Canvas.Brush.Color := clWhite;
  // automatizo los demas campos en vez de hacer uno por uno
  FieldName := Column.Field.FieldName;

  // hago locate con codigo de articulo
  if CDSDetalleFactura.Locate('CODIGOARTICULO',
      CDSDetallePresu.FieldByName('CODIGOARTICULO').AsString, []) then
    begin
      if(CDSDetallePresuDETALLE.AsString=CDSDetalleFacturaDETALLE.AsString)then
        begin
             // retrieve both values as strings for a generic comparison
          PresuValue   := CDSDetallePresu.FieldByName(FieldName).AsString;
          FacturaValue := CDSDetalleFactura.FieldByName(FieldName).AsString;

          // chequeo si son distintos
          if PresuValue <> FacturaValue then
            DBGPresuDetalle.Canvas.Brush.Color := clWebDarkSalmon;
        end;
    end
  else
    // si no encuentro el articulo marco rojo
    DBGPresuDetalle.Canvas.Brush.Color := clWebDarkSalmon;

  DBGPresuDetalle.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;


procedure TFormDetallePresuFac.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;



procedure TFormDetallePresuFac.FormDestroy(Sender: TObject);
begin
  formDetallePresuFac:=nil;
end;

procedure TFormDetallePresuFac.FormShow(Sender: TObject);
begin
  CDSDetalleFactura.close;
  CDSDetalleFactura.Params.ParamByName('faccab').AsInteger:=FIdFc;
  CDSDetalleFactura.open;
  CDSDetalleFactura.first;

  CDSDetallePresu.close;
  CDSDetallePresu.Params.ParamByName('prescab').asinteger :=FIdPr;
  CDSDetallePresu.open;
  CDSDetallePresu.first;
end;

end.
