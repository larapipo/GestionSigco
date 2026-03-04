unit UDescuentosUsuarios;

interface

uses
  Windows, Messages, UABMBase, Data.FMTBcd,VCL.Forms, Data.DB, Datasnap.Provider,
  Datasnap.DBClient, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement,
  Vcl.ImgList, Vcl.Controls, System.Classes,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormDescuentosUsuarios = class(TFormABMBase)
    DSDstoUser: TDataSource;
    DBGrid1: TDBGrid;
    CDSUsers: TClientDataSet;
    DSPUsers: TDataSetProvider;
    CDSUsersUSER_NAME: TStringField;
    CDSUsersREAL_NAME: TStringField;
    dbgNav: TDBNavigator;
    CDSDstoUser: TClientDataSet;
    DSPDstoUser: TDataSetProvider;
    CDSDstoUserID_USUARIO: TIntegerField;
    CDSDstoUserMUESTRAUSUARIO: TStringField;
    CDSUsersUSER_ID: TIntegerField;
    QUsers: TFDQuery;
    QDstoUser: TFDQuery;
    QDstoUserID_USUARIO: TIntegerField;
    QDstoUserDESC_LINEA: TFloatField;
    QDstoUserDESC_GENERAL: TFloatField;
    CDSDstoUserDESC_LINEA: TFloatField;
    CDSDstoUserDESC_GENERAL: TFloatField;
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSDstoUserNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSDstoUserDESC_LINEASetText(Sender: TField; const Text: string);
    procedure CDSDstoUserID_USUARIOSetText(Sender: TField; const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDescuentosUsuarios: TFormDescuentosUsuarios;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormDescuentosUsuarios.CDSDstoUserDESC_LINEASetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if Sender.AsFloat>100 then
    Sender.AsFloat:=100;
end;

procedure TFormDescuentosUsuarios.CDSDstoUserID_USUARIOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if Sender.AsFloat>100 then
    Sender.AsFloat:=100;
end;

procedure TFormDescuentosUsuarios.CDSDstoUserNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSDstoUserDESC_LINEA.AsFloat   :=0;
  CDSDstoUserDESC_GENERAL.AsFloat :=0;
end;

procedure TFormDescuentosUsuarios.ConfirmaExecute(Sender: TObject);
var id:integer;
begin
//  inherited;
 // id:= CDSDstoUserID_USUARIO.Value;
  CDSDstoUser.ApplyUpdates(0);
  CDSDstoUser.Close;
  CDSDstoUser.Open;

  DMMain_FD.QDstoUser.Close;
  DMMain_FD.QDstoUser.ParamByName('id').Value:=DMMain_FD.UsuarioActivoId;
  DMMain_FD.QDstoUser.Open;
  if (DMMain_FD.QDstoUser.FieldByName('ID_USUARIO').AsString<>'') then
    begin
      DMMain_FD.TopeDsctoGral  :=DMMain_FD.QDstoUser.FieldByName('DESC_GENERAL').AsFloat;
      DMMain_FD.TopeDsctoLinea :=DMMain_FD.QDstoUser.FieldByName('DESC_LINEA').AsFloat;
    end;
  DMMain_FD.QDstoUser.Close;

end;

procedure TFormDescuentosUsuarios.DSBaseStateChange(Sender: TObject);
begin
  //inherited;

end;

procedure TFormDescuentosUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormDescuentosUsuarios.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  CDSUsers.Open;
  CDSDstoUser.Open;
end;

procedure TFormDescuentosUsuarios.FormDestroy(Sender: TObject);
begin
  inherited;
  FormDescuentosUsuarios:=nil;
end;

end.
