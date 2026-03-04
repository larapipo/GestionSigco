unit UBuscadorTipoAdCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Datasnap.Provider,
  Datasnap.DBClient, Data.SqlExpr, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit,
  JvExControls, JvGradient, Vcl.Buttons;

type
  TFormBuscadorTipoMovCCComp = class(TForm)
    pnPrincipal: TPanel;
    pnPie: TPanel;
    QTipo: TSQLQuery;
    CDSTipo: TClientDataSet;
    DSPTipo: TDataSetProvider;
    DSTipo: TDataSource;
    CDSTipoID: TIntegerField;
    CDSTipoDETALLE: TStringField;
    DBGrid1: TDBGrid;
    pnCab: TPanel;
    JvDBFindEdit1: TJvDBFindEdit;
    btCancelar: TBitBtn;
    btOk: TBitBtn;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
    FId:Integer;
  public
    { Public declarations }
  published
    property Id :Integer read FId write FId;
  end;

var
  FormBuscadorTipoMovCCComp: TFormBuscadorTipoMovCCComp;

implementation

{$R *.dfm}
uses UDMain_FD;


procedure TFormBuscadorTipoMovCCComp.btCancelarClick(Sender: TObject);
begin
  FId:=-1;
end;

procedure TFormBuscadorTipoMovCCComp.btOkClick(Sender: TObject);
begin
  FId:=CDSTipoID.Value;
end;

procedure TFormBuscadorTipoMovCCComp.DBGrid1DblClick(Sender: TObject);
begin
  btOk.Click;
end;

procedure TFormBuscadorTipoMovCCComp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorTipoMovCCComp.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormBuscadorTipoMovCCComp.FormDestroy(Sender: TObject);
begin
  FormBuscadorTipoMovCCComp:=nil;
end;

procedure TFormBuscadorTipoMovCCComp.FormShow(Sender: TObject);
begin
  CDSTipo.Close;
  CDSTipo.Open;
end;

end.
