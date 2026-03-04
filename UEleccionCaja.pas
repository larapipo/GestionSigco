unit UEleccionCaja;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Db,   Buttons, FMTBcd, Provider,
  DBClient, SqlExpr, JvExControls, JvLabel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormEleccionCaja = class(TForm)
    Panel1: TPanel;
    dbcCaja: TDBLookupComboBox;
    Label1: TLabel;
    DSCaja: TDataSource;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    CDSCaja: TClientDataSet;
    DSPCaja: TDataSetProvider;
    CDSCajaID_CAJA: TIntegerField;
    CDSCajaID_CUENTA_CAJA: TIntegerField;
    CDSCajaNUMEROCAJA: TIntegerField;
    CDSCajaMUESTRACAJA: TStringField;
    RxLbCaja: TJvLabel;
    QCajas: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FCaja:Integer;
    FCajaNombre:String;
  public
    { Public declarations }
    CajaPorDefecto:Integer;
  published
    property Caja:Integer read FCaja write FCaja;
    property CajaNombre:String read FCajaNombre write FCajaNombre;

  end;

var
  FormEleccionCaja: TFormEleccionCaja;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormEleccionCaja.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSCaja.Close;
  CDSCaja.Open;
end;

procedure TFormEleccionCaja.btOkClick(Sender: TObject);
begin
  FCaja       := dbcCaja.KeyValue;
  FCajaNombre := dbcCaja.Text;
  //Close;
end;

procedure TFormEleccionCaja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormEleccionCaja.FormDestroy(Sender: TObject);
begin
  FormEleccionCaja:=nil;
end;

procedure TFormEleccionCaja.btCancelClick(Sender: TObject);
begin
  FCaja:=-1;
  FCajaNombre := '';
 // Close;
end;

procedure TFormEleccionCaja.FormShow(Sender: TObject);
begin
  dbcCaja.KeyValue:= FCaja;//CajaPorDefecto;
end;

end.
