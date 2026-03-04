unit UConfiguracionNotaCambio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, StdCtrls, Mask, JvExMask, JvToolEdit, ExtCtrls,
  JvExControls, JvGradient, Buttons,IniFiles, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormConfiguracionNotaCambio = class(TForm)
    btCerrar: TBitBtn;
    pnDetalleNC: TPanel;
    Label1: TLabel;
    lb1: TLabel;
    lb2: TLabel;
    ceCodigo: TJvComboEdit;
    edDetalle: TEdit;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ceCodigoButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ceCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FCodigo:String;
    FDetalle:String;
    { Private declarations }
  public
    NotaCambioIni   : TIniFile;
  published
    property Codigo:String  read FCodigo write FCodigo;
    property Detalle:String  read FDetalle write FDetalle;
    { Public declarations }
  end;

var
  FormConfiguracionNotaCambio: TFormConfiguracionNotaCambio;

implementation

uses UDMain_FD, UBuscadorArticulos;

{$R *.dfm}

procedure TFormConfiguracionNotaCambio.ceCodigoButtonClick(Sender: TObject);
begin
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
      //FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1:=5;
  FormBuscadorArticulos.Param2:=5;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    begin
      QStock.Close;
      QStock.ParamByName('codigo').Value:=FormBuscadorArticulos.Codigo;
      QStock.Open;
      if QStock.IsEmpty then
        begin
           ceCodigo.Text:='';edDetalle.Text:='';
        end
      else
        begin
          ceCodigo.Text  := QStockCODIGO_STK.Value;
          edDetalle.Text := QStockDETALLE_STK.Value;
        end;
      QStock.Close;
    end;
end;

procedure TFormConfiguracionNotaCambio.ceCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((Key=VK_DELETE) or (key=VK_BACK)) then
    begin
      ceCodigo.Clear;
      edDetalle.Clear;
    end;
  
end;

procedure TFormConfiguracionNotaCambio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMMain_FD.UsuarioActivo<>'' Then
    NotaCambioIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_NotaCambio.ini')
  else
    NotaCambioIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_NotaCambio.ini');
  //*************************************************************
  NotaCambioIni.WriteString('codigo','codigo',ceCodigo.Text);
  NotaCambioIni.WriteString('codigo','detalle',edDetalle.Text);

  NotaCambioIni.Free;
  Action:=cafree;
end;

procedure TFormConfiguracionNotaCambio.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  ceCodigo.Text:=FCodigo;
  edDetalle.Text:=FDetalle;
end;

procedure TFormConfiguracionNotaCambio.FormDestroy(Sender: TObject);
begin
 FormConfiguracionNotaCambio:=nil;
end;

procedure TFormConfiguracionNotaCambio.FormShow(Sender: TObject);
begin
  ceCodigo.Text :=FCodigo;
  edDetalle.Text:=FDetalle;
end;

end.
