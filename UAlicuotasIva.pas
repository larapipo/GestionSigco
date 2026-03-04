UNIT UAlicuotasIva;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Provider, Db, DBClient, StdCtrls, Mask,
  DBCtrls, ActnList, ImgList,
  Buttons, ToolWin, ComCtrls, ExtCtrls, JvComponentBase,
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

TYPE
  TFormAlicuotasIva = CLASS(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbeNombre: TDBEdit;
    dbeCodigo: TDBEdit;
    dbeTasa: TDBEdit;
    dbeColumna: TDBEdit;
    DSPIva: TDataSetProvider;
    CDSIva: TClientDataSet;
    CDSBuscaIva: TClientDataSet;
    DSPBuscaIva: TDataSetProvider;
    CDSBuscaIvaCODIGO: TIntegerField;
    CDSBuscaIvaDESCRIPCION: TStringField;
    CDSIvaCODIGO: TIntegerField;
    CDSIvaDESCRIPCION: TStringField;
    CDSIvaTASA: TFloatField;
    CDSIvaCOLUMNA: TSmallintField;
    QColumna: TFDQuery;
    QColumnaCOLUMNA: TSmallintField;
    CDSBuscaIvaTASA: TFloatField;
    CDSBuscaIvaCOLUMNA: TSmallintField;
    PROCEDURE BuscarExecute(Sender: TObject);
    PROCEDURE CDSIvaNewRecord(DataSet: TDataSet);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE ConfirmaExecute(Sender: TObject);
    PROCEDURE AgregarExecute(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  END;

VAR

  FormAlicuotasIva: TFormAlicuotasIva;

IMPLEMENTATION

{$R *.DFM}
USES UDMain_FD,DMBuscadoresForm;

PROCEDURE TFormAlicuotasIva.BuscarExecute(Sender: TObject);
BEGIN
  INHERITED;
  CDSBuscaIva.Close;
  CDSBuscaIva.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk Then
      BEGIN
        DatoNew:=(ComBuscadorBase.Id);
        Recuperar.Execute;
      END;
  CDSBuscaIva.Close;

END;

PROCEDURE TFormAlicuotasIva.CDSIvaNewRecord(DataSet: TDataSet);
BEGIN
  INHERITED;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSIvaCODIGO.Value := 1
  else
    CDSIvaCODIGO.Value := QUltimoCodigo2.Fields[0].Value + 1;
  QUltimoCodigo2.Close;
END;

PROCEDURE TFormAlicuotasIva.FormCreate(Sender: TObject);
BEGIN
  INHERITED;
  SinBde:=2;
  AddClientDataSet(CDSIva, DSPIva);
  Tabla:='gravamen';
  Campo:='codigo';
  CDSIva.Open;
END;

PROCEDURE TFormAlicuotasIva.ConfirmaExecute(Sender: TObject);
BEGIN
  IF FormAlicuotasIva.DSBase.State=dsInsert Then
    begin
      QColumna.Close;
      QColumna.ParamByName('Col').Value := CDSIvaCOLUMNA.Value;
      QColumna.Open;
      IF NOT (QColumna.IsEmpty) THEN
        BEGIN
          ShowMessage('Columna de Impresion ya usada..... verificar..');
          dbeColumna.SetFocus;
          dbeColumna.SelectAll;
        END
      else
        begin
          DatoNew:=CDSIvaCODIGO.AsString;
          INHERITED;
          Recuperar.Execute;
        end;
    end
  ELSE
    begin
      DatoNew:=CDSIvaCODIGO.AsString;
      INHERITED;
      Recuperar.Execute;
    end;
END;

PROCEDURE TFormAlicuotasIva.AgregarExecute(Sender: TObject);
BEGIN
  INHERITED;
  dbeCodigo.SetFocus;
END;

PROCEDURE TFormAlicuotasIva.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
BEGIN
  INHERITED;
  Action:=caFree;
END;

procedure TFormAlicuotasIva.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAlicuotasIva:=nil;
end;

procedure TFormAlicuotasIva.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSIva.Close;
  CDSIva.Params.ParamByName('Id').Value := DatoNew;
  CDSIva.Open;
end;

END.
