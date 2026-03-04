unit UDescto_Presupuesto_oc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, Provider, DB, DBClient, JvComponentBase,
  ImgList,   ActnList, ComCtrls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Mask, Data.FMTBcd, Vcl.DBCtrls, JvAppStorage, JvAppIniStorage, Data.SqlExpr,
  JvFormPlacement, System.Actions, JvLabel, JvDBControls, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormDescuentosPresupOC = class(TFormABMBase)
    CDSDescuentos: TClientDataSet;
    DSPDescuentos: TDataSetProvider;
    CDSDescuentosID: TIntegerField;
    CDSDescuentosDETALLE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    CDSDescuentosEDITABLE: TStringField;
    dbchEdita: TDBCheckBox;
    CDSBuscador: TClientDataSet;
    DSPBuscador: TDataSetProvider;
    CDSBuscadorID: TIntegerField;
    CDSBuscadorDETALLE: TStringField;
    QBuscador: TFDQuery;
    CDSBuscadorDESCUENTO: TFloatField;
    QDescuentos: TFDQuery;
    QDescuentosID: TIntegerField;
    QDescuentosDETALLE: TStringField;
    QDescuentosDESCUENTO: TFloatField;
    QDescuentosEDITABLE: TStringField;
    CDSDescuentosDESCUENTO: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure CDSDescuentosNewRecord(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDescuentosPresupOC: TFormDescuentosPresupOC;

implementation

{$R *.dfm}

uses UDMain_FD;

procedure TFormDescuentosPresupOC.AgregarExecute(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TFormDescuentosPresupOC.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.Close;
  CDSBuscador.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscador.Close;
end;

procedure TFormDescuentosPresupOC.CDSDescuentosNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' then
    CDSDescuentosID.Value:=1
  else
    CDSDescuentosID.Value:=QUltimoCodigo2.Fields[0].Value+1;
  QUltimoCodigo2.Close;
  CDSDescuentosDESCUENTO.AsFloat:=0;
  CDSDescuentosEDITABLE.Value   :='N';
end;

procedure TFormDescuentosPresupOC.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSDescuentosID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormDescuentosPresupOC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSDescuentos.Close;
  Action:=cafree;
end;

procedure TFormDescuentosPresupOC.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AutoSize:=True;
  AddClientDataSet(CDSDescuentos,DSPDescuentos);
  CDSDescuentos.Open;
  Tabla:='PRESUPUESTO_OC_DESCUENTOS';
  Campo:='id';
end;

procedure TFormDescuentosPresupOC.FormDestroy(Sender: TObject);
begin
  inherited;
  FormDescuentosPresupOC:=nil;
end;

procedure TFormDescuentosPresupOC.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSDescuentos.Close;
  CDSDescuentos.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSDescuentos.Open;
end;

end.