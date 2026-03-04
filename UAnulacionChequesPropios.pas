unit UAnulacionChequesPropios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, Mask, DBCtrls, Provider, DBClient,  Db,
    ActnList, Buttons, ToolWin, ComCtrls, ExtCtrls,
  IBGenerator, JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, SqlExpr, DBXCommon,
  System.Actions, JvExMask, JvToolEdit, JvAppStorage, JvAppIniStorage,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormAnulaCheques = class(TFormABMBase)
    pnCabecera: TPanel;
    dbtMuestraComprobante: TDBText;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeLetra: TDBEdit;
    dbeSucursal: TDBEdit;
    pnCheque: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    dbeDetalle: TDBEdit;
    DSPAnulaChe: TDataSetProvider;
    DSPSucrusal: TDataSetProvider;
    ibgIdAnulacio: TIBGenerator;
    BuscarChe: TAction;
    BitBtn1: TBitBtn;
    BuscarSucursal: TAction;
    BuscarTipoCpbte: TAction;
    dbeObs: TDBEdit;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    QAnulaChe: TFDQuery;
    QAnulaCheID: TIntegerField;
    QAnulaCheFECHA: TSQLTimeStampField;
    QAnulaCheDETALLE: TStringField;
    QAnulaCheTIPOCPBTE: TStringField;
    QAnulaCheCLASECPBTE: TStringField;
    QAnulaCheLETRA: TStringField;
    QAnulaCheSUC: TStringField;
    QAnulaCheNUMERO: TStringField;
    QAnulaCheSUCURSAL: TIntegerField;
    QAnulaCheNROCPBTE: TStringField;
    QAnulaCheID_CHE_ANULADO: TIntegerField;
    QAnulaCheIMPORTE: TFloatField;
    QAnulaCheOBSERVACIONES: TStringField;
    QAnulaCheMUESTRASUCURSAL: TStringField;
    QAnulaCheMUESTRACOMPROBANTE: TStringField;
    QAnulaCheID_TIPOCOMPROBANTE: TIntegerField;
    QAnulaCheMUESTRACHEFECHAEMISION: TSQLTimeStampField;
    QAnulaCheMUESTRACHEFECHACOBRO: TSQLTimeStampField;
    QAnulaCheMUESTRACHEIMPORTE: TFloatField;
    QAnulaCheMUESTRACHEORDENDE: TStringField;
    QAnulaCheMUESTRACHEIDBANCO: TIntegerField;
    QAnulaCheMUESTRACHENUMERO: TIntegerField;
    QAnulaCheMUESTRAUNIDADES: TFloatField;
    QAnulaCheMUESTRACTABANCO: TStringField;
    CDSAnulaChe: TClientDataSet;
    CDSAnulaCheID: TIntegerField;
    CDSAnulaCheFECHA: TSQLTimeStampField;
    CDSAnulaCheDETALLE: TStringField;
    CDSAnulaCheTIPOCPBTE: TStringField;
    CDSAnulaCheCLASECPBTE: TStringField;
    CDSAnulaCheLETRA: TStringField;
    CDSAnulaCheSUC: TStringField;
    CDSAnulaCheNUMERO: TStringField;
    CDSAnulaCheSUCURSAL: TIntegerField;
    CDSAnulaCheNROCPBTE: TStringField;
    CDSAnulaCheID_CHE_ANULADO: TIntegerField;
    CDSAnulaCheIMPORTE: TFloatField;
    CDSAnulaCheOBSERVACIONES: TStringField;
    CDSAnulaCheMUESTRASUCURSAL: TStringField;
    CDSAnulaCheMUESTRACOMPROBANTE: TStringField;
    CDSAnulaCheID_TIPOCOMPROBANTE: TIntegerField;
    CDSAnulaCheMUESTRACHEFECHAEMISION: TSQLTimeStampField;
    CDSAnulaCheMUESTRACHEFECHACOBRO: TSQLTimeStampField;
    CDSAnulaCheMUESTRACHEIMPORTE: TFloatField;
    CDSAnulaCheMUESTRACHEORDENDE: TStringField;
    CDSAnulaCheMUESTRACHEIDBANCO: TIntegerField;
    CDSAnulaCheMUESTRACHENUMERO: TIntegerField;
    CDSAnulaCheMUESTRAUNIDADES: TFloatField;
    CDSAnulaCheMUESTRACTABANCO: TStringField;
    spDebitar: TFDStoredProc;
    QComprob: TFDQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QComprobREPORTE: TStringField;
    QComprobIMPRIME: TStringField;
    QComprobCOPIAS: TIntegerField;
    QBuscaCompro: TFDQuery;
    CDSBuscaComprob: TClientDataSet;
    DSPBuscaComprob: TDataSetProvider;
    CDSBuscaComprobID_COMPROBANTE: TIntegerField;
    CDSBuscaComprobTIPO_COMPROB: TStringField;
    CDSBuscaComprobCLASE_COMPROB: TStringField;
    CDSBuscaComprobDENOMINACION: TStringField;
    CDSBuscaComprobSUCURSAL: TIntegerField;
    CDSBuscaComprobLETRA: TStringField;
    CDSBuscaComprobPREFIJO: TStringField;
    CDSBuscaComprobNUMERARCION_PROPIA: TStringField;
    CDSBuscaComprobNUMERO: TStringField;
    CDSBuscaComprobTOMA_NRO_DE: TIntegerField;
    CDSBuscaComprobAFECTA_IVA: TStringField;
    CDSBuscaComprobAFECTA_CC: TStringField;
    CDSBuscaComprobDESGLOZA_IVA: TStringField;
    CDSBuscaComprobCOMPRA_VENTA: TStringField;
    CDSBuscaComprobCOPIAS: TIntegerField;
    CDSBuscaComprobREPORTE: TStringField;
    CDSBuscaComprobIMPRIME: TStringField;
    CDSBuscaComprobFISCAL: TStringField;
    CDSBuscaComprobNOMBREIMPRESORA: TStringField;
    CDSBuscaComprobPENDIENTEIMPRESION: TStringField;
    CDSBuscaComprobLINEAS_DETALLE: TSmallintField;
    CDSBuscaComprobCALCULA_IVA_ARTICULOS: TStringField;
    CDSBuscaComprobDEFECTO: TStringField;
    QBuscadorCheque: TFDQuery;
    dbeFecha: TJvDBDateEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    RxLabel1: TJvLabel;
    RxLabel8: TJvLabel;
    RxLabel59: TJvLabel;
    RxLabel58: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel9: TJvLabel;
    QBuscadorChequeID_CHEQUE_PRO: TIntegerField;
    QBuscadorChequeID_CHEQUERA: TIntegerField;
    QBuscadorChequeID_BANCO: TIntegerField;
    QBuscadorChequeFECHA_EMISION: TSQLTimeStampField;
    QBuscadorChequeFECHA_COBRO: TSQLTimeStampField;
    QBuscadorChequeORDEN_DE: TStringField;
    QBuscadorChequeDEBITADO: TStringField;
    QBuscadorChequeNUMERO: TIntegerField;
    QBuscadorChequeIMPORTE: TFloatField;
    QBuscadorChequeUNIDADES: TFloatField;
    QBuscadorChequeMUESTRABCO: TStringField;
    QBuscadorChequeID_CUENTA_BANCO: TIntegerField;
    ComBuscadorTipoCpbte: TComBuscador;
    ComBuscadorSucursal: TComBuscador;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarCheExecute(Sender: TObject);
    procedure CDSAnulaCheID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSAnulaCheSUCSetText(Sender: TField; const Text: String);
    procedure CDSAnulaCheNUMEROSetText(Sender: TField;
      const Text: String);
    procedure CDSAnulaCheNewRecord(DataSet: TDataSet);
    procedure CDSAnulaCheSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSAnulaCheID_CHE_ANULADOSetText(Sender: TField;
      const Text: String);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Debitado:Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    function AsignarComprobante(Dato: Integer):Boolean;
    function AsignarCheque(dato:Integer):Boolean;
  end;

