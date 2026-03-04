unit UNumeroInterno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExControls, JvGradient, ExtCtrls, FMTBcd, DB,
  SqlExpr;

type
  TFormNumeroInterno = class(TForm)
    pncab: TPanel;
    JvGradient1: TJvGradient;
    Label1: TLabel;
    edNumero: TEdit;
    pnPie: TPanel;
    btOk: TBitBtn;
    QNro: TSQLQuery;
    QNroID_COMPROBANTE: TIntegerField;
    QNroTIPO_COMPROB: TStringField;
    QNroCLASE_COMPROB: TStringField;
    QNroDENOMINACION: TStringField;
    QNroSUCURSAL: TIntegerField;
    QNroLETRA: TStringField;
    QNroPREFIJO: TStringField;
    QNroNUMERARCION_PROPIA: TStringField;
    QNroNUMERO: TStringField;
    QNroTOMA_NRO_DE: TIntegerField;
    QNroAFECTA_IVA: TStringField;
    QNroAFECTA_CC: TStringField;
    QNroDESGLOZA_IVA: TStringField;
    QNroCOMPRA_VENTA: TStringField;
    QNroCOPIAS: TIntegerField;
    QNroREPORTE: TStringField;
    QNroIMPRIME: TStringField;
    QNroFISCAL: TStringField;
    QNroNOMBREIMPRESORA: TStringField;
    QNroPENDIENTEIMPRESION: TStringField;
    QNroLINEAS_DETALLE: TSmallintField;
    QNroCALCULA_IVA_ARTICULOS: TStringField;
    QNroDEFECTO: TStringField;
    QNroMUESTRADENOMINACION: TStringField;
    procedure btOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure edNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FId:Integer;
    FNumero:Integer;
  public
    { Public declarations }
  published
    property id:Integer read FId write FId;
    property Numero:Integer read FNumero write FNumero;
  end;

var
  FormNumeroInterno: TFormNumeroInterno;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormNumeroInterno.btOkClick(Sender: TObject);
begin
  FNumero:=strToInt(edNumero.Text);
  if ((edNumero.Text<>'') and (FId<>-1)) then
    begin
      QNro.Close;
      QNro.ParamByName('Numero').Value:= strToInt(edNumero.Text);
      QNro.ParamByName('id').Value    := FId;
      QNro.ExecSQL;
      QNro.Close;
    end;

end;

procedure TFormNumeroInterno.edNumeroKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#8]) then
    begin
      key:=#0;
      showmessage('Por favor introduzca numeros')
    end
end;

procedure TFormNumeroInterno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormNumeroInterno.FormCreate(Sender: TObject);
begin
  AutoSize:=true;
end;

procedure TFormNumeroInterno.FormDestroy(Sender: TObject);
begin
  FormNumeroInterno:=nil;
end;

procedure TFormNumeroInterno.FormShow(Sender: TObject);
begin
  if Not(VarIsnull(FNumero)) then
    edNumero.Text:=IntToStr(FNumero);
end;

end.
