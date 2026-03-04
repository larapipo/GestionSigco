unit ULoteSeriales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, JvExMask, JvToolEdit, JvMaskEdit, StdCtrls, JvExControls,
  JvGradient, Buttons, ExtCtrls;

type
  TFormLoteSeriales = class(TForm)
    pnBase: TPanel;
    pnPie: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    JvGradient1: TJvGradient;
    Label1: TLabel;
    Label2: TLabel;
    EdSerie: TEdit;
    edCantidad: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FSerial:String;
    FCantidad:Integer;
  public
    { Public declarations }
  published
    property Serial  :String read FSerial Write FSerial;
    property Cantidad:Integer read FCantidad Write FCantidad;
  end;

var
  FormLoteSeriales: TFormLoteSeriales;

implementation

{$R *.dfm}

procedure TFormLoteSeriales.BitBtn1Click(Sender: TObject);
begin
  FSerial   := EdSerie.Text;
  FCantidad := StrToInt(edCantidad.Text);
end;

procedure TFormLoteSeriales.BitBtn2Click(Sender: TObject);
begin
  FSerial   := '';
  FCantidad := -1;
end;

procedure TFormLoteSeriales.FormCreate(Sender: TObject);
begin
  AutoSize:=true;
end;

procedure TFormLoteSeriales.FormDestroy(Sender: TObject);
begin
  FormLoteSeriales:=nil;
end;

end.
