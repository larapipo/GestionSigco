unit UBuscadoDetalleOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TFormBuscadoDetalleOP = class(TForm)
    pnBase: TPanel;
    pnPie: TPanel;
    DBGrid1: TDBGrid;
    QDetalle: TFDQuery;
    DSDetalle: TDataSource;
    QDetalleCODIGO: TStringField;
    QDetalleDETALLE: TStringField;
    QDetalleCANTIDAD: TFloatField;
    QDetalleNROCPBTE: TStringField;
    QDetalleCANT_ENTREGADA: TFloatField;
    QDetalleESTADO: TStringField;
    btOk: TBitBtn;
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
    FId      :Integer;
    FNroCpbte:String;
    FCantida :Extended;
    FDetalle :String;
  public
    { Public declarations }
  published
    property Id:Integer read FId write FId;
    property NroCpbte:String read FNroCpbte write FNroCpbte;
    property Cantidad:Extended read FCantida write FCantida;
    property Detalle:String read FDetalle write FDetalle;

  end;

var
  FormBuscadoDetalleOP: TFormBuscadoDetalleOP;

implementation

uses
UDMain_FD;

{$R *.dfm}

procedure TFormBuscadoDetalleOP.btOkClick(Sender: TObject);
begin
   FDetalle := QDetalleDETALLE.AsString;
   FCantida := QDetalleCANTIDAD.Value;
end;

procedure TFormBuscadoDetalleOP.DBGrid1DblClick(Sender: TObject);
begin
  btOk.Click
end;

procedure TFormBuscadoDetalleOP.FormDestroy(Sender: TObject);
begin
  FormBuscadoDetalleOP:=nil;
end;

procedure TFormBuscadoDetalleOP.FormResize(Sender: TObject);
begin
  if not(Assigned(FormBuscadoDetalleOP)) then
    if FormBuscadoDetalleOP.Width<>768 Then
      FormBuscadoDetalleOP.Width:=768;

end;

procedure TFormBuscadoDetalleOP.FormShow(Sender: TObject);
begin
  QDetalle.Close;
  QDetalle.Params.ParamByName('id').Value:=FId;
  QDetalle.Open;
end;

end.