var
  FormAnulaCheques: TFormAnulaCheques;

PROCEDURE UltimoComprobante;

implementation

uses UBuscadorChePropios, UBuscadorCpbte,
     DMBuscadoresForm, DMStoreProcedureForm, UDMain_FD;


{$R *.DFM}

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH FormAnulaCheques,DMStoreProcedure DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSAnulaCheLETRA.AsString <> '') AND (CDSAnulaCheCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value := CDSAnulaCheLETRA.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value  := CDSAnulaCheSUCURSAL.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value := CDSAnulaCheCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value  := CDSAnulaCheTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'C';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
          ELSE
            Numero := 1;
          CDSAnulaCheSUCSetText(CDSAnulaCheSUC, IntToStr(Numero));
          IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
          ELSE
            Numero := 1;
          CDSAnulaCheNUMEROSetText(CDSAnulaCheNUMERO, IntToStr(Numero));
          CDSAnulaCheTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').Value;
          CDSAnulaCheCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').Value;
          Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSAnulaCheNROCPBTE.AsString := CDSAnulaCheLETRA.AsString +
                                      CDSAnulaCheSUC.AsString +
                                      CDSAnulaCheNUMERO.AsString;
    END;

END;

FUNCTION TFormAnulaCheques.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      CDSAnulaCheID_TIPOCOMPROBANTE.Clear;
      CDSAnulaCheMUESTRACOMPROBANTE.Clear;
      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      CDSBuscaComprob.Open;
      if CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSAnulaCheID_TIPOCOMPROBANTESetText(CDSAnulaCheID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          //dbeDetalle.SetFocus;
        end;
       Result := True;
      CDSAnulaCheMUESTRASUCURSAL.Value := CDSSucursalDetalle.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSAnulaCheMUESTRASUCURSAL.Value := '';
    END;
END;

function  TFormAnulaCheques.AsignarComprobante(Dato: Integer):Boolean;
begin
  inherited;
  QComprob.Close;
  QComprob.ParamByName('id').Value  := dato;
  QComprob.ParamByName('Suc').Value := CDSAnulaCheSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSAnulaCheMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSAnulaCheLETRA.Value              := QComprobLETRA.Value;
      CDSAnulaCheTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSAnulaCheCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSAnulaCheMUESTRACOMPROBANTE.Value := '';
      CDSAnulaCheLETRA.Value              := '';
      CDSAnulaCheTIPOCPBTE.Value          := '';
      CDSAnulaCheCLASECPBTE.Value         := '';
    END;
  QComprob.Close;
end;

function TFormAnulaCheques.AsignarCheque(Dato:Integer):Boolean;
var Anula:boolean;
begin
  Anula:=True;
  QBuscadorCheque.Close;
  QBuscadorCheque.ParamByName('id').Value:=dato;
  QBuscadorCheque.Open;
  if Not(QBuscadorCheque.IsEmpty) Then
    begin
      if QBuscadorChequeDEBITADO.Value='S' then
        if MessageDlg('El cheque fue debitado de la cta.cte... Igual continua con la anulación??',mtConfirmation,mbYesNo,0)=mrYes Then
          Anula:=True
        else
          Anula:=False;
      if (Anula=True) then
        begin
          Result:=True;
          CDSAnulaCheMUESTRACHEFECHAEMISION.Value := QBuscadorChequeFECHA_EMISION.Value;
          CDSAnulaCheMUESTRACHEFECHACOBRO.Value   := QBuscadorChequeFECHA_COBRO.Value;
          CDSAnulaCheMUESTRACHEIMPORTE.Value      := QBuscadorChequeIMPORTE.Value;
          CDSAnulaCheMUESTRACHEORDENDE.Value      := QBuscadorChequeORDEN_DE.Value;
          CDSAnulaCheMUESTRACHENUMERO.Value       := QBuscadorChequeNUMERO.Value;
          CDSAnulaCheMUESTRACTABANCO.Value        := QBuscadorChequeMUESTRABCO.Value;
          CDSAnulaCheIMPORTE.Value                := QBuscadorChequeIMPORTE.Value;
          CDSAnulaCheDETALLE.Value                := 'Anulacion Che.'+QBuscadorChequeNUMERO.AsString+' del '+QBuscadorChequeMUESTRABCO.Value;
          Debitado                                := QBuscadorChequeDEBITADO.Value='S';
        end
      else
        begin
          Result:=False;
          CDSAnulaCheMUESTRACHEFECHAEMISION.Clear;
          CDSAnulaCheMUESTRACHEFECHACOBRO.Clear;
          CDSAnulaCheMUESTRACHEIMPORTE.AsFloat:= 0;
          CDSAnulaCheMUESTRACHEORDENDE.Value  := '';
          CDSAnulaCheMUESTRACHENUMERO.clear;
          CDSAnulaCheMUESTRACTABANCO.Value    := '';
        end;
    end;
end;

procedure TFormAnulaCheques.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSAnulaChe,DSPAnulaChe);
  CDSAnulaChe.OPen;
  pnPrincipal.Enabled:=True;
end;

procedure TFormAnulaCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAnulaCheques.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAnulaCheques:=nil;
end;

procedure TFormAnulaCheques.BuscarCheExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorChePropios)) Then
    FormBuscadorChePropios:=TFormBuscadorChePropios.Create(Application);
  FormBuscadorChePropios.Estado:='N';
  FormBuscadorChePropios.ShowModal;
  if FormBuscadorChePropios.IdCheque>0 Then
    begin
      CDSAnulaCheID_CHE_ANULADOSetText(CDSAnulaCheID_CHE_ANULADO,IntToStr(FormBuscadorChePropios.IdCheque));
    end;
