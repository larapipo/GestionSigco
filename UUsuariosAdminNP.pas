unit UUsuariosAdminNP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, Grids, DBGrids, DB, DBClient, Provider, 
  ImgList, ActnList, ComCtrls,DBXCommon,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  JvComponentBase, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  System.Actions, Vcl.DBCtrls, JvAppStorage, JvAppIniStorage, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList,
  AdvSmoothButton;

type
  TFormUsuariosAdminNP = class(TFormABMBase)
    DSPAutorizan: TDataSetProvider;
    CDSAutorizan: TClientDataSet;
    CDSAutorizanID: TIntegerField;
    DSAutorizan: TDataSource;
    dbgAutorizados: TDBGrid;
    Label1: TLabel;
    CDSUser: TClientDataSet;
    DSPUser: TDataSetProvider;
    dbgNav: TDBNavigator;
    CDSUserUSER_NAME: TStringField;
    CDSUserUSER_ID: TIntegerField;
    CDSAutorizanID_USUARIO: TIntegerField;
    dbgUsers: TDBGrid;
    DSUsser: TDataSource;
    CDSAutorizanMUESTRANOMBRE: TStringField;
    Label2: TLabel;
    QAutorizan: TFDQuery;
    QUser: TFDQuery;
    QAutorizanID: TIntegerField;
    QAutorizanID_USUARIO: TIntegerField;
    QAutorizanMUESTRANOMBRE: TStringField;
    procedure ConfirmaExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSAutorizanNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgAutorizadosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dbgAutorizadosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure CDSAutorizanAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsuariosAdminNP: TFormUsuariosAdminNP;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormUsuariosAdminNP.CDSAutorizanAfterDelete(DataSet: TDataSet);
begin
  inherited;
  DMMain_fd.fdcGestion.StartTransaction;
  try
    CDSAutorizan.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
  end;
  CDSAutorizan.Close;
  CDSAutorizan.Open;
end;

procedure TFormUsuariosAdminNP.CDSAutorizanNewRecord(DataSet: TDataSet);
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

procedure TFormUsuariosAdminNP.ConfirmaExecute(Sender: TObject);
begin
  DMMain_fd.fdcGestion.StartTransaction;
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

procedure TFormUsuariosAdminNP.dbgAutorizadosDragDrop(Sender, Source: TObject;
  X, Y: Integer);
begin
  inherited;
  if CDSAutorizan.Locate('id_usuario',(Source AS TDBGrid).DataSource.DataSet.FieldByName('user_id').AsString,[])=False Then
    begin
      CDSAutorizan.Append;
      WITH (Source AS TDBGrid).DataSource.DataSet DO
        BEGIN
          CDSAutorizanID_USUARIO.Value    := FieldByName('user_id').Value;
          CDSAutorizanMUESTRANOMBRE.Value := FieldByName('user_name').Value;
        END;
      CDSAutorizan.Post;
      Confirma.Execute;
    end;
end;

procedure TFormUsuariosAdminNP.dbgAutorizadosDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  IF Source = dbgUsers THEN
    accept := True
  ELSE
    Accept := False;
end;

procedure TFormUsuariosAdminNP.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormUsuariosAdminNP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormUsuariosAdminNP.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  CDSUser.Open;
  CDSAutorizan.Open;
end;

procedure TFormUsuariosAdminNP.FormDestroy(Sender: TObject);
begin
  inherited;
  FormUsuariosAdminNP:=nil;
end;

end.
