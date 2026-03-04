unit UMuestraCheEmitidos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, Db, FMTBcd, SqlExpr, Provider, DBClient;

type
  TFormMuestraCheEmitidos = class(TForm)
    DSChequesEmitidos: TDataSource;
    Panel1: TPanel;
    dbgChe: TDBGrid;
    QCheEmit: TSQLQuery;
    CDSCheEmitidos: TClientDataSet;
    DSPCheEmitidos: TDataSetProvider;
    CDSCheEmitidosFECHA_EMISION: TSQLTimeStampField;
    CDSCheEmitidosFECHA_COBRO: TSQLTimeStampField;
    CDSCheEmitidosNUMERO: TIntegerField;
    CDSCheEmitidosORDEN_DE: TStringField;
    CDSCheEmitidosIMPORTE: TFMTBCDField;
    CDSCheEmitidosMUESTRABANCO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Fecha:TDateTime;
    { Public declarations }
  end;

var
  FormMuestraCheEmitidos: TFormMuestraCheEmitidos;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormMuestraCheEmitidos.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormMuestraCheEmitidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSCheEmitidos.Close;
  Action:=caFree;
end;

procedure TFormMuestraCheEmitidos.FormDestroy(Sender: TObject);
begin
  FormMuestraCheEmitidos:=nil;
end;

procedure TFormMuestraCheEmitidos.FormShow(Sender: TObject);
begin
  CDSCheEmitidos.Close;
  CDSCheEmitidos.Params.ParamByName('Fecha').AsDate:=Fecha;
  CDSCheEmitidos.Open;

  TFloatField(dbgChe.Fields[5]).DisplayFormat:=',0.00';
end;

end.
