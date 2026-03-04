unit UAvisoCambioPrecioCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExControls, JvGradient, ExtCtrls, JvExStdCtrls, JvEdit,
  JvValidateEdit, Buttons,IniFiles;

type
  TFormAvisoCambioPrecioCompra = class(TForm)
    pnPrincipal: TPanel;
    pn1: TPanel;
    JvGradient1: TJvGradient;
    edViejo: TJvValidateEdit;
    pn2: TPanel;
    JvGradient2: TJvGradient;
    edtNuevo: TJvValidateEdit;
    lb1: TLabel;
    lb2: TLabel;
    lbSignoFicha: TLabel;
    lb3: TLabel;
    lbSignoIngresado: TLabel;
    btYes: TBitBtn;
    btNo: TBitBtn;
    lb4: TLabel;
    lbDetalle: TLabel;
    edStock: TJvValidateEdit;
    edPonderado: TJvValidateEdit;
    Label1: TLabel;
    Label2: TLabel;
    chbPorPonderado: TCheckBox;
    Label3: TLabel;
    edAdicional: TJvValidateEdit;
    Label4: TLabel;
    btNinguno: TBitBtn;
    btTodos: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure chbPorPonderadoClick(Sender: TObject);
  private
    { Private declarations }
    FDetalle:string;
    FPrecioOld,FPrecioNew,FStock,FCostoPonderado,FAdicional:Real;
    FPorCostoPonderado:String;
    FMonedaStock,FMonedaCompra:string;
  public
    { Public declarations }
     ArchivoIni   :TIniFile;
  published
    property Detalle:String read FDetalle write FDetalle;
    property PrecioOld:Real read FPrecioOld write FPrecioOld;
    property PrecioNew:Real read FPrecioNew write FPrecioNew;
    property MonedaStock:String read FMonedaStock write FMonedaStock;
    property MonedaCompra:String read FMonedaCompra write FMonedaCompra;
    property Stock:Real read FStock write FStock;
    property CostoPonderado:Real read FCostoPonderado write FCostoPonderado;
    property Adicional:Real read FAdicional write FAdicional;
    property PorCostoPonderado:String read FPorCostoPonderado write FPorCostoPonderado;


  end;

var
  FormAvisoCambioPrecioCompra: TFormAvisoCambioPrecioCompra;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormAvisoCambioPrecioCompra.chbPorPonderadoClick(Sender: TObject);
begin
  if chbPorPonderado.Checked then
    FPorCostoPonderado:='S'
  else
    FPorCostoPonderado:='N';

end;

procedure TFormAvisoCambioPrecioCompra.FormActivate(Sender: TObject);
begin
  Show;
end;

procedure TFormAvisoCambioPrecioCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FAdicional  := edAdicional.Value;
  ArchivoIni  := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_CambioPrecio.ini');
  ArchivoIni.WriteBool('CambioPrecio', 'estado', chbPorPonderado.Checked);
  ArchivoIni.WriteFloat('CambioPrecio', 'adicional', edAdicional.Value);
  ArchivoIni.Free;
  Action:=caFree;

end;

procedure TFormAvisoCambioPrecioCompra.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  ArchivoIni  := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_CambioPrecio.ini');
  chbPorPonderado.Checked := ArchivoIni.ReadBool('CambioPrecio', 'estado', False);
  FAdicional              := ArchivoIni.ReadFloat('CambioPrecio', 'adicional', 0);
  ArchivoIni.Free;

end;

procedure TFormAvisoCambioPrecioCompra.FormDestroy(Sender: TObject);
begin
  formAvisocambioPrecioCompra:=nil;
end;

procedure TFormAvisoCambioPrecioCompra.FormShow(Sender: TObject);
begin
  edViejo.Value           :=FPrecioOld;
  edtNuevo.Value          :=FPrecioNew;
  chbPorPonderado.Checked :=False;
  lbSignoFicha.Caption    :=FMonedaStock;
  lbSignoIngresado.Caption:=FMonedaCompra;
  lbDetalle.Caption       :=FDetalle;
  FPorCostoPonderado      :='N';
  edStock.Value           :=FStock;
  edPonderado.Value       :=FCostoPonderado;
  edAdicional.SetFocus;
end;

end.