end;

procedure TFormAnulaCheques.CDSAnulaCheID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  inherited;
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF Not(AsignarComprobante(Sender.AsInteger)) Then
        begin
          Sender.AsString:='';
          ShowMessage('Dato No Válido');
          RxCTipoCpbte.SetFocus;
        end;
      IF DsBase.State = dsInsert THEN
        UltimoComprobante;
     end;

end;


procedure TFormAnulaCheques.CDSAnulaCheSUCSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-Length(Text))+Text;
  CDSAnulaCheNROCPBTE.Value := CDSAnulaCheLETRA.Value +
                               CDSAnulaCheSUC.Value +
                               CDSAnulaCheNUMERO.Value;
end;

procedure TFormAnulaCheques.CDSAnulaCheNUMEROSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-Length(Text))+Text;
  CDSAnulaCheNROCPBTE.Value := CDSAnulaCheLETRA.Value +
                               CDSAnulaCheSUC.Value +
                               CDSAnulaCheNUMERO.Value;
end;

procedure TFormAnulaCheques.CDSAnulaCheNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSAnulaCheFECHA.AsDateTime := Date;
  CDSAnulaCheID.Value         := ibgIdAnulacio.IncrementFD(1);
  CDSAnulaCheSUCURSALSetText(CDSAnulaCheSUCURSAL,intToStr(SucursalPorDefecto));

