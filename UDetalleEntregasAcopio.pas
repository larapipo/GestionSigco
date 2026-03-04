unit UDetalleEntregasAcopio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, JvExControls, JvGradient,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls, StdCtrls, Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormMuestraEntregasAcopios = class(TForm)
    Panel1: TPanel;
    JvDBGrid1: TJvDBGrid;
    pncab: TPanel;
    Panel2: TPanel;
    JvGradient2: TJvGradient;
    QDetalleEntregas: TFDQuery;
    DSPDetalleEntregas: TDataSetProvider;
    DSEntregas: TDataSource;
    btCerrar: TBitBtn;
    CDSDetalleEntregas: TClientDataSet;
    CDSDetalleEntregasID: TIntegerField;
    CDSDetalleEntregasID_CAB: TIntegerField;
    CDSDetalleEntregasFECHA: TSQLTimeStampField;
    CDSDetalleEntregasTIPOCPBTE: TStringField;
    CDSDetalleEntregasCLASECPBTE: TStringField;
    CDSDetalleEntregasDEPOSITO: TIntegerField;
    CDSDetalleEntregasCODIGO: TStringField;
    CDSDetalleEntregasDETALLE: TStringField;
    CDSDetalleEntregasID_MERCA_ACOPIO_DET: TIntegerField;
    CDSDetalleEntregasNROCPBTE: TStringField;
    CDSDetalleEntregasCANTIDAD: TFloatField;
    procedure btCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMuestraEntregasAcopios: TFormMuestraEntregasAcopios;

implementation

uses UDMain_fd;
{$R *.dfm}

procedure TFormMuestraEntregasAcopios.btCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMuestraEntregasAcopios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormMuestraEntregasAcopios.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormMuestraEntregasAcopios.FormDestroy(Sender: TObject);
begin
  FormMuestraEntregasAcopios:=nil;
end;

end.
