unit UMuestraArtPorSubRub;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids, ExtCtrls,
  StdCtrls, Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormMuestraArtPorSubRubros = class(TForm)
    pnStock: TPanel;
    dbgStock: TDBGrid;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    DSStock: TDataSource;
    btOk: TBitBtn;
    QStock: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgStockDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    FRubro:String;
    FSubRubro:String;

  public
    { Public declarations }
  published
    property Rubro:String read FRubro write FRubro;
    property SubRubro:String read FSubRubro write FSubRubro;
  end;

var
  FormMuestraArtPorSubRubros: TFormMuestraArtPorSubRubros;

implementation

uses UDMain_FD, UStock_2;
{$R *.dfm}

procedure TFormMuestraArtPorSubRubros.dbgStockDblClick(Sender: TObject);
begin
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(Application);
  FormStock_2.DatoNew:=CDSStockCODIGO_STK.AsString;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
end;

procedure TFormMuestraArtPorSubRubros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormMuestraArtPorSubRubros.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
end;

procedure TFormMuestraArtPorSubRubros.FormDestroy(Sender: TObject);
begin
  FormMuestraArtPorSubRubros:=nil;
end;

procedure TFormMuestraArtPorSubRubros.FormResize(Sender: TObject);
begin
  if FormMuestraArtPorSubRubros<>nil then
    if FormMuestraArtPorSubRubros.Width<>630 then
      FormMuestraArtPorSubRubros.Width:=630;

end;

procedure TFormMuestraArtPorSubRubros.FormShow(Sender: TObject);
begin
  CDSStock.Close;
  CDSStock.Params.ParamByName('Rubro').AsString:=FRubro;
  CDSStock.Params.ParamByName('SubRubro').AsString:=FSubRubro;
  CDSStock.Open;
end;

end.