end;

procedure TFormAnulaCheques.CDSAnulaCheSUCURSALSetText(Sender: TField;
  const Text: String);
begin
  inherited;
   IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
     Sender.AsString:=Text;
     if Not(AsignarSucursal(Sender.AsInteger)) Then
       begin
         ShowMessage('Dato No Válido');
         Sender.AsString:='';
         RxDBESucursal.SetFocus;
       end;
     end;
end;

procedure TFormAnulaCheques.AgregarExecute(Sender: TObject);
begin
  CDSAnulaChe.Close;
  CDSAnulaChe.Params.ParamByName('id').Clear;
  CDSAnulaChe.Params.ParamByName('Tipo').Clear;
  CDSAnulaChe.Open;
  inherited;
  dbeObs.SetFocus;
end;

procedure TFormAnulaCheques.CancelarExecute(Sender: TObject);
begin
  CDSAnulaChe.Close;
  CDSAnulaChe.Params.ParamByName('id').Clear;
  CDSAnulaChe.Params.ParamByName('Tipo').Clear;
  CDSAnulaChe.Open;
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormAnulaCheques.ConfirmaExecute(Sender: TObject);
begin
  DatoNew  := IntToStr(CDSAnulaCheID.Value);
  TipoCpbte:= CDSAnulaCheTIPOCPBTE.Value;
  inherited;
  Recuperar.Execute;
  // si se genero la transaccion entonces verifico lo siguiente
  QBuscadorCheque.Close;
  QBuscadorCheque.ParamByName('id').Value:= CDSAnulaCheID_CHE_ANULADO.Value;
  QBuscadorCheque.Open;
  Debitado := QBuscadorChequeDEBITADO.Value='S';
  if CDSAnulaCheID.AsString<>'' then
    begin
      if (Debitado=False) then
        begin
           DMMain_FD.fdcGestion.StartTransaction;
           try
            spDebitar.Close;
            spDebitar.ParamByName('id_cuenta_banco').Value:= QBuscadorChequeID_CUENTA_BANCO.Value;
            spDebitar.ParamByName('id_cheque_pro').Value  := QBuscadorChequeID_CHEQUE_PRO.Value;
            spDebitar.ParamByName('Fecha_Debito').Value   := CDSAnulaCheFECHA.AsDateTime;
            spDebitar.ParamByName('Fecha_Cobro').Value    := QBuscadorChequeFECHA_COBRO.AsDateTime;
            spDebitar.ParamByName('Importe').Value        := QBuscadorChequeIMPORTE.AsFloat;
            spDebitar.ParamByName('Numero').Value         := QBuscadorChequeNUMERO.Value;
            spDebitar.ParamByName('Orden_de').Value       := QBuscadorChequeORDEN_DE.Value;
            spDebitar.ExecProc;
            DMMain_FD.fdcGestion.Commit;
            spDebitar.Close;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No Se Genero el debito del cheque, controlar la conciliacion de cheques....');
          end;
        end;
    end;
  btNuevo.SetFocus;
