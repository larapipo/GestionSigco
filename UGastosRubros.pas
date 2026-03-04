UNIT UGastosRubros;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, Mask, DBCtrls,   Db,
  ActnList, ImgList, Buttons, ToolWin, ComCtrls,
  ExtCtrls, DBClient, Provider, Variants, JvComponentBase, JvExControls,
  JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;
TYPE
  TFormGastosRubro = CLASS(TFormABMBase)
    dbeCodigo: TDBEdit;
    dbeDetalle: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DSPGRubros: TDataSetProvider;
    QGRubros: TFDQuery;
    QGRubrosCODIGO: TStringField;
    QGRubrosDETALLE: TStringField;
    CDSGRubros: TClientDataSet;
    CDSGRubrosCODIGO: TStringField;
    CDSGRubrosDETALLE: TStringField;
    CDSBuscador: TClientDataSet;
    DSPBuscador: TDataSetProvider;
    QBuscad: TFDQuery;
    CDSBuscadorCODIGO: TStringField;
    CDSBuscadorDETALLE: TStringField;
    PROCEDURE BuscarExecute(Sender: TObject);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE CDSGRubrosNewRecord(DataSet: TDataSet);
    PROCEDURE AgregarExecute(Sender: TObject);
    PROCEDURE wwCDSGRubrosID_CUENTASetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE FormDestroy(Sender: TObject);
    procedure CDSGRubrosCODIGOSetText(Sender: TField;
      const Text: String);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  END;

VAR
  FormGastosRubro: TFormGastosRubro;

IMPLEMENTATION

uses UDMain_FD;

{$R *.DFM}

PROCEDURE TFormGastosRubro.BuscarExecute(Sender: TObject);
BEGIN
  INHERITED;
  CDSBuscador.Close;
  CDSBuscador.Open;
  ComBuscadorBase.Execute;
  IF (ComBuscadorBase.rOk) THEN
    BEGIN
      CDSGRubros.Close;
      CDSGRubros.Params.ParamByName('codigo').AsString := ComBuscadorBase.Id;
      CDSGRubros.Open;
    END;
  CDSBuscador.Close;
END;

PROCEDURE TFormGastosRubro.FormCreate(Sender: TObject);
BEGIN
  INHERITED;
  SinBde:=2;
  AutoSize:=True;
  AddClientDataSet(CDSGRubros, DSPGRubros);
  CDSGRubros.Open;
  Tabla:=' gastos_rubros';
  Campo:='codigo';
END;

PROCEDURE TFormGastosRubro.CDSGRubrosNewRecord(DataSet: TDataSet);
BEGIN
  INHERITED;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  IF (QUltimoCodigo2.Fields[0].AsString='') THEN
    CDSGRubrosCODIGOSetText(CDSGRubrosCODIGO, '1')
  ELSE
    CDSGRubrosCODIGOSetText(CDSGRubrosCODIGO,IntToStr(QUltimoCodigo2.Fields[0].AsInteger + 1));
  QUltimoCodigo2.Close;
  dbeDetalle.SetFocus;
END;

procedure TFormGastosRubro.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSGRubrosCODIGO.Value;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;

end;

PROCEDURE TFormGastosRubro.AgregarExecute(Sender: TObject);
BEGIN
  INHERITED;
  dbeCodigo.SetFocus;
END;

PROCEDURE TFormGastosRubro.wwCDSGRubrosID_CUENTASetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  INHERITED;
  Sender.AsString := Copy('00000', 1, Sender.Size - Length(Text)) + text;
END;

PROCEDURE TFormGastosRubro.FormDestroy(Sender: TObject);
BEGIN
  INHERITED;
  FormGastosRubro := NIL;
END;

procedure TFormGastosRubro.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSGRubros.Close;
  CDSGRubros.Params.ParamByName('codigo').Value:=DatoNew;
  CDSGRubros.Open;
end;

procedure TFormGastosRubro.CDSGRubrosCODIGOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=copy('000000',1,3-length(Text))+Text;
end;

END.
