unit UUsuariosAdminNP_Movil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvExControls, JvLabel,
  JvDBControls, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Datasnap.Provider, Datasnap.DBClient;

type
  TFormAdministrador_NP_Movil = class(TFormABMBase)
    dbgAutorizados: TDBGrid;
    dbgUsers: TDBGrid;
    DSAutorizan: TDataSource;
    CDSAutorizan: TClientDataSet;
    CDSAutorizanID: TIntegerField;
    CDSAutorizanID_USUARIO: TIntegerField;
    CDSAutorizanMUESTRANOMBRE: TStringField;
    DSPAutorizan: TDataSetProvider;
    QAutorizan: TFDQuery;
    QAutorizanID: TIntegerField;
    QAutorizanID_USUARIO: TIntegerField;
    QAutorizanMUESTRANOMBRE: TStringField;
    QUser: TFDQuery;
    DSPUser: TDataSetProvider;
    CDSUser: TClientDataSet;
    CDSUserUSER_NAME: TStringField;
    CDSUserUSER_ID: TIntegerField;
    DSUsser: TDataSource;
    procedure CDSAutorizanNewRecord(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure dbgAutorizadosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dbgAutorizadosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSAutorizanAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdministrador_NP_Movil: TFormAdministrador_NP_Movil;

implementation

{$R *.dfm}

uses UDMain_FD;

procedure TFormAdministrador_NP_Movil.CDSAutorizanAfterDelete(
  DataSet: TDataSet);
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

procedure TFormAdministrador_NP_Movil.CDSAutorizanNewRecord(DataSet: TDataSet);
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

procedure TFormAdministrador_NP_Movil.ConfirmaExecute(Sender: TObject);
begin
 // inherited;
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

procedure TFormAdministrador_NP_Movil.dbgAutorizadosDragDrop(Sender, Source: TObject; X,
  Y: Integer);
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

procedure TFormAdministrador_NP_Movil.dbgAutorizadosDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  IF Source = dbgUsers THEN
    accept := True
  ELSE
    Accept := False;
end;

procedure TFormAdministrador_NP_Movil.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAdministrador_NP_Movil.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  CDSUser.Open;
  CDSAutorizan.Open;
end;

procedure TFormAdministrador_NP_Movil.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAdministrador_NP_Movil:=nil;
end;

end.
