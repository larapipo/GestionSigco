unit UMuestraListaCodBarra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,   Grids, DBGrids, ExtCtrls, FMTBcd, SqlExpr, Provider, DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,Librerias,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  JvExControls, JvLabel, JvDBControls;

type
  TFormMuestraListaCodigoBarra = class(TForm)
    pnBase: TPanel;
    dbgArticulos: TDBGrid;
    DSArticulos: TDataSource;
    QArticulos: TFDQuery;
    QArticulosCODIGO_STK: TStringField;
    QArticulosDETALLE_STK: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgArticulosDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgArticulosKeyPress(Sender: TObject; var Key: Char);
//    procedure dbgArticulosDrawColumnCell(Sender: TObject; const Rect: TRect;
//      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    fCodigo     :String;
    fcodigobarra:String;
    FSQL        :string;
  public
    { Public declarations }
 published
    PROPERTY Codigo: STRING read FCodigo write FCodigo;
    PROPERTY CodigoBarra: STRING read FCodigoBarra write FCodigoBarra;
    PROPERTY SQL: STRING read FSQL write FSQL;

  end;

var
  FormMuestraListaCodigoBarra: TFormMuestraListaCodigoBarra;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormMuestraListaCodigoBarra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action :=caFree;
  if DSArticulos.DataSet.FindField('CODIGO_STK')<>nil then
    FCodigo:=DSArticulos.DataSet.FieldByName('CODIGO_STK').AsString
  else
    if DSArticulos.DataSet.FindField('CODIGO')<>nil then
      FCodigo:=DSArticulos.DataSet.FieldByName('CODIGO').AsString
    else
      FCodigo:='';

end;

procedure TFormMuestraListaCodigoBarra.FormDestroy(Sender: TObject);
begin
  FormMuestraListaCodigoBarra:=nil;
end;

procedure TFormMuestraListaCodigoBarra.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
end;

procedure TFormMuestraListaCodigoBarra.dbgArticulosDblClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMuestraListaCodigoBarra.FormShow(Sender: TObject);
var r,i,c:integer;
begin
  FCodigo:='';
  QArticulos.Close;
  QArticulos.ParamByName('CodigoBarra').Value:=fcodigobarra;
  QArticulos.Open;
  r:=QArticulos.RecordCount;
  if r>0 then
    begin
      DSArticulos.DataSet:=QArticulos;
      c := dbgArticulos.Columns.Count;
      for I := 0 to dbgArticulos.Columns.Count-1 do
        begin
          dbgArticulos.Columns[I].Title.Alignment :=taCenter;
          dbgArticulos.Columns[I].Title.Font.Style:=[fsBold];

          if dbgArticulos.Columns[I].Field<>nil Then
            if dbgArticulos.Columns[I].Field.DataType= ftFloat Then
              dbgArticulos.Columns[I].Alignment:=taRightJustify;

          if dbgArticulos.Columns[I].Field<>nil Then
            if dbgArticulos.Columns[I].Field.DataType= ftString Then
              dbgArticulos.Columns[I].Alignment:=taLeftJustify;

          if I<1 then
            dbgArticulos.Columns[I].Alignment:=taCenter;

          dbgArticulos.Width := dbgArticulos.Columns[I].Width;
          if Trim(dbgArticulos.Columns[I].Title.Caption)<>'' then
            dbgArticulos.Columns[I].Title.Caption:= Capitalize(dbgArticulos.Columns[I].Title.Caption);
        end;
    end
  else QArticulos.Close;

// FormMuestraListaCodigoBarra.Width:=dbgArticulos.Width+250;

end;

//procedure TFormMuestraListaCodigoBarra.dbgArticulosDrawColumnCell(
//  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
//  State: TGridDrawState);
//begin
//  if length(Column.Field.AsString) > Column.Field.Tag then
//    begin
//      Column.Field.Tag         := length(Column.Field.AsString);
//      Column.Field.DisplayWidth:= Column.Field.Tag+1;
//    end;
//end;

procedure TFormMuestraListaCodigoBarra.dbgArticulosKeyPress(
  Sender: TObject; var Key: Char);
begin
  if (Key=#13) or (Key=#27) Then Close;
end;

end.
