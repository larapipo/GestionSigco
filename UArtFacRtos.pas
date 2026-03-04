unit UArtFacRtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, StdCtrls, Mask, JvExMask, JvToolEdit, ExtCtrls,
  Buttons, JvExControls, JvGradient, JvExExtCtrls, JvExtComponent, JvPanel,IniFiles,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormActFacturacionRtos = class(TForm)
    pnConfiguracion: TJvPanel;
    JvGradient1: TJvGradient;
    JvGradient: TJvGradient;
    btCerrar: TBitBtn;
    pnDetalleNC: TPanel;
    Label1: TLabel;
    lb1: TLabel;
    lb2: TLabel;
    ceExento: TJvComboEdit;
    edExento: TEdit;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ceGravados: TJvComboEdit;
    edGravados: TEdit;
    procedure ceGravadosButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ceExentoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    RtosIni   : TIniFile;
  end;

var
  FormActFacturacionRtos: TFormActFacturacionRtos;

implementation

uses UBuscadorArticulos,UDMain_FD;

{$R *.dfm}

procedure TFormActFacturacionRtos.ceExentoButtonClick(Sender: TObject);
begin
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
      //FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
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
           ceExento.Text:='';edGravados.Text:='';
        end
      else
        begin
          ceExento.Text  := QStockCODIGO_STK.Value;
          edExento.Text := QStockDETALLE_STK.Value;
        end;
      QStock.Close;
    end;

end;

procedure TFormActFacturacionRtos.ceGravadosButtonClick(Sender: TObject);
begin
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
      //FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
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
           ceGravados.Text:='';edGravados.Text:='';
        end
      else
        begin
          ceGravados.Text  := QStockCODIGO_STK.Value;
          edGravados.Text := QStockDETALLE_STK.Value;
        end;
      QStock.Close;
    end;

end;

procedure TFormActFacturacionRtos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  RtosIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'FacturaRtos.ini');
  //*************************************************************
  RtosIni.WriteString('gravados','codigo',ceGravados.Text);
  RtosIni.WriteString('gravados','detalle',edGravados.Text);
  RtosIni.WriteString('exento','codigo',ceExento.Text);
  RtosIni.WriteString('exento','detalle',edExento.Text);
  RtosIni.Free;
  Action:=cafree;

end;

procedure TFormActFacturacionRtos.FormCreate(Sender: TObject);
begin
  RtosIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'FacturaRtos.ini');
  //*************************************************************
  ceGravados.Text:= RtosIni.ReadString('gravados','codigo','');
  edGravados.Text:= RtosIni.ReadString('gravados','detalle','');
  ceExento.Text  := RtosIni.ReadString('exento','codigo','');
  edExento.Text:= RtosIni.ReadString('exento','detalle','');
  RtosIni.Free;
  AutoSize:=True;
end;

procedure TFormActFacturacionRtos.FormDestroy(Sender: TObject);
begin
  FormActFacturacionRtos:=nil;
end;

end.
