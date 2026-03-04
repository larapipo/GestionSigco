unit UABMLineaNotaVta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Mask,   
  JvExControls, JvGradient, Buttons, JvExMask, JvToolEdit, JvMaskEdit,
  JvExStdCtrls, JvEdit, JvValidateEdit, DB, FMTBcd, SqlExpr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormABMLineaNotavta = class(TForm)
    pnPrincipal: TPanel;
    pn1: TPanel;
    JvGradient1: TJvGradient;
    lb1: TLabel;
    lb2: TLabel;
    lb3: TLabel;
    lb4: TLabel;
    bt1: TBitBtn;
    bt2: TBitBtn;
    edDetalle: TEdit;
    edCantidad: TJvValidateEdit;
    edimporte: TJvValidateEdit;
    ceCodigo: TJvComboEdit;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    QStockPRECIO: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bt1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ceCodigoButtonClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ceCodigoKeyPress(Sender: TObject; var Key: Char);
  private
    FCodigo:String;
    FCantidad:Real;
    FPrecio:Real;
    FDetalle:string;
    Fmodo:string;
    FLista:Integer;
    { Private declarations }
  public
    { Public declarations }
  published
    property Codigo:string read FCodigo write FCodigo;
    property Detalle:string read FDetalle write FDetalle;
    property Cantidad:Real read FCantidad write FCantidad;
    property Precio:Real read FPrecio write FPrecio;
    property Modo:String read FModo write FModo;
    property Lista:Integer read FLista write FLista;

  end;

var
  FormABMLineaNotavta: TFormABMLineaNotavta;

implementation

uses UBuscadorArticulos, DMNotaVenta, UDMain_FD;

{$R *.dfm}

procedure TFormABMLineaNotavta.bt1Click(Sender: TObject);
var Aux1,Aux2:string;
begin
  Aux1:=edCantidad.Text;
  Aux2:=edimporte.Text;
  while Pos(',',Aux1)<>0 do
    Delete (Aux1,Pos(',',Aux1),1);
  while Pos(',',Aux2)<>0 do
    Delete (Aux2,Pos(',',Aux2),1);

  FDetalle  := edDetalle.Text;
  FCodigo   := ceCodigo.Text;
  FCantidad := StrToFloat( Aux1);
  FPrecio   := StrToFloat( Aux2);

end;

procedure TFormABMLineaNotavta.ceCodigoButtonClick(Sender: TObject);
begin
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
      //FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1:=1;
  FormBuscadorArticulos.Param2:=3;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;
  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    begin
      QStock.Close;
      QStock.ParamByName('codigo').Value:=FormBuscadorArticulos.Codigo;
      QStock.ParamByName('lista').Value :=FLista;
      QStock.Open;
      if QStock.IsEmpty then
        begin
           FCodigo:='';FDetalle:='';
           ceCodigo.Text:='';edDetalle.Text:='';
        end
      else
        begin
          ceCodigo.Text  := QStockCODIGO_STK.Value;
          edDetalle.Text := QStockDETALLE_STK.Value;
          edimporte.Text := FormatFloat(',0.00',QStockPRECIO.AsFloat);
          FCodigo        := ceCodigo.Text;
          FDetalle       := edDetalle.Text;
          edCantidad.SetFocus;

        end;
      QStock.Close;
    end;

end;

procedure TFormABMLineaNotavta.ceCodigoKeyPress(Sender: TObject; var Key: Char);
var s:String;
begin
 IF Key = #13 THEN
    BEGIN
      Key:=#0;
      
      s := ceCodigo.Text;

      if DMMain_FD.JustificaCodigo='D' Then
        S:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S)) + S
      else
        if DMMain_FD.JustificaCodigo='I' Then
          S:=S+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S));

      ceCodigo.Text:= S;

      QStock.Close;
      QStock.ParamByName('codigo').Value := S;
      QStock.ParamByName('lista').Value  := FLista;
      QStock.Open;
      if QStock.IsEmpty then
        begin
           FCodigo  :='';
           FDetalle :='';
           ceCodigo.Text:='';edDetalle.Text:='';
           ceCodigo.SetFocus;
        end
      else
        begin
          ceCodigo.Text  := QStockCODIGO_STK.Value;
          edDetalle.Text := QStockDETALLE_STK.Value;
          edimporte.Text := FormatFloat(',0.00',QStockPRECIO.AsFloat);
          FCodigo        := ceCodigo.Text;
          FDetalle       := edDetalle.Text;
          edCantidad.SetFocus;
        end;

      QStock.Close;
    end;

end;

procedure TFormABMLineaNotavta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormABMLineaNotavta.FormCreate(Sender: TObject);
begin
 AutoSize:=True;
 end;

procedure TFormABMLineaNotavta.FormDestroy(Sender: TObject);
begin
  FormABMLineaNotavta:=nil;
end;

procedure TFormABMLineaNotavta.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) and
    Not (ActiveControl is TJvValidateEdit) and
    Not (ActiveControl is TJvComboEdit)
  then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;

end;

procedure TFormABMLineaNotavta.FormShow(Sender: TObject);
begin
  edDetalle.Text    := FDetalle;
  ceCodigo.Text     := FCodigo;
  edcantidad.Text   := FloatToStr(FCantidad);
  edImporte.Text    := FloatToStr(FPrecio);
  edDetalle.Enabled := Modo='A';
  ceCodigo.Enabled  := Modo='A';
  if ceCodigo.Enabled then
    ceCodigo.SetFocus
  else
    edcantidad.SetFocus;
  if VarIsNull(FLista) then
    FLista:=1; 
end;

end.