unit UBuscadorDespachos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvExControls, JvGradient, Grids, DBGrids, ExtCtrls,
  FMTBcd, Provider, DBClient, DB, SqlExpr;

type
  TFormBuscadorDespachos = class(TForm)
    Panel1: TPanel;
    dbgDespachos: TDBGrid;
    Panel2: TPanel;
    JvGradient1: TJvGradient;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    DSDespachos: TDataSource;
    QDespachos: TSQLQuery;
    CDSDespachos: TClientDataSet;
    DSPDespachos: TDataSetProvider;
    CDSDespachosID: TIntegerField;
    CDSDespachosNRO: TStringField;
    CDSDespachosFECHA: TSQLTimeStampField;
    CDSDespachosVENDEDOR: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgDespachosDblClick(Sender: TObject);
  private
    FId:Integer;
    { Private declarations }
  public
    { Public declarations }
  published
    property id:integer read fid;
  end;

var
  FormBuscadorDespachos: TFormBuscadorDespachos;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormBuscadorDespachos.btOkClick(Sender: TObject);
begin
  FId:=CDSDespachosID.Value;
end;

procedure TFormBuscadorDespachos.btCancelClick(Sender: TObject);
begin
  FId:=-1;

end;

procedure TFormBuscadorDespachos.dbgDespachosDblClick(Sender: TObject);
begin
  btOk.Click;
end;

procedure TFormBuscadorDespachos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorDespachos.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSDespachos.Open;
end;

procedure TFormBuscadorDespachos.FormDestroy(Sender: TObject);
begin
  FormBuscadorDespachos:=nil;
end;

end.
