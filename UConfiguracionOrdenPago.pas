unit UConfiguracionOrdenPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,IniFiles, StdCtrls, Buttons, CheckLst, JvExControls, JvGradient,
  ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, FMTBcd, DB, SqlExpr, Mask,
  JvExMask, JvToolEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormConfiguracionOPago = class(TForm)
    pnConfiguracion: TJvPanel;
    JvGradient3: TJvGradient;
    JvGradient7: TJvGradient;
    chklstSecuencia: TCheckListBox;
    btCerrar: TBitBtn;
    pnDetalleNC: TPanel;
    JvGradient: TJvGradient;
    Label1: TLabel;
    lb1: TLabel;
    ceCodigo: TJvComboEdit;
    lb2: TLabel;
    edDetalle: TEdit;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    procedure btCerrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ceCodigoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    OPagoIni   : TIniFile;
    { Public declarations }
  end;

var
  FormConfiguracionOPago: TFormConfiguracionOPago;

implementation

uses UDMain_FD, UBuscadorArticulos;
{$R *.dfm}

procedure TFormConfiguracionOPago.btCerrarClick(Sender: TObject);
begin
 Close;
end;

procedure TFormConfiguracionOPago.ceCodigoButtonClick(Sender: TObject);
begin
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
      //FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1      := 5;
  FormBuscadorArticulos.Param2      := 5;
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

procedure TFormConfiguracionOPago.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMMain_FD.UsuarioActivo<>'' Then
    OPagoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_OPago.ini')
  else
    OPagoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_OPago.ini');
  //*************************************************************
  OPagoIni.WriteBool('filtro','filtro',chklstSecuencia.Checked[0]);
  OPagoIni.WriteString('codigo','codigo',ceCodigo.Text);
  OPagoIni.WriteString('codigo','detalle',edDetalle.Text);

  OPagoIni.Free;
  Action:=cafree;
end;

procedure TFormConfiguracionOPago.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  BringToFront;
end;

procedure TFormConfiguracionOPago.FormDestroy(Sender: TObject);
begin
  FormConfiguracionOPago:=nil;
end;

procedure TFormConfiguracionOPago.FormShow(Sender: TObject);
begin
  if DMMain_FD.UsuarioActivo<>'' Then
    OPagoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_OPago.ini')
  else
    OPagoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_OPago.ini');
 //*************************************************************
  chklstSecuencia.Checked[0]:=OPagoIni.ReadBool('filtro','filtro',False);
  ceCodigo.Text             :=OPagoIni.ReadString('codigo','codigo','');
  edDetalle.Text            :=OPagoIni.ReadString('codigo','detalle','');
  OPagoIni.Free;
  BringToFront;
end;

end.
