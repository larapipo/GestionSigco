unit UBuscadorReciboCupon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Mask, JvExMask, JvToolEdit,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, JvExControls, JvGradient,
  ExtCtrls, Buttons;

type
  TFormBuscadorPagoCupones = class(TForm)
    Panel1: TPanel;
    JvGradient1: TJvGradient;
    dbgCupones: TJvDBGrid;
    QClientes: TSQLQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QRec: TSQLQuery;
    DSPRec: TDataSetProvider;
    CDSRec: TClientDataSet;
    DSRec: TDataSource;
    CDSRecID: TIntegerField;
    CDSRecNUMERO: TIntegerField;
    CDSRecFECHA: TSQLTimeStampField;
    CDSRecCODIGO: TStringField;
    CDSRecNOMBRE: TStringField;
    CDSRecNROCPBTE: TStringField;
    CDSRecTOTAL: TFMTBCDField;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    JvGradient2: TJvGradient;
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgCuponesDblClick(Sender: TObject);
  private
    { Private declarations }
    FId:Integer;
  public
    { Public declarations }
  published
    property Id:Integer read FId write FId;
  end;

var
  FormBuscadorPagoCupones: TFormBuscadorPagoCupones;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormBuscadorPagoCupones.btCancelarClick(Sender: TObject);
begin
  FId:=-1;
end;

procedure TFormBuscadorPagoCupones.btOkClick(Sender: TObject);
begin
  FId:=CDSRecID.Value;
end;

procedure TFormBuscadorPagoCupones.dbgCuponesDblClick(Sender: TObject);
begin
  btOk.Click;
end;

procedure TFormBuscadorPagoCupones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorPagoCupones.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSRec.Close;
  CDSRec.Open;
end;

procedure TFormBuscadorPagoCupones.FormDestroy(Sender: TObject);
begin
  FormBuscadorPagoCupones:=nil;
end;

end.
