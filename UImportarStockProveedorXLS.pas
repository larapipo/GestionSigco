unit UImportarStockProveedorXLS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  AdvUtil, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, Vcl.DBGrids,System.StrUtils;

type
  TFormImportaProveeStockXLS = class(TFormABMBase)
    btn1: TSpeedButton;
    edPath: TEdit;
    pnAviso: TPanel;
    lbl1: TLabel;
    dbgrd1: TDBGrid;
    btImportar: TBitBtn;
    sgStock: TAdvStringGrid;
    OpenDialog: TOpenDialog;
    btnAyudaFormato: TSpeedButton;
    QStock: TFDQuery;
    pgEstado: TProgressBar;
    procedure btn1Click(Sender: TObject);
    procedure btImportarClick(Sender: TObject);
    procedure btnAyudaFormatoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure sgStockLoadCell(Sender: TObject; ACol, ARow: Integer;
      var Value: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImportaProveeStockXLS: TFormImportaProveeStockXLS;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormImportaProveeStockXLS.btImportarClick(Sender: TObject);
var
i:Integer;
Query,Query2:TFDQuery;
begin
  inherited;
  Query:=TFDQuery.Create(nil);
  Query.Connection := DMMain_FD.fdcGestion;
  Query.SQL.Text   := 'select codigo from poveedor where codigo = :codigo';

  Query2:=TFDQuery.Create(nil);
  Query2.Connection := DMMain_FD.fdcGestion;
  Query2.SQL.Text   := 'select codigo_stk from stock where codigo_stk = :codigo';

  QStock.Close;

  pgEstado.Min      := 0;
  pgEstado.Max      := sgStock.RowCount-1;
  pgEstado.Position := 0;
  for I := 1 to sgStock.RowCount -1 do
    begin
      pgEstado.Position := pgEstado.Position+1;
      Query.Close;
      Query.ParamByName('codigo').AsString:= AnsiRightStr('000000'+Trim(sgStock.Cells[0,I]),6);
      Query.Open;
      if Query.Fields[0].AsString<>'' then
        begin
          Query2.Close;
          Query2.ParamByName('codigo').AsString:= AnsiRightStr('00000000'+Trim(sgStock.Cells[1,I]),8);
          Query2.Open;
            if Query2.Fields[0].AsString<>'' then
              begin
                QStock.ParamByName('codigoproveedor').AsString   := AnsiRightStr('000000'+Trim(sgStock.Cells[0,I]),6);
                QStock.ParamByName('codigoarticulo').AsString    := AnsiRightStr('00000000'+Trim(sgStock.Cells[1,I]),8);
                QStock.ParamByName('codigofacturacion').AsString := Trim(sgStock.Cells[2,I]);
                QStock.ExecSQL;
                QStock.Close;
              end;
          Query2.Close;
        end;
      Query.Close;
    end;
  pgEstado.Position := 0;
  FreeAndNil(Query);
  FreeAndNil(Query2);
  sgStock.Clearall;
  sgStock.Clear;

end;

procedure TFormImportaProveeStockXLS.btn1Click(Sender: TObject);
begin
  inherited;
  if OpenDialog.Execute Then
    if  OpenDialog.FileName<>'' Then
      begin
        edPath.Text:=OpenDialog.FileName;
        sgStock.LoadFromXLS(edPath.Text);

      end;
end;

procedure TFormImportaProveeStockXLS.btnAyudaFormatoClick(Sender: TObject);
begin
  inherited;
  if pnAviso.Visible=False Then
    pnAviso.Visible:=True
  else
    if pnAviso.Visible=True Then
      pnAviso.Visible:=False;
end;

procedure TFormImportaProveeStockXLS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormImportaProveeStockXLS.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormImportaProveeStockXLS.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportaProveeStockXLS:=nil;
end;

procedure TFormImportaProveeStockXLS.sgStockLoadCell(Sender: TObject; ACol,
  ARow: Integer; var Value: string);
begin
  inherited;
//  if sgStock.Cells[Acol,Arow]='NULL' then
//    Value:='';

  Value:=AnsiReplaceStr(Value,'NULL','');
end;

end.
