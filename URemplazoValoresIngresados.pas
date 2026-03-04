unit URemplazoValoresIngresados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, ImgList, DB,  
  ActnList, ComCtrls,  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Mask, DBCtrls, UMovValoresIngreso, JvLabel, IBGenerator, Provider, DBClient,
  DBXCommon, Data.FMTBcd, Data.SqlExpr, JvDBControls, JvExMask, JvToolEdit,
  JvAppStorage, JvAppIniStorage, JvFormPlacement, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormReemplazoValoresIng = class(TFormABMBase)
    pnCabecera: TPanel;
    dbtMuestraComprobante: TDBText;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeLetra: TDBEdit;
    dbeSucursal: TDBEdit;
    pnValores: TPanel;
    FrameMovValoresIngreso1: TFrameMovValoresIngreso;
    pnPie: TPanel;
    DBMemo1: TDBMemo;
    JvLabel2: TJvLabel;
    CDSReemplazo: TClientDataSet;
    DSPReemplazo: TDataSetProvider;
    ibgReemplazo: TIBGenerator;
    BuscarSucursal: TAction;
    BuscarTipoCpbte: TAction;
    pnImporte: TPanel;
    JvLabel1: TJvLabel;
    DBEdit1: TDBEdit;
    dbeFecha: TJvDBDateEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    RxLabel59: TJvLabel;
    RxLabel58: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel6: TJvLabel;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    QSucursal: TFDQuery;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QComprob: TFDQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QReemplazo: TFDQuery;
    QReemplazoID: TIntegerField;
    QReemplazoFECHA: TSQLTimeStampField;
    QReemplazoSUCURSAL: TIntegerField;
    QReemplazoTIPOCPBTE: TStringField;
    QReemplazoCLASECPBTE: TStringField;
    QReemplazoLETRA: TStringField;
    QReemplazoSUC: TStringField;
    QReemplazoNUMERO: TStringField;
    QReemplazoNROCPBTE: TStringField;
    QReemplazoIMPORTE: TFloatField;
    QReemplazoOBS: TStringField;
    QReemplazoUSUARIO: TStringField;
    QReemplazoFECHA_HORA: TSQLTimeStampField;
    QReemplazoMUESTRASUCURSAL: TStringField;
    QReemplazoMUESTRACOMPROBANTE: TStringField;
    QReemplazoID_TIPOCOMPROBANTE: TIntegerField;
    CDSReemplazoID: TIntegerField;
    CDSReemplazoFECHA: TSQLTimeStampField;
    CDSReemplazoSUCURSAL: TIntegerField;
    CDSReemplazoTIPOCPBTE: TStringField;
    CDSReemplazoCLASECPBTE: TStringField;
    CDSReemplazoLETRA: TStringField;
    CDSReemplazoSUC: TStringField;
    CDSReemplazoNUMERO: TStringField;
    CDSReemplazoNROCPBTE: TStringField;
    CDSReemplazoIMPORTE: TFloatField;
    CDSReemplazoOBS: TStringField;
    CDSReemplazoUSUARIO: TStringField;
    CDSReemplazoFECHA_HORA: TSQLTimeStampField;
    CDSReemplazoMUESTRASUCURSAL: TStringField;
    CDSReemplazoMUESTRACOMPROBANTE: TStringField;
    CDSReemplazoID_TIPOCOMPROBANTE: TIntegerField;
    spEgresoEfectivo_BORRAR: TFDStoredProc;
    QCaja: TFDQuery;
    QCajaESTADO: TIntegerField;
    QBuscaComprob: TFDQuery;
    CDSBuscaComprob: TClientDataSet;
    DPBuscaComprob: TDataSetProvider;
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
    ComBuscadorTipoCpbte: TComBuscador;
    ComBuscadorSucursal: TComBuscador;
    spEgresoEfectivoFD: TFDStoredProc;
    DBText1: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure CDSReemplazoSUCSetText(Sender: TField; const Text: string);
    procedure CDSReemplazoNUMEROSetText(Sender: TField; const Text: string);
    procedure CDSReemplazoID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: string);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure CDSReemplazoSUCURSALSetText(Sender: TField; const Text: string);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure CDSReemplazoNewRecord(DataSet: TDataSet);
    procedure pnValoresEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BorrarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FrameMovValoresIngreso1CDSCajaMovAfterDelete(DataSet: TDataSet);
    procedure FrameMovValoresIngreso1CDSCajaMovAfterPost(DataSet: TDataSet);
    procedure FrameMovValoresIngreso1CDSCajaMovBeforeDelete(DataSet: TDataSet);
    procedure NextExecute(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Mascara:String;
    PROCEDURE UltimoComprobante;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
  end;

var
  FormReemplazoValoresIng: TFormReemplazoValoresIng;

implementation

{$R *.dfm}
uses UBuscadorCpbte, UDMain_FD, DMBuscadoresForm,
  DMStoreProcedureForm;

PROCEDURE TFormReemplazoValoresIng.UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH  DMStoreProcedure DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSReemplazoLETRA.AsString <> '') AND (CDSReemplazoCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSReemplazoLETRA.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value    := CDSReemplazoSUCURSAL.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSReemplazoCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value    := CDSReemplazoTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X'THEN
            BEGIN
              IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
              ELSE
                Numero := 1;
              CDSReemplazoSUCSetText(CDSReemplazoSUC,IntToStr(Numero));
              IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
              ELSE
                Numero := 1;
              CDSReemplazoNUMEROSetText(CDSReemplazoNUMERO,IntToStr(Numero));
            END;
          CDSReemplazoTIPOCPBTE.Value         := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
          CDSReemplazoCLASECPBTE.Value        := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
          Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSReemplazoNROCPBTE.AsString := CDSReemplazoLETRA.AsString + CDSReemplazoSUC.AsString + CDSReemplazoNUMERO.AsString;
    END;

END;

FUNCTION TFormReemplazoValoresIng.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  QSucursal.Close;
  QSucursal.ParamByName('Codigo').Value := dato;
  QSucursal.Open;
  IF NOT (QSucursal.Eof) THEN
    BEGIN
      Result := True;
      CDSReemplazoMUESTRASUCURSAL.Value := QSucursalDetalle.Value;
      CDSReemplazoID_TIPOCOMPROBANTE.Clear;
      CDSReemplazoMUESTRACOMPROBANTE.Clear;
      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      CDSBuscaComprob.Open;
      if CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSReemplazoID_TIPOCOMPROBANTESetText(CDSReemplazoID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
        end;
      CDSBuscaComprob.Close;
    END
  ELSE
    BEGIN
      Result := False;
      CDSReemplazoMUESTRASUCURSAL.Value := '';
    END;
   QSucursal.Close;
END;

procedure TFormReemplazoValoresIng.BorrarExecute(Sender: TObject);
begin
  DMStoreProcedure.QControlFondos.Close;
  DMStoreProcedure.QControlFondos.ParamByName('id').Value  :=CDSReemplazoID.Value;
  DMStoreProcedure.QControlFondos.ParamByName('Tipo').Value:='ZI';
  DMStoreProcedure.QControlFondos.Open;
  if DMStoreProcedure.QControlFondos.Fields[0].Value='N' then
    RAISE Exception.Create('Los cheques y/o tarjetas de Creditos han sido Usados para otras operaciones, no se pude hacer la operación....');
  inherited;
  DMStoreProcedure.QControlFondos.Close;
end;

procedure TFormReemplazoValoresIng.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Application);
  FormBuscaCpbte.Tag := 31;
  FormBuscaCpbte.TipoCpbte1:='ZI';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;

end;

procedure TFormReemplazoValoresIng.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    CDSReemplazoSUCURSALSetText(CDSReemplazoSUCURSAL, IntToStr(comBuscadorSucursal.Id));
  CDSBuscaSucursal.Close;
end;

procedure TFormReemplazoValoresIng.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaComprob.Close;
  CDSBuscaComprob.Params.ParamByName('Suc').Value := CDSReemplazoSUCURSAL.Value;
  CDSBuscaComprob.Open;
  IF NOT (CDSBuscaComprob.IsEmpty) THEN
    BEGIN
      comBuscadorTipoCpbte.Execute;
      if comBuscadorTipoCpbte.rOk Then
        CDSReemplazoID_TIPOCOMPROBANTESetText(CDSReemplazoID_TIPOCOMPROBANTE, IntToStr(comBuscadorTipoCpbte.Id));
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  CDSBuscaComprob.Close;

end;

procedure TFormReemplazoValoresIng.AgregarExecute(Sender: TObject);
begin
  CDSReemplazo.close;
  CDSReemplazo.Params.ParamByName('id').Clear;
  CDSReemplazo.Open;

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').clear;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  FrameMovValoresIngreso1.CDSMovTCredito.Close;
  FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovTCredito.Open;

  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSTransBco.Open;

  FrameMovValoresIngreso1.ceCaja.Text:='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';

  inherited;
  pnCabecera.Enabled :=True;
//  pnValores.Enabled  :=False;

  dbeFecha.SetFocus;

end;

FUNCTION TFormReemplazoValoresIng.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('Id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSReemplazoSUCURSAL.Value;
  QComprob.Open;
  IF NOT(QComprob.IsEmpty) THEN // verifico si esta autorizado
    BEGIN
      Result := True;
      CDSReemplazoMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSReemplazoLETRA.Value              := QComprobLETRA.Value;
      CDSReemplazoTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSReemplazoCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSReemplazoMUESTRACOMPROBANTE.Value := '';
      CDSReemplazoLETRA.Value              := '';
      CDSReemplazoTIPOCPBTE.Value          := '';
      CDSReemplazoCLASECPBTE.Value         := '';
    END;
END;


procedure TFormReemplazoValoresIng.CancelarExecute(Sender: TObject);
begin
  if MessageDlg('Cancelar los cambios..?',mtConfirmation,mbYesNo,0)=mrNo then
    Exit;
  FrameMovValoresIngreso1.CDSChe3.Cancel;
  FrameMovValoresIngreso1.CDSMovTCredito.Cancel;
  FrameMovValoresIngreso1.CDSTransBco.Cancel;
  FrameMovValoresIngreso1.CDSCajaMov.Cancel;
  CDSReemplazo.Cancel;

  CDSReemplazo.close;
  CDSReemplazo.Params.ParamByName('id').Clear;
  CDSReemplazo.Open;

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').clear;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovTCredito.Close;
  FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovTCredito.Open;

  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSTransBco.Open;

  inherited;

  FrameMovValoresIngreso1.ceCaja.Text       :='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';
  btNuevo.SetFocus;

end;

procedure TFormReemplazoValoresIng.CDSReemplazoID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: string);
begin
  inherited;
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString := Text;
      IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
        BEGIN
          ShowMessage('Dato no válido');
          Sender.AsString := '';
        END;
      IF CDSReemplazo.State = dsInsert THEN
        UltimoComprobante;
    END;
end;

procedure TFormReemplazoValoresIng.CDSReemplazoNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSReemplazoID.Value              := ibgReemplazo.IncrementFD(1);
  CDSReemplazoFECHA.AsDateTime      := Date;
  CDSReemplazoIMPORTE.AsFloat       := 0;
  CDSReemplazoSUCURSALSetText(CDSReemplazoSUCURSAL,IntToStr(sucursalpordefecto));
  CDSReemplazoUSUARIO.Value         := DMMain_FD.UsuarioActivo;
  CDSReemplazoFECHA_HORA.AsDateTime := Now;
end;

procedure TFormReemplazoValoresIng.CDSReemplazoNUMEROSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Copy('0000000000',1,Sender.Size-length(Text))+Text;
end;

procedure TFormReemplazoValoresIng.CDSReemplazoSUCSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Copy('0000000000',1,Sender.Size-length(Text))+Text;
end;

procedure TFormReemplazoValoresIng.CDSReemplazoSUCURSALSetText(Sender: TField;
  const Text: string);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString := Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Sucursal No Valido');
          SysUtils.Abort;
        END
      ELSE IF CDSReemplazo.State = dsInsert THEN
        UltimoComprobante;
    END;
end;

procedure TFormReemplazoValoresIng.ConfirmaExecute(Sender: TObject);
begin
  CDSReemplazoIMPORTE.AsFloat      := FrameMovValoresIngreso1.SumaValores;
  CDSReemplazoFECHA_HORA.AsDateTime:= now;
  CDSReemplazoOBS.Value            := 'Reemp.de Efectivo por:';
  FrameMovValoresIngreso1.CDSCajaMov.First;
  while not(FrameMovValoresIngreso1.CDSCajaMov.Eof) do
    begin
      if FrameMovValoresIngreso1.CDSCajaMovID_TPAGO.Value=3 then
        CDSReemplazoOBS.Value  :=  CDSReemplazoOBS.Value + 'Cheq. '
      else
        if FrameMovValoresIngreso1.CDSCajaMovID_TPAGO.Value=4 then
          CDSReemplazoOBS.Value  :=  CDSReemplazoOBS.Value + 'Tarjeta de C '
        else
          if FrameMovValoresIngreso1.CDSCajaMovID_TPAGO.Value=5 then
            CDSReemplazoOBS.Value  :=  CDSReemplazoOBS.Value + 'Tx de Bco ';
      FrameMovValoresIngreso1.CDSCajaMov.Next;
    end;
 // CDSReemplazoOBS.Value            := 'Ingreso de Tarjeta de Credito';
  DatoNew:=CDSReemplazoID.AsString;

  if ( CDSReemplazoIMPORTE.AsFloat<=0 ) then
    raise Exception.Create('No hay importes o valores ingresaqdos');

  inherited;
  Recuperar.Execute;
  if Not(DSBase.DataSet.IsEmpty) then
    begin
       DMMain_FD.fdcGestion.StartTransaction;
        try
    //      CDSReemplazo.ApplyUpdates(0);
    //      FrameMovValoresIngreso1.CDSCajaMov.ApplyUpdates(0);
    //      FrameMovValoresIngreso1.CDSChe3.ApplyUpdates(0);
    //      FrameMovValoresIngreso1.CDSMovTCredito.ApplyUpdates(0);
    //      FrameMovValoresIngreso1.CDSTransBco.ApplyUpdates(0);

          spEgresoEfectivoFD.Close;
          spEgresoEfectivoFD.ParamByName('id_cpbte').Value        :=CDSReemplazoID.Value;
          spEgresoEfectivoFD.ParamByName('Tipo_Comprob').Value    :=CDSReemplazoTIPOCPBTE.Value;
          spEgresoEfectivoFD.ParamByName('Clase_Comprob').Value   :=CDSReemplazoCLASECPBTE.Value;
          spEgresoEfectivoFD.ParamByName('NroCpbte').Value        :=CDSReemplazoNROCPBTE.Value;
          spEgresoEfectivoFD.ParamByName('id_cuenta_Caja').Value  :=FrameMovValoresIngreso1.id_Cuenta_caja;
          spEgresoEfectivoFD.ParamByName('fecha_movimiento').Value:=CDSReemplazoFECHA.AsDateTime;
          spEgresoEfectivoFD.ParamByName('debe').Value            :=0;
          spEgresoEfectivoFD.ParamByName('haber').Value           :=CDSReemplazoIMPORTE.AsFloat;
          spEgresoEfectivoFD.ParamByName('tipooperacion').Value   :='E';
          spEgresoEfectivoFD.ExecProc;
          spEgresoEfectivoFD.Close;
          DMMain_FD.fdcGestion.Commit;
        except
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('Operacion No finalizada....!');
        end;
    end;
end;

procedure TFormReemplazoValoresIng.FormActivate(Sender: TObject);
begin
  inherited;
  if DSBase.DataSet.State = dsBrowse then
    begin
      if (DSBase.DataSet.IsEmpty=False) and (FormReemplazoValoresIng<>Nil) then
        Recuperar.Execute;
    end;

end;

procedure TFormReemplazoValoresIng.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSMovTCredito.Close;
  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Close;
  CDSReemplazo.Close;
  inherited;
  Action:=caFree;
end;

procedure TFormReemplazoValoresIng.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  SinBde  :=2;

  AddClientDataSet(CDSReemplazo,DSPReemplazo);
  FrameMovValoresIngreso1.tsEfectivo.TabVisible:=False;
  FrameMovValoresIngreso1.tsCheques.TabVisible :=False;
  FrameMovValoresIngreso1.tsDebito.TabVisible  :=False;

  AddClientDataSet(FrameMovValoresIngreso1.CDSCajaMov,FrameMovValoresIngreso1.DSPCajaMov);
  AddClientDataSet(FrameMovValoresIngreso1.CDSChe3,FrameMovValoresIngreso1.DSPChe3);
  AddClientDataSet(FrameMovValoresIngreso1.CDSMovTCredito,FrameMovValoresIngreso1.DSPMovTCredito);
  AddClientDataSet(FrameMovValoresIngreso1.CDSTransBco,FrameMovValoresIngreso1.DSPTransBco);

  CDSReemplazo.Open;
  FrameMovValoresIngreso1.CDSChe3.Open;
  FrameMovValoresIngreso1.CDSMovTCredito.Open;
  FrameMovValoresIngreso1.CDSTransBco.Open;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.CDSCtasBancarias.Open;

  pnImporte.BevelOuter:=bvNone;

  FrameMovValoresIngreso1.InicicalizaMascarasNumericas;

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('OPCION').AsString:='EGRESOS';
//  DMMain_FD.QOpciones.Open;
//
//  Mascara:=DMMain_FD.QOpciones.Fields[0].AsString;

  TFloatField(CDSReemplazoIMPORTE).EditFormat   := DMMain_FD.MascaraEgresos;
  TFloatField(CDSReemplazoIMPORTE).DisplayFormat:= DMMain_FD.MascaraEgresos;

//  DMMain_FD.QOpciones.Close;
  pnImporte.BevelInner:=bvNone;
  pnImporte.BevelOuter:=bvNone;

  FrameMovValoresIngreso1.ceCaja.Enabled:=DMMain_FD.ModificaCaja;

  Modificar.Enabled:=False;
  Modificar.Visible:=False;

  Tabla:='reemplazo_valores_ingresados';
  Campo:='id';

end;

procedure TFormReemplazoValoresIng.FormDestroy(Sender: TObject);
begin
  inherited;
  FormReemplazoValoresIng:=nil;
end;

procedure TFormReemplazoValoresIng.FrameMovValoresIngreso1CDSCajaMovAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovAfterDelete(DataSet);
end;

procedure TFormReemplazoValoresIng.FrameMovValoresIngreso1CDSCajaMovAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovAfterPost(DataSet);
end;

procedure TFormReemplazoValoresIng.FrameMovValoresIngreso1CDSCajaMovBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovBeforeDelete(DataSet);
end;

procedure TFormReemplazoValoresIng.NextExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursal  ='+DSBase.DataSet.FieldByName('SUCURSAL').AsString +
             ' and letra = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRA').AsString,'''');

  inherited;

end;

procedure TFormReemplazoValoresIng.pnValoresEnter(Sender: TObject);
begin
  inherited;
  if DSBase.State=dsInsert Then
  IF (dbeSuc.Text<>'') AND (dbeNumero.Text<>'') and
     (RxCTipoCpbte.Text<>'') and
     (dbeFecha.Text<>'') then
     BEGIN
       pnCabecera.Enabled:=False;
       pnValores.Enabled :=True;
       WITH FrameMovValoresIngreso1 DO
         BEGIN
           if (DSBase.State=dsInsert) and (ceCaja.Text='') Then
             begin
               QCajaCab.Close;
               QCajaCab.ParamByName('Id').Value :=  CajaPorDefecto;
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
           TipoCpbte      := CDSReemplazoTIPOCPBTE.Value;
           TipoOperacion  := 'I';
           ClaseCpbte     := CDSReemplazoCLASECPBTE.Value;
           NroCpbte       := CDSReemplazoNROCPBTE.Value;
           FechaOperacion := CDSReemplazoFECHA.AsDateTime;
           IdCpbte        := CDSReemplazoID.Value;
           Origen         := 'Reemplazo de Valores Ingresadose';
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

procedure TFormReemplazoValoresIng.PrevExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursal  ='+DSBase.DataSet.FieldByName('SUCURSAL').AsString +
             ' and letra = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRA').AsString,'''');
  inherited;

