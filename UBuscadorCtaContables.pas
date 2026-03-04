unit UBuscadorCtaContables;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit,
  Provider, DB, DBClient, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls,
  JvExControls, JvGradient, Buttons;

type
  TFormBuscadorCtaContable = class(TForm)
    pnBase: TPanel;
    dbgCtas: TJvDBGrid;
    CDSCtas: TClientDataSet;
    DSPCtas: TDataSetProvider;
    CDSCtasID: TIntegerField;
    CDSCtasCODIGO: TStringField;
    CDSCtasDESCRIPCION: TStringField;
    DSCtas: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    chFiltro: TCheckBox;
    btCancel: TBitBtn;
    btOk: TBitBtn;
    JvGradient1: TJvGradient;
    edCodigo: TJvDBFindEdit;
    edDescripcion: TJvDBFindEdit;
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure chFiltroClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edDescripcionEnter(Sender: TObject);
    procedure edCodigoEnter(Sender: TObject);
    procedure edDescripcionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dbgCtasDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    FId:Integer;
    FCodigo:String;
    FDetalle:String;
  public
    { Public declarations }
  published
    property id:Integer read FId write FId;
    property Codigo:String read FCodigo write FCodigo;
    property Detalle:string read FDetalle write FDetalle;
  end;

var
  FormBuscadorCtaContable: TFormBuscadorCtaContable;

implementation

{$R *.dfm}
uses DMContableForm;

procedure TFormBuscadorCtaContable.btOkClick(Sender: TObject);
begin
  FCodigo :=CDSCtasCODIGO.Value;
  FId     :=CDSCtasID.Value;
  FDetalle:=CDSCtasDESCRIPCION.Value;
end;

procedure TFormBuscadorCtaContable.btCancelClick(Sender: TObject);
begin
  FCodigo :='';
  FId     :=-1;
  FDetalle:='';
end;

procedure TFormBuscadorCtaContable.chFiltroClick(Sender: TObject);
begin
  edCodigo.ResetFilter;
  edDescripcion.ResetFilter;
  if chFiltro.Checked then
    begin
      edCodigo.FindStyle     :=fsFilter;
      edDescripcion.FindStyle:=fsFilter;
    end
  else
    begin
      edCodigo.FindStyle     :=fsNavigate;
      edDescripcion.FindStyle:=fsNavigate;
    end;
  edDescripcion.SetFocus;
  edDescripcion.SelectAll;
end;

procedure TFormBuscadorCtaContable.dbgCtasDblClick(Sender: TObject);
begin
  FCodigo  := CDSCtasCODIGO.Value;
  FId      := CDSCtasID.Value;
  FDetalle := CDSCtasDESCRIPCION.Value;
  btOk.Click;
end;

procedure TFormBuscadorCtaContable.edCodigoEnter(Sender: TObject);
begin
  edCodigo.SelectAll;
end;

procedure TFormBuscadorCtaContable.edDescripcionEnter(Sender: TObject);
begin
  edDescripcion.SelectAll;
end;

procedure TFormBuscadorCtaContable.edDescripcionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_DOWN) and (Not(CDSCtas.Eof)) then
    CDSCtas.Next
  else
  if (Key=VK_UP) and (Not(CDSCtas.Bof)) then
    CDSCtas.Prior;
  edDescripcion.SetFocus;
  //edDescripcion.SelectAll;

end;

procedure TFormBuscadorCtaContable.FormActivate(Sender: TObject);
begin
  edDescripcion.SetFocus;
  edDescripcion.SelectAll;
end;

procedure TFormBuscadorCtaContable.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorCtaContable.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSCtas.Close;
  CDSCtas.Open;
  edCodigo.FindStyle     :=fsFilter;
  edDescripcion.FindStyle:=fsFilter;
  if (FormBuscadorCtaContable<>nil) and  (FormBuscadorCtaContable.Visible) and (edDescripcion.Visible) then
    begin
      edDescripcion.SetFocus;
      edDescripcion.SelectAll;
    end;
end;


procedure TFormBuscadorCtaContable.FormDestroy(Sender: TObject);
begin
  FormBuscadorCtaContable:=nil;
end;

procedure TFormBuscadorCtaContable.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=VK_ESCAPE then btCancel.Click;

end;

procedure TFormBuscadorCtaContable.FormShow(Sender: TObject);
begin
  edDescripcion.SetFocus;
  edDescripcion.SelectAll;
end;

end.
