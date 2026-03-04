unit UComposicionIvaVtaDeb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DBCGrids, ExtCtrls, frxClass, frxDBSet;

type
  TFormComposicionIvaDeb = class(TForm)
    pnDetalle: TPanel;
    dbcgComposicionIva: TDBCtrlGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxDBTextEdit1: TDBEdit;
    cxDBTextEdit2: TDBEdit;
    cxDBTextEdit7: TDBEdit;
    cxDBTextEdit8: TDBEdit;
    cxDBTextEdit9: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    frDBCompDebitos: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComposicionIvaDeb: TFormComposicionIvaDeb;

implementation

{$R *.dfm}
uses ULibroIvaVenta_2;


procedure TFormComposicionIvaDeb.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

end.
