unit UIngresoCantNV;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, DB,
  StdCtrls, Buttons, ExtCtrls, JvMaskEdit, JvDBFindEdit;

type
  TFormIngresoCantidad = class(TForm)
    pnBase: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btCerrar: TBitBtn;
    dbePedido: TJvDBCalcEdit;
    dbeFaltante: TJvDBCalcEdit;
    dbeLote: TDBEdit;
    Label6: TDBText;
    btOk: TBitBtn;
    dbeEntrega: TDBEdit;
    edCodigoEAN: TEdit;
    dbeCodigo: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edCodigoEANKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormIngresoCantidad: TFormIngresoCantidad;

implementation

uses DMNotaVenta;
{$R *.dfm}

procedure TFormIngresoCantidad.btOkClick(Sender: TObject);
begin
  if DatosNotaVenta.CDSNVDet.State<>dsBrowse then
    DatosNotaVenta.CDSNVDet.Post;
  edCodigoEAN.SetFocus;
  edCodigoEAN.SelectAll;
end;

procedure TFormIngresoCantidad.edCodigoEANKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      Key:=#0;
      if DatosNotaVenta.CDSNVDet.Locate('EAN',edCodigoEAN.Text,[])=False Then
        begin
          DatosNotaVenta.QBuscaCodigoBarra.Close;
          DatosNotaVenta.QBuscaCodigoBarra.ParamByName('codigo').Value:=edCodigoEAN.Text;
          DatosNotaVenta.QBuscaCodigoBarra.Open;
          if DatosNotaVenta.CDSNVDet.Locate('CODIGOARTICULO',DatosNotaVenta.QBuscaCodigoBarra.Fields[0].AsString,[])=False Then
            ShowMessage('dato no encontrado');
          DatosNotaVenta.QBuscaCodigoBarra.Close;
          edCodigoEAN.SetFocus;
          edCodigoEAN.SelectAll;
        end
      else
        begin
          dbeEntrega.SetFocus;
          dbeEntrega.SelectAll;
        end;
    end;

end;

procedure TFormIngresoCantidad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caHide;
end;

procedure TFormIngresoCantidad.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormIngresoCantidad.FormDestroy(Sender: TObject);
begin
//  FormIngresoCantidad:=nil;
end;

procedure TFormIngresoCantidad.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) and
    (not (ActiveControl is Tbutton)) and
    (not (ActiveControl is TFrame)) and
    (not (ActiveControl is TEdit))
  then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
  if Key = #27 then
    Close;
end;

procedure TFormIngresoCantidad.FormShow(Sender: TObject);
begin
  edCodigoEAN.SetFocus;
  edCodigoEAN.SelectAll;
end;

end.
