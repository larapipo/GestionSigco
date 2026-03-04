unit UPlantillas_Grupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, IBGenerator, Provider, DB, DBClient, JvComponentBase,
  rxPlacemnt, ImgList, wwDialog, wwidlg, DBTables, ActnList,
  ComCtrls, RXCtrls, RXDBCtrl, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Mask, DBCtrls;

type
  TFormPlantillaGrupo = class(TFormABMBase)
    QGrupos: TQuery;
    CDSGrupos: TClientDataSet;
    DSPGrupos: TDataSetProvider;
    QGruposID: TIntegerField;
    QGruposDETALLE: TStringField;
    CDSGruposID: TIntegerField;
    CDSGruposDETALLE: TStringField;
    Label1: TLabel;
    dbeId: TDBEdit;
    Label2: TLabel;
    dbeDetalle: TDBEdit;
    QBuscadorGrupo: TQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    procedure CDSGruposNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPlantillaGrupo: TFormPlantillaGrupo;

implementation

{$R *.dfm}

procedure TFormPlantillaGrupo.AgregarExecute(Sender: TObject);
begin
  CDSGrupos.Close;
  CDSGrupos.Params.ParamByName('id').Clear;
  CDSGrupos.Open;
  inherited;
  dbeDetalle.SetFocus;
end;

procedure TFormPlantillaGrupo.BuscarExecute(Sender: TObject);
begin
  inherited;
  QBuscadorGrupo.Close;
  QBuscadorGrupo.Open;
  if wwBuscador.Execute then
    if wwBuscador.LookupTable.FieldByName('id').AsString<>'' then
      begin
        DatoNew:=wwBuscador.LookupTable.FieldByName('id').AsString;
        Recuperar.Execute;
      end;
  QBuscadorGrupo.Close;
end;

procedure TFormPlantillaGrupo.CDSGruposNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo.Close;
  QUltimoCodigo.Open;
  if QUltimoCodigo.Fields[0].AsString<>'' then
    CDSGruposID.Value:=QUltimoCodigo.Fields[0].Value+1
  else
    CDSGruposID.Value:=1;
  QUltimoCodigo.Close;
end;

procedure TFormPlantillaGrupo.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSGruposID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormPlantillaGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormPlantillaGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  AddClientDataSet(CDSGrupos,DSPGrupos);
  CDSGrupos.Open;
  Tabla:='Plantillas_grupos';
  Campo:='id';
end;

procedure TFormPlantillaGrupo.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPlantillaGrupo:=nil;
end;

procedure TFormPlantillaGrupo.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSGrupos.Close;
  CDSGrupos.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSGrupos.Open;
end;

end.
