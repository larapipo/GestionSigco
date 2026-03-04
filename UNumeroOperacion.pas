unit UNumeroOperacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExControls, JvGradient, ExtCtrls, FMTBcd, DB,
  SqlExpr, DBXCommon, Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormNumeroOperacion = class(TForm)
    pncab: TPanel;
    JvGradient1: TJvGradient;
    Label1: TLabel;
    pnPie: TPanel;
    btOk: TBitBtn;
    edAnio: TEdit;
    edNumero: TEdit;
    spNumeroOPFD: TFDStoredProc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FNumero:String;
    FTipo:String;
    FAnio:String;
    FId:Integer;
  public
    { Public declarations }
  published
    property Numero:String read FNumero write FNumero;
    property Anio:String read FAnio write FAnio;
    property Tipo:String read FTipo write FTipo;
    property id:Integer read FId write FId;

  end;

var
  FormNumeroOperacion: TFormNumeroOperacion;

implementation

uses UDMAin_FD;
{$R *.dfm}

procedure TFormNumeroOperacion.btOkClick(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spNumeroOPFD.Close;
    spNumeroOPFD.Params.ParamByName('tipo').Value  := FTipo;
    spNumeroOPFD.Params.ParamByName('Numero').Value:= copy('0000',1,4-length(Trim(edNumero.Text)))+Trim(edNumero.Text);
    spNumeroOPFD.Params.ParamByName('Anio').Value  := Trim(edAnio.Text);
    spNumeroOPFD.Params.ParamByName('id_cpbte').Value    := FId;
    spNumeroOPFD.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    spNumeroOPFD.Close;
  Except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage(' No se gravo el Numero de Operación');
    spNumeroOPFD.Close;
  end;
end;

procedure TFormNumeroOperacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormNumeroOperacion.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormNumeroOperacion.FormDestroy(Sender: TObject);
begin
  FormNumeroOperacion:=nil;
end;

procedure TFormNumeroOperacion.FormShow(Sender: TObject);
begin
  edAnio.Text  := FAnio;
  edNumero.Text:= FNumero;
  edNumero.SetFocus;
end;

end.
