unit UCargaCheRc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, VCL.TMSFNCTypes,
  VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, System.Rtti,
  VCL.TMSFNCDataGridCell, VCL.TMSFNCDataGridData, VCL.TMSFNCDataGridBase,
  VCL.TMSFNCDataGridCore, VCL.TMSFNCDataGridRenderer, AdvGlowButton,
  VCL.TMSFNCCustomControl, VCL.TMSFNCDataGrid;

type
  TFormCargaChe3 = class(TForm)
    pnCab: TPanel;
    pnPie: TPanel;
    pnBase: TPanel;
    fncGrid: TTMSFNCDataGrid;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    OpenDialog1: TOpenDialog;
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    TLista:TStringList;
  public
    { Public declarations }
  published
    property Lista:TStringList read TLista write TLista;
  end;

var
  FormCargaChe3: TFormCargaChe3;

implementation

{$R *.dfm}

procedure TFormCargaChe3.AdvGlowButton2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    if OpenDialog1.FileName<>'' then
      begin

        fncGrid.LoadFromCSVData(OpenDialog1.FileName);
        Lista.Delimiter:=',';
        Lista.LoadFromFile(OpenDialog1.FileName);
      end;
end;

procedure TFormCargaChe3.FormDestroy(Sender: TObject);
begin
  FormCargaChe3:=nil;
end;

end.
