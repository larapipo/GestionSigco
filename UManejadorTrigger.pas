unit UManejadorTrigger;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList,StdCtrls, Buttons, ToolWin, ComCtrls,
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, Provider, DBClient, JvExDBGrids, JvDBGrid, Vcl.Grids, Vcl.DBGrids,
  JvAppStorage, JvAppIniStorage, JvComponentBase, Vcl.ImgList, System.Actions,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormManejadorTriggers = class(TFormABMBase)
    btActivar: TBitBtn;
    btDesactivar: TBitBtn;
    DSNombreTriggers: TDataSource;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    QDesmarcaImpresa: TFDQuery;
    QMarcaImpresa: TFDQuery;
    QDriveTrigger: TFDQuery;
    CDSNombreTriggers: TClientDataSet;
    DSPNombreTriggers: TDataSetProvider;
    QNombreTrigg: TFDQuery;
    QNombreTriggRDBTRIGGER_NAME: TStringField;
    QNombreTriggRDBTRIGGER_INACTIVE: TSmallintField;
    CDSNombreTriggersRDBTRIGGER_NAME: TStringField;
    CDSNombreTriggersRDBTRIGGER_INACTIVE: TSmallintField;
    CDSNombreTriggersESTADO: TStringField;
    DBGrid1: TJvDBGrid;
    procedure btActivarClick(Sender: TObject);
    procedure btDesactivarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CDSNombreTriggersCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormManejadorTriggers: TFormManejadorTriggers;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormManejadorTriggers.btActivarClick(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador then
    begin
      CDSNombreTriggers.Close;
      CDSNombreTriggers.Open;
      while not(CDSNombreTriggers.Eof) do
        begin
          QDriveTrigger.Close;
          QDriveTrigger.SQL.Clear;
          QDriveTrigger.SQL.Add('ALTER TRIGGER '+''+CDSNombreTriggers.Fields[0].AsString+''+' ACTIVE');
          QDriveTrigger.ExecSQL;
          CDSNombreTriggers.Next;
        end;
      CDSNombreTriggers.Close;
      CDSNombreTriggers.Open;
    end;
end;

procedure TFormManejadorTriggers.btDesactivarClick(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador then
    begin
      CDSNombreTriggers.Close;
      CDSNombreTriggers.Open;
      while not(CDSNombreTriggers.Eof) do
        begin
          QDriveTrigger.Close;
          QDriveTrigger.SQL.Clear;
          QDriveTrigger.SQL.Add('ALTER TRIGGER '+''+CDSNombreTriggers.Fields[0].AsString+''+' INACTIVE');
          QDriveTrigger.ExecSQL;
          CDSNombreTriggers.Next;
        end;
      CDSNombreTriggers.Close;
      CDSNombreTriggers.Open;
    end;
end;

procedure TFormManejadorTriggers.CDSNombreTriggersCalcFields(DataSet: TDataSet);
begin
  inherited;
  if CDSNombreTriggersRDBTRIGGER_INACTIVE.Value=0 then
    CDSNombreTriggersESTADO.Value:='Activo'
  else
    CDSNombreTriggersESTADO.Value:='Incativo'

end;

procedure TFormManejadorTriggers.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormManejadorTriggers.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  CDSNombreTriggers.Close;
  CDSNombreTriggers.Open;
end;

procedure TFormManejadorTriggers.FormDestroy(Sender: TObject);
begin
  inherited;
  FormManejadorTriggers:=nil;
end;

procedure TFormManejadorTriggers.BitBtn4Click(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador then
    begin
      QMarcaImpresa.Close;
      QMarcaImpresa.ExecSQL;
      QMarcaImpresa.Close;
    end;
end;

procedure TFormManejadorTriggers.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador then
    begin
      QDesmarcaImpresa.Close;
      QDesmarcaImpresa.ExecSQL;
      QDesmarcaImpresa.Close;
    end;
end;

end.
