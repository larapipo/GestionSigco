unit UAlias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, DB, DBClient, Provider, JvComponentBase, 
  ImgList,   ActnList, ComCtrls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Mask, DBCtrls, JvButton, JvTransparentButton, Menus, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr,
  System.Actions, JvAppStorage, JvAppIniStorage, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList,
  AdvUtil, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, AdvSmoothButton;

type
  TFormAlias = class(TFormABMBase)
    OpenDialog1: TOpenDialog;
    BuscarPath: TAction;
//    ListBox: TListBox;
    edPath: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    AgregarPath: TAction;
    BorrarItem: TAction;
    PopupMenu1: TPopupMenu;
    BorrarItem1: TMenuItem;
    Label1: TLabel;
    FDMemTable1: TFDMemTable;
    sgAlias: TAdvStringGrid;
    Label2: TLabel;
    edAlias: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarPathExecute(Sender: TObject);
    procedure AgregarPathExecute(Sender: TObject);
    procedure sgAliasClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure edAliasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure edPathKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Archivo   :TextFile;
  end;

var
  FormAlias: TFormAlias;

implementation

{$R *.dfm}


procedure TFormAlias.AgregarPathExecute(Sender: TObject);
begin
  inherited;
  if (edPath.Text<>'') and (edAlias.Text<>'') then
    begin
//      ListBox.Items.Add(edPath.Text);
//      edPath.Text:=''
      sgALias.AddRow;
      sgAlias.Cells[0,sgAlias.RowCount-1]:=edAlias.Text;
      sgAlias.Cells[1,sgAlias.RowCount-1]:=edPath.Text;
      sgAlias.LastRow;
    end;


end;


procedure TFormAlias.BuscarPathExecute(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
    if OpenDialog1.FileName<>'' then
      begin
        edPath.Text := OpenDialog1.FileName;
        sgAlias.Cells[1,sgAlias.Row]:=edPath.Text;
      end;
end;

procedure TFormAlias.ConfirmaExecute(Sender: TObject);
var s:String;
i:integer;
begin
 // inherited;
  sgAlias.SaveToCSV(ExtractFilePath(ParamStr(0))+'ALIAS.csv');
  if MessageDlg('Finaliza y cierra?....',mtConfirmation,[mbyes,mbNo],0,mbYes)=mrYes then
    Close;

end;

procedure TFormAlias.edAliasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_RETURN then
    begin
      sgAlias.Cells[0,sgAlias.Row]:=edAlias.Text;
      sgAlias.Cells[1,sgAlias.Row]:=edPath.Text;
    end;
end;

procedure TFormAlias.edPathKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_RETURN then
    begin
      sgAlias.Cells[0,sgAlias.Row]:=edAlias.Text;
      sgAlias.Cells[1,sgAlias.Row]:=edPath.Text;
    end;
end;

procedure TFormAlias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAlias.FormCreate(Sender: TObject);
var s:String;
begin
  inherited;
  AutoSize:=False;
//  if not FileExists(ExtractFilePath(ParamStr(0))+'ALIAS.TXT') then
//    FileCreate(ExtractFilePath(ParamStr(0))+'ALIAS.TXT');
//  AssignFile(Archivo,ExtractFilePath(ParamStr(0))+'ALIAS.TXT');
//  Reset(Archivo);
//    while not(Eof(Archivo)) do
//    begin
//      ReadLn(Archivo,S);
//      ListBox.Items.Add(s);
//    end;
//  CloseFile(Archivo);

  sgAlias.SaveFixedCells := FALSE;
  sgAlias.LoadFromCSV(ExtractFilePath(ParamStr(0))+'ALIAS.csv');
  sgAlias.Alignments[0,0]:=taCenter;
  sgAlias.Alignments[1,0]:=taCenter;

end;

procedure TFormAlias.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAlias:=nil;
end;

procedure TFormAlias.FormResize(Sender: TObject);
begin
  inherited;
  if FormAlias<>NIL then
    if FormAlias.Width<>760 then
      FormAlias.Width:=760;

end;


procedure TFormAlias.sgAliasClickCell(Sender: TObject; ARow, ACol: Integer);
begin
  inherited;
  edAlias.Text:= sgAlias.Cells[0,ARow];
  edPath.Text := sgAlias.Cells[1,ARow];
end;

end.
