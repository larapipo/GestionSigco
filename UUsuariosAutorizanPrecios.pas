unit UUsuariosAutorizanPrecios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, Grids, DBGrids, DB, DBClient, Provider, 
  ImgList, ActnList, ComCtrls,DBXCommon,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  JvComponentBase, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  System.Actions, JvAppStorage, JvAppIniStorage, Vcl.DBCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList,
  AdvSmoothButton;

type
  TFormUsuariosAutorizan = class(TFormABMBase)
    DSPAutorizan: TDataSetProvider;
    DSAutorizan: TDataSource;
    dbg1: TDBGrid;
    CDSAutorizan: TClientDataSet;
    CDSAutorizanUSUARIO: TStringField;
    CDSAutorizanuser_name: TStringField;
    CDSAutorizanID: TIntegerField;
    DSPUsuarios: TDataSetProvider;
    CDSUsuarios: TClientDataSet;
    DSUsuarios: TDataSource;
    CDSUsuariosUSER_NAME: TStringField;
    dbgNav: TDBNavigator;
    CDSUsuariosUSER_ID: TIntegerField;
    QUsuarios: TFDQuery;
    QAutorizan: TFDQuery;
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSAutorizanNewRecord(DataSet: TDataSet);
    procedure DSBaseStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsuariosAutorizan: TFormUsuariosAutorizan;

implementation

Uses UDMain_FD;
{$R *.dfm}

procedure TFormUsuariosAutorizan.CDSAutorizanNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if (QUltimoCodigo2.Fields[0].AsString<>'') then
    CDSAutorizanID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1
  else
    CDSAutorizanID.Value:=1;
  QUltimoCodigo2.Close;
end;

procedure TFormUsuariosAutorizan.ConfirmaExecute(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    CDSAutorizan.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo Gravar los cambios');
  end;
  CDSAutorizan.Close;
  CDSAutorizan.Open;

end;

procedure TFormUsuariosAutorizan.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormUsuariosAutorizan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormUsuariosAutorizan.FormCreate(Sender: TObject);
begin
  inherited;
  CDSUsuarios.Open;
  CDSAutorizan.Open;
end;

procedure TFormUsuariosAutorizan.FormDestroy(Sender: TObject);
begin
  inherited;
  FormUsuariosAutorizan:=nil;

end;

end.