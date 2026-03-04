unit USeleccionCajaNC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Provider, DB, DBClient, SqlExpr, StdCtrls, Buttons, DBCtrls,
  JvExControls, JvGradient, ExtCtrls,IniFiles, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormSeleccionCajaNC = class(TForm)
    pnPrincipal: TPanel;
    pnCabecera: TPanel;
    JvGradient3: TJvGradient;
    Label3: TLabel;
    dbcCajaOrigen: TDBLookupComboBox;
    pnPie: TPanel;
    JvGradient2: TJvGradient;
    Label4: TLabel;
    dbcCajaDestino: TDBLookupComboBox;
    pnFinal: TPanel;
    btAceptar: TBitBtn;
    btCancelar: TBitBtn;
    DSCtaCaja: TDataSource;
    CDSCtaCaja: TClientDataSet;
    CDSCtaCajaID_CAJA: TIntegerField;
    CDSCtaCajaID_CUENTA_CAJA: TIntegerField;
    CDSCtaCajaFECHA_INCIO: TSQLTimeStampField;
    CDSCtaCajaFECHA_CIERRE: TSQLTimeStampField;
    CDSCtaCajaNUMEROCAJA: TIntegerField;
    CDSCtaCajaMUESTRACTACAJA: TStringField;
    DSPCtaCaja: TDataSetProvider;
    CDSCajaDestino: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    DSCajaDestino: TDataSource;
    DSComprobante: TDataSource;
    CDSComprobantes: TClientDataSet;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesSUCURSAL: TIntegerField;
    CDSComprobantesMUESTRASUCURSAL: TStringField;
    DSPComprobante: TDataSetProvider;
    QComproba: TSQLQuery;
    QComprobaID_COMPROBANTE: TIntegerField;
    QComprobaTIPO_COMPROB: TStringField;
    QComprobaCLASE_COMPROB: TStringField;
    QComprobaDENOMINACION: TStringField;
    QComprobaSUCURSAL: TIntegerField;
    QComprobaMUESTRASUCURSAL: TStringField;
    QCtaCaja: TFDQuery;
    QCaja: TFDQuery;
    DSPCaja: TDataSetProvider;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
    FCajaOrigen :Integer;
    FCajaDestino:Integer;
  public
    { Public declarations }
   ArchivoIni:TIniFile;
  published
    property CajaOrigen:Integer read FCajaOrigen write FCajaOrigen;
    property CajaDestino:Integer read FCajaDestino write FCajaDestino;
  end;

var
  FormSeleccionCajaNC: TFormSeleccionCajaNC;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormSeleccionCajaNC.btAceptarClick(Sender: TObject);
begin
  FCajaDestino:=dbcCajaDestino.KeyValue;
end;

procedure TFormSeleccionCajaNC.btCancelarClick(Sender: TObject);
begin
  FCajaDestino:=FCajaOrigen;
end;

procedure TFormSeleccionCajaNC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo + '_cajanc.ini');
  ArchivoIni.WriteInteger('caja', 'Destino',dbcCajaDestino.KeyValue);
  ArchivoIni.Free;

  CDSCtaCaja.Close;
  CDSCajaDestino.Close;

  Action:=caFree;
end;

procedure TFormSeleccionCajaNC.FormCreate(Sender: TObject);
begin
  AutoSize:=True;

  CDSCtaCaja.Open;
  CDSCajaDestino.Open;
end;

procedure TFormSeleccionCajaNC.FormDestroy(Sender: TObject);
begin
  FormSeleccionCajaNC:=nil;
end;

procedure TFormSeleccionCajaNC.FormShow(Sender: TObject);
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_cajanc.ini');
  dbcCajaDestino.KeyValue       := ArchivoIni.ReadInteger('caja', 'Destino', -1);
  ArchivoIni.Free;

  dbcCajaOrigen.KeyValue := FCajaOrigen;
//  dbcCajaDestino.KeyValue:= Null;

end;

end.
