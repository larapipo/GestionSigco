unit USucursalesExportacionIVA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel;

type
  TFormSucursalesExportacion = class(TForm)
    pnSucursales: TJvPanel;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    lvSucursales: TListView;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSucursalesExportacion: TFormSucursalesExportacion;

implementation

{$R *.dfm}

procedure TFormSucursalesExportacion.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormSucursalesExportacion.FormDestroy(Sender: TObject);
begin
  FormSucursalesExportacion:=nil;
end;

end.
