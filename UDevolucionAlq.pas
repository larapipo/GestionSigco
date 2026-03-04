unit UDevolucionAlq;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  JvExMask, JvToolEdit, JvDBControls, Vcl.ExtCtrls, Data.DB, Vcl.ComCtrls,
  JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker;

type
  TFormDevolucionAlq = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    JvDBDateTimePicker1: TJvDBDateTimePicker;
    DSBase: TDataSource;
    procedure btOkClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
   // FFecha_Devol: TDateTime;

  public
    { Public declarations }
  published
    //property fecha_devolucion: TDateTime read  FFecha_Devol write FFecha_Devol;
  end;

var
  FormDevolucionAlq: TFormDevolucionAlq;

implementation
Uses
  URemitos, DMRemitos;
{$R *.dfm}

procedure TFormDevolucionAlq.btCancelClick(Sender: TObject);
begin
  ModalResult :=  mrCancel;
 // Close;
end;

procedure TFormDevolucionAlq.btOkClick(Sender: TObject);
begin
//  FFecha_DEVOL  :=  dbFechaDevol.DateTime;
  ModalResult :=  mrOK;
  //Close;
end;

procedure TFormDevolucionAlq.FormCreate(Sender: TObject);
begin
  //FFecha_Devol  :=  now;
end;

procedure TFormDevolucionAlq.FormShow(Sender: TObject);
begin
 { try
    dbFechaDevol.DateTime :=  FFecha_Devol;
  except
    dbFechaDevol.DateTime := now;
  end;                               }
end;

end.
