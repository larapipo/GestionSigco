unit UPercepcionIB_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, Mask, DBCtrls,
  Db, ActnList, ImgList, Buttons, ToolWin, ComCtrls, ExtCtrls, Provider,
  DBClient, Variants, JvComponentBase, JvExControls, JvGradient, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, SqlExpr, JvAppStorage, JvAppIniStorage,
  System.Actions, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormPercepcionIB_2 = class(TFormABMBase)
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    dbeDetalle: TDBEdit;
    dbePorcentaje: TDBEdit;
    dbeImponible: TDBEdit;
    dbeCodigo: TDBEdit;
    DSPPercepcionIB: TDataSetProvider;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DSJuridiccion: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    CDSPercepcionIB: TClientDataSet;
    CDSPercepcionIBCODIGO: TIntegerField;
    CDSPercepcionIBDESCRIPCION: TStringField;
    CDSPercepcionIBCOLUMNA: TSmallintField;
    CDSPercepcionIBJURIDICION: TIntegerField;
    CDSBuscaPercepcionIB: TClientDataSet;
    DSPBuscaPercepcionIB: TDataSetProvider;
    CDSjuridiccion: TClientDataSet;
    DSPJurudiccion: TDataSetProvider;
    CDSjuridiccionCODIGO: TIntegerField;
    CDSjuridiccionDETALLE: TStringField;
    QBuscaPercepcionIB: TFDQuery;
    CDSBuscaPercepcionIBCODIGO: TIntegerField;
    CDSBuscaPercepcionIBDESCRIPCION: TStringField;
    CDSBuscaPercepcionIBTASA: TFloatField;
    QJuridiccion: TFDQuery;
    QPercepcionIB: TFDQuery;
    QPercepcionIBCODIGO: TIntegerField;
    QPercepcionIBDESCRIPCION: TStringField;
    QPercepcionIBTASA: TFloatField;
    QPercepcionIBMINIMOAPLICABLE: TFloatField;
    QPercepcionIBCOLUMNA: TSmallintField;
    QPercepcionIBJURIDICION: TIntegerField;
    CDSPercepcionIBTASA: TFloatField;
    CDSPercepcionIBMINIMOAPLICABLE: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure CDSPercepcionIBNewRecord(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPercepcionIB_2: TFormPercepcionIB_2;

implementation

{$R *.DFM}
Uses UDMain_fd;


procedure TFormPercepcionIB_2.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde    := 2;
  AutoSize  := True;
  AddClientDataSet(CDSPercepcionIB, DSPPercepcionIB);
  CDSPercepcionIB.Open;
  CDSJuridiccion.Open;
  Tabla:='PercepIB';
  Campo:='codigo';
end;

procedure TFormPercepcionIB_2.CDSPercepcionIBNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  IF VarToStr(QUltimoCodigo2.Fields[0].Value)='' Then
    CDSPercepcionIBCODIGO.Value := 1
  else
    CDSPercepcionIBCODIGO.Value := QUltimoCodigo2.Fields[0].Value + 1;
  CDSPercepcionIBCOLUMNA.Value:=6;
  QUltimoCodigo2.Close;
end;

procedure TFormPercepcionIB_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaPercepcionIB.Close;
  CDSBuscaPercepcionIB.Open;
  ComBuscadorBase.Execute;
  IF ComBuscadorBase.rOk THEN
    BEGIN
      DatoNew:=IntToStr(ComBuscadorBase.Id);
      Recuperar.Execute;
    END;
  CDSBuscaPercepcionIB.Close;
end;

procedure TFormPercepcionIB_2.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormPercepcionIB_2.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeCodigo.SetFocus;
end;

procedure TFormPercepcionIB_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSPercepcionIB.Close;
  CDSJuridiccion.Close;
  inherited;
  Action:=caFree;
end;

procedure TFormPercepcionIB_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPercepcionIB_2:=nil;
end;

procedure TFormPercepcionIB_2.CancelarExecute(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormPercepcionIB_2.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSPercepcionIB.Close;
  CDSPercepcionIB.Params.ParamByName('Codigo').Value := DatoNew;
  CDSPercepcionIB.Open;
end;

procedure TFormPercepcionIB_2.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSPercepcionIBCODIGO.AsString;
  inherited;
  Recuperar.Execute;
end;

end.
