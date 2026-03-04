unit UEleccionTransporte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Data.DB, Datasnap.Provider, Datasnap.DBClient, JvExControls, JvDBLookup,
  Vcl.Buttons;

type
  TFormEleccionTransporte = class(TForm)
    pnBase: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    lbChofer: TLabel;
    lbUnidad: TLabel;
    lbAnexo: TLabel;
    dbcChofer: TDBLookupComboBox;
    dbcUnidades: TDBLookupComboBox;
    dbcAnexos: TDBLookupComboBox;
    DSChoferes: TDataSource;
    DSUnidades: TDataSource;
    DSAnexos: TDataSource;
    QBuscaUnidades: TFDQuery;
    QChoferes: TFDQuery;
    QBuscaAnexos: TFDQuery;
    cbdTransorte: TJvDBLookupCombo;
    QTransporte: TFDQuery;
    QBuscaUnidadesID: TIntegerField;
    QBuscaUnidadesDESCRIPCION: TStringField;
    QBuscaUnidadesCAPACIDAD: TFloatField;
    QBuscaUnidadesDOMINIO: TStringField;
    QBuscaAnexosID: TIntegerField;
    QBuscaAnexosDESCRIPCION: TStringField;
    QChoferesID: TIntegerField;
    QChoferesID_TRANSPORTE: TIntegerField;
    QChoferesNOMBRE: TStringField;
    QChoferesTIPO_DOC: TStringField;
    QChoferesNUMERO_DOC: TStringField;
    DSTransporte: TDataSource;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbdTransorteClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FID_Unidad :Integer;
    FID_Chofer :Integer;
    FID_Anexo  :Integer;
    FID_Transporte:Integer;
    FDominio_Tr:string;
    FUnidad_Tr :string;
  public
    { Public declarations }
  published
    property id_unidada    : Integer  read FID_Unidad write FID_Unidad;
    property id_Chofer     : Integer  read FID_Chofer write FID_Chofer;
    property id_Anexo      : Integer  read FID_Anexo write FID_Anexo;
    property id_Transporte : Integer  read FID_Transporte write FID_Transporte;
    property Dominio       : String   read FDominio_Tr write FDominio_Tr;
    property Unidad        : String   read FUnidad_Tr write FUnidad_Tr;


  end;

var
  FormEleccionTransporte: TFormEleccionTransporte;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormEleccionTransporte.btOkClick(Sender: TObject);
begin
  FID_Unidad     := dbcUnidades.KeyValue;
  FID_Chofer     := dbcChofer.KeyValue;
  FID_Anexo      := dbcAnexos.KeyValue;
  FID_Transporte := cbdTransorte.KeyValue;
  FDominio_Tr    := dbcUnidades.ListSource.DataSet.FieldByName('DOMINIO').AsString;
  FUnidad_Tr     := dbcUnidades.ListSource.DataSet.FieldByName('DESCRIPCION').AsString;
end;

procedure TFormEleccionTransporte.cbdTransorteClick(Sender: TObject);
begin
  QChoferes.Close;
  QChoferes.ParamByName('id').Value:= cbdTransorte.LookupSource.DataSet.FieldByName('id').Value;
  QChoferes.Open;

  dbcChofer.KeyValue:= -1;

  QBuscaUnidades.Close;
  QBuscaUnidades.Open;

  dbcUnidades.KeyValue:= -1;

  QBuscaAnexos.Close;
  QBuscaAnexos.Open;

  dbcAnexos.KeyValue:= -1;
end;

procedure TFormEleccionTransporte.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
end;

procedure TFormEleccionTransporte.FormDestroy(Sender: TObject);
begin
  FormEleccionTransporte:=nil;
end;

procedure TFormEleccionTransporte.FormShow(Sender: TObject);
begin
  QTransporte.Close;
  QTransporte.Open;

  QChoferes.Close;
  QChoferes.ParamByName('id').Value:= cbdTransorte.KeyValue;
  QChoferes.Open;

  dbcChofer.KeyValue:=FID_Chofer;

  QBuscaUnidades.Close;
  QBuscaUnidades.Open;

  dbcUnidades.KeyValue:=FID_Unidad;

  QBuscaAnexos.Close;
  QBuscaAnexos.Open;

  dbcAnexos.KeyValue:=FID_Anexo;
end;

end.
