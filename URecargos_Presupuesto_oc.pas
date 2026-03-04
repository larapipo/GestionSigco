unit URecargos_Presupuesto_oc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, DB, DBClient, Provider, imgList,   ActnList, ComCtrls, JvExControls,
  JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, Mask, DBCtrls,
  JvComponentBase, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormRecargosPresupOC = class(TFormABMBase)
    DSPRecargos: TDataSetProvider;
    CDSRecargos: TClientDataSet;
    CDSRecargosID: TIntegerField;
    CDSRecargosDETALLE: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    CDSRecargosEDITABLE: TStringField;
    dbchEdita: TDBCheckBox;
    DSPBuscador: TDataSetProvider;
    CDSBuscador: TClientDataSet;
    CDSBuscadorID: TIntegerField;
    CDSBuscadorDETALLE: TStringField;
    QRecargos: TFDQuery;
    QRecargosID: TIntegerField;
    QRecargosDETALLE: TStringField;
    QRecargosRECARGO: TFloatField;
    QRecargosEDITABLE: TStringField;
    CDSRecargosRECARGO: TFloatField;
    QBuscador: TFDQuery;
    CDSBuscadorRECARGO: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSRecargosNewRecord(DataSet: TDataSet);
    procedure RecuperarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRecargosPresupOC: TFormRecargosPresupOC;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormRecargosPresupOC.AgregarExecute(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

procedure TFormRecargosPresupOC.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.Close;
  CDSBuscador.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk then
    begin
      DatoNew:= IntToStr(comBuscadorBase.id);
      Recuperar.Execute;
    end;
  CDSBuscador.Close;
end;

procedure TFormRecargosPresupOC.CDSRecargosNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' then
    CDSRecargosID.Value:=1
  else
    CDSRecargosID.Value:=QUltimoCodigo2.Fields[0].Value+1;
  QUltimoCodigo2.Close;
  CDSRecargosRECARGO.AsFloat:=0;
  CDSRecargosEDITABLE.Value:='N';
end;

procedure TFormRecargosPresupOC.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSRecargosID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormRecargosPresupOC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSRecargos.Close;
  Action:=caFree;
end;

procedure TFormRecargosPresupOC.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  SinBDE:=2;
  AddClientDataSet(CDSRecargos,DSPRecargos);
  CDSRecargos.Open;
  Tabla:='PRESUPUESTO_OC_RECARGOS';
  Campo:='id';
end;

procedure TFormRecargosPresupOC.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRecargosPresupOC:=nil;
end;

procedure TFormRecargosPresupOC.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSRecargos.Close;
  CDSRecargos.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSRecargos.Open;
end;

end.
