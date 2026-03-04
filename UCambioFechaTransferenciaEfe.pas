unit UCambioFechaTransferenciaEfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormCambioFechaTransferencia = class(TForm)
    Panel1: TPanel;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    Mcalendario: TMonthCalendar;
    QFecha: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
    FId   :Integer;
    FFecha:TDate;
  public
    { Public declarations }
    property Fecha:TDate read FFecha write FFecha;
    property Id:Integer read Fid write FId;
  end;

var
  FormCambioFechaTransferencia: TFormCambioFechaTransferencia;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormCambioFechaTransferencia.btOkClick(Sender: TObject);
begin
  QFecha.Close;
  QFecha.ParamByName('Fecha').AsDate:=Mcalendario.Date;
  QFecha.ParamByName('id').AsInteger    :=FId;
  QFecha.ExecSQL;
  QFecha.Close;
end;

procedure TFormCambioFechaTransferencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormCambioFechaTransferencia.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormCambioFechaTransferencia.FormDestroy(Sender: TObject);
begin
  FormCambioFechaTransferencia:=nil;
end;

procedure TFormCambioFechaTransferencia.FormShow(Sender: TObject);
begin
  Mcalendario.Date:=Fecha;
end;

end.
