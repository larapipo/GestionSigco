unit UControlDuplicadoProduccion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ToolPanels, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits, Vcl.Buttons;

type
  TFormControlDuplicadoProduccion = class(TForm)
    Panel1: TPanel;
    edDisponible: TJvCalcEdit;
    edASignado: TJvCalcEdit;
    Label1: TLabel;
    Label2: TLabel;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    procedure btOkClick(Sender: TObject);
    procedure edASignadoExit(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FDisponible :Real;
    FAsignado   :Real;
    FDifCantidad:Real;
  public
    { Public declarations }
  published
    property Disponible:Real read FDisponible write FDisponible;
    property Asigando:Real read FAsignado write FAsignado;
    property DifCantidad:Real read FDifCantidad write FDifCantidad;

  end;

var
  FormControlDuplicadoProduccion: TFormControlDuplicadoProduccion;

implementation

{$R *.dfm}

procedure TFormControlDuplicadoProduccion.btCancelarClick(Sender: TObject);
begin
  FAsignado:=0;
end;

procedure TFormControlDuplicadoProduccion.btOkClick(Sender: TObject);
begin
  FAsignado   := edASignado.Value;
  FDifCantidad:= edDisponible.Value-edASignado.Value;
end;

procedure TFormControlDuplicadoProduccion.edASignadoExit(Sender: TObject);
begin
  if edASignado.Value>edDisponible.Value then
    edASignado.Value:=edDisponible.Value;
end;

procedure TFormControlDuplicadoProduccion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormControlDuplicadoProduccion.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormControlDuplicadoProduccion.FormDestroy(Sender: TObject);
begin
  FormControlDuplicadoProduccion:=nil;
end;

procedure TFormControlDuplicadoProduccion.FormShow(Sender: TObject);
begin
  edDisponible.Value:=FAsignado;
  edASignado.Value  :=FAsignado;
  BringToFront;

end;

end.
