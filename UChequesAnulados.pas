unit UChequesAnulados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  Datasnap.Provider, Datasnap.DBClient, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase, JvFormPlacement,
  Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, JvExMask,
  JvToolEdit, UMovValoresEgresos,dbxCommon, frxClass, frxDBSet, frxDesgn,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, frCoreClasses;

type
  TFormChequesAnulados = class(TFormABMBase)
    QCheques: TFDQuery;
    CDSCheques: TClientDataSet;
    DSPCheques: TDataSetProvider;
    QChequesID: TIntegerField;
    QChequesFECHA: TSQLTimeStampField;
    QChequesTIPOCPBTE: TStringField;
    QChequesCLASECPBTE: TStringField;
    QChequesLETRA: TStringField;
    QChequesSUC: TStringField;
    QChequesNUMERO: TStringField;
    QChequesNROCPBTE: TStringField;
    QChequesOBSERVACIONES: TStringField;
    CDSChequesID: TIntegerField;
    CDSChequesFECHA: TSQLTimeStampField;
    CDSChequesTIPOCPBTE: TStringField;
    CDSChequesCLASECPBTE: TStringField;
    CDSChequesLETRA: TStringField;
    CDSChequesSUC: TStringField;
    CDSChequesNUMERO: TStringField;
    CDSChequesNROCPBTE: TStringField;
    CDSChequesOBSERVACIONES: TStringField;
    QChequesSUCURSAL: TIntegerField;
    QChequesMUESTRASUCURSAL: TStringField;
    QChequesMUESTRACOMPROBANTE: TStringField;
    CDSChequesSUCURSAL: TIntegerField;
    CDSChequesMUESTRASUCURSAL: TStringField;
    CDSChequesMUESTRACOMPROBANTE: TStringField;
    RxLabel58: TJvLabel;
    dbeFecha: TJvDBDateEdit;
    RxLabel59: TJvLabel;
    RxDBESucursal: TJvDBComboEdit;
    dbeSucursal: TDBEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    RxLabel6: TJvLabel;
    dbtMuestraComprobante: TDBText;
    dbeLetra: TDBEdit;
    RxLabel60: TJvLabel;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    pnCabecera: TPanel;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    DSPSucrusal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    ComBuscadorSucursal: TComBuscador;
    QChequesID_TIPOCOMPROBANTE: TIntegerField;
    CDSChequesID_TIPOCOMPROBANTE: TIntegerField;
    BuscarTipoComprobante: TAction;
    BuscarSucursal: TAction;
    FrameMovValoresEgresos1: TFrameMovValoresEgresos;
    pnPie: TPanel;
    DBMemo1: TDBMemo;
    JvLabel1: TJvLabel;
    QComprob: TFDQuery;
    QComprobID_COMPROBANTE: TIntegerField;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobSUCURSAL: TIntegerField;
    QComprobLETRA: TStringField;
    QComprobPREFIJO: TStringField;
    QComprobNUMERO: TStringField;
    QComprobNUMERARCION_PROPIA: TStringField;
    QComprobTOMA_NRO_DE: TIntegerField;
    QComprobAFECTA_IVA: TStringField;
    QComprobAFECTA_CC: TStringField;
    QComprobDESGLOZA_IVA: TStringField;
    QComprobCOMPRA_VENTA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QComprobIMPRIME: TStringField;
    QComprobCAJA_DEFECTO: TIntegerField;
    QChequesUSUARIO: TStringField;
    QChequesFECHA_HORA: TSQLTimeStampField;
    CDSChequesUSUARIO: TStringField;
    CDSChequesFECHA_HORA: TSQLTimeStampField;
    pnValores: TPanel;
    QChequesDETALLE: TStringField;
    CDSChequesDETALLE: TStringField;
    QChequesID_CHEQUE: TIntegerField;
    CDSChequesID_CHEQUE: TIntegerField;
    spDebitar: TFDStoredProc;
    QBuscadorCheque: TFDQuery;
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
    spAnular: TFDStoredProc;
    frReporte: TfrxReport;
    frxDBCajaMov: TfrxDBDataset;
    frxDBChe: TfrxDBDataset;
    frxDBAnulacion: TfrxDBDataset;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    procedure CDSChequesSUCURSALSetText(Sender: TField; const Text: string);
    procedure CDSChequesID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: string);
    procedure BuscarTipoComprobanteExecute(Sender: TObject);
    procedure CDSChequesSUCSetText(Sender: TField; const Text: string);
    procedure CDSChequesNUMEROSetText(Sender: TField; const Text: string);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure CDSChequesNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure pnValoresEnter(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FrameMovValoresEgresos1CDSCajaMovAfterDelete(DataSet: TDataSet);
    procedure FrameMovValoresEgresos1CDSCajaMovBeforeDelete(DataSet: TDataSet);
    procedure FrameMovValoresEgresos1CDSCajaMovBeforeInsert(DataSet: TDataSet);
    procedure FrameMovValoresEgresos1BitBtn8Click(Sender: TObject);
    procedure FrameMovValoresEgresos1btPostClick(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Debitado:Boolean;
    Function AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer):Boolean;
  end;

var
  FormChequesAnulados: TFormChequesAnulados;

implementation

uses UDMain_FD,  DMBuscadoresForm, UBuscadorComprobantes,
  DMStoreProcedureForm, UBuscadorCpbte;

{$R *.dfm}

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH FormChequesAnulados,DMStoreProcedure DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSChequesLETRA.AsString <> '') AND (CDSChequesCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value := CDSChequesLETRA.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value  := CDSChequesSUCURSAL.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value := CDSChequesCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value  := CDSChequesTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'C';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
          ELSE
            Numero := 1;
          CDSChequesSUCSetText(CDSChequesSUC, IntToStr(Numero));
          IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
          ELSE
            Numero := 1;
          CDSChequesNUMEROSetText(CDSChequesNUMERO, IntToStr(Numero));
          CDSChequesTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').Value;
          CDSChequesCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').Value;
          Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSChequesNROCPBTE.AsString := CDSChequesLETRA.AsString +
                                        CDSChequesSUC.AsString +
                                        CDSChequesNUMERO.AsString;
    END;

END;



procedure TFormChequesAnulados.AgregarExecute(Sender: TObject);
begin
  CDSCheques.close;
  CDSCheques.Params.ParamByName('id').Clear;
  CDSCheques.Open;

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Open;

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCheques.Open;
  INHERITED;
  FrameMovValoresEgresos1.ceCaja.Text       :='';
  FrameMovValoresEgresos1.edMuestraCaja.Text:='';
  FrameMovValoresEgresos1.SumaValores:=0;
  FrameMovValoresEgresos1.CDSCajaMov.EmptyDataSet;
  pnCabecera.Enabled:=True;
end;


FUNCTION TFormChequesAnulados.AsignarComprobante(Dato: Integer):Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSChequesSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      if (QComprobCAJA_DEFECTO.AsString<>'') and (QComprobCAJA_DEFECTO.Value>0) then
        CajaPorDefecto:=QComprobCAJA_DEFECTO.Value
      else
        CajaPorDefecto:=DMMain_FD.CajaSeleccionada;
      //*****************************************************************************
      //*****************************************************************************
      CDSChequesMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSChequesLETRA.Value              := QComprobLETRA.Value;
      CDSChequesTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSChequesCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSChequesMUESTRACOMPROBANTE.Value := '';
      CDSChequesLETRA.Value              := '';
      CDSChequesTIPOCPBTE.Value          := '';
      CDSChequesCLASECPBTE.Value         := '';
    END;
  QComprob.Close;
END;


FUNCTION TFormChequesAnulados.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      Result := True;
      CDSChequesID_TIPOCOMPROBANTE.Clear;
      CDSChequesMUESTRACOMPROBANTE.Clear;
      CDSChequesMUESTRASUCURSAL.Value:=CDSSucursalDETALLE.Value;

      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal=:suc and compra_venta= ''C'' and '+
                                                ' (tipo_comprob = ''HA'') ';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      DMBuscadores.CDSBuscaComprob.Open;

     if DMBuscadores.CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSChequesID_TIPOCOMPROBANTESetText(CDSChequesID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
        end
      else
        begin
          DMBuscadores.CDSBuscaComprob.Filtered:=False;
          DMBuscadores.CDSBuscaComprob.Filter  :='(DEFECTO = ''S'' ) and ( EN_USO = ''S'' )';
          DMBuscadores.CDSBuscaComprob.Filtered:=True;
          if DMBuscadores.CDSBuscaComprob.RecordCount>0 then
            begin
              DMBuscadores.CDSBuscaComprob.First;
              if DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString<>'' then
                begin
                  CDSChequesID_TIPOCOMPROBANTESetText(CDSChequesID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
                end;
            end
          else
            begin
              DMBuscadores.CDSBuscaComprob.Filtered:=False;
              DMBuscadores.CDSBuscaComprob.Filter  :='( EN_USO = ''S'' )';
              DMBuscadores.CDSBuscaComprob.Filtered:=True;
              if DMBuscadores.CDSBuscaComprob.RecordCount>0 then
                begin
                  DMBuscadores.CDSBuscaComprob.First;
                  if DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString<>'' then
                    begin
                      CDSChequesID_TIPOCOMPROBANTESetText(CDSChequesID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
                    end;
               end;
            end;
        end;
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.Filter:='';
      DMBuscadores.CDSBuscaComprob.Filtered:=False;
    END
  ELSE
    BEGIN
      Result := False;
      CDSChequesMUESTRASUCURSAL.Value := '';
    END;
   CDSSucursal.Close;
END;



procedure TFormChequesAnulados.BorrarExecute(Sender: TObject);
var NumeroChe,NroCpbte:String;
begin
  NroCpbte :=CDSChequesLETRA.AsString+'-'+CDSChequesSUC.AsString+'-'+CDSChequesNUMERO.AsString;
  NumeroChe:=FrameMovValoresEgresos1.CDSChequesNUMERO.AsString;
  inherited;
  DMMain_FD.LogFileFD(1,2,'Borrado de Anulacion de Che.Nro:'+NroCpbte+
                          '..Nro de Ch.:'+NumeroChe,'ANULACHE');

end;

procedure TFormChequesAnulados.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Application);
  FormBuscaCpbte.TipoCpbte1:='HA';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.Tag := 34;
  FormBuscaCpbte.CuentaCaja  :=CajaPorDefecto;
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;
end;

procedure TFormChequesAnulados.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    CDSChequesSucursalSetText(CDSChequesSucursal, IntToStr(comBuscadorSucursal.Id));
  CDSBuscaSucursal.Close;
end;

procedure TFormChequesAnulados.BuscarTipoComprobanteExecute(Sender: TObject);
begin
  inherited;
  DMBuscadores.CDSBuscaComprob.Close;
  DMBuscadores.CDSBuscaComprob.CommandText:='';
  DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal=:suc and compra_venta=''C'' and '+
                                            '(tipo_comprob=''HA'') ';
  DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value := CDSChequesSUCURSAL.Value;


  FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;
  if FormBuscaComprobantes.ModalResult=mrOk Then
    BEGIN
      CDSChequesID_TIPOCOMPROBANTESetText(CDSChequesID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.FieldByName('Id_comprobante').AsString);
    END;

end;

procedure TFormChequesAnulados.CDSChequesID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: string);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Dato no Valido');
        END;
      IF CDSCheques.State = dsInsert THEN
        UltimoComprobante;
    end;
end;

procedure TFormChequesAnulados.CDSChequesNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  If QUltimoCodigo2.Fields[0].AsString<>'' Then
    CDSChequesID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1
  else
    CDSChequesID.Value:=1;
  QUltimoCodigo2.Close;
  CDSChequesFECHA.AsDateTime     := Date;
  CDSChequesSUCURSALSetText(CDSChequesSUCURSAL,IntToStr(SucursalPorDefecto));
  CDSChequesUSUARIO.Value        := DMMain_FD.UsuarioActivo;
  CDSChequesFECHA_HORA.AsDateTime:= Now;
  CDSChequesID_CHEQUE.Value      := -1;
end;

procedure TFormChequesAnulados.CDSChequesNUMEROSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString := copy('00000000', 1, Sender.Size - Length(Text)) + Text;
  CDSChequesNROCPBTE.Value := CDSChequesLETRA.Value +
                              CDSChequesSUC.Value +
                              CDSChequesNUMERO.Value;
end;

procedure TFormChequesAnulados.CDSChequesSUCSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString := copy('00000000', 1, Sender.Size - Length(Text)) + Text;
  CDSChequesNROCPBTE.Value := CDSChequesLETRA.Value +
                              CDSChequesSUC.Value +
                              CDSChequesNUMERO.Value;
end;

procedure TFormChequesAnulados.CDSChequesSUCURSALSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Sucursal No Valido');
          RxDBESucursal.SetFocus;
         // SysUtils.Abort;
        END;
    end;

end;

procedure TFormChequesAnulados.ConfirmaExecute(Sender: TObject);
begin
  DatoNew   := CDSChequesID.AsString;
  TipoCpbte := 'HA';

  if FrameMovValoresEgresos1.CDSCajaMov.RecordCount>1 then
    raise Exception.Create('Ingresar solo Un cheque a la vez......');

  if FrameMovValoresEgresos1.CDSCajaMov.State<>dsBrowse then
    FrameMovValoresEgresos1.CDSCajaMov.Post;

  CDSChequesID_CHEQUE.Value:=FrameMovValoresEgresos1.CDSChequesID_CHEQUE_PRO.Value;
  CDSChequesDETALLE.Value  :='Ch.Nr:'+FrameMovValoresEgresos1.CDSChequesNUMERO.AsString+
                             ' Bco.:'+FrameMovValoresEgresos1.CDSChequesMUESTRACHEQUERA.AsString;

  inherited;
  Recuperar.Execute;



 // si se genero la transaccion entonces verifico lo siguiente
  QBuscadorCheque.Close;
  QBuscadorCheque.ParamByName('id').Value:= CDSChequesID_CHEQUE.Value;
  QBuscadorCheque.Open;
  Debitado := QBuscadorChequeDEBITADO.Value='S';
  if CDSChequesID.AsString<>'' then
    begin
      if (Debitado=False) then
        begin
           DMMain_FD.fdcGestion.StartTransaction;
           try
            spDebitar.Close;
            spDebitar.ParamByName('id_cuenta_banco').ASInteger:= QBuscadorChequeID_CUENTA_BANCO.Value;
            spDebitar.ParamByName('id_cheque_pro').AsInteger  := QBuscadorChequeID_CHEQUE_PRO.Value;
            spDebitar.ParamByName('Fecha_Debito').AsDate      := CDSChequesFECHA.AsDateTime;
            spDebitar.ParamByName('Fecha_Cobro').AsDate       := QBuscadorChequeFECHA_COBRO.AsDateTime;
            spDebitar.ParamByName('Importe').AsFloat          := QBuscadorChequeIMPORTE.AsFloat;
            spDebitar.ParamByName('Numero').AsInteger         := QBuscadorChequeNUMERO.Value;
            spDebitar.ParamByName('Orden_de').AsString        := QBuscadorChequeORDEN_DE.Value;
            spDebitar.ExecProc;
            spDebitar.Close;

            spAnular.Close;
            spAnular.ParamByName('ID_CHEQUE').Value       := CDSChequesID_CHEQUE.Value;
            spAnular.ParamByName('ID_ORIGEN').Value       := CDSChequesID.Value;
            spAnular.ExecProc;
            spAnular.Close;

            DMMain_FD.fdcGestion.Commit;

          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No Se Genero la anulacion del cheque, controlar la conciliacion de cheques....');
          end;
        end;
    end;
  btNuevo.SetFocus;
end;

procedure TFormChequesAnulados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSCheques.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.QCajaCab.Close;
  Action:=caFree;
end;

procedure TFormChequesAnulados.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  FrameMovValoresEgresos1.tsTransf.TabVisible   := False;
  FrameMovValoresEgresos1.tsDebito.TabVisible   := False;
  FrameMovValoresEgresos1.tsTarjeta.TabVisible  := False;
  FrameMovValoresEgresos1.tsCheques.TabVisible  := True;

  FrameMovValoresEgresos1.tsEfectivo.TabVisible := False;
  FrameMovValoresEgresos1.tsChe3.TabVisible     := False;

  AddClientDataSet(CDSCheques,DSPCheques);
  AddClientDataSet(FrameMovValoresEgresos1.CDSCajaMov,FrameMovValoresEgresos1.DSPCajaMov);
  AddClientDataSet(FrameMovValoresEgresos1.CDSCheques,FrameMovValoresEgresos1.DSPCheques);
  FrameMovValoresEgresos1.InicicalizaMascarasNumericas;
  FrameMovValoresEgresos1.CDSCajaMov.Open;
  FrameMovValoresEgresos1.CDSCheques.Open;
  FrameMovValoresEgresos1.QCajaCab.Open;
  //
  CDSCheques.Open;
  Campo:='ID';
  Tabla:='cheques_anuldos';

end;

procedure TFormChequesAnulados.FormDestroy(Sender: TObject);
begin
  inherited;
  FormChequesAnulados:=nil;
end;

procedure TFormChequesAnulados.FrameMovValoresEgresos1BitBtn8Click(
  Sender: TObject);
begin
  inherited;
  FrameMovValoresEgresos1.PostTransExecute(Sender);
end;

procedure TFormChequesAnulados.FrameMovValoresEgresos1btPostClick(
  Sender: TObject);
begin
  inherited;
  FrameMovValoresEgresos1.PostChequeExecute(Sender);

end;

procedure TFormChequesAnulados.FrameMovValoresEgresos1CDSCajaMovAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovAfterDelete(DataSet);

end;

procedure TFormChequesAnulados.FrameMovValoresEgresos1CDSCajaMovBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovBeforeDelete(DataSet);

end;

procedure TFormChequesAnulados.FrameMovValoresEgresos1CDSCajaMovBeforeInsert(
  DataSet: TDataSet);
begin
  if (FrameMovValoresEgresos1.CDSCajaMov.IsEmpty) then
    begin
     inherited;
     FrameMovValoresEgresos1.CDSCajaMovBeforeInsert(DataSet);
    end;

end;

procedure TFormChequesAnulados.ImprimirExecute(Sender: TObject);
begin
  inherited;
  QComprob.Close;
  QComprob.ParamByName('id').Value := CDSChequesID_TIPOCOMPROBANTE.Value;
  QComprob.ParamByName('suc').Value:= CDSChequesSUCURSAL.Value;
  QComprob.Open;

  frReporte.PrintOptions.Printer:=PrNomCpbte;
  frReporte.SelectPrinter;
  FrameMovValoresEgresos1.CDSCajaMov.First;
  frReporte.PrintOptions.Printer:=PrNomCpbte;
  frReporte.SelectPrinter;
  frReporte.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+QComprobREPORTE.AsString);
  frReporte.PrepareReport;
  frReporte.ShowReport;
  //CDSEmpresa.Close;
  QComprob.Close;
end;

procedure TFormChequesAnulados.pnValoresEnter(Sender: TObject);
begin
  inherited;
  if (DSBase.State=dsInsert) or (DSBase.State=dsEdit) Then
  IF (dbeSuc.Text<>'') AND (dbeNumero.Text<>'') and
     (RxCTipoCpbte.Text<>'') and
     (dbeFecha.Text<>'') then
     BEGIN
       pnCabecera.Enabled:=False;
       pnValores.Enabled:=True;
       WITH FrameMovValoresEgresos1 DO
         BEGIN
           if (DSBase.State=dsInsert) and (ceCaja.Text='') Then
             begin
               QCajaCab.Close;
               QCajaCab.ParamByName('Id').Value := CajaPorDefecto;
               QCajaCab.Open;
               IF NOT (QCajaCab.IsEmpty) THEN
                 BEGIN
                   ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
                   edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
                   Id_Caja            := QCajaCabID_CAJA.Value;
                   id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
                   FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
                 end;
             end;
           TipoCpbte      := CDSChequesTIPOCPBTE.Value;
           TipoOperacion  := 'E';
           ClaseCpbte     := CDSChequesCLASECPBTE.Value;
           NroCpbte       := CDSChequesNROCPBTE.Value;
           FechaOperacion := CDSChequesFECHA.AsDateTime;
           IdCpbte        := CDSChequesID.Value;
           Origen         := 'Cheque Anulado';
         END;

     END
  else
    begin
      ShowMessage('Faltan datos en el encabezado...');
      pnCabecera.Enabled:=True;
    //  pnValores.Enabled:=false;
      dbeFecha.SetFocus;
    end;
end;

procedure TFormChequesAnulados.RecuperarExecute(Sender: TObject);
begin
  sbEstado.SimpleText:='';
  CDSCheques.close;
  CDSCheques.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  CDSCheques.Open;

  FrameMovValoresEgresos1.TipoOperacion:='E';

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Value := TipoCpbte;
  FrameMovValoresEgresos1.CDSCajaMov.Open;

  FrameMovValoresEgresos1.ceCaja.Text       :=FrameMovValoresEgresos1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresEgresos1.edMuestraCaja.Text:=FrameMovValoresEgresos1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresEgresos1.Id_Caja           :=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
  FrameMovValoresEgresos1.id_Cuenta_caja    :=FrameMovValoresEgresos1.CDSCajaMovID_CUENTA_CAJA.Value;
  FrameMovValoresEgresos1.FechaCaja         :=FrameMovValoresEgresos1.CDSCajaMovFECHA_CAJA.AsDateTime;


//  FrameMovValoresEgresos1.CDSCheques.Close;
//  FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Value     := FrameMovValoresEgresoS1.CDSCajaMovID_MOV_CAJA.Value;
//  FrameMovValoresEgresos1.CDSCheques.Open;

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Value     := StrToInt(DatoNew);//FrameMovValoresEgresoS1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSCheques.Open;

  FrameMovValoresEgresos1.CalcularValores;

  pnPrincipal.Enabled :=True;
  //pnValores.Enabled   :=True;

  // VERIFICO SI LA CAJA ESTA CERRADA
//  QCaja.Close;
//  QCaja.ParamByName('id').Value:=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
//  QCaja.Open;
  // se paso a una funcion en el DMMain_FD
  if DMMain_FD.CajaCerrada(FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value) Then
    begin
      sbEstado.SimplePanel:=True;
      sbEstado.SimpleText:='La caja de este comprobante está cerrada, por lo que no se puede modificar ni borrar';
      btModificar.Enabled:=False;
      btBorrar.Enabled   :=False;
    end
  else
    begin
      btModificar.Enabled:=True;
      btBorrar.Enabled   :=True;
    end;

  FormChequesAnulados.Caption:='Cheques Anulados -- '+CDSChequesFECHA_HORA.AsString+'//'+Copy(CDSChequesUSUARIO.Value,1,15);

  DatoNew:=''+DatoNew+'';
end;

procedure TFormChequesAnulados.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frReporte.DesignReport;
end;

end.
