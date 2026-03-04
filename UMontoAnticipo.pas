unit UMontoAnticipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, JvBaseEdits, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFormMontoAnticipo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edImporte: TJvCalcEdit;
    edImportePorcentaje: TJvCalcEdit;
    edPorcentaje: TJvCalcEdit;
    edTotal: TJvCalcEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure edPorcentajeChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    FImporte:Real;
    FPorcentaje:Real;
    FImpPorcentaje:Real;
    FTotal:Real;
  public
    { Public declarations }
  published
    property Importe:Real  read fimporte  write FImporte;
    property Porcentaje:Real  read FPorcentaje  write FPorcentaje;
    property ImpPorcentaje:Real  read FImpPorcentaje  write FImpPorcentaje;
    property Total:Real  read FTotal  write FTotal;
  end;

var
  FormMontoAnticipo: TFormMontoAnticipo;

implementation

{$R *.dfm}

procedure TFormMontoAnticipo.BitBtn2Click(Sender: TObject);
begin
  FImporte       := edImporte.Value;
  FPorcentaje    := edPorcentaje.Value;
  FImpPorcentaje := edImportePorcentaje.Value;
  FTotal         := edTotal.Value;
end;

procedure TFormMontoAnticipo.FormDestroy(Sender: TObject);
begin
  FormMontoAnticipo:=nil;
end;

procedure TFormMontoAnticipo.FormShow(Sender: TObject);
begin
  edImporte.Value    := FImporte;
  edPorcentaje.Value := FPorcentaje;
  edImportePorcentaje.Value    := FImpPorcentaje;
  edTotal.Value      := FTotal;
end;

procedure TFormMontoAnticipo.edPorcentajeChange(Sender: TObject);
begin
  edImportePorcentaje.Value := edImporte.Value * edPorcentaje.Value * 0.01;
  edTotal.Value   := edImporte.Value - edImportePorcentaje.Value;
end;

end.
