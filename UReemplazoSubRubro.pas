unit UReemplazoSubRubro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, DB, DBClient, Provider, StdCtrls, Buttons, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, JvExControls, JvGradient, ExtCtrls, DBCtrls,
  JvDBLookup, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormRemplazoSubRubro = class(TForm)
    Panel1: TPanel;
    JvGradient1: TJvGradient;
    Label1: TLabel;
    dbgSubRubros: TJvDBGrid;
    btCancelar: TBitBtn;
    btAceptar: TBitBtn;
    DSSubRubro: TDataSource;
    DSPRSubRubro: TDataSetProvider;
    CDSSubRubro: TClientDataSet;
    CDSSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSSubRubroCODIGO_RUBRO: TStringField;
    CDSSubRubroCONTROL_SUBRUBRO: TStringField;
    CDSSubRubroDETALLE_SUBRUBRO: TStringField;
    DSRubro: TDataSource;
    DSPRubro: TDataSetProvider;
    CDSRubro: TClientDataSet;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    CDSRubroCONTROL_RUBRO: TStringField;
    dbcRubro: TJvDBLookupCombo;
    QRubro: TFDQuery;
    QSubRubro: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbcRubroClick(Sender: TObject);
  private
    FRubro:String;
    FSubRubro:String;
    { Private declarations }
  public
    { Public declarations }
  published
    property Rubro:String read FRubro write FRubro;
    property SubRubro:String read FSubRubro write FSubRubro;
  end;

var
  FormRemplazoSubRubro: TFormRemplazoSubRubro;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormRemplazoSubRubro.btAceptarClick(Sender: TObject);
begin
  FRubro := CDSSubRubroCODIGO_RUBRO.Value;
  if CDSSubRubroCODIGO_SUBRUBRO.AsString<>'' then
    FSubRubro:=CDSSubRubroCODIGO_SUBRUBRO.Value
  else
    FSubRubro:='*'
end;

procedure TFormRemplazoSubRubro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormRemplazoSubRubro.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormRemplazoSubRubro.FormDestroy(Sender: TObject);
begin
  FormRemplazoSubRubro:=nil;
end;

procedure TFormRemplazoSubRubro.FormShow(Sender: TObject);
begin
  CDSRubro.Close;
  CDSRubro.Open;
  dbcRubro.KeyValue:=FRubro;

  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').AsString:=FRubro;
  CDSSubRubro.Open;

end;

procedure TFormRemplazoSubRubro.dbcRubroClick(Sender: TObject);
begin
  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').AsString:=dbcRubro.KeyValue;
  CDSSubRubro.Open;
end;

end.
