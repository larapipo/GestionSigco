unit UDetalleCarnes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, JvExControls, JvGradient, Buttons,
  JvLabel, JvDBControls,db;

type
  TFormMovimientosCarnes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    edTropa: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label1: TLabel;
    edMedia1: TDBEdit;
    edMedia2: TDBEdit;
    edMedia4: TDBEdit;
    edMedia3: TDBEdit;
    edMedia6: TDBEdit;
    edMedia5: TDBEdit;
    edMedia7: TDBEdit;
    edMedia8: TDBEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ntOk: TBitBtn;
    btCancelar: TBitBtn;
    JvGradient1: TJvGradient;
    Label7: TLabel;
    Panel3: TPanel;
    Label6: TLabel;
    edKilos: TDBEdit;
    DBStatusLabel1: TJvDBStatusLabel;
    DSMov: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ntOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FDetalle:String;
  public
    { Public declarations }
  published
    property Detalle:String read FDetalle write FDetalle;
  end;

var
  FormMovimientosCarnes: TFormMovimientosCarnes;

implementation

uses DMVenta,UFactura_2, UFacturaCtdo_2, DMVentaCtdo;
{$R *.dfm}

procedure TFormMovimientosCarnes.ntOkClick(Sender: TObject);
begin
  DSMov.DataSet.Post;
  FDetalle:='Tropa.:'+ DSMov.DataSet.FieldByName('NRO_TROPA').AsString+'-'+DSMov.DataSet.FieldByName('CLASIFICACION').AsString+' ';
  if ((DSMov.DataSet.FieldByName('MEDIA_1').AsString<>'') and (DSMov.DataSet.FieldByName('MEDIA_1').Value>0)) then
    FDetalle:= FDetalle + Copy('   ',1,3-Length(DSMov.DataSet.FieldByName('MEDIA_1').AsString))+DSMov.DataSet.FieldByName('MEDIA_1').AsString+' ';

  if ((DSMov.DataSet.FieldByName('MEDIA_2').AsString<>'') and (DSMov.DataSet.FieldByName('MEDIA_2').Value>0)) then
    FDetalle:= FDetalle + Copy('   ',1,3-Length(DSMov.DataSet.FieldByName('MEDIA_2').AsString))+DSMov.DataSet.FieldByName('MEDIA_2').AsString+' ';

  if ((DSMov.DataSet.FieldByName('MEDIA_3').AsString<>'') and (DSMov.DataSet.FieldByName('MEDIA_3').Value>0)) then
    FDetalle:= FDetalle + Copy('   ',1,3-Length(DSMov.DataSet.FieldByName('MEDIA_3').AsString))+DSMov.DataSet.FieldByName('MEDIA_3').AsString+' ';

  if ((DSMov.DataSet.FieldByName('MEDIA_4').AsString<>'') and (DSMov.DataSet.FieldByName('MEDIA_4').Value>0)) then
    FDetalle:= FDetalle + Copy('   ',1,3-Length(DSMov.DataSet.FieldByName('MEDIA_4').AsString))+DSMov.DataSet.FieldByName('MEDIA_4').AsString+' ';

  if ((DSMov.DataSet.FieldByName('MEDIA_5').AsString<>'') and (DSMov.DataSet.FieldByName('MEDIA_5').Value>0)) then
    FDetalle:= FDetalle + Copy('   ',1,3-Length(DSMov.DataSet.FieldByName('MEDIA_5').AsString))+DSMov.DataSet.FieldByName('MEDIA_5').AsString+' ';

  if ((DSMov.DataSet.FieldByName('MEDIA_6').AsString<>'') and (DSMov.DataSet.FieldByName('MEDIA_6').Value>0)) then
    FDetalle:= FDetalle + Copy('   ',1,3-Length(DSMov.DataSet.FieldByName('MEDIA_6').AsString))+DSMov.DataSet.FieldByName('MEDIA_6').AsString+' ';

  if ((DSMov.DataSet.FieldByName('MEDIA_7').AsString<>'') and (DSMov.DataSet.FieldByName('MEDIA_7').Value>0)) then
    FDetalle:= FDetalle + Copy('   ',1,3-Length(DSMov.DataSet.FieldByName('MEDIA_7').AsString))+DSMov.DataSet.FieldByName('MEDIA_7').AsString+' ';

  if ((DSMov.DataSet.FieldByName('MEDIA_8').AsString<>'') and (DSMov.DataSet.FieldByName('MEDIA_8').Value>0)) then
    FDetalle:= FDetalle + Copy('   ',1,3-Length(DSMov.DataSet.FieldByName('MEDIA_8').AsString))+DSMov.DataSet.FieldByName('MEDIA_8').AsString+' ';


  if (Owner = FormCpbte_2) then
    begin
      if DatosVentas.CDSVentaDet.State = dsBrowse then
        DatosVentas.CDSVentaDet.Edit;
      DatosVentas.CDSVentaDetDETALLE.Value:=FDetalle;
      DatosVentas.CDSVentaDetCantidadSetText(DatosVentas.CDSVentaDetCantidad,DatosVentas.CDSMov_CarnesT_KILOS.AsString);
      FormCpbte_2.DBGrillaDetalle.SelectedIndex:=6;
    end
  else
    if (Owner = FormCpbteCtdo_2) then
      begin
        if DatosVentasCtdo.CDSVentaDet.State = dsBrowse then
          DatosVentasCtdo.CDSVentaDet.Edit;
        DatosVentasCtdo.CDSVentaDetDETALLE.Value:=FDetalle;
        DatosVentasCtdo.CDSVentaDetCantidadSetText(DatosVentasCtdo.CDSVentaDetCantidad,DatosVentasCtdo.CDSMov_CarnesT_KILOS.AsString);
        FormCpbteCtdo_2.DBGrillaDetalle.SelectedIndex:=6;
    end;


  FormMovimientosCarnes.Visible := False;
end;

procedure TFormMovimientosCarnes.btCancelarClick(Sender: TObject);
begin
  DSMov.DataSet.Cancel;
  FormMovimientosCarnes.Visible:=False;
end;

procedure TFormMovimientosCarnes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormMovimientosCarnes.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormMovimientosCarnes.FormDestroy(Sender: TObject);
begin
  FormMovimientosCarnes:=nil;
end;

procedure TFormMovimientosCarnes.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) and
    (not (ActiveControl is Tbutton)) then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
  if Key = #27 then
    if btCancelar.Enabled Then
      btCancelar.Click;
end;

procedure TFormMovimientosCarnes.FormShow(Sender: TObject);
begin
  FDetalle:='';
  if (Owner = FormCpbte_2) then
    DSMov.DataSet:=DatosVentas.CDSMov_Carnes
  else
    if (Owner = FormCpbteCtdo_2) then
      DSMov.DataSet:=DatosVentasCtdo.CDSMov_Carnes;

  if DSMov.DataSet.IsEmpty then
     DSMov.DataSet.Insert
   else
     DSMov.DataSet.DataSource.Edit;
  edTropa.SetFocus;
  edTropa.SelectAll;
end;

end.

