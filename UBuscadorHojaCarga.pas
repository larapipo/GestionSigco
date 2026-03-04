unit UBuscadorHojaCarga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls,
  FMTBcd, DBClient, Provider, DB, SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBuscadorHojaCarga = class(TForm)
    Panel1: TPanel;
    JvDBGrid1: TJvDBGrid;
    btCancelar: TBitBtn;
    btAceptar: TBitBtn;
    DSHojaCab: TDataSource;
    DSPHojaCab: TDataSetProvider;
    CDSHojaCab: TClientDataSet;
    CDSHojaCabID: TIntegerField;
    CDSHojaCabFECHA: TSQLTimeStampField;
    CDSHojaCabRESPONSABLE: TStringField;
    CDSHojaCabNOTAS: TStringField;
    CDSHojaCabMUESTRARESPONSABLE: TStringField;
    QHojaCab: TFDQuery;
    procedure btAceptarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
   FId: Integer;
  public
    { Public declarations }
  published
     { Public declarations }
    PROPERTY Id: Integer read FId write FId;
  end;

var
  FormBuscadorHojaCarga: TFormBuscadorHojaCarga;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormBuscadorHojaCarga.btAceptarClick(Sender: TObject);
begin
  FId := CDSHojaCabID.Value;
 // Close;
end;

procedure TFormBuscadorHojaCarga.btCancelarClick(Sender: TObject);
begin
  FId := -1;
 // Close;
end;

procedure TFormBuscadorHojaCarga.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorHojaCarga.FormCreate(Sender: TObject);
begin
  CDSHojaCab.Close;
  CDSHojaCab.Open;
  AutoSize:=True;
end;

procedure TFormBuscadorHojaCarga.FormDestroy(Sender: TObject);
begin
  FormBuscadorHojaCarga:=nil;
end;

procedure TFormBuscadorHojaCarga.JvDBGrid1DblClick(Sender: TObject);
begin
  btAceptar.Click;
end;

procedure TFormBuscadorHojaCarga.JvDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
    btAceptar.Click
  else
    if Key=#27 then
      btCancelar.Click; 
end;

end.
