unit UFecha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Calendar, ExtCtrls, JvExControls, JvCalendar, StdCtrls,
  Buttons, DB,   DBCtrls, JvDBLookup, FMTBcd, SqlExpr, Provider,
  DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormFecha = class(TForm)
    Panel1: TPanel;
    btOk: TBitBtn;
    DSCtas: TDataSource;
    dbcCtaBco: TJvDBLookupCombo;
    btCancel: TBitBtn;
    DSSucursal: TDataSource;
    dbcSucursal: TJvDBLookupCombo;
    Label1: TLabel;
    lbCta: TLabel;
    QCtas: TFDQuery;
    QSucursal: TFDQuery;
    QCtasID_CUENTA: TIntegerField;
    QCtasID_TIPO_CTA: TIntegerField;
    QCtasNOMBRE: TStringField;
    QCtasNRO_CUENTA: TStringField;
    QCtasID_BANCO: TIntegerField;
    QCtasCUIT: TStringField;
    QCtasRAZONSOCIAL: TStringField;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QSucursalDIRECCION: TStringField;
    QSucursalLOCALIDAD: TStringField;
    QSucursalTELEFONO1: TStringField;
    QSucursalTELEFONO2: TStringField;
    QSucursalRECARGO: TFloatField;
    QSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    QSucursalGENERA_XML_COMUN: TStringField;
    QSucursalHOST: TStringField;
    QSucursalCERTIFICADO_ELEC: TStringField;
    QSucursalCUIT: TStringField;
    QSucursalRAZONSOCIAL: TStringField;
    Mcalendario: TJvMonthCalendar2;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FFecha:TDateTime;
    FCta:Integer;
    FSucursal:Integer;

  public
    { Public declarations }
  published
    property fecha :TDateTime read FFecha write FFecha;
    property Cta :Integer read FCta write FCta;
    property Sucursal :Integer read FSucursal write FSucursal;

  end;

var
  FormFecha: TFormFecha;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormFecha.btOkClick(Sender: TObject);
begin
  FFecha:= Mcalendario.DateFirst;
  if Not(VarIsNull(dbcCtaBco.KeyValue)) then
    FCta  := dbcCtaBco.KeyValue
  else
    FCta:=-1;

  if Not(VarIsNull(dbcSucursal.KeyValue)) then
    FSucursal  := dbcSucursal.KeyValue
  else
    FSucursal:=-1;

  //btOk.ModalResult:=mrOk;
  //close;
end;

procedure TFormFecha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  QCtas.Close;
end;

procedure TFormFecha.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  QCtas.Open;
  QSucursal.Open;
end;

procedure TFormFecha.FormDestroy(Sender: TObject);
begin
  FormFecha:=nil;
end;

procedure TFormFecha.FormShow(Sender: TObject);
begin
  QCtas.Close;
  QCtas.Open;
  dbcCtaBco.KeyValue   :=FCta;
  dbcSucursal.KeyValue :=FSucursal;

  Mcalendario.DateFirst:=FFecha;
end;

end.
