unit UControlMesesGtia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, ExtCtrls, DB, Buttons, JvExControls, JvGradient;

type
  TFormControlGtia = class(TForm)
    pnPrincipal: TPanel;
    edTotal: TJvCalcEdit;
    edAdicional: TJvCalcEdit;
    edActual: TJvCalcEdit;
    GarantiaActual: TLabel;
    GarantiaAdicional: TLabel;
    GarantiaOtorgada: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Panel: TPanel;
    btCancelar: TBitBtn;
    btOk: TBitBtn;
    JvGradient: TJvGradient;
    JvGradien: TJvGradient;
    edValorAsegurado: TJvCalcEdit;
    Label3: TLabel;
    procedure edAdicionalChange(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    TMeses:Integer;
    TImporte:Real;
  published
    property Meses:Integer Read TMeses write TMeses;
    property Importe:Real  Read TImporte write TImporte;
  end;

var
  FormControlGtia: TFormControlGtia;

implementation

{$R *.dfm}

procedure TFormControlGtia.btCancelarClick(Sender: TObject);
begin
  Meses   := edActual.AsInteger;
  Importe := edValorAsegurado.Value;
end;

procedure TFormControlGtia.btOkClick(Sender: TObject);
begin
  edTotal.Value:=edActual.Value+edAdicional.Value;
  Meses   := edTotal.AsInteger;
  Importe := edValorAsegurado.Value;
end;

procedure TFormControlGtia.edAdicionalChange(Sender: TObject);
begin
  edTotal.Value:=edActual.Asinteger + edAdicional.AsInteger;
end;

procedure TFormControlGtia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormControlGtia.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormControlGtia.FormDestroy(Sender: TObject);
begin
  FormControlGtia:=nil;
end;

procedure TFormControlGtia.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) and
    (not (ActiveControl is Tbutton)) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
  if Key = #27 then
    btCancelarClick(Sender);
end;

procedure TFormControlGtia.FormShow(Sender: TObject);
begin
  edActual.Value         := TMeses;
  edTotal.Value          := edActual.Value+edAdicional.Value;
  edValorAsegurado.Value := TImporte;
  edAdicional.Value:=0;
  edAdicional.SetFocus;
  edAdicional.SelectAll;
end;

end.
