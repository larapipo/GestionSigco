unit UMuestraCuponTarjeta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, VCL.TMSFNCTypes,
  VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCRibbon, VCL.TMSFNCPageControl, VCL.TMSFNCTabSet, VCL.TMSFNCHTMLText,
  VCL.TMSFNCToolBar, VCL.TMSFNCCustomControl, AdvGridToolbar, AdvToolBar,
  AdvToolBarExt, AdvDBFormLayouter, AdvDBFormPanel, Vcl.Mask, AdvSpin, DBAdvSp,
  Vcl.StdCtrls, AdvEdit, DBAdvEd, Vcl.ComCtrls, AdvDateTimePicker,
  AdvDBDateTimePicker;

type
  TFormMuestraCuponTarjeta = class(TForm)
    pnPie: TPanel;
    QMovTarjeta: TFDQuery;
    DSMovTarjetas: TDataSource;
    QMovTarjetaID_MOV_TC: TIntegerField;
    QMovTarjetaID_CAJA: TIntegerField;
    QMovTarjetaID_MOV_CAJA: TIntegerField;
    QMovTarjetaID_FPAGO: TIntegerField;
    QMovTarjetaID_TC: TIntegerField;
    QMovTarjetaFECHA: TSQLTimeStampField;
    QMovTarjetaTITULAR: TStringField;
    QMovTarjetaCAN_CUOTAS: TIntegerField;
    QMovTarjetaN_DOCU: TStringField;
    QMovTarjetaUNIDADES: TFloatField;
    QMovTarjetaCOTIZACION: TFloatField;
    QMovTarjetaIMPORTE: TFloatField;
    QMovTarjetaOTROS: TStringField;
    QMovTarjetaMONEDA: TIntegerField;
    QMovTarjetaID_CUENTA_CAJA: TIntegerField;
    QMovTarjetaUNIDADES_NETO: TFloatField;
    QMovTarjetaIMPORTE_NETO: TFloatField;
    QMovTarjetaCOEFICIENTE: TFloatField;
    QMovTarjetaVALORCUOTA: TFloatField;
    QMovTarjetaIMPORTE_RECARGO: TFloatField;
    QMovTarjetaID_CUENTA_BANCO: TIntegerField;
    QMovTarjetaNRO_CUPON: TIntegerField;
    QMovTarjetaFECHA_ACREDITACION: TSQLTimeStampField;
    QMovTarjetaACREDITADA: TStringField;
    QMovTarjetaLOTE: TStringField;
    QMovTarjetaTERMINAL: TStringField;
    QMovTarjetaSALDO_IMPORTE: TFloatField;
    QMovTarjetaNRO_CUPON_2: TLargeintField;
    AdvDBFormBox1: TAdvDBFormBox;
    procedure FormShow(Sender: TObject);
    procedure QMovTarjetaLOTESetText(Sender: TField; const Text: string);
    procedure QMovTarjetaTERMINALSetText(Sender: TField; const Text: string);
  private
    FIdMov:Integer;
    { Private declarations }
  public
    { Public declarations }
  published
    property ID_Mov:Integer write FIdMov;
  end;

var
  FormMuestraCuponTarjeta: TFormMuestraCuponTarjeta;

implementation

{$R *.dfm}
uses UDMain_FD;
procedure TFormMuestraCuponTarjeta.FormShow(Sender: TObject);
begin
  QMovTarjeta.Close;
  QMovTarjeta.ParamByName('id_mov_tc').AsInteger:= FIdMov;
  QMovTarjeta.Open;
end;

procedure TFormMuestraCuponTarjeta.QMovTarjetaLOTESetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:= Copy('00000',1,5-Length(Trim(Text)))+Trim(Text);
//  Sender.AsString:=Text;
end;

procedure TFormMuestraCuponTarjeta.QMovTarjetaTERMINALSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:= Copy('000000000',1,8-Length(Trim(Text)))+Trim(Text);

end;

end.