end;

procedure TFormAnulaCheques.CDSAnulaCheID_CHE_ANULADOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if (Text<>'') and (Text <> #13) Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarCheque(Sender.AsInteger)) Then
        begin
          Sender.Clear;
          ShowMessage('Dato no Encontrado');
        end;
    end;
end;

procedure TFormAnulaCheques.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    CDSAnulaCheSUCURSALSetText(CDSAnulaCheSUCURSAL, IntToStr(comBuscadorSucursal.Id));
  CDSBuscaSucursal.Close;

end;

procedure TFormAnulaCheques.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaComprob.Close;
  CDSBuscaComprob.Params.ParamByName('Suc').Value := CDSAnulaCheSUCURSAL.Value;
  CDSBuscaComprob.Open;
  IF NOT (CDSBuscaComprob.IsEmpty) THEN
    BEGIN
      comBuscadorTipoCpbte.Execute;
      if comBuscadorTipoCpbte.rOk Then
        CDSAnulaCheID_TIPOCOMPROBANTESetText(CDSAnulaCheID_TIPOCOMPROBANTE, IntToStr(comBuscadorTipoCpbte.Id));
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  CDSBuscaComprob.Close;

end;

procedure TFormAnulaCheques.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Application);
  FormBuscaCpbte.TipoCpbte1:='AC';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.Tag := 22;
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;
  // DatosMovValoresRecibo.QCajaCab.Open;

end;

procedure TFormAnulaCheques.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSAnulaChe.close;
  CDSAnulaChe.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  CDSAnulaChe.Params.ParamByName('Tipo').Value := TipoCpbte;
  CDSAnulaChe.Open;
end;

end.
