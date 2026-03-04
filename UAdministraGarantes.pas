unit UAdministraGarantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, FMTBcd, DB, Provider,
  DBClient, SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormAdministracionGarantes = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    btCancelar: TBitBtn;
    btConfirma: TBitBtn;
    CDSGarantes: TClientDataSet;
    DSGarantes: TDataSource;
    DSPGarantes: TDataSetProvider;
    CDSGarantesNOMBRE: TStringField;
    CDSGarantesDIRECCION: TStringField;
    CDSGarantesID: TIntegerField;
    QGarantes: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btConfirmaClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FCodigo:String;
    FID:Integer;
  public
    { Public declarations }
  published
    property codigo :string  read FCodigo  write FCodigo;
    property id :Integer  read fid  write FId;

  end;

var
  FormAdministracionGarantes: TFormAdministracionGarantes;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormAdministracionGarantes.btCancelarClick(Sender: TObject);
begin
  fid:=-1;
end;

procedure TFormAdministracionGarantes.btConfirmaClick(Sender: TObject);
begin
  FId:=CDSGarantesID.Value;
end;

procedure TFormAdministracionGarantes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormAdministracionGarantes.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormAdministracionGarantes.FormDestroy(Sender: TObject);
begin
  FormAdministracionGarantes:=nil;
end;

procedure TFormAdministracionGarantes.FormShow(Sender: TObject);
begin
  CDSGarantes.Close;
  CDSGarantes.Params.ParamByName('codigo').Value:=FCodigo;
  CDSGarantes.Open;
end;

end.
