unit URechazoRma;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, ComCtrls, ExtCtrls, JvExMask, JvToolEdit;

type
  TFormRechazoRMA = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    edNumero: TMaskEdit;
    btOk: TBitBtn;
    btCamcel: TBitBtn;
    edFecha: TJvDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCamcelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TFecha   :TDate;
    TNroCpbte:String;
  published
    property Fecha:TDate read TFecha write TFecha;
    property NroCpbte:String read TNroCpbte write TNroCpbte;
  end;

var
  FormRechazoRMA: TFormRechazoRMA;

implementation

{$R *.DFM}

procedure TFormRechazoRMA.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormRechazoRMA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormRechazoRMA.FormDestroy(Sender: TObject);
begin
  FormRechazoRMA:=nil;
end;

procedure TFormRechazoRMA.btOkClick(Sender: TObject);
begin
  TFecha      := edFecha.Date;
  TNroCpbte   := edNumero.Text;
  ModalResult := mrOk;
 // Close;
end;

procedure TFormRechazoRMA.btCamcelClick(Sender: TObject);
begin
  TFecha      := -1;
  TNroCpbte   := '';
  ModalResult := mrCancel;
 // Close;
end;

procedure TFormRechazoRMA.FormShow(Sender: TObject);
begin
  edFecha.Date:=Date;
end;

end.
