unit UPercepcionIva_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Provider, Db, DBClient, StdCtrls, Mask,
  DBCtrls,  ActnList, ImgList, Buttons, ToolWin,
  ComCtrls, ExtCtrls,Variants, JvComponentBase, JvExControls,
  JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;


type
  TFormPercepcionIva_2 = class(TFormABMBase)
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    dbeDetalle: TDBEdit;
    dbePorcentaje: TDBEdit;
    dbeImponible: TDBEdit;
    dbeCodigo: TDBEdit;
    DSPPercepcionIva: TDataSetProvider;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DSRegimen: TDataSource;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    CDSPercepcionIva: TClientDataSet;
    CDSPercepcionIvaCODIGO: TIntegerField;
    CDSPercepcionIvaDESCRIPCION: TStringField;
    CDSPercepcionIvaCODIGOREGIMEN: TIntegerField;
    CDSBuscaPercepcionIVA: TClientDataSet;
    DSPBuscaPercecpionIva: TDataSetProvider;
    CDSBuscaPercepcionIVACODIGO: TIntegerField;
    CDSBuscaPercepcionIVADESCRIPCION: TStringField;
    CDSRegimen: TClientDataSet;
    DSPRegimen: TDataSetProvider;
    CDSRegimenCODIGO: TIntegerField;
    CDSRegimenDETALLE: TStringField;
    QPercepcionIva: TFDQuery;
    QPercepcionIvaCODIGO: TIntegerField;
    QPercepcionIvaDESCRIPCION: TStringField;
    QPercepcionIvaTASA: TFloatField;
    QPercepcionIvaMINIMOAPLICABLE: TFloatField;
    QPercepcionIvaCOLUMNA: TSmallintField;
    QPercepcionIvaCODIGOREGIMEN: TIntegerField;
    CDSPercepcionIvaTASA: TFloatField;
    CDSPercepcionIvaMINIMOAPLICABLE: TFloatField;
    CDSPercepcionIvaCOLUMNA: TSmallintField;
    QRegimen: TFDQuery;
    QBuscaPercepcionIva: TFDQuery;
    CDSBuscaPercepcionIVATASA: TFloatField;
    procedure CDSPercepcionIvaNewRecord(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPercepcionIva_2: TFormPercepcionIva_2;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormPercepcionIva_2.CDSPercepcionIvaNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  IF VarToStr(QUltimoCodigo2.Fields[0].Value)='' Then
    CDSPercepcionIvaCODIGO.Value := 1
  else
    CDSPercepcionIvaCODIGO.Value := QUltimoCodigo2.Fields[0].Value + 1;
  QUltimoCodigo2.Close;
  CDSPercepcionIvaCOLUMNA.Value:=5;
end;

procedure TFormPercepcionIva_2.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSPercepcionIvaCODIGO.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormPercepcionIva_2.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeCodigo.SetFocus;
end;

procedure TFormPercepcionIva_2.CancelarExecute(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormPercepcionIva_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaPercepcionIVA.Close;
  CDSBuscaPercepcionIVA.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk Then
    BEGIN
      DatoNew:=IntToStr(ComBuscadorBase.id);
      Recuperar.Execute;
    END;
  CDSBuscaPercepcionIVA.Close;
end;

procedure TFormPercepcionIva_2.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AutoSize := True;
  AddClientDataSet(CDSPercepcionIva, DSPPercepcionIva);
  CDSPercepcionIva.Open;

  CDSRegimen.Open;
  Tabla:='PercepIva';
  Campo:='codigo';

end;

procedure TFormPercepcionIva_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSPercepcionIva.Close;
  CDSRegimen.Close;
  inherited;
  Action:=caFree;
end;

procedure TFormPercepcionIva_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPercepcionIva_2:=nil;
end;

procedure TFormPercepcionIva_2.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormPercepcionIva_2.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSPercepcionIva.Close;
  CDSPercepcionIva.Params.ParamByName('Codigo').Value := DatoNew;
  CDSPercepcionIva.Open;
end;

end.
