unit UBancos_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, DBClient, Provider, StdCtrls, DBCtrls, Mask, ExtCtrls,
  ActnList, ImgList,  Buttons, ToolWin,
  ComCtrls, JvComponentBase, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, JvExMask, JvToolEdit, FMTBcd, SqlExpr, JvAppStorage,
  JvAppIniStorage, System.Actions, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormBancos_2 = class(TFormABMBase)
    Bevel2: TBevel;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbtLocalidad: TDBText;
    Label7: TLabel;
    dbtTelediscado: TDBText;
    dbeNombre: TDBEdit;
    dbeDireccion: TDBEdit;
    dbeTelefonos: TDBEdit;
    dbeSucursal: TDBEdit;
    DBMemo1: TDBMemo;
    dbeCodigo: TDBEdit;
    DSPBanco: TDataSetProvider;
    BuscarLocalidad: TAction;
    RxDBCCPostal: TJvDBComboEdit;
    DSPBuscaCPostal: TDataSetProvider;
    CDSBuscaCPostal: TClientDataSet;
    CDSBuscaBanco: TClientDataSet;
    DSPBuscaBanco: TDataSetProvider;
    CDSBanco: TClientDataSet;
    CDSBancoID_BANCO: TIntegerField;
    CDSBancoNOMBRE: TStringField;
    CDSBancoDIRECCION: TStringField;
    CDSBancoTELEFONOS: TStringField;
    CDSBancoSUCURSAL: TStringField;
    CDSBancoLOCALIDAD: TStringField;
    CDSBancoNOTAS: TMemoField;
    CDSBancoID_POSTAL: TIntegerField;
    CDSBancoMUESTRALOCALIDAD: TStringField;
    CDSBancoMUESTRATELEDISCADO: TStringField;
    DSPCPostal: TDataSetProvider;
    CDSCPostal: TClientDataSet;
    CDSCPostalID_POSTAL: TIntegerField;
    CDSCPostalCODIGO_POSTAL: TStringField;
    CDSCPostalDETALLE_POSTAL: TStringField;
    CDSCPostalTELEDISCADO: TStringField;
    CDSCPostalPROVINCIA: TIntegerField;
    CDSCPostalMUESTRAPROVINCIA: TStringField;
    CDSBuscaCPostalID_POSTAL: TIntegerField;
    CDSBuscaCPostalCODIGO_POSTAL: TStringField;
    CDSBuscaCPostalDETALLE_POSTAL: TStringField;
    CDSBuscaCPostalTELEDISCADO: TStringField;
    CDSBuscaCPostalPROVINCIA: TIntegerField;
    ComBuscadorPostal: TComBuscador;
    CDSBuscaBancoID_BANCO: TIntegerField;
    CDSBuscaBancoNOMBRE: TStringField;
    CDSBuscaBancoDIRECCION: TStringField;
    CDSBuscaBancoTELEFONOS: TStringField;
    QBancos: TFDQuery;
    QBancosID_BANCO: TIntegerField;
    QBancosNOMBRE: TStringField;
    QBancosDIRECCION: TStringField;
    QBancosTELEFONOS: TStringField;
    QBancosSUCURSAL: TStringField;
    QBancosLOCALIDAD: TStringField;
    QBancosNOTAS: TMemoField;
    QBancosID_POSTAL: TIntegerField;
    QBancosMUESTRALOCALIDAD: TStringField;
    QBancosMUESTRATELEDISCADO: TStringField;
    QVerificaUso: TFDQuery;
    procedure CDSBancoID_POSTALSetText(Sender: TField;
      const Text: String);
    procedure CDSBancoNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BuscarLocalidadExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  FUNCTION AsignaLocalidad(Dato: Integer): Boolean;

  end;

var
  FormBancos_2: TFormBancos_2;

implementation

uses UDMain_FD,DMBuscadoresForm;

{$R *.DFM}

FUNCTION TFormBancos_2.AsignaLocalidad(Dato: Integer): Boolean;
BEGIN
  CDSCPostal.Close;
  CDSCPostal.Params.ParamByName('id').Value := Dato;
    // wwLookupLocalidades.LookupTable.fieldByName('id_Postal').Value;
  CDSCPostal.Open;
  IF NOT (CDSCPostal.IsEmpty) THEN
    BEGIN
      result := True;
      CDSBancoMUESTRALOCALIDAD.Value   := CDSCPostalDetalle_Postal.Value;
      CDSBancoMUESTRATELEDISCADO.Value := CDSCPostalTelediscado.Value;
    END
  ELSE
    result := False;
  CDSCPostal.Close;
END;


procedure TFormBancos_2.CDSBancoID_POSTALSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString := Text;
  IF NOT (AsignaLocalidad(Sender.AsInteger)) THEN
    BEGIN
      ShowMessage('Codigo No Válido');
      Sender.AsString := '';
    END;
end;

procedure TFormBancos_2.CDSBancoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSBancoID_BANCO.Value := 1
  else
    CDSBancoID_BANCO.Value := QUltimoCodigo2.Fields[0].Value + 1;
  QUltimoCodigo2.Close;
end;

procedure TFormBancos_2.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSBanco, DSPBanco);
  CDSBanco.Open;
  Tabla:='bancos';
  campo:='id_banco';
end;

procedure TFormBancos_2.BorrarExecute(Sender: TObject);
begin
  QVerificaUso.Close;
  QVerificaUso.ParamByName('id_banco').AsInteger:=DSBase.DataSet.FieldByName('id_banco').AsInteger;
  QVerificaUso.Open;
  if QVerificaUso.Fields[0].AsInteger>0 then
    begin
      ShowMessage('Entidad en uso no se puede borrar...');
      DSBase.DataSet.Cancel;
      sysutils.Abort;
    end
  else
    inherited;
  QVerificaUso.Close;

end;

procedure TFormBancos_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaBanco.Close;
  CDSBuscaBanco.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk Then
      BEGIN
        DatoNew:= IntToStr(ComBuscadorBase.Id);
        Recuperar.Execute;
      END;
  CDSBuscaBanco.Close;
end;

procedure TFormBancos_2.BuscarLocalidadExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaCPostal.Close;
  CDSBuscaCPostal.Open;
  ComBuscadorPostal.Execute;
  IF comBuscadorPostal.rOk THEN
    BEGIN
      CDSBancoID_POSTALSetText(CDSBancoID_POSTAL, IntToStr(comBuscadorPostal.id));
    END;
  CDSBuscaCPostal.Close;
end;

procedure TFormBancos_2.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeCodigo.SetFocus;
end;

procedure TFormBancos_2.CancelarExecute(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormBancos_2.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSBancoID_BANCO.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormBancos_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSBanco.CLose;
  Action:=caFree;
end;

procedure TFormBancos_2.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormBancos_2.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSBanco.Close;
  CDSBanco.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSBanco.Open;
end;

procedure TFormBancos_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormBancos_2:=nil;
end;

end.