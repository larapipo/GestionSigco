unit UAnexosRtoTransporte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.Mask, Data.FMTBcd, Data.DB, Datasnap.Provider, Datasnap.DBClient,
  Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormAnexosRtoTransporte = class(TForm)
    Chofer: TLabel;
    Unidad: TLabel;
    Anexo: TLabel;
    btCancelar: TBitBtn;
    btOk: TBitBtn;
    DSChoferes: TDataSource;
    dbcChofer: TDBLookupComboBox;
    DSUnidades: TDataSource;
    DSAnexos: TDataSource;
    dbcUnidades: TDBLookupComboBox;
    dbcAnexos: TDBLookupComboBox;
    CDSChoferes: TClientDataSet;
    CDSChoferesID: TIntegerField;
    CDSChoferesID_TRANSPORTE: TIntegerField;
    CDSChoferesNOMBRE: TStringField;
    CDSChoferesTIPO_DOC: TStringField;
    CDSChoferesNUMERO_DOC: TStringField;
    DSPChoferes: TDataSetProvider;
    DSPBuscaUnidades: TDataSetProvider;
    CDSBuscaUnidades: TClientDataSet;
    CDSBuscaUnidadesDESCRIPCION: TStringField;
    CDSBuscaUnidadesCAPACIDAD: TFloatField;
    CDSBuscaUnidadesDOMINIO: TStringField;
    CDSBuscaUnidadesID: TIntegerField;
    DSPBuscaAnexos: TDataSetProvider;
    CDSBuscaAnexos: TClientDataSet;
    CDSBuscaAnexosDESCRIPCION: TStringField;
    CDSBuscaAnexosID: TIntegerField;
    QBuscaUnidades: TFDQuery;
    QChoferes: TFDQuery;
    QBuscaAnexos: TFDQuery;
    procedure dbcChoferKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcUnidadesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbcAnexosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btOkClick(Sender: TObject);
  private
    FID_Unidad:Integer;
    FID_Chofer:Integer;
    FID_Anexo:Integer;
    FID_Transporte:Integer;
    FDominio_Tr:string;
    FUnidad_Tr:string;


    { Private declarations }
  public
    { Public declarations }
  published
    Property id_Unidad:Integer read fid_Unidad write FID_Unidad;
    Property id_Chofer:Integer read fid_chofer write FID_Chofer ;
    Property id_anexo:Integer  read fid_anexo write FID_Anexo;
    Property id_Transporte:Integer  read FID_Transporte write FID_Transporte;
    Property Dominio_Tr:String  read FDominio_Tr write FDominio_Tr;
    Property Unidad_Tr:String  read FUnidad_Tr write FUnidad_Tr;

  end;

var
  FormAnexosRtoTransporte: TFormAnexosRtoTransporte;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormAnexosRtoTransporte.btOkClick(Sender: TObject);
begin
  FID_Unidad := dbcUnidades.KeyValue;
  FID_Chofer := dbcChofer.KeyValue;
  FID_Anexo  := dbcAnexos.KeyValue;
  FDominio_Tr:= dbcUnidades.ListSource.DataSet.FieldByName('DOMINIO').AsString;
  FUnidad_Tr:= dbcUnidades.ListSource.DataSet.FieldByName('Descripcion').AsString;

end;

procedure TFormAnexosRtoTransporte.dbcAnexosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_DELETE) or (Key=VK_BACK) then
    dbcAnexos.DataSource.DataSet.FieldByName(dbcAnexos.DataField).Value:=-1;

end;

procedure TFormAnexosRtoTransporte.dbcChoferKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_DELETE) or (Key=VK_BACK) then
    dbcChofer.DataSource.DataSet.FieldByName(dbcChofer.DataField).Value:=-1;

end;

procedure TFormAnexosRtoTransporte.dbcUnidadesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_DELETE) or (Key=VK_BACK) then
    dbcUnidades.DataSource.DataSet.FieldByName(dbcUnidades.DataField).Value:=-1;

end;

procedure TFormAnexosRtoTransporte.FormShow(Sender: TObject);
begin

  CDSChoferes.Close;
  CDSChoferes.Params.ParamByName('id').Value:= FID_Transporte;
  CDSChoferes.Open;

  dbcChofer.KeyValue:=FID_Chofer;

  CDSBuscaUnidades.Close;
  CDSBuscaUnidades.Open;

  dbcUnidades.KeyValue:=FID_Unidad;

  CDSBuscaAnexos.Close;
  CDSBuscaAnexos.Open;

  dbcAnexos.KeyValue:=FID_Anexo;

end;

end.
