unit UControlsStockRubros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, Provider, DBClient, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, SqlExpr, JvComponentBase, JvFormPlacement,
  ImgList, ActnList, ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, JvAppStorage,
  JvAppIniStorage, System.Actions, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormControlStockRubros = class(TFormABMBase)
    dbgLista: TJvDBGrid;
    CDSListaStock: TClientDataSet;
    DSPListaStock: TDataSetProvider;
    DSListaStock: TDataSource;
    CDSListaStockCODIGO_STK: TStringField;
    CDSListaStockDETALLE_STK: TStringField;
    CDSListaStockRUBRO_STK: TStringField;
    CDSListaStockSUBRUBRO_STK: TStringField;
    CDSListaStockDETALLE_SUBRUBRO: TStringField;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    QListaStock: TFDQuery;
    procedure dbgListaDblClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlStockRubros: TFormControlStockRubros;

implementation

uses UDMain_FD, UStock_2;
{$R *.dfm}

procedure TFormControlStockRubros.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSListaStock.Close;
  CDSListaStock.Open;
end;

procedure TFormControlStockRubros.CheckBox1Click(Sender: TObject);
begin
  inherited;
  CDSListaStock.Filter:= ' DETALLE_SUBRUBRO = null ';
  CDSListaStock.Filtered:=CheckBox1.Checked;
end;

procedure TFormControlStockRubros.dbgListaDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(Self);
  FormStock_2.DatoNew:=CDSListaStockCODIGO_STK.AsString;
  formStock_2.Recuperar.Execute;
  FormStock_2.Show;  
end;

procedure TFormControlStockRubros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlStockRubros.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  Buscar.Execute;
end;

procedure TFormControlStockRubros.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlStockRubros:=nil;
end;

end.
