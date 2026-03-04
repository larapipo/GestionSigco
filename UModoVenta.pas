unit UModoVenta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, JvExMask, JvToolEdit, ButtonGroup,
  CategoryButtons, ActnMan, ActnColorMaps, JvExExtCtrls, JvExtComponent,
  JvItemsPanel, JvMenus, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TFormModoVta = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    StandardColorMap1: TStandardColorMap;
    lModo: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ceClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButtonGroup1Items0Click(Sender: TObject);
    procedure ButtonGroup1Items1Click(Sender: TObject);
    procedure lModoClick(Sender: TObject);
  private
    { Private declarations }
    FModo:Integer;
    FTipo:String;
  public
    { Public declarations }
  published
    property Modo :Integer read FModo write FModo;
    property Tipo :string read FTipo write FTipo;
  end;

var
  FormModoVta: TFormModoVta;

implementation

{$R *.dfm}

procedure TFormModoVta.BitBtn1Click(Sender: TObject);
begin
  FModo  := lModo.ItemIndex;
end;

procedure TFormModoVta.ButtonGroup1Items0Click(Sender: TObject);
begin
  //
end;

procedure TFormModoVta.ButtonGroup1Items1Click(Sender: TObject);
begin
//
end;

procedure TFormModoVta.ceClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_DOWN then
    lModo.SetFocus;
end;

procedure TFormModoVta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormModoVta.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  lModo.ItemIndex:= FModo;
end;

procedure TFormModoVta.FormDestroy(Sender: TObject);
begin
  FormModoVta:=nil;
end;

procedure TFormModoVta.FormShow(Sender: TObject);
begin
  lModo.ItemIndex    := Modo;
  lModo.SetFocus;
end;

procedure TFormModoVta.lModoClick(Sender: TObject);
begin
  if (lModo.ItemIndex >= 0) and (lModo.ItemIndex <=2) and (FTipo='C') Then
    lModo.ItemIndex:=3;

  if (lModo.ItemIndex >= 3) and (lModo.ItemIndex <=4) and (FTipo='D') Then
    lModo.ItemIndex:=0;

end;

end.
