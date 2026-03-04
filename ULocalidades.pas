UNIT ULocalidades;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBClient, Provider,  Db, ActnList, ImgList,
  StdCtrls, Buttons, ToolWin, ComCtrls, ExtCtrls,   Mask,
  DBCtrls, JvComponentBase, JvFormPlacement, JvLabel, JvDBControls,
  JvExControls, JvGradient, JvExMask, JvToolEdit, FMTBcd, SqlExpr, JvAppStorage,
  JvAppIniStorage, System.Actions, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

TYPE
  TFormLocalidades = CLASS(TFormABMBase)
    DSPLocalidades: TDataSetProvider;
    Label1: TLabel;
    dbeCodigoPostal: TDBEdit;
    Label2: TLabel;
    dbeDetalle: TDBEdit;
    Label3: TLabel;
    dbeTelediscado: TDBEdit;
    Label4: TLabel;
    dbeMuestraProvincia: TDBEdit;
    DSPPcia: TDataSetProvider;
    BuscaPcia: TAction;
    QUltimoCodigoCODIGO: TIntegerField;
    Label5: TLabel;
    edCodigo: TDBEdit;
    ceProvincia: TJvDBComboEdit;
    CDSLocalidades: TClientDataSet;
    CDSPcia: TClientDataSet;
    CDSPciaID_PRO: TIntegerField;
    CDSPciaNOMBRE: TStringField;
    CDSBuscaPcia: TClientDataSet;
    DSPBuscaPcia: TDataSetProvider;
    CDSBuscaPciaNOMBRE: TStringField;
    CDSBuscaPciaID_PRO: TIntegerField;
    CDSBuscaLocalidades: TClientDataSet;
    DSPBuscaLocalidades: TDataSetProvider;
    CDSBuscaLocalidadesDETALLE_POSTAL: TStringField;
    CDSBuscaLocalidadesCODIGO_POSTAL: TStringField;
    CDSBuscaLocalidadesID_POSTAL: TIntegerField;
    ComBuscadorPcia: TComBuscador;
    QBuscaLocalidades: TFDQuery;
    QBuscaPcia: TFDQuery;
    CDSLocalidadesID_POSTAL: TIntegerField;
    CDSLocalidadesCODIGO_POSTAL: TStringField;
    CDSLocalidadesDETALLE_POSTAL: TStringField;
    CDSLocalidadesTELEDISCADO: TStringField;
    CDSLocalidadesPROVINCIA: TIntegerField;
    CDSLocalidadesMUESTRAPROVINCIA: TStringField;
    PROCEDURE CDSLocalidadesPROVINCIASetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE BuscaPciaExecute(Sender: TObject);
    PROCEDURE AgregarExecute(Sender: TObject);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE CDSLocalidadesNewRecord(DataSet: TDataSet);
    PROCEDURE BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FUNCTION AsignaPcia(dato: Integer): Boolean;
  END;

VAR
  FormLocalidades: TFormLocalidades;

IMPLEMENTATION

USES UDMain_FD;

{$R *.DFM}

FUNCTION TFormLocalidades.AsignaPcia(dato: Integer): Boolean;
BEGIN
  CDSPcia.Close;
  CDSPcia.Params.ParamByName('id').Value := Dato;
  CDSPcia.Open;
  IF NOT (CDSPcia.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSLocalidadesMUESTRAPROVINCIA.Value := CDSPciaNOMBRE.Value;
    END
  ELSE
    BEGIN
      result := False;
      CDSLocalidadesMUESTRAPROVINCIA.Value := '';
    END;
  CDSPcia.Close;
END;

PROCEDURE TFormLocalidades.CDSLocalidadesPROVINCIASetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  INHERITED;
  Sender.AsString := Text;
  IF NOT (AsignaPcia(Sender.AsInteger)) THEN
    BEGIN
      Sender.AsString := '';
      ShowMessage('Dato no Válido');
    END;
END;

PROCEDURE TFormLocalidades.BuscaPciaExecute(Sender: TObject);
BEGIN
  INHERITED;
  CDSBuscaPcia.Close;
  CDSBuscaPcia.Open;
  ComBuscadorPcia.Execute;
  IF IntToStr(ComBuscadorPcia.Id)<>'' THEN
    CDSLocalidadesPROVINCIASetText(CDSLocalidadesPROVINCIA,IntToStr(ComBuscadorPcia.Id));
  CDSBuscaPcia.Close;
END;

PROCEDURE TFormLocalidades.AgregarExecute(Sender: TObject);
BEGIN
  INHERITED;
  dbeDetalle.SetFocus;
END;

PROCEDURE TFormLocalidades.FormCreate(Sender: TObject);
BEGIN
  INHERITED;
  SinBde:=2;
  AddClientDataSet(CDSLocalidades, DSPLocalidades);
  CDSLocalidades.Open;
  Tabla:='c_postal';
  campo:='id_postal';
END;

PROCEDURE TFormLocalidades.CDSLocalidadesNewRecord(DataSet: TDataSet);
BEGIN
  INHERITED;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSLocalidadesID_POSTAL.Value :=1
  else
    CDSLocalidadesID_POSTAL.Value := QUltimoCodigo2.Fields[0].Value + 1;
  CDSLocalidadesTELEDISCADO.Value:='000';
  CDSLocalidadesPROVINCIASetText(CDSLocalidadesPROVINCIA,'1');
  QUltimoCodigo2.Close;
END;

PROCEDURE TFormLocalidades.BuscarExecute(Sender: TObject);
BEGIN
  INHERITED;
  CDSBuscaLocalidades.Close;
  CDSBuscaLocalidades.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk Then
      BEGIN
       DatoNew:=  IntToStr(ComBuscadorBase.Id);
       Recuperar.Execute;
      END;
  CDSBuscaLocalidades.Close;
END;

procedure TFormLocalidades.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
end;

procedure TFormLocalidades.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLocalidades:=nil;
end;

procedure TFormLocalidades.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSLocalidades.Close;
  CDSLocalidades.Params.ParamByName('id').Value := StrToInt(DatoNew);
  CDSLocalidades.Open;

end;

procedure TFormLocalidades.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSLocalidadesID_POSTAL.AsString;
  if (CDSLocalidadesPROVINCIA.AsString='') or (CDSLocalidadesMUESTRAPROVINCIA.AsString='') then
    raise Exception.Create('Debe Indicar la Provincia');
  if (CDSLocalidadesCODIGO_POSTAL.AsString='') then
    raise Exception.Create('Digite el Codigo Postal');

  inherited;
  Recuperar.Execute;
end;

END.
