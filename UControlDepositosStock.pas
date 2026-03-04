unit UControlDepositosStock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, VCL.TMSFNCTypes,
  VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, VCL.TMSFNCCustomControl, VCL.TMSFNCListBox,
  VCL.TMSFNCCheckedListBox, Vcl.StdCtrls, Vcl.CheckLst, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, System.Rtti,
  JvExDBGrids, JvDBGrid;

type
  TFormDepositosControlados = class(TForm)
    Panel1: TPanel;
    QLstDepositos: TFDQuery;
    QLstDepositosID: TIntegerField;
    QLstDepositosNOMBRE: TStringField;
    QLstDepositosCENTRALIZA_STOCK: TStringField;
    CDSLstDepositos: TClientDataSet;
    DSPLstDepositos: TDataSetProvider;
    DSLstDepositos: TDataSource;
    CDSLstDepositosID: TIntegerField;
    CDSLstDepositosNOMBRE: TStringField;
    CDSLstDepositosCENTRALIZA_STOCK: TStringField;
    JvDBGrid1: TJvDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    function JvDBGrid1CheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
      var StringForTrue, StringForFalse: string): Boolean;
    procedure CDSLstDepositosAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDepositosControlados: TFormDepositosControlados;

implementation
uses UDMain_FD;
{$R *.dfm}

procedure TFormDepositosControlados.CDSLstDepositosAfterPost(DataSet: TDataSet);
begin
  CDSLstDepositos.ApplyUpdates(-1);
end;

procedure TFormDepositosControlados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if CDSLstDepositos.State<>dsBrowse then
    CDSLstDepositos.Post;
  Action:=TCloseAction.caFree;
end;

procedure TFormDepositosControlados.FormCreate(Sender: TObject);
begin
  autosize:=True;
  CDSLstDepositos.Close;
  CDSLstDepositos.Open;
end;

procedure TFormDepositosControlados.FormDestroy(Sender: TObject);
begin
  FormDepositosControlados:=nil;
end;

function TFormDepositosControlados.JvDBGrid1CheckIfBooleanField(Grid: TJvDBGrid;
  Field: TField; var StringForTrue, StringForFalse: string): Boolean;
begin
  result   := Field =CDSLstDepositosCENTRALIZA_STOCK;
  StringForTrue  := 'S';
  StringForFalse := 'N';
end;

end.
