unit UCtaCaja_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase,  Db, DBClient, Provider, DBCtrls, StdCtrls, Mask, Librerias,
  ActnList, ImgList, Buttons, ToolWin,
  ComCtrls, ExtCtrls, JvComponentBase, JvExControls, JvGradient, JvExMask,
  JvToolEdit, JvDBControls, JvFormPlacement, JvLabel, FMTBcd, SqlExpr,DBXCommon,
  JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormCtaCaja_2 = class(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    dbeNombre: TDBEdit;
    dbeNumero: TDBEdit;
    dbcTipoCta: TDBLookupComboBox;
    dbeCodigo: TDBEdit;
    dbeNombreBanco: TDBEdit;
    DSPCtaCaja: TDataSetProvider;
    DSPBanco: TDataSetProvider;
    BuscarBanco: TAction;
    Label6: TLabel;
    dbeCuit: TDBEdit;
    Label7: TLabel;
    dbeRazonSocial: TDBEdit;
    RxDBCId_Banco: TJvDBComboEdit;
    CDSCtaCaja: TClientDataSet;
    CDSCtaCajaID_CUENTA: TIntegerField;
    CDSCtaCajaID_TIPO_CTA: TIntegerField;
    CDSCtaCajaNOMBRE: TStringField;
    CDSCtaCajaNRO_CUENTA: TStringField;
    CDSCtaCajaID_BANCO: TIntegerField;
    CDSCtaCajaMUESTRABANCO: TStringField;
    CDSCtaCajaCUIT: TStringField;
    CDSCtaCajaRAZONSOCIAL: TStringField;
    CDSBancos: TClientDataSet;
    CDSBancosID_BANCO: TIntegerField;
    CDSBancosNOMBRE: TStringField;
    CDSBancosDIRECCION: TStringField;
    CDSBancosSUCURSAL: TStringField;
    DSTipoCta: TDataSource;
    CDSTCta: TClientDataSet;
    DSPTCta: TDataSetProvider;
    CDSTCtaID_TIPO_CTA: TIntegerField;
    CDSTCtaDESCRIPCION: TStringField;
    CDSBuscaBancos: TClientDataSet;
    DSPBuscaBancos: TDataSetProvider;
    CDSBuscaBancosNOMBRE: TStringField;
    CDSBuscaBancosSUCURSAL: TStringField;
    CDSBuscaBancosID_BANCO: TIntegerField;
    CDSBuscaBancosDIRECCION: TStringField;
    CDSBuscaCtaCaja: TClientDataSet;
    DSPBuscaCTaCaja: TDataSetProvider;
    CDSBuscaCtaCajaID_CUENTA: TIntegerField;
    CDSBuscaCtaCajaNOMBRE: TStringField;
    CDSBuscaCtaCajaNRO_CUENTA: TStringField;
    CDSBuscaCtaCajaMUESTRABANCO: TStringField;
    CDSBuscaCtaCajaMUESTRATIPOCTA: TStringField;
    CDSBuscaCtaCajaID_TIPO_CTA: TIntegerField;
    CDSBuscaCtaCajaID_BANCO: TIntegerField;
    CDSBuscaCtaCajaCUIT: TStringField;
    ActualizaCuitLiq: TAction;
    SpeedButton1: TSpeedButton;
    ComBuscadorBco: TComBuscador;
    QTCt: TFDQuery;
    QCtaCaja: TFDQuery;
    QCtaCajaID_CUENTA: TIntegerField;
    QCtaCajaID_TIPO_CTA: TIntegerField;
    QCtaCajaNOMBRE: TStringField;
    QCtaCajaNRO_CUENTA: TStringField;
    QCtaCajaID_BANCO: TIntegerField;
    QCtaCajaCUIT: TStringField;
    QCtaCajaRAZONSOCIAL: TStringField;
    QCtaCajaMUESTRABANCO: TStringField;
    QActualizaCuitFD: TFDQuery;
    QBuscaCtaCaja: TFDQuery;
    QBuscaBancos: TFDQuery;
    QBancos: TFDQuery;
    procedure CDSCtaCajaNewRecord(DataSet: TDataSet);
    procedure CDSCtaCajaID_BANCOSetText(Sender: TField;
      const Text: String);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BuscarBancoExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure dbcTipoCtaClick(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CDSCtaCajaCUITSetText(Sender: TField; const Text: string);
    procedure ActualizaCuitLiqExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure dbeCuitExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FUNCTION AsignaBanco(Dato: Integer): Boolean;

  end;

var
  FormCtaCaja_2: TFormCtaCaja_2;

implementation

uses UDMain_FD;

{$R *.DFM}

FUNCTION TFormCtaCaja_2.AsignaBanco(Dato: Integer): Boolean;
BEGIN
  CDSBancos.Close;
  CDSBancos.Params.ParamByName('id').Value := Dato;
  CDSBancos.Open;
  IF NOT (CDSBancos.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSCtaCajaMUESTRABANCO.Value := CDSBancosNOMBRE.Value;
    END
  ELSE
    Result := False;
END;

procedure TFormCtaCaja_2.CDSCtaCajaNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSCtaCajaID_CUENTA.Value:=1
  else
    CDSCtaCajaID_CUENTA.Value := QUltimoCodigo2.Fields[0].Value + 1;
  QUltimoCodigo2.Close;
end;

procedure TFormCtaCaja_2.CDSCtaCajaCUITSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Text<>'') and (Text<>#13) then
    begin
      Sender.AsString:=Text;
      if ValidarCuit(Sender.AsString)=False then
        Sender.Clear;
    end;
end;

procedure TFormCtaCaja_2.CDSCtaCajaID_BANCOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString := Text;
  IF NOT (AsignaBanco(Sender.AsInteger)) THEN
    BEGIN
      ShowMessage('Codigo no válido');
      Sender.AsString := '';
    END;

end;

procedure TFormCtaCaja_2.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AddClientDataSet(CDSCtaCaja, DSPCtaCaja);
  CDSCtaCaja.Open;
  CDSTCta.Open;
  dbeNumero.Enabled     :=False;
  RxDBCId_Banco.Enabled :=False;
  dbeCuit.Enabled       :=False;
  dbeRazonSocial.Enabled:=False;
  dbeNumero.Color       :=clBtnFace;
  RxDBCId_Banco.Color   :=clBtnFace;
  dbeCuit.Color         :=clBtnFace;
  dbeRazonSocial.Color  :=clBtnFace;

  Tabla:='cuenta_caja';
  Campo:='id_cuenta';
end;

procedure TFormCtaCaja_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSBancos.Close;
  CDSTCta.Close;
  CDSCtaCaja.Close;
  Action:=caFree;
end;

procedure TFormCtaCaja_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCtaCaja_2:=nil;
end;

procedure TFormCtaCaja_2.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormCtaCaja_2.BorrarExecute(Sender: TObject);
var SQL:TFDQuery;
begin
  SQL:=TFDQuery.Create(NIL);
  SQL.Connection:=DMMain_FD.fdcGestion;
  SQL.SQL.Text:='select max(c.id_caja) from caja_cab c where c.id_cuenta_caja='+CDSCtaCajaID_CUENTA.AsString;
  SQL.Open;

  if (sql.Fields[0].AsString<>'') and (sql.Fields[0].AsInteger>0) Then
    raise Exception.Create('No se Puede Hacer una Operacion de Borrado, Cta en uso...');
  inherited;
  SQL.Close;
  FreeAndNil(SQL);
end;

procedure TFormCtaCaja_2.BuscarBancoExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaBancos.Close;
  CDSBuscaBancos.Open;
  ComBuscadorBco.Execute;
  IF ComBuscadorBco.rOk THEN
    CDSCtaCajaID_BANCOSetText(CDSCtaCajaID_BANCO,IntToStr(comBuscadorBco.id));
  CDSBuscaBancos.Close;
end;

procedure TFormCtaCaja_2.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSCtaCajaID_CUENTA.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormCtaCaja_2.CancelarExecute(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormCtaCaja_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaCtaCaja.Close;
  CDSBuscaCtaCaja.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk Then
      begin
        DatoNew:=IntToStr(ComBuscadorBase.Id);
        Recuperar.Execute;
      end;
   CDSBuscaCtaCaja.Close;
end;

procedure TFormCtaCaja_2.dbcTipoCtaClick(Sender: TObject);
begin

  if dbcTipoCta.KeyValue=1 Then
    begin
      dbeNumero.Enabled     :=False;
      RxDBCId_Banco.Enabled :=False;
      dbeCuit.Enabled       :=False;
      dbeRazonSocial.Enabled:=False;

      dbeNumero.Color       :=clBtnFace;
      RxDBCId_Banco.Color   :=clBtnFace;
      dbeCuit.Color         :=clBtnFace;
      dbeRazonSocial.Color  :=clBtnFace;

    end
   else
  if dbcTipoCta.KeyValue=2 Then
    begin
      dbeNumero.Enabled     :=True;
      RxDBCId_Banco.Enabled :=True;
      dbeCuit.Enabled       :=True;
      dbeRazonSocial.Enabled:=True;

      dbeNumero.Color       :=clWindow;
      RxDBCId_Banco.Color   :=clWindow;
      dbeCuit.Color         :=clWindow;
      dbeRazonSocial.Color  :=clWindow;

    end;

end;

procedure TFormCtaCaja_2.dbeCuitExit(Sender: TObject);
begin
  inherited;
  if dbeCuit.Text[1]=' ' then
     dbeCuit.Clear;
end;

procedure TFormCtaCaja_2.DSBaseStateChange(Sender: TObject);
var SQL:TFDQuery;
  Estado:Boolean;
begin
  Estado:=True;
  if CDSCtaCajaID_CUENTA.AsString<>'' then
    begin
      SQL:=TFDQuery.Create(NIL);
      SQL.Connection:=DMMain_FD.fdcGestion;
      SQL.SQL.Text:='select max(c.id_caja) from caja_cab c where c.id_cuenta_caja='+CDSCtaCajaID_CUENTA.AsString;
      SQL.Open;
      if (sql.Fields[0].AsString<>'') and (sql.Fields[0].AsInteger>0) Then
        Estado:=False;

      if Estado=True then
        begin
          SQL.SQL.Text:='select max(c.id) from resumen_bco_det c where c.id_cta_bco='+CDSCtaCajaID_CUENTA.AsString;
          SQL.Open;
           if (sql.Fields[0].AsString<>'') and (sql.Fields[0].AsInteger>0) Then
             estado:=False;
        end;
      SQL.Close;
      FreeAndNil(SQL);
    end;

  inherited;
  ActualizaCuitLiq.Enabled    :=(DSBase.DataSet.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
  dbcTipoCta.Enabled:=Estado;
end;

procedure TFormCtaCaja_2.ActualizaCuitLiqExecute(Sender: TObject);
begin
  inherited;
  if CDSCtaCajaID_TIPO_CTA.Value=2 then
    begin
      if MessageDlg('Esta Operación, actualiza el Nro de Cuit'+#13+
                    'en todos los comprobantes asociados a este Cta'+#13+
                    '... esta seguro..???',mtConfirmation,mbYesNo,0,mbNo)=mrYes Then
      begin
         DMMain_FD.fdcGestion.StartTransaction;
        try
          QActualizaCuitFD.Close;
          QActualizaCuitFD.ParamByName('idCta').Value:=CDSCtaCajaID_CUENTA.Value;
          QActualizaCuitFD.ExecSQL();
           DMMain_FD.fdcGestion.Commit;
        Except
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('No se pudo Modificar los Cuit...!!!');
        end;
      end;
    end;
end;

procedure TFormCtaCaja_2.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeCodigo.SetFocus;
  dbeNumero.Enabled     :=False;
  RxDBCId_Banco.Enabled :=False;
  dbeCuit.Enabled       :=False;
  dbeNumero.Color       :=clBtnFace;
  RxDBCId_Banco.Color   :=clBtnFace;
  dbeCuit.Color         :=clBtnFace;
end;

procedure TFormCtaCaja_2.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSCtaCaja.Close;
  CDSCtaCaja.Params.ParamByName('id').Value := StrToInt(DatoNew);
  CDSCtaCaja.Open;
  if CDSCtaCajaID_TIPO_CTA.Value=1 Then
    begin
      dbeNumero.Enabled     :=False;
      RxDBCId_Banco.Enabled :=False;
      dbeCuit.Enabled       :=False;
      dbeRazonSocial.Enabled:=False;
      dbeNumero.Color       :=clBtnFace;
      RxDBCId_Banco.Color   :=clBtnFace;
      dbeCuit.Color         :=clBtnFace;
      dbeRazonSocial.Color  :=clBtnFace;
      ActualizaCuitLiq.Enabled:=False;
    end
   else
  if CDSCtaCajaID_TIPO_CTA.Value=2 Then
    begin
      dbeNumero.Enabled     :=True;
      RxDBCId_Banco.Enabled :=True;
      dbeCuit.Enabled       :=True;
      dbeRazonSocial.Enabled:=True;
      dbeNumero.Color       :=clWindow;
      RxDBCId_Banco.Color   :=clWindow;
      dbeCuit.Color         :=clWindow;
      dbeRazonSocial.Color  :=clWindow;
      ActualizaCuitLiq.Enabled:=True;
    end;
end;

end.