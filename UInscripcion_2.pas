unit UInscripcion_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, DBCtrls, Mask,
  Db, ActnList, ImgList, Buttons, ToolWin, ComCtrls,
  ExtCtrls, Provider, DBClient, JvComponentBase,
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormInscripcion_2 = class(TFormABMBase)
    Label13: TLabel;
    dbeCodigo: TDBEdit;
    Label14: TLabel;
    dbeDetalle: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DSPInscripcion: TDataSetProvider;
    CDSInscripcion: TClientDataSet;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    CDSBuscaInscripcion: TClientDataSet;
    DSPBuscaInscripcion: TDataSetProvider;
    CDSBuscaInscripcionCODIGO: TIntegerField;
    CDSBuscaInscripcionDETALLE: TStringField;
    QBuscaIns: TFDQuery;
    QInscripcion: TFDQuery;
    QInscripcionCODIGO: TIntegerField;
    QInscripcionDETALLE: TStringField;
    QInscripcionAPLICAPERCEPCIONIVA: TStringField;
    QInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    QInscripcionCOBRASOBRETASA: TStringField;
    QInscripcionDISCRIMINAIVA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure CDSInscripcionNewRecord(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInscripcion_2: TFormInscripcion_2;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormInscripcion_2.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AutoSize := True;
  AddClientDataSet(CDSInscripcion, DSPInscripcion);
  Tabla:='inscripcion';
  Campo:='codigo';
  CDSInscripcion.Open;
end;

procedure TFormInscripcion_2.CDSInscripcionNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSInscripcionCODIGO.Value :=1
  else
    CDSInscripcionCODIGO.Value := QUltimoCodigo2.Fields[0].Value + 1;
  QUltimoCodigo2.Close;
  CDSInscripcionAplicaPercepcionIva.Value  := 'N';
  CDSInscripcionAplicaPercepcionIIBB.Value := 'N';
  CDSInscripcionCobraSobretasa.Value       := 'N';
  CDSInscripcionDISCRIMINAIVA.Value        := 'N';
end;

procedure TFormInscripcion_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaInscripcion.Close;
  CDSBuscaInscripcion.Open;
  ComBuscadorBase.Execute;
  IF ComBuscadorBase.rOk THEN
     BEGIN
       DatoNew:=ComBuscadorBase.id;
       Recuperar.Execute;
     END;
  CDSBuscaInscripcion.Close;
end;

procedure TFormInscripcion_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormInscripcion_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormInscripcion_2:=nil;
end;

procedure TFormInscripcion_2.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeCodigo.SetFocus;
end;

procedure TFormInscripcion_2.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSInscripcion.Close;
  CDSInscripcion.Params.ParamByName('Codigo').Value := DatoNew;
  CDSInscripcion.Open;

end;

procedure TFormInscripcion_2.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSInscripcionCODIGO.AsString;
  inherited;
  Recuperar.Execute;
end;

end.
