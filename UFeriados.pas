unit UFeriados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Grids, DBGrids, DB, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, DBClient, Provider, JvExDBGrids, JvDBGrid, DBCtrls,
  JvAppStorage, JvAppIniStorage, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormFeriados = class(TFormABMBase)
    QFechas: TFDQuery;
    QFechasID: TIntegerField;
    DSPFechas: TDataSetProvider;
    CDSFechas: TClientDataSet;
    DSFechas: TDataSource;
    CDSFechasID: TIntegerField;
    QFechasDIA: TIntegerField;
    QFechasMES: TIntegerField;
    CDSFechasDIA: TIntegerField;
    CDSFechasMES: TIntegerField;
    dbgFechas: TJvDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSFechasNewRecord(DataSet: TDataSet);
    procedure CDSFechasAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFeriados: TFormFeriados;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormFeriados.CDSFechasAfterPost(DataSet: TDataSet);
VAR Puntero:TBookmark;
begin
  inherited;
//  Puntero:=CDSFechas.GetBookmark;
  CDSFechas.ApplyUpdates(0);
  CDSFechas.close;
  CDSFechas.Open;
//  CDSFechas.GotoBookmark(Puntero);
//  CDSFechas.FreeBookmark(Puntero);

end;

procedure TFormFeriados.CDSFechasNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSFechasID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1
  else
    CDSFechasID.Value:=1;
  QUltimoCodigo2.Close;
end;

procedure TFormFeriados.ConfirmaExecute(Sender: TObject);
VAR Puntero:TBookmark;
begin
 // inherited;
  Puntero:=CDSFechas.GetBookmark;
  CDSFechas.ApplyUpdates(0);
  CDSFechas.close;
  CDSFechas.Open;
  CDSFechas.GotoBookmark(Puntero);
  CDSFechas.FreeBookmark(Puntero);
end;

procedure TFormFeriados.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormFeriados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormFeriados.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  CDSFechas.Close;
  CDSFechas.Open;

end;

procedure TFormFeriados.FormDestroy(Sender: TObject);
begin
  inherited;
  FormFeriados:=nil;
end;

end.