end;

procedure TFormReemplazoValoresIng.RecuperarExecute(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';

  CDSReemplazo.close;
  CDSReemplazo.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  CDSReemplazo.Open;


  FrameMovValoresIngreso1.TipoOperacion:='I';

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Value := 'ZI';
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.ceCaja.Text        := FrameMovValoresIngreso1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresIngreso1.edMuestraCaja.Text := FrameMovValoresIngreso1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresIngreso1.Id_Caja            := FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;


  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Value        := StrToInt(DatoNew);
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Value := StrToInt(DatoNew);
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  FrameMovValoresIngreso1.CDSMovTCredito.Close;
  FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Value := StrToInt(DatoNew);
  FrameMovValoresIngreso1.CDSMovTCredito.Open;

  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Value    := StrToInt(DatoNew);
  FrameMovValoresIngreso1.CDSTransBco.Open;


  FrameMovValoresIngreso1.CalcularValores;

  pnPrincipal.Enabled := True;
  pnValores.Enabled   := True;

  // VERIFICO SI LA CAJA ESTA CERRADA
  QCaja.Close;
  QCaja.ParamByName('id').Value:=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
  QCaja.Open;

  if QCajaESTADO.Value=1 Then
    begin
      sbEstado.SimpleText:='La caja de este comprobante está cerrada, por lo que no se puede modificar ni borrar';
      btModificar.Enabled:=False;
      btBorrar.Enabled   :=False;
    end
  else
    begin
      btModificar.Enabled:=True;
      btBorrar.Enabled   :=True;
    end;
  QCaja.Close;
  FormReemplazoValoresIng.Caption:='Reemplazo de Valores Ingresados -- '+CDSReemplazoFECHA_HORA.AsString+'//'+Copy(CDSReemplazoUSUARIO.AsString,1,15);


  DatoNew:=''+DatoNew+'';

end;

procedure TFormReemplazoValoresIng.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSReemplazoID_TIPOCOMPROBANTE.Clear;
      CDSReemplazoMUESTRACOMPROBANTE.Clear;
      CDSReemplazoLETRA.Clear;
      CDSReemplazoSUC.Clear;
      CDSReemplazoNUMERO.Clear;
    end;
end;

procedure TFormReemplazoValoresIng.RxDBESucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSReemplazoSUCURSAL.Clear;
      CDSReemplazoMUESTRASUCURSAL.Clear;
      CDSReemplazoID_TIPOCOMPROBANTE.Clear;
      CDSReemplazoMUESTRACOMPROBANTE.Clear;
      CDSReemplazoLETRA.Clear;
      CDSReemplazoSUC.Clear;
      CDSReemplazoNUMERO.Clear;
    end;

end;

end.
