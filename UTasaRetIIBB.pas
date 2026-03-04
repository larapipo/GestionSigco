unit UTasaRetIIBB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, DBClient, Provider, DBCtrls, Mask, JvComponentBase, 
  ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr, JvAppStorage, JvAppIniStorage, System.Actions, Data.DB,
  CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, AdvSmoothButton;

type
  TFormTasaRetIIBB = class(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbeCodigo: TDBEdit;
    dbeConcepto: TDBEdit;
    dbeAlicuota: TDBEdit;
    dbeMinimo: TDBEdit;
    DSPTasaRetIB: TDataSetProvider;
    CDSTasaRetIB: TClientDataSet;
    CDSTasaRetIBID: TIntegerField;
    CDSTasaRetIBDETALLE: TStringField;
    CDSBuscadorTasas: TClientDataSet;
    DSPBuscadorTasas: TDataSetProvider;
    CDSBuscadorTasasID: TIntegerField;
    CDSBuscadorTasasDETALLE: TStringField;
    QTasaRetIB: TFDQuery;
    QTasaRetIBID: TIntegerField;
    QTasaRetIBDETALLE: TStringField;
    QTasaRetIBTASA: TFloatField;
    QTasaRetIBMINIMO_IMPONIBLE: TFloatField;
    CDSTasaRetIBTASA: TFloatField;
    CDSTasaRetIBMINIMO_IMPONIBLE: TFloatField;
    QBuscadorTasas: TFDQuery;
    CDSBuscadorTasasTASA: TFloatField;
    CDSBuscadorTasasMINIMO_IMPONIBLE: TFloatField;
    procedure BuscarExecute(Sender: TObject);
    procedure CDSTasaRetIBNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTasaRetIIBB: TFormTasaRetIIBB;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormTasaRetIIBB.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorTasas.Close;
  CDSBuscadorTasas.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscadorTasas.Close;

end;

procedure TFormTasaRetIIBB.CDSTasaRetIBNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSTasaRetIBID.Value:=1
  else
    CDSTasaRetIBID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1;
  QUltimoCodigo2.Close;
  CDSTasaRetIBTASA.AsFloat            :=0;
  CDSTasaRetIBMINIMO_IMPONIBLE.AsFloat:=0;

end;

procedure TFormTasaRetIIBB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSTasaRetIB.Close;
  Action:=caFree;
end;

procedure TFormTasaRetIIBB.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AutoSize:=True;
  AddClientDataSet(CDSTasaRetIB,DSPTasaRetIB);
  CDSTasaRetIB.Open;
  Campo:='id';
  Tabla:='TASAS_RET_IBRUTOS'
end;

procedure TFormTasaRetIIBB.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSTasaRetIBID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormTasaRetIIBB.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSTasaRetIB.Close;
  CDSTasaRetIB.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSTasaRetIB.Open;
end;

procedure TFormTasaRetIIBB.FormDestroy(Sender: TObject);
begin
  inherited;
  FormTasaRetIIBB:=nil;
end;

end.