unit UHistorico_PrecioSombraPorArticulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,   Provider, DB, DBClient, ExtCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, StdCtrls, DBCtrls, FMTBcd, SqlExpr;

type
  TFormHistorico_PrecSombra_Art = class(TForm)
    pnPrincipal: TPanel;
    DSHistorico: TDataSource;
    CDSHistorico: TClientDataSet;
    DSPHistorico: TDataSetProvider;
    JvDBGrid1: TJvDBGrid;
    CDSHistoricoCODIGO: TStringField;
    CDSHistoricoUSUARIO: TStringField;
    dbtUsuario: TDBText;
    Label1: TLabel;
    QHistorico: TSQLQuery;
    CDSHistoricoID: TIntegerField;
    CDSHistoricoCOSTO_GRAVADO_NEW: TFMTBCDField;
    CDSHistoricoCOSTO_GRAVADO_OLD: TFMTBCDField;
    CDSHistoricoCOSTO_EXENTO_NEW: TFMTBCDField;
    CDSHistoricoCOSTO_EXENTO_OLD: TFMTBCDField;
    CDSHistoricoFECHA_APLICACION: TSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    FCodigo:String;
    { Private declarations }
  public
    { Public declarations }
  published
    property Codigo:String read FCodigo Write FCodigo;
  end;

var
  FormHistorico_PrecSombra_Art: TFormHistorico_PrecSombra_Art;

implementation

USES UDMain_FD;
{$R *.dfm}

procedure TFormHistorico_PrecSombra_Art.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSHistorico.Close;
  Action:=caFree;
end;

procedure TFormHistorico_PrecSombra_Art.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormHistorico_PrecSombra_Art.FormDestroy(Sender: TObject);
begin
  FormHistorico_PrecSombra_Art:=nil;
end;

procedure TFormHistorico_PrecSombra_Art.FormShow(Sender: TObject);
begin
  CDSHistorico.Close;
  CDSHistorico.Params.ParamByName('codigo').Value:=FCodigo;
  CDSHistorico.Open;
end;

end.
