unit UCantidadEtiquetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, JvExMask, JvToolEdit, JvBaseEdits, StdCtrls, Buttons,
  JvExControls, JvGradient, ExtCtrls;

type
  TFormCantidadEtiquetas = class(TForm)
    pnPrincipal: TPanel;
    pnArticulo: TPanel;
    pnPie: TPanel;
    pnBoton: TPanel;
    JvGradient1: TJvGradient;
    edDetalle: TEdit;
    edCodigo: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edCantidad: TJvCalcEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    FCodigo:String;
    FDetalle:String;
    FCantidad:Integer;
  public
    { Public declarations }
  published
    property Codigo:String read FCodigo write FCodigo;
    property Detalle:String read FDetalle write FDetalle;
    property Cantidad:integer read FCantidad write FCantidad;

  end;

var
  FormCantidadEtiquetas: TFormCantidadEtiquetas;

implementation

{$R *.dfm}

procedure TFormCantidadEtiquetas.BitBtn1Click(Sender: TObject);
begin
  FCantidad:=edCantidad.AsInteger;
end;

procedure TFormCantidadEtiquetas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormCantidadEtiquetas.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormCantidadEtiquetas.FormDestroy(Sender: TObject);
begin
  FormCantidadEtiquetas:=nil;
end;

procedure TFormCantidadEtiquetas.FormShow(Sender: TObject);
begin
  edCodigo.Text   := FCodigo;
  edDetalle.Text  := FDetalle;
  edCantidad.Value:= 1;
  edCantidad.SetFocus;
end;

end.
