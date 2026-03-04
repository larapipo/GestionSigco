unit UCargaDetalleOC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, JvAppStorage, JvAppIniStorage,
  JvComponentBase, JvFormPlacement;

type
  TFormControlDetalleOC = class(TForm)
    DBGrillaDetalle: TDBGrid;
    dbeCodigo: TJvDBFindEdit;
    dbeCantidad: TDBEdit;
    dbePrecio: TDBEdit;
    Panel1: TPanel;
    DSDetalle: TDataSource;
    btOk: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    JvFormStorage: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbeCantidadEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DBGrillaDetalleCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlDetalleOC: TFormControlDetalleOC;

implementation


{$R *.dfm}

procedure TFormControlDetalleOC.btOkClick(Sender: TObject);
begin
  if DSDetalle.DataSet.State<>dsBrowse then
    DSDetalle.DataSet.Post;
  dbeCodigo.Clear;
  dbeCodigo.SetFocus;
  dbeCodigo.SelectAll;
end;

procedure TFormControlDetalleOC.dbeCantidadEnter(Sender: TObject);
begin
  dbeCantidad.SelectAll;
end;

procedure TFormControlDetalleOC.DBGrillaDetalleCellClick(Column: TColumn);
begin
  dbeCodigo.SetFocus;
  dbeCodigo.SelectAll;

end;

procedure TFormControlDetalleOC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormControlDetalleOC.FormCreate(Sender: TObject);
begin
   JvAppIniFileStorage1.FileName:=(sender as TForm).Name;
end;

procedure TFormControlDetalleOC.FormDestroy(Sender: TObject);
begin
  FormControlDetalleOC:=nil;
end;

procedure TFormControlDetalleOC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key= VK_UP then
    DSDetalle.DataSet.Prior
  else
    if (Key= VK_DOWN) and (not(DSDetalle.DataSet.Eof)) then
      DSDetalle.DataSet.Next;
 // dbeCodigo.SetFocus;
 // dbeCodigo.SelectAll;
  if (ActiveControl is TJvDBFindEdit) and (Key=VK_DELETE) then dbeCodigo.Clear;

end;

procedure TFormControlDetalleOC.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if (Key = #13) and (not (ActiveControl is TDBGrid))  then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
  if Key = #27 then
    Close;

end;

procedure TFormControlDetalleOC.FormResize(Sender: TObject);
begin
  if (Width>968) or (Width<968) then Width:=968;

end;

procedure TFormControlDetalleOC.FormShow(Sender: TObject);
begin
  dbeCodigo.SetFocus;
  dbeCodigo.SelectAll;
  DBGrillaDetalle.Width:= DBGrillaDetalle.Width +1;
  DBGrillaDetalle.Width:= DBGrillaDetalle.Width -1;

end;

end.
