unit UAnulacionOProduccion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TFormAnulacionOProduccion = class(TForm)
    Panel1: TPanel;
    edMotivo: TEdit;
    btCancelar: TBitBtn;
    btOk: TBitBtn;
    QAnulacion: TFDQuery;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
    FId:Integer;
  public
    { Public declarations }
  published
    Property Id:Integer read FId write FId;
  end;

var
  FormAnulacionOProduccion: TFormAnulacionOProduccion;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormAnulacionOProduccion.btOkClick(Sender: TObject);
begin
  QAnulacion.Close;
  QAnulacion.ParamByName('Id').Value  := FId;
  QAnulacion.ParamByName('Obs').Value := edMotivo.Text;
  QAnulacion.ExecSQL;
  QAnulacion.Close;

end;

procedure TFormAnulacionOProduccion.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormAnulacionOProduccion.FormDestroy(Sender: TObject);
begin
  FormAnulacionOProduccion:=nil;
end;

end.
