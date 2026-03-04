unit UJuridicion_Localidad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Provider, DBClient, Mask, DBCtrls, JvDBLookup, Data.FMTBcd, Data.DB,
  JvAppStorage, JvAppIniStorage, Data.SqlExpr, JvComponentBase, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormJuridicion_Localidad = class(TFormABMBase)
    CDSLocalidad: TClientDataSet;
    DSPLocalidad: TDataSetProvider;
    CDSLocalidadID: TIntegerField;
    CDSLocalidadID_JURIDICION: TIntegerField;
    CDSLocalidadLOCALIDAD: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DSJuridicion: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    DSPJuridicion: TDataSetProvider;
    CDSJuridicion: TClientDataSet;
    CDSJuridicionCODIGO: TIntegerField;
    CDSJuridicionDETALLE: TStringField;
    QUltimoCodigoMAX: TIntegerField;
    DSPBuscador: TDataSetProvider;
    CDSBuscador: TClientDataSet;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField2: TStringField;
    CDSBuscadorPOR_DEFECTO: TStringField;
    CDSLocalidadPOR_DEFECTO: TStringField;
    dbchDefecto: TDBCheckBox;
    QLocalidadJudicion: TFDQuery;
    QLocalidadJudicionID: TIntegerField;
    QLocalidadJudicionID_JURIDICION: TIntegerField;
    QLocalidadJudicionLOCALIDAD: TStringField;
    QLocalidadJudicionPOR_DEFECTO: TStringField;
    QJuridicion: TFDQuery;
    QBuscador: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure CDSLocalidadNewRecord(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormJuridicion_Localidad: TFormJuridicion_Localidad;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormJuridicion_Localidad.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.Close;
  CDSBuscador.open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk then
    begin
      DatoNew:=IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscador.Close;    
end;

procedure TFormJuridicion_Localidad.CDSLocalidadNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSLocalidadID.Value:=QUltimoCodigo2.Fields[0].Value+1
  else
    CDSLocalidadID.Value:=1;
  QUltimoCodigo2.Close;
  CDSLocalidadPOR_DEFECTO.Value:='N';
end;

procedure TFormJuridicion_Localidad.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSLocalidadID.AsString;
  if CDSLocalidadID_JURIDICION.AsString='' then
    raise Exception.Create('Falta indicar la juridiccion...');

   inherited;
   Recuperar.Execute;

end;

procedure TFormJuridicion_Localidad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormJuridicion_Localidad.FormCreate(Sender: TObject);
begin
  inherited;
   SinBDE:=2;
   AddClientDataSet(CDSLocalidad,DSPLocalidad);
   CDSLocalidad.Open;
   CDSJuridicion.Open;
   Tabla:='juridicion_localidad';
   Campo:='id';
end;

procedure TFormJuridicion_Localidad.FormDestroy(Sender: TObject);
begin
  inherited;
  FormJuridicion_Localidad:=nil;
end;

procedure TFormJuridicion_Localidad.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSLocalidad.Close;
  CDSLocalidad.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSLocalidad.Open;
end;

end.
