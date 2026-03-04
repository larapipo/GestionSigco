unit UComposicionIvaVta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DBCGrids, ExtCtrls, frxClass, frxDBSet,
  frCoreClasses;

type
  TFormComposicionIvaVta = class(TForm)
    frDBCompCreditos: TfrxDBDataset;
    Panel2: TPanel;
    dbcgCred: TDBCtrlGrid;
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
    dbcgDeb: TDBCtrlGrid;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    frDBCompDebitos: TfrxDBDataset;
    Label9: TLabel;
    Label10: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComposicionIvaVta: TFormComposicionIvaVta;

implementation

{$R *.dfm}
uses ULibroIvaVenta_2,DMLiborIvaVta;

procedure TFormComposicionIvaVta.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

end.
