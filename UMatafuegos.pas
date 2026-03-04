unit UMatafuegos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, JvBaseEdits, Vcl.WinXPickers, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFormMatafuego = class(TForm)
    pnCabecera: TPanel;
    pnPie: TPanel;
    QMatafuego: TFDQuery;
    QMatafuegoID: TIntegerField;
    QMatafuegoNUMERO_MATAFUEGO: TStringField;
    QMatafuegoAGENTE: TStringField;
    QMatafuegoCAPACIDAD: TFloatField;
    QMatafuegoFECHA_FABICACION: TSQLTimeStampField;
    QMatafuegoMARCA: TStringField;
    edNumero: TEdit;
    edAgente: TEdit;
    edMarca: TEdit;
    edFechaFabricacion: TDatePicker;
    edCapacidad: TJvCalcEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    spAltaMatafuego: TFDStoredProc;
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    FId       : Integer;
    FNumero   : String;
    FAgente   : String;
    FCapacidad: Real;
    FFechaFab : TDateTime;
    FMarca    : String;
    { Private declarations }

  public
    { Public declarations }
  published
    property id:integer read FId write FId;
    property Numero:String read FNumero write FNumero;
    property Agente:String read FAgente write FAgente;
    property Capacidad:Real read FCapacidad write FCapacidad;
    property FechaFab:TDateTime read FFechaFab write FFechaFab;
    property Marca:string read FMarca write FMarca;

  end;

var
  FormMatafuego: TFormMatafuego;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormMatafuego.btOkClick(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spAltaMatafuego.Close;
    spAltaMatafuego.ParamByName('id_matafuego').Value     :=FId;
    spAltaMatafuego.ParamByName('Numero').Value           :=edNumero.Text;
    spAltaMatafuego.ParamByName('Agente').Value           :=edAgente.Text;
    spAltaMatafuego.ParamByName('Capacidad').Value        :=edCapacidad.Value;
    spAltaMatafuego.ParamByName('FechaFabricacion').Value :=edFechaFabricacion.Date;
    spAltaMatafuego.ParamByName('Marca').Value            :=edMarca.Text;
    spAltaMatafuego.ExecProc;
    FId:=spAltaMatafuego.ParamByName('id').Value;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    FId:=-1;

  end;
  spAltaMatafuego.Close;
end;

procedure TFormMatafuego.btCancelarClick(Sender: TObject);
begin
  FId:=-1;
end;

procedure TFormMatafuego.FormDestroy(Sender: TObject);
begin
  FormMatafuego:=nil;
end;

procedure TFormMatafuego.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
  if Key = #27 then
    btCancelar.Click;
end;

procedure TFormMatafuego.FormShow(Sender: TObject);
begin
  edNumero.Text           := FNumero;
  edAgente.Text           := FAgente;
  edMarca.Text            := FMarca;
  edFechaFabricacion.Date := FFechaFab;
  edCapacidad.Value       := FCapacidad;
  if FId<=0 then FId:=-1;

end;

end.


