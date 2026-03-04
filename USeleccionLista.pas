unit USeleccionLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvGradient, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB,
  Provider, DBClient, SqlExpr, JvDBLookup, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormSeleccionLista = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btOk: TBitBtn;
    JvGradient1: TJvGradient;
    JvGradient2: TJvGradient;
    dbclista: TJvDBLookupCombo;
    Label1: TLabel;
    CDSBuscaLista: TClientDataSet;
    CDSBuscaListaID: TIntegerField;
    CDSBuscaListaNOMBRE: TStringField;
    CDSBuscaListaCLONADA: TStringField;
    CDSBuscaListaFECHA: TSQLTimeStampField;
    CDSBuscaListaPORDEFECTO: TStringField;
    CDSBuscaListaID_LISTA_CLONADA: TIntegerField;
    DSPBuscaLista: TDataSetProvider;
    DSBuscaLista: TDataSource;
    btCancelar: TBitBtn;
    QBuscaLista: TFDQuery;
    CDSBuscaListaRECARGOBASE: TFloatField;
    CDSBuscaListaCOEFICIENTE: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
    FId:integer;
  public
    { Public declarations }
  published
    property id:integer read fid write fid;
  end;

var
  FormSeleccionLista: TFormSeleccionLista;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormSeleccionLista.btOkClick(Sender: TObject);
begin
  FId:= dbclista.KeyValue;
end;

procedure TFormSeleccionLista.btCancelarClick(Sender: TObject);
begin
 // Close;
end;

procedure TFormSeleccionLista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormSeleccionLista.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSBuscaLista.close;
  CDSBuscaLista.Open;
  dbclista.KeyValue:=FId;
end;

procedure TFormSeleccionLista.FormDestroy(Sender: TObject);
begin
  FormSeleccionLista:=nil;
end;

end.
