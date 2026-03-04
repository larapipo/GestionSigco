UNIT ComposicionPrecio;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, db, Mask, DBCtrls, Librerias;

TYPE
  TFormComposicionPrecio = CLASS(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    edtGravado: TEdit;
    edtExento: TEdit;
    edtImpuesto: TEdit;
    Label4: TLabel;
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE BitBtn1Click(Sender: TObject);
    PROCEDURE FormKeyPress(Sender: TObject; VAR Key: Char);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE FormShow(Sender: TObject);
    PROCEDURE FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    ValorGravado: Real;
    ValorExento: Real;
    ValorImpuesto: Real;
    { Public declarations }
  END;

VAR
  FormComposicionPrecio: TFormComposicionPrecio;

IMPLEMENTATION

{$R *.DFM}

PROCEDURE TFormComposicionPrecio.FormCreate(Sender: TObject);
BEGIN
  AutoSize := True;
END;

PROCEDURE TFormComposicionPrecio.BitBtn1Click(Sender: TObject);
BEGIN
  ValorGravado  := StrToFloat(edtGravado.Text);
  ValorExento   := StrToFloat(edtExento.Text);
  ValorImpuesto := StrToFloat(edtImpuesto.Text);
  Close;
END;

PROCEDURE TFormComposicionPrecio.FormKeyPress(Sender: TObject;
  VAR Key: Char);
BEGIN
  IF (Key = #13) THEN
    //  and (Not(ActiveControl is Tbutton))
    BEGIN
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    END;
  IF Key = #27 THEN
    Close;
END;

PROCEDURE TFormComposicionPrecio.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  Action := caFree;
END;

PROCEDURE TFormComposicionPrecio.FormShow(Sender: TObject);
BEGIN
  edtGravado.Text  := FloatToStr(ValorGravado);
  edtExento.Text   := FloatToStr(ValorExento);
  edtImpuesto.Text := FloatToStr(Valorimpuesto);
  edtGravado.SetFocus;
  //  CurrencyEdit1.SelectAll;
END;

PROCEDURE TFormComposicionPrecio.FormDestroy(Sender: TObject);
BEGIN
  FormComposicionPrecio := NIL;
END;

END.