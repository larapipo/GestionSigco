unit UProvincia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, Mask, DBCtrls, Db, ActnList, ImgList,
  Buttons, ToolWin, ComCtrls, ExtCtrls, DBClient, Provider,
  JvComponentBase, JvFormPlacement, JvLabel, JvDBControls, JvExControls,
  JvGradient, FMTBcd, SqlExpr, JvAppStorage, JvAppIniStorage, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormProvincia = class(TFormABMBase)
    dbeCodigo: TDBEdit;
    dbeDetalle: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DSPProvincia: TDataSetProvider;
    CDSProvincia: TClientDataSet;
    CDSProvinciaID_PRO: TIntegerField;
    CDSProvinciaNOMBRE: TStringField;
    CDSBuscaProvincia: TClientDataSet;
    DSPBuscaProvincia: TDataSetProvider;
    CDSBuscaProvinciaID_PRO: TIntegerField;
    CDSBuscaProvinciaNOMBRE: TStringField;
    CDSProvinciaCODIGO_COT: TStringField;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    QBuscaProv: TFDQuery;
    QBuscaProvID_PRO: TIntegerField;
    QBuscaProvNOMBRE: TStringField;
    QBuscaProvCODIGO_COT: TStringField;
    procedure AgregarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSProvinciaNewRecord(DataSet: TDataSet);
    procedure ModificarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProvincia: TFormProvincia;

implementation

uses UDMain_FD;


{$R *.DFM}

procedure TFormProvincia.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeCodigo.SetFocus;
end;

procedure TFormProvincia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormProvincia.FormDestroy(Sender: TObject);
begin
  inherited;
  FormProvincia:=nil;
end;

procedure TFormProvincia.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde := 2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AddClientDataSet(CDSProvincia,DSPProvincia);
  Tabla:='provincia';
  Campo:='id_pro';
  CDSProvincia.Open;
end;

procedure TFormProvincia.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaProvincia.Close;
  CDSBuscaProvincia.Open;
  comBuscadorBase.Execute;
  if ComBuscadorBase.rOk Then
      begin
        DatoNew:=IntToStr(ComBuscadorBase.id);
        Recuperar.Execute;
      end;
  CDSBuscaProvincia.Close;
end;

procedure TFormProvincia.CDSProvinciaNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSProvinciaID_PRO.Value:=1
  else
    CDSProvinciaID_PRO.Value:=QUltimoCodigo2.Fields[0].AsInteger+1;
  QUltimoCodigo2.Close;
end;

procedure TFormProvincia.ModificarExecute(Sender: TObject);
begin
  inherited;
  dbeDetalle.SetFocus;
end;

procedure TFormProvincia.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  dbeCodigo.Enabled:= DSBase.State in [dsInsert];
end;

procedure TFormProvincia.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSProvincia.Close;
  CDSProvincia.Params.ParamByName('id').Value:= DatoNew;
  CDSProvincia.Open;
end;

procedure TFormProvincia.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSProvinciaID_PRO.AsString;
  inherited;
  Recuperar.Execute;
end;

end.
