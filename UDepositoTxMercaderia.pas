unit UDepositoTxMercaderia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Provider, DBClient, DBCtrls, JvExControls, JvGradient, StdCtrls,
  ExtCtrls, Buttons;

type
  TFormMuestraDepositoTransferencia = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    rgModo: TRadioGroup;
    Panel2: TPanel;
    Panel3: TPanel;
    JvGradient1: TJvGradient;
    JvGradient2: TJvGradient;
    dbcDepoDestino: TDBLookupComboBox;
    Label2: TLabel;
    CDSDepositos: TClientDataSet;
    DSPDepositos: TDataSetProvider;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    CDSDepositosSUCURSAL: TIntegerField;
    CDSDepositosCENTRALIZA_STOCK: TStringField;
    DSDeposito: TDataSource;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rgModoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FDepositoOrigen :Integer;
    FDepositoDestino:Integer;
    FModo:Integer;
  public
    { Public declarations }
  published
    property DepositoOrigen:integer read FDepositoOrigen write FDepositoOrigen;
    property DepositoDestino:integer read FDepositoDestino write FDepositoDestino;
    property Modo:integer read FModo write FModo;
  end;

var
  FormMuestraDepositoTransferencia: TFormMuestraDepositoTransferencia;

implementation
uses UDMain_FD,DMBuscadoresForm;
{$R *.dfm}

procedure TFormMuestraDepositoTransferencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (dbcDepoDestino.KeyValue<>Null) then
    FDepositoDestino := dbcDepoDestino.KeyValue
  else
    FDepositoDestino := -1;

  FModo := rgModo.ItemIndex;
  Action:= caFree;
end;

procedure TFormMuestraDepositoTransferencia.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSDepositos.Open;
end;

procedure TFormMuestraDepositoTransferencia.FormDestroy(Sender: TObject);
begin
  FormMuestraDepositoTransferencia:=nil;
end;

procedure TFormMuestraDepositoTransferencia.FormShow(Sender: TObject);
begin
  dbcDepoDestino.KeyValue:=FDepositoDestino;
  rgModo.ItemIndex:=FModo;
  dbcDepoDestino.Enabled:=rgModo.ItemIndex=1;
  if dbcDepoDestino.Enabled then
    dbcDepoDestino.Color:=clWhite
  else
    dbcDepoDestino.Color:=clBtnFace;

end;

procedure TFormMuestraDepositoTransferencia.rgModoClick(Sender: TObject);
begin
  dbcDepoDestino.Enabled:=rgModo.ItemIndex=1;
  if dbcDepoDestino.Enabled then
    dbcDepoDestino.Color:=clWhite
  else
    dbcDepoDestino.Color:=clBtnFace;

end;

end.
